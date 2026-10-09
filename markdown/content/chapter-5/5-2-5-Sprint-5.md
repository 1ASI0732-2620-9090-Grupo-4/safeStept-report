<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-5/capitulo-5.png" alt="Capitulo 5" />
</div>

<br>
<br>

# 5.2. Landing Page, Services & Applications Implementation.

## 5.2.5. Sprint 5

### 5.2.5.1. Sprint Planning 5

En esta sección se especifican los aspectos principales del Sprint Planning Meeting correspondiente al Sprint 5. Con el Sprint 4 el producto quedó funcional de punta a punta (autenticación, pagos y backend desplegado), por lo que el quinto Sprint se dedica a **demostrar y proteger esa calidad**: construir las suites de pruebas unitarias, de integración y de comportamiento (BDD), medir la cobertura y el estilo del código, y automatizar la verificación en un pipeline de integración continua con Jenkins y SonarQube. En paralelo se incorporan al backlog y se completan las historias de usuario del panel de administración y del canje de cupones con SafeCoins, que son los flujos nuevos que las pruebas deben cubrir.

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr><td><b>Sprint #</b></td><td>Sprint 5</td></tr>
        <tr><td colspan="2"><b>Sprint Planning Background</b></td></tr>
        <tr><td>Date</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
        <tr><td>Time</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
        <tr><td>Location</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
        <tr><td>Prepared By</td><td>Melgarejo Quiroz, Josep Eliu</td></tr>
        <tr><td>Attendees (to planning meeting)</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
        <tr><td>Sprint n - 1 Review Summary</td><td>Sprint 4 completado: autenticación real con JWT, registro, perfil autenticado, protección de rutas, pago con Stripe y base de datos PostgreSQL desplegada, con el frontend conectado al backend real. Quedó pendiente respaldar esos flujos con pruebas automatizadas y un pipeline que las ejecute.</td></tr>
        <tr><td>Sprint n - 1 Retrospective Summary</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
        <tr><td colspan="2"><b>Sprint Goal &amp; User Stories</b></td></tr>
        <tr><td>Sprint 5 Goal</td><td>Nuestro enfoque es verificar de forma automática el comportamiento de SafeStep y entregar cada cambio a través de un pipeline repetible. Creemos que esto da confianza para seguir evolucionando el producto sin romper lo que ya funciona. La meta se considera cumplida si las suites unitarias, BDD y de API aprueban, la cobertura del código de aplicación supera el 80 % y el pipeline de Jenkins termina en éxito con el análisis de SonarQube.</td></tr>
        <tr><td>Sprint 5 Velocity</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b> (la suma de los puntos de las historias incluidas es 59 SP; el equipo debe confirmar si coincide con el velocity acordado).</td></tr>
        <tr><td>Sum of Story Points</td><td>Total: 59 SP - Panel de administración y roles (8 SP), cupones canjeables (12 SP), pruebas unitarias y umbral de cobertura (13 SP), BDD (8 SP), pruebas de API (5 SP) e integración continua (13 SP).</td></tr>
    </tbody>
</table>

**User Stories y Technical Stories incluidos en el Sprint 5:**

| ID | User Story / Technical Story | Prioridad | Story Points |
| -- | ---------------------------- | --------- | ------------ |
| US57 | Como administrador, quiero ver un panel con accesos y conteos de los módulos gestionables para administrar la plataforma desde un solo lugar. | Should Have | 3 |
| US58 | Como administrador, quiero asignar o quitar roles a los usuarios para controlar quién puede gestionar la plataforma. | Should Have | 5 |
| US59 | Como usuario, quiero canjear un cupón del catálogo con mis SafeCoins para obtener un descuento en mi próxima compra. | Must Have | 5 |
| US60 | Como usuario, quiero elegir uno de mis cupones canjeados al pagar para que el total a pagar incluya el descuento. | Must Have | 5 |
| US61 | Como usuario, quiero ver mis cupones canjeados separados en disponibles y usados para saber cuáles puedo aplicar. | Should Have | 2 |
| TS25 | Como developer, quiero cubrir con pruebas unitarias las entidades de dominio y los servicios de aplicación para detectar regresiones sin levantar el sistema completo. | Must Have | 8 |
| TS26 | Como developer, quiero medir la cobertura con JaCoCo y exigir un mínimo de 80 % para evitar que el código de negocio quede sin verificar. | Must Have | 3 |
| TS27 | Como developer, quiero analizar el estilo del código con Checkstyle y las reglas de Google para tener una referencia objetiva de calidad. | Could Have | 2 |
| TS28 | Como developer, quiero automatizar los criterios de aceptación en archivos Gherkin con Cucumber para verificar el comportamiento esperado de las historias. | Must Have | 8 |
| TS29 | Como developer, quiero probar los endpoints REST con Karate para validar contratos, estados HTTP y reglas de seguridad de extremo a extremo. | Must Have | 5 |
| TS30 | Como developer, quiero un Jenkinsfile que compile, valide y pruebe el backend en cada ejecución para recibir retroalimentación automática. | Must Have | 8 |
| TS31 | Como developer, quiero enviar el análisis a SonarQube y detener el pipeline si no supera el Quality Gate para evitar que código con defectos avance. | Should Have | 5 |

**Distribución de Trabajo por Componente:**

- **Panel de administración y roles (US57, US58):** 8 Story Points en backend (usuarios, roles y reglas de protección) y frontend.
- **Cupones canjeables (US59, US60, US61):** 12 Story Points: rediseño del cupón, agregado `RedeemedCoupon`, gasto de SafeCoins entre bounded contexts, descuento en la orden y página de canje.
- **Pruebas unitarias y cobertura (TS25, TS26, TS27):** 13 Story Points.
- **BDD y API (TS28, TS29):** 13 Story Points.
- **Integración continua (TS30, TS31):** 13 Story Points.

### 5.2.5.2. Aspect Leaders and Collaborators

En esta sección se elabora el artefacto Leadership-and-Collaboration Matrix (LACX) del Sprint 5. Los aspectos del Sprint son:

1. **Admin & Coupons:** panel de administración, roles y canje de cupones (backend y frontend).
2. **Unit Tests & Coverage:** pruebas unitarias, JaCoCo y Checkstyle.
3. **BDD & API Tests:** pruebas Cucumber y Karate.
4. **CI Pipeline:** Jenkins y SonarQube.
5. **Documentation:** evidencias, reportes y capítulos del informe.

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr><td><b>Team Member (Last Name, First Name)</b></td><td><b>GitHub Username</b></td><td><b>Admin &amp; Coupons / L or C</b></td><td><b>Unit Tests &amp; Coverage / L or C</b></td><td><b>BDD &amp; API Tests / L or C</b></td><td><b>CI Pipeline / L or C</b></td><td><b>Documentation / L or C</b></td></tr>
        <tr><td>Ayala Fernandez, Jorge Brayan</td><td>jorgeayaladev</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
        <tr><td>Sanchez Espinoza, Mathias Enrique</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
        <tr><td>Melgarejo Quiroz, Josep Eliu</td><td>Melga1502</td><td>L</td><td>L</td><td>L</td><td>L</td><td>L</td></tr>
        <tr><td>Flores Eusebio, Angel Thyago</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
    </tbody>
</table>

### 5.2.5.3. Sprint Backlog 5

El Sprint Backlog 5 resume las tareas de cada User Story y Technical Story. Las tasks se separaron por historia para mantener la trazabilidad entre el Product Backlog (3.3), la matriz LACX y el trabajo operativo realizado. Las horas de estimación no se registraron durante el Sprint.

**Trello Board:** el equipo utiliza un Trello Board con las listas estándar de Scrum: "Sprint Goal", "To Do", "In Progress", "To Review" y "Done".

