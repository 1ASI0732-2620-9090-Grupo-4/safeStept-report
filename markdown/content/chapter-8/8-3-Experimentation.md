# 8.3. Experimentation

Esta fase lleva a la práctica las tarjetas de experimento de 8.1.5. Siguiendo la indicación del curso, no se implementan las diez preguntas: se toman las de mayor prioridad de la matriz (8.1.4), se redactan sus historias de usuario y se ordenan en un backlog «To-Be», es decir, el backlog del producto tal como queremos que sea después de aprender. Las tres tarjetas de mayor prioridad son Q5 (motivo del abandono), Q7 (costo del primer cupón) y Q1 (guía de bienvenida). Las otras siete quedan diseñadas y en espera.

## 8.3.1. To-Be User Stories

Las historias siguen el formato de 3.2: **Como [rol], quiero [necesidad], para [beneficio]**, con criterios de aceptación en Gherkin (**Dado que / Cuando / Entonces**). Continúan la numeración existente (la última historia de usuario es US61 y la última historia técnica es TS31). Cada historia se vincula con la tarjeta de experimento que la origina, para conservar la trazabilidad entre la pregunta, la hipótesis y el código.

**Trazabilidad entre experimentos e historias**

| Historia | Título | Tarjeta | Hipótesis o propósito | Épica |
| --- | --- | --- | --- | --- |
| US62 | Indicar por qué abandono una simulación | Q5 | Exploratoria: descubrir las causas del abandono | EP03 |
| US63 | Ver el precio del cupón de mi variante de experimento | Q7 | H1: un precio de 100 monedas sube el canje en 20 puntos | EP06 |
| US64 | Ver una guía de bienvenida | Q1 | H1: la guía sube en 20 puntos la primera simulación terminada | EP02 |
| US65 | Consultar el avance de recolección de un experimento | Todas | Verificar que se alcanzó la muestra sin mirar resultados | EP07 |
| TS32 | Registrar eventos de uso | Todas | Habilita las medidas de 8.2.8 | EP09 |
| TS33 | Asignar variantes de experimento de forma estable | Q7, Q1 | Garantiza la asignación aleatoria y estable de 8.2.4 | EP09 |
| TS34 | Enviar eventos desde el frontend | Todas | Captura en la aplicación web los eventos de 8.2.8 | EP09 |
| TS35 | Probar automáticamente cada variante | Q7, Q1, Q5 | Evita que una variante rompa el flujo central | EP09 |

