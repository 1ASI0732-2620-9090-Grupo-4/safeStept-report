# Conclusiones

## Conclusiones y recomendaciones

### Conclusiones

El desarrollo de SafeStep permitio validar la necesidad de una solucion digital orientada al aprendizaje practico de primeros auxilios. A partir del analisis del problema, las entrevistas, las validaciones y la implementacion progresiva del producto, se confirmo que muchos usuarios reconocen la importancia de saber actuar ante emergencias, pero no siempre cuentan con una forma accesible, guiada y constante para practicar. SafeStep responde a esa necesidad mediante una aplicacion web que integra simulaciones medicas, retroalimentacion, progreso, gamificacion y una tienda de productos de emergencia.

Durante el Sprint 1 se establecieron las bases del proyecto, incluyendo la definicion del problema, los segmentos objetivo, el perfil de la startup, la propuesta de valor, el Lean UX Process, el Product Backlog y la primera version de la Landing Page. Este avance fue importante porque permitio comunicar el valor inicial de SafeStep y presentar una primera aproximacion visual del producto a los usuarios.

Durante el Sprint 2 se construyo el frontend de la Web Application con Angular, organizado por bounded contexts y siguiendo patrones similares al proyecto Learning Center utilizado como referencia academica. En esta etapa se implementaron vistas como dashboard, simulaciones, detalle de simulacion, progreso, gamificacion, tienda, carrito y perfil. Inicialmente se utilizaron datos simulados para validar la experiencia de usuario y la navegacion interna antes de conectar la aplicacion con servicios backend reales.

Durante el Sprint 3 se implemento el backend de SafeStep con Spring Boot, Java, PostgreSQL, Maven y Swagger/OpenAPI. Este avance permitio reemplazar progresivamente la dependencia de datos ficticios por servicios REST reales, organizados por bounded contexts como commerce, simulation, gamification, analytics, IAM y profiles. Tambien se conecto el frontend con el backend y se actualizo la Landing Page para mostrar imagenes del producto y material audiovisual relacionado con la propuesta.

Durante el Sprint 4 se fortalecio el producto con la implementacion de IAM y pagos con Stripe tanto en frontend como en backend. La autenticacion con JWT, las rutas protegidas, el manejo de perfil de usuario, la integracion con Stripe Checkout y la persistencia en PostgreSQL desplegado en Render hicieron que SafeStep pasara de ser una simulacion academica a una aplicacion web mas cercana a un entorno real. Este sprint tambien permitio validar flujos criticos como registro, inicio de sesion, compra de productos, confirmacion de pago y despliegue publico.

Durante el Sprint 5 el foco se desplazo de construir funcionalidades a demostrar y proteger su calidad. Se incorporaron al Product Backlog el panel de administracion, la gestion de roles y el canje de cupones con SafeCoins (US57 a US61) junto con siete technical stories de pruebas e integracion continua (TS25 a TS31), y se construyeron tres suites automatizadas: 209 pruebas unitarias y de integracion, 33 escenarios BDD con Cucumber y 36 escenarios de API con Karate. La cobertura de instrucciones del codigo de aplicacion paso de 44.3 % a 93.8 % y el build exige ahora un minimo de 80 %. Las pruebas unitarias y BDD se ejecutan dentro de un pipeline de Jenkins que tambien mide el estilo con Checkstyle, verifica la cobertura, analiza el codigo con SonarQube y empaqueta el backend; la ultima ejecucion termino en exito en 3 minutos y 42 segundos. Las pruebas de API se ejecutan contra una instancia local del backend. Ademas, el equipo desplego por su cuenta el frontend, el backend y la base de datos en Render (Static Site, Web Service con Docker y PostgreSQL 18), con CORS restringido al frontend publicado, y verifico los tres con pruebas de humo contra las URL publicas.

El trabajo de verificacion tambien produjo hallazgos que el equipo decidio documentar y, cuando eran reales, corregir: la API respondia HTTP 500 en lugar de 400 ante un JSON mal formado, CORS estaba abierto a cualquier origen y SonarQube senalaba tres bugs menores. Los tres problemas se corrigieron y se verificaron con pruebas nuevas y con el pipeline; el Quality Gate, que evalua el codigo nuevo, llego a fallar una vez por una incidencia de estilo en el codigo recien escrito y volvio a aprobar tras corregirla. Quedan como puntos abiertos que Checkstyle reporta 8,128 observaciones de estilo sobre el codigo existente (en su mayoria de indentacion, porque el proyecto usa cuatro espacios y las reglas de Google exigen dos), que SonarQube mantiene una vulnerabilidad por la proteccion CSRF deshabilitada, aceptable en una API con JWT, que el modulo de perfiles tiene una cobertura de 62.1 %, y que el plan gratuito de la base de datos en Render caduca el 7 de noviembre de 2026 y el backend gratuito se suspende por inactividad y tarda varios minutos en despertar.