**URL pública del Trello Board del Sprint 5:** <b>[POR COMPLETAR POR EL EQUIPO]</b>

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr><td><b>Sprint #</b></td><td colspan="7">Sprint 5</td></tr>
        <tr><td colspan="2">User Story / Technical Story</td><td colspan="6">Work-Item / Task</td></tr>
        <tr><td>Id</td><td>Title</td><td>Id</td><td>Title</td><td>Description</td><td>Estimation (Hours)</td><td>Assigned to</td><td>Status (To-do / In-Process / To-Review / Done)</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>User Story US57 - Visualizar el panel de administración</b></td></tr>
        <tr><td>US57</td><td>Visualizar el panel de administración</td><td>T501</td><td>Panel de administración</td><td>Crear la página /app/admin con una tarjeta de conteo por módulo y la ruta protegida con adminGuard.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>User Story US58 - Gestionar roles de los usuarios</b></td></tr>
        <tr><td>US58</td><td>Gestionar roles de los usuarios</td><td>T502</td><td>Endpoints de usuarios y roles</td><td>Exponer GET /users, GET /roles y PUT /users/{id}/roles con las reglas: no quitarse el propio rol de administrador y conservar al menos un administrador.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr><td>US58</td><td>Gestionar roles de los usuarios</td><td>T503</td><td>Gestión de roles en el frontend</td><td>Listado de usuarios y formulario de roles en el módulo identity-access.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>User Story US59 - Canjear un cupón con SafeCoins</b></td></tr>
        <tr><td>US59</td><td>Canjear un cupón con SafeCoins</td><td>T504</td><td>Rediseño del cupón</td><td>Reemplazar el campo discount por type, discountPercentage y minPurchaseAmount, con validaciones.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr><td>US59</td><td>Canjear un cupón con SafeCoins</td><td>T505</td><td>Canje de cupones</td><td>Crear el agregado RedeemedCoupon, el endpoint POST /commerce/coupons/{id}/redeem y el gasto de SafeCoins por la fachada ACL de gamificación (PlayerProgress.spendCoins, CoinSpend).</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr><td>US59</td><td>Canjear un cupón con SafeCoins</td><td>T506</td><td>Página de canje</td><td>Crear /app/store/coupons con el catálogo de cupones y el botón de canje.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>User Story US60 - Aplicar un cupón canjeado en el checkout</b></td></tr>
        <tr><td>US60</td><td>Aplicar un cupón canjeado en el checkout</td><td>T507</td><td>Descuento en la orden</td><td>Agregar Order.finalTotal() y el descuento aplicado; cobrar el total final en Stripe.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr><td>US60</td><td>Aplicar un cupón canjeado en el checkout</td><td>T508</td><td>Selector de cupones en el checkout</td><td>Reemplazar el campo de texto por la lista de cupones disponibles, deshabilitando los que no cumplen el monto mínimo.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr><td>US60</td><td>Aplicar un cupón canjeado en el checkout</td><td>T509</td><td>Liberación del cupón</td><td>Devolver el cupón a disponible cuando el pago de Stripe falla o se cancela.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>User Story US61 - Consultar mis cupones canjeados</b></td></tr>
        <tr><td>US61</td><td>Consultar mis cupones canjeados</td><td>T510</td><td>Mis cupones</td><td>Exponer GET /commerce/coupons/redeemed/me y mostrar pestañas de disponibles y usados.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>Technical Story TS25 - Pruebas unitarias de entidades y servicios</b></td></tr>
        <tr><td>TS25</td><td>Pruebas unitarias de entidades y servicios</td><td>T511</td><td>Pruebas de commerce, iam y gamification</td><td>Pruebas JUnit/Mockito de agregados, servicios de comandos y consultas, ACL y manejadores de eventos.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr><td>TS25</td><td>Pruebas unitarias de entidades y servicios</td><td>T512</td><td>Pruebas de simulation, analytics, profiles y shared</td><td>Pruebas de intentos, certificados, perfiles, Result y manejador global de excepciones.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>Technical Story TS26 - Umbral de cobertura con JaCoCo</b></td></tr>
        <tr><td>TS26</td><td>Umbral de cobertura con JaCoCo</td><td>T513</td><td>Configurar JaCoCo</td><td>Reporte HTML/XML, regla de 80 % y exclusiones tomadas del proyecto de referencia del curso.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>Technical Story TS27 - Análisis de estilo con Checkstyle</b></td></tr>
        <tr><td>TS27</td><td>Análisis de estilo con Checkstyle</td><td>T514</td><td>Configurar Checkstyle</td><td>Reglas de Google sin modificar, en modo reporte; medir la línea base (8,034 observaciones).</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>Technical Story TS28 - Pruebas de aceptación BDD con Cucumber</b></td></tr>
        <tr><td>TS28</td><td>Pruebas de aceptación BDD con Cucumber</td><td>T515</td><td>Features y steps</td><td>Cinco features Gherkin etiquetados con historias y sus step definitions.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr><td>TS28</td><td>Pruebas de aceptación BDD con Cucumber</td><td>T516</td><td>Infraestructura de BDD</td><td>Contexto de Spring Boot con puerto aleatorio y base H2 aislada, cliente HTTP y fábrica de jugadores.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>Technical Story TS29 - Pruebas de integración con Karate</b></td></tr>
        <tr><td>TS29</td><td>Pruebas de integración con Karate</td><td>T517</td><td>Proyecto `api-tests`</td><td>Cinco features Karate (36 escenarios) contra una API en ejecución, con datos únicos por ejecución.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>Technical Story TS30 - Pipeline de integración continua con Jenkins</b></td></tr>
        <tr><td>TS30</td><td>Pipeline de integración continua con Jenkins</td><td>T518</td><td>Jenkinsfile</td><td>Etapas de compilación, estilo, pruebas, cobertura, SonarQube y empaquetado.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr><td>TS30</td><td>Pipeline de integración continua con Jenkins</td><td>T519</td><td>Jenkins como código</td><td>Imagen de Jenkins con JDK 26 y Maven; plugins.txt, casc.yaml y docker-compose.yml.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr class="story-separator" style="background-color: #eef4ff;"><td colspan="8"><b>Technical Story TS31 - Análisis de calidad con SonarQube y Quality Gate</b></td></tr>
        <tr><td>TS31</td><td>Análisis de calidad con SonarQube y Quality Gate</td><td>T520</td><td>SonarQube y webhook</td><td>Servidor SonarQube, token como credencial de Jenkins, webhook y waitForQualityGate().</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
        <tr><td>TS31</td><td>Análisis de calidad con SonarQube y Quality Gate</td><td>T521</td><td>Corrección de hallazgos</td><td>Responder 400 ante JSON mal formado, restringir CORS a orígenes configurables y resolver los bugs java:S2184 y java:S2637 de SonarQube, con pruebas nuevas.</td><td>—</td><td>Melgarejo Quiroz, Josep Eliu</td><td>Done</td></tr>
    </tbody>
</table>

### 5.2.5.4. Development Evidence for Sprint Review

En esta sección se presentan los avances de implementación del Sprint 5. Todo el trabajo se integró mediante GitFlow: cada pieza se desarrolló en una rama `feature/*`, se confirmó con Conventional Commits y se fusionó a `develop` con `--no-ff`.

**Resumen de Avances Implementados:**

- **Panel de administración y roles (backend y frontend):** panel `/app/admin` con conteos por módulo, listado de usuarios y roles, y asignación de roles con las reglas de protección del administrador.
- **Cupones canjeables (backend y frontend):** rediseño del cupón en dos tipos (descuento simple y descuento con compra mínima), canje con SafeCoins mediante la fachada ACL de gamificación, descuento aplicado a la orden y cobrado por Stripe, y liberación del cupón si el pago falla.
- **Suites de pruebas:** 205 pruebas unitarias y de integración, 33 escenarios BDD y 36 escenarios de API (ver 5.2.5.5 y 6.1).
- **Calidad:** cobertura de 93.8 % sobre las clases medidas (antes 44.3 %), reporte de Checkstyle y análisis de SonarQube con el Quality Gate aprobado (ver 6.1 y 7.1).
- **Hallazgos corregidos:** la API responde 400 ante un JSON mal formado, CORS ya no admite cualquier origen y se resolvieron los bugs que reportó SonarQube; solo queda abierta la regla de CSRF, que es una decisión de diseño (ver 7.1).
- **Pipeline de integración continua:** `Jenkinsfile` con siete etapas, y Jenkins y SonarQube configurados como código (ver 7.1).

**Commits Realizados (desarrollo de producto):**

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr><td><b>Repository</b></td><td><b>Branch</b></td><td><b>Commit Id</b></td><td><b>Commit Message</b></td><td><b>Commit Message Body</b></td><td><b>Committed on (Date)</b></td></tr>
        <tr><td>safestept-backend</td><td>main</td><td>f77dfef</td><td>feat: add coupon redemption feature</td><td>—</td><td>17/09/2026</td></tr>
        <tr><td>safestept-backend</td><td>develop</td><td>5dfcbdb</td><td>fix: answer 400 for malformed JSON, restrict CORS and clear Sonar findings</td><td>- GlobalExceptionHandler maps unreadable request bodies to a 400 validation error without leaking the parser message, and logs unexpected exceptions. - CORS no longer allows every origin: the allowed origins come from safestep.cors.allowed-origins (SAFESTEP_CORS_ALLOWED_ORIGINS), defaulting to the local frontend and the published frontends. - Discount factor uses long arithmetic (java:S2184). - ErrorResponseAssembler marks the nullable lookup as @Nullable (java:S2637).</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>develop</td><td>d5faeed</td><td>fix: type the new unreadable-body handler response (java:S1452)</td><td>—</td><td>08/10/2026</td></tr>
    </tbody>
