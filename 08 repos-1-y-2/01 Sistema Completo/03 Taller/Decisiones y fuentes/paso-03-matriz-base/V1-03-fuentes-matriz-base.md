# Paso 3 — Matriz Base

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

## Bloque 1 — Estructura de la matriz

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.01 · Paso-03 §7 URL Matrix | Se crea una matriz operativa para controlar URLs | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | URL Matrix |
| 3.02 · Paso-03 §7 IDs | Se decide que cada página tenga un ID único | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | HP, SO, GH, LBS, AC, GA |
| 3.03 · Paso-03 §7 Columnas | Se incluyen columnas de producción | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | URL, H1, Meta Title, Schema, Priority, Phase, Status |

## Bloque 2 — Homepage y página auxiliar

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.04 · Paso-03 §8 Homepage | Se incluye la Homepage en la matriz | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | HP-001 |
| 3.05 · Paso-03 §8 Homepage URL | Se decide que la Homepage use la raíz | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | / |
| 3.06 · Paso-03 §8 Contacto | Se incluye página de contacto como auxiliar | GMB Crush | La página de contacto es operativa y debe existir, pero no cuenta como URL SEO base. | /contacto/ |

## Bloque 3 — Service Overview Pages

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.07–3.11 · Paso-03 §9 Service Overview | Se crean cinco Service Overview Pages concretas | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | /cerrajero/cerrajero-urgente/, /apertura-puertas/, /cambio-cerraduras/, /cambio-bombines/, /instalacion-cerraduras-seguridad/ |

## Bloque 4 — GeoHub y Location-Based Service Pages

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.12 · Paso-03 §10 GeoHub | Se crea el GeoHub principal de Madrid | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | /madrid/ |
| 3.13–3.17 · Paso-03 §11 LBS | Se crean cinco LBS de Madrid | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 URLs /cerrajero/madrid/[service]/ |

## Bloque 5 — Additional Category Page

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.18 · Paso-03 §12 Additional Category | Se crea la página de duplicado de llaves en Madrid | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | /cerrajero/madrid/duplicado-llaves/ |

## Bloque 6 — GeoArticles

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.19–3.33 · Paso-03 §13 GeoArticles | Se crean 15 GeoArticles con URLs concretas | GMB Crush + IA sin respaldo | GMB Crush exige 3 ideas por Service × City pair. Los temas y slugs concretos no están validados con keyword research. | 15 URLs /madrid/[topic]/ |

## Bloque 7 — Tratamiento de Local Coverage Areas

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.34 · Paso-03 §14 LCA fields | Las LCA aparecen como notas o campos de contenido | GMB Crush + IA sin respaldo | GMB Crush permite usar LCA como señales GEO. Las directas están respaldadas por input; las candidatas requieren validación antes de uso fuerte. | Almagro, Chamberí, Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad |
| 3.35 · Paso-03 §14 No LCA URLs | No se crean filas URL para Local Coverage Areas | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | No /almagro/, no /chamberi/, no /salamanca/ |

