# 5.2. Product Implementation & Deployment

SafeStep parte de una aplicación existente. Esta sección separa **línea base heredada**, **implementación comprobada en el repositorio actual** y **entregables pendientes del nuevo curso**. Una captura antigua, una URL del curso anterior o una funcionalidad descrita en un README no demuestran por sí mismas que la versión actual esté desplegada. Las pruebas detalladas pertenecen al capítulo VI; aquí se registra su vínculo con productos y sprints.

| Estado de evidencia | Significado utilizado en esta sección |
|---|---|
| Implementado en código | Se localizó el archivo, ruta o componente en los repositorios actuales. |
| Probado localmente | Existe un resultado de compilación/prueba ejecutado sobre el código actual. |
| Desplegado/verificado | Se comprobó una URL pública y se registró fecha, versión y captura. |
| Pendiente | Falta artefacto, revisión, ejecución o evidencia; no se presenta como terminado. |

## 5.2.1. Sprint Backlogs

### Línea base As-Is del curso anterior

El informe elaborado en el curso anterior documenta cuatro sprints del proyecto previo. Sus números y resultados son **afirmaciones históricas de ese informe** y no se contabilizan como trabajo ni velocidad del equipo del curso actual.

| Sprint antiguo | Alcance declarado en el informe anterior | Story Points declarados | Uso en el proyecto nuevo |
|---|---|---:|---|
| 1 | Landing page inicial | 21 | Identificar piezas reutilizables y deuda de i18n/accesibilidad. |
| 2 | Frontend Angular y API simulada | 43 | Revisar qué vistas siguen vigentes y cuáles usan la API real. |
| 3 | Backend real, PostgreSQL, OpenAPI e integración | 45 | Contrastar contratos y despliegues con los repositorios actuales. |
| 4 | IAM, Stripe, persistencia y validación | 34 | Revisar seguridad, pruebas y flujos de pago de prueba. |

### Sprints del curso de Diseño de Experimentos

La siguiente secuencia es un **backlog de implementación**, no una retrospectiva inventada. El equipo debe fijar fechas, responsables, puntos y velocidad en su tablero actual antes de iniciar cada sprint. Las historias se seleccionarán por ID desde el [Product Backlog del capítulo III](../chapter-3/3-4-product-backlog.md), incorporando nuevas historias Android o de corrección mediante control de versiones.

| Sprint nuevo | Goal y criterio de aceptación propuestos | Historias/tareas principales | Evidencia de cierre exigida | Estado |
|---|---|---|---|---|
| 1 — línea base y contratos | Poder compilar y probar web/API, identificar desviaciones y acordar contratos Android. | Auditoría de repositorios, secretos, OpenAPI, i18n/a11y, pruebas existentes, tablero. | Board, planning, LACX, PR, logs de pruebas, lista priorizada de defectos. | En curso; el board y la asignación son pendientes. |
| 2 — Android e integración | Un usuario puede registrarse, practicar una simulación y consultar su progreso/catálogo en Android. | App Kotlin/Compose, cliente API, pruebas unitarias/UI, manejo de errores. | APK de prueba, captura o video en dispositivo, tests y commits. | Recorrido local ejecutado en emulador; faltan board, PR, pruebas de errores y despliegue compartido. |
| 3 — estabilización y entrega | Los productos principales funcionan en los destinos publicados y su evidencia es trazable. | Correcciones, despliegues, acuerdo SaaS aprobado, seguridad, video actual. | URL verificadas, smoke tests, capturas, video, colaboración y retrospectiva. | Pendiente. |

**Plantilla obligatoria por sprint.** Registrar número y fechas; objetivo SMART; *velocity* y suma de puntos; tabla `Story ID | Título | Task ID | Descripción | Horas | Responsable | Estado`; URL pública y captura del board; tabla de commits `Repositorio | Rama | Commit | Mensaje | Fecha`; pruebas asociadas a historia; capturas y video de ejecución; endpoints OpenAPI añadidos; despliegue; LACX y retrospectiva. No inferir horas o puntos a partir de la cantidad de commits. Las tareas de seguridad y documentación que no dependan de una historia deben etiquetarse como tareas técnicas. Las estimaciones en horas de las tablas de Engineering Tasks siguientes son planificación (rango 4–8 h por tarea, según el statement), no hechos verificados; los campos de responsable y fecha exacta permanecen sin asignar hasta la planificación real en el board del equipo.

**Sprint Planning y trazabilidad.** Los trabajos técnicos que siguen se ejecutaron para preparar el producto, pero no se atribuyen retroactivamente a una reunión o Sprint formal. Antes de incorporar cada Sprint a la entrega, el equipo completará el cuadro exigido por el statement: `Date | Time | Location | Prepared By | Attendees | Sprint anterior: review | Sprint anterior: retrospective | Sprint Goal | Velocity | Sum of Story Points`. También incorporará la URL pública y una captura del board, la matriz LACX `Integrante y GitHub | Aspecto 1 L/C | Aspecto 2 L/C`, y la tabla de tareas `Story ID | Story Title | Task ID | Task Title | Description | Estimation (Hours) | Assigned To | Status`. Los campos de personas, horas, puntos y fechas permanecen sin asignar hasta la planificación real.

