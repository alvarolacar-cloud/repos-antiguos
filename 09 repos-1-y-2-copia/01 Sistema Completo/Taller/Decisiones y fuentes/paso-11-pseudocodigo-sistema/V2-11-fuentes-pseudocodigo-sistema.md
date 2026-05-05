# Paso 11 — Pseudocódigo del Sistema

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

## Bloque 1 — Inputs, slugs y categorías

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 11.01 · Paso-11 §7 Load inputs | Se decide cargar inputs base | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Bloque 1 del pseudocódigo carga los inputs del Paso 1. | Business name, URL, NAP, Main City, servicios, LCA, GBP status |
| 11.02 · Paso-11 §8 Normalize slugs | Se decide normalizar slugs | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Slugs lowercase, sin acentos, guiones medios. | Cerrajero urgente → cerrajero-urgente |
| 11.03 · Paso-11 §9 Validate categories | Se decide validar categorías adicionales | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Cada categoría adicional es cubierta o requiere página. | Cubierta / necesita página |

## Bloque 2 — Generación base

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 11.04 · Paso-11 §10 Homepage | Se decide generar Homepage | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | HP-001 |
| 11.05 · Paso-11 §11 Service Overview | Se decide generar Service Overview Pages | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La regla "1 SO por servicio" es framework. | 5 páginas |
| 11.06 · Paso-11 §12 GeoHub | Se decide generar GeoHub de Madrid | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | /madrid/ |
| 11.07 · Paso-11 §13 LBS | Se decide generar LBS de Madrid | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La regla "1 LBS por servicio en Main City" es framework. | 5 páginas |
| 11.08 · Paso-11 §14 Additional Category | Se decide generar Additional Category Page efectiva | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La regla AC efectiva es framework. | /cerrajero/madrid/duplicado-llaves/ |
| 11.09 · Paso-11 §15 GeoArticles | Se decide generar GeoArticles | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La regla G×S = N artículos es framework. | 15 artículos |

## Bloque 3 — Local Coverage Areas y expansión

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 11.10 · Paso-11 §16 Use Local Coverage Areas | Se decide inyectar Local Coverage Areas en contenido y schema | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Las LCA se inyectan como señales GEO. | LCA como señales GEO |
| 11.11 · Paso-11 §17 Generate expansion only if approved | Se decide no generar expansión si no está aprobada | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Expansión solo con Approved Expansion Areas. | Approved Expansion Areas: None |

## Bloque 4 — Enlaces, prioridad, QA y outputs

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 11.12 · Paso-11 §18 Assign internal links | Se decide asignar enlaces internos por tipo de página | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Internal Linking Map deriva del Paso 7. | Internal Linking Map |
| 11.13 · Paso-11 §19 Score priority | Se decide calcular prioridad por página | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Priority Score deriva del Paso 8. | Priority Score |
| 11.14 · Paso-11 §20 Check dependencies | Se decide comprobar dependencias | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. LBS requiere SO + GeoHub publicados antes. | LBS requiere Service Overview + GeoHub |
| 11.15 · Paso-11 §21 Run QA | Se decide ejecutar QA antes de publicar | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. QA gate obligatorio antes de Published. | QA Matrix |
| 11.16 · Paso-11 §22 Output matrices | Se decide producir matrices finales | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Output canónico: 6 matrices. | URL Matrix, Internal Linking Matrix, Schema Map, Priority Score, Publishing Plan, QA Matrix |
