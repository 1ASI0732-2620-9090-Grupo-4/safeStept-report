<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-5/capitulo-5.png" alt="Capitulo 5" />
</div>

<br>
<br>

# 5.2. Landing Page, Services & Applications Implementation.

## 5.2.5. Implemented Native-Mobile Application Evidence

Esta sección reúne la evidencia de la aplicación móvil nativa de SafeStep, un cliente Android escrito en Kotlin con Jetpack Compose que consume la misma API REST que la aplicación web (5.2.7). Cubre todos los flujos del jugador: registro e ingreso con renovación automática de la sesión, recuperación de contraseña, perfil, simulaciones con retroalimentación por respuesta y recompensa, progreso (resumen, misiones, insignias, ranking y movimientos de monedas), tienda con productos, kits y cupones, carrito, pedidos y pago con Stripe. La administración del catálogo y de los roles sigue siendo solo de la aplicación web. El código está en el repositorio <a href="https://github.com/1ASI0732-2620-9090-Grupo-4/safeStept-android.git" style="word-break: break-all; overflow-wrap: anywhere;">https://github.com/1ASI0732-2620-9090-Grupo-4/safeStept-android.git</a>. La verificación se realizó el 8 de noviembre de 2026 con la versión `1.0.0` (`versionCode` 2). El diseño de las pantallas está en 4.4 y el prototipo en 4.5.

### 5.2.5.1. Alcance respecto a las historias de usuario

La tabla muestra la cobertura de cada historia del Product Backlog (3.3) en la aplicación móvil. «Cubierta» significa que la aplicación implementa la historia completa; «Parcial», que implementa lo principal pero no todos sus criterios.