### Sprint 1 — línea base y contratos

*Goal propuesto:* que el equipo pueda reproducir la compilación y las pruebas de web/API, y que una cuenta común no pueda modificar catálogos. El evento de confirmación es `mvn package`, `npm run build`, pruebas automatizadas y smoke test local aprobados. La fecha de cierre, la velocidad y las historias seleccionadas deben acordarse en el board; las tareas siguientes aún no constituyen un Sprint Backlog aprobado.

<table border="1" cellpadding="6" cellspacing="0" width="100%">
  <tbody>
    <tr><th width="30%">Sprint #</th><td>Sprint 1</td></tr>
    <tr><th colspan="2" align="left">Sprint Planning Background</th></tr>
    <tr><th>Date</th><td>Pendiente de registrar</td></tr>
    <tr><th>Time</th><td>Pendiente de registrar</td></tr>
    <tr><th>Location</th><td>Pendiente de registrar</td></tr>
    <tr><th>Prepared By</th><td>Pendiente de asignación del equipo</td></tr>
    <tr><th>Attendees (to planning meeting)</th><td>Pendiente de asignación del equipo</td></tr>
    <tr><th>Sprint n-1 Review Summary</th><td>No aplica; es el primer Sprint del curso actual.</td></tr>
    <tr><th>Sprint n-1 Retrospective Summary</th><td>No aplica; es el primer Sprint del curso actual.</td></tr>
    <tr><th colspan="2" align="left">Sprint Goal & User Stories</th></tr>
    <tr><th>Sprint 1 Goal</th><td>Que el equipo pueda reproducir la compilación y las pruebas de web/API, y que una cuenta común no pueda modificar catálogos, confirmado por <code>mvn package</code>, <code>npm run build</code>, pruebas automatizadas y smoke test local aprobados.</td></tr>
    <tr><th>Sprint 1 Velocity</th><td>Pendiente de definir por el equipo; no hay velocidad histórica previa en el curso actual.</td></tr>
    <tr><th>Sum of Story Points</th><td>19 (TS15: 5, TS17: 8, TS18: 3, TS20: 3 — historias técnicas con Story ID del Product Backlog de 3.4 incluidas en este Sprint).</td></tr>
  </tbody>
</table>

| Task técnica propuesta | Resultado comprobado al 16/09/2026 | Pendiente para cierre del Sprint |
|---|---|---|
| Baseline web/API | 42 pruebas API y 2 web aprobadas; ambos productos compilan. | Vincular tests con historias y registrar commits/PR. |
| Contratos y persistencia | Smoke test local de alta, sesión, simulaciones, intento, progreso, catálogo y OpenAPI. | Publicar entorno de prueba y ejemplos de request/response por endpoint. |
| Seguridad de contenido | Mutaciones administrativas restringidas en API y rutas/controles ocultos en web para `ROLE_USER`. | Revisar permisos de administrador y ejecutar análisis estático. |
| Deuda y riesgos | Inventario de dependencias, i18n parcial, bundle sobre presupuesto y secretos históricos. | Priorizar en el board; rotar secretos en el proveedor. |

**Sprint Backlog — Engineering Tasks (Sprint 1).** Descomposición de las tareas anteriores en tareas de ingeniería estimadas en horas (planificación, no hechos verificados; ver nota de la plantilla obligatoria).

| Story ID | Story Title | Task ID | Task Title | Descripción | Estimación (h) | Assigned To | Status |
|---|---|---|---|---|---|---|---|
| TS20 | Pruebas y validación del backend con Maven | T1.1 | Ejecutar y estabilizar suite de pruebas del backend | Correr `mvn test`, revisar las 14 suites/42 pruebas y dejar el build reproducible. | 6 | Por asignar | Hecho |
| TS20 | Pruebas y validación del backend con Maven | T1.2 | Ejecutar suite de pruebas del frontend | Correr `npm test -- --watch=false` y `npm run build`, registrar el aviso de presupuesto de bundle. | 4 | Por asignar | Hecho |
| Tarea técnica | Trazabilidad de pruebas | T1.3 | Vincular tests existentes con Story ID | Anotar en el código o en el board qué historia cubre cada clase de test. | 5 | Por asignar | Pendiente |
| TS17 | RESTful API por bounded context | T1.4 | Smoke test manual de contratos | Ejecutar `scripts/smoke-api.ps1` contra alta, sesión, simulaciones, intento, progreso y catálogo. | 5 | Por asignar | Hecho |
| TS18 | Documentación OpenAPI y Swagger | T1.5 | Publicar ejemplos de request/response | Completar en Swagger un ejemplo por endpoint del alcance del Sprint. | 6 | Por asignar | Pendiente |
| TS15 | Seguridad backend con JWT y roles | T1.6 | Restringir mutaciones administrativas | Agregar `@PreAuthorize("hasAuthority('ROLE_ADMIN')")` en simulaciones, comercio y gamificación. | 7 | Por asignar | Hecho |
| TS15 | Seguridad backend con JWT y roles | T1.7 | Ocultar controles de administración en la web | Añadir `adminGuard`, campo `roles` en la respuesta de login y ocultar rutas/controles para `ROLE_USER`. | 8 | Por asignar | Hecho |
| Tarea técnica | Deuda técnica | T1.8 | Inventariar dependencias vulnerables y secretos | Revisar las 24 alertas de `npm ci` y priorizar la rotación de la credencial expuesta en el proveedor. | 4 | Por asignar | Pendiente |

