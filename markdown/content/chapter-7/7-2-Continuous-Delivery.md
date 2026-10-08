# 7.2. Continuous Delivery

La entrega continua extiende la integración continua de 7.1 hasta dejar un artefacto **desplegable y verificado**: cada ejecución exitosa del pipeline produce una imagen Docker del backend etiquetada con el número de ejecución, que ya fue probada ejecutándose dentro de un contenedor con una base de datos PostgreSQL. A partir de esa imagen cualquier entorno puede desplegarse sin recompilar.

## 7.2.1. Tools and Practices

**Herramientas**

| Herramienta | Rol en la entrega continua |
|-------------|----------------------------|
| Jenkins (`Jenkinsfile`) | Ejecuta las etapas de entrega a continuación de las de integración |
| Docker | Construye la imagen del backend con el `Dockerfile` de varias etapas y ejecuta los contenedores del entorno de verificación |
| Imagen `eclipse-temurin:26-jre` | Base ligera de ejecución de la imagen final |
| PostgreSQL 18 (`postgres:18-alpine`) | Base de datos desechable del entorno de verificación |
| Karate | Suite de verificación que se ejecuta contra la imagen construida |
| Docker Hub | Registro de destino de la imagen (publicación opcional mediante la credencial `DOCKER_HUB_CREDENTIALS`) |

**Prácticas**

- **Construir una vez, desplegar el mismo artefacto.** La imagen se construye en una etapa y es esa misma imagen la que se prueba y, si se publica, la que se despliega; no se recompila para cada entorno.
- **Versionado inmutable.** Cada imagen lleva la etiqueta del número de ejecución de Jenkins (`safestep-backend:4`) y además `latest`, lo que permite volver a una versión anterior con solo desplegar su etiqueta.
- **Configuración por variables de entorno.** La imagen arranca con el perfil `prod` y recibe del entorno la conexión a la base de datos (`DATABASE_URL`, `DATABASE_PORT`, `DATABASE_NAME`, `DATABASE_USER`, `DATABASE_PASSWORD`), el secreto JWT (`JWT_SECRET`), el administrador inicial (`SAFESTEP_ADMIN_USERNAME`, `SAFESTEP_ADMIN_PASSWORD`) y las claves de Stripe. Ningún secreto se guarda en la imagen ni en el repositorio.
- **Entorno de verificación efímero y reproducible.** El entorno se crea y destruye en cada ejecución, con credenciales generadas al azar, de modo que no deja estado entre ejecuciones y siempre parte de una base de datos vacía poblada por la semilla (`safestep-seed.json`).
- **Publicación explícita.** Publicar en un registro es una decisión, no un efecto automático de cada ejecución: la etapa de publicación solo corre cuando se marca el parámetro `PUSH_IMAGE`.
- **Pruebas de la imagen, no solo del código.** La verificación se hace contra el contenedor real, con el perfil de producción y PostgreSQL, que es lo que más se parece al entorno final.

## 7.2.2. Stages Deployment Pipeline Components

Las etapas de entrega corresponden a las etapas 7 a 10 del pipeline descrito en 7.1.2.

| Etapa | Descripción | Resultado de la ejecución #4 |
|-------|-------------|------------------------------|
| Package Project | `mvn package -DskipTests` genera `safestep-platform-1.0.0.jar` y lo archiva con su huella digital | SUCCESS, 13 s |
| Build Docker Image | `docker build -t safestep-backend:<n> -t safestep-backend:latest .` compila el JAR dentro de la imagen y deja una imagen de ejecución con JRE 26 | SUCCESS, 2 s con capas en caché (2 min 57 s la primera vez) |
| API Tests (Karate) | Crea el entorno de verificación, espera a que la API responda y ejecuta la suite Karate; siempre elimina los contenedores y archiva el registro del contenedor de la API (`api-container.log`) | SUCCESS, 45 s, 36 de 36 escenarios |
| Publish Docker Image | Inicia sesión en Docker Hub con la credencial `DOCKER_HUB_CREDENTIALS`, etiqueta la imagen con el usuario del registro y la publica con la etiqueta del número de ejecución y con `latest` | No ejecutada: requiere cuenta y credencial de Docker Hub del equipo |

**Detalle de la etapa de verificación (API Tests):**

1. Se crea, si no existe, la red `spring-postgres-net` compartida con Jenkins.
2. Se inicia un contenedor `postgres:18-alpine` con una base `safestep` y se espera con `pg_isready`.
3. Se inicia la imagen recién construida con `SPRING_PROFILES_ACTIVE=prod`, el nombre del contenedor de PostgreSQL como `DATABASE_URL`, un `JWT_SECRET` aleatorio y un administrador inicial con clave aleatoria.
4. Se consulta un endpoint protegido hasta obtener HTTP 401, señal de que la aplicación arrancó y la seguridad está activa (hasta 3 minutos).
5. Se ejecuta la suite Karate (`api-tests`) apuntando a `http://<contenedor>:8092`.
6. En todos los casos se archivan los reportes y el registro del contenedor y se eliminan ambos contenedores.

**Estado de la publicación.** La etapa de publicación está implementada pero no se ha ejecutado porque depende de credenciales del equipo que no deben incluirse en el repositorio: la cuenta de Docker Hub y su credencial en Jenkins (`DOCKER_HUB_CREDENTIALS`, de tipo usuario y contraseña, según la guía del curso). Para activarla basta crear la credencial en Jenkins, ajustar `REGISTRY_USER` en el `Jenkinsfile` y ejecutar el job con `PUSH_IMAGE` activado.
