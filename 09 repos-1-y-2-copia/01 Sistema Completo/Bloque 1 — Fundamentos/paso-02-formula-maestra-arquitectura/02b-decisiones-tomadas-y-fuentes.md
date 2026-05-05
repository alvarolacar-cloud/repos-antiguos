# Paso 2 — Fórmula Maestra de Arquitectura

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`02a-ejecucion-formula-maestra-arquitectura.md`).

---

## Bloque 1 — Alcance de la fórmula base

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 2.01 | Se decide que la fórmula base se construye sobre una sola Main City | Madrid | GMB Crush | Múltiples Main Cities diluyen marca y dispersan autoridad | ← 1.20 | §8 |
| 2.02 | Se decide que las Local Coverage Areas no multiplican páginas por defecto | Almagro, Chamberí, Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa y Prosperidad no generan URLs base | GMB Crush | Multiplicar por LCAs canibalizaría la LBS de Main City | no | §8 |
| 2.03 | Se decide que las Approved Expansion Areas no entran en la fórmula inicial | None in Phase 1 | GMB Crush | Expansión depende de tracción real, no del cluster base | no | §17 |

## Bloque 2 — Servicios incluidos en el cálculo

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 2.04 | Se define el número de servicios principales usados en la fórmula | S = 5 | GMB Crush | S es la palanca que multiplica páginas del cluster | ← 1.34–1.38 | §9 |
| 2.05 | Se incluye Cerrajero urgente en el cálculo | Cerrajero urgente | GMB Crush | Cada servicio core multiplica SO + LBS + GeoArticles | ← 1.34 | §9 |
| 2.06 | Se incluye Apertura de puertas en el cálculo | Apertura de puertas | GMB Crush | Cada servicio core multiplica SO + LBS + GeoArticles | ← 1.35 | §9 |
| 2.07 | Se incluye Cambio de cerraduras en el cálculo | Cambio de cerraduras | GMB Crush | Cada servicio core multiplica SO + LBS + GeoArticles | ← 1.36 | §9 |
| 2.08 | Se incluye Cambio de bombines en el cálculo | Cambio de bombines | GMB Crush | Cada servicio core multiplica SO + LBS + GeoArticles | ← 1.37 | §9 |
| 2.09 | Se incluye Instalación de cerraduras de seguridad en el cálculo | Instalación de cerraduras de seguridad | GMB Crush | Cada servicio core multiplica SO + LBS + GeoArticles | ← 1.38 | §9 |

## Bloque 3 — Páginas generadas por la fórmula

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 2.10 | Se decide crear una Homepage | 1 Homepage | GMB Crush | Homepage única concentra señales de marca y entidad | no | §8 |
| 2.11 | Se decide crear una Service Overview Page por cada servicio principal | 5 Service Overview Pages | GMB Crush | Cada servicio core necesita pillar temático sin ciudad | ← 1.34–1.38 | §8 |
| 2.12 | Se decide crear un GeoHub para la Main City | 1 GeoHub para Madrid | GMB Crush | GeoHub agrupa la cobertura local de la Main City | no | §8 |
| 2.13 | Se decide crear una Location-Based Service Page por cada servicio principal en Madrid | 5 LBS | GMB Crush | Cada servicio en Main City necesita landing de conversión | ← 1.34–1.38 | §8 |
| 2.14 | Se decide crear una Additional Category Page para la categoría adicional efectiva | 1 Additional Category Page | GMB Crush | AC da soporte web a categoría GBP sin servicio core | ← 1.18 | §10 |

## Bloque 4 — Categorías adicionales efectivas

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 2.15 | Se decide que Servicio de cerrajería de urgencia no suma como categoría adicional separada | Queda cubierta por Cerrajero urgente | GMB Crush | Categoría duplicada con servicio core canibaliza la SO | ← 1.39 | §10 |
| 2.16 | Se decide que Servicio de duplicado de llaves sí cuenta como categoría adicional efectiva | A = 1 | GMB Crush | Categoría sin landing dejaría tráfico GBP sin destino web | ← 1.40 | §10 |

## Bloque 5 — GeoArticles

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 2.17 | Se decide usar 3 GeoArticles por servicio principal | G = 3 | GMB Crush | G constante del cluster para cobertura semántica completa | no | §11 |
| 2.18 | Se decide calcular GeoArticles como G × S | 3 × 5 | GMB Crush | Cluster escala con servicios × satélites por servicio | ← 1.34–1.38 | §11 |
| 2.19 | Se calcula el número total de GeoArticles | 15 GeoArticles | GMB Crush | Resultado operativo de aplicar G × S al cluster | ← 1.34–1.38 | §11 |
| 2.20 | Se decide que los GeoArticles se generan para Madrid, no para cada Local Coverage Area | 15 GeoArticles para Madrid | GMB Crush | GeoArticles por LCA fragmentarían la autoridad temática | no | §11 |

## Bloque 6 — Total de páginas SEO base

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 2.21 | Se calcula el bloque de Homepage | 1 página | GMB Crush | Homepage única concentra señales de marca y entidad | no | §16 |
| 2.22 | Se calcula el bloque de Service Overview Pages | 5 páginas | GMB Crush | Cada servicio core necesita pillar temático sin ciudad | ← 1.34–1.38 | §16 |
| 2.23 | Se calcula el bloque de GeoHub | 1 página | GMB Crush | GeoHub agrupa la cobertura local de la Main City | no | §16 |
| 2.24 | Se calcula el bloque de Location-Based Service Pages | 5 páginas | GMB Crush | Cada servicio en Main City necesita landing de conversión | ← 1.34–1.38 | §16 |
| 2.25 | Se calcula el bloque de Additional Category Pages | 1 página | GMB Crush | AC da soporte web a categoría GBP sin servicio core | ← 1.18 | §16 |
| 2.26 | Se calcula el bloque de GeoArticles | 15 páginas | GMB Crush | Cluster escala con servicios × satélites por servicio | ← 1.34–1.38 | §16 |
| 2.27 | Se calcula el total de páginas SEO base | 28 páginas SEO base | GMB Crush | Total operativo del cluster antes de QA y publicación | ← 1.18, 1.34–1.38 | §16 |
| 2.28 | Se decide que `/contacto/` queda fuera del inventario SEO base | Página auxiliar | GMB Crush | Contacto es página auxiliar sin score SEO competitivo | no | §16 |
