<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-5/capitulo-5.png" alt="Capitulo 5" />
</div>

<br>
<br>

# 5.2. Landing Page, Services & Applications Implementation.

## 5.2.7. RESTful API documentation

Esta sección documenta los endpoints de la API REST de SafeStep. La documentación se genera con OpenAPI 3.1 a partir de las anotaciones de los controladores y se publica con Swagger UI en el backend desplegado. Las tablas siguientes se obtuvieron de la definición OpenAPI publicada en <a href="https://safestept-backend-experimentos.onrender.com/v3/api-docs">https://safestept-backend-experimentos.onrender.com/v3/api-docs</a>, por lo que reflejan exactamente lo que el servicio desplegado expone: **73 operaciones** agrupadas en nueve controladores y **52 modelos** de datos.

| Elemento | Enlace |
|----------|--------|
| Swagger UI (documentación desplegada) | <a href="https://safestept-backend-experimentos.onrender.com/swagger-ui/index.html">https://safestept-backend-experimentos.onrender.com/swagger-ui/index.html</a> |
| Definición OpenAPI (JSON) | <a href="https://safestept-backend-experimentos.onrender.com/v3/api-docs">https://safestept-backend-experimentos.onrender.com/v3/api-docs</a> |
| Repositorio de Web Services | <a href="https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-backend">https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-backend</a> |
| URL base de la API | `https://safestept-backend-experimentos.onrender.com/api/v1` |

### 5.2.7.1. Resumen por controlador

| Controlador | Alcance | Operaciones |
|-------------|---------|-------------|
| Authentication | Registro, inicio de sesión, renovación de tokens, cierre de sesión y recuperación de contraseña | 6 |
| Users | Consulta de usuarios y administración de sus roles y estado | 4 |
| Roles | Consulta de los roles disponibles | 1 |
| Profiles | Perfil de la persona usuaria | 5 |
| Medical Simulations | Catálogo de simulaciones médicas y registro de intentos | 8 |
| Gamification | Resumen de progreso, misiones, insignias, ranking y movimientos de SafeCoins | 17 |
| Commerce Catalog | Productos, categorías, kits, reseñas, recomendaciones y catálogo de cupones | 15 |
| Commerce Operations | Carrito, órdenes, pagos con Stripe, direcciones, métodos de pago y canje de cupones | 14 |
| Analytics | Resumen, progreso y certificados de la persona usuaria | 3 |
| **Total** | | **73** |

### 5.2.7.2. Convenciones de uso

- **Sintaxis de llamada.** `VERBO https://safestept-backend-experimentos.onrender.com/api/v1/<ruta>`, con el cuerpo en JSON y la cabecera `Content-Type: application/json` cuando la operación recibe uno.
- **Autenticación.** Todas las operaciones, salvo las de *Authentication* y el webhook de Stripe, exigen la cabecera `Authorization: Bearer <token>`, donde el token se obtiene con `POST /api/v1/authentication/sign-in`. La columna *Acceso* indica si basta con una sesión iniciada o si se exige `ROLE_ADMIN`.
- **Códigos de respuesta.** `200` y `201` indican éxito; `400` un cuerpo o parámetros inválidos; `401` falta o es inválido el token; `403` el rol no alcanza; `404` el recurso no existe; `409` hay un conflicto (por ejemplo, un usuario repetido) y `422` se incumple una regla de negocio.
- **Formato de error.** Todos los errores tienen la forma `{"code": "...", "message": "...", "details": "..."}`.
- **Convención de las tablas.** En los cuerpos, un asterisco (`*`) marca los campos obligatorios; los parámetros indican entre paréntesis dónde viajan (`path` en la ruta, `query` en la cadena de consulta).


### 5.2.7.3. Authentication

Registro, inicio de sesión, renovación de tokens, cierre de sesión y recuperación de contraseña.

