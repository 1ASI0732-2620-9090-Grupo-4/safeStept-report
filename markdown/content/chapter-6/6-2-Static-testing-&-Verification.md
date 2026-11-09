# 6.2. Static testing & Verification

Las pruebas estáticas verifican el código sin ejecutarlo. En SafeStep se aplican en dos niveles complementarios: el **análisis estático de código** (6.2.1), que comprueba que el código respete un estándar de escritura (6.2.1.1) y que no contenga defectos, vulnerabilidades ni deuda técnica (6.2.1.2); y las **revisiones** (6.2.2), que son la verificación hecha por personas sobre los cambios. El primer nivel se ejecuta de forma automática en el pipeline descrito en 7.1, mientras que el segundo depende del proceso del equipo.

## 6.2.1. Static Code Analysis

### 6.2.1.1. Coding standard & Code conventions

El estándar de codificación del backend es la **Google Java Style Guide**, verificada con **Checkstyle** y su conjunto de reglas `google_checks.xml`, **sin modificar**. La verificación se hace de dos formas que producen el mismo resultado: durante el desarrollo, con el **plugin Checkstyle-IDEA de IntelliJ IDEA** configurado con la regla *Google Checks*; y desde la línea de comandos, con el `maven-checkstyle-plugin` 3.6.0 (Checkstyle 14.3.0) declarado en el `pom.xml`. El comando `mvn checkstyle:checkstyle` produce el informe `target/reports/checkstyle.html`; el comando `mvn checkstyle:check` **falla si encuentra una sola infracción**, y es el que ejecuta el pipeline como compuerta antes de las pruebas (ver 7.1.2). El análisis cubre los 377 archivos Java de `src/main`; el plugin no revisa `src/test` de forma predeterminada.

**Punto de partida.** El código base proviene del curso anterior y se escribió con otras convenciones. La primera medición (commit `793e367`, 30 de octubre de 2026) dio **8,128 advertencias en 367 de los 377 archivos**, ninguna de severidad error, y en esa etapa la verificación era solo informativa. Siguiendo la exigencia del curso de que el análisis estático quede sin infracciones, el equipo corrigió el backend completo hasta llegar a **cero** y convirtió la verificación en una compuerta del pipeline. Las advertencias del punto de partida se concentraban en pocas reglas, lo que indica diferencias de estilo y no defectos del código:

| Regla de Checkstyle | Advertencias | Qué exige la guía de Google |
|---------------------|-------------:|-----------------------------|
| `IndentationCheck` | 5,582 | Sangría de 2 espacios (el proyecto usaba 4) |
| `LineLengthCheck` | 732 | Líneas de hasta 100 caracteres |
| `MissingJavadocMethodCheck` | 526 | Javadoc en los métodos públicos |
| `MissingJavadocTypeCheck` | 301 | Javadoc en las clases e interfaces públicas |
| `CustomImportOrderCheck` | 267 | Orden de los `import` (estáticos primero, orden ASCII) |
| `AvoidStarImportCheck` | 189 | Sin importaciones con comodín (`*`) |
| `NeedBracesCheck` | 160 | Llaves en todos los bloques `if`, `for` y `while` |
| `EmptyLineSeparatorCheck` | 83 | Línea en blanco entre miembros de la clase |
| `GoogleRightCurlyCheck` y `LeftCurlyCheck` | 130 | Posición de las llaves |
| Otras reglas | 158 | Párrafos de Javadoc, declaraciones múltiples y orden de sobrecargas |

**Corrección por tandas.** Cada tanda es uno o dos commits del repositorio del backend, hechos con el mismo comando y las mismas reglas, y se midió con la caché de Checkstyle limpia para que los conteos sean comparables. Ninguna tanda cambia el comportamiento del código; al terminar, las 242 pruebas del backend pasaron sin fallos y el pipeline las volvió a ejecutar (7.1.2).

| Tanda | Commits | Corrección | Advertencias (antes → después) |
|:-----:|---------|------------|:------------------------------:|
| 1 | `487a8a7` | Formato automático con google-java-format 1.37.0 | 8,128 → 1,280 |
| 2 | `2a72367`, `d69a1e6` | Importaciones explícitas, llaves, declaraciones, nombres y orden de sobrecargas | 1,280 → 873 |
| 3 | `e1b022f` | Javadoc de los contextos `iam` y `profiles` | 873 → 698 |
| 4 | `7e0cff3` | Javadoc de los contextos `commerce` y `gamification` | 698 → 183 |
| 5 | `0a34209` | Javadoc de `simulation`, `analytics` y el núcleo compartido (`shared`) | 183 → 0 |
| Compuerta | `1103ccf` | El pipeline falla si Checkstyle encuentra una infracción | 0 |

**Tanda 1. Formato automático.** Se aplicó **google-java-format** 1.37.0, el formateador que implementa la guía de Google, a todos los archivos de `src/main`. Solo cambia la presentación (sangría de 2 espacios, ancho de línea, orden de las importaciones, líneas en blanco y posición de las llaves) y eliminó 6,848 advertencias, el 84 % del total.

| Regla | Antes | Después |
|-------|------:|--------:|
| `IndentationCheck` | 5,582 | 0 |
| `LineLengthCheck` | 732 | 1 |
| `CustomImportOrderCheck` | 267 | 0 |
| `EmptyLineSeparatorCheck` | 83 | 0 |
| `GoogleRightCurlyCheck` y `LeftCurlyCheck` | 130 | 0 |
| `JavadocParagraphCheck` | 50 | 0 |

<div align="center">
  <img src="../../assets/images/chapter-6/checkstyle/tanda-1-formato.png" alt="Informe de Checkstyle tras la tanda 1" width="760"/>
  <p><i><b>Figura 6.2.1.</b> Informe de <code>mvn checkstyle:checkstyle</code> tras la tanda 1 (commit <code>487a8a7</code>): 377 archivos y 1,280 advertencias. <b>Fuente</b>: Elaboración propia</i></p>
</div>

**Tanda 2. Importaciones, llaves y nombres.** Lo que el formateador no puede decidir se corrigió con transformaciones sobre el código fuente y revisión posterior: se sustituyeron las 189 importaciones con comodín por importaciones explícitas, se añadieron llaves a los 160 bloques de una sola línea, se separaron 23 declaraciones de varias variables y se agruparon los 21 métodos sobrecargados que estaban dispersos. Además se renombraron 11 campos de una sola letra (`r`) a `repository` en los adaptadores de repositorio y la clase `BCryptHashingService` pasó a `BcryptHashingService`, porque la guía no admite siglas consecutivas en mayúscula. Con esto solo quedaron advertencias de Javadoc.

<div align="center">
  <img src="../../assets/images/chapter-6/checkstyle/tanda-2-importaciones-llaves-nombres.png" alt="Informe de Checkstyle tras la tanda 2" width="760"/>
  <p><i><b>Figura 6.2.2.</b> Informe de Checkstyle tras la tanda 2 (commit <code>d69a1e6</code>): 377 archivos y 873 advertencias, todas de documentación Javadoc. <b>Fuente</b>: Elaboración propia</i></p>
</div>

**Tandas 3, 4 y 5. Documentación Javadoc.** Las 873 advertencias restantes pedían documentación en clases, interfaces y métodos públicos (`MissingJavadocTypeCheck`, `MissingJavadocMethodCheck`) y una primera frase completa en cada comentario (`SummaryJavadocCheck`). Se documentó contexto por contexto, en inglés, con una redacción por capa y tipo de clase (comandos, consultas, agregados, repositorios, controladores, etc.) completada a mano donde las reglas de negocio lo requerían:

