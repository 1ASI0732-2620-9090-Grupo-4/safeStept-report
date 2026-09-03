<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-4/capitulo-4.png" alt="Capitulo 4" />
</div>

<br>
<br>

# 4.6. Domain-Driven Software Architecture

En esta sección se detalla la arquitectura de software de **SafeStep**, empleando los principios de **Domain-Driven Design (DDD)** para asegurar una alineación precisa entre las necesidades del dominio médico y la implementación técnica. El proceso de diseño se divide en dos fases fundamentales: primero, el refinamiento de la lógica de negocio mediante el **Design-Level Event Storming**, donde se identifican los agregados y políticas que rigen el sistema. Posteriormente, se aplica el **Modelo C4** para documentar la estructura del software en tres niveles de abstracción (Contexto, Contenedores y Componentes). Este enfoque permite visualizar desde las interacciones macro con sistemas externos hasta la organización interna de los módulos en **Spring Boot**, garantizando una arquitectura escalable, modular y centrada en ofrecer una experiencia de aprendizaje y equipamiento óptima para estudiantes y brigadistas.

## 4.6.1. Design-Level Event Storming

En esta fase, el equipo aplica la técnica de **Design-Level Event Storming** para refinar la comprensión del dominio de SafeStep y descubrir el modelo de software subyacente. Partiendo de los eventos de dominio clave identificados en el *Big Picture Event Storming*, se profundiza en la lógica de negocio para definir los comandos que los desencadenan, los actores que los inician y las políticas (reglas de negocio) que los gobiernan. Este proceso colaborativo permite identificar los agregados (Aggregates), que son los componentes centrales del modelo de dominio, como `Usuario`, `Simulacion`, `Curso` y `Orden`. El resultado es un mapa detallado que sirve como base para el diseño de los componentes de software, asegurando que la arquitectura esté alineada con las reglas y flujos de trabajo del mundo real de la capacitación en primeros auxilios y el comercio electrónico.

### 4.6.1.1. Fase 1 Unstructured Exploration (Lluvia de ideas)

En esta fase se realiza una lluvia de ideas masiva de los hechos significativos del negocio denominados domain events, los cuales se registran en notas naranjas y se redactan obligatoriamente en tiempo pasado, sin priorizar inicialmente el orden o la duplicidad de los mismos.

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667282704465&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667282704465&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/eventstorming-fase1.jpg" alt="Event Storming Fase 1 - SafeStep" />
    <br>
    <sub><em>Haz clic en la imagen para ver el tablero en Miro</em></sub>
</div>

### 4.6.1.2. Fase 2 Timelines (Línea de tiempo)

Consiste en organizar los domain events en orden cronológico, comenzando por el "happy path" (escenario de éxito). Posteriormente, se integran los escenarios alternativos y se refina el flujo eliminando duplicados o corrigiendo eventos erróneos para asegurar la coherencia del proceso.

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667285676558&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667285676558&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/eventstorming-fase2.jpg" alt="Event Storming Fase 2 - SafeStep" />
    <br>
    <sub><em>Haz clic en la imagen para ver el tablero en Miro</em></sub>
</div>

### 4.6.1.3. Fase 3 Pain Points (Puntos críticos)

Se analiza la línea de tiempo para identificar ineficiencias como cuellos de botella, procesos manuales o vacíos de información. Estos puntos se señalizan con notas rosadas rotadas (en forma de diamante) para asegurar que sean abordados durante el diseño técnico.

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667285757095&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667285757095&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/eventstorming-fase3.jpg" alt="Event Storming Fase 3 - SafeStep" />
    <br>
    <sub><em>Haz clic en la imagen para ver el tablero en Miro</em></sub>
</div>

### 4.6.1.4. Fase 4 Pivotal Events (Eventos cruciales)

Se identifican eventos de negocio significativos que marcan un cambio de fase o contexto en el proceso. Estos se señalan con una barra vertical y son los principales indicadores para definir los límites de los Bounded Contexts (módulos del sistema).

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667285757655&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667285757655&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/eventstorming-fase4.jpg" alt="Event Storming Fase 4 - SafeStep" />
    <br>
    <sub><em>Haz clic en la imagen para ver el tablero en Miro</em></sub>
</div>

### 4.6.1.5. Fase 5 Commands (Comandos)

