# Mapa Output → Fase

> Generado leyendo §5 de los 19 a-docs operativos en `DOCTRINA/pasos/` (los 2 templates `00-preflight-template.md` y `B6-info-que-falta-template.md` no tienen §5 y se saltan).
> Total: 250 filas extraídas literalmente de las tablas §5 (= 242 outputs únicos por ID; las 8 filas extra corresponden a las 8 sub-filas del NAP 1.4 que comparten Fuente y a la fila duplicada 1.10 Direct/Candidate con Fuentes distintas).
> Mapeo Fuente → Fase aplicado según la tabla literal del enunciado.

## Resumen por fase

| Fase | Total outputs | % |
|---|---:|---:|
| Fase 1 (Input) | 13 | 5.2% |
| Fase 3 (Datos) | 15 | 6.0% |
| Fase 4 (Encaje) | 220 | 88.0% |
| Fase 7 (Post-lanzamiento) | 0 | 0.0% |
| Heredados | 0 | 0.0% |
| N/A | 1 | 0.4% |
| ⚠ revisar | 1 | 0.4% |
| **TOTAL** | **250** | **100%** |

## Resumen por fase × bloque (cross-tab)

| Fase \ Bloque | B1 | B2 | B3 | B4 | B5 | B7 | Total |
|---|---:|---:|---:|---:|---:|---:|---:|
| Fase 1 (Input) | 11 | 0 | 0 | 0 | 2 | 0 | 13 |
| Fase 3 (Datos) | 6 | 0 | 3 | 0 | 3 | 3 | 15 |
| Fase 4 (Encaje) | 33 | 57 | 38 | 41 | 34 | 17 | 220 |
| Fase 7 (Post-lanzamiento) | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| Heredados | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| N/A | 0 | 0 | 1 | 0 | 0 | 0 | 1 |
| ⚠ revisar | 0 | 0 | 1 | 0 | 0 | 0 | 1 |
| **Total** | **50** | **57** | **43** | **41** | **39** | **20** | **250** |

> Notas: B1 = 01a-03a; B2 = 04a-07a; B3 = 08a-10a; B4 = 11a-13a; B5 = 15a-19a; B7 = 14a (GBP).

## Tabla completa (250 filas)

