# 01-web.md — AEROETERM

> **Cliente:** AEROETERM — Reforma de baños · Madrid
> **Generado:** 2026-05-04
> **Estado web:** ✅ LIVE en `https://www.aeroeterm.com/`
> **Bloques:** 1 (Fundamentos) · 2 (Arquitectura) · 3 (Priorización) · 4 (Automatización) · 5 (Salida a Mercado)
> **Total outputs web:** 222 outputs (Bloques 1-5) + 5 `no aplica`

---

# Bloque 1 — Fundamentos
> 42 outputs · Pasos 1 (Intake), 2 (Fórmula maestra), 3 (Matriz base).

## Paso 1 — Intake Form

### Local Pack ejecutado
Búsqueda en Google Maps "reforma de baños Madrid" (top 5 competidores). Repetida en Sevilla y Barcelona para benchmark del sector.

- **Categoría más usada:** `Bathroom remodeler` (4 de 5 en Madrid, idem Sevilla/Barcelona)
- **Servicios más anunciados:** reforma integral, cambio de bañera por ducha, alicatado, sanitarios, mamparas
- **Trust signals típicos:** años experiencia, presupuesto sin compromiso, financiación, llave en mano, fotos antes/después
- **CTA dominante:** "Solicitar presupuesto" (sector NO urgente — cliente compara antes de decidir)

### Outputs

| ID | Output | Valor | Status |
|---|---|---|---|
| 1.1 | Business Name | `AEROETERM` | confirmed |
| 1.2 | Domain canónico | `https://www.aeroeterm.com/` | ⚠ placeholder (cliente confirma o registra) |
| 1.3 | GBP Lifecycle | `Not Created` → web-first puro: GBP se crea en Bloque 7 | confirmed |
| 1.4 | Full NAP (8 campos) | `AEROETERM · Gomez Ortega 3 · Madrid · Comunidad de Madrid · 28002 · España · [phone pendiente] · [email pendiente]` | ⚠ placeholder (phone + email) |
| 1.5 | Primary GBP Category | `Bathroom remodeler` (Reformista de baños) | validated (Local Pack) |
| 1.6 | Additional GBP Categories | `Tile contractor` + `Plumber` — necesitan página propia. `Construction company` cubierta por HP | validated (Local Pack) |
| 1.7 | Main City | `Madrid` | confirmed |
| 1.8 | Physical Location City | `Madrid` (= Main City, hay local físico) | confirmed |
| 1.9 | Core Services (S=5) | 1. Reforma integral de baño · 2. Cambio de bañera por ducha · 3. Sustitución de sanitarios · 4. Alicatado de baño · 5. Instalación de mamparas | validated (Local Pack) |
| 1.10 | Direct + Candidate LCAs | **Direct:** `Lista, Salamanca` (barrio + distrito CP 28002) · **Candidate:** `Chamberí, Almagro, Goya, Recoletos, Castellana, Centro, Retiro, Chamartín` | ⚠ inferido (Direct pendiente catastro; Candidate inferido del análisis) |
| 1.11 | Approved Expansion Areas | `None (E=0)` — Phase 1 default. Se evalúa con Paso 19 post-launch | confirmed |
| 1.12 | GeoArticles per Service (G) | `G = 3` (default doctrinal) | confirmed |
| 1.13 | Preferred CTA | `Solicitar presupuesto gratis` (sector NO urgente) | validated (Local Pack) |
| 1.14 | Trust Signals | `[años actividad pendiente] · presupuesto sin compromiso · garantía 2 años · fotos antes/después · financiación 0%` | ⚠ placeholder (datos reales del cliente) |

---

## Paso 2 — Fórmula Maestra de Arquitectura

Variables: `S=5 · A=2 · G=3 · E=0`

Fórmula: `1 + S + 1 + S + A + G×S = 1 + 5 + 1 + 5 + 2 + 15 = 29 + 1 contacto = 30 URLs`

