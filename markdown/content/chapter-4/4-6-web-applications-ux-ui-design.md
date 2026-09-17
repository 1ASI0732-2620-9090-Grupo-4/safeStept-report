<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-4/capitulo-4.png" alt="Capitulo 4" />
</div>

<br>
<br>

# 4.4. Web Applications UX/UI Design

Esta sección incluye secciones internas donde se presenta y explica la propuesta visual y de interacción para las aplicaciones que constituyen la experiencia de usuario con los productos digitales.

## 4.4.1. Web Applications Wireframes

Esta sección incluye una sección interna donde se presenta y explica los Wireframes de las aplicaciones móviles. En la propuesta y la explicación debe evidenciarse la aplicación de los principios, elementos de diseño, diseño inclusivo y arquitectura de información. Utilizar para los wireframes las herramientas indicadas.

### 4.4.1.1. Introducción a Wireframes de Aplicaciones Web

Los wireframes de las aplicaciones web de SafeStep establecen la estructura funcional de cada vista antes de aplicar tratamiento visual. Cada wireframe define la posición de elementos interactivos, la arquitectura de información para cada pantalla, y el flujo de interacción esperado para completar tareas específicas.

Los wireframes han sido diseñados siguiendo los principios de mobile-first donde las funcionalidades mobile son esenciales, pero también considerando la experiencia expandida de desktop. Los wireframes se crean en escala de grises para mantener el foco en estructura y función, no en aspectos visuales.

### 4.4.1.2. Dashboard Wireframe

El Dashboard es la primera pantalla que ve el usuario después de iniciar sesión. Actúa como centro de control desde donde puede navegar a todas las funcionalidades principales.

#### Estructura del Dashboard

<div align="center">
  <p>
    <b>Gráfico</b>: Wireframe del dashboard principal de SafeStep
  </p>
  <img src="../../assets/images/chapter-4/dashboard-wireframe.png" alt="dashboard" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Elementos Clave del Dashboard

- **Header**: Logo, búsqueda global, notificaciones, acceso a perfil
- **Sidebar**: Navegación principal con avatar y progreso visible
- **Welcome banner**: Mensaje personalizado con continuación
- **Continue learning**: Último módulo en progreso
- **Recomendaciones**: Contenido sugerido basado en historial
- **Stats**: Resumen visual de progreso

### 4.4.1.3.-learning Page (Módulos) Wireframe

La página de aprendizaje muestra los módulos disponibles y el estado de progreso del usuario en cada uno.

#### Estructura de Página de Aprendizaje

<div align="center">
  <p>
    <b>Gráfico</b>: Wireframe de la página de aprendizaje de SafeStep
  </p>
  <img src="../../assets/images/chapter-4/learning-wireframe.png" alt="learning" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Elementos Clave

- **Breadcrumbs**: Navegación de retorno
- **Filtros por estado**: Todos/En progreso/Completado
- **Filters por categoría**: RCP, Atragantamiento, etc.
- **Módulo cards**: Imagen, título, progreso, indicador de estado

### 4.4.1.4. Simulación Page Wireframe

La página de simulación es donde el usuario practica situaciones de emergencia.

#### Estructura de Simulación

<div align="center">
  <p>
    <b>Gráfico</b>: Wireframe de la página de una simulación de SafeStep
  </p>
  <img src="../../assets/images/chapter-4/simulation-wireframe.png" alt="simulation" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Elementos Clave

- **Progress bar**: Muestra avance en la simulación
- **Escenario**: Descripción de la situación
- **Opciones**: Botones de respuesta con letters (A, B, C...)
- **Feedback**: Indicación inmediata de correct/incorrect
- **Opciones de ayuda**: Pista, Saltar

### 4.4.1.5. E-commerce/Tienda Wireframe

La página de tienda muestra el catálogo de productos disponibles.

#### Estructura de Tienda

<div align="center">
  <p>
    <b>Gráfico</b>: Wireframe de la página de la tienda de SafeStep
  </p>
  <img src="../../assets/images/chapter-4/ecommerce-wireframe.png" alt="e-commerce" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Elementos Clave

- **Search bar**: Búsqueda de productos
- **Filtros**: Categoría, precio rango, uso
- **Product cards**: Imagen, nombre, precio, botón agregar
- **Sort**: Opciones de ordenamiento
- **Pagination**: Navegación de resultados

### 4.4.1.6. Producto Detail Wireframe

La página de detalle de producto muestra información completa de un producto específico.

#### Estructura de Detalle de Producto

<div align="center">
  <p>
    <b>Gráfico</b>: Wireframe de un producto de SafeStep
  </p>
  <img src="../../assets/images/chapter-4/detalle-wireframe.png" alt="detalle del producto" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

