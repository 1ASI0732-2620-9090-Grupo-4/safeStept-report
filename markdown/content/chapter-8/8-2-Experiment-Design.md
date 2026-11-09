# 8.2. Experiment Design

La fase de diseño convierte cada pregunta de 8.1 en un experimento confiable. Siguiendo a Rissen, el diseño descansa en tres pilares: las **hipótesis** (qué creemos que pasará), las **medidas** (cómo detectaremos la evidencia) y las **condiciones** (en qué entorno lo probaremos). A ellos se suman la **escala** (cuánta evidencia hace falta) y el **método** (con qué herramienta se recogerá). Todo se decide antes de escribir una sola línea de código.

Se diseñan las diez preguntas de 8.1.5. Los valores de partida que aparecen como «(supuesto)» no son mediciones: SafeStep no registra hoy el comportamiento de uso (8.1.1), así que cada tasa base es una estimación de planificación que debe reemplazarse por la medición de un experimento de línea base antes de ejecutar el experimento correspondiente.

## 8.2.1. Hypotheses

Una hipótesis es una declaración explícita de una creencia, expresada como una diferencia observable entre el comportamiento actual y el esperado tras una intervención. Para ser utilizable debe ser **testeable** (comprobable con los recursos y el tiempo del equipo), **falseable** (es concebible hallar evidencia que la refute) y **medible** (existe un método tangible para comparar la evidencia con el enunciado). Cada hipótesis se redacta en pareja: la **alternativa (H1)**, que es la apuesta del equipo, y la **nula (H0)**, que asume que el cambio no tiene efecto o que cualquier diferencia es azar. La regla de oro es que el experimento **no busca probar H1, sino reunir evidencia suficiente para rechazar H0**; si el valor p es menor que el nivel de significancia (0.05), se rechaza H0 y se adopta H1.

Las hipótesis se escribieron con la plantilla de XDPD: «Creemos que la respuesta es [creencia], cuya evidencia se reflejará en [medidas], bajo las circunstancias de [condiciones]».

### Hipótesis de las preguntas guiadas por una creencia

Cada hipótesis muestra la **premisa** (*belief*) que la origina, tomada de la materia prima de 8.1.2, la hipótesis alterna (H1), la nula (H0) y ambas escritas con la plantilla de XDPD. **Criterio común de decisión:** se considera que el experimento respalda H1 cuando el valor p es menor que el nivel de significancia fijado en 8.2.5 y la diferencia observada alcanza al menos el efecto mínimo detectable; en cualquier otro caso se mantiene H0.

**Q7 — Costo del primer cupón**

- **Belief (premisa):** A3: el precio del cupón decide si las monedas se perciben alcanzables y motivan a seguir practicando.
- **H1:** El precio de 100 SafeCoins aumentará la proporción de usuarios elegibles que canjean su primer cupón en 30 días de 40 % a 60 % frente al precio actual de 150, y el de 200 la reducirá.
- **H0:** El precio del cupón no produce diferencias significativas en la proporción de canje en 30 días (p ≥ 0.05).
- **Plantilla de H1:** Creemos que un precio menor para el primer cupón aumenta el canje; la evidencia se reflejará en la proporción de usuarios elegibles que canjean en 30 días, bajo las circunstancias de usuarios nuevos asignados al azar a 100, 150 o 200 monedas.
- **Plantilla de H0:** Creemos que la respuesta es que el precio del primer cupón no cambia el canje; la evidencia se reflejará en una proporción de canje en 30 días sin diferencias significativas entre variantes (M6), bajo las circunstancias de usuarios nuevos asignados al azar a 100, 150 o 200 monedas.

**Q1 — Guía de bienvenida**

- **Belief (premisa):** I1 y A1: quien entiende cómo se ganan y se gastan las monedas empieza y termina más simulaciones.
- **H1:** Los usuarios nuevos que ven la guía de tres pasos terminarán su primera simulación en los primeros 7 días en una proporción 20 puntos mayor (50 % → 70 %) que quienes no la ven.
- **H0:** La guía no produce diferencias significativas en la proporción de primera simulación terminada en 7 días (p ≥ 0.05).
- **Plantilla de H1:** Creemos que explicar XP, SafeCoins y misiones al inicio ayuda a terminar la primera simulación; la evidencia se reflejará en la proporción de usuarios nuevos que la terminan en 7 días, bajo las circunstancias de usuarios nuevos asignados al azar a ver o no la guía.
- **Plantilla de H0:** Creemos que la respuesta es que la guía no cambia la primera simulación; la evidencia se reflejará en una activación sin diferencias significativas (M1), bajo las circunstancias de usuarios nuevos asignados al azar a ver o no la guía.

**Q8 — Bonificación por racha**

- **Belief (premisa):** I5: premiar la continuidad aumenta los días de práctica.
- **H1:** Los usuarios con bonificación de +20 % por tres días consecutivos practicarán un día más en 14 días (3 → 4).
- **H0:** La bonificación no produce diferencias significativas en los días con práctica en 14 días (p ≥ 0.05).
- **Plantilla de H1:** Creemos que premiar la continuidad aumenta la regularidad; la evidencia se reflejará en los días con al menos una simulación completada en 14 días, bajo las circunstancias de usuarios con una simulación completada asignados al azar a tener o no la bonificación.
- **Plantilla de H0:** Creemos que la respuesta es que la bonificación no cambia la regularidad; la evidencia se reflejará en días con práctica sin diferencias significativas (M3), bajo las circunstancias de usuarios con una simulación completada asignados al azar a tener o no la bonificación.

**Q3 — Experiencia previa y abandono del nivel Básico**

- **Belief (premisa):** A4: las personas con experiencia previa encuentran básicas las simulaciones de nivel Básico.
- **H1:** Las personas con experiencia previa declarada abandonarán las simulaciones de nivel Básico en el doble de los casos que las que no tienen experiencia (40 % frente a 20 %).
- **H0:** La experiencia previa no se asocia a diferencias significativas en el abandono de las simulaciones de nivel Básico (p ≥ 0.05).
- **Plantilla de H1:** Creemos que quienes ya saben primeros auxilios abandonan lo básico; la evidencia se reflejará en la proporción de simulaciones de nivel Básico iniciadas y no terminadas, bajo las circunstancias de usuarios que declaran o no experiencia previa.
- **Plantilla de H0:** Creemos que la respuesta es que la experiencia previa no se asocia al abandono del nivel Básico; la evidencia se reflejará en un abandono sin diferencias significativas entre grupos (M9), bajo las circunstancias de usuarios que declaran o no experiencia previa.