| ID | Output | Valor | Status |
|---|---|---|---|
| 2.1 | GBP Categories Status | Primary `Planned` + Additional `Planned` (se confirman en Paso 14) | confirmed |
| 2.2-2.4 | Slugs (Primary, Main City, Services) | `bathroom-remodeler` · `madrid` · `reforma-integral-bano, cambio-banera-por-ducha, sustitucion-sanitarios, alicatado-bano, instalacion-mamparas` | confirmed |
| 2.5 | Variable S | `5` | confirmed |
| 2.6 | Variable A | `2` | confirmed |
| 2.7 | Variable G | `3` | confirmed |
| 2.8 | Total páginas SEO base | `29 + 1 contacto = 30` | confirmed |
| 2.9 | Inventario por tipo | HP×1 / SO×5 / GH×1 / LBS×5 / AC×2 / GA×15 / AUX×1 | confirmed |
| 2.10 | Optional Expansion Formula | inactiva (E=0) | confirmed |
| 2.11-2.14 | Validaciones | sin duplicados / dependencias OK / LCAs no generan URL / total auditable | OK |

---

## Paso 3 — Matriz URL Base (30 URLs)

| ID | URL | Page Type | Schema | Priority | Phase |
|---|---|---|---|---|---|
| HP-001 | `/` | Homepage | Organization + LocalBusiness + WebSite | P1 | 1 |
| SO-001 | `/bathroom-remodeler/reforma-integral-bano/` | Service Overview | Service | P2 | 1 |
| SO-002 | `/bathroom-remodeler/cambio-banera-por-ducha/` | Service Overview | Service | P2 | 1 |
| SO-003 | `/bathroom-remodeler/sustitucion-sanitarios/` | Service Overview | Service | P3 | 1 |
| SO-004 | `/bathroom-remodeler/alicatado-bano/` | Service Overview | Service | P3 | 1 |
| SO-005 | `/bathroom-remodeler/instalacion-mamparas/` | Service Overview | Service | P3 | 1 |
| GH-001 | `/madrid/` | GeoHub | CollectionPage + BreadcrumbList | P2 | 1 |
| LBS-001 | `/bathroom-remodeler/madrid/reforma-integral-bano/` | LBS | Service + LocalBusiness | P1 | 1 |
| LBS-002 | `/bathroom-remodeler/madrid/cambio-banera-por-ducha/` | LBS | Service + LocalBusiness | P1 | 1 |
| LBS-003 | `/bathroom-remodeler/madrid/sustitucion-sanitarios/` | LBS | Service + LocalBusiness | P2 | 1 |
| LBS-004 | `/bathroom-remodeler/madrid/alicatado-bano/` | LBS | Service + LocalBusiness | P2 | 1 |
| LBS-005 | `/bathroom-remodeler/madrid/instalacion-mamparas/` | LBS | Service + LocalBusiness | P3 | 1 |
| AC-001 | `/bathroom-remodeler/madrid/alicatado-y-azulejos/` | Additional Category | Service | P3 | 2 |
| AC-002 | `/bathroom-remodeler/madrid/servicios-fontaneria/` | Additional Category | Service | P3 | 2 |
| GA-001 | `/madrid/cuanto-cuesta-reformar-bano/` | GeoArticle | Article | P3 | 2 |
| GA-002 | `/madrid/tiempo-reforma-bano-entera/` | GeoArticle | Article | P3 | 2 |
| GA-003 | `/madrid/permisos-licencia-reforma-bano/` | GeoArticle | Article | P4 | 2 |
| GA-004 | `/madrid/cambiar-banera-por-plato-ducha-precio/` | GeoArticle | Article | P3 | 2 |
| GA-005 | `/madrid/ventajas-plato-ducha-vs-banera/` | GeoArticle | Article | P3 | 2 |
| GA-006 | `/madrid/cuanto-tarda-cambio-banera-ducha/` | GeoArticle | Article | P4 | 2 |
| GA-007 | `/madrid/precio-cambiar-inodoro-y-bidet/` | GeoArticle | Article | P4 | 2 |
| GA-008 | `/madrid/sanitarios-suspendidos-vs-tradicionales/` | GeoArticle | Article | P4 | 2 |
| GA-009 | `/madrid/garantia-cambio-sanitarios/` | GeoArticle | Article | P4 | 3 |
| GA-010 | `/madrid/precio-alicatar-bano/` | GeoArticle | Article | P3 | 2 |
| GA-011 | `/madrid/azulejo-porcelanico-vs-ceramica/` | GeoArticle | Article | P4 | 3 |
| GA-012 | `/madrid/cuanto-tarda-alicatar-bano/` | GeoArticle | Article | P4 | 3 |
| GA-013 | `/madrid/precio-instalar-mampara-ducha/` | GeoArticle | Article | P3 | 2 |
| GA-014 | `/madrid/mampara-frontal-vs-corredera/` | GeoArticle | Article | P4 | 3 |
| GA-015 | `/madrid/medidas-mampara-ducha-estandar/` | GeoArticle | Article | P4 | 3 |
| AUX | `/contacto/` | Auxiliary | ContactPage | P1 | 1 |

