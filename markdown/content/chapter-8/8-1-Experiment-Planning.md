# 8.1. Experiment Planning

Este capítulo aplica el enfoque **Experiment-Driven Product Development (XDPD)** de Paul Rissen a SafeStep. En XDPD la pregunta, y no la solución, es el punto de partida: primero se reúne la materia prima (ideas, afirmaciones, supuestos y vacíos de conocimiento), luego se formulan preguntas que se pueden responder con un experimento, se priorizan y, por cada pregunta, se redacta una **Experiment Card**. La planificación termina ahí; el diseño detallado de cada experimento está en 8.2 y las historias de usuario que se derivan de las preguntas priorizadas en 8.3.

**Eje experimental.** SafeStep ya existe como producto (capítulos 5 a 7), de modo que los experimentos no validan si la aplicación funciona, sino cómo mejorarla. El eje elegido es el **bucle de incentivos SafeCoins → cupones y repetición de práctica**: cómo las monedas, las recompensas y los cupones influyen en que una persona empiece, termine y repita simulaciones de primeros auxilios. Es el eje donde se concentran los hallazgos de las entrevistas de validación (6.3) y donde las reglas del producto contienen supuestos que nunca se han contrastado con comportamiento real.

**Alcance y honestidad de los datos.** Este capítulo planifica y diseña los experimentos y deriva las historias de usuario; no presenta resultados experimentales. Donde aparecen valores de partida (por ejemplo, «tasa base de 50 %») son **supuestos de planificación**, rotulados como tales, que deben sustituirse por mediciones reales antes de ejecutar cada experimento, porque hoy SafeStep no registra el comportamiento de uso (ver 8.1.1).

## 8.1.1. As-Is Summary

**El producto hoy.** SafeStep es una aplicación web (Angular 21 y Spring Boot, publicada en Render) para practicar primeros auxilios mediante simulaciones con retroalimentación inmediata. El catálogo contiene 18 simulaciones de cuatro pasos cada una (8 de nivel Básico, 6 Intermedio y 4 Avanzado, de 9 a 22 minutos), 14 misiones, 18 insignias, una tienda de 32 productos en 14 categorías y 6 cupones de descuento. Existe un panel de administración y una página de estadísticas personales. La calidad técnica está documentada en el capítulo 6: 242 pruebas automatizadas en el backend, 15 escenarios de pruebas de sistema que recorren el flujo completo, y un pipeline de integración continua (capítulo 7).

**Cómo funciona el bucle de incentivos.** Estas son las reglas vigentes, tomadas del código:

| Elemento | Regla actual |
| --- | --- |
| Recompensa de una simulación | Cada simulación tiene una recompensa base de SafeCoins (entre 53 y 179) y de XP |
| Aprobación | Se gana SafeCoins solo si la precisión es de al menos **70 %** (3 de 4 pasos correctos) |
| Cálculo | `monedas = ⌊recompensa base × precisión × multiplicador⌋`, con `multiplicador = 1 / 2^k` y `k` = intentos aprobados previos de **esa misma simulación** (el segundo intento aprobado paga la mitad, el tercero un cuarto) |
| Cupones | 6 cupones; el más barato cuesta 120 monedas (5 % en compras desde S/ 100) y el siguiente 150 (5 % en toda la tienda); los demás llegan a 600 |
| Uso del cupón | Se canjea con monedas, queda en «Mis cupones» y se aplica en el pago |
| Misiones y rachas | Misiones diarias y semanales con bonificación de XP y monedas; insignias de racha de 7 y 30 días |

**Qué dicen los usuarios.** Las diez entrevistas exploratorias (2.2) mostraron una necesidad de práctica compartida por los tres segmentos: los estudiantes se sienten parcialmente preparados y valoran practicar; las comunidades vecinales señalan la falta de tiempo; los brigadistas piden más realismo y práctica sin esperar una emergencia. Las entrevistas de validación (6.3) concluyeron que la gamificación se percibe como motivadora, pero la evaluación heurística registró cinco problemas, todos de severidad 1 o 2:

