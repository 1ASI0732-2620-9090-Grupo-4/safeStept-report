# 7.3. Continuous deployment

El despliegue continuo lleva a producción los artefactos verificados en 7.1 y 7.2. En SafeStep cada producto digital se publica en una plataforma distinta (ver 5.1.4); esta sección describe cómo se despliega cada uno, qué automatiza hoy el equipo y qué falta para que el despliegue del backend también lo dispare el pipeline de Jenkins.

## 7.3.1. Tools and Practices

**Herramientas**

| Producto | Plataforma | Mecanismo de despliegue | Configuración |
|----------|------------|--------------------------|---------------|
| Backend (Spring Boot) | Render | Render construye el servicio desde el repositorio del backend con su `Dockerfile` y lo ejecuta con el perfil `prod` | Variables de entorno en Render: `DATABASE_URL`, `DATABASE_PORT`, `DATABASE_NAME`, `DATABASE_USER`, `DATABASE_PASSWORD`, `JWT_SECRET`, `PORT`, `SPRING_PROFILES_ACTIVE=prod`, claves de Stripe |
| Base de datos | Render PostgreSQL | Servicio gestionado, conectado al backend por variables de entorno | Esquema administrado por Hibernate (`ddl-auto=update`) y datos iniciales con la semilla |
| Frontend (Angular) | GitHub Pages | GitHub Actions ejecuta pruebas, construye con `npm run build` y publica los archivos estáticos | Entorno de producción en `src/environments/environment.ts` apuntando al backend de Render |
| Landing page | GitHub Pages | GitHub Actions publica el sitio estático al hacer push a `main` | — |

**Prácticas**

- **El mismo `Dockerfile` en todos los entornos.** La imagen que Jenkins construye y prueba en 7.2 se basa en el mismo `Dockerfile` que usa Render, por lo que lo que se prueba es lo que se despliega. Para ello el `Dockerfile` ya no repite las pruebas al construir la imagen: las ejecuta antes el pipeline (`mvn -B clean package -DskipTests` dentro de la imagen).
- **Configuración y secretos por entorno.** Ninguna credencial de producción está en el repositorio; todas se inyectan como variables de entorno de la plataforma, y el perfil `prod` falla al arrancar si falta alguna.
- **Un entorno por perfil.** `application-dev.properties` (base de datos local) y `application-prod.properties` (todo por variables) separan desarrollo y producción.
- **Verificación posterior al despliegue.** Después de cada despliegue se realizan pruebas de humo sobre las URL públicas (Swagger UI del backend y página principal del frontend), como se establece en 5.1.4.3.2.
- **Reversión.** Se vuelve a la versión anterior volviendo a desplegar el commit previo en Render o, cuando se publique la imagen en un registro, la etiqueta anterior (ver 5.1.4.3.3).

## 7.3.2. Production Deployment Pipeline Components

**Flujo de despliegue a producción del backend:**

| Paso | Qué ocurre | Quién lo ejecuta | Estado |
|------|-----------|------------------|--------|
| 1 | Los cambios llegan a `develop` desde ramas `feature/*` | Equipo (Git) | Implementado |
| 2 | Jenkins compila, prueba, mide la cobertura, analiza con SonarQube, empaqueta, construye la imagen y la prueba con Karate (7.1 y 7.2) | Jenkins | Implementado y ejecutado (ejecución #4, SUCCESS) |
| 3 | Los cambios aprobados se integran en la rama `main` del repositorio del backend mediante Pull Request | Equipo (Git) | Implementado según el GitFlow de 5.1.2 |
| 4 | Render detecta el cambio, construye el servicio con el `Dockerfile` y lo reinicia con las variables de entorno de producción | Render | Implementado |
| 5 | Prueba de humo sobre la Swagger UI y un endpoint protegido (debe responder 401 sin token) | Equipo | Manual |
| 6 | Si falla, se vuelve a desplegar el commit anterior | Equipo | Manual |

**Frontend y landing page.** El frontend se despliega con un workflow de GitHub Actions que instala dependencias, ejecuta las pruebas, construye la aplicación Angular y publica el resultado en GitHub Pages; la landing page se publica automáticamente al hacer push a `main`.

**Brecha frente al despliegue continuo completo.** Hoy el despliegue del backend lo dispara el repositorio (Render), no Jenkins, de modo que el pipeline de Jenkins llega hasta dejar una imagen verificada pero no promueve nada a producción por sí mismo. Para cerrar la brecha el equipo planea, una vez disponibles las credenciales de Docker Hub y de Render, añadir al `Jenkinsfile` dos etapas finales: publicar la imagen (ya implementada, ver 7.2.2) y llamar al *deploy hook* de Render para que despliegue esa etiqueta, seguidas de una prueba de humo automática que haga fracasar la ejecución si el servicio no responde. Hasta entonces el paso de promoción a producción es deliberadamente manual.
