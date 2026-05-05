# Paso 7 — Internal Linking Rules

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

## Bloque 1 — Enlaces desde Homepage

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 7.01 · Paso-07 §7 Homepage links | Homepage enlaza a Service Overview Pages | GMB Crush + IA sin respaldo | La regla de enlazar es GMB Crush; el número y servicios concretos dependen de la lista pendiente. | 5 Service Overview Pages |
| 7.02 · Paso-07 §7 Homepage links | Homepage enlaza al GeoHub de Madrid | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | /madrid/ |
| 7.03 · Paso-07 §7 Homepage links | Homepage enlaza a Additional Category Page | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | /cerrajero/madrid/duplicado-llaves/ |
| 7.04 · Paso-07 §7 Homepage links | Homepage enlaza a contacto | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | /contacto/ |

## Bloque 2 — Enlaces desde Service Overview y LBS

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 7.05 · Paso-07 §8 Service Overview links | Cada Service Overview enlaza a su versión local en Madrid | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | /cerrajero/[service]/ → /cerrajero/madrid/[service]/ |
| 7.06 · Paso-07 §8 Service Overview links | Service Overview enlaza a servicios relacionados | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | Cross-links entre servicios |
| 7.07 · Paso-07 §9 LBS links | LBS enlaza a su página padre | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | LBS → Service Overview |
| 7.08 · Paso-07 §9 LBS links | LBS enlaza al GeoHub | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | LBS → /madrid/ |
| 7.09 · Paso-07 §9 LBS links | LBS enlaza a servicios relacionados en Madrid | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | LBS → otras LBS |
| 7.10 · Paso-07 §9 LBS links | LBS enlaza a GeoArticles relacionados | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | LBS → GeoArticles |

## Bloque 3 — Enlaces desde GeoHub y GeoArticles

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 7.11 · Paso-07 §10 GeoHub links | GeoHub enlaza a todas las LBS de Madrid | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 LBS |
| 7.12 · Paso-07 §10 GeoHub links | GeoHub enlaza a Additional Category Page | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | /cerrajero/madrid/duplicado-llaves/ |
| 7.13 · Paso-07 §10 GeoHub links | GeoHub enlaza a GeoArticles | GMB Crush + IA sin respaldo | La regla de enlazar a GeoArticles es GMB Crush; los temas concretos no están validados. | 15 GeoArticles |
| 7.14 · Paso-07 §11 GeoArticle links | GeoArticles enlazan a su LBS correspondiente | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | GeoArticle → LBS |
| 7.15 · Paso-07 §11 GeoArticle links | GeoArticles enlazan al GeoHub | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | GeoArticle → /madrid/ |

## Bloque 4 — Restricciones de enlaces

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 7.16 · Paso-07 §12 No fake URLs | No enlazar LCA sin URL aprobada | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | No enlazar /almagro/ |
| 7.17 · Paso-07 §13 Anchors | Usar anchors contextuales | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Anchors naturales |
| 7.18 · Paso-07 §14 Breadcrumbs | Usar breadcrumbs | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Home > Madrid > Servicio |