| Tanda | Contextos | `MissingJavadocMethod` | `MissingJavadocType` | `SummaryJavadoc` | Total |
|:-----:|-----------|-----------------------:|---------------------:|-----------------:|------:|
| 2 (fin) | — | 526 | 301 | 46 | 873 |
| 3 | `iam`, `profiles` | 432 | 257 | 9 | 698 |
| 4 | `commerce`, `gamification` | 96 | 78 | 9 | 183 |
| 5 | `simulation`, `analytics`, `shared` | 0 | 0 | 0 | 0 |

<div align="center">
  <img src="../../assets/images/chapter-6/checkstyle/tanda-3-javadoc-iam-profiles.png" alt="Informe de Checkstyle tras la tanda 3" width="760"/>
  <p><i><b>Figura 6.2.3.</b> Informe de Checkstyle tras la tanda 3 (commit <code>e1b022f</code>): 698 advertencias tras documentar los contextos <code>iam</code> y <code>profiles</code>. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/checkstyle/tanda-4-javadoc-commerce-gamification.png" alt="Informe de Checkstyle tras la tanda 4" width="760"/>
  <p><i><b>Figura 6.2.4.</b> Informe de Checkstyle tras la tanda 4 (commit <code>7e0cff3</code>): 183 advertencias tras documentar <code>commerce</code> y <code>gamification</code>. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/checkstyle/tanda-5-javadoc-resto-cero.png" alt="Informe de Checkstyle tras la tanda 5" width="760"/>
  <p><i><b>Figura 6.2.5.</b> Informe de Checkstyle tras la tanda 5 (commit <code>0a34209</code>): 377 archivos, 0 advertencias y 0 errores. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/checkstyle/plugin-intellij.png" alt="Plugin Checkstyle de IntelliJ IDEA sin problemas" width="420"/>
  <p><i><b>Figura 6.2.6.</b> Plugin Checkstyle de IntelliJ IDEA con la regla <i>Google Checks</i> sobre el proyecto <code>safestept-backend</code>: «Checkstyle found no problems in the file(s)». <b>Fuente</b>: Elaboración propia</i></p>
</div>

**Compuerta en el pipeline.** El último commit (`1103ccf`) cambia la etapa del `Jenkinsfile` de reporte a validación: `mvn checkstyle:check`, con `failOnViolation` y severidad mínima `warning` en el `pom.xml`, de modo que cualquier advertencia detiene el pipeline antes de ejecutar las pruebas. La evidencia de una ejecución que falla por una infracción deliberada y de otra que la supera se muestra en 7.1.2.

**Convenciones que el equipo sí aplica y se verifican por otros medios**

| Ámbito | Convención | Cómo se verifica |
|--------|------------|------------------|
| Mensajes de commit | Conventional Commits (5.1.2.4) | Revisión del historial de Git |
| Ramas | `feature/<descripcion-corta>`, `hotfix/…`, `develop` y `main` (5.1.2) | Estructura de ramas en el repositorio |
| Arquitectura del backend | DDD con cuatro capas por bounded context: `domain`, `application`, `infrastructure` e `interfaces` | Estructura de paquetes y reglas de SonarQube sobre el diseño |
| Nombres en Java | Clases en `PascalCase`, métodos y variables en `camelCase`, constantes en `MAYUSCULAS_CON_GUION_BAJO` | Reglas de nombres de Checkstyle (0 advertencias tras la tanda 2) y de SonarQube |
| Frontend | Prettier con `printWidth: 100`, comillas simples y analizador `angular` para las plantillas HTML | `npx prettier --check` |

**Frontend.** El frontend en Angular no usa ESLint: su único formateador es **Prettier**, configurado en `.prettierrc`. Al ejecutar `npx prettier --check "src/**/*.{ts,html,css,scss}"` sobre el código final, **136 de los 215 archivos** no cumplen el formato (se tolera la diferencia entre `CRLF` y `LF`, que depende del sistema operativo del desarrollador). Prettier no forma parte del pipeline, por lo que hoy el formato del frontend depende de la disciplina individual.

**Aplicación móvil.** El proyecto Android no tiene una herramienta de estilo configurada; el estilo se apoya en las inspecciones del propio Android Studio.

**Decisión y mejora prevista.** Checkstyle es hoy una compuerta del pipeline del backend, con cero infracciones sobre `src/main`; las pruebas (`src/test`) quedan fuera de su alcance. Como mejora, el equipo puede añadir `prettier --check` al pipeline del frontend y ampliar el análisis de estilo a las pruebas.

### 6.2.1.2. Code Quality & Code Security

La calidad y la seguridad del código se verifican con **SonarQube Community Build 26.10** (modo MQR), que analiza el código sin ejecutarlo y clasifica los hallazgos en tres cualidades de software: **seguridad**, **fiabilidad** (bugs) y **mantenibilidad** (*code smells*). Esta sección documenta el análisis del backend en 12 etapas y del frontend en 3 etapas: en cada etapa se indica qué se implementó o se corrigió, qué hallazgos aparecieron o se cerraron y cómo respondió el Quality Gate. Los análisis se ejecutaron el 30 de octubre de 2026 sobre el código de cada etapa; el commit de origen se indica en cada una.

**Configuración del análisis**

| Elemento | Backend | Frontend |
|----------|---------|----------|
| Proyecto en SonarQube | `safestep-backend-evolucion` | `safestep-frontend-evolucion` |
| Lenguajes analizados | Java y XML | TypeScript, HTML y CSS |
| Perfil de reglas | *Sonar way extended* (337 reglas activas en Java) | *Sonar way extended* (251 reglas en TypeScript y JavaScript) |
| Quality Gate | *Sonar way* (condiciones sobre el código nuevo) | *Sonar way* |
| Herramienta de análisis | `sonar-maven-plugin` 5.8.0.7211 con JDK 26 | `sonar-scanner-cli` en Docker |
| Cobertura | JaCoCo 0.8.15 (informe XML) | Vitest 4 con cobertura V8 (informe `lcov`) |
| Referencia del código nuevo | Versión anterior (cada etapa se compara con la anterior) | Versión anterior |

El **perfil de reglas** determina qué hallazgos se reportan. Se usó *Sonar way extended*, que activa más reglas que el perfil por defecto de la instancia (*Sonar way core*, 274 reglas en Java). Por esa razón, el conteo de *code smells* que muestra el panel del pipeline de Jenkins (7.1.2), que usa el perfil por defecto, puede diferir del que aparece en esta sección.

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/general/perfil-java-extended.png" alt="Perfil Sonar way extended para Java" width="760"/>
  <p><i><b>Figura 6.2.7.</b> Perfil Sonar way extended para Java en SonarQube: 337 reglas activas. <b>Fuente</b>: Elaboración propia</i></p>
</div>

**Quality Gate.** Se usó el Quality Gate *Sonar way*, que evalúa únicamente el **código nuevo** respecto a la versión anterior con cuatro condiciones: cero incidencias nuevas, todos los puntos críticos de seguridad nuevos revisados, cobertura del código nuevo de al menos 80 % y duplicación del código nuevo de a lo sumo 3 %. Por eso un estado puede tener muchas incidencias antiguas y aun así aprobar, y un cambio pequeño con una sola incidencia nueva puede hacer fallar el gate.

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/general/quality-gate-sonar-way.png" alt="Condiciones del Quality Gate Sonar way" width="760"/>
  <p><i><b>Figura 6.2.8.</b> Condiciones del Quality Gate Sonar way sobre el código nuevo. <b>Fuente</b>: Elaboración propia</i></p>
