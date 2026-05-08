# Fase 4 - Encaje (cascada determinista)

> 220 outputs producidos sin mas herramientas externas. Dado el dataset (Fase 1 + Fase 3), la doctrina dicta el output. Este documento ordena los 220 outputs en niveles de cascada segun sus dependencias declaradas en `mapa-fases.md`.

---

## TL;DR

La cascada tiene **12 niveles** (Nivel 0 a Nivel 11). El nivel 0 son outputs sin dependencias (raiz: 83 outputs, 37,7%). Cada nivel siguiente depende solo de niveles anteriores, asi puedes ejecutar nivel a nivel sin que falte un dato. Se detecto **1 grupo de ciclos forward** (ver seccion final) que se rompe declarando 5 referencias forward explicitas; el resto de la cascada es aciclica.

**Distribucion total:** 83 (L0) + 52 (L1) + 33 (L2) + 17 (L3) + 5 (L4) + 8 (L5) + 10 (L6) + 3 (L7) + 4 (L8) + 2 (L9) + 2 (L10) + 1 (L11) = 220.

---

## Nivel 0 - Raices (outputs sin `hereda_de`, o solo con dependencias externas a Fase 1/3)

**83 outputs.** Outputs que la IA produce primero. O bien tienen `hereda_de = -`, o bien sus unicas dependencias estan en Fase 1 (input cliente) y/o Fase 3 (datos: 1.5, 1.6, 1.9, 1.10c, 1.14, 3.4, 8.3, 8.4, 8.6, 14.12, 14.13, 14.14, 19.1, 19.2, 19.3) - es decir, no requieren ningun otro output Fase 4.