| Historia | Título | Estado | Qué hace la aplicación |
|----------|--------|--------|------------------------|
| US01 | Iniciar sesión en la aplicación | Cubierta | Usuario y contraseña; los tokens se guardan cifrados con una clave del Android Keystore y se renuevan solos |
| US02 | Registrarse en SafeStep | Cubierta | Registro con confirmación de contraseña e ingreso inmediato |
| US03 | Visualizar perfil de usuario | Cubierta | Pantalla Perfil con datos personales y dirección, editables y con guardado |
| US04 | Cambiar idioma de la aplicación | Parcial | La interfaz está en español e inglés y sigue el idioma del dispositivo; no hay selector dentro de la aplicación |
| US05 | Ver saldo de SafeCoins en la navegación | Parcial | El saldo se ve en Inicio, Progreso y Tienda; no hay un indicador fijo en la barra superior |
| US06 | Visualizar resumen general de entrenamiento | Cubierta | Inicio muestra nivel, experiencia, SafeCoins, racha y simulaciones completadas |
| US07 | Continuar con el siguiente entrenamiento | Cubierta | «Sigue practicando» en Inicio abre la simulación sugerida |
| US08 | Ver misiones activas desde el dashboard | Cubierta | Inicio muestra las misiones del día con su avance y recompensa |
| US10 | Visualizar catálogo de simulaciones | Cubierta | Lista con imagen, tema, nivel, duración y recompensa |
| US11 | Buscar simulaciones por nombre | Cubierta | Búsqueda por texto y filtros por nivel y tema |
| US12 | Revisar detalle de una simulación antes de iniciar | Cubierta | Pantalla de detalle con descripción, recompensa, duración y lo que se practica |
| US13 | Responder pasos de una simulación | Cubierta | Una opción por paso, con retroalimentación inmediata; la respuesta no se puede cambiar |
| US14 | Finalizar una simulación | Cubierta | «Finalizar simulación» envía el intento al servidor |
| US15 | Recibir SafeCoins por completar una simulación | Cubierta | La recompensa la calcula el servidor (70 % o más de aciertos; cada repetición aprobada paga la mitad) y la aplicación muestra lo que se acreditó |
| US16 | Ver resumen final de simulación | Parcial | Muestra porcentaje, pasos correctos, experiencia, monedas y saldo; no detalla el resultado de cada paso |
| US17 | Ver productos sugeridos según errores | Parcial | «Ver productos sugeridos» lleva a la tienda, que lista recomendaciones según las simulaciones practicadas |
| US18 | Visualizar resumen general de progreso | Cubierta | Pestaña Resumen con nivel, experiencia, SafeCoins, racha y actividad semanal |
| US19 | Revisar rendimiento por simulación | Parcial | El resumen muestra el rendimiento por dificultad y las habilidades; no hay un detalle por simulación |
| US22 | Consultar progreso de gamificación desde Progreso | Cubierta | Destino Progreso de la barra inferior |
| US23 | Visualizar resumen de gamificación | Cubierta | Pestaña Resumen |
| US24 | Ver misiones activas resumidas | Cubierta | Inicio y pestaña Misiones |
| US25 | Revisar inventario de misiones | Cubierta | Pestaña Misiones con todas las misiones, su avance y recompensa |
| US26 | Consultar ranking semanal | Cubierta | Pestaña Ranking con posición, experiencia y racha |
| US27 | Ver insignias desbloqueadas | Cubierta | Pestaña Insignias, con las desbloqueadas resaltadas |
| US28 | Ver inventario completo de insignias | Cubierta | Pestaña Insignias con las bloqueadas y su condición |
| US29 | Consultar historial de SafeCoins | Cubierta | Pestaña Monedas con cada movimiento, su exactitud y el multiplicador aplicado |
| US30 | Visualizar productos relevantes en tienda | Cubierta | Productos recomendados y catálogo completo |
| US31 | Buscar productos o kits | Cubierta | Búsqueda por texto en la pestaña Productos |
| US32 | Filtrar productos por categoría | Cubierta | Chips de categoría |
| US34 | Ver detalle de producto | Cubierta | Imagen, precio, valoración, descripción y existencias |
| US35 | Ver detalle de kit de emergencia | Parcial | La pestaña Kits muestra cada kit con su descripción, precio y descuento; no abre una pantalla de detalle propia |
| US36 | Agregar productos al carrito | Cubierta | «Agregar al carrito» desde el detalle (deshabilitado sin stock) |
| US37 | Modificar cantidades en carrito | Cubierta | Botones de más y menos por línea |
| US38 | Quitar productos del carrito | Cubierta | Botón de quitar por línea |
| US39 | Revisar resumen de compra | Cubierta | Subtotal, descuento del cupón y total a pagar |
| US40 | Completar pago ficticio | Cubierta con otra pasarela | El pago se hace con Stripe en la página del procesador; la aplicación nunca recibe datos de tarjeta. Se verificó con un servidor simulado, no con una cuenta real de Stripe |
| US41 | Consultar historial de compras | Cubierta | «Mis pedidos» |
| US42 | Canjear puntos por cupones | Cubierta | Pestaña Cupones de la tienda |
| US44 | Navegar por los módulos principales | Cubierta | Barra inferior con cinco destinos |
| US46 | Usar la aplicación en pantallas pequeñas | Cubierta | Aplicación nativa; diseño probado en 1080 × 2400 px |
| US59 | Canjear un cupón con SafeCoins | Cubierta | Botón «Canjear», habilitado solo si el saldo alcanza |
| US60 | Aplicar un cupón canjeado en el checkout | Cubierta | Selector de cupón en el carrito; el total se recalcula |
| US61 | Consultar mis cupones canjeados | Cubierta | «Mis cupones» en la pestaña Cupones |

No forman parte de la aplicación móvil: US09 (productos sugeridos desde el dashboard), US20 y US21 (errores frecuentes y recomendaciones accionables), US33 (volver a la vista principal de la tienda, que no existe como pantalla porque la tienda es un destino de la barra), US43 (reseñas de productos), US45 (notificaciones visuales), la landing (US47 a US56) y la administración (US57 y US58).

### 5.2.5.2. Arquitectura y stack

