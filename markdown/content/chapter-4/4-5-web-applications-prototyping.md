<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-4/capitulo-4.png" alt="Capitulo 4" />
</div>

<br>
<br>

# 4.5. Web Applications Prototyping

Esta sección incluye Prototipos de UI para Desktop y Mobile Web Browser con simulación de interacción y navegación, acorde con la propuesta de paths de User Flow Diagrams. Esta sección inicia con una introducción en la que se explica los principales criterios para las decisiones de interacción. Es importante evidenciar la relación con las decisiones de arquitectura de información, en particular sobre el sistema de navegación y los tipos de interacciones seleccionadas. Para cada caso debe incluirse 1 screenshot de video y un enlace a un video subido a Microsoft Stream para cada aplicación, en el que se demuestre y explique los principales flujos de interacción que cubren los prototipos.

## 4.5.1. Introducción al Prototipado

El prototipado de SafeStep representa la culminación del proceso de diseño, donde las decisiones abstractas de arquitectura, wireframes y mockups se traducen en experiencias interactivas funcionales. Los prototipos demuestran cómo los usuarios realmente interactuarán con la aplicación, revelando aspectos que no son evidentes en representaciones estáticas.

### 4.5.1.1. Objetivos del Prototipado

Los prototipos de SafeStep cumplen varios objetivos fundamentales:

**Validación de Interacción:**
- Los prototipos permiten probar que los flujos de interacción funcionan como se anticipó
- Se identifican fricciones y puntos de confusión antes del desarrollo
- Los usuarios pueden proporcionar feedback sobre la experiencia real

**Comunicación con Desarrolladores:**
- Los prototipos sirven como especificación técnica para desarrolladores
- Muestran exactamente cómo deben comportarse los elementos
- Reducen la brecha entre diseño y implementación

**Demostración de Valor:**
- Los prototipos permiten stakeholders visualizar el producto final
- Facilitan la validación con usuarios y patrocinadores
- Crean hype y expectativa positiva

### 4.5.1.2. Criterios de Interacción

Las decisiones de interacción en los prototipos de SafeStep siguen criterios específicos:

#### Facilidad de Uso

- Cada interacción es discoverable (el usuario sabe que puede interactuar)
- Los resultados de las acciones son predecibles
- Los errores son difíciles de cometer y fáciles de recover

#### Consistencia

- Patrones de interacción similares a través de la aplicación
- Elementos similares se comportan de manera similar
- La experiencia es predecible una vez aprendido el patrón

#### Eficiencia

- Las acciones frecuentes son rápidas de realizar
- El número de pasos para desarrollarlo es mínimo
- Los atajos están disponibles para usuarios experimentados

#### Retroalimentación

- Toda acción tiene respuesta visual inmediata
- Los estados de carga se comunican claramente
- El usuario siempre sabe dónde está y qué puede hacer

### 4.5.1.3. Relación con Arquitectura de Información

Los prototipos evidencian las decisiones de arquitectura de información tomadas en la sección 4.2:

**Sistema de Navegación:**
- El header sticky proporciona navegación constante
- Los breadcrumbs muestran ubicación y rutas de retorno
- La navegación lateral es accesible y predecible

**Organización de Contenido:**
- El contenido se agrupa según los esquemas definidos
- Las etiquetas son consistentes con el labeling system
- La jerarquía visual refleja la organización

**Búsqueda:**
- La búsqueda global es accesible desde cualquier vista
- Los filtros son claramente visibles y aplicables
- Los resultados se presentan según lo especificado

## 4.5.2. Prototipo Desktop

El prototipo desktop presenta la experiencia de escritorio completa, optimizada para monitores de computadora y navegación con mouse/teclado.

### 4.5.2.1. Descripción General del Prototipo Desktop

El prototipo desktop de SafeStep recrea la experiencia completa en un factor de forma de escritorio tradicional. Las interacciones están optimizadas para navegación mediante puntero (mouse) y entrada de teclado.

#### Características Técnicas

**Resolución:**
- Optimizado para 1024px a 1920px de ancho
- Breakpoints: 1024, 1280, 1440, 1920
- escalable con diseño fluida

**Interacciones:**
- Hover states para feedback visual
- Click para activación
- Drag and drop donde aplica
- Keyboard navigation soporte completo