</div>

**Alcance del análisis y exclusiones de cobertura**

En el backend **no se excluyó ninguna carpeta del análisis de calidad**: SonarQube revisó los 369 archivos Java de `src/main` y las pruebas de `src/test`. Prueba de ello es que se detectaron incidencias también en las capas que se excluyen de la cobertura: 59 en controladores, 7 en `infrastructure` (entre ellas CORS, CSRF y el desbordamiento de Stripe) y 1 en `domain`. Lo que se excluye es solo el **cálculo del porcentaje de cobertura**, con las mismas reglas en JaCoCo (`pom.xml`), en el `Jenkinsfile` (`sonar.coverage.exclusions`) y en este análisis, de modo que las tres herramientas midan el mismo código. Siguiendo la configuración de JaCoCo del proyecto de referencia del curso (`pom.xml` de `learning-center-platform-small`, que excluye `domain`, `infrastructure`, `interfaces/rest/resources`, los controladores y la clase de arranque), el equipo considera que estas capas no contienen lógica de aplicación: entidades y objetos de valor, configuración y conexión con frameworks, objetos de transferencia de datos, capa HTTP delgada y clase de arranque.

Para que el efecto de esta decisión sea transparente, se midió además la cobertura del estado final **sin ninguna exclusión**:

| Capa | Archivos Java | Cobertura de instrucciones sin exclusiones | ¿Se mide en la cobertura reportada? |
|------|---------------|--------------------------------------------|--------------------------------------|
| `domain` | 140 | 90.9 % | No |
| `infrastructure` | 105 | 77.7 % | No |
| `interfaces/rest/resources` | 41 | 84.5 % | No |
| Controladores (`*Controller*`) | 9 | 27.9 % | No |
| Clases cuyo nombre contiene `Application` | 3 | 93.9 % | No |
| Resto (`application`, `shared`, etc.) | 54 clases medidas | 93.8 % | **Sí** |
| **Total** | 319 clases | **82.1 %** (14,533 de 17,697 instrucciones) | 93.8 % reportado (5,169 de 5,512) |

El patrón `**/*Application*` coincide, por su nombre, con tres archivos (`SafeStepPlatformApplication`, `ApplicationReadyEventHandler` y `ApplicationError`) y no solo con la clase de arranque. Sin exclusiones la cobertura seguiría superando el mínimo de 80 %. La única capa claramente baja son los controladores (27.9 %): su lógica se ejercita por HTTP con las pruebas BDD y Karate, pero JaCoCo no la mide por completo. SonarQube calcula la cobertura sobre líneas y condiciones, por lo que reporta 91.7 % para el mismo código en lugar del 93.8 % por instrucciones de JaCoCo. En el frontend se excluyen del análisis `node_modules`, `dist`, `coverage` y los archivos `*.spec.ts` (se tratan como pruebas), y la cobertura se mide sobre todo `src/**/*.ts`.

**Backend: evolución de las 12 etapas**

La tabla resume el resultado de cada análisis. *Seguridad*, *Fiabilidad* y *Mantenibilidad* son los conteos de incidencias abiertas que muestra el Summary de SonarQube; la cobertura es la que calcula SonarQube con las exclusiones descritas.

| Etapa | Qué se implementó o corrigió | Líneas | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Quality Gate |
|-------|------------------------------|--------|---------|-----------|-----------|------------|----------------|--------------|
| 00 | Código base heredado | 8953 | 41 | 43.2 % | 2 | 2 | 80 | Passed |
| 01 | Canje de cupones (estado previo al TB1) | 9754 | 54 | 47.3 % | 2 | 3 | 85 | Failed |
| 02 | Herramientas de calidad: JaCoCo, Checkstyle y SonarQube | 9830 | 54 | 47.3 % | 2 | 3 | 85 | Passed |
| 03 | Pruebas unitarias de commerce e iam | 9830 | 126 | 67.8 % | 2 | 3 | 85 | Passed |
| 04 | Pruebas unitarias de gamification y simulation | 9830 | 172 | 80.8 % | 2 | 3 | 85 | Passed |
| 05 | Pruebas unitarias de analytics, profiles y shared | 9830 | 201 | 90.9 % | 2 | 3 | 86 | Failed |
| 06 | BDD con Cucumber, pruebas de API con Karate e integración continua | 9854 | 234 | 91.7 % | 2 | 3 | 86 | Passed |
| 07 | Corrección de la política CORS (java:S5122) | 9858 | 234 | 91.7 % | 1 | 3 | 86 | Passed |
| 08 | Corrección de dos bugs (java:S2184 y java:S2637) | 9859 | 234 | 91.7 % | 1 | 0 | 86 | Passed |
| 09 | Respuesta 400 ante un JSON mal formado | 9871 | 238 | 91.7 % | 1 | 0 | 87 | Failed |
| 10 | Corrección de java:S1452 en el manejador nuevo | 9872 | 238 | 91.7 % | 1 | 0 | 86 | Passed |
| 11 | Estado final del backend | 9964 | 242 | 91.7 % | 1 | 0 | 86 | Passed |

El Quality Gate falló en tres etapas, siempre por el **código nuevo** respecto a la etapa anterior:

| Etapa | Causa del fallo |
|-------|-----------------|
| 01 | Cobertura nueva de 52.5 % (mínimo 80 %), duplicación nueva de 6.1 % (máximo 3 %) y 7 incidencias nuevas |
| 05 | 1 incidencia nueva (`java:S1186`, método vacío en una prueba) |
| 09 | 1 incidencia nueva (`java:S1452` en el manejador de errores recién agregado) |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/activity-incidencias.png" alt="Actividad de SonarQube: incidencias del backend" width="760"/>
  <p><i><b>Figura 6.2.9.</b> Actividad del proyecto en SonarQube: evolución de las incidencias en las 12 etapas del backend, con la versión y los eventos del Quality Gate. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/activity-cobertura.png" alt="Actividad de SonarQube: cobertura del backend" width="760"/>
  <p><i><b>Figura 6.2.10.</b> Actividad del proyecto en SonarQube: evolución de las líneas a cubrir y las líneas cubiertas del backend. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/quality-gate-history.png" alt="Historial del Quality Gate del backend" width="760"/>
  <p><i><b>Figura 6.2.11.</b> Historial del Quality Gate del backend: 9 de las 12 versiones aprobaron y 3 fallaron (etapas 01, 05 y 09). <b>Fuente</b>: Elaboración propia</i></p>
</div>

**Backend: análisis etapa por etapa**

#### Etapa 00. Código base heredado

**Qué se implementó o corrigió.** Es el punto de partida: el código base heredado del curso anterior, tal como se importó al repositorio. Contiene 350 archivos Java organizados por contextos delimitados, 41 pruebas automáticas y ninguna herramienta de calidad configurada (sin JaCoCo, Checkstyle, SonarQube, BDD ni pipeline).

**Código analizado.** Commit `0222e59` (5 de septiembre de 2026).