| Verbo | Ruta | Descripción | Acceso | Parámetros | Cuerpo de la solicitud | Respuestas |
|-------|------|-------------|--------|------------|------------------------|------------|
| POST | `/api/v1/authentication/sign-up` | User registration | Público | — | `SignUpRequest` (username*: texto, password*: texto) | 201 → `UserResponse`, 400, 409 |
| POST | `/api/v1/authentication/sign-in` | User sign-in | Público | — | `SignInRequest` (username*: texto, password*: texto) | 200 → `AuthenticatedUserResponse`, 400, 404 |
| POST | `/api/v1/authentication/reset-password` | Reset password | Público | — | `ResetPasswordRequest` (resetToken*: texto, newPassword*: texto) | 200 → `IamMessageResponse`, 400 |
| POST | `/api/v1/authentication/refresh-token` | Refresh authentication tokens | Público | — | `RefreshTokenRequest` (refreshToken*: texto) | 200 → `AuthenticatedUserResponse`, 400 |
| POST | `/api/v1/authentication/logout` | Logout | Público | — | `LogoutRequest` (refreshToken*: texto) | 200 → `IamMessageResponse`, 400 |
| POST | `/api/v1/authentication/forgot-password` | Request password reset token | Público | — | `ForgotPasswordRequest` (username*: texto) | 200 → `ForgotPasswordResponse`, 400, 404 |


### 5.2.7.4. Users

Consulta de usuarios y administración de sus roles y estado.

| Verbo | Ruta | Descripción | Acceso | Parámetros | Cuerpo de la solicitud | Respuestas |
|-------|------|-------------|--------|------------|------------------------|------------|
| PUT | `/api/v1/users/{userId}/status` | Update user account status | Administrador | `userId` (path, entero, obligatorio) | `UpdateUserStatusRequest` (enabled: booleano, accountNonLocked: booleano, accountNonExpired: booleano, credentialsNonExpired: booleano) | 200 → `UserResponse`, 401, 403, 404 |
| PUT | `/api/v1/users/{userId}/roles` | Update user roles | Administrador | `userId` (path, entero, obligatorio) | `UpdateUserRolesRequest` (roles*: texto[]) | 200 → `UserResponse`, 401, 403, 404, 422 |
| GET | `/api/v1/users` | Get all users | Administrador | — | — | 200 → `UserResponse[]`, 401, 403 |
| GET | `/api/v1/users/{userId}` | Get user by ID | Administrador | `userId` (path, entero, obligatorio) | — | 200 → `UserResponse`, 401, 403, 404 |


### 5.2.7.5. Roles

Consulta de los roles disponibles.

| Verbo | Ruta | Descripción | Acceso | Parámetros | Cuerpo de la solicitud | Respuestas |
|-------|------|-------------|--------|------------|------------------------|------------|
| GET | `/api/v1/roles` | Get all roles | Administrador | — | — | 200 → `RoleResponse[]`, 401, 403 |


### 5.2.7.6. Profiles

Perfil de la persona usuaria.

| Verbo | Ruta | Descripción | Acceso | Parámetros | Cuerpo de la solicitud | Respuestas |
|-------|------|-------------|--------|------------|------------------------|------------|
| GET | `/api/v1/profiles/me` | Get current SafeStep profile | Sesión iniciada | — | — | 200 → `ProfileResponse`, 404 |
| PUT | `/api/v1/profiles/me` | Update current SafeStep profile | Sesión iniciada | — | `UpdateProfileResource` (firstName*: texto, lastName*: texto, email*: texto, street*: texto, number: texto, city*: texto, postalCode*: texto, …) | 200 → `ProfileResponse`, 201 → `ProfileResponse` |
| GET | `/api/v1/profiles` | Get all profiles | Sesión iniciada | — | — | 200 → `ProfileResponse[]` |
| POST | `/api/v1/profiles` | Create a new profile | Sesión iniciada | — | `CreateProfileRequest` (firstName*: texto, lastName*: texto, email*: texto, street*: texto, number: texto, city*: texto, postalCode*: texto, …) | 201 → `ProfileResponse`, 400, 409 |
| GET | `/api/v1/profiles/{profileId}` | Get profile by ID | Sesión iniciada | `profileId` (path, entero, obligatorio) | — | 200 → `ProfileResponse`, 404 |


