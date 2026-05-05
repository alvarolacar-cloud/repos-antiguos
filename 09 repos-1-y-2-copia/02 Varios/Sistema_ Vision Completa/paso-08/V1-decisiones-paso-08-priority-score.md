# Paso 8 — Priority Score

Fase 1 de trazabilidad: solo se listan decisiones tomadas en el ejemplo **Cerrajeros Madrid 24h**.

No se asignan fuentes todavía.

---

## Bloque 1 — Fórmula de prioridad

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 8.01 | Se decide usar una fórmula de seis factores | Revenue + Intent + GBP Relevance + Local Relevance + Gap + Urgency |
| 8.02 | Se decide no usar City Priority en la base | Se usa Local Relevance |

## Bloque 2 — Ejemplo canónico

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 8.03 | Se decide evaluar como ejemplo la LBS de Cerrajero urgente | `/cerrajero/madrid/cerrajero-urgente/` |
| 8.04 | Se asigna Revenue Value | 5 |
| 8.05 | Se asigna Search Intent | 5 |
| 8.06 | Se asigna GBP Category Relevance | 5 |
| 8.07 | Se asigna Local Relevance | 5 |
| 8.08 | Se asigna Competition Gap | 4 |
| 8.09 | Se asigna Conversion Urgency | 5 |
| 8.10 | Se calcula el score total | 29 |
| 8.11 | Se asigna prioridad | P1 |

## Bloque 3 — Inventario completo

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 8.12 | Se decide asignar Priority Score a las 28 URLs SEO base | 28 URLs |
| 8.13 | Se decide que `/contacto/` tenga prioridad operativa, no SEO | Página auxiliar |
| 8.14 | Se decide que GeoArticles se prioricen después de sus páginas padre | GeoArticle después de LBS |
| 8.15 | Se decide que la matriz completa de scores de las 28 URLs está documentada en el paso del sistema | Ver `08-priority-score.md` — tabla completa con score y prioridad por URL |