### Sprint 2 — Android e integración

*Goal propuesto:* que una persona pueda iniciar sesión, realizar una práctica y consultar su progreso desde Android con datos persistidos. Un recorrido con cuenta ficticia en emulador y API/PostgreSQL locales confirmó el flujo básico; no equivale a cierre de Sprint sin planificación, pruebas negativas y revisión del equipo.

<table border="1" cellpadding="6" cellspacing="0" width="100%">
  <tbody>
    <tr><th width="30%">Sprint #</th><td>Sprint 2</td></tr>
    <tr><th colspan="2" align="left">Sprint Planning Background</th></tr>
    <tr><th>Date</th><td>Pendiente de registrar</td></tr>
    <tr><th>Time</th><td>Pendiente de registrar</td></tr>
    <tr><th>Location</th><td>Pendiente de registrar</td></tr>
    <tr><th>Prepared By</th><td>Pendiente de asignación del equipo</td></tr>
    <tr><th>Attendees (to planning meeting)</th><td>Pendiente de asignación del equipo</td></tr>
    <tr><th>Sprint 1 Review Summary</th><td>Pendiente de sesión de review formal del Sprint 1.</td></tr>
    <tr><th>Sprint 1 Retrospective Summary</th><td>Pendiente de sesión de retrospectiva del Sprint 1.</td></tr>
    <tr><th colspan="2" align="left">Sprint Goal & User Stories</th></tr>
    <tr><th>Sprint 2 Goal</th><td>Que una persona pueda iniciar sesión, realizar una práctica y consultar su progreso desde Android con datos persistidos.</td></tr>
    <tr><th>Sprint 2 Velocity</th><td>Pendiente de definir por el equipo.</td></tr>
    <tr><th>Sum of Story Points</th><td>37 (US01: 3, US02: 5, US10: 5, US12: 3, US13: 8, US14: 5, US16: 3, US18: 5 — mismas historias del Product Backlog de 3.4, implementadas ahora en el cliente Android).</td></tr>
  </tbody>
</table>

| Task técnica propuesta | Resultado comprobado al 16/09/2026 | Pendiente para cierre del Sprint |
|---|---|---|
| Cliente Android Kotlin/Compose | Login, registro, listado, detalle, resultado, progreso y catálogo implementados. | Asociar nuevas historias y publicar repositorio remoto. |
| Pruebas y artefacto | 2 pruebas unitarias, 1 prueba de UI y APK debug reproducible. | Añadir escenarios de errores/red y PR revisado. |
| Integración local | Capturas de recorrido con API/PostgreSQL local. | Repetir contra entorno compartido, registrar versión y test de sistema. |

**Sprint Backlog — Engineering Tasks (Sprint 2).** Las historias reutilizan el mismo Story ID del Product Backlog de 3.4 porque describen el mismo objetivo de usuario implementado ahora en un segundo cliente (Android); el título indica el cliente para evitar confusión con la versión web ya entregada.

| Story ID | Story Title | Task ID | Task Title | Descripción | Estimación (h) | Assigned To | Status |
|---|---|---|---|---|---|---|---|
| US01 | Iniciar sesión (cliente Android) | T2.1 | Pantalla de login y llamada a `/auth/login` | Formulario Compose, manejo de estado y token en memoria. | 6 | Por asignar | Hecho |
| US02 | Registrarse en SafeStep (cliente Android) | T2.2 | Pantalla de registro | Formulario Compose con validación básica y llamada a `/auth/register`. | 5 | Por asignar | Hecho |
| US10 | Visualizar catálogo de simulaciones (cliente Android) | T2.3 | Listado de simulaciones | Consumo del endpoint de catálogo y grilla Compose con imagen, dificultad y recompensas. | 7 | Por asignar | Hecho |
| US12 / US13 | Revisar detalle y responder pasos (cliente Android) | T2.4 | Pantalla de detalle y selección de respuestas | Navegación a detalle, render de pasos/opciones y envío de respuestas seleccionadas. | 8 | Por asignar | Hecho |
| US14 / US16 | Finalizar simulación y ver resumen (cliente Android) | T2.5 | Pantalla de resultado | Cálculo local de resumen y llamada al endpoint de intento. | 6 | Por asignar | Hecho |
| US18 | Visualizar resumen general de progreso (cliente Android) | T2.6 | Pantalla de progreso | Consumo del endpoint de progreso y render de indicadores. | 6 | Por asignar | Hecho |
| Tarea técnica | Calidad Android | T2.7 | Pruebas unitarias y de UI | 2 pruebas unitarias y 1 prueba de UI Compose ejecutadas en `Pixel_7_sem2`. | 5 | Por asignar | Hecho |
| Tarea técnica | Empaquetado | T2.8 | Generar APK debug | Compilar `app-debug.apk` y registrar hash SHA-256 del artefacto. | 4 | Por asignar | Hecho |
| Tarea técnica | Publicación del repositorio | T2.9 | Crear remoto en la organización y subir el proyecto | Enlazar `safestept-android` con GitHub y abrir el primer PR. | 4 | Por asignar | Pendiente |
| Tarea técnica | Resiliencia | T2.10 | Escenarios de error y sin red | Cubrir credenciales inválidas, sesión expirada y pérdida de conexión. | 6 | Por asignar | Pendiente |