Bloques: B1=27, B2=20, B3=8, B4=14, B5=4, B7=10.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 1.3 | GBP Lifecycle Status | 1 | — |
| 1.7 | Main City | 1 | — |
| 1.10 | Direct LCAs (proximidad NAP) | 1 | Paso-01 1.4 (NAP Street + City) |
| 1.11 | Approved Expansion Areas | 1 | — |
| 1.12 | GeoArticles per Service (G) | 1 | — |
| 1.13 | Preferred CTA | 1 | — |
| 2.1 | Planned GBP Categories Status | 1 | Paso-01 1.5 + Paso-01 1.6 |
| 2.5 | Variable S | 1 | Paso-01 1.9 |
| 2.6 | Variable A | 1 | Paso-01 1.6 |
| 2.10 | Optional Expansion Formula | 1 | — |
| 2.11 | Validación anti-duplicación | 1 | — |
| 2.12 | Validación dependencias | 1 | — |
| 2.13 | Validación LCAs fuera fórmula | 1 | — |
| 2.14 | Validación auditabilidad del total | 1 | — |
| 3.1 | Spreadsheet Name | 1 | — |
| 3.2 | GeoHub URL Style | 1 | — |
| 3.3 | Additional Category Slugs | 1 | Paso-01 1.6 |
| 3.5 | URL Matrix completa | 1 | — |
| 3.6 | IDs por tipo de página | 1 | — |
| 3.7 | Parent Page declarado por fila | 1 | — |
| 3.8 | Schema asignado desde matriz | 1 | — |
| 3.9 | Enlaces internos Required por fila | 1 | — |
| 3.10 | Priority y Publish Phase por fila | 1 | — |
| 3.11 | Default Page Status | 1 | — |
| 3.12 | Notes estratégicas por fila | 1 | — |
| 3.13 | Validación LCAs sin filas base | 1 | — |
| 3.14 | Validación matriz cerrada antes de contenido | 1 | — |
| 4.1 | Canonical Domain | 2 | Paso-01 1.2 |
| 4.2 | Trailing Slash | 2 | — |
| 4.3 | Homepage URL | 2 | — |
| 4.4 | Service Overview URL pattern | 2 | — |
| 4.6 | Location-Based Service URL pattern | 2 | — |
| 4.7 | Additional Category URL pattern | 2 | — |
| 4.8 | GeoArticle URL pattern | 2 | — |
| 4.11 | Validación No "near me" en URLs | 2 | — |
| 4.12 | Validación No adjetivos vacíos en URLs | 2 | — |
| 4.15 | Validación No duplicar intención | 2 | — |
| 5.7 | Validación Schema por tipo de página | 2 | — |
| 5.8 | Validación Word count por intención | 2 | — |
| 6.4 | Principio 4 — Mencionar zona ≠ crear página | 2 | — |
| 6.5 | Principio 5 — No falsa ubicación | 2 | Paso-01 1.8 |
| 6.13 | Ejemplo práctico completo (sección cobertura) | 2 | — |
| 6.14 | FAQ ejemplo | 2 | — |
| 6.15 | Reviews y trust blocks contextualizados | 2 | Paso-01 1.14 |
| 6.16 | FAQs con cobertura natural | 2 | — |
| 7.1 | Regla 1 — Enlazar arriba/abajo/lateral | 2 | — |
| 7.10 | Regla 10 — Enlaces contextuales primero | 2 | — |
| 8.1 | Priority Score Formula | 3 | — |
| 8.2 | Revenue Value | 3 | Paso-01 1.9 |
| 8.12 | Validación Homepage = P1 obligatorio | 3 | — |
| 10.1 | Publishing Capacity | 3 | — |
| 10.2 | Content Team composition | 3 | — |
| 10.7 | Fase 4 — Optimization Loop | 3 | Paso-10 10.3 (intra-paso) |
| 10.11 | Reglas operativas | 3 | — |
| 10.13 | Validación Bloques 1-2 cerrados | 3 | Bloques 1+2 + Pasos 8+9 |
| 12.6 | Estructura del prompt | 4 | — |
| 12.13 | Reglas doctrinales del sistema (10 Reglas) | 4 | Documento fuente §7-§16 |
| 13.1 | Resumen ejecutivo del sistema | 4 | §3 + §20 + §21 + §22 |
| 13.2 | 12 Sistemas | 4 | §7–§18 |
| 13.3 | 7 Módulos A-G | 4 | §29–§35 |
| 13.4 | 16 Reglas operativas | 4 | §36–§51 |
| 13.5 | Workflow operativo de 21 pasos | 4 | §25 |
| 13.6 | Carpetas recomendadas del repo | 4 | §26 |
| 13.7 | Tabla inventario URL con Priority Score | 4 | §54.2 |
| 13.8 | Calendario de producción de 7 fases | 4 | §54.4 |
| 13.9 | Output final que debe producir el sistema | 4 | §28 |
| 13.10 | Relación con el Paso 14 | 4 | §27 |
| 13.11 | Checklist final del Paso 13 | 4 | §52 |
| 13.12 | Outputs del Paso 13 | 4 | §53 |
| 14.2 | Estado de verificación definido | 7 | — |
| 14.3 | NAP final aprobado | 7 | Paso-01 1.4 |
| 14.4 | Modelo de negocio definido | 7 | Paso-01 1.4 |
| 14.6 | Categorías adicionales confirmadas o descartadas | 7 | Paso-01 1.8 |
| 14.10 | Descripción GBP aprobada | 7 | Paso-15 |
| 14.11 | Plan de fotos | 7 | — |
| 14.16 | Schema update plan | 7 | Paso-17 |
| 14.17 | Homepage update plan | 7 | Paso-15 / Paso-17 |
| 14.18 | Contact page update plan | 7 | Paso-15 / Paso-17 |
| 14.20 | Lista de riesgos | 7 | — |
| 15.1 | Capas de redacción (4 capas) | 5 | — |
| 15.2 | Reglas de calidad universal (4 reglas) | 5 | — |
| 15.9 | Página de contacto redactada | 5 | Paso-01 1.4 |
| 16.4 | Design Tokens Tailwind | 5 | Paso-16 16.1 (intra-paso) |

---

## Nivel 1 - Primeras derivaciones

