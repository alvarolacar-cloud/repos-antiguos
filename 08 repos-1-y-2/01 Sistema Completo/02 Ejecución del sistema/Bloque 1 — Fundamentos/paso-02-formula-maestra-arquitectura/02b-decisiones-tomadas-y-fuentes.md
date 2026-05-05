# Paso 2 — Fórmula Maestra de Arquitectura

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

## Bloque 1 — Alcance de la fórmula base

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 2.01 | Se decide que la fórmula base se construye sobre una sola Main City | Madrid | Múltiples Main Cities diluyen marca y dispersan autoridad | GMB Crush | Sí | ← 1.20 |  Paso-02 §8; Paso-01 §12 |
| 2.02 | Se decide que las Local Coverage Areas no multiplican páginas por defecto | Almagro, Chamberí, Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa y Prosperidad no generan URLs base | Multiplicar por LCAs canibalizaría la LBS de Main City | GMB Crush | Sí | no |  Paso-02 §12; Paso-02 §24; Paso-02 §8 |
| 2.03 | Se decide que las Approved Expansion Areas no entran en la fórmula inicial | None in Phase 1 | Expansión depende de tracción real, no del cluster base | GMB Crush | Sí | no |  Paso-02 §13; Paso-02 §25; Paso-02 §17 |

## Bloque 2 — Servicios incluidos en el cálculo

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 2.04 | Se define el número de servicios principales usados en la fórmula | S = 5 | S es la palanca que multiplica páginas del cluster | GMB Crush | Sí | ← 1.34–1.38 |  Paso-02 §9; Paso-01 §14 |
| 2.05 | Se incluye Cerrajero urgente en el cálculo | Cerrajero urgente | Cada servicio core multiplica SO + LBS + GeoArticles | GMB Crush | Sí | ← 1.34 |  Paso-02 §9; Paso-01 §14 |
| 2.06 | Se incluye Apertura de puertas en el cálculo | Apertura de puertas | Cada servicio core multiplica SO + LBS + GeoArticles | GMB Crush | Sí | ← 1.35 |  Paso-02 §9; Paso-01 §14 |
| 2.07 | Se incluye Cambio de cerraduras en el cálculo | Cambio de cerraduras | Cada servicio core multiplica SO + LBS + GeoArticles | GMB Crush | Sí | ← 1.36 |  Paso-02 §9; Paso-01 §14 |
| 2.08 | Se incluye Cambio de bombines en el cálculo | Cambio de bombines | Cada servicio core multiplica SO + LBS + GeoArticles | GMB Crush | Sí | ← 1.37 |  Paso-02 §9; Paso-01 §14 |
| 2.09 | Se incluye Instalación de cerraduras de seguridad en el cálculo | Instalación de cerraduras de seguridad | Cada servicio core multiplica SO + LBS + GeoArticles | GMB Crush | Sí | ← 1.38 |  Paso-02 §9; Paso-01 §14 |

## Bloque 3 — Páginas generadas por la fórmula

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 2.10 | Se decide crear una Homepage | 1 Homepage | Homepage única concentra señales de marca y entidad | GMB Crush | Sí | no |  Paso-02 §8; Paso-05 §7 |
| 2.11 | Se decide crear una Service Overview Page por cada servicio principal | 5 Service Overview Pages | Cada servicio core necesita pillar temático sin ciudad | GMB Crush | Sí | ← 1.34–1.38 |  Paso-02 §9; Paso-02 §8 |
| 2.12 | Se decide crear un GeoHub para la Main City | 1 GeoHub para Madrid | GeoHub agrupa la cobertura local de la Main City | GMB Crush | Sí | no |  Paso-02 §8; Paso-05 §11 |
| 2.13 | Se decide crear una Location-Based Service Page por cada servicio principal en Madrid | 5 LBS | Cada servicio en Main City necesita landing de conversión | GMB Crush | Sí | ← 1.34–1.38 |  Paso-02 §9; Paso-02 §23; Paso-05 §9 |
| 2.14 | Se decide crear una Additional Category Page para la categoría adicional efectiva | 1 Additional Category Page | AC da soporte web a categoría GBP sin servicio core | GMB Crush | Sí | ← 1.18 |  Paso-02 §10; Paso-05 §10 |