| Aspecto | Decisión |
|---------|----------|
| Lenguaje y plataforma | Kotlin sobre Android; `applicationId` `com.safestep.mobile`, `minSdk` 26, `targetSdk` 35, `compileSdk` 37 |
| Interfaz | Jetpack Compose con Material 3 (Compose BOM 2026.08.00), una sola actividad y navegación con Navigation Compose (barra inferior con cinco destinos y pila por destino) |
| Estado | `ViewModel` con `StateFlow` por pantalla; un estado explícito por etapa (cargando, contenido, error), por ejemplo `Intro → Playing → Submitting → Finished` en la simulación |
| Red | Retrofit 2.11 con `kotlinx-serialization` y OkHttp 4.12; un `Authenticator` renueva el token de acceso ante un 401 y repite la solicitud una vez |
| Sesión | Los tokens se guardan cifrados con AES-GCM con una clave del Android Keystore; al cerrar sesión se revoca el token de renovación |
| Imágenes | Coil 2.7, desde el origen configurado en `ASSETS_BASE_URL`; vacío muestra marcadores de posición |
| Pago | Página de Stripe en una pestaña del navegador (Custom Tabs); al volver, la aplicación pregunta al servidor si el pago se confirmó |
| Composición | `AppContainer` crea los repositorios a mano; no se usa un framework de inyección |
| Construcción | Android Gradle Plugin 9.3.2, Kotlin 2.3.21 y Gradle 9.5.0 |
| Idiomas | Recursos de texto en español e inglés (`values-es` y `values`) |
| Seguridad | `allowBackup` desactivado; el tráfico HTTP sin cifrar solo se permite en la variante `debug`, para llegar al backend local desde el emulador; la aplicación no contiene claves de Stripe ni credenciales de base de datos |

El código está organizado por contexto, como el backend: `core` (red, sesión, repositorios y `AppContainer`), `iam`, `profile`, `home`, `simulation`, `gamification` y `commerce`, con `ui` para el tema y los componentes comunes. El código de producción suma unas 3 300 líneas de Kotlin.

**La recompensa la calcula el servidor.** La aplicación solo envía el intento (puntaje y pasos); el servidor decide si fue exitoso (70 % o más de aciertos), aplica el multiplicador por repetición y acredita experiencia y monedas. La pantalla de resultado se arma con la diferencia entre el resumen de gamificación antes y después del intento, de modo que muestra exactamente lo que se registró.

La aplicación consume estos *endpoints* de la API REST (5.2.7), con la URL base `http://10.0.2.2:8092/api/v1` en la variante de depuración (la dirección con la que el emulador llega al backend de la computadora):

| Contexto | Método y ruta |
|----------|---------------|
| Autenticación | `POST /authentication/sign-in`, `/sign-up`, `/refresh-token`, `/logout`, `/forgot-password`, `/reset-password` |
| Perfil | `GET` y `PUT /profiles/me` |
| Simulaciones | `GET /simulations`, `GET /simulations/{id}`, `POST /simulations/{id}/attempts`, `GET /simulations/attempts/me` |
| Gamificación | `GET /gamification/summary/me`, `/missions`, `/badges/me`, `/leaderboard`, `/coin-transactions/me` |
| Analítica | `GET /analytics/summary/me`, `/analytics/certificates/me` |
| Catálogo | `GET /commerce/products`, `/products/{id}`, `/categories`, `/kits`, `/recommendations/me` |
| Carrito | `GET /commerce/cart/me`, `POST /commerce/cart/items`, `PUT` y `DELETE /commerce/cart/items/{id}` |
| Cupones | `GET /commerce/coupons`, `POST /commerce/coupons/{id}/redeem`, `GET /commerce/coupons/redeemed/me` |
| Pedidos y pago | `GET /commerce/orders/me`, `POST /commerce/orders`, `POST /commerce/orders/{id}/payments/stripe-checkout`, `/stripe-confirm`, `/stripe-cancel` |

**Artefacto.** El comando `./gradlew assembleDebug` genera el APK `app/build/outputs/apk/debug/app-debug.apk`, de aproximadamente 20 MB, firmado con la clave de depuración de Android y con la versión `1.0.0` (`versionCode` 2). Es el APK que se instaló en el emulador para la verificación. No se generó ni se distribuyó un APK firmado de publicación.

### 5.2.5.3. Evidencia de pruebas

Las pruebas se ejecutaron el 8 de noviembre de 2026. Las instrumentadas se corrieron en un emulador de Android Studio (Medium Phone, API 37) contra el backend de `main` (259 pruebas aprobadas, 6.1) levantado localmente, con una base de datos PostgreSQL temporal y la aplicación web sirviendo las imágenes.

