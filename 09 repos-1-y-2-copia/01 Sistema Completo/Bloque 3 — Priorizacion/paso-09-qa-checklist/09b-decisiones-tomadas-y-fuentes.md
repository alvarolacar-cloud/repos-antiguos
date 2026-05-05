# Paso 9 — QA Checklist

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`09a-ejecucion-qa-checklist.md`).

---

## Bloque 1 — Ejemplo desarrollado

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 9.01 | Se decide auditar como ejemplo una LBS concreta | /cerrajero/madrid/cerrajero-urgente/ | GMB Crush | LBS de Main City concentra todos los checks críticos | ← 1.34 | §7 |
| 9.02 | Se asigna ID de QA | LBS-001 | GMB Crush | ID permite trazar QA contra la URL Matrix | no | §7 |
| 9.03 | Se define el tipo de página auditada | Location-Based Service | GMB Crush | Los checks varían según page type, no son universales | no | §9 |
| 9.04 | Se define el servicio objetivo | Cerrajero urgente | GMB Crush | Sin servicio objetivo no se puede validar enfoque temático | ← 1.34 | §9 |
| 9.05 | Se define la Main City | Madrid | GMB Crush | Sin ciudad no se puede validar la señal local de la LBS | ← 1.20 | §9 |
| 9.06 | Se define el estado de QA | Ready for QA | IA sin respaldo | Estado del proceso real lo asigna el reviewer humano | no | §7 |
| 9.07 | Se define reviewer | SEO Manager | IA sin respaldo | Reviewer real depende de la estructura de equipo del cliente | no | §7 |
| 9.08 | Se define fecha de QA | 2026-04-24 | IA sin respaldo | Timestamp real depende del momento de ejecución del QA | no | §7 |

## Bloque 2 — Checks obligatorios

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 9.09 | Se decide validar parent page | /cerrajero/cerrajero-urgente/ | GMB Crush | Sin link a SO se rompe la jerarquía servicio → categoría | no | §16 |
| 9.10 | Se decide validar GeoHub | /madrid/ | GMB Crush | Sin link a GeoHub se rompe el cluster geográfico | no | §16 |
| 9.11 | Se decide validar servicios relacionados | Apertura de puertas, Cambio de cerraduras | GMB Crush | Cross-links activan cluster temático y reducen orfandad | no | §16 |
| 9.12 | Se decide validar GeoArticle relacionado | /madrid/cuanto-cuesta-un-cerrajero-urgente/ | GMB Crush | Sin link a GeoArticle el flujo informativo no llega a LBS | no | §16 |
| 9.13 | Se decide validar LocalBusiness schema | Required | GMB Crush | LocalBusiness es la entidad clave para activar Local Pack | no | §15 |
| 9.14 | Se decide validar BreadcrumbList | Required | GMB Crush | BreadcrumbList mejora CTR en SERP y explicita jerarquía | no | §15 |
| 9.15 | Se decide validar FAQPage | Required | GMB Crush | FAQPage captura rich results y resuelve dudas pre-conversión | no | §15 |
| 9.16 | Se decide validar Speakable | Required | GMB Crush | Speakable activa búsqueda por voz en asistentes locales | no | §15 |
| 9.17 | Se decide validar NAP | NAP del Paso 1 | GMB Crush | NAP inconsistente rompe verificación local en Google | ← 1.08–1.15 | §26 |
| 9.18 | Se decide validar CTA | CTA presente | GMB Crush | Sin CTA visible la página no convierte tráfico cualificado | no | §18 |
| 9.19 | Se decide validar no falsa ubicación | No oficina falsa en zonas | GMB Crush | Falsa ubicación viola guidelines y dispara penalizaciones | no | §11 |
| 9.20 | Se decide validar no canibalización | No duplicate intent | GMB Crush | Dos URLs por intención dividen señales y pierden ranking | no | §17 |

## Bloque 3 — Inventario QA

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 9.21 | Se decide que el inventario SEO base tenga QA Status | 28 URLs | GMB Crush | Sin QA por URL se publica sin red de seguridad | no | §34.1 |
| 9.22 | Se decide que `/contacto/` también pase QA operativo | Página auxiliar | GMB Crush | Contacto sin QA puede romper el flujo de conversión | no | §34.1 |
| 9.23 | Se decide que el resto de URLs queden Pending hasta ejecución real | QA Pending | GMB Crush | Pending fuerza al reviewer a ejecutar antes de publicar | no | §34.1 |