**Q9 — Umbral de aprobación**

- **Belief (premisa):** A2: el umbral de aprobación decide cuánto se aprende del primer error.
- **H1:** Con un umbral de 80 % la mejora de precisión entre el primer y el segundo intento de una misma simulación será 5 puntos mayor que con el umbral actual de 70 %.
- **H0:** El umbral de aprobación no produce diferencias significativas en la mejora de precisión entre intentos (p ≥ 0.05).
- **Plantilla de H1:** Creemos que un umbral más exigente impulsa a aprender más del primer error; la evidencia se reflejará en la diferencia de precisión entre el segundo y el primer intento, bajo las circunstancias de usuarios nuevos asignados al azar a 60, 70 u 80 %.
- **Plantilla de H0:** Creemos que la respuesta es que el umbral no cambia el aprendizaje entre intentos; la evidencia se reflejará en una mejora de precisión sin diferencias significativas (M8), bajo las circunstancias de usuarios nuevos asignados al azar a 60, 70 u 80 %.

**Q2 — Recompensa visible antes de empezar**

- **Belief (premisa):** I4: conocer la regla de recompensa orienta a probar simulaciones distintas en lugar de repetir una sola.
- **H1:** Mostrar antes de empezar cuánto pagará el intento aumentará en 0.75 las simulaciones distintas completadas en 14 días (2.0 → 2.75).
- **H0:** Mostrar la recompensa no produce diferencias significativas en las simulaciones distintas completadas (p ≥ 0.05).
- **Plantilla de H1:** Creemos que conocer la regla de recompensa orienta a probar simulaciones distintas; la evidencia se reflejará en el número de simulaciones distintas completadas en 14 días, bajo las circunstancias de usuarios con una simulación completada asignados al azar a ver o no la recompensa del próximo intento.
- **Plantilla de H0:** Creemos que la respuesta es que ver la recompensa no cambia la amplitud de práctica; la evidencia se reflejará en simulaciones distintas sin diferencias significativas (M2), bajo las circunstancias de usuarios con una simulación completada asignados al azar a ver o no la recompensa.

**Q6 — Producto sugerido con frase contextual**

- **Belief (premisa):** I3: un producto relacionado con lo practicado despierta más interés que una lista genérica.
- **H1:** La frase contextual aumentará en 10 puntos (10 % → 20 %) la proporción de simulaciones aprobadas tras las cuales se abre la ficha de un producto.
- **H0:** La frase contextual no produce diferencias significativas en la apertura de fichas (p ≥ 0.05).
- **Plantilla de H1:** Creemos que relacionar el producto con lo practicado despierta interés; la evidencia se reflejará en la proporción de aperturas de ficha tras una simulación aprobada, bajo las circunstancias de usuarios asignados al azar a la sugerencia genérica o contextual.
- **Plantilla de H0:** Creemos que la respuesta es que la frase contextual no cambia la apertura de fichas; la evidencia se reflejará en una apertura sin diferencias significativas (M7), bajo las circunstancias de usuarios asignados al azar a la sugerencia genérica o contextual.

### Preguntas exploratorias

Las preguntas Q5, Q4 y Q10 no parten de una creencia, por lo que no llevan hipótesis alterna ni nula. En su lugar se declara qué se espera descubrir y cuándo se considerará suficiente la evidencia.

| Pregunta | Qué se espera descubrir | Criterio de suficiencia |
| --- | --- | --- |
| Q5 | Las causas del abandono de una simulación (duración, dificultad, falta de comprensión del sistema, interrupción u otras) | 30 respuestas y 8 entrevistas, o hasta que las nuevas respuestas dejen de aportar categorías nuevas |
| Q4 | La distribución real de la primera simulación por tipo de emergencia y por punto de entrada | 97 primeras simulaciones (margen de ±10 puntos al 95 %) |
| Q10 | El intervalo típico entre sesiones y su relación con la precisión de la sesión siguiente | 100 usuarios con tres o más sesiones |

### Verificación de las hipótesis

| Hipótesis | Testeable | Falseable | Medible |
| --- | --- | --- | --- |
| Q7 | Sí: la asignación aleatoria de precio es una configuración del backend | Sí: si la proporción de canje no difiere, H0 se mantiene | Sí: canje registrado en 30 días |
| Q1 | Sí: una tarjeta en el dashboard con interruptor de variante | Sí: igual proporción en ambos grupos refuta H1 | Sí: primera simulación terminada en 7 días |
| Q8 | Sí: una regla de bonificación y un contador | Sí: igual cantidad de días activos refuta H1 | Sí: días con simulación completada |
| Q3 | Sí: una pregunta en el registro y datos de abandono | Sí: igual abandono entre grupos refuta H1 | Sí: simulaciones iniciadas y no terminadas |
| Q9 | Sí: el umbral es un parámetro de la regla de recompensa | Sí: igual mejora entre intentos refuta H1 | Sí: precisión del segundo menos la del primer intento |
| Q2 | Sí: un texto adicional en la tarjeta de simulación | Sí: igual cantidad de simulaciones distintas refuta H1 | Sí: simulaciones distintas completadas |
| Q6 | Sí: un cambio de texto en la sugerencia | Sí: igual apertura de fichas refuta H1 | Sí: apertura de ficha tras una simulación aprobada |

## 8.2.2. Domain Business Metrics

Esta sección alinea la medición de los experimentos con los objetivos del negocio. Aquí se definen **todas** las métricas del dominio de SafeStep que se usarán para evaluar los experimentos, cada una con su **fórmula de cálculo**, su **técnica de recolección** y su **meta deseada**. Es el catálogo cerrado de métricas: las *Experiment Cards* (8.1.5), las medidas (8.2.3) y los indicadores (8.2.7) solo pueden referirse a métricas definidas en esta tabla, por su código. No se permiten métricas ad-hoc ni no definidas previamente; así se evita decidir con *vanity metrics* (visitas totales, clics totales) que no distinguen si la persona aprendió o solo navegó.