| ID | Nombre | Bloque | Fuente | Fase | Hereda de |
|---|---|---:|---|---|---|
| 1.1 | Business Name | 1 | Cliente preflight | Fase 1 | — |
| 1.2 | Website URL / Canonical Domain | 1 | Cliente preflight | Fase 1 | — |
| 1.3 | GBP Lifecycle Status | 1 | Cliente preflight + Doctrina GMB Crush | Fase 4 | — |
| 1.4 | Full NAP — Name | 1 | Cliente preflight | Fase 1 | — |
| 1.4 | Full NAP — Street Address | 1 | Cliente preflight | Fase 1 | — |
| 1.4 | Full NAP — City | 1 | Cliente preflight | Fase 1 | — |
| 1.4 | Full NAP — State / Province | 1 | Cliente preflight | Fase 1 | — |
| 1.4 | Full NAP — ZIP / Postal Code | 1 | Cliente preflight | Fase 1 | — |
| 1.4 | Full NAP — Country | 1 | Cliente preflight | Fase 1 | — |
| 1.4 | Full NAP — Phone | 1 | Cliente preflight | Fase 1 | — |
| 1.4 | Full NAP — Email | 1 | Cliente preflight | Fase 1 | — |
| 1.5 | Planned Primary GBP Category | 1 | Doctrina + Local Pack | Fase 3 | — |
| 1.6 | Planned Additional GBP Categories | 1 | Doctrina + Local Pack | Fase 3 | — |
| 1.7 | Main City | 1 | Doctrina GMB Crush | Fase 4 | — |
| 1.8 | Physical Location City | 1 | Cliente preflight | Fase 1 | — |
| 1.9 | Servicios principales | 1 | Doctrina + Local Pack | Fase 3 | — |
| 1.10 | Direct LCAs (proximidad NAP) | 1 | Doctrina GMB Crush | Fase 4 | Paso-01 1.4 (NAP Street + City) |
| 1.10 | Candidate LCAs (validables con test GEO) | 1 | Doctrina + Local Pack | Fase 3 | — |
| 1.11 | Approved Expansion Areas | 1 | Arquitectura técnica | Fase 4 | — |
| 1.12 | GeoArticles per Service (G) | 1 | Doctrina GMB Crush | Fase 4 | — |
| 1.13 | Preferred CTA | 1 | Arquitectura técnica | Fase 4 | — |
| 1.14 | Trust Signals | 1 | Doctrina + Local Pack | Fase 3 | — |
| 2.1 | Planned GBP Categories Status | 1 | Doctrina GMB Crush | Fase 4 | Paso-01 1.5 + Paso-01 1.6 |
| 2.2 | Primary Category Slug (heredado del Paso 3) | 1 | Doctrina GMB Crush | Fase 4 | Paso-03 §4 |
| 2.3 | Main City Slug (heredado del Paso 3) | 1 | Doctrina GMB Crush | Fase 4 | Paso-03 §4 |
| 2.4 | Service Slugs (S=5) (heredado del Paso 3) | 1 | Doctrina GMB Crush | Fase 4 | Paso-03 §4 |
| 2.5 | Variable S | 1 | Doctrina GMB Crush | Fase 4 | Paso-01 1.9 |
| 2.6 | Variable A | 1 | Doctrina GMB Crush | Fase 4 | Paso-01 1.6 |
| 2.7 | Variable G | 1 | Doctrina GMB Crush | Fase 4 | Paso-01 1.12 |
| 2.8 | Total páginas SEO base | 1 | Doctrina GMB Crush | Fase 4 | Paso-02 2.5 + 2.6 + 2.7 (intra-paso) |
| 2.9 | Inventario por tipo de página | 1 | Doctrina GMB Crush | Fase 4 | Paso-02 2.5 + 2.6 + 2.7 (intra-paso) |
| 2.10 | Optional Expansion Formula | 1 | Doctrina GMB Crush | Fase 4 | — |
| 2.11 | Validación anti-duplicación | 1 | Doctrina GMB Crush | Fase 4 | — |
| 2.12 | Validación dependencias | 1 | Doctrina GMB Crush | Fase 4 | — |
| 2.13 | Validación LCAs fuera fórmula | 1 | Doctrina GMB Crush | Fase 4 | — |
| 2.14 | Validación auditabilidad del total | 1 | Doctrina GMB Crush | Fase 4 | — |
| 3.1 | Spreadsheet Name | 1 | Arquitectura técnica | Fase 4 | — |
| 3.2 | GeoHub URL Style | 1 | Arquitectura técnica | Fase 4 | — |
| 3.3 | Additional Category Slugs | 1 | Doctrina GMB Crush | Fase 4 | Paso-01 1.6 |
| 3.4 | GeoArticle Topics propuestos | 1 | Doctrina + Keyword research | Fase 3 | — |
| 3.5 | URL Matrix completa | 1 | Doctrina GMB Crush | Fase 4 | — |
| 3.6 | IDs por tipo de página | 1 | Doctrina GMB Crush | Fase 4 | — |
| 3.7 | Parent Page declarado por fila | 1 | Doctrina GMB Crush | Fase 4 | — |
| 3.8 | Schema asignado desde matriz | 1 | Doctrina GMB Crush | Fase 4 | — |
| 3.9 | Enlaces internos Required por fila | 1 | Doctrina GMB Crush | Fase 4 | — |
| 3.10 | Priority y Publish Phase por fila | 1 | Doctrina GMB Crush | Fase 4 | — |
| 3.11 | Default Page Status | 1 | Doctrina GMB Crush | Fase 4 | — |
| 3.12 | Notes estratégicas por fila | 1 | Arquitectura técnica | Fase 4 | — |
| 3.13 | Validación LCAs sin filas base | 1 | Doctrina GMB Crush | Fase 4 | — |
| 3.14 | Validación matriz cerrada antes de contenido | 1 | Doctrina GMB Crush | Fase 4 | — |
| 4.1 | Canonical Domain | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.2 |
| 4.2 | Trailing Slash | 2 | Arquitectura técnica | Fase 4 | — |
| 4.3 | Homepage URL | 2 | Doctrina GMB Crush | Fase 4 | — |
| 4.4 | Service Overview URL pattern | 2 | Doctrina GMB Crush | Fase 4 | — |
| 4.5 | Main City GeoHub URL Style | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.2 |
| 4.6 | Location-Based Service URL pattern | 2 | Doctrina GMB Crush | Fase 4 | — |
| 4.7 | Additional Category URL pattern | 2 | Doctrina GMB Crush | Fase 4 | — |
| 4.8 | GeoArticle URL pattern | 2 | Doctrina GMB Crush | Fase 4 | — |
| 4.9 | LCAs no generan URLs | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.10 |
| 4.10 | Approved Expansion URLs | 2 | Arquitectura técnica | Fase 4 | Paso-01 1.11 |
| 4.11 | Validación No "near me" en URLs | 2 | Doctrina GMB Crush | Fase 4 | — |
| 4.12 | Validación No adjetivos vacíos en URLs | 2 | Doctrina GMB Crush | Fase 4 | — |
| 4.13 | Validación Slugs limpios | 2 | Doctrina GMB Crush | Fase 4 | Paso-02 2.2 |
| 4.14 | Validación No falsa ubicación | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.8 + Paso-01 1.11 |
| 4.15 | Validación No duplicar intención | 2 | Doctrina GMB Crush | Fase 4 | — |
| 5.1 | Spec Homepage | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.1 + 1.4 + 1.13 + 1.14 + Paso-04 4.3 |
| 5.2 | Spec Service Overview | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.9 + Paso-02 2.4 + Paso-04 4.4 |
| 5.3 | Spec Location-Based Service | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.9 + 1.10 + Paso-02 2.4 + Paso-04 4.6 |
| 5.4 | Spec Additional Category | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.6 + Paso-03 3.3 + Paso-04 4.7 |
| 5.5 | Spec GeoHub | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.7 + 1.10 + Paso-02 2.3 + Paso-04 4.5 |
| 5.6 | Spec GeoArticle | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.7 + Paso-03 3.4 + Paso-04 4.8 |
| 5.7 | Validación Schema por tipo de página | 2 | Doctrina GMB Crush | Fase 4 | — |
| 5.8 | Validación Word count por intención | 2 | Doctrina GMB Crush | Fase 4 | — |
| 5.9 | Validación CTA adaptado al page type | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.13 |
| 5.10 | Validación No false location claims | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.8 + 1.10 + Paso-04 4.14 |
| 6.1 | Principio 1 — Main City crea arquitectura | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.7 |
| 6.2 | Principio 2 — LCAs enriquecen contenido | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.10 |
| 6.3 | Principio 3 — AEAs crean URLs solo si se aprueban | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.11 |
| 6.4 | Principio 4 — Mencionar zona ≠ crear página | 2 | Doctrina GMB Crush | Fase 4 | — |
| 6.5 | Principio 5 — No falsa ubicación | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.8 |
| 6.6 | Homepage Content Architecture | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 + Paso 5 |
| 6.7 | Service Overview Content Architecture | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 + Paso 5 |
| 6.8 | Location-Based Service Content Architecture | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 + Paso 5 |
| 6.9 | Additional Category Content Architecture | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 + Paso 5 |
| 6.10 | GeoHub Content Architecture | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 + Paso 5 |
| 6.11 | GeoArticle Content Architecture | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 + Paso 5 |
| 6.12 | Tabla de uso de LCAs por page type | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.10 |
| 6.13 | Ejemplo práctico completo (sección cobertura) | 2 | Doctrina GMB Crush | Fase 4 | — |
| 6.14 | FAQ ejemplo | 2 | Doctrina GMB Crush | Fase 4 | — |
| 6.15 | Reviews y trust blocks contextualizados | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.14 |
| 6.16 | FAQs con cobertura natural | 2 | Doctrina GMB Crush | Fase 4 | — |
| 6.17 | Schema `areaServed` coherente | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.10 + Paso 8 |
| 7.1 | Regla 1 — Enlazar arriba/abajo/lateral | 2 | Doctrina GMB Crush | Fase 4 | — |
| 7.2 | Regla 2 — Homepage distribuye autoridad | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 7.3 | Regla 3 — SO empuja versión local | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 7.4 | Regla 4 — GeoHub organiza Main City | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 7.5 | Regla 5 — LBS conecta servicio y ciudad | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 7.6 | Regla 6 — AC se integra en silo local | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 7.7 | Regla 7 — GeoArticle pasa relevancia a landing | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 7.8 | Regla 8 — LCAs sin URL no reciben enlaces | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.10 + Paso-04 4.9 |
| 7.9 | Regla 9 — Anchor text variado | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.1 (branded) + Paso-01 1.13 (CTA) |
| 7.10 | Regla 10 — Enlaces contextuales primero | 2 | Doctrina GMB Crush | Fase 4 | — |
| 7.11 | Matriz de enlaces obligatorios por page type | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 7.12 | Ejemplo completo de enlaces para LBS modelo | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 7.13 | Breadcrumbs por page type | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 7.14 | Inbound links esperados (cross-cutting) | 2 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 7.15 | Expansion linking separado (cross-cutting) | 2 | Doctrina GMB Crush | Fase 4 | Paso-01 1.11 |
| 8.1 | Priority Score Formula | 3 | Doctrina GMB Crush | Fase 4 | — |
| 8.2 | Revenue Value | 3 | Cliente preflight + Doctrina GMB Crush | Fase 4 | Paso-01 1.9 |
| 8.3 | Search Intent | 3 | Doctrina + Keyword research | Fase 3 | Paso-01 1.9 + Paso-03 3.4 |
| 8.4 | GBP Category Relevance | 3 | Doctrina + Local Pack | Fase 3 | Paso-01 1.5 + 1.6 |
| 8.5 | Local Relevance | 3 | Doctrina GMB Crush | Fase 4 | Paso-01 1.7 + 1.8 + 1.10 |
| 8.6 | Competition Gap | 3 | Doctrina + Local Pack | Fase 3 | Paso-01 1.7 + Paso-01 1.9 |
| 8.7 | Conversion Urgency | 3 | Doctrina GMB Crush | Fase 4 | Paso-01 1.9 + 1.13 |
| 8.8 | Total Score por página | 3 | Doctrina GMB Crush | Fase 4 | Paso-08 8.2-8.7 (intra-paso) |
| 8.9 | Priority Tiers | 3 | Doctrina GMB Crush | Fase 4 | Paso-08 8.8 (intra-paso) |
| 8.10 | Publish Phase derivada | 3 | Doctrina GMB Crush | Fase 4 | Paso-08 8.9 + Paso-02 2.10 |
| 8.11 | Validación Landing antes que GeoArticle | 3 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 + Paso-08 8.10 |
| 8.12 | Validación Homepage = P1 obligatorio | 3 | Doctrina GMB Crush | Fase 4 | — |
| 8.13 | Validación LCAs sin score | 3 | Doctrina GMB Crush | Fase 4 | Paso-01 1.10 + Paso-04 4.9 |
| 8.14 | Inventario priorizado completo | 3 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 + Paso-08 8.8-8.10 |
| 9.1 | Plantilla de QA por página | 3 | Doctrina GMB Crush | Fase 4 | Paso-08 8.14 |
| 9.2 | Regla 1 — URL QA | 3 | Doctrina GMB Crush | Fase 4 | Paso-04 4.3-4.8 |
| 9.3 | Regla 2 — Page Type QA | 3 | Doctrina GMB Crush | Fase 4 | Paso-05 5.3-5.8 + Paso-06 6.6-6.11 |
| 9.4 | Regla 3 — One service only | 3 | Doctrina GMB Crush | Fase 4 | Paso-01 1.9 + Paso-05 5.5-5.8 |
| 9.5 | Regla 4 — One Main City only | 3 | Doctrina GMB Crush | Fase 4 | Paso-01 1.7 |
| 9.6 | Regla 5 — Local Coverage QA | 3 | Doctrina GMB Crush | Fase 4 | Paso-01 1.10 + Paso-04 4.14 |
| 9.7 | Regla 6 — No fake location | 3 | Doctrina GMB Crush | Fase 4 | Paso-01 1.4 + 1.8 + Paso-04 4.14 + Paso-05 5.10 |
| 9.8 | Regla 7 — Metadata QA | 3 | Doctrina GMB Crush | Fase 4 | Paso-05 5.3-5.8 |
| 9.9 | Regla 8 — Word count QA | 3 | Doctrina GMB Crush | Fase 4 | Paso-05 5.10 |
| 9.10 | Regla 9 — Schema QA | 3 | Doctrina GMB Crush | Fase 4 | Paso-05 5.9 + Paso-06 6.17 |
| 9.11 | Regla 10 — Enlaces internos QA | 3 | Doctrina GMB Crush | Fase 4 | Paso-07 7.11 |
| 9.12 | Regla 11 — Canibalización QA | 3 | Doctrina GMB Crush | Fase 4 | Paso-04 4.15 |
| 9.13 | Regla 12 — CTA QA | 3 | Doctrina GMB Crush | Fase 4 | Paso-05 5.9 + Paso-01 1.13 |
| 9.14 | Final Publish Gate | 3 | Doctrina GMB Crush | Fase 4 | Paso-09 9.2-9.13 (intra-paso) |
| 9.15 | GBP Not Created QA Checklist | 3 | Doctrina GMB Crush | Fase 4 | Paso-01 1.3 + Paso-14 (forward) |
| 10.1 | Publishing Capacity | 3 | Arquitectura técnica | Fase 4 | — |
| 10.2 | Content Team composition | 3 | Arquitectura técnica | Fase 4 | — |
| 10.3 | CMS + capabilities | 3 | no aplica | N/A | — |
| 10.4 | Fase 1 — Entity Foundation | 3 | Doctrina GMB Crush | Fase 4 | Paso-02 2.10 + Paso-08 8.10 |
| 10.5 | Fase 2 — Main City Conversion Layer | 3 | Doctrina GMB Crush | Fase 4 | Paso-02 2.10 + Paso-08 8.10 |
| 10.6 | Fase 3 — Main City Semantic Expansion | 3 | Doctrina GMB Crush | Fase 4 | Paso-02 2.10 + Paso-08 8.10 |
| 10.7 | Fase 4 — Optimization Loop | 3 | Doctrina GMB Crush | Fase 4 | Paso-10 10.3 (intra-paso) |
| 10.8 | Fase 5 — Optional Expansion Module | 3 | Doctrina GMB Crush | Fase 4 | Paso-01 1.11 |
| 10.9 | Calendario semanal de publicación | 3 | Doctrina GMB Crush | Fase 4 | Paso-10 10.1 + 10.4-10.8 |
| 10.10 | Matriz de dependencias de publicación | 3 | Doctrina GMB Crush | Fase 4 | Paso-03 3.7 + Paso-08 8.10 |
| 10.11 | Reglas operativas | 3 | Doctrina GMB Crush | Fase 4 | — |
| 10.12 | Checklist pre-publicación | 3 | Doctrina GMB Crush | Fase 4 | Paso-10 10.4-10.10 (intra-paso) |
| 10.13 | Validación Bloques 1-2 cerrados | 3 | Doctrina GMB Crush | Fase 4 | Bloques 1+2 + Pasos 8+9 |
| 10.14 | GBP Creation & Website Alignment (sección separada) | 3 | GMB Crush §26 (ambigüedad heredada) | ⚠ revisar | Paso-01 1.3 + Paso-14 (forward) |
| 11.1 | Función `load_inputs()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-01 + Paso-02 + Paso-03 |
| 11.2 | Función `normalize_slugs()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-02 2.2 + 2.3 + 2.4 + Paso-03 3.3 |
| 11.3 | Función `validate_categories()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-02 2.7 + 2.12 |
| 11.4 | Función `generate_homepage()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-04 4.3 + Paso-05 5.3 |
| 11.5 | Función `generate_service_overview()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-04 4.4 + Paso-05 5.4 |
| 11.6 | Función `generate_geohub()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-04 4.5 + Paso-05 5.7 + Paso-03 3.2 |
| 11.7 | Función `generate_lbs()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-04 4.6 + Paso-05 5.5 |
| 11.8 | Función `generate_additional_category()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-04 4.7 + Paso-05 5.6 + Paso-03 3.3 |
| 11.9 | Función `generate_geoarticles()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-04 4.8 + Paso-05 5.8 + Paso-03 3.4 |
| 11.10 | Función `inject_local_coverage()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-06 6.2 + 6.12 + 6.17 |
| 11.11 | Función `generate_expansion()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-01 1.11 + Paso-04 4.10 |
| 11.12 | Función `assign_internal_links()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-07 7.9 + 7.11 |
| 11.13 | Función `score_priority()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-08 8.1-8.10 |
| 11.14 | Función `check_dependencies()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-08 8.11 + Paso-10 10.10 |
| 11.15 | Función `run_qa()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-09 9.2-9.8 |
| 11.16 | Función `output_matrices()` | 4 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 + 3.8 + Paso-07 7.11 |
| 12.1 | Master Prompt principal | 4 | Doctrina GMB Crush | Fase 4 | Paso-11 11.1-11.16 + Bloques 1-3 |
| 12.2 | Auxiliary Prompt — URL Matrix | 4 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 + Paso-04 4.3-4.8 |
| 12.3 | Auxiliary Prompt — Content Architecture | 4 | Doctrina GMB Crush | Fase 4 | Paso-05 5.3-5.8 + Paso-06 6.6-6.11 |
| 12.4 | Auxiliary Prompt — GeoArticles | 4 | Doctrina GMB Crush | Fase 4 | Paso-03 3.4 + Paso-08 8.11 |
| 12.5 | Auxiliary Prompt — QA | 4 | Doctrina GMB Crush | Fase 4 | Paso-09 9.2-9.8 |
| 12.6 | Estructura del prompt | 4 | Doctrina GMB Crush | Fase 4 | — |
| 12.7 | Web-First GBP Rule | 4 | Doctrina GMB Crush | Fase 4 | Paso-01 1.3 + Paso-09 9.15 |
| 12.8 | Reglas operativas no-negociables (14 reglas) | 4 | Doctrina GMB Crush | Fase 4 | Bloques 1-3 (todas las reglas doctrinales) |
| 12.9 | Inputs Validation embedded | 4 | Doctrina GMB Crush | Fase 4 | Paso-01 1.X + Paso-02 2.X |
| 12.10 | Executive Summary template | 4 | Doctrina GMB Crush | Fase 4 | Paso-01 1.X + Paso-02 2.X + Paso-08 8.X |
| 12.11 | Validación prompt produce 20 outputs | 4 | Doctrina GMB Crush | Fase 4 | Paso-12 12.1-12.5 (intra-paso) |
| 12.12 | Validación prompt cumple web-first | 4 | Doctrina GMB Crush | Fase 4 | Paso-01 1.3 + Paso-09 9.15 |
| 12.13 | Reglas doctrinales del sistema (10 Reglas) | 4 | Doctrina GMB Crush | Fase 4 | Documento fuente §7-§16 |
| 13.1 | Resumen ejecutivo del sistema | 4 | Doctrina GMB Crush | Fase 4 | §3 + §20 + §21 + §22 |
| 13.2 | 12 Sistemas | 4 | Doctrina GMB Crush | Fase 4 | §7–§18 |
| 13.3 | 7 Módulos A-G | 4 | Doctrina GMB Crush | Fase 4 | §29–§35 |
| 13.4 | 16 Reglas operativas | 4 | Doctrina GMB Crush | Fase 4 | §36–§51 |
| 13.5 | Workflow operativo de 21 pasos | 4 | Doctrina GMB Crush | Fase 4 | §25 |
| 13.6 | Carpetas recomendadas del repo | 4 | Doctrina GMB Crush | Fase 4 | §26 |
| 13.7 | Tabla inventario URL con Priority Score | 4 | Doctrina GMB Crush | Fase 4 | §54.2 |
| 13.8 | Calendario de producción de 7 fases | 4 | Doctrina GMB Crush | Fase 4 | §54.4 |
| 13.9 | Output final que debe producir el sistema | 4 | Doctrina GMB Crush | Fase 4 | §28 |
| 13.10 | Relación con el Paso 14 | 4 | Doctrina GMB Crush | Fase 4 | §27 |
| 13.11 | Checklist final del Paso 13 | 4 | Doctrina GMB Crush | Fase 4 | §52 |
| 13.12 | Outputs del Paso 13 | 4 | Doctrina GMB Crush | Fase 4 | §53 |
| 14.1 | GBP creado o plan de creación listo | 7 | Doctrina GMB Crush | Fase 4 | Paso-18 18.6 |
| 14.2 | Estado de verificación definido | 7 | Cliente preflight + Doctrina GMB Crush | Fase 4 | — |
| 14.3 | NAP final aprobado | 7 | Doctrina GMB Crush | Fase 4 | Paso-01 1.4 |
| 14.4 | Modelo de negocio definido | 7 | Cliente preflight + Doctrina GMB Crush | Fase 4 | Paso-01 1.4 |
| 14.5 | Categoría principal confirmada | 7 | Doctrina GMB Crush | Fase 4 | Paso-01 1.7 |
| 14.6 | Categorías adicionales confirmadas o descartadas | 7 | Doctrina GMB Crush | Fase 4 | Paso-01 1.8 |
| 14.7 | Servicios del GBP mapeados a páginas web | 7 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 14.8 | URL de web seleccionada para el GBP | 7 | Doctrina GMB Crush | Fase 4 | Paso-04 |
| 14.9 | URL UTM preparada | 7 | Doctrina GMB Crush | Fase 4 | Paso-13 13.8 |
| 14.10 | Descripción GBP aprobada | 7 | Doctrina GMB Crush | Fase 4 | Paso-15 |
| 14.11 | Plan de fotos | 7 | Cliente preflight + Doctrina GMB Crush | Fase 4 | — |
| 14.12 | Plan de Q&A | 7 | Doctrina + Keyword research | Fase 3 | — |
| 14.13 | Plan de posts | 7 | Doctrina + Keyword research | Fase 3 | Paso-08 |
| 14.14 | Estrategia de reseñas reales | 7 | Doctrina + Local Pack | Fase 3 | — |
| 14.15 | Cola de actualización post-GBP | 7 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 |
| 14.16 | Schema update plan | 7 | Doctrina GMB Crush | Fase 4 | Paso-17 |
| 14.17 | Homepage update plan | 7 | Doctrina GMB Crush | Fase 4 | Paso-15 / Paso-17 |
| 14.18 | Contact page update plan | 7 | Doctrina GMB Crush | Fase 4 | Paso-15 / Paso-17 |
| 14.19 | Tracking baseline plan | 7 | Doctrina GMB Crush | Fase 4 | Paso-13 13.8 |
| 14.20 | Lista de riesgos | 7 | Doctrina GMB Crush | Fase 4 | — |
| 15.1 | Capas de redacción (4 capas) | 5 | Doctrina GMB Crush | Fase 4 | — |
| 15.2 | Reglas de calidad universal (4 reglas) | 5 | Doctrina GMB Crush | Fase 4 | — |
| 15.3 | Homepage redactada | 5 | Doctrina GMB Crush | Fase 4 | Paso-05 5.3 + Paso-06 6.6 + Paso-12 12.3 |
| 15.4 | Service Overview Pages redactadas | 5 | Doctrina GMB Crush | Fase 4 | Paso-05 5.4 + Paso-06 6.7 |
| 15.5 | Location-Based Service Pages redactadas | 5 | Doctrina GMB Crush | Fase 4 | Paso-05 5.5 + Paso-06 6.8 + Paso-01 1.10 |
| 15.6 | Additional Category Page redactada | 5 | Doctrina GMB Crush | Fase 4 | Paso-05 5.6 + Paso-06 6.9 |
| 15.7 | GeoHub redactada | 5 | Doctrina GMB Crush | Fase 4 | Paso-05 5.7 + Paso-06 6.10 |
| 15.8 | GeoArticles redactados | 5 | Doctrina GMB Crush | Fase 4 | Paso-05 5.8 + Paso-06 6.11 + Paso-03 3.4 |
| 15.9 | Página de contacto redactada | 5 | Doctrina GMB Crush | Fase 4 | Paso-01 1.4 |
| 15.10 | Validación clusters completos | 5 | Doctrina GMB Crush | Fase 4 | Paso-01 1.9 + Paso-02 2.10 |
| 15.11 | Validación SO no compite con LBS | 5 | Doctrina GMB Crush | Fase 4 | Paso-05 5.4 + 5.5 |
| 15.12 | Validación GA enlaza a LBS padre | 5 | Doctrina GMB Crush | Fase 4 | Paso-07 7.7 + Paso-08 8.11 |
| 15.13 | Validación datos verificables + sin reseñas inventadas | 5 | Doctrina GMB Crush | Fase 4 | Paso-01 1.3 + Paso-09 9.15 |
| 16.1 | Identidad Visual y CSS Base | 5 | Cliente preflight | Fase 1 | — (input cliente: web de referencia) |
| 16.2 | Layout y Estructura por Sección | 5 | Doctrina GMB Crush | Fase 4 | Paso-05 5.3-5.8 + Paso-06 6.6-6.11 |
| 16.3 | Propuesta de Diseño aprobada | 5 | Cliente preflight | Fase 1 | Paso-16 16.1 + 16.2 (intra-paso) |
| 16.4 | Design Tokens Tailwind | 5 | Doctrina GMB Crush | Fase 4 | Paso-16 16.1 (intra-paso) |
| 16.5 | Reglas Críticas CSS | 5 | Doctrina GMB Crush | Fase 4 | Paso-16 16.4 (intra-paso) |
| 16.6 | Layout-Map Definitivo | 5 | Doctrina GMB Crush | Fase 4 | Paso-16 16.2 + Paso-15 15.3-15.9 |
| 17.1 | Acta de Lectura y Autocontraste | 5 | Doctrina GMB Crush | Fase 4 | Pasos 1-16 (todos los outputs upstream) |
| 17.2 | Proyecto Astro 5 + Tailwind v3 + pnpm | 5 | Arquitectura técnica | Fase 4 | Paso-16 16.4 |
| 17.3 | 7 componentes UI parametrizados | 5 | Doctrina GMB Crush | Fase 4 | Paso-16 16.5 |
| 17.4 | Header + Footer + Layout wrapper | 5 | Doctrina GMB Crush | Fase 4 | Paso-07 7.11 + Paso-16 16.6 |
| 17.5 | 28+1 páginas construidas | 5 | Doctrina GMB Crush | Fase 4 | Paso-03 3.5 + Paso-15 15.3-15.9 + Paso-16 16.6 |
| 17.6 | Schemas implementados y validados | 5 | Doctrina GMB Crush | Fase 4 | Paso-05 5.9 + Paso-06 6.17 + Paso-09 9.10 |
| 17.7 | Limpieza de rastros IA | 5 | Doctrina GMB Crush | Fase 4 | Paso-17 17.5 (intra-paso) |
| 17.8 | Build local pasando | 5 | Doctrina GMB Crush | Fase 4 | Paso-17 17.2-17.7 (intra-paso) |
| 18.1 | Auditoría Técnica (16 criterios literales) | 5 | Doctrina GMB Crush | Fase 4 | Paso-03 + Paso-04 4.1 + Paso-05 5.9 + Paso-07 7.11 + Paso-01 1.4 + Paso-16 |
| 18.2 | Auditoría de Contenido (8 criterios literales) | 5 | Doctrina GMB Crush | Fase 4 | Paso-15 15.3-15.8 + 15.12 + Paso-01 1.4 |
| 18.3 | Auditoría Visual (5 criterios literales) | 5 | Doctrina GMB Crush | Fase 4 | Paso-16 16.4 + 16.6 + Paso-15 15.7 |
| 18.4 | Auditoría de Rastros IA (6 criterios literales) | 5 | Doctrina GMB Crush | Fase 4 | Paso-17 17.7 |
| 18.5 | Setup Cloudflare Pages + Dominio + DNS | 5 | Arquitectura técnica | Fase 4 | Paso-01 1.2 + Paso-04 4.1 |
| 18.6 | Sitio en Producción (verificación post-deploy) | 5 | Doctrina GMB Crush | Fase 4 | Paso-18 18.1-18.5 (intra-paso) |
| 18.7 | Sitemap registrado en GSC | 5 | Doctrina GMB Crush | Fase 4 | Paso-18 18.6 (intra-paso) |
| 19.1 | Tablero de vigilancia post-launch | 5 | Doctrina + Keyword research | Fase 3 | Paso-13 13.8 + Paso-15 15.5 + 15.7 + 15.8 + Paso-18 18.7 |
| 19.2 | Estado de los 3 triggers por candidato | 5 | Doctrina + Keyword research | Fase 3 | Paso-19 19.1 (intra-paso) |
| 19.3 | Análisis SERP + decisión | 5 | Doctrina + Local Pack | Fase 3 | Paso-19 19.2 (intra-paso) |
| 19.4 | Log de decisiones de escalado | 5 | Doctrina GMB Crush | Fase 4 | Paso-19 19.3 + Paso-13 13.7 |
| 19.5 | URL Matrix actualizada con Approved Expansion | 5 | Doctrina GMB Crush | Fase 4 | Paso-19 19.4 + Paso-01 1.11 + Paso-11 11.11 |

## Items marcados ⚠ revisar

Outputs cuya `Fuente` declarada NO encaja en la tabla de mapeo literal del enunciado:

| ID | Nombre | Fuente literal | Bloque | Por qué es ambigua |
|---|---|---|---:|---|
| 10.14 | GBP Creation & Website Alignment (sección separada) | `GMB Crush §26 (ambigüedad heredada)` | 3 | Fuente literalmente etiquetada como "ambigüedad heredada"; no es una de las fuentes canónicas listadas en la tabla de mapeo (no es exactamente `Doctrina GMB Crush` ni ninguna otra entrada literal). Se deja en `⚠ revisar` y NO se le asigna fase. |

### Notas auxiliares (no son ⚠ revisar; clasificadas por la regla literal)

Para trazabilidad se reportan tres outputs adicionales con disonancia entre `Fuente` literal y rol arquitectónico, pero su Fuente SÍ encaja limpiamente en la tabla de mapeo y por tanto se mantienen en la fase asignada:

- **10.3 — CMS + capabilities** · Fuente: `no aplica` → clasificado N/A por regla literal. Sentinela, no es ambigüedad.
- **16.1 — Identidad Visual y CSS Base** · Fuente: `Cliente preflight` → Fase 1 por regla literal. Disonancia con su rol de diseño técnico, pero la regla manda.
- **16.3 — Propuesta de Diseño aprobada** · Fuente: `Cliente preflight` → Fase 1 por regla literal. Igual que 16.1.
