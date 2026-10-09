param(
    [string]$OutputFile = 'ReportePDF.md'
)

$ErrorActionPreference = 'Stop'
$reportRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$readmePath = Join-Path $reportRoot 'README.md'
$outputPath = Join-Path $reportRoot $OutputFile
$contentRoot = Join-Path $reportRoot 'markdown\content'
$utf8NoBom = [System.Text.UTF8Encoding]::new($false)

function Get-ReportSlug {
    param([string]$Text)

    $plain = $Text
    $plain = [regex]::Replace($plain, '<[^>]+>', '')
    $plain = [regex]::Replace($plain, '!\[([^\]]*)\]\([^)]*\)', '$1')
    $plain = [regex]::Replace($plain, '\[([^\]]+)\]\([^)]*\)', '$1')
    $plain = $plain.Replace('`', '').Replace('*', '').Replace('_', '')
    $normalized = $plain.Normalize([Text.NormalizationForm]::FormD)
    $withoutMarks = -join ($normalized.ToCharArray() | Where-Object {
        [Globalization.CharUnicodeInfo]::GetUnicodeCategory($_) -ne
            [Globalization.UnicodeCategory]::NonSpacingMark
    })
    $slug = $withoutMarks.ToLowerInvariant()
    $slug = [regex]::Replace($slug, '[^a-z0-9]+', '-')
    return $slug.Trim('-')
}

function Get-FirstHeadingSlug {
    param([string]$Path)

    foreach ($line in [IO.File]::ReadLines($Path)) {
        if ($line -match '^#{1,6}\s+(.+?)\s*$') {
            return Get-ReportSlug $Matches[1]
        }
    }
    throw "No Markdown heading found in $Path"
}