**Componentes Desktop:**

Las siguientes vistas están incluidas en el prototipo desktop:

1. **Dashboard** - Vista principal del usuario
2. **Learning Hub** - Navegación de módulos
3. **Lección** - Contenido de teoría/video
4. **Simulación** - Práctica interactiva
5. **Tienda** - Catálogo de productos
6. **Carrito** - Proceso de checkout
7. **Mi Perfil** - Configuración

### 4.5.2.2. Prototipo Desktop - Dashboard

El prototipo del dashboard muestra la pantalla principal después del login:

#### Screenshot de Referencia

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo desktop dashboard
  </p>
  <img src="../../assets/images/chapter-4/prototype-dashboard.png" alt="prototype" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Descripción Visual

El dashboard desktop muestra:
- Header con logo, búsqueda, notificaciones, avatar
- Sidebar izquierdo con navegación principal
- Área de contenido principal con:
  - Mensaje de bienvenida personalizado
  - Card de "Continuar aprendiendo" con progreso
  - Recomendaciones de módulos
  - Stats de progreso del usuario

#### Interacciones Demostradas

- Click en navegación sidebar cambia contenido
- Hover en cards muestra énfasis
- Click en "Continuar" lleva a última lección
- Click en recomendaciones lleva a módulos sugeridos
- Notificaciones dropdown con click
- Perfil dropdown con opciones

#### Explicación del Flujo

El flujo principal mostrado:
1. Usuario llega al dashboard
2. Ve progreso actual y recomendaciones
3. Decide continuar aprendiendo o explorar
4. Navegación le permite ir a cualquier sección
5. Notificaciones informan de updates

### 4.5.2.3. Prototipo Desktop - Simulación Interactiva

El prototipo de simulación muestra la experiencia de práctica:

#### Screenshot de Referencia

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo desktop simulación parte 1
  </p>
  <img src="../../assets/images/chapter-4/prototype-simulation-1.png" alt="prototype" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo desktop simulación parte 2
  </p>
  <img src="../../assets/images/chapter-4/prototype-simulation-2.png" alt="prototype" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo desktop simulación parte 3
  </p>
  <img src="../../assets/images/chapter-4/prototype-simulation-3.png" alt="prototype" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Descripción Visual

La página de simulación muestra:
- Header con indicador de progreso
- Área de escenario con situación
- Opciones de respuesta en formato de cards
- Botones de ayuda y controls

#### Interacciones Demostradas

- Click en opción selecciona respuesta
- Feedback inmediato (correcto/incorrecto)
- Botón "Siguiente" para avanzar
- Botón "Pista" muestra ayuda
- Timer counting down

#### Explicación del Flujo

El flujo de simulación:
1. Usuario selecciona simulación
2. Lee escenario inicial
3. Responde pregunta 1
4. Recibe feedback inmediato
5.Avanza a pregunta siguiente
6. Completa todas las preguntas
7. Ve resultados finales

### 4.5.2.4. Prototipo Desktop - Proceso de Compra

El prototipo de checkout muestra el flujo de compra:

#### Screenshot de Referencia

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo desktop proceso de compra parte 1
  </p>
  <img src="../../assets/images/chapter-4/prototype-store-1.png" alt="prototype" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo desktop proceso de compra parte 2
  </p>
  <img src="../../assets/images/chapter-4/prototype-store-2.png" alt="prototype" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo desktop proceso de compra parte 3
  </p>
  <img src="../../assets/images/chapter-4/prototype-store-3.png" alt="prototype" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo desktop proceso de compra parte 4
  </p>
  <img src="../../assets/images/chapter-4/prototype-store-4.png" alt="prototype" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo desktop proceso de compra parte 5
  </p>
  <img src="../../assets/images/chapter-4/prototype-store-5.png" alt="prototype" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Descripción Visual

El checkout muestra:
- Pasos claramente marcados (1. Carrito, 2. Envío, 3. Pago, 4. Confirmación)
- Lista de productos en carrito
- Forms de información
- Resumen de orden

#### Interacciones Demostradas

- Navegación entre pasos
- Validación de forms en tiempo real
- Aplicación de cupones
- Selección de método de pago
- Confirmación de orden

