<br>
<br>

<div align="center">
  <img src="../../assets/images/chapter-4/capitulo-4.png" alt="Capítulo IV" />
</div>

<br>
<br>

# 4.2. Information Architecture

La arquitectura de información organiza el contenido para que visitantes y usuarios encuentren una forma de conocer SafeStep, practicar y revisar su progreso. Se basa en los segmentos de 1.3, en la necesidad de fuentes y práctica descrita en 2.2–2.3 y en las historias de la landing (US47–US56) y de la aplicación (US01–US46). La prioridad es hacer visible la práctica sin confundir una puntuación de simulación con competencia clínica.

**Alcance:** se distinguen la landing HTML/CSS/JavaScript y la aplicación web autenticada actual. Las decisiones de aplicación nativa son **propuestas To-Be**, porque no hay una app iOS o Android en los repositorios revisados. Cuando una función descrita aquí no está implementada, se etiqueta como pendiente y no se presenta como evidencia de producto terminado.

<div align="center">
  <p><b>Gráfico 1.</b> Mapa de contenidos y destinos principales</p>
  <img src="../../assets/images/chapter-4/information-architecture-map.svg" alt="Mapa de la landing, la aplicación web y la futura experiencia móvil" />
  <p><i>Fuente: elaboración propia a partir de la landing y las rutas del frontend. La rama móvil es propuesta.</i></p>
</div>

## 4.2.1. Organization Systems

### 4.2.1.1. Organización por producto y propósito

| Producto / grupo | Organización visual | Categorización y orden | Estado |
|---|---|---|---|
| Landing: inicio | Jerárquica: propuesta de valor y CTA antes del detalle; secuencial en «cómo funciona» | Por tópicos: características, cursos, gamificación, tienda, testimonios, FAQ; existe además `about.html` | Implementado en el sitio estático. |
| Web: inicio y práctica | Jerárquica: dashboard → catálogo de simulaciones → detalle → respuesta y resultado | Por tópico/tipo de emergencia; el filtro de catálogo usa `emergencyType` | Implementado en la aplicación web. |
| Web: progreso y gamificación | Jerárquica desde el menú principal; vistas de datos y logros | Cronológica cuando se revisan intentos o actividad; por tópico para estadísticas e insignias | Implementado parcialmente; revisar en cada vista las agrupaciones reales. |
| Web: tienda | Catálogo → producto/kit → carrito y flujo de compra | Por categoría y búsqueda textual; no se presupone un orden alfabético fijo | Implementado en la aplicación web. |
| Móvil nativo | Destinos principales equivalentes, con disposición adaptable a cada sistema | Mantener las mismas categorías y términos, revalidando su prioridad con cada segmento | Propuesta pendiente de diseño y desarrollo. |

La organización **matricial** se reserva como propuesta para cruces de tipo de emergencia, dificultad y estado cuando los datos y controles lo permitan. La organización **por audiencia** —estudiante, miembro de comunidad vecinal y persona con experiencia brigadista— sirve para analizar pertinencia de ejemplos y contenidos; **no se presenta como personalización o roles ya implementados**. Las listas alfabéticas podrían ayudar en un catálogo amplio, mientras las cronológicas son apropiadas para historial; ninguna se atribuye a todas las pantallas sin comprobarlo.

El informe anterior describía módulos obligatorios «teoría → video → evaluación», niveles curriculares y certificaciones como estructura vigente. Esa secuencia no se deduce de las rutas principales actuales, que se organizan alrededor de **simulaciones**. Si el equipo decide desarrollar cursos o módulos más adelante, deberá incorporarlos al backlog, al mapa de contenidos y a pruebas de navegación antes de tratarlos como parte del producto.

### 4.2.1.2. Reglas de jerarquía y secuencia

1. En la landing, la pregunta «¿qué es y para quién sirve?» se responde antes del detalle de recompensas o tienda. Los CTA llevan a acceso/registro cuando el destino existe; no se usarán enlaces vacíos como si fueran navegación terminada.
2. En la web, el dashboard ofrece acceso a las cinco áreas principales: Dashboard, Simulaciones, Progreso, Gamificación y Tienda. El perfil se alcanza mediante las acciones de usuario, no como una sexta entrada permanente del menú principal.
3. Un detalle de simulación identifica el tipo de emergencia, qué se practicará y el origen del contenido antes de iniciar. El resultado ofrece un camino claro para revisar o repetir.
4. La tienda mantiene separados el aprendizaje y la compra: una sugerencia comercial no se confundirá con una recomendación clínica.

## 4.2.2. Labeling Systems

El etiquetado utiliza nombres breves y consistentes para relacionar **etiqueta → destino → acción esperada**. La landing y la web tienen contextos distintos; no se forzará la misma etiqueta donde significaría algo diferente. Las traducciones ES/EN de la aplicación deben conservar la misma asociación.

