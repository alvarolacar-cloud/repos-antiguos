# Paso 12 — Master Prompt Reutilizable

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

## Bloque 1 — Creación del prompt maestro

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 12.01 | Se decide crear un prompt maestro reutilizable | Master Prompt GMB Crush | Un prompt único garantiza outputs reproducibles del sistema | GMB Crush | Sí | no | §7 |
| 12.02 | Se decide que el prompt genere el sistema completo | 14 pasos | Sin alcance completo el output queda fragmentado e inoperable | GMB Crush | Sí | no |  Paso-12 §17; Paso-13 §7 |

## Bloque 2 — Inputs del prompt

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 12.03 | Se decide que el prompt pida Main City | Madrid | Sin Main City no se puede instanciar el cluster geográfico | GMB Crush | Sí | ← 1.20 |  Paso-12 §8; Paso-01 §12 |
| 12.04 | Se decide que el prompt pida Direct Local Coverage Areas | Almagro, Chamberí | Direct LCAs son las señales locales fuertes del cluster | GMB Crush | Sí | ← 1.22, 1.23 |  Paso-12 §8; Paso-01 §15 |
| 12.05 | Se decide que el prompt pida Candidate Local Coverage Areas | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad | Candidates definen el rango completo de cobertura potencial | GMB Crush | Sí | ← 1.24–1.31 |  Paso-12 §8; Paso-01 §15 |
| 12.06 | Se decide que el prompt pida Approved Expansion Areas | None in Phase 1 | Sin este campo el prompt no sabe si activar expansión | GMB Crush | Sí | no |  Paso-12 §8; Paso-01 §16 |
| 12.07 | Se decide que el prompt pida GBP Status | Not Created | Estado GBP cambia qué páginas y schema se generan | GMB Crush | Sí | ← 1.04 |  Paso-12 §8; Paso-01 §4 |
| 12.08 | Se decide que el prompt pida Planned Primary GBP Category | Cerrajero | Categoría primaria define el silo raíz de URL | GMB Crush | Sí | ← 1.16 |  Paso-12 §8; Paso-01 §10 |
| 12.09 | Se decide que el prompt pida Planned Additional GBP Categories | Servicio de cerrajería de urgencia, Servicio de duplicado de llaves | Categorías adicionales determinan cuántas AC se generan | GMB Crush | Sí | ← 1.17, 1.18 |  Paso-12 §8; Paso-01 §11 |

## Bloque 3 — Outputs del prompt

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 12.10 | Se decide que el prompt genere URL Matrix | Sí | URL Matrix es la fuente de verdad operativa del cluster | GMB Crush | Sí | no | §17 |
| 12.11 | Se decide que el prompt genere Page Type Rules | Sí | Page Type Rules garantiza coherencia entre URL y schema | GMB Crush | Sí | no | §17 |
| 12.12 | Se decide que el prompt genere Content Architecture | Sí | Sin arquitectura, el copy del Paso 15 no tiene esqueleto | GMB Crush | Sí | no | §17 |
| 12.13 | Se decide que el prompt genere Internal Linking Map | Sí | Sin map de links, la autoridad no fluye según jerarquía | GMB Crush | Sí | no | §17 |
| 12.14 | Se decide que el prompt genere Priority Score | Sí | Priority Score traduce el cluster a orden de publicación | GMB Crush | Sí | no | §17 |
| 12.15 | Se decide que el prompt genere Publishing Plan | Sí | Publishing Plan agrupa páginas en fases coherentes | GMB Crush | Sí | no | §17 |
| 12.16 | Se decide que el prompt genere QA Checklist | Sí | QA Checklist evita publicar deuda técnica invisible | GMB Crush | Sí | no | §17 |
| 12.17 | Se decide que el prompt genere GBP Creation & Website Alignment | Paso 14 | Sin Paso 14 el ecosistema GBP-web queda desalineado | GMB Crush | Sí | no | §17 |

## Bloque 4 — Restricciones del prompt

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 12.18 | Se decide que el prompt no invente GBP URL | GBP URL N/A hasta creación | Inventar GBP URL rompe sameAs y dispara penalizaciones | GMB Crush | Sí | no |  Paso-12 §35; Paso-14 §11 |
| 12.19 | Se decide que el prompt no cree URLs para LCA por defecto | No URLs LCA | URL por LCA dispersa autoridad y canibaliza la LBS | GMB Crush | Sí | no |  Paso-12 §22; Paso-04 §15; Paso-06 §31 |
| 12.20 | Se decide que el prompt mantenga web-first | Web primero, GBP después | GBP sin web detrás no soporta sameAs ni schema integrado | GMB Crush | Sí | no |  Paso-12 §35; Paso-14 §7 |