</table>

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr><td><b>Repository</b></td><td><b>Branch</b></td><td><b>Commit Id</b></td><td><b>Commit Message</b></td><td><b>Commit Message Body</b></td><td><b>Committed on (Date)</b></td></tr>
        <tr><td>safestept-frontend</td><td>main</td><td>be56a72</td><td>feat: add admin and coupon redemption features</td><td>—</td><td>17/09/2026</td></tr>
    </tbody>
</table>

### 5.2.5.5. Testing Suite Evidence for Sprint Review

En esta sección se presenta el conjunto de Unit Tests, Integration Tests y Acceptance Tests automatizados que verifican los User Stories del Sprint. Los resultados completos, la cobertura y los reportes se analizan en 6.1; aquí se incluye la relación de pruebas diseñadas.

**Repositorios de los proyectos de testing:**

| Suite | Repositorio | Ruta |
|-------|-------------|------|
| Pruebas unitarias y BDD del backend | [1ASI0732-2620-9090-Grupo-4/safestept-backend](https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-backend) | `src/test` |
| Pruebas de integración de API (Karate) | [1ASI0732-2620-9090-Grupo-4/safestept-backend](https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-backend) | `api-tests` |

**Unit Tests.** Las 205 pruebas unitarias y de integración con contexto de Spring se relacionan con las siguientes clases y comportamientos:

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr><td><b>Bounded context</b></td><td><b>Clase de prueba</b></td><td><b>Clase(s) bajo prueba</b></td><td><b>Pruebas</b></td><td><b>Comportamientos verificados</b></td></tr>
        <tr><td>analytics</td><td><code>CertificateCommandServiceImplTest</code></td><td><code>CertificateCommandServiceImpl</code></td><td align='center'>4</td><td>• issue should refuse scores below 80<br>• issue should not issue the same certificate twice<br>• issue should grade the achievement level from the score<br>• issue should build a sanitized verification code and public urls</td></tr>
        <tr><td>analytics</td><td><code>AnalyticsQueryServiceImplTest</code></td><td><code>AnalyticsQueryServiceImpl</code></td><td align='center'>4</td><td>• handle(GetSummaryQuery) should build metrics, skills and mistakes from real attempts<br>• handle(GetSummaryQuery) should return zeroed metrics when the user has no attempts<br>• handle(GetProgressQuery) should classify each simulation by its best score<br>• handle(GetCertificatesQuery) should delegate to the certificate repository</td></tr>
        <tr><td>commerce</td><td><code>CommerceCartAndOrderCommandServiceTest</code></td><td><code>CommerceCartAndOrderCommandService</code></td><td align='center'>15</td><td>• handle(AddCartItemCommand) should add a valid item to the cart<br>• handle(AddCartItemCommand) should reject unknown products and quantities above the stock<br>• handle(UpdateCartItemCommand) should change the quantity of an existing item<br>• handle(UpdateCartItemCommand) should reject missing items and quantities above the stock<br>• deleteCartItem should remove the item only when it belongs to the user<br>• handle(CreateOrderCommand) should fail when the cart is empty<br>• handle(CreateOrderCommand) should fail when a cart product no longer exists or lacks stock<br>• handle(CreateOrderCommand) should create the order, reduce stock and empty the cart<br>• handle(CreateOrderCommand) should reject unknown, foreign or already used coupons<br>• handle(CreateStripeCheckoutSessionCommand) should reject paid orders and Stripe failures<br>• handle(ConfirmStripePaymentCommand) should mark the order as paid when Stripe confirms<br>• handle(ConfirmStripePaymentCommand) should reject foreign orders, other sessions and unpaid sessions<br>• handle(CancelStripePaymentCommand) should fail the payment and release the redeemed coupon<br>• handle(CaptureStripeWebhookCommand) should react to completed and expired sessions<br>• handle(RedeemCouponCommand) should fail for an unknown coupon without touching the wallet</td></tr>
        <tr><td>commerce</td><td><code>CommerceCatalogCommandServiceTest</code></td><td><code>CommerceCatalogCommandService</code></td><td align='center'>8</td><td>• handle(CreateProductCommand) should save a new product and require an id<br>• handle(UpdateProductCommand) should reject blank and unknown product ids<br>• handle(DeleteProductCommand) should delete an existing product<br>• handle(CreateCouponCommand) should save valid simple and minimum-purchase coupons<br>• handle(CreateCouponCommand) should enforce id, percentage range, minimum purchase and uniqueness<br>• handle(UpdateCouponCommand) should keep the stored id and apply the new discount<br>• handle(UpdateCouponCommand) should reject blank, unknown, negative-cost and invalid coupons<br>• handle(DeleteCouponCommand) should delete existing coupons and report unknown ones</td></tr>
        <tr><td>commerce</td><td><code>CommerceCouponRedemptionCommandServiceTest</code></td><td><code>CommerceCouponRedemptionCommandService</code></td><td align='center'>5</td><td>—</td></tr>
        <tr><td>commerce</td><td><code>CommerceStripeCommandServiceTest</code></td><td><code>CommerceStripeCommandService</code></td><td align='center'>9</td><td>—</td></tr>
        <tr><td>commerce</td><td><code>CommerceQueryServiceImplTest</code></td><td><code>CommerceQueryServiceImpl</code></td><td align='center'>3</td><td>• catalog queries should return what the repositories hold<br>• user scoped queries should filter by username<br>• recommendations should fall back to the global list when the user has none</td></tr>
        <tr><td>commerce</td><td><code>CouponAndRedeemedCouponTest</code></td><td><code>CouponAndRedeemedCoupon</code></td><td align='center'>5</td><td>• Coupon should default to a simple percentage type when none is given<br>• Coupon should keep the minimum purchase only for the minimum-purchase type<br>• RedeemedCoupon should start available and become used once<br>• RedeemedCoupon should become available again when released<br>• RedeemedCoupon should default the type and status when they are missing</td></tr>
        <tr><td>commerce</td><td><code>OrderTest</code></td><td><code>Order</code></td><td align='center'>6</td><td>—</td></tr>
        <tr><td>commerce</td><td><code>ProductTest</code></td><td><code>Product</code></td><td align='center'>1</td><td>—</td></tr>
        <tr><td>commerce</td><td><code>CartAndOrderItemTest</code></td><td><code>CartAndOrderItem</code></td><td align='center'>2</td><td>• CartItem should reject quantities below one at creation and on change<br>• OrderItem should compute its subtotal and reject empty quantities</td></tr>
        <tr><td>commerce</td><td><code>CommerceValueObjectsTest</code></td><td><code>CommerceValueObjects</code></td><td align='center'>4</td><td>• Money should round to two decimals and reject negative amounts<br>• Stock should reject negative quantities<br>• OrderStatus.from should understand English and Spanish labels<br>• lenient enums should fall back to a safe default for unknown values</td></tr>
        <tr><td>commerce</td><td><code>CommerceResourcesValidationTest</code></td><td><code>CommerceResourcesValidation</code></td><td align='center'>3</td><td>—</td></tr>
        <tr><td>commerce</td><td><code>CommerceResourceAssemblerTest</code></td><td><code>CommerceResourceAssembler</code></td><td align='center'>5</td><td>• product mapping should round trip price, stock and tags<br>• coupon mapping should keep type, percentage and minimum purchase<br>• toResource(RedeemedCoupon) should expose status and snapshot data<br>• toResource(CartItem) should map the cart line<br>• toResource(Order) should expose total, discounted total and coupon reference</td></tr>
        <tr><td>gamification</td><td><code>GamificationCommandServiceImplTest</code></td><td><code>GamificationCommandServiceImpl</code></td><td align='center'>13</td><td>—</td></tr>
        <tr><td>gamification</td><td><code>SimulationAttemptCompletedIntegrationEventHandlerTest</code></td><td><code>SimulationAttemptCompletedIntegrationEventHandler</code></td><td align='center'>3</td><td>• on should be idempotent for an attempt that was already rewarded<br>• on should reward a brand new player, record the transaction and unlock the first badge<br>• on should add the reward to the existing player progress</td></tr>
        <tr><td>gamification</td><td><code>GamificationContextFacadeImplTest</code></td><td><code>GamificationContextFacadeImpl</code></td><td align='center'>5</td><td>• progressByUsername should expose the stored progress as a snapshot<br>• progressByUsername should default to level one for unknown players<br>• spendCoins should debit the balance and record the spend when there are enough coins<br>• spendCoins should refuse and persist nothing when the balance is insufficient<br>• spendCoins should refuse non-positive amounts and unknown players</td></tr>
        <tr><td>gamification</td><td><code>GamificationQueryServiceImplTest</code></td><td><code>GamificationQueryServiceImpl</code></td><td align='center'>4</td><td>• handle(GetSummaryQuery) should return the stored progress when it exists<br>• handle(GetSummaryQuery) should return a level one default for unknown players<br>• list queries should delegate to their repositories<br>• achievement queries should delegate to the achievement repository</td></tr>
        <tr><td>gamification</td><td><code>CoinSpendAndValueObjectsTest</code></td><td><code>CoinSpendAndValueObjects</code></td><td align='center'>4</td><td>• CoinSpend should keep the coupon and amount it was created with<br>• PlayerProgress should reject non-positive and excessive coin spends<br>• PlayerProgress should normalise negative inputs and reset the streak after a gap<br>• gamification value objects should validate their ranges</td></tr>
        <tr><td>gamification</td><td><code>PlayerProgressTest</code></td><td><code>PlayerProgress</code></td><td align='center'>3</td><td>—</td></tr>
        <tr><td>gamification</td><td><code>GamificationResourceAssemblerTest</code></td><td><code>GamificationResourceAssembler</code></td><td align='center'>5</td><td>• toResource(PlayerProgress) should map the summary fields<br>• toResource(PlayerProgress, rank) should build a leaderboard entry<br>• mission mapping should round trip cadence, rewards and progress<br>• badge mapping should round trip rarity and unlocked flag<br>• toResource(CoinTransaction) should always flag the transaction as successful</td></tr>
        <tr><td>iam</td><td><code>AdminSeedCommandServiceImplTest</code></td><td><code>AdminSeedCommandServiceImpl</code></td><td align='center'>6</td><td>• handle should skip the seed when the credentials are not configured<br>• handle should skip the seed when an admin already exists<br>• handle should skip the seed when the username belongs to a non-admin user<br>• handle should skip the seed when ROLE_ADMIN has not been seeded yet<br>• handle should create the bootstrap admin with an encoded password<br>• handle should never let a persistence failure stop the application</td></tr>
        <tr><td>iam</td><td><code>UserCommandServiceImplTest</code></td><td><code>UserCommandServiceImpl</code></td><td align='center'>13</td><td>• handle(SignInCommand) should reject an unknown username<br>• handle(SignInCommand) should reject a wrong password<br>• handle(SignInCommand) should reject disabled accounts<br>• handle(SignUpCommand) should reject a duplicated username<br>• handle(SignUpCommand) should fail when a requested role does not exist<br>• handle(UpdateUserStatusCommand) should update the account flags<br>• handle(UpdateUserStatusCommand) should fail for an unknown user<br>• handle(UpdateUserRolesCommand) should promote a regular user to admin<br>• handle(UpdateUserRolesCommand) should fail for an unknown user<br>• handle(UpdateUserRolesCommand) should fail when a role name has no stored role<br>• handle(UpdateUserRolesCommand) should forbid an admin from removing their own admin role<br>• handle(UpdateUserRolesCommand) should keep at least one admin in the system<br>• handle(UpdateUserRolesCommand) should demote an admin when another admin remains</td></tr>
        <tr><td>iam</td><td><code>UserTest</code></td><td><code>User</code></td><td align='center'>6</td><td>• a new user should start enabled with every account flag open<br>• replaceRoles should swap the whole role set<br>• replaceRoles should fall back to the default role when given none<br>• updateStatus should set the four account flags<br>• addRole and addRoles should accumulate roles without duplicates<br>• Role.toRoleFromName should reject names that are not a known role</td></tr>
        <tr><td>iam</td><td><code>IamContextFacadeTest</code></td><td><code>IamContextFacade</code></td><td align='center'>5</td><td>• createUser(username, password) should sign up with the default role and return the id<br>• createUser should return 0 when the sign up fails<br>• createUser(username, password, roles) should treat null roles as an empty list<br>• fetchUserIdByUsername should return the id or 0 when the user is missing<br>• fetchUsernameByUserId should return the username or an empty string</td></tr>
        <tr><td>iam</td><td><code>IamSecurityIntegrationTest</code></td><td><code>IamSecurityIntegration</code></td><td align='center'>9</td><td>—</td></tr>
        <tr><td>iam</td><td><code>AuthenticationResourcesValidationTest</code></td><td><code>AuthenticationResourcesValidation</code></td><td align='center'>2</td><td>—</td></tr>
        <tr><td>profiles</td><td><code>ProfileCommandServiceImplTest</code></td><td><code>ProfileCommandServiceImpl</code></td><td align='center'>7</td><td>• handle(CreateProfileCommand) should save a new profile<br>• handle(CreateProfileCommand) should report a conflict for a duplicated email<br>• handle(CreateProfileCommand) should map invalid data to a validation error<br>• handle(CreateProfileCommand) should map persistence failures to an unexpected error<br>• handle(UpdateProfileCommand) should update the stored profile<br>• handle(UpdateProfileCommand) should fail for an unknown profile<br>• handle(UpdateProfileCommand) should reject invalid data without saving</td></tr>
        <tr><td>profiles</td><td><code>ProfileQueryServiceImplTest</code></td><td><code>ProfileQueryServiceImpl</code></td><td align='center'>2</td><td>• queries should delegate to the profile repository<br>• ProfilesContextFacadeImpl should expose profile ids to other contexts</td></tr>
        <tr><td>(aplicación)</td><td><code>SafeStepPlatformApplicationTests</code></td><td><code>SafeStepPlatformApplicationTests</code></td><td align='center'>1</td><td>—</td></tr>
        <tr><td>shared</td><td><code>ResultTest</code></td><td><code>Result</code></td><td align='center'>7</td><td>• success and failure factories should report their state<br>• toOptional should only contain the value of a success<br>• getOrElse should fall back to the default for failures<br>• map should transform successes and keep failures untouched<br>• flatMap should chain successes and short-circuit failures<br>• mapError should translate the error of failures only<br>• recover should replace a failure and leave a success alone</td></tr>
        <tr><td>shared</td><td><code>LocaleConfigurationTest</code></td><td><code>LocaleConfiguration</code></td><td align='center'>1</td><td>—</td></tr>
        <tr><td>shared</td><td><code>ApiRobustnessIntegrationTest</code></td><td><code>ApiRobustnessIntegration</code></td><td align='center'>3</td><td>• A malformed JSON body should be answered with 400 and a validation error, not with 500<br>• A preflight request from an allowed origin should receive the CORS headers<br>• A preflight request from a foreign origin should be rejected</td></tr>
        <tr><td>shared</td><td><code>GlobalExceptionHandlerTest</code></td><td><code>GlobalExceptionHandler</code></td><td align='center'>8</td><td>—</td></tr>
        <tr><td>shared</td><td><code>ErrorResponseAssemblerTest</code></td><td><code>ErrorResponseAssembler</code></td><td align='center'>3</td><td>—</td></tr>
        <tr><td>simulation</td><td><code>SimulationAttemptCommandServiceImplTest</code></td><td><code>SimulationAttemptCommandServiceImpl</code></td><td align='center'>5</td><td>• handle(CreateSimulationAttemptCommand) should fail for an unknown simulation<br>• handle(CreateSimulationAttemptCommand) should store a completed attempt with its errors<br>• handle(CreateSimulationCommand) should reject duplicated slugs and save new simulations<br>• handle(UpdateSimulationCommand) should keep the stored id and reject blank or unknown ids<br>• handle(DeleteSimulationCommand) should delete existing simulations only</td></tr>
        <tr><td>simulation</td><td><code>SimulationCommandServiceImplTest</code></td><td><code>SimulationCommandServiceImpl</code></td><td align='center'>3</td><td>—</td></tr>
        <tr><td>simulation</td><td><code>SimulationDomainTest</code></td><td><code>SimulationDomain</code></td><td align='center'>5</td><td>• markCompleted should publish a completed event carrying the simulation reward<br>• markCompleted should derive accuracy from the score when there are no steps<br>• value objects should validate scores, slugs and rewards<br>• lenient enums should understand Spanish labels and fall back to defaults<br>• MedicalSimulation should default missing collections to empty lists</td></tr>
        <tr><td>simulation</td><td><code>CreateAttemptResourceValidationTest</code></td><td><code>CreateAttemptResourceValidation</code></td><td align='center'>2</td><td>—</td></tr>
        <tr><td>simulation</td><td><code>SimulationResourceAssemblerTest</code></td><td><code>SimulationResourceAssembler</code></td><td align='center'>6</td><td>• toResource(MedicalSimulation) should map every field including steps and suggestions<br>• toSimulation(SimulationResource) should rebuild the aggregate from the resource<br>• toSimulation(SimulationResource) should tolerate null collections<br>• toCommand should map the attempt resource and its errors to a command<br>• toCommand should use an empty error list when the resource has none<br>• toResource(SimulationAttempt) should expose the attempt with lowercase mode</td></tr>
    </tbody>
