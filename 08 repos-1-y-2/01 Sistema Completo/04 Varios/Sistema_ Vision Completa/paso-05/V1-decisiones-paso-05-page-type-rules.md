# Paso 5 — Page Type Rules

Fase 1 de trazabilidad: solo se listan decisiones tomadas en el ejemplo **Cerrajeros Madrid 24h**.

No se asignan fuentes todavía.

---

## Bloque 1 — Homepage

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 5.01 | Se decide que la Homepage sea Root Entity Anchor | `/` |
| 5.02 | Se decide que la Homepage ancle marca, servicio principal y ciudad | Cerrajeros Madrid 24h + Cerrajero + Madrid |
| 5.03 | Se decide que la Homepage incluya servicios core | 5 servicios principales |
| 5.04 | Se decide que la Homepage incluya NAP y CTA | NAP + Llamar ahora |

## Bloque 2 — Service Overview Pages

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 5.05 | Se decide que las Service Overview Pages sean no geolocalizadas | `/cerrajero/[service]/` |
| 5.06 | Se decide que Cerrajero urgente tenga Service Overview Page | `/cerrajero/cerrajero-urgente/` |
| 5.07 | Se decide que Apertura de puertas tenga Service Overview Page | `/cerrajero/apertura-puertas/` |
| 5.08 | Se decide que Cambio de cerraduras tenga Service Overview Page | `/cerrajero/cambio-cerraduras/` |
| 5.09 | Se decide que Cambio de bombines tenga Service Overview Page | `/cerrajero/cambio-bombines/` |
| 5.10 | Se decide que Instalación de cerraduras de seguridad tenga Service Overview Page | `/cerrajero/instalacion-cerraduras-seguridad/` |

## Bloque 3 — Location-Based Service Pages

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 5.11 | Se decide que las LBS sean convertidores locales | `/cerrajero/madrid/[service]/` |
| 5.12 | Se decide que Cerrajero urgente en Madrid sea LBS canónica | `/cerrajero/madrid/cerrajero-urgente/` |
| 5.13 | Se decide que las LBS incluyan servicio + ciudad en H1 y metadata | `[Service] + Madrid` |

## Bloque 4 — Additional Category, GeoHub y GeoArticles

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 5.14 | Se decide que Duplicado de llaves sea Additional Category Page | `/cerrajero/madrid/duplicado-llaves/` |
| 5.15 | Se decide que `/madrid/` sea GeoHub | GeoHub de Madrid |
| 5.16 | Se decide que GeoArticles sean boosters semánticos, no landings | 15 GeoArticles |
| 5.17 | Se decide que GeoArticles enlacen a su LBS y GeoHub | GeoArticle → LBS + `/madrid/` |

## Bloque 5 — Schema

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 5.18 | Se decide asignar schema por tipo de página | Organization, WebSite, Service, LocalBusiness, CollectionPage, Article |
| 5.19 | Se decide no usar `sameAs` de GBP hasta que exista el GBP | N/A hasta Paso 14 |