### 5.2.7.7. Medical Simulations

Catálogo de simulaciones médicas y registro de intentos.

| Verbo | Ruta | Descripción | Acceso | Parámetros | Cuerpo de la solicitud | Respuestas |
|-------|------|-------------|--------|------------|------------------------|------------|
| GET | `/api/v1/simulations/{simulationId}` | Get medical simulation by identifier | Sesión iniciada | `simulationId` (path, texto, obligatorio) | — | 200 → `SimulationResource`, 404 |
| PUT | `/api/v1/simulations/{simulationId}` | Update medical simulation | Administrador | `simulationId` (path, texto, obligatorio) | `SimulationResource` (id: texto, title: texto, emergencyType: texto, difficulty: texto, durationMinutes: entero, xpReward: entero, imageUrl: texto, …) | 200 → `SimulationResource` |
| DELETE | `/api/v1/simulations/{simulationId}` | Delete medical simulation | Administrador | `simulationId` (path, texto, obligatorio) | — | 204 |
| GET | `/api/v1/simulations` | Get all medical simulations | Sesión iniciada | — | — | 200 → `SimulationResource[]` |
| POST | `/api/v1/simulations` | Create medical simulation | Administrador | — | `SimulationResource` (id: texto, title: texto, emergencyType: texto, difficulty: texto, durationMinutes: entero, xpReward: entero, imageUrl: texto, …) | 201 → `SimulationResource` |
| POST | `/api/v1/simulations/{simulationId}/attempts` | Create a medical simulation attempt | Sesión iniciada | `simulationId` (path, texto, obligatorio) | `CreateAttemptResource` (mode*: texto, startedAt*: fecha-hora, completedAt: fecha-hora, score: entero, totalSteps: entero, correctSteps: entero, timeElapsed: entero, …) | 201 → `SimulationAttemptResource` |
| GET | `/api/v1/simulations/attempts/me` | Get current user simulation attempts | Sesión iniciada | — | — | 200 → `SimulationAttemptResource[]` |
| DELETE | `/api/v1/simulations/` | Delete medical simulation | Administrador | — | — | 204 |


### 5.2.7.8. Gamification

Resumen de progreso, misiones, insignias, ranking y movimientos de SafeCoins.