**Métrica guía (norte):** **simulaciones aprobadas por usuario activo por semana**. Resume el propósito del producto, que las personas practiquen y mejoren, y es la que se espera que mueva el conjunto de los experimentos.

La **técnica de recolección** indica de dónde sale el dato: *datos existentes* son los que SafeStep ya guarda (intentos terminados, transacciones de monedas, cupones canjeados); *eventos* son los que habilita el plan de seguimiento de 8.2.8, que hoy no existen. Las **metas** que dependen de una tasa base son supuestos de planificación (8.2.5) y se confirman con la línea base; las de preguntas exploratorias son criterios de suficiencia, no de mejora.

| Código | Métrica | Fórmula | Técnica de recolección | Meta deseada | Preguntas |
| --- | --- | --- | --- | --- | --- |
| M1 | Activación | Usuarios nuevos que terminan su primera simulación en 7 días ÷ usuarios nuevos | Eventos `account_registered` y `simulation_completed` | ≥ 70 % en la variante con guía (base supuesta 50 %) | Q1 |
| M2 | Amplitud de práctica | Simulaciones distintas completadas por usuario en 14 días | Datos existentes (intentos terminados) | ≥ 2.75 en la variante con recompensa visible (base supuesta 2.0) | Q2 |
| M3 | Regularidad | Días con al menos una simulación completada en 14 días | Datos existentes (fecha de finalización de los intentos) | ≥ 4 días con bonificación (base supuesta 3) | Q8 |
| M4 | Retención | Usuarios de la cohorte que vuelven entre el día 2 y el 7 ÷ usuarios de la cohorte | Evento `session_started` | No bajar más de 5 puntos frente al control (métrica de salud) | Q1, Q6, Q7 |
| M5 | Economía de monedas | SafeCoins emitidas ÷ SafeCoins gastadas en cupones, por semana | Datos existentes (transacciones de monedas y cupones canjeados) | Entre 1.0 y 3.0 (supuesto, se calibra con la línea base) | Q7, Q9 |
| M6 | Canje del primer cupón | Usuarios elegibles que canjean su primer cupón en 30 días ÷ usuarios elegibles | Datos existentes (cupones canjeados) y evento `coupon_redeemed` | ≥ 60 % con el precio de 100 monedas (base supuesta 40 %) | Q7 |
| M7 | Interés por la tienda | Simulaciones aprobadas tras las cuales se abre la ficha de un producto sugerido ÷ simulaciones aprobadas | Eventos `product_suggestion_shown` y `product_opened` | ≥ 20 % con la frase contextual (base supuesta 10 %) | Q6 |
| M8 | Aprendizaje observable | Precisión del segundo intento menos precisión del primero, en la misma simulación (puntos) | Datos existentes (intentos terminados) | Diferencia de al menos +5 puntos frente al control | Q9 |
| M9 | Abandono de simulaciones | Simulaciones iniciadas y no terminadas ÷ simulaciones iniciadas | Eventos `simulation_started` y `simulation_completed` | No empeorar más de 5 puntos frente al control; en Q3, describir la diferencia entre grupos (base supuesta 20 % y 40 %) | Q3, Q2, Q5 |
| M10 | Motivos de abandono | Respuestas por motivo ÷ respuestas totales (%) | Evento `simulation_exit_reason` | 30 respuestas; actuar sobre cualquier motivo que supere 30 % | Q5 |
| M11 | Respuesta al mensaje de salida | Respuestas al mensaje ÷ veces que se mostró el mensaje | Eventos `simulation_exit_prompted` y `simulation_exit_reason` | ≥ 50 % (supuesto) | Q5 |
| M12 | Paso de abandono | Distribución de los abandonos por paso (1 a 4) | Evento `simulation_exit_prompted` (propiedad `stepIndex`) | Descriptiva: identificar el paso con más abandonos | Q5 |
| M13 | Tiempo hasta la primera simulación | Mediana de horas entre el registro y la primera simulación completada | Eventos `account_registered` y `simulation_completed` | Menor que en el control (secundaria de Q1) | Q1 |
| M14 | Omisión de la guía | Usuarios que omiten la guía sin completarla ÷ usuarios a los que se les mostró | Eventos `welcome_guide_viewed` y `welcome_guide_dismissed` | ≤ 40 % (supuesto) | Q1 |
| M15 | Racha de tres días | Usuarios que completan simulaciones tres días seguidos ÷ usuarios del grupo | Evento `streak_updated` | Mayor en la variante con bonificación (secundaria de Q8) | Q8 |
| M16 | Precisión promedio | Promedio de la precisión (%) de las simulaciones completadas | Datos existentes (intentos terminados) | No bajar más de 3 puntos frente al control (métrica de salud) | Q8, Q3 |
| M17 | Tasa de reintento | Intentos de una simulación ya intentada antes por la misma persona ÷ intentos totales | Datos existentes (intentos terminados) | Descriptiva; no se fija meta | Q2, Q9 |
| M18 | Monedas ganadas por usuario | SafeCoins ganadas por usuario en la ventana del experimento | Datos existentes (transacciones de monedas) | Descriptiva; vigilar junto con M5 | Q7, Q8, Q9, Q2 |
| M19 | Saldo sin gastar | Mediana del saldo de monedas al día 30 | Evento `session_started` (propiedad `balance`) | Descriptiva; vigilar junto con M5 | Q7 |
| M20 | Abandono tras un intento no aprobado | Usuarios con un intento no aprobado que no inician otra simulación en 7 días ÷ usuarios con un intento no aprobado | Eventos `simulation_completed` (propiedad `passed`) y `simulation_started` | No empeorar más de 5 puntos frente al control (métrica de salud) | Q9 |
| M21 | Conversión a carrito desde la sugerencia | Usuarios que agregan al carrito un producto abierto desde la sugerencia ÷ usuarios que lo abrieron | Eventos `product_opened` y `product_added_to_cart` | Descriptiva (secundaria de Q6) | Q6 |
| M22 | Distribución de la primera simulación | Primeras simulaciones por tipo de emergencia, por punto de entrada y por dificultad (%) | Evento `simulation_started` (primera de cada usuario) | 97 primeras simulaciones (±10 puntos al 95 %) | Q4 |
| M23 | Intervalo entre sesiones | Mediana de días entre sesiones consecutivas de un usuario | Evento `session_started` | Descriptiva: 100 usuarios con tres o más sesiones | Q10 |
| M24 | Correlación intervalo–precisión | Correlación de Spearman entre el intervalo previo y la precisión de la sesión siguiente | Eventos `session_started` y `simulation_completed` | Descriptiva: informar el coeficiente y su intervalo | Q10 |