</table>

**Acceptance Tests (BDD, backend).** Los archivos `.feature` se relacionan con las historias de usuario mediante las etiquetas `@USnn`: `authentication` con US01 y US02; `coupon-redemption` con US42, US59 y US61; `checkout-with-coupon` con US40 y US60; `role-management` con US57 y US58; `simulation-rewards` con US15 y US16. Los pasos están implementados en la carpeta `src/test/java/com/safestep/acceptance/steps`, por ejemplo:

```java
    @Given("an administrator is signed in")
    public void anAdministratorIsSignedIn() {
        var admin = createUser("admin", "ROLE_ADMIN");
        context.userId(admin.getId());
        players.signIn(context, admin.getUsername());
    }
```

**`authentication.feature`**

```gherkin
@authentication @US01 @US02
Feature: Account registration and sign in
  As a visitor of SafeStep
  I want to create an account and sign in
  So that my training progress is saved and protected

  Scenario: A visitor registers a new account
    When a visitor registers with a new username and a valid password
    Then the response status is 201
    And the new account only has the role "ROLE_USER"

  Scenario: A visitor cannot grant themselves the admin role
    When a visitor registers requesting the role "ROLE_ADMIN"
    Then the response status is 201
    And the new account only has the role "ROLE_USER"

  Scenario: A registered user signs in with valid credentials
    Given a registered user
    When the user signs in with the right password
    Then the response status is 200
    And the response contains an access token

  Scenario: A user cannot register the same username twice
    Given a registered user
    When a visitor registers with the username of the registered user
    Then the response status is 409

  Scenario Outline: Invalid registration data is rejected
    When a visitor registers with the username "<username>" and the password "<password>"
    Then the response status is 400

    Examples:
      | username | password      |
      | ab       | SecurePass1!  |
      | valid    | short         |

  Scenario Outline: A registered user cannot sign in with invalid credentials
    Given a registered user
    When the user signs in with the password "<password>"
    Then the response status is 400

    Examples:
      | password      |
      | WrongPass123! |
      | short         |
```