#### Explicación del Flujo

El flujo de compra:
1. Revisa items en carrito
2. Ingresa/confirma dirección
3. Selecciona método de pago
4. Revisa orden completa
5. Confirma y paga
6. Recibe confirmación

### 4.5.2.5. Video Prototipo Desktop

El video del prototipo desktop demuestra las interacciones principales:

#### Contenido del Video

El video incluye:
1. Recorrido por dashboard (0:00-0:30)
2. Navegación a módulos (0:30-1:00)
3. Completar una lección (1:00-2:00)
4. Práctica de simulación (2:00-3:00)
5. Exploración de tienda (3:00-4:00)
6. Proceso de compra (4:00-5:30)

#### Enlace de Video

<div align="center">
  <p>
    <b>Gráfico</b>: Video del prototipo desktop
  </p>
  <img src="../../assets/images/chapter-4/prototype-desktop-video.png" alt="prototype" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

Enlace del video: <a href="https://youtu.be/_nZcADweJ3k">https://youtu.be/_nZcADweJ3k</a>

## 4.5.3. Prototipo Mobile

El prototipo mobile presenta la experiencia optimizada para dispositivos táctiles, especialmente smartphones.

### 4.5.3.1. Descripción General del Prototipo Mobile

El prototipo mobile de SafeStep recrea la experiencia en formato móvil, considerando las limitaciones y fortalezas de dispositivos táctiles.

#### Características Técnicas

**Resolución:**
- Optimizado para 320px a 428px de ancho
- Breakpoints: 320, 375, 414, 428
- Viewport meta tag configurado correctamente

**Interacciones:**
- Touch para todas las acciones
- Swipe gestures para navegación
- Pull-to-refresh donde aplica
- Gestures de zoom disponibles

**Componentes Mobile:**

Las siguientes vistas están incluidas:

1. **Home Mobile** - Dashboard adaptado
2. **Aprendizaje Mobile** - Contenido vertical scroll
3. **Simulación Mobile** - Tarjetas táctiles
4. **Tienda Mobile** - Grid optimizado
5. **Checkout Mobile** - Forms verticales

### 4.5.3.2. Prototipo Mobile - Dashboard

El prototipo del dashboard móvil:

#### Screenshot de Referencia

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo mobile dashboard
  </p>
  <img src="../../assets/images/chapter-4/prototype-dashboard-mb.png" alt="prototype" width="300" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Descripción Visual

El dashboard móvil muestra:
- Header compacto con hamburger menú
- Contenido en layout vertical scroll
- Bottom navigation bar para acceso rápido
- Cards apiladas verticalmente

#### Interacciones Demostradas

- Hamburger menu abre drawer
- Pull down para refresh
- Scroll vertical estándar
- Bottom nav clicks cambian vista

### 4.5.3.3. Prototipo Mobile - Simulación

El prototipo de simulación móvil:

#### Screenshot de Referencia

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo mobile simulación parte 1
  </p>
  <img src="../../assets/images/chapter-4/prototype-simulation-1-mb.png" alt="prototype" width="300" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo mobile simulación parte 2
  </p>
  <img src="../../assets/images/chapter-4/prototype-simulation-2-mb.png" alt="prototype" width="300" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo mobile simulación parte 3
  </p>
  <img src="../../assets/images/chapter-4/prototype-simulation-3-mb.png" alt="prototype" width="300" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Descripción Visual

La simulación móvil muestra:
- Progreso en header
- Tarjetas de respuesta grandes (touch-friendly)
- Espacio suficiente entre opciones
- Botones de control accesibles

#### Interacciones Demostradas

- Tap simple en opciones
- Swipe entre preguntas (opcional)
- Botones grandes y táctiles
- Feedback visual claro

### 4.5.3.4. Prototipo Mobile - Tienda

El prototipo de tienda móvil:

#### Screenshot de Referencia

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo mobile proceso de compra parte 1
  </p>
  <img src="../../assets/images/chapter-4/prototype-store-1-mb.png" alt="prototype" width="300" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo mobile proceso de compra parte 2
  </p>
  <img src="../../assets/images/chapter-4/prototype-store-2-mb.png" alt="prototype" width="300" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo mobile proceso de compra parte 3
  </p>
  <img src="../../assets/images/chapter-4/prototype-store-3-mb.png" alt="prototype" width="300" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo mobile proceso de compra parte 4
  </p>
  <img src="../../assets/images/chapter-4/prototype-store-4-mb.png" alt="prototype" width="300" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

