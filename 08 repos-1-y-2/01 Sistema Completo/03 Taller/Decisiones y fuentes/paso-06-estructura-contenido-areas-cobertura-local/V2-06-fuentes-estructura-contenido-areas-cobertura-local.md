# Paso 6 — Estructura de Contenido + Local Coverage Areas

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

## Bloque 1 — Main City y Local Coverage Areas

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 6.01 · Paso-06 §7 Main City | Se decide que Madrid crea la estructura principal | Input humano + GMB Crush | El cliente aporta Madrid (heredada del paso 1.20) y GMB Crush exige una sola Main City. | Madrid |
| 6.02 · Paso-06 §10 Direct Local Coverage Areas | Se decide que Direct Local Coverage Areas refuercen el contenido | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Las Direct LCA salen del NAP y refuerzan contenido. | Almagro, Chamberí |
| 6.03 · Paso-06 §10 Candidate Local Coverage Areas | Se decide que Candidate Local Coverage Areas puedan usarse si pasan test GEO | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Las Candidate LCA requieren test de coherencia GEO 3/6 antes de uso fuerte. | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad |
| 6.04 · Paso-06 §10 Local Coverage Areas | Se decide que las Local Coverage Areas no sustituyan a Madrid | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La Main City sigue siendo la unidad principal. | La página sigue siendo Madrid |

## Bloque 2 — Uso por tipo de página

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 6.05 · Paso-06 §12 Homepage | Se decide que la Homepage pueda mencionar Local Coverage Areas de forma ligera | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Mención ligera de cobertura, sin saturar. | Almagro, Chamberí, etc. |
| 6.06 · Paso-06 §13 Service Overview | Se decide que Service Overview no use Local Coverage Areas | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. SO no es local; no usa zonas. | Sin zonas locales |
| 6.07 · Paso-06 §14 LBS | Se decide que LBS use Local Coverage Areas en intro, H2s y FAQs | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Las LCA refuerzan contenido en LBS. | Páginas servicio + Madrid |
| 6.08 · Paso-06 §16 GeoHub | Se decide que GeoHub use sección de cobertura local | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. El GeoHub es la sección principal de cobertura. | /madrid/ |
| 6.09 · Paso-06 §15 Additional Category | Se decide que Additional Category use cobertura local como contexto | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La AC menciona zonas como contexto, no como URLs. | /cerrajero/madrid/duplicado-llaves/ |
| 6.10 · Paso-06 §17 GeoArticle | Se decide que GeoArticles usen zonas como ejemplos locales | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Los GeoArticles incluyen referencias locales reales. | Madrid + zonas GEO |

## Bloque 3 — Restricciones

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 6.11 · Paso-06 §10 Local Coverage Areas | Se decide que una mención de zona no equivale a crear URL | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Mención ≠ creación de URL. | Mencionar Almagro ≠ crear /almagro/ |
| 6.12 · Paso-06 §11 No falsa ubicación | Se decide no afirmar oficina física en cada Local Coverage Area | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Regla "no fake location" — no inventar presencia física. | No oficina en Salamanca/Retiro salvo verdad |
| 6.13 · Paso-06 §30 areaServed | Se decide que `areaServed` pueda incluir cobertura real validada | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. El schema areaServed lista zonas de servicio reales. | Madrid + zonas validadas |