### 4.4.1.7. Perfil/Configuración Wireframe

La página de configuración y perfil del usuario.

#### Estructura de Perfil

<div align="center">
  <p>
    <b>Gráfico</b>: Wireframe del perfil de usuario de SafeStep
  </p>
  <img src="../../assets/images/chapter-4/perfil-usuario-wireframe.png" alt="perfil" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

## 4.4.2. Web Applications Wireflow Diagrams

Esta sección presenta la propuesta de Wireflows. Debe considerarse un Wireflow para cada User goal, considerando los User Persona para cada aplicación que forma parte del alcance. Es recomendable que el equipo elabore previamente los correspondientes Task Flows, para establecer un consenso sobre las rutas típicas de steps para cada User goal. Es importante recordar que la forma como se refleja un cambio en una pantalla (Wireframe) como resultado de la interacción en un flujo es agregar un paso con un Wireframe con la representación del nuevo estado. Utilizar para los Wireflows las herramientas indicadas. Cada Wireflow diagram requiere que se redacte el User goal y se complemente con una explicación del flujo especificado.

### 4.4.2.1. Metodología de Wireflows

SafeStep utiliza wireflows para documentar los flujos de interacción entre pantallas. Un wireflow representa una secuencia de pantallas relacionadas por las acciones del usuario, ilustrando cómo los cambios en una pantalla lead a estados diferentes.

Cada wireflow incluye:
- User goal: El objetivo que el usuario intenta lograr
- Secuencia de pantallas: Ilustración del flujo
- Acciones: Las interacciones que trigger cambios
- Decisiones: Puntos donde el usuario tiene opciones
- Estados alternatives: Variaciones del flujo

### 4.4.2.2. Wireflow: Iniciar Sesión

**User Goal**: El usuario desea acceder a su cuenta en SafeStep para continuar su aprendizaje.

#### Flujo Principal (Happy Path)

<div align="center">
  <p>
    <b>Gráfico</b>: Wireflow autenticación (happy path)
  </p>
  <img src="../../assets/images/chapter-4/wireflow-autenticacion-parte1.png" alt="Wireflow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Flujo Alternativo

<div align="center">
  <p>
    <b>Gráfico</b>: Wireflow autenticación (alternative path)
  </p>
  <img src="../../assets/images/chapter-4/wireflow-autenticacion-parte2.png" alt="Wireflow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

### 4.4.2.3. Wireflow: Completar una Lección

**User Goal**: El usuario desea completar una lección completa (teoría + video + evaluación).

#### Flujo Principal

<div align="center">
  <p>
    <b>Gráfico</b>: Wireflow lección
  </p>
  <img src="../../assets/images/chapter-4/wireflow-leccion.png" alt="Wireflow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

### 4.4.2.4. Wireflow: Completar una Simulación

**User Goal**: El usuario desea practicar una simulación de emergencia específica.

#### Flujo Principal

<div align="center">
  <p>
    <b>Gráfico</b>: Wireflow simulacion
  </p>
  <img src="../../assets/images/chapter-4/wireflow-simulacion.png" alt="Wireflow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

### 4.4.2.5. Wireflow: Compra en Tienda

**User Goal**: El usuario desea comprar productos de primeros auxilios.

#### Flujo Principal

<div align="center">
  <p>
    <b>Gráfico</b>: Wireflow tienda
  </p>
  <img src="../../assets/images/chapter-4/wireflow-tienda.png" alt="Wireflow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

### 4.4.2.6. Wireflow: Gestionar Perfil

**User Goal**: El usuario desea actualizar su información personal y preferencias.

#### Flujo Principal

<div align="center">
  <p>
    <b>Gráfico</b>: Wireflow perfil
  </p>
  <img src="../../assets/images/chapter-4/wireflow-perfil.png" alt="Wireflow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

## 4.4.3. Web Applications Mock-ups

Esta sección presenta y explica los Mock-ups de las aplicaciones. En la propuesta y la explicación debe evidenciarse la aplicación de los principios, elementos de diseño, diseño inclusivo y arquitectura de información, así como el Design System establecido para los productos digitales. Utilizar para los mock-ups las herramientas indicadas.

### 4.4.3.1. Introducción a Mock-ups

Los mock-ups de aplicaciones web representan la implementación visual final de los wireframes, aplicando el Design System establecido. Cada mock-up incorpora la paleta de colores, tipografía, componentes y estilos definidos en-style guidelines para crear experiencias visuales coherentes con la marca SafeStep.

### 4.4.3.2. Dashboard Mock-up

El mock-up del Dashboard implementa la estructura del wireframe con tratamiento visual completo:

#### Elementos Visuales

**Header:**
- Logo con gradiente azul
- Fondo blanco con shadow
- Iconos de navegación (buscar, notificaciones, perfil)