### Sprint 3 — estabilización y entrega

*Goal propuesto:* ofrecer landing, web, API y APK de prueba en versiones identificables, con recorrido y evidencia reproducibles para revisión del docente. Su aceptación requerirá URL, commit, fecha, capturas, pruebas de flujos positivos/negativos y video nuevo; actualmente está **pendiente**. Se priorizarán despliegue, accesibilidad/i18n, vulnerabilidades, términos del piloto aprobados, colaboración, retrospectiva y testimonio consentido.

<table border="1" cellpadding="6" cellspacing="0" width="100%">
  <tbody>
    <tr><th width="30%">Sprint #</th><td>Sprint 3</td></tr>
    <tr><th colspan="2" align="left">Sprint Planning Background</th></tr>
    <tr><th>Date</th><td>Pendiente de registrar</td></tr>
    <tr><th>Time</th><td>Pendiente de registrar</td></tr>
    <tr><th>Location</th><td>Pendiente de registrar</td></tr>
    <tr><th>Prepared By</th><td>Pendiente de asignación del equipo</td></tr>
    <tr><th>Attendees (to planning meeting)</th><td>Pendiente de asignación del equipo</td></tr>
    <tr><th>Sprint 2 Review Summary</th><td>Pendiente de sesión de review formal del Sprint 2.</td></tr>
    <tr><th>Sprint 2 Retrospective Summary</th><td>Pendiente de sesión de retrospectiva del Sprint 2.</td></tr>
    <tr><th colspan="2" align="left">Sprint Goal & User Stories</th></tr>
    <tr><th>Sprint 3 Goal</th><td>Ofrecer landing, web, API y APK de prueba en versiones identificables, con recorrido y evidencia reproducibles para revisión del docente.</td></tr>
    <tr><th>Sprint 3 Velocity</th><td>Pendiente de definir por el equipo.</td></tr>
    <tr><th>Sum of Story Points</th><td>5 (US40: 5 — pruebas negativas sobre el checkout ya implementado; el resto del Sprint son tareas técnicas de estabilización sin Story ID del Product Backlog).</td></tr>
  </tbody>
</table>

**Sprint Backlog — Engineering Tasks (Sprint 3, planificado).** Ninguna de estas tareas se ha ejecutado; las horas son una estimación inicial para planificar el Sprint, sujeta a ajuste por el equipo.

| Story ID | Story Title | Task ID | Task Title | Descripción | Estimación (h) | Assigned To | Status |
|---|---|---|---|---|---|---|---|
| Tarea técnica | Despliegue verificado | T3.1 | Confirmar commit servido en landing, web y API | Verificar versión/commit detrás de cada URL pública antes de citarla como evidencia. | 5 | Por asignar | Pendiente |
| Tarea técnica | GitFlow | T3.2 | Crear rama `develop` en los 3 repos de producto | Aplicar la política de GitFlow ya declarada en 5.1.2 a landing, frontend y backend. | 4 | Por asignar | Pendiente |
| Tarea técnica | Seguridad | T3.3 | Rotar credencial expuesta y revisar secretos | Rotar en el proveedor la credencial detectada en el historial de Git y confirmar que no se reintroduce. | 4 | Por asignar | Pendiente |
| Tarea técnica | Accesibilidad e i18n | T3.4 | Completar idioma por defecto en inglés y revisar accesibilidad | Corregir `lang="es"` de la landing y auditar textos de UI aún en español. | 8 | Por asignar | Pendiente |
| US40 | Completar pago ficticio | T3.5 | Pruebas negativas de checkout | Cubrir pago rechazado, carrito vacío y datos inválidos en el flujo de compra. | 6 | Por asignar | Pendiente |
| Tarea técnica | Acuerdo SaaS | T3.6 | Revisión y aprobación del Acuerdo de Servicio | Completar responsable, contacto, tratamiento/retención de datos y fecha antes de publicar. | 5 | Por asignar | Pendiente |
| Tarea técnica | Video About-the-Product | T3.7 | Grabar y publicar el video | Grabar testimonio con consentimiento, subir a OneDrive/YouTube e insertar el enlace en la landing. | 8 | Por asignar | Pendiente |
| Tarea técnica | Colaboración | T3.8 | Completar Team Collaboration Insights | Registrar integrantes, PR, commits, analíticas GitHub y retrospectiva del Sprint 3. | 4 | Por asignar | Pendiente |