| # | Hallazgo de 6.3 | Severidad |
| --- | --- | :-: |
| 1 | Monedas, recompensas y progreso no se explican lo suficiente en el primer uso | 2 |
| 2 | Algunas simulaciones tienen poca profundidad para quienes ya tienen experiencia | 2 |
| 3 | Falta reforzar la confianza y el respaldo del contenido médico | 2 |
| 4 | Algunas opciones de respuesta usan lenguaje demasiado técnico | 2 |
| 5 | La tienda no explica la relación entre lo practicado y los productos sugeridos | 1 |

**Lo que no sabemos.** SafeStep no tiene hoy datos de comportamiento que permitan calcular una tasa base. Se identificaron cuatro limitaciones concretas:

1. El intento de una simulación se registra **solo al terminar**. No existe registro de inicios ni de abandonos, por lo que la tasa de finalización no se puede calcular.
2. La hora de inicio y el tiempo empleado de un intento se calculan a partir de la duración nominal de la simulación, no se miden; no hay tiempos reales por paso.
3. No hay eventos de uso (visitas, clics, aperturas de la guía, vistas de la tienda ni de los cupones) ni identificación de qué variante de una pantalla vio cada persona.
4. Los datos de las entrevistas son de muestras pequeñas (3 a 4 personas por segmento), de selección por conveniencia y con preguntas que sugerían respuestas; describen percepciones, no conductas.

**Conclusión del As-Is.** El producto funciona y el bucle SafeCoins → cupón está probado de punta a punta, pero las decisiones de diseño del bucle (el umbral de 70 %, la reducción a la mitad por intento, el costo de los cupones, la explicación inicial) se tomaron sin evidencia de uso. Por eso los experimentos de este capítulo son, en su mayoría, de dos clases: *experimentos de línea base y exploratorios*, que miden lo que hoy se ignora, y *experimentos guiados por una creencia*, que contrastan una mejora concreta.

## 8.1.2. Raw Material: Assumptions, Knowledge Gaps, Ideas, Claims

La materia prima se clasificó en las cuatro categorías de XDPD. Cada elemento lleva un código (I, C, A, K) y su origen, para que cada pregunta de 8.1.3 sea rastreable.

### Ideas

Soluciones propuestas por el equipo o derivadas de la evaluación heurística. No se prueban como tales: se examinan las premisas que las sostienen.

| Código | Idea | Origen | Premisa subyacente |
| --- | --- | --- | --- |
| I1 | Guía de bienvenida de tres pasos que explique XP, SafeCoins y misiones | 6.3, problema 1 | Quien entiende cómo se ganan y se gastan las monedas empieza y termina más simulaciones |
| I2 | Modo avanzado con más pasos y retroalimentación detallada | 6.3, problema 2 | Las personas con experiencia abandonan antes las simulaciones básicas |
| I3 | Producto sugerido con una frase contextual tras una simulación aprobada («para practicar lo aprendido en RCP») | 6.3, problema 5 | Un producto relacionado con lo practicado despierta más interés que una lista genérica |
| I4 | Mostrar antes de empezar cuánto pagará el intento y que repetir paga la mitad | Reglas de recompensa | Conocer la regla orienta a probar simulaciones distintas en lugar de repetir una sola |
| I5 | Bonificación por racha de días consecutivos de práctica | Insignias de racha | Premiar la continuidad aumenta los días de práctica |
| I6 | Mensaje de salida no bloqueante al abandonar una simulación a medias | Equipo | Preguntar en el momento del abandono revela la causa real |
| I7 | Sección de respaldo y fuentes del contenido médico en la landing | 6.3, problema 3 | El respaldo visible aumenta la disposición a crear una cuenta |
| I8 | Glosario breve dentro de la retroalimentación | 6.3, problema 4 | Un lenguaje más simple mejora la comprensión de quienes no tienen formación |

### Claims

Afirmaciones que se hacen sobre el producto, buenas o malas, dentro y fuera del equipo.

| Código | Afirmación | Origen |
| --- | --- | --- |
| C1 | «Las SafeCoins motivan a seguir usando la aplicación» | Validación 6.3: los participantes percibieron la gamificación como motivadora |
| C2 | «La tienda es una extensión natural del aprendizaje» | 6.3, problema 5: se entiende como complemento útil |
| C3 | «Practicar con escenarios y retroalimentación prepara mejor que el contenido pasivo» | Propuesta de valor (1.2) |
| C4 | «Tener interés por aprender no garantiza estar preparado» | Antecedentes de 1.2 (Caicedo Vega y Zumbado Fernández, 2023) |