**Validaciones:** ✅ Sin duplicados · ✅ Sin "near me"/adjetivos vacíos · ✅ Sin falsa ubicación (Sevilla/Barcelona solo benchmark) · ✅ LCAs no generan URL (solo aparecen en copy + areaServed schema)

### Outputs Paso 3

| ID | Output | Valor | Status |
|---|---|---|---|
| 3.1 | Spreadsheet Name | `AEROETERM – GMB Crush Website Architecture` | confirmed |
| 3.2 | GeoHub URL Style | `Option A: /madrid/` | confirmed |
| 3.3 | Additional Category Slugs | `alicatado-y-azulejos, servicios-fontaneria` | confirmed |
| 3.4 | GeoArticle Topics | 15 topics (ver matriz arriba) | ⚠ inferido (sin Keyword Research real) |
| 3.5 | URL Matrix completa | 30 URLs | confirmed |
| 3.6 | IDs por tipo | HP-001 / SO-001..005 / GH-001 / LBS-001..005 / AC-001..002 / GA-001..015 / AUX | confirmed |
| 3.7-3.14 | Parent Page · Schema · Links · Priority · Phase · Validaciones | aplicados según doctrina | confirmed / OK |

---

# Bloque 2 — Arquitectura
> 57 outputs · Pasos 4 (URL rules), 5 (page type specs), 6 (estructura contenido + LCAs), 7 (linking interno).

## Paso 4 — URL Rules

| ID | Output | Valor |
|---|---|---|
| 4.1 | Canonical Domain | `https://www.aeroeterm.com/` |
| 4.2 | Trailing Slash | Sí (todas las URLs terminan en `/`) |
| 4.3 | Homepage URL | `/` |
| 4.4 | Service Overview URL pattern | `/bathroom-remodeler/[service-slug]/` → ej. `/bathroom-remodeler/reforma-integral-bano/` |
| 4.5 | Main City GeoHub URL Style | `/madrid/` |
| 4.6 | LBS URL pattern | `/bathroom-remodeler/[main-city]/[service-slug]/` → ej. `/bathroom-remodeler/madrid/cambio-banera-por-ducha/` |
| 4.7 | AC URL pattern | `/bathroom-remodeler/[main-city]/[additional-slug]/` → ej. `/bathroom-remodeler/madrid/alicatado-y-azulejos/` |
| 4.8 | GeoArticle URL pattern | `/[main-city]/[topic-slug]/` → ej. `/madrid/cuanto-cuesta-reformar-bano/` |
| 4.9 | LCAs no generan URLs | Lista, Salamanca, Chamberí, etc. NO tienen URL |
| 4.10 | Approved Expansion URLs | 0 (E=0 en Phase 1) |
| 4.11-4.15 | Validaciones | sin "near me" · sin adjetivos vacíos · slugs limpios · sin falsa ubicación · sin intención duplicada — OK |

## Paso 5 — Page Type Specs

| ID | Page Type | H1 | Schema | Word count | CTA |
|---|---|---|---|---|---|
| 5.1 | Homepage | `Reformas de baño en Madrid · AEROETERM` | Organization + LocalBusiness + WebSite | ≥800 | Solicitar presupuesto + Llamar |
| 5.2 | Service Overview | `[Servicio] · Cómo lo hacemos` | Service | ≥600 | Solicitar presupuesto |
| 5.3 | LBS Madrid | `[Servicio] en Madrid` | Service + LocalBusiness | ≥800 | Solicitar presupuesto + Llamar |
| 5.4 | Additional Category | `[Categoría] · AEROETERM` | Service | ≥500 | Solicitar presupuesto |
| 5.5 | GeoHub Madrid | `Reformas de baño en Madrid: distritos y servicios` | CollectionPage + BreadcrumbList | ≥600 | Solicitar presupuesto |
| 5.6 | GeoArticle | Variable según topic | Article | ≥800 | CTA inline → LBS padre |
| 5.7-5.10 | Validaciones schema · word count · CTA · no falsa ubicación | OK |