**52 outputs.** Outputs cuyas dependencias Fase 4 caen completamente en Nivel 0.

Bloques: B1=4, B2=31, B3=6, B4=1, B5=5, B7=5.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 2.2 | Primary Category Slug (heredado del Paso 3) | 1 | Paso-03 §4 |
| 2.3 | Main City Slug (heredado del Paso 3) | 1 | Paso-03 §4 |
| 2.4 | Service Slugs (S=5) (heredado del Paso 3) | 1 | Paso-03 §4 |
| 2.7 | Variable G | 1 | Paso-01 1.12 |
| 4.5 | Main City GeoHub URL Style | 2 | Paso-03 3.2 |
| 4.9 | LCAs no generan URLs | 2 | Paso-01 1.10 |
| 4.10 | Approved Expansion URLs | 2 | Paso-01 1.11 |
| 4.14 | Validación No falsa ubicación | 2 | Paso-01 1.8 + Paso-01 1.11 |
| 5.1 | Spec Homepage | 2 | Paso-01 1.1 + 1.4 + 1.13 + 1.14 + Paso-04 4.3 |
| 5.4 | Spec Additional Category | 2 | Paso-01 1.6 + Paso-03 3.3 + Paso-04 4.7 |
| 5.6 | Spec GeoArticle | 2 | Paso-01 1.7 + Paso-03 3.4 + Paso-04 4.8 |
| 5.9 | Validación CTA adaptado al page type | 2 | Paso-01 1.13 |
| 6.1 | Principio 1 — Main City crea arquitectura | 2 | Paso-01 1.7 |
| 6.2 | Principio 2 — LCAs enriquecen contenido | 2 | Paso-01 1.10 |
| 6.3 | Principio 3 — AEAs crean URLs solo si se aprueban | 2 | Paso-01 1.11 |
| 6.6 | Homepage Content Architecture | 2 | Paso-03 3.5 + Paso 5 |
| 6.7 | Service Overview Content Architecture | 2 | Paso-03 3.5 + Paso 5 |
| 6.8 | Location-Based Service Content Architecture | 2 | Paso-03 3.5 + Paso 5 |
| 6.9 | Additional Category Content Architecture | 2 | Paso-03 3.5 + Paso 5 |
| 6.10 | GeoHub Content Architecture | 2 | Paso-03 3.5 + Paso 5 |
| 6.11 | GeoArticle Content Architecture | 2 | Paso-03 3.5 + Paso 5 |
| 6.12 | Tabla de uso de LCAs por page type | 2 | Paso-01 1.10 |
| 6.17 | Schema `areaServed` coherente | 2 | Paso-01 1.10 + Paso 8 |
| 7.2 | Regla 2 — Homepage distribuye autoridad | 2 | Paso-03 3.5 |
| 7.3 | Regla 3 — SO empuja versión local | 2 | Paso-03 3.5 |
| 7.4 | Regla 4 — GeoHub organiza Main City | 2 | Paso-03 3.5 |
| 7.5 | Regla 5 — LBS conecta servicio y ciudad | 2 | Paso-03 3.5 |
| 7.6 | Regla 6 — AC se integra en silo local | 2 | Paso-03 3.5 |
| 7.7 | Regla 7 — GeoArticle pasa relevancia a landing | 2 | Paso-03 3.5 |
| 7.9 | Regla 9 — Anchor text variado | 2 | Paso-01 1.1 (branded) + Paso-01 1.13 (CTA) |
| 7.11 | Matriz de enlaces obligatorios por page type | 2 | Paso-03 3.5 |
| 7.12 | Ejemplo completo de enlaces para LBS modelo | 2 | Paso-03 3.5 |
| 7.13 | Breadcrumbs por page type | 2 | Paso-03 3.5 |
| 7.14 | Inbound links esperados (cross-cutting) | 2 | Paso-03 3.5 |
| 7.15 | Expansion linking separado (cross-cutting) | 2 | Paso-01 1.11 |
| 8.5 | Local Relevance | 3 | Paso-01 1.7 + 1.8 + 1.10 |
| 8.7 | Conversion Urgency | 3 | Paso-01 1.9 + 1.13 |
| 9.5 | Regla 4 — One Main City only | 3 | Paso-01 1.7 |
| 9.12 | Regla 11 — Canibalización QA | 3 | Paso-04 4.15 |
| 9.15 | GBP Not Created QA Checklist | 3 | Paso-01 1.3 + Paso-14 (forward) |
| 10.8 | Fase 5 — Optional Expansion Module | 3 | Paso-01 1.11 |
| 11.9 | Función `generate_geoarticles()` | 4 | Paso-04 4.8 + Paso-05 5.8 + Paso-03 3.4 |
| 14.5 | Categoría principal confirmada | 7 | Paso-01 1.7 |
| 14.7 | Servicios del GBP mapeados a páginas web | 7 | Paso-03 3.5 |
| 14.9 | URL UTM preparada | 7 | Paso-13 13.8 |
| 14.15 | Cola de actualización post-GBP | 7 | Paso-03 3.5 |
| 14.19 | Tracking baseline plan | 7 | Paso-13 13.8 |
| 15.10 | Validación clusters completos | 5 | Paso-01 1.9 + Paso-02 2.10 |
| 16.5 | Reglas Críticas CSS | 5 | Paso-16 16.4 (intra-paso) |
| 17.2 | Proyecto Astro 5 + Tailwind v3 + pnpm | 5 | Paso-16 16.4 |
| 18.5 | Setup Cloudflare Pages + Dominio + DNS | 5 | Paso-01 1.2 + Paso-04 4.1 |
| 19.4 | Log de decisiones de escalado | 5 | Paso-19 19.3 + Paso-13 13.7 |

