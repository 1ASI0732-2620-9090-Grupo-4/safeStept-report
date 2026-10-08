# 7.1. Continuous Integration

La integración continua de SafeStep se implementa con **Jenkins**, siguiendo la arquitectura del material del curso: Jenkins y SonarQube se ejecutan como contenedores Docker en una red compartida y el pipeline se define como código en un `Jenkinsfile` versionado junto al backend. Cada ejecución del pipeline parte del código de la rama `develop`, lo compila, mide su estilo, ejecuta todas las pruebas, verifica la cobertura, lo analiza con SonarQube, genera el artefacto, construye la imagen Docker y prueba esa imagen con la suite de API.

## 7.1.1. Tools and Practices

**Herramientas**

| Herramienta | Versión | Rol en la integración continua |
|-------------|---------|--------------------------------|
| Jenkins | LTS sobre JDK 25 (imagen `safestep-jenkins:1.0`) | Orquesta el pipeline declarativo; plugins: Pipeline, Git, Pipeline Stage View, SonarQube Scanner, Job DSL y Configuration as Code |
| Docker y Docker Compose | 29.6 | Ejecutan Jenkins, SonarQube, PostgreSQL y la imagen de la API; el contenedor de Jenkins usa el daemon del anfitrión mediante `/var/run/docker.sock` |
| Maven | 3.9.11 | Compilación, pruebas, cobertura y análisis |
| JDK Eclipse Temurin | 26 | Compila y prueba el backend (se instala en la imagen de Jenkins y se selecciona con `JAVA_HOME_26`) |
| Checkstyle | 14.3.0 (reglas de Google) | Reporte de estilo |
| JUnit Jupiter, Mockito, Cucumber, Karate | ver 6.1 | Suites de prueba que ejecuta el pipeline |
| JaCoCo | 0.8.15 | Cobertura y umbral de 80 % |
| SonarQube Community Build | 26.9 | Análisis de calidad y seguridad con Quality Gate |
| PostgreSQL | 18 (imagen `postgres:18-alpine`) | Base de datos desechable para las pruebas de API |

**Prácticas**

- **Pipeline como código.** El `Jenkinsfile` está en la raíz de `safeStept-backend`; los cambios al pipeline se revisan y versionan como cualquier otro cambio.
- **Infraestructura como código.** La carpeta `ci/` contiene el `Dockerfile` de Jenkins, `plugins.txt`, el `docker-compose.yml` y `casc.yaml`, que configura Jenkins con *Configuration as Code*: usuario administrador, servidor SonarQube (`MiSonarServer`), credencial del token (`sonarqube-token-id`) y el job `safestep-backend`, que se crea solo al iniciar. El script `ci/start-ci.sh` levanta ambos servicios, genera el token de análisis, registra el webhook y arranca Jenkins; las claves generadas se guardan en `ci/.env`, que Git ignora.
- **Fallar rápido.** Las etapas están ordenadas de la más barata a la más costosa y una etapa fallida detiene las siguientes.
- **Un único origen de verdad para las reglas de calidad.** Las exclusiones de cobertura de JaCoCo y de SonarQube son las mismas.
- **Pruebas aisladas.** Las pruebas BDD usan H2 en memoria y las de API usan un PostgreSQL desechable, de modo que nunca tocan datos de desarrollo ni producción.
- **Evidencia conservada.** Cada etapa archiva sus reportes (resultados JUnit, Checkstyle, JaCoCo, Cucumber, Karate y el JAR) como artefactos de la ejecución.
- **Secretos fuera del repositorio.** Las credenciales de Jenkins y SonarQube se generan en cada instalación, la clave de Stripe se lee de la variable `STRIPE_SECRET_KEY` y la publicación en Docker Hub usa una credencial de Jenkins (`DOCKER_HUB_CREDENTIALS`).
- **Flujo de ramas.** Jenkins construye `develop`; los cambios llegan desde ramas `feature/*` con Conventional Commits, tal como se describe en 5.1.2.

