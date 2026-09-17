<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-4/capitulo-4.png" alt="Capitulo 4" />
</div>

<br>
<br>

# 4.9. Software Object-Oriented Design

En esta sección se presenta el diagrama de clases de SafeStep, elaborado con el objetivo de representar la estructura principal de la aplicación web y la organización de sus bounded contexts. El diagrama permite identificar las clases más importantes del dominio, sus responsabilidades, las relaciones entre agregados, entidades, servicios, repositorios y controladores, así como la forma en que los distintos módulos colaboran para soportar funcionalidades como autenticación, perfiles de usuario, simulaciones médicas, gamificación, comercio electrónico, pagos y analítica de progreso.

## 4.9.1. Class Diagrams

<div align="center">
    <img src="../../assets/images/chapter-4/safestep-general-exposicion.png" alt="Diagrama de clases SafeStep" />
</div>

**link del miro para una mejor vista** 

<a href="https://miro.com/app/board/uXjVH9tP7zk=/?share_link_id=396032164151">https://miro.com/app/board/uXjVH9tP7zk=/?share_link_id=396032164151</a>

<p align="center"><strong>Diagrama Clases Analytics</strong></p>

<div align="center">
    <img src="../../assets/images/chapter-4/analytics-exposicion.png" alt="Diagrama de clases (Analytics BC)" />
</div>


<p align="center"><strong>Diagrama Clases Ecommerce</strong></p>

<div align="center">
    <img src="../../assets/images/chapter-4/commerce-exposicion.png" alt="Diagrama de clases (Ecommerce BC)" />
</div>


<p align="center"><strong>Diagrama Clases Gamification</strong></p>

<div align="center">
    <img src="../../assets/images/chapter-4/gamification-exposicion.png" alt="Diagrama de clases (Gamification BC)" />
</div>

<p align="center"><strong>Diagrama Clases IAM</strong></p>


<div align="center">
    <img src="../../assets/images/chapter-4/iam-profiles-exposicion.png" alt="Diagrama de clases (IAM BC)" />
</div>

<p align="center"><strong>Diagrama Clases Simulation</strong></p>


<div align="center">
    <img src="../../assets/images/chapter-4/simulation-exposicion.png" alt="Diagrama de clases (Simulation BC)" />
</div>

## 4.9.2. Class Dictionary

El diccionario describe las clases representadas en los diagramas anteriores y añade `UserBadge` y `UserMissionProgress`, necesarias para entender el ERD de Gamification aunque no se destaquen en el UML de dominio. Se contrastaron con los agregados, entidades y objetos de valor del backend; los controladores, servicios y repositorios son clases de aplicación o infraestructura y **no** se convierten automáticamente en tablas. `id` identifica internamente un agregado, mientras que `externalId`, `slug` y `username` son identificadores de negocio o referencias lógicas entre contextos. Las relaciones entre contextos dibujadas en UML no implican necesariamente claves foráneas físicas.