---

## Nivel 2 - Derivaciones de nivel 1

**33 outputs.** Outputs cuyas dependencias Fase 4 caen en Niveles 0-1.

Bloques: B1=2, B2=6, B3=7, B4=12, B5=6.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 2.8 | Total páginas SEO base | 1 | Paso-02 2.5 + 2.6 + 2.7 (intra-paso) |
| 2.9 | Inventario por tipo de página | 1 | Paso-02 2.5 + 2.6 + 2.7 (intra-paso) |
| 4.13 | Validación Slugs limpios | 2 | Paso-02 2.2 |
| 5.2 | Spec Service Overview | 2 | Paso-01 1.9 + Paso-02 2.4 + Paso-04 4.4 |
| 5.3 | Spec Location-Based Service | 2 | Paso-01 1.9 + 1.10 + Paso-02 2.4 + Paso-04 4.6 |
| 5.5 | Spec GeoHub | 2 | Paso-01 1.7 + 1.10 + Paso-02 2.3 + Paso-04 4.5 |
| 5.10 | Validación No false location claims | 2 | Paso-01 1.8 + 1.10 + Paso-04 4.14 |
| 7.8 | Regla 8 — LCAs sin URL no reciben enlaces | 2 | Paso-01 1.10 + Paso-04 4.9 |
| 8.8 | Total Score por página | 3 | Paso-08 8.2-8.7 (intra-paso) |
| 8.13 | Validación LCAs sin score | 3 | Paso-01 1.10 + Paso-04 4.9 |
| 9.2 | Regla 1 — URL QA | 3 | Paso-04 4.3-4.8 |
| 9.6 | Regla 5 — Local Coverage QA | 3 | Paso-01 1.10 + Paso-04 4.14 |
| 9.10 | Regla 9 — Schema QA | 3 | Paso-05 5.9 + Paso-06 6.17 |
| 9.11 | Regla 10 — Enlaces internos QA | 3 | Paso-07 7.11 |
| 9.13 | Regla 12 — CTA QA | 3 | Paso-05 5.9 + Paso-01 1.13 |
| 11.2 | Función `normalize_slugs()` | 4 | Paso-02 2.2 + 2.3 + 2.4 + Paso-03 3.3 |
| 11.3 | Función `validate_categories()` | 4 | Paso-02 2.7 + 2.12 |
| 11.5 | Función `generate_service_overview()` | 4 | Paso-04 4.4 + Paso-05 5.4 |
| 11.6 | Función `generate_geohub()` | 4 | Paso-04 4.5 + Paso-05 5.7 + Paso-03 3.2 |
| 11.8 | Función `generate_additional_category()` | 4 | Paso-04 4.7 + Paso-05 5.6 + Paso-03 3.3 |
| 11.10 | Función `inject_local_coverage()` | 4 | Paso-06 6.2 + 6.12 + 6.17 |
| 11.11 | Función `generate_expansion()` | 4 | Paso-01 1.11 + Paso-04 4.10 |
| 11.12 | Función `assign_internal_links()` | 4 | Paso-07 7.9 + 7.11 |
| 11.16 | Función `output_matrices()` | 4 | Paso-03 3.5 + 3.8 + Paso-07 7.11 |
| 12.2 | Auxiliary Prompt — URL Matrix | 4 | Paso-03 3.5 + Paso-04 4.3-4.8 |
| 12.7 | Web-First GBP Rule | 4 | Paso-01 1.3 + Paso-09 9.15 |
| 12.12 | Validación prompt cumple web-first | 4 | Paso-01 1.3 + Paso-09 9.15 |
| 15.4 | Service Overview Pages redactadas | 5 | Paso-05 5.4 + Paso-06 6.7 |
| 15.6 | Additional Category Page redactada | 5 | Paso-05 5.6 + Paso-06 6.9 |
| 15.7 | GeoHub redactada | 5 | Paso-05 5.7 + Paso-06 6.10 |
| 15.8 | GeoArticles redactados | 5 | Paso-05 5.8 + Paso-06 6.11 + Paso-03 3.4 |
| 15.13 | Validación datos verificables + sin reseñas inventadas | 5 | Paso-01 1.3 + Paso-09 9.15 |
| 17.3 | 7 componentes UI parametrizados | 5 | Paso-16 16.5 |

