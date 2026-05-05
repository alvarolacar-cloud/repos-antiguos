# Paso 2 — Fórmula Maestra de Arquitectura

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

## Bloque 1 — Alcance de la fórmula base

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.01 · Paso-02 §21 Main City | Se decide que la fórmula base se construye sobre una sola Main City | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | Madrid |
| 2.02 · Paso-02 §8 Regla 1 | Se decide que las Local Coverage Areas no multiplican páginas por defecto | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Las LCA no generan URLs base |
| 2.03 · Paso-02 §17 Optional Expansion Formula | Se decide que las Approved Expansion Areas no entran en la fórmula inicial | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | None in Phase 1 |

## Bloque 2 — Servicios incluidos en el cálculo

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.04 · Paso-02 §19 Conteo S | Se define el número de servicios principales usados en la fórmula | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | S = 5 |
| 2.05 · Paso-02 §9 Variable S | Se incluye Cerrajero urgente en el cálculo | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Cerrajero urgente |
| 2.06 · Paso-02 §9 Variable S | Se incluye Apertura de puertas en el cálculo | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Apertura de puertas |
| 2.07 · Paso-02 §9 Variable S | Se incluye Cambio de cerraduras en el cálculo | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Cambio de cerraduras |
| 2.08 · Paso-02 §9 Variable S | Se incluye Cambio de bombines en el cálculo | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Cambio de bombines |
| 2.09 · Paso-02 §9 Variable S | Se incluye Instalación de cerraduras de seguridad en el cálculo | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Instalación de cerraduras de seguridad |

## Bloque 3 — Páginas generadas por la fórmula

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.10 · Paso-02 §8 Fórmula base | Se decide crear una Homepage | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | 1 Homepage |
| 2.11 · Paso-02 §9 Variable S | Se decide crear una Service Overview Page por cada servicio principal | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 Service Overview Pages |
| 2.12 · Paso-02 §8 Fórmula base | Se decide crear un GeoHub para la Main City | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | 1 GeoHub para Madrid |
| 2.13 · Paso-02 §8 Fórmula base | Se decide crear una LBS por cada servicio principal en Madrid | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 LBS |
| 2.14 · Paso-02 §20 Variable A | Se decide crear una Additional Category Page para la categoría efectiva | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 1 Additional Category Page |

## Bloque 4 — Categorías adicionales efectivas

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.15 · Paso-02 §20 Variable A | Se decide que Servicio de cerrajería de urgencia no suma como categoría adicional separada | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Cubierta por Cerrajero urgente |
| 2.16 · Paso-02 §20 Variable A | Se decide que Servicio de duplicado de llaves cuenta como categoría adicional efectiva | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | A = 1 |

## Bloque 5 — GeoArticles

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.17 · Paso-02 §22 Variable G | Se decide usar 3 GeoArticles por servicio principal | GMB Crush | El framework de GeoArticles establece tres ideas por Service × City pair. | G = 3 |
| 2.18 · Paso-02 §22 Variable G | Se decide calcular GeoArticles como G × S | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 3 × 5 |
| 2.19 · Paso-02 §23 Fórmula completa | Se calcula el número total de GeoArticles | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 15 GeoArticles |
| 2.20 · Paso-02 §22 Variable G | Se decide que los GeoArticles se generan para Madrid y no para cada LCA | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | 15 GeoArticles para Madrid |

## Bloque 6 — Total de páginas SEO base

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 2.21 · Paso-02 §23 Fórmula completa | Se calcula el bloque de Homepage | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | 1 página |
| 2.22 · Paso-02 §23 Fórmula completa | Se calcula el bloque de Service Overview Pages | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 páginas |
| 2.23 · Paso-02 §23 Fórmula completa | Se calcula el bloque de GeoHub | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | 1 página |
| 2.24 · Paso-02 §23 Fórmula completa | Se calcula el bloque de LBS | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 páginas |
| 2.25 · Paso-02 §23 Fórmula completa | Se calcula el bloque de Additional Category Pages | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 1 página |
| 2.26 · Paso-02 §23 Fórmula completa | Se calcula el bloque de GeoArticles | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 15 páginas |
| 2.27 · Paso-02 §28 Resultado verificable | Se calcula el total de páginas SEO base | GMB Crush + IA sin respaldo | La fórmula es GMB Crush; los valores variables S y A dependen de servicios/categorías pendientes de validación. | 28 páginas SEO base |
| 2.28 · Paso-02 §8 Regla 1 | Se decide que /contacto/ queda fuera del inventario SEO base | GMB Crush | Contacto es página auxiliar, no uno de los tipos SEO base. | Página auxiliar |

