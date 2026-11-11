# Student Outcome

## ABET – EAC - Student Outcome 4

**Criterio:** La capacidad de reconocer responsabilidades éticas y profesionales en situaciones de ingeniería y hacer juicios informados, que deben considerar el impacto de las soluciones de ingeniería en contextos globales, económicos, ambientales y sociales.

En el siguiente cuadro se describe las acciones realizadas y enunciados de conclusiones por parte del grupo, que permiten sustentar el haber alcanzado el logro del ABET – EAC - Student Outcome 4, tomando como referencia el Avance 1 (AV1) del proyecto SafeStep, correspondiente a la documentación de los capítulos I al V elaborada hasta el momento, el TB1, que añade las pruebas, la verificación y el pipeline de integración continua (capítulos VI y VII), y el Avance 2 (AV2), que suma la limpieza de estilo y de análisis estático, las pruebas de sistema, la aplicación Android, la regla de recompensa en el servidor y la planificación y el diseño de los experimentos.

<table>
    <tr>
        <td align="center"><b>Criterio específico</b></td>
        <td align="center"><b>Acciones realizadas</b></td>
        <td align="center"><b>Conclusiones</b></td>
    </tr>
    <tr>
        <td rowspan="5">
            <b>4.c.1. Reconoce responsabilidad ética y profesional en situaciones de ingeniería de software.</b>
        </td>
        <td>
            <b>Palacios Jáuregui, Kalid Jesus</b> <br/>
            <i>AV1</i>
            <p>Al redactar el Startup Profile y el Solution Profile (capítulo I), documenté explícitamente que SafeStep es una herramienta educativa complementaria que <b>no sustituye</b> la capacitación práctica de profesionales acreditados, la evaluación médica ni la comunicación con servicios de emergencia, para evitar que el producto sea percibido como una fuente de decisiones clínicas.</p>
            <i>TB1</i>
            <p>En el TB1 escribí las pruebas unitarias de los bounded contexts y configuré JaCoCo con el umbral de 80 % y las mismas exclusiones del proyecto de referencia del curso. Verifiqué reglas que protegen a las personas usuarias (por ejemplo, que un cupón de otra persona o ya usado se rechace) y reporté la cobertura real de cada contexto, incluido el 62.1 % del módulo de perfiles, en lugar de mostrar solo el promedio general.</p>
            <i>AV2</i>
            <p>En el AV2 formateé el backend con google-java-format, separé las declaraciones y mejoré los nombres hasta pasar de 8,128 observaciones de estilo a 0, y dejé escrito en el informe lo que ese resultado no cubre: Checkstyle no revisa los 54 archivos de pruebas. Reparé además los datos semilla, que tenían tildes dañadas por una codificación incorrecta, y agregué una prueba que falla si reaparecen, para que las personas hispanohablantes lean los escenarios de primeros auxilios sin errores que cambien su sentido. Redacté la planificación de los experimentos (8.1) a partir de preguntas y no de soluciones, para no probar ideas cuyas premisas nadie contrastó.</p>
        </td>
        <td rowspan="5">
            <i>AV1</i>
            <p>El equipo reconoció que trabajar sobre un dominio sensible como primeros auxilios exige límites éticos explícitos en el propio producto y en el informe: deslindar responsabilidad médica, no presentar el modelo de negocio como validado cuando aún es una hipótesis, tratar los datos de las personas entrevistadas con consentimiento y resguardo de su identidad, y documentar honestamente las limitaciones técnicas y de seguridad detectadas en lugar de ocultarlas para mostrar un avance más completo del que realmente existe. Estas decisiones se reflejan de forma trazable en los capítulos I a V del informe y en el código de los repositorios de SafeStep.</p>
            <i>TB1</i>
            <p>En el TB1 el equipo reconoció que afirmar la calidad del producto exige evidencia verificable: las suites automatizadas, la cobertura, el reporte de estilo y el análisis estático se publican con sus resultados reales, incluidos los desfavorables (observaciones de estilo, vulnerabilidades pendientes y el módulo de perfiles por debajo del umbral de cobertura), y las limitaciones se documentan como deuda técnica en lugar de omitirse. También se protegieron las credenciales, los permisos y los datos de las personas usuarias al diseñar los roles, los cupones y los entornos de prueba.</p>
            <i>AV2</i>
            <p>En el AV2 el equipo sostuvo el criterio del AV1 y del TB1 y lo llevó a los resultados desfavorables y a las correcciones propias: el estilo del backend pasó de 8,128 observaciones a 0 con sus límites declarados, SonarQube en perfil extendido mostró 97 incidencias que el Quality Gate no veía y se corrigieron, la evolución de la calidad se presentó como reconstrucción y la sección de revisiones declaró que no hay revisiones por pares en los repositorios de producto. También se corrigieron afirmaciones inexactas del propio informe (el curso de una sección, la inexistencia de la aplicación nativa y las cifras desactualizadas) tras contrastarlo con el enunciado, y los experimentos figuran como planificados y diseñados, no como ejecutados.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Sanchez Arenas, Manuel Angel</b> <br/>
            <i>AV1</i>
            <p>En el capítulo II (Needfinding y entrevistas) apliqué el resguardo de la identidad de las personas entrevistadas usando resúmenes en lugar de transcripciones completas, y evité atribuir citas o conclusiones que los entrevistados no expresaron, para no distorsionar los hallazgos usados como base del producto.</p>
            <i>TB1</i>
            <p>En el TB1 configuré Checkstyle con las reglas de Google sin modificarlas, medí la línea base real (8,128 observaciones) y la dejé en modo reporte en lugar de desactivar reglas para que el conteo pareciera menor. En las pruebas BDD y de API verifiqué los permisos (401 sin sesión, 403 para jugadores en rutas de administrador y 422 cuando un administrador intenta quitarse su propio rol) y etiqueté cada escenario con la historia de usuario que respalda.</p>
            <i>AV2</i>
            <p>En el AV2 escribí las pruebas de sistema de la aplicación web y de la aplicación Android, y reporté también sus límites en lugar de presentarlas como una garantía total: no corren en Jenkins, no cubren el pago real con Stripe y las de Android no están redactadas en la sección 6.1.4. Cada escenario crea su propio jugador con un nombre aleatorio, de modo que las pruebas nunca dependen de los datos de personas reales. Documenté también las pruebas de la regla de recompensa con sus casos límite, para que el cambio se pueda verificar y no solo afirmar.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Tello Palacios, Fabrizio Rafael</b> <br/>
            <i>AV1</i>
            <p>Al construir el Product Backlog (capítulo III) evité priorizar arbitrariamente historias técnicas de seguridad o autenticación por encima de historias de valor para el usuario, siguiendo el criterio de priorización por valor de negocio indicado en el statement, para no simular un avance orientado solo a infraestructura interna.</p>
            <i>TB1</i>
            <p>En el TB1 configuré el pipeline de Jenkins y el análisis de SonarQube de modo que el Quality Gate detenga la ejecución si el código nuevo tiene incidencias: la ejecución #6 falló a propósito por una incidencia java:S1452 y la dejé documentada en lugar de ocultarla. Las contraseñas de Jenkins y de SonarQube se generan en cada instalación y no se guardan en el repositorio.</p>
            <i>AV2</i>
            <p>En el AV2 hice que Checkstyle detenga el build ante cualquier infracción y comprobé la compuerta con una ejecución roja a propósito (la #4), que descarté sin publicarla. Cambié SonarQube al perfil extendido y dejé a la vista las 97 incidencias de mantenibilidad que el Quality Gate no mostraba porque solo evalúa el código nuevo. Las credenciales de Docker Hub y de SonarQube se definen como credenciales de Jenkins, tomadas de un archivo `.env` que no se versiona, de modo que ninguna clave queda en el repositorio.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Aylas De La Cruz, Paulo Smit</b> <br/>
            <i>AV1</i>
            <p>Al diseñar el modelo de base de datos (capítulo IV) apliqué las tres formas de normalización y documenté los archivos SQL como artefactos de diseño, no como scripts de migración listos para producción, para no dar a entender que existe una base de datos productiva con información real de usuarios.</p>
            <i>TB1</i>
            <p>En el TB1 implementé la gestión de roles con las reglas que evitan abusos de poder: un administrador no puede quitarse su propio rol, el sistema siempre conserva al menos un administrador y el registro público siempre asigna el rol de usuario. Protegí el panel con la guardia de administrador en el frontend y con autorización por rol en el backend, y validé el rediseño del cupón (porcentaje entre 1 y 100 y compra mínima solo en el tipo que la usa) para que no se definan descuentos con datos inválidos.</p>
            <i>AV2</i>
            <p>En el AV2 reconstruí en SonarQube la evolución de la calidad del backend y del frontend y la presenté como lo que es, una reconstrucción ejecutada el 30 de octubre sobre commits reales y no el orden cronológico original. Al escribir la sección de revisiones (6.2.2) declaré que los repositorios de producto no tienen pull requests ni revisiones por pares, y que la única revisión técnica documentada la hizo su autor con apoyo de una herramienta de inteligencia artificial, en lugar de presentarla como una revisión independiente.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Melgarejo Quiroz, Josep Eliu</b> <br/>
            <i>AV1</i>
            <p>Al preparar la configuración y el despliegue (capítulo V), identifiqué una credencial de base de datos que había quedado versionada en el historial de Git y documenté que debe rotarse en el proveedor en lugar de solo eliminarla del archivo actual; también detecté que cuentas con rol de usuario común podían ver controles de administración en la web y agregué restricciones de rol (<code>@PreAuthorize</code> en el backend y un <code>adminGuard</code> en el frontend) antes de reportar el avance como funcional.</p>
            <i>TB1</i>
            <p>En el TB1 diseñé el canje de cupones con SafeCoins para que la persona nunca quede en una situación injusta: el saldo solo se descuenta si alcanza, el cupón es de un solo uso y vuelve a estar disponible si el pago con Stripe falla o se cancela. En la documentación de los capítulos V a VII dejé escritas las limitaciones reales, como la caducidad de la base de datos gratuita de Render el 7 de noviembre de 2026 y el CSRF deshabilitado por diseño, en lugar de omitirlas.</p>
            <i>AV2</i>
            <p>En el AV2 reconstruí la aplicación Android con la seguridad como requisito: los tokens se guardan cifrados con una clave del Android Keystore, se desactivó la copia de seguridad, el tráfico sin cifrar solo se permite en la variante de depuración y la aplicación no contiene claves de Stripe ni credenciales. Documenté sus límites sin maquillarlos: el pago real con Stripe se verificó solo con un servidor simulado, no hay APK firmado y las imágenes dependen de un origen que falta definir para la publicación. También corregí en el informe afirmaciones que ya no eran ciertas, como que no existía una aplicación nativa.</p>
        </td>
    </tr>
    <tr>
        <td rowspan="5">
            <b>4.c.2. Emite juicios informados considerando el impacto de las soluciones de ingeniería de software en contextos globales, económicos, ambientales y sociales.</b>
        </td>
        <td>
            <b>Palacios Jáuregui, Kalid Jesus</b> <br/>
            <i>AV1</i>
            <p>En el Solution Profile documenté el modelo de negocio de SafeStep (venta de productos de primeros auxilios y posibles servicios digitales) explícitamente como una <b>hipótesis por validar</b>, no como ingresos comprobados, para no sustentar decisiones de producto sobre supuestos económicos no verificados.</p>
            <i>TB1</i>
            <p>Al escribir las pruebas de gamificación y de simulaciones consideré el impacto de un error en las recompensas sobre la confianza de quienes usan SafeStep para aprender: las pruebas cubren que un mismo intento no se premie dos veces y que se rechacen puntajes fuera del rango de 0 a 100.</p>
            <i>AV2</i>
            <p>Al implementar en Android el progreso y el acceso consideré el impacto social de que la aplicación llegue a más personas: la interfaz está en español y en inglés, el texto respeta el tamaño de letra que la persona eligió en el sistema y funciona desde Android 8.0. La pestaña de monedas muestra la exactitud y el multiplicador de cada movimiento, de modo que la persona entiende por qué ganó o no monedas que luego puede canjear por un descuento real.</p>
        </td>
        <td rowspan="5">
            <i>AV1</i>
            <p>El equipo emitió juicios informados al reconocer que el modelo de negocio de SafeStep todavía es una hipótesis económica sin validar, que los segmentos de usuario (estudiantes, comunidades vecinales y brigadistas) enfrentan contextos sociales y de acceso distintos entre sí, que el idioma por defecto debe ampliarse a inglés para no limitar el alcance social del producto, y que el diseño de datos debe evitar exponer información personal entre bounded contexts. En conjunto, estas decisiones muestran que el equipo considera el impacto económico, social y de protección de datos de sus decisiones de ingeniería antes de presentarlas como parte del producto, en lugar de evaluarlas únicamente desde un criterio técnico.</p>
            <i>TB1</i>
            <p>Al automatizar las pruebas y el pipeline el equipo emitió juicios informados sobre el impacto de sus decisiones: aislar los datos de prueba para no afectar a usuarios reales, garantizar que el sistema de recompensas y cupones no cause pérdidas a la persona usuaria, restringir el acceso a la API a los orígenes autorizados y declarar como pendientes los hallazgos de seguridad que se mantienen, en lugar de presentar la calidad del producto como resuelta.</p>
            <i>AV2</i>
            <p>En el AV2 el equipo evaluó el impacto de sus decisiones sobre las personas usuarias: llevó la regla de recompensa al servidor para que la web y el móvil paguen lo mismo y para que los descuentos solo se ganen aprendiendo; diseñó los experimentos con datos mínimos, retención de 90 días y sin exponer a la misma persona a dos experimentos; mantuvo el pago fuera de la aplicación móvil para no manejar datos de tarjeta; amplió el acceso con una interfaz en dos idiomas y soporte desde Android 8.0, y declaró en los términos que el producto es un piloto académico que no sustituye la atención médica. El equipo reconoce que el monitoreo del servicio en producción, la ejecución de los experimentos y la matriz formal de evaluación ética y de impacto quedan para la entrega final.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Sanchez Arenas, Manuel Angel</b> <br/>
            <i>AV1</i>
            <p>Al analizar los segmentos objetivo (estudiantes universitarios, comunidades vecinales y brigadistas) en el capítulo I y II, consideré diferencias de contexto social y de acceso a la preparación en primeros auxilios entre estos grupos, en lugar de asumir un único perfil de usuario homogéneo para todo el país.</p>
            <i>TB1</i>
            <p>Al diseñar las pruebas BDD y de API consideré el impacto sobre datos de personas reales: los escenarios BDD usan una base H2 en memoria y los de Karate crean usuarios con nombres aleatorios en una instancia con su propia base de datos, de modo que ninguna prueba toca datos de desarrollo ni de producción.</p>
            <i>AV2</i>
            <p>Al escribir las pruebas de la regla de recompensa cubrí los límites (69 % no paga monedas y 70 % sí) porque un error en ese borde habría dado o negado descuentos reales a las personas. En las historias To-Be de los experimentos (8.3.1) incluí escenarios de error para que ningún cambio de la experiencia deje a la persona sin salida, y consideré el impacto económico de los cupones, cuyo costo es el objeto de uno de los experimentos (Q7).</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Tello Palacios, Fabrizio Rafael</b> <br/>
            <i>AV1</i>
            <p>Al redactar los criterios de aceptación de las historias de usuario, incluí historias relacionadas con el cambio de idioma (español/inglés) de la aplicación, reconociendo que el statement exige inglés como idioma por defecto para ampliar el alcance social del producto más allá de un único idioma.</p>
            <i>TB1</i>
            <p>Al corregir los hallazgos de SonarQube consideré el impacto de seguridad sobre las personas usuarias: restringí CORS a los orígenes configurados en lugar de aceptar cualquier sitio web, hice que un JSON mal formado reciba un 400 sin revelar el mensaje interno del analizador, y mantuve abierta y documentada la desactivación de CSRF porque la API no tiene estado y autentica con JWT.</p>
            <i>AV2</i>
            <p>Al construir el pipeline y la tienda de la aplicación Android consideré el impacto económico y de seguridad: la imagen se publica en Docker Hub y cualquier integrante puede levantar el sistema con un comando, sin servicios pagados, y las claves se entregan al contenedor por variables de entorno y no dentro de la imagen. En la aplicación, el pago se completa en la página de Stripe, de modo que la aplicación nunca ve los datos de la tarjeta de la persona.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Aylas De La Cruz, Paulo Smit</b> <br/>
            <i>AV1</i>
            <p>Al diseñar el diagrama de base de datos evité incluir columnas o relaciones que expusieran innecesariamente datos personales entre bounded contexts (por ejemplo, referencias lógicas en vez de llaves foráneas físicas entre usuario y otros contextos), como medida orientada a la protección de datos de los futuros usuarios.</p>
            <i>TB1</i>
            <p>Al definir las reglas de roles consideré el impacto de que un error de configuración deje a la plataforma sin administración o con privilegios indebidos: el primer administrador se crea solo si no existe ninguno y con credenciales tomadas de variables de entorno, no del repositorio, y solo un administrador puede cambiar los roles de otras personas.</p>
            <i>AV2</i>
            <p>Al llevar la regla de recompensa al servidor consideré su efecto económico y social: las monedas se canjean por descuentos reales, así que solo pagan los intentos aprobados (70 % o más), cada repetición aprobada paga la mitad para que no se acumulen descuentos repitiendo una simulación, y la experiencia se otorga aunque no se apruebe para no desalentar a quien está aprendiendo. En los términos y condiciones retiré una cifra que el producto no podía sostener («+50,000 estudiantes capacitados») y declaré que SafeStep es un piloto académico que no sustituye la atención médica, para no generar una confianza indebida en una situación de emergencia.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Melgarejo Quiroz, Josep Eliu</b> <br/>
            <i>AV1</i>
            <p>Documenté en el capítulo V que el puntaje y los pasos correctos de un intento de simulación son calculados por el cliente y que el backend todavía no los valida contra las respuestas reales, dejando explícito que esos datos <b>no deben usarse aún</b> como medición confiable para recompensas ni para futuras decisiones experimentales, evitando así un impacto negativo por decisiones basadas en datos no verificados.</p>
            <i>TB1</i>
            <p>Al decidir cómo se obtienen los descuentos consideré el impacto económico sobre la persona usuaria: hay solo dos tipos de cupón (porcentaje simple y porcentaje con compra mínima), el costo en SafeCoins es visible antes de canjear y el descuento se aplica a toda la compra y se ve reflejado en el total antes de pagar con Stripe. También consideré el contexto económico del proyecto al desplegar en planes gratuitos y documenté sus límites, como la suspensión del backend por inactividad.</p>
            <i>AV2</i>
            <p>Al diseñar las métricas y el plan de seguimiento de los experimentos (8.2) consideré el impacto sobre las personas: se registra solo un identificador seudónimo, el texto libre del motivo de abandono no se guarda en la tabla de eventos, los datos se eliminan a los 90 días y no se ejecutan dos experimentos sobre el mismo tema con la misma persona. Los cálculos de escala fijan antes de empezar la significancia, la potencia y el efecto mínimo detectable, para no exponer a más personas de las necesarias.</p>
        </td>
    </tr>
</table>

Como conclusión general, el equipo SafeStep evidencia el cumplimiento del ABET – EAC - Student Outcome 4 en el Avance 1 y lo sostiene en el TB1 y en el AV2 porque, al documentar el estado real del producto y del informe, reconoció límites éticos y profesionales propios de un dominio sensible (primeros auxilios) y evitó presentar como validado, seguro o terminado aquello que todavía es una hipótesis, una limitación conocida o un riesgo pendiente de resolver. Esta autocrítica se mantendrá y profundizará en las siguientes entregas del curso conforme el producto y sus validaciones avancen.
