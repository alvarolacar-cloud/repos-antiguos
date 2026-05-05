# Paso 2 — Fórmula Maestra de Arquitectura

Fase 1 de trazabilidad: solo se listan decisiones tomadas en el ejemplo **Cerrajeros Madrid 24h**.

No se asignan fuentes todavía.

---

## Bloque 1 — Alcance de la fórmula base

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 2.01 | Se decide que la fórmula base se construye sobre una sola Main City | Madrid |
| 2.02 | Se decide que las Local Coverage Areas no multiplican páginas por defecto | Almagro, Chamberí, Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa y Prosperidad no generan URLs base |
| 2.03 | Se decide que las Approved Expansion Areas no entran en la fórmula inicial | None in Phase 1 |

## Bloque 2 — Servicios incluidos en el cálculo

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 2.04 | Se define el número de servicios principales usados en la fórmula | S = 5 |
| 2.05 | Se incluye Cerrajero urgente en el cálculo | Cerrajero urgente |
| 2.06 | Se incluye Apertura de puertas en el cálculo | Apertura de puertas |
| 2.07 | Se incluye Cambio de cerraduras en el cálculo | Cambio de cerraduras |
| 2.08 | Se incluye Cambio de bombines en el cálculo | Cambio de bombines |
| 2.09 | Se incluye Instalación de cerraduras de seguridad en el cálculo | Instalación de cerraduras de seguridad |

## Bloque 3 — Páginas generadas por la fórmula

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 2.10 | Se decide crear una Homepage | 1 Homepage |
| 2.11 | Se decide crear una Service Overview Page por cada servicio principal | 5 Service Overview Pages |
| 2.12 | Se decide crear un GeoHub para la Main City | 1 GeoHub para Madrid |
| 2.13 | Se decide crear una Location-Based Service Page por cada servicio principal en Madrid | 5 LBS |
| 2.14 | Se decide crear una Additional Category Page para la categoría adicional efectiva | 1 Additional Category Page |

## Bloque 4 — Categorías adicionales efectivas

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 2.15 | Se decide que Servicio de cerrajería de urgencia no suma como categoría adicional separada | Queda cubierta por Cerrajero urgente |
| 2.16 | Se decide que Servicio de duplicado de llaves sí cuenta como categoría adicional efectiva | A = 1 |

## Bloque 5 — GeoArticles

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 2.17 | Se decide usar 3 GeoArticles por servicio principal | G = 3 |
| 2.18 | Se decide calcular GeoArticles como G × S | 3 × 5 |
| 2.19 | Se calcula el número total de GeoArticles | 15 GeoArticles |
| 2.20 | Se decide que los GeoArticles se generan para Madrid, no para cada Local Coverage Area | 15 GeoArticles para Madrid |

## Bloque 6 — Total de páginas SEO base

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 2.21 | Se calcula el bloque de Homepage | 1 página |
| 2.22 | Se calcula el bloque de Service Overview Pages | 5 páginas |
| 2.23 | Se calcula el bloque de GeoHub | 1 página |
| 2.24 | Se calcula el bloque de Location-Based Service Pages | 5 páginas |
| 2.25 | Se calcula el bloque de Additional Category Pages | 1 página |
| 2.26 | Se calcula el bloque de GeoArticles | 15 páginas |
| 2.27 | Se calcula el total de páginas SEO base | 28 páginas SEO base |
| 2.28 | Se decide que `/contacto/` queda fuera del inventario SEO base | Página auxiliar |