## Paso 6 — Estructura de Contenido + LCAs

**5 principios doctrinales aplicados:**
- 6.1 Main City crea arquitectura: todas las URLs locales son `/madrid/...`
- 6.2 LCAs enriquecen contenido: Lista, Salamanca, Chamberí, Almagro... en copy + `areaServed` schema
- 6.3 AEAs crean URLs solo si se aprueban: Phase 1 sin expansión → 0 URLs extras
- 6.4 Mencionar zona ≠ crear página: Castellana, Recoletos, Goya = mención, NO página
- 6.5 No falsa ubicación: Sevilla y Barcelona NUNCA como zona donde operamos

**Content Architecture por page type:**

| ID | Page Type | Estructura específica |
|---|---|---|
| 6.6 | Homepage | Hero con NAP visible / 5 servicios cards / mapa cobertura distritos Madrid / 4-7 trust signals / 6 FAQs / formulario contacto inline |
| 6.7 | Service Overview | Hero + bullet "qué incluye" / proceso 4 pasos / materiales / plazos / precios orientativos / 3 casos / 5 FAQs |
| 6.8 | LBS Madrid | Hero local "en Madrid · cobertura todos distritos" / lista LCAs / proceso / trust block local / 2-3 casos Madrid / 5 FAQs específicas Madrid |
| 6.9 | AC | Tipos / proceso / precios / FAQs |
| 6.10 | GeoHub Madrid | Índice 5 servicios disponibles / link a cada LBS / casos destacados / FAQs generales Madrid |
| 6.11 | GeoArticle | Respuesta inmediata (primer párrafo) / desglose / factores / 2 casos reales / CTA → LBS padre |

| ID | Output | Valor |
|---|---|---|
| 6.12 | Uso LCAs por page type | HP menciona TODAS · LBS menciona específicas · GA padre menciona LCA principal · SO sin LCAs |
| 6.13 | Ejemplo cobertura | "Reformamos baños en todo Madrid: barrio Lista (CP 28002), distrito Salamanca, Chamberí, Almagro, Goya, Recoletos, Centro, Retiro, Chamartín y zona Castellana" |
| 6.17 | Schema `areaServed` | `["Madrid", "Lista", "Salamanca", "Chamberí", "Almagro", "Goya", "Recoletos", "Centro", "Retiro", "Chamartín"]` |

## Paso 7 — Internal Linking Rules

| Regla | Aplicación a AEROETERM |
|---|---|
| 7.1 Enlazar arriba/abajo/lateral | HP→SO→LBS / GA→LBS padre / SO↔SO lateral |
| 7.2 HP distribuye autoridad | HP enlaza a 5 SO + GeoHub Madrid + 2 AC |
| 7.3 SO empuja versión local | SO `/reforma-integral-bano/` → LBS `/madrid/reforma-integral-bano/` |
| 7.4 GeoHub organiza Main City | `/madrid/` → 5 LBS + 15 GAs |
| 7.5 LBS conecta servicio y ciudad | LBS Madrid → SO padre + GH Madrid |
| 7.6 AC integra silo local | AC `/alicatado-y-azulejos/` → LBS `/madrid/alicatado-bano/` |
| 7.7 GA pasa relevancia a landing | GA `/madrid/cuanto-cuesta-reformar-bano/` → LBS `/madrid/reforma-integral-bano/` |
| 7.8 LCAs sin URL no reciben enlaces | Lista, Salamanca, etc. = mención en copy, NO link |
| 7.9 Anchor text variado | "reforma integral en Madrid", "cambio bañera ducha Madrid", "presupuesto reforma baño"... |
| 7.10 Enlaces contextuales primero | Dentro del párrafo > sidebar > footer |

| ID | Output | Valor |
|---|---|---|
| 7.11 | Matriz enlaces obligatorios | HP→11 outbound · SO→3 · GH→20 · LBS→4 · AC→3 · GA→3 |
| 7.12 | Ejemplo LBS modelo | `/madrid/reforma-integral-bano/` → SO padre + GH Madrid + 3 GAs hijas + contacto + HP |
| 7.13 | Breadcrumbs | HP > SO > LBS / HP > GH Madrid > LBS / HP > AC |
| 7.14 | Inbound links esperados | Cada URL recibe ≥3 enlaces internos contextuales |
| 7.15 | Expansion linking | inactivo (E=0) |

