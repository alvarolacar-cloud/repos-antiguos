# Paso 11 — Pseudocódigo del Sistema

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

## Bloque 1 — Inputs, slugs y categorías

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 11.01 | Se decide cargar inputs base | Business name, URL, NAP, Main City, servicios, LCA, GBP status | Sin inputs cargados el pseudocódigo no tiene sobre qué operar | GMB Crush | Sí | ← 1.01–1.47 |  Paso-11 §7 |
| 11.02 | Se decide normalizar slugs | Cerrajero urgente → cerrajero-urgente | Sin normalización los slugs rompen URLs y schema | GMB Crush | Sí | no | §8 |
| 11.03 | Se decide validar categorías adicionales | Cubierta / necesita página | Categoría sin validar puede duplicarse con servicio core | GMB Crush | Sí | no | §9 |

## Bloque 2 — Generación base

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 11.04 | Se decide generar Homepage | HP-001 | Homepage es la base sobre la que cuelga el cluster | GMB Crush | Sí | no | §10 |
| 11.05 | Se decide generar Service Overview Pages | 5 páginas | Cada servicio core necesita pillar temático sin ciudad | GMB Crush | Sí | ← 1.34–1.38 |  Paso-11 §11; Paso-01 §14; Paso-05 §8 |
| 11.06 | Se decide generar GeoHub de Madrid | /madrid/ | GeoHub agrupa la cobertura local de la Main City | GMB Crush | Sí | ← 1.20 |  Paso-11 §12; Paso-01 §12; Paso-05 §11 |
| 11.07 | Se decide generar LBS de Madrid | 5 páginas | Cada servicio en Main City necesita landing de conversión | GMB Crush | Sí | ← 1.34–1.38 |  Paso-11 §13; Paso-01 §14; Paso-05 §9 |
| 11.08 | Se decide generar Additional Category Page efectiva | /cerrajero/madrid/duplicado-llaves/ | AC da soporte web a categoría GBP sin servicio core | GMB Crush | Sí | ← 1.18 |  Paso-11 §14; Paso-01 §21; Paso-05 §10 |
| 11.09 | Se decide generar GeoArticles | 15 artículos | Cluster escala con servicios × satélites por servicio | GMB Crush | Sí | ← 1.34–1.38 |  Paso-11 §15; Paso-02 §11; Paso-03 §31 |

## Bloque 3 — Local Coverage Areas y expansión

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 11.10 | Se decide inyectar Local Coverage Areas en contenido y schema | LCA como señales GEO | LCA refuerza relevancia local sin generar URLs propias | GMB Crush | Sí | ← 1.22–1.31 |  Paso-11 §16; Paso-06 §10; Paso-06 §30 |
| 11.11 | Se decide no generar expansión si no está aprobada | Approved Expansion Areas: None | Expansión sin aprobación produce páginas zombie | GMB Crush | Sí | no | §17 |

## Bloque 4 — Enlaces, prioridad, QA y outputs

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 11.12 | Se decide asignar enlaces internos por tipo de página | Internal Linking Map | Sin map de links la autoridad no fluye según jerarquía | GMB Crush | Sí | no | §18 |
| 11.13 | Se decide calcular prioridad por página | Priority Score | Sin score por URL no hay orden objetivo de publicación | GMB Crush | Sí | no | §19 |
| 11.14 | Se decide comprobar dependencias | LBS requiere Service Overview + GeoHub | Publicar LBS sin SO + GeoHub deja la página huérfana | GMB Crush | Sí | no |  Paso-11 §20; Paso-07 §11 |
| 11.15 | Se decide ejecutar QA antes de publicar | QA Matrix | Publicar sin QA mete deuda técnica imposible de auditar luego | GMB Crush | Sí | no |  Paso-11 §21; Paso-09 §34.1 |
| 11.16 | Se decide producir matrices finales | URL Matrix, Internal Linking Matrix, Schema Map, Priority Score, Publishing Plan, QA Matrix | Las 6 matrices son los outputs operativos del sistema | GMB Crush | Sí | no |  Paso-11 §22; Paso-13 §54.2 |