### Assumptions

Supuestos que el equipo da por ciertos y que están incorporados en el producto.

| Código | Supuesto | Dónde está incorporado |
| --- | --- | --- |
| A1 | Los usuarios entienden que repetir una simulación paga menos y, aun así, repiten para aprender | Multiplicador `1 / 2^k` |
| A2 | El umbral de 70 % de precisión es exigente sin desanimar | Regla de aprobación |
| A3 | El costo de los cupones (desde 120 monedas) es alcanzable y motiva a seguir practicando | Catálogo de cupones |
| A4 | Las personas con experiencia previa encuentran básicas las simulaciones de nivel Básico | Niveles de dificultad |
| A5 | Quien inicia una simulación de cuatro pasos la termina | Diseño de simulaciones de 9 a 22 minutos |
| A6 | Los usuarios llegan a la aplicación principalmente desde laptop | Entrevistas a estudiantes (4/4 usan laptop); web primero |

### Knowledge Gaps

Cosas que el equipo sabe que no sabe.

| Código | Vacío de conocimiento | Por qué no se puede responder hoy |
| --- | --- | --- |
| K1 | ¿Qué porcentaje de usuarios nuevos termina su primera simulación? | No se registran inicios ni abandonos |
| K2 | ¿Qué tipo de emergencia y qué punto de entrada eligen primero? | No hay eventos de navegación |
| K3 | ¿Por qué se abandona una simulación iniciada? | No hay registro de abandonos ni espacio para preguntar |
| K4 | ¿Cada cuánto tiempo vuelven los usuarios y cuánto se olvida entre sesiones? | No hay registro de sesiones |
| K5 | ¿Qué factores de confianza buscan los usuarios en un contenido médico? | Las entrevistas fueron pocas y dirigidas |

## 8.1.3. Experiment-Ready Questions

Cada pregunta se formuló con las cinco W y una H, se clasificó como **guiada por una creencia** (*belief-led*, hay una premisa que contrastar) o **exploratoria** (no hay creencia previa) y se vinculó con su materia prima. Cubren los cuatro tipos de material y las seis preguntas del método.

| ID | W/H | Tipo | Materia prima | Pregunta |
| --- | --- | --- | --- | --- |
| Q1 | How | Belief-led | I1, A1, 6.3 (1) | ¿Cómo afecta mostrar una guía de bienvenida de tres pasos sobre XP, SafeCoins y misiones a la proporción de usuarios nuevos que terminan su primera simulación en los primeros 7 días? |
| Q2 | What | Belief-led | I4, A1 | ¿Qué efecto tiene mostrar antes de empezar una simulación cuántas monedas pagará ese intento (y que repetir paga la mitad) sobre el número de simulaciones distintas que una persona completa en 14 días? |
| Q3 | Who | Belief-led | I2, A4, 6.3 (2) | ¿Quiénes abandonan antes una simulación de nivel Básico: las personas con experiencia previa en primeros auxilios o las que no la tienen? |
| Q4 | Where | Exploratoria | K2 | ¿En qué tipo de emergencia y desde qué punto de entrada (catálogo, filtro, tarjeta «continuar» del dashboard) inician su primera simulación los usuarios nuevos? |
| Q5 | Why | Exploratoria | K3, A5, I6 | ¿Por qué abandonan los usuarios una simulación después de iniciarla y antes de completar sus cuatro pasos? |
| Q6 | How | Belief-led | I3, C2, 6.3 (5) | ¿Cómo influye mostrar, tras una simulación aprobada, un producto sugerido con una frase contextual en lugar de la lista genérica sobre la proporción de personas que abren la ficha de un producto? |
| Q7 | What | Belief-led | A3, C1 | ¿Qué costo del cupón de 5 % en toda la tienda (100, 150 o 200 SafeCoins) maximiza la proporción de usuarios elegibles que canjean su primer cupón en 30 días? |
| Q8 | What | Belief-led | I5, C1 | ¿Qué impacto tiene una bonificación de +20 % de monedas al practicar tres días consecutivos sobre el número de días con práctica en 14 días? |
| Q9 | How | Belief-led | A2 | ¿Cómo cambia la mejora de precisión entre el primer y el segundo intento de una misma simulación si el umbral de aprobación es de 60 %, 70 % o 80 %? |
| Q10 | When | Exploratoria | K4, C4 | ¿Cada cuánto tiempo vuelven los usuarios a practicar y qué relación existe entre el intervalo entre sesiones y la precisión de la sesión siguiente? |

