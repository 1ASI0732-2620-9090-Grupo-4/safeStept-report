<br>
<br>

<div align="center">
  <img src="../../assets/images/chapter-1/capitulo-1.png" alt="Capítulo 1" />
</div>

<br>
<br>

# 1.2. Solution Profile

## 1.2.1. Antecedentes y problemática

Los primeros auxilios comprenden acciones iniciales que pueden brindarse mientras se obtiene ayuda profesional. Su aprendizaje resulta relevante porque una respuesta desordenada, tardía o basada en información incorrecta puede aumentar el riesgo para la persona afectada y para quien intenta ayudar. La capacitación digital puede ampliar el acceso y favorecer el repaso, pero debe entenderse como complemento de la formación práctica y de los protocolos oficiales.

En Perú se han identificado brechas de conocimiento en distintos grupos. Lozano Villegas (2024) estudió factores asociados al conocimiento de primeros auxilios en estudiantes universitarios, mientras que Chuman Ramos y Ramírez Mayorca (2024) evaluaron el efecto de una intervención educativa en estudiantes de una institución de Lima. Ambos antecedentes respaldan la necesidad de estudiar no solo el acceso al contenido, sino también su comprensión, práctica y retención.

En el ámbito comunitario, el Gobierno Regional de La Libertad (2017) informó que una proporción importante de la población carecía de conocimientos para actuar ante víctimas de accidentes de tránsito. En el ámbito de respuesta organizada, el Ministerio de Salud del Perú (2025) destacó que la formación de brigadistas combina contenidos teóricos y prácticos sobre gestión de riesgos, atención sanitaria básica, primeros auxilios y transporte asistido. Estas fuentes muestran que las necesidades y el nivel de experiencia varían según el segmento.

La evidencia internacional también señala que el aprendizaje requiere refuerzo. White (2024) revisa la retención de habilidades de primeros auxilios y RCP, y Rodríguez-García et al. (2024) comparan modalidades tradicionales y gamificadas mediante simulación. Asimismo, Caicedo Vega y Zumbado Fernández (2023) identificaron, en docentes de educación básica, una diferencia entre el interés por aprender, la autopercepción y la preparación real. Estos resultados no se extrapolan directamente a la población peruana de SafeStep, pero aportan antecedentes para formular preguntas que deberán comprobarse con usuarios de los segmentos objetivo.

<div align="center">
  <p>
    <b>Gráfico 1.</b> Caracterización de participantes según capacitación, motivación y autopercepción del conocimiento sobre primeros auxilios
  </p>
  <img src="../../assets/images/chapter-1/grafico-1.png" alt="Comparación de capacitación, interés y autopercepción de conocimientos de primeros auxilios en docentes de instituciones públicas y privadas" />
  <p>
    <i><b>Fuente:</b> Caicedo Vega y Zumbado Fernández (2023).</i>
  </p>
</div>

El gráfico evidencia que un nivel alto de interés o una autopercepción favorable no garantizan haber recibido capacitación ni poseer conocimientos suficientes. Para SafeStep, esta diferencia justifica medir comportamientos observables —como decisiones correctas, finalización de escenarios o reducción de errores— además de opiniones de satisfacción o confianza.

### Enunciado del problema

Las personas interesadas en aprender primeros auxilios encuentran contenido disperso, experiencias predominantemente pasivas y pocas oportunidades accesibles para practicar la toma de decisiones y recibir retroalimentación. Como consecuencia, pueden percibirse preparadas sin haber comprobado su comprensión en escenarios simulados.

A esta brecha educativa se suma una brecha de preparación material: algunos usuarios desconocen qué insumos no farmacológicos son adecuados para un botiquín básico, cómo revisar su vigencia o cómo relacionarlos con situaciones concretas. No obstante, la disponibilidad de productos no equivale a competencia práctica; SafeStep debe evitar transmitir que una compra reemplaza la capacitación.

### Aspectos que debe resolver la propuesta

SafeStep debe abordar los siguientes aspectos:

- Acceso a experiencias breves y comprensibles de práctica guiada.
- Retroalimentación inmediata sobre las decisiones tomadas.
- Seguimiento del progreso y repetición de escenarios.
- Uso de elementos de gamificación sin distraer del objetivo educativo.
- Comunicación clara de los límites de una simulación digital.
- Contenido trazable a fuentes confiables y sujeto a revisión.
- Accesibilidad e internacionalización de la experiencia.
- Recomendaciones comerciales transparentes que no exploten la preocupación del usuario.
- Recolección ética y mínima de datos para evaluar el producto y ejecutar experimentos.

### Estado actual de la solución

La siguiente tabla delimita el estado As-Is del producto y evita presentar como implementadas capacidades que todavía pertenecen a una visión futura.