| Verbo | Ruta | Descripción | Acceso | Parámetros | Cuerpo de la solicitud | Respuestas |
|-------|------|-------------|--------|------------|------------------------|------------|
| PUT | `/api/v1/gamification/missions/{missionId}` | Update mission | Administrador | `missionId` (path, texto, obligatorio) | `MissionResource` (id: texto, title: texto, cadence: texto, progress: entero, goal: entero, rewardXp: entero, rewardCoins: entero, …) | 200 → `MissionResource` |
| DELETE | `/api/v1/gamification/missions/{missionId}` | Delete mission | Administrador | `missionId` (path, texto, obligatorio) | — | 204 |
| PUT | `/api/v1/gamification/badges/{badgeId}` | Update badge | Administrador | `badgeId` (path, texto, obligatorio) | `BadgeResource` (id: texto, name: texto, rarity: texto, unlocked: booleano, description: texto, unlockRequirement: texto) | 200 → `BadgeResource` |
| DELETE | `/api/v1/gamification/badges/{badgeId}` | Delete badge | Administrador | `badgeId` (path, texto, obligatorio) | — | 204 |
| PUT | `/api/v1/gamification/badges/me/{badgeId}` | Update badge | Administrador | `badgeId` (path, texto, obligatorio) | `BadgeResource` (id: texto, name: texto, rarity: texto, unlocked: booleano, description: texto, unlockRequirement: texto) | 200 → `BadgeResource` |
| DELETE | `/api/v1/gamification/badges/me/{badgeId}` | Delete badge | Administrador | `badgeId` (path, texto, obligatorio) | — | 204 |
| GET | `/api/v1/gamification/missions` | Get available missions | Sesión iniciada | — | — | 200 → `MissionResource[]` |
| POST | `/api/v1/gamification/missions` | Create mission | Administrador | — | `MissionResource` (id: texto, title: texto, cadence: texto, progress: entero, goal: entero, rewardXp: entero, rewardCoins: entero, …) | 201 → `MissionResource` |
| GET | `/api/v1/gamification/badges/me` | Get current user badges | Sesión iniciada | — | — | 200 → `BadgeResource[]` |
| POST | `/api/v1/gamification/badges/me` | Create badge | Administrador | — | `BadgeResource` (id: texto, name: texto, rarity: texto, unlocked: booleano, description: texto, unlockRequirement: texto) | 201 → `BadgeResource` |
| POST | `/api/v1/gamification/badges` | Create badge | Administrador | — | `BadgeResource` (id: texto, name: texto, rarity: texto, unlocked: booleano, description: texto, unlockRequirement: texto) | 201 → `BadgeResource` |
| GET | `/api/v1/gamification/summary/me` | Get current user gamification summary | Sesión iniciada | — | — | 200 → `SummaryResource` |
| GET | `/api/v1/gamification/leaderboard` | Get SafeStep leaderboard | Sesión iniciada | — | — | 200 → `LeaderboardResource[]` |
| GET | `/api/v1/gamification/coin-transactions/me` | Get current user coin transactions | Sesión iniciada | — | — | 200 → `CoinTransactionResource[]` |
| DELETE | `/api/v1/gamification/missions/` | Delete mission | Administrador | — | — | 204 |
| DELETE | `/api/v1/gamification/badges/me/` | Delete badge | Administrador | — | — | 204 |
| DELETE | `/api/v1/gamification/badges/` | Delete badge | Administrador | — | — | 204 |


### 5.2.7.9. Commerce Catalog

Productos, categorías, kits, reseñas, recomendaciones y catálogo de cupones.

| Verbo | Ruta | Descripción | Acceso | Parámetros | Cuerpo de la solicitud | Respuestas |
|-------|------|-------------|--------|------------|------------------------|------------|
| GET | `/api/v1/commerce/products/{productId}` | Get store product by identifier | Sesión iniciada | `productId` (path, texto, obligatorio) | — | 200 → `ProductResource`, 404 |
| PUT | `/api/v1/commerce/products/{productId}` | Update store product | Administrador | `productId` (path, texto, obligatorio) | `ProductResource` (id: texto, name: texto, category: texto, type: texto, price: número, oldPrice: número, rating: número, …) | 200 → `ProductResource` |
| DELETE | `/api/v1/commerce/products/{productId}` | Delete store product | Administrador | `productId` (path, texto, obligatorio) | — | 204 |
| PUT | `/api/v1/commerce/coupons/{couponId}` | Update redeemable coupon | Administrador | `couponId` (path, texto, obligatorio) | `CouponResource` (id: texto, title: texto, costCoins: entero, type: texto, discountPercentage: entero, minPurchaseAmount: número) | 200 → `CouponResource` |
| DELETE | `/api/v1/commerce/coupons/{couponId}` | Delete redeemable coupon | Administrador | `couponId` (path, texto, obligatorio) | — | 204 |
| GET | `/api/v1/commerce/products` | Get all store products | Sesión iniciada | — | — | 200 → `ProductResource[]` |
| POST | `/api/v1/commerce/products` | Create store product | Administrador | — | `ProductResource` (id: texto, name: texto, category: texto, type: texto, price: número, oldPrice: número, rating: número, …) | 201 → `ProductResource` |
| GET | `/api/v1/commerce/coupons` | Get redeemable coupons | Sesión iniciada | — | — | 200 → `CouponResource[]` |
| POST | `/api/v1/commerce/coupons` | Create redeemable coupon | Administrador | — | `CouponResource` (id: texto, title: texto, costCoins: entero, type: texto, discountPercentage: entero, minPurchaseAmount: número) | 201 → `CouponResource` |
| GET | `/api/v1/commerce/reviews` | Get product reviews | Sesión iniciada | — | — | 200 → `objeto[]` |
| GET | `/api/v1/commerce/recommendations/me` | Get current user personalized product recommendations | Sesión iniciada | — | — | 200 → `ProductRecommendation[]` |
| GET | `/api/v1/commerce/kits` | Get emergency kits | Sesión iniciada | — | — | 200 → `EmergencyKit[]` |
| GET | `/api/v1/commerce/categories` | Get product categories | Sesión iniciada | — | — | 200 → `Category[]` |
| DELETE | `/api/v1/commerce/products/` | Delete store product | Administrador | — | — | 204 |
| DELETE | `/api/v1/commerce/coupons/` | Delete redeemable coupon | Administrador | — | — | 204 |