**Equilibrio entre métricas.** M5 es una métrica de equilibrio de la economía del producto: si las monedas se emiten mucho más rápido de lo que se gastan, pierden valor; si casi no se emiten, no motivan. Los experimentos Q7, Q8 y Q9 modifican las entradas y salidas de esa economía, por lo que M5 se vigila como métrica de salud en ellos.

## 8.2.3. Measures

Las medidas de cada experimento se eligieron con los criterios de XDPD: **representativas** (reflejan el comportamiento y no solo el volumen), **calculadas o proporcionales** cuando una proporción revela mejor la intención que un conteo bruto, y **frugales** (se mide solo lo necesario durante el tiempo necesario). Además de la medida principal se definen **métricas de salud** (*health metrics*) que avisan si el experimento mejora una cosa pero daña otra; son el mecanismo del principio de «no hacer daño». Todas son métricas de 8.2.2 y se citan por su código.

| Pregunta | Medida principal | Medidas secundarias | Métricas de salud |
| --- | --- | --- | --- |
| Q5 | M10 Motivos de abandono | M11 Respuesta al mensaje de salida; M12 Paso de abandono | M9 Abandono de simulaciones (que el mensaje no lo aumente) |
| Q7 | M6 Canje del primer cupón | M18 Monedas ganadas por usuario; M19 Saldo sin gastar | M5 Economía de monedas; M4 Retención |
| Q1 | M1 Activación | M13 Tiempo hasta la primera simulación; M14 Omisión de la guía | M4 Retención |
| Q8 | M3 Regularidad | M15 Racha de tres días; M18 Monedas ganadas por usuario | M16 Precisión promedio (para detectar práctica más frecuente pero peor) |
| Q3 | M9 Abandono de simulaciones (solo nivel Básico) | M16 Precisión promedio | No aplica: es un estudio observacional sin intervención |
| Q9 | M8 Aprendizaje observable | M17 Tasa de reintento; M18 Monedas ganadas por usuario | M20 Abandono tras un intento no aprobado; M5 Economía de monedas |
| Q2 | M2 Amplitud de práctica | M17 Tasa de reintento; M18 Monedas ganadas por usuario | M9 Abandono de simulaciones |
| Q6 | M7 Interés por la tienda | M21 Conversión a carrito desde la sugerencia | M4 Retención |
| Q4 | M22 Distribución de la primera simulación | — | No aplica: sin intervención |
| Q10 | M23 Intervalo entre sesiones | M24 Correlación intervalo–precisión | No aplica: sin intervención |

**Medidas descartadas.** No se medirán visitas totales a páginas, clics totales ni tiempo total en la aplicación: son volúmenes que no distinguen si la persona aprendió o solo navegó, y no están definidos en 8.2.2. Tampoco se capturará ningún dato personal; las medidas usan un identificador seudónimo (8.2.8).

## 8.2.4. Conditions

Las condiciones delimitan el entorno, el grupo y el flujo bajo los cuales opera cada experimento. En una prueba A/B hay una **condición de control** (la experiencia sin cambios, que actúa asumiendo que H0 es cierta) y una o más **condiciones experimentales** (expuestas al cambio, diseñadas para reunir evidencia que permita rechazar H0). En las preguntas exploratorias las condiciones describen el contexto de la observación.

| Pregunta | Control | Condición(es) experimental(es) | Población | Asignación |
| --- | --- | --- | --- | --- |
| Q5 | No aplica | Mensaje de salida con cinco opciones al abandonar a medias | Quienes salen de una simulación tras responder al menos un paso | Todos los que cumplen el gatillo |
| Q7 | B: 150 monedas (precio actual) | A: 100 monedas; C: 200 monedas | Usuarios nuevos que ganaron al menos 100 monedas | Al azar, 1/3 por variante, fija desde el registro |
| Q1 | A: dashboard actual | B: dashboard con la guía de tres pasos | Usuarios nuevos | Al azar, 1/2 por variante |
| Q8 | A: sin bonificación | B: contador de racha y bonificación de +20 % | Usuarios con al menos una simulación completada | Al azar, 1/2 por variante |
| Q3 | Grupo 2: sin experiencia declarada | Grupo 1: con experiencia declarada | Usuarios que inician una simulación de nivel Básico | Autodeclarada en el registro (observacional) |
| Q9 | B: umbral de 70 % | A: umbral de 60 %; C: umbral de 80 % | Usuarios nuevos | Al azar, 1/3 por variante, fija desde el registro |
| Q2 | A: tarjeta actual | B: tarjeta con la recompensa del próximo intento | Usuarios con al menos una simulación completada | Al azar, 1/2 por variante |
| Q6 | A: sugerencia genérica | B: sugerencia con frase contextual | Usuarios que aprueban una simulación | Al azar, 1/2 por variante |
| Q4 | No aplica | Observación sin intervención | Usuarios nuevos que inician una simulación | Todos |
| Q10 | No aplica | Observación sin intervención | Usuarios con tres o más sesiones | Todos |

**Reglas comunes de las condiciones.**

1. **Asignación estable.** La variante de un usuario se calcula a partir de su identificador seudónimo y el nombre del experimento, de modo que la misma persona ve siempre la misma variante.
2. **Exclusiones.** Se excluyen cuentas de administración, cuentas de prueba y usuarios que participaron en otro experimento que interfiere con el mismo recorrido (ver 8.2.6).
3. **Población realista.** Los grupos se arman con usuarios reales de los tres segmentos objetivo (1.3), no con datos sembrados.

