<br>
<br>

<div align="center">
    <img src="../../assets/images/chapter-5/capitulo-5.png" alt="Capitulo 5" />
</div>

<br>
<br>

# 5.2. Landing Page, Services & Applications Implementation.

## 5.2.1. Sprint Backlogs

El desarrollo de SafeStep se organizó en seis Sprints. Cada Sprint se documenta con la misma estructura: Sprint Planning, matriz de líderes y colaboradores (LACX), Sprint Backlog, Development Evidence, Execution Evidence, Services Documentation Evidence, Software Deployment Evidence y Team Collaboration Insights. Los Sprints 5 y 6 incorporan además el Testing Suite Evidence for Sprint Review, que documenta las suites de pruebas automatizadas.

| Sprint | Fecha del Sprint Planning | Enfoque |
|--------|---------------------------|---------|
| Sprint 1 | 2026-04-05 | Landing Page funcional que presenta la propuesta de valor y facilita el acceso al registro. |
| Sprint 2 | 2026-04-15 | Aplicación frontend Angular con todos los bounded contexts bajo Domain-Driven Design y json-server como fuente de datos de prueba. |
| Sprint 3 | 2026-05-03 | Backend real con Spring Boot, Java, PostgreSQL y documentación OpenAPI; el frontend pasa a consumir los servicios REST. |
| Sprint 4 | 2026-06-16 | Identity and Access Management (registro, inicio de sesión, JWT y rutas protegidas) y pagos con Stripe. |
| Sprint 5 | 2026-10-01 | Pruebas automatizadas (unitarias, de integración y BDD), integración continua con Jenkins y SonarQube, panel de administración, canje de cupones con SafeCoins y despliegue en Render. |
| Sprint 6 | 2026-10-09 al 2026-11-09 (fecha de la reunión pendiente) | Calidad de código (estilo de Google y SonarQube sin incidencias), imagen Docker publicada desde Jenkins, pruebas de sistema de la aplicación web, aplicación Android, recompensa aplicada en el servidor y planificación y diseño de los experimentos. |

Las secciones 5.2.2 a 5.2.7 consolidan, por producto, la evidencia que cada Sprint fue construyendo: la Landing Page (5.2.2), la aplicación web (5.2.3), el acuerdo de servicio (5.2.4), la aplicación móvil (5.2.5), el backend (5.2.6) y la documentación de su API (5.2.7).
