# Paso 11 — Pseudocódigo del Sistema

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

## Bloque 1 — Inputs, slugs y categorías

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 11.01 · Paso-11 §7 Load inputs | Se cargan inputs base | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Business name, URL, NAP, Main City, servicios, LCA, GBP status |
| 11.02 · Paso-11 §8 Normalize slugs | Se normalizan slugs | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Cerrajero urgente → cerrajero-urgente |
| 11.03 · Paso-11 §9 Validate categories | Se validan categorías adicionales | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Cubierta / necesita página |

## Bloque 2 — Generación base

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 11.04 · Paso-11 §10 Generate homepage | Se genera Homepage | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | HP-001 |
| 11.05 · Paso-11 §11 Generate SO | Se generan Service Overview Pages | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 páginas |
| 11.06 · Paso-11 §12 Generate GeoHub | Se genera GeoHub de Madrid | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | /madrid/ |
| 11.07 · Paso-11 §13 Generate LBS | Se generan LBS de Madrid | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 páginas |
| 11.08 · Paso-11 §14 Generate AC | Se genera Additional Category Page efectiva | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | /cerrajero/madrid/duplicado-llaves/ |
| 11.09 · Paso-11 §15 Generate GeoArticles | Se generan GeoArticles | GMB Crush + IA sin respaldo | Cantidad/patrón GMB Crush; temas concretos sin validación. | 15 artículos |

## Bloque 3 — Local Coverage Areas y expansión

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 11.10 · Paso-11 §16 Use LCA | Se inyectan LCA en contenido y schema | GMB Crush + IA sin respaldo | GMB Crush permite señales GEO; las Candidate LCAs y su uso en schema requieren validación. | LCA como señales GEO |
| 11.11 · Paso-11 §17 Expansion | No se genera expansión si no está aprobada | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Approved Expansion Areas: None |

## Bloque 4 — Enlaces, prioridad, QA y outputs

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 11.12 · Paso-11 §18 Links | Se asignan enlaces internos por tipo | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Internal Linking Map |
| 11.13 · Paso-11 §19 Priority | Se calcula prioridad por página | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Priority Score |
| 11.14 · Paso-11 §20 Dependencies | Se comprueban dependencias | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | LBS requiere Service Overview + GeoHub |
| 11.15 · Paso-11 §21 QA | Se ejecuta QA antes de publicar | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | QA Matrix |
| 11.16 · Paso-11 §22 Outputs | Se producen matrices finales | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | URL Matrix, Internal Linking Matrix, Schema Map, Priority Score, Publishing Plan, QA Matrix |