## 8.2.5. Scale Calculations and Decisions

La escala es la cantidad de evidencia que hay que reunir para que una respuesta sea útil y confiable. Depende de tres parámetros que protegen al producto de los dos errores posibles:

- **Nivel de significancia (α = 0.05):** la probabilidad aceptada de un falso positivo (error tipo I): creer que hay una mejora cuando solo hay ruido.
- **Poder estadístico (1 − β = 0.80):** la probabilidad de detectar un efecto real; su complemento es el falso negativo (error tipo II): descartar una mejora real porque el experimento no fue lo bastante sensible.
- **Efecto mínimo detectable (MDE):** el cambio más pequeño, respecto de la métrica base, que justificaría implementar la función. Puede expresarse como diferencia absoluta (de 50 % a 70 % son 20 puntos) o relativa (un aumento de 40 %).

Cuanto menor es el MDE o mayor la certeza exigida, mayor es la muestra y más largo el experimento. Por eso se fijó un MDE que justifica el esfuerzo de construir cada cambio y no uno arbitrariamente pequeño.

### Fórmulas

Para comparar dos proporciones, con prueba bilateral, el tamaño por variante es:

`n = (Z(1−α/2) + Z(1−β))² · [p₁(1 − p₁) + p₂(1 − p₂)] / (p₂ − p₁)²`

Para comparar dos medias, con desviación estándar σ y diferencia mínima δ:

`n = 2 · σ² · (Z(1−α/2) + Z(1−β))² / δ²`

Con α = 0.05 y potencia 0.80, `Z(0.975) = 1.96` y `Z(0.80) = 0.8416`. En los experimentos con tres variantes se compara cada variante contra el control y se aplica la **corrección de Bonferroni**: α = 0.05 / 2 = 0.025 por comparación (`Z(0.9875) = 2.2414`). Para las preguntas exploratorias se usa el margen de error de una proporción: `n = Z² · 0.25 / e²`, que con e = ±10 puntos y 95 % de confianza da 97.

### Resultado del cálculo

| Pregunta | Medida | Valor base (supuesto) | MDE | σ (supuesto) | α | n por variante | Total |
| --- | --- | --- | --- | --- | --- | :-: | :-: |
| Q1 | Proporción | 50 % | +20 puntos (relativo +40 %) | — | 0.05 | 91 | 182 |
| Q2 | Media | 2.0 simulaciones | +0.75 (relativo +37 %) | 1.5 | 0.05 | 63 | 126 |
| Q3 | Proporción | 20 % | +20 puntos (relativo +100 %) | — | 0.05 | 79 | 158 |
| Q6 | Proporción | 10 % | +10 puntos (relativo +100 %) | — | 0.05 | 197 | 394 |
| Q7 | Proporción | 40 % | +20 puntos (relativo +50 %) | — | 0.025 | 115 | 345 |
| Q8 | Media | 3.0 días | +1 día (relativo +33 %) | 2.0 | 0.05 | 63 | 126 |
| Q9 | Media | +8 puntos de mejora | +5 puntos | 15 | 0.025 | 172 | 516 |
| Q4 | Proporción (precisión) | — | ±10 puntos | — | 95 % | — | 97 |
| Q5 | Saturación de categorías | — | — | — | — | — | 30 respuestas + 8 entrevistas |
| Q10 | Cohorte | — | — | — | — | — | 100 usuarios |

### Duración estimada

La duración depende del tráfico que SafeStep reciba, que hoy no se conoce. Se estima en dos escenarios supuestos: **30 usuarios nuevos por semana** (conservador, sin campaña) y **100 por semana** (con una campaña dirigida a universidades, comunidades vecinales y grupos de brigadistas). La duración es el tiempo para reunir la muestra más la ventana de observación; el porcentaje es la fracción de usuarios nuevos que entra a la población del experimento (supuesto).

| Pregunta | Entra a la población | Ventana | Con 30 por semana | Con 100 por semana |
| --- | :-: | :-: | :-: | :-: |
| Q1 | 100 % | 7 días | 7.1 semanas | 2.8 semanas |
| Q2 | 70 % | 14 días | 8.0 semanas | 3.8 semanas |
| Q3 | 24 % (grupo con experiencia que inicia nivel Básico) | 7 días | 12.0 semanas | 4.3 semanas |
| Q4 | 80 % | — | 4.0 semanas | 1.2 semanas |
| Q5 | 16 % (inician, abandonan y responden) | — | 6.2 semanas | 1.9 semanas |
| Q6 | 60 % | — | 21.9 semanas | 6.6 semanas |
| Q7 | 50 % | 30 días | 27.3 semanas | 11.2 semanas |
| Q8 | 70 % | 14 días | 8.0 semanas | 3.8 semanas |
| Q9 | 40 % | 14 días | 45.0 semanas | 14.9 semanas |
| Q10 | 20 % | 45 días | 23.1 semanas | 11.4 semanas |

### Reglas de decisión

Un experimento solo vale si cambia lo que el equipo hace después. Por eso se fija de antemano qué se decidirá según el resultado, una vez reunida la muestra completa y sin haber mirado antes.

| Resultado | Decisión |
| --- | --- |
| El valor p es menor que α y la diferencia alcanza el efecto mínimo detectable, sin deterioro en las métricas de salud | **Adoptar** la variante para todos los usuarios |
| El valor p es menor que α, pero la diferencia es menor que el efecto mínimo | **Iterar**: el efecto existe pero es menor que el que justifica el cambio; se adopta solo si su costo de mantenimiento es muy bajo, o se rediseña la variante |
| El valor p es mayor o igual que α con la muestra completa | **Descartar** la variante, mantener H0 y revisar la premisa que la originó |
| Alguna métrica de salud empeora más que el margen fijado en 8.2.2 | **No adoptar**, aunque la medida principal mejore, y registrar el daño observado |
| La muestra no se completó | **Informar como evidencia preliminar**, sin declarar significancia, y decidir si se amplía el plazo |