**Ideas que no se convirtieron en pregunta.** I7 (sección de respaldo en la landing) y I8 (glosario) se dejaron fuera de este conjunto porque no pertenecen al eje del bucle de incentivos; quedan registradas en el backlog (8.1.4) como candidatas para una segunda ronda, junto con el vacío K5.

## 8.1.4. Question Backlog

### Matriz de priorización

Cada pregunta se puntuó de 1 a 5 en los cuatro criterios de XDPD, donde un número mayor significa mayor importancia de responderla:

- **Confianza (C):** cuánta certeza tiene el equipo de ya conocer la respuesta.
- **Riesgo (R):** el daño si la premisa es falsa o si no se responde pronto.
- **Impacto (I):** el beneficio para el producto y los usuarios si se conoce la respuesta.
- **Interés (IN):** el apetito del equipo por responderla.

`Stotal = C + R + I + IN`. En un empate se prioriza el mayor Riesgo y, si persiste, el mayor Impacto.

| Prioridad | ID | Pregunta corta | C | R | I | IN | Total | Criterio de orden |
| :-: | --- | --- | :-: | :-: | :-: | :-: | :-: | --- |
| 1 | Q5 | Motivo del abandono de una simulación (Why) | 2 | 5 | 5 | 4 | **16** | Empate a 16 con Q7; mayor R (5 > 4) |
| 2 | Q7 | Costo del primer cupón (What) | 2 | 4 | 5 | 5 | **16** | Empate a 16 con Q5; menor R |
| 3 | Q1 | Guía de bienvenida y primera simulación (How) | 3 | 3 | 5 | 4 | **15** | Empate a 15 con Q8; mayor I (5 > 4) |
| 4 | Q8 | Bonificación por racha (What) | 3 | 3 | 4 | 5 | **15** | Empate a 15 con Q1; menor I |
| 5 | Q3 | Experiencia previa y abandono del nivel Básico (Who) | 4 | 3 | 4 | 3 | **14** | Puntuación única |
| 6 | Q9 | Umbral de aprobación (How) | 2 | 4 | 4 | 3 | **13** | Empate a 13 con Q2; mayor R (4 > 3) |
| 7 | Q2 | Recompensa visible antes de empezar (What) | 2 | 3 | 4 | 4 | **13** | Empate a 13 con Q9; menor R |
| 8 | Q6 | Producto sugerido con frase contextual (How) | 3 | 2 | 4 | 3 | **12** | Puntuación única |
| 9 | Q4 | Primera simulación y punto de entrada (Where) | 2 | 2 | 3 | 4 | **11** | Puntuación única |
| 10 | Q10 | Frecuencia de regreso (When) | 3 | 2 | 3 | 2 | **10** | Puntuación única |

**Lectura de la matriz.** Las tres preguntas con mayor prioridad (Q5, Q7 y Q1) pertenecen al bucle de incentivos y comparten una característica: hoy no hay evidencia para responderlas y equivocarse sale caro. Q5 puntúa más alto en riesgo porque, si no se sabe por qué se abandona, todo el bucle de recompensas se diseña a ciegas; Q7 porque un cupón mal calibrado hace que las monedas pierdan valor o que se regalen. Q9 y Q2 tienen confianza baja, pero impacto y riesgo menores que las anteriores. Q4 y Q10 son exploratorias y de bajo riesgo, por lo que quedan al final.

### Arquitectura del backlog

Se mantiene un **backlog ancho** (*broad backlog*): las 10 preguntas sondean áreas distintas del producto (activación, economía de monedas, dificultad, tienda, retención), de modo que descubrir que una premisa es falsa no deja inservible el resto. Cada pregunta puede crecer luego en una rama profunda con preguntas encadenadas; la primera revisión del backlog se documenta en 8.4.2.

