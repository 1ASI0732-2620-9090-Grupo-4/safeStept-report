<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-5/capitulo-5.png" alt="Capitulo 5" />
</div>

<br>
<br>

# 5.2. Landing Page, Services & Applications Implementation.

## 5.2.4. Acuerdo de Servicio - SaaS

Esta sección establece los derechos, las obligaciones y las restricciones aplicables a las personas que usan la plataforma SafeStep, para que el uso del servicio sea transparente. Está redactada en lenguaje claro y describe el servicio tal como está implementado y desplegado, sin prometer capacidades que el producto no tiene. SafeStep se ofrece como **piloto académico** del curso Diseño de Experimentos de Ingeniería de Software de la UPC, desarrollado por el equipo Chronos; la Landing Page indica que durante el piloto no se ofrecen planes comerciales.

**Versión del acuerdo:** 1.0 · **Fecha de redacción:** 8 de octubre de 2026.

### 5.2.4.1. Resumen en lenguaje sencillo

| Tema | Qué debe saber la persona usuaria |
|------|-----------------------------------|
| Qué es SafeStep | Una plataforma educativa para practicar primeros auxilios con simulaciones, misiones, insignias y una tienda de productos de emergencia |
| Qué no es | No reemplaza una capacitación presencial, la atención de un profesional de la salud ni la llamada a los servicios de emergencia |
| Disponibilidad | Es un piloto: el servicio puede estar lento, suspendido o fuera de línea sin aviso previo |
| Cuenta | Es personal; la contraseña es responsabilidad de quien la crea |
| SafeCoins y cupones | No tienen valor en dinero, no se pueden transferir ni cambiar por efectivo |
| Pagos | Durante el piloto los pagos se procesan en el modo de prueba de Stripe: no se cobra dinero real |
| Datos personales | Se tratan según la Ley N.° 29733; se piden solo los datos necesarios para el servicio |
| Cambios | Este acuerdo puede actualizarse; la versión vigente es la publicada |

### 5.2.4.2. Partes y objeto del acuerdo

Este acuerdo se celebra entre el equipo **Chronos** (en adelante, «el Proveedor»), responsable del producto SafeStep en el marco del curso, y toda persona que se registra o usa la plataforma (en adelante, «el Usuario»). Su objeto es regular el acceso y el uso de los componentes del servicio:

| Componente | Descripción | Dirección |
|------------|-------------|-----------|
| Landing Page | Presenta el producto y sus funciones | Publicada en GitHub Pages |
| Aplicación web | Aplicación Angular con simulaciones, progreso, gamificación, tienda y panel de administración | <a href="https://safestept-frontend-experimentos.onrender.com">https://safestept-frontend-experimentos.onrender.com</a> |
| API REST | Servicios que consume la aplicación web, documentados con OpenAPI | <a href="https://safestept-backend-experimentos.onrender.com/swagger-ui/index.html">https://safestept-backend-experimentos.onrender.com/swagger-ui/index.html</a> |
| Base de datos | PostgreSQL gestionada que guarda la información de la plataforma | No accesible públicamente |

Registrarse, iniciar sesión o usar la aplicación implica haber leído y aceptado este acuerdo. Quien no esté de acuerdo debe abstenerse de usar el servicio.

### 5.2.4.3. Descripción y nivel de servicio

El servicio se presta «tal como está», en modalidad de prueba, y **no incluye un acuerdo de nivel de servicio (SLA) ni garantías de disponibilidad**. Las condiciones reales de operación son las siguientes:

| Aspecto | Condición actual |
|---------|------------------|
| Infraestructura | Servicios en el plan gratuito de Render (región Frankfurt, Unión Europea) |
| Suspensión por inactividad | El backend se suspende tras unos 15 minutos sin tráfico; la primera petición posterior tarda al menos 50 segundos y puede tardar varios minutos mientras la aplicación arranca |
| Base de datos | Plan gratuito con fecha de caducidad (7 de noviembre de 2026); pasada esa fecha los datos pueden eliminarse si no se migra a un plan de pago |
| Copias de seguridad | No se garantizan copias de seguridad de los datos |
| Mantenimiento | Puede interrumpirse el servicio para actualizar la aplicación o por mantenimiento de la plataforma de alojamiento, sin aviso previo |
| Soporte | Por el canal indicado en 5.2.4.11, sin tiempos de respuesta garantizados |

El Proveedor se esfuerza por mantener el servicio en funcionamiento durante los periodos de evaluación del curso, pero no responde por interrupciones, pérdidas de datos de prueba ni por la lentitud propia de la infraestructura gratuita.

### 5.2.4.4. Cuentas, roles y acceso

