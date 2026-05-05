# Paso 7 — Internal Linking Rules

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`07a-ejecucion-internal-linking-rules.md`).

---

## Bloque 1 — Enlaces desde Homepage

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 7.01 | Se decide que la Homepage enlace a Service Overview Pages | 5 Service Overview Pages | GMB Crush | Homepage transmite autoridad raíz a los pillars temáticos | ← 1.34–1.38 | §8 |
| 7.02 | Se decide que la Homepage enlace al GeoHub de Madrid | /madrid/ | GMB Crush | Homepage activa el clúster geográfico desde la raíz | ← 1.20 | §8 |
| 7.03 | Se decide que la Homepage enlace a la página de categoría adicional | /cerrajero/madrid/duplicado-llaves/ | GMB Crush | AC sin link sitewide queda invisible al crawler | ← 1.18 | §8 |
| 7.04 | Se decide que la Homepage enlace a contacto | /contacto/ | GMB Crush | Contacto necesita link sitewide para conversión final | no | §8 |

## Bloque 2 — Enlaces desde Service Overview y LBS

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 7.05 | Se decide que cada Service Overview enlace a su versión local en Madrid | /cerrajero/[service]/ → /cerrajero/madrid/[service]/ | GMB Crush | SO sin link a LBS deja la intención local sin convertir | no | §9 |
| 7.06 | Se decide que Service Overview enlace a servicios relacionados | Cross-links entre servicios | GMB Crush | Cross-links activan cluster temático y reducen orfandad | no | §9 |
| 7.07 | Se decide que LBS enlace a su página padre | LBS → Service Overview | GMB Crush | Link a SO refuerza jerarquía servicio → categoría | no | §11 |
| 7.08 | Se decide que LBS enlace al GeoHub | LBS → /madrid/ | GMB Crush | Link a GeoHub refuerza la entidad geográfica del cluster | no | §11 |
| 7.09 | Se decide que LBS enlace a servicios relacionados en Madrid | LBS → otras LBS | GMB Crush | Cross-links entre LBS distribuyen autoridad local | no | §11 |
| 7.10 | Se decide que LBS enlace a GeoArticles relacionados | LBS → GeoArticles | GMB Crush | Link a GeoArticle activa el flujo conversión → captación | no | §11 |

## Bloque 3 — Enlaces desde GeoHub y GeoArticles

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 7.11 | Se decide que GeoHub enlace a todas las LBS de Madrid | 5 LBS | GMB Crush | GeoHub distribuye tráfico geográfico hacia conversión | ← 1.34–1.38 | §10 |
| 7.12 | Se decide que GeoHub enlace a Additional Category Page | /cerrajero/madrid/duplicado-llaves/ | GMB Crush | AC sin link desde GeoHub queda fuera del cluster local | ← 1.18 | §10 |
| 7.13 | Se decide que GeoHub enlace a GeoArticles | 15 GeoArticles | GMB Crush | GeoHub centraliza el descubrimiento de contenido informativo | ← 3.19–3.33 | §10 |
| 7.14 | Se decide que GeoArticles enlacen a su LBS correspondiente | GeoArticle → LBS | GMB Crush | Sin link a LBS el tráfico informativo no convierte | no | §13 |
| 7.15 | Se decide que GeoArticles enlacen al GeoHub | GeoArticle → /madrid/ | GMB Crush | Link a GeoHub mantiene al usuario dentro del cluster | no | §13 |

## Bloque 4 — Restricciones de enlaces

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 7.16 | Se decide no enlazar Local Coverage Areas sin URL aprobada | No enlazar /almagro/ | GMB Crush | Link a URL inexistente rompe crawl y dispersa autoridad | no | §15 |
| 7.17 | Se decide usar anchors contextuales | Anchors naturales | GMB Crush | Anchors exactos repetidos disparan filtros de over-optimization | no | §15 |
| 7.18 | Se decide usar breadcrumbs | Home > Madrid > Servicio | GMB Crush | Breadcrumbs explicitan jerarquía y mejoran CTR en SERP | no | §19 |