**`coupon-redemption.feature`**

```gherkin
@coupons @US42 @US59 @US61
Feature: Redeem SafeCoins for store coupons
  As a player who earns SafeCoins by training
  I want to exchange my SafeCoins for discount coupons
  So that I pay less when I buy emergency products

  Background:
    Given a signed-in player with 500 SafeCoins

  Scenario: A player redeems a coupon they can afford
    When the player redeems the coupon "cpn-5"
    Then the response status is 201
    And the player has 350 SafeCoins left
    And the coupon "cpn-5" is listed as available in the player's coupons

  Scenario: A player cannot redeem a coupon that costs more than their balance
    When the player redeems the coupon "cpn-15"
    Then the response status is 422
    And the response contains the error code "BUSINESS_RULE_VIOLATION"
    And the player has 500 SafeCoins left
    And the player has no redeemed coupons

  Scenario: A player cannot redeem a coupon that does not exist
    When the player redeems the coupon "cpn-ghost"
    Then the response status is 404

  Scenario: An anonymous visitor cannot redeem coupons
    When an anonymous visitor redeems the coupon "cpn-5"
    Then the response status is 401

  Scenario Outline: Every catalogue coupon is charged at its published price
    When the player redeems the coupon "<coupon>"
    Then the response status is 201
    And the player has <remaining> SafeCoins left
    And the redeemed coupon gives <discount> percent off

    Examples:
      | coupon     | remaining | discount |
      | cpn-5      | 350       | 5        |
      | cpn-10     | 150       | 10       |
      | cpn-min-5  | 380       | 5        |
      | cpn-min-10 | 200       | 10       |
```

**`checkout-with-coupon.feature`**

```gherkin
@checkout @US40 @US60
Feature: Use a redeemed coupon at checkout
  As a player who redeemed a discount coupon
  I want the discount applied when I create my order
  So that I pay the discounted price for the products in my cart

  Background:
    Given a signed-in player with 1000 SafeCoins

  Scenario: A redeemed coupon discounts the whole order
    Given the player has redeemed the coupon "cpn-10"
    And the cart contains 1 unit of the product "mochila-emergencia"
    When the player creates an order using the redeemed coupon
    Then the response status is 201
    And the order total is 159.90 and the final total is 143.91
    And the redeemed coupon is no longer available

  Scenario: A minimum purchase coupon is rejected below its minimum
    Given the player has redeemed the coupon "cpn-min-15"
    And the cart contains 1 unit of the product "mochila-emergencia"
    When the player creates an order using the redeemed coupon
    Then the response status is 422
    And the redeemed coupon is still available

  Scenario: A minimum purchase coupon is accepted once the minimum is reached
    Given the player has redeemed the coupon "cpn-min-15"
    And the cart contains 2 units of the product "mochila-emergencia"
    When the player creates an order using the redeemed coupon
    Then the response status is 201
    And the order total is 319.80 and the final total is 271.83

  Scenario: A coupon cannot be used twice
    Given the player has redeemed the coupon "cpn-5"
    And the cart contains 1 unit of the product "mochila-emergencia"
    And the player creates an order using the redeemed coupon
    And the cart contains 1 unit of the product "mochila-emergencia"
    When the player creates an order using the redeemed coupon
    Then the response status is 422

  Scenario: An order without a coupon charges the full price
    Given the cart contains 1 unit of the product "mascarilla-rcp"
    When the player creates an order without a coupon
    Then the response status is 201
    And the order total is 24.90 and the final total is 24.90

  Scenario: A player cannot create an order with an empty cart
    When the player creates an order without a coupon
    Then the response status is 422
```

**`role-management.feature`**

```gherkin
@admin @roles @US57 @US58
Feature: Role management by administrators
  As an administrator of SafeStep
  I want to assign roles to users from the admin dashboard
  So that only trusted people can manage the platform data

  Background:
    Given an administrator is signed in
    And a regular player exists

  Scenario: An administrator grants the instructor role
    When the administrator assigns the roles "ROLE_USER,ROLE_INSTRUCTOR" to the regular player
    Then the response status is 200
    And the regular player has the roles "ROLE_USER,ROLE_INSTRUCTOR"

  Scenario: An administrator promotes a player to administrator
    When the administrator assigns the roles "ROLE_ADMIN" to the regular player
    Then the response status is 200
    And the regular player has the roles "ROLE_ADMIN"

  Scenario: A regular player cannot manage roles
    When the regular player tries to assign the roles "ROLE_ADMIN" to themselves
    Then the response status is 403

  Scenario: An anonymous visitor cannot list the users
    When an anonymous visitor lists the users
    Then the response status is 401

  Scenario: An administrator cannot remove their own administrator role
    Given another administrator exists
    When the administrator removes their own administrator role
    Then the response status is 422
    And the response contains the error code "BUSINESS_RULE_VIOLATION"

  Scenario: An administrator cannot assign a role that does not exist
    When the administrator assigns the roles "ROLE_ROOT" to the regular player
    Then the response status is 400
```

**`simulation-rewards.feature`**

```gherkin
@gamification @simulation @US15 @US16
Feature: Earn SafeCoins and XP by completing simulations
  As a player training first aid
  I want to be rewarded when I complete a medical simulation
  So that I stay motivated and can later exchange coins for coupons

  Scenario: Completing a simulation rewards the player with coins and XP
    Given a signed-in player with no SafeCoins
    When the player completes the simulation "rcp-basico" with a score of 90
    Then the response status is 201
    And the player's summary shows 101 SafeCoins and 420 XP

  Scenario: Completing a simulation counts it in the player's summary
    Given a signed-in player with no SafeCoins
    When the player completes the simulation "rcp-basico" with a score of 80
    Then the player's summary shows 1 completed simulation

  Scenario: A player cannot complete a simulation that does not exist
    Given a signed-in player with no SafeCoins
    When the player completes the simulation "ghost-simulation" with a score of 90
    Then the response status is 404

  Scenario Outline: An attempt with an out of range score is rejected
    Given a signed-in player with no SafeCoins
    When the player completes the simulation "rcp-basico" with a score of <score>
    Then the response status is 400

    Examples:
      | score |
      | -1    |
      | 101   |
```