**Hallazgos.** SonarQube detecta 84 incidencias abiertas: 2 de seguridad (`java:S4502`, protección CSRF deshabilitada, y `java:S5122`, política CORS abierta a cualquier origen), 2 de fiabilidad (`java:S2637`, dos retornos de `null` en `ErrorResponseAssembler`) y 80 de mantenibilidad (62 `java:S1452` por comodines genéricos en tipos de retorno, 15 `java:S1192` por literales duplicados y una incidencia de cada una de `java:S2696`, `java:S3776` y `java:S1186`). La cobertura es de 43.2 % sobre 842 líneas medibles.

**Quality Gate.** **Passed.** Es el primer análisis del proyecto y todavía no existe una versión anterior con la cual comparar el código nuevo.

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 8953 | 41 | 43.2 % | 2 | 2 | 80 | 0.3 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-00-summary.png" alt="Resumen de SonarQube en la etapa 00" width="760"/>
  <p><i><b>Figura 6.2.12.</b> Resumen (Summary, código completo) de SonarQube en la etapa 00: Código base heredado. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-00-issues.png" alt="Incidencias de SonarQube en la etapa 00" width="760"/>
  <p><i><b>Figura 6.2.13.</b> Incidencias abiertas en SonarQube en la etapa 00: Código base heredado. <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa 01. Canje de cupones (estado previo al TB1)

**Qué se implementó o corrigió.** Se incorpora la funcionalidad de canje de cupones con SafeCoins: 19 archivos Java nuevos (369 en total) y 13 pruebas más (54 en total). Es el estado del repositorio justo antes de comenzar el trabajo de calidad del TB1.

**Código analizado.** Commit `f77dfef` (17 de septiembre de 2026).

**Hallazgos.** Aparecen 7 incidencias nuevas, asociadas al código agregado: `java:S2184` (un bug de aritmética en `StripeCheckoutClientImpl`), `java:S3776` y `java:S1192` en `CommerceCommandServiceImpl`, `java:S1192` en `UserCommandServiceImpl` y tres `java:S1452` en controladores; además se cierra una `java:S1192` anterior. Los bugs pasan de 2 a 3.

**Quality Gate.** **Failed.** El código nuevo incumple tres condiciones: cobertura de 52.5 % (mínimo 80 %), duplicación de 6.1 % (máximo 3 %) y 7 incidencias nuevas (máximo 0). Es un ejemplo de código funcional agregado sin pruebas suficientes.

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 9754 | 54 | 47.3 % | 2 | 3 | 85 | 1.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-01-summary.png" alt="Resumen de SonarQube en la etapa 01" width="760"/>
  <p><i><b>Figura 6.2.14.</b> Resumen (Summary, código completo) de SonarQube en la etapa 01: Canje de cupones (estado previo al TB1). <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-01-issues.png" alt="Incidencias de SonarQube en la etapa 01" width="760"/>
  <p><i><b>Figura 6.2.15.</b> Incidencias abiertas en SonarQube en la etapa 01: Canje de cupones (estado previo al TB1). <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa 02. Herramientas de calidad: JaCoCo, Checkstyle y SonarQube

**Qué se implementó o corrigió.** Se incorporan al `pom.xml` JaCoCo (medición de cobertura y verificación del mínimo de 80 %), Checkstyle con las reglas de Google en modo reporte y el plugin de análisis de SonarQube. No cambia el código funcional: se habilita la medición continua. Las líneas adicionales corresponden a la configuración del `pom.xml`.

**Código analizado.** Commit `13728a1` (7 de octubre de 2026).

**Hallazgos.** No aparecen ni se cierran incidencias. La cobertura se mantiene en 47.3 %.

**Quality Gate.** **Passed.** No hay código nuevo con incidencias.

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 9830 | 54 | 47.3 % | 2 | 3 | 85 | 1.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-02-summary.png" alt="Resumen de SonarQube en la etapa 02" width="760"/>
  <p><i><b>Figura 6.2.16.</b> Resumen (Summary, código completo) de SonarQube en la etapa 02: Herramientas de calidad: JaCoCo, Checkstyle y SonarQube. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-02-issues.png" alt="Incidencias de SonarQube en la etapa 02" width="760"/>
  <p><i><b>Figura 6.2.17.</b> Incidencias abiertas en SonarQube en la etapa 02: Herramientas de calidad: JaCoCo, Checkstyle y SonarQube. <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa 03. Pruebas unitarias de commerce e iam

**Qué se implementó o corrigió.** Se agregan 72 pruebas unitarias (de 54 a 126): en `commerce`, reglas de carrito y órdenes, sesión de pago con Stripe, catálogo y canje de cupones; en `iam`, gestión de roles, semilla del administrador y fachada ACL.

**Código analizado.** Commits `d0e6e94` y `78aaf5d` (7 de octubre de 2026).

**Hallazgos.** Las pruebas no introducen incidencias. La cobertura sube de 47.3 % a 67.8 %.

**Quality Gate.** **Passed.**

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 9830 | 126 | 67.8 % | 2 | 3 | 85 | 1.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-03-summary.png" alt="Resumen de SonarQube en la etapa 03" width="760"/>
  <p><i><b>Figura 6.2.18.</b> Resumen (Summary, código completo) de SonarQube en la etapa 03: Pruebas unitarias de commerce e iam. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-03-issues.png" alt="Incidencias de SonarQube en la etapa 03" width="760"/>
  <p><i><b>Figura 6.2.19.</b> Incidencias abiertas en SonarQube en la etapa 03: Pruebas unitarias de commerce e iam. <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa 04. Pruebas unitarias de gamification y simulation

**Qué se implementó o corrigió.** Se agregan 46 pruebas unitarias (de 126 a 172): reglas de misiones e insignias, gasto de SafeCoins y manejador del evento de intento completado en `gamification`; registro de intentos, CRUD de simulaciones y eventos de dominio en `simulation`.

**Código analizado.** Commits `c60f963` y `1c9d1ed` (7 de octubre de 2026).

**Hallazgos.** Sin incidencias nuevas. La cobertura sube de 67.8 % a 80.8 %, por encima del mínimo de 80 % que exige el Quality Gate para el código nuevo.

**Quality Gate.** **Passed.**

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 9830 | 172 | 80.8 % | 2 | 3 | 85 | 1.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-04-summary.png" alt="Resumen de SonarQube en la etapa 04" width="760"/>
  <p><i><b>Figura 6.2.20.</b> Resumen (Summary, código completo) de SonarQube en la etapa 04: Pruebas unitarias de gamification y simulation. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-04-issues.png" alt="Incidencias de SonarQube en la etapa 04" width="760"/>
  <p><i><b>Figura 6.2.21.</b> Incidencias abiertas en SonarQube en la etapa 04: Pruebas unitarias de gamification y simulation. <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa 05. Pruebas unitarias de analytics, profiles y shared

**Qué se implementó o corrigió.** Se agregan 29 pruebas unitarias (de 172 a 201): resumen, progreso y emisión de certificados en `analytics`; comandos, consultas y fachada ACL en `profiles`; y el tipo `Result` y el manejador global de excepciones en `shared`.

**Código analizado.** Commits `1aa5aaf`, `2e17510` y `15f374c` (7 de octubre de 2026).

**Hallazgos.** La cobertura sube de 80.8 % a 90.9 %. Aparece una incidencia nueva: `java:S1186` (método vacío) en `GlobalExceptionHandlerTest`, código de las propias pruebas.