### 4.2.2.1. Inventario de etiquetas principales

| Contexto | Etiqueta visible o de referencia | Asociación prevista | Estado |
|---|---|---|---|
| Landing | Características | Beneficios y capacidades de SafeStep | Enlace a sección `#features`. |
| Landing | Cursos | Presentación de temas; no equivale a un currículo web ya implementado | Enlace a `#courses`; revisar CTA de cada tarjeta. |
| Landing | Gamificación / Tienda | Explicación de incentivos / productos | Enlaces a `#gamification` y `#store`. |
| Landing | Acerca de | Equipo y proyecto Chronos | `about.html`. |
| Landing | Comenzar Gratis | Acceso a la aplicación | Destino externo actual; validar disponibilidad y promesa de gratuidad. |
| Web | Dashboard | Vista de inicio autenticada | `/app/dashboard`. |
| Web | Simulaciones | Catálogo y práctica | `/app/simulations`. |
| Web | Progreso | Estadísticas personales | `/app/statistics`. |
| Web | Gamificación | Misiones, insignias y recompensas | `/app/gamification`. |
| Web | Tienda | Catálogo y compra | `/app/store`. |
| Web | Perfil | Información y opciones personales | Acceso desde shell a `/app/profile`. |
| Móvil nativo | Inicio / Práctica / Progreso / Tienda | Destinos candidatos de primer nivel | Propuesta; validar mediante pruebas con usuarios. |

### 4.2.2.2. Reglas para contenido y acciones

- Usar una sola denominación por concepto: «Simulaciones» no cambia a «Módulos» dentro del mismo flujo; «Progreso» y «Historial» se distinguen cuando muestran información diferente.
- Las acciones se nombran por resultado: «Practicar», «Continuar», «Ver resultado», «Agregar al carrito». «Certificado» solo se utilizará si existe una credencial con alcance, emisor y validez comprobables; las recompensas internas se nombran como **insignias** o **logros**.
- El texto breve de un botón no sustituye el contexto accesible. Un icono aislado tendrá nombre legible para tecnologías de asistencia.
- Cada etiqueta de navegación debe conservar el destino esperado en español e inglés. El equipo revisará traducciones con la nomenclatura del backlog, las rutas y las pantallas, sin usar literalmente claves internas como `nav.dashboard`.

## 4.2.3. SEO Tags and Meta Tags

El statement solicita valores de **Title, Description, Keywords y Author** para páginas principales de landing y aplicación. La tabla siguiente es una **especificación objetivo**, no una afirmación de que todos los metadatos estén ya publicados. Las páginas privadas de la aplicación no necesitan posicionarse en buscadores y se proponen con `noindex`.

| Página / ruta | Title propuesto | Description propuesta | Keywords propuestas | Author | Indexación |
|---|---|---|---|---|---|
| Landing `index.html` | SafeStep \| Practica decisiones de primeros auxilios | Conoce SafeStep y sus simulaciones educativas para repasar decisiones iniciales ante emergencias. | primeros auxilios, simulaciones, aprendizaje | Equipo Chronos | Pública. |
| Landing `about.html` | Acerca de Chronos \| SafeStep | Conoce al equipo, el propósito y los límites de la plataforma educativa SafeStep. | Chronos, SafeStep, equipo | Equipo Chronos | Pública. |
| Acceso `/auth` | Acceso \| SafeStep | Ingresa a tu espacio de práctica de SafeStep. | SafeStep, acceso | Equipo Chronos | `noindex`. |
| `/app/dashboard` | Inicio \| SafeStep | Consulta accesos a práctica y progreso personal. | SafeStep, inicio | Equipo Chronos | `noindex`. |
| `/app/simulations` y detalle | Simulaciones \| SafeStep / [Nombre] \| SafeStep | Explora simulaciones educativas o revisa el objetivo de una práctica. | simulaciones, primeros auxilios | Equipo Chronos | `noindex` en el producto autenticado. |
| `/app/statistics` | Progreso \| SafeStep | Revisa estadísticas de las prácticas realizadas. | SafeStep, progreso | Equipo Chronos | `noindex`. |
| `/app/gamification` | Gamificación \| SafeStep | Consulta misiones, insignias y recompensas internas. | SafeStep, gamificación | Equipo Chronos | `noindex`. |
| `/app/store` y detalle | Tienda \| SafeStep / [Producto] \| SafeStep | Explora productos o consulta sus características antes de comprar. | SafeStep, tienda | Equipo Chronos | `noindex` mientras requiera autenticación. |

**Diferencia con el código actual:** `index.html` de la landing tiene Title, Description y Keywords, pero no Author; `about.html` tiene Title y Description, pero no Keywords ni Author. La aplicación define títulos de rutas, pero su HTML base no declara las cuatro metatags. Deben implementarse y verificarse en el HTML servido; una tabla del informe por sí sola no configura SEO.

