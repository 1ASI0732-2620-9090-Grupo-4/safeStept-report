<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-5/capitulo-5.png" alt="Capitulo 5" />
</div>

<br>
<br>

# 5.2. Landing Page, Services & Applications Implementation.

## 5.2.6. Implemented RESTful API and/or Serverless Backend Evidence

Esta sección reúne la evidencia del backend de SafeStep, la API REST que sostiene la aplicación web: autenticación, simulaciones, gamificación, comercio y analítica. Se construyó en el Sprint 3 (5.2.1.3), incorporó seguridad con JWT y pagos con Stripe en el Sprint 4 (5.2.1.4) y recibió las pruebas automatizadas, el canje de cupones y el despliegue en Render en el Sprint 5 (5.2.1.5).

### 5.2.6.1. Arquitectura del backend

El backend se organiza por bounded contexts y cada uno respeta las mismas cuatro capas: `domain` (agregados, entidades, objetos de valor, comandos y consultas), `application` (servicios de comandos y consultas, manejadores de eventos y servicios salientes), `infrastructure` (persistencia JPA, seguridad y adaptadores externos) e `interfaces` (controladores REST, recursos y fachadas ACL entre contextos).

| Bounded context | Responsabilidad | Controladores (etiquetas OpenAPI) | Operaciones |
|-----------------|-----------------|-----------------------------------|-------------|
| `iam` | Autenticación, usuarios y roles | Authentication, Users, Roles | 11 |
| `profiles` | Perfiles de las personas usuarias | Profiles | 5 |
| `simulation` | Catálogo de simulaciones médicas e intentos | Medical Simulations | 8 |
| `gamification` | XP, SafeCoins, misiones, insignias y ranking | Gamification | 17 |
| `commerce` | Catálogo, carrito, órdenes, pagos con Stripe y cupones | Commerce Catalog, Commerce Operations | 29 |
| `analytics` | Resumen, progreso y certificados | Analytics | 3 |
| **Total** | | | **73** |

Además existe un contexto `shared` con el tipo `Result`, el manejo global de errores, la internacionalización (mensajes en español e inglés) y la configuración de OpenAPI. Los contextos se comunican mediante fachadas ACL y eventos de integración; por ejemplo, completar una simulación dispara el evento que otorga XP y SafeCoins en `gamification`, y el canje de un cupón en `commerce` descuenta las monedas a través de la fachada de `gamification`.

### 5.2.6.2. Tecnologías y configuración

| Aspecto | Valor |
|---------|-------|
| Lenguaje y framework | Java 26 y Spring Boot 4.0.6 (Tomcat 11, Spring Security, Spring Data JPA) |
| Persistencia | Hibernate ORM 7.2 sobre PostgreSQL 18; 25 repositorios JPA; el esquema se genera con `ddl-auto=update` |
| Datos iniciales | Archivo `safestep-seed.json` con 18 simulaciones, 32 productos, 14 categorías, 4 kits, 6 cupones, 14 misiones y 18 insignias |
| Seguridad | JWT firmado con `JWT_SECRET` (token de acceso de 7 días y de renovación de 30), contraseñas con BCrypt y control de acceso por roles `ROLE_USER`, `ROLE_INSTRUCTOR` y `ROLE_ADMIN` |
| Pagos | Stripe Checkout con confirmación, cancelación y webhook |
| Documentación | OpenAPI 3.1 con Swagger UI (springdoc) |
| Perfiles | `dev` para el entorno local y `prod`, que lee todas las credenciales de variables de entorno |
| Contenedor | `Dockerfile` de dos etapas (compilación con Maven y ejecución con JRE 26) |

### 5.2.6.3. Seguridad y manejo de errores

- Todas las rutas exigen sesión iniciada salvo la autenticación, el webhook de Stripe y la documentación. Las operaciones de administración (gestión de usuarios y roles, productos, cupones, misiones, insignias y simulaciones) exigen `ROLE_ADMIN`.
- El registro público siempre asigna `ROLE_USER`. Un administrador no puede quitarse su propio rol y el sistema conserva al menos uno.
- Las peticiones de navegador solo se aceptan desde los orígenes de la propiedad `safestep.cors.allowed-origins`.
- Los errores se devuelven con un formato único `{"code", "message", "details"}`. Un cuerpo JSON mal formado responde 400 y los errores inesperados responden 500 y se registran.

### 5.2.6.4. Verificación