**Qué se hará con cada pregunta si se rechaza H0:**

| Pregunta | Decisión si se confirma H1 |
| --- | --- |
| Q7 | Fijar como precio estándar del primer cupón el de la variante ganadora y recalibrar los demás cupones |
| Q1 | Mostrar la guía de bienvenida a todos los usuarios nuevos |
| Q8 | Activar la bonificación por racha para todos los usuarios |
| Q3 | Construir el modo avanzado para quienes tienen experiencia (hallazgo 2 de 6.3) |
| Q9 | Cambiar el umbral de aprobación por el de la variante ganadora, con revisión educativa previa |
| Q2 | Mostrar la recompensa del próximo intento en todas las tarjetas de simulación |
| Q6 | Usar la frase contextual en todas las sugerencias de producto |
| Q5, Q4, Q10 | No tienen decisión de adopción: sus resultados alimentan la matriz de 8.4.2 y las preguntas nuevas |

### Decisiones de escala

1. **Medir antes de comparar.** Como las tasas base son supuestos, la primera acción es un **experimento de línea base** de dos semanas, sin intervención, que registre los eventos de 8.2.8. Los cálculos se rehacen con las tasas medidas. Si una tasa base real difiere mucho del supuesto, cambia el tamaño de muestra y la decisión de ejecutar.
2. **Umbral de ejecutabilidad.** Se considera ejecutable en un periodo académico un experimento que reúna su muestra en **12 semanas o menos**. Con 30 usuarios nuevos por semana lo son Q1, Q2, Q4, Q5, Q8 y, en el límite, Q3; con 100 por semana lo son todos salvo Q9 (14.9 semanas). Q9 queda diseñado pero no se ejecutará salvo que el tráfico supere ese nivel o se acepte un MDE mayor, y por modificar una regla educativa exige además una revisión previa del equipo.
3. **Corrección por comparaciones múltiples.** Q7 y Q9 usan Bonferroni (α = 0.025) porque comparan dos variantes con el mismo control.
4. **Qué se hará si no se alcanza la muestra.** No se declarará significancia con menos usuarios que el tamaño calculado. Un resultado con muestra incompleta se informa como evidencia preliminar, con su intervalo de confianza, y no como respuesta a la pregunta.
5. **Regla de «no mirar».** No se revisan los resultados antes de alcanzar la muestra: solo se verifica, a los pocos días de empezar, que los datos se estén registrando, y después la cantidad de datos, no los resultados. Detener un experimento al ver una ventaja prematura invalida su confiabilidad estadística.
6. **Experimentos de línea base y exploratorios.** Q4, Q5 y Q10 no calculan poder estadístico porque no hay hipótesis que falsear; su escala se define por precisión (Q4), saturación de categorías (Q5) y tamaño de cohorte (Q10).

## 8.2.6. Methods Selection

El método es el vehículo técnico con el que se recogerán los datos. No todo experimento de software es una prueba A/B, y no toda prueba A/B exige modificar el código en producción. Para cada pregunta se aplicó el filtro de **lo más simple útil** (*simplest useful thing*): el método más económico y rápido que siga siendo capaz de alcanzar el MDE diseñado sin contaminar los datos.

| Pregunta | Objeto de indagación | Método elegido | Por qué es lo más simple útil | Alternativa descartada |
| --- | --- | --- | --- | --- |
| Q5 | Causas del abandono | Mensaje contextual en la aplicación más entrevistas breves (método mixto) | Pregunta en el momento exacto del abandono, cuando el motivo está fresco; las entrevistas profundizan | Encuesta posterior por correo: menor respuesta y recuerdo impreciso |
| Q7 | Efecto del precio del cupón | Prueba A/B/C con asignación aleatoria | El precio es un parámetro del backend; una prueba controlada aísla su efecto | Preguntar a los usuarios cuánto pagarían: las respuestas declaradas no predicen la conducta |
| Q1 | Efecto de la guía de bienvenida | Prueba A/B | Una tarjeta con interruptor de variante; no cambia la lógica de negocio | Entrevistas de usabilidad: no estiman proporciones |
| Q8 | Efecto de la bonificación por racha | Prueba A/B de reglas de gamificación | La bonificación es una regla de cálculo de monedas | Simulación con datos sembrados: no refleja el comportamiento real |
| Q3 | Diferencia entre dos grupos de usuarios | Estudio comparativo de cohortes (observacional) | No se puede asignar la experiencia previa; basta clasificar y comparar | Experimento asignando la experiencia: imposible |
| Q9 | Efecto del umbral de aprobación | Prueba A/B/C | El umbral es un parámetro de la regla de recompensa | Cambiar el umbral para todos y comparar antes y después: confunde el efecto con el tiempo |
| Q2 | Efecto de ver la recompensa | Prueba A/B | Un texto adicional en la tarjeta | Prototipo en papel: no mide conducta repetida |
| Q6 | Efecto de la frase contextual | Prueba A/B de contenido | Cambia únicamente un texto | Entrevistas: no miden clics reales |
| Q4 | Preferencias iniciales | Análisis exploratorio de eventos | El evento de inicio ya basta | Encuesta de preferencias: sesgo de deseabilidad |
| Q10 | Frecuencia y desempeño | Análisis exploratorio de cohorte con registro de sesiones | Los eventos de sesión y de simulación ya permiten el cruce | Diario del usuario: carga excesiva |

### Herramienta de recolección y análisis

Además del método de cada pregunta hay que decidir con qué herramienta se recogerán y analizarán los datos. Se compararon cinco opciones con criterios cualitativos; los planes y precios de cada proveedor cambian, por lo que deben verificarse antes de contratar cualquiera.