Se retiraron de la propuesta las afirmaciones «50 000+ usuarios», cobertura de envíos, certificación o acreditación y dominios/redes sociales no verificados. La landing actual todavía contiene algunas de esas frases, por lo que **también requieren corrección en código antes de publicarse como hechos**. Los valores Open Graph, Twitter Card, URL canónica y datos estructurados se añadirán solo con URL absoluta, imagen pública y hechos comprobados. No se marcarán como `Course` páginas de cursos que no existan ni se expondrán datos privados mediante metadatos.

## 4.2.4. Searching Systems

La búsqueda debe responder «qué puedo encontrar aquí» y mostrar un estado claro cuando no haya resultados. La tabla diferencia los controles presentes de los propuestos; evita atribuir búsqueda global, voz o tolerancia a errores a la versión actual.

| Superficie | Entrada y filtros | Presentación de resultados | Estado |
|---|---|---|---|
| Landing | Navegación por secciones, sin búsqueda interna | Desplazamiento al ancla; sección visible | Implementado. |
| Catálogo de simulaciones | Filtro por **tipo de emergencia** (`emergencyType`) | Tarjetas de simulación y estado vacío si no hay coincidencias | Implementado. Búsqueda textual, dificultad, duración y fecha: pendientes. |
| Tienda | Texto por nombre/categoría/etiquetas y filtro de categoría; los kits usan nombre/descripción/nivel | Productos y kits filtrados en sus vistas | Implementado. Rango de precio, valoración, stock, ordenamiento avanzado y sugerencias: pendientes. |
| Progreso e historial | Consulta de datos propios mediante vistas existentes | Estadísticas/historial según la vista | Búsqueda y filtros por fecha o resultado: pendientes. |
| Búsqueda global o por voz | Unificar contenidos o entrada de voz | Resultados agrupados por tipo | Idea futura; no implementada ni comprometida en esta versión. |

En nuevas búsquedas se debe especificar campo consultado, combinación de filtros, forma de limpiar, cantidad de resultados y estados **cargando / sin coincidencias / error**. Una propuesta de filtro se convierte en requisito solo cuando tiene historia, criterio de aceptación y prueba correspondientes.

## 4.2.5. Navigation Systems

### 4.2.5.1. Landing Page

La navegación principal lleva a Características, Cursos, Gamificación, Tienda y Acerca de; el CTA abre el acceso a la aplicación. Las anclas guían la lectura de la propuesta de valor hacia el detalle y la acción. En el footer hay enlaces con `href="#"` —incluidos algunos sociales, legales y de contacto—: **son marcadores sin destino funcional**, no navegación completada. Se deben sustituir por páginas reales o retirarlos antes de afirmar que la información legal y de contacto es accesible.

### 4.2.5.2. Aplicación web

El shell dispone de los destinos Dashboard, Simulaciones, Progreso, Gamificación y Tienda; bajo 1024 px utiliza navegación compacta. El logo retorna al dashboard. Algunas vistas de tienda y detalle de simulación incluyen breadcrumbs; no se afirma que todas las vistas los tengan. Los estados activos y el retroceso deben verificarse por ruta, incluidos los flujos de compra y administración.

| Origen | Destino o secuencia | Señal de orientación |
|---|---|---|
| Landing | Sección temática → CTA → acceso | Etiqueta de sección y destino explícito del CTA. |
| Dashboard | Simulaciones → detalle → práctica → resultado | Título del caso, avance y salida/revisión claras. |
| Dashboard | Tienda → producto → carrito → pago | Paso actual y posibilidad de regresar sin perder información pertinente. |
| Dashboard | Progreso / Gamificación | Navegación principal con estado activo. |

### 4.2.5.3. Experiencia móvil propuesta

Para iOS y Android se conservarán las categorías de contenido, pero la navegación se decidirá mediante pruebas de tareas con los tres segmentos. Se propone acceso visible a inicio, práctica y progreso, con tienda como destino diferenciado; una barra inferior se evaluará solo para destinos principales y el resto podrá ir a menú o perfil. El retorno respetará el comportamiento de cada sistema. **No hay evidencia de barra inferior o gestos nativos implementados actualmente.**

### 4.2.5.4. Accesibilidad y validación de navegación

El flujo debe admitir teclado en web, foco visible, nombres comprensibles para lectores de pantalla y retorno predecible. En móvil se adaptará a VoiceOver o TalkBack. Antes de cerrar esta arquitectura, el equipo debe probar con participantes tareas concretas: encontrar una práctica, interpretar su resultado, volver al catálogo y localizar una compra. Se registrarán errores de navegación, etiquetas ambiguas y rutas sin salida, y se actualizarán el mapa, las historias y las pantallas de diseño con esos hallazgos.