**Evidencia que debe añadirse por cada Sprint.** (a) *Development y Testing Suite Evidence:* tablas separadas con `Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on`; relacionar pruebas unitarias con clases y comportamientos, e integración/BDD con historias y archivos `.feature`. (b) *Execution Evidence:* capturas de vistas y video de navegación del Sprint. (c) *Services Documentation Evidence:* para cada endpoint, verbo, ruta, parámetros, ejemplo de respuesta, enlace OpenAPI local o publicado y captura con datos de muestra; incluir commits del backend. (d) *Software Deployment Evidence:* cambios de configuración y capturas del proveedor para landing, web y API. (e) *Team Collaboration Insights:* analíticas GitHub del período, interpretación por integrante, LACX y retrospectiva. Se completarán con hechos y enlaces del Sprint real, no con cifras heredadas.

**Registro técnico inicial — 16/09/2026:** `mvn test -q` terminó con **42 pruebas, 0 fallos, 0 errores** en 14 suites del backend y `mvn package -q` generó el artefacto correctamente. `npm test -- --watch=false` terminó con **2 pruebas aprobadas** en una suite del frontend. `npm run build` generó el frontend, con aviso: el bundle inicial excede en 30,28 kB el presupuesto de 700 kB. `npm ci` reportó 24 alertas de dependencias (1 baja, 12 moderadas, 11 altas); deben revisarse y priorizarse, sin aplicar `npm audit fix` a ciegas. Estos resultados locales no sustituyen un pipeline.

## 5.2.2. Implemented Landing Page Evidence

La landing actual incluye `index.html`, `about.html`, CSS y JavaScript, secciones de propuesta de valor, simulaciones, gamificación, catálogo y preguntas frecuentes. Se revisaron sus textos para retirar cifras de éxito, testimonios, certificaciones y disponibilidad sin respaldo. Los precios y productos visibles son ilustrativos para el piloto y los enlaces legales permanecen marcados «en revisión». Se capturó la versión local en Chrome a 1440 × 900 y 390 × 844 píxeles el 16/09/2026. **No se ha comprobado que estas capturas correspondan a la URL pública.**

| Evidencia a conservar | Relación con el producto | Estado |
|---|---|---|
| Capturas del hero en [desktop](../../assets/images/chapter-5/landing-local-desktop-2026-09-16.png) y [móvil](../../assets/images/chapter-5/landing-local-mobile-2026-09-16.png), con dimensiones y fecha | Historias de landing US47–US53 y relacionadas | Capturadas localmente; faltan recorridos de navegación, FAQ y footer. |
| URL y commit de publicación; comprobación de enlaces CTA hacia la web | Despliegue y recorrido del visitante | Pendiente de verificación |
| Cambio de idioma `en`/`es`, semántica, foco y teclado | i18n/a11y exigidos por el statement | Pendiente; los HTML actuales declaran `lang="es"` |
| Enlace accesible a Terms and Conditions tras aprobación del texto | Acuerdo SaaS | Pendiente de revisión y publicación |

Las imágenes `landing-deployed.png` y otras capturas de `assets/images/chapter-5` pertenecen al informe anterior. Pueden ilustrar el As-Is, pero no se usarán como prueba de un despliegue nuevo sin verificar que corresponden al commit y la URL actuales.

![Landing SafeStep en Chrome, anchura desktop](../../assets/images/chapter-5/landing-local-desktop-2026-09-16.png)

*Figura 5.1. Landing local en escritorio, 16/09/2026; no es evidencia de publicación.*

![Landing SafeStep en Chrome, anchura móvil](../../assets/images/chapter-5/landing-local-mobile-2026-09-16.png)

*Figura 5.2. Landing local en viewport móvil, 16/09/2026.*

## 5.2.3. Implemented Frontend-Web Application Evidence

El repositorio actual implementa rutas de autenticación, dashboard, simulaciones, progreso/estadísticas, gamificación y comercio. Contiene recursos `en.json` y `es.json`, y una configuración de API para desarrollo y producción. La compilación y dos pruebas unitarias pasaron localmente el 16/09/2026. En Chrome se inició sesión con una cuenta ficticia contra la API y PostgreSQL locales: el dashboard mostró un intento previamente registrado mediante la API, con 1 simulación completada, 420 XP y 101 monedas. Se verificó además que esa cuenta `ROLE_USER` no ve el control de administración y que `/app/simulations/admin` redirige al dashboard. Esto **no** equivale a un E2E completo de resolución desde la interfaz ni a un despliegue verificado.