| Contexto | Clase (tipo) | Responsabilidad y atributos principales | Relaciones y operaciones relevantes |
|---|---|---|---|
| IAM | `User` (agregado) | Cuenta, credenciales, estado y conjunto de roles; `id`, `username`, `password`, `enabled`. | Se asocia con `Role`; administra roles y estado. |
| IAM | `Role` (entidad) | Tipo de autorización; `id`, `name`. | Se asigna a varios usuarios mediante `user_roles`. |
| IAM | `RefreshToken` (agregado) | Sesión renovable; hash, usuario, vencimiento y revocación. | Referencia lógicamente a `User` por `username`; permite renovar o revocar la sesión. |
| IAM | `PasswordResetToken` (agregado) | Solicitud de restablecimiento; hash, usuario, vencimiento y uso. | Referencia lógicamente a `User` por `username`; evita reutilizar un token consumido. |
| Profiles | `Profile` (agregado) | Datos personales y de contacto; `id`, `name`, `emailAddress`, `streetAddress`. | Compone `PersonName`, `EmailAddress` y `StreetAddress`; admite creación y actualización. |
| Profiles | `PersonName` (objeto de valor) | Nombre y apellido de la persona. | Parte de `Profile`; no tiene identidad propia. |
| Profiles | `EmailAddress` (objeto de valor) | Dirección de correo validada. | Parte de `Profile`; es única en persistencia. |
| Profiles | `StreetAddress` (objeto de valor) | Calle, número, ciudad, código postal y país. | Parte de `Profile`; se almacena en columnas del perfil. |
| Simulation | `MedicalSimulation` (agregado) | Escenario médico; `id`, `slug`, `title`, tipo, dificultad, recompensa y contenido. | Contiene pasos, opciones, objetivos y sugerencias; se consulta por `slug`. |
| Simulation | `SimulationStep` (entidad del agregado) | Paso o pregunta; identificador externo, enunciado y opción correcta. | Pertenece a `MedicalSimulation` y contiene opciones de respuesta. |
| Simulation | `SimulationOption` (objeto de valor) | Opción, etiqueta y retroalimentación. | Pertenece a un paso; se persiste en `simulation_options`. |
| Simulation | `ProductSuggestion` (objeto de valor) | Producto recomendado y motivo asociado al escenario. | Pertenece a `MedicalSimulation`; `productId` es referencia lógica a Commerce. |
| Simulation | `SimulationAttempt` (agregado) | Intento de un usuario; `externalId`, `username`, `simulationSlug`, puntuación, duración y estado. | Evalúa un escenario y agrupa `AttemptError`; al completarse origina un evento de dominio. |
| Simulation | `AttemptError` (entidad del agregado) | Error cometido, paso, descripción y severidad. | Pertenece a `SimulationAttempt`. |
| Gamification | `PlayerProgress` (agregado) | Progreso del jugador; nivel, XP, monedas, racha y simulaciones completadas. | Se identifica por `username`; aplica recompensas de intentos. |
| Gamification | `Mission` (agregado) | Meta, cadencia, estado y recompensas XP/monedas. | Se vincula con `UserMissionProgress` por identificador externo. |
| Gamification | `Badge` (agregado) | Insignia, rareza y condición de desbloqueo. | Se vincula con `UserBadge` por identificador externo. |
| Gamification | `CoinTransaction` (agregado) | Registro de monedas obtenidas en una simulación. | Referencia lógicamente usuario y simulación; conserva puntuación y multiplicador. |
| Gamification | `UserMissionProgress` (entidad de persistencia) | Avance individual y estado de una misión. | Conecta usuario (`username`) con `Mission.externalId`. |
| Gamification | `UserBadge` (entidad de persistencia) | Insignia desbloqueada y fecha. | Conecta usuario (`username`) con `Badge.externalId`. |
| Analytics | `AnalyticsSummary` (agregado de consulta) | Resumen calculado de métricas, habilidades, errores y actividad semanal. | Compone `Metric`, `SkillProgress`, `CommonMistake`, `WeeklyActivity` y `PerformanceByDifficulty`; no tiene tabla propia en el ERD actual. |
| Analytics | `Certificate` (agregado) | Certificado emitido; usuario, módulo, puntuación, logro y código de verificación. | Se deriva de intentos completados; se persiste en `certificates`. |
| Analytics | `Metric` (objeto de valor) | Indicador cuantitativo del resumen. | Elemento de `AnalyticsSummary`; calculado para consulta. |
| Analytics | `SkillProgress` (objeto de valor) | Progreso por habilidad. | Elemento de `AnalyticsSummary`; calculado para consulta. |
| Analytics | `CommonMistake` (objeto de valor) | Error recurrente identificado entre intentos. | Elemento de `AnalyticsSummary`; calculado para consulta. |
| Analytics | `WeeklyActivity` (objeto de valor) | Actividad agrupada por semana. | Elemento de `AnalyticsSummary`; calculado para consulta. |
| Analytics | `PerformanceByDifficulty` (objeto de valor) | Rendimiento por grado de dificultad. | Elemento de `AnalyticsSummary`; calculado para consulta. |
| Commerce | `Product` (agregado) | Producto, categoría, precio, etiquetas, valoración y existencias. | Se relaciona lógicamente con `Category`; reduce `stock` al procesar pedidos. |
| Commerce | `Order` (agregado) | Pedido, usuario, estado, fecha y datos de pago. | Compone `OrderItem`; calcula total y registra el pago de Stripe. |
| Commerce | `OrderItem` (entidad del agregado) | Línea de pedido; producto, nombre, precio unitario y cantidad. | Pertenece a `Order`; `productId` apunta lógicamente a `Product.externalId`. |
| Commerce | `CartItem` (entidad) | Producto y cantidad que un usuario mantiene en el carrito. | Referencia lógicamente usuario y producto. |
| Commerce | `Coupon` (agregado) | Descuento canjeable y costo en monedas. | Se identifica externamente mediante `externalId`. |
| Commerce | `ShippingAddress` (agregado) | Destinatario y dirección de entrega del usuario. | `username` identifica a su propietario sin FK física en el modelo actual. |
| Commerce | `Category` (objeto de valor) | Categoría comercial y cantidad de productos. | En persistencia tiene tabla propia; `Product.category` conserva el nombre como referencia lógica. |
| Commerce | `EmergencyKit` (objeto de valor) | Kit de emergencia, componentes y precios. | En persistencia tiene tabla propia. |
| Commerce | `PaymentMethod` (objeto de valor) | Medio de pago, comisión y disponibilidad. | En persistencia tiene tabla propia. |
| Commerce | `ProductRecommendation` (objeto de valor) | Recomendación de producto con motivo y prioridad. | En persistencia tiene tabla propia; referencia usuario, producto y simulación por identificadores lógicos. |

