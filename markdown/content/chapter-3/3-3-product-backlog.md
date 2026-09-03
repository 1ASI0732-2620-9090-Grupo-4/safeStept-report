<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-3/capitulo-3.png" alt="Capitulo 3" />
</div>

<br>
<br>

# 3.3. Product Backlog

El Product Backlog de SafeStep organiza las historias de usuario y technical stories de acuerdo con el valor que aportan al negocio y al desarrollo progresivo del producto. El orden de la tabla representa la priorización del backlog: primero se ubican las historias de la landing page, porque permiten comunicar la propuesta de valor y deben considerarse desde el primer sprint; luego se ubican las funcionalidades tipo CRUD y comercio; después el core de negocio, compuesto por dashboard, simulaciones, progreso y gamificación; posteriormente las technical stories necesarias para sostener la arquitectura; y finalmente la gestión de usuario e IAM.

Cada elemento incluye su estimación en story points utilizando la escala Fibonacci solicitada: **1, 2, 3, 5 u 8**. La columna **Orden** indica la prioridad relativa dentro del Product Backlog.

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <thead>
        <tr>
            <th align="center"><b>Orden</b></th>
            <th align="center"><b>User Story Id</b></th>
            <th align="center"><b>Título</b></th>
            <th align="center"><b>Descripción</b></th>
            <th align="center"><b>Story Points</b></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td align="center">1</td>
            <td align="center">US47</td>
            <td>Visualizar propuesta de valor en la landing page</td>
            <td>Como visitante, quiero ver rápidamente qué es SafeStep para entender si me ayuda a aprender primeros auxilios.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">2</td>
            <td align="center">US48</td>
            <td>Navegar por secciones de la landing</td>
            <td>Como visitante, quiero navegar por las secciones de la landing para conocer funcionalidades, simulaciones, gamificación, tienda y preguntas frecuentes.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">3</td>
            <td align="center">US49</td>
            <td>Conocer las simulaciones ofrecidas</td>
            <td>Como visitante, quiero revisar ejemplos de simulaciones para saber qué emergencias puedo practicar.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">4</td>
            <td align="center">US50</td>
            <td>Conocer el sistema de gamificacion</td>
            <td>Como visitante, quiero conocer las mecánicas de niveles, rachas, ranking, misiones e insignias para saber cómo la plataforma motiva el aprendizaje.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">5</td>
            <td align="center">US51</td>
            <td>Conocer la tienda de productos</td>
            <td>Como visitante, quiero saber que SafeStep tiene una tienda de productos y kits para complementar mi preparación.</td>
            <td align="center">2</td>
        </tr>
        <tr>
            <td align="center">6</td>
            <td align="center">US52</td>
            <td>Leer testimonios de usuarios</td>
            <td>Como visitante, quiero leer testimonios para confiar en la utilidad de SafeStep.</td>
            <td align="center">2</td>
        </tr>
        <tr>
            <td align="center">7</td>
            <td align="center">US53</td>
            <td>Consultar preguntas frecuentes</td>
            <td>Como visitante, quiero revisar preguntas frecuentes para resolver dudas antes de registrarme.</td>
            <td align="center">2</td>
        </tr>
        <tr>
            <td align="center">8</td>
            <td align="center">US54</td>
            <td>Acceder a registro desde la landing</td>
            <td>Como visitante interesado, quiero acceder al registro desde la landing para empezar a usar SafeStep.</td>
            <td align="center">2</td>
        </tr>
        <tr>
            <td align="center">9</td>
            <td align="center">US55</td>
            <td>Visualizar la landing en dispositivos moviles</td>
            <td>Como visitante móvil, quiero que la landing se vea correctamente en mi celular para conocer SafeStep sin problemas de lectura.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">10</td>
            <td align="center">US56</td>
            <td>Ver informacion de contacto y marca</td>
            <td>Como visitante, quiero ver información final de marca y contacto para identificar a SafeStep y sus canales.</td>
            <td align="center">1</td>
        </tr>
        <tr>
            <td align="center">11</td>
            <td align="center">US30</td>
            <td>Visualizar productos relevantes en tienda</td>
            <td>Como usuario, quiero ver productos relevantes al entrar a la tienda para encontrar rápidamente insumos útiles para mi entrenamiento.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">12</td>
            <td align="center">US31</td>
            <td>Buscar productos o kits</td>
            <td>Como usuario, quiero buscar productos o kits por texto para encontrar rápidamente lo que necesito.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">13</td>
            <td align="center">US32</td>
            <td>Filtrar productos por categoria</td>
            <td>Como usuario, quiero filtrar productos por categoría para ver solo productos de un tipo específico.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">14</td>
            <td align="center">US33</td>
            <td>Volver a vista principal de tienda</td>
            <td>Como usuario, quiero regresar a todos los productos para ver nuevamente la vista principal de la tienda.</td>
            <td align="center">1</td>
        </tr>
        <tr>
            <td align="center">15</td>
            <td align="center">US34</td>
            <td>Ver detalle de producto</td>
            <td>Como usuario, quiero abrir un producto para revisar imágenes, descripción, especificaciones y valoraciones.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">16</td>
            <td align="center">US35</td>
            <td>Ver detalle de kit de emergencia</td>
            <td>Como usuario, quiero abrir un kit de emergencia para conocer su contenido general, nivel, precio y ahorro.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">17</td>
            <td align="center">US36</td>
            <td>Agregar productos al carrito</td>
            <td>Como usuario, quiero agregar productos al carrito para preparar una compra.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">18</td>
            <td align="center">US37</td>
            <td>Modificar cantidades en carrito</td>
            <td>Como usuario, quiero aumentar o disminuir cantidades en el carrito para ajustar mi compra.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">19</td>
            <td align="center">US38</td>
            <td>Quitar productos del carrito</td>
            <td>Como usuario, quiero eliminar productos del carrito para comprar solo lo necesario.</td>
            <td align="center">2</td>
        </tr>
        <tr>
            <td align="center">20</td>
            <td align="center">US39</td>
            <td>Revisar resumen de compra</td>
            <td>Como usuario, quiero ver el total de productos y el monto a pagar antes de comprar.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">21</td>
            <td align="center">US40</td>
            <td>Completar pago ficticio</td>
            <td>Como usuario, quiero llenar una pasarela de pago ficticia para simular la compra de productos.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">22</td>
            <td align="center">US41</td>
            <td>Consultar historial de compras</td>
            <td>Como usuario, quiero ver mis productos comprados para revisar compras anteriores.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">23</td>
            <td align="center">US42</td>
            <td>Canjear puntos por cupones</td>
            <td>Como usuario, quiero ver cupones canjeables con SafeCoins para obtener descuentos.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">24</td>
            <td align="center">US43</td>
            <td>Leer resenas de productos</td>
            <td>Como usuario, quiero leer reseñas de otros usuarios para decidir mejor mi compra.</td>
            <td align="center">2</td>
        </tr>
        <tr>
            <td align="center">25</td>
            <td align="center">US06</td>
            <td>Visualizar resumen general de entrenamiento</td>
            <td>Como usuario, quiero ver un resumen de mi progreso al entrar a la aplicación para saber mi estado actual.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">26</td>
            <td align="center">US07</td>
            <td>Continuar con el siguiente entrenamiento</td>
            <td>Como usuario, quiero ver la siguiente simulación sugerida para continuar mi aprendizaje sin buscar manualmente.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">27</td>
            <td align="center">US08</td>
            <td>Ver misiones activas desde el dashboard</td>
            <td>Como usuario, quiero ver misiones activas en el dashboard para recordar objetivos que puedo completar.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">28</td>
            <td align="center">US09</td>
            <td>Ver productos sugeridos desde el dashboard</td>
            <td>Como usuario, quiero ver productos sugeridos para mi preparación para acceder rápidamente a la tienda.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">29</td>
            <td align="center">US10</td>
            <td>Visualizar catalogo de simulaciones</td>
            <td>Como usuario, quiero ver todas las simulaciones disponibles para elegir qué emergencia practicar.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">30</td>
            <td align="center">US11</td>
            <td>Buscar simulaciones por nombre</td>
            <td>Como usuario, quiero buscar simulaciones por nombre para encontrar rápidamente el entrenamiento que necesito.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">31</td>
            <td align="center">US12</td>
            <td>Revisar detalle de una simulacion antes de iniciar</td>
            <td>Como usuario, quiero ver la información de una simulación antes de empezarla para saber qué aprenderé y qué recompensas ofrece.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">32</td>
            <td align="center">US13</td>
            <td>Responder pasos de una simulacion</td>
            <td>Como usuario, quiero elegir respuestas en cada escenario para practicar decisiones ante emergencias.</td>
            <td align="center">8</td>
        </tr>
        <tr>
            <td align="center">33</td>
            <td align="center">US14</td>
            <td>Finalizar una simulacion</td>
            <td>Como usuario, quiero finalizar la simulación cuando responda todos los pasos para recibir mi resultado.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">34</td>
            <td align="center">US15</td>
            <td>Recibir SafeCoins por completar una simulacion</td>
            <td>Como usuario, quiero recibir monedas al completar una simulación exitosa para usarlas en la tienda.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">35</td>
            <td align="center">US16</td>
            <td>Ver resumen final de simulacion</td>
            <td>Como usuario, quiero ver un resumen final después de cada simulación para entender mi rendimiento y recompensa.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">36</td>
            <td align="center">US17</td>
            <td>Ver productos sugeridos segun errores</td>
            <td>Como usuario, quiero recibir sugerencias de productos relacionadas con mi simulación para prepararme mejor.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">37</td>
            <td align="center">US18</td>
            <td>Visualizar resumen general de progreso</td>
            <td>Como usuario, quiero ver indicadores generales de mi avance para entender mi desempeño general.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">38</td>
            <td align="center">US19</td>
            <td>Revisar rendimiento por simulacion</td>
            <td>Como usuario, quiero ver mi rendimiento por cada simulación para saber cuáles domino y cuáles debo repetir.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">39</td>
            <td align="center">US20</td>
            <td>Identificar errores frecuentes</td>
            <td>Como usuario, quiero ver mis errores más repetidos para mejorar en pasos concretos.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">40</td>
            <td align="center">US21</td>
            <td>Recibir recomendaciones accionables</td>
            <td>Como usuario, quiero recibir recomendaciones basadas en mi rendimiento para saber qué hacer después.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">41</td>
            <td align="center">US22</td>
            <td>Consultar progreso de gamificacion desde Progreso</td>
            <td>Como usuario, quiero ver mis misiones e insignias dentro del progreso para relacionar mi aprendizaje con logros.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">42</td>
            <td align="center">US23</td>
            <td>Visualizar resumen de gamificacion</td>
            <td>Como usuario, quiero ver mi nivel, XP, racha, ranking y monedas para conocer mi estado competitivo.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">43</td>
            <td align="center">US24</td>
            <td>Ver misiones activas resumidas</td>
            <td>Como usuario, quiero ver solo algunas misiones activas inicialmente para no saturarme de información.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">44</td>
            <td align="center">US25</td>
            <td>Revisar inventario de misiones</td>
            <td>Como usuario, quiero ver misiones activas, disponibles y bloqueadas para planificar mis objetivos.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">45</td>
            <td align="center">US26</td>
            <td>Consultar ranking semanal</td>
            <td>Como usuario, quiero ver el ranking semanal para comparar mi progreso con otros usuarios.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">46</td>
            <td align="center">US27</td>
            <td>Ver insignias desbloqueadas</td>
            <td>Como usuario, quiero ver mis insignias desbloqueadas para reconocer mis logros.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">47</td>
            <td align="center">US28</td>
            <td>Ver inventario completo de insignias</td>
            <td>Como usuario, quiero ver todas mis insignias y las bloqueadas para saber qué logros puedo perseguir.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">48</td>
            <td align="center">US29</td>
            <td>Consultar historial de SafeCoins</td>
            <td>Como usuario, quiero ver mi historial reciente de SafeCoins para entender de dónde vienen mis monedas.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">49</td>
            <td align="center">US44</td>
            <td>Navegar por los modulos principales</td>
            <td>Como usuario, quiero usar un menú lateral para moverme entre dashboard, simulaciones, progreso, gamificación y tienda.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">50</td>
            <td align="center">US45</td>
            <td>Ver notificaciones visuales en toolbar</td>
            <td>Como usuario, quiero ver indicadores en el toolbar para reconocer alertas o actividad pendiente.</td>
            <td align="center">2</td>
        </tr>
        <tr>
            <td align="center">51</td>
            <td align="center">US46</td>
            <td>Usar la aplicacion en pantallas pequenas</td>
            <td>Como usuario móvil, quiero que la aplicación sea usable desde una pantalla pequeña para practicar o comprar desde mi dispositivo.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">52</td>
            <td align="center">TS01</td>
            <td>Configuracion base del proyecto Angular</td>
            <td>Como developer, quiero configurar la aplicación Angular con dependencias, scripts y build funcional para contar con una base estable de desarrollo.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">53</td>
            <td align="center">TS02</td>
            <td>Routing, layout principal y responsive shell</td>
            <td>Como developer, quiero configurar rutas, shell principal, toolbar y navegación responsive para permitir el acceso ordenado a todos los módulos de SafeStep.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">54</td>
            <td align="center">TS03</td>
            <td>Estructura por bounded context</td>
            <td>Como developer, quiero organizar cada módulo con domain, infrastructure, application y presentation para alinear el frontend con la arquitectura del curso.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">55</td>
            <td align="center">TS04</td>
            <td>Capa application para orquestacion de datos</td>
            <td>Como developer, quiero que presentation consuma stores de application en vez de APIs directas para separar la UI de la infraestructura.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">56</td>
            <td align="center">TS05</td>
            <td>Integracion con json-server</td>
            <td>Como developer, quiero conectar el frontend con json-server para simular un backend REST durante el desarrollo.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">57</td>
            <td align="center">TS06</td>
            <td>Persistencia temporal en db.json</td>
            <td>Como developer, quiero persistir cambios de usuario en db.json para conservar carritos, compras, intentos y SafeCoins entre recargas.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">58</td>
            <td align="center">TS07</td>
            <td>Internacionalizacion espanol e ingles</td>
            <td>Como developer, quiero configurar traducciones ES/EN con un selector de idioma para que la aplicación pueda cambiar textos principales sin modificar el código.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">59</td>
            <td align="center">TS08</td>
            <td>Calculo persistente de SafeCoins por simulacion</td>
            <td>Como developer, quiero calcular monedas ganadas según precisión y repeticiones para sostener la regla de recompensas de las simulaciones.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">60</td>
            <td align="center">TS09</td>
            <td>Sincronizacion de saldo y transacciones de SafeCoins</td>
            <td>Como developer, quiero sincronizar identityAccess, gamification y el wallet compartido para que el saldo de SafeCoins sea consistente en toda la app.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">61</td>
            <td align="center">TS10</td>
            <td>Persistencia de carrito, checkout ficticio e historial</td>
            <td>Como developer, quiero manejar carrito, órdenes e historial desde ecommerce para simular un flujo de compra completo.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">62</td>
            <td align="center">TS11</td>
            <td>Estadisticas calculadas desde datos reales</td>
            <td>Como developer, quiero calcular progreso desde intentos, simulaciones y transacciones para evitar depender de métricas ficticias prearmadas.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">63</td>
            <td align="center">TS12</td>
            <td>Gestion de assets locales para productos, kits y simulaciones</td>
            <td>Como developer, quiero referenciar imágenes locales desde los datos del proyecto para que las cartas y detalles muestren recursos visuales consistentes.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">64</td>
            <td align="center">TS13</td>
            <td>Configuracion base del backend Spring Boot</td>
            <td>Como developer, quiero configurar el backend con Spring Boot, Maven, Java y perfiles de ambiente para contar con una base estable para los Web Services.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">65</td>
            <td align="center">TS14</td>
            <td>Arquitectura backend por bounded contexts</td>
            <td>Como developer, quiero organizar el backend por bounded contexts y capas para mantener una estructura alineada con la arquitectura del curso.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">66</td>
            <td align="center">TS15</td>
            <td>Seguridad backend con JWT y roles</td>
            <td>Como developer, quiero implementar autenticación con JWT y roles para proteger los endpoints que dependen de un usuario autenticado.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">67</td>
            <td align="center">TS16</td>
            <td>Persistencia backend con PostgreSQL y JPA</td>
            <td>Como developer, quiero configurar persistencia con PostgreSQL y Spring Data JPA para almacenar datos reales de usuarios, simulaciones, compras y progreso.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">68</td>
            <td align="center">TS17</td>
            <td>RESTful API por bounded context</td>
            <td>Como developer, quiero exponer endpoints REST por bounded context para que el frontend pueda consumir datos reales de SafeStep.</td>
            <td align="center">8</td>
        </tr>
        <tr>
            <td align="center">69</td>
            <td align="center">TS18</td>
            <td>Documentacion OpenAPI y Swagger</td>
            <td>Como developer, quiero documentar los endpoints con OpenAPI y Swagger UI para facilitar pruebas, revisión e integración del API.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">70</td>
            <td align="center">TS19</td>
            <td>Seed data para pruebas del backend</td>
            <td>Como developer, quiero cargar datos iniciales en el backend para probar flujos principales sin registrar toda la información manualmente.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">71</td>
            <td align="center">TS20</td>
            <td>Pruebas y validacion del backend con Maven</td>
            <td>Como developer, quiero ejecutar pruebas y validaciones con Maven para asegurar que el backend compile y funcione antes de integrarlo con el frontend.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">72</td>
            <td align="center">US01</td>
            <td>Iniciar sesion en la aplicacion</td>
            <td>Como usuario registrado, quiero iniciar sesión en la aplicación para acceder a mi dashboard, simulaciones, progreso, gamificación y tienda.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">73</td>
            <td align="center">US02</td>
            <td>Registrarse en SafeStep</td>
            <td>Como visitante, quiero crear una cuenta en SafeStep para guardar mi avance y acceder a las funcionalidades de entrenamiento.</td>
            <td align="center">5</td>
        </tr>
        <tr>
            <td align="center">74</td>
            <td align="center">US03</td>
            <td>Visualizar perfil de usuario</td>
            <td>Como usuario autenticado, quiero visualizar mi perfil para revisar mi información personal, nivel, XP, SafeCoins y racha.</td>
            <td align="center">3</td>
        </tr>
        <tr>
            <td align="center">75</td>
            <td align="center">US04</td>
            <td>Cambiar idioma de la aplicacion</td>
            <td>Como usuario, quiero cambiar entre español e inglés para usar la aplicación en el idioma que prefiera.</td>
            <td align="center">2</td>
        </tr>
        <tr>
            <td align="center">76</td>
            <td align="center">US05</td>
            <td>Ver saldo de SafeCoins en la navegacion</td>
            <td>Como usuario, quiero ver mi saldo de SafeCoins en la interfaz principal para saber cuántos puntos puedo usar.</td>
            <td align="center">2</td>
        </tr>
    </tbody>
</table>
**Referencia del Product Backlog en la herramienta seleccionada:**

- **Herramienta utilizada:** [Completar herramienta utilizada]
- **URL pública del Product Backlog:** [Insertar URL pública del Product Backlog]

<div align="center">
  <p>
    <b>Figura X</b>: Captura del Product Backlog en la herramienta seleccionada
  </p>
  <img src="../../assets/images/chapter-3/product-backlog-tool.png" alt="Product Backlog en herramienta seleccionada" />
  <p>
    <i><b>Fuente</b>: Elaboración propia</i>
  </p>
</div>







