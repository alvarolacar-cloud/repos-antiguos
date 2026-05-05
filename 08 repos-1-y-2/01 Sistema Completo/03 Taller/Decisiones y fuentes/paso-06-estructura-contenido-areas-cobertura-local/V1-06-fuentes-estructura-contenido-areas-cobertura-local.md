# Paso 6 — Estructura de Contenido + Local Coverage Areas

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

## Bloque 1 — Main City y Local Coverage Areas

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 6.01 · Paso-06 §7 Main City | Madrid crea la estructura principal | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | Madrid |
| 6.02 · Paso-06 §8 Direct LCA | Direct LCA refuerzan el contenido | Input humano + GMB Crush | El cliente aporta la dirección física; GMB Crush define cómo usar las zonas derivadas del NAP como Local Coverage Areas sin crear URLs por defecto. | Almagro, Chamberí |
| 6.03 · Paso-06 §9 Candidate LCA | Candidate LCA pueden usarse si pasan test GEO | GMB Crush + IA sin respaldo | GMB Crush permite usar zonas, barrios y landmarks como señales GEO en contenido, GeoHub, GeoArticles y schema. La zona concreta fue propuesta como candidata y debe validarse con input humano, datos de búsqueda o competidores antes de usarse como señal activa. | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad |
| 6.04 · Paso-06 §10 Main City dominance | Las LCA no sustituyen a Madrid | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | La página sigue siendo Madrid |

## Bloque 2 — Uso por tipo de página

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 6.05 · Paso-06 §11 Homepage | Homepage puede mencionar LCA de forma ligera | GMB Crush + IA sin respaldo | GMB Crush permite señales GEO; las candidatas concretas deben validarse antes de uso fuerte. | Almagro, Chamberí, etc. |
| 6.06 · Paso-06 §12 Service Overview | Service Overview no usa LCA | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Sin zonas locales |
| 6.07 · Paso-06 §13 LBS | LBS usa LCA en intro, H2s y FAQs | GMB Crush + IA sin respaldo | GMB Crush permite neighborhood/local issues en páginas localizadas; candidatas concretas requieren validación. | Páginas servicio + Madrid |
| 6.08 · Paso-06 §14 GeoHub | GeoHub usa sección de cobertura local | GMB Crush + IA sin respaldo | GMB Crush permite neighborhood coverage; las zonas candidatas del ejemplo deben validarse. | /madrid/ |
| 6.09 · Paso-06 §15 Additional Category | Additional Category usa cobertura local como contexto | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | /cerrajero/madrid/duplicado-llaves/ |
| 6.10 · Paso-06 §16 GeoArticles | GeoArticles usan zonas como ejemplos locales | GMB Crush + IA sin respaldo | GMB Crush permite landmarks/neighborhoods; los ejemplos concretos deben validarse. | Madrid + zonas GEO |

## Bloque 3 — Restricciones

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 6.11 · Paso-06 §17 No URL by mention | Mencionar zona no equivale a crear URL | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Mencionar Almagro ≠ crear /almagro/ |
| 6.12 · Paso-06 §18 No false office | No afirmar oficina física en cada LCA | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | No oficina en Salamanca/Retiro salvo verdad |
| 6.13 · Paso-06 §19 areaServed | areaServed puede incluir cobertura real validada | GMB Crush + IA sin respaldo | GMB Crush define areaServed; las zonas concretas deben estar confirmadas como cobertura real antes de incluirlas en schema. | Madrid + zonas validadas |