**Quality Gate.** **Failed.** Una incidencia nueva (máximo 0), a pesar de que la cobertura del código nuevo cumple.

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 9830 | 201 | 90.9 % | 2 | 3 | 86 | 1.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-05-summary.png" alt="Resumen de SonarQube en la etapa 05" width="760"/>
  <p><i><b>Figura 6.2.22.</b> Resumen (Summary, código completo) de SonarQube en la etapa 05: Pruebas unitarias de analytics, profiles y shared. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-05-issues.png" alt="Incidencias de SonarQube en la etapa 05" width="760"/>
  <p><i><b>Figura 6.2.23.</b> Incidencias abiertas en SonarQube en la etapa 05: Pruebas unitarias de analytics, profiles y shared. <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa 06. BDD con Cucumber, pruebas de API con Karate e integración continua

**Qué se implementó o corrigió.** Se agregan 33 escenarios de Cucumber (cinco archivos `.feature` con criterios de aceptación en Gherkin, etiquetados con sus historias de usuario) que levantan la aplicación completa sobre una base H2 aislada: 234 pruebas en total. El mismo estado incluye la suite de integración de la API con Karate (36 escenarios, que SonarQube no mide) y el pipeline de Jenkins con SonarQube descrito en 7.1.

**Código analizado.** Commit `ffc7a6c` (8 de octubre de 2026), que integra los cambios de BDD, Karate y del pipeline.

**Hallazgos.** La cobertura sube de 90.9 % a 91.7 %. No hay incidencias nuevas. Este es el estado previo a las correcciones: sus hallazgos (2 vulnerabilidades y 3 bugs) coinciden con el primer análisis del pipeline que se describe en 7.1.2 y son los que se corrigen en las etapas siguientes.

**Quality Gate.** **Passed.**

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 9854 | 234 | 91.7 % | 2 | 3 | 86 | 1.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-06-summary.png" alt="Resumen de SonarQube en la etapa 06" width="760"/>
  <p><i><b>Figura 6.2.24.</b> Resumen (Summary, código completo) de SonarQube en la etapa 06: BDD con Cucumber, pruebas de API con Karate e integración continua. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-06-issues.png" alt="Incidencias de SonarQube en la etapa 06" width="760"/>
  <p><i><b>Figura 6.2.25.</b> Incidencias abiertas en SonarQube en la etapa 06: BDD con Cucumber, pruebas de API con Karate e integración continua. <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa 07. Corrección de la política CORS (java:S5122)

**Qué se implementó o corrigió.** `WebSecurityConfiguration` deja de aceptar cualquier origen (`*`) y lee los orígenes permitidos de la propiedad `safestep.cors.allowed-origins` (variable de entorno `SAFESTEP_CORS_ALLOWED_ORIGINS`), con el frontend local y los frontends publicados por defecto. La configuración de pruebas declara la misma propiedad.

**Código analizado.** Cambios de los commits `5dfcbdb` y `c95ca77` (8 de octubre de 2026) correspondientes a CORS.

**Hallazgos.** Se cierra `java:S5122`: las incidencias de seguridad pasan de 2 a 1. Queda abierta únicamente `java:S4502` (CSRF deshabilitado), que se mantiene a propósito porque la API es *stateless* y autentica con JWT, como se explica en 7.1.2.

**Quality Gate.** **Passed.**

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 9858 | 234 | 91.7 % | 1 | 3 | 86 | 1.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-07-summary.png" alt="Resumen de SonarQube en la etapa 07" width="760"/>
  <p><i><b>Figura 6.2.26.</b> Resumen (Summary, código completo) de SonarQube en la etapa 07: Corrección de la política CORS (java:S5122). <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-07-issues.png" alt="Incidencias de SonarQube en la etapa 07" width="760"/>
  <p><i><b>Figura 6.2.27.</b> Incidencias abiertas en SonarQube en la etapa 07: Corrección de la política CORS (java:S5122). <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa 08. Corrección de dos bugs (java:S2184 y java:S2637)

**Qué se implementó o corrigió.** En `StripeCheckoutClientImpl` el cálculo del descuento usa aritmética `long` (`100L - discountPercentage`) para evitar un posible desbordamiento (`java:S2184`). En `ErrorResponseAssembler` los métodos que pueden devolver `null` se anotan como `@Nullable` (`java:S2637`, dos incidencias).

**Código analizado.** Cambios del commit `5dfcbdb` (8 de octubre de 2026) en `StripeCheckoutClientImpl` y `ErrorResponseAssembler`.

**Hallazgos.** Se cierran `java:S2184` y las dos `java:S2637`: las incidencias de fiabilidad pasan de 3 a 0.

**Quality Gate.** **Passed.**

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 9859 | 234 | 91.7 % | 1 | 0 | 86 | 1.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-08-summary.png" alt="Resumen de SonarQube en la etapa 08" width="760"/>
  <p><i><b>Figura 6.2.28.</b> Resumen (Summary, código completo) de SonarQube en la etapa 08: Corrección de dos bugs (java:S2184 y java:S2637). <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-08-issues.png" alt="Incidencias de SonarQube en la etapa 08" width="760"/>
  <p><i><b>Figura 6.2.29.</b> Incidencias abiertas en SonarQube en la etapa 08: Corrección de dos bugs (java:S2184 y java:S2637). <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa 09. Respuesta 400 ante un JSON mal formado

**Qué se implementó o corrigió.** Al desarrollar las pruebas de integración se detectó que la API respondía HTTP 500 ante un cuerpo JSON mal formado. Se agrega en `GlobalExceptionHandler` un manejador para `HttpMessageNotReadableException` que responde 400 con un error de validación sin exponer el mensaje interno del analizador, se registran los errores inesperados y se agregan los mensajes en español e inglés. Se suman 4 pruebas (238 en total): tres de integración por HTTP (JSON mal formado, origen CORS permitido y origen ajeno) y una unitaria.

**Código analizado.** Cambios de los commits `5dfcbdb` y `c95ca77` (8 de octubre de 2026) en el manejador global de excepciones.

**Hallazgos.** Aparece una incidencia nueva, `java:S1452`, en el manejador recién agregado (devolvía `ResponseEntity<?>`).

**Quality Gate.** **Failed.** Una incidencia nueva (máximo 0). Es el caso en que el Quality Gate detiene el pipeline por código nuevo con una incidencia, tal como ocurrió en la ejecución #6 de Jenkins (7.1.2).

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 9871 | 238 | 91.7 % | 1 | 0 | 87 | 1.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-09-summary.png" alt="Resumen de SonarQube en la etapa 09" width="760"/>
  <p><i><b>Figura 6.2.30.</b> Resumen (Summary, código completo) de SonarQube en la etapa 09: Respuesta 400 ante un JSON mal formado. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-09-issues.png" alt="Incidencias de SonarQube en la etapa 09" width="760"/>
  <p><i><b>Figura 6.2.31.</b> Incidencias abiertas en SonarQube en la etapa 09: Respuesta 400 ante un JSON mal formado. <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa 10. Corrección de java:S1452 en el manejador nuevo

**Qué se implementó o corrigió.** El método `handleHttpMessageNotReadable` pasa de devolver `ResponseEntity<?>` a devolver `ResponseEntity<ErrorResource>`, con lo que el tipo de retorno queda explícito.

**Código analizado.** Cambio del commit `d5faeed` (8 de octubre de 2026).

**Hallazgos.** Se cierra la `java:S1452` del manejador. Las incidencias de mantenibilidad vuelven de 87 a 86.

