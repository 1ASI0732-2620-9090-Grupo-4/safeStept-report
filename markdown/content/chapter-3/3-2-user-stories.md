<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-3/capitulo-3.png" alt="Capitulo 3" />
</div>

<br>
<br>

# 3.2. User Stories

En esta sección se presentan las épicas, user stories y technical stories que guían el desarrollo de SafeStep. Las historias se redactan desde la perspectiva del usuario o del equipo de desarrollo, siguiendo la estructura **Como [rol], quiero [necesidad], para [beneficio]**, con el fin de relacionar cada requerimiento con un valor concreto para el producto.
 
Los criterios de aceptación se expresan bajo el formato **Gherkin**, utilizando la estructura **Dado que / Cuando / Entonces**. De esta manera, cada historia cuenta con condiciones verificables que permiten validar su cumplimiento durante el desarrollo, las pruebas funcionales y la revisión de cada Sprint. Las filas identificadas como épicas no incluyen criterios de aceptación específicos, debido a que funcionan como agrupadores de historias relacionadas.

En la columna **Priority**, `#1` indica la mayor prioridad y cada número corresponde al **# Orden** del Product Backlog de 3.3. Las épicas agrupan historias y no tienen una prioridad independiente. Se conserva una sola tabla para todo el conjunto de épicas e historias; cada ficha ocupa varias filas conforme al formato del statement.