### 5.2.7.10. Commerce Operations

Carrito, órdenes, pagos con Stripe, direcciones, métodos de pago y canje de cupones.

| Verbo | Ruta | Descripción | Acceso | Parámetros | Cuerpo de la solicitud | Respuestas |
|-------|------|-------------|--------|------------|------------------------|------------|
| PUT | `/api/v1/commerce/cart/items/{itemId}` | Update current user cart item | Sesión iniciada | `itemId` (path, texto, obligatorio) | `UpdateCartItemResource` (quantity: entero) | 200 → `CartItemResource` |
| DELETE | `/api/v1/commerce/cart/items/{itemId}` | Delete current user cart item | Sesión iniciada | `itemId` (path, texto, obligatorio) | — | 204 |
| POST | `/api/v1/commerce/payments/stripe/webhook` | Capture Stripe payment webhook | Público | `Stripe-Signature` (header, texto) | application/json: texto | 200 → `StripeWebhookResponseResource`, 204 |
| POST | `/api/v1/commerce/orders` | Create current user order | Sesión iniciada | — | `CreateOrderResource` (status: enum, redeemedCouponExternalId: texto) | 201 → `OrderResource` |
| POST | `/api/v1/commerce/orders/{orderId}/payments/stripe-confirm` | Confirm Stripe Checkout payment for an order | Sesión iniciada | `orderId` (path, texto, obligatorio); `sessionId` (query, texto, obligatorio) | — | 200 → `OrderResource` |
| POST | `/api/v1/commerce/orders/{orderId}/payments/stripe-checkout` | Create Stripe Checkout session for an order | Sesión iniciada | `orderId` (path, texto, obligatorio) | — | 200 → `StripeCheckoutSessionResource` |
| POST | `/api/v1/commerce/orders/{orderId}/payments/stripe-cancel` | Cancel Stripe Checkout payment for an order | Sesión iniciada | `orderId` (path, texto, obligatorio); `sessionId` (query, texto) | — | 200 → `OrderResource` |
| POST | `/api/v1/commerce/coupons/{couponId}/redeem` | Redeem a coupon using current user's SafeCoins | Sesión iniciada | `couponId` (path, texto, obligatorio) | — | 201 → `RedeemedCouponResource` |
| POST | `/api/v1/commerce/cart/items` | Add item to current user cart | Sesión iniciada | — | `AddCartItemResource` (productId*: texto, quantity: entero) | 201 → `CartItemResource` |
| GET | `/api/v1/commerce/shipping-addresses/me` | Get current user shipping addresses | Sesión iniciada | — | — | 200 → `ShippingAddress[]` |
| GET | `/api/v1/commerce/payment-methods` | Get available payment methods | Sesión iniciada | — | — | 200 → `PaymentMethod[]` |
| GET | `/api/v1/commerce/orders/me` | Get current user orders | Sesión iniciada | — | — | 200 → `OrderResource[]` |
| GET | `/api/v1/commerce/coupons/redeemed/me` | Get current user's redeemed coupons | Sesión iniciada | — | — | 200 → `RedeemedCouponResource[]` |
| GET | `/api/v1/commerce/cart/me` | Get current user cart | Sesión iniciada | — | — | 200 → `CartItemResource[]` |