Describe la acción o el desencadenante que activa un evento o flujo de eventos. Se redacta en imperativo y se representa con notas azul claro. Si el comando es ejecutado por un rol específico, se incluye la información del actor mediante una pequeña nota amarilla.

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667285899995&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667285899995&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/eventstorming-fase5.jpg" alt="Event Storming Fase 5 - SafeStep" />
    <br>
    <sub><em>Haz clic en la imagen para ver el tablero en Miro</em></sub>
</div>

### 4.6.1.6. Fase 6 Policies (Políticas)

Identifica las reglas de automatización donde un domain event activa automáticamente la ejecución de un command. Estas políticas se representan con notas púrpuras y sirven para definir la lógica de reacción del sistema sin intervención directa de un actor, permitiendo especificar criterios de decisión si es necesario.

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667285900230&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764667285900230&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/eventstorming-fase6.jpg" alt="Event Storming Fase 6 - SafeStep" />
    <br>
    <sub><em>Haz clic en la imagen para ver el tablero en Miro</em></sub>
</div>

### 4.6.1.7. Fase 7 Read Models (Modelos de lectura)

Un read model es la vista de datos (pantallas, informes o notificaciones) que un actor utiliza para tomar la decisión de ejecutar un comando. Se representa con notas verdes y se coloca en el flujo antes del comando que respalda.

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668346650835&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668346650835&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/eventstorming-fase7.jpg" alt="Event Storming Fase 7 - SafeStep" />
    <br>
    <sub><em>Haz clic en la imagen para ver el tablero en Miro</em></sub>
</div>

### 4.6.1.8. Fase 8 External Systems (Sistemas externos)

Se refiere a cualquier sistema fuera del dominio que se está explorando. Estos sistemas pueden ejecutar comandos (entrada) o recibir notificaciones sobre eventos (salida). Se representan con notas rosadas y permiten modelar la interacción de SafeStep con servicios externos, como pasarelas de pago o proveedores de mapas.

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668352244008&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668352244008&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/eventstorming-fase8.jpg" alt="Event Storming Fase 8 - SafeStep" />
    <br>
    <sub><em>Haz clic en la imagen para ver el tablero en Miro</em></sub>
</div>

### 4.6.1.9. Fase 9 Aggregates (Agregados)

En este paso, se organizan los conceptos relacionados en agregados, los cuales tienen la responsabilidad de recibir comandos y producir eventos. Se representan mediante notas adhesivas amarillas grandes, ubicando los comandos a la izquierda y los eventos resultantes a la derecha del agregado.

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668357193046&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668357193046&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/eventstorming-fase9.jpg" alt="Event Storming Fase 9 - SafeStep" />
    <br>
    <sub><em>Haz clic en la imagen para ver el tablero en Miro</em></sub>
</div>

### 4.6.1.10. Fase 10  Bounded Contexts (Contextos delimitados)

Es el paso final donde se agrupan los agregados que están relacionados entre sí, ya sea por su funcionalidad o por estar vinculados a través de políticas. Estos grupos definen los límites de los Bounded Contexts, estableciendo las fronteras lógicas y técnicas de los diferentes módulos del sistema.

<div align="center">
    <a href="https://miro.com/app/board/uXjVGlN0dvA=/">https://miro.com/app/board/uXjVGlN0dvA=/</a>
        <img src="../../assets/images/chapter-4/eventstorming-fase10.jpg" alt="Bounded Contexts - SafeStep" />
    <br>
    <sub><small>link (vista de todos los BC): <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=71377687029">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=71377687029</a></small></sub>
    <br></br>
</div>


<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/BD1.jpeg" alt="Event Storming Fase 10 - SafeStep" />
    <br>
    <sub><small>link (Identidad y acceso BC): <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372344380&embedMode=view_only_without_ui&embedId=71377687029">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372344380&embedMode=view_only_without_ui&embedId=71377687029</a></small></sub>
    <br></br>
</div>

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/BD2.jpeg" alt="Event Storming Fase 10 - SafeStep" />
    <br>
    <sub><small>link (Simulacion medica BC): <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668373009035&embedMode=view_only_without_ui&embedId=71377687029">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668373009035&embedMode=view_only_without_ui&embedId=71377687029</a></small></sub>
    <br></br>