<table border="1" cellpadding="6" cellspacing="0" width="100%">
  <tbody>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>EP02</td><td>usuario de SafeStep</td><td>—</td><td>No aplica</td></tr>
    <tr><th>Title</th><td colspan="3">Dashboard principal</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario de SafeStep, <b>quiero</b> visualizar un dashboard principal con mi avance, entrenamientos, misiones y productos sugeridos, <b>para</b> decidir rapidamente que hacer despues.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">No aplica por tratarse de una epica agrupadora.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US06</td><td>usuario</td><td>#25</td><td>EP02</td></tr>
    <tr><th>Title</th><td colspan="3">Visualizar resumen general de entrenamiento</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver un resumen de mi progreso al entrar a la aplicacion <b>para</b> saber mi estado actual.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario tiene simulaciones, XP y racha registrada, <b>Cuando</b> ingresa al dashboard, <b>Entonces</b> el sistema muestra metricas principales de su progreso<br><br>- <b>Dado que</b> el usuario aun no tiene suficientes datos, <b>Cuando</b> ingresa al dashboard, <b>Entonces</b> el sistema muestra valores iniciales o recomendaciones para empezar</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US07</td><td>usuario</td><td>#26</td><td>EP02</td></tr>
    <tr><th>Title</th><td colspan="3">Continuar con el siguiente entrenamiento</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver la siguiente simulacion sugerida <b>para</b> continuar mi aprendizaje sin buscar manualmente.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> hay simulaciones no completadas, <b>Cuando</b> el usuario entra al dashboard, <b>Entonces</b> el sistema muestra una simulacion recomendada para continuar<br><br>- <b>Dado que</b> el dashboard muestra una simulacion recomendada, <b>Cuando</b> el usuario selecciona practicar, <b>Entonces</b> el sistema abre el detalle de esa simulacion</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US08</td><td>usuario</td><td>#27</td><td>EP02</td></tr>
    <tr><th>Title</th><td colspan="3">Ver misiones activas desde el dashboard</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver misiones activas en el dashboard <b>para</b> recordar objetivos que puedo completar.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> existen misiones activas, <b>Cuando</b> el usuario ingresa al dashboard, <b>Entonces</b> el sistema muestra una vista breve de misiones activas y su progreso<br><br>- <b>Dado que</b> el usuario desea ver mas misiones, <b>Cuando</b> selecciona la opcion de abrir gamificacion, <b>Entonces</b> el sistema lo lleva al apartado de gamificacion</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US09</td><td>usuario</td><td>#28</td><td>EP02</td></tr>
    <tr><th>Title</th><td colspan="3">Ver productos sugeridos desde el dashboard</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver productos sugeridos <b>para</b> mi preparacion para acceder rapidamente a la tienda.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> existen productos recomendados, <b>Cuando</b> el usuario entra al dashboard, <b>Entonces</b> el sistema muestra productos destacados con su imagen, categoria y precio<br><br>- <b>Dado que</b> el usuario visualiza productos sugeridos, <b>Cuando</b> selecciona la opcion de ir a tienda, <b>Entonces</b> el sistema abre el catalogo de productos</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>EP03</td><td>usuario en entrenamiento</td><td>—</td><td>No aplica</td></tr>
    <tr><th>Title</th><td colspan="3">Simulaciones medicas</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario en entrenamiento, <b>quiero</b> practicar emergencias mediante simulaciones medicas interactivas, <b>para</b> aprender a tomar mejores decisiones en primeros auxilios.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">No aplica por tratarse de una epica agrupadora.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US10</td><td>usuario</td><td>#29</td><td>EP03</td></tr>
    <tr><th>Title</th><td colspan="3">Visualizar catalogo de simulaciones</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver todas las simulaciones disponibles <b>para</b> elegir que emergencia practicar.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> existen simulaciones registradas, <b>Cuando</b> el usuario entra a Simulaciones, <b>Entonces</b> el sistema muestra cartas con imagen, dificultad, duracion, XP y SafeCoins<br><br>- <b>Dado que</b> el usuario ya completo una simulacion, <b>Cuando</b> visualiza el catalogo, <b>Entonces</b> la carta indica que fue completada y cuantas veces se completo</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US11</td><td>usuario</td><td>#30</td><td>EP03</td></tr>
    <tr><th>Title</th><td colspan="3">Buscar simulaciones por nombre</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> buscar simulaciones por nombre <b>para</b> encontrar rapidamente el entrenamiento que necesito.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario esta en el listado de simulaciones, <b>Cuando</b> escribe el nombre de una simulacion existente, <b>Entonces</b> el sistema muestra solo las simulaciones que coinciden<br><br>- <b>Dado que</b> el usuario escribe una palabra sin coincidencias, <b>Cuando</b> el filtro se aplica, <b>Entonces</b> el sistema muestra un estado indicando que no hay resultados</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US12</td><td>usuario</td><td>#31</td><td>EP03</td></tr>
    <tr><th>Title</th><td colspan="3">Revisar detalle de una simulacion antes de iniciar</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver la informacion de una simulacion antes de empezarla <b>para</b> saber que aprendere y que recompensas ofrece.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario selecciona una simulacion, <b>Cuando</b> se abre su detalle, <b>Entonces</b> el sistema muestra objetivos, dificultad, duracion, XP disponible y SafeCoins base<br><br>- <b>Dado que</b> el usuario intenta abrir una simulacion que no existe, <b>Cuando</b> el sistema no encuentra el identificador, <b>Entonces</b> muestra un mensaje de simulacion no encontrada</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US13</td><td>usuario</td><td>#32</td><td>EP03</td></tr>
    <tr><th>Title</th><td colspan="3">Responder pasos de una simulacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> elegir respuestas en cada escenario <b>para</b> practicar decisiones ante emergencias.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario esta realizando una simulacion, <b>Cuando</b> selecciona una opcion de un paso, <b>Entonces</b> el sistema registra la respuesta seleccionada<br><br>- <b>Dado que</b> el usuario selecciona una respuesta, <b>Cuando</b> el sistema evalua la opcion, <b>Entonces</b> la respuesta correcta e incorrecta se distinguen visualmente</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US14</td><td>usuario</td><td>#33</td><td>EP03</td></tr>
    <tr><th>Title</th><td colspan="3">Finalizar una simulacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> finalizar la simulacion cuando responda todos los pasos <b>para</b> recibir mi resultado.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario respondio todos los pasos, <b>Cuando</b> selecciona finalizar, <b>Entonces</b> el sistema calcula respuestas correctas, errores, precision, XP y monedas<br><br>- <b>Dado que</b> el usuario aun no respondio todos los pasos, <b>Cuando</b> intenta finalizar, <b>Entonces</b> el sistema no permite finalizar hasta completar la simulacion</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US15</td><td>usuario</td><td>#34</td><td>EP03</td></tr>
    <tr><th>Title</th><td colspan="3">Recibir SafeCoins por completar una simulacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> recibir monedas al completar una simulacion exitosa <b>para</b> usarlas en la tienda.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario completa una simulacion con precision suficiente, <b>Y</b> es su primera finalizacion exitosa de esa simulacion, <b>Cuando</b> el sistema calcula la recompensa, <b>Entonces</b> recibe el 100% de las SafeCoins correspondientes segun su precision<br><br>- <b>Dado que</b> el usuario ya completo antes la misma simulacion, <b>Cuando</b> la completa nuevamente con precision suficiente, <b>Entonces</b> recibe una recompensa reducida segun el multiplicador de repeticion</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US16</td><td>usuario</td><td>#35</td><td>EP03</td></tr>
    <tr><th>Title</th><td colspan="3">Ver resumen final de simulacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver un resumen final <b>para</b> entender mi rendimiento y recompensa.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario finalizo una simulacion, <b>Cuando</b> se muestra la pantalla final, <b>Entonces</b> el sistema muestra respuestas correctas, errores, XP ganado, monedas ganadas, saldo anterior y saldo nuevo<br><br>- <b>Dado que</b> el calculo de recompensa resulta en cero monedas, <b>Cuando</b> se muestra el resumen final, <b>Entonces</b> el sistema indica claramente que no se ganaron monedas adicionales</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US17</td><td>usuario</td><td>#36</td><td>EP03</td></tr>
    <tr><th>Title</th><td colspan="3">Ver productos sugeridos segun errores</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> recibir sugerencias de productos relacionadas con mi simulacion <b>para</b> prepararme mejor.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> una simulacion tiene productos sugeridos, <b>Cuando</b> el usuario revisa el detalle o resultado, <b>Entonces</b> el sistema muestra productos relacionados con esa emergencia<br><br>- <b>Dado que</b> la simulacion no tiene productos asociados, <b>Cuando</b> el usuario revisa el resultado, <b>Entonces</b> el sistema no muestra recomendaciones de tienda</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>EP04</td><td>usuario</td><td>—</td><td>No aplica</td></tr>
    <tr><th>Title</th><td colspan="3">Progreso y estadisticas</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> consultar estadisticas reales de mi aprendizaje, <b>para</b> identificar avances, errores y acciones de mejora.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">No aplica por tratarse de una epica agrupadora.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US18</td><td>usuario</td><td>#37</td><td>EP04</td></tr>
    <tr><th>Title</th><td colspan="3">Visualizar resumen general de progreso</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver indicadores generales de mi avance <b>para</b> entender mi desempeno.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario tiene intentos y recompensas registradas, <b>Cuando</b> ingresa a Progreso, <b>Entonces</b> el sistema muestra simulaciones completadas, intentos, precision promedio, XP, SafeCoins y tiempo entrenado<br><br>- <b>Dado que</b> el usuario no tiene intentos registrados, <b>Cuando</b> ingresa a Progreso, <b>Entonces</b> el sistema muestra metricas en cero o mensajes para empezar</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US19</td><td>usuario</td><td>#38</td><td>EP04</td></tr>
    <tr><th>Title</th><td colspan="3">Revisar rendimiento por simulacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver mi rendimiento por cada simulacion <b>para</b> saber cuales domino y cuales debo repetir.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> una simulacion tiene intentos del usuario, <b>Cuando</b> se muestra el rendimiento, <b>Entonces</b> el sistema indica intentos, completaciones, mejor puntaje, precision promedio y ultimo intento<br><br>- <b>Dado que</b> una simulacion nunca fue iniciada, <b>Cuando</b> se muestra el rendimiento, <b>Entonces</b> el sistema indica que aun esta pendiente o sin intentos</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US20</td><td>usuario</td><td>#39</td><td>EP04</td></tr>
    <tr><th>Title</th><td colspan="3">Identificar errores frecuentes</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver mis errores mas repetidos <b>para</b> mejorar en pasos concretos.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario cometio errores en intentos anteriores, <b>Cuando</b> abre el apartado de errores, <b>Entonces</b> el sistema muestra los errores mas frecuentes y una recomendacion asociada<br><br>- <b>Dado que</b> el usuario no tiene errores registrados, <b>Cuando</b> abre el apartado de errores, <b>Entonces</b> el sistema muestra un mensaje positivo o de estado vacio</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US21</td><td>usuario</td><td>#40</td><td>EP04</td></tr>
    <tr><th>Title</th><td colspan="3">Recibir recomendaciones accionables</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> recibir recomendaciones basadas en mi rendimiento <b>para</b> saber que hacer despues.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario tiene baja precision en una simulacion, <b>Cuando</b> el sistema genera recomendaciones, <b>Entonces</b> sugiere repetir esa simulacion<br><br>- <b>Dado que</b> el usuario tiene insignias pendientes, <b>Cuando</b> el sistema genera recomendaciones, <b>Entonces</b> sugiere desbloquear una insignia con su requisito</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US22</td><td>usuario</td><td>#41</td><td>EP04</td></tr>
    <tr><th>Title</th><td colspan="3">Consultar progreso de gamificacion desde Progreso</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver mis misiones e insignias dentro del progreso <b>para</b> relacionar mi aprendizaje con logros.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> hay datos de gamificacion, <b>Cuando</b> el usuario revisa Progreso, <b>Entonces</b> el sistema muestra misiones completadas, misiones activas e insignias desbloqueadas<br><br>- <b>Dado que</b> existe ranking semanal, <b>Cuando</b> el usuario revisa su progreso, <b>Entonces</b> el sistema muestra su posicion semanal</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>EP05</td><td>usuario</td><td>—</td><td>No aplica</td></tr>
    <tr><th>Title</th><td colspan="3">Gamificacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> acceder a niveles, misiones, insignias, ranking y SafeCoins, <b>para</b> mantenerme motivado a practicar primeros auxilios.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">No aplica por tratarse de una epica agrupadora.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US23</td><td>usuario</td><td>#42</td><td>EP05</td></tr>
    <tr><th>Title</th><td colspan="3">Visualizar resumen de gamificacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver mi nivel, XP, racha, ranking y monedas <b>para</b> conocer mi estado competitivo.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario tiene datos de gamificacion, <b>Cuando</b> ingresa a Gamificacion, <b>Entonces</b> el sistema muestra nivel, XP, racha, ranking semanal y SafeCoins<br><br>- <b>Dado que</b> el sistema no puede cargar gamificacion, <b>Cuando</b> el usuario ingresa al apartado, <b>Entonces</b> se muestra un mensaje de error comprensible</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US24</td><td>usuario</td><td>#43</td><td>EP05</td></tr>
    <tr><th>Title</th><td colspan="3">Ver misiones activas resumidas</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver solo algunas misiones activas inicialmente <b>para</b> no saturarme de informacion.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> existen varias misiones activas, <b>Cuando</b> el usuario entra a Gamificacion, <b>Entonces</b> el sistema muestra solo tres misiones activas en la vista principal<br><br>- <b>Dado que</b> el usuario quiere revisar todo el listado, <b>Cuando</b> selecciona ver todas las misiones, <b>Entonces</b> el sistema abre el inventario completo de misiones</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US25</td><td>usuario</td><td>#44</td><td>EP05</td></tr>
    <tr><th>Title</th><td colspan="3">Revisar inventario de misiones</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver misiones activas, disponibles y bloqueadas <b>para</b> planificar mis objetivos.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> existen misiones activas, <b>Cuando</b> el usuario abre el inventario, <b>Entonces</b> el sistema muestra su progreso, recompensa e instrucciones<br><br>- <b>Dado que</b> existen misiones bloqueadas, <b>Cuando</b> el usuario abre el inventario, <b>Entonces</b> el sistema muestra el requisito de desbloqueo</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US26</td><td>usuario</td><td>#45</td><td>EP05</td></tr>
    <tr><th>Title</th><td colspan="3">Consultar ranking semanal</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver el ranking semanal <b>para</b> comparar mi progreso con otros usuarios.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> existe ranking semanal, <b>Cuando</b> el usuario abre Gamificacion, <b>Entonces</b> el sistema muestra los cinco primeros puestos<br><br>- <b>Dado que</b> el usuario no esta entre los cinco primeros, <b>Cuando</b> se muestra el ranking, <b>Entonces</b> el sistema muestra tambien la posicion actual del usuario</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US27</td><td>usuario</td><td>#46</td><td>EP05</td></tr>
    <tr><th>Title</th><td colspan="3">Ver insignias desbloqueadas</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver mis insignias desbloqueadas <b>para</b> reconocer mis logros.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario tiene insignias desbloqueadas, <b>Cuando</b> ingresa a Gamificacion, <b>Entonces</b> el sistema muestra una vista resumida de cinco insignias<br><br>- <b>Dado que</b> una insignia tiene rareza comun, rara, epica o legendaria, <b>Cuando</b> se renderiza la carta, <b>Entonces</b> el sistema usa un color visual asociado a su rareza</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US28</td><td>usuario</td><td>#47</td><td>EP05</td></tr>
    <tr><th>Title</th><td colspan="3">Ver inventario completo de insignias</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver todas mis insignias y las bloqueadas <b>para</b> saber que logros puedo perseguir.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario abre el inventario de insignias, <b>Cuando</b> existen insignias desbloqueadas, <b>Entonces</b> el sistema las muestra en cartas con nombre, rareza y descripcion<br><br>- <b>Dado que</b> existen insignias bloqueadas, <b>Cuando</b> el usuario revisa el inventario, <b>Entonces</b> el sistema muestra el requisito para desbloquearlas</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US29</td><td>usuario</td><td>#48</td><td>EP05</td></tr>
    <tr><th>Title</th><td colspan="3">Consultar historial de SafeCoins</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver mi historial reciente de SafeCoins <b>para</b> entender de donde vienen mis monedas.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario gano monedas por simulaciones, <b>Cuando</b> abre Gamificacion, <b>Entonces</b> el sistema muestra simulacion, precision, multiplicador y monedas ganadas<br><br>- <b>Dado que</b> el usuario aun no gano monedas, <b>Cuando</b> abre el historial de SafeCoins, <b>Entonces</b> el sistema muestra un estado vacio</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>EP06</td><td>usuario comprador</td><td>—</td><td>No aplica</td></tr>
    <tr><th>Title</th><td colspan="3">Tienda, carrito y compras</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario comprador, <b>quiero</b> explorar productos, kits, cupones, carrito, pago e historial de compras, <b>para</b> equiparme ante emergencias.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">No aplica por tratarse de una epica agrupadora.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US30</td><td>usuario</td><td>#11</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Visualizar productos relevantes en tienda</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver productos relevantes al entrar a la tienda <b>para</b> encontrar rapidamente insumos utiles para mi entrenamiento.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> existen recomendaciones y productos populares, <b>Cuando</b> el usuario entra a la tienda, <b>Entonces</b> el sistema muestra productos relevantes con imagen, categoria, rating, stock y precio<br><br>- <b>Dado que</b> no hay recomendaciones personalizadas suficientes, <b>Cuando</b> el usuario entra a la tienda, <b>Entonces</b> el sistema muestra productos populares o primeros productos del catalogo</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US31</td><td>usuario</td><td>#12</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Buscar productos o kits</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> buscar productos o kits por texto <b>para</b> encontrar rapidamente lo que necesito.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario esta en la tienda, <b>Cuando</b> escribe el nombre o etiqueta de un producto, <b>Entonces</b> el sistema filtra el catalogo con coincidencias<br><br>- <b>Dado que</b> no existen productos relacionados con la busqueda, <b>Cuando</b> se aplica el filtro, <b>Entonces</b> el sistema muestra un estado de categoria vacia</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US32</td><td>usuario</td><td>#13</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Filtrar productos por categoria</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> filtrar por categoria <b>para</b> ver solo productos de un tipo especifico.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario selecciona una categoria, <b>Cuando</b> el filtro se aplica, <b>Entonces</b> el sistema muestra solo productos de esa categoria<br><br>- <b>Dado que</b> el usuario selecciona Kits, <b>Cuando</b> el filtro se aplica, <b>Entonces</b> el sistema muestra productos tipo kit y kits de emergencia comprables</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US33</td><td>usuario</td><td>#14</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Volver a vista principal de tienda</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> regresar a todos los productos <b>para</b> ver nuevamente la vista principal de la tienda.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario esta viendo una categoria filtrada, <b>Cuando</b> selecciona Todos los productos, <b>Entonces</b> el sistema vuelve a la vista principal con productos relevantes y catalogo</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US34</td><td>usuario</td><td>#15</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Ver detalle de producto</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> abrir un producto <b>para</b> revisar imagenes, descripcion, especificaciones y valoraciones.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario hace click en una carta de producto, <b>Cuando</b> se abre el detalle, <b>Entonces</b> el sistema muestra galeria, descripcion, precio, rating, stock y valoraciones<br><br>- <b>Dado que</b> el producto no tiene resenas, <b>Cuando</b> el usuario abre el detalle, <b>Entonces</b> el sistema muestra un mensaje indicando que aun no hay valoraciones</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US35</td><td>usuario</td><td>#16</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Ver detalle de kit de emergencia</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> abrir un kit <b>para</b> conocer su contenido general, nivel, precio y ahorro.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario hace click en una carta de kit, <b>Cuando</b> se abre el detalle, <b>Entonces</b> el sistema muestra imagen, descripcion extendida, nivel, precio individual, ahorro y precio final<br><br>- <b>Dado que</b> el usuario visualiza una carta de kit, <b>Cuando</b> selecciona Agregar kit, <b>Entonces</b> el sistema agrega el kit al carrito sin abrir accidentalmente el detalle</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US36</td><td>usuario</td><td>#17</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Agregar productos al carrito</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> agregar productos al carrito <b>para</b> preparar una compra.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el producto no esta en el carrito, <b>Cuando</b> el usuario selecciona Agregar, <b>Entonces</b> el sistema crea un item de carrito con cantidad uno<br><br>- <b>Dado que</b> el producto ya esta en el carrito, <b>Cuando</b> el usuario vuelve a agregarlo, <b>Entonces</b> el sistema aumenta su cantidad</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US37</td><td>usuario</td><td>#18</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Modificar cantidades en carrito</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> aumentar o disminuir cantidades en el carrito <b>para</b> ajustar mi compra.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el carrito tiene un producto, <b>Cuando</b> el usuario presiona aumentar, <b>Entonces</b> la cantidad del producto incrementa en uno<br><br>- <b>Dado que</b> el carrito tiene un producto con cantidad mayor a uno, <b>Cuando</b> el usuario presiona disminuir, <b>Entonces</b> la cantidad disminuye en uno</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US38</td><td>usuario</td><td>#19</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Quitar productos del carrito</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> eliminar productos del carrito <b>para</b> comprar solo lo necesario.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el producto esta en el carrito, <b>Cuando</b> el usuario selecciona eliminar, <b>Entonces</b> el sistema remueve el producto del carrito<br><br>- <b>Dado que</b> un producto tiene cantidad uno, <b>Cuando</b> el usuario presiona disminuir, <b>Entonces</b> el sistema elimina ese item del carrito</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US39</td><td>usuario</td><td>#20</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Revisar resumen de compra</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver el total de productos y el monto a pagar antes de comprar.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el carrito contiene productos o kits, <b>Cuando</b> el usuario abre el carrito, <b>Entonces</b> el sistema muestra items, cantidades, subtotales y total<br><br>- <b>Dado que</b> el carrito no tiene productos, <b>Cuando</b> el usuario abre el carrito, <b>Entonces</b> el sistema muestra que el carrito esta vacio</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US40</td><td>usuario</td><td>#21</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Completar pago ficticio</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> llenar una pasarela de pago ficticia <b>para</b> simular la compra de productos.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el carrito tiene productos, <b>Y</b> el usuario completa todos los datos de pago, <b>Cuando</b> confirma la compra, <b>Entonces</b> el sistema registra la orden, <b>Y</b> muestra el mensaje Producto comprado<br><br>- <b>Dado que</b> el usuario deja campos de pago vacios, <b>Cuando</b> intenta confirmar la compra, <b>Entonces</b> el sistema solicita completar todos los datos</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US41</td><td>usuario</td><td>#22</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Consultar historial de compras</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver mis productos comprados <b>para</b> revisar compras anteriores.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario tiene compras registradas, <b>Cuando</b> abre Historial, <b>Entonces</b> el sistema muestra orden, fecha, estado, productos, cantidades y total<br><br>- <b>Dado que</b> el usuario no tiene compras registradas, <b>Cuando</b> abre Historial, <b>Entonces</b> el sistema muestra un mensaje indicando que aun no hay productos comprados</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US42</td><td>usuario</td><td>#23</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Canjear puntos por cupones</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver cupones canjeables con SafeCoins <b>para</b> obtener descuentos.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario tiene SafeCoins suficientes para un cupon, <b>Cuando</b> abre Canjear puntos, <b>Entonces</b> el sistema marca el cupon como canjeable<br><br>- <b>Dado que</b> el usuario no tiene monedas suficientes, <b>Cuando</b> revisa un cupon, <b>Entonces</b> el sistema indica cuantas SafeCoins le faltan</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US43</td><td>usuario</td><td>#24</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Leer resenas de productos</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> leer resenas de otros usuarios <b>para</b> decidir mejor mi compra.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> existen resenas registradas, <b>Cuando</b> el usuario navega por la tienda o detalle de producto, <b>Entonces</b> el sistema muestra nombre, rating y comentario<br><br>- <b>Dado que</b> el producto seleccionado no tiene resenas, <b>Cuando</b> se abre su detalle, <b>Entonces</b> el sistema muestra un estado sin valoraciones</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>EP07</td><td>usuario de la aplicacion</td><td>—</td><td>No aplica</td></tr>
    <tr><th>Title</th><td colspan="3">Navegacion y experiencia general de la aplicacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario de la aplicacion, <b>quiero</b> navegar por una interfaz clara y responsiva, <b>para</b> usar SafeStep desde diferentes dispositivos.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">No aplica por tratarse de una epica agrupadora.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US44</td><td>usuario</td><td>#49</td><td>EP07</td></tr>
    <tr><th>Title</th><td colspan="3">Navegar por los modulos principales</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> usar un menu lateral <b>para</b> moverme entre dashboard, simulaciones, progreso, gamificacion y tienda.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario esta autenticado, <b>Cuando</b> selecciona una opcion del menu lateral, <b>Entonces</b> el sistema abre la seccion correspondiente<br><br>- <b>Dado que</b> el usuario esta en una seccion, <b>Cuando</b> observa el menu lateral, <b>Entonces</b> el sistema resalta la opcion activa</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US45</td><td>usuario</td><td>#50</td><td>EP07</td></tr>
    <tr><th>Title</th><td colspan="3">Ver notificaciones visuales en toolbar</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver indicadores en el toolbar <b>para</b> reconocer alertas o actividad pendiente.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> hay notificaciones disponibles, <b>Cuando</b> el usuario observa el toolbar, <b>Entonces</b> el sistema muestra un indicador visual de notificaciones</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US46</td><td>usuario movil</td><td>#51</td><td>EP07</td></tr>
    <tr><th>Title</th><td colspan="3">Usar la aplicacion en pantallas pequenas</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario movil, <b>quiero</b> que la aplicacion sea usable desde una pantalla pequena <b>para</b> practicar o comprar desde mi dispositivo.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario abre la aplicacion en una pantalla pequena, <b>Cuando</b> navega por las secciones, <b>Entonces</b> los contenidos se reorganizan sin perder informacion principal<br><br>- <b>Dado que</b> el usuario visualiza productos, misiones o simulaciones, <b>Cuando</b> usa una pantalla pequena, <b>Entonces</b> las cartas se muestran en una sola columna o en una disposicion legible</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>EP01</td><td>usuario de SafeStep</td><td>—</td><td>No aplica</td></tr>
    <tr><th>Title</th><td colspan="3">Identidad, acceso y perfil de usuario</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario de SafeStep, <b>quiero</b> gestionar mi acceso, perfil, idioma y saldo de SafeCoins, <b>para</b> usar la aplicacion con una identidad personalizada.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">No aplica por tratarse de una epica agrupadora.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US01</td><td>usuario registrado</td><td>#72</td><td>EP01</td></tr>
    <tr><th>Title</th><td colspan="3">Iniciar sesion en la aplicacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario registrado, <b>quiero</b> iniciar sesion <b>para</b> acceder a mi dashboard, simulaciones, progreso, gamificacion y tienda.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario se encuentra en la pantalla de acceso, <b>Y</b> ingresa credenciales validas, <b>Cuando</b> selecciona la opcion de ingresar, <b>Entonces</b> el sistema permite el acceso, <b>Y</b> redirige al usuario al dashboard principal<br><br>- <b>Dado que</b> el usuario se encuentra en la pantalla de acceso, <b>Y</b> ingresa datos incompletos o invalidos, <b>Cuando</b> intenta ingresar, <b>Entonces</b> el sistema no permite continuar, <b>Y</b> muestra una indicacion para corregir los datos</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US02</td><td>visitante</td><td>#73</td><td>EP01</td></tr>
    <tr><th>Title</th><td colspan="3">Registrarse en SafeStep</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante, <b>quiero</b> crear una cuenta <b>para</b> guardar mi avance y acceder a las funcionalidades de entrenamiento.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el visitante esta en la pantalla de registro, <b>Cuando</b> ingresa sus datos requeridos correctamente, <b>Entonces</b> el sistema crea la cuenta, <b>Y</b> le permite acceder a la aplicacion<br><br>- <b>Dado que</b> el visitante deja campos obligatorios vacios, <b>Cuando</b> intenta crear su cuenta, <b>Entonces</b> el sistema solicita completar la informacion requerida</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US03</td><td>usuario autenticado</td><td>#74</td><td>EP01</td></tr>
    <tr><th>Title</th><td colspan="3">Visualizar perfil de usuario</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario autenticado, <b>quiero</b> visualizar mi perfil <b>para</b> revisar mi informacion personal, nivel, XP, SafeCoins y racha.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario tiene una sesion activa, <b>Cuando</b> ingresa al perfil, <b>Entonces</b> el sistema muestra su nombre, correo, rol, ciudad, nivel, XP, SafeCoins y racha<br><br>- <b>Dado que</b> el sistema no puede cargar la informacion del usuario, <b>Cuando</b> el usuario ingresa al perfil, <b>Entonces</b> se muestra un estado informativo indicando que no se pudo cargar la informacion</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US04</td><td>usuario</td><td>#75</td><td>EP01</td></tr>
    <tr><th>Title</th><td colspan="3">Cambiar idioma de la aplicacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> cambiar entre espanol e ingles <b>para</b> usar la aplicacion en el idioma que prefiera.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> la aplicacion esta en espanol, <b>Cuando</b> el usuario selecciona EN en el toolbar, <b>Entonces</b> los textos disponibles cambian a ingles<br><br>- <b>Dado que</b> la aplicacion esta en ingles, <b>Cuando</b> el usuario selecciona ES en el toolbar, <b>Entonces</b> los textos disponibles cambian a espanol</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US05</td><td>usuario</td><td>#76</td><td>EP01</td></tr>
    <tr><th>Title</th><td colspan="3">Ver saldo de SafeCoins en la navegacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> usuario, <b>quiero</b> ver mi saldo de SafeCoins en la interfaz principal <b>para</b> saber cuantos puntos puedo usar.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario tiene SafeCoins registradas, <b>Cuando</b> navega por la aplicacion, <b>Entonces</b> el sistema muestra su saldo actualizado en la interfaz<br><br>- <b>Dado que</b> el usuario completa una simulacion y gana monedas, <b>Cuando</b> vuelve al dashboard, gamificacion o tienda, <b>Entonces</b> el sistema muestra el nuevo saldo de SafeCoins</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>EP08</td><td>visitante interesado</td><td>—</td><td>No aplica</td></tr>
    <tr><th>Title</th><td colspan="3">Landing page publica</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante interesado, <b>quiero</b> conocer la propuesta de valor de SafeStep en una landing page publica, <b>para</b> decidir si me registro en la plataforma.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">No aplica por tratarse de una epica agrupadora.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US47</td><td>visitante</td><td>#1</td><td>EP08</td></tr>
    <tr><th>Title</th><td colspan="3">Visualizar propuesta de valor en la landing page</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante, <b>quiero</b> ver rapidamente que es SafeStep <b>para</b> entender si me ayuda a aprender primeros auxilios.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el visitante ingresa a la landing page, <b>Cuando</b> la pagina carga, <b>Entonces</b> el sistema muestra logo, navegacion, hero principal, propuesta de valor y llamados a la accion<br><br>- <b>Dado que</b> el visitante esta en el hero, <b>Cuando</b> lee el contenido principal, <b>Entonces</b> entiende que SafeStep ofrece simulaciones interactivas para prepararse ante emergencias</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US48</td><td>visitante</td><td>#2</td><td>EP08</td></tr>
    <tr><th>Title</th><td colspan="3">Navegar por secciones de la landing</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante, <b>quiero</b> navegar por las secciones de la landing <b>para</b> conocer funcionalidades, simulaciones, gamificacion, tienda y preguntas frecuentes.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el visitante visualiza el menu de la landing, <b>Cuando</b> selecciona una seccion, <b>Entonces</b> la pagina se desplaza a la seccion correspondiente<br><br>- <b>Dado que</b> el visitante esta en un dispositivo movil, <b>Cuando</b> abre el menu, <b>Entonces</b> puede acceder a las mismas secciones principales</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US49</td><td>visitante</td><td>#3</td><td>EP08</td></tr>
    <tr><th>Title</th><td colspan="3">Conocer las simulaciones ofrecidas</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante, <b>quiero</b> revisar ejemplos de simulaciones <b>para</b> saber que emergencias puedo practicar.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el visitante llega a la seccion de simulaciones, <b>Cuando</b> revisa las tarjetas informativas, <b>Entonces</b> el sistema muestra emergencias como RCP, quemaduras, atragantamiento y sismos<br><br>- <b>Dado que</b> el visitante encuentra una simulacion de interes, <b>Cuando</b> selecciona un llamado a la accion, <b>Entonces</b> el sistema lo dirige hacia registro o acceso</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US50</td><td>visitante</td><td>#4</td><td>EP08</td></tr>
    <tr><th>Title</th><td colspan="3">Conocer el sistema de gamificacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante, <b>quiero</b> conocer las mecanicas de niveles, rachas, ranking, misiones e insignias <b>para</b> saber como la plataforma motiva el aprendizaje.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el visitante llega a la seccion de gamificacion, <b>Cuando</b> lee los beneficios, <b>Entonces</b> el sistema explica niveles, XP, rachas, misiones y recompensas<br><br>- <b>Dado que</b> el visitante revisa la gamificacion, <b>Cuando</b> observa las recompensas, <b>Entonces</b> entiende que puede ganar puntos y avanzar practicando</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US51</td><td>visitante</td><td>#5</td><td>EP08</td></tr>
    <tr><th>Title</th><td colspan="3">Conocer la tienda de productos</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante, <b>quiero</b> saber que SafeStep tiene una tienda de productos y kits <b>para</b> complementar mi preparacion.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el visitante revisa la landing, <b>Cuando</b> llega a la informacion de tienda, <b>Entonces</b> el sistema comunica que existen productos, botiquines y kits de emergencia<br><br>- <b>Dado que</b> el visitante lee sobre la tienda, <b>Cuando</b> compara la oferta con las simulaciones, <b>Entonces</b> entiende que los productos recomendados ayudan a prepararse ante emergencias reales</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US52</td><td>visitante</td><td>#6</td><td>EP08</td></tr>
    <tr><th>Title</th><td colspan="3">Leer testimonios de usuarios</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante, <b>quiero</b> leer testimonios <b>para</b> confiar en la utilidad de SafeStep.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el visitante llega a la seccion de testimonios, <b>Cuando</b> revisa las opiniones, <b>Entonces</b> el sistema muestra experiencias positivas de usuarios<br><br>- <b>Dado que</b> el visitante lee un testimonio relevante, <b>Cuando</b> considera registrarse, <b>Entonces</b> tiene mas informacion para decidir probar la aplicacion</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US53</td><td>visitante</td><td>#7</td><td>EP08</td></tr>
    <tr><th>Title</th><td colspan="3">Consultar preguntas frecuentes</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante, <b>quiero</b> revisar preguntas frecuentes <b>para</b> resolver dudas antes de registrarme.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el visitante abre la seccion de preguntas frecuentes, <b>Cuando</b> revisa la pregunta sobre precio, <b>Entonces</b> el sistema explica el acceso gratuito o planes disponibles segun la propuesta<br><br>- <b>Dado que</b> el visitante duda si necesita experiencia medica, <b>Cuando</b> revisa la pregunta correspondiente, <b>Entonces</b> el sistema aclara que SafeStep esta disenado para principiantes</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US54</td><td>visitante interesado</td><td>#8</td><td>EP08</td></tr>
    <tr><th>Title</th><td colspan="3">Acceder a registro desde la landing</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante interesado, <b>quiero</b> acceder al registro desde la landing <b>para</b> empezar a usar SafeStep.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el visitante esta en la landing, <b>Cuando</b> selecciona comenzar o registrarse, <b>Entonces</b> el sistema lo dirige a la pantalla de registro o acceso<br><br>- <b>Dado que</b> el visitante llega al final de la landing, <b>Cuando</b> selecciona empezar ahora, <b>Entonces</b> el sistema lo dirige a la experiencia de acceso</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US55</td><td>visitante movil</td><td>#9</td><td>EP08</td></tr>
    <tr><th>Title</th><td colspan="3">Visualizar la landing en dispositivos moviles</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante movil, <b>quiero</b> que la landing se vea correctamente en mi celular <b>para</b> conocer SafeStep sin problemas de lectura.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el visitante abre la landing desde un celular, <b>Cuando</b> se carga la primera vista, <b>Entonces</b> el hero, texto y botones se adaptan al ancho disponible<br><br>- <b>Dado que</b> el visitante navega por la landing en movil, <b>Cuando</b> revisa tarjetas, testimonios y preguntas frecuentes, <b>Entonces</b> los elementos se muestran de forma legible y ordenada</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>US56</td><td>visitante</td><td>#10</td><td>EP08</td></tr>
    <tr><th>Title</th><td colspan="3">Ver informacion de contacto y marca</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> visitante, <b>quiero</b> ver informacion final de marca y contacto <b>para</b> identificar a SafeStep y sus canales.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el visitante llega al final de la landing, <b>Cuando</b> revisa el footer, <b>Entonces</b> el sistema muestra marca, enlaces relevantes y derechos reservados<br><br>- <b>Dado que</b> el visitante quiere mas informacion, <b>Cuando</b> revisa los enlaces del footer, <b>Entonces</b> puede encontrar canales o secciones relacionadas con SafeStep</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>EP09</td><td>equipo de desarrollo</td><td>—</td><td>No aplica</td></tr>
    <tr><th>Title</th><td colspan="3">Soporte tecnico y arquitectura de la aplicacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> equipo de desarrollo, <b>quiero</b> mantener una base tecnica ordenada, modular y verificable, <b>para</b> sostener la evolucion de SafeStep sin afectar la experiencia del usuario.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">No aplica por tratarse de una epica agrupadora.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS01</td><td>developer</td><td>#52</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Configuracion base del proyecto Angular</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> configurar la aplicacion Angular con dependencias, scripts y build funcional, <b>para</b> contar con una base estable de desarrollo.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el proyecto se instala con sus dependencias, <b>Cuando</b> se ejecuta el build, <b>Entonces</b> la aplicacion compila sin errores.<br><br>- <b>Dado que</b> el equipo ejecuta el proyecto localmente, <b>Cuando</b> inicia el servidor de desarrollo, <b>Entonces</b> la aplicacion queda disponible desde el navegador.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS02</td><td>developer</td><td>#53</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Routing, layout principal y responsive shell</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> configurar rutas, shell principal, toolbar y navegacion responsive, <b>para</b> permitir el acceso ordenado a todos los modulos de SafeStep.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario ingresa a una ruta valida, <b>Cuando</b> Angular resuelve la ruta, <b>Entonces</b> se carga el componente correspondiente dentro del shell.<br><br>- <b>Dado que</b> el usuario usa una pantalla pequena, <b>Cuando</b> abre la aplicacion, <b>Entonces</b> el menu lateral se comporta como drawer movil y no genera desplazamiento horizontal.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS03</td><td>developer</td><td>#54</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Estructura por bounded context</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> organizar cada modulo con domain, infrastructure, application y presentation, <b>para</b> alinear el frontend con la arquitectura del curso.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> se revisa la estructura del proyecto, <b>Cuando</b> se inspecciona cada bounded context principal, <b>Entonces</b> existen carpetas domain, infrastructure, application y presentation.<br><br>- <b>Dado que</b> se agrega una nueva funcionalidad, <b>Cuando</b> se ubica su codigo, <b>Entonces</b> cada archivo pertenece a la capa que corresponde.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS04</td><td>developer</td><td>#55</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Capa application para orquestacion de datos</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> que presentation consuma stores de application en vez de APIs directas, <b>para</b> separar la UI de la infraestructura.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> un componente necesita datos, <b>Cuando</b> ejecuta una carga o actualizacion, <b>Entonces</b> usa un store de application.<br><br>- <b>Dado que</b> un store necesita persistir datos, <b>Cuando</b> realiza la operacion, <b>Entonces</b> delega la comunicacion HTTP a infrastructure.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS05</td><td>developer</td><td>#56</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Integracion con json-server</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> conectar el frontend con json-server, <b>para</b> simular un backend REST durante el desarrollo.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> json-server esta activo, <b>Cuando</b> la aplicacion solicita datos, <b>Entonces</b> recibe respuestas desde los endpoints configurados.<br><br>- <b>Dado que</b> json-server no esta activo, <b>Cuando</b> una vista intenta cargar datos, <b>Entonces</b> la aplicacion informa el problema sin romper la interfaz completa.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS06</td><td>developer</td><td>#57</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Persistencia temporal en db.json</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> persistir cambios de usuario en db.json, <b>para</b> conservar carritos, compras, intentos y SafeCoins entre recargas.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario completa una accion persistente, <b>Cuando</b> el store ejecuta una actualizacion, <b>Entonces</b> db.json refleja el cambio.<br><br>- <b>Dado que</b> la pagina se recarga despues de una actualizacion, <b>Cuando</b> se cargan los datos nuevamente, <b>Entonces</b> el estado previo se mantiene.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS07</td><td>developer</td><td>#58</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Internacionalizacion espanol e ingles</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> configurar traducciones ES/EN con un selector de idioma, <b>para</b> que la aplicacion pueda cambiar textos principales sin modificar el codigo.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario selecciona un idioma, <b>Cuando</b> el servicio de traduccion aplica el cambio, <b>Entonces</b> los textos configurados se actualizan.<br><br>- <b>Dado que</b> existe una clave de traduccion en los archivos i18n, <b>Cuando</b> se usa en una plantilla, <b>Entonces</b> se muestra el texto correspondiente al idioma activo.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS08</td><td>developer</td><td>#59</td><td>EP03</td></tr>
    <tr><th>Title</th><td colspan="3">Calculo persistente de SafeCoins por simulacion</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> calcular monedas ganadas segun precision y repeticiones, <b>para</b> sostener la regla de recompensas de las simulaciones.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> una simulacion se completa con precision suficiente, <b>Cuando</b> se calcula la recompensa, <b>Entonces</b> se aplica la recompensa base, precision y multiplicador de repeticion.<br><br>- <b>Dado que</b> el resultado calculado es menor a una moneda, <b>Cuando</b> se normaliza la recompensa, <b>Entonces</b> se registra cero monedas ganadas.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS09</td><td>developer</td><td>#60</td><td>EP05</td></tr>
    <tr><th>Title</th><td colspan="3">Sincronizacion de saldo y transacciones de SafeCoins</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> sincronizar identityAccess, gamification y el wallet compartido, <b>para</b> que el saldo de SafeCoins sea consistente en toda la app.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario gana SafeCoins, <b>Cuando</b> se persiste la recompensa, <b>Entonces</b> identityAccess y gamification guardan el mismo saldo.<br><br>- <b>Dado que</b> la interfaz muestra el saldo en toolbar, sidebar, gamificacion o tienda, <b>Cuando</b> el saldo cambia, <b>Entonces</b> todas las vistas reflejan el valor actualizado.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS10</td><td>developer</td><td>#61</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Persistencia de carrito, checkout ficticio e historial</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> manejar carrito, ordenes e historial desde ecommerce, <b>para</b> simular un flujo de compra completo.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el usuario agrega o modifica items del carrito, <b>Cuando</b> se guarda el cambio, <b>Entonces</b> cartItems se actualiza en db.json.<br><br>- <b>Dado que</b> el usuario completa el checkout ficticio, <b>Cuando</b> confirma la compra, <b>Entonces</b> se crea una orden y el carrito del usuario queda vacio.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS11</td><td>developer</td><td>#62</td><td>EP04</td></tr>
    <tr><th>Title</th><td colspan="3">Estadisticas calculadas desde datos reales</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> calcular progreso desde intentos, simulaciones y transacciones, <b>para</b> evitar depender de metricas ficticias prearmadas.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> existen intentos de simulacion, <b>Cuando</b> el usuario abre Progreso, <b>Entonces</b> se calculan intentos, precision, errores y rendimiento por simulacion.<br><br>- <b>Dado que</b> existen transacciones de SafeCoins, <b>Cuando</b> se calcula el resumen, <b>Entonces</b> se muestran monedas y XP derivados de actividad real.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS12</td><td>developer</td><td>#63</td><td>EP06</td></tr>
    <tr><th>Title</th><td colspan="3">Gestion de assets locales para productos, kits y simulaciones</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> referenciar imagenes locales desde los datos del proyecto, <b>para</b> que las cartas y detalles muestren recursos visuales consistentes.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> un producto o kit tiene una ruta de imagen local, <b>Cuando</b> se renderiza su carta, <b>Entonces</b> se muestra la imagen correspondiente.<br><br>- <b>Dado que</b> una imagen esta ubicada en assets publicos, <b>Cuando</b> el navegador solicita la ruta, <b>Entonces</b> el recurso carga sin depender de servicios externos.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS13</td><td>developer</td><td>#64</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Configuracion base del backend Spring Boot</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> configurar el backend con Spring Boot, Maven, Java y perfiles de ambiente, <b>para</b> contar con una base estable para los Web Services.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el proyecto backend tiene sus dependencias configuradas, <b>Cuando</b> se ejecuta Maven, <b>Entonces</b> el proyecto compila correctamente.<br><br>- <b>Dado que</b> se inicia el backend en ambiente local, <b>Cuando</b> Spring Boot arranca, <b>Entonces</b> el API queda disponible en el puerto configurado.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS14</td><td>developer</td><td>#65</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Arquitectura backend por bounded contexts</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> organizar el backend por bounded contexts y capas, <b>para</b> mantener una estructura alineada con la arquitectura del curso.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> se revisa la estructura del backend, <b>Cuando</b> se inspecciona cada bounded context, <b>Entonces</b> existen capas de domain, application, infrastructure e interfaces.<br><br>- <b>Dado que</b> se agrega una nueva funcionalidad, <b>Cuando</b> se ubica su codigo, <b>Entonces</b> comandos, queries, resources, controllers y servicios pertenecen a la capa correspondiente.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS15</td><td>developer</td><td>#66</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Seguridad backend con JWT y roles</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> implementar autenticacion con JWT y roles, <b>para</b> proteger los endpoints que dependen de un usuario autenticado.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> un usuario ingresa credenciales validas, <b>Cuando</b> ejecuta el endpoint de sign-in, <b>Entonces</b> el backend devuelve un token JWT.<br><br>- <b>Dado que</b> un endpoint requiere autenticacion, <b>Cuando</b> se llama sin token valido, <b>Entonces</b> el backend rechaza la solicitud.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS16</td><td>developer</td><td>#67</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Persistencia backend con PostgreSQL y JPA</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> configurar persistencia con PostgreSQL y Spring Data JPA, <b>para</b> almacenar datos reales de usuarios, simulaciones, compras y progreso.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> PostgreSQL esta disponible, <b>Cuando</b> el backend inicia, <b>Entonces</b> se conecta correctamente a la base de datos configurada.<br><br>- <b>Dado que</b> un endpoint guarda o consulta informacion, <b>Cuando</b> se ejecuta la operacion, <b>Entonces</b> los datos se leen o persisten mediante repositorios JPA.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS17</td><td>developer</td><td>#68</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">RESTful API por bounded context</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> exponer endpoints REST por bounded context, <b>para</b> que el frontend pueda consumir datos reales de SafeStep.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> un modulo del frontend necesita informacion, <b>Cuando</b> consume el endpoint correspondiente, <b>Entonces</b> el backend devuelve una respuesta JSON consistente.<br><br>- <b>Dado que</b> una operacion modifica datos, <b>Cuando</b> el endpoint recibe un request valido, <b>Entonces</b> el backend ejecuta el comando correspondiente y devuelve el estado esperado.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS18</td><td>developer</td><td>#69</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Documentacion OpenAPI y Swagger</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> documentar los endpoints con OpenAPI y Swagger UI, <b>para</b> facilitar pruebas, revision e integracion del API.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el backend esta ejecutandose, <b>Cuando</b> se abre Swagger UI, <b>Entonces</b> se muestran los controllers y endpoints disponibles.<br><br>- <b>Dado que</b> un integrante necesita probar un endpoint, <b>Cuando</b> usa Swagger, <b>Entonces</b> puede revisar metodo HTTP, ruta, parametros y respuesta esperada.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS19</td><td>developer</td><td>#70</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Seed data para pruebas del backend</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> cargar datos iniciales en el backend, <b>para</b> probar flujos principales sin registrar toda la informacion manualmente.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> la base de datos esta vacia, <b>Cuando</b> el backend inicia con seed habilitado, <b>Entonces</b> se cargan datos iniciales de simulaciones, comercio, gamificacion y analitica.<br><br>- <b>Dado que</b> los datos ya fueron cargados, <b>Cuando</b> el backend se reinicia, <b>Entonces</b> no duplica registros existentes.</td></tr>
    <tr><th>Story ID</th><th>User</th><th>Priority</th><th>Epic</th></tr>
    <tr><td>TS20</td><td>developer</td><td>#71</td><td>EP09</td></tr>
    <tr><th>Title</th><td colspan="3">Pruebas y validacion del backend con Maven</td></tr>
    <tr><th colspan="4">Description</th></tr>
    <tr><td colspan="4"><b>Como</b> developer, <b>quiero</b> ejecutar pruebas y validaciones con Maven, <b>para</b> asegurar que el backend compile y funcione antes de integrarlo con el frontend.</td></tr>
    <tr><th colspan="4">Acceptance Criteria</th></tr>
    <tr><td colspan="4">- <b>Dado que</b> el equipo ejecuta las pruebas del backend, <b>Cuando</b> se corre Maven test, <b>Entonces</b> las pruebas finalizan sin errores.<br><br>- <b>Dado que</b> se realizan cambios en el backend, <b>Cuando</b> se ejecuta el build, <b>Entonces</b> el proyecto genera el artefacto correspondiente sin fallas de compilacion.</td></tr>
  </tbody>
</table>






