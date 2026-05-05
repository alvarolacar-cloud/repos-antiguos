# Paso 9 — QA Checklist

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

## Bloque 1 — Ejemplo desarrollado

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 9.01 · Paso-09 §7 QA Checklist | Se decide auditar como ejemplo una LBS concreta | IA heredada (paso 1.34) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La estructura LBS canónica es GMB Crush. | /cerrajero/madrid/cerrajero-urgente/ |
| 9.02 · Paso-09 §7 QA Checklist | Se asigna ID de QA | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Los IDs canónicos LBS-001, etc. | LBS-001 |
| 9.03 · Paso-09 §9 Page Type | Se define el tipo de página auditada | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | Location-Based Service |
| 9.04 · Paso-09 §9 Servicio | Se define el servicio objetivo | IA heredada (paso 1.34) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | Cerrajero urgente |
| 9.05 · Paso-09 §9 Main City | Se define la Main City | Input humano + GMB Crush | El cliente aporta Madrid (heredada del paso 1.20) y GMB Crush usa la Main City como ancla del cluster. | Madrid |
| 9.06 · Paso-09 §7 QA Checklist | Se define el estado de QA | IA sin respaldo | Valor generado para el ejemplo sin dato real ni regla aplicable. Dato del proceso QA inventado para el ejemplo. | Ready for QA |
| 9.07 · Paso-09 §7 QA Checklist | Se define reviewer | IA sin respaldo | Valor generado para el ejemplo sin dato real. | SEO Manager |
| 9.08 · Paso-09 §7 QA Checklist | Se define fecha de QA | IA sin respaldo | Valor generado para el ejemplo sin dato real. | 2026-04-24 |

## Bloque 2 — Checks obligatorios

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 9.09 · Paso-09 §16 Internal Links | Se decide validar parent page | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. LBS debe enlazar a su Service Overview padre. | /cerrajero/cerrajero-urgente/ |
| 9.10 · Paso-09 §16 Internal Links | Se decide validar GeoHub | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. LBS debe enlazar al GeoHub Main City. | /madrid/ |
| 9.11 · Paso-09 §16 Internal Links | Se decide validar servicios relacionados | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. LBS debe enlazar a otras LBS de la misma ciudad. | Apertura de puertas, Cambio de cerraduras |
| 9.12 · Paso-09 §16 Internal Links | Se decide validar GeoArticle relacionado | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. LBS debe enlazar a GeoArticle del mismo servicio. | /madrid/cuanto-cuesta-un-cerrajero-urgente/ |
| 9.13 · Paso-09 §15 Schema | Se decide validar LocalBusiness schema | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. LBS requiere LocalBusiness schema. | Required |
| 9.14 · Paso-09 §15 Schema | Se decide validar BreadcrumbList | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Todas las páginas requieren BreadcrumbList. | Required |
| 9.15 · Paso-09 §15 Schema | Se decide validar FAQPage | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. LBS típicamente incluye FAQPage. | Required |
| 9.16 · Paso-09 §15 Schema | Se decide validar Speakable | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Schema Speakable para asistentes de voz. | Required |
| 9.17 · Paso-09 §26 NAP | Se decide validar NAP | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. NAP del Paso 1 debe ser consistente. | NAP del Paso 1 |
| 9.18 · Paso-09 §18 CTA | Se decide validar CTA | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. CTA presente en cada página. | CTA presente |
| 9.19 · Paso-09 §11 No falsa ubicación | Se decide validar no falsa ubicación | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Regla "no fake location" obligatoria. | No oficina falsa en zonas |
| 9.20 · Paso-09 §17 Anti-canibalización | Se decide validar no canibalización | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Una intención = una URL. | No duplicate intent |

## Bloque 3 — Inventario QA

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 9.21 · Paso-09 §34.1 QA Status | Se decide que el inventario SEO base tenga QA Status | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Cada URL del inventario debe pasar QA antes de publicar. | 28 URLs |
| 9.22 · Paso-09 §34.1 QA Status | Se decide que `/contacto/` también pase QA operativo | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La página auxiliar también requiere QA. | Página auxiliar |
| 9.23 · Paso-09 §34.1 QA Status | Se decide que el resto de URLs queden Pending hasta ejecución real | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. QA Pending hasta ejecución por reviewer. | QA Pending |
