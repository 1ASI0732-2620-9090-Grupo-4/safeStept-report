# 5.1. Software Configuration Management

Este apartado describe la configuración **del proyecto actual**. El capítulo 5 anterior se conserva en `Capitulo5antiguo` como antecedente; sus versiones, tableros, repositorios y despliegues no se atribuyen a esta entrega sin una comprobación nueva. La solución disponible consta de una landing page estática, una aplicación web Angular y una API Spring Boot con PostgreSQL. La aplicación Android nativa está en desarrollo y se reporta por separado.

## 5.1.1. Software Development Environment Configuration

La tabla distingue productos constatados en el código o en este entorno de herramientas previstas para la siguiente iteración. «Disponible» no equivale a una evidencia de uso por todos los integrantes.

| Actividad | Producto y versión constatada | Propósito | Referencia | Estado |
|---|---|---|---|---|
| Gestión de proyecto y requisitos | GitHub Issues/Projects; Trello (histórico) | Historias, tareas, revisión y tablero de sprint | [GitHub](https://github.com/1ASI0732-2620-9090-Grupo-4); [Trello](https://trello.com) | Falta tablero público del curso actual |
| Diseño UX/UI | Figma; Miro/UXPressia según artefacto | Prototipos, escenarios y personas | [Figma](https://www.figma.com); [Miro](https://miro.com); [UXPressia](https://uxpressia.com) | Verificar enlaces de los artefactos actuales |
| Landing page | HTML5, CSS3 y JavaScript | Página pública sin *build* ni gestor de paquetes | [Repositorio Landing](https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-landing-page) | Código disponible |
| Aplicación web | Angular 21.2.12, TypeScript 5.9.2, Angular Material 21.2.10 | Interfaz, navegación y consumo de la API | [Repositorio Frontend](https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-frontend) | Versiones declaradas en `package.json` |
| Entorno web | Node.js 24.15.0, npm 11.12.1 (equipo inspeccionado) | Instalar dependencias y ejecutar `npm run build` / `npm test` | [Node.js](https://nodejs.org) | Versión local; el proyecto declara npm 11.13.0 |
| API | Java 26.0.1, Maven 3.9.16, Spring Boot 4.0.6 | Compilación, API REST y pruebas | [Repositorio Backend](https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-backend) | Java/Spring verificados en `pom.xml` y entorno local |
| Persistencia | PostgreSQL; cliente local 18.4 | Datos transaccionales de la API | [PostgreSQL](https://www.postgresql.org) | El proveedor de producción debe confirmarse |
| Documentación API | springdoc OpenAPI 3.0.3 / Swagger UI | Contratos y prueba interactiva de endpoints | [OpenAPI](https://spec.openapis.org/oas/latest.html) | Dependencia declarada en `pom.xml`; URL pública pendiente de verificar |
| Pruebas web/API | Vitest 4.0.8; Spring Boot Starter Test / JUnit | Pruebas automatizadas y resultados reproducibles | [Vitest](https://vitest.dev); [JUnit](https://junit.org/junit5/) | Dependencias declaradas; resultados en 5.2 y capítulo VI |
| Android nativo | SDK 37, Android Gradle Plugin 9.3.2, Kotlin Compose Compiler 2.3.21, Gradle 9.5 | Implementar y probar la app móvil | Proyecto local `safestept-android`; [Android Developers](https://developer.android.com) | Proyecto creado; ejecución integrada y publicación pendientes |
| Control de versiones | Git/GitHub | Ramas, PR, commits y versiones | [Git](https://git-scm.com); [GitHub](https://github.com) | Cuatro repositorios previos y proyecto Android local disponibles |
| Despliegue | Docker y configuración de GitHub Pages del frontend | Empaquetado y publicación | [Docker](https://docs.docker.com); [GitHub Pages](https://pages.github.com) | Los destinos actuales deben verificarse antes de afirmar despliegue |

Las versiones del equipo de un integrante no constituyen un requisito universal: cada persona debe registrar en su entorno las versiones compatibles con los manifiestos del proyecto. No se utilizarán credenciales personales ni URL internas de bases de datos como «ruta de referencia» del software.

## 5.1.2. Source Code Management

El trabajo actual se aloja en la organización [1ASI0732-2620-9090-Grupo-4](https://github.com/1ASI0732-2620-9090-Grupo-4). Los repositorios de la organización antigua citados en `Capitulo5antiguo` son exclusivamente evidencia histórica.

| Producto | Repositorio actual | Rama local observada al preparar esta sección |
|---|---|---|
| Informe | [safeStept-report](https://github.com/1ASI0732-2620-9090-Grupo-4/safeStept-report) | `develop` |
| Landing page | [safestept-landing-page](https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-landing-page) | `main` |
| Frontend web | [safestept-frontend](https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-frontend) | `main` |
| API | [safestept-backend](https://github.com/1ASI0732-2620-9090-Grupo-4/safestept-backend) | `main` |
| Android | Repositorio Git local `safestept-android`; remoto de la organización por crear y enlazar | `main` sin commits |

**Flujo acordado:** `main` recibe versiones publicables; `develop` integra cambios revisados; cada historia usa `feature/<id>-<descripcion-en-kebab-case>` desde `develop`; las estabilizaciones usan `release/vMAJOR.MINOR.PATCH` y las correcciones urgentes `hotfix/vMAJOR.MINOR.PATCH`. Una PR debe referir la historia, describir la prueba ejecutada y recibir al menos una revisión distinta de su autor antes de fusionarse. Las ramas `develop` aún no están constatadas en los tres repositorios de producto, por lo que esta política es una **configuración pendiente**, no una práctica ya demostrada.

Los mensajes siguen Conventional Commits, por ejemplo `feat(simulation): show attempt feedback`, `fix(auth): handle expired token` y `test(analytics): cover empty progress`. Los *releases* usan Semantic Versioning `MAJOR.MINOR.PATCH`; un número solo se declara liberado si existe el tag y un artefacto verificable. No se asignarán a los repositorios nuevos fechas, autores, PR o commits heredados de la organización anterior.

## 5.1.3. Source Code Style Guide & Conventions

Las claves, nombres de clases, métodos, rutas y mensajes técnicos se escriben en inglés. La UI se localiza a `en` y `es` mediante recursos, sin mezclar cadenas de presentación en la lógica. Se conserva el idioma inglés como valor por defecto exigido por el statement, con revisión específica de la landing page, que aún declara `lang="es"`.

| Tecnología | Convención comprobable |
|---|---|
| HTML/CSS/JavaScript | HTML semántico; atributos ARIA solo cuando aportan significado; clases CSS en `kebab-case`; variables CSS para tokens; JS en `camelCase`; enlaces y controles accesibles por teclado. |
| TypeScript/Angular | `PascalCase` para tipos/componentes, `camelCase` para miembros, `kebab-case` para rutas/archivos; tipado explícito en contratos; separar dominio, aplicación, infraestructura y presentación; ejecutar `npm run build` y `npm test`. Formato conforme a `.prettierrc` y `.editorconfig` del repositorio. |
| Java/Spring Boot | Paquetes en minúsculas, clases en `PascalCase`, métodos/campos en `camelCase`; DTO de entrada validados; reglas de negocio fuera de controladores; ejecutar `mvn test` y compilar el artefacto. |
| Kotlin/Android | Los mismos criterios de nombres Kotlin; estados UI separados del acceso a datos; textos en recursos localizables; pruebas unitarias y de interfaz Compose antes del APK. |
| SQL | Tablas/columnas en `snake_case`, PK y FK explícitas, sin contraseñas ni datos personales en scripts de ejemplo. |
| Gherkin | `Feature`, `Scenario`, `Given/When/Then` con comportamiento observable, uno por intención de negocio; enlazar cada escenario a una User Story. Los archivos `.feature` aún no están presentes en los repositorios actuales. |

El statement menciona guías Vue y C# porque prescribe esas tecnologías. El equipo conserva Angular y Spring Boot por decisión de proyecto, pero **requiere confirmar con el docente** la aceptación de esta desviación; el informe no debe afirmar conformidad técnica completa antes de ello.

## 5.1.4. Software Deployment Configuration

El procedimiento siguiente describe pasos reproducibles; la existencia de código o configuraciones no demuestra por sí sola una publicación vigente. Los enlaces del capítulo anterior deben comprobarse y sustituirse por los de la organización actual.

1. **Landing:** revisar `index.html`, `about.html`, `styles.css`, `script.js` y recursos; verificar enlaces, idioma, navegación responsive y acuerdo SaaS; publicar la rama/version seleccionada en GitHub Pages; guardar URL, commit, fecha y captura desktop/móvil.
2. **Web:** instalar con `npm ci`; ejecutar `npm test -- --watch=false` y `npm run build`; configurar la URL de API para producción mediante los archivos `src/environments`; desplegar el resultado en GitHub Pages con el `base-href` del repositorio; verificar rutas directas, autenticación, simulación, progreso y estados de error.
3. **API:** ejecutar `mvn test` y empaquetar con Docker; definir `SPRING_PROFILES_ACTIVE=prod` y `PORT`. Inyectar `DATABASE_URL`, `DATABASE_PORT`, `DATABASE_NAME`, `DATABASE_USER`, `DATABASE_PASSWORD` y `JWT_SECRET` desde el proveedor, nunca desde Git. Stripe solo debe configurarse con claves de **prueba** para el piloto (`STRIPE_SECRET_KEY`, `STRIPE_WEBHOOK_SECRET`). Comprobar acceso a base de datos, `/v3/api-docs` y flujos API antes de publicar su URL.
4. **Android:** compilar, probar y generar un APK de prueba firmado para distribución interna; configurar el `baseUrl` del entorno de prueba sin colocar credenciales en el APK; instalar en dispositivo/emulador y registrar versión, huella del artefacto, capturas y resultados. No se publicará en tienda sin nueva revisión.
5. **Reversión:** conservar el commit/tag y artefacto de la versión anterior; ante fallo, volver a la versión previamente validada y verificar los flujos principales. No revertir una base de datos con cambios destructivos sin plan de restauración específico.

**Hallazgo de seguridad al auditar esta sección:** el perfil de producción del backend contenía valores sensibles de respaldo y el Dockerfile iniciaba con el perfil `dev`. La configuración local se corrigió para exigir variables de entorno y activar `prod`. Las credenciales que hayan figurado en el historial deben rotarse por el responsable del servicio; editar el archivo no borra su exposición histórica. Los resultados de publicación y verificación se registrarán en 5.2, no se presumirán aquí.