Las entrevistas de validacion y la evaluacion heuristica evidenciaron que SafeStep es percibido como un producto claro, util y coherente con su objetivo. Los usuarios comprendieron la propuesta de valor desde la Landing Page, identificaron las secciones principales de la aplicacion y valoraron especialmente las simulaciones medicas, la retroalimentacion posterior a cada respuesta, el seguimiento del progreso y la relacion entre aprendizaje y productos de emergencia. No se identificaron problemas criticos de severidad alta en la experiencia evaluada.

En relacion con el trabajo colaborativo, el equipo logro distribuir responsabilidades entre los cuatro integrantes activos: Jorge, Mathias, Josep y Angel. Cada integrante participo en actividades de documentacion, frontend, backend, despliegue, validacion y presentacion del producto. Esta organizacion permitio avanzar de manera incremental y mantener trazabilidad entre las historias de usuario, los sprints, los commits, las evidencias y los entregables finales.

**Contraste con Lean UX y validaciones:**

El Problem Statement inicial planteaba que la preparacion en primeros auxilios suele ser fragmentada, teorica y poco accesible para usuarios que necesitan practicar de forma sencilla antes de enfrentar una emergencia real. Las validaciones realizadas confirmaron que este problema sigue siendo relevante, ya que los participantes entendieron rapidamente el valor de una plataforma que les permita aprender, practicar y recibir recomendaciones relacionadas con situaciones de emergencia.

Las assumptions del proyecto se centraban en que los usuarios valorarian una experiencia interactiva, accesible desde la web, con simulaciones, progreso, recompensas y productos de apoyo. Las entrevistas mostraron que estas suposiciones fueron razonables: los usuarios destacaron las simulaciones como una funcionalidad util, consideraron positivo el uso de misiones e insignias como motivacion y percibieron la tienda como un complemento coherente con el aprendizaje de primeros auxilios.

Las Hypotheses Statements relacionadas con el uso de simulaciones y retroalimentacion fueron validadas de manera cualitativa. Los usuarios indicaron que las preguntas, opciones y respuestas posteriores ayudaban a comprender mejor que hacer en una emergencia. Sin embargo, algunos criterios de exito cuantitativos, como reduccion de errores, retencion a largo plazo o aumento medible de confianza, todavia requieren pruebas con uso continuo de la plataforma y analiticas reales.

La hipotesis relacionada con la tienda de productos de emergencia tambien fue parcialmente validada. Los usuarios entendieron que los productos y kits se relacionan con el objetivo de SafeStep, pero la evaluacion heuristica mostro una oportunidad de mejora: explicar con mayor claridad por que un producto especifico se recomienda despues de una simulacion o escenario. Esto permitiria reforzar la conexion entre aprendizaje, preparacion y compra.

Los criterios de exito definidos en Lean UX se cumplieron principalmente en terminos de comprension, utilidad percibida y aceptacion inicial del producto. No obstante, quedan pendientes criterios que dependen de una medicion posterior, como conversion de usuarios, compras reales, frecuencia de uso, finalizacion de simulaciones, reduccion de errores y adopcion por instructores o instituciones. Por ello, SafeStep debe continuar validandose con usuarios reales en ciclos de uso mas largos.

En sintesis, el contraste entre Lean UX y los resultados obtenidos muestra que SafeStep responde a un problema real y que su propuesta fue entendida por los segmentos evaluados. La validacion no cierra el proceso, sino que orienta los siguientes pasos: profundizar los escenarios, reforzar la confianza con fuentes medicas, mejorar la explicacion de la gamificacion y conectar mejor las recomendaciones de productos con las simulaciones.

### Recomendaciones

**Corto plazo:** Se recomienda mejorar la explicacion de las recompensas, SafeCoins, insignias y misiones dentro de la aplicacion. Aunque los usuarios valoraron la gamificacion, algunos elementos pueden comunicarse mejor para que el usuario entienda como avanzar, que obtiene y por que eso aporta a su aprendizaje.

**Corto plazo:** Se recomienda reforzar la confianza del producto agregando referencias visibles a fuentes medicas, criterios de seguridad o validacion por especialistas. SafeStep trata un tema sensible, por lo que la confianza es un factor clave para que los usuarios adopten la plataforma.

**Corto plazo:** Se recomienda hacer mas explicita la relacion entre simulaciones y productos recomendados. Despues de completar un escenario, la aplicacion podria mostrar productos utiles para ese caso especifico y explicar brevemente para que sirven.

**Mediano plazo:** Se recomienda ampliar las simulaciones con niveles de dificultad, mayor cantidad de pasos y escenarios mas detallados. Esto permitiria atender tanto a usuarios principiantes como a brigadistas o personas con experiencia previa en primeros auxilios.

