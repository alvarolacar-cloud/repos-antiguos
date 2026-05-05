# Paso 4 — URL Rules

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`04a-ejecucion-url-rules.md`).

---

## Bloque 1 — Dominio y formato general

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 4.01 | Se decide usar HTTPS | https:// | GMB Crush | Sin HTTPS Google penaliza ranking y bloquea schema | no | §7 |
| 4.02 | Se decide usar dominio canónico con www | https://www.cerrajerosmadrid24h.com | GMB Crush | Sin canónica fija se generan duplicados con/sin www | ← 1.03 | §7 |
| 4.03 | Se decide usar trailing slash | Sí | GMB Crush | Trailing inconsistente genera duplicados y dilución | no | §8 |

## Bloque 2 — Patrones URL principales

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 4.04 | Se decide que la Homepage use raíz | / | GMB Crush | Raíz da jerarquía SEO máxima al ancla del cluster | no | §9 |
| 4.05 | Se decide que Service Overview use categoría + servicio | /cerrajero/[service-slug]/ | GMB Crush | Categoría como silo y servicio como hijo dentro | no | §10 |
| 4.06 | Se decide que LBS use categoría + ciudad + servicio | /cerrajero/madrid/[service-slug]/ | GMB Crush | Ciudad en path comunica intención local a Google | no | §12 |
| 4.07 | Se decide que Additional Category use categoría + ciudad + servicio | /cerrajero/madrid/duplicado-llaves/ | GMB Crush | Mismo patrón que LBS para alinear con expectativa SERP | no | §13 |
| 4.08 | Se decide que GeoHub use ciudad | /madrid/ | GMB Crush | Ciudad sola = entidad geográfica raíz del cluster | no | §11 |
| 4.09 | Se decide que GeoArticles usen ciudad + topic | /madrid/[article-topic-slug]/ | GMB Crush | Ciudad da contexto local a topics informativos | no | §14 |

## Bloque 3 — URLs concretas de servicio

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 4.10 | Se decide crear URL local de Cerrajero urgente | /cerrajero/madrid/cerrajero-urgente/ | GMB Crush | URL aplica patrón LBS al servicio core en Main City | ← 1.34 | §12 |
| 4.11 | Se decide crear URL local de Apertura de puertas | /cerrajero/madrid/apertura-puertas/ | GMB Crush | URL aplica patrón LBS al servicio core en Main City | ← 1.35 | §12 |
| 4.12 | Se decide crear URL local de Cambio de cerraduras | /cerrajero/madrid/cambio-cerraduras/ | GMB Crush | URL aplica patrón LBS al servicio core en Main City | ← 1.36 | §12 |
| 4.13 | Se decide crear URL local de Cambio de bombines | /cerrajero/madrid/cambio-bombines/ | GMB Crush | URL aplica patrón LBS al servicio core en Main City | ← 1.37 | §12 |
| 4.14 | Se decide crear URL local de Instalación de cerraduras de seguridad | /cerrajero/madrid/instalacion-cerraduras-seguridad/ | GMB Crush | URL aplica patrón LBS al servicio core en Main City | ← 1.38 | §12 |

## Bloque 4 — Reglas anti-URL débil

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 4.15 | Se decide no usar `near-me` en URLs principales | No se usa near-me | GMB Crush | `near-me` no existe como entidad real, solo como query | no | §19 |
| 4.16 | Se decide no usar adjetivos SEO vacíos en URLs | No usar best, cheap, top-rated | GMB Crush | Adjetivos manipulativos disparan filtros anti-spam | no | §19 |
| 4.17 | Se decide no crear URLs para Local Coverage Areas en la base | No /almagro/, no /chamberi/, no /salamanca/ | GMB Crush | URL por LCA canibaliza la LBS y dispersa autoridad | no | §15 |
| 4.18 | Se decide que Approved Expansion Areas podrían generar URLs solo en expansión | None in Phase 1 | GMB Crush | Sin tracción real las URLs de expansión son zombies | no | §16 |