| Tipo | Herramienta | Qué verifica | Resultado |
|------|-------------|--------------|-----------|
| Compilación | Gradle `assembleDebug` | Que la aplicación compila y empaqueta | Correcta |
| Unitaria | JUnit 4 y MockWebServer | Cliente de la API (inicio y cierre de sesión, token en cada llamada, renovación una sola vez, fin de sesión si falla la renovación, errores de red legibles, canje de cupón, confirmación del pago con Stripe, campos desconocidos ignorados), sesión, `AttemptScorer`, flujo de simulación, filtros, carrito y cupones, y validación de formularios | 25 de 25 aprobadas |
| Sistema | Compose UI Test en el emulador, contra la API real | Seis escenarios que se describen abajo | 6 de 6 aprobadas |
| Instrumentada de interfaz | Compose UI Test en el emulador | `MainActivityTest`: la pantalla sin sesión ofrece ingresar y registrarse, y rechaza credenciales cortas antes de llamar al servidor | 2 de 2 aprobadas |
| Recorrido de capturas | Compose UI Test en el emulador | `EvidenceTourTest`: recorre las 21 pantallas y guarda una captura de cada una | 1 de 1 aprobada |

En total son 25 pruebas unitarias y 9 instrumentadas, todas aprobadas.

**Pruebas de sistema.** Usan la aplicación instalada en el emulador y el backend real; cada una crea un jugador nuevo con un nombre aleatorio para no depender de datos previos.

| Escenario | Historias |
|-----------|-----------|
| Un visitante sin sesión ve el formulario de ingreso | US01 |
| Un visitante crea una cuenta desde la aplicación y entra | US02 |
| Una contraseña incorrecta se rechaza y el visitante sigue en el formulario | US01 |
| Una confirmación de contraseña distinta se rechaza antes de llamar al servidor | US02 |
| Un jugador completa una simulación y ve la recompensa del servidor | US10 a US16 |
| Las monedas de dos simulaciones compran un cupón y el carrito lo aplica | US29, US36, US39, US42, US59, US60 |

<div align="center">
  <p>
    <b>Figura 5.2.5.22</b>: Reporte de las pruebas unitarias (25 de 25 aprobadas)
  </p>
  <img src="../../assets/images/chapter-5/AndroidApp/android-pruebas-unitarias.png" alt="Reporte de pruebas unitarias" width="600" />
  <p>
    <i><b>Fuente</b>: Reporte HTML de Gradle (<code>testDebugUnitTest</code>).</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Figura 5.2.5.23</b>: Reporte de las pruebas instrumentadas en el emulador (9 de 9 aprobadas)
  </p>
  <img src="../../assets/images/chapter-5/AndroidApp/android-pruebas-sistema.png" alt="Reporte de pruebas instrumentadas" width="600" />
  <p>
    <i><b>Fuente</b>: Reporte HTML de Gradle (<code>connectedDebugAndroidTest</code>).</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Figura 5.2.5.24</b>: Pruebas de sistema por escenario (<code>SystemFlowTest</code>)
  </p>
  <img src="../../assets/images/chapter-5/AndroidApp/android-pruebas-sistema-flujos.png" alt="Reporte de SystemFlowTest" width="600" />
  <p>
    <i><b>Fuente</b>: Reporte HTML de Gradle (<code>connectedDebugAndroidTest</code>).</i>
  </p>
</div>

La verificación del pago con Stripe se hizo contra un servidor simulado (pruebas unitarias del cliente); la prueba con una cuenta real de Stripe necesita claves de prueba en el backend y queda pendiente.

### 5.2.5.4. Capturas de la aplicación

Capturas tomadas por la prueba `EvidenceTourTest` en el emulador, contra el backend real, con una interfaz en inglés. Los textos de simulaciones, misiones, insignias y cupones vienen del servidor y están en español.

