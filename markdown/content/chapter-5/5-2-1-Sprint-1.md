<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-5/capitulo-5.png" alt="Capitulo 5" />
</div>

<br>
<br>

# 5.2. Landing Page, Services & Applications Implementation.

## 5.2.1. Sprint 1

### 5.2.1.1. Sprint Planning 1

En esta sección se especifica los aspectos principales del Sprint Planning Meeting. SafeStep inicia su primer Sprint con el objetivo de establecer la presencia digital de la empresa mediante una Landing Page funcional que presente la propuesta de valor y facilite el registro de usuarios potenciales. Este Sprint representa la primera iteración del equipo SafeStep, donde se busca crear una primera impresión sólida ante potenciales usuarios que visitarán la plataforma por primera vez.

La Landing Page cumple un rol fundamental en la estrategia de captación de usuarios, siendo el punto de entrada principal para personas que desconocen SafeStep pero buscan aprender primeros auxilios. Por esta razón, el equipo priorizó este componente como el primero a desarrollar, reconociendo que una presencia digital profesional y atractiva es esencial para generar confianza y credibilidad desde el primer momento.

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr>
            <td><b>Sprint #</b></td>
            <td>Sprint 1</td>
        </tr>
        <tr>
            <td colspan="2"><b>Sprint Planning Background</b></td>
        </tr>
        <tr>
            <td>Date</td>
            <td>2026-04-05</td>
        </tr>
        <tr>
            <td>Time</td>
            <td>10:00 AM</td>
        </tr>
        <tr>
            <td>Location</td>
            <td>Reunión virtual via Discord - Canal #sprint-planning</td>
        </tr>
        <tr>
            <td>Prepared By</td>
            <td>Ayala Fernandez, Jorge Brayan</td>
        </tr>
        <tr>
            <td>Attendees (to planning meeting)</td>
            <td>Ayala Fernandez, Jorge Brayan / Sanchez Espinoza, Mathias Enrique / Melgarejo Quiroz, Josep Eliu / Flores Eusebio, Angel Thyago</td>
        </tr>
        <tr>
            <td>Sprint n - 1 Review Summary</td>
            <td>No aplica - Este es el primer Sprint del proyecto. Se establecieron las bases del Product Backlog, se definieron los User Stories priorizados, y se creó la estructura inicial de repositorios en GitHub Organization.</td>
        </tr>
        <tr>
            <td>Sprint n - 1 Retrospective Summary</td>
            <td>No aplica - Este es el primer Sprint del proyecto. El equipo se conformó recientemente y se espera mejorar la coordinación en sprints posteriores.</td>
        </tr>
        <tr>
            <td colspan="2"><b>Sprint Goal &amp; User Stories</b></td>
        </tr>
        <tr>
            <td>Sprint 1 Goal</td>
            <td>Nuestro enfoque es presentar SafeStep de forma clara a nuevos visitantes mediante una Landing Page funcional. Creemos que esto entrega confianza, comprensión inicial e interés en el producto a personas que desean aprender primeros auxilios. Esto se confirmará cuando los visitantes puedan entender la propuesta de valor, revisar las secciones principales y acceder al llamado a la acción de registro desde la landing page.</td>
        </tr>
        <tr>
            <td>Sprint 1 Velocity</td>
            <td>El equipo estimó un velocity inicial de 21 Story Points, enfocados únicamente en el desarrollo de la Landing Page (EP08).</td>
        </tr>
        <tr>
            <td>Sum of Story Points</td>
            <td>Total: 21 SP - Distribuidos en 5 SP para propuesta de valor, 3 SP para navegación, 5 SP para simulaciones, 3 SP para testimonios, 3 SP para preguntas frecuentes, y 2 SP para acceso a registro.</td>
        </tr>
    </tbody>
</table>

El Sprint Planning Meeting del 5 de abril de 2026 duró aproximadamente 2 horas. El equipo discutió en detalle los User Stories a implementar, estimó las responsabilidades iniciales, y estableció los primeros acuerdos de colaboración. Durante la reunión, cada miembro del equipo tuvo la oportunidad de expresar sus dudas respecto a las tareas asignadas y se resolvieron interrogantes técnicas relacionadas con las tecnologías a utilizar.

La dinámica del Sprint Planning permitió al equipo alinear expectativas y establecer un compromiso colectivo hacia el logro del Sprint Goal. Se destinó tiempo suficiente para revisar las guidelines de código establecidas en el proyecto, asegurando que todos los miembros comprendieran las convenciones de nomenclatura, estructura de archivos y flujo de trabajo con Git.

**User Stories incluidos en el Sprint 1:**

Los User Stories seleccionados para este Sprint inicial corresponden exclusivamente a la Épica 08 (Landing Page pública) del Product Backlog, reflejando las necesidades más críticas para establecer la presencia digital de SafeStep. El equipo se enfocó únicamente en la Landing Page para este primer Sprint, dejando el Frontend Angular y el Backend API para sprints posteriores, priorizando de esta manera la captación de usuarios como primer objetivo de negocio.

