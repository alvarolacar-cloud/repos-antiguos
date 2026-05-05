# Paso 6 — Estructura de Contenido + Local Coverage Areas

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

## Bloque 1 — Main City y Local Coverage Areas

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 6.01 | Se decide que Madrid crea la estructura principal | Madrid | Main City fija el ámbito de toda la arquitectura local | GMB Crush | Sí | ← 1.20 |  Paso-06 §7; Paso-01 §12 |
| 6.02 | Se decide que Direct Local Coverage Areas refuercen el contenido | Almagro, Chamberí | Direct LCA aporta señales locales fuertes sin URL propia | GMB Crush | Sí | ← 1.22, 1.23 |  Paso-06 §10; Paso-01 §15 |
| 6.03 | Se decide que Candidate Local Coverage Areas puedan usarse si pasan test GEO | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad | Sin test GEO 3/6 las zonas candidatas son ruido | GMB Crush | Sí | ← 1.24–1.31 |  Paso-06 §10; Paso-01 §15 |
| 6.04 | Se decide que las Local Coverage Areas no sustituyan a Madrid | La página sigue siendo Madrid | Mover el ancla a un barrio fragmenta la entidad local | GMB Crush | Sí | no |  Paso-06 §10; Paso-02 §12 |

## Bloque 2 — Uso por tipo de página

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 6.05 | Se decide que la Homepage pueda mencionar Local Coverage Areas de forma ligera | Almagro, Chamberí, etc. | Homepage saturada de barrios diluye marca y entidad | GMB Crush | Sí | no |  Paso-06 §12 |
| 6.06 | Se decide que Service Overview no use Local Coverage Areas | Sin zonas locales | LCA en SO contamina su intención temática nacional | GMB Crush | Sí | no |  Paso-06 §13 |
| 6.07 | Se decide que LBS use Local Coverage Areas en intro, H2s y FAQs | Páginas servicio + Madrid | LBS es el lugar natural donde el barrio refuerza relevancia | GMB Crush | Sí | no |  Paso-06 §14 |
| 6.08 | Se decide que GeoHub use sección de cobertura local | /madrid/ | GeoHub es el contenedor canónico del detalle geográfico | GMB Crush | Sí | no |  Paso-06 §16 |
| 6.09 | Se decide que Additional Category use cobertura local como contexto | /cerrajero/madrid/duplicado-llaves/ | LCA da contexto local sin convertir AC en cluster geográfico | GMB Crush | Sí | no |  Paso-06 §15 |
| 6.10 | Se decide que GeoArticles usen zonas como ejemplos locales | Madrid + zonas GEO | Ejemplos locales aterrizan el topic informativo | GMB Crush | Sí | no |  Paso-06 §17 |

## Bloque 3 — Restricciones

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 6.11 | Se decide que una mención de zona no equivale a crear URL | Mencionar Almagro ≠ crear /almagro/ | Convertir LCA en URL canibalizaría la LBS de Main City | GMB Crush | Sí | no |  Paso-06 §10; Paso-04 §15; Paso-03 §8 |
| 6.12 | Se decide no afirmar oficina física en cada Local Coverage Area | No oficina en Salamanca/Retiro salvo verdad | Falsa ubicación viola guidelines y dispara penalizaciones | GMB Crush | Sí | no |  Paso-06 §11 |
| 6.13 | Se decide que `areaServed` pueda incluir cobertura real validada | Madrid + zonas validadas | `areaServed` con zonas inventadas rompe validación schema | GMB Crush | Sí | no |  Paso-06 §30; Paso-14 §20 |
