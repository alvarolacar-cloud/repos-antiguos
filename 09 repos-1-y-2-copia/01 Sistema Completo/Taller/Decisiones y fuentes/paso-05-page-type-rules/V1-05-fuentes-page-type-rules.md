# Paso 5 — Page Type Rules

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

## Bloque 1 — Homepage

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 5.01 · Paso-05 §7 Homepage | Homepage es Root Entity Anchor | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | / |
| 5.02 · Paso-05 §7 Homepage | Homepage ancla marca, servicio principal y ciudad | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | Cerrajeros Madrid 24h + Cerrajero + Madrid |
| 5.03 · Paso-05 §7 Homepage | Homepage incluye servicios core | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 servicios principales |
| 5.04 · Paso-05 §7 Homepage | Homepage incluye NAP y CTA | Input humano + IA sin respaldo | El NAP base viene del input; el CTA concreto y datos placeholder requieren confirmación. | NAP + Llamar ahora |

## Bloque 2 — Service Overview Pages

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 5.05 · Paso-05 §8 Service Overview | Service Overview Pages son no geolocalizadas | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | /cerrajero/[service]/ |
| 5.06–5.10 · Paso-05 §8 Service Overview | Se asignan cinco Service Overview Pages concretas | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 URLs de servicio |

## Bloque 3 — Location-Based Service Pages

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 5.11 · Paso-05 §9 LBS | Las LBS son convertidores locales | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | /cerrajero/madrid/[service]/ |
| 5.12 · Paso-05 §9 LBS canónica | Cerrajero urgente en Madrid es la LBS canónica | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | /cerrajero/madrid/cerrajero-urgente/ |
| 5.13 · Paso-05 §9 LBS H1 | Las LBS incluyen servicio + ciudad en H1 y metadata | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | [Service] + Madrid |

## Bloque 4 — Additional Category, GeoHub y GeoArticles

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 5.14 · Paso-05 §10 Additional Category | Duplicado de llaves es Additional Category Page | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | /cerrajero/madrid/duplicado-llaves/ |
| 5.15 · Paso-05 §11 GeoHub | /madrid/ es GeoHub | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | GeoHub de Madrid |
| 5.16 · Paso-05 §12 GeoArticles | GeoArticles son boosters semánticos, no landings | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | 15 GeoArticles |
| 5.17 · Paso-05 §12 GeoArticles | GeoArticles enlazan a LBS y GeoHub | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | GeoArticle → LBS + /madrid/ |

## Bloque 5 — Schema

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 5.18 · Paso-05 §13 Schema | Se asigna schema por tipo de página | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Organization, WebSite, Service, LocalBusiness, CollectionPage, Article |
| 5.19 · Paso-05 §13 sameAs | No se usa sameAs de GBP hasta que exista el GBP | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | N/A hasta Paso 14 |

