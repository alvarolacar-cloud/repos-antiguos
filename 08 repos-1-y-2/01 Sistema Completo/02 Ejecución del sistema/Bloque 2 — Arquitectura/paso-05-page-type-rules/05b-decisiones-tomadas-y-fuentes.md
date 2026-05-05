# Paso 5 — Page Type Rules

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

## Bloque 1 — Homepage

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 5.01 | Se decide que la Homepage sea Root Entity Anchor | / | Homepage concentra todas las señales de marca y entidad | GMB Crush | Sí | no |  Paso-05 §7 |
| 5.02 | Se decide que la Homepage ancle marca, servicio principal y ciudad | Cerrajeros Madrid 24h + Cerrajero + Madrid | Triángulo marca-categoría-ciudad activa relevancia local máxima | GMB Crush | Sí | ← 1.01, 1.16, 1.20 |  Paso-05 §7; Paso-01 §7; Paso-01 §10; Paso-01 §12 |
| 5.03 | Se decide que la Homepage incluya servicios core | 5 servicios principales | Servicios en Homepage distribuyen autoridad a las SO | GMB Crush | Sí | ← 1.34–1.38 |  Paso-05 §7; Paso-01 §14 |
| 5.04 | Se decide que la Homepage incluya NAP y CTA | NAP + Llamar ahora | NAP visible refuerza señales locales y conversión | GMB Crush | Sí | ← 1.08–1.15, 1.42 |  Paso-05 §7; Paso-01 §9; Paso-01 §17 |

## Bloque 2 — Service Overview Pages

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 5.05 | Se decide que las Service Overview Pages sean no geolocalizadas | /cerrajero/[service]/ | Sin ciudad capturan intención temática nacional o regional | GMB Crush | Sí | no |  Paso-05 §8 |
| 5.06 | Se decide que Cerrajero urgente tenga Service Overview Page | /cerrajero/cerrajero-urgente/ | SO es pillar temático que distribuye autoridad a la LBS | GMB Crush | Sí | ← 1.34 |  Paso-05 §8; Paso-04 §10; Paso-03 §16 |
| 5.07 | Se decide que Apertura de puertas tenga Service Overview Page | /cerrajero/apertura-puertas/ | SO es pillar temático que distribuye autoridad a la LBS | GMB Crush | Sí | ← 1.35 |  Paso-05 §8; Paso-04 §10; Paso-03 §16 |
| 5.08 | Se decide que Cambio de cerraduras tenga Service Overview Page | /cerrajero/cambio-cerraduras/ | SO es pillar temático que distribuye autoridad a la LBS | GMB Crush | Sí | ← 1.36 |  Paso-05 §8; Paso-04 §10; Paso-03 §16 |
| 5.09 | Se decide que Cambio de bombines tenga Service Overview Page | /cerrajero/cambio-bombines/ | SO es pillar temático que distribuye autoridad a la LBS | GMB Crush | Sí | ← 1.37 |  Paso-05 §8; Paso-04 §10; Paso-03 §16 |
| 5.10 | Se decide que Instalación de cerraduras de seguridad tenga Service Overview Page | /cerrajero/instalacion-cerraduras-seguridad/ | SO es pillar temático que distribuye autoridad a la LBS | GMB Crush | Sí | ← 1.38 |  Paso-05 §8; Paso-04 §10; Paso-03 §16 |

## Bloque 3 — Location-Based Service Pages

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 5.11 | Se decide que las LBS sean convertidores locales | /cerrajero/madrid/[service]/ | LBS captura intención servicio + ciudad y convierte | GMB Crush | Sí | no |  Paso-05 §9 |
| 5.12 | Se decide que Cerrajero urgente en Madrid sea LBS canónica | /cerrajero/madrid/cerrajero-urgente/ | LBS Madrid es el principal punto de conversión del cluster | GMB Crush | Sí | ← 1.34 |  Paso-05 §9; Paso-04 §12; Paso-03 §16 |
| 5.13 | Se decide que las LBS incluyan servicio + ciudad en H1 y metadata | [Service] + Madrid | Servicio + ciudad en H1 alinea con la query SERP local | GMB Crush | Sí | ← 1.20 |  Paso-05 §9; Paso-06 §14 |

## Bloque 4 — Additional Category, GeoHub y GeoArticles

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 5.14 | Se decide que Duplicado de llaves sea Additional Category Page | /cerrajero/madrid/duplicado-llaves/ | AC da soporte web a categoría GBP sin servicio core | GMB Crush | Sí | ← 1.18 |  Paso-05 §10 |
| 5.15 | Se decide que `/madrid/` sea GeoHub | GeoHub de Madrid | GeoHub agrupa la cobertura local de la Main City | GMB Crush | Sí | ← 1.20 |  Paso-05 §11 |
| 5.16 | Se decide que GeoArticles sean boosters semánticos, no landings | 15 GeoArticles | Captan tráfico informativo y derivan a la LBS de conversión | GMB Crush | Sí | no |  Paso-05 §12 |
| 5.17 | Se decide que GeoArticles enlacen a su LBS y GeoHub | GeoArticle → LBS + /madrid/ | Sin link a LBS el tráfico informativo no convierte | GMB Crush | Sí | no |  Paso-05 §12; Paso-07 §13 |

## Bloque 5 — Schema

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 5.18 | Se decide asignar schema por tipo de página | Organization, WebSite, Service, LocalBusiness, CollectionPage, Article | Schema mismatch confunde a Google sobre la entidad servida | GMB Crush | Sí | no |  Paso-05 §19 |
| 5.19 | Se decide no usar `sameAs` de GBP hasta que exista el GBP | N/A hasta Paso 14 | `sameAs` a GBP inexistente rompe validación schema y E-E-A-T | GMB Crush | Sí | no |  Paso-05 §19; Paso-14 §11 |