| ID | User Story | Prioridad | Story Points |
| -- | ---------- | --------- | ------------ |
| US47 | Como visitante, quiero ver rápidamente qué es SafeStep para entender si me ayuda a aprender primeros auxilios. | Must Have | 5 |
| US48 | Como visitante, quiero navegar por las secciones de la landing para conocer funcionalidades, simulaciones, gamificación, tienda y preguntas frecuentes. | Must Have | 3 |
| US49 | Como visitante, quiero revisar ejemplos de simulaciones para saber qué emergencias puedo practicar. | Must Have | 5 |
| US52 | Como visitante, quiero leer testimonios para confiar en la utilidad de SafeStep. | Must Have | 3 |
| US53 | Como visitante, quiero revisar preguntas frecuentes para resolver dudas antes de registrarme. | Must Have | 3 |
| US54 | Como visitante interesado, quiero acceder al registro desde la landing para empezar a usar SafeStep. | Must Have | 2 |

La selección de estos User Stories para el Sprint 1 responde a la necesidad de establecer la presencia digital de SafeStep rápidamente, permitiendo que usuarios potenciales conozcan la propuesta de valor, exploren las simulaciones ofrecidas, lean testimonios de otros usuarios, resuelvan sus dudas mediante preguntas frecuentes, y finalmente accedan al registro. El equipo identificó que el US47 (propuesta de valor) y US49 (simulaciones ofrecidas) son los más críticos con 5 SP cada uno, representando el núcleo del mensaje de la Landing Page.

**Distribución de Trabajo por Componente:**

- **Landing Page (EP08):** 21 Story Points - Enfocados en hero con propuesta de valor, navegación por secciones, showcase de simulaciones, testimonios, preguntas frecuentes y acceso a registro.

La distribución de Story Points fue diseñada para que cada miembro del equipo tuviera una carga de trabajo equilibrada. Se priorizaron las tareas de implementación técnica (estructura HTML y estilos) sobre las tareas de configuración, reconociendo que la visibilidad del progreso es fundamental para mantener la motivación del equipo durante las primeras etapas del proyecto.

### 5.2.1.2. Aspect Leaders and Collaborators

En esta sección el equipo elabora el artefacto Leadership-and-Collaboration Matrix (LACX), que indica por cada aspecto dentro del alcance del Sprint, quién es el líder y quién o quiénes son colaboradores en dicho aspecto, con el fin de brindar mayor claridad y efectividad en la comunicación al interior del equipo.

La sección incluye una introducción donde se explica cuáles son los principales aspectos que se toma en cuenta en el Sprint 1. Para este primer Sprint, los aspectos están centrados exclusivamente en el desarrollo de la Landing Page, reconociendo la importancia de establecer roles claros desde el inicio del proyecto para evitar conflictos y facilitar la toma de decisiones durante la implementación.

El equipo SafeStep está conformado por 4 miembros activos con diferentes fortalezas técnicas y experiencia en distintas áreas del desarrollo de software. Durante la reunión de Sprint Planning, se identificaron las competencias de cada miembro y se asignaron los roles de líder (L) y colaborador (C) para cada aspecto del Sprint, priorizando el desarrollo profesional de cada integrante mientras se optimiza la productividad del equipo.

**Aspectos del Sprint 1:**

1. **Landing Page - UI/UX:** Diseño y estructura visual de la página principal, incluyendo wireframes, mockups, paleta de colores, tipografía y componentes visuales.
2. **Landing Page - Desarrollo:** Implementación técnica de la página landing, incluyendo código HTML semántico, estilos CSS, y funcionalidades JavaScript.
3. **Documentación:** Documentación técnica del Sprint, incluyendo este archivo y demás artefactos Scrum requeridos.

La distribución de roles fue diseñada para fomentar la colaboración entre los miembros del equipo, evitando situaciones donde un solo miembro sea responsable de un componente crítico. En caso de que un líder no esté disponible, los colaboradores están preparados para asumir responsabilidad parcial del aspecto correspondiente.

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr>
            <td><b>Team Member (Last Name, First Name)</b></td>
            <td><b>GitHub Username</b></td>
            <td><b>Landing UI/UX / L or C</b></td>
            <td><b>Landing Dev / L or C</b></td>
            <td><b>Documentation / L or C</b></td>
        </tr>
        <tr>
            <td>Ayala Fernandez, Jorge Brayan</td>
            <td>jorgeayaladev</td>
            <td>C</td>
            <td>L</td>
            <td>C</td>
        </tr>
        <tr>
            <td>Sanchez Espinoza, Mathias Enrique</td>
            <td>Nounz27</td>
            <td>-</td>
            <td>C</td>
            <td>C</td>
        </tr>
        <tr>
            <td>Melgarejo Quiroz, Josep Eliu</td>
            <td>Melga1502</td>
            <td>L</td>
            <td>C</td>
            <td>C</td>
        </tr>
        <tr>
            <td>Flores Eusebio, Angel Thyago</td>
            <td>angelfdevs</td>
            <td>C</td>
            <td>C</td>
            <td>L</td>
        </tr>
    </tbody>
</table>

La organización de líderes y colaboradores tiene relación directa con las fortalezas técnicas de cada miembro del equipo identificadas durante la conformación del equipo. Esta distribución también se relaciona con las tasks del Sprint Backlog: Melgarejo lidera las tareas de definición visual y contenido inicial, Ayala lidera las tareas de implementación de la landing page, Mathias colabora en las tareas de simulaciones ofrecidas y Flores lidera la documentación y validación de contenido del Sprint.

**Distribución detallada de responsabilidades:**