| Capacidad | Estado As-Is | Observación |
|---|---|---|
| Landing page informativa | Implementada | Presenta la propuesta y dirige a la aplicación web. |
| Registro, inicio de sesión y perfil | Implementados | Se utiliza autenticación con JWT. |
| Simulaciones interactivas | Implementadas | Incluyen escenarios, intentos y retroalimentación. |
| Gamificación | Implementada | Incluye experiencia, SafeCoins, misiones, insignias y ranking. |
| Progreso, estadísticas y certificados internos | Implementados | Son reconocimientos de la plataforma, no certificaciones profesionales. |
| Tienda, carrito y pedidos | Implementados | Incluye integración con Stripe Checkout. |
| Recomendaciones de productos | Implementadas de forma inicial | Su utilidad y aceptación todavía deben medirse. |
| Aplicación móvil nativa | No implementada | La solución disponible es una aplicación web responsiva. |
| Funcionamiento offline | No implementado | Se mantiene como posibilidad futura. |
| Suscripción premium | No implementada | Es una hipótesis del modelo de negocio. |
| Portal operativo para instructores | No implementado | El rol existe conceptualmente, pero no hay una experiencia completa. |
| Plataforma de experimentación y tracking | No implementada | Forma parte del alcance del nuevo curso. |

### Objetivo general

Evaluar y evolucionar SafeStep como plataforma web de aprendizaje de primeros auxilios mediante verificación del software, automatización del ciclo de entrega y experimentos controlados que produzcan evidencia sobre el comportamiento y las necesidades de sus usuarios.

### Objetivos específicos

- Caracterizar las necesidades de estudiantes universitarios, comunidades vecinales y brigadistas mediante fuentes documentales, entrevistas y observación de uso.
- Verificar las funcionalidades principales mediante pruebas unitarias, de integración, comportamiento y sistema.
- Implementar un pipeline reproducible de integración, entrega, despliegue y monitoreo continuo.
- Definir métricas de negocio y de producto con fórmulas, fuentes de datos y criterios de interpretación.
- Diseñar y ejecutar experimentos éticos que contrasten hipótesis sobre comprensión, confianza, finalización, retención e interacción con recomendaciones.
- Analizar los resultados obtenidos y convertirlos en decisiones justificadas para el backlog del producto.
- Mantener el contenido educativo y las comunicaciones comerciales separados, transparentes y sujetos a revisión.

### Restricciones

- SafeStep es una herramienta complementaria y no reemplaza la atención médica, los servicios de emergencia ni la capacitación práctica acreditada.
- El equipo no debe afirmar que un usuario está preparado para una emergencia real basándose únicamente en una simulación digital.
- El contenido médico debe estar respaldado por fuentes identificables y revisarse cuando cambien los protocolos aplicables.
- La tienda debe priorizar insumos no farmacológicos y cumplir las normas peruanas de comercio electrónico, protección al consumidor y protección de datos.
- Las recomendaciones de compra no deben presentarse como prescripciones médicas.
- Los experimentos deben aplicar consentimiento informado cuando corresponda, minimizar datos personales y evitar patrones manipulativos.
- La solución As-Is es web responsiva; cualquier aplicación móvil nativa u operación offline requiere diseño e implementación adicional.
- El alcance está condicionado por el tiempo del ciclo académico, el acceso a participantes y los servicios gratuitos o de bajo costo disponibles para despliegue y monitoreo.

### Técnica de The 5 W's y 2 H's

#### What — ¿Qué ocurre?

Existe una brecha entre el interés por aprender primeros auxilios y la posibilidad de practicar decisiones, recibir retroalimentación y comprobar la comprensión de manera accesible. También existe incertidumbre sobre el valor real que aportan la gamificación y las recomendaciones de productos dentro de la experiencia educativa.

#### When — ¿Cuándo ocurre?

La brecha aparece durante el aprendizaje inicial, al intentar recordar procedimientos después de un periodo sin práctica y al enfrentar información dispersa. SafeStep se utiliza de manera preventiva y formativa, no durante una emergencia como sustituto de los servicios especializados.

#### Where — ¿Dónde ocurre?

El aprendizaje puede realizarse desde hogares, universidades, espacios comunitarios o centros laborales mediante dispositivos con acceso web. Las emergencias relacionadas con el dominio pueden ocurrir en esos mismos entornos, pero la aplicación se enfoca en preparación previa y práctica simulada.

#### Who — ¿A quién afecta?

Afecta principalmente a estudiantes universitarios, miembros de comunidades vecinales y brigadistas que desean adquirir o reforzar conocimientos. Las víctimas potenciales de una respuesta incorrecta son beneficiarios indirectos, pero no son usuarios necesariamente.

#### Why — ¿Por qué ocurre?