**Integration Tests (API, Karate).** Cubren US01, US02 (autenticación), US57 y US58 (autorización y roles), US30 y US31 (catálogos), US15, US40, US59 y US60 (flujo de cupones) y US15 y US16 (recompensas).

**`authentication/authentication.feature`**

```gherkin
@authentication @US01 @US02
Feature: Authentication API (/api/v1/authentication)

  Background:
    * url karate.properties['api.baseUrl']

  # Data-driven: every record of users-batch.json becomes one scenario execution.
  # A random suffix keeps the suite repeatable against a database that already holds earlier runs.
  Scenario Outline: A visitor registers - <username>
    * def uniqueUsername = '<username>-' + java.util.UUID.randomUUID().toString().substring(0, 6)
    Given path 'api/v1/authentication/sign-up'
    And request { username: '#(uniqueUsername)', password: '<password>' }
    When method post
    Then status 201
    And match response.id == '#number'
    And match response.username == uniqueUsername
    And match response.roles == ['ROLE_USER']

    Examples:
      | read('classpath:com/safestep/apitests/authentication/data/users-batch.json') |

  Scenario: Public registration never grants the admin role
    * def username = 'karate-sneaky-' + java.util.UUID.randomUUID().toString().substring(0, 8)
    Given path 'api/v1/authentication/sign-up'
    And request { username: '#(username)', password: 'SecurePass123!', roles: ['ROLE_ADMIN'] }
    When method post
    Then status 201
    And match response.roles == ['ROLE_USER']

  Scenario: A registered user signs in and receives both tokens
    * def player = call read('classpath:com/safestep/apitests/helpers/register-and-sign-in.feature')
    Given path 'api/v1/authentication/sign-in'
    And request { username: '#(player.username)', password: '#(player.password)' }
    When method post
    Then status 200
    And match response.token == '#string'
    And match response.refreshToken == '#string'
    And match response.roles contains 'ROLE_USER'

  Scenario: A refresh token can only be used once
    * def player = call read('classpath:com/safestep/apitests/helpers/register-and-sign-in.feature')
    Given path 'api/v1/authentication/sign-in'
    And request { username: '#(player.username)', password: '#(player.password)' }
    When method post
    Then status 200
    * def firstRefresh = response.refreshToken
    Given path 'api/v1/authentication/refresh-token'
    And request { refreshToken: '#(firstRefresh)' }
    When method post
    Then status 200
    And match response.refreshToken != firstRefresh
    Given path 'api/v1/authentication/refresh-token'
    And request { refreshToken: '#(firstRefresh)' }
    When method post
    Then status 400

  Scenario: Registering the same username twice is a conflict
    * def player = call read('classpath:com/safestep/apitests/helpers/register-and-sign-in.feature')
    Given path 'api/v1/authentication/sign-up'
    And request { username: '#(player.username)', password: 'SecurePass123!' }
    When method post
    Then status 409

  Scenario Outline: Invalid sign-up data is rejected - <description>
    Given path 'api/v1/authentication/sign-up'
    And request { username: '<username>', password: '<password>' }
    When method post
    Then status 400
    And match response.code == 'VALIDATION_ERROR'

    Examples:
      | description        | username | password     |
      | username too short | ab       | SecurePass1! |
      | password too short | validuser| short        |

  Scenario: A wrong password is refused
    * def player = call read('classpath:com/safestep/apitests/helpers/register-and-sign-in.feature')
    Given path 'api/v1/authentication/sign-in'
    And request { username: '#(player.username)', password: 'WrongPass123!' }
    When method post
    Then status 400
```

**`security/authorization.feature`**

```gherkin
@security @admin @US57 @US58
Feature: Authorization rules of the API

  Background:
    * url karate.properties['api.baseUrl']
    * def admin = call read('classpath:com/safestep/apitests/helpers/sign-in-admin.feature')
    * def player = call read('classpath:com/safestep/apitests/helpers/register-and-sign-in.feature')

  Scenario: Protected endpoints reject anonymous requests
    Given path 'api/v1/commerce/products'
    When method get
    Then status 401

  Scenario Outline: Administrator-only endpoints reject regular players - <method> <path>
    Given path '<path>'
    And header Authorization = 'Bearer ' + player.token
    When method <method>
    Then status 403

    Examples:
      | method | path                                  |
      | get    | api/v1/users                          |
      | get    | api/v1/roles                          |
      | delete | api/v1/commerce/products/not-present  |
      | delete | api/v1/gamification/missions/not-here |
      | delete | api/v1/simulations/not-present        |

  Scenario: An administrator can list users and roles
    Given path 'api/v1/users'
    And header Authorization = 'Bearer ' + admin.token
    When method get
    Then status 200
    And match response == '#[_ > 0]'
    And match response[*].username contains admin.username
    Given path 'api/v1/roles'
    And header Authorization = 'Bearer ' + admin.token
    When method get
    Then status 200
    And match response[*].name contains 'ROLE_ADMIN'

  Scenario: An administrator promotes a player and the change is visible
    Given path 'api/v1/users', player.userId, 'roles'
    And header Authorization = 'Bearer ' + admin.token
    And request { roles: ['ROLE_USER', 'ROLE_INSTRUCTOR'] }
    When method put
    Then status 200
    And match response.roles contains 'ROLE_INSTRUCTOR'
    Given path 'api/v1/users', player.userId
    And header Authorization = 'Bearer ' + admin.token
    When method get
    Then status 200
    And match response.roles contains only ['ROLE_USER', 'ROLE_INSTRUCTOR']

  Scenario: An administrator cannot remove their own administrator role
    Given path 'api/v1/users', admin.userId, 'roles'
    And header Authorization = 'Bearer ' + admin.token
    And request { roles: ['ROLE_USER'] }
    When method put
    Then status 422
    And match response.code == 'BUSINESS_RULE_VIOLATION'
```

**`catalog/catalog.feature`**

```gherkin
@catalog @US30 @US31
Feature: Store catalogue API (/api/v1/commerce)

  Background:
    * url karate.properties['api.baseUrl']
    * def player = call read('classpath:com/safestep/apitests/helpers/register-and-sign-in.feature')

  Scenario: A player lists the product catalogue
    Given path 'api/v1/commerce/products'
    And header Authorization = 'Bearer ' + player.token
    When method get
    Then status 200
    And match response == '#[_ > 29]'
    And match each response contains { id: '#string', name: '#string', price: '#number', stock: '#number' }

  Scenario: A player opens one product
    Given path 'api/v1/commerce/products/mochila-emergencia'
    And header Authorization = 'Bearer ' + player.token
    When method get
    Then status 200
    And match response.id == 'mochila-emergencia'
    And match response.price == 159.9

  Scenario: An unknown product is not found
    Given path 'api/v1/commerce/products/does-not-exist'
    And header Authorization = 'Bearer ' + player.token
    When method get
    Then status 404

  Scenario Outline: Reference catalogues are available - <resource>
    Given path 'api/v1/commerce/<resource>'
    And header Authorization = 'Bearer ' + player.token
    When method get
    Then status 200
    And match response == '#[_ > 0]'

    Examples:
      | resource   |
      | categories |
      | kits       |
      | coupons    |

  Scenario: The coupon catalogue only offers the two supported coupon types
    Given path 'api/v1/commerce/coupons'
    And header Authorization = 'Bearer ' + player.token
    When method get
    Then status 200
    And match each response contains { id: '#string', costCoins: '#number', discountPercentage: '#number' }
    And match each response[*].type == '#regex PERCENTAGE_OFF|PERCENTAGE_OFF_MIN_PURCHASE'
```

**`commerce/coupon-flow.feature`**

