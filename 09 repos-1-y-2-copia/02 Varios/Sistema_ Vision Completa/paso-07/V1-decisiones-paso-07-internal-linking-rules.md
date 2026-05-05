# Paso 7 — Internal Linking Rules

Fase 1 de trazabilidad: solo se listan decisiones tomadas en el ejemplo **Cerrajeros Madrid 24h**.

No se asignan fuentes todavía.

---

## Bloque 1 — Enlaces desde Homepage

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 7.01 | Se decide que la Homepage enlace a Service Overview Pages | 5 Service Overview Pages |
| 7.02 | Se decide que la Homepage enlace al GeoHub de Madrid | `/madrid/` |
| 7.03 | Se decide que la Homepage enlace a la página de categoría adicional | `/cerrajero/madrid/duplicado-llaves/` |
| 7.04 | Se decide que la Homepage enlace a contacto | `/contacto/` |

## Bloque 2 — Enlaces desde Service Overview y LBS

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 7.05 | Se decide que cada Service Overview enlace a su versión local en Madrid | `/cerrajero/[service]/` → `/cerrajero/madrid/[service]/` |
| 7.06 | Se decide que Service Overview enlace a servicios relacionados | Cross-links entre servicios |
| 7.07 | Se decide que LBS enlace a su página padre | LBS → Service Overview |
| 7.08 | Se decide que LBS enlace al GeoHub | LBS → `/madrid/` |
| 7.09 | Se decide que LBS enlace a servicios relacionados en Madrid | LBS → otras LBS |
| 7.10 | Se decide que LBS enlace a GeoArticles relacionados | LBS → GeoArticles |

## Bloque 3 — Enlaces desde GeoHub y GeoArticles

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 7.11 | Se decide que GeoHub enlace a todas las LBS de Madrid | 5 LBS |
| 7.12 | Se decide que GeoHub enlace a Additional Category Page | `/cerrajero/madrid/duplicado-llaves/` |
| 7.13 | Se decide que GeoHub enlace a GeoArticles | 15 GeoArticles |
| 7.14 | Se decide que GeoArticles enlacen a su LBS correspondiente | GeoArticle → LBS |
| 7.15 | Se decide que GeoArticles enlacen al GeoHub | GeoArticle → `/madrid/` |

## Bloque 4 — Restricciones de enlaces

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 7.16 | Se decide no enlazar Local Coverage Areas sin URL aprobada | No enlazar `/almagro/` |
| 7.17 | Se decide usar anchors contextuales | Anchors naturales |
| 7.18 | Se decide usar breadcrumbs | Home > Madrid > Servicio |