<table border="1" cellpadding="6" cellspacing="0" width="100%">
  <tbody>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US62</td><td>usuario</td><td>#92</td><td>EP03</td></tr>
    <tr><th>Title</th><td colspan="3">Indicar por qué abandono una simulación</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario que sale de una simulación sin terminarla, <b>quiero</b> poder indicar en una pregunta breve por qué la dejo, <b>para</b> que el equipo mejore las simulaciones que me resultan largas, difíciles o confusas.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario respondió al menos un paso de una simulación y no la terminó, <b>Cuando</b> intenta salir de ella, <b>Entonces</b> el sistema muestra una pregunta no bloqueante con cinco opciones fijas (muy larga, muy difícil, no entendí cómo funcionan las monedas, me interrumpieron, otro) y un campo de texto opcional<br><br>- <b>Dado que</b> se muestra la pregunta, <b>Cuando</b> el usuario la cierra sin responder, <b>Entonces</b> sale de la simulación sin ninguna demora y la pregunta no vuelve a aparecer para esa simulación durante la misma sesión<br><br>- <b>Dado que</b> el usuario elige un motivo, <b>Cuando</b> confirma, <b>Entonces</b> el sistema registra el motivo y el paso en que abandonó, asociados solo a un identificador seudónimo<br><br>- <b>Dado que</b> el usuario terminó la simulación, <b>Cuando</b> sale de ella, <b>Entonces</b> la pregunta no se muestra<br><br>- <b>Dado que</b> el registro del motivo falla por un problema de red o del servidor, <b>Cuando</b> el usuario confirma, <b>Entonces</b> sale de la simulación sin ver ningún error y el motivo no se guarda</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US63</td><td>usuario</td><td>#94</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Ver el precio del cupón de mi variante de experimento</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario nuevo, <b>quiero</b> ver y pagar el precio del cupón de 5 % en toda la tienda que me corresponde según la variante del experimento, <b>para</b> que el equipo averigüe qué precio hace que más personas lo canjeen.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el experimento de precio está activo y el usuario es nuevo, <b>Cuando</b> abre la página de cupones, <b>Entonces</b> el cupón de 5 % en toda la tienda muestra el precio de su variante (100, 150 o 200 SafeCoins)<br><br>- <b>Dado que</b> el usuario canjea ese cupón, <b>Cuando</b> tiene saldo suficiente para el precio de su variante, <b>Entonces</b> se descuenta exactamente ese precio de su saldo y el cupón queda disponible en sus cupones<br><br>- <b>Dado que</b> el usuario ya fue asignado a una variante, <b>Cuando</b> vuelve a la página en otro momento o en otra sesión, <b>Entonces</b> ve siempre el mismo precio<br><br>- <b>Dado que</b> el experimento terminó o el usuario no forma parte de él, <b>Cuando</b> abre la página de cupones, <b>Entonces</b> ve el precio estándar de 150 SafeCoins<br><br>- <b>Dado que</b> el usuario no tiene saldo suficiente para el precio de su variante, <b>Cuando</b> mira el cupón, <b>Entonces</b> el botón de canje aparece deshabilitado con el texto de saldo insuficiente y no se descuenta nada<br><br>- <b>Dado que</b> el servicio de asignación no responde, <b>Cuando</b> el usuario abre la página de cupones, <b>Entonces</b> ve el precio estándar de 150 SafeCoins y su canje funciona con normalidad</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US64</td><td>usuario nuevo</td><td>#93</td><td>EP02</td></tr>
    <tr><th>Title</th><td colspan="3">Ver una guía de bienvenida</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario nuevo, <b>quiero</b> ver una guía breve de tres pasos que me explique qué son la XP, las SafeCoins y las misiones, <b>para</b> entender cómo funciona SafeStep desde mi primera visita.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario es nuevo, no ha completado ninguna simulación y su variante incluye la guía, <b>Cuando</b> abre el dashboard, <b>Entonces</b> ve una tarjeta con tres pasos: cómo se ganan XP, cómo se ganan y se gastan las SafeCoins y cómo funcionan las misiones<br><br>- <b>Dado que</b> se muestra la guía, <b>Cuando</b> el usuario la omite o la cierra, <b>Entonces</b> desaparece y no se vuelve a mostrar<br><br>- <b>Dado que</b> el usuario ya completó una simulación o su variante no incluye la guía, <b>Cuando</b> abre el dashboard, <b>Entonces</b> el dashboard se muestra sin la guía<br><br>- <b>Dado que</b> el usuario avanza por los pasos, <b>Cuando</b> termina el tercero, <b>Entonces</b> la guía se cierra y se registra que fue completada<br><br>- <b>Dado que</b> la guía no puede cargarse, <b>Cuando</b> el usuario abre el dashboard, <b>Entonces</b> el dashboard se muestra normalmente, sin guía y sin mensaje de error</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US65</td><td>administrador</td><td>#96</td><td>EP07</td></tr>
    <tr><th>Title</th><td colspan="3">Consultar el avance de recolección de un experimento</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> administrador, <b>quiero</b> ver cuántos usuarios hay en cada variante de un experimento y qué fracción de la muestra planificada se alcanzó, <b>para</b> saber cuándo puede cerrarse el experimento sin mirar sus resultados antes de tiempo.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> existe un experimento activo, <b>Cuando</b> el administrador abre el panel de experimentos, <b>Entonces</b> ve por cada variante el número de usuarios y el porcentaje de la muestra planificada<br><br>- <b>Dado que</b> el experimento sigue activo, <b>Cuando</b> el administrador consulta el panel, <b>Entonces</b> no se muestra la medida principal ni ninguna comparación entre variantes<br><br>- <b>Dado que</b> el experimento se cerró, <b>Cuando</b> el administrador consulta el panel, <b>Entonces</b> se habilita la exportación de los datos agregados<br><br>- <b>Dado que</b> el usuario no es administrador, <b>Cuando</b> intenta abrir el panel, <b>Entonces</b> es redirigido al dashboard</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS32</td><td>developer</td><td>#89</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Registrar eventos de uso</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> un punto de entrada del backend que reciba y guarde los eventos de uso definidos en 8.2.8, <b>para</b> poder calcular las medidas de los experimentos sin depender de los datos del producto.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el cliente envía un lote de eventos válidos, <b>Cuando</b> el backend lo recibe, <b>Entonces</b> los guarda en una tabla propia y responde con éxito<br><br>- <b>Dado que</b> un evento tiene un nombre desconocido o propiedades inválidas, <b>Cuando</b> se recibe, <b>Entonces</b> se rechaza con un error de validación sin afectar a los demás eventos del lote<br><br>- <b>Dado que</b> se recibe dos veces el mismo <code>eventId</code>, <b>Cuando</b> se procesa el segundo, <b>Entonces</b> no se duplica el registro<br><br>- <b>Dado que</b> el evento no trae identificador de usuario, <b>Cuando</b> se recibe, <b>Entonces</b> se rechaza<br><br>- <b>Dado que</b> el evento incluye datos personales en sus propiedades, <b>Cuando</b> se valida, <b>Entonces</b> solo se aceptan las propiedades definidas en el esquema</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS33</td><td>developer</td><td>#90</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Asignar variantes de experimento de forma estable</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> un servicio que asigne a cada usuario una variante de cada experimento a partir de su identificador y del nombre del experimento, <b>para</b> que la asignación sea aleatoria, estable y reproducible.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> un usuario y un experimento, <b>Cuando</b> se pide su variante varias veces, <b>Entonces</b> el resultado es siempre el mismo<br><br>- <b>Dado que</b> un gran número de usuarios, <b>Cuando</b> se asignan variantes, <b>Entonces</b> la proporción por variante se aproxima a la configurada (por ejemplo, un tercio cada una en un experimento de tres variantes)<br><br>- <b>Dado que</b> dos experimentos distintos, <b>Cuando</b> se asigna al mismo usuario, <b>Entonces</b> las asignaciones son independientes<br><br>- <b>Dado que</b> un experimento está cerrado o desactivado, <b>Cuando</b> se pide la variante, <b>Entonces</b> se devuelve la experiencia estándar</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS34</td><td>developer</td><td>#91</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Enviar eventos desde el frontend</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> un servicio del frontend que reúna los eventos de uso y los envíe en lotes al backend, <b>para</b> capturar las medidas de los experimentos sin ralentizar ni interrumpir la aplicación.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> ocurre un evento definido en 8.2.8, <b>Cuando</b> el servicio lo recibe, <b>Entonces</b> lo completa con las propiedades comunes (<code>eventId</code>, hora, usuario seudónimo, sesión, plataforma y asignaciones) y lo encola<br><br>- <b>Dado que</b> hay eventos en la cola, <b>Cuando</b> se cumple el intervalo de envío o se cierra la página, <b>Entonces</b> se envían en un solo lote<br><br>- <b>Dado que</b> el envío falla, <b>Cuando</b> el servicio lo detecta, <b>Entonces</b> reintenta una vez y descarta el lote si vuelve a fallar, sin mostrar ningún error al usuario<br><br>- <b>Dado que</b> el usuario no ha iniciado sesión, <b>Cuando</b> ocurre un evento, <b>Entonces</b> no se registra</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS35</td><td>developer</td><td>#95</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Probar automáticamente cada variante</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> pruebas automáticas que recorran el flujo central con cada variante de los experimentos, <b>para</b> evitar que una variante rompa el recorrido de simulación, monedas y cupones.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> existe una variante de un experimento, <b>Cuando</b> se ejecuta la suite de pruebas de sistema, <b>Entonces</b> hay al menos un escenario Selenium y Cucumber que recorre el flujo central con esa variante<br><br>- <b>Dado que</b> una prueba unitaria evalúa el servicio de asignación, <b>Cuando</b> se ejecuta, <b>Entonces</b> verifica la estabilidad, la proporción y la independencia entre experimentos<br><br>- <b>Dado que</b> se ejecuta el pipeline de integración continua, <b>Cuando</b> falla alguna de estas pruebas, <b>Entonces</b> el pipeline se detiene</td></tr>
  </tbody>