## 8.1.5. Experiment Cards

Se redacta una tarjeta por pregunta, con el formato de XDPD. El **anverso** contiene la pregunta, el motivo (*why*), lo más simple útil que se hará (*what*) y la hipótesis. El **reverso** contiene las medidas, las condiciones y la escala con su método. Las hipótesis alternativas y nulas se desarrollan en 8.2.1, las medidas en 8.2.3, las condiciones en 8.2.4 y los cálculos de escala en 8.2.5; aquí se resumen para que cada tarjeta se pueda leer sola. **Toda medida de una tarjeta es una métrica definida en 8.2.2** y se cita por su código (M1 a M24); no se usan métricas que no estén definidas allí. Las cifras de partida marcadas con «(supuesto)» deben medirse antes de ejecutar el experimento (8.2.5).

### Experiment Card 1 (Prioridad 1) — Q5: Motivo del abandono de una simulación

**Anverso**

- **Pregunta:** ¿Por qué abandonan los usuarios una simulación después de iniciarla y antes de completar sus cuatro pasos?
- **Why:** Cada simulación abandonada es práctica perdida y recompensa que nunca se cobra. Si el abandono se debe a la dificultad, a la duración o a no entender el sistema de monedas, las soluciones son distintas; sin saber la causa, cualquier cambio al bucle de incentivos es una apuesta.
- **What (lo más simple útil):** Un mensaje no bloqueante de una pregunta que aparece cuando el usuario sale de una simulación a medias, con cinco opciones fijas y un campo de texto libre opcional, más entrevistas breves a quienes acepten.
- **Hipótesis:** Pregunta exploratoria. Se busca descubrir las causas sin imponer una explicación previa.

**Reverso**

- **Medidas.** Principal: M10 (motivos de abandono). Secundarias: M11 (respuesta al mensaje de salida) y M12 (paso de abandono). Salud: M9 (abandono de simulaciones).
- **Condiciones.** Gatillo: persona que sale de una simulación después de responder al menos un paso y sin terminarla. Herramienta: una pregunta con cinco opciones (muy larga, muy difícil, no entendí cómo funcionan las monedas, me interrumpieron, otro) y texto libre.
- **Escala y método.** Al menos 30 respuestas y 8 entrevistas breves; duración hasta alcanzar esas cifras o 6 semanas. Método mixto: mensaje contextual dentro de la aplicación y entrevistas.

### Experiment Card 2 (Prioridad 2) — Q7: Costo del primer cupón

**Anverso**

- **Pregunta:** ¿Qué costo del cupón de 5 % en toda la tienda (100, 150 o 200 SafeCoins) maximiza la proporción de usuarios elegibles que canjean su primer cupón en 30 días?
- **Why:** Las monedas solo motivan si tienen un destino alcanzable. El costo actual de 150 monedas se fijó sin datos: si es muy alto, nadie canjea y las monedas pierden sentido; si es muy bajo, los cupones se regalan.
- **What:** Asignar al azar a cada usuario nuevo uno de tres precios para el cupón de 5 % y medir cuántos canjean su primer cupón.
- **Hipótesis (H1):** El precio de 100 monedas aumentará en 20 puntos porcentuales (40 % → 60 %, supuesto) la proporción de canje frente al precio actual de 150, y el de 200 la reducirá. **Hipótesis nula (H0):** el precio del cupón no produce diferencias significativas en la proporción de canje (p ≥ 0.05).

**Reverso**

- **Medidas.** Principal: M6 (canje del primer cupón). Secundarias: M18 (monedas ganadas por usuario) y M19 (saldo sin gastar). Salud: M5 (economía de monedas) y M4 (retención).
- **Condiciones.** Control (B): 150 monedas. Variante A: 100 monedas. Variante C: 200 monedas. Población: usuarios nuevos que ganaron al menos 100 monedas.
- **Escala y método.** 115 usuarios elegibles por variante (345 en total), α = 0.025 por comparación (corrección de Bonferroni para dos comparaciones), potencia 0.80, MDE de 20 puntos. Duración: 30 días después de que cada usuario se vuelve elegible. Método: prueba A/B/C.

### Experiment Card 3 (Prioridad 3) — Q1: Guía de bienvenida y primera simulación