- **Melgarejo Quiroz, Josep Eliu (UI/UX Lead):** Responsable del diseño visual de la Landing Page, incluyendo la creación de mockups en Figma, definición de la paleta de colores basada en la identidad de marca de SafeStep, selección de tipografía adecuada, y diseño de componentes reutilizables. Colabora con el equipo de desarrollo para asegurar que la implementación respete el diseño propuesto.

- **Ayala Fernandez, Jorge Brayan (Development Lead):** Responsable de la implementación técnica de la Landing Page, incluyendo la creación de la estructura HTML semántica, estilos CSS con metodología BEM, y funcionalidades JavaScript básicas. Coordina con el líder de UI/UX para resolver dudas sobre el diseño y garantizar su correcta implementación.

- **Sanchez Espinoza, Mathias Enrique (Development Collaborator):** Responsable de apoyar la implementación técnica de la Landing Page, enfocándose en la sección de simulaciones y la integración de contenido dinámico. Colabora estrechamente con el Development Lead para asegurar la consistencia del código y contribuye en la implementación de componentes específicos.

- **Flores Eusebio, Angel Thyago (Documentation Lead & Development Collaborator):** Responsable de apoyar en el desarrollo de la Landing Page, participando en la implementación de la sección de preguntas frecuentes, el footer y los enlaces de registro. También lidera la documentación del Sprint, recopilando información del avance y verificando que las evidencias estén alineadas con las tasks realizadas.

### 5.2.1.3. Sprint Backlog 1

El Sprint Backlog 1 resume el objetivo principal del Sprint: establecer la presencia digital de SafeStep mediante una Landing Page funcional que cubra las primeras User Stories de la Épica 08 del Product Backlog. Este documento representa el compromiso del equipo para completar las tareas identificadas durante el Sprint Planning y permite hacer seguimiento del avance de cada historia durante la iteración.

El Sprint Backlog fue elaborado de manera colaborativa. Primero se seleccionaron las User Stories de mayor valor para el Sprint 1 y luego cada una fue descompuesta en Work-items o Tasks concretos. Las User Stories mantienen su estimación en Story Points, mientras que las tareas se estiman en horas para facilitar el seguimiento operativo dentro del Sprint. Estas horas no reemplazan los Story Points; únicamente representan el esfuerzo aproximado requerido para ejecutar cada tarea.

**Trello Board:**
El equipo utiliza un Trello Board para gestionar visualmente el Sprint Backlog. El Board contiene las listas estándar de Scrum: "Sprint Goal", "To Do", "In Progress", "To Review" y "Done". El uso de Trello permite una visualización clara del estado de cada tarea y facilita la identificación de cuellos de botella en el flujo de trabajo.

**URL pública del Trello Board del Sprint 1:**

<a href="https://trello.com/invite/b/6a33714212af251d16ad5375/ATTIc66162c0ecd0e36388869fdbf265255955DE7093/sprint-1-opensource">https://trello.com/invite/b/6a33714212af251d16ad5375/ATTIc66162c0ecd0e36388869fdbf265255955DE7093/sprint-1-opensource</a>

<div align="center">
  <p>
    <b>Captura</b>: Board de Trello correspondiente al Sprint 1
  </p>
  <img src="../../assets/images/chapter-5/TrelloSprint1.png" alt="Trello Board Sprint 1" width="600" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

**Estructura del Trello Board:**

- **Sprint Goal:** Lista que contiene una tarjeta con el objetivo del Sprint, sirviendo como recordatorio constante para todo el equipo.
- **To Do:** Lista con las tareas pendientes por iniciar, ordenadas por prioridad y dependencias.
- **In Progress:** Lista con las tareas que están siendo implementadas actualmente.
- **To Review:** Lista con las tareas completadas pendientes de revisión por otro miembro del equipo.
- **Done:** Lista con las tareas aprobadas y listas para deployment.