**Clases de soporte representadas en el UML.** Las siguientes clases tienen responsabilidad arquitectónica, pero no son entidades de la base de datos.

| Capa | Clases del diagrama | Responsabilidad |
|---|---|---|
| Interfaces REST | `AuthenticationController`, `UsersController`, `ProfilesController`, `SimulationsController`, `GamificationController`, `AnalyticsController`, `CommerceCatalogController`, `CommerceOperationsController` | Recibir solicitudes, validar entradas y devolver recursos de la API. |
| Aplicación | `UserCommandService`, `UserQueryService`, `ProfileCommandService`, `ProfileQueryService`, `SimulationCommandService`, `SimulationQueryService`, `SimulationAttemptCommandService`, `GamificationCommandService`, `GamificationQueryService`, `AnalyticsQueryService`, `CertificateCommandService`, `CommerceCommandService`, `CommerceQueryService` | Coordinar comandos y consultas, sin almacenar estado persistente propio. |
| Persistencia y servicios externos | `UserRepository`, `ProfileRepository`, `MedicalSimulationRepository`, `SimulationAttemptRepository`, `BadgeRepository`, `MissionRepository`, `PlayerProgressRepository`, `CoinTransactionRepository`, `CertificateRepository`, `ProductRepository`, `OrderRepository`, `CouponRepository`, `ShoppingCartRepository`, `StripeCheckoutClient` y sus implementaciones | Definir contratos de almacenamiento o integración y adaptarlos a JPA/Stripe. |
| Compartido y eventos | `AbstractDomainAggregateRoot`, `SimulationAttemptCompletedEvent`, `SimulationAttemptCompletedIntegrationEvent` y sus manejadores | Registrar y publicar hechos del dominio para que Gamification y Analytics reaccionen sin acoplar directamente sus agregados. |

En conjunto, el UML describe estructura y colaboración entre clases, mientras que el ERD del apartado 4.10 describe persistencia. Por ello el número de clases no coincide con el de tablas.