---

## Nivel 3

**17 outputs.** Dependencias en Niveles 0-2.

Bloques: B3=6, B4=5, B5=5, B7=1.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 8.9 | Priority Tiers | 3 | Paso-08 8.8 (intra-paso) |
| 9.3 | Regla 2 — Page Type QA | 3 | Paso-05 5.3-5.8 + Paso-06 6.6-6.11 |
| 9.4 | Regla 3 — One service only | 3 | Paso-01 1.9 + Paso-05 5.5-5.8 |
| 9.7 | Regla 6 — No fake location | 3 | Paso-01 1.4 + 1.8 + Paso-04 4.14 + Paso-05 5.10 |
| 9.8 | Regla 7 — Metadata QA | 3 | Paso-05 5.3-5.8 |
| 9.9 | Regla 8 — Word count QA | 3 | Paso-05 5.10 |
| 11.1 | Función `load_inputs()` | 4 | Paso-01 + Paso-02 + Paso-03 |
| 11.4 | Función `generate_homepage()` | 4 | Paso-04 4.3 + Paso-05 5.3 |
| 11.7 | Función `generate_lbs()` | 4 | Paso-04 4.6 + Paso-05 5.5 |
| 12.3 | Auxiliary Prompt — Content Architecture | 4 | Paso-05 5.3-5.8 + Paso-06 6.6-6.11 |
| 12.9 | Inputs Validation embedded | 4 | Paso-01 1.X + Paso-02 2.X |
| 14.8 | URL de web seleccionada para el GBP | 7 | Paso-04 |
| 15.5 | Location-Based Service Pages redactadas | 5 | Paso-05 5.5 + Paso-06 6.8 + Paso-01 1.10 |
| 15.11 | Validación SO no compite con LBS | 5 | Paso-05 5.4 + 5.5 |
| 16.2 | Layout y Estructura por Sección | 5 | Paso-05 5.3-5.8 + Paso-06 6.6-6.11 |
| 17.6 | Schemas implementados y validados | 5 | Paso-05 5.9 + Paso-06 6.17 + Paso-09 9.10 |
| 19.5 | URL Matrix actualizada con Approved Expansion | 5 | Paso-19 19.4 + Paso-01 1.11 + Paso-11 11.11 |

