<br>
<br>

<div align="center">
  <img src="../../assets/images/chapter-4/capitulo-4.png" alt="Capítulo IV" />
</div>

<br>
<br>

# 4.1. Style Guidelines

Esta guía reúne decisiones de marca, tipografía, color, espaciado e interacción para la landing page, la aplicación web y la futura experiencia móvil de SafeStep. La base visual se vincula con la necesidad de comprensión y práctica identificada en los tres segmentos de 1.3 y con las historias de la landing (US47–US56) y de la aplicación (US01–US46). **Las reglas para iOS y Android son propuestas de diseño; el proyecto revisado aún no contiene aplicaciones nativas.**

El logotipo e imágenes de la landing están en `safeStept-landing-page/assets/`; la aplicación web guarda recursos en `safeStept-frontend/public/assets/` y sus variables visuales en `safeStept-frontend/src/styles.css`. La landing mantiene variables equivalentes en `safeStept-landing-page/styles.css`. **Todavía no existe un repositorio único de tokens y assets compartidos**: antes de producir nuevos prototipos, el equipo debe acordar una fuente maestra con nombre, valor, propósito, variante y responsable de cada token, y versionar allí logotipo, iconos y recursos con sus licencias. Esta guía es la referencia documental, no sustituye esa sincronización técnica.

## 4.1.1. General Style Guidelines

### 4.1.1.1. Branding y lenguaje

**SafeStep** une seguridad y aprendizaje progresivo. El logotipo actual combina un símbolo asociado a primeros auxilios con el nombre de la marca. Se conservará en proporciones y variantes aprobadas por el equipo, evitando deformaciones o cambios de color que reduzcan su reconocimiento.

<div align="center">
  <p><b>Gráfico 1.</b> Logotipo actual de SafeStep</p>
  <img src="../../assets/images/chapter-4/safestep-logo.png" alt="Logotipo de SafeStep" />
  <p><i>Fuente: recurso existente del proyecto.</i></p>
</div>

El lema de trabajo es «Aprende a salvar vidas, un paso a la vez». Como promesa de comunicación, debe acompañarse de un límite explícito: **la plataforma apoya el aprendizaje y no reemplaza la atención de emergencias ni la práctica supervisada**. No se afirmará que el contenido esté validado por profesionales de salud, que las simulaciones acrediten competencias o que una insignia sea certificación profesional hasta contar con evidencia verificable.

| Dimensión del tono | Decisión | Aplicación y sustento |
|---|---|---|
| Serio / divertido | Serio en instrucciones; ligero solo en motivación | Una emergencia requiere indicaciones claras; los elementos lúdicos no deben trivializarla. |
| Formal / casual | Cercano y respetuoso | Los segmentos incluyen principiantes; se explican términos técnicos antes de usarlos. |
| Respetuoso / irreverente | Respetuoso | No se usan bromas sobre lesiones, víctimas o errores. |
| Entusiasta / sereno | Sereno en decisiones; alentador en progreso | El feedback reconoce avances sin prometer capacidad clínica no medida. |

Microcopy recomendado: verbos concretos como «Practicar», «Revisar respuesta» y «Continuar». Los mensajes de error explican qué ocurrió y qué puede hacer la persona; las respuestas médicas deben citar una fuente y fecha de revisión cuando se publiquen. Se evitarán frases absolutas como «ya puedes actuar correctamente» o «certificado oficial» sin respaldo.

### 4.1.1.2. Typography

El código actual carga **Poppins** para títulos e **Inter** para texto de interfaz tanto en la landing como en el frontend. Se conservan por la diferenciación entre jerarquía visual y lectura prolongada; deben ofrecerse fuentes de reserva del sistema si la carga externa falla.

<div align="center">
  <p><b>Gráfico 2.</b> Referencia tipográfica existente</p>
  <img src="../../assets/images/chapter-4/poppins.png" alt="Muestra de tipografía Poppins" width="300" />
  <p><i>Fuente: recurso existente del proyecto.</i></p>
</div>

| Uso | Familia y peso de referencia | Tamaño web inicial | Regla |
|---|---|---:|---|
| Título principal | Poppins 700 | 32–48 px según espacio | Un H1 semántico por vista; no reducir el texto hasta hacerlo ilegible. |
| Sección | Poppins 600 | 24–32 px | Orden H2/H3 coherente con la estructura. |
| Texto principal | Inter 400 | 16 px | Interlineado aproximado de 1,5. |
| Texto secundario | Inter 400/500 | 14 px | No usarlo para instrucciones críticas extensas. |
| Controles | Inter o Poppins 600 | 14–16 px | Nombre visible y accesible consistente. |