```gherkin
@commerce @coupons @US15 @US40 @US59 @US60
Feature: End-to-end SafeCoins coupon flow

  Background:
    * url karate.properties['api.baseUrl']
    * def player = call read('classpath:com/safestep/apitests/helpers/register-and-sign-in.feature')
    * call read('classpath:com/safestep/apitests/helpers/restock-product.feature') { productId: 'mochila-emergencia', stock: 100 }

  Scenario: A player earns SafeCoins, redeems a coupon and uses it in an order
    # 1. Earn coins by completing the same simulation twice (101 SafeCoins each)
    * call read('classpath:com/safestep/apitests/helpers/complete-simulation.feature') { token: '#(player.token)', slug: 'rcp-basico', score: 90 }
    * call read('classpath:com/safestep/apitests/helpers/complete-simulation.feature') { token: '#(player.token)', slug: 'rcp-basico', score: 95 }
    Given path 'api/v1/gamification/summary/me'
    And header Authorization = 'Bearer ' + player.token
    When method get
    Then status 200
    And match response.safeCoins == 202

    # 2. Redeem the 5% coupon, which costs 150 SafeCoins
    Given path 'api/v1/commerce/coupons/cpn-5/redeem'
    And header Authorization = 'Bearer ' + player.token
    And request {}
    When method post
    Then status 201
    And match response.status == 'AVAILABLE'
    And match response.discountPercentage == 5
    * def redeemedId = response.id
    Given path 'api/v1/gamification/summary/me'
    And header Authorization = 'Bearer ' + player.token
    When method get
    Then status 200
    And match response.safeCoins == 52

    # 3. Use the redeemed coupon in an order
    Given path 'api/v1/commerce/cart/items'
    And header Authorization = 'Bearer ' + player.token
    And request { productId: 'mochila-emergencia', quantity: 1 }
    When method post
    Then status 201
    Given path 'api/v1/commerce/orders'
    And header Authorization = 'Bearer ' + player.token
    And request { status: 'PENDING', redeemedCouponExternalId: '#(redeemedId)' }
    When method post
    Then status 201
    And match response.total == 159.9
    And match response.finalTotal == 151.9
    And match response.appliedDiscountPercentage == 5

    # 4. The coupon is now consumed
    Given path 'api/v1/commerce/coupons/redeemed/me'
    And header Authorization = 'Bearer ' + player.token
    When method get
    Then status 200
    And match response[0].status == 'USED'

  Scenario: Redeeming a coupon without enough SafeCoins is refused
    Given path 'api/v1/commerce/coupons/cpn-15/redeem'
    And header Authorization = 'Bearer ' + player.token
    And request {}
    When method post
    Then status 422
    And match response.code == 'BUSINESS_RULE_VIOLATION'

  Scenario: A coupon that does not exist cannot be redeemed
    Given path 'api/v1/commerce/coupons/cpn-ghost/redeem'
    And header Authorization = 'Bearer ' + player.token
    And request {}
    When method post
    Then status 404
```

**`gamification/rewards.feature`**

```gherkin
@gamification @US15 @US16
Feature: Simulation rewards API

  Background:
    * url karate.properties['api.baseUrl']
    * def player = call read('classpath:com/safestep/apitests/helpers/register-and-sign-in.feature')

  Scenario: A new player starts without SafeCoins
    Given path 'api/v1/gamification/summary/me'
    And header Authorization = 'Bearer ' + player.token
    When method get
    Then status 200
    And match response == { username: '#(player.username)', level: 1, xp: 0, safeCoins: 0, streak: 0, completedSimulations: 0 }

  Scenario: Completing a simulation rewards coins and XP and is recorded in the coin history
    * call read('classpath:com/safestep/apitests/helpers/complete-simulation.feature') { token: '#(player.token)', slug: 'rcp-basico', score: 90 }
    Given path 'api/v1/gamification/summary/me'
    And header Authorization = 'Bearer ' + player.token
    When method get
    Then status 200
    And match response.safeCoins == 101
    And match response.xp == 420
    And match response.completedSimulations == 1
    Given path 'api/v1/gamification/coin-transactions/me'
    And header Authorization = 'Bearer ' + player.token
    When method get
    Then status 200
    And match response == '#[1]'
    And match response[0].earnedCoins == 101

  Scenario Outline: An attempt with an out of range score is rejected - <score>
    Given path 'api/v1/simulations/rcp-basico/attempts'
    And header Authorization = 'Bearer ' + player.token
    And request { mode: 'practice', startedAt: '2026-09-14T15:00:00Z', score: <score>, totalSteps: 5, correctSteps: 4, timeElapsed: 100 }
    When method post
    Then status 400

    Examples:
      | score |
      | -1    |
      | 101   |

  Scenario: A simulation that does not exist cannot be attempted
    Given path 'api/v1/simulations/ghost/attempts'
    And header Authorization = 'Bearer ' + player.token
    And request { mode: 'practice', startedAt: '2026-09-14T15:00:00Z', score: 80, totalSteps: 5, correctSteps: 4, timeElapsed: 100 }
    When method post
    Then status 404
```


**Commits relacionados con testing:**

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr><td><b>Repository</b></td><td><b>Branch</b></td><td><b>Commit Id</b></td><td><b>Commit Message</b></td><td><b>Commit Message Body</b></td><td><b>Committed on (Date)</b></td></tr>
        <tr><td>safestept-backend</td><td>feature/quality-tooling</td><td>13728a1</td><td>build: add checkstyle, jacoco and sonar maven plugins</td><td>Checkstyle runs the stock Google checks in report-only mode (8,034 violations measured on the current codebase). JaCoCo gates the application/assembler layers at 80% instruction coverage, excluding domain, infrastructure, REST resources and controllers like the course reference project. The Sonar scanner plugin is registered for the CI pipeline.</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/unit-tests</td><td>d0e6e94</td><td>test(commerce): cover cart, order, stripe, catalog and coupon redemption rules</td><td>Adds AAA unit tests for CommerceCommandServiceImpl (cart, order creation with coupons, Stripe confirm/cancel/webhook, product and coupon CRUD), the query service, the resource assembler and the Coupon/RedeemedCoupon entities.</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/unit-tests</td><td>78aaf5d</td><td>test(iam): cover role management, admin seed and ACL facade</td><td>Covers self-demotion and last-admin protections in UpdateUserRolesCommand, the bootstrap admin seed branches, sign-in/sign-up failures and IamContextFacade.</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/unit-tests</td><td>c60f963</td><td>test(gamification): cover mission/badge rules, coin spending and event handler</td><td>Covers GamificationCommandServiceImpl validation, the attempt-completed integration handler, query service, SafeCoins spend ACL and CoinSpend entity.</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/unit-tests</td><td>1c9d1ed</td><td>test(simulation): cover attempt registration, simulation CRUD and domain events</td><td>—</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/unit-tests</td><td>1aa5aaf</td><td>test(analytics): cover summary, progress and certificate issuing rules</td><td>—</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/unit-tests</td><td>2e17510</td><td>test(profiles): cover profile commands, queries and ACL facade</td><td>—</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/unit-tests</td><td>15f374c</td><td>test(shared): cover Result type and global exception handler branches</td><td>—</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/bdd-acceptance-tests</td><td>68b41bc</td><td>build: add cucumber dependencies for BDD acceptance tests</td><td>—</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/bdd-acceptance-tests</td><td>0d82694</td><td>test(bdd): add Gherkin acceptance features and Cucumber step definitions</td><td>Five features (authentication, coupon redemption, checkout with coupon, role management, simulation rewards) tagged with the user stories they validate. Steps drive the real REST API of the Spring Boot application started on a random port, with its own in-memory database.</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/api-tests-karate</td><td>cf31022</td><td>test(api): add Karate integration tests for the REST API</td><td>Black-box suite (5 features, 36 scenarios) that exercises authentication, authorization, the store catalogue, the SafeCoins coupon flow and simulation rewards over HTTP. Data-driven sign-up reads users-batch.json and every run creates uniquely named users, so it is repeatable on a persistent database.</td><td>07/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/jenkins-pipeline</td><td>837a2c2</td><td>ci(jenkins): add pipeline, Jenkins/SonarQube Docker setup and job as code</td><td>Jenkinsfile stages: compile, Checkstyle report, unit + BDD tests, JaCoCo gate, SonarQube analysis with quality gate, package, Docker image and Karate API tests against the new container. The ci/ folder builds the Jenkins image (JDK 26, Maven, Docker CLI), runs SonarQube on the shared network and configures Jenkins with JCasC (SonarQube server, token credential, job). The application image no longer re-runs the tests that the pipeline already ran.</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/jenkins-pipeline</td><td>3f287c5</td><td>fix(ci): use SonarQube Community Build and allow local checkout in Jenkins</td><td>SonarQube 9.9 LTS cannot parse the Java 21+ syntax used by the project (switch patterns, unnamed variables), so the compose file now uses the current Community Build image. Jenkins is started with ALLOW_LOCAL_CHECKOUT because the job reads the repository mounted from the host.</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/jenkins-pipeline</td><td>b327a39</td><td>chore(ci): allow anonymous read access to the local Jenkins and SonarQube dashboards</td><td>Builds and configuration still require the generated admin user; read access lets the dashboards be inspected and captured as evidence without logging in.</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>feature/story-traceability-tags</td><td>ad364ca</td><td>test: tag features with the new US57-US61 story ids</td><td>—</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>develop</td><td>dd3c9dc</td><td>docs(api-tests): align the story ids with the product backlog</td><td>—</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>develop</td><td>dd3a16e</td><td>ci: limit the pipeline to continuous integration</td><td>Delivery and deployment are out of scope for this delivery, so the Docker image, the Karate run against a container and the Docker Hub publication are removed from the Jenkinsfile. The application Dockerfile is restored and the Jenkins image no longer carries the Docker CLI nor the host socket.</td><td>08/10/2026</td></tr>
        <tr><td>safestept-backend</td><td>develop</td><td>c95ca77</td><td>test: cover the 400 for malformed JSON and the CORS rules</td><td>Adds a unit test for the new handler and an HTTP integration test for the malformed body, an allowed origin and a foreign origin. The test configuration declares the CORS property because it replaces the main application.properties.</td><td>08/10/2026</td></tr>
    </tbody>
