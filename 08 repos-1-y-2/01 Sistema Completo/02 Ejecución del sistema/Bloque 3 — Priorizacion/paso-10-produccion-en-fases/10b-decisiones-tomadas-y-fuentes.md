# Paso 10 — Producción en Fases

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

## Bloque 1 — Capacidad y herramientas

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 10.01 | Se define capacidad de publicación | 5 páginas por semana | Capacidad real del equipo limita el ritmo de publicación | Input humano | Sí | no | §12 |
| 10.02 | Se define equipo de producción | SEO + Writer + Developer | Roles disponibles condicionan qué tareas pueden paralelizarse | Input humano | Sí | no | §12 |
| 10.03 | Se define CMS | WordPress | CMS condiciona qué se puede automatizar y qué requiere dev | Input humano | Sí | no | §4 |
| 10.04 | Se decide que se puede añadir schema | Yes | Sin capacidad de schema, el ecosistema entity-based no funciona | Input humano | Sí | no | §4 |
| 10.05 | Se decide que se pueden editar enlaces internos | Yes | Sin edición de links no se puede aplicar el Internal Linking Map | Input humano | Sí | no | §4 |
| 10.06 | Se define tracking | GMB Crush Geo Grid, Google Search Console, GA4 | Geo Grid + GSC + GA4 cubren ranking, query y conversión | GMB Crush | Sí | no |  Paso-10 §5; Paso-13 §46 |

## Bloque 2 — Fases de producción

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 10.07 | Se define Fase 1 | Entity Foundation | Sin entidad asentada, las páginas hijas no transmiten señales | GMB Crush | Sí | no | §7 |
| 10.08 | Se decide publicar Homepage, contacto, Service Overview y GeoHub en Fase 1 | Semana 1 | Estas páginas anclan marca, entidad y arquitectura del cluster | GMB Crush | Sí | no |  Paso-10 §7; Paso-02 §16; Paso-03 §16 |
| 10.09 | Se define Fase 2 | Main City Conversion Layer | Tras la entidad, la conversión local es la prioridad de ingreso | GMB Crush | Sí | no | §8 |
| 10.10 | Se decide publicar LBS y Additional Category en Fase 2 | Páginas servicio + Madrid | LBS y AC son las páginas que convierten tráfico local | GMB Crush | Sí | no |  Paso-10 §8; Paso-05 §9; Paso-05 §10 |
| 10.11 | Se define Fase 3 | Semantic Expansion | Tras conversión, expandir captación informativa hacia los GeoArticles | GMB Crush | Sí | no | §9 |
| 10.12 | Se decide publicar 15 GeoArticles en Fase 3 | 3 por servicio | Sin LBS publicada antes, los GeoArticles no tienen destino | GMB Crush | Sí | ← 1.34–1.38 |  Paso-10 §9; Paso-02 §11; Paso-03 §31 |
| 10.13 | Se define Fase 4 | Optimization Loop | Tras publicar todo, optimizar con datos reales en lugar de hipótesis | GMB Crush | Sí | no | §10 |
| 10.14 | Se define Fase 5 | Optional Expansion Module | Expansión solo cuando el cluster base demuestra tracción | GMB Crush | Sí | no | §11 |
| 10.15 | Se decide no activar expansión inicial | None in Phase 1 | Expansión sin tracción real produce páginas zombie | GMB Crush | Sí | no | §11 |

## Bloque 3 — GBP después de la web

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 10.16 | Se decide crear el GBP después de publicar la web base | Paso 14 | GBP sin web detrás no soporta sameAs ni schema integrado | GMB Crush | Sí | no |  Paso-10 §7; Paso-14 §7 |
| 10.17 | Se decide que el GBP no se cree antes de tener páginas core publicadas | Web-first | Sin páginas reales, el GBP queda con enlaces y schema huecos | GMB Crush | Sí | no |  Paso-10 §7; Paso-14 §7 |