En web se emplearán unidades relativas o `clamp()` cuando corresponda. En móvil nativo, el tamaño de texto respetará los ajustes de accesibilidad del sistema; la equivalencia visual no requiere fijar el mismo número de píxeles en todas las plataformas.

### 4.1.1.3. Colors

Los colores base proceden de las hojas de estilo actuales. El azul comunica acción y orientación, el verde indica éxito, el naranja precaución y el rojo error o riesgo. **El color nunca será el único indicador del estado**: se añadirá texto, icono o forma.

| Token de diseño | Valor | Uso previsto | Estado |
|---|---|---|---|
| Azul de marca | `#0ea5e9` | Acentos, ilustración y fondos sin texto blanco pequeño | Existente en landing y web. |
| Azul de acción accesible | `#0369a1` | Fondo de botón con texto blanco o enlace sobre blanco | Propuesto para unificar; ya existe como variable en la landing. |
| Azul profundo | `#0c4a6e` | Encabezados y superficies oscuras | Existente en la landing. |
| Verde de marca | `#22c55e` | Estado de éxito acompañado de etiqueta | Existente; no usar con texto blanco pequeño sin revisión. |
| Naranja / rojo | `#f97316` / `#ef4444` | Aviso / error acompañados de mensaje | Existentes; revisar contraste según combinación. |
| Texto / fondo | `#111827` / `#ffffff` | Lectura principal | Existentes. |