function Resolve-ReportTarget {
    param(
        [string]$Target,
        [string]$SourceDirectory,
        [hashtable]$FirstHeadingByFile
    )

    $trimmed = $Target.Trim()
    if ($trimmed -match '^(?:https?:|mailto:|tel:|data:|#)') {
        return $Target
    }

    $titleSuffix = ''
    $pathAndFragment = $trimmed
    if ($trimmed -match '^(.*?)(\s+["''][^"'']+["''])$') {
        $pathAndFragment = $Matches[1]
        $titleSuffix = $Matches[2]
    }

    $fragment = ''
    $relativePath = $pathAndFragment
    $hashIndex = $pathAndFragment.IndexOf('#')
    if ($hashIndex -ge 0) {
        $relativePath = $pathAndFragment.Substring(0, $hashIndex)
        $fragment = $pathAndFragment.Substring($hashIndex + 1)
    }
    if ([string]::IsNullOrWhiteSpace($relativePath)) {
        return $Target
    }

    $decodedPath = [Uri]::UnescapeDataString($relativePath)
    $absoluteTarget = [IO.Path]::GetFullPath((Join-Path $SourceDirectory $decodedPath))
    if ($absoluteTarget.EndsWith('.md', [StringComparison]::OrdinalIgnoreCase) -and
        $absoluteTarget.StartsWith($contentRoot, [StringComparison]::OrdinalIgnoreCase)) {
        if ($fragment) {
            return "#toc-$(Get-ReportSlug ([Uri]::UnescapeDataString($fragment)))$titleSuffix"
        }
        $key = $absoluteTarget.ToLowerInvariant()
        if (-not $FirstHeadingByFile.ContainsKey($key)) {
            throw "The linked Markdown file has no registered heading: $absoluteTarget"
        }
        return "#toc-$($FirstHeadingByFile[$key])$titleSuffix"
    }

    $rootRelative = [IO.Path]::GetRelativePath($reportRoot, $absoluteTarget).Replace('\', '/')
    if ($fragment) {
        $rootRelative += "#$fragment"
    }
    return "$rootRelative$titleSuffix"
}

function Convert-ContentForReport {
    param(
        [string]$Content,
        [string]$SourcePath,
        [hashtable]$FirstHeadingByFile,
        [System.Collections.Generic.HashSet[string]]$UsedAnchors
    )

    $sourceDirectory = Split-Path $SourcePath -Parent

    $converted = [regex]::Replace(
        $Content,
        '(!?\[[^\]]*\]\()([^)]+)(\))',
        {
            param($match)
            $target = Resolve-ReportTarget $match.Groups[2].Value $sourceDirectory $FirstHeadingByFile
            return $match.Groups[1].Value + $target + $match.Groups[3].Value
        }
    )

    $converted = [regex]::Replace(
        $converted,
        '(?<prefix>\b(?:src|href)\s*=\s*["''])(?<target>[^"'']+)(?<suffix>["''])',
        {
            param($match)
            $target = Resolve-ReportTarget $match.Groups['target'].Value $sourceDirectory $FirstHeadingByFile
            return $match.Groups['prefix'].Value + $target + $match.Groups['suffix'].Value
        },
        [Text.RegularExpressions.RegexOptions]::IgnoreCase
    )

    $result = [Text.StringBuilder]::new()
    $insideFence = $false
    $lines = [regex]::Split($converted, '\r?\n')
    foreach ($line in $lines) {
        if ($line -match '^\s*(```|~~~)') {
            $insideFence = -not $insideFence
        }
        if (-not $insideFence -and $line -match '^(#{1,6})\s+(.+?)\s*$') {
            $baseAnchor = "toc-$(Get-ReportSlug $Matches[2])"
            $anchor = $baseAnchor
            $suffix = 2
            while (-not $UsedAnchors.Add($anchor)) {
                $anchor = "$baseAnchor-$suffix"
                $suffix++
            }
            [void]$result.AppendLine(('<a id="{0}"></a>' -f $anchor))
        }
        [void]$result.AppendLine($line)
    }
    return $result.ToString().TrimEnd()
}

$readme = [IO.File]::ReadAllText($readmePath)
$linkMatches = [regex]::Matches(
    $readme,
    '\]\((?:\./)?(markdown/content/[^)#]+\.md)(?:#[^)]+)?\)'
)
$orderedRelativePaths = [Collections.Generic.List[string]]::new()
$seenFiles = [Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
foreach ($match in $linkMatches) {
    $relative = [Uri]::UnescapeDataString($match.Groups[1].Value).Replace('/', '\')
    if ($seenFiles.Add($relative)) {
        $orderedRelativePaths.Add($relative)
    }
}

$allContentFiles = Get-ChildItem $contentRoot -Recurse -File -Filter '*.md'
if ($orderedRelativePaths.Count -ne $allContentFiles.Count) {
    $linkedAbsolute = $orderedRelativePaths | ForEach-Object {
        [IO.Path]::GetFullPath((Join-Path $reportRoot $_))
    }
    $unlinked = $allContentFiles.FullName | Where-Object { $_ -notin $linkedAbsolute }
    throw "README order does not cover every content Markdown. Unlinked: $($unlinked -join ', ')"
}

$firstHeadingByFile = @{}
foreach ($relative in $orderedRelativePaths) {
    $absolute = [IO.Path]::GetFullPath((Join-Path $reportRoot $relative))
    if (-not (Test-Path -LiteralPath $absolute)) {
        throw "README references a missing content file: $relative"
    }
    $firstHeadingByFile[$absolute.ToLowerInvariant()] = Get-FirstHeadingSlug $absolute
}

if (-not (Test-Path -LiteralPath $outputPath)) {
    throw "The existing $OutputFile is required because its current cover and consolidated index are preserved."
}
$existing = [IO.File]::ReadAllText($outputPath)
$firstSourceComment = '<!-- Source: markdown/content/registro-versiones.md -->'
$firstContentAnchor = '<a id="toc-registro-de-versiones-del-informe"></a>'
$bodyStart = $existing.IndexOf($firstSourceComment, [StringComparison]::Ordinal)
if ($bodyStart -lt 0) {
    $bodyStart = $existing.IndexOf($firstContentAnchor, [StringComparison]::Ordinal)
}
if ($bodyStart -lt 0) {
    throw "Could not locate the beginning of consolidated content in $OutputFile."
}
$prefix = $existing.Substring(0, $bodyStart).TrimEnd()

$builder = [Text.StringBuilder]::new()
[void]$builder.AppendLine($prefix)
[void]$builder.AppendLine()
$usedAnchors = [Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)

for ($index = 0; $index -lt $orderedRelativePaths.Count; $index++) {
    $relative = $orderedRelativePaths[$index]
    $absolute = [IO.Path]::GetFullPath((Join-Path $reportRoot $relative))
    if ($index -gt 0) {
        [void]$builder.AppendLine('<div style="page-break-before: always;"></div>')
        [void]$builder.AppendLine()
    }
    [void]$builder.AppendLine("<!-- Source: $($relative.Replace('\', '/')) -->")
    $content = [IO.File]::ReadAllText($absolute)
    $converted = Convert-ContentForReport $content $absolute $firstHeadingByFile $usedAnchors
    [void]$builder.AppendLine($converted)
    [void]$builder.AppendLine()
}

[void]$builder.AppendLine('</div>')
[IO.File]::WriteAllText($outputPath, $builder.ToString(), $utf8NoBom)

Write-Output "Generated $OutputFile from $($orderedRelativePaths.Count) Markdown files."
