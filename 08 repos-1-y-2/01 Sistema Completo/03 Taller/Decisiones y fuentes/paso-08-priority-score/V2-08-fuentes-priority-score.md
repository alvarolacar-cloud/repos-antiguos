# Paso 8 — Priority Score

Fase 2 de trazabilidad del sistema GMB Crush.

Fuentes permitidas:

```text
GMB Crush
Input humano
Input humano + GMB Crush
Datos de búsqueda
Competidores
IA sin respaldo
GMB Crush + IA sin respaldo
Input humano + IA sin respaldo
IA heredada (paso X.YY)
Decisión de diseño
```

---

## Bloque 1 — Fórmula de prioridad

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 8.01 · Paso-08 §7 Fórmula | Se decide usar una fórmula de seis factores | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Los 6 factores son Revenue + Intent + GBP Relevance + Local Relevance + Gap + Urgency. | Revenue + Intent + GBP Relevance + Local Relevance + Gap + Urgency |
| 8.02 · Paso-08 §11 Local Relevance | Se decide no usar City Priority en la base | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La base tiene una sola Main City; se sustituye por Local Relevance. | Se usa Local Relevance |

## Bloque 2 — Ejemplo canónico

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 8.03 · Paso-08 §17 Tabla ejemplo | Se decide evaluar como ejemplo la LBS de Cerrajero urgente | IA heredada (paso 1.34) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La estructura LBS canónica es GMB Crush. | /cerrajero/madrid/cerrajero-urgente/ |
| 8.04 · Paso-08 §8 Revenue Value | Se asigna Revenue Value | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. Requiere ticket medio + márgenes del cliente. | 5 |
| 8.05 · Paso-08 §9 Search Intent | Se asigna Search Intent | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Requiere keyword research (volumen + intent type). | 5 |
| 8.06 · Paso-08 §10 GBP Category Relevance | Se asigna GBP Category Relevance | GMB Crush + IA sin respaldo | GMB Crush valida la regla de relevancia con categoría GBP. El valor concreto 5 es IA sin validar contra el catálogo oficial GBP. | 5 |
| 8.07 · Paso-08 §11 Local Relevance | Se asigna Local Relevance | Input humano + GMB Crush | El cliente aporta Madrid como Main City y GMB Crush establece que LBS de Madrid es estructuralmente relevante. | 5 |
| 8.08 · Paso-08 §12 Competition Gap | Se asigna Competition Gap | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Requiere SERP analysis y gap competitivo. | 4 |
| 8.09 · Paso-08 §13 Conversion Urgency | Se asigna Conversion Urgency | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Defendible por la naturaleza urgente del servicio, pero sin formalizar. | 5 |
| 8.10 · Paso-08 §17 Tabla ejemplo | Se calcula el score total | IA sin respaldo | El score deriva de valores no validados con datos reales. Suma de factores no validados. | 29 |
| 8.11 · Paso-08 §17 Tabla ejemplo | Se asigna prioridad | IA sin respaldo | La prioridad deriva del score pendiente de validación. | P1 |

## Bloque 3 — Inventario completo

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 8.12 · Paso-08 §31.1 Inventario completo | Se decide asignar Priority Score a las 28 URLs SEO base | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Cada URL del inventario debe tener prioridad. | 28 URLs |
| 8.13 · Paso-08 §31.1 Inventario completo | Se decide que `/contacto/` tenga prioridad operativa, no SEO | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La página de contacto es auxiliar. | Página auxiliar |
| 8.14 · Paso-08 §18 Orden | Se decide que GeoArticles se prioricen después de sus páginas padre | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Regla de dependencias: GeoArticle siempre después de su LBS. | GeoArticle después de LBS |
| 8.15 · Paso-08 §31.1 Inventario completo | Se decide que la matriz completa de scores de las 28 URLs está documentada en el paso del sistema | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Tabla canónica vive en `08-priority-score.md`. | Ver tabla completa con score y prioridad por URL |