</table>

### 5.2.5.6. Execution Evidence for Sprint Review

El Sprint 5 dejó listas las vistas de administración y de canje de cupones y las suites de pruebas que las verifican. Las capturas siguientes muestran las vistas principales de la aplicación web, tomadas con una cuenta nueva creada para la captura y con el catálogo de datos de ejemplo.

**Resumen de lo Alcanzado:**

- Dashboard del jugador después de iniciar sesión.
- Catálogo de simulaciones con filtros y catálogo de la tienda.
- Página de canje de cupones: el jugador ve los cupones del catálogo y, sin SafeCoins, no puede canjearlos.
- Panel de administración con seis módulos, visible solo para administradores.

<div align="center">
  <p><b>Captura:</b> Dashboard de un jugador que acaba de iniciar sesión</p>
  <img src="../../assets/images/chapter-5/sprint5-vista-dashboard.png" alt="Dashboard tras iniciar sesión" width="700" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

<div align="center">
  <p><b>Captura:</b> Catálogo de simulaciones</p>
  <img src="../../assets/images/chapter-5/sprint5-vista-simulaciones.png" alt="Catálogo de simulaciones" width="700" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

<div align="center">
  <p><b>Captura:</b> Tienda de productos</p>
  <img src="../../assets/images/chapter-5/sprint5-vista-tienda.png" alt="Tienda" width="700" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

<div align="center">
  <p><b>Captura:</b> Página de canje de cupones de un jugador sin SafeCoins</p>
  <img src="../../assets/images/chapter-5/sprint5-vista-canje-cupones.png" alt="Canje de cupones" width="700" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

<div align="center">
  <p><b>Captura:</b> Panel de administración</p>
  <img src="../../assets/images/chapter-5/sprint5-vista-panel-admin.png" alt="Panel de administración" width="700" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>


**Video de la navegación del Sprint:** <b>[POR COMPLETAR POR EL EQUIPO]</b>

### 5.2.5.7. Services Documentation Evidence for Sprint Review

El Sprint 5 amplió la documentación OpenAPI del backend con los endpoints de roles y de canje de cupones, y modificó la creación de órdenes. Todos están publicados en la Swagger UI del backend (`/swagger-ui/index.html`), que en este Sprint se consultó en la instancia local de pruebas (`http://localhost:8093/swagger-ui/index.html`). Todos requieren autenticación; los de roles requieren además `ROLE_ADMIN`.

| Endpoint | Verbo | Descripción | Parámetros | Respuesta |
|----------|-------|-------------|------------|-----------|
| `/api/v1/users` | GET | Lista los usuarios (solo administrador) | — | 200 con la lista de usuarios y sus roles; 403 si no es administrador |
| `/api/v1/roles` | GET | Lista los roles disponibles (solo administrador) | — | 200 con `ROLE_USER`, `ROLE_INSTRUCTOR`, `ROLE_ADMIN` |
| `/api/v1/users/{userId}/roles` | PUT | Reemplaza los roles de un usuario | Ruta: `userId`. Cuerpo: `{"roles": ["ROLE_USER", "ROLE_INSTRUCTOR"]}` | 200 con el usuario actualizado; 422 `BUSINESS_RULE_VIOLATION` si el administrador intenta quitarse su propio rol o dejar al sistema sin administrador |
| `/api/v1/commerce/coupons/{couponId}/redeem` | POST | Canjea un cupón con los SafeCoins del usuario autenticado | Ruta: `couponId` (identificador del cupón del catálogo). Sin cuerpo | 201 con el cupón canjeado (`id`, `status: AVAILABLE`, `discountPercentage`, `minPurchaseAmount`); 422 si el saldo no alcanza; 404 si el cupón no existe |
| `/api/v1/commerce/coupons/redeemed/me` | GET | Lista los cupones canjeados por el usuario autenticado | — | 200 con la lista, cada cupón con su estado `AVAILABLE` o `USED` |
| `/api/v1/commerce/orders` | POST | Crea una orden; ahora acepta un cupón canjeado | Cuerpo: `status` y, opcional, `redeemedCouponExternalId` | 201 con `total`, `finalTotal` y `appliedDiscountPercentage`; 422 si el cupón no es del usuario, ya se usó o la compra no alcanza el mínimo |

<div align="center">
  <p><b>Captura:</b> Endpoint de canje de cupones en Swagger UI</p>
  <img src="../../assets/images/chapter-5/sprint5-swagger-redeem-coupon.jpg" alt="Swagger redeemCoupon" width="700" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

<div align="center">
  <p><b>Captura:</b> Endpoint de actualización de roles en Swagger UI</p>
  <img src="../../assets/images/chapter-5/sprint5-swagger-update-roles.jpg" alt="Swagger updateUserRoles" width="700" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>


**Repositorio de Web Services:** [1ASI0732-2620-9090-Grupo-4/safestept-backend](https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-backend). Los commits de este Sprint relacionados con servicios están en la tabla de 5.2.5.4 (`feat: add coupon redemption feature`).

**Observación sobre la documentación.** El response `200` del endpoint de canje aparece documentado con un cuerpo vacío (`{}`) aunque el servicio responde 201 con el cupón canjeado; la anotación de respuesta debe corregirse en el siguiente Sprint.

### 5.2.5.8. Software Deployment Evidence for Sprint Review

El trabajo de despliegue del Sprint 5 consistió en automatizar la integración continua del backend. No se crearon cuentas ni recursos nuevos en proveedores cloud: la infraestructura del pipeline se ejecuta como contenedores Docker en el equipo del desarrollador y se describe como código en la carpeta `ci/` del backend.

**Actividades realizadas:**

1. Construcción de la imagen `safestep-jenkins:1.0` (Jenkins LTS con JDK 25 y, para compilar el proyecto, JDK 26 y Maven 3.9.11).
2. Creación del `docker-compose.yml` con Jenkins (puerto 9089) y SonarQube (puerto 9000) en la red `spring-postgres-net`.
3. Configuración de Jenkins con *Configuration as Code*: usuario administrador, servidor SonarQube `MiSonarServer`, credencial del token y el job `safestep-backend`.
4. Registro del webhook `http://jenkins-master:9089/sonarqube-webhook/` en SonarQube.
5. Escritura del `Jenkinsfile` y ejecución del pipeline sobre la rama `develop`.

<div align="center">
  <p><b>Captura:</b> Pipeline `safestep-backend` en Jenkins con sus etapas y ejecuciones</p>
  <img src="../../assets/images/chapter-7/jenkins-pipeline-stage-view.png" alt="Stage View de Jenkins" width="760" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

<div align="center">
  <p><b>Captura:</b> Panel de SonarQube del backend</p>
  <img src="../../assets/images/chapter-7/sonarqube-dashboard.png" alt="SonarQube" width="620" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>


### 5.2.5.9. Team Collaboration Insights during Sprint

En esta sección se explica cómo se desarrollaron las actividades del Sprint 5 y se presentan los analíticos de colaboración.

**Distribución de Trabajo:** <b>[POR COMPLETAR POR EL EQUIPO]</b>

**Métricas de Colaboración:**

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr><td><b>Miembro</b></td><td><b>Repositorio</b></td><td><b>Commits</b></td><td><b>Lineas additions</b></td><td><b>Lineas eliminadas</b></td><td><b>PRs merged</b></td></tr>
        <tr><td>Ayala Fernandez, Jorge Brayan</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
        <tr><td>Sanchez Espinoza, Mathias Enrique</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
        <tr><td>Melgarejo Quiroz, Josep Eliu</td><td>safestept-backend / safestept-frontend</td><td>22</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
        <tr><td>Flores Eusebio, Angel Thyago</td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td><td><b>[POR COMPLETAR POR EL EQUIPO]</b></td></tr>
    </tbody>
</table>

El conteo de commits de Melgarejo Quiroz, Josep Eliu corresponde a los commits locales de `develop` en los repositorios de backend y frontend durante este Sprint. Las capturas de GitHub Insights (Contributors, Commits) y la interpretación del equipo deben añadirse una vez publicadas las ramas en GitHub, porque los analíticos de GitHub solo reflejan lo que está en el repositorio remoto.