**Quality Gate.** **Passed.**

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 9872 | 238 | 91.7 % | 1 | 0 | 86 | 1.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-10-summary.png" alt="Resumen de SonarQube en la etapa 10" width="760"/>
  <p><i><b>Figura 6.2.32.</b> Resumen (Summary, código completo) de SonarQube en la etapa 10: Corrección de java:S1452 en el manejador nuevo. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-10-issues.png" alt="Incidencias de SonarQube en la etapa 10" width="760"/>
  <p><i><b>Figura 6.2.33.</b> Incidencias abiertas en SonarQube en la etapa 10: Corrección de java:S1452 en el manejador nuevo. <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa 11. Estado final del backend

**Qué se implementó o corrigió.** Se documentan con OpenAPI las respuestas exitosas de la API (se anotaron 49 operaciones cuya respuesta no tenía esquema) y se agregan 4 pruebas de contrato que verifican el documento publicado, hasta llegar a 242 pruebas. El estado incluye además el README actualizado y los archivos de contenerización y de integración continua (Dockerfile, Docker Compose, imagen de PostgreSQL y Jenkinsfile), que SonarQube no mide.

**Código analizado.** Commit `793e367` (28 de octubre de 2026), estado actual de la rama `main`.

**Hallazgos.** Sin incidencias nuevas. Quedan 87 incidencias abiertas (1 de seguridad y 86 de mantenibilidad), que se describen en la sección de hallazgos abiertos.

**Quality Gate.** **Passed.**

| Líneas de código | Pruebas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|---------|-----------|-----------|------------|----------------|-------------|
| 9964 | 242 | 91.7 % | 1 | 0 | 86 | 1.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-11-summary.png" alt="Resumen de SonarQube en la etapa 11" width="760"/>
  <p><i><b>Figura 6.2.34.</b> Resumen (Summary, código completo) de SonarQube en la etapa 11: Estado final del backend. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/backend/paso-11-issues.png" alt="Incidencias de SonarQube en la etapa 11" width="760"/>
  <p><i><b>Figura 6.2.35.</b> Incidencias abiertas en SonarQube en la etapa 11: Estado final del backend. <b>Fuente</b>: Elaboración propia</i></p>
</div>

**Backend: hallazgos abiertos y deuda técnica**

Al cierre del análisis quedan 87 incidencias abiertas en el backend. Ninguna impide el Quality Gate, que evalúa solo el código nuevo, pero constituyen deuda técnica identificada y se corrigieron después, como se documenta más abajo:

| Regla | Cantidad | Descripción | Situación |
|-------|----------|-------------|-----------|
| `java:S1452` | 65 | Los comodines genéricos no deben usarse en tipos de retorno (`ResponseEntity<?>`) | Código anterior en controladores. **Corregido** el 8 de noviembre (tanda 1 de la corrección) |
| `java:S1192` | 16 | Los literales de texto no deben duplicarse | **Corregido** (tanda 2) |
| `java:S3776` | 2 | La complejidad cognitiva de los métodos no debe ser demasiado alta | **Corregido** (tanda 3) |
| `java:S1186` | 2 | Los métodos no deben estar vacíos | **Corregido** (tanda 2) |
| `java:S2696` | 1 | Los métodos de instancia no deben escribir en campos estáticos | **Corregido** (tanda 2) |
| `java:S4502` | 1 | Las protecciones CSRF no deben deshabilitarse | **Se mantiene a propósito**: la API es *stateless*, autentica con JWT en el encabezado `Authorization` y no usa cookies de sesión (7.1.2) |

**Frontend: análisis en 3 etapas**

El frontend (Angular 21) se analizó con el mismo procedimiento. Un detalle de la medición: por defecto, el ejecutor de pruebas de Angular solo mide los archivos que importan las pruebas, por lo que informaba 100 % sobre 2 líneas; para obtener un valor real se configuró la medición sobre todo `src/**/*.ts`. El frontend solo cuenta con una prueba de arranque (`app.spec.ts`, 2 pruebas), de modo que su cobertura es prácticamente nula.

| Etapa | Qué se implementó | Líneas | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Quality Gate |
|-------|-------------------|--------|-----------|-----------|------------|----------------|--------------|
| F0 | Código base heredado | 11939 | 0.4 % | 0 | 12 | 3 | Passed |
| F1 | Panel de administración y canje de cupones | 12891 | 0.4 % | 0 | 11 | 1 | Failed |
| F2 | Estado final del frontend | 13147 | 0.4 % | 0 | 11 | 1 | Passed |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/frontend/activity-incidencias.png" alt="Actividad de SonarQube: incidencias del frontend" width="760"/>
  <p><i><b>Figura 6.2.36.</b> Actividad del proyecto del frontend en SonarQube: evolución de las incidencias en las 3 etapas. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/frontend/activity-cobertura.png" alt="Actividad de SonarQube: cobertura del frontend" width="760"/>
  <p><i><b>Figura 6.2.37.</b> Actividad del proyecto del frontend en SonarQube: evolución de las líneas a cubrir y las líneas cubiertas. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/frontend/quality-gate-history.png" alt="Historial del Quality Gate del frontend" width="760"/>
  <p><i><b>Figura 6.2.38.</b> Historial del Quality Gate del frontend: la etapa F1 falló por código nuevo sin pruebas. <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa F0. Código base heredado

**Qué se implementó o corrigió.** Es el punto de partida del frontend: el código base heredado del curso anterior, con 140 archivos TypeScript y una sola prueba de arranque.

**Código analizado.** Commit `b86d1bc` (5 de septiembre de 2026).

**Hallazgos.** Se detectan 12 incidencias abiertas: 8 de `typescript:S9383` (promesas que no se esperan ni se manejan), 2 de `typescript:S7773` (usar las funciones estáticas de `Number` en lugar de las globales), 1 de `typescript:S7723` (llamar a los constructores nativos de forma consistente con o sin `new`) y 1 de `typescript:S8786` (expresión regular con retroceso no lineal). La cobertura es de 0.4 %.

**Quality Gate.** **Passed.** Es el primer análisis del proyecto y no hay una versión anterior con la cual comparar.

| Líneas de código | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|-----------|-----------|------------|----------------|-------------|
| 11939 | 0.4 % | 0 | 12 | 3 | 0.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/frontend/paso-F0-summary.png" alt="Resumen de SonarQube en la etapa F0" width="760"/>
  <p><i><b>Figura 6.2.39.</b> Resumen (Summary, código completo) de SonarQube en la etapa F0: Código base heredado. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/frontend/paso-F0-issues.png" alt="Incidencias de SonarQube en la etapa F0" width="760"/>
  <p><i><b>Figura 6.2.40.</b> Incidencias abiertas en SonarQube en la etapa F0: Código base heredado. <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa F1. Panel de administración y canje de cupones

**Qué se implementó o corrigió.** Se agregan el panel de administración, la gestión de roles, el rediseño de cupones, la página de canje de cupones, el selector de cupón en el checkout y la vista de los cupones canjeados del jugador.

**Código analizado.** Commit `be56a72` (17 de septiembre de 2026): 56 archivos modificados.

**Hallazgos.** Se cierran dos incidencias `typescript:S7773` en `ecommerce-store.ts` y aparece una `typescript:S9383` nueva en `user-roles-form.ts`: las abiertas pasan de 12 a 11.

**Quality Gate.** **Failed.** El código nuevo no tiene cobertura (0 %, mínimo 80 %) y agrega 1 incidencia nueva: se incorporó funcionalidad sin pruebas.