La API está respaldada por 205 pruebas unitarias y de integración (JUnit y Mockito), 33 escenarios de comportamiento con Cucumber y 36 escenarios de integración con Karate que la consumen por HTTP. La cobertura de instrucciones del código de aplicación es de 93.8 % y el pipeline de Jenkins las ejecuta junto con el análisis de SonarQube. El detalle está en 6.1 y 7.1.

### 5.2.6.5. Despliegue

El backend se publica en Render como Web Service con runtime Docker, conectado a la base de datos PostgreSQL `safestep-db`. El detalle de la configuración, las variables de entorno y los resultados del despliegue están en 5.1.4.2.3 y 5.2.1.5.8.

| Elemento | Valor |
|----------|-------|
| URL pública | <a href="https://safestept-backend-experimentos.onrender.com">https://safestept-backend-experimentos.onrender.com</a> |
| Documentación Swagger | <a href="https://safestept-backend-experimentos.onrender.com/swagger-ui/index.html">https://safestept-backend-experimentos.onrender.com/swagger-ui/index.html</a> |
| Plataforma | Render Web Service (plan gratuito, región Frankfurt), despliegue automático al hacer commit en `main` |
| Repositorio | <a href="https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-backend">https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-backend</a> |

<div align="center">
  <p><b>Captura:</b> Swagger UI del backend publicado en Render</p>
  <img src="../../assets/images/chapter-5/DespliegueMelgarejo/BackendDesplegado.png" alt="Swagger UI del backend desplegado" width="760" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

<div align="center">
  <p><b>Captura:</b> Despliegue del backend en Render: Deploy succeeded, Live</p>
  <img src="../../assets/images/chapter-5/DespliegueMelgarejo/RenderBackendDashboard.png" alt="Despliegue del backend" width="760" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

<div align="center">
  <p><b>Captura:</b> Base de datos PostgreSQL safestep-db en Render</p>
  <img src="../../assets/images/chapter-5/DespliegueMelgarejo/RenderBaseDatosDashboard.png" alt="Base de datos" width="760" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

<div align="center">
  <p><b>Captura:</b> Variables de entorno del backend (los secretos aparecen ocultos)</p>
  <img src="../../assets/images/chapter-5/DespliegueMelgarejo/VariablesEntornoBackend.png" alt="Variables de entorno" width="640" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>


### 5.2.6.6. Repositorio y commits

El historial de commits de la rama `main`, tal como está publicado en GitHub, es el siguiente:

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr><td><b>Repository</b></td><td><b>Branch</b></td><td><b>Commit Id</b></td><td><b>Commit Message</b></td><td><b>Committed on (Date)</b></td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>fd3bfdb</td><td>Initial commit</td><td>05/09/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>0222e59</td><td>chore: add initial project structure and files</td><td>05/09/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>f77dfef</td><td>feat: add coupon redemption feature</td><td>17/09/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>13728a1</td><td>build: add checkstyle, jacoco and sonar maven plugins</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>d0e6e94</td><td>test(commerce): cover cart, order, stripe, catalog and coupon redemption rules</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>78aaf5d</td><td>test(iam): cover role management, admin seed and ACL facade</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>c60f963</td><td>test(gamification): cover mission/badge rules, coin spending and event handler</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>1c9d1ed</td><td>test(simulation): cover attempt registration, simulation CRUD and domain events</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>1aa5aaf</td><td>test(analytics): cover summary, progress and certificate issuing rules</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>2e17510</td><td>test(profiles): cover profile commands, queries and ACL facade</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>15f374c</td><td>test(shared): cover Result type and global exception handler branches</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>68b41bc</td><td>build: add cucumber dependencies for BDD acceptance tests</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>0d82694</td><td>test(bdd): add Gherkin acceptance features and Cucumber step definitions</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>cf31022</td><td>test(api): add Karate integration tests for the REST API</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>837a2c2</td><td>ci(jenkins): add pipeline, Jenkins/SonarQube Docker setup and job as code</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>3f287c5</td><td>fix(ci): use SonarQube Community Build and allow local checkout in Jenkins</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>b327a39</td><td>chore(ci): allow anonymous read access to the local Jenkins and SonarQube dashboards</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>ad364ca</td><td>test: tag features with the new US57-US61 story ids</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>dd3c9dc</td><td>docs(api-tests): align the story ids with the product backlog</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>dd3a16e</td><td>ci: limit the pipeline to continuous integration</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>5dfcbdb</td><td>fix: answer 400 for malformed JSON, restrict CORS and clear Sonar findings</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>c95ca77</td><td>test: cover the 400 for malformed JSON and the CORS rules</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>d5faeed</td><td>fix: type the new unreadable-body handler response (java:S1452)</td><td>08/10/2026</td></tr>
    </tbody>
</table>
