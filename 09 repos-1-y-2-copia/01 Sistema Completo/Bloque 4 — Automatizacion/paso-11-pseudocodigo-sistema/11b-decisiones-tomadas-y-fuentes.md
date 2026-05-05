# Paso 11 — Pseudocódigo del Sistema

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`11a-ejecucion-pseudocodigo-sistema.md`).

---

## Bloque 1 — Inputs, slugs y categorías

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 11.01 | Se decide cargar inputs base | Business name, URL, NAP, Main City, servicios, LCA, GBP status | GMB Crush | Sin inputs cargados el pseudocódigo no tiene sobre qué operar | ← 1.01–1.47 | §7 |
| 11.02 | Se decide normalizar slugs | Cerrajero urgente → cerrajero-urgente | GMB Crush | Sin normalización los slugs rompen URLs y schema | no | §8 |
| 11.03 | Se decide validar categorías adicionales | Cubierta / necesita página | GMB Crush | Categoría sin validar puede duplicarse con servicio core | no | §9 |

## Bloque 2 — Generación base

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 11.04 | Se decide generar Homepage | HP-001 | GMB Crush | Homepage es la base sobre la que cuelga el cluster | no | §10 |
| 11.05 | Se decide generar Service Overview Pages | 5 páginas | GMB Crush | Cada servicio core necesita pillar temático sin ciudad | ← 1.34–1.38 | §11 |
| 11.06 | Se decide generar GeoHub de Madrid | /madrid/ | GMB Crush | GeoHub agrupa la cobertura local de la Main City | ← 1.20 | §12 |
| 11.07 | Se decide generar LBS de Madrid | 5 páginas | GMB Crush | Cada servicio en Main City necesita landing de conversión | ← 1.34–1.38 | §13 |
| 11.08 | Se decide generar Additional Category Page efectiva | /cerrajero/madrid/duplicado-llaves/ | GMB Crush | AC da soporte web a categoría GBP sin servicio core | ← 1.18 | §14 |
| 11.09 | Se decide generar GeoArticles | 15 artículos | GMB Crush | Cluster escala con servicios × satélites por servicio | ← 1.34–1.38 | §15 |

## Bloque 3 — Local Coverage Areas y expansión

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 11.10 | Se decide inyectar Local Coverage Areas en contenido y schema | LCA como señales GEO | GMB Crush | LCA refuerza relevancia local sin generar URLs propias | ← 1.22–1.31 | §16 |
| 11.11 | Se decide no generar expansión si no está aprobada | Approved Expansion Areas: None | GMB Crush | Expansión sin aprobación produce páginas zombie | no | §17 |

## Bloque 4 — Enlaces, prioridad, QA y outputs

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 11.12 | Se decide asignar enlaces internos por tipo de página | Internal Linking Map | GMB Crush | Sin map de links la autoridad no fluye según jerarquía | no | §18 |
| 11.13 | Se decide calcular prioridad por página | Priority Score | GMB Crush | Sin score por URL no hay orden objetivo de publicación | no | §19 |
| 11.14 | Se decide comprobar dependencias | LBS requiere Service Overview + GeoHub | GMB Crush | Publicar LBS sin SO + GeoHub deja la página huérfana | no | §20 |
| 11.15 | Se decide ejecutar QA antes de publicar | QA Matrix | GMB Crush | Publicar sin QA mete deuda técnica imposible de auditar luego | no | §21 |
| 11.16 | Se decide producir matrices finales | URL Matrix, Internal Linking Matrix, Schema Map, Priority Score, Publishing Plan, QA Matrix | GMB Crush | Las 6 matrices son los outputs operativos del sistema | no | §22 |