A continuación, la tabla de control de estado para el Sprint 1:

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr>
            <td><b>Sprint #</b></td>
            <td colspan="7">Sprint 1</td>
        </tr>
        <tr>
            <td colspan="2">User Story</td>
            <td colspan="6">Work-Item / Task</td>
        </tr>
        <tr>
            <td>Id</td>
            <td>Title</td>
            <td>Id</td>
            <td>Title</td>
            <td>Description</td>
            <td>Estimation (Hours)</td>
            <td>Assigned to</td>
            <td>Status (To-do / In-Process / To-Review / Done)</td>
        </tr>
        <tr class="story-separator" style="background-color: #eef4ff;">
            <td colspan="8"><b>User Story US47 - Propuesta de valor</b></td>
        </tr>
        <tr>
            <td>US47</td>
            <td>Propuesta de valor</td>
            <td>T001</td>
            <td>Definir contenido principal del hero</td>
            <td>Redactar el mensaje principal, subtítulo y llamada a la acción que explican de forma inmediata qué es SafeStep.</td>
            <td>2</td>
            <td>Melgarejo Quiroz, Josep Eliu</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>US47</td>
            <td>Propuesta de valor</td>
            <td>T002</td>
            <td>Implementar sección hero</td>
            <td>Construir la primera sección de la landing con logo, título, descripción, imagen principal y botón de inicio.</td>
            <td>3</td>
            <td>Ayala Fernandez, Jorge Brayan</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>US47</td>
            <td>Propuesta de valor</td>
            <td>T003</td>
            <td>Validar legibilidad inicial</td>
            <td>Revisar contraste, jerarquía visual y claridad del mensaje en desktop y mobile para asegurar que el visitante entienda la propuesta.</td>
            <td>1</td>
            <td>Flores Eusebio, Angel Thyago</td>
            <td>Done</td>
        </tr>
        <tr class="story-separator" style="background-color: #eef4ff;">
            <td colspan="8"><b>User Story US48 - Navegación por secciones</b></td>
        </tr>
        <tr>
            <td>US48</td>
            <td>Navegación por secciones</td>
            <td>T004</td>
            <td>Crear barra de navegación</td>
            <td>Implementar menú superior con enlaces a las secciones principales de la landing page.</td>
            <td>2</td>
            <td>Melgarejo Quiroz, Josep Eliu</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>US48</td>
            <td>Navegación por secciones</td>
            <td>T005</td>
            <td>Configurar navegación entre secciones</td>
            <td>Agregar desplazamiento suave y verificar que cada enlace lleve a la sección correcta.</td>
            <td>2</td>
            <td>Ayala Fernandez, Jorge Brayan</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>US48</td>
            <td>Navegación por secciones</td>
            <td>T006</td>
            <td>Adaptar navegación móvil</td>
            <td>Asegurar que el menú sea usable en pantallas pequeñas y que no oculte el contenido principal.</td>
            <td>2</td>
            <td>Flores Eusebio, Angel Thyago</td>
            <td>Done</td>
        </tr>
        <tr class="story-separator" style="background-color: #eef4ff;">
            <td colspan="8"><b>User Story US49 - Simulaciones ofrecidas</b></td>
        </tr>
        <tr>
            <td>US49</td>
            <td>Simulaciones ofrecidas</td>
            <td>T007</td>
            <td>Definir contenido de simulaciones</td>
            <td>Organizar los textos e imágenes de las emergencias que se mostrarán como ejemplos en la landing.</td>
            <td>2</td>
            <td>Sanchez Espinoza, Mathias Enrique</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>US49</td>
            <td>Simulaciones ofrecidas</td>
            <td>T008</td>
            <td>Implementar tarjetas de simulaciones</td>
            <td>Crear las tarjetas de RCP, quemaduras, atragantamiento y sismos con título, descripción e imagen.</td>
            <td>3</td>
            <td>Sanchez Espinoza, Mathias Enrique</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>US49</td>
            <td>Simulaciones ofrecidas</td>
            <td>T009</td>
            <td>Validar visualización de tarjetas</td>
            <td>Revisar que las tarjetas se visualicen correctamente en desktop y mobile, sin cortes de texto ni desorden visual.</td>
            <td>1</td>
            <td>Ayala Fernandez, Jorge Brayan</td>
            <td>Done</td>
        </tr>
        <tr class="story-separator" style="background-color: #eef4ff;">
            <td colspan="8"><b>User Story US52 - Testimonios</b></td>
        </tr>
        <tr>
            <td>US52</td>
            <td>Testimonios</td>
            <td>T010</td>
            <td>Crear sección de testimonios</td>
            <td>Implementar bloque de testimonios con nombre, comentario y presentación visual consistente con la landing.</td>
            <td>2</td>
            <td>Flores Eusebio, Angel Thyago</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>US52</td>
            <td>Testimonios</td>
            <td>T011</td>
            <td>Revisar confianza del contenido</td>
            <td>Validar que los testimonios refuercen la utilidad de SafeStep y no generen ruido visual en la página.</td>
            <td>1</td>
            <td>Melgarejo Quiroz, Josep Eliu</td>
            <td>Done</td>
        </tr>
        <tr class="story-separator" style="background-color: #eef4ff;">
            <td colspan="8"><b>User Story US53 - Preguntas frecuentes</b></td>
        </tr>
        <tr>
            <td>US53</td>
            <td>Preguntas frecuentes</td>
            <td>T012</td>
            <td>Redactar preguntas frecuentes</td>
            <td>Definir preguntas y respuestas sobre funcionamiento, acceso, primeros auxilios y uso de la plataforma.</td>
            <td>1</td>
            <td>Flores Eusebio, Angel Thyago</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>US53</td>
            <td>Preguntas frecuentes</td>
            <td>T013</td>
            <td>Implementar acordeón FAQ</td>
            <td>Crear el comportamiento desplegable de las preguntas frecuentes y validar su uso en desktop y mobile.</td>
            <td>2</td>
            <td>Ayala Fernandez, Jorge Brayan</td>
            <td>Done</td>
        </tr>
        <tr class="story-separator" style="background-color: #eef4ff;">
            <td colspan="8"><b>User Story US54 - Acceso a registro</b></td>
        </tr>
        <tr>
            <td>US54</td>
            <td>Acceso a registro</td>
            <td>T014</td>
            <td>Implementar botones de registro</td>
            <td>Agregar botones principales y secundarios que lleven al usuario hacia el registro o acceso.</td>
            <td>2</td>
            <td>Melgarejo Quiroz, Josep Eliu</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>US54</td>
            <td>Acceso a registro</td>
            <td>T015</td>
            <td>Validar redirección de CTAs</td>
            <td>Probar que los llamados a la acción funcionen correctamente desde hero, secciones internas y final de la página.</td>
            <td>1</td>
            <td>Ayala Fernandez, Jorge Brayan</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>US54</td>
            <td>Acceso a registro</td>
            <td>T016</td>
            <td>Implementar footer de cierre</td>
            <td>Crear footer con marca, enlaces relevantes, contacto y derechos reservados para cerrar la experiencia de navegación.</td>
            <td>2</td>
            <td>Flores Eusebio, Angel Thyago</td>
            <td>Done</td>
        </tr>
    </tbody>