- **Registro.** Cualquier persona puede crear una cuenta indicando un usuario o correo y una contraseña. El registro público siempre otorga el rol de jugador (`ROLE_USER`); no se pueden solicitar roles distintos al registrarse.
- **Roles.** Existen tres roles: jugador (`ROLE_USER`), instructor (`ROLE_INSTRUCTOR`) y administrador (`ROLE_ADMIN`). Solo un administrador puede cambiar los roles de otra persona; un administrador no puede quitarse a sí mismo el rol de administrador y el sistema siempre conserva al menos uno.
- **Contraseña.** Debe tener como mínimo 8 caracteres; la pantalla de registro recomienda además incluir una mayúscula, un número y un carácter especial. El sistema guarda las contraseñas cifradas con el algoritmo BCrypt y el Proveedor no puede ver la contraseña original.
- **Sesión.** Al iniciar sesión el sistema entrega un token firmado que vale 7 días y un token de renovación que vale 30 días. La aplicación web guarda esos datos en el almacenamiento local del navegador hasta que la persona cierra sesión.
- **Responsabilidad.** El Usuario es responsable de la actividad realizada con su cuenta, de mantener su contraseña en reserva y de avisar si sospecha un uso no autorizado. La cuenta es personal y no se puede ceder.
- **Edad.** Las personas menores de edad deben usar la plataforma con autorización y supervisión de su madre, padre o representante legal.

### 5.2.4.5. Derechos y obligaciones

**Derechos del Usuario:**

1. Acceder a las funciones de la plataforma según su rol, de forma gratuita durante el piloto.
2. Conocer qué datos personales se tratan y para qué (ver 5.2.4.9) y ejercer sus derechos sobre ellos.
3. Dejar de usar el servicio en cualquier momento y solicitar la eliminación de su cuenta.
4. Recibir información clara sobre el contenido educativo y sus límites.

**Obligaciones del Usuario:**

1. Proporcionar datos veraces y mantenerlos actualizados.
2. Usar la plataforma solo con fines lícitos y de aprendizaje, conforme a este acuerdo.
3. Respetar los derechos de las demás personas usuarias y del Proveedor.
4. No intentar acceder a cuentas, datos o funciones que no le corresponden.

**Derechos del Proveedor:** modificar, suspender o retirar funciones del servicio; desactivar cuentas que incumplan este acuerdo; y actualizar este acuerdo.

**Obligaciones del Proveedor:** prestar el servicio con diligencia razonable dentro de las limitaciones del piloto, proteger los datos personales con medidas técnicas razonables y mantener informada a la persona usuaria sobre cambios relevantes.

### 5.2.4.6. Uso aceptable y restricciones

Queda prohibido:

- Intentar vulnerar la seguridad de la plataforma, sobrecargarla con peticiones automatizadas o explotar fallos para obtener ventajas (por ejemplo, manipular puntajes, SafeCoins o cupones).
- Crear cuentas falsas o múltiples para acumular recompensas.
- Publicar o transmitir contenido ilícito, ofensivo o que infrinja derechos de terceros.
- Copiar, revender o explotar comercialmente el contenido de la plataforma fuera de lo que permite la licencia del código fuente.
- Usar la plataforma como única fuente de decisión en una emergencia real.

El incumplimiento puede dar lugar a la desactivación de la cuenta, que solo puede hacer un administrador.

### 5.2.4.7. SafeCoins, cupones y compras

- **SafeCoins.** Son puntos virtuales que se ganan al completar simulaciones, según el puntaje y las repeticiones. **No tienen valor monetario**, no son transferibles y no se pueden canjear por dinero.
- **Cupones.** Se canjean con SafeCoins del catálogo definido por el administrador: hay cupones de descuento porcentual sobre toda la compra y cupones de descuento porcentual que exigen un monto mínimo de compra. Cada cupón canjeado es personal, de **un solo uso** y conserva las condiciones con las que se canjeó, aunque el catálogo cambie después. Si el pago falla o se cancela, el cupón vuelve a estar disponible.
- **Saldo insuficiente.** Si el saldo no alcanza, el canje se rechaza y el saldo no cambia.
- **Compras.** La tienda ofrece productos y kits de emergencia. El pago se realiza en la página de Stripe Checkout y SafeStep no almacena números de tarjeta. **Durante el piloto, Stripe opera en modo de prueba: no se realizan cobros reales** y, al tratarse de un piloto, no se despachan productos físicos.
- **Cambios del catálogo.** El Proveedor puede modificar precios, productos, cupones y recompensas en cualquier momento.

### 5.2.4.8. Contenido educativo y responsabilidad médica

