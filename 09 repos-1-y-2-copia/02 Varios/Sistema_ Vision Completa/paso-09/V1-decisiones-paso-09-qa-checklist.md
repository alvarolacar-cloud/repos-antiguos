# Paso 9 — QA Checklist

Fase 1 de trazabilidad: solo se listan decisiones tomadas en el ejemplo **Cerrajeros Madrid 24h**.

No se asignan fuentes todavía.

---

## Bloque 1 — Ejemplo desarrollado

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 9.01 | Se decide auditar como ejemplo una LBS concreta | `/cerrajero/madrid/cerrajero-urgente/` |
| 9.02 | Se asigna ID de QA | LBS-001 |
| 9.03 | Se define el tipo de página auditada | Location-Based Service |
| 9.04 | Se define el servicio objetivo | Cerrajero urgente |
| 9.05 | Se define la Main City | Madrid |
| 9.06 | Se define el estado de QA | Ready for QA |
| 9.07 | Se define reviewer | SEO Manager |
| 9.08 | Se define fecha de QA | 2026-04-24 |

## Bloque 2 — Checks obligatorios

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 9.09 | Se decide validar parent page | `/cerrajero/cerrajero-urgente/` |
| 9.10 | Se decide validar GeoHub | `/madrid/` |
| 9.11 | Se decide validar servicios relacionados | Apertura de puertas, Cambio de cerraduras |
| 9.12 | Se decide validar GeoArticle relacionado | `/madrid/cuanto-cuesta-un-cerrajero-urgente/` |
| 9.13 | Se decide validar LocalBusiness schema | Required |
| 9.14 | Se decide validar BreadcrumbList | Required |
| 9.15 | Se decide validar FAQPage | Required |
| 9.16 | Se decide validar Speakable | Required |
| 9.17 | Se decide validar NAP | NAP del Paso 1 |
| 9.18 | Se decide validar CTA | CTA presente |
| 9.19 | Se decide validar no falsa ubicación | No oficina falsa en zonas |
| 9.20 | Se decide validar no canibalización | No duplicate intent |

## Bloque 3 — Inventario QA

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 9.21 | Se decide que el inventario SEO base tenga QA Status | 28 URLs |
| 9.22 | Se decide que `/contacto/` también pase QA operativo | Página auxiliar |
| 9.23 | Se decide que el resto de URLs queden Pending hasta ejecución real | QA Pending |
