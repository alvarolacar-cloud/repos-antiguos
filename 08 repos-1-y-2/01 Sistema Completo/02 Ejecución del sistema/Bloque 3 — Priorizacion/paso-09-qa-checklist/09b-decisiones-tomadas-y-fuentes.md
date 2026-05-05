# Paso 9 — QA Checklist

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Por qué esta decisión`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Por qué esta decisión** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Fuente de la decisión** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Manual resuelve** — `Sí` si el manual cubre la decisión completa; `No` si falta acción externa (Competidores, Datos de búsqueda).
- **Viene de una decisión anterior** — `no` o `← X.YY`.
- **Referencia exacta en el manual** — una o varias referencias canónicas separadas por `;`.

---

## Bloque 1 — Ejemplo desarrollado

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 9.01 | Se decide auditar como ejemplo una LBS concreta | /cerrajero/madrid/cerrajero-urgente/ | LBS de Main City concentra todos los checks críticos | GMB Crush | Sí | ← 1.34 |  Paso-09 §7; Paso-03 §13; Paso-05 §9 |
| 9.02 | Se asigna ID de QA | LBS-001 | ID permite trazar QA contra la URL Matrix | GMB Crush | Sí | no |  Paso-09 §7; Paso-03 §9 |
| 9.03 | Se define el tipo de página auditada | Location-Based Service | Los checks varían según page type, no son universales | GMB Crush | Sí | no |  Paso-09 §9; Paso-05 §9 |
| 9.04 | Se define el servicio objetivo | Cerrajero urgente | Sin servicio objetivo no se puede validar enfoque temático | GMB Crush | Sí | ← 1.34 |  Paso-09 §9; Paso-01 §14 |
| 9.05 | Se define la Main City | Madrid | Sin ciudad no se puede validar la señal local de la LBS | GMB Crush | Sí | ← 1.20 |  Paso-09 §9; Paso-01 §12 |
| 9.06 | Se define el estado de QA | Ready for QA | Estado del proceso real lo asigna el reviewer humano | IA sin respaldo | Sí | no | §7 |
| 9.07 | Se define reviewer | SEO Manager | Reviewer real depende de la estructura de equipo del cliente | IA sin respaldo | Sí | no | §7 |
| 9.08 | Se define fecha de QA | 2026-04-24 | Timestamp real depende del momento de ejecución del QA | IA sin respaldo | Sí | no | §7 |

## Bloque 2 — Checks obligatorios

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 9.09 | Se decide validar parent page | /cerrajero/cerrajero-urgente/ | Sin link a SO se rompe la jerarquía servicio → categoría | GMB Crush | Sí | no |  Paso-09 §16; Paso-07 §11; Paso-05 §8 |
| 9.10 | Se decide validar GeoHub | /madrid/ | Sin link a GeoHub se rompe el cluster geográfico | GMB Crush | Sí | no |  Paso-09 §16; Paso-07 §11; Paso-05 §11 |
| 9.11 | Se decide validar servicios relacionados | Apertura de puertas, Cambio de cerraduras | Cross-links activan cluster temático y reducen orfandad | GMB Crush | Sí | no |  Paso-09 §16; Paso-07 §11 |
| 9.12 | Se decide validar GeoArticle relacionado | /madrid/cuanto-cuesta-un-cerrajero-urgente/ | Sin link a GeoArticle el flujo informativo no llega a LBS | GMB Crush | Sí | no |  Paso-09 §16; Paso-07 §13 |
| 9.13 | Se decide validar LocalBusiness schema | Required | LocalBusiness es la entidad clave para activar Local Pack | GMB Crush | Sí | no |  Paso-09 §15; Paso-05 §19 |
| 9.14 | Se decide validar BreadcrumbList | Required | BreadcrumbList mejora CTR en SERP y explicita jerarquía | GMB Crush | Sí | no |  Paso-09 §15; Paso-05 §19 |
| 9.15 | Se decide validar FAQPage | Required | FAQPage captura rich results y resuelve dudas pre-conversión | GMB Crush | Sí | no |  Paso-09 §15; Paso-05 §19 |
| 9.16 | Se decide validar Speakable | Required | Speakable activa búsqueda por voz en asistentes locales | GMB Crush | Sí | no |  Paso-09 §15; Paso-05 §19 |
| 9.17 | Se decide validar NAP | NAP del Paso 1 | NAP inconsistente rompe verificación local en Google | GMB Crush | Sí | ← 1.08–1.15 |  Paso-09 §26; Paso-01 §9 |
| 9.18 | Se decide validar CTA | CTA presente | Sin CTA visible la página no convierte tráfico cualificado | GMB Crush | Sí | no |  Paso-09 §18; Paso-05 §7 |
| 9.19 | Se decide validar no falsa ubicación | No oficina falsa en zonas | Falsa ubicación viola guidelines y dispara penalizaciones | GMB Crush | Sí | no |  Paso-09 §11; Paso-06 §12 |
| 9.20 | Se decide validar no canibalización | No duplicate intent | Dos URLs por intención dividen señales y pierden ranking | GMB Crush | Sí | no |  Paso-09 §17; Paso-04 §21 |

## Bloque 3 — Inventario QA

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 9.21 | Se decide que el inventario SEO base tenga QA Status | 28 URLs | Sin QA por URL se publica sin red de seguridad | GMB Crush | Sí | no |  Paso-09 §34.1; Paso-03 §16 |
| 9.22 | Se decide que `/contacto/` también pase QA operativo | Página auxiliar | Contacto sin QA puede romper el flujo de conversión | GMB Crush | Sí | no |  Paso-09 §34.1; Paso-02 §16 |
| 9.23 | Se decide que el resto de URLs queden Pending hasta ejecución real | QA Pending | Pending fuerza al reviewer a ejecutar antes de publicar | GMB Crush | Sí | no |  Paso-09 §34.1 |
