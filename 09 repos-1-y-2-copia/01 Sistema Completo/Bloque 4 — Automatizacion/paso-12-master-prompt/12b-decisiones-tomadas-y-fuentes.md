# Paso 12 — Master Prompt Reutilizable

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`12a-ejecucion-master-prompt.md`).

---

## Bloque 1 — Creación del prompt maestro

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 12.01 | Se decide crear un prompt maestro reutilizable | Master Prompt GMB Crush | GMB Crush | Un prompt único garantiza outputs reproducibles del sistema | no | §7 |
| 12.02 | Se decide que el prompt genere el sistema completo | 14 pasos | GMB Crush | Sin alcance completo el output queda fragmentado e inoperable | no | §17 |

## Bloque 2 — Inputs del prompt

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 12.03 | Se decide que el prompt pida Main City | Madrid | GMB Crush | Sin Main City no se puede instanciar el cluster geográfico | ← 1.20 | §8 |
| 12.04 | Se decide que el prompt pida Direct Local Coverage Areas | Almagro, Chamberí | GMB Crush | Direct LCAs son las señales locales fuertes del cluster | ← 1.22, 1.23 | §8 |
| 12.05 | Se decide que el prompt pida Candidate Local Coverage Areas | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad | GMB Crush | Candidates definen el rango completo de cobertura potencial | ← 1.24–1.31 | §8 |
| 12.06 | Se decide que el prompt pida Approved Expansion Areas | None in Phase 1 | GMB Crush | Sin este campo el prompt no sabe si activar expansión | no | §8 |
| 12.07 | Se decide que el prompt pida GBP Status | Not Created | GMB Crush | Estado GBP cambia qué páginas y schema se generan | ← 1.04 | §8 |
| 12.08 | Se decide que el prompt pida Planned Primary GBP Category | Cerrajero | GMB Crush | Categoría primaria define el silo raíz de URL | ← 1.16 | §8 |
| 12.09 | Se decide que el prompt pida Planned Additional GBP Categories | Servicio de cerrajería de urgencia, Servicio de duplicado de llaves | GMB Crush | Categorías adicionales determinan cuántas AC se generan | ← 1.17, 1.18 | §8 |

## Bloque 3 — Outputs del prompt

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 12.10 | Se decide que el prompt genere URL Matrix | Sí | GMB Crush | URL Matrix es la fuente de verdad operativa del cluster | no | §17 |
| 12.11 | Se decide que el prompt genere Page Type Rules | Sí | GMB Crush | Page Type Rules garantiza coherencia entre URL y schema | no | §17 |
| 12.12 | Se decide que el prompt genere Content Architecture | Sí | GMB Crush | Sin arquitectura, el copy del Paso 15 no tiene esqueleto | no | §17 |
| 12.13 | Se decide que el prompt genere Internal Linking Map | Sí | GMB Crush | Sin map de links, la autoridad no fluye según jerarquía | no | §17 |
| 12.14 | Se decide que el prompt genere Priority Score | Sí | GMB Crush | Priority Score traduce el cluster a orden de publicación | no | §17 |
| 12.15 | Se decide que el prompt genere Publishing Plan | Sí | GMB Crush | Publishing Plan agrupa páginas en fases coherentes | no | §17 |
| 12.16 | Se decide que el prompt genere QA Checklist | Sí | GMB Crush | QA Checklist evita publicar deuda técnica invisible | no | §17 |
| 12.17 | Se decide que el prompt genere GBP Creation & Website Alignment | Paso 14 | GMB Crush | Sin Paso 14 el ecosistema GBP-web queda desalineado | no | §17 |

## Bloque 4 — Restricciones del prompt

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 12.18 | Se decide que el prompt no invente GBP URL | GBP URL N/A hasta creación | GMB Crush | Inventar GBP URL rompe sameAs y dispara penalizaciones | no | §35 |
| 12.19 | Se decide que el prompt no cree URLs para LCA por defecto | No URLs LCA | GMB Crush | URL por LCA dispersa autoridad y canibaliza la LBS | no | §22 |
| 12.20 | Se decide que el prompt mantenga web-first | Web primero, GBP después | GMB Crush | GBP sin web detrás no soporta sameAs ni schema integrado | no | §35 |