### 5.2.7.11. Analytics

Resumen, progreso y certificados de la persona usuaria.

| Verbo | Ruta | Descripción | Acceso | Parámetros | Cuerpo de la solicitud | Respuestas |
|-------|------|-------------|--------|------------|------------------------|------------|
| GET | `/api/v1/analytics/summary/me` | Get current user analytics summary | Sesión iniciada | — | — | 200 → `AnalyticsSummary` |
| GET | `/api/v1/analytics/progress/me` | Get current user progress visuals | Sesión iniciada | — | — | 200 → `ProgressVisual[]` |
| GET | `/api/v1/analytics/certificates/me` | Get current user certificates | Sesión iniciada | — | — | 200 → `Certificate[]` |


### 5.2.7.12. Ejemplos de uso

Los ejemplos usan valores representativos; las respuestas se verificaron con las pruebas de Karate descritas en 6.1.2.

**Iniciar sesión** (`POST /api/v1/authentication/sign-in`, público)

```bash
curl -X POST https://safestept-backend-experimentos.onrender.com/api/v1/authentication/sign-in \
  -H "Content-Type: application/json" \
  -d '{"username": "jugador.demo", "password": "<contraseña>"}'
```

```json
{
  "id": 12,
  "username": "jugador.demo",
  "token": "<token JWT de acceso>",
  "refreshToken": "<token de renovación>",
  "roles": ["ROLE_USER"]
}
```

Explicación: `token` se envía en la cabecera `Authorization` de las demás llamadas; `refreshToken` se canjea en `POST /api/v1/authentication/refresh-token` cuando el token de acceso vence.

**Consultar el resumen de gamificación** (`GET /api/v1/gamification/summary/me`, sesión iniciada)

```json
{ "username": "jugador.demo", "level": 1, "xp": 0, "safeCoins": 0, "streak": 0, "completedSimulations": 0 }
```

Explicación: un jugador nuevo comienza sin experiencia ni monedas; cada simulación completada incrementa `xp`, `safeCoins` y `completedSimulations`.

**Canjear un cupón** (`POST /api/v1/commerce/coupons/{couponId}/redeem`, sesión iniciada, sin cuerpo)

```json
{
  "id": "<identificador del cupón canjeado>",
  "couponId": "cpn-5",
  "title": "5% de descuento en toda la tienda",
  "type": "PERCENTAGE_OFF",
  "discountPercentage": 5,
  "minPurchaseAmount": null,
  "redeemedAt": "2026-10-08T15:00:00Z",
  "usedAt": null,
  "status": "AVAILABLE"
}
```

Explicación: la respuesta es `201` y descuenta el costo del cupón de las SafeCoins; si el saldo no alcanza responde `422` con el código `BUSINESS_RULE_VIOLATION` y el saldo no cambia.

**Crear una orden con un cupón canjeado** (`POST /api/v1/commerce/orders`, sesión iniciada)

```json
{ "status": "PENDING", "redeemedCouponExternalId": "<identificador del cupón canjeado>" }
```

La respuesta incluye `total` (suma de los productos), `finalTotal` (total con el descuento) y `appliedDiscountPercentage`; por ejemplo, con un cupón de 5 % sobre una compra de 159.90 la orden devuelve `"total": 159.9`, `"finalTotal": 151.9` y `"appliedDiscountPercentage": 5`.

**Cambiar los roles de un usuario** (`PUT /api/v1/users/{userId}/roles`, administrador)

```json
{ "roles": ["ROLE_USER", "ROLE_INSTRUCTOR"] }
```

Explicación: reemplaza los roles del usuario; responde `422` si el administrador intenta quitarse su propio `ROLE_ADMIN` o dejar al sistema sin administradores.

**Error por cuerpo mal formado** (`POST /api/v1/authentication/sign-in` con un JSON inválido)

```json
{ "code": "VALIDATION_ERROR", "message": "Validation failed", "details": "Malformed or unreadable request body" }
```

### 5.2.7.13. Evidencia de la documentación