| Líneas de código | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|-----------|-----------|------------|----------------|-------------|
| 12891 | 0.4 % | 0 | 11 | 1 | 0.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/frontend/paso-F1-summary.png" alt="Resumen de SonarQube en la etapa F1" width="760"/>
  <p><i><b>Figura 6.2.41.</b> Resumen (Summary, código completo) de SonarQube en la etapa F1: Panel de administración y canje de cupones. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/frontend/paso-F1-issues.png" alt="Incidencias de SonarQube en la etapa F1" width="760"/>
  <p><i><b>Figura 6.2.42.</b> Incidencias abiertas en SonarQube en la etapa F1: Panel de administración y canje de cupones. <b>Fuente</b>: Elaboración propia</i></p>
</div>

#### Etapa F2. Estado final del frontend

**Qué se implementó o corrigió.** Se agrega la página pública de Términos y Condiciones (`/terms`), enlazada desde el registro, y se apunta el entorno de producción al backend desplegado en Render. Las pruebas de sistema con Selenium se agregaron y se retiraron sin efecto neto sobre el código.

**Código analizado.** Commit `960947d` (9 de octubre de 2026), estado actual de la rama `main`.

**Hallazgos.** Sin incidencias nuevas ni cerradas: quedan 11 abiertas (9 `typescript:S9383`, 1 `typescript:S7723` y 1 `typescript:S8786`).

**Quality Gate.** **Passed.**

| Líneas de código | Cobertura | Seguridad | Fiabilidad | Mantenibilidad | Duplicación |
|------------------|-----------|-----------|------------|----------------|-------------|
| 13147 | 0.4 % | 0 | 11 | 1 | 0.0 % |

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/frontend/paso-F2-summary.png" alt="Resumen de SonarQube en la etapa F2" width="760"/>
  <p><i><b>Figura 6.2.43.</b> Resumen (Summary, código completo) de SonarQube en la etapa F2: Estado final del frontend. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/frontend/paso-F2-issues.png" alt="Incidencias de SonarQube en la etapa F2" width="760"/>
  <p><i><b>Figura 6.2.44.</b> Incidencias abiertas en SonarQube en la etapa F2: Estado final del frontend. <b>Fuente</b>: Elaboración propia</i></p>
</div>

**Frontend: hallazgos abiertos y deuda técnica**

| Regla | Cantidad | Descripción | Situación |
|-------|----------|-------------|-----------|
| `typescript:S9383` | 9 | Las promesas no deben quedar sin manejar | **Corregido** el 8 de noviembre |
| `typescript:S7723` | 1 | Los constructores nativos deben llamarse de forma consistente con o sin `new` | **Corregido** |
| `typescript:S8786` | 1 | Las expresiones regulares no deben provocar retroceso no lineal | **Corregido** |

La **cobertura de pruebas del frontend es de 0.4 %**: solo existe la prueba de arranque del componente raíz. Es la principal limitación de calidad del frontend y la prioridad de mejora.

**Corrección de la deuda técnica sobre los proyectos reales**

El 8 de noviembre de 2026 se corrigieron los hallazgos abiertos de las dos secciones anteriores, esta vez sobre los proyectos reales de SonarQube y no sobre los de las etapas: `safestep-backend`, que es el que alimenta el pipeline de Jenkins, y `safestep-frontend`, creado para analizar el código actual de `main`. A ambos se les asignó el perfil *Sonar way extended* (337 reglas en Java y 251 en TypeScript y JavaScript), que reemplazó al perfil por defecto (*Sonar way core*). Con el perfil por defecto el backend no tenía ninguna incidencia de mantenibilidad; con *extended* aparecen las 86 que se enumeraron arriba. Cada tanda es un commit, con las pruebas completas y Checkstyle en cero antes de analizar.

*Backend*

| Tanda | Commit | Corrección | Mantenibilidad abierta |
|:-----:|--------|------------|:----------------------:|
| Inicio | `1103ccf` | Perfil *Sonar way extended* aplicado al proyecto real | 86 |
| 1 | `7daa9dd` | `java:S1452` (65): los métodos de la capa REST devuelven `ResponseEntity<Object>` en lugar de un tipo con comodín | 21 |
| 2 | `f105e82` | `java:S1192` (16): textos repetidos pasan a constantes; `java:S1186` (2): comentario que explica el constructor vacío de JPA y el método de apoyo de una prueba; `java:S2696` (1): la escritura del campo estático de Stripe pasa a un método estático | 2 |
| 3 | `d6afc1a` | `java:S3776` (2): la creación de pedidos y la carga inicial de datos de `commerce` se dividen en métodos más pequeños | 0 |

En las cuatro mediciones las 242 pruebas pasaron sin fallos, la cobertura se mantuvo en 91.5 % o 91.6 %, el Quality Gate quedó en *Passed* y la única incidencia de seguridad es la protección CSRF deshabilitada a propósito (7.1.2). La corrección de `java:S1452` es mecánica: el mismo método devuelve el recurso en caso de éxito o un objeto de error, por lo que `Object` es el tipo común más preciso sin rediseñar la API, y las pruebas de contrato del documento OpenAPI siguen aprobadas.

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/correccion/backend-0-inicio-summary.png" alt="SonarQube del backend con el perfil extended: 86 incidencias" width="760"/>
  <p><i><b>Figura 6.2.45.</b> Resumen de <code>safestep-backend</code> con el perfil <i>Sonar way extended</i> antes de corregir: 86 incidencias de mantenibilidad. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/correccion/backend-1-s1452-summary.png" alt="SonarQube del backend tras la tanda 1" width="760"/>
  <p><i><b>Figura 6.2.46.</b> Resumen tras la tanda 1 (<code>java:S1452</code>): 21 incidencias de mantenibilidad. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/correccion/backend-2-s1192-summary.png" alt="SonarQube del backend tras la tanda 2" width="760"/>
  <p><i><b>Figura 6.2.47.</b> Resumen tras la tanda 2 (<code>java:S1192</code>, <code>java:S1186</code> y <code>java:S2696</code>): 2 incidencias de mantenibilidad. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/correccion/backend-3-s3776-summary.png" alt="SonarQube del backend tras la tanda 3" width="760"/>
  <p><i><b>Figura 6.2.48.</b> Resumen tras la tanda 3 (<code>java:S3776</code>): 0 incidencias de mantenibilidad. <b>Fuente</b>: Elaboración propia</i></p>
</div>

*Frontend*

| Tanda | Commits | Corrección | Fiabilidad | Mantenibilidad | Cobertura |
|:-----:|---------|------------|:----------:|:--------------:|:---------:|
| Inicio | `960947d` | Perfil *Sonar way extended* aplicado al nuevo proyecto `safestep-frontend` | 11 | 1 | 0.4 % |
| 1 | `f68acea`, `deeba5c` | `typescript:S9383` (9): las navegaciones cuya promesa se ignora se marcan con `void`; `typescript:S7723` (1): `new Array(...)`; `typescript:S8786` (1): el formato de precios deja de usar una expresión regular con retroceso | 0 | 0 | 0.7 % |