| Criterio | Registro propio (eventos en PostgreSQL) | Google Analytics 4 | Mixpanel | PostHog | Matomo |
| --- | --- | --- | --- | --- | --- |
| Costo | Sin costo adicional: usa la base de datos existente | Gratuito con límites en los informes | Plan gratuito con límite de eventos | Código abierto; también ofrece servicio alojado | Código abierto autoalojado; el servicio alojado es de pago |
| Cruce con datos internos (intentos, monedas, cupones) | Directo, con una consulta SQL | Requiere exportar a un almacén de datos externo | Requiere sincronizar datos | Requiere sincronizar datos | Requiere sincronizar datos |
| Asignación de variantes | La decide el backend y queda en el mismo registro | Depende de herramientas externas de pruebas | Depende de integraciones | Incluye banderas de funcionalidad y experimentos | Complemento o integración externa |
| Control y privacidad de los datos | Total: los datos no salen de la infraestructura y se pueden borrar a los 90 días | Los datos se procesan en servicios de terceros | Servicio de terceros | Total si se autoaloja | Total si se autoaloja |
| Esfuerzo de integración | Medio: hay que construir el punto de entrada y el servicio del frontend (TS32 y TS34) | Bajo | Bajo | Medio | Medio |
| Análisis estadístico | Hay que calcularlo (pruebas de proporciones y de medias) | Informes de exploración, sin prueba de hipótesis | Informes de embudos y retención | Incluye análisis de experimentos | Informes básicos |

**Decisión.** Se adopta el **registro propio** como fuente primaria de datos. Las razones son tres. Primero, las métricas más importantes (M5, M6, M8, M16, M18) combinan datos de uso con intentos, monedas y cupones que ya están en la base de datos de SafeStep, y cruzarlos es inmediato si los eventos viven allí. Segundo, el backend asigna las variantes y debe guardarlas junto al evento, sin depender de un servicio externo. Tercero, los datos de uso de personas que practican primeros auxilios se mantienen bajo control del equipo, de acuerdo con la Ley N.° 29733 de Protección de Datos Personales del Perú, con retención limitada a 90 días tras el experimento. El costo es construir el registro (historias TS32 a TS34) y calcular a mano las pruebas estadísticas, algo asumible porque solo se usan dos fórmulas (8.2.5). Si el volumen o la necesidad de análisis crecen, PostHog es la alternativa que se reevaluaría, porque se puede autoalojar y trae análisis de experimentos.

### Principios que rigen todos los experimentos

- **No hacer daño.** El riesgo colateral sobre la experiencia de los usuarios debe ser proporcional al aprendizaje esperado. Los experimentos no tocan pagos reales: las SafeCoins no tienen valor monetario y no se modifica el pago con Stripe. Las métricas de salud de 8.2.3 son la alerta temprana; si una de ellas empeora de forma marcada por razones técnicas (por ejemplo, errores del sistema), el experimento se detiene sin revisar la medida principal.
- **Datos mínimos y seudónimos.** Se registra un identificador seudónimo, nunca nombres, correos ni texto libre que identifique a alguien. Las respuestas libres de Q5 son opcionales y se revisan antes de citarse.
- **Consentimiento.** Se informa en la aplicación que las pantallas pueden variar para mejorar el producto y que hay registro anónimo de uso; las entrevistas de Q5 requieren aceptación explícita.
- **Experimentos en paralelo.** Dos experimentos que actúan sobre el mismo recorrido pueden contaminarse. Q1 (primera simulación) y Q7 (primer cupón) comparten a los usuarios nuevos y Q1 modifica cuántas monedas se ganan al principio, lo que afecta quién es elegible para Q7. Por eso se ejecutan en fases: **fase 1** (semanas 1 a 8): línea base, Q5 y Q1; **fase 2**: Q7, con usuarios que se registraron después de cerrar Q1. Q5 no asigna variantes (solo pregunta al abandonar) y puede correr junto a cualquiera de los dos.
- **Asignación independiente.** Cuando dos experimentos sí coinciden, cada uno usa su propio nombre en el cálculo de la variante, de modo que las asignaciones no estén correlacionadas.

## 8.2.7. Data Analytics: Goals, KPIs and Metrics Selection

Para no medir «todo» se parte de los objetivos analíticos, se derivan las preguntas que los responden y se eligen los indicadores mínimos: un enfoque Goal–Question–Metric. Medir sin propósito genera deuda técnica, ralentiza la aplicación y aumenta el riesgo de privacidad; por eso cada indicador de la tabla se retirará al terminar el experimento que lo necesita.

| Objetivo analítico | Pregunta | KPI | Meta o umbral de decisión | Fuente | Frecuencia de revisión |
| --- | --- | --- | --- | --- | --- |
| Entender por qué se abandona | Q5 | M10 Motivos de abandono (%) | 30 respuestas en total; actuar sobre cualquier motivo que supere 30 % | Evento de motivo de salida | Al cerrar el experimento |
| Calibrar el valor de las monedas | Q7 | M6 Canje del primer cupón en 30 días, por variante | Diferencia de 20 puntos con p < 0.025 | Cupones canjeados | Al cerrar el experimento |
| Mejorar la activación | Q1 | M1 Activación | Diferencia de 20 puntos con p < 0.05 | Eventos de inicio y fin de simulación | Al cerrar el experimento |
| Sostener la regularidad | Q8, Q10 | M3 Regularidad; M23 Intervalo entre sesiones | +1 día con p < 0.05; intervalo descriptivo | Intentos y sesiones | Al cerrar el experimento |
| Retener a quienes tienen experiencia | Q3 | M9 Abandono de simulaciones (nivel Básico), por grupo | Diferencia de 20 puntos con p < 0.05 | Inicio, fin y perfil | Al cerrar el experimento |
| Equilibrar la economía | Q7, Q8, Q9 | M5 Economía de monedas | Entre 1.0 y 3.0 (supuesto, a calibrar con la línea base) | Transacciones de monedas | Semanal, como métrica de salud |
| Medir aprendizaje observable | Q9 | M8 Aprendizaje observable | +5 puntos con p < 0.025 | Intentos | Al cerrar el experimento |
| Vincular tienda y aprendizaje | Q6 | M7 Interés por la tienda | +10 puntos con p < 0.05 | Eventos de tienda | Al cerrar el experimento |

**Indicadores que no se usarán.** Visitas totales, clics totales y tiempo total en la aplicación (medidas de volumen sin interpretación), y la satisfacción declarada como sustituto del comportamiento: los antecedentes de 1.2 muestran que el interés y la autopercepción no equivalen a estar preparado.