SafeStep es una herramienta educativa complementaria. Las simulaciones y los textos se elaboraron con fines de aprendizaje y **no constituyen consejo médico, diagnóstico ni tratamiento**. No sustituyen la capacitación práctica con profesionales acreditados, la evaluación de un profesional de la salud ni la comunicación con los servicios de emergencia. Ante una emergencia real, la persona debe llamar a los servicios de emergencia locales y seguir sus indicaciones. El Proveedor no responde por decisiones tomadas en una situación real con base solo en el contenido de la plataforma.

### 5.2.4.9. Privacidad y protección de datos personales

El tratamiento de los datos personales se rige por la Ley N.° 29733, Ley de Protección de Datos Personales del Perú.

| Aspecto | Descripción |
|---------|-------------|
| Datos que se tratan | Usuario o correo, nombre y apellido, datos de contacto y dirección si la persona los registra, progreso (XP, nivel, racha), intentos de simulación y puntajes, movimientos de SafeCoins, cupones, carrito y órdenes, y registros técnicos del servidor |
| Finalidad | Crear y mantener la cuenta, mostrar el progreso, calcular recompensas, procesar compras de prueba, mantener la seguridad y evaluar el piloto académico |
| Base del tratamiento | Consentimiento otorgado al registrarse y al aceptar este acuerdo |
| Terceros | Render (alojamiento, Unión Europea) y Stripe (procesamiento de pagos); cada uno aplica sus propias políticas |
| Seguridad | Contraseñas cifradas con BCrypt, comunicación por HTTPS, acceso a la base de datos solo desde la red privada de la plataforma y control de acceso por roles |
| Conservación | Durante el piloto; los datos pueden eliminarse al terminar el periodo académico o cuando caduque la infraestructura gratuita |
| Derechos | La persona puede solicitar acceso, actualización, rectificación, supresión u oposición respecto de sus datos (derechos ARCO) mediante el canal de contacto |
| Transferencia | Los datos se alojan en servidores fuera del Perú (Frankfurt, Unión Europea) |

El Proveedor no vende los datos personales ni los usa para fines distintos de los indicados.

### 5.2.4.10. Propiedad intelectual y limitación de responsabilidad

**Propiedad intelectual.** El código fuente del backend se publica bajo la licencia indicada en su repositorio (MIT); las bibliotecas de terceros conservan sus propias licencias. Los nombres, el logotipo y los textos de SafeStep pertenecen al equipo Chronos. El Usuario conserva los derechos sobre los datos que ingresa y otorga al Proveedor el permiso necesario para tratarlos con las finalidades de este acuerdo.

**Limitación de responsabilidad.** En la medida permitida por la ley, el Proveedor no responde por daños indirectos, pérdida de datos, interrupciones del servicio, errores del contenido ni por el uso que se haga de la información de la plataforma. Esta limitación no afecta los derechos que la ley reconoce a las personas consumidoras ni la responsabilidad que no pueda excluirse legalmente.

**Suspensión y terminación.** El Proveedor puede suspender o desactivar una cuenta que incumpla este acuerdo o ponga en riesgo la seguridad del servicio, y puede cerrar el piloto al terminar el curso. El Usuario puede dejar de usar la plataforma cuando quiera y solicitar la eliminación de su cuenta.

### 5.2.4.11. Modificaciones, ley aplicable y contacto

- **Modificaciones.** El Proveedor puede actualizar este acuerdo; la versión vigente es la que figura publicada y el uso continuado del servicio después de un cambio implica su aceptación. Los cambios se registran en la tabla de versiones de esta sección.
- **Ley aplicable.** El acuerdo se rige por las leyes de la República del Perú. Las controversias se resolverán ante los tribunales competentes del Perú.
- **Contacto.** Las consultas, solicitudes sobre datos personales y reportes de problemas se canalizan mediante la organización del equipo en GitHub: <a href="https://github.com/1ASI0732-2620-9090-Grupo-4">https://github.com/1ASI0732-2620-9090-Grupo-4</a>.

| Versión | Fecha | Cambios |
|---------|-------|---------|
| 1.0 | 8 de octubre de 2026 | Redacción inicial del acuerdo para el piloto académico |

### 5.2.4.12. Integración en el sitio web

El enunciado indica que este acuerdo debe integrarse públicamente en la sección «Términos y Condiciones» del sitio web. En la Landing Page actual el pie de página muestra el aviso «Términos y privacidad en revisión para el piloto académico», y los enlaces «Términos y Condiciones» y «Política de Privacidad» de la página «Acerca de» todavía apuntan a un marcador vacío. La publicación de este texto como página propia del sitio queda **pendiente** y es el paso necesario para cumplir el criterio de accesibilidad del acuerdo.