**Anverso**

- **Pregunta:** ¿Cómo afecta mostrar una guía de bienvenida de tres pasos sobre XP, SafeCoins y misiones a la proporción de usuarios nuevos que terminan su primera simulación en los primeros 7 días?
- **Why:** La validación (6.3) mostró que el sistema de monedas no se entiende bien al principio. Si esa falta de comprensión frena la primera simulación, es el punto de mayor pérdida de todo el embudo.
- **What:** Mostrar a la mitad de los usuarios nuevos una tarjeta breve en el dashboard, con tres pasos y un botón para omitirla; la otra mitad ve el dashboard actual.
- **Hipótesis (H1):** Los usuarios que ven la guía terminarán su primera simulación en una proporción 20 puntos porcentuales mayor (50 % → 70 %, supuesto) que quienes no la ven. **Hipótesis nula (H0):** la guía no produce diferencias significativas en la proporción de primera simulación terminada (p ≥ 0.05).

**Reverso**

- **Medidas.** Principal: M1 (activación). Secundarias: M13 (tiempo hasta la primera simulación) y M14 (omisión de la guía). Salud: M4 (retención).
- **Condiciones.** Control (A): dashboard actual. Experimental (B): dashboard con la guía de tres pasos. Población: usuarios nuevos registrados desde el inicio del experimento.
- **Escala y método.** 91 usuarios por variante (182 en total), α = 0.05, potencia 0.80, MDE de 20 puntos. Duración: 7 días por usuario. Método: prueba A/B.

### Experiment Card 4 (Prioridad 4) — Q8: Bonificación por racha

**Anverso**

- **Pregunta:** ¿Qué impacto tiene una bonificación de +20 % de monedas al practicar tres días consecutivos sobre el número de días con práctica en 14 días?
- **Why:** SafeStep ya tiene insignias de racha, pero no premia la continuidad con monedas. Los antecedentes (1.2) indican que el aprendizaje de primeros auxilios requiere refuerzo repetido; premiar la regularidad podría sostenerlo.
- **What:** Activar a la mitad de los usuarios un contador de racha con la bonificación y comparar los días activos.
- **Hipótesis (H1):** El grupo con bonificación practicará 1 día más en 14 días (3 → 4 días, supuesto). **Hipótesis nula (H0):** la bonificación no produce diferencias significativas en los días con práctica (p ≥ 0.05).

**Reverso**

- **Medidas.** Principal: M3 (regularidad). Secundarias: M15 (racha de tres días) y M18 (monedas ganadas por usuario). Salud: M16 (precisión promedio), para detectar práctica más frecuente pero peor.
- **Condiciones.** Control (A): sin bonificación. Experimental (B): contador de racha y bonificación de +20 %. Población: usuarios con al menos una simulación completada.
- **Escala y método.** 63 usuarios por variante (126 en total), α = 0.05, potencia 0.80, MDE de 1 día con desviación estándar de 2 días (supuesto). Duración: 14 días. Método: prueba A/B de reglas de gamificación.

### Experiment Card 5 (Prioridad 5) — Q3: Experiencia previa y abandono del nivel Básico

**Anverso**

- **Pregunta:** ¿Quiénes abandonan antes una simulación de nivel Básico: las personas con experiencia previa en primeros auxilios o las que no la tienen?
- **Why:** Si quienes ya saben primeros auxilios abandonan lo básico, un modo avanzado (hallazgo 2 de 6.3) retiene a un segmento valioso (brigadistas); si no, no hace falta construirlo.
- **What:** Preguntar en el registro «¿tienes experiencia previa en primeros auxilios?» y comparar el abandono entre ambos grupos en simulaciones de nivel Básico.
- **Hipótesis (H1):** Las personas con experiencia previa abandonarán las simulaciones de nivel Básico el doble que las que no la tienen (40 % frente a 20 %, supuesto). **Hipótesis nula (H0):** la experiencia previa no se asocia a diferencias significativas en el abandono (p ≥ 0.05).

**Reverso**