</table>

## 8.3.2. To-Be Product Backlog

El Product Backlog To-Be continúa el de 3.3. Los 88 elementos de 3.3 corresponden al producto ya construido (Sprints 1 a 5); aquí se agregan los elementos nuevos, que ocupan los lugares #89 a #96. La columna **# Orden** indica la prioridad relativa. El orden combina dos criterios: primero las historias técnicas que habilitan todos los experimentos (registro de eventos, asignación de variantes y envío desde el frontend), y después las historias de usuario en el orden de prioridad de la matriz de 8.1.4 (Q5, Q1 y Q7). La prueba automática de variantes se ubica antes del panel de avance, que es el elemento de menor urgencia. Cada elemento incluye su estimación en story points con la escala Fibonacci (1, 2, 3, 5 u 8).

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <thead>
        <tr>
            <th align="center"><b># Orden</b></th>
            <th align="center"><b>User Story Id</b></th>
            <th align="center"><b>Título</b></th>
            <th align="center"><b>Descripción</b></th>
            <th align="center"><b>Origen</b></th>
            <th align="center"><b>Story Points<br>(1 / 2 / 3 / 5 / 8)</b></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td align="center">89</td>
            <td align="center">TS32</td>
            <td>Registrar eventos de uso</td>
            <td>Como developer, quiero un punto de entrada del backend que reciba y guarde los eventos de uso para calcular las medidas de los experimentos.</td>
            <td align="center">Todas las tarjetas</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">90</td>
            <td align="center">TS33</td>
            <td>Asignar variantes de experimento de forma estable</td>
            <td>Como developer, quiero un servicio que asigne a cada usuario una variante de forma aleatoria, estable y reproducible.</td>
            <td align="center">Q7, Q1</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">91</td>
            <td align="center">TS34</td>
            <td>Enviar eventos desde el frontend</td>
            <td>Como developer, quiero un servicio del frontend que reúna los eventos y los envíe en lotes sin interrumpir la aplicación.</td>
            <td align="center">Todas las tarjetas</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">92</td>
            <td align="center">US62</td>
            <td>Indicar por qué abandono una simulación</td>
            <td>Como usuario que sale de una simulación sin terminarla, quiero indicar en una pregunta breve por qué la dejo para que se mejoren las simulaciones.</td>
            <td align="center">Q5 (prioridad 1)</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">93</td>
            <td align="center">US64</td>
            <td>Ver una guía de bienvenida</td>
            <td>Como usuario nuevo, quiero ver una guía breve que me explique XP, SafeCoins y misiones para entender cómo funciona SafeStep.</td>
            <td align="center">Q1 (prioridad 3)</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">94</td>
            <td align="center">US63</td>
            <td>Ver el precio del cupón de mi variante de experimento</td>
            <td>Como usuario nuevo, quiero ver y pagar el precio del cupón que me corresponde según mi variante para que el equipo averigüe qué precio logra más canjes.</td>
            <td align="center">Q7 (prioridad 2)</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">95</td>
            <td align="center">TS35</td>
            <td>Probar automáticamente cada variante</td>
            <td>Como developer, quiero pruebas automáticas que recorran el flujo central con cada variante para evitar que alguna lo rompa.</td>
            <td align="center">Q7, Q1, Q5</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">96</td>
            <td align="center">US65</td>
            <td>Consultar el avance de recolección de un experimento</td>
            <td>Como administrador, quiero ver cuántos usuarios hay en cada variante y qué fracción de la muestra se alcanzó, sin ver los resultados antes de tiempo.</td>
            <td align="center">Todas</td>
            <td align="center">5</td>
        </tr>
    </tbody>
