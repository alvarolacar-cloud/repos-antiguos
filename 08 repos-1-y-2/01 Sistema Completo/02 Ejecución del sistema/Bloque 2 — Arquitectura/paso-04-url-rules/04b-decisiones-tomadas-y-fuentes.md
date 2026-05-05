# Paso 4 — URL Rules

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

## Bloque 1 — Dominio y formato general

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 4.01 | Se decide usar HTTPS | https:// | Sin HTTPS Google penaliza ranking y bloquea schema | GMB Crush | Sí | no | §7 |
| 4.02 | Se decide usar dominio canónico con www | https://www.cerrajerosmadrid24h.com | Sin canónica fija se generan duplicados con/sin www | GMB Crush | Sí | ← 1.03 |  Paso-04 §7; Paso-01 §8 |
| 4.03 | Se decide usar trailing slash | Sí | Trailing inconsistente genera duplicados y dilución | GMB Crush | Sí | no | §8 |

## Bloque 2 — Patrones URL principales

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 4.04 | Se decide que la Homepage use raíz | / | Raíz da jerarquía SEO máxima al ancla del cluster | GMB Crush | Sí | no | §9 |
| 4.05 | Se decide que Service Overview use categoría + servicio | /cerrajero/[service-slug]/ | Categoría como silo y servicio como hijo dentro | GMB Crush | Sí | no |  Paso-04 §10; Paso-05 §8 |
| 4.06 | Se decide que LBS use categoría + ciudad + servicio | /cerrajero/madrid/[service-slug]/ | Ciudad en path comunica intención local a Google | GMB Crush | Sí | no |  Paso-04 §12; Paso-05 §9 |
| 4.07 | Se decide que Additional Category use categoría + ciudad + servicio | /cerrajero/madrid/duplicado-llaves/ | Mismo patrón que LBS para alinear con expectativa SERP | GMB Crush | Sí | no |  Paso-04 §13; Paso-05 §10 |
| 4.08 | Se decide que GeoHub use ciudad | /madrid/ | Ciudad sola = entidad geográfica raíz del cluster | GMB Crush | Sí | no |  Paso-04 §11; Paso-05 §11 |
| 4.09 | Se decide que GeoArticles usen ciudad + topic | /madrid/[article-topic-slug]/ | Ciudad da contexto local a topics informativos | GMB Crush | Sí | no |  Paso-04 §14; Paso-05 §12 |

## Bloque 3 — URLs concretas de servicio

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 4.10 | Se decide crear URL local de Cerrajero urgente | /cerrajero/madrid/cerrajero-urgente/ | URL aplica patrón LBS al servicio core en Main City | GMB Crush | Sí | ← 1.34 |  Paso-04 §12; Paso-05 §9; Paso-03 §16 |
| 4.11 | Se decide crear URL local de Apertura de puertas | /cerrajero/madrid/apertura-puertas/ | URL aplica patrón LBS al servicio core en Main City | GMB Crush | Sí | ← 1.35 |  Paso-04 §12; Paso-05 §9; Paso-03 §16 |
| 4.12 | Se decide crear URL local de Cambio de cerraduras | /cerrajero/madrid/cambio-cerraduras/ | URL aplica patrón LBS al servicio core en Main City | GMB Crush | Sí | ← 1.36 |  Paso-04 §12; Paso-05 §9; Paso-03 §16 |
| 4.13 | Se decide crear URL local de Cambio de bombines | /cerrajero/madrid/cambio-bombines/ | URL aplica patrón LBS al servicio core en Main City | GMB Crush | Sí | ← 1.37 |  Paso-04 §12; Paso-05 §9; Paso-03 §16 |
| 4.14 | Se decide crear URL local de Instalación de cerraduras de seguridad | /cerrajero/madrid/instalacion-cerraduras-seguridad/ | URL aplica patrón LBS al servicio core en Main City | GMB Crush | Sí | ← 1.38 |  Paso-04 §12; Paso-05 §9; Paso-03 §16 |

## Bloque 4 — Reglas anti-URL débil

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 4.15 | Se decide no usar `near-me` en URLs principales | No se usa near-me | `near-me` no existe como entidad real, solo como query | GMB Crush | Sí | no |  Paso-04 §19; Paso-04 §21 |
| 4.16 | Se decide no usar adjetivos SEO vacíos en URLs | No usar best, cheap, top-rated | Adjetivos manipulativos disparan filtros anti-spam | GMB Crush | Sí | no |  Paso-04 §19; Paso-04 §21 |
| 4.17 | Se decide no crear URLs para Local Coverage Areas en la base | No /almagro/, no /chamberi/, no /salamanca/ | URL por LCA canibaliza la LBS y dispersa autoridad | GMB Crush | Sí | no |  Paso-04 §15; Paso-03 §8; Paso-06 §31 |
| 4.18 | Se decide que Approved Expansion Areas podrían generar URLs solo en expansión | None in Phase 1 | Sin tracción real las URLs de expansión son zombies | GMB Crush | Sí | no |  Paso-04 §16; Paso-02 §13; Paso-01 §16 |
