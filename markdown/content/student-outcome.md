# Student Outcome

## ABET – EAC - Student Outcome 4

**Criterio:** La capacidad de reconocer responsabilidades éticas y profesionales en situaciones de ingeniería y hacer juicios informados, que deben considerar el impacto de las soluciones de ingeniería en contextos globales, económicos, ambientales y sociales.

En el siguiente cuadro se describe las acciones realizadas y enunciados de conclusiones por parte del grupo, que permiten sustentar el haber alcanzado el logro del ABET – EAC - Student Outcome 4, tomando como referencia el Avance 1 (AV1) del proyecto SafeStep, correspondiente a la documentación de los capítulos I al V elaborada hasta el momento.

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
        </td>
        <td rowspan="5">
            <i>AV1</i>
            <p>El equipo reconoció que trabajar sobre un dominio sensible como primeros auxilios exige límites éticos explícitos en el propio producto y en el informe: deslindar responsabilidad médica, no presentar el modelo de negocio como validado cuando aún es una hipótesis, tratar los datos de las personas entrevistadas con consentimiento y resguardo de su identidad, y documentar honestamente las limitaciones técnicas y de seguridad detectadas en lugar de ocultarlas para mostrar un avance más completo del que realmente existe. Estas decisiones se reflejan de forma trazable en los capítulos I a V del informe y en el código de los repositorios de SafeStep.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Sanchez Arenas, Manuel Angel</b> <br/>
            <i>AV1</i>
            <p>En el capítulo II (Needfinding y entrevistas) apliqué el resguardo de la identidad de las personas entrevistadas usando resúmenes en lugar de transcripciones completas, y evité atribuir citas o conclusiones que los entrevistados no expresaron, para no distorsionar los hallazgos usados como base del producto.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Tello Palacios, Fabrizio Rafael</b> <br/>
            <i>AV1</i>
            <p>Al construir el Product Backlog (capítulo III) evité priorizar arbitrariamente historias técnicas de seguridad o autenticación por encima de historias de valor para el usuario, siguiendo el criterio de priorización por valor de negocio indicado en el statement, para no simular un avance orientado solo a infraestructura interna.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Aylas De La Cruz, Paulo Smit</b> <br/>
            <i>AV1</i>
            <p>Al diseñar el modelo de base de datos (capítulo IV) apliqué las tres formas de normalización y documenté los archivos SQL como artefactos de diseño, no como scripts de migración listos para producción, para no dar a entender que existe una base de datos productiva con información real de usuarios.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Melgarejo Quiroz, Josep Eliu</b> <br/>
            <i>AV1</i>
            <p>Al preparar la configuración y el despliegue (capítulo V), identifiqué una credencial de base de datos que había quedado versionada en el historial de Git y documenté que debe rotarse en el proveedor en lugar de solo eliminarla del archivo actual; también detecté que cuentas con rol de usuario común podían ver controles de administración en la web y agregué restricciones de rol (<code>@PreAuthorize</code> en el backend y un <code>adminGuard</code> en el frontend) antes de reportar el avance como funcional.</p>
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
        </td>
        <td rowspan="5">
            <i>AV1</i>
            <p>El equipo emitió juicios informados al reconocer que el modelo de negocio de SafeStep todavía es una hipótesis económica sin validar, que los segmentos de usuario (estudiantes, comunidades vecinales y brigadistas) enfrentan contextos sociales y de acceso distintos entre sí, que el idioma por defecto debe ampliarse a inglés para no limitar el alcance social del producto, y que el diseño de datos debe evitar exponer información personal entre bounded contexts. En conjunto, estas decisiones muestran que el equipo considera el impacto económico, social y de protección de datos de sus decisiones de ingeniería antes de presentarlas como parte del producto, en lugar de evaluarlas únicamente desde un criterio técnico.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Sanchez Arenas, Manuel Angel</b> <br/>
            <i>AV1</i>
            <p>Al analizar los segmentos objetivo (estudiantes universitarios, comunidades vecinales y brigadistas) en el capítulo I y II, consideré diferencias de contexto social y de acceso a la preparación en primeros auxilios entre estos grupos, en lugar de asumir un único perfil de usuario homogéneo para todo el país.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Tello Palacios, Fabrizio Rafael</b> <br/>
            <i>AV1</i>
            <p>Al redactar los criterios de aceptación de las historias de usuario, incluí historias relacionadas con el cambio de idioma (español/inglés) de la aplicación, reconociendo que el statement exige inglés como idioma por defecto para ampliar el alcance social del producto más allá de un único idioma.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Aylas De La Cruz, Paulo Smit</b> <br/>
            <i>AV1</i>
            <p>Al diseñar el diagrama de base de datos evité incluir columnas o relaciones que expusieran innecesariamente datos personales entre bounded contexts (por ejemplo, referencias lógicas en vez de llaves foráneas físicas entre usuario y otros contextos), como medida orientada a la protección de datos de los futuros usuarios.</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Melgarejo Quiroz, Josep Eliu</b> <br/>
            <i>AV1</i>
            <p>Documenté en el capítulo V que el puntaje y los pasos correctos de un intento de simulación son calculados por el cliente y que el backend todavía no los valida contra las respuestas reales, dejando explícito que esos datos <b>no deben usarse aún</b> como medición confiable para recompensas ni para futuras decisiones experimentales, evitando así un impacto negativo por decisiones basadas en datos no verificados.</p>
        </td>
    </tr>
</table>

Como conclusión general, el equipo SafeStep evidencia el cumplimiento del ABET – EAC - Student Outcome 4 en el Avance 1 porque, al documentar el estado real del producto y del informe, reconoció límites éticos y profesionales propios de un dominio sensible (primeros auxilios) y evitó presentar como validado, seguro o terminado aquello que todavía es una hipótesis, una limitación conocida o un riesgo pendiente de resolver. Esta autocrítica se mantendrá y profundizará en las siguientes entregas del curso conforme el producto y sus validaciones avancen.
