# Paso 10 — Producción en Fases

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`10a-ejecucion-produccion-en-fases.md`).

---

## Bloque 1 — Capacidad y herramientas

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 10.01 | Se define capacidad de publicación | 5 páginas por semana | Input humano | Capacidad real del equipo limita el ritmo de publicación | no | §12 |
| 10.02 | Se define equipo de producción | SEO + Writer + Developer | Input humano | Roles disponibles condicionan qué tareas pueden paralelizarse | no | §12 |
| 10.03 | Se define CMS | WordPress | Input humano | CMS condiciona qué se puede automatizar y qué requiere dev | no | §4 |
| 10.04 | Se decide que se puede añadir schema | Yes | Input humano | Sin capacidad de schema, el ecosistema entity-based no funciona | no | §4 |
| 10.05 | Se decide que se pueden editar enlaces internos | Yes | Input humano | Sin edición de links no se puede aplicar el Internal Linking Map | no | §4 |
| 10.06 | Se define tracking | GMB Crush Geo Grid, Google Search Console, GA4 | GMB Crush | Geo Grid + GSC + GA4 cubren ranking, query y conversión | no | §5 |

## Bloque 2 — Fases de producción

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 10.07 | Se define Fase 1 | Entity Foundation | GMB Crush | Sin entidad asentada, las páginas hijas no transmiten señales | no | §7 |
| 10.08 | Se decide publicar Homepage, contacto, Service Overview y GeoHub en Fase 1 | Semana 1 | GMB Crush | Estas páginas anclan marca, entidad y arquitectura del cluster | no | §7 |
| 10.09 | Se define Fase 2 | Main City Conversion Layer | GMB Crush | Tras la entidad, la conversión local es la prioridad de ingreso | no | §8 |
| 10.10 | Se decide publicar LBS y Additional Category en Fase 2 | Páginas servicio + Madrid | GMB Crush | LBS y AC son las páginas que convierten tráfico local | no | §8 |
| 10.11 | Se define Fase 3 | Semantic Expansion | GMB Crush | Tras conversión, expandir captación informativa hacia los GeoArticles | no | §9 |
| 10.12 | Se decide publicar 15 GeoArticles en Fase 3 | 3 por servicio | GMB Crush | Sin LBS publicada antes, los GeoArticles no tienen destino | ← 1.34–1.38 | §9 |
| 10.13 | Se define Fase 4 | Optimization Loop | GMB Crush | Tras publicar todo, optimizar con datos reales en lugar de hipótesis | no | §10 |
| 10.14 | Se define Fase 5 | Optional Expansion Module | GMB Crush | Expansión solo cuando el cluster base demuestra tracción | no | §11 |
| 10.15 | Se decide no activar expansión inicial | None in Phase 1 | GMB Crush | Expansión sin tracción real produce páginas zombie | no | §11 |

## Bloque 3 — GBP después de la web

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 10.16 | Se decide crear el GBP después de publicar la web base | Paso 14 | GMB Crush | GBP sin web detrás no soporta sameAs ni schema integrado | no | §7 |
| 10.17 | Se decide que el GBP no se cree antes de tener páginas core publicadas | Web-first | GMB Crush | Sin páginas reales, el GBP queda con enlaces y schema huecos | no | §7 |
