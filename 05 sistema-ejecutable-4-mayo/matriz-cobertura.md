# Matriz de cobertura — refactor v1 → v2

> **Auditoría:** los 47 archivos markdown del sistema GMB Crush v1 (3 convenciones + 10 fuentes + 1 README + 1 preflight + 6 planes-ejecución + 19 a-docs + 5 consolidados Bloques 1-5 + 1 consolidado Bloque 7 + 1 agregador Bloque 6) mapeados a los 4 destinos del v2 (`doctrina/`, `plantilla-cluster/`, `scripts/`, `_ejemplos/`).
>
> **Cifras esperadas:** 242 outputs (5 marcados `no aplica`) · 6 page types · 12 reglas QA · 7 reglas de fidelidad · 14 reglas operativas (§22-§34 original) · 10 reglas doctrinales (§7-§16 original) · 16 reglas operativas (§36-§51 original) · 8 fuentes válidas.

---

## Sección 1: Reglas doctrinales

| # | Regla / Concepto | Origen v1 (archivo + sección) | Destino v2 |
|---|---|---|---|
| 1 | Filosofía web-first: web primero (Bloques 1-5), Bloque 6 cierra ⚠, GBP después (Bloque 7) | 00convenciones.md §2 Reglas 3+4 + 01flujo-ejecucion.md TL;DR + README.md | doctrina/reglas-operativas.md |
| 2 | Fórmula maestra: `1 + S + 1 + S + A + G×S` (HP + S SO + 1 GH + S LBS + A AC + G×S GAs) | 02a-formula-maestra-arquitectura.md §6 + bloque-1-consolidado.md fila 2.8 | doctrina/reglas-operativas.md + scripts/calculate-urls.ts |
| 3 | G default = 3 (GeoArticles per Service) | 01-doctrina-gmb-crush.md §1.12 + 01a §6.12 + 02fuentes-y-outputs.md tabla Paso 1 | doctrina/reglas-operativas.md + plantilla-cluster/src/data/cliente.json |
| 4 | S default = 5 (servicios principales / core services) | 01a-intake-form.md §6.9 + 02fuentes-y-outputs.md Paso 1.9 | doctrina/reglas-operativas.md |
| 5 | E default = 0 (Approved Expansion Areas en Phase 1) | 01a §6.11 + 02a §8 fila 2.10 | doctrina/reglas-operativas.md |
| 6 | A se calcula desde Additional Categories que necesitan página propia | 02a §6.6 + 02fuentes-y-outputs.md Paso 2.6 | scripts/calculate-urls.ts |
| 7 | Variable Total = `1 + S + 1 + S + A + G×S` ejemplo Cerrajeros: 1+5+1+5+1+15=28 | 02a §8 fila 2.8 | scripts/calculate-urls.ts (con tests) |
| 8 | Homepage URL = `/` (raíz, constante doctrinal) | 04a §6.3 + 01-doctrina-gmb-crush.md §4.3 | doctrina/url-patterns.md + plantilla-cluster/src/pages/index.astro |
| 9 | Service Overview pattern = `/[primary-cat-slug]/[service-slug]/` | 04a §6.4 + 01-doctrina-gmb-crush.md §4.4 | doctrina/url-patterns.md + scripts/generate-pages.ts |
| 10 | LBS pattern = `/[primary-cat-slug]/[main-city-slug]/[service-slug]/` | 04a §6.6 + 01-doctrina-gmb-crush.md §4.6 | doctrina/url-patterns.md + scripts/generate-pages.ts |
| 11 | Additional Category pattern = `/[primary-cat-slug]/[main-city-slug]/[additional-slug]/` | 04a §6.7 + 01-doctrina-gmb-crush.md §4.7 | doctrina/url-patterns.md + scripts/generate-pages.ts |
| 12 | GeoArticle pattern = `/[main-city-slug]/[topic-slug]/` | 04a §6.8 + 01-doctrina-gmb-crush.md §4.8 | doctrina/url-patterns.md + scripts/generate-pages.ts |
| 13 | GeoHub URL Style: Option A `/[main-city]/` (default) o Option B `/[primary-cat]/[main-city]/` | 03a §6.2 + 03-arquitectura-tecnica.md §3.2 | doctrina/url-patterns.md |
| 14 | LCAs no generan URLs (viven en contenido y `areaServed` schema) | 04a §6.9 + 01-doctrina-gmb-crush.md §4.9 | doctrina/reglas-operativas.md + scripts/qa-check.ts |
| 15 | URL Blacklist: `near-me` y variantes prohibidas | 04a §6.11 + 01-doctrina-gmb-crush.md §4.11 | doctrina/url-patterns.md + scripts/qa-check.ts |
| 16 | URL Blacklist: adjetivos vacíos (best, cheap, top-rated, professional) | 04a §6.12 + 01-doctrina-gmb-crush.md §4.12 | doctrina/url-patterns.md + scripts/qa-check.ts |
| 17 | Slugs limpios: lowercase, sin acentos, kebab-case | 04a §6.13 | doctrina/url-patterns.md + scripts/slugify.ts |
| 18 | Trailing Slash: default Yes (todas las URLs terminan en `/`) | 04a §6.2 + 03-arquitectura-tecnica.md §4.2 | doctrina/url-patterns.md + plantilla-cluster/astro.config.mjs |
| 19 | Canonical Domain: HTTPS + www + trailing slash | 01a §6.2 + 04a §6.1 | doctrina/reglas-operativas.md |
| 20 | NAP en 8 campos (Name, Street, City, State, ZIP, Country, Phone, Email) | 01a §6.4 + 02-cliente-preflight.md 1.4 | doctrina/reglas-operativas.md + clientes/[slug]/preflight.md |
| 21 | NAP debe ser visible, consistente y rastreable en todo el cluster | 01a §6.4 (Regla final) | doctrina/reglas-operativas.md + scripts/qa-check.ts (regla 6) |
| 22 | GBP Lifecycle Status: 5 estados válidos (Not Created / Created / Verified / Pending / Suspended) | 01a §6.3 + 02-cliente-preflight.md 1.3 | doctrina/reglas-operativas.md |
| 23 | Modelo de negocio: 3 valores (Storefront / Service Area Business / Hybrid) | 14a §9 + 02-cliente-preflight.md 14.4 | doctrina/reglas-operativas.md |
| 24 | Preferred CTA: 4 opciones (Llamar ahora / Reservar online / Solicitar presupuesto / Contactar) | 01a §6.13 + 05-doctrina-local-pack.md 1.13 | doctrina/reglas-operativas.md |
| 25 | Direct LCAs = barrio/distrito del NAP; Candidate LCAs = zonas en ≥2 competidores top | 01a §6.10 + 05-doctrina-local-pack.md 1.10 | doctrina/reglas-operativas.md |
| 26 | Trust Signal estándar = presente en 3+ perfiles top 5 (threshold doctrinal) | 01a §6.14 + 05-doctrina-local-pack.md 1.14 | doctrina/reglas-operativas.md |
| 27 | Schema mapping doctrinal: HP→Organization+WebSite+LocalBusiness; SO→Service+WebPage+BreadcrumbList; LBS→LocalBusiness+BreadcrumbList; AC→Service(areaServed); GH→CollectionPage+BreadcrumbList; GA→Article+FAQPage+BreadcrumbList | 05a §6.1-§6.6 (sub-output 8 Schema) + 03a §8 fila 3.8 | doctrina/page-types.md + plantilla-cluster/src/schemas/*.ts |
| 28 | Word count por page type: HP 900-1,300; SO 850-1,000; LBS 800-1,000; AC 800-1,000; GH 700-1,100; GA 1,000-1,500 | 05a §6.8 (5.8 Validación Word count) | doctrina/page-types.md + scripts/qa-check.ts (test 8) |
| 29 | Page Type bloques estructurales: HP=11; SO=11; LBS=12; AC=11; GH=10; GA=10 | bloque-2-consolidado.md filas 6.6-6.11 | doctrina/page-types.md |
| 30 | Priority Score Formula: `R + I + G + L + C + U` con peso 1, rango 6-30 | 08a §6.1 + 01-doctrina-gmb-crush.md §8.1 | doctrina/reglas-operativas.md + scripts/score-priority.ts |
| 31 | Priority Tiers mapping: 26-30=P1; 21-25=P2; 16-20=P3; 10-15=P4; 6-9=Hold | 08a §6.9 + 02fuentes-y-outputs.md Paso 8.9 | scripts/score-priority.ts |
| 32 | Page Type Priority/Phase mapping: HP→P1+Phase1; LBS→P1+Phase1; SO→P2+Phase2; GH→P2+Phase2; GAs→P3-P4+Phase3-4 | 03a §6.10 + bloque-3-consolidado.md fila 8.10 | doctrina/page-types.md + scripts/score-priority.ts |
| 33 | Homepage = P1 obligatorio (constante doctrinal) | 08a §6.12 + 01-doctrina-gmb-crush.md §8.12 | scripts/score-priority.ts (forzar HP=P1) |
| 34 | Escala de scores 1-5 para los 6 factores (Revenue/Intent/GBP/Local/Competition/Urgency) | 08a §6.2-§6.7 | scripts/score-priority.ts (con criterios por factor) |
| 35 | Web-First GBP Rule: web LIVE primero, GBP después; sin sameAs / reseñas / GBP URL hasta Paso 14 | 12a §6.7 + 01a §6.3 (Regla final) | doctrina/reglas-operativas.md + scripts/qa-check.ts (test 15) |
| 36 | Producción en 5 fases: F1 Entity Foundation (HP+SO+GH); F2 Conversion Layer (LBS+AC); F3 Semantic Expansion (GAs); F4 Optimization Loop; F5 Optional Expansion | 10a §6.4-§6.8 | doctrina/reglas-operativas.md + scripts/deploy.ts |
| 37 | Calendario doctrinal de 7 fases × semanas (§54.4 original) | 13a §8 fila 13.8 + 10a §6.9 | doctrina/reglas-operativas.md (referencia) |
| 38 | Stack canónico: Astro 5 + Tailwind v3 + pnpm + Cloudflare Pages | 17a §8 fila 17.2 + 03-arquitectura-tecnica.md §17.2 | plantilla-cluster/package.json + plantilla-cluster/astro.config.mjs |
| 39 | 7 componentes UI: Button + Card + Badge + Hero + Testimonial + FAQ + ContactForm | 17a §8 fila 17.3 | plantilla-cluster/src/components/ |
| 40 | Capas de redacción: 4 capas (Estructura / Zonas / Argumentos / Entidades) | 15a §6.1 + 01-doctrina-gmb-crush.md §15.1 | doctrina/redaccion.md |
| 41 | Reglas calidad universal: 4 reglas (Hero+CTA / Problema / Datos / Local) | 15a §6.2 + 01-doctrina-gmb-crush.md §15.2 | doctrina/redaccion.md + scripts/qa-check.ts |
| 42 | Limpieza rastros IA: 5 áreas (README/src/meta/package/commits) + grep | 17a §6.7 + 01-doctrina-gmb-crush.md §17.7 | scripts/qa-check.ts (auditoría rastros) |
| 43 | QA Auditorías Paso 18: 16 técnicos + 8 contenido + 5 visual + 6 rastros = 35 criterios literales | 18a §8 + 02fuentes-y-outputs.md Paso 18 | scripts/qa-check.ts (suite completa) |
| 44 | 3 elementos vigilancia post-launch: Flujo GA→Location, Autoridad GeoHub, Conversión LBS | 19a §6.1 | doctrina/reglas-operativas.md |
| 45 | 3 triggers de escalado con regla 2-de-3: Location ya responde / GeoArticles traen tráfico / Señal en SERP | 19a §6.2 + 01-doctrina-gmb-crush.md §19 | doctrina/reglas-operativas.md |
| 46 | Indicadores numéricos triggers escalado: >100/mes impresiones, >50/mes clicks GA, posición <30, etc. | 19a §6.2 (literal del original) | doctrina/reglas-operativas.md |
| 47 | Auxiliary Prompts (4): URL Matrix / Content Architecture / GeoArticles / QA — son los que se ejecutan en Paso 15 | 12a §6.2-§6.5 (12.1 documental, no se ejecuta) | doctrina/prompts.md (auxiliares) |
| 48 | 14 reglas operativas (§22-§34 original) + 10 reglas doctrinales (§7-§16 original) + 16 reglas operativas (§36-§51 original) = compilados literales | 12a §6.8 + 12a §6.13 + 13a §6.4 | doctrina/reglas-literales.md |
| 49 | Anchor text variado: 6 categorías (branded / exact / partial / topic / generic / CTA) — original lista 5 | 07a §6.9 + Convenciones §3 (caso 2.3 6ª categoría inventada) | doctrina/linking.md (5 categorías originales, no 6) |
| 50 | Cada URL del cluster tiene enlaces en 3 direcciones (arriba/abajo/lateral) | 07a §6.1 + 01-doctrina-gmb-crush.md §7.1 | doctrina/linking.md + scripts/qa-check.ts (test 11) |
| 51 | Inbound links mínimos esperados: 0 páginas huérfanas | 07a §6.14 | scripts/qa-check.ts |
| 52 | Default Page Status = `Planned` (constante doctrinal) | 03a §6.11 + 01-doctrina-gmb-crush.md §3.11 | scripts/new-cliente.ts |
| 53 | Patrón GBP descripción: brand + primary category + main city + core services + CTA | 14a §9.10 + 05-doctrina-local-pack.md 14.10 | doctrina/reglas-operativas.md (Paso 14) |
| 54 | Plan de fotos GBP por tipo: logo, cover, exterior, interior, team, vehicle, work examples, local context (clasificación según modelo de negocio) | 14a §9.11 + 02-cliente-preflight.md 14.11 | doctrina/reglas-operativas.md (Paso 14) |
| 55 | Pseudocódigo: 16 funciones canónicas (load_inputs, normalize_slugs, validate_categories, generate_*, inject_local_coverage, generate_expansion, assign_internal_links, score_priority, check_dependencies, run_qa, output_matrices) | 11a §6 (16 sub-secciones) | scripts/* (mapeo 1:1 a archivos) |
| 56 | Threshold del Local Pack: top 5 perfiles de Google Maps en clean session | 05-doctrina-local-pack.md "Cómo ejecutar" + 01a §6.5 | doctrina/fuentes-tools-externas.md |
| 57 | El sistema NO ejecuta el Master Prompt 12.1 (documental); flujo real ejecuta Auxiliary Prompts en Paso 15 | 12a nota inicial + 02fuentes-y-outputs.md Paso 12.1 | doctrina/prompts.md (clarificación) |
| 58 | Paso 9 actúa como gate doctrinal — bloquea Paso 10 y 18 si Final Publish Gate falla | 09a §6.14 + bloque-3-consolidado.md "Bloqueo de publicación" | scripts/qa-check.ts (gate consolidado) |
| 59 | Producir ≠ Aplicar: slug se DECIDE en Paso 3 intake, se APLICA en Pasos 2/4/5 (Convenciones §3 Regla 1) | 00convenciones.md §3 Regla 1 | doctrina/fidelidad-original.md |
| 60 | Las 5 categorías QA agrupadas (Estructural/Local/Contenido/Conexión/Semántico) eran invento; original tiene 12 reglas QA literales sin categorización | bloque-3-consolidado.md "Nota de fidelidad" | doctrina/fidelidad-original.md (warning) |
| 61 | "29 filas/580 celdas/S_efectiva/FAQPage en HP/Local entity 6ª categoría/Distribución %15-25-10" eran invenciones | 00convenciones.md §3 Regla 2.3 + Regla 7 | doctrina/fidelidad-original.md |
| 62 | Schema Homepage solo lleva `Organization + WebSite + LocalBusiness` (no añadir FAQPage + Speakable inventados) | 00convenciones.md §3 Regla 2.4 + 05a §6.1 sub-output 8 | doctrina/page-types.md (Homepage) |
| 63 | IDs page type formato `SO-001` (no `SO-1`) según original §16 | 00convenciones.md §3 Regla 2.4 + 03a §6.6 | doctrina/page-types.md (convención IDs) |
| 64 | Errata literal del original: "Target long-tail llaveword" — NO se arregla a "keyword" | 00convenciones.md §3 Regla 2.6 | doctrina/fidelidad-original.md |
| 65 | Original tiene `areaServed: 4 LCAs ejemplo` — NO resolver silenciosamente a "TODAS las 10 LCAs" | 00convenciones.md §3 Regla 2.6 | doctrina/fidelidad-original.md |
| 66 | NAP físico: el original solo dice "Madrid"; operador autoriza enriquecer con dirección completa (commit 2ba4013) | 00convenciones.md §3 Regla 2.7 + 02fuentes-y-outputs.md Divergencias | doctrina/fidelidad-original.md (excepción documentada) |
| 67 | Workflow operativo de 21 pasos del original §25 — referencia documental, no flujo actual | 13a §8 fila 13.5 | doctrina/reglas-literales.md (referencia) |
| 68 | Carpetas recomendadas del repo §26 original (`docs/01-... 13-...`) — referencia, no estructura real | 13a §8 fila 13.6 | doctrina/reglas-literales.md (referencia) |
| 69 | Sectorización de servicios urgentes vs programables vs B2B para CTA (Llamar/Reservar/Presupuesto/Contactar) | 05-doctrina-local-pack.md 1.13 + 01a §6.13 | doctrina/reglas-operativas.md |

---

## Sección 2: Catálogo de fuentes

| # | Fuente | Origen v1 | Destino v2 |
|---|---|---|---|
| 1 | `Doctrina GMB Crush` (44 outputs: 37 puros + 6 herencia + 1 con preflight) | 00-fuentes-en-uso.md §1 + 01-doctrina-gmb-crush.md | doctrina/fuentes.md (sección 1) |
| 2 | `Arquitectura técnica` (4 outputs: 3.2, 4.2, 17.2, 18.5) — stack Astro 5 + Tailwind v3 + pnpm + Cloudflare | 00-fuentes-en-uso.md §2 + 03-arquitectura-tecnica.md | doctrina/fuentes.md (sección 2) + plantilla-cluster/* |
| 3 | `Tracking` (4 outputs: 1.11, 14.9, 14.19, 19.1) — GSC + GA4 + Rank Tracker + Geo Grid + UTM | 00-fuentes-en-uso.md §3 + 04-tracking.md | doctrina/fuentes.md (sección 3) |
| 4 | `Cliente preflight` (10 outputs: 4 directos preflight + 6 reasignados) | 00-fuentes-en-uso.md §4 + 02-cliente-preflight.md | doctrina/fuentes.md (sección 4) + clientes/[slug]/preflight.md |
| 5 | `Cliente preflight + Doctrina GMB Crush` (5 outputs: 1.3 + 14.1, 14.2, 14.4, 14.11) | 00-fuentes-en-uso.md §5 + 02-cliente-preflight.md "Outputs reasignados" | doctrina/fuentes.md (sección 5) |
| 6 | `Doctrina + Local Pack` (13 outputs: 9 con criterio + 3 sin criterio + 1 mixto) | 00-fuentes-en-uso.md §6 + 05-doctrina-local-pack.md | doctrina/fuentes-tools-externas.md (Local Pack) |
| 7 | `Doctrina + Keyword Research` (4 outputs: 3.4 con criterio + 8.3, 8.6, 14.13 sin) | 00-fuentes-en-uso.md §7 + 06-doctrina-keyword-research.md | doctrina/fuentes-tools-externas.md (KR) |
| 8 | `Doctrina + Google Search` (1 output: 8.2 sin criterio) | 00-fuentes-en-uso.md §8 + 08-doctrina-google-search.md | doctrina/fuentes-tools-externas.md (GS) |
| 9 | Notación `← X.Y` `Info heredada` (161 outputs) — no es fuente, es trazabilidad | 00-fuentes-en-uso.md "Notación especial" + 09-info-heredada.md | doctrina/fuentes.md (sección herencia) + scripts/* (lookup) |
| 10 | Outputs `no aplica` (5 conceptuales): 3.12, 10.3, 15.13, 16.3, 17.1 | 00-fuentes-en-uso.md "Outputs no aplica" + 02fuentes-y-outputs.md | doctrina/no-aplica.md (con razón documentada) |

---

## Sección 3: Outputs por bloque (los 242 outputs)

### Bloque 0 — Preflight (8 inputs)

| Output ID | Nombre | Fuente | Origen v1 | Destino v2 |
|---|---|---|---|---|
| Pre.1 | Nombre del negocio | Cliente preflight | 00preflight.md §1 + 02-cliente-preflight.md Input 1 | clientes/[slug]/preflight.md (campo `name`) + plantilla-cluster/src/data/cliente.json |
| Pre.2 | Qué hace (descripción corta) | Cliente preflight | 00preflight.md §2 + Input 2 | clientes/[slug]/preflight.md |
| Pre.3 | Dirección con CP | Cliente preflight | 00preflight.md §3 + Input 3 | clientes/[slug]/preflight.md (parseable a NAP) |
| Pre.4 | Estado del GBP (5 valores) | Cliente preflight | 00preflight.md §4 + Input 4 | clientes/[slug]/preflight.md |
| Pre.5 | Ciudades para análisis Local Pack | Cliente preflight | 00preflight.md §5 + Input 5 | clientes/[slug]/preflight.md |
| Pre.6 | Token de GitHub | Cliente preflight | 00preflight.md §6 + Input 6 | env var GITHUB_TOKEN (NO en repo) |
| Pre.7 | ID account de Cloudflare | Cliente preflight | 00preflight.md §7 + Input 7 | env var CLOUDFLARE_ACCOUNT_ID |
| Pre.8 | Token de Cloudflare | Cliente preflight | 00preflight.md §8 + Input 8 | env var CLOUDFLARE_API_TOKEN |

### Bloque 1 — Fundamentos (42 outputs)

| Output ID | Nombre | Fuente | Origen v1 | Destino v2 |
|---|---|---|---|---|
| 1.1 | Business Name | Cliente preflight (Info heredada) | 01a §6.1 + 01-todos-los-outputs.md | clientes/[slug]/preflight.md + plantilla-cluster/src/data/cliente.json |
| 1.2 | Website URL / Canonical Domain (HTTPS+www+trailing) | Cliente preflight | 01a §6.2 | clientes/[slug]/preflight.md + plantilla-cluster/src/data/cliente.json |
| 1.3 | GBP Lifecycle Status (4 campos) | Cliente preflight + Doctrina GMB Crush | 01a §6.3 | clientes/[slug]/preflight.md |
| 1.4 | Full NAP (8 campos) | Cliente preflight | 01a §6.4 + 02-cliente-preflight.md 1.4 | clientes/[slug]/preflight.md (8 sub-campos) + plantilla-cluster/src/schemas/local-business.ts |
| 1.5 | Planned Primary GBP Category | Doctrina + Local Pack | 01a §6.5 + 05-doctrina-local-pack.md 1.5 | clientes/[slug]/preflight.md (post-LP) |
| 1.6 | Planned Additional GBP Categories (clasificadas) | Doctrina + Local Pack | 01a §6.6 + 05-doctrina-local-pack.md 1.6 | clientes/[slug]/preflight.md |
| 1.7 | Main City | Info heredada (← 1.4 City) | 01a §6.7 | derivado en plantilla-cluster/src/data/cliente.json |
| 1.8 | Physical Location City | Info heredada (← Bloque 0 Input 3) | 01a §6.8 | derivado |
| 1.9 | Servicios principales (S=5) | Doctrina + Local Pack | 01a §6.9 + 05-doctrina-local-pack.md 1.9 | clientes/[slug]/preflight.md (lista de 5) |
| 1.10 | Direct + Candidate LCAs | Doctrina + Local Pack | 01a §6.10 + 05-doctrina-local-pack.md 1.10 | clientes/[slug]/preflight.md (Direct: array, Candidate: array) |
| 1.11 | Approved Expansion Areas (default vacío Phase 1) | Tracking | 01a §6.11 + 04-tracking.md 1.11 | clientes/[slug]/preflight.md (default `[]`) |
| 1.12 | GeoArticles per Service (G=3) | Doctrina GMB Crush | 01a §6.12 + 01-doctrina-gmb-crush.md §1.12 | doctrina/reglas-operativas.md (constante) |
| 1.13 | Preferred CTA (4 opciones) | Doctrina + Local Pack | 01a §6.13 + 05-doctrina-local-pack.md 1.13 | clientes/[slug]/preflight.md |
| 1.14 | Trust Signals (4-7 señales) | Doctrina + Local Pack | 01a §6.14 + 05-doctrina-local-pack.md 1.14 | clientes/[slug]/preflight.md |
| 2.1 | Planned GBP Categories Status | Info heredada (← 1.5+1.6) | 02a §8 + 02fuentes-y-outputs.md | derivado scripts/* |
| 2.2 | Primary Category Slug | Info heredada (← Paso-03 §4) | 02a §8 + Convenciones §3 Regla 2.2 | scripts/slugify.ts (aplicado a 1.5) |
| 2.3 | Main City Slug | Info heredada (← Paso-03 §4) | 02a §8 | scripts/slugify.ts |
| 2.4 | Service Slugs (S slugs) | Info heredada (← Paso-03 §4) | 02a §8 | scripts/slugify.ts |
| 2.5 | Variable S (count core services) | Info heredada (← 1.9) | 02a §8 fila 2.5 | scripts/calculate-urls.ts |
| 2.6 | Variable A (count Additional con página) | Info heredada (← 1.6) | 02a §8 fila 2.6 | scripts/calculate-urls.ts |
| 2.7 | Variable G (= 1.12) | Info heredada (← 1.12) | 02a §8 fila 2.7 | scripts/calculate-urls.ts |
| 2.8 | Total páginas SEO base = 1+S+1+S+A+G×S | Info heredada (← 2.5+2.6+2.7) | 02a §8 fila 2.8 | scripts/calculate-urls.ts (función principal) |
| 2.9 | Inventario por tipo de página (HP/SO/GH/LBS/AC/GA) | Info heredada | 02a §8 fila 2.9 | scripts/calculate-urls.ts |
| 2.10 | Optional Expansion Formula (E=0 inactiva) | Info heredada (← 1.11) | 02a §8 fila 2.10 | scripts/calculate-urls.ts |
| 2.11 | Validación anti-duplicación (Additional vs core) | Info heredada | 02a §8 fila 2.11 | scripts/qa-check.ts |
| 2.12 | Validación dependencias (HP→SO→GH→LBS→AC→GAs) | Info heredada | 02a §8 fila 2.12 | scripts/qa-check.ts |
| 2.13 | Validación LCAs fuera fórmula (0 URLs LCA) | Info heredada (← 1.10) | 02a §8 fila 2.13 | scripts/qa-check.ts |
| 2.14 | Validación auditabilidad del total | Info heredada | 02a §8 fila 2.14 | scripts/qa-check.ts |
| 3.1 | Spreadsheet Name (`[Cliente] – GMB Crush Website Architecture`) | Info heredada (← 1.1) | 03a §8 fila 3.1 | descartar (no aplica al stack v2) |
| 3.2 | GeoHub URL Style (Option A/B) | Arquitectura técnica | 03a §6.2 + 03-arquitectura-tecnica.md §3.2 | clientes/[slug]/preflight.md (decisión operador) |
| 3.3 | Additional Category Slugs | Info heredada (← 1.6) | 03a §8 fila 3.3 | scripts/slugify.ts |
| 3.4 | GeoArticle Topics propuestos (G×S topics) | Doctrina + Keyword research | 03a §6.4 + 06-doctrina-keyword-research.md 3.4 | clientes/[slug]/topics.md (post-KR) |
| 3.5 | URL Matrix completa (N filas × 20 cols) | Info heredada | 03a §6.5 + 02a §8 | scripts/generate-pages.ts (matriz) |
| 3.6 | IDs por tipo de página (HP-001, SO-001..S, etc.) | Info heredada | 03a §6.6 | scripts/generate-pages.ts |
| 3.7 | Parent Page declarado por fila | ← 3.5 + Doctrina GMB Crush | 03a §8 fila 3.7 | scripts/generate-pages.ts |
| 3.8 | Schema asignado desde matriz | ← 3.5 + Doctrina GMB Crush | 03a §8 fila 3.8 | plantilla-cluster/src/schemas/* |
| 3.9 | Enlaces internos Required por fila | ← 3.5 + Doctrina GMB Crush | 03a §8 fila 3.9 | doctrina/linking.md + scripts/* |
| 3.10 | Priority y Publish Phase por fila | ← 3.5 + Doctrina GMB Crush | 03a §8 fila 3.10 | scripts/score-priority.ts |
| 3.11 | Default Page Status = `Planned` | Doctrina GMB Crush | 03a §8 fila 3.11 | scripts/new-cliente.ts |
| 3.12 | Notes estratégicas por fila | **no aplica** | 03a §8 fila 3.12 + 02fuentes-y-outputs.md | descartar |
| 3.13 | Validación LCAs sin filas base | Info heredada | 03a §8 fila 3.13 | scripts/qa-check.ts |
| 3.14 | Validación matriz cerrada antes de contenido | Info heredada | 03a §8 fila 3.14 | scripts/qa-check.ts |

### Bloque 2 — Arquitectura (57 outputs)

| Output ID | Nombre | Fuente | Origen v1 | Destino v2 |
|---|---|---|---|---|
| 4.1 | Canonical Domain (HTTPS+www+trailing) | Info heredada (← 1.2) | 04a §8 fila 4.1 | plantilla-cluster/astro.config.mjs |
| 4.2 | Trailing Slash (default Yes) | Arquitectura técnica | 04a §8 fila 4.2 + 03-arquitectura-tecnica.md §4.2 | plantilla-cluster/astro.config.mjs |
| 4.3 | Homepage URL = `/` | Doctrina GMB Crush | 04a §8 fila 4.3 + 01-doctrina-gmb-crush.md §4.3 | plantilla-cluster/src/pages/index.astro |
| 4.4 | SO URL pattern `/[primary-cat-slug]/[service-slug]/` | Doctrina GMB Crush | 04a §8 fila 4.4 | doctrina/url-patterns.md + scripts/generate-pages.ts |
| 4.5 | Main City GeoHub URL Style | Info heredada (← 3.2) | 04a §8 fila 4.5 | scripts/generate-pages.ts |
| 4.6 | LBS URL pattern `/[primary-cat-slug]/[main-city-slug]/[service-slug]/` | Doctrina GMB Crush | 04a §8 fila 4.6 | doctrina/url-patterns.md + scripts/generate-pages.ts |
| 4.7 | AC URL pattern `/[primary-cat-slug]/[main-city-slug]/[additional-slug]/` | Doctrina GMB Crush | 04a §8 fila 4.7 | doctrina/url-patterns.md + scripts/generate-pages.ts |
| 4.8 | GA URL pattern `/[main-city-slug]/[topic-slug]/` | Doctrina GMB Crush | 04a §8 fila 4.8 | doctrina/url-patterns.md + scripts/generate-pages.ts |
| 4.9 | LCAs no generan URLs | ← 1.10 + Doctrina GMB Crush | 04a §8 fila 4.9 | scripts/qa-check.ts |
| 4.10 | Approved Expansion URLs (vacío Phase 1) | Info heredada (← 1.11) | 04a §8 fila 4.10 | scripts/generate-pages.ts (condicional) |
| 4.11 | Validación No "near me" | Doctrina GMB Crush | 04a §8 fila 4.11 | scripts/qa-check.ts (test 1) |
| 4.12 | Validación No adjetivos vacíos | Doctrina GMB Crush | 04a §8 fila 4.12 | scripts/qa-check.ts (test 1) |
| 4.13 | Validación Slugs limpios | Info heredada (← 2.2) | 04a §8 fila 4.13 | scripts/qa-check.ts |
| 4.14 | Validación No falsa ubicación | Info heredada | 04a §8 fila 4.14 | scripts/qa-check.ts (test 6) |
| 4.15 | Validación No duplicar intención | Doctrina GMB Crush | 04a §8 fila 4.15 | scripts/qa-check.ts (test 11 canibalización) |
| 5.1 | Spec Homepage (Root Entity Anchor) — 12 sub-outputs | ← 1.1+1.4+1.13+1.14+4.3 + Doctrina | 05a §6.1 + bloque-2-consolidado.md fila 5.1 | doctrina/page-types.md + plantilla-cluster/src/pages/index.astro |
| 5.2 | Spec Service Overview (Topical Authority Pillar) | ← 1.9+2.4+4.4 + Doctrina | 05a §6.2 | doctrina/page-types.md + plantilla-cluster/src/pages/[primary]/[service].astro |
| 5.3 | Spec LBS (Main City Converter) | ← 1.9+1.10+2.4+4.6 + Doctrina | 05a §6.3 | doctrina/page-types.md + plantilla-cluster/src/pages/[primary]/[city]/[service].astro |
| 5.4 | Spec Additional Category (GBP AC Support) | ← 1.6+3.3+4.7 + Doctrina | 05a §6.4 | doctrina/page-types.md + plantilla-cluster/src/pages/[primary]/[city]/[additional].astro |
| 5.5 | Spec GeoHub (Main City Silo Container) | ← 1.7+1.10+2.3+4.5 + Doctrina | 05a §6.5 | doctrina/page-types.md + plantilla-cluster/src/pages/[city]/index.astro |
| 5.6 | Spec GeoArticle (Semantic Booster) | ← 1.7+3.4+4.8 + Doctrina | 05a §6.6 | doctrina/page-types.md + plantilla-cluster/src/pages/[city]/[topic].astro |
| 5.7 | Validación Schema por tipo de página | Doctrina GMB Crush | 05a §6.7 | scripts/qa-check.ts (test 9) |
| 5.8 | Validación Word count por intención (rangos doctrinales) | Doctrina GMB Crush | 05a §6.8 | scripts/qa-check.ts (test 8) |
| 5.9 | Validación CTA adaptado al page type | ← 1.13 + Doctrina | 05a §6.9 | scripts/qa-check.ts (test 12) |
| 5.10 | Validación No false location claims | ← 1.8+1.10+4.14 + Doctrina | 05a §6.10 | scripts/qa-check.ts (test 6) |
| 6.1 | Principio 1 — Main City crea arquitectura | Info heredada (← 1.7) | 06a §8 fila 6.1 | doctrina/reglas-operativas.md |
| 6.2 | Principio 2 — LCAs enriquecen contenido (no URLs) | Info heredada (← 1.10) | 06a §8 fila 6.2 | doctrina/reglas-operativas.md |
| 6.3 | Principio 3 — AEAs crean URLs solo si se aprueban | Info heredada (← 1.11) | 06a §8 fila 6.3 | doctrina/reglas-operativas.md |
| 6.4 | Principio 4 — Mencionar zona ≠ crear página | Doctrina GMB Crush | 06a §8 fila 6.4 | doctrina/reglas-operativas.md |
| 6.5 | Principio 5 — No falsa ubicación | Info heredada (← 1.8) | 06a §8 fila 6.5 | doctrina/reglas-operativas.md |
| 6.6 | Homepage Content Architecture (1 URL × 11 bloques) | ← 3.5+5.1 | 06a §8 fila 6.6 | doctrina/page-types.md + plantilla-cluster/src/components/home/* |
| 6.7 | SO Content Architecture (S URLs × 11 bloques) | ← 3.5+5.2 | 06a §8 fila 6.7 | doctrina/page-types.md |
| 6.8 | LBS Content Architecture (S URLs × 12 bloques) | ← 3.5+5.3 | 06a §8 fila 6.8 | doctrina/page-types.md |
| 6.9 | AC Content Architecture (A URLs × 11 bloques) | ← 3.5+5.4 | 06a §8 fila 6.9 | doctrina/page-types.md |
| 6.10 | GeoHub Content Architecture (1 URL × 10 bloques) | ← 3.5+5.5 | 06a §8 fila 6.10 | doctrina/page-types.md |
| 6.11 | GeoArticle Content Architecture (G×S URLs × 10 bloques) | ← 3.5+5.6 | 06a §8 fila 6.11 | doctrina/page-types.md |
| 6.12 | Tabla de uso de LCAs por page type (matriz 6×2) | Info heredada (← 1.10) | 06a §8 fila 6.12 | doctrina/page-types.md |
| 6.13 | Ejemplo práctico completo (sección cobertura LBS) | Doctrina GMB Crush | 06a §8 fila 6.13 | doctrina/page-types.md (ejemplo) |
| 6.14 | FAQ ejemplo (4-6 FAQs con LCAs) | Doctrina GMB Crush | 06a §8 fila 6.14 | doctrina/page-types.md |
| 6.15 | Reviews y trust blocks contextualizados | Info heredada (← 1.14) | 06a §8 fila 6.15 | doctrina/page-types.md |
| 6.16 | FAQs con cobertura natural (sin keyword stuffing) | Doctrina GMB Crush | 06a §8 fila 6.16 | scripts/qa-check.ts |
| 6.17 | Schema `areaServed` coherente | Info heredada (← 1.10) | 06a §8 fila 6.17 | scripts/qa-check.ts (test 9) + plantilla-cluster/src/schemas/local-business.ts |
| 7.1 | Regla 1 — Enlazar arriba/abajo/lateral | Doctrina GMB Crush | 07a §8 fila 7.1 + 01-doctrina-gmb-crush.md §7.1 | doctrina/linking.md |
| 7.2 | Regla 2 — Homepage distribuye autoridad | Info heredada (← 3.5) | 07a §8 fila 7.2 | doctrina/linking.md |
| 7.3 | Regla 3 — SO empuja versión local | Info heredada (← 3.5) | 07a §8 fila 7.3 | doctrina/linking.md |
| 7.4 | Regla 4 — GeoHub organiza Main City | Info heredada (← 3.5) | 07a §8 fila 7.4 | doctrina/linking.md |
| 7.5 | Regla 5 — LBS conecta servicio y ciudad | Info heredada (← 3.5) | 07a §8 fila 7.5 | doctrina/linking.md |
| 7.6 | Regla 6 — AC se integra en silo local | Info heredada (← 3.5) | 07a §8 fila 7.6 | doctrina/linking.md |
| 7.7 | Regla 7 — GeoArticle pasa relevancia a landing | Info heredada (← 3.5) | 07a §8 fila 7.7 | doctrina/linking.md |
| 7.8 | Regla 8 — LCAs sin URL no reciben enlaces | Info heredada (← 1.10+4.9) | 07a §8 fila 7.8 | scripts/qa-check.ts |
| 7.9 | Regla 9 — Anchor text variado (5 categorías) | Info heredada (← 1.1+1.13) | 07a §8 fila 7.9 | doctrina/linking.md |
| 7.10 | Regla 10 — Enlaces contextuales primero (inline > footer) | Doctrina GMB Crush | 07a §8 fila 7.10 | doctrina/linking.md |
| 7.11 | Matriz de enlaces obligatorios por page type | Info heredada (← 3.5) | 07a §8 fila 7.11 | scripts/internal-links.ts (matriz fija) |
| 7.12 | Ejemplo completo de enlaces para LBS modelo | Info heredada (← 3.5) | 07a §8 fila 7.12 | doctrina/linking.md (ejemplo) |
| 7.13 | Breadcrumbs por page type (6 breadcrumbs) | Info heredada (← 3.5) | 07a §8 fila 7.13 | plantilla-cluster/src/components/Breadcrumbs.astro |
| 7.14 | Inbound links esperados (cross-cutting) | Info heredada (← 3.5) | 07a §8 fila 7.14 | scripts/qa-check.ts |
| 7.15 | Expansion linking separado (cross-cutting) | Info heredada (← 1.11) | 07a §8 fila 7.15 | scripts/internal-links.ts (condicional E≥1) |

### Bloque 3 — Priorización (43 outputs)

| Output ID | Nombre | Fuente | Origen v1 | Destino v2 |
|---|---|---|---|---|
| 8.1 | Priority Score Formula `R+I+G+L+C+U` | Doctrina GMB Crush | 08a §8 fila 8.1 + 01-doctrina-gmb-crush.md §8.1 | scripts/score-priority.ts |
| 8.2 | Revenue Value (escala 1-5, ticket+margen+volumen) | ← 1.9 + Doctrina + Google Search | 08a §8 fila 8.2 + 08-doctrina-google-search.md 8.2 | scripts/score-priority.ts (factor R) |
| 8.3 | Search Intent (escala 1-5, % transaccional) | ← 1.9 + Doctrina + KR | 08a §8 fila 8.3 + 06-doctrina-keyword-research.md 8.3 | scripts/score-priority.ts (factor I) |
| 8.4 | GBP Category Relevance (escala 1-5) | ← 1.5+1.6 + Doctrina + LP | 08a §8 fila 8.4 + 05-doctrina-local-pack.md 8.4 | scripts/score-priority.ts (factor G) |
| 8.5 | Local Relevance (escala 1-5) | ← 1.7+1.8+1.10 + Doctrina | 08a §8 fila 8.5 | scripts/score-priority.ts (factor L) |
| 8.6 | Competition Gap (escala 1-5, DR/UR) | ← 1.7+1.9 + Doctrina + LP + KR | 08a §8 fila 8.6 + 05/06-doctrinas | scripts/score-priority.ts (factor C) |
| 8.7 | Conversion Urgency (escala 1-5) | ← 1.9+1.13 + Doctrina | 08a §8 fila 8.7 | scripts/score-priority.ts (factor U) |
| 8.8 | Total Score por página (suma 6-30) | ← 8.2-8.7 | 08a §8 fila 8.8 | scripts/score-priority.ts |
| 8.9 | Priority Tiers (P1-Hold con thresholds 26/21/16/10) | ← 8.8 | 08a §8 fila 8.9 | scripts/score-priority.ts |
| 8.10 | Publish Phase derivada (1-4) | ← 8.9+2.10 | 08a §8 fila 8.10 | scripts/score-priority.ts |
| 8.11 | Validación Landing antes que GeoArticle | ← 3.5+8.10 | 08a §8 fila 8.11 | scripts/qa-check.ts |
| 8.12 | Validación Homepage = P1 obligatorio | Doctrina GMB Crush | 08a §8 fila 8.12 | scripts/score-priority.ts (forzar) |
| 8.13 | Validación LCAs sin score | ← 1.10+4.9 | 08a §8 fila 8.13 | scripts/qa-check.ts |
| 8.14 | Inventario priorizado completo (N URLs scored) | ← 3.5+8.8-8.10 | 08a §8 fila 8.14 | scripts/score-priority.ts (output) |
| 9.1 | Plantilla de QA por página (10 campos) | ← 8.14 | 09a §8 fila 9.1 | scripts/qa-check.ts (template) |
| 9.2 | Regla 1 · URL QA | ← 4.3-4.8 | 09a §8 fila 9.2 | scripts/qa-check.ts (test 1) |
| 9.3 | Regla 2 · Page Type QA | ← 5.1-5.6+6.6-6.11 | 09a §8 fila 9.3 | scripts/qa-check.ts (test 2) |
| 9.4 | Regla 3 · One service only | ← 1.9+5.3-5.6 | 09a §8 fila 9.4 | scripts/qa-check.ts (test 3) |
| 9.5 | Regla 4 · One Main City only | ← 1.7 | 09a §8 fila 9.5 | scripts/qa-check.ts (test 4) |
| 9.6 | Regla 5 · Local Coverage QA | ← 1.10+4.14 | 09a §8 fila 9.6 | scripts/qa-check.ts (test 5) |
| 9.7 | Regla 6 · No fake location | ← 1.4+1.8+4.14+5.10 | 09a §8 fila 9.7 | scripts/qa-check.ts (test 6) |
| 9.8 | Regla 7 · Metadata QA | ← 5.1-5.6 | 09a §8 fila 9.8 | scripts/qa-check.ts (test 7) |
| 9.9 | Regla 8 · Word count QA | ← 5.8 | 09a §8 fila 9.9 | scripts/qa-check.ts (test 8) |
| 9.10 | Regla 9 · Schema QA | ← 5.7+6.17 | 09a §8 fila 9.10 | scripts/qa-check.ts (test 9) |
| 9.11 | Regla 10 · Enlaces internos QA | ← 7.11 | 09a §8 fila 9.11 | scripts/qa-check.ts (test 10) |
| 9.12 | Regla 11 · Canibalización QA | ← 4.15 | 09a §8 fila 9.12 | scripts/qa-check.ts (test 11) |
| 9.13 | Regla 12 · CTA QA | ← 5.9+1.13 | 09a §8 fila 9.13 | scripts/qa-check.ts (test 12) |
| 9.14 | Final Publish Gate (12 reglas → 9 checkpoints) | ← 9.2-9.13 | 09a §8 fila 9.14 | scripts/qa-check.ts (gate) |
| 9.15 | GBP Not Created QA Checklist (7 checks web-first) | ← 1.3 | 09a §8 fila 9.15 | scripts/qa-check.ts (test 15) |
| 10.1 | Publishing Capacity (páginas/semana) | Doctrina GMB Crush | 10a §8 fila 10.1 | doctrina/reglas-operativas.md |
| 10.2 | Equipo de contenido óptimo (axioma) | Doctrina GMB Crush | 10a §8 fila 10.2 | doctrina/reglas-operativas.md (axioma) |
| 10.3 | CMS + capabilities | **no aplica** | 10a §8 fila 10.3 | descartar (stack canónico fijado en 17.2) |
| 10.4 | Fase 1 — Entity Foundation (HP+SO+GH) | ← 2.9+8.10 | 10a §8 fila 10.4 | scripts/deploy.ts |
| 10.5 | Fase 2 — Main City Conversion Layer (LBS+AC) | ← 2.9+8.10 | 10a §8 fila 10.5 | scripts/deploy.ts |
| 10.6 | Fase 3 — Main City Semantic Expansion (GAs) | ← 2.9+8.10 | 10a §8 fila 10.6 | scripts/deploy.ts |
| 10.7 | Fase 4 — Optimization Loop | ← 10.9 | 10a §8 fila 10.7 | doctrina/reglas-operativas.md |
| 10.8 | Fase 5 — Optional Expansion Module | ← 1.11 | 10a §8 fila 10.8 | scripts/deploy.ts (condicional) |
| 10.9 | Calendario semanal de publicación (7 fases × semanas 1-8) | ← 10.1+10.4-10.8 | 10a §8 fila 10.9 + 13a §8 fila 13.8 | scripts/deploy.ts |
| 10.10 | Matriz de dependencias de publicación | ← 3.7+8.10 | 10a §8 fila 10.10 | scripts/deploy.ts |
| 10.11 | Reglas operativas (10 literales del original §14-§23) | Doctrina GMB Crush | 10a §8 fila 10.11 | doctrina/reglas-literales.md |
| 10.12 | Checklist pre-publicación | ← 10.4-10.10 | 10a §8 fila 10.12 | scripts/qa-check.ts |
| 10.13 | Validación Bloques 1-2 cerrados | ← Bloques 1+2+Pasos 8+9 | 10a §8 fila 10.13 | scripts/qa-check.ts |
| 10.14 | GBP Creation & Website Alignment (sección separada §26) | ← 1.3+Paso-14 | 10a §8 fila 10.14 + 02fuentes-y-outputs.md | doctrina/reglas-literales.md (referencia) |

### Bloque 4 — Automatización (41 outputs)

| Output ID | Nombre | Fuente | Origen v1 | Destino v2 |
|---|---|---|---|---|
| 11.1 | Función `load_inputs()` | ← Pasos 1-3 | 11a §8 fila 11.1 | scripts/load-inputs.ts |
| 11.2 | Función `normalize_slugs()` | ← 2.2+2.3+2.4+3.3 | 11a §8 fila 11.2 | scripts/slugify.ts |
| 11.3 | Función `validate_categories()` | ← 2.7+2.12 | 11a §8 fila 11.3 | scripts/qa-check.ts |
| 11.4 | Función `generate_homepage()` | ← 4.3+5.3 | 11a §8 fila 11.4 | scripts/generate-pages.ts (HP) + plantilla-cluster/src/pages/index.astro |
| 11.5 | Función `generate_service_overview()` | ← 4.4+5.4 | 11a §8 fila 11.5 | scripts/generate-pages.ts (SO) |
| 11.6 | Función `generate_geohub()` | ← 4.5+5.7+3.2 | 11a §8 fila 11.6 | scripts/generate-pages.ts (GH) |
| 11.7 | Función `generate_lbs()` | ← 4.6+5.5 | 11a §8 fila 11.7 | scripts/generate-pages.ts (LBS) |
| 11.8 | Función `generate_additional_category()` | ← 4.7+5.6+3.3 | 11a §8 fila 11.8 | scripts/generate-pages.ts (AC) |
| 11.9 | Función `generate_geoarticles()` | ← 4.8+5.8+3.4 | 11a §8 fila 11.9 | scripts/generate-pages.ts (GA) |
| 11.10 | Función `inject_local_coverage()` | ← 6.2+6.12+6.17 | 11a §8 fila 11.10 | scripts/inject-lcas.ts |
| 11.11 | Función `generate_expansion()` (opcional) | ← 1.11+4.10 | 11a §8 fila 11.11 | scripts/generate-pages.ts (expansion mode) |
| 11.12 | Función `assign_internal_links()` | ← 7.9+7.11 | 11a §8 fila 11.12 | scripts/internal-links.ts |
| 11.13 | Función `score_priority()` | ← 8.1-8.10 | 11a §8 fila 11.13 | scripts/score-priority.ts |
| 11.14 | Función `check_dependencies()` | ← 8.11+10.10 | 11a §8 fila 11.14 | scripts/qa-check.ts |
| 11.15 | Función `run_qa()` | ← 9.2-9.13 | 11a §8 fila 11.15 | scripts/qa-check.ts (suite) |
| 11.16 | Función `output_matrices()` | ← 3.5+3.8+7.11 | 11a §8 fila 11.16 | scripts/output-matrices.ts |
| 12.1 | Master Prompt principal (~580 líneas — DOCUMENTAL, no se ejecuta) | ← Pasos 11+Bloques 1-3 | 12a §8 fila 12.1 + nota Paso 12 | doctrina/prompts.md (referencia documental) |
| 12.2 | Auxiliary Prompt URL Matrix | ← 3.5+4.3-4.8 | 12a §8 fila 12.2 | doctrina/prompts.md |
| 12.3 | Auxiliary Prompt Content Architecture | ← 5.3-5.8+6.6-6.11 | 12a §8 fila 12.3 | doctrina/prompts.md |
| 12.4 | Auxiliary Prompt GeoArticles | ← 3.4+8.11 | 12a §8 fila 12.4 | doctrina/prompts.md |
| 12.5 | Auxiliary Prompt QA | ← 9.2-9.13 | 12a §8 fila 12.5 | doctrina/prompts.md |
| 12.6 | Estructura del prompt (10 secciones canónicas) | Doctrina GMB Crush | 12a §8 fila 12.6 | doctrina/prompts.md |
| 12.7 | Web-First GBP Rule | ← 1.3+9.15 | 12a §8 fila 12.7 | doctrina/reglas-operativas.md |
| 12.8 | 14 Reglas operativas (§22-§34 original) | ← Bloques 1-3 | 12a §8 fila 12.8 | doctrina/reglas-literales.md |
| 12.9 | Inputs Validation embedded | ← Paso-01+Paso-02 | 12a §8 fila 12.9 | scripts/qa-check.ts |
| 12.10 | Executive Summary template | ← Paso-01+02+08 | 12a §8 fila 12.10 | doctrina/prompts.md |
| 12.11 | Validación prompt produce 20 outputs | ← 12.1-12.5 | 12a §8 fila 12.11 | (no aplica al stack v2) |
| 12.12 | Validación prompt cumple web-first | ← 1.3+9.15 | 12a §8 fila 12.12 | scripts/qa-check.ts |
| 12.13 | 10 Reglas doctrinales (§7-§16 original) | Doctrina GMB Crush | 12a §8 fila 12.13 | doctrina/reglas-literales.md |
| 13.1 | Resumen ejecutivo (principio §20+§21+§22) | ← 1.X+2.X | 13a §8 fila 13.1 | doctrina/reglas-literales.md |
| 13.2 | 12 Sistemas literales (§7-§18 original) | ← Pasos 1-12 | 13a §8 fila 13.2 | doctrina/reglas-literales.md |
| 13.3 | 7 Módulos A-G literales (§29-§35 original) | ← 1.X+6.X+8.X+13.8 | 13a §8 fila 13.3 | doctrina/reglas-literales.md |
| 13.4 | 16 Reglas operativas literales (§36-§51 original) | Doctrina GMB Crush | 13a §8 fila 13.4 + 01-doctrina-gmb-crush.md §13.4 | doctrina/reglas-literales.md |
| 13.5 | Workflow operativo de 21 pasos (§25 original) — **referencia** | ← Bloques 1-4 | 13a §8 fila 13.5 + nota | doctrina/reglas-literales.md (referencia) |
| 13.6 | Carpetas recomendadas del repo (§26 original) — **referencia** | Doctrina GMB Crush | 13a §8 fila 13.6 | doctrina/reglas-literales.md (referencia) |
| 13.7 | Tabla inventario URL con scores literales (§54.2) | ← 3.5+8.14 | 13a §8 fila 13.7 | doctrina/reglas-literales.md |
| 13.8 | Calendario de 7 fases (§54.4) — **referencia** | ← 10.4-10.9 | 13a §8 fila 13.8 | doctrina/reglas-literales.md (referencia) |
| 13.9 | Output final del Paso 13 (§28) — 13 elementos | ← 13.1-13.8 | 13a §8 fila 13.9 | doctrina/reglas-literales.md |
| 13.10 | Relación con Paso 14 (§27) | ← 9.15+10.10 | 13a §8 fila 13.10 | doctrina/reglas-literales.md |
| 13.11 | Checklist final 13 preguntas (§52) | Doctrina GMB Crush | 13a §8 fila 13.11 | doctrina/reglas-literales.md |
| 13.12 | 8 Outputs del Paso 13 (§53) | Doctrina GMB Crush | 13a §8 fila 13.12 | doctrina/reglas-literales.md |

### Bloque 5 — Salida a Mercado (39 outputs)

| Output ID | Nombre | Fuente | Origen v1 | Destino v2 |
|---|---|---|---|---|
| 15.1 | Capas de redacción (4 capas) | Doctrina GMB Crush | 15a §8 fila 15.1 + 01-doctrina-gmb-crush.md §15.1 | doctrina/redaccion.md |
| 15.2 | Reglas de calidad universal (4 reglas) | Doctrina GMB Crush | 15a §8 fila 15.2 + 01-doctrina-gmb-crush.md §15.2 | doctrina/redaccion.md |
| 15.3 | Homepage redactada (rango 900-1,300) | ← 5.3+6.6+12.3 | 15a §8 fila 15.3 | plantilla-cluster/src/content/home.md (parametrizable) |
| 15.4 | Service Overview Pages redactadas (S × 850-1,000) | ← 5.4+6.7 | 15a §8 fila 15.4 | plantilla-cluster/src/content/services/*.md |
| 15.5 | LBS Pages redactadas (S × 800-1,000) | ← 5.5+6.8+1.10 | 15a §8 fila 15.5 | plantilla-cluster/src/content/lbs/*.md |
| 15.6 | AC Page redactada (A × 880) | ← 5.6+6.9 | 15a §8 fila 15.6 | plantilla-cluster/src/content/ac/*.md |
| 15.7 | GeoHub redactada (1 × 980 + 22 internal links) | ← 5.7+6.10 | 15a §8 fila 15.7 | plantilla-cluster/src/content/geohub.md |
| 15.8 | GeoArticles redactados (G×S × 1,000-1,500) | ← 5.8+6.11+3.4 | 15a §8 fila 15.8 | plantilla-cluster/src/content/articles/*.md |
| 15.9 | Página de contacto redactada (320 + form + ContactPoint schema) | ← 1.4 | 15a §8 fila 15.9 | plantilla-cluster/src/pages/contacto.astro |
| 15.10 | Validación clusters completos (SO+LBS+3 GAs por core service) | Doctrina GMB Crush | 15a §8 fila 15.10 | scripts/qa-check.ts |
| 15.11 | Validación SO no compite con LBS (H1) | Doctrina GMB Crush | 15a §8 fila 15.11 | scripts/qa-check.ts |
| 15.12 | Validación GA enlaza a LBS padre (3 puntos) | Doctrina GMB Crush | 15a §8 fila 15.12 | scripts/qa-check.ts |
| 15.13 | Validación datos verificables | **no aplica** | 15a §8 fila 15.13 + nota | descartar (cubierto por 9.15) |
| 16.1 | Identidad Visual y CSS Base (tokens) | Cliente preflight | 16a §8 fila 16.1 + 02-cliente-preflight.md 16.1 | clientes/[slug]/visual-tokens.json + plantilla-cluster/tailwind.config.cjs |
| 16.2 | Layout y Estructura por Sección (6 page types × 8-12 secciones) | ← 5.3-5.8+6.6-6.11 | 16a §8 fila 16.2 | doctrina/page-types.md + plantilla-cluster/src/components/* |
| 16.3 | Propuesta de Diseño aprobada | **no aplica** | 16a §8 fila 16.3 + nota | descartar (sin ciclo mockup→aprobación) |
| 16.4 | Design Tokens Tailwind (tailwind.config.js) | ← 16.1 | 16a §8 fila 16.4 | plantilla-cluster/tailwind.config.cjs |
| 16.5 | Reglas Críticas CSS (6 componentes Hero/Buttons/Cards/Grids/Forms/Mobile) | ← 16.4 | 16a §8 fila 16.5 | doctrina/redaccion.md (CSS rules) + plantilla-cluster/src/styles/* |
| 16.6 | Layout-Map Definitivo (6 page types × components+props+schemas) | ← 16.2+15.3-15.9 | 16a §8 fila 16.6 | plantilla-cluster/src/layouts/*.astro |
| 17.1 | Acta de Lectura y Autocontraste | **no aplica** | 17a §8 fila 17.1 + nota | descartar (procedimiento operativo) |
| 17.2 | Proyecto Astro 5 + Tailwind v3 + pnpm | Arquitectura técnica | 17a §8 fila 17.2 + 03-arquitectura-tecnica.md §17.2 | plantilla-cluster/* (repo completo) |
| 17.3 | 7 componentes UI (Button+Card+Badge+Hero+Testimonial+FAQ+ContactForm) | ← 16.5 | 17a §8 fila 17.3 | plantilla-cluster/src/components/* (7 archivos) |
| 17.4 | Header + Footer + Layout wrapper (BaseLayout) | ← 7.11+16.6 | 17a §8 fila 17.4 | plantilla-cluster/src/layouts/BaseLayout.astro |
| 17.5 | N páginas construidas (.astro en src/pages/) | ← 3.5+15.3-15.9+16.6 | 17a §8 fila 17.5 | plantilla-cluster/src/pages/* + scripts/build.ts |
| 17.6 | Schemas implementados y validados | ← 5.9+6.17+9.10 | 17a §8 fila 17.6 | plantilla-cluster/src/schemas/* |
| 17.7 | Limpieza de rastros IA (5 áreas) | Doctrina GMB Crush | 17a §8 fila 17.7 | scripts/qa-check.ts (auditoría) |
| 17.8 | Build local pasando (`pnpm build` ✓) | ← 17.2-17.7 | 17a §8 fila 17.8 | scripts/build.ts |
| 18.1 | Auditoría Técnica (16 criterios literales) | ← 4.1+5.9+17.5-17.6 | 18a §8 fila 18.1 | scripts/qa-check.ts (auditoría técnica) |
| 18.2 | Auditoría de Contenido (8 criterios literales) | ← 15.3-15.12+9.8+9.9+9.10+9.15 | 18a §8 fila 18.2 | scripts/qa-check.ts (auditoría contenido) |
| 18.3 | Auditoría Visual (5 criterios) | ← 16.4+16.6 | 18a §8 fila 18.3 | scripts/qa-check.ts (auditoría visual) |
| 18.4 | Auditoría de Rastros IA (6 criterios) | ← 17.7 | 18a §8 fila 18.4 | scripts/qa-check.ts |
| 18.5 | Configuración Cloudflare | Arquitectura técnica | 18a §8 fila 18.5 + 03-arquitectura-tecnica.md §18.5 | scripts/deploy.ts (Cloudflare config) |
| 18.6 | Sitio en Producción (múltiples deploys según calendario) | ← 18.1-18.5 | 18a §8 fila 18.6 | scripts/deploy.ts |
| 18.7 | Sitemap en GSC | ← 18.6 | 18a §8 fila 18.7 | scripts/deploy.ts (GSC submit) |
| 19.1 | Tablero de vigilancia post-launch | ← 13.8+18.7 + Tracking | 19a §8 fila 19.1 + 04-tracking.md 19.1 | doctrina/reglas-operativas.md (Paso 19) |
| 19.2 | Estado de los 3 triggers por candidato | ← 19.1 | 19a §8 fila 19.2 | doctrina/reglas-operativas.md |
| 19.3 | Análisis SERP + decisión | ← 19.2+8.6 + Doctrina+LP | 19a §8 fila 19.3 | doctrina/reglas-operativas.md |
| 19.4 | Log de decisiones de escalado (8 campos) | ← 19.3+13.7 | 19a §8 fila 19.4 | clientes/[slug]/escalado-log.md |
| 19.5 | URL Matrix actualizada con Approved Expansion | ← 19.4+1.11+11.11 | 19a §8 fila 19.5 | scripts/generate-pages.ts (expansion mode) |

### Bloque 7 — GBP (20 outputs)

| Output ID | Nombre | Fuente | Origen v1 | Destino v2 |
|---|---|---|---|---|
| 14.1 | GBP creado o plan listo | Cliente preflight + Doctrina | 14a §11 fila 14.1 + 02-cliente-preflight.md 14.1 | clientes/[slug]/gbp-plan.md |
| 14.2 | Estado de verificación (5 valores) | Cliente preflight + Doctrina | 14a §11 fila 14.2 | clientes/[slug]/gbp-plan.md |
| 14.3 | NAP final aprobado | ← 1.4 | 14a §11 fila 14.3 | clientes/[slug]/preflight.md (cruzado) |
| 14.4 | Modelo de negocio (Storefront/SAB/Hybrid) | Cliente preflight + Doctrina | 14a §11 fila 14.4 + 02-cliente-preflight.md 14.4 | clientes/[slug]/gbp-plan.md |
| 14.5 | Categoría principal confirmada (sin keyword stuffing) | ← 1.5 | 14a §11 fila 14.5 | clientes/[slug]/gbp-plan.md |
| 14.6 | Categorías adicionales confirmadas o descartadas | ← 1.6 + Doctrina+LP | 14a §11 fila 14.6 + 05-doctrina-local-pack.md 14.6 | clientes/[slug]/gbp-plan.md |
| 14.7 | Servicios mapeados a páginas web | ← 1.9+5.4+5.5 | 14a §11 fila 14.7 | clientes/[slug]/gbp-plan.md |
| 14.8 | URL web seleccionada para el GBP | ← 4.3 | 14a §11 fila 14.8 | clientes/[slug]/gbp-plan.md |
| 14.9 | URL UTM preparada | Tracking | 14a §11 fila 14.9 + 04-tracking.md 14.9 | clientes/[slug]/gbp-plan.md |
| 14.10 | Descripción GBP aprobada (patrón doctrinal) | Doctrina + Local Pack | 14a §11 fila 14.10 + 05-doctrina-local-pack.md 14.10 | clientes/[slug]/gbp-plan.md |
| 14.11 | Plan de fotos (clasificación por tipo) | Cliente preflight + Doctrina | 14a §11 fila 14.11 + 02-cliente-preflight.md 14.11 | clientes/[slug]/gbp-plan.md |
| 14.12 | Plan de Q&A (4 métodos) | ← 9.X + Doctrina+LP | 14a §11 fila 14.12 + 05-doctrina-local-pack.md 14.12 | clientes/[slug]/gbp-plan.md |
| 14.13 | Plan de posts (P1/P2 + queries transaccionales) | ← 8.X + Doctrina+KR | 14a §11 fila 14.13 + 06-doctrina-keyword-research.md 14.13 | clientes/[slug]/gbp-plan.md |
| 14.14 | Estrategia de reseñas reales (benchmarking top 5 GBP) | Doctrina + Local Pack | 14a §11 fila 14.14 + 05-doctrina-local-pack.md 14.14 | clientes/[slug]/gbp-plan.md |
| 14.15 | Cola de actualización post-GBP | Doctrina GMB Crush | 14a §11 fila 14.15 + 01-doctrina-gmb-crush.md §14.15 | clientes/[slug]/gbp-plan.md |
| 14.16 | Schema update plan (sameAs post-verificación) | ← 3.8 | 14a §11 fila 14.16 | plantilla-cluster/src/schemas/local-business.ts (sameAs condicional) |
| 14.17 | Homepage update plan | ← 5.3 | 14a §11 fila 14.17 | clientes/[slug]/gbp-plan.md |
| 14.18 | Contact page update plan | ← 5.X | 14a §11 fila 14.18 | clientes/[slug]/gbp-plan.md |
| 14.19 | Tracking baseline plan | ← 19.1 + Tracking | 14a §11 fila 14.19 + 04-tracking.md 14.19 | clientes/[slug]/gbp-plan.md |
| 14.20 | Lista de riesgos (4 categorías doctrinales) | Doctrina GMB Crush | 14a §11 fila 14.20 | doctrina/reglas-operativas.md + clientes/[slug]/gbp-plan.md |

---

## Sección 4: Schemas y page types

| Page Type | ID Prefix | Schema (mapping doctrinal) | Word count | URL pattern | Bloques estructurales | CTA dominante | Origen v1 | Destino v2 |
|---|---|---|---|---|---|---|---|---|
| Homepage | HP-001 | Organization + WebSite + LocalBusiness (si physical presence) + FAQPage + Speakable | 900-1,300 | `/` | 11 | Llamar/Solicitar (según 1.13) | 05a §6.1 + 03a §8 + 06a §8 fila 6.6 | doctrina/page-types.md (HP) + plantilla-cluster/src/pages/index.astro + plantilla-cluster/src/schemas/homepage.ts |
| Service Overview | SO-001..S | Service + WebPage + BreadcrumbList + Speakable | 850-1,000 | `/[primary-cat]/[service]/` | 11 | Solicitar presupuesto/Llamar | 05a §6.2 + 06a §8 fila 6.7 | doctrina/page-types.md (SO) + plantilla-cluster/src/pages/[primary]/[service].astro + plantilla-cluster/src/schemas/service.ts |
| Location-Based Service | LBS-001..S | LocalBusiness + BreadcrumbList + FAQPage (opc) + Speakable (opc) | 800-1,000 | `/[primary-cat]/[city]/[service]/` | 12 | Llamar (urgencia) / Reservar | 05a §6.3 + 06a §8 fila 6.8 + 07a §8 fila 7.5 | doctrina/page-types.md (LBS) + plantilla-cluster/src/pages/[primary]/[city]/[service].astro + plantilla-cluster/src/schemas/local-business.ts |
| Additional Category | AC-001..A | Service (con `areaServed`) + BreadcrumbList + FAQPage (opc) + Speakable (opc) | 800-1,000 | `/[primary-cat]/[city]/[additional]/` | 11 | Solicitar presupuesto | 05a §6.4 + 06a §8 fila 6.9 | doctrina/page-types.md (AC) + plantilla-cluster/src/pages/[primary]/[city]/[additional].astro |
| GeoHub | GH-001 | CollectionPage + BreadcrumbList + LocalBusiness (opc) | 700-1,100 | `/[city]/` (Option A) o `/[primary-cat]/[city]/` (Option B) | 10 | Contactar / Llamar | 05a §6.5 + 06a §8 fila 6.10 + 07a §8 fila 7.4 | doctrina/page-types.md (GH) + plantilla-cluster/src/pages/[city]/index.astro + plantilla-cluster/src/schemas/collection-page.ts |
| GeoArticle | GA-001..(G×S) | Article + FAQPage + BreadcrumbList + Speakable | 1,000-1,500 | `/[city]/[topic]/` | 10 | Llamar / Contactar (informacional) | 05a §6.6 + 06a §8 fila 6.11 + 07a §8 fila 7.7 | doctrina/page-types.md (GA) + plantilla-cluster/src/pages/[city]/[topic].astro + plantilla-cluster/src/schemas/article.ts |

> **Total: 6 page types** (≠ original que cita 5 cuando se compactan SO+AC; aquí son 6 distintos).

---

## Sección 5: Validaciones / QA checks / Reglas fidelidad

### 5a — Las 12 reglas QA del Paso 9

| # | Validación | Aplicación | Origen v1 | Destino v2 |
|---|---|---|---|---|
| 1 | URL QA | Comparar URL contra patrón doctrinal del page type (4.3-4.8) | 09a §6.2 + bloque-3-consolidado.md 9.2 | scripts/qa-check.ts (test 1) |
| 2 | Page Type QA | Inspeccionar H1 + estructura + schema vs spec (5.1-5.6 + 6.6-6.11) | 09a §6.3 | scripts/qa-check.ts (test 2) |
| 3 | One service only | Cada URL local cubre 1 servicio | 09a §6.4 | scripts/qa-check.ts (test 3) |
| 4 | One Main City only | Cada URL local cubre 1 city | 09a §6.5 | scripts/qa-check.ts (test 4) |
| 5 | Local Coverage QA | Validar LCAs en contenido + areaServed | 09a §6.6 | scripts/qa-check.ts (test 5) |
| 6 | No fake location | Schema NAP físico = real; areaServed = zonas reales | 09a §6.7 | scripts/qa-check.ts (test 6) |
| 7 | Metadata QA | H1 + meta title + meta description coherentes y únicos | 09a §6.8 | scripts/qa-check.ts (test 7) |
| 8 | Word count QA | Profundidad doctrinal por page type (rangos) | 09a §6.9 | scripts/qa-check.ts (test 8) |
| 9 | Schema QA | Validar JSON-LD por page type + areaServed coherente | 09a §6.10 | scripts/qa-check.ts (test 9) |
| 10 | Enlaces internos QA | Cada URL cumple matriz 7.11 | 09a §6.11 | scripts/qa-check.ts (test 10) |
| 11 | Canibalización QA | 0 pares solapados | 09a §6.12 | scripts/qa-check.ts (test 11) |
| 12 | CTA QA | CTA adaptado al page type (funnel position) | 09a §6.13 | scripts/qa-check.ts (test 12) |

### 5b — Validaciones cross-cutting (Bloques 1-7)

| # | Validación | Aplicación | Origen v1 | Destino v2 |
|---|---|---|---|---|
| 13 | Final Publish Gate (12 reglas → 9 checkpoints binarios) | Consolidar 9.2-9.13 | 09a §6.14 | scripts/qa-check.ts (gate) |
| 14 | GBP Not Created QA Checklist (7 checks web-first) | Validar pre-Paso 14 | 09a §6.15 | scripts/qa-check.ts (test 15) |
| 15 | Auditoría Técnica Paso 18 (16 criterios literales) | Lighthouse + GRT + responsive 3 breakpoints + crawler 404s | 18a §6.1 | scripts/qa-check.ts |
| 16 | Auditoría de Contenido Paso 18 (8 criterios literales) | Inspección manual HTML construido | 18a §6.2 | scripts/qa-check.ts |
| 17 | Auditoría Visual Paso 18 (5 criterios literales) | Inspección visual + WCAG AA + responsive 3 breakpoints | 18a §6.3 | scripts/qa-check.ts |
| 18 | Auditoría Rastros IA Paso 18 (6 criterios literales) | grep + inspección README + package.json + git log | 18a §6.4 | scripts/qa-check.ts |
| 19 | Validación anti-duplicación Additional vs core (2.11) | Cruzar Additional vs core services semánticamente | 02a §6.11 | scripts/qa-check.ts |
| 20 | Validación dependencias HP→SO→GH→LBS→AC→GAs (2.12) | Orden topológico | 02a §6.12 | scripts/qa-check.ts |
| 21 | Validación LCAs fuera fórmula (2.13/3.13/4.9) | 0 URLs `/[lca]/` | 02a §6.13 + 03a §6.13 + 04a §6.9 | scripts/qa-check.ts |
| 22 | Validación auditabilidad del total (2.14) | Suma desglose 2.9 = total 2.8 | 02a §6.14 | scripts/qa-check.ts |
| 23 | Validación slugs limpios (4.13) | lowercase, sin acentos, kebab-case | 04a §6.13 | scripts/slugify.ts (con tests) |
| 24 | Validación No false location (4.14) | Solo Main City o Approved Expansion como path | 04a §6.14 | scripts/qa-check.ts (test 6) |
| 25 | Validación Schema por page type (5.7) | Schema asignado matchea page type | 05a §6.7 | scripts/qa-check.ts (test 9) |
| 26 | Validación Word count (5.8) | Rango doctrinal por page type | 05a §6.8 | scripts/qa-check.ts (test 8) |
| 27 | Validación CTA por page type (5.9) | CTA respeta funnel position | 05a §6.9 | scripts/qa-check.ts (test 12) |
| 28 | Validación No false location claims (5.10) | address schema = NAP físico real | 05a §6.10 | scripts/qa-check.ts (test 6) |
| 29 | Validación areaServed coherente (6.17) | areaServed lista solo zonas reales | 06a §6.17 | scripts/qa-check.ts (test 9) |
| 30 | Validación FAQs sin keyword stuffing (6.16) | FAQs naturales, LCAs con contexto | 06a §6.16 | scripts/qa-check.ts |
| 31 | Validación clusters completos (15.10) | SO + LBS + 3 GAs por core service | 15a §6.10 | scripts/qa-check.ts |
| 32 | Validación SO no compite con LBS (15.11) | H1 SO ≠ H1 LBS por servicio | 15a §6.11 | scripts/qa-check.ts |
| 33 | Validación GA enlaza a LBS padre (15.12) | 3 puntos de enlace por GA | 15a §6.12 | scripts/qa-check.ts |
| 34 | Validación priority Homepage = P1 (8.12) | Forzar HP=P1+Phase1 | 08a §6.12 | scripts/score-priority.ts |
| 35 | Validación Landing antes que GeoArticle (8.11) | phase(parent) < phase(GA) | 08a §6.11 | scripts/qa-check.ts |
| 36 | Validación inbound links (7.14) | 0 páginas huérfanas | 07a §6.14 | scripts/qa-check.ts |
| 37 | Validación URL anti-pattern near-me (4.11) | Blacklist near-me regex | 04a §6.11 | scripts/qa-check.ts |
| 38 | Validación URL adjetivos vacíos (4.12) | Blacklist best/cheap/top-rated regex | 04a §6.12 | scripts/qa-check.ts |
| 39 | Validación URL canibalización (4.15) | 0 pares con misma intención | 04a §6.15 | scripts/qa-check.ts |

### 5c — Las 7 reglas de fidelidad al original (Convenciones §3)

| # | Regla | Detalle | Origen v1 | Destino v2 |
|---|---|---|---|---|
| F1 | Verificación bidireccional antes de declarar output | Producir ≠ aplicar — output nativo si está en §X-Outputs del paso o §4 intake | 00convenciones.md §3 Regla 1 | doctrina/fidelidad-original.md |
| F2 | 7 patrones de invención prohibidos: outputs inventados / robados / doctrina inventada / cambiada / omitida / cambios silenciosos / datos cliente fabricados | 00convenciones.md §3 Regla 2 (7 sub-puntos) | doctrina/fidelidad-original.md |
| F3 | Qué SÍ es permitido: numeración Paso.X / tabla §3 Heredados / sección §6.X Validación / tabla §8 Outputs / cross-refs / reformulación / ejemplo Cerrajeros | 00convenciones.md §3 Regla 3 | doctrina/fidelidad-original.md |
| F4 | Protocolo antes de portar paso: leer original COMPLETO + listar outputs nativos + identificar intake + identificar secciones doctrinales | 00convenciones.md §3 Regla 4 | doctrina/fidelidad-original.md |
| F5 | Original con ambigüedad o contradicción: NO resolver silenciosamente; documentar Nota de fidelidad; consultar operador | 00convenciones.md §3 Regla 5 | doctrina/fidelidad-original.md |
| F6 | Original escueto: portar literal; NO inventar expansión narrativa; si operador necesita, etiquetar como "Decisión de diseño" | 00convenciones.md §3 Regla 6 | doctrina/fidelidad-original.md |
| F7 | Verificación post-fix: grep contra invenciones canónicas / wc -l antes vs después / Bloque IV intacto / numeración consistente | 00convenciones.md §3 Regla 7 | doctrina/fidelidad-original.md + scripts/qa-check.ts (verificación) |

### 5d — Reglas de status (5 status: confirmed / ⚠ inferido / validated / ⚠ placeholder / no aplica)

| # | Status | Cuándo aplicar | Origen v1 | Destino v2 |
|---|---|---|---|---|
| S1 | `confirmed` | Fuente Cliente preflight / Doctrina GMB Crush / Arquitectura técnica directa | 00convenciones.md §2 Regla 1 | doctrina/status.md |
| S2 | `⚠ inferido` | Fuente requiere tool externa pero IA no la ejecutó (Local Pack/KR/Google Search) | 00convenciones.md §2 Regla 1 + Regla 3 | doctrina/status.md |
| S3 | `validated` | Fuente externa ejecutada con éxito (cross-check real con tool) | 00convenciones.md §2 Regla 1 | doctrina/status.md |
| S4 | `⚠ placeholder` | Input cliente no provisto aún (NAP incompleto, fotos, web ref) | 00convenciones.md §2 Regla 3 | doctrina/status.md |
| S5 | `no aplica` | Output conceptual del original sin uso en flujo actual | 00-fuentes-en-uso.md | doctrina/no-aplica.md |

---

## Sección 6: Linking interno

| Regla | Detalle | Origen v1 | Destino v2 |
|---|---|---|---|
| 7.1 Enlazar arriba/abajo/lateral | Cada URL del cluster con 3 direcciones (parent / hijos / peers) | 07a §6.1 + 01-doctrina-gmb-crush.md §7.1 | doctrina/linking.md + scripts/internal-links.ts |
| 7.2 Homepage distribuye autoridad | HP outbound a S SO + 1 GeoHub + A AC + 1 contacto | 07a §6.2 | scripts/internal-links.ts (matriz HP) |
| 7.3 SO empuja versión local | SO → LBS por servicio (S conexiones) | 07a §6.3 | scripts/internal-links.ts |
| 7.4 GeoHub organiza Main City | GeoHub outbound a S LBS + A AC + G×S GAs | 07a §6.4 | scripts/internal-links.ts |
| 7.5 LBS conecta servicio y ciudad | LBS → parent SO + GeoHub + lateral peers + GAs hijos + contacto (~6-7 enlaces × S) | 07a §6.5 | scripts/internal-links.ts |
| 7.6 AC se integra en silo local | 3 outbound desde cada AC | 07a §6.6 | scripts/internal-links.ts |
| 7.7 GeoArticle pasa relevancia a landing | GA → LBS padre + GA → GeoHub (2 conexiones por GA) | 07a §6.7 | scripts/internal-links.ts |
| 7.8 LCAs sin URL no reciben enlaces | 0 anchors a `/[lca]/` (validado por QA) | 07a §6.8 | scripts/qa-check.ts |
| 7.9 Anchor text variado (5 categorías originales: branded / exact / partial / topic / generic) | Catálogo doctrinal del original; warning: "6ª Local entity" era invento | 07a §6.9 + Convenciones §3 caso 2.3 | doctrina/linking.md (5 categorías) |
| 7.10 Enlaces contextuales primero | Inline (body) > footer > sidebar | 07a §6.10 | doctrina/linking.md |
| 7.11 Matriz de enlaces obligatorios por page type | 14 conexiones source→target documentadas | 07a §6.11 | scripts/internal-links.ts (matriz fija) |
| 7.12 Ejemplo completo de enlaces para LBS modelo | 6 outbound + 6 anchors (Cerrajeros LBS-001) | 07a §6.12 | doctrina/linking.md (ejemplo Cerrajeros) |
| 7.13 Breadcrumbs por page type | Home > [Categoría] > [Ciudad] > [Servicio] (6 patterns) | 07a §6.13 | plantilla-cluster/src/components/Breadcrumbs.astro |
| 7.14 Inbound links esperados | Mínimos por page type; 0 huérfanas | 07a §6.14 | scripts/qa-check.ts |
| 7.15 Expansion linking separado | Sub-cluster aislado del base si E≥1 | 07a §6.15 | scripts/internal-links.ts (condicional) |

---

## Sección 7: Ejemplos rellenados (Cerrajeros Madrid 24h)

| Output | Valor concreto | Origen v1 | Destino v2 |
|---|---|---|---|
| 1.1 Business Name | `Cerrajeros Madrid 24h` | 01a §4.1 + bloque-1-consolidado.md | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.2 Website URL | `https://www.cerrajerosmadrid24h.com` | 01a §4.2 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.3 GBP Lifecycle | `Not Created / After website launch / Not Started / N/A` | 01a §4.3 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.4 NAP completo | `Cerrajeros Madrid 24h / Calle Rafael Calvo 12 / Barrio Almagro, Distrito Chamberí / Madrid / Comunidad de Madrid / 28010 / España / +34 600 000 000 / info@cerrajerosmadrid24h.com` | 01a §4.4 + 14a §11 fila 14.3 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.5 Primary GBP Category | `Cerrajero` (status Planned) | 01a §4.5 + 14a §11 fila 14.5 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.6 Additional Categories | `Servicio de cerrajería de urgencia` (cubierta), `Servicio de duplicado de llaves` (página propia, A=1) | 01a §4.6 + 14a §11 fila 14.6 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.7 Main City | `Madrid` | 01a §4.7 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.8 Physical Location City | `Madrid` | 01a §4.8 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.9 Servicios principales (S=5) | `Cerrajero urgente, Apertura de puertas, Cambio de cerraduras, Cambio de bombines, Instalación de cerraduras de seguridad` | 01a §4.9 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.10 Direct LCAs | `Almagro, Chamberí` | 01a §4.10 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.10 Candidate LCAs | `Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad` (8 zonas) | 01a §4.10 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.11 Approved Expansion | `None in Phase 1` | 01a §4.11 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.12 G | `3` | 01a §4.12 | (default doctrinal) |
| 1.13 Preferred CTA | `Llamar ahora` | 01a §4.13 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 1.14 Trust Signals | `10+ años de experiencia / Reseñas iniciales pendientes / Técnicos cualificados / Servicio móvil mismo día / Garantía de trabajo` | 01a §4.14 | _ejemplos/cerrajeros-madrid-24h/preflight.md |
| 2.2 Primary Category Slug | `cerrajero` | 02a §8 fila 2.2 | _ejemplos/cerrajeros-madrid-24h/slugs.json |
| 2.3 Main City Slug | `madrid` | 02a §8 fila 2.3 | _ejemplos/cerrajeros-madrid-24h/slugs.json |
| 2.4 Service Slugs | `cerrajero-urgente, apertura-puertas, cambio-cerraduras, cambio-bombines, instalacion-cerraduras-seguridad` | 02a §8 fila 2.4 | _ejemplos/cerrajeros-madrid-24h/slugs.json |
| 2.5 Variable S | `5` | 02a §8 fila 2.5 | _ejemplos/cerrajeros-madrid-24h/calculation.md |
| 2.6 Variable A | `1` (Servicio de duplicado de llaves) | 02a §8 fila 2.6 | _ejemplos/cerrajeros-madrid-24h/calculation.md |
| 2.7 Variable G | `3` | 02a §8 fila 2.7 | _ejemplos/cerrajeros-madrid-24h/calculation.md |
| 2.8 Total páginas SEO base | `1+5+1+5+1+15 = 28` | 02a §8 fila 2.8 | _ejemplos/cerrajeros-madrid-24h/calculation.md |
| 2.9 Inventario por tipo | `HP=1, SO=5, GH=1, LBS=5, AC=1, GAs=15` | 02a §8 fila 2.9 | _ejemplos/cerrajeros-madrid-24h/inventario.json |
| 3.1 Spreadsheet Name | `Cerrajeros Madrid 24h – GMB Crush Website Architecture` | 03a §8 fila 3.1 | _ejemplos/cerrajeros-madrid-24h/ (referencia) |
| 3.2 GeoHub URL Style | `Option A → /madrid/` | 03a §8 fila 3.2 | _ejemplos/cerrajeros-madrid-24h/url-config.json |
| 3.3 Additional Category Slug | `duplicado-llaves` | 03a §8 fila 3.3 | _ejemplos/cerrajeros-madrid-24h/slugs.json |
| 3.4 GeoArticle Topics (15) | `cuanto-cuesta-un-cerrajero-urgente, que-hacer-si-no-puedes-entrar-casa, cuanto-tarda-un-cerrajero, cuanto-cuesta-abrir-una-puerta, que-hacer-si-te-dejas-las-llaves-dentro, apertura-de-puertas-sin-romper-cerradura, cuando-cambiar-la-cerradura-de-casa, cambio-de-cerradura-tras-perder-llaves, cerradura-nueva-o-reparacion, cuando-cambiar-el-bombin, bombin-antibumping-madrid, cambio-de-bombin-sin-cambiar-cerradura, mejores-cerraduras-de-seguridad-para-viviendas, cerraduras-de-seguridad-para-comunidades, instalar-cerradura-de-seguridad-en-puerta-blindada` | 03a §9.1 + 02a §9.1 (lista completa) | _ejemplos/cerrajeros-madrid-24h/topics.md |
| 3.5 URL Matrix | `28 URLs base SEO + 1 auxiliar /contacto/ = 29 filas` | 03a §8 fila 3.5 + 03a §9.1 | _ejemplos/cerrajeros-madrid-24h/url-matrix.json (28+1) |
| 3.6 IDs por tipo | `HP-001, SO-001..005, GH-001, LBS-001..005, AC-001, GA-001..015, AUX` | 03a §8 fila 3.6 | _ejemplos/cerrajeros-madrid-24h/url-matrix.json |
| 3.10 Priority + Phase | `HP-001 P1+Ph1, LBS-001 P1+Ph1, SO P2+Ph2, GH P2+Ph2, GAs P3-4+Ph3-4` | 03a §8 fila 3.10 + 08a §8 fila 8.10 | _ejemplos/cerrajeros-madrid-24h/priorities.json |
| 4.1 Canonical Domain | `https://www.cerrajerosmadrid24h.com` | 04a §8 fila 4.1 | _ejemplos/cerrajeros-madrid-24h/url-config.json |
| 4.2 Trailing Slash | `Yes` | 04a §8 fila 4.2 | _ejemplos/cerrajeros-madrid-24h/url-config.json |
| 5.2 SO Pattern | `/cerrajero/{service}/` × 5 | 05a §8 fila 5.2 | _ejemplos/cerrajeros-madrid-24h/url-matrix.json |
| 5.3 LBS Pattern | `/cerrajero/madrid/{service}/` × 5 | 05a §8 fila 5.3 | _ejemplos/cerrajeros-madrid-24h/url-matrix.json |
| 5.4 AC Pattern | `/cerrajero/madrid/duplicado-llaves/` × 1 | 05a §8 fila 5.4 | _ejemplos/cerrajeros-madrid-24h/url-matrix.json |
| 5.5 GeoHub Pattern | `/madrid/` × 1 | 05a §8 fila 5.5 | _ejemplos/cerrajeros-madrid-24h/url-matrix.json |
| 5.6 GA Pattern | `/madrid/{topic}/` × 15 | 05a §8 fila 5.6 + 02a §9.1 | _ejemplos/cerrajeros-madrid-24h/url-matrix.json |
| 6.17 areaServed | `Madrid + 4 LCAs Direct (Almagro, Chamberí, Salamanca, Retiro)` en LocalBusiness | 06a §8 fila 6.17 | _ejemplos/cerrajeros-madrid-24h/schemas/local-business.json |
| 7.4 GeoHub outbound | `21 outbound desde /madrid/` (5 LBS + 1 AC + 15 GAs) | 07a §8 fila 7.4 | _ejemplos/cerrajeros-madrid-24h/internal-links.json |
| 7.7 GA→LBS conexiones | `30 conexiones (15 GA → LBS + 15 GA → GeoHub)` | 07a §8 fila 7.7 | _ejemplos/cerrajeros-madrid-24h/internal-links.json |
| 8.2 Revenue Value | `LBS Cerrajero urgente Madrid: 5; LBS Bombines: 4; GA: 3` | 08a §8 fila 8.2 | _ejemplos/cerrajeros-madrid-24h/scores.json |
| 8.7 Conversion Urgency | `LBS Cerrajero urgente: 5; LBS Apertura: 5; LBS Bombines: 4; LBS Cambio cerraduras: 4; LBS Instalación: 3; GA: 1-3` | 08a §8 fila 8.7 | _ejemplos/cerrajeros-madrid-24h/scores.json |
| 8.8 Total Score | `HP: 29; LBS-001: 29; GA principal: 22; SO: 23` | 08a §8 fila 8.8 | _ejemplos/cerrajeros-madrid-24h/scores.json |
| 10.1 Publishing Capacity | `5 páginas/semana` | 10a §8 fila 10.1 | _ejemplos/cerrajeros-madrid-24h/calendar.md |
| 10.2 Content Team | `1 SEO 40% + 1 Writer 60% + 1 Operador` | 10a §8 fila 10.2 | _ejemplos/cerrajeros-madrid-24h/calendar.md |
| 10.4 Fase 1 | `7 páginas (HP + 5 SO + GH) en 2 semanas` | 10a §8 fila 10.4 | _ejemplos/cerrajeros-madrid-24h/calendar.md |
| 10.5 Fase 2 | `6 páginas (5 LBS + 1 AC) en 2 semanas` | 10a §8 fila 10.5 | _ejemplos/cerrajeros-madrid-24h/calendar.md |
| 10.6 Fase 3 | `15 GAs en 3 semanas` | 10a §8 fila 10.6 | _ejemplos/cerrajeros-madrid-24h/calendar.md |
| 14.4 Modelo de negocio | `Service Area Business` | 14a §11 fila 14.4 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 14.5 Categoría confirmada | `Cerrajero` (Primary) + GBP Name `Cerrajeros Madrid 24h` (sin keyword stuffing) | 14a §11 fila 14.5 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 14.6 Adicionales confirmadas | `Servicio de cerrajería de urgencia, Servicio de duplicado de llaves` | 14a §11 fila 14.6 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 14.6 Descartadas | `Tienda de llaves, Servicio de seguridad, Reparación de puertas` | 14a §11 fila 14.6 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 14.7 Servicios mapeados | `Cerrajero urgente→LBS-001, Apertura→LBS-002, Cambio cerraduras→LBS-003, Cambio bombines→LBS-004, Instalación→LBS-005, Duplicado llaves→AC-001` | 14a §11 fila 14.7 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 14.8 URL web GBP | `https://www.cerrajerosmadrid24h.com/` (HP-001) | 14a §11 fila 14.8 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 14.9 URL UTM | `https://www.cerrajerosmadrid24h.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp` | 14a §11 fila 14.9 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 14.10 GBP Description | `Cerrajeros Madrid 24h ofrece servicios de cerrajería en Madrid…` + `24 horas` | 14a §11 fila 14.10 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 14.11 Plan fotos | `Logo (Sí), Cover (Sí), Exterior (procede), Interior (no prioritario en SAB), Team (Sí), Vehicle (Sí), Work examples (Sí), Local context (Sí)` | 14a §11 fila 14.11 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 14.12 Plan Q&A | `¿Ofrecéis cerrajero urgente en Madrid? / ¿Atendéis en Chamberí, Salamanca y Retiro? / ¿Podéis hacer apertura de puertas sin dañar la cerradura?` | 14a §11 fila 14.12 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 14.13 Plan posts | `Presentación (HP-001), Cerrajero urgente 24h (LBS-001), Cambio de cerraduras y bombines (LBS-003/LBS-004)` | 14a §11 fila 14.13 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 14.19 Tracking baseline keywords | `cerrajero madrid, cerrajero urgente madrid, apertura de puertas madrid, cambio de cerraduras madrid` | 14a §11 fila 14.19 | _ejemplos/cerrajeros-madrid-24h/gbp-plan.md |
| 15.3 Homepage redactada | `1,050 palabras (rango 900-1,300 ✓)` | 15a §8 fila 15.3 | _ejemplos/cerrajeros-madrid-24h/content/homepage.md |
| 15.5 LBS redactadas | `5 LBS de 800-1,000 palabras + 10 LCAs naturales` | 15a §8 fila 15.5 | _ejemplos/cerrajeros-madrid-24h/content/lbs/*.md |
| 15.6 AC redactada | `880 palabras (duplicado-llaves)` | 15a §8 fila 15.6 | _ejemplos/cerrajeros-madrid-24h/content/ac.md |
| 15.7 GeoHub redactado | `980 palabras + 22 internal links` | 15a §8 fila 15.7 | _ejemplos/cerrajeros-madrid-24h/content/geohub.md |
| 15.9 Contacto redactada | `/contacto/ de 320 palabras + form + ContactPoint schema` | 15a §8 fila 15.9 | _ejemplos/cerrajeros-madrid-24h/content/contacto.md |
| 16.1 Identidad Visual | `colores rojo/negro/amarillo + Inter + tokens completos` | 16a §8 fila 16.1 | _ejemplos/cerrajeros-madrid-24h/visual-tokens.json |
| 17.5 Páginas construidas | `28+1 = 29 archivos .astro en src/pages/` | 17a §8 fila 17.5 | _ejemplos/cerrajeros-madrid-24h/build/dist/* |
| 17.8 Build local | `pnpm build ✓ 29 pages, 0 errors, 14.32s` | 17a §8 fila 17.8 | _ejemplos/cerrajeros-madrid-24h/build/log.txt |
| 18.6 Sitio en Producción | `5/5 checks post-deploy (sitemap + robots + schemas + responsive + 200 OK)` | 18a §8 fila 18.6 | _ejemplos/cerrajeros-madrid-24h/deploy.md |

---

## Sección 8: Cross-refs entre pasos (dependencias)

| Output | Hereda de | Tipo de dependencia |
|---|---|---|
| 1.7 Main City | 1.4 NAP (City) | extracción de campo |
| 1.8 Physical Location City | Bloque 0 Input 3 | herencia directa |
| 1.10 Direct LCAs | 1.4 NAP | extracción barrio/distrito |
| 2.1 GBP Categories Status | 1.5 + 1.6 | herencia con marca de status |
| 2.2 Primary Category Slug | Paso-03 §4 intake | herencia cross-paso (slug vive en Paso 3) |
| 2.3 Main City Slug | Paso-03 §4 intake | herencia cross-paso |
| 2.4 Service Slugs | Paso-03 §4 intake | herencia cross-paso (5 slugs) |
| 2.5 Variable S | 1.9 Servicios | count |
| 2.6 Variable A | 1.6 Additional Categories | count condicional |
| 2.7 Variable G | 1.12 G | herencia directa |
| 2.8 Total páginas | 2.5 + 2.6 + 2.7 | fórmula |
| 2.9 Inventario por tipo | 2.5 + 2.6 + 2.7 | desglose fórmula |
| 2.10 Optional Expansion | 1.11 | activación condicional |
| 3.5 URL Matrix | 2.8 + 2.9 + 1.X + 2.X | composición |
| 3.6 IDs | 3.5 | aplicación convención |
| 3.7 Parent Page | 3.5 + Doctrina | mapping doctrinal jerárquico |
| 3.8 Schema | 3.5 + Doctrina | mapping doctrinal por page type |
| 3.9 Required Internal Links | 3.5 + Doctrina §7 | mapping doctrinal |
| 3.10 Priority + Phase | 3.5 + Doctrina | mapping doctrinal por page type |
| 4.1 Canonical Domain | 1.2 | herencia + transformación HTTPS+www+trailing |
| 4.5 GeoHub URL Style | 3.2 | herencia directa |
| 4.9 LCAs no URLs | 1.10 + Doctrina | aplicación regla |
| 4.10 Approved Expansion URLs | 1.11 | activación condicional |
| 4.13 Slugs limpios | 2.2 | validación |
| 4.14 No falsa ubicación | 1.8 + 1.11 | validación cruzada |
| 5.1 Spec HP | 1.1 + 1.4 + 1.13 + 1.14 + 4.3 | composición spec |
| 5.2 Spec SO | 1.9 + 2.4 + 4.4 | composición × S instancias |
| 5.3 Spec LBS | 1.9 + 1.10 + 2.4 + 4.6 | composición × S × Main City |
| 5.4 Spec AC | 1.6 + 3.3 + 4.7 | composición × A instancias |
| 5.5 Spec GH | 1.7 + 1.10 + 2.3 + 4.5 | composición × 1 instancia |
| 5.6 Spec GA | 1.7 + 3.4 + 4.8 | composición × G×S instancias |
| 5.9 CTA Validación | 1.13 + Doctrina | mapping CTAs × page types |
| 5.10 No false location | 1.8 + 1.10 + 4.14 | validación cruzada |
| 6.1 Principio Main City | 1.7 | aplicación regla |
| 6.2 Principio LCAs enriquecen | 1.10 | aplicación regla |
| 6.3 Principio AEAs | 1.11 | activación condicional |
| 6.5 Principio No falsa ubicación | 1.8 | aplicación regla |
| 6.6-6.11 Content Architecture | 3.5 + 5.X | composición |
| 6.12 Tabla LCAs por page type | 1.10 | derivación |
| 6.15 Reviews y trust contextualizados | 1.14 | mapping × page types |
| 6.17 areaServed | 1.10 | composición schema |
| 7.X (todas las reglas linking) | 3.5 (URL Matrix) | aplicación reglas a matriz |
| 7.8 LCAs sin enlaces | 1.10 + 4.9 | validación |
| 7.9 Anchor text | 1.1 + 1.13 | composición catálogo |
| 7.15 Expansion linking | 1.11 | activación condicional |
| 8.2 Revenue Value | 1.9 + Google Search | scoring |
| 8.3 Search Intent | 1.9 + KR | scoring |
| 8.4 GBP Category Relevance | 1.5 + 1.6 + LP | scoring |
| 8.5 Local Relevance | 1.7 + 1.8 + 1.10 | scoring |
| 8.6 Competition Gap | 1.7 + 1.9 + LP + KR | scoring |
| 8.7 Conversion Urgency | 1.9 + 1.13 | scoring |
| 8.8 Total Score | 8.2-8.7 | suma simple |
| 8.9 Priority Tiers | 8.8 | mapping thresholds |
| 8.10 Publish Phase | 8.9 + 2.10 | cruce tier × dependencias |
| 8.11 Validación Landing antes GA | 3.5 + 8.10 | validación phase(parent) < phase(GA) |
| 8.13 Validación LCAs sin score | 1.10 + 4.9 | validación |
| 8.14 Inventario priorizado | 3.5 + 8.8-8.10 | composición |
| 9.1 Plantilla QA | 8.14 | template por URL |
| 9.2 Regla URL QA | 4.3-4.8 | validación contra patrón |
| 9.3 Regla Page Type QA | 5.1-5.6 + 6.6-6.11 | validación contra spec |
| 9.4 Regla One service only | 1.9 + 5.3-5.6 | validación |
| 9.5 Regla One Main City | 1.7 | validación |
| 9.6 Regla Local Coverage | 1.10 + 4.14 | validación |
| 9.7 Regla No fake location | 1.4 + 1.8 + 4.14 + 5.10 | validación cruzada múltiple |
| 9.8 Regla Metadata | 5.1-5.6 | validación |
| 9.9 Regla Word count | 5.8 | validación rangos |
| 9.10 Regla Schema | 5.7 + 6.17 | validación |
| 9.11 Regla Enlaces internos | 7.11 | validación matriz |
| 9.12 Regla Canibalización | 4.15 | validación |
| 9.13 Regla CTA | 5.9 + 1.13 | validación |
| 9.14 Final Publish Gate | 9.2-9.13 | consolidación |
| 9.15 GBP Not Created Checklist | 1.3 | validación condicional web-first |
| 10.4-10.6 Fases 1-3 | 2.9 + 8.10 | composición por phase |
| 10.7 Fase 4 | 10.9 | revisión cíclica |
| 10.8 Fase 5 | 1.11 | activación condicional |
| 10.9 Calendario | 10.1 + 10.4-10.8 | composición |
| 10.10 Matriz dependencias | 3.7 + 8.10 | cruce parent × phase |
| 10.13 Validación Bloques 1-2 cerrados | Bloques 1+2 + Pasos 8+9 | validación cierre |
| 11.1-11.16 Funciones | Bloques 1-3 (todas) | formalización algorítmica |
| 12.1 Master Prompt | Paso-11 + Bloques 1-3 | composición |
| 12.7 Web-First Rule | 1.3 + 9.15 | aplicación regla |
| 12.12 Validación web-first | 1.3 + 9.15 | validación cross-cutting |
| 13.X (todos) | Pasos 1-12 | compilación SOP |
| 14.3 NAP final | Paso-01 1.4 | herencia + cruce post-Paso 18 |
| 14.5 Categoría principal | Paso-01 1.5 | confirmación |
| 14.6 Adicionales confirmadas | Paso-01 1.6 + LP | confirmación con benchmark |
| 14.7 Servicios mapeados | Paso-01 1.9 + Paso-05 5.4 + 5.5 | mapping GBP→web |
| 14.8 URL web GBP | Paso-04 4.3 | selección Homepage |
| 14.9 URL UTM | Tracking | tracking config |
| 14.16 Schema update | Paso-03 3.8 | actualización post-verificación |
| 14.17 Homepage update | Paso-05 5.3 | actualización post-verificación |
| 14.18 Contact page update | Paso-05 5.X | actualización post-verificación |
| 14.19 Tracking baseline | Paso-19 19.1 + Tracking | configuración |
| 15.3-15.9 Páginas redactadas | Paso-05 5.X + Paso-06 6.X + Paso-12 12.3 | aplicación Auxiliary Prompt |
| 15.5 LBS Pages | Paso-05 5.5 + Paso-06 6.8 + Paso-01 1.10 | redacción × S × LCAs naturales |
| 16.2 Layout y Estructura | Paso-05 5.3-5.8 + Paso-06 6.6-6.11 | mapping secciones × page types |
| 16.4 Design Tokens | 16.1 | conversión a tailwind.config.js |
| 16.5 Reglas CSS | 16.4 | derivación |
| 16.6 Layout-Map | 16.2 + 15.3-15.9 | composición |
| 17.4 Header+Footer+Layout | Paso-07 7.11 + Paso-16 16.6 | composición |
| 17.5 Páginas construidas | Paso-03 3.5 + Paso-15 15.3-15.9 + Paso-16 16.6 | iteración URL Matrix |
| 17.6 Schemas implementados | Paso-05 5.9 + Paso-06 6.17 + Paso-09 9.10 | embedding JSON-LD |
| 17.8 Build local | 17.2-17.7 | validación pnpm build |
| 18.1-18.4 Auditorías | múltiples upstream | validación 35 criterios |
| 18.6 Sitio en Producción | 18.1-18.5 | deploy múltiple por fase |
| 18.7 Sitemap GSC | 18.6 | post-deploy |
| 19.1 Tablero vigilancia | Paso-13 13.8 + Paso-18 18.7 + Tracking | configuración dashboards |
| 19.2 Estado triggers | 19.1 | cruce con criterios |
| 19.3 Análisis SERP + decisión | 19.2 + 8.6 + Doctrina+LP | decisión basada en datos |
| 19.4 Log decisiones | 19.3 + Paso-13 13.7 | registro plantilla |
| 19.5 URL Matrix actualizada | 19.4 + 1.11 + 11.11 | aplicación generate_expansion |

---

## Sección 9: Concepts NO doctrinales (proceso/estructura — VAN FUERA del sistema v2)

| Concepto | Por qué fuera | Acción |
|---|---|---|
| Esqueleto canónico de a-doc (4 bloques I/II/III/IV) | Era convención de cómo escribir markdowns; v2 no usa a-docs (usa repo Astro + JSON parametrizable) | descartar — pero conservar la idea de "ID/Output/Tipo/Fuente/Hereda de" como esquema en JSON |
| Formato §5 / §8 tablas Outputs | Convención de presentación; v2 lo absorbe en JSON estructurado de cada paso | descartar formato literal; mantener semántica |
| Cómo nombrar elementos: `# Paso N — [Título]`, `## [Nombre] <small>§N</small>` | Convención de docs markdown del sistema v1 | descartar (v2 usa estructura de directorios) |
| Outputs aparecen 4 veces (§4 / §5 / §6 / §8) | Diseño didáctico del a-doc; redundancia útil para humano | descartar (one-source-of-truth en JSON) |
| Formato A vs Formato B (Outputs Consolidados compuestos) | Convención de cómo representar outputs multi-valor en tabla markdown | descartar formato; mantener concepto en JSON arrays |
| 3 carpetas por bloque: `01 Plan Ejecución / 02 Ejecución / 03 Consolidación Outputs` | Estructura del repo v1; v2 reorganiza por TEMA no por paso | descartar |
| 5 status (`confirmed` / `⚠ inferido` / `validated` / `⚠ placeholder` / `no aplica`) | Útil pero solo como concepto, no como tabla por output del documento markdown | doctrina/status.md (concepto) — implementar como enum en scripts/* |
| Marcador `⚠` en texto / listas / tablas | Convención visual del v1 markdown | doctrina/warnings-doctrinales.md — implementar como flag en JSON output |
| Resumen de status al cierre de cada paso (Convenciones §2 Regla 2) | Convención v1 de reporting | scripts/qa-check.ts genera reporte equivalente |
| Tabla §3 "Info heredada de pasos anteriores" | Convención v1 — trazabilidad explícita en cada a-doc | derivable automáticamente del lookup `← X.Y` |
| 14 reglas operativas (§22-§34) + 10 reglas doctrinales (§7-§16) + 16 reglas operativas (§36-§51) compilados como output 12.8/12.13/13.4 | Compilaciones documentales literales del original | doctrina/reglas-literales.md (referencia documental, no operativo) |
| 13 preguntas checklist final (§52) + 8 outputs Paso 13 (§53) | Compilación documental literal | doctrina/reglas-literales.md (referencia) |
| Workflow operativo de 21 pasos (§25 original) | Referencia documental al original (flujo real es distinto) | doctrina/reglas-literales.md (referencia) |
| Carpetas recomendadas del repo (§26 original) `docs/01-... 13-...` | Referencia documental al original (estructura real es distinta) | doctrina/reglas-literales.md (referencia) |
| Calendario doctrinal de 7 fases × semanas 1-8 (§54.4) | Referencia documental al original | doctrina/reglas-literales.md (referencia) |
| Bloque 6 "Info que falta" como agregador documental | Diseño operativo v1 (recoge ⚠ heredados); v2 lo automatiza | scripts/qa-check.ts (gate consolidado pre-Bloque 7) |
| Plan de Ejecución por Bloque (`00a-plan-ejecucion-bloque-N.md`) | Convención v1 de planning antes de ejecutar | descartar — v2 usa scripts/new-cliente.ts + README.md |
| Consolidación Outputs por Bloque (`bloque-N-consolidado.md`) | Convención v1 de cierre de bloque | descartar — v2 genera reporte automático |
| Validación post-fix con grep (Convenciones §3 Regla 7) | Convención de auditoría de fidelidad post-portado | doctrina/fidelidad-original.md (mantener como check de regresión) |
| Conteos upstream "43/59/14/8 = 124 outputs" (Bloque 3 nota fidelidad) | Conteos fabricados en versión anterior — no doctrinales | descartar (warning histórico) |
| 5 categorías QA agrupadas (Estructural/Local/Contenido/Conexión/Semántico) | Taxonomía inventada — original tiene 12 reglas QA sin categorización | descartar (warning histórico — usar 12 reglas literales) |
| Master Prompt principal 12.1 (~580 líneas literales) | Documental — flujo real ejecuta solo Auxiliary Prompts en Paso 15 | doctrina/prompts.md (referencia documental) |
| `Operador decisión` como fuente | Removido en unificación — sustituido por `Arquitectura técnica` | descartar (warning histórico) |
| `Diseño` como fuente | Removido — assets visuales = `Cliente preflight`; reglas estéticas = `Doctrina` | descartar (warning histórico) |
| `IA sin respaldo` como fuente | Removido — no es fuente sino status `⚠ inferido` | descartar (warning histórico) |
| `Cliente confirmación` como fuente standalone | Removido en unificación — absorbido en `Cliente preflight` (puro o combinado) | descartar (warning histórico) |
| `Local Pack` / `Keyword research` / `Google Search` como fuentes standalone | Removidos en unificación — absorbidos en combinaciones doctrinales | descartar (warning histórico) |
| `Doctrina + Cliente confirmación` como fuente | Removido en unificación 4 outputs → `Cliente preflight + Doctrina`; 2 → `Cliente preflight` | descartar (warning histórico) |
| Histórico de unificaciones (12→11→9→8 fuentes) | Trazabilidad histórica de cambios al catálogo | doctrina/fuentes.md (sección "Historia") |
| Output 3.12 Notes estratégicas | "no aplica" — comentarios libres del operador en spreadsheet, no output formal | descartar |
| Output 10.3 CMS + capabilities | "no aplica" — stack canónico fijado en 17.2 | descartar |
| Output 15.13 Validación datos verificables | "no aplica" — duplica 9.15 | descartar |
| Output 16.3 Propuesta de Diseño aprobada | "no aplica" — sistema deriva diseño de 16.1 sin ciclo mockup→aprobación | descartar |
| Output 17.1 Acta de Lectura y Autocontraste | "no aplica" — procedimiento operativo previo, no output declarado | descartar (mantener como checklist en scripts/qa-check.ts) |
| Aviso ⚠ Seguridad: tokens en entorno seguro NO en markdown | Convención operativa | doctrina/seguridad.md + .env.example |
| Bloqueo de publicación post-Paso 9 (gate doctrinal) | Diseño operativo — Final Publish Gate Pass requerido | scripts/qa-check.ts (return code) |
| Cascada automática (resuelve N outputs deterministas) | Diseño operativo — outputs computados sin acción humana | scripts/* (cascada automatizada) |
| Bloque A/B/C/D/E/F en consolidados (acciones para promover ☐→confirmed) | Convención de planning v1 | descartar — v2 genera lista de pendientes desde JSON status |
| Convenciones de cross-refs `Paso-NN N.X` (no por sección) | Convención v1 de IDs robustos | doctrina/fidelidad-original.md (mantener convención si se conservan referencias) |

---

## Sección 10: Filas con destino "???" (huecos detectados)

| Concepto | Origen v1 | Por qué no sé dónde va |
|---|---|---|
| (vacío) | — | — |

> **Nota auditor:** todas las reglas doctrinales, outputs únicos, schemas, validaciones, ejemplos rellenados y cross-refs identificados en los 47 archivos del v1 tienen al menos un destino claro en el v2 (`doctrina/*` para docs y reglas, `plantilla-cluster/*` para el repo Astro parametrizable, `scripts/*` para automatización, `_ejemplos/cerrajeros-madrid-24h/*` como fixture). Los conceptos de proceso/estructura puramente documentales del v1 (esqueleto canónico de a-doc, formatos de tabla, planes-ejecución, consolidados, agregador Bloque 6) van a "Sección 9: descartar" con su justificación.

---

## Resumen

- **Total reglas doctrinales identificadas:** 69 (Sección 1)
- **Total fuentes catalogadas:** 10 (Sección 2: 8 fuentes activas + Info heredada + no aplica)
- **Total outputs catalogados:** 250 filas en Sección 3 (= 8 inputs preflight + 242 outputs del sistema; 5 marcados `no aplica`)
  - Bloque 0 Preflight: 8 inputs
  - Bloque 1 Fundamentos: 42 outputs
  - Bloque 2 Arquitectura: 57 outputs
  - Bloque 3 Priorización: 43 outputs
  - Bloque 4 Automatización: 41 outputs
  - Bloque 5 Salida a Mercado: 39 outputs
  - Bloque 7 GBP: 20 outputs
  - **Total outputs: 242** (esperado: 242 ✓)
- **Total schemas + page types:** 6 page types con schema mapping (Sección 4) — esperado 6 ✓
- **Total validaciones/QA:** 39 validaciones (Sección 5: 12 reglas QA + 27 validaciones cross-cutting); 7 reglas de fidelidad; 5 reglas de status
- **Total reglas linking:** 15 reglas (Sección 6: 7.1-7.15)
- **Total ejemplos rellenados Cerrajeros:** 65 valores concretos (Sección 7)
- **Total cross-refs cataloging:** 96 dependencias entre pasos (Sección 8)
- **Total conceptos descartados:** 38 conceptos NO doctrinales (Sección 9)
- **Total filas con destino "???":** 0 ✓ (Sección 10 vacía — todos los conceptos tienen destino claro)