## 7.1.2. Build & Test Suite Pipeline Components

El pipeline completo tiene las etapas siguientes. Los tiempos corresponden a la ejecución #4 en Jenkins (4 min 37 s de principio a fin, resultado **SUCCESS**).

| # | Etapa | Comando | Qué verifica o produce | Si falla | Tiempo |
|---|-------|---------|------------------------|----------|--------|
| 1 | Checkout SCM | Git | Descarga el `Jenkinsfile` y el código de `develop` | Se detiene | 1 s |
| 2 | Compile Project | `mvn clean compile` | El proyecto compila con JDK 26 | Se detiene | 46 s |
| 3 | Checkstyle Report | `mvn checkstyle:checkstyle` | Reporte de estilo con reglas de Google (`checkstyle-result.xml`) | No detiene (modo reporte, ver 6.1 y 5.1.3.5) | 22 s |
| 4 | Unit and BDD Tests | `mvn test` | 201 pruebas unitarias y de integración más 33 escenarios Cucumber; resultados JUnit y reporte Cucumber | Se detiene | 1 min 8 s |
| 5 | Validate Test Coverage | `mvn jacoco:check` | Cobertura de instrucciones ≥ 80 % sobre las clases medidas (resultado: 93.8 %) | Se detiene | 4 s |
| 6 | SonarQube Analysis | `mvn sonar:sonar` + `waitForQualityGate()` | Envía el análisis y espera el webhook de SonarQube con el resultado del Quality Gate | Se detiene si el gate no es `OK` | 48 s |
| 7 | Package Project | `mvn package -DskipTests` | Genera `safestep-platform-1.0.0.jar`, que se archiva con huella digital | Se detiene | 13 s |
| 8 | Build Docker Image | `docker build` | Imagen `safestep-backend:<n.º de ejecución>` y `latest` | Se detiene | 2 s (con capas en caché) |
| 9 | API Tests (Karate) | contenedores + `mvn test` en `api-tests` | Levanta PostgreSQL y la imagen recién construida y ejecuta los 36 escenarios Karate contra ese contenedor; luego elimina ambos | Se detiene (los contenedores se eliminan siempre) | 45 s |
| 10 | Publish Docker Image | `docker push` | Publica la imagen en Docker Hub; solo si el parámetro `PUSH_IMAGE` es verdadero | — | No ejecutada |

<div align="center">
  <img src="../../assets/images/chapter-7/jenkins-pipeline-stage-view.png" alt="Stage View del pipeline de Jenkins"/>
  <p><i><b>Figura 7.1.1.</b> Vista de etapas del job <code>safestep-backend</code> en Jenkins con el historial de ejecuciones. <b>Fuente</b>: Elaboración propia</i></p>
</div>

**Historial de ejecuciones.** La ejecución #1 falló porque Jenkins bloquea por seguridad los checkouts de repositorios locales; se habilitó explícitamente (`hudson.plugins.git.GitSCM.ALLOW_LOCAL_CHECKOUT`) porque el job lee el repositorio montado desde el anfitrión. Las ejecuciones #2, #3 y #4 terminaron en SUCCESS. La primera ejecución que construyó la imagen desde cero tardó 2 min 57 s en esa etapa, que luego bajó a 2–4 s con las capas en caché.

**Integración con SonarQube.** La primera instalación usó la imagen `sonarqube:lts-community` (9.9) del material del curso. Su analizador de Java no puede leer la sintaxis moderna que usa el backend (`switch` con patrones y variables sin nombre `_`) y registró errores de análisis en tres archivos, por lo que el equipo cambió a la imagen vigente `sonarqube:community`, con la que el análisis termina sin errores de lectura. SonarQube notifica a Jenkins mediante el webhook `http://jenkins-master:9089/sonarqube-webhook/`, y `waitForQualityGate()` retoma el pipeline cuando llega el resultado.