Entre las posibles causas se encuentran el acceso limitado a práctica guiada, la dependencia de contenidos pasivos, la falta de refuerzo, la sobreestimación del conocimiento propio y la dificultad para evaluar la calidad de la información disponible. Estas causas deben tratarse como explicaciones sustentadas o supuestos por comprobar, no como verdades universales.

#### How — ¿Cómo se aborda?

SafeStep ofrece escenarios interactivos, alternativas de decisión, retroalimentación, repetición, progreso y gamificación. El nuevo ciclo incorporará pruebas automatizadas, despliegue continuo, instrumentación y experimentos para determinar qué elementos generan resultados útiles.

#### How much — ¿Cuál es la magnitud?

Las fuentes revisadas evidencian brechas relevantes en poblaciones específicas, pero no permiten calcular directamente el tamaño del problema o del mercado total de SafeStep. La magnitud para los segmentos seleccionados se estimará con datos secundarios claramente citados y con datos primarios obtenidos durante entrevistas y experimentos. Las cifras de conversión, disposición de pago y recompra se consideran desconocidas hasta ser medidas.

## 1.2.2. Lean UX Process

El Lean UX Process permite relacionar necesidades de usuarios, resultados de negocio y decisiones de producto mediante ciclos de construcción, medición y aprendizaje. En esta etapa se documentan creencias iniciales; no se presentan como hechos comprobados. Las hipótesis Lean UX de esta sección servirán posteriormente como material de entrada para las preguntas e hipótesis experimentales del Capítulo VIII.

### 1.2.2.1. Lean UX Problem Statements

#### Domain

Educación preventiva digital, práctica simulada de primeros auxilios y preparación responsable ante emergencias cotidianas.

#### Customer segments

- **Segmento inicial:** estudiantes universitarios.
- **Segmentos secundarios:** miembros de comunidades vecinales y brigadistas.

Se prioriza inicialmente a estudiantes universitarios porque el equipo puede acceder a participantes de este segmento durante el ciclo académico y porque su familiaridad digital facilita observar el uso de una plataforma web. Esta decisión no supone que sea el segmento con mayor valor comercial; dicha afirmación deberá comprobarse.

#### Pain points

- Acceso limitado a oportunidades de práctica frecuente.
- Contenidos extensos o pasivos que dificultan mantener la atención.
- Falta de retroalimentación inmediata.
- Incertidumbre sobre cuánto se comprende o recuerda.
- Dificultad para identificar información y productos confiables.
- Falta de claridad sobre la relación entre progreso, recompensas y aprendizaje.

#### Gap

Las alternativas existentes pueden ofrecer información, capacitación presencial o venta de productos por separado. La oportunidad identificada consiste en comprobar si una experiencia digital integrada puede facilitar práctica guiada, seguimiento y preparación responsable sin sustituir la formación profesional.

#### Vision and strategy

Chronos busca que SafeStep se convierta en una plataforma de aprendizaje continuo que tome decisiones de producto a partir de evidencia. La estrategia consiste en ofrecer una experiencia web accesible, medir los principales recorridos, probar cambios pequeños y conservar únicamente aquellos que demuestren aportar valor sin comprometer la seguridad ni la autonomía del usuario.

#### Initial segment

El primer ciclo de descubrimiento y experimentación se enfocará en estudiantes universitarios mayores de edad con acceso habitual a internet y sin requerir experiencia previa en primeros auxilios. Los demás segmentos se investigarán progresivamente y no se asumirán equivalentes.

#### Problem statement

Hemos observado que estudiantes universitarios interesados en primeros auxilios disponen de información, pero cuentan con pocas oportunidades accesibles para practicar decisiones y recibir retroalimentación. Esto puede producir una diferencia entre su confianza percibida y su desempeño en escenarios simulados. SafeStep explorará si una experiencia web interactiva, clara y repetible mejora la finalización, la comprensión y la disposición a continuar practicando. El éxito se evaluará mediante métricas previamente definidas y no solo mediante opiniones positivas.

### 1.2.2.2. Lean UX Assumptions

#### Business assumptions

- Existe interés en una experiencia digital complementaria de aprendizaje de primeros auxilios.
- Una parte de los usuarios podría valorar servicios avanzados o productos relacionados, pero su disposición de pago es desconocida.
- La sostenibilidad dependerá de retención, uso recurrente y confianza, no únicamente de registros o visitas.
- Integrar educación y comercio podría aportar conveniencia, pero también generar desconfianza si la recomendación no es transparente.

#### User assumptions

- Los estudiantes universitarios utilizan con familiaridad aplicaciones web y experiencias gamificadas.
- Los usuarios valoran explicaciones breves y retroalimentación inmediata.
- La confianza declarada puede diferir del desempeño observable.
- Los brigadistas tienen necesidades diferentes de las personas sin formación previa.
- Los miembros de comunidades vecinales pueden priorizar claridad, accesibilidad y aplicación en el hogar.