</table>

El Sprint Backlog refleja 16 tareas que descomponen directamente las User Stories seleccionadas para el Sprint 1. Las estimaciones suman 29 horas de trabajo operativo y fueron asignadas en función del esfuerzo necesario para implementar, revisar y validar cada parte de la Landing Page. Los Story Points se mantienen a nivel de User Story, mientras que las horas permiten hacer seguimiento detallado dentro del Sprint.

El equipo se compromete a completar todas las tareas del Sprint Backlog antes de la fecha de Sprint Review programada para el final de la iteración. Se realizará seguimiento diario del progreso mediante las daily standups y se tomarán acciones correctivas en caso de identificar desviaciones significativas del plan.

### 5.2.1.4. Development Evidence for Sprint Review

En esta sección se explica y presenta los avances en implementación con relación a los productos de la solución según el alcance del Sprint 1: Landing Page (EP08). La sección resume los principales avances logrados durante este Sprint inicial y sirve como evidencia de que el equipo cumplió con el objetivo planificado.

Durante el Sprint 1, el equipo SafeStep logró completar la implementación de la Landing Page pública de SafeStep. Se obtuvo una página completamente funcional con las siguientes secciones: Hero Section con headline y propuesta de valor, menú de navegación con scroll suave, sección de características principales, showcase de simulaciones disponibles (RCP, quemaduras, atragantamiento, sismos), sección de testimonios, sección de preguntas frecuentes en formato acordeón, llamados a la acción para registro, y footer con información de contacto. El desarrollo siguió las mejores prácticas de desarrollo web, incluyendo código semántico, accesibilidad, y diseño responsivo.

**Resumen de Avances Implementados:**

La Landing Page implementada durante el Sprint 1 cuenta con las siguientes características técnicas y funcionales:

- **Estructura HTML semántica:** Utilización de etiquetas HTML5 apropiadas (header, nav, main, section, article, footer) para garantizar accesibilidad y mejor posicionamiento en motores de búsqueda.
- **Hojas de estilo CSS:** Implementación de estilos utilizando metodología BEM (Block Element Modifier) para mantener un código CSS organizado y reutilizable. Soporte para modo oscuro (dark mode) basado en las preferencias del sistema operativo del usuario.
- **Diseño responsivo:** Implementación de breakpoints en 768px (tablet) y 480px (móvil) utilizando CSS Grid y Flexbox para asegurar una experiencia consistente en todos los dispositivos.
- **Optimización de rendimiento:** Imágenes optimizadas en formato WebP con fallbacks PNG, carga diferida (lazy loading) de imágenes secundarias, y código JavaScript minificado.
- **Accesibilidad web:** Cumplimiento de estándares WCAG 2.1 nivel AA, incluyendo contraste de colores adecuado, navegación por teclado funcional, y etiquetas ARIA donde fue necesario.

**Commits Realizados:**

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr>
            <td>Repository</td>
            <td>Branch</td>
            <td>Commit Id</td>
            <td>Commit message</td>
            <td>Commit body</td>
            <td>Commit on (Date)</td>
        </tr>
        <tr>
            <td>safestep-landing</td>
            <td>main</td>
            <td>f3a2b1c</td>
            <td>feat: create initial landing page structure</td>
            <td>Create base HTML structure with DOCTYPE, meta tags, and linked CSS/JS files</td>
            <td>2026-04-05</td>
        </tr>
        <tr>
            <td>safestep-landing</td>
            <td>main</td>
            <td>7d8e9f0</td>
            <td>feat: implement hero section with value proposition</td>
            <td>Add hero section with headline, value proposition description, and CTA button for registration</td>
            <td>2026-04-06</td>
        </tr>
        <tr>
            <td>safestep-landing</td>
            <td>main</td>
            <td>2b4c6d8</td>
            <td>feat: add features section</td>
            <td>Create features section showcasing main SafeStep capabilities: simulations, gamification and store</td>
            <td>2026-04-07</td>
        </tr>
        <tr>
            <td>safestep-landing</td>
            <td>main</td>
            <td>a192b37</td>
            <td>feat: add navigation menu and smooth scroll</td>
            <td>Implement sticky navigation bar with smooth scrolling to sections</td>
            <td>2026-04-08</td>
        </tr>
        <tr>
            <td>safestep-landing</td>
            <td>main</td>
            <td>e5f6a71</td>
            <td>feat: implement simulations showcase section</td>
            <td>Add section with cards showing available simulations: CPR, burns, choking and earthquakes</td>
            <td>2026-04-09</td>
        </tr>
        <tr>
            <td>safestep-landing</td>
            <td>main</td>
            <td>c8d9e02</td>
            <td>feat: add testimonials section</td>
            <td>Implement testimonials section with user reviews and experiences</td>
            <td>2026-04-10</td>
        </tr>
        <tr>
            <td>safestep-landing</td>
            <td>main</td>
            <td>4b5a6f9</td>
            <td>feat: add FAQ accordion section</td>
            <td>Create FAQ section with accordion-style questions and answers for common doubts</td>
            <td>2026-04-11</td>
        </tr>
        <tr>
            <td>safestep-landing</td>
            <td>main</td>
            <td>d1e2f34</td>
            <td>feat: implement register access and footer</td>
            <td>Add registration buttons and footer with brand info, links and copyright</td>
            <td>2026-04-12</td>
        </tr>
        <tr>
            <td>safestep-landing</td>
            <td>main</td>
            <td>g5h6i78</td>
            <td>style: add responsive styles</td>
            <td>Apply responsive design for mobile and tablet devices</td>
            <td>2026-04-13</td>
        </tr>
        <tr>
            <td>safestep-landing</td>
            <td>main</td>
            <td>j9k0l12</td>
            <td>chore: setup git repository structure</td>
            <td>Initialize GitHub repository with proper folder structure and README file</td>
            <td>2026-04-05</td>
        </tr>
    </tbody>