---

## Nivel 4

**5 outputs.** Dependencias en Niveles 0-3.

Bloques: B3=2, B4=2, B5=1.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 8.10 | Publish Phase derivada | 3 | Paso-08 8.9 + Paso-02 2.10 |
| 9.14 | Final Publish Gate | 3 | Paso-09 9.2-9.13 (intra-paso) |
| 11.15 | Función `run_qa()` | 4 | Paso-09 9.2-9.8 |
| 12.5 | Auxiliary Prompt — QA | 4 | Paso-09 9.2-9.8 |
| 15.3 | Homepage redactada | 5 | Paso-05 5.3 + Paso-06 6.6 + Paso-12 12.3 |

---

## Nivel 5

**8 outputs.** Dependencias en Niveles 0-4.

Bloques: B3=6, B4=1, B5=1.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 8.11 | Validación Landing antes que GeoArticle | 3 | Paso-03 3.5 + Paso-08 8.10 |
| 8.14 | Inventario priorizado completo | 3 | Paso-03 3.5 + Paso-08 8.8-8.10 |
| 10.4 | Fase 1 — Entity Foundation | 3 | Paso-02 2.10 + Paso-08 8.10 |
| 10.5 | Fase 2 — Main City Conversion Layer | 3 | Paso-02 2.10 + Paso-08 8.10 |
| 10.6 | Fase 3 — Main City Semantic Expansion | 3 | Paso-02 2.10 + Paso-08 8.10 |
| 10.10 | Matriz de dependencias de publicación | 3 | Paso-03 3.7 + Paso-08 8.10 |
| 11.13 | Función `score_priority()` | 4 | Paso-08 8.1-8.10 |
| 16.6 | Layout-Map Definitivo | 5 | Paso-16 16.2 + Paso-15 15.3-15.9 |

---

## Nivel 6

**10 outputs.** Dependencias en Niveles 0-5.

Bloques: B3=2, B4=3, B5=5.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 9.1 | Plantilla de QA por página | 3 | Paso-08 8.14 |
| 10.9 | Calendario semanal de publicación | 3 | Paso-10 10.1 + 10.4-10.8 |
| 11.14 | Función `check_dependencies()` | 4 | Paso-08 8.11 + Paso-10 10.10 |
| 12.4 | Auxiliary Prompt — GeoArticles | 4 | Paso-03 3.4 + Paso-08 8.11 |
| 12.10 | Executive Summary template | 4 | Paso-01 1.X + Paso-02 2.X + Paso-08 8.X |
| 15.12 | Validación GA enlaza a LBS padre | 5 | Paso-07 7.7 + Paso-08 8.11 |
| 17.4 | Header + Footer + Layout wrapper | 5 | Paso-07 7.11 + Paso-16 16.6 |
| 17.5 | 28+1 páginas construidas | 5 | Paso-03 3.5 + Paso-15 15.3-15.9 + Paso-16 16.6 |
| 18.1 | Auditoría Técnica (16 criterios literales) | 5 | Paso-03 + Paso-04 4.1 + Paso-05 5.9 + Paso-07 7.11 + Paso-01 1.4 + Paso-16 |
| 18.3 | Auditoría Visual (5 criterios literales) | 5 | Paso-16 16.4 + 16.6 + Paso-15 15.7 |

---

## Nivel 7

**3 outputs.** Dependencias en Niveles 0-6.

Bloques: B3=1, B5=2.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 10.12 | Checklist pre-publicación | 3 | Paso-10 10.4-10.10 (intra-paso) |
| 17.7 | Limpieza de rastros IA | 5 | Paso-17 17.5 (intra-paso) |
| 18.2 | Auditoría de Contenido (8 criterios literales) | 5 | Paso-15 15.3-15.8 + 15.12 + Paso-01 1.4 |

