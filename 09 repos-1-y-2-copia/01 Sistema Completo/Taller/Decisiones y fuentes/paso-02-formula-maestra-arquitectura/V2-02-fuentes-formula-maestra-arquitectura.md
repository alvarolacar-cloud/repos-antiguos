# Paso 2 — Fórmula Maestra de Arquitectura

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

## Bloque 1 — Alcance de la fórmula base

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.01 · Paso-02 §8 Fórmula maestra | Se decide que la fórmula base se construye sobre una sola Main City | Input humano + GMB Crush | El cliente aporta la Main City (heredada del paso 1.20) y GMB Crush exige construir la base sobre una sola ciudad. | Madrid |
| 2.02 · Paso-02 §8 Fórmula maestra | Se decide que las Local Coverage Areas no multiplican páginas por defecto | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Las LCA se usan como señales GEO, no generan URLs base. | Almagro, Chamberí, Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa y Prosperidad no generan URLs base |
| 2.03 · Paso-02 §17 Approved Expansion Areas | Se decide que las Approved Expansion Areas no entran en la fórmula inicial | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La expansión requiere aprobación; queda fuera de la base. | None in Phase 1 |

## Bloque 2 — Servicios incluidos en el cálculo

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.04 · Paso-02 §9 core_services | Se define el número de servicios principales usados en la fórmula | IA heredada (paso 1.34–1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. Esta decisión se cura cuando se cierra la decisión origen. El conteo S=5 deriva mecánicamente de los 5 servicios IA del paso 1. | S = 5 |
| 2.05 · Paso-02 §9 core_services | Se incluye Cerrajero urgente en el cálculo | IA heredada (paso 1.34) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. Esta decisión se cura cuando se cierra la decisión origen. | Cerrajero urgente |
| 2.06 · Paso-02 §9 core_services | Se incluye Apertura de puertas en el cálculo | IA heredada (paso 1.35) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. Esta decisión se cura cuando se cierra la decisión origen. | Apertura de puertas |
| 2.07 · Paso-02 §9 core_services | Se incluye Cambio de cerraduras en el cálculo | IA heredada (paso 1.36) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. Esta decisión se cura cuando se cierra la decisión origen. | Cambio de cerraduras |
| 2.08 · Paso-02 §9 core_services | Se incluye Cambio de bombines en el cálculo | IA heredada (paso 1.37) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. Esta decisión se cura cuando se cierra la decisión origen. | Cambio de bombines |
| 2.09 · Paso-02 §9 core_services | Se incluye Instalación de cerraduras de seguridad en el cálculo | IA heredada (paso 1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. Esta decisión se cura cuando se cierra la decisión origen. | Instalación de cerraduras de seguridad |

## Bloque 3 — Páginas generadas por la fórmula

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.10 · Paso-02 §8 Fórmula maestra | Se decide crear una Homepage | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La fórmula incluye 1 Homepage como Root Entity Anchor. | 1 Homepage |
| 2.11 · Paso-02 §8 Fórmula maestra | Se decide crear una Service Overview Page por cada servicio principal | IA heredada (paso 1.34–1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La regla "1 SO por servicio" es GMB Crush, pero el conteo 5 depende de los servicios IA. | 5 Service Overview Pages |
| 2.12 · Paso-02 §8 Fórmula maestra | Se decide crear un GeoHub para la Main City | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La fórmula incluye 1 GeoHub por Main City. | 1 GeoHub para Madrid |
| 2.13 · Paso-02 §8 Fórmula maestra | Se decide crear una Location-Based Service Page por cada servicio principal en Madrid | IA heredada (paso 1.34–1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La regla "1 LBS por servicio en Main City" es GMB Crush, pero el conteo 5 depende de los servicios IA. | 5 LBS |
| 2.14 · Paso-02 §10 Additional Categories | Se decide crear una Additional Category Page para la categoría adicional efectiva | IA heredada (paso 1.18) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La regla AC efectiva es GMB Crush, pero "duplicado de llaves" viene de paso 1.18. | 1 Additional Category Page |

## Bloque 4 — Categorías adicionales efectivas

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.15 · Paso-02 §10 Additional Categories | Se decide que Servicio de cerrajería de urgencia no suma como categoría adicional separada | IA heredada (paso 1.17) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La regla de consolidación es GMB Crush, pero los nombres concretos vienen de paso 1. | Queda cubierta por Cerrajero urgente |
| 2.16 · Paso-02 §10 Additional Categories | Se decide que Servicio de duplicado de llaves sí cuenta como categoría adicional efectiva | IA heredada (paso 1.18) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | A = 1 |

## Bloque 5 — GeoArticles

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.17 · Paso-02 §11 GeoArticles | Se decide usar 3 GeoArticles por servicio principal | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. El default operativo es G=3. | G = 3 |
| 2.18 · Paso-02 §11 GeoArticles | Se decide calcular GeoArticles como G × S | IA heredada (paso 1.34–1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La fórmula G × S es GMB Crush, pero S=5 depende de los servicios IA. | 3 × 5 |
| 2.19 · Paso-02 §11 GeoArticles | Se calcula el número total de GeoArticles | IA heredada (paso 1.34–1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | 15 GeoArticles |
| 2.20 · Paso-02 §11 GeoArticles | Se decide que los GeoArticles se generan para Madrid, no para cada Local Coverage Area | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Los GeoArticles se generan para la Main City. | 15 GeoArticles para Madrid |

## Bloque 6 — Total de páginas SEO base

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.21 · Paso-02 §16 Inventario base | Se calcula el bloque de Homepage | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | 1 página |
| 2.22 · Paso-02 §16 Inventario base | Se calcula el bloque de Service Overview Pages | IA heredada (paso 1.34–1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | 5 páginas |
| 2.23 · Paso-02 §16 Inventario base | Se calcula el bloque de GeoHub | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | 1 página |
| 2.24 · Paso-02 §16 Inventario base | Se calcula el bloque de Location-Based Service Pages | IA heredada (paso 1.34–1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | 5 páginas |
| 2.25 · Paso-02 §16 Inventario base | Se calcula el bloque de Additional Category Pages | IA heredada (paso 1.18) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | 1 página |
| 2.26 · Paso-02 §16 Inventario base | Se calcula el bloque de GeoArticles | IA heredada (paso 1.34–1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | 15 páginas |
| 2.27 · Paso-02 §16 Inventario base | Se calcula el total de páginas SEO base | IA heredada (paso 1.34–1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La fórmula 1+S+1+S+A+G×S es GMB Crush, pero el resultado 28 depende de S=5 y A=1, ambos heredados de paso 1. | 28 páginas SEO base |
| 2.28 · Paso-02 §16 Inventario base | Se decide que `/contacto/` queda fuera del inventario SEO base | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La página de contacto es auxiliar, no entra en las 28 SEO base. | Página auxiliar |