El contraste calculado de **blanco sobre `#0ea5e9` es 2,77:1**, insuficiente para el objetivo de 4,5:1 en texto normal. Blanco sobre `#0369a1` alcanza aproximadamente **5,93:1**. Por ello, **no se declara conformidad WCAG AA de la implementación actual**: se debe cambiar la combinación de botones/enlaces afectados y auditar todas las variantes, tamaños y estados. El objetivo se basa en [WCAG 2.2, criterio de contraste mínimo](https://www.w3.org/TR/WCAG22/#contrast-minimum); los valores anteriores son cálculos para colores sólidos, no una auditoría del gradiente completo.

### 4.1.1.4. Spacing y recursos compartidos

La escala propuesta parte de 4 px: **4, 8, 12, 16, 24, 32, 48 y 64 px**. Se usará para separación entre controles, tarjetas y secciones; no se reducirá de manera mecánica a la mitad en móvil si eso compromete el espacio táctil. El ancho máximo y la retícula de cada vista se comprobarán sobre los diseños reales, evitando imponer 12 columnas a pantallas estrechas.

Para cada nuevo recurso se registrarán formato, versión, origen, licencia, texto alternativo y uso previsto. La biblioteca compartida debe contener variantes de logotipo, iconos, fotografías aprobadas, fuentes o enlaces de distribución, y tokens de color, tipografía y espaciado. Mientras siga dividida entre repositorios, cualquier cambio visual deberá revisarse en landing y frontend para evitar divergencias.

### 4.1.1.5. Referencia de diseño y trazabilidad

La aplicación web usa **Angular Material y CSS propio**; la landing usa HTML/CSS/JavaScript y variables CSS. La versión heredada **no implementa Tailwind**. El statement del curso exige una futura adecuación de la experiencia web a Vue/PrimeVue; la guía visual puede reutilizarse, pero no debe presentarse esa migración como terminada. Cada componente nuevo se relacionará con la historia de usuario que atiende, el token que utiliza y sus estados accesibles.

## 4.1.2. Web Style Guidelines

Las reglas web cubren la landing y la aplicación autenticada. Su aplicación actual es parcial: el documento establece la decisión objetivo y señala los puntos que requieren ajuste en código.

### 4.1.2.1. Responsive Design Principles

La landing usa cortes CSS en torno a **480, 768 y 992 px**; el shell de la aplicación cambia a modo compacto en **1024 px**. No son todavía un conjunto unificado. La decisión objetivo es basar cada cambio de disposición en el espacio real del contenido y probar al menos teléfono estrecho, teléfono ancho, tableta y escritorio. El contenido y las acciones esenciales deben permanecer disponibles sin desplazamiento horizontal. «Mobile-first» se tratará como criterio de próximos diseños, no como afirmación comprobada sobre todo el CSS heredado.

### 4.1.2.2. Componentes y estados

Cada botón, enlace, campo, tarjeta interactiva y elemento de navegación tendrá estados **predeterminado, hover cuando aplique, focus visible, pressed, disabled, carga y error/éxito**. La etiqueta y el feedback deberán indicar el resultado de la acción. El foco no dependerá solo del color y no desaparecerá para navegación por teclado.

<div align="center">
  <p><b>Gráfico 3.</b> Especificación visual propuesta de estados web</p>
  <img src="../../assets/images/chapter-4/style-guidelines-web-states.svg" alt="Ejemplos de botón predeterminado, hover, foco, deshabilitado y campo con error" />
  <p><i>Fuente: elaboración propia. Es una guía de diseño, no una captura de la aplicación implementada.</i></p>
</div>

Los formularios asociarán cada campo con su etiqueta, indicación de obligatoriedad y mensaje de error junto al control. Las acciones destructivas requerirán confirmación cuando su efecto sea difícil de revertir. En web se propone un objetivo táctil de **al menos 44 × 44 px** para controles principales, sujeto a revisión contextual y accesibilidad.

### 4.1.2.3. Navegación, accesibilidad y movimiento

La landing dispone de navegación por anclas y acceso a la aplicación; la aplicación utiliza un shell con barra superior y menú lateral que pasa a modo compacto. La ubicación actual y el retorno se señalarán de forma consistente; no se prometerán breadcrumbs ni enlaces legales funcionales donde aún no existan. Los patrones concretos se describen en 4.2.5.

La meta web es cumplir **WCAG 2.2 nivel AA**: navegación por teclado, orden de foco, nombres accesibles, alternativas textuales, contraste y estados perceptibles. Esta es una meta de verificación, no una certificación de conformidad actual. Las transiciones cortas pueden orientar, pero el contenido no dependerá del movimiento y se respetará `prefers-reduced-motion`. Un *pull-to-refresh* nativo no se incluye como regla general de web.

## 4.1.3. Mobile Style Guidelines

Estas guías definen una **propuesta To-Be** para aplicaciones nativas. No describen pantallas ya desarrolladas. Se conservan marca, lenguaje, colores con contraste comprobado y estructura de contenido, pero controles, medidas y navegación se adaptarán a cada plataforma. La arquitectura de información móvil de 4.2 es igualmente propuesta.

| Elemento compartido | Decisión para las dos plataformas |
|---|---|
| Inicio de práctica | Acceso a simulaciones, progreso y ayuda sin ocultar información crítica tras gamificación o tienda. |
| Contenido de emergencia | Instrucciones breves, fuente visible, fecha de revisión y aviso de que la app no sustituye atención profesional. |
| Feedback | Explicar decisión, consecuencia y siguiente paso sin atribuir competencia clínica por una puntuación. |
| Adaptación | Texto escalable, orientación y tamaños diversos, controles con nombres accesibles, movimiento reducible. |

<div align="center">
  <p><b>Gráfico 4.</b> Patrones móviles propuestos por plataforma</p>
  <img src="../../assets/images/chapter-4/style-guidelines-mobile-platforms.svg" alt="Esquema comparativo de navegación móvil propuesta para iOS y Android" />
  <p><i>Fuente: elaboración propia basada en las guías oficiales de Apple y Android. No representa una app implementada.</i></p>
</div>

### 4.1.3.1. iOS Mobile Style Guidelines

- Respetar las **safe areas** para que texto y controles no queden bajo la cámara, barra del sistema o indicadores de gesto; adaptar pantallas compactas y ampliadas.
- Usar una barra de pestañas solo para destinos principales estables. En vistas de detalle, conservar una forma reconocible de volver; no depender únicamente de gestos ocultos.
- Integrar **Dynamic Type** y verificar que el contenido siga comprensible con texto ampliado. El área de interacción propuesta para controles es al menos **44 × 44 pt**.
- Ofrecer etiquetas útiles para VoiceOver y no basar la comprensión del resultado exclusivamente en color, vibración o animación.

Referencias: [Apple Human Interface Guidelines: Layout](https://developer.apple.com/design/human-interface-guidelines/layout), [Accessibility](https://developer.apple.com/design/human-interface-guidelines/accessibility) y [Tab bars](https://developer.apple.com/design/human-interface-guidelines/tab-bars).

### 4.1.3.2. Android Mobile Style Guidelines

- Respetar barras del sistema, recortes, teclado y **WindowInsets**; si se usa contenido edge-to-edge, mantener acciones fuera de las zonas de gestos.
- Usar navegación principal adaptable: barra para un conjunto pequeño de destinos y, en pantallas amplias, evaluar rail o drawer. El comportamiento de **Back** debe volver de manera predecible desde detalles y flujos.
- Permitir escalado de fuentes y lectura por TalkBack. El área táctil propuesta para controles es al menos **48 × 48 dp**, incluso si el icono visible es menor.
- Usar componentes y patrones Material como referencia Android, manteniendo la identidad de SafeStep sin copiar una pantalla iOS.

Referencias: [Android: System bars](https://developer.android.com/design/ui/mobile/guides/foundations/system-bars), [Accessibility](https://developer.android.com/design/ui/mobile/guides/foundations/accessibility) y [Layouts and navigation patterns](https://developer.android.com/design/ui/mobile/guides/layout-and-content/layout-and-nav-patterns).
