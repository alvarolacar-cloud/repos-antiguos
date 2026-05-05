# Paso 11 — Pseudocódigo del Sistema

Fase 1 de trazabilidad: solo se listan decisiones tomadas en el ejemplo **Cerrajeros Madrid 24h**.

No se asignan fuentes todavía.

---

## Bloque 1 — Inputs, slugs y categorías

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 11.01 | Se decide cargar inputs base | Business name, URL, NAP, Main City, servicios, LCA, GBP status |
| 11.02 | Se decide normalizar slugs | Cerrajero urgente → `cerrajero-urgente` |
| 11.03 | Se decide validar categorías adicionales | Cubierta / necesita página |

## Bloque 2 — Generación base

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 11.04 | Se decide generar Homepage | `HP-001` |
| 11.05 | Se decide generar Service Overview Pages | 5 páginas |
| 11.06 | Se decide generar GeoHub de Madrid | `/madrid/` |
| 11.07 | Se decide generar LBS de Madrid | 5 páginas |
| 11.08 | Se decide generar Additional Category Page efectiva | `/cerrajero/madrid/duplicado-llaves/` |
| 11.09 | Se decide generar GeoArticles | 15 artículos |

## Bloque 3 — Local Coverage Areas y expansión

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 11.10 | Se decide inyectar Local Coverage Areas en contenido y schema | LCA como señales GEO |
| 11.11 | Se decide no generar expansión si no está aprobada | Approved Expansion Areas: None |

## Bloque 4 — Enlaces, prioridad, QA y outputs

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 11.12 | Se decide asignar enlaces internos por tipo de página | Internal Linking Map |
| 11.13 | Se decide calcular prioridad por página | Priority Score |
| 11.14 | Se decide comprobar dependencias | LBS requiere Service Overview + GeoHub |
| 11.15 | Se decide ejecutar QA antes de publicar | QA Matrix |
| 11.16 | Se decide producir matrices finales | URL Matrix, Internal Linking Matrix, Schema Map, Priority Score, Publishing Plan, QA Matrix |