| Flujo a evidenciar | Captura y comprobación requeridas | Estado |
|---|---|---|
| Registro/inicio de sesión y cierre | Formulario, errores de validación, respuesta de la API, ruta protegida | Inicio de sesión local comprobado; faltan errores y cierre de sesión en navegador. |
| Selección y resolución de simulación | Catálogo, detalle, opciones, resultado, persistencia del intento | [Lista local capturada](../../assets/images/chapter-5/web-simulations-local-2026-09-16.png); resolución web E2E pendiente. |
| Progreso, gamificación y estadísticas | Valores del usuario antes/después de un intento | [Dashboard local](../../assets/images/chapter-5/web-dashboard-local-2026-09-16.png) refleja un intento persistido por API; faltan pruebas de todas las vistas. |
| Catálogo y checkout de prueba | Producto, carrito, redirección/resultado de Stripe en modo prueba | Código disponible; no usar pagos reales |
| i18n, accesibilidad y responsive | Capturas `en`/`es`, teclado, foco, lector de pantalla y anchuras móvil/desktop | Capturas [ES](../../assets/images/chapter-5/web-dashboard-local-2026-09-16.png), [EN](../../assets/images/chapter-5/web-dashboard-en-local-2026-09-16.png), [login desktop](../../assets/images/chapter-5/web-login-local-desktop-2026-09-16.png) y [login móvil](../../assets/images/chapter-5/web-login-local-mobile-2026-09-16.png); traducción inglesa parcial y auditoría a11y pendientes. |

Antes de registrar «desplegado», se debe asociar cada captura con commit, URL, fecha, navegador y datos de prueba. El aviso del presupuesto del bundle y las alertas de dependencias son hallazgos de calidad pendientes, no fallas ocultas.

![Dashboard web local con progreso de una cuenta de prueba](../../assets/images/chapter-5/web-dashboard-local-2026-09-16.png)

*Figura 5.3. Dashboard web servido localmente en Chrome, con API y PostgreSQL locales; cuenta ficticia y un intento de prueba.*

## 5.2.4. Acuerdo de Servicio - SaaS