---

## Nivel 8

**4 outputs.** Dependencias en Niveles 0-7.

Bloques: B4=2, B5=2.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 12.1 | Master Prompt principal | 4 | Paso-11 11.1-11.16 + Bloques 1-3 |
| 12.8 | Reglas operativas no-negociables (14 reglas) | 4 | Bloques 1-3 (todas las reglas doctrinales) |
| 17.8 | Build local pasando | 5 | Paso-17 17.2-17.7 (intra-paso) |
| 18.4 | Auditoría de Rastros IA (6 criterios literales) | 5 | Paso-17 17.7 |

---

## Nivel 9

**2 outputs.** Dependencias en Niveles 0-8.

Bloques: B4=1, B5=1.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 12.11 | Validación prompt produce 20 outputs | 4 | Paso-12 12.1-12.5 (intra-paso) |
| 18.6 | Sitio en Producción (verificación post-deploy) | 5 | Paso-18 18.1-18.5 (intra-paso) |

---

## Nivel 10

**2 outputs.** Dependencias en Niveles 0-9. Aparece 14.1 (B7) por su dep declarada en 18.6, y 18.7 (Sitemap GSC) por su dep en 18.6.

Bloques: B5=1, B7=1.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 14.1 | GBP creado o plan de creación listo | 7 | Paso-18 18.6 |
| 18.7 | Sitemap registrado en GSC | 5 | Paso-18 18.6 (intra-paso) |

---

## Nivel 11 - Output hoja absoluto

**1 outputs.** Output ultimo de la cascada: 17.1 (Acta de Lectura y Autocontraste) que declara dependencia en `Pasos 1-16 (todos los outputs upstream)`.

Bloques: B5=1.

| ID | Nombre | Bloque | Hereda de |
|---|---|---:|---|
| 17.1 | Acta de Lectura y Autocontraste | 5 | Pasos 1-16 (todos los outputs upstream) |

---

## Resumen de la cascada

| Nivel | # outputs | Bloques predominantes |
|---|---:|---|
| 0 | 83 | B1(27), B2(20), B4(14), B7(10), B3(8), B5(4) |
| 1 | 52 | B2(31), B3(6), B5(5), B7(5), B1(4), B4(1) |
| 2 | 33 | B4(12), B3(7), B2(6), B5(6), B1(2) |
| 3 | 17 | B3(6), B4(5), B5(5), B7(1) |
| 4 | 5 | B3(2), B4(2), B5(1) |
| 5 | 8 | B3(6), B4(1), B5(1) |
| 6 | 10 | B5(5), B4(3), B3(2) |
| 7 | 3 | B5(2), B3(1) |
| 8 | 4 | B4(2), B5(2) |
| 9 | 2 | B4(1), B5(1) |
| 10 | 2 | B5(1), B7(1) |
| 11 | 1 | B5(1) |
| **Total** | **220** | - |

---

## Outputs hoja (no son `hereda_de` de nadie)

Los siguientes 4 outputs no aparecen como dependencia (`hereda_de`) de ningun otro output Fase 4 - son terminales puros de la cascada:

| ID | Nombre | Nivel | Bloque |
|---|---|---:|---:|
| 19.5 | URL Matrix actualizada con Approved Expansion | 3 | 5 |
| 17.8 | Build local pasando | 8 | 5 |
| 18.7 | Sitemap registrado en GSC | 10 | 5 |
| 17.1 | Acta de Lectura y Autocontraste | 11 | 5 |

Nota: aunque la prompt original sugeria que los Pasos 17 (Build), 18 (Deploy) y 14 (GBP) son tipicamente hoja, en la red real solo 17.1, 17.8, 18.7 y 19.5 son terminales puros. El resto de outputs de Pasos 14/17/18 sirven de dependencia para algun otro output (por ejemplo 18.6 alimenta a 14.1 y 18.7; 17.5 alimenta a 17.7 y 18.4).