**Qué datos ya existen y cuáles faltan.** Los intentos terminados, las transacciones de monedas y los cupones canjeados ya se guardan y alimentan M2, M3, M5, M8, M16, M17 y M18 (y parte de M6). Faltan los eventos de inicio de simulación, abandono, navegación, sesión, tienda, carrito y asignación de variante, que habilitan el resto de las métricas de 8.2.2 y que se definen en 8.2.8. Hasta que existan, los experimentos que dependen de ellos no pueden ejecutarse.

## 8.2.8. Web and Mobile Tracking Plan

El plan de seguimiento define qué eventos emite la aplicación, cuándo y con qué propiedades. Se limita a lo que necesitan los diez experimentos.

**Propiedades comunes a todos los eventos**

| Propiedad | Tipo | Descripción |
| --- | --- | --- |
| `eventId` | texto | Identificador único del evento, para evitar duplicados |
| `occurredAt` | fecha y hora (UTC) | Momento del evento |
| `userKey` | texto | Identificador seudónimo del usuario (huella del identificador interno, sin nombre ni correo) |
| `sessionId` | texto | Identificador de la sesión de uso |
| `platform` | `web` o `mobile` | Plataforma que emite el evento |
| `appVersion` | texto | Versión de la aplicación |
| `assignments` | objeto | Variante asignada en cada experimento activo, por ejemplo `{"welcome-guide": "B"}` |

**Eventos**

| Evento | Se emite cuando | Propiedades propias | Preguntas | Web | Móvil |
| --- | --- | --- | --- | --- | --- |
| `account_registered` | Se crea una cuenta | `priorExperience` (sí o no) | Q3 | Se implementa | Pendiente |
| `session_started` | La persona abre la aplicación con sesión iniciada | `balance` (saldo de SafeCoins) | Q7, Q10 | Se implementa | Pendiente |
| `welcome_guide_viewed` | Se muestra la guía de bienvenida | — | Q1 | Se implementa | Pendiente |
| `welcome_guide_step` | Se avanza un paso de la guía | `step` (1 a 3) | Q1 | Se implementa | Pendiente |
| `welcome_guide_dismissed` | Se omite o se cierra la guía | `completed` (sí o no) | Q1 | Se implementa | Pendiente |
| `simulation_started` | Se contesta o se abre el primer paso de una simulación | `simulationId`, `emergencyType`, `difficulty`, `entryPoint` | Q1, Q3, Q4, Q5 | Se implementa | Pendiente |
| `simulation_step_answered` | Se responde un paso | `stepIndex`, `correct` | Q5, Q9 | Se implementa | Pendiente |
| `simulation_exit_prompted` | Se muestra el mensaje de salida | `stepIndex` | Q5 | Se implementa | Pendiente |
| `simulation_exit_reason` | La persona elige un motivo | `reason`, `hasFreeText`, `stepIndex` | Q5 | Se implementa | Pendiente |
| `simulation_completed` | Se termina una simulación | `simulationId`, `accuracy`, `passed`, `attemptNumber`, `earnedCoins`, `multiplier`, `passThreshold` | Q1, Q2, Q3, Q8, Q9, Q10 | Se implementa | Pendiente |
| `reward_preview_viewed` | Se muestra la recompensa del próximo intento | `previewCoins` | Q2 | Se implementa | Pendiente |
| `streak_updated` | Cambia la racha de días consecutivos | `streakDays`, `bonusApplied` | Q8 | Se implementa | Pendiente |
| `coupon_viewed` | Se abre la página de cupones | `balance` | Q7 | Se implementa | Pendiente |
| `coupon_redeemed` | Se canjea un cupón | `couponId`, `costShown`, `balanceBefore` | Q7 | Se implementa | Pendiente |
| `product_suggestion_shown` | Se muestra la sugerencia tras una simulación aprobada | `variant`, `productId` | Q6 | Se implementa | Pendiente |
| `product_opened` | Se abre la ficha de un producto sugerido | `productId`, `fromSuggestion` | Q6 | Se implementa | Pendiente |
| `product_added_to_cart` | Se agrega al carrito un producto abierto desde la sugerencia | `productId`, `fromSuggestion` | Q6 | Se implementa | Pendiente |

**Cobertura de las métricas.** Cada métrica de 8.2.2 se puede calcular con los datos que ya existen o con los eventos de esta tabla, y ningún evento queda sin una métrica que lo justifique:

| Evento | Métricas que alimenta |
| --- | --- |
| `account_registered` | M1, M13 |
| `session_started` | M4, M19, M23, M24 |
| `welcome_guide_viewed`, `welcome_guide_step`, `welcome_guide_dismissed` | M14 |
| `simulation_started` | M9, M20, M22 |
| `simulation_step_answered` | Análisis del paso de abandono (apoya a M12) |
| `simulation_exit_prompted` | M11, M12 |
| `simulation_exit_reason` | M10, M11 |
| `simulation_completed` | M1, M9, M13, M16, M17, M18, M20, M24 |
| `reward_preview_viewed` | Verifica la exposición a la variante de Q2 (M2) |
| `streak_updated` | M15 |
| `coupon_viewed`, `coupon_redeemed` | M6 |
| `product_suggestion_shown`, `product_opened`, `product_added_to_cart` | M7, M21 |

**Reglas de captura**

1. Los eventos se envían en lotes al backend mediante un punto de entrada nuevo (`POST /api/v1/analytics/events`), que los valida y los guarda en una tabla propia, separada de los datos del producto.
2. Si el envío falla, no se interrumpe la experiencia de la persona: el evento se descarta o se reintenta una vez.
3. El texto libre de `simulation_exit_reason` no se guarda en la tabla de eventos; si la persona lo escribe, se almacena aparte, solo con el identificador seudónimo.
4. Los eventos se conservan 90 días después de cerrar el experimento que los necesita y luego se eliminan; la tabla no se usa para ningún otro fin.
5. **Móvil.** La aplicación móvil todavía no existe como producto implementado; cuando exista emitirá el mismo esquema con `platform = mobile`, de modo que los resultados de web y móvil se puedan comparar. Esa columna se completará entonces.