**Borrador para revisión del equipo — no publicar como versión contractual definitiva.** El statement exige derechos, obligaciones y restricciones en una sección pública «Terms and Conditions», clara y accesible. La siguiente redacción establece el alcance del piloto académico; debe completarse con identidad del responsable, contacto y política de tratamiento de datos antes de enlazarla desde la landing y la aplicación. Su revisión debe contemplar la [Ley peruana 29733](https://leyes.congreso.gob.pe/DetLeyNume_1p.aspx?xNorma=6&xNumero=29733) y su [reglamento vigente](https://www.gob.pe/institucion/anpd/normas-legales/6554453-16-2024-jus).

1. **Objeto y alcance.** SafeStep es un piloto académico para practicar decisiones en escenarios simulados de primeros auxilios. Las puntuaciones y recompensas son educativas, no acreditan competencia clínica ni sustituyen formación certificada.
2. **Emergencias reales.** Ante una emergencia, el usuario debe acudir a servicios de emergencia y personal sanitario. SafeStep no ofrece diagnóstico, triaje ni instrucciones médicas individualizadas en tiempo real.
3. **Cuenta y uso aceptable.** El usuario debe proporcionar datos de prueba o información propia autorizada, proteger su contraseña, no acceder a cuentas ajenas, no manipular resultados y no cargar datos sensibles de terceros. El equipo puede suspender uso abusivo del piloto.
4. **Datos y seguridad.** Se informará qué datos de cuenta, intentos y progreso se recogen, con qué finalidad, a quién se comunican, por cuánto tiempo se conservan y cómo solicitar acceso, rectificación o eliminación. Los responsables y el canal de contacto deben figurar con datos reales antes de la publicación; no se incluirán contraseñas o tokens en el informe.
5. **Comercio y pagos.** Durante el piloto, las demostraciones de Stripe deben usar entorno de prueba: las transacciones simuladas no mueven fondos, conforme a la [documentación de Stripe](https://docs.stripe.com/testing?locale=es-ES). No se prometerán ventas, entregas ni reembolsos reales sin un servicio comercial operativo y condiciones adicionales aprobadas.
6. **Disponibilidad, cambios y cierre.** El piloto puede interrumpirse por mantenimiento o fin de curso; no se garantiza disponibilidad continua. Antes de cerrarlo se comunicará el destino de las cuentas y datos según la política aprobada. Las modificaciones sustanciales del acuerdo deben publicarse con fecha y versión.
7. **Accesibilidad y consultas.** Los términos deben poder leerse en inglés y español, desde el footer de landing y web, con texto navegable por teclado. El canal de consultas debe verificarse antes de hacerlo público.

**Campos aún obligatorios antes de publicar:** denominación legal del prestador/responsable, correo de contacto, domicilio o canal institucional aplicable, finalidades y plazo de retención, destinatarios de datos, procedimiento de ejercicio de derechos, fecha de vigencia y responsable de aprobación. Este texto es un borrador de proyecto, no una opinión legal ni una autorización para procesar pagos reales.

## 5.2.5. Implemented Native-Mobile Application Evidence

Se inició un cliente **Android nativo** en el repositorio Git local `safestept-android`, con Kotlin y Jetpack Compose. El código incluye registro e inicio de sesión, lista y detalle de simulaciones, selección de respuestas y envío de un intento, además de consulta de progreso y catálogo. La administración permanece en la aplicación web. El cliente utiliza los contratos REST existentes y mantiene el token de acceso únicamente en memoria; no incluye secretos de producción. La configuración de red permite HTTP sin cifrar **solo en la variante debug** para conectar al emulador con una API local. La variante release exige HTTPS.

| Evidencia Android | Estado y criterio de cierre |
|---|---|
| Código y correspondencia con historias | Código local implementado; asignar IDs de historias Android y PR cuando el equipo incorpore el repositorio al tablero. |
| Pruebas del cálculo de puntuación | **2 pruebas unitarias aprobadas** con `testDebugUnitTest` el 16/09/2026. En Windows se ejecutaron desde una unidad `subst` ASCII debido a la ruta local con caracteres no ASCII. |
| APK debug | `assembleDebug` correcto: artefacto local `safestept-android/app/build/outputs/apk/debug/app-debug.apk`, **12 001 260 bytes**, SHA-256 `BD6D3CCB4DAAEB011675DC19E56BC8D8E83965F57A22FA505F922BA6F9FBFE16`, 16/09/2026. No es una release firmada para distribución. |
| Ejecución en emulador/dispositivo | **1 prueba de interfaz aprobada** en Pixel_7_sem2 (Android 13). Con cuenta ficticia se ejecutó inicio de sesión, listado, detalle, resolución, resultado, progreso y catálogo frente a la API con PostgreSQL locales. Se conservan [inicio](../../assets/images/chapter-5/android-login-2026-09-16.png), [listado](../../assets/images/chapter-5/android-simulations-2026-09-16.png), [detalle](../../assets/images/chapter-5/android-simulation-detail-2026-09-16.png), [resultado](../../assets/images/chapter-5/android-result-2026-09-16.png), [progreso](../../assets/images/chapter-5/android-progress-2026-09-16.png) y [catálogo](../../assets/images/chapter-5/android-catalog-2026-09-16.png). Faltan pruebas de errores y API pública. |
| Publicación del repositorio y release | Pendiente de crear remoto de la organización, revisión por PR y distribución controlada del APK. |

La decisión del equipo es **Android solamente**. Los prototipos iOS del capítulo IV no demuestran una app iOS implementada; esta limitación y su posible impacto en la evaluación deben validarse con el docente. El recorrido Android sí se ejecutó contra PostgreSQL local, pero falta repetirlo contra la versión que se publique.

<div align="center">
  <img src="../../assets/images/chapter-5/android-login-2026-09-16.png" alt="Pantalla inicial del cliente Android en emulador Pixel 7, sin datos de usuario" width="260" />
  <p><i>Figura 5.4. Pantalla inicial de SafeStep Android, compilación debug local del 16/09/2026. La URL <code>10.0.2.2</code> apunta al host del emulador y no demuestra un backend público.</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-5/android-result-2026-09-16.png" alt="Resultado de una simulación en Android" width="260" />
  <p><i>Figura 5.5. Resultado de una simulación ejecutada desde Android con datos de prueba y API local.</i></p>
</div>

<div align="center">
  <img src="../../assets/images/chapter-5/android-progress-2026-09-16.png" alt="Progreso obtenido en Android después de las simulaciones" width="260" />
  <p><i>Figura 5.6. Progreso consultado por Android desde la API local; no es una medición con participantes reales.</i></p>
</div>

## 5.2.6. Implemented RESTful API and/or Serverless Backend Evidence

El backend actual es una API Spring Boot con persistencia PostgreSQL, recursos IAM, perfiles, simulaciones e intentos, analítica, gamificación y comercio. Los controladores y modelos están en el [repositorio backend](https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-backend). Se ejecutaron **42 pruebas sin fallos** el 16/09/2026. Un smoke test adicional contra PostgreSQL local creó una cuenta ficticia (201), inició sesión con rol `ROLE_USER`, leyó 18 simulaciones y 32 productos, registró un intento (201), recuperó un historial y progreso con una simulación completada, obtuvo OpenAPI (200) y confirmó que el borrado de una simulación con ese usuario devuelve **403**. El script reproducible es `scripts/smoke-api.ps1` del backend. Estos resultados verifican ese entorno local, **no** el despliegue, pagos ni todos los endpoints.

La configuración de producción ahora requiere `DATABASE_USER`, `DATABASE_PASSWORD` y `JWT_SECRET` por variables de entorno; no se documentan valores. El Dockerfile compila con pruebas y usa perfil de producción. Debe verificarse su construcción en el pipeline y la conectividad con una base de datos de prueba antes de publicar. Los secretos que aparecieron antes en archivos versionados deben **rotarse** y retirarse del proveedor; el cambio del archivo actual no borra el historial de Git.

**Limitación de integridad:** el contrato de intentos acepta `score` y `correctSteps` calculados por el cliente. Antes de usar estas métricas como resultado experimental o para recompensas sensibles, el backend debe verificar las respuestas contra la simulación o establecer otro mecanismo de validación; las pruebas actuales no demuestran esa integridad.

| Recorrido a comprobar | Estado y evidencia |
|---|---|
| Alta, inicio, renovación y cierre de sesión | Alta 201 e inicio de sesión comprobados localmente; renovación, cierre y errores 4xx pendientes en este recorrido. |
| Consultar simulación, enviar intento, leer progreso | Consulta y persistencia en PostgreSQL local comprobadas con usuario ficticio; pendiente error de red y validación del puntaje en servidor. |
| Catálogo y pago de prueba | Producto, orden y webhook con credenciales **test**; nunca pagos reales. |
| Administrar contenido | Mutaciones de simulaciones, productos y misiones restringidas a `ROLE_ADMIN` en API; prueba de integración y smoke test confirman 403 para usuario normal. Falta comprobar cada acción de administrador legítimo. |

## 5.2.7. RESTful API documentation

La documentación OpenAPI se genera mediante `springdoc`; la ruta esperada en una instancia activa es `/swagger-ui/index.html` y el JSON se obtiene en `/v3/api-docs`. Este JSON devolvió **200 en la instancia local** el 16/09/2026. Antes de colocar enlaces públicos, abrir esas rutas en el despliegue actual y registrar URL, fecha, versión y captura. La matriz siguiente se basa en controladores del código, no en una API publicada comprobada.

| Método y ruta | Entrada principal | Respuesta funcional | Uso / prueba asociada |
|---|---|---|---|
| `POST /api/v1/authentication/sign-up` | Usuario y contraseña | Cuenta creada o error de validación | Registro web/Android; alta pública solo `ROLE_USER`. |
| `POST /api/v1/authentication/sign-in` | Credenciales | Tokens de acceso/renovación y roles | Autenticación y acceso a rutas protegidas. |
| `POST /api/v1/authentication/refresh-token` | Refresh token | Nuevo par de tokens o rechazo | Continuidad de sesión. |
| `POST /api/v1/authentication/logout` | Refresh token | Revocación o rechazo | Cierre de sesión. |
| `GET /api/v1/simulations` | Consulta | Lista de simulaciones | Catálogo de práctica web/Android. |
| `GET /api/v1/simulations/{simulationId}` | ID de simulación | Detalle, pasos y opciones | Inicio de una práctica. |
| `POST /api/v1/simulations/{simulationId}/attempts` | Modo, tiempo, puntuación y errores | Intento registrado o error | Resultado y persistencia. |
| `GET /api/v1/simulations/attempts/me` | Bearer token | Intentos del usuario | Historial personal. |
| `GET /api/v1/analytics/summary/me` | Bearer token | Resumen analítico | Estadísticas web. |
| `GET /api/v1/gamification/summary/me` | Bearer token | Nivel, XP, monedas y racha | Progreso web/Android. |
| `GET /api/v1/commerce/products` | Consulta | Productos | Catálogo web/Android. |
| `POST /api/v1/commerce/orders/{orderId}/payments/stripe-checkout` | Orden autenticada | Sesión de checkout o error | Solo integración de pagos de prueba. |

También existen recursos de administración y perfiles; su lista completa, parámetros, códigos y esquemas deben consultarse en el OpenAPI generado del commit entregado. Antes de la entrega, contrastar la matriz con ese JSON, añadir los enlaces de historias definitivos y una tabla de casos positivos/negativos. No se deben copiar capturas Swagger antiguas como evidencia de la versión nueva.

## 5.2.8. Team Collaboration Insights

Las capturas y métricas del capítulo 5 del informe del curso anterior corresponden al equipo y repositorios de ese curso. Para **cada nuevo sprint**, registrar en la organización actual: integrantes y roles, acta de planificación, pares de revisión, PR enlazados a historias, commits relevantes, comentarios de revisión, decisiones técnicas, bloqueos resueltos y retrospectiva. Adjuntar capturas de las analíticas GitHub con fecha y período, además de una interpretación cualitativa. La cantidad de commits no es una medida suficiente de contribución: una revisión, prueba reproducible, investigación o corrección de seguridad puede no generar muchos commits.

| Sprint actual | Liderazgo y colaboración | PR/commits y analíticas | Reflexión LACX/retrospectiva |
|---|---|---|---|
| 1 | Pendiente de asignación del equipo. | Pendiente de URL y captura del período. | Pendiente de sesión. |
| 2 | Pendiente de asignación del equipo. | Pendiente de URL y captura del período. | Pendiente de sesión. |
| 3 | Pendiente de asignación del equipo. | Pendiente de URL y captura del período. | Pendiente de sesión. |

El capítulo quedará cerrado cuando cada entrega tenga una cadena comprobable `historia → tarea → commit/PR → prueba → captura o URL`. Los defectos, incertidumbres y excepciones de stack deben mantenerse visibles junto con la evidencia positiva.