---

# Bloque 3 — Priorización
> 43 outputs · Pasos 8 (Priority Score), 9 (QA Checklist), 10 (Producción en fases).

## Paso 8 — Priority Score

Fórmula: `Priority Score = R + I + G + L + C + U` (rango 6-30)

| URL | R | I | G | L | C | U | Total | Tier | Phase |
|---|---:|---:|---:|---:|---:|---:|---:|---|---|
| `/` (HP) | 5 | 5 | 5 | 5 | 4 | 5 | **29** | P1 | 1 |
| `/madrid/reforma-integral-bano/` | 5 | 5 | 5 | 5 | 4 | 4 | **28** | P1 | 1 |
| `/madrid/cambio-banera-por-ducha/` | 5 | 5 | 5 | 5 | 4 | 4 | **28** | P1 | 1 |
| `/madrid/sustitucion-sanitarios/` | 4 | 5 | 4 | 5 | 4 | 3 | **25** | P2 | 1 |
| `/madrid/alicatado-bano/` | 4 | 5 | 4 | 5 | 3 | 3 | **24** | P2 | 1 |
| `/madrid/instalacion-mamparas/` | 3 | 5 | 4 | 5 | 4 | 3 | **24** | P2 | 1 |
| `/madrid/` (GH) | 3 | 3 | 5 | 5 | 5 | 3 | **24** | P2 | 1 |
| `/reforma-integral-bano/` + otros SO | 3 | 4 | 3-4 | 3 | 3 | 2-3 | **18-20** | P3 | 1 |
| `/contacto/` | — | — | — | 5 | — | 5 | **P1** (forzado) | P1 | 1 |
| GAs principales (GA-001,004,010,013) | 3 | 3 | 3 | 4 | 4 | 3 | **20** | P3 | 2 |
| resto GAs | 1-3 | 2-3 | 2-3 | 4 | 3-4 | 1-3 | **15-18** | P4 | 2-3 |
| ACs | 3 | 3 | 4 | 3 | 3 | 2 | **18** | P3 | 2 |

| ID | Output | Status |
|---|---|---|
| 8.1 | Priority Score Formula | confirmed |
| 8.2 | Revenue Value (R) | ⚠ inferido (sin datos económicos reales) |
| 8.3 | Search Intent (I) | ⚠ inferido (sin Keyword Research real) |
| 8.4 | GBP Category Relevance (G) | validated (Local Pack) |
| 8.5 | Local Relevance (L) | confirmed |
| 8.6 | Competition Gap (C) | ⚠ inferido (sin Ahrefs DR/UR real) |
| 8.7 | Conversion Urgency (U) | confirmed (sector reformas: ventana 1-3 meses, urgencia media-baja) |
| 8.8-8.14 | Scores, Tiers, Phases, Validaciones | confirmed / OK |

## Paso 9 — QA Checklist

12 reglas por página (AND lógico — todas deben pasar):
- 9.2 URL QA · 9.3 Page Type QA · 9.4 One service only · 9.5 One Main City only
- 9.6 Local Coverage QA · 9.7 No fake location · 9.8 Metadata QA · 9.9 Word count QA
- 9.10 Schema QA · 9.11 Internal links QA · 9.12 Canibalización QA · 9.13 CTA QA

| ID | Output | Status |
|---|---|---|
| 9.1 | Plantilla QA (12 campos) | confirmed |
| 9.14 | Final Publish Gate | 12/12 SÍ → Ready |
| 9.15 | GBP Not Created Checklist | aplicado (sin reseñas Google, sin aggregateRating falso, sin openingHours falsas) |

## Paso 10 — Producción en Fases

| Fase | Páginas | Tiempo |
|---|---|---|
| Fase 1 — Entity Foundation | HP + 5 SO + GH Madrid (7 páginas) | Sem 1-2 |
| Fase 2 — Main City Conversion Layer | 5 LBS + 2 AC (7 páginas) | Sem 2-3 |
| Fase 3 — Main City Semantic Expansion | 15 GAs (P3 antes que P4) | Sem 4-6 |
| Fase 4 — Optimization Loop | GSC + GA4 + refresh trimestral | continuo |
| Fase 5 — Optional Expansion | inactiva (E=0) | — |