- **Medidas.** Principal: M9 (abandono de simulaciones, solo nivel Básico). Secundaria: M16 (precisión promedio de quienes terminan). Salud: no aplica, es un estudio observacional.
- **Condiciones.** Grupo 1: con experiencia previa declarada. Grupo 2: sin experiencia declarada. Población: usuarios que inician al menos una simulación de nivel Básico.
- **Escala y método.** 79 usuarios por grupo (158 en total), α = 0.05, potencia 0.80, MDE de 20 puntos. Duración: hasta completar la muestra. Método: estudio comparativo de cohortes (observacional; no se asigna el grupo).

### Experiment Card 6 (Prioridad 6) — Q9: Umbral de aprobación

**Anverso**

- **Pregunta:** ¿Cómo cambia la mejora de precisión entre el primer y el segundo intento de una misma simulación si el umbral de aprobación es de 60 %, 70 % o 80 %?
- **Why:** El umbral de 70 % decide quién cobra monedas. Si es muy bajo, se aprueba sin aprender; si es muy alto, se desanima. Es una decisión educativa y económica a la vez.
- **What:** Asignar al azar uno de tres umbrales a cada usuario nuevo y comparar cuánto mejora entre el primer y el segundo intento.
- **Hipótesis (H1):** Con 80 % la mejora de precisión entre intentos será 5 puntos mayor que con 70 % (supuesto). **Hipótesis nula (H0):** el umbral no produce diferencias significativas en la mejora de precisión (p ≥ 0.05).

**Reverso**

- **Medidas.** Principal: M8 (aprendizaje observable). Secundarias: M17 (tasa de reintento) y M18 (monedas ganadas por usuario). Salud: M20 (abandono tras un intento no aprobado) y M5 (economía de monedas).
- **Condiciones.** Control (B): 70 %. Variantes A: 60 % y C: 80 %. Población: usuarios nuevos que completan dos intentos de una misma simulación.
- **Escala y método.** 172 usuarios por variante (516 en total), α = 0.025 por comparación, potencia 0.80, MDE de 5 puntos con desviación estándar de 15 puntos (supuesto). Duración: hasta completar la muestra. Método: prueba A/B/C. Este experimento afecta una regla educativa, por lo que exige vigilar las métricas de salud (8.2.6).

### Experiment Card 7 (Prioridad 7) — Q2: Recompensa visible antes de empezar

**Anverso**

- **Pregunta:** ¿Qué efecto tiene mostrar antes de empezar una simulación cuántas monedas pagará ese intento (y que repetir paga la mitad) sobre el número de simulaciones distintas que una persona completa en 14 días?
- **Why:** Hoy el multiplicador `1 / 2^k` solo se descubre al terminar. Si las personas lo conocen antes, podrían explorar más simulaciones en lugar de repetir la misma, lo que amplía lo que practican.
- **What:** Mostrar a la mitad de los usuarios, en la tarjeta de cada simulación, la recompensa que pagaría el siguiente intento.
- **Hipótesis (H1):** Quienes ven la recompensa completarán 0.75 simulaciones distintas más en 14 días (2.0 → 2.75, supuesto). **Hipótesis nula (H0):** mostrar la recompensa no produce diferencias significativas en las simulaciones distintas completadas (p ≥ 0.05).

**Reverso**

- **Medidas.** Principal: M2 (amplitud de práctica). Secundarias: M17 (tasa de reintento) y M18 (monedas ganadas por usuario). Salud: M9 (abandono de simulaciones).
- **Condiciones.** Control (A): tarjeta actual. Experimental (B): tarjeta con la recompensa del próximo intento. Población: usuarios con al menos una simulación completada.
- **Escala y método.** 63 usuarios por variante (126 en total), α = 0.05, potencia 0.80, MDE de 0.75 simulaciones con desviación estándar de 1.5 (supuesto). Duración: 14 días. Método: prueba A/B.

### Experiment Card 8 (Prioridad 8) — Q6: Producto sugerido con frase contextual

**Anverso**