**Corto plazo:** Se recomienda migrar o recrear la base de datos de Render antes del 7 de noviembre de 2026 si el producto sigue en uso, activar un servicio externo que despierte el backend antes de las demostraciones, subir la cobertura del modulo de perfiles, revisar los 207 code smells que reporta SonarQube y decidir si se migra el codigo a la indentacion de dos espacios de las reglas de Google para que Checkstyle pase a ser una puerta de calidad y no solo un reporte. Tambien conviene marcar en SonarQube como revisada la regla de CSRF, que es una decision de diseno.

**Mediano plazo:** Se recomienda ampliar las pruebas a los flujos que hoy quedan fuera (pago con Stripe y finalizacion de simulaciones), incorporar pruebas de sistema de la aplicacion web y movil y extender el pipeline con la entrega y el despliegue continuos.

**Mediano plazo:** Se recomienda realizar nuevas validaciones con usuarios utilizando la aplicacion desplegada durante mas tiempo. Esto permitiria medir indicadores reales como retencion, finalizacion de simulaciones, errores frecuentes, confianza percibida antes y despues del entrenamiento, y conversion en la tienda.

**Futuro roadmap:** Se recomienda considerar funcionalidades como certificados, panel para instructores, modo offline o de bajo consumo de datos, reportes avanzados de progreso, administracion por roles y alianzas con especialistas o instituciones de primeros auxilios. Estas mejoras permitirian que SafeStep evolucione de una aplicacion de aprendizaje individual hacia una plataforma de capacitacion mas completa.

---

## Video App Validation

**Pendiente.** Falta grabar y publicar el video de validación de la aplicación con usuarios del curso actual; no se insertará un enlace ficticio ni contenido del curso anterior.

---

## Video About The Team

El video About The Team presenta la participacion de los cuatro integrantes activos del equipo Chronos durante el desarrollo de SafeStep. En el video se explica como se organizo el trabajo, que responsabilidades asumio cada integrante y como el equipo logro construir la Landing Page, la Web Application, el backend, la integracion con IAM, el sistema de pagos con Stripe y la documentacion del proyecto.

**Datos del video:**

| Elemento | Informacion |
| -------- | ----------- |
| Titulo | Video About The Team - SafeStep |
| Duracion | 10:07 minutos |
| Participantes | Jorge, Mathias, Josep y Angel |
| Publico objetivo | Docente del curso, usuarios interesados en SafeStep y visitantes de la Landing Page |
| URL publicado en YouTube | <a href="https://www.youtube.com/watch?v=jmA1L_1_8bk">https://www.youtube.com/watch?v=jmA1L_1_8bk</a> |
| URL publicado en Microsoft Stream | <a href="https://upcedupe-my.sharepoint.com/:v:/g/personal/u20241c030_upc_edu_pe/IQA4urSyPkX-QLZVQSOsKYhzAax2ZRFU7R0_nyz0d4gm7Tk?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=7O4QqF">https://upcedupe-my.sharepoint.com/:v:/g/personal/u20241c030_upc_edu_pe/</a> |
| Uso en Landing Page | El video se utiliza como evidencia publica del trabajo colaborativo del equipo y del proceso de desarrollo del producto. |


<div align="center">
    <img src="../assets/images/chapter-5/videoaboutheteam.png" width="700">
    <p><i><b>Fuente</b>: Elaboracion propia.</i></p>
</div>

**Pauta de secuencias del video:**

| Seccion | Timing de inicio | Contenido |
| ------- | ---------------- | --------- |
| Introduccion del equipo y presentacion de SafeStep | 00:00 | Presentacion general del equipo Chronos, del objetivo del proyecto y del problema que busca resolver SafeStep. |
| Organizacion del trabajo y roles del equipo | 01:20 | Explicacion de la distribucion de responsabilidades entre Jorge, Mathias, Josep y Angel durante los sprints del proyecto. |
| Landing Page y comunicacion del producto | 03:00 | Resumen del trabajo realizado en la Landing Page, propuesta de valor, secciones visuales, llamados a la accion y videos publicados. |
| Web Application y experiencia principal | 04:40 | Presentacion del frontend, dashboard, simulaciones, gamificacion, progreso, tienda y flujo general de usuario. |
| Backend, IAM, Stripe y despliegue | 06:30 | Explicacion de la API REST, Swagger, PostgreSQL en Render, autenticacion con JWT, perfiles de usuario y sistema de pagos con Stripe. |
| Aprendizajes, colaboracion y cierre | 08:30 | Reflexion final sobre el trabajo colaborativo, los aprendizajes del equipo, el Student Outcome y el valor de SafeStep como producto digital. |

El contenido del video complementa la seccion Student Outcome porque evidencia la comunicacion oral del equipo, la coordinacion interna y la capacidad de presentar resultados tecnicos y funcionales de manera comprensible. Ademas, funciona como soporte publico para mostrar el proceso de construccion de SafeStep y el aporte de cada integrante durante el trabajo final.
