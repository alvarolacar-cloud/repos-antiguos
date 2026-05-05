# Paso 4 — URL Rules

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

## Bloque 1 — Dominio y formato general

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 4.01 · Paso-04 §7 HTTPS | Se decide usar HTTPS | GMB Crush | Regla operativa de consistencia técnica y canónica del sistema. | https:// |
| 4.02 · Paso-04 §8 Dominio canónico | Se decide usar dominio canónico con www | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | https://www.cerrajerosmadrid24h.com |
| 4.03 · Paso-04 §9 Trailing slash | Se decide usar trailing slash | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Sí |

## Bloque 2 — Patrones URL principales

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 4.04 · Paso-04 §10 Homepage | Homepage usa raíz | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | / |
| 4.05 · Paso-04 §11 Service Overview | Service Overview usa categoría + servicio | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | /cerrajero/[service-slug]/ |
| 4.06 · Paso-04 §12 LBS | LBS usa categoría + ciudad + servicio | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | /cerrajero/madrid/[service-slug]/ |
| 4.07 · Paso-04 §13 Additional Category | Additional Category usa categoría + ciudad + servicio | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | /cerrajero/madrid/duplicado-llaves/ |
| 4.08 · Paso-04 §14 GeoHub | GeoHub usa ciudad | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | /madrid/ |
| 4.09 · Paso-04 §15 GeoArticles | GeoArticles usan ciudad + topic | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | /madrid/[article-topic-slug]/ |

## Bloque 3 — URLs concretas de servicio

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 4.10–4.14 · Paso-04 §12 LBS URLs | Se deciden URLs locales para los cinco servicios | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | 5 URLs /cerrajero/madrid/[service]/ |

## Bloque 4 — Reglas anti-URL débil

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 4.15 · Paso-04 §16 near-me | No usar near-me en URLs principales | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | No se usa near-me |
| 4.16 · Paso-04 §17 adjetivos SEO | No usar adjetivos SEO vacíos en URLs | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | No usar best, cheap, top-rated |
| 4.17 · Paso-04 §18 LCA URLs | No crear URLs para Local Coverage Areas en la base | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | No /almagro/, no /chamberi/, no /salamanca/ |
| 4.18 · Paso-04 §19 Expansion | Approved Expansion Areas solo generan URLs en expansión | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | None in Phase 1 |