- **Pregunta:** ¿Cómo influye mostrar, tras una simulación aprobada, un producto sugerido con una frase contextual en lugar de la lista genérica sobre la proporción de personas que abren la ficha de un producto?
- **Why:** La evaluación 6.3 pidió conectar mejor lo practicado con la tienda. Si la frase contextual aumenta el interés, la tienda deja de ser un anexo y pasa a ser parte del aprendizaje.
- **What:** Cambiar, para la mitad de los usuarios, el encabezado de la sugerencia por una frase del tipo «Producto recomendado para practicar lo aprendido en RCP».
- **Hipótesis (H1):** La frase contextual aumentará en 10 puntos porcentuales (10 % → 20 %, supuesto) la proporción de personas que abren la ficha de un producto tras una simulación aprobada. **Hipótesis nula (H0):** la frase no produce diferencias significativas en la apertura de fichas (p ≥ 0.05).

**Reverso**

- **Medidas.** Principal: M7 (interés por la tienda). Secundaria: M21 (conversión a carrito desde la sugerencia). Salud: M4 (retención).
- **Condiciones.** Control (A): sugerencia genérica actual. Experimental (B): sugerencia con frase contextual. Población: usuarios que aprueban una simulación.
- **Escala y método.** 197 usuarios por variante (394 en total), α = 0.05, potencia 0.80, MDE de 10 puntos. Duración: hasta completar la muestra. Método: prueba A/B de contenido.

### Experiment Card 9 (Prioridad 9) — Q4: Primera simulación y punto de entrada

**Anverso**

- **Pregunta:** ¿En qué tipo de emergencia y desde qué punto de entrada inician su primera simulación los usuarios nuevos?
- **Why:** Saber qué atrae primero permite ordenar el catálogo, decidir qué mostrar en el dashboard y elegir con qué contenido empezar una campaña.
- **What:** Registrar el tipo de emergencia y el punto de entrada de la primera simulación de cada usuario nuevo.
- **Hipótesis:** Pregunta exploratoria. Se busca la distribución real de preferencias sin intervenir.

**Reverso**

- **Medidas.** Principal: M22 (distribución de la primera simulación por tipo de emergencia, punto de entrada y dificultad). Sin medidas secundarias.
- **Condiciones.** Población: usuarios nuevos que inician al menos una simulación. No hay grupo de control.
- **Escala y método.** Al menos 97 primeras simulaciones (margen de error de ±10 puntos al 95 %). Duración: hasta alcanzar la cifra. Método: análisis exploratorio cuantitativo de eventos.

### Experiment Card 10 (Prioridad 10) — Q10: Frecuencia de regreso

**Anverso**

- **Pregunta:** ¿Cada cuánto tiempo vuelven los usuarios a practicar y qué relación existe entre el intervalo entre sesiones y la precisión de la sesión siguiente?
- **Why:** La retención de habilidades de primeros auxilios decae con el tiempo (1.2). Conocer los intervalos reales indica cuándo conviene recordar a una persona que practique.
- **What:** Registrar las sesiones de cada usuario durante 45 días y cruzar el intervalo entre sesiones con la precisión de la sesión siguiente.
- **Hipótesis:** Pregunta exploratoria. Se busca mapear la relación entre la separación de las sesiones y el desempeño.

**Reverso**

- **Medidas.** Principal: M23 (intervalo entre sesiones). Secundaria: M24 (correlación entre el intervalo y la precisión de la sesión siguiente).
- **Condiciones.** Población: usuarios con al menos tres sesiones. No hay grupo de control.
- **Escala y método.** Al menos 100 usuarios con tres o más sesiones. Duración: 45 días. Método: análisis exploratorio de cohorte con registro de sesiones.

## Resumen del plan

| Prioridad | Tarjeta | Tipo | Método | Historia de usuario (8.3.1) |
| :-: | --- | --- | --- | --- |
| 1 | Q5 — Abandono de una simulación | Exploratoria | Mensaje contextual + entrevistas | Se propone implementarla |
| 2 | Q7 — Costo del primer cupón | Belief-led | A/B/C | Se propone implementarla |
| 3 | Q1 — Guía de bienvenida | Belief-led | A/B | Se propone implementarla |
| 4 a 10 | Q8, Q3, Q9, Q2, Q6, Q4, Q10 | Mixtas | Diversos | Quedan diseñadas y en el backlog |

Siguiendo el consejo del libro de no experimentar con soluciones sin haber contrastado sus premisas, las tres tarjetas de mayor prioridad son las que se convierten en historias de usuario en 8.3.1. Las siete restantes quedan **diseñadas pero no ejecutadas** y esperan en el backlog de preguntas.
