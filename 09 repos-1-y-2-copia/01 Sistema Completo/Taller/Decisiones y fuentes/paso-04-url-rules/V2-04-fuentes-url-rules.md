# Paso 4 — URL Rules

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

## Bloque 1 — Dominio y formato general

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 4.01 · Paso-04 §7 Dominio canónico | Se decide usar HTTPS | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. HTTPS es estándar canónico para producción. | https:// |
| 4.02 · Paso-04 §7 Dominio canónico | Se decide usar dominio canónico con www | Input humano + GMB Crush | El cliente aporta el dominio (heredado del paso 1.03) y GMB Crush exige una sola versión canónica. | https://www.cerrajerosmadrid24h.com |
| 4.03 · Paso-04 §8 Trailing slash | Se decide usar trailing slash | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Decisión binaria uniforme en toda la web. | Sí |

## Bloque 2 — Patrones URL principales

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 4.04 · Paso-04 §9 Homepage | Se decide que la Homepage use raíz | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | / |
| 4.05 · Paso-04 §10 Service Overview | Se decide que Service Overview use categoría + servicio | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | /cerrajero/[service-slug]/ |
| 4.06 · Paso-04 §12 LBS | Se decide que LBS use categoría + ciudad + servicio | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | /cerrajero/madrid/[service-slug]/ |
| 4.07 · Paso-04 §13 Additional Category | Se decide que Additional Category use categoría + ciudad + servicio | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | /cerrajero/madrid/duplicado-llaves/ |
| 4.08 · Paso-04 §11 GeoHub | Se decide que GeoHub use ciudad | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. GeoHub es contenedor de la Main City. | /madrid/ |
| 4.09 · Paso-04 §14 GeoArticle | Se decide que GeoArticles usen ciudad + topic | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | /madrid/[article-topic-slug]/ |

## Bloque 3 — URLs concretas de servicio

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 4.10 · Paso-04 §12 LBS | Se decide crear URL local de Cerrajero urgente | IA heredada (paso 1.34) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/madrid/cerrajero-urgente/ |
| 4.11 · Paso-04 §12 LBS | Se decide crear URL local de Apertura de puertas | IA heredada (paso 1.35) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/madrid/apertura-puertas/ |
| 4.12 · Paso-04 §12 LBS | Se decide crear URL local de Cambio de cerraduras | IA heredada (paso 1.36) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/madrid/cambio-cerraduras/ |
| 4.13 · Paso-04 §12 LBS | Se decide crear URL local de Cambio de bombines | IA heredada (paso 1.37) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/madrid/cambio-bombines/ |
| 4.14 · Paso-04 §12 LBS | Se decide crear URL local de Instalación de cerraduras de seguridad | IA heredada (paso 1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/madrid/instalacion-cerraduras-seguridad/ |

## Bloque 4 — Reglas anti-URL débil

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 4.15 · Paso-04 §19 Slugs | Se decide no usar `near-me` en URLs principales | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Evita URLs artificiales. | No se usa near-me |
| 4.16 · Paso-04 §19 Slugs | Se decide no usar adjetivos SEO vacíos en URLs | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Evita slugs manipulativos. | No usar best, cheap, top-rated |
| 4.17 · Paso-04 §15 Local Coverage URLs | Se decide no crear URLs para Local Coverage Areas en la base | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Las LCA no generan URLs por defecto. | No /almagro/, no /chamberi/, no /salamanca/ |
| 4.18 · Paso-04 §16 Approved Expansion | Se decide que Approved Expansion Areas podrían generar URLs solo en expansión | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La expansión requiere aprobación explícita. | None in Phase 1 |
