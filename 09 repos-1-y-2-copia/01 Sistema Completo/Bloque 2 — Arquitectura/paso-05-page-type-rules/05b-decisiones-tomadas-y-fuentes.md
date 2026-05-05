# Paso 5 — Page Type Rules

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`05a-ejecucion-page-type-rules.md`).

---

## Bloque 1 — Homepage

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 5.01 | Se decide que la Homepage sea Root Entity Anchor | / | GMB Crush | Homepage concentra todas las señales de marca y entidad | no | §7 |
| 5.02 | Se decide que la Homepage ancle marca, servicio principal y ciudad | Cerrajeros Madrid 24h + Cerrajero + Madrid | GMB Crush | Triángulo marca-categoría-ciudad activa relevancia local máxima | ← 1.01, 1.16, 1.20 | §7 |
| 5.03 | Se decide que la Homepage incluya servicios core | 5 servicios principales | GMB Crush | Servicios en Homepage distribuyen autoridad a las SO | ← 1.34–1.38 | §7 |
| 5.04 | Se decide que la Homepage incluya NAP y CTA | NAP + Llamar ahora | GMB Crush | NAP visible refuerza señales locales y conversión | ← 1.08–1.15, 1.42 | §7 |

## Bloque 2 — Service Overview Pages

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 5.05 | Se decide que las Service Overview Pages sean no geolocalizadas | /cerrajero/[service]/ | GMB Crush | Sin ciudad capturan intención temática nacional o regional | no | §8 |
| 5.06 | Se decide que Cerrajero urgente tenga Service Overview Page | /cerrajero/cerrajero-urgente/ | GMB Crush | SO es pillar temático que distribuye autoridad a la LBS | ← 1.34 | §8 |
| 5.07 | Se decide que Apertura de puertas tenga Service Overview Page | /cerrajero/apertura-puertas/ | GMB Crush | SO es pillar temático que distribuye autoridad a la LBS | ← 1.35 | §8 |
| 5.08 | Se decide que Cambio de cerraduras tenga Service Overview Page | /cerrajero/cambio-cerraduras/ | GMB Crush | SO es pillar temático que distribuye autoridad a la LBS | ← 1.36 | §8 |
| 5.09 | Se decide que Cambio de bombines tenga Service Overview Page | /cerrajero/cambio-bombines/ | GMB Crush | SO es pillar temático que distribuye autoridad a la LBS | ← 1.37 | §8 |
| 5.10 | Se decide que Instalación de cerraduras de seguridad tenga Service Overview Page | /cerrajero/instalacion-cerraduras-seguridad/ | GMB Crush | SO es pillar temático que distribuye autoridad a la LBS | ← 1.38 | §8 |

## Bloque 3 — Location-Based Service Pages

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 5.11 | Se decide que las LBS sean convertidores locales | /cerrajero/madrid/[service]/ | GMB Crush | LBS captura intención servicio + ciudad y convierte | no | §9 |
| 5.12 | Se decide que Cerrajero urgente en Madrid sea LBS canónica | /cerrajero/madrid/cerrajero-urgente/ | GMB Crush | LBS Madrid es el principal punto de conversión del cluster | ← 1.34 | §9 |
| 5.13 | Se decide que las LBS incluyan servicio + ciudad en H1 y metadata | [Service] + Madrid | GMB Crush | Servicio + ciudad en H1 alinea con la query SERP local | ← 1.20 | §9 |

## Bloque 4 — Additional Category, GeoHub y GeoArticles

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 5.14 | Se decide que Duplicado de llaves sea Additional Category Page | /cerrajero/madrid/duplicado-llaves/ | GMB Crush | AC da soporte web a categoría GBP sin servicio core | ← 1.18 | §10 |
| 5.15 | Se decide que `/madrid/` sea GeoHub | GeoHub de Madrid | GMB Crush | GeoHub agrupa la cobertura local de la Main City | ← 1.20 | §11 |
| 5.16 | Se decide que GeoArticles sean boosters semánticos, no landings | 15 GeoArticles | GMB Crush | Captan tráfico informativo y derivan a la LBS de conversión | no | §12 |
| 5.17 | Se decide que GeoArticles enlacen a su LBS y GeoHub | GeoArticle → LBS + /madrid/ | GMB Crush | Sin link a LBS el tráfico informativo no convierte | no | §12 |

## Bloque 5 — Schema

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 5.18 | Se decide asignar schema por tipo de página | Organization, WebSite, Service, LocalBusiness, CollectionPage, Article | GMB Crush | Schema mismatch confunde a Google sobre la entidad servida | no | §19 |
| 5.19 | Se decide no usar `sameAs` de GBP hasta que exista el GBP | N/A hasta Paso 14 | GMB Crush | `sameAs` a GBP inexistente rompe validación schema y E-E-A-T | no | §19 |