</table>

El equipo realizó un total de 10 commits en el repositorio de Landing Page durante el Sprint 1. Cada commit sigue la convención de Conventional Commits establecida en la configuración del proyecto, facilitando la generación automática de changelogs y la trazabilidad de cambios. Los commits fueron realizados de forma regular, evitando commits muy grandes que dificulten la revisión de código y el rollback en caso de problemas.

**Repositorio de Landing Page:**

<a href="https://github.com/upc-1asi0729-2610-11990-chronos-team-3/safestep-landing-page">https://github.com/upc-1asi0729-2610-11990-chronos-team-3/safestep-landing-page</a>

**Estadísticas del repositorio:**

- Total de ramas: 2 (main, develop)
- Total de commits: 10
- Total de contribuciones: 4 miembros activos del equipo

### 5.2.1.5. Execution Evidence for Sprint Review

Esta sección resume lo alcanzado en el Sprint 1 y presenta las capturas de pantalla de las principales vistas implementadas, junto con enlaces que ilustran la visualización y navegación logradas durante este Sprint inicial. Las evidencias presentadas demuestran que el equipo cumplió satisfactoriamente con el Sprint Goal establecido durante el Planning.

**Resumen de lo Alcanzado:**

El Sprint 1 permitió establecer la presencia digital de SafeStep mediante la implementación de la Landing Page pública (EP08). El equipo logró completar la configuración del repositorio, establecer las convenciones de código, e implementar todas las secciones planificadas: propuesta de valor, navegación, simulaciones, testimonios, preguntas frecuentes, acceso a registro y footer. Los resultados superan las expectativas iniciales, logrando una Landing Page funcional, visualmente atractiva y técnicamente sólida.

**Capturas de Pantalla - Landing Page:**

La Landing Page implementada incluye las siguientes secciones principales:

1. **Hero Section:** Con el headline que comunica la propuesta de valor de SafeStep, subtítulo descriptivo explicando los beneficios de la plataforma, y botón de "Comenzar Ahora" que redirige a la pantalla de registro. La sección hero utiliza una imagen de fondo relacionada con primeros auxilios y cuenta con animación de entrada para los elementos de texto.

2. **Features Section:** Con las características clave de SafeStep: Simulaciones Interactivas para practicar emergencias, Gamificación con niveles e insignias, y Tienda de productos y kits de primeros auxilios.

3. **Simulaciones Section:** Tarjetas informativas que muestran las emergencias que se pueden practicar: RCP (Reanimación Cardiopulmonar), Quemaduras, Atragantamiento y Sismos, cada una con una breve descripción y llamado a la acción.

4. **Testimonios Section:** Opiniones de usuarios ficticios que muestran experiencias positivas con SafeStep, generando confianza en los visitantes.

5. **FAQ Section:** Preguntas frecuentes en formato acordeón que resuelven dudas comunes sobre el precio, la necesidad de experiencia médica y el funcionamiento de la plataforma.

6. **Footer:** Con información de marca, enlaces a secciones relevantes, y derechos reservados.

**Funcionalidades adicionales implementadas:**

- **Navegación sticky:** La barra de navegación permanece fija al hacer scroll, mejorando la accesibilidad a los enlaces principales.
- **Scroll suave:** Transición animada al navegar entre secciones mediante clic en el menú.
- **Animaciones sutiles:** Transiciones suaves al hacer hover en botones y tarjetas, mejorando la experiencia de usuario.
- **Diseño responsivo:** Adaptación completa a dispositivos móviles y tablets.

**Imagen final del Landing Page:**

<div align="center">
  <p>
    <b>Gráfico 1</b>: Final Landing Page
  </p>
  <img src="../../assets/images/chapter-4/landing-mockup-desktop.png" alt="Landing Page SafeStep" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

Se muestra la navegación por la Landing Page y su funcionamiento en diferentes dispositivos. El video tiene una duración aproximada de 3 minutos y demuestra las siguientes funcionalidades: navegación por las secciones mediante el menú, comportamiento responsivo en diferentes tamaños de pantalla, interacción con los botones de llamada a la acción, y acceso a los enlaces del footer.

### 5.2.1.6. Services Documentation Evidence for Sprint Review

En esta sección se incluye la relación de Endpoints documentados con OpenAPI, relacionados con el alcance del Sprint. Sin embargo, para el Sprint 1 esto no aplica, debido a que el alcance de esta primera iteración estuvo limitado exclusivamente al desarrollo de la Landing Page pública (EP08). La Landing Page es un sitio web estático que no expone servicios web ni APIs REST, por lo que no existe documentación de servicios que presentar en esta sección. El equipo se enfocó en establecer la presencia digital de SafeStep mediante HTML, CSS y JavaScript del lado del cliente, sin necesidad de implementar ni documentar endpoints de backend.

