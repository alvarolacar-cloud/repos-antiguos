# Paso 7 — Internal Linking Rules

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Por qué esta decisión`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Por qué esta decisión** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Fuente de la decisión** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Manual resuelve** — `Sí` si el manual cubre la decisión completa; `No` si falta acción externa (Competidores, Datos de búsqueda).
- **Viene de una decisión anterior** — `no` o `← X.YY`.
- **Referencia exacta en el manual** — una o varias referencias canónicas separadas por `;`.

---

## Bloque 1 — Enlaces desde Homepage

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 7.01 | Se decide que la Homepage enlace a Service Overview Pages | 5 Service Overview Pages | Homepage transmite autoridad raíz a los pillars temáticos | GMB Crush | Sí | ← 1.34–1.38 |  Paso-07 §8; Paso-05 §7 |
| 7.02 | Se decide que la Homepage enlace al GeoHub de Madrid | /madrid/ | Homepage activa el clúster geográfico desde la raíz | GMB Crush | Sí | ← 1.20 |  Paso-07 §8; Paso-05 §11 |
| 7.03 | Se decide que la Homepage enlace a la página de categoría adicional | /cerrajero/madrid/duplicado-llaves/ | AC sin link sitewide queda invisible al crawler | GMB Crush | Sí | ← 1.18 |  Paso-07 §8; Paso-05 §10 |
| 7.04 | Se decide que la Homepage enlace a contacto | /contacto/ | Contacto necesita link sitewide para conversión final | GMB Crush | Sí | no |  Paso-07 §8; Paso-02 §16 |

## Bloque 2 — Enlaces desde Service Overview y LBS

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 7.05 | Se decide que cada Service Overview enlace a su versión local en Madrid | /cerrajero/[service]/ → /cerrajero/madrid/[service]/ | SO sin link a LBS deja la intención local sin convertir | GMB Crush | Sí | no |  Paso-07 §9; Paso-05 §8 |
| 7.06 | Se decide que Service Overview enlace a servicios relacionados | Cross-links entre servicios | Cross-links activan cluster temático y reducen orfandad | GMB Crush | Sí | no |  Paso-07 §9 |
| 7.07 | Se decide que LBS enlace a su página padre | LBS → Service Overview | Link a SO refuerza jerarquía servicio → categoría | GMB Crush | Sí | no |  Paso-07 §11; Paso-05 §9 |
| 7.08 | Se decide que LBS enlace al GeoHub | LBS → /madrid/ | Link a GeoHub refuerza la entidad geográfica del cluster | GMB Crush | Sí | no |  Paso-07 §11; Paso-05 §11 |
| 7.09 | Se decide que LBS enlace a servicios relacionados en Madrid | LBS → otras LBS | Cross-links entre LBS distribuyen autoridad local | GMB Crush | Sí | no |  Paso-07 §11 |
| 7.10 | Se decide que LBS enlace a GeoArticles relacionados | LBS → GeoArticles | Link a GeoArticle activa el flujo conversión → captación | GMB Crush | Sí | no |  Paso-07 §11; Paso-05 §12 |

## Bloque 3 — Enlaces desde GeoHub y GeoArticles

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 7.11 | Se decide que GeoHub enlace a todas las LBS de Madrid | 5 LBS | GeoHub distribuye tráfico geográfico hacia conversión | GMB Crush | Sí | ← 1.34–1.38 |  Paso-07 §10; Paso-05 §11; Paso-01 §14 |
| 7.12 | Se decide que GeoHub enlace a Additional Category Page | /cerrajero/madrid/duplicado-llaves/ | AC sin link desde GeoHub queda fuera del cluster local | GMB Crush | Sí | ← 1.18 |  Paso-07 §10; Paso-05 §10 |
| 7.13 | Se decide que GeoHub enlace a GeoArticles | 15 GeoArticles | GeoHub centraliza el descubrimiento de contenido informativo | GMB Crush | Sí | ← 3.19–3.33 |  Paso-07 §10; Paso-05 §12; Paso-03 §31 |
| 7.14 | Se decide que GeoArticles enlacen a su LBS correspondiente | GeoArticle → LBS | Sin link a LBS el tráfico informativo no convierte | GMB Crush | Sí | no |  Paso-07 §13 |
| 7.15 | Se decide que GeoArticles enlacen al GeoHub | GeoArticle → /madrid/ | Link a GeoHub mantiene al usuario dentro del cluster | GMB Crush | Sí | no |  Paso-07 §13 |

## Bloque 4 — Restricciones de enlaces

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 7.16 | Se decide no enlazar Local Coverage Areas sin URL aprobada | No enlazar /almagro/ | Link a URL inexistente rompe crawl y dispersa autoridad | GMB Crush | Sí | no |  Paso-07 §15; Paso-04 §15; Paso-03 §8 |
| 7.17 | Se decide usar anchors contextuales | Anchors naturales | Anchors exactos repetidos disparan filtros de over-optimization | GMB Crush | Sí | no |  Paso-07 §15 |
| 7.18 | Se decide usar breadcrumbs | Home > Madrid > Servicio | Breadcrumbs explicitan jerarquía y mejoran CTR en SERP | GMB Crush | Sí | no |  Paso-07 §19; Paso-05 §19 |
