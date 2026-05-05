# Paso 12 — Master Prompt Reutilizable

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

## Bloque 1 — Creación del prompt maestro

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 12.01 · Paso-12 §7 Master Prompt | Se crea un prompt maestro reutilizable | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Master Prompt GMB Crush |
| 12.02 · Paso-12 §7 Master Prompt | El prompt genera el sistema completo | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | 14 pasos |

## Bloque 2 — Inputs del prompt

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 12.03 · Paso-12 §8 Main City | El prompt pide Main City | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | Madrid |
| 12.04 · Paso-12 §8 Direct LCA | El prompt pide Direct Local Coverage Areas | Input humano + GMB Crush | El cliente aporta la dirección física; GMB Crush define cómo usar las zonas derivadas del NAP como Local Coverage Areas sin crear URLs por defecto. | Almagro, Chamberí |
| 12.05 · Paso-12 §8 Candidate LCA | El prompt pide Candidate Local Coverage Areas | GMB Crush + IA sin respaldo | GMB Crush permite usar zonas, barrios y landmarks como señales GEO en contenido, GeoHub, GeoArticles y schema. La zona concreta fue propuesta como candidata y debe validarse con input humano, datos de búsqueda o competidores antes de usarse como señal activa. | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad |
| 12.06 · Paso-12 §8 Approved Expansion | El prompt pide Approved Expansion Areas | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | None in Phase 1 |
| 12.07 · Paso-12 §8 GBP Status | El prompt pide GBP Status | Input humano | El cliente aporta este dato directamente. El sistema lo recoge como input base. | Not Created |
| 12.08 · Paso-12 §8 Planned Primary Category | El prompt pide Planned Primary GBP Category | Input humano + GMB Crush | El nombre del negocio apunta a cerrajería y GMB Crush usa la categoría para alinear web/GBP; debe confirmarse. | Cerrajero |
| 12.09 · Paso-12 §8 Planned Additional Categories | El prompt pide Planned Additional GBP Categories | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Servicio de cerrajería de urgencia, Servicio de duplicado de llaves |

## Bloque 3 — Outputs del prompt

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 12.10–12.17 · Paso-12 §9 Outputs | El prompt genera matrices, reglas, content architecture, links, score, plan, QA y GBP alignment | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Sí |

## Bloque 4 — Restricciones del prompt

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 12.18 · Paso-12 §10 No GBP URL | El prompt no inventa GBP URL | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | GBP URL N/A hasta creación |
| 12.19 · Paso-12 §10 No LCA URLs | El prompt no crea URLs para LCA por defecto | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | No URLs LCA |
| 12.20 · Paso-12 §10 Web-first | El prompt mantiene web-first | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | Web primero, GBP después |