**Sidebar:**
- Fondo White
- Avatar circular con badge de nivel
- Navegación con icons + texto
- Hover states con highlight azul
- Progreso XP mostrado visualmente

**Contenido Principal:**
- Card de bienvenida con gradiente
- Cards de módulos con progress bars
- Stats con icons y colores distintivos
- Badges para progreso completado

### 4.4.3.3. Learning Page Mock-up

Mock-up de página de módulos y lecciones:

#### Elementos Visuales

**Filtros:**
- Pills con background active/inactive
- Icons por categoría
- Estados visuales claros

**Módulo Cards:**
- Imagen de fondo por categoría
- Overlay con información
- Progress bar coloreada
- Badges de estado (completado, en progreso, nuevo)
- Hover effects con escala

### 4.4.3.4. Simulación Mock-up

Mock-up de la interfaz de simulación interactiva:

#### Elementos Visuales

**Progress indicator:**
- Step indicator visual
- Números claramente visibles
- Color activo para paso actual

**Opciones:**
- Large touch targets (altura mínima 56px)
- Letter claramente visible (A, B, C)
- States: default, hover, selected, correct, incorrect
-Feedback colors: verde para correcto, rojo para incorrecto

**Escenario:**
- Box con background de alerta
- Icon representativo (X placeholder)
- Texto legible

### 4.4.3.5. Tienda Mock-up

Mock-up del catálogo de tienda:

#### Elementos Visuales

**Product Cards:**
- Imagen prominente
- Badge de descuento si aplica
- Nombre, precio, rating
- Botón "Agregar" prominente

**Filtros Sidebar:**
- Checkboxes visuales
- Range sliders para precio
- Collapsible sections

**Sorting:**
- Dropdown visual
- Icon indicating direction

### 4.4.3.6. Detalle Producto Mock-up

Mock-up de página de detalle de producto:

#### Elementos Visuales

**Galería:**
- Thumbnails navegables
- Zoom en hover
- Main image grande

**Información:**
- Precio destacado
- Selector de cantidad +/- 
- Botones de acción grandes
- Accordion para descripciones

### 4.4.3.7. Perfil Mock-up

Mock-up de configuración de perfil:

#### Elementos Visuales

**Avatar:**
- Círculo grande
- Placeholder para cambio
- Badge de verificación si aplica

**Forms:**
- Labels claramente asociadas
- Input fields con estados
- Toggle switches para preferencias
- Save button fixed o prominent

### 4.4.3.8. Aplicación de Design System en Mock-ups

Cada mock-up evidencia la aplicación del Design System:

**Colores:**
- Primario azul en CTAs principales
- Verde para éxitos/completado
- Rojo/naranja para errores/alertas
- Escala de grises para estructura

**Tipografía:**
- Poppins para headings
- Inter para cuerpo
- Jerarquía clara de tamaños

**Componentes:**
- Botones según especificación
- Form inputs con estilos
- Cards con shadow consistente
- Spacing según sistema

## 4.4.4. Web Applications User Flow Diagrams

Esta sección presenta la propuesta de User Flows. Debe considerarse un User Flow para cada User goal, considerando los User Persona para cada aplicación que forma parte del alcance. Estos User Flows deben ser consistentes con los Wireflows de los cuales se derivan. Debe recordarse que en el User Flow se incluyen los Mock-ups de las vistas o pantallas de las aplicaciones, junto con los flujos que constituyen la ruta esperada (happy path) y las rutas alternativas (unhappy paths). Utilizar para los User Flows las herramientas indicadas. Cada User Flow diagram requiere que se redacte el User goal y se complemente con una explicación de los flujos y condiciones especificados.

### 4.4.4.1. Metodología de User Flows

Los User Flows de SafeStep documentan las rutas completas que los usuarios siguen para lograr objetivos específicos. A diferencia de los wireflows que muestran la estructura técnica, los user flows muestran la experiencia desde la perspectiva del usuario.

Cada user flow incluye:
- User Goal: El objetivo del usuario
- Persona: El tipo de usuario
- Happy Path: El flujo ideal
- Unhappy Paths: Variaciones y errores
- Puntos de decisión
- Puntos de salida

### 4.4.4.2. User Flow: Aprendizaje Completo de Módulo

**User Goal**: Completar todas las lecciones de un módulo de primeros auxilios

**User Type**: Estudiante / Usuario aprendiz

#### Happy Path

<div align="center">
  <p>
    <b>Gráfico</b>: User flow aprendizaje completo módulo (Happy path)
  </p>
  <img src="../../assets/images/chapter-4/user-flow-1-1.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Unhappy Paths

**Evaluación reprobada:**