</div>

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/BD3.jpeg" alt="Event Storming Fase 10 - SafeStep" />
    <br>
    <sub><small>link (Tutoria y aprendizaje BC): <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668373009099&embedMode=view_only_without_ui&embedId=71377687029">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668373009099&embedMode=view_only_without_ui&embedId=71377687029</a></small></sub>
    <br></br>
</div>

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/BD4.jpeg" alt="Event Storming Fase 10 - SafeStep" />
    <br>
    <sub><small>link (Gamificacion y lealtad BC): <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668373009159&embedMode=view_only_without_ui&embedId=71377687029">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668373009159&embedMode=view_only_without_ui&embedId=71377687029</a></small></sub>
    <br></br>
</div>

<div align="center">
    <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=667671003239">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668372090204&embedMode=view_only_without_ui&embedId=667671003239</a>
        <img src="../../assets/images/chapter-4/BD5.jpeg" alt="Event Storming Fase 10 - SafeStep" />
    <br>
    <sub><small>link (Marketplace y suministros): <a href="https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668373009234&embedMode=view_only_without_ui&embedId=71377687029">https://miro.com/app/live-embed/uXjVGlN0dvA=/?focusWidget=3458764668373009234&embedMode=view_only_without_ui&embedId=71377687029</a></small></sub>
    <br>
    </br>
</div>

**link del miro completo**

<a href="https://miro.com/welcomeonboard/LzArU0gzKzhEOTJWejJ1ODdFUit5MTBnZlJaTDhRa3RHRUVVdFI5aUVLQnJtTXZXTXRaUmtHWTViMWRHaVk3cVJNd2VvVTBlUFBLbXg0aHEyRzgrN2xud0lrejllQVpDT1AzczYyS0t6YW1YYkhFVWZoVkUvd2U5NHhMczdmcUV3VHhHVHd5UWtSM1BidUtUYmxycDRnPT0hdjE=?share_link_id=310009534925">https://miro.com/welcomeonboard/LzArU0gzKzhEOTJWejJ1ODdFUit5MTBnZlJaTDhRa3RHRUVVdFI5aUVLQnJtTXZXTXRaUmtHWTViMWRHaVk3cVJNd2VvVTBlUFBLbXg0aHEyRzgrN2xud0lrejllQVpDT1AzczYyS0t6YW1YYkhFVWZoVkUvd2U5NHhMczdmcUV3VHhHVHd5UWtSM1BidUtUYmxycDRnPT0hdjE=?share_link_id=310009534925</a>



## 4.6.2. Software Architecture Context Diagram

Representa el nivel más alto de abstracción del sistema. Su propósito es definir los límites de la solución, mostrando el software como un nodo central (caja negra) conectado con sus actores (usuarios) y sistemas externos (servicios de terceros o APIs externas). Esta vista es clave para entender el ecosistema general y el flujo de información de alto nivel sin entrar en detalles de infraestructura o código.

<div align="center">
    <img src="../../assets/images/chapter-4/DiagramaContextoSafeStept.png" alt="Diagrama de Contexto de SafeStep" />
</div>

## 4.6.3. Software Architecture Container Diagrams

Representa el segundo nivel de detalle, donde se hace un "zoom" al sistema para mostrar sus unidades de software distribuidas (Containers). Un container puede ser una aplicación web, una aplicación móvil, una API REST o una base de datos. Este diagrama describe la tecnología elegida, las responsabilidades de cada bloque y cómo se comunican entre sí (ej. mediante protocolos HTTP, gRPC o colas de mensajería).

<div align="center">
    <img src="../../assets/images/chapter-4/DiagramaContenedoresSafeStept.png" alt="Diagrama de Contexto del Sistema" />
</div>


## 4.6.4. Software Architecture Components Diagrams

Este diagrama representa el tercer nivel de detalle del modelo C4, realizando un "zoom" sobre un contenedor específico para desglosar sus componentes internos. En el caso de tu proyecto, muestra cómo se organiza la lógica de negocio mediante controladores, servicios y repositorios, siguiendo típicamente los patrones de Domain-Driven Design (DDD) o Arquitectura Hexagonal. Su objetivo es identificar las responsabilidades de cada módulo de código y cómo interactúan entre sí para cumplir con las funcionalidades del sistema.

<div align="center">
    <img src="../../assets/images/chapter-4/DiagramaComponeneteSafeStept.png" alt="Diagrama de Componentes de SafeStep" />
</div>