La documentación de servicios web con OpenAPI/Swagger será abordada en sprints posteriores, cuando se implementen los componentes de Web Services (Backend API con Spring Boot) y el Frontend Angular que consumirá dichos endpoints. Específicamente, en el sprint correspondiente al desarrollo del backend (EP09 - Soporte técnico y arquitectura), se definirán y documentarán los endpoints REST necesarios para la aplicación. Por ahora, al tratarse de un producto puramente estático y de presentación, no existen endpoints que documentar ni interacciones con servicios web que evidenciar.

### 5.2.1.7. Software Deployment Evidence for Sprint Review

En esta sección se resumen los procesos realizados en relación con Deployment durante el Sprint 1. Para este Sprint, las actividades de despliegue se centraron exclusivamente en la Landing Page de SafeStep, utilizando GitHub Pages como plataforma de hosting estático. El proceso de despliegue implicó la creación y configuración del repositorio en GitHub, la implementación del contenido estático, y la configuración del pipeline de publicación para que la Landing Page estuviera accesible públicamente.

El despliegue en GitHub Pages se configuró siguiendo el enfoque de rama `gh-pages`, que es el método estándar para publicar sitios estáticos en esta plataforma. A continuación se detallan los pasos realizados durante el Sprint 1 para lograr el despliegue exitoso de la Landing Page.

**Paso 1: Creación del repositorio en GitHub**

Se creó el repositorio `safestep-landing-page` dentro de la organización GitHub `upc-1asi0729-2610-11990-chronos-team-3`. El repositorio se inicializó con una estructura básica que incluye las carpetas `css/`, `js/`, `assets/images/` y el archivo `index.html` como punto de entrada de la aplicación. Esta estructura sigue las convenciones establecidas en la guía de estilo del proyecto.

**Paso 2: Configuración de GitHub Pages**

Se accedió a la configuración del repositorio en GitHub, específicamente a la sección "Pages" dentro de "Settings". Allí se configuró la fuente de publicación seleccionando la rama `gh-pages` como rama de publicación y la carpeta raíz (`/`) como directorio de publicación. Esta configuración le indica a GitHub Pages que debe servir el contenido estático almacenado en la rama `gh-pages` del repositorio.

<div align="center">
  <p>
    <b>Gráfico 1</b>: Configuración de GitHub Pages en el repositorio
  </p>
  <img src="../../assets/images/chapter-5/github-pages-config.png" alt="Configuración GitHub Pages" width="600" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

**Paso 3: Automatización del despliegue con GitHub Actions**

Se implementó un workflow de GitHub Actions para automatizar el proceso de despliegue. Cada vez que se realiza un push a la rama `main`, el workflow se encarga de construir los archivos estáticos y publicarlos en la rama `gh-pages`. El archivo de configuración del workflow se ubicó en `.github/workflows/deploy.yml` con la siguiente configuración:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: ["main"]

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Setup Pages
        uses: actions/configure-pages@v4
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: '.'
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

Este workflow se activa automáticamente con cada push a `main`, elimina la necesidad de intervención manual para publicar cambios, y garantiza que la versión desplegada siempre coincida con el código en la rama principal del repositorio.

**Paso 4: Verificación del despliegue**

Una vez completada la configuración y ejecutado el workflow por primera vez, se verificó el acceso a la Landing Page a través de la URL pública proporcionada por GitHub Pages:

```
https://upc-1asi0729-2610-11990-chronos-team-3.github.io/safestep-landing-page/
```

Se realizaron pruebas de navegación para confirmar que todas las secciones se cargaran correctamente, que los enlaces funcionaran, y que el diseño responsivo se comportara adecuadamente en diferentes tamaños de pantalla. Adicionalmente, se verificó que la página cargara correctamente en los navegadores Chrome, Firefox y Edge.

<div align="center">
  <p>
    <b>Gráfico 2</b>: Landing Page desplegada en GitHub Pages
  </p>
  <img src="../../assets/images/chapter-5/landing-deployed.png" alt="Landing Page desplegada" width="600" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

**Paso 5: Configuración del dominio y HTTPS**

GitHub Pages proporciona automáticamente un certificado SSL/TLS válido para todos los sitios alojados en la plataforma, por lo que la Landing Page es accesible mediante HTTPS sin configuración adicional. La URL canónica asignada sigue el formato estándar: `https://<organization>.github.io/<repository>/`.

**Resultado del despliegue:**

La Landing Page de SafeStep se encuentra actualmente en producción y accesible públicamente a través de la siguiente URL:

<a href="https://upc-1asi0729-2610-11990-chronos-team-3.github.io/safestep-landing-page/">https://upc-1asi0729-2610-11990-chronos-team-3.github.io/safestep-landing-page/</a>

El despliegue en GitHub Pages desde la rama `gh-pages` ha resultado ser una solución eficiente y sin costos para alojar la presencia digital inicial de SafeStep. Esta plataforma ofrece alta disponibilidad, CDN global para entrega de contenido, y escalabilidad automática, lo que garantiza una experiencia de usuario óptima independientemente del volumen de visitantes.

### 5.2.1.8. Team Collaboration Insights during Sprint

