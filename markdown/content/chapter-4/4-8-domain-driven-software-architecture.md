<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-4/capitulo-4.png" alt="Capitulo 4" />
</div>

<br>
<br>


## 4.8.1. Software Architecture Context Diagram

Representa el nivel más alto de abstracción del sistema. Su propósito es definir los límites de la solución, mostrando el software como un nodo central (caja negra) conectado con sus actores (usuarios) y sistemas externos (servicios de terceros o APIs externas). Esta vista es clave para entender el ecosistema general y el flujo de información de alto nivel sin entrar en detalles de infraestructura o código.

<div align="center">
    <img src="../../assets/images/chapter-4/DiagramaContextoSafeStept.png" alt="Diagrama de Contexto de SafeStep" />
</div>

## 4.8.2. Software Architecture Container Diagrams

Representa el segundo nivel de detalle, donde se hace un "zoom" al sistema para mostrar sus unidades de software distribuidas (Containers). Un container puede ser una aplicación web, una aplicación móvil, una API REST o una base de datos. Este diagrama describe la tecnología elegida, las responsabilidades de cada bloque y cómo se comunican entre sí (ej. mediante protocolos HTTP, gRPC o colas de mensajería).

<div align="center">
    <img src="../../assets/images/chapter-4/DiagramaContenedoresSafeStept.png" alt="Diagrama de Contexto del Sistema" />
</div>


## 4.8.3. Software Architecture Components Diagrams

Este diagrama representa el tercer nivel de detalle del modelo C4, realizando un "zoom" sobre un contenedor específico para desglosar sus componentes internos. En el caso de tu proyecto, muestra cómo se organiza la lógica de negocio mediante controladores, servicios y repositorios, siguiendo típicamente los patrones de Domain-Driven Design (DDD) o Arquitectura Hexagonal. Su objetivo es identificar las responsabilidades de cada módulo de código y cómo interactúan entre sí para cumplir con las funcionalidades del sistema.

<div align="center">
    <img src="../../assets/images/chapter-4/DiagramaComponeneteSafeStept.png" alt="Diagrama de Componentes de SafeStep" />
</div>