## Bloque 4 — Categorías adicionales efectivas

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 2.15 | Se decide que Servicio de cerrajería de urgencia no suma como categoría adicional separada | Queda cubierta por Cerrajero urgente | Categoría duplicada con servicio core canibaliza la SO | GMB Crush | Sí | ← 1.39 |  Paso-02 §10; Paso-01 §21 |
| 2.16 | Se decide que Servicio de duplicado de llaves sí cuenta como categoría adicional efectiva | A = 1 | Categoría sin landing dejaría tráfico GBP sin destino web | GMB Crush | Sí | ← 1.40 |  Paso-02 §10; Paso-01 §21 |

## Bloque 5 — GeoArticles

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 2.17 | Se decide usar 3 GeoArticles por servicio principal | G = 3 | G constante del cluster para cobertura semántica completa | GMB Crush | Sí | no |  Paso-02 §11 |
| 2.18 | Se decide calcular GeoArticles como G × S | 3 × 5 | Cluster escala con servicios × satélites por servicio | GMB Crush | Sí | ← 1.34–1.38 |  Paso-02 §11; Paso-02 §9 |
| 2.19 | Se calcula el número total de GeoArticles | 15 GeoArticles | Resultado operativo de aplicar G × S al cluster | GMB Crush | Sí | ← 1.34–1.38 |  Paso-02 §11; Paso-02 §23 |
| 2.20 | Se decide que los GeoArticles se generan para Madrid, no para cada Local Coverage Area | 15 GeoArticles para Madrid | GeoArticles por LCA fragmentarían la autoridad temática | GMB Crush | Sí | no |  Paso-02 §11; Paso-02 §12 |

## Bloque 6 — Total de páginas SEO base

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 2.21 | Se calcula el bloque de Homepage | 1 página | Homepage única concentra señales de marca y entidad | GMB Crush | Sí | no |  Paso-02 §16; Paso-02 §23 |
| 2.22 | Se calcula el bloque de Service Overview Pages | 5 páginas | Cada servicio core necesita pillar temático sin ciudad | GMB Crush | Sí | ← 1.34–1.38 |  Paso-02 §16; Paso-02 §9 |
| 2.23 | Se calcula el bloque de GeoHub | 1 página | GeoHub agrupa la cobertura local de la Main City | GMB Crush | Sí | no |  Paso-02 §16; Paso-02 §8 |
| 2.24 | Se calcula el bloque de Location-Based Service Pages | 5 páginas | Cada servicio en Main City necesita landing de conversión | GMB Crush | Sí | ← 1.34–1.38 |  Paso-02 §16; Paso-02 §9 |
| 2.25 | Se calcula el bloque de Additional Category Pages | 1 página | AC da soporte web a categoría GBP sin servicio core | GMB Crush | Sí | ← 1.18 |  Paso-02 §16; Paso-02 §10 |
| 2.26 | Se calcula el bloque de GeoArticles | 15 páginas | Cluster escala con servicios × satélites por servicio | GMB Crush | Sí | ← 1.34–1.38 |  Paso-02 §16; Paso-02 §11 |
| 2.27 | Se calcula el total de páginas SEO base | 28 páginas SEO base | Total operativo del cluster antes de QA y publicación | GMB Crush | Sí | ← 1.18, 1.34–1.38 |  Paso-02 §23; Paso-02 §16 |
| 2.28 | Se decide que `/contacto/` queda fuera del inventario SEO base | Página auxiliar | Contacto es página auxiliar sin score SEO competitivo | GMB Crush | Sí | no |  Paso-02 §16; Paso-03 §7 |