</table>

**Por qué US63 va después de US64.** El experimento de la guía (Q1) cambia cuántas monedas ganan los usuarios al comienzo, y eso modifica quiénes son elegibles para el experimento del cupón (Q7). Por eso, siguiendo la regla de experimentos en paralelo de 8.2.6, la guía se implementa y se ejecuta primero, y el precio del cupón después, con usuarios que se registran una vez cerrado el de la guía.

**Total de la iteración To-Be:** 32 story points (3 historias de usuario de experimento con 11 puntos, 1 historia de administración con 5 puntos y 4 historias técnicas con 16 puntos).

### Preguntas diseñadas y en espera

Las otras siete tarjetas no tienen historia de usuario numerada porque no se implementarán en esta iteración. Se listan aquí con el trabajo que requerirían, para que el backlog conserve el camino no recorrido:

| Tarjeta | Qué habría que construir | Dependencias |
| --- | --- | --- |
| Q8 — Bonificación por racha | Contador de racha y regla de bonificación de +20 % en el cálculo de monedas | TS32, TS33, TS34 |
| Q3 — Experiencia previa | Pregunta de experiencia previa en el registro y evento `account_registered` con ese dato | TS32, TS34 |
| Q9 — Umbral de aprobación | Umbral configurable por variante en la regla de recompensa y revisión previa por tratarse de una regla educativa | TS32, TS33, TS34 |
| Q2 — Recompensa visible | Texto adicional en la tarjeta de simulación con la recompensa del próximo intento | TS32, TS33, TS34 |
| Q6 — Producto con frase contextual | Frase contextual en la sugerencia de producto tras una simulación aprobada | TS32, TS33, TS34 |
| Q4 — Primera simulación | Solo eventos (`simulation_started` con `entryPoint`) | TS32, TS34 |
| Q10 — Frecuencia de regreso | Solo eventos (`session_started`, `simulation_completed`) | TS32, TS34 |

Las historias técnicas TS32 a TS34 se construyen una sola vez y sirven a las diez tarjetas, por lo que dejan listo el camino para ejecutar cualquiera de las siete restantes cuando el equipo lo decida.

## 8.3.3. Pipeline-supported, Experiment-Driven To-Be Software Platform Lifecycle

### 8.3.3.1. To-Be Sprint Backlogs

Pendiente.

### 8.3.3.2. Implemented To-Be Landing Page Evidence

Pendiente.

### 8.3.3.3. Implemented To-Be Frontend-Web Application Evidence

Pendiente.

### 8.3.3.4. Implemented To-Be Native-Mobile Application Evidence

Pendiente.

### 8.3.3.5. Implemented To-Be RESTful API and/or Serverless Backend Evidence

Pendiente.

### 8.3.3.6. Team Collaboration Insights

Pendiente.

## Matriz de Evaluación Ética y de Impacto

Pendiente.

## 8.3.4. To-Be Validation Interviews

### 8.3.4.1. Diseño de Entrevistas

Pendiente.

### 8.3.4.2. Registro de Entrevistas

Pendiente.