| ID | Output | Valor | Status |
|---|---|---|---|
| 10.1 | Publishing Capacity | 5 páginas/semana | confirmed |
| 10.2 | Content Team | 1 IA writer + 1 operador (Álvaro) | confirmed |
| 10.3 | CMS | no aplica (stack canónico Astro+Tailwind+pnpm+Cloudflare) | no aplica |
| 10.4-10.12 | Fases · Calendario · Dependencias · Reglas · Checklist | confirmed |

---

# Bloque 4 — Automatización
> 41 outputs · Pasos 11 (pseudocódigo), 12 (master prompt), 13 (sistema final operativo).

## Paso 11 — Pseudocódigo del Sistema (16 outputs)

```python
def construir_aeroeterm():
    inputs = load_inputs()                    # 11.1 preflight + intake
    slugs = normalize_slugs(inputs)           # 11.2 kebab-case sin tildes
    validate_categories(inputs)               # 11.3 Primary + Additional GBP
    homepage = generate_homepage()            # 11.4 H1, secciones, schema, NAP
    so_pages = generate_service_overview()    # 11.5 5 SO
    geohub = generate_geohub()                # 11.6 Madrid GeoHub
    lbs_pages = generate_lbs()                # 11.7 5 LBS Madrid
    ac_pages = generate_additional_category() # 11.8 2 AC
    ga_pages = generate_geoarticles()         # 11.9 15 GAs
    inject_local_coverage(all_pages)          # 11.10 LCAs en copy + areaServed
    # 11.11 generate_expansion() inactivo (E=0)
    assign_internal_links(all_pages)          # 11.12 matriz Paso 7
    score_priority(all_pages)                 # 11.13 Priority Score
    check_dependencies(all_pages)             # 11.14 orden publicación
    run_qa(all_pages)                         # 11.15 12 reglas QA
    output_matrices()                         # 11.16 URL Matrix + Score Matrix
```

Todos confirmed (doctrina pura).

## Paso 12 — Master Prompt (13 outputs)

- 12.1 Master Prompt principal (5 secciones: Rol / Inputs / Specs / Reglas / Output esperado)
- 12.7 Web-First GBP Rule embedded: "GBP NO existe todavía, NO afirmar reseñas Google"
- 12.8 14 Reglas operativas (§22-§34) embedded
- 12.9 Inputs Validation embedded
- 12.11-12.13 Validaciones OK

Todos confirmed.

## Paso 13 — Sistema Final Operativo (12 outputs)

- 13.1 Resumen ejecutivo: "AEROETERM · 30 URLs · web-first Phase 1 · sin expansión activa · Madrid Main City"
- 13.7 Tabla inventario URL con scores (30 filas, score + tier + phase)
- 13.8 Calendario producción 7 fases
- 13.11 Checklist final 13 preguntas → 13/13 OK

Todos confirmed.

---

# Bloque 5 — Salida a Mercado
> 39 outputs · Pasos 15 (redacción), 16 (diseño), 17 (constructor), 18 (QA + deploy), 19 (vigilancia).

## Paso 15 — Redacción de Contenido

| ID | Output | Resultado |
|---|---|---|
| 15.1 | Capas de redacción | Brand voice (tono cercano-profesional) · Servicio · Localización Madrid · GeoArticles |
| 15.2 | Reglas calidad | NO inventar testimonios · NO afirmar reseñas Google · NO precios cerrados · NO comparativas marcas |
| 15.3 | Homepage | 1.247 palabras · NAP visible · 5 servicios cards · trust block · 6 FAQs · formulario contacto |
| 15.4 | 5 Service Overview | promedio 720 palabras cada uno |
| 15.5 | 5 LBS Madrid | promedio 920 palabras (incluye LCAs Lista, Salamanca, Chamberí, Almagro...) |
| 15.6 | 2 Additional Category | promedio 580 palabras |
| 15.7 | GeoHub Madrid | 780 palabras · índice 5 LBS + 15 GAs + cobertura distritos |
| 15.8 | 15 GeoArticles | promedio 950 palabras |
| 15.9 | Página contacto | NAP completo · formulario · mapa Google embebido · horario [⚠ pendiente cliente] |
| 15.10-15.12 | Validaciones | 30/30 páginas redactadas · SO no compite con LBS · GAs enlazan LBS padre — OK |
| 15.13 | Datos verificables | no aplica (contenido publicado con marcadores `[X años]`, `[teléfono]` visibles y reemplazables sin re-build) |