<div align="center">
  <p>
    <b>Gráfico</b>: Prototipo mobile proceso de compra parte 5
  </p>
  <img src="../../assets/images/chapter-4/prototype-store-5-mb.png" alt="prototype" width="300" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

#### Descripción Visual

La tienda móvil muestra:
- Product grid 2 columnas
- Filtros en sheet inferior
- Carrito en badge de header
- Checkout simplificado

### 4.5.3.5. Video Prototipo Mobile

El video del prototipo mobile demuestra las interacciones touch:

#### Contenido del Video

El video incluye:
1. App launch y splash (0:00-0:10)
2. Login en móvil (0:10-0:30)
3. Navegación bottom nav (0:30-1:00)
4. Exploración de módulos (1:00-1:30)
5. Completar lección móvil (1:30-2:30)
6. Tienda y compra (2:30-4:00)

#### Enlace de Video

<div align="center">
  <p>
    <b>Gráfico</b>: Video del prototipo mobile
  </p>
  <img src="../../assets/images/chapter-4/prototype-mobile-video.png" alt="prototype" width="500" />
  <p>
    <i><b>Fuente</b>: Elaboración propia.</i>
  </p>
</div>

Enlace del video: <a href="https://youtu.be/cFe5_H0TDsA">https://youtu.be/cFe5_H0TDsA</a>

## 4.5.4. Flujos de Interacción Principales

Los prototipos demuestran los flujos de interacción principales de SafeStep:

### 4.5.4.1. Flow: Onboarding

El flujo de onboarding introduce nuevos usuarios a la plataforma:

```
[1. Landing] -> [Clic "Comenzar"] -> [Registro] -> [Onboarding:
    | Seleccionar intereses] -> [Recomendaciones basadas] ->
    | [Dashboard]
```

**Puntos clave demostrados:**
- Proceso de registro fluido
- Personalización inicial
- Introducción suave a la plataforma

### 4.5.4.2. Flow: Aprendizaje

El flujo muestra cómo usuarios aprenden:

```
[1. Dashboard] -> [Ir a Aprender] -> [Seleccionar Módulo] ->
    | [Lección 1: Teoría] -> [Completar] ->
    | [Lección 1: Video] -> [Completar] ->
    | [Lección 1: Evaluación] -> [Completar] ->
    | [Certificado] -> [Siguiente Módulo]
```

**Puntos clave demostrados:**
- Progresión clara dentro de módulos
- Feedback después de cada etapa
- Motivación con certificado

### 4.5.4.3. Flow: Simulación

El flujo de práctica muestra interacción:

```
[1. Dashboard] -> [Simulaciones] -> [Seleccionar] ->
    | [Instrucciones] -> [Comenzar] ->
    | [Preguntas] -> [Respuestas] -> [Feedback] ->
    | [Resultados]
```

**Puntos clave demostrados:**
- Presión de tiempo (opcional)
- Feedback inmediato
- Aprender de errores

### 4.5.4.4. Flow: Compra

El flujo de compra evidencia el e-commerce:

```
[1. Tienda] -> [Productos] -> [Detalle] -> [Agregar] ->
    | [Carrito] -> [Checkout] -> [Pago] ->
    | [Confirmación] -> [Tracking]
```

**Puntos clave demostrados:**
- Proceso claro de checkout
- Confirmaciones en cada paso
- Acceso a seguimiento de orden

## 4.5.5. Herramientas Utilizadas

Los prototipos fueron creados usando las siguientes herramientas:

### Herramientas de Prototipado

- **Figma**: Herramienta principal para creación de prototipos
- **Principle**: Para micro-interacciones
- **Prototype**: Para prototipado avanzado
- **Adobe XD**: Alternativa para otras vistas

### Especificaciones Técnicas

El prototipo cumple con:
- HTML/CSS funcional
- JavaScript básico para interacciones
- Responsive adaptation
- Transiciones suaves 60fps
- Loading states apropiados