<div align="center">
  <img src="../../assets/images/chapter-7/sonarqube-dashboard.png" alt="Panel de SonarQube del backend"/>
  <p><i><b>Figura 7.1.2.</b> Panel de SonarQube del backend SafeStep (código completo). <b>Fuente</b>: Elaboración propia</i></p>
</div>

| Métrica de SonarQube | Valor |
|----------------------|-------|
| Líneas de código | 9,854 en 370 archivos |
| Quality Gate (Sonar way) | **Aprobado** |
| Cobertura | 91.7 % sobre 974 líneas medibles |
| Duplicación | 1.0 % |
| Vulnerabilidades | 2 (calificación de seguridad D) |
| Bugs | 3 (la calificación de fiabilidad es B, con 7 incidencias de fiabilidad) |
| Code smells | 207 (calificación de mantenibilidad A) |
| Hotspots de seguridad | 0 |

El Quality Gate «Sonar way» evalúa únicamente el **código nuevo**; como este fue el primer análisis del proyecto no hay código nuevo que evaluar y el gate aprueba. Por eso las incidencias existentes se tratan como deuda técnica y se listan a continuación en lugar de ocultarse.

**Hallazgos de seguridad y fiabilidad (6.2.1.2):**

| Tipo | Gravedad | Regla | Archivo | Descripción | Valoración del equipo |
|------|----------|-------|---------|-------------|-----------------------|
| Vulnerabilidad | Crítica | `java:S4502` | `WebSecurityConfiguration` | La protección CSRF de Spring Security está deshabilitada | Aceptable en esta API: es *stateless*, autentica con JWT en el encabezado `Authorization` y no usa cookies de sesión; debe marcarse como revisada |
| Vulnerabilidad | Mayor | `java:S5122` | `WebSecurityConfiguration` | CORS permite cualquier origen (`*`) | Real: conviene restringirlo a los dominios del frontend desplegado y de desarrollo antes de producción |
| Bug | Menor | `java:S2184` | `StripeCheckoutClientImpl` | Posible desbordamiento en una resta de enteros que se convierte a `long` | Real y de bajo riesgo: convertir un operando a `long` |
| Bug | Menor | `java:S2637` | `ErrorResponseAssembler` (2) | Se devuelve `null` desde métodos marcados como no nulos (`@NullMarked`) | Real: devolver `Optional` o anotar el retorno como anulable |

<div align="center">
  <img src="../../assets/images/chapter-7/sonarqube-issues.png" alt="Incidencias de seguridad y fiabilidad en SonarQube"/>
  <p><i><b>Figura 7.1.3.</b> Vulnerabilidades y bugs reportados por SonarQube. <b>Fuente</b>: Elaboración propia</i></p>
</div>

Estas incidencias no se corrigieron en este hito para mantener el alcance del sprint en las pruebas y el pipeline; quedan registradas para el siguiente sprint, junto con el defecto de la respuesta 500 ante JSON mal formado descrito en 6.1.2.

**Reportes y artefactos de cada ejecución.**

<div align="center">
  <img src="../../assets/images/chapter-7/jenkins-build-artifacts.png" alt="Artefactos de la ejecución en Jenkins"/>
  <p><i><b>Figura 7.1.4.</b> Página de la ejecución #4 con sus artefactos archivados (JAR, Checkstyle, JaCoCo, Cucumber, Karate). <b>Fuente</b>: Elaboración propia</i></p>
</div>

**Cómo reproducir el entorno de CI:**

```bash
cd safeStept-backend/ci
bash start-ci.sh          # SonarQube :9000, Jenkins :9089 (usuario admin, clave en ci/.env)
```

Jenkins ejecuta el job `safestep-backend` sobre la rama `develop`; también puede iniciarse manualmente desde la interfaz con *Build with Parameters*.