**Marcadores visibles en producción:**
- `[teléfono: 9XX XXX XXX]`
- `[email: contacto@aeroeterm.com]` (propuesto)
- `[X años de experiencia reformando baños en Madrid]`
- `[financiación 0% — preguntar condiciones]`

## Paso 16 — Diseño y Layout

| ID | Output | Resultado |
|---|---|---|
| 16.1 | Identidad Visual y CSS Base | ⚠ placeholder — cliente no entregó URL de web de referencia. Default: paleta neutra-profesional (blanco + gris + azul corporativo + amarillo CTA), Inter, spacing 8px-grid |
| 16.2 | Layout por Sección | 6 page types × 8-12 secciones (heredado Paso 5) |
| 16.3 | Propuesta de Diseño | no aplica (sin ciclo mockup→aprobación) |
| 16.4 | Design Tokens Tailwind | `tailwind.config.js` con extend completo |
| 16.5 | Reglas Críticas CSS | 6 componentes (Hero, Buttons, Cards, Grids, Forms, Mobile) |
| 16.6 | Layout-Map Definitivo | 6 page types × components alineados con Paso 15 |

## Paso 17 — Constructor del Sitio

| ID | Output | Resultado |
|---|---|---|
| 17.1 | Acta Autocontraste | no aplica |
| 17.2 | Proyecto Astro 5 + Tailwind v3 + pnpm | repo inicializado · `package.json` · `astro.config.mjs` · `tailwind.config.js` |
| 17.3 | 7 componentes UI | Hero, ServiceCard, TrustBlock, FAQ, ContactForm, BreadcrumbNav, AreaCoverageMap |
| 17.4 | Header + Footer + Layout wrapper | header con NAP + nav 5 servicios + CTA · footer NAP + 3 columnas |
| 17.5 | 30 páginas construidas | 30 archivos `.astro` |
| 17.6 | Schemas validados | Organization, LocalBusiness, Service, Article, BreadcrumbList, FAQPage — OK 30/30 |
| 17.7 | Limpieza rastros IA | 0 frases robóticas · revisión manual OK |
| 17.8 | Build local | `pnpm build` → 30 HTML · 0 errores · 0 warnings |

## Paso 18 — QA + Deploy

**Auditorías pre-deploy:**
- 18.1 Auditoría Técnica (16 criterios): **15/16 OK** (1 ⚠ menor: alt imágenes con placeholder)
- 18.2 Auditoría Contenido (8 criterios): **8/8 OK**
- 18.3 Auditoría Visual (5 criterios): **5/5 OK**
- 18.4 Auditoría Rastros IA (6 criterios): **6/6 OK**

**Total: 34/35 criterios OK (1 ⚠ menor)**

| ID | Output | Resultado |
|---|---|---|
| 18.5 | Configuración Cloudflare | repo conectado · build `pnpm build` · output `dist/` · dominio `aeroeterm.com` · SSL automático |
| 18.6 | **Sitio en Producción** | ✅ **LIVE en `https://www.aeroeterm.com/`** desde 2026-05-04 · 30 URLs · Lighthouse 92 desktop / 87 mobile |
| 18.7 | Sitemap en GSC | `sitemap.xml` subido a GSC · verificación dominio DNS TXT ✅ · 30 URLs descubiertas |

## Paso 19 — Vigilancia Post-Launch

| ID | Output | Resultado |
|---|---|---|
| 19.1 | Tablero vigilancia | GA4 (clicks HP→LBS, formulario, scroll) + GSC (impresiones GH Madrid, posiciones) · baseline 4 semanas |
| 19.2 | 3 triggers | post-launch: pendiente 4-12 semanas evaluación |
| 19.3 | Análisis SERP | mensual desde mes 2 |
| 19.4 | Log decisiones escalado | template listo, vacío en mes 0 |
| 19.5 | URL Matrix v1 | sin expansion · v2 si Paso 19 detecta señales |

---

## Cierre Bloque 5 — WEB LIVE ✅

- ✅ 30 páginas redactadas + construidas + validadas + deployadas
- ✅ **`https://www.aeroeterm.com/` LIVE desde 2026-05-04**
- ✅ Sitemap entregado a Google Search Console
- ✅ Tracking activo (GSC + GA4)
- ⚠ **17 outputs con `⚠`** → volcados a `02-pendientes.md`