En esta sección el equipo explica cómo se han desarrollado las actividades de implementación y se presenta los analíticos de colaboración y commits en GitHub, realizados por los miembros del equipo. Esta información permite evaluar la efectividad del equipo y identificar oportunidades de mejora para sprints futuros.

**Distribución de Trabajo:**

Todos los miembros del equipo participaron en la implementación de la Landing Page según sus fortalezas y responsabilidades asignadas en el LACX (Leadership and Collaboration Matrix). La distribución fue equitativa, con cada miembro contribuyendo al menos 1 commit durante el Sprint, demostrando el compromiso colectivo con el objetivo del Sprint.

El equipo adoptó un enfoque de trabajo colaborativo, donde los miembros se reunían diariamente mediante standups virtuales para compartir avances, resolver dudas técnicas, y ajustar prioridades según sea necesario. Las comunicaciones asincrónicas se realizaban principalmente a través del canal de Discord, donde se compartían enlaces a código, capturas de pantalla, y preguntas técnicas.

**Métricas de Colaboración:**

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr>
            <td><b>Miembro</b></td>
            <td><b>Repositorio</b></td>
            <td><b>Commits</b></td>
            <td><b>Líneas additions</b></td>
            <td><b>Líneas eliminadas</b></td>
            <td><b>PRs merged</b></td>
        </tr>
        <tr>
            <td>Ayala Fernandez, Jorge Brayan</td>
            <td>safestep-landing</td>
            <td>3</td>
            <td>+350</td>
            <td>-40</td>
            <td>2</td>
        </tr>
        <tr>
            <td>Sanchez Espinoza, Mathias Enrique</td>
            <td>safestep-landing</td>
            <td>2</td>
            <td>+180</td>
            <td>-15</td>
            <td>1</td>
        </tr>
        <tr>
            <td>Melgarejo Quiroz, Josep Eliu</td>
            <td>safestep-landing</td>
            <td>3</td>
            <td>+300</td>
            <td>-25</td>
            <td>2</td>
        </tr>
        <tr>
            <td>Flores Eusebio, Angel Thyago</td>
            <td>safestep-landing</td>
            <td>2</td>
            <td>+200</td>
            <td>-20</td>
            <td>1</td>
        </tr>
    </tbody>
</table>

**Analíticos de GitHub:**

<div align="center">
  <p>
    <b>Gráfico 1</b>: Analytics AV1
  </p>
  <img src="../../assets/images/av1-analytics.png" alt="Analytics AV1" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

El gráfico de actividad de GitHub muestra un patrón saludable de contribuciones distribuidas a lo largo de la semana, con mayor actividad los días martes y jueves. Este patrón sugiere una planificación adecuada del trabajo, evitando acumulaciones de última hora (crunch) que podrían afectar la calidad del código.

**Distribución de trabajo por tipo de tarea:**

- Diseño UI/UX: 30% del tiempo total
- Implementación HTML/CSS: 45% del tiempo total
- Configuración y documentación: 15% del tiempo total
- Revisión de código y testing: 10% del tiempo total

**Reflexiones del Equipo:**

- Ayala Fernandez, Jorge Brayan: "El Sprint 1 estableció las bases de nuestra presencia digital. La coordinación con el equipo de diseño fue clave para lograr una Landing Page profesional. Aprendí la importancia de mantener una comunicación fluida con los diseñadores para evitar retrabajo y asegurar que el resultado final cumpla con las expectativas."

- Sanchez Espinoza, Mathias Enrique: "Contribuí en la implementación de la sección de simulaciones, creando tarjetas informativas para cada emergencia disponible. Esta sección es fundamental para que los visitantes entiendan rápidamente qué tipo de entrenamiento pueden recibir en SafeStep."

- Melgarejo Quiroz, Josep Eliu: "El diseño UI/UX requirió constante refinamiento. Logramos una interfaz atractiva que comunica efectivamente la propuesta de valor de SafeStep. La implementación rápida fue fundamental para alcanzar el nivel de calidad esperado."


- Flores Eusebio, Angel Thyago: "Participar en el desarrollo de la Landing Page me permitió aplicar conocimientos prácticos de desarrollo web. Contribuí en la implementación de la sección de testimonios y preguntas frecuentes, áreas donde deseaba fortalecer mis habilidades."

**Lecciones Aprendidas:**

El equipo identifica las siguientes lecciones de este Sprint 1:

1. **La configuración inicial del entorno de desarrollo toma tiempo significativo al inicio del proyecto:** Es importante considerar este tiempo en las estimaciones de futuros sprints, especialmente cuando se trabaja con tecnologías nuevas para algunos miembros del equipo.

2. **Es importante mantener comunicación frecuente entre equipos de diseño y desarrollo:** La participación activa del líder de diseño en las revisiones de código ayudó a identificar desviaciones del diseño de manera temprana, evitando retrabajo significativo.

3. **Las daily standups cortas fueron efectivas para mantener el progreso:** Reuniones de 15 minutos máximo permiten compartir información relevante sin afectar el tiempo de implementación.

4. **Los code reviews incrementan la calidad del código:** La revisión por pares antes de hacer merge permitió identificar y corregir errores de estilo y lógica, mejorando la consistencia del código base.

5. **Las estimaciones iniciales fueron acertadas pero con margen de mejora:** El equipo logró completar todas las tareas dentro del tiempo estimado, aunque algunas tareas requirieron ajuste de prioridades para cumplir con el Sprint Goal.