---

## Diagrama simplificado

```text
Fase 1 (input cliente)          Fase 3 (datos: 15 outputs)
       |                               |
       +---------------+---------------+
                       |
                       v
       Nivel 0 - 83 raices Fase 4
       (B1=27, B2=20, B3=8, B4=14, B5=4, B7=10)
                       |
                       v
       Nivel 1 - 52 derivaciones primeras
       (predomina B2 con 31 = todo Paso-06/07)
                       |
                       v
       Nivel 2 - 33 (sube B4: 12 funciones Paso-11)
                       |
                       v
       Nivel 3 - 17    Nivel 4 - 5     Nivel 5 - 8
                       |
                       v
       Nivel 6-9: B5 (Paso-15/17/18) y B4 (Paso-12) dominantes
                       |
                       v
       Nivel 10 - 14.1 + 18.7
                       |
                       v
       Nivel 11 - 17.1 (Acta de Lectura: cierra todo)
```

---

## Algoritmo de ejecucion para la IA

```
para cada nivel L de 0 a 11:
    para cada output O en nivel L:
        cargar valores de hereda_de[O] (todos estan ya en outputs.json:
            - inputs Fase 1/3 si los hay
            - outputs Fase 4 ya producidos en niveles 0..L-1)
        aplicar regla doctrinal del paso correspondiente (DOCTRINA/pasos/XXa-*.md S6)
        producir value de O
        escribir en outputs.json con status confirmed
        si la regla doctrinal requiere un dato no disponible:
            marcar warning inferido o warning placeholder
```

---

## Como afecta un cambio en el dataset

Si cambia un output Fase 1 o Fase 3 (cliente cierra un warning pendiente), solo hay que re-ejecutar los outputs Fase 4 que lo tengan en su cadena de `hereda_de` transitiva.

```
Ejemplo: cliente cierra 1.5 (Planned Primary GBP Category) que estaba como warning inferido.
-> Re-ejecutar todos los outputs Fase 4 con 1.5 en su hereda_de transitivo:
   - 2.1 (depende de 1.5 + 1.6) [Nivel 0]
   - 8.4 (Fase 3, depende de 1.5 + 1.6) [si era warning]
   - todo lo aguas abajo de 2.1 si su valor cambia
-> NO hay que re-ejecutar Fase 1 o Fase 3 que no dependan de 1.5.
-> NO hay que re-ejecutar outputs Fase 4 sin 1.5 en su cadena (la mayoria del Bloque 6/7/13).
```

---

## Ciclos detectados y como se rompen

La toposort directa sobre las dependencias literales del `mapa-fases.md` produce un **ciclo unico** en el cluster `{9.15, 12.1, 12.7, 12.8, 12.11, 12.12, 14.10, 14.16, 14.17, 14.18, 15.13, 17.1}`. Origen: 5 referencias forward explicitas (anotadas como `(forward)` o referencias entre Bloque 7 - Paso-14 - y Bloques 5 - Pasos 15 a 17 - posteriores).

Para romper el ciclo, estas 5 aristas se declaran como **forward refs intencionales** (no aristas de cascada):

| Output | Forward ref ignorada | Justificacion en mapa-fases.md |
|---|---|---|
| 9.15 | -> Paso-14 | El propio mapa lo anota literalmente como `Paso-14 (forward)`. |
| 14.10 | -> Paso-15 | Bloque 7 (GBP post-launch) referenciando Bloque 5 posterior. |
| 14.16 | -> Paso-17 | Igual: B7 -> B5 forward. |
| 14.17 | -> Paso-15 / Paso-17 | Igual. |
| 14.18 | -> Paso-15 / Paso-17 | Igual. |

Tras estas 5 roturas la cascada es aciclica con 12 niveles. Operacionalmente: los outputs B7 (Paso-14 - GBP) se planifican antes de Paso-15/17 pero se *materializan* despues, en la fase post-lanzamiento; la web (B5: Pasos 15-19) se construye y despliega primero por la doctrina web-first.
