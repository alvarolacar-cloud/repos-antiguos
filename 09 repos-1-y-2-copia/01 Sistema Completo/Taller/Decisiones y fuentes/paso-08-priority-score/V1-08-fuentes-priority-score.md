# Paso 8 — Priority Score

Fase 2 de trazabilidad del sistema GMB Crush.

Este documento usa la taxonomía final de fuentes, sin fuente territorial independiente.

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
```

Regla aplicada:

```text
Las zonas directas derivadas de la dirección física se tratan como Input humano + GMB Crush.
Las zonas candidatas no confirmadas se tratan como GMB Crush + IA sin respaldo.
```

---

## Bloque 1 — Fórmula de prioridad

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 8.01 · Paso-08 §7 Fórmula | Se usa una fórmula de seis factores | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Revenue + Intent + GBP Relevance + Local Relevance + Gap + Urgency |
| 8.02 · Paso-08 §8 City Priority | No se usa City Priority en la base | GMB Crush | El sistema base tiene una Main City; no hay comparación multi-ciudad. | Se usa Local Relevance |

## Bloque 2 — Ejemplo canónico

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 8.03 · Paso-08 §9 Ejemplo | Se evalúa la LBS de cerrajero urgente | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | /cerrajero/madrid/cerrajero-urgente/ |
| 8.04 · Paso-08 §9 Revenue | Se asigna Revenue Value | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | 5 |
| 8.05 · Paso-08 §9 Search Intent | Se asigna Search Intent | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | 5 |
| 8.06 · Paso-08 §9 GBP Relevance | Se asigna GBP Category Relevance | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 |
| 8.07 · Paso-08 §9 Local Relevance | Se asigna Local Relevance | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | 5 |
| 8.08 · Paso-08 §9 Competition Gap | Se asigna Competition Gap | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | 4 |
| 8.09 · Paso-08 §9 Urgency | Se asigna Conversion Urgency | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | 5 |
| 8.10 · Paso-08 §9 Score | Se calcula el score total | IA sin respaldo | El score deriva de valores no validados con datos reales. | 29 |
| 8.11 · Paso-08 §9 Priority | Se asigna prioridad | IA sin respaldo | La prioridad deriva del score pendiente de validación. | P1 |

## Bloque 3 — Inventario completo

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 8.12 · Paso-08 §10 Full scoring | Se asigna Priority Score a las 28 URLs SEO base | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | 28 URLs |
| 8.13 · Paso-08 §10 Contacto | /contacto/ tiene prioridad operativa, no SEO | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Página auxiliar |
| 8.14 · Paso-08 §11 GeoArticles after parents | GeoArticles se priorizan después de sus páginas padre | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | GeoArticle después de LBS |