#### Problem assumptions

- La falta de práctica frecuente contribuye a errores y olvido.
- Parte del contenido disponible es percibido como extenso, fragmentado o difícil de aplicar.
- Los usuarios necesitan comprender los límites de una simulación digital.
- El sistema actual puede no explicar suficientemente la relación entre misiones, recompensas, progreso y aprendizaje.

#### Solution assumptions

- Los escenarios ramificados pueden favorecer la práctica de toma de decisiones.
- La retroalimentación inmediata puede ayudar a reconocer errores.
- La repetición y el progreso visible pueden promover continuidad.
- La gamificación puede motivar, aunque también podría distraer.
- Mostrar fuentes y criterios de revisión puede aumentar la confianza.
- Explicar por qué se recomienda un producto puede ser mejor recibido que mostrar una recomendación sin contexto.

#### Risks and knowledge gaps

- No se conoce la frecuencia real con la que los usuarios repetirán simulaciones.
- No se conoce qué elementos de gamificación aportan valor educativo.
- No se conoce la disposición de pago ni la intención real de compra.
- No se ha comprobado que las recomendaciones comerciales mejoren la experiencia.
- No se ha medido la retención del aprendizaje en el tiempo.
- Existe riesgo de que el usuario interprete la plataforma como sustituto de capacitación profesional.
- Existe riesgo de sesgo si la muestra se limita a compañeros cercanos al equipo.

### 1.2.2.3. Lean UX Hypothesis Statements

Las siguientes hipótesis son preliminares y deberán transformarse en diseños experimentales con hipótesis nula, medidas, condiciones y escala en el Capítulo VIII.

#### LH-01 — Claridad del primer uso

Creemos que explicar, antes de la primera simulación, el objetivo educativo, el funcionamiento de las decisiones y el significado de las recompensas ayudará a los estudiantes universitarios sin experiencia previa. Sabremos que existe evidencia favorable cuando aumente la proporción de usuarios que inicia y completa su primera simulación sin incrementar la tasa de abandono.

#### LH-02 — Retroalimentación accionable

Creemos que una retroalimentación que explique el motivo de cada decisión ayudará a los usuarios que completan simulaciones. Sabremos que existe evidencia favorable cuando disminuyan los errores repetidos en un segundo intento comparable.

#### LH-03 — Confianza y trazabilidad

Creemos que mostrar fuentes, fecha de revisión y límites educativos aumentará la confianza informada en SafeStep. Sabremos que existe evidencia favorable cuando los usuarios identifiquen correctamente el propósito y los límites de la plataforma y aumente su intención de continuar practicando.

#### LH-04 — Gamificación con sentido educativo

Creemos que relacionar misiones e insignias con objetivos de aprendizaje concretos motivará la práctica recurrente sin desviar la atención hacia recompensas aisladas. Sabremos que existe evidencia favorable cuando aumente la repetición voluntaria de simulaciones y se mantenga o mejore el desempeño.

#### LH-05 — Recomendaciones transparentes

Creemos que explicar la relación entre una simulación y un producto no farmacológico recomendado generará mayor comprensión y aceptación que una recomendación sin justificación. Sabremos que existe evidencia favorable cuando aumente la interacción informada con la recomendación sin reducir la confianza en el contenido educativo.

### 1.2.2.4. Lean UX Canvas

El Lean UX Canvas actualizado sintetiza el estado de la estrategia y diferencia las capacidades actuales de las hipótesis pendientes de comprobación.

<div align="center">
  <p>
    <b>Gráfico 2.</b> Lean UX Canvas actualizado de SafeStep
  </p>
  <img src="../../assets/images/chapter-1/lean-ux-canvas-v2.png" alt="Lean UX Canvas de SafeStep con problema y resultados de negocio, usuarios, beneficios, ideas de solución, hipótesis, aprendizajes prioritarios y experimentos mínimos" />
  <p>
    <i><b>Fuente:</b> elaboración propia.</i>
  </p>
</div>

El canvas establece como aprendizaje prioritario determinar si un onboarding contextual mejora la finalización y la comprensión de la primera simulación. Para obtener evidencia con el menor trabajo útil, propone comparar una condición de control con una variante que incorpora el onboarding y medir exposición, inicio, finalización, abandono y comprensión.

Las posibles soluciones futuras —como modo offline, suscripción premium o un portal completo para instructores— no se presentan como capacidades actuales ni forman parte de este primer experimento.

El canvas se revisará después de cada ciclo de aprendizaje. Los cambios deberán sustentarse con resultados del Question Backlog, los experimentos y las entrevistas, evitando convertir una observación aislada en una conclusión general.
