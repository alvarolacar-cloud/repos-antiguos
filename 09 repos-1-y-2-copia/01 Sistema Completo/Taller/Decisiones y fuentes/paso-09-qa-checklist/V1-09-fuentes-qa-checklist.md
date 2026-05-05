# Paso 9 — QA Checklist

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

## Bloque 1 — Ejemplo desarrollado

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 9.01 · Paso-09 §7 QA example | Se audita como ejemplo una LBS concreta | GMB Crush + IA sin respaldo | La regla de auditar LBS críticas es GMB Crush; la LBS concreta depende de un servicio no validado. | /cerrajero/madrid/cerrajero-urgente/ |
| 9.02 · Paso-09 §7 QA ID | Se asigna ID de QA | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | LBS-001 |
| 9.03 · Paso-09 §7 Page Type | Se define el tipo auditado | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Location-Based Service |
| 9.04 · Paso-09 §7 Service | Se define el servicio objetivo | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Cerrajero urgente |
| 9.05 · Paso-09 §7 Main City | Se define la Main City | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | Madrid |
| 9.06 · Paso-09 §7 QA Status | Se define el estado de QA | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Ready for QA |
| 9.07 · Paso-09 §7 Reviewer | Se define reviewer | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | SEO Manager |
| 9.08 · Paso-09 §7 Fecha | Se define fecha de QA | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | 2026-04-24 |

## Bloque 2 — Checks obligatorios

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 9.09–9.20 · Paso-09 §8 QA checks | Se deciden checks obligatorios de QA | GMB Crush + IA sin respaldo | La checklist viene de GMB Crush; las URLs concretas de servicios/GeoArticles dependen de decisiones pendientes de validación. | parent page, GeoHub, related services, GeoArticle, schema, NAP, CTA, no falsa ubicación, no canibalización |

## Bloque 3 — Inventario QA

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 9.21 · Paso-09 §9 QA inventory | El inventario SEO base tiene QA Status | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | 28 URLs |
| 9.22 · Paso-09 §9 Contact QA | /contacto/ pasa QA operativo | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Página auxiliar |
| 9.23 · Paso-09 §9 Pending | El resto de URLs queda Pending hasta ejecución real | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | QA Pending |

