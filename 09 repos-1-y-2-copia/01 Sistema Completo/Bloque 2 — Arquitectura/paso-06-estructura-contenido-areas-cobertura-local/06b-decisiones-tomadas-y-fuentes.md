# Paso 6 — Estructura de Contenido + Local Coverage Areas

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`06a-ejecucion-estructura-contenido-areas-cobertura-local.md`).

---

## Bloque 1 — Main City y Local Coverage Areas

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 6.01 | Se decide que Madrid crea la estructura principal | Madrid | GMB Crush | Main City fija el ámbito de toda la arquitectura local | ← 1.20 | §7 |
| 6.02 | Se decide que Direct Local Coverage Areas refuercen el contenido | Almagro, Chamberí | GMB Crush | Direct LCA aporta señales locales fuertes sin URL propia | ← 1.22, 1.23 | §10 |
| 6.03 | Se decide que Candidate Local Coverage Areas puedan usarse si pasan test GEO | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad | GMB Crush | Sin test GEO 3/6 las zonas candidatas son ruido | ← 1.24–1.31 | §10 |
| 6.04 | Se decide que las Local Coverage Areas no sustituyan a Madrid | La página sigue siendo Madrid | GMB Crush | Mover el ancla a un barrio fragmenta la entidad local | no | §10 |

## Bloque 2 — Uso por tipo de página

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 6.05 | Se decide que la Homepage pueda mencionar Local Coverage Areas de forma ligera | Almagro, Chamberí, etc. | GMB Crush | Homepage saturada de barrios diluye marca y entidad | no | §12 |
| 6.06 | Se decide que Service Overview no use Local Coverage Areas | Sin zonas locales | GMB Crush | LCA en SO contamina su intención temática nacional | no | §13 |
| 6.07 | Se decide que LBS use Local Coverage Areas en intro, H2s y FAQs | Páginas servicio + Madrid | GMB Crush | LBS es el lugar natural donde el barrio refuerza relevancia | no | §14 |
| 6.08 | Se decide que GeoHub use sección de cobertura local | /madrid/ | GMB Crush | GeoHub es el contenedor canónico del detalle geográfico | no | §16 |
| 6.09 | Se decide que Additional Category use cobertura local como contexto | /cerrajero/madrid/duplicado-llaves/ | GMB Crush | LCA da contexto local sin convertir AC en cluster geográfico | no | §15 |
| 6.10 | Se decide que GeoArticles usen zonas como ejemplos locales | Madrid + zonas GEO | GMB Crush | Ejemplos locales aterrizan el topic informativo | no | §17 |

## Bloque 3 — Restricciones

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 6.11 | Se decide que una mención de zona no equivale a crear URL | Mencionar Almagro ≠ crear /almagro/ | GMB Crush | Convertir LCA en URL canibalizaría la LBS de Main City | no | §10 |
| 6.12 | Se decide no afirmar oficina física en cada Local Coverage Area | No oficina en Salamanca/Retiro salvo verdad | GMB Crush | Falsa ubicación viola guidelines y dispara penalizaciones | no | §11 |
| 6.13 | Se decide que `areaServed` pueda incluir cobertura real validada | Madrid + zonas validadas | GMB Crush | `areaServed` con zonas inventadas rompe validación schema | no | §30 |