<div align="center">
  <p><b>Captura:</b> Swagger UI del backend publicado en Render, con el servidor https://safestept-backend-experimentos.onrender.com</p>
  <img src="../../assets/images/chapter-5/DespliegueMelgarejo/BackendDesplegado.png" alt="Swagger UI desplegado" width="760" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

<div align="center">
  <p><b>Captura:</b> Operación de canje de cupones desplegada en Swagger UI</p>
  <img src="../../assets/images/chapter-5/sprint5-swagger-redeem-coupon.jpg" alt="Operación de canje de cupones" width="700" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

<div align="center">
  <p><b>Captura:</b> Operación de actualización de roles de usuario en Swagger UI</p>
  <img src="../../assets/images/chapter-5/sprint5-swagger-update-roles.jpg" alt="Operación de actualización de roles" width="700" />
  <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>


### 5.2.7.14. Observaciones sobre la documentación

La documentación publicada se revisó contra el comportamiento real de la API (pruebas de Karate y de BDD). La revisión encontró cuatro limitaciones; tres se corrigieron en este hito con la rama `feature/openapi-response-documentation` y una se mantiene a propósito:

- **Respuestas sin modelo (corregida).** 58 de las 73 operaciones no describían el cuerpo de su respuesta de éxito porque los controladores devuelven `ResponseEntity<?>`. Se anotaron 49 operaciones con `@ApiResponse` y su esquema; ahora las 73 operaciones describen su respuesta de éxito (las eliminaciones, sin cuerpo, con `204`). La única respuesta sin modelo propio es la de `GET /api/v1/commerce/reviews`, que siempre devuelve una lista vacía porque las reseñas aún no están implementadas.
- **Códigos de éxito (corregida).** Las operaciones de creación y de canje se documentaban con `200` aunque el servicio responde `201`, y las eliminaciones no declaraban su `204`. Ahora cada código documentado coincide con el real.
- **Listas (corregida).** Las consultas de colecciones (por ejemplo, `GET /api/v1/users`) declaraban el modelo de un elemento en la respuesta `200` y el de una lista en los códigos de error. Ahora el `200` declara una lista y las respuestas de error no repiten el modelo de éxito.
- **Rutas duplicadas (se mantiene).** Hay cinco operaciones `DELETE` con la ruta terminada en `/` (sin identificador) que se registran como operaciones propias porque un mismo método atiende dos rutas. Eliminarlas exigiría cambiar las rutas expuestas, un riesgo mayor que el beneficio, por lo que se deja documentado.

Para que estas correcciones no se pierdan, se añadió la clase `OpenApiDocumentationIntegrationTest` con cuatro pruebas que leen `/v3/api-docs` y fallan si una operación pierde su esquema de éxito, si una creación deja de documentarse como `201`, si una lista deja de declararse como arreglo o si un error repite el modelo de éxito. Con ellas la suite del backend pasa a 242 pruebas (209 unitarias y de integración más 33 escenarios BDD), todas aprobadas en la ejecución #8 de Jenkins (7.1). El despliegue en Render citado en 5.2.1.5.8 ejecutó las 238 pruebas anteriores.

### 5.2.7.15. Commits relacionados con la documentación

Commits de la rama `develop` que modificaron la configuración de OpenAPI o los controladores REST anotados:

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr><td><b>Repository</b></td><td><b>Branch</b></td><td><b>Commit Id</b></td><td><b>Commit Message</b></td><td><b>Committed on (Date)</b></td></tr>
        <tr><td>safestept-backend</td><td>develop</td><td>0222e59</td><td>chore: add initial project structure and files</td><td>05/09/2026</td></tr>
        <tr><td>safestept-backend</td><td>develop</td><td>f77dfef</td><td>feat: add coupon redemption feature</td><td>17/09/2026</td></tr>
        <tr><td>safestept-backend</td><td>develop</td><td>8a060b0</td><td>docs(api): document the real success responses of the REST endpoints</td><td>08/10/2026</td></tr>
    </tbody>
</table>