Para la regla `typescript:S8786` se reescribió `formatPrice` sin esa expresión regular, se comparó su resultado con el de la versión anterior sobre 50,018 valores (incluidos negativos, `NaN`, infinito y números en notación exponencial) sin ninguna diferencia, y se añadieron 4 pruebas unitarias (el frontend pasó de 2 a 6 pruebas). La cobertura sigue siendo baja (0.7 %): es la limitación principal de calidad del frontend y se aborda con nuevas pruebas, no con correcciones puntuales.

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/correccion/frontend-0-inicio-summary.png" alt="SonarQube del frontend con el perfil extended antes de corregir" width="760"/>
  <p><i><b>Figura 6.2.49.</b> Resumen de <code>safestep-frontend</code> con el perfil <i>Sonar way extended</i> antes de corregir: 11 incidencias de fiabilidad y 1 de mantenibilidad. <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/correccion/frontend-0-inicio-issues.png" alt="Incidencias del frontend antes de corregir" width="760"/>
  <p><i><b>Figura 6.2.50.</b> Incidencias abiertas del frontend antes de corregir (<code>typescript:S9383</code>, <code>typescript:S7723</code> y <code>typescript:S8786</code>). <b>Fuente</b>: Elaboración propia</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-6/sonarqube/correccion/frontend-1-correcciones-summary.png" alt="SonarQube del frontend tras las correcciones" width="760"/>
  <p><i><b>Figura 6.2.51.</b> Resumen del frontend tras las correcciones: 0 incidencias abiertas y 0.7 % de cobertura. <b>Fuente</b>: Elaboración propia</i></p>
</div>

**Conclusiones**

- En el backend, la cobertura pasó de 43.2 % a 91.7 % entre la base y el estado final gracias a las pruebas unitarias por contexto (etapas 03 a 05) y a las pruebas BDD (etapa 06); las pruebas de las etapas 03 a 06 no introducen incidencias, salvo un método vacío en una prueba.
- Las vulnerabilidades pasaron de 2 a 1 (CORS corregido en la etapa 07) y los bugs de 3 a 0 (etapa 08). La incidencia de seguridad que permanece (`java:S4502`) es una decisión de diseño documentada.
- El Quality Gate cumplió su función: detuvo el código nuevo sin pruebas (etapa 01 y F1) y el código nuevo con una incidencia (etapas 05 y 09), y aprobó las etapas siguientes una vez corregido.
- Las 86 incidencias de mantenibilidad del backend y las 11 incidencias del frontend se corrigieron el 8 de noviembre con el perfil *Sonar way extended*, en cuatro mediciones con las 242 pruebas del backend en verde. Del backend solo permanece la incidencia de seguridad que es una decisión de diseño.
- Una medición posterior, hecha el 9 de noviembre con el backend que ya aplica la política de recompensas en el servidor (ejecución #7), confirmó que el estado se mantiene: 260 pruebas aprobadas, 91.6 % de cobertura según SonarQube, 0 *code smells*, 0 bugs, la misma incidencia de seguridad documentada y Quality Gate aprobado (7.1.2).
- Queda como limitación del frontend su cobertura de pruebas (0.7 %).

## 6.2.2. Reviews

Una revisión es una verificación estática del trabajo por una persona distinta de quien lo produjo o, cuando eso no es posible, por una lectura estructurada con criterios fijos. Esta sección declara qué revisiones existen hoy en SafeStep, qué evidencia hay de ellas y qué hallazgos produjo la única revisión técnica documentada.

### 6.2.2.1. Mecanismos de revisión del proyecto

| Mecanismo | Qué revisa | Evidencia |
| --- | --- | --- |
| Compuertas automáticas (Checkstyle, Quality Gate de SonarQube, pruebas en Jenkins) | Estilo, calidad y comportamiento de cada cambio que llega a la rama principal | Resultados en 6.1, 6.2.1 y 7.1 |
| Integración por GitFlow (feature → `develop` → `main`) | Que solo llegue a `main` lo que ya integró `develop` | Commits de integración: 13 en el backend, 5 en el frontend y 6 en el informe |
| Pull requests | Lectura del cambio por otra persona antes de integrarlo | Solo el repositorio del informe tiene 3 pull requests (17 de septiembre de 2026), todos sin revisiones registradas. Los repositorios del backend, el frontend y la aplicación Android no tienen ninguno |

**Limitación declarada.** La convención de 5.1.2 indica que cada rama de característica se integra mediante un pull request con revisión. En los repositorios de producto eso no se aplicó: los cambios se integraron con fusiones directas entre ramas, por lo que no hay revisiones por pares registradas en GitHub. Las compuertas automáticas sustituyen parte de la revisión (estilo, calidad y regresiones), pero no la lectura de la lógica de negocio por otra persona. La acción correctiva está en 6.2.2.3.

### 6.2.2.2. Revisión técnica del cambio de reglas de recompensa

**Alcance.** Los commits `c79a1be` y `b6707df` del backend (9 de noviembre de 2026): `RewardPolicy`, el manejador `SimulationAttemptCompletedIntegrationEventHandler`, el ensamblador de transacciones de monedas y la reparación de los datos semilla. Son 13 archivos, con 333 líneas agregadas y 57 eliminadas.

**Tipo de revisión.** Lectura estructurada del cambio con la lista de criterios de la tabla siguiente. La hizo quien escribió el cambio con apoyo de una herramienta de inteligencia artificial; **no es una revisión por pares** y se registra como tal.

| Criterio | Resultado |
| --- | --- |
| La regla coincide con lo documentado en 8.1.1 (umbral de 70 % y mitad por cada repetición aprobada) | Cumple; `RewardPolicyTest` cubre los límites (69 %, 70 % y 100 %) y las repeticiones |
| Los intentos no aprobados no pagan monedas pero sí experiencia | Cumple; verificado en el manejador y en el BDD `simulation-rewards.feature` |
| El resultado que ve la persona usuaria coincide con lo que se acreditó | Cumple; la bandera de éxito de la transacción se deriva de la exactitud con la misma política |
| Los datos históricos siguen siendo coherentes | Con reserva (hallazgo 3) |
| Nombres, comentarios y pruebas siguen las convenciones de 6.2.1.1 | Cumple; Checkstyle sin observaciones y 259 pruebas aprobadas |

| N.º | Hallazgo | Severidad | Disposición |
| --- | --- | --- | --- |
| 1 | El número de intentos aprobados previos se cuenta leyendo todas las transacciones de monedas de la persona; con muchos intentos la consulta crece sin límite | Baja | Aceptado: el volumen por jugador es pequeño. Mejora futura: una consulta de conteo en el repositorio |
| 2 | Dos intentos que terminan casi al mismo tiempo podrían leer el mismo conteo y pagar ambos la recompensa completa | Media | Aceptado como riesgo conocido: el cliente envía un intento a la vez y el efecto es una recompensa extra puntual. Mitigación futura: bloqueo por jugador o restricción única por intento |
| 3 | Las transacciones creadas antes de la regla se cuentan según su exactitud, sin multiplicador histórico | Baja | Aceptado: la base de producción es de demostración y se reinicia con los datos semilla |
| 4 | Los datos semilla tenían tildes dañadas por una codificación incorrecta | Media | Corregido en `b6707df` y protegido con `SeedDataEncodingTest`, que falla si reaparecen esos caracteres |

### 6.2.2.3. Plan de mejora

- Integrar todo cambio de los repositorios de producto con pull request y al menos una aprobación de otro integrante, con la protección de ramas de GitHub activada en `main` y `develop`.
- Dejar el resultado de cada revisión en el propio pull request, para que quede evidencia verificable y no solo lo declarado en el informe.
- Repetir la revisión técnica de esta sección sobre los cambios del capítulo 8 cuando se construya el seguimiento de eventos.