<div align="center">
<table>
<tr>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/01-sign-in.png" alt="Ingreso" width="190" /><br><i><b>Figura 5.2.5.1.</b> Ingreso.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/02-register.png" alt="Registro" width="190" /><br><i><b>Figura 5.2.5.2.</b> Registro.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/03-forgot-password.png" alt="Recuperar contraseña" width="190" /><br><i><b>Figura 5.2.5.3.</b> Recuperar contraseña.</i></td>
</tr>
<tr>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/04-home.png" alt="Inicio" width="190" /><br><i><b>Figura 5.2.5.4.</b> Inicio.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/05-simulations.png" alt="Simulaciones" width="190" /><br><i><b>Figura 5.2.5.5.</b> Lista de simulaciones.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/06-simulation-intro.png" alt="Detalle de simulación" width="190" /><br><i><b>Figura 5.2.5.6.</b> Detalle de una simulación.</i></td>
</tr>
<tr>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/07-simulation-step.png" alt="Paso" width="190" /><br><i><b>Figura 5.2.5.7.</b> Paso de la simulación.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/08-simulation-feedback.png" alt="Retroalimentación" width="190" /><br><i><b>Figura 5.2.5.8.</b> Retroalimentación de la respuesta.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/09-simulation-result.png" alt="Resultado" width="190" /><br><i><b>Figura 5.2.5.9.</b> Resultado con la recompensa del servidor.</i></td>
</tr>
<tr>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/10-progress-summary.png" alt="Resumen" width="190" /><br><i><b>Figura 5.2.5.10.</b> Progreso: resumen.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/11-progress-missions.png" alt="Misiones" width="190" /><br><i><b>Figura 5.2.5.11.</b> Progreso: misiones.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/12-progress-badges.png" alt="Insignias" width="190" /><br><i><b>Figura 5.2.5.12.</b> Progreso: insignias.</i></td>
</tr>
<tr>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/13-progress-ranking.png" alt="Ranking" width="190" /><br><i><b>Figura 5.2.5.13.</b> Progreso: ranking.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/14-progress-coins.png" alt="Monedas" width="190" /><br><i><b>Figura 5.2.5.14.</b> Progreso: monedas.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/15-store-products.png" alt="Productos" width="190" /><br><i><b>Figura 5.2.5.15.</b> Tienda: productos.</i></td>
</tr>
<tr>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/16-store-kits.png" alt="Kits" width="190" /><br><i><b>Figura 5.2.5.16.</b> Tienda: kits.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/17-store-coupons.png" alt="Cupones" width="190" /><br><i><b>Figura 5.2.5.17.</b> Tienda: cupones.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/18-coupon-redeemed.png" alt="Cupón canjeado" width="190" /><br><i><b>Figura 5.2.5.18.</b> Cupón canjeado.</i></td>
</tr>
<tr>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/19-product-detail.png" alt="Detalle de producto" width="190" /><br><i><b>Figura 5.2.5.19.</b> Detalle de producto.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/20-cart-with-coupon.png" alt="Carrito" width="190" /><br><i><b>Figura 5.2.5.20.</b> Carrito con cupón.</i></td>
<td align="center"><img src="../../assets/images/chapter-5/AndroidApp/21-profile.png" alt="Perfil" width="190" /><br><i><b>Figura 5.2.5.21.</b> Perfil.</i></td>
</tr>
</table>
<p><i><b>Fuente</b>: Captura de la aplicación SafeStep Android 1.0.0 en el emulador.</i></p>
</div>

### 5.2.5.5. Limitaciones

- **Pago con Stripe sin probar de extremo a extremo.** El cliente se verificó con un servidor simulado; falta una prueba con claves de prueba reales de Stripe en el backend.
- **Sin distribución.** No existe un APK firmado de publicación ni una publicación en una tienda; el APK generado es el de depuración.
- **Imágenes.** Se sirven desde la aplicación web (`ASSETS_BASE_URL`). En la variante de publicación el origen está vacío, por lo que se verían marcadores de posición hasta definir el dominio definitivo.
- **Idioma del contenido.** La interfaz está en español e inglés, pero el contenido que viene del servidor (simulaciones, misiones, insignias, cupones) está solo en español, y el idioma lo fija el dispositivo (US04 parcial).
- **Sin administración.** La gestión del catálogo, los cupones y los roles es solo de la aplicación web.
- **Pruebas de interfaz limitadas a flujos clave.** Los seis escenarios de sistema cubren ingreso, registro, simulación con recompensa y cupón con carrito; el resto de las pantallas se verifica con las capturas y con las pruebas unitarias de los `ViewModel`.
- **Solo Android.** No hay aplicación para iOS (4.5.2).
- **Entorno de Windows.** La ruta del proyecto contiene la letra «ñ», con la que Gradle no localiza las clases de prueba; las pruebas se ejecutan montando la carpeta en una unidad con ruta ASCII (`subst`), como indica el README del repositorio. En el emulador con renderizado por software, la interfaz del sistema puede tapar las capturas; con `-gpu host` y cuatro núcleos funciona bien.