<div align="center">
  <p>
    <b>Gráfico</b>: User flow aprendizaje completo módulo (Unhappy path) parte 1
  </p>
  <img src="../../assets/images/chapter-4/user-flow-1-2.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

**Abandonar lección:**

<div align="center">
  <p>
    <b>Gráfico</b>: User flow aprendizaje completo módulo (Unhappy path) parte 2
  </p>
  <img src="../../assets/images/chapter-4/user-flow-1-3.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

### 4.4.4.3. User Flow: Práctica de Simulación

**User Goal**: Practicar respuestas de emergencia en simulación interactiva

**User Type**: Estudiante / Usuario que busca certificación

#### Happy Path

<div align="center">
  <p>
    <b>Gráfico</b>: User flow práctica de simulación (Happy path)
  </p>
  <img src="../../assets/images/chapter-4/user-flow-2-1.png" alt="User flow" width="300" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Unhappy Paths

**Respuesta incorrecta:**

<div align="center">
  <p>
    <b>Gráfico</b>: User flow práctica de simulación (Unhappy path) parte 1
  </p>
  <img src="../../assets/images/chapter-4/user-flow-2-2.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

**Usar pista:**

<div align="center">
  <p>
    <b>Gráfico</b>: User flow práctica de simulación (Unhappy path) parte 2
  </p>
  <img src="../../assets/images/chapter-4/user-flow-2-3.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

### 4.4.4.4. User Flow: Compra de Producto

**User Goal**: Adquirir productos de primeros auxilios

**User Type**: Comprador / Cliente

#### Happy Path

<div align="center">
  <p>
    <b>Gráfico</b>: User flow compra de producto (Happy path)
  </p>
  <img src="../../assets/images/chapter-4/user-flow-3-1.png" alt="User flow" width="300" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Unhappy Paths

**Producto sin stock:**

<div align="center">
  <p>
    <b>Gráfico</b>: User flow compra de producto (Unhappy path) parte 1
  </p>
  <img src="../../assets/images/chapter-4/user-flow-3-2.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

**Pago rechazado:**

<div align="center">
  <p>
    <b>Gráfico</b>: User flow compra de producto (Unhappy path) parte 2
  </p>
  <img src="../../assets/images/chapter-4/user-flow-3-3.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

**Carrito vacío:**

<div align="center">
  <p>
    <b>Gráfico</b>: User flow compra de producto (Unhappy path) parte 3
  </p>
  <img src="../../assets/images/chapter-4/user-flow-3-4.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

### 4.4.4.5. User Flow: Registro de Nuevo Usuario

**User Goal**: Crear una cuenta en SafeStep

**User Type**: Visitante nuevo

#### Happy Path

<div align="center">
  <p>
    <b>Gráfico</b>: User flow registro de nuevo usuario (Happy path)
  </p>
  <img src="../../assets/images/chapter-4/user-flow-4-1.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Unhappy Paths

**Email ya registrado:**

<div align="center">
  <p>
    <b>Gráfico</b>: User flow registro de nuevo usuario (Unhappy path) parte 1
  </p>
  <img src="../../assets/images/chapter-4/user-flow-4-2.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

**Código verificación expirado:**

<div align="center">
  <p>
    <b>Gráfico</b>: User flow registro de nuevo usuario (Unhappy path) parte 2
  </p>
  <img src="../../assets/images/chapter-4/user-flow-4-3.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

### 4.4.4.6. User Flow: Recuperación de Contraseña

**User Goal**: Recuperar acceso a su cuenta

**User Type**: Usuario con cuenta pero sin acceso

#### Happy Path

<div align="center">
  <p>
    <b>Gráfico</b>: User flow recuperación de contraseña (Happy path)
  </p>
  <img src="../../assets/images/chapter-4/user-flow-5-1.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Unhappy Paths

**Email no encontrado:**

<div align="center">
  <p>
    <b>Gráfico</b>: User flow recuperación de contraseña (Unhappy path) parte 1
  </p>
  <img src="../../assets/images/chapter-4/user-flow-5-2.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

**Token expirado:**

<div align="center">
  <p>
    <b>Gráfico</b>: User flow recuperación de contraseña (Unhappy path) parte 2
  </p>
  <img src="../../assets/images/chapter-4/user-flow-5-3.png" alt="User flow" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

### 4.4.4.7. Consideraciones de User Flows

Los User Flows de SafeStep consideran:

**Accesibilidad:**
- Rutas alternativas para usuarios con limitaciones
- Opciones de voz donde aplica
- Simplicidad para usuarios no técnicos

**Recuperación:**
- Puntos claros de salida y retorno
- Mensajes claros en errores
- Opciones de recovery sencillas

**Consistencia:**
- Similar estructura de flows
- Patrones familiares
- Terminología consistente






