# Paso 13 — Sistema Final Operativo

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

## Bloque 1 — Consolidación del sistema

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 13.01 · Paso-13 §7 SOP | Se consolida el sistema en SOP final | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Sistema GMB Crush de 14 pasos |
| 13.02 · Paso-13 §8 Start | El sistema empieza con Intake | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Paso 1 |
| 13.03 · Paso-13 §9 Close | El sistema cierra con GBP después de la web | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | Paso 14 |

## Bloque 2 — Secuencia operativa

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 13.04–13.14 · Paso-13 §10 Secuencia | Se define la secuencia de pasos 2 a 12 | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Arquitectura → matriz → URL rules → page types → contenido → links → score → QA → producción → pseudocódigo → prompt |

## Bloque 3 — Outputs finales

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 13.15 · Paso-13 §11 Outputs | El sistema produce matrices | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | URL Matrix, Schema Map, Linking Map, QA, Publishing Plan |
| 13.16 · Paso-13 §12 Tracking | El sistema se optimiza con tracking | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | GMB Crush Geo Grid, GSC, GA4 |
| 13.17 · Paso-13 §13 LCA | Local Coverage Areas refuerzan contenido, no URLs | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | LCA como señales GEO |
| 13.18 · Paso-13 §14 Expansion | Approved Expansion Areas son opcionales | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | None in Phase 1 |

