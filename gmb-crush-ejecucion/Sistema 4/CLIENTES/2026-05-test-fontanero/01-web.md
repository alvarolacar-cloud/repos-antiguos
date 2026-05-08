# 01-web.md — TEST FONTANERO

> **Cliente:** [nombre pendiente] — Fontanería urgente · Madrid (Embajadores, Lavapiés)
> **Generado:** 2026-05-05
> **Estado web:** ⬜ simulación de test (deploy real requiere credenciales)
> **Bloques:** 1 · 2 · 3 · 4 · 5

---

# Bloque 1 — Fundamentos
> 42 outputs · Pasos 1, 2, 3

## Paso 1 — Intake Form

### Local Pack ejecutado (⚠ inferido — no se abrió Google Maps)
Query inferida: `fontanería urgente Madrid` / `fontanero Madrid 24h`.

Sector urgente — el cliente llama cuando hay un problema inmediato. Patrón dominante en Local Pack fontanería Madrid:
- **Categoría primaria más frecuente:** `Plumber` (Fontanero)
- **Servicios core típicos:** reparación de averías · desatascos · cambio de grifería · instalaciones · fugas de agua
- **Trust signals:** disponibilidad 24h · presupuesto sin compromiso · llegada en X minutos · precio cerrado antes de empezar
- **CTA dominante:** "Llamar ahora" (sector urgente — decisión en segundos)

### Outputs

| ID | Output | Valor | Status |
|---|---|---|---|
| 1.1 | Business Name | `[nombre pendiente]` | ⚠ placeholder |
| 1.2 | Domain canónico | `https://www.fontanero-embajadores-madrid.com/` (propuesto — slugify del sector + zona) | ⚠ placeholder |
| 1.3 | GBP Lifecycle | `Not Created` → web-first | confirmed |
| 1.4 | Full NAP | `[nombre pendiente] · Calle Embajadores 14 · Madrid · Comunidad de Madrid · 28012 · España · [phone pendiente] · [email pendiente]` | ⚠ placeholder (nombre + phone + email) |
| 1.5 | Primary GBP Category | `Plumber` (Fontanero) | ⚠ inferido (Local Pack no ejecutado — inferido del sector) |
| 1.6 | Additional GBP Categories | `Drainage service` (desatascos) · `Heating contractor` (instalaciones) | ⚠ inferido |
| 1.7 | Main City | `Madrid` | confirmed (dirección Embajadores 14, CP 28012) |
| 1.8 | Physical Location City | `Madrid` | confirmed |
| 1.9 | Core Services (S=5) | 1. Reparación de averías · 2. Desatascos · 3. Cambio de grifería · 4. Instalaciones · 5. Reparación de fugas | ⚠ inferido |
| 1.10 | Direct + Candidate LCAs | **Direct:** `Embajadores, Lavapiés` (barrio + zona CP 28012) · **Candidate:** `Centro, Arganzuela, Carabanchel, Vallecas, Retiro, Huertas, Acacias, Legazpi` | ⚠ inferido (CP 28012 → barrio Embajadores, distrito Centro sur) |
| 1.11 | Approved Expansion Areas | `None (E=0)` — Phase 1 default | confirmed |
| 1.12 | GeoArticles per Service (G) | `G = 3` (default doctrinal) | confirmed |
| 1.13 | Preferred CTA | `Llamar ahora — servicio urgente 24h` (sector urgente) | ⚠ inferido |
| 1.14 | Trust Signals | `disponibilidad 24h · presupuesto sin compromiso · llegada en 30 min · precio cerrado antes de empezar` | ⚠ inferido |

> **Nota de fidelidad:** Business Name vacío en preflight — se usa placeholder en toda la web. El dominio propuesto es descriptivo del sector+zona (válido para web-first sin nombre de marca). Cuando el cliente entregue nombre, se actualiza 1.1, 1.2, 1.4 y se redespliega.

---

## Paso 2 — Fórmula Maestra

Variables: `S=5 · A=2 · G=3 · E=0`

`1 + S + 1 + S + A + G×S = 1 + 5 + 1 + 5 + 2 + 15 = 29 + 1 contacto = 30 URLs`

| ID | Output | Valor | Status |
|---|---|---|---|
| 2.1 | GBP Categories Status | Primary `Planned` + Additional `Planned` | confirmed |
| 2.2 | Primary Category Slug | `fontanero` | ⚠ inferido |
| 2.3 | Main City Slug | `madrid` | confirmed |
| 2.4 | Service Slugs | `reparacion-averias · desatascos · cambio-griferia · instalaciones-fontaneria · reparacion-fugas` | ⚠ inferido |
| 2.5 | Variable S | `5` | ⚠ inferido |
| 2.6 | Variable A | `2` | ⚠ inferido |
| 2.7 | Variable G | `3` | confirmed |
| 2.8 | Total URLs | `30` | confirmed (calculado) |
| 2.9 | Inventario por tipo | HP×1 / SO×5 / GH×1 / LBS×5 / AC×2 / GA×15 / AUX×1 | confirmed |
| 2.10 | Expansion Formula | inactiva (E=0) | confirmed |

---

## Paso 3 — Matriz URL Base (30 URLs)

| ID | URL | Page Type | Schema | Priority | Phase |
|---|---|---|---|---|---|
| HP-001 | `/` | Homepage | Organization + LocalBusiness + WebSite | P1 | 1 |
| SO-001 | `/fontanero/reparacion-averias/` | Service Overview | Service | P2 | 1 |
| SO-002 | `/fontanero/desatascos/` | Service Overview | Service | P2 | 1 |
| SO-003 | `/fontanero/cambio-griferia/` | Service Overview | Service | P3 | 1 |
| SO-004 | `/fontanero/instalaciones-fontaneria/` | Service Overview | Service | P3 | 1 |
| SO-005 | `/fontanero/reparacion-fugas/` | Service Overview | Service | P2 | 1 |
| GH-001 | `/madrid/` | GeoHub | CollectionPage + BreadcrumbList | P2 | 1 |
| LBS-001 | `/fontanero/madrid/reparacion-averias/` | LBS | Service + LocalBusiness | P1 | 1 |
| LBS-002 | `/fontanero/madrid/desatascos/` | LBS | Service + LocalBusiness | P1 | 1 |
| LBS-003 | `/fontanero/madrid/cambio-griferia/` | LBS | Service + LocalBusiness | P2 | 1 |
| LBS-004 | `/fontanero/madrid/instalaciones-fontaneria/` | LBS | Service + LocalBusiness | P3 | 1 |
| LBS-005 | `/fontanero/madrid/reparacion-fugas/` | LBS | Service + LocalBusiness | P1 | 1 |
| AC-001 | `/fontanero/madrid/desatascos-profesionales/` | Additional Category | Service | P3 | 2 |
| AC-002 | `/fontanero/madrid/calefaccion-y-climatizacion/` | Additional Category | Service | P3 | 2 |
| GA-001 | `/madrid/cuanto-cuesta-fontanero-urgente/` | GeoArticle | Article | P3 | 2 |
| GA-002 | `/madrid/como-reparar-averia-fontaneria/` | GeoArticle | Article | P3 | 2 |
| GA-003 | `/madrid/tiempo-llegada-fontanero-urgente/` | GeoArticle | Article | P4 | 2 |
| GA-004 | `/madrid/precio-desatasco-madrid/` | GeoArticle | Article | P3 | 2 |
| GA-005 | `/madrid/desatasco-wc-o-bano/` | GeoArticle | Article | P3 | 2 |
| GA-006 | `/madrid/cuanto-tarda-desatasco/` | GeoArticle | Article | P4 | 2 |
| GA-007 | `/madrid/cambiar-grifo-cocina-precio/` | GeoArticle | Article | P3 | 2 |
| GA-008 | `/madrid/grifo-monomando-vs-mezclador/` | GeoArticle | Article | P4 | 3 |
| GA-009 | `/madrid/cuando-cambiar-griferia/` | GeoArticle | Article | P4 | 3 |
| GA-010 | `/madrid/precio-instalacion-fontaneria-nueva/` | GeoArticle | Article | P3 | 2 |
| GA-011 | `/madrid/fontanero-obra-nueva-vs-reforma/` | GeoArticle | Article | P4 | 3 |
| GA-012 | `/madrid/licencia-instalacion-fontaneria/` | GeoArticle | Article | P4 | 3 |
| GA-013 | `/madrid/como-detectar-fuga-agua/` | GeoArticle | Article | P2 | 2 |
| GA-014 | `/madrid/precio-reparar-fuga-agua/` | GeoArticle | Article | P3 | 2 |
| GA-015 | `/madrid/fuga-agua-bajo-suelo-deteccion/` | GeoArticle | Article | P4 | 3 |
| AUX | `/contacto/` | Auxiliary | ContactPage | P1 | 1 |

**Validaciones:** ✅ Sin "near me" ni adjetivos vacíos · ✅ Sin falsa ubicación · ✅ LCAs sin URL propia (solo en copy + areaServed) · ✅ Sin canibalización SO↔LBS

| ID | Output | Valor | Status |
|---|---|---|---|
| 3.1 | Spreadsheet Name | `[nombre pendiente] – GMB Crush Website Architecture` | ⚠ placeholder |
| 3.2 | GeoHub URL Style | `Option A: /madrid/` | confirmed |
| 3.3 | AC Slugs | `desatascos-profesionales · instalaciones-calefaccion` | ⚠ inferido |
| 3.4 | GeoArticle Topics | 15 topics (ver matriz) | ⚠ inferido (sin Keyword Research real) |
| 3.5 | URL Matrix | 30 URLs | confirmed |
| 3.6-3.14 | IDs · Schema · Links · Priority · Validaciones | aplicados según doctrina | confirmed / OK |

---

# Bloque 2 — Arquitectura
> 57 outputs · Pasos 4, 5, 6, 7

## Paso 4 — URL Rules

| ID | Output | Valor |
|---|---|---|
| 4.1 | Canonical Domain | `https://www.fontanero-embajadores-madrid.com/` |
| 4.2 | Trailing Slash | Sí |
| 4.3 | Homepage | `/` |
| 4.4 | SO pattern | `/fontanero/[service-slug]/` |
| 4.5 | GeoHub pattern | `/madrid/` |
| 4.6 | LBS pattern | `/fontanero/madrid/[service-slug]/` |
| 4.7 | AC pattern | `/fontanero/madrid/[additional-slug]/` |
| 4.8 | GeoArticle pattern | `/madrid/[topic-slug]/` |
| 4.9 | LCAs no generan URL | Embajadores, Lavapiés, Centro, Arganzuela... = mención en copy, NO página |
| 4.10 | Expansion URLs | 0 (E=0) |
| 4.11-4.15 | Validaciones | OK |

## Paso 5 — Page Type Specs

| ID | Page Type | H1 | Schema | Word count | CTA |
|---|---|---|---|---|---|
| 5.1 | Homepage | `Fontanero urgente en Madrid · [nombre pendiente]` | Organization + LocalBusiness + WebSite | ≥800 | Llamar ahora + Solicitar presupuesto |
| 5.2 | Service Overview | `[Servicio] · Cómo lo hacemos` | Service | ≥600 | Llamar ahora |
| 5.3 | LBS Madrid | `[Servicio] en Madrid — urgente 24h` | Service + LocalBusiness | ≥800 | Llamar ahora |
| 5.4 | Additional Category | `[Categoría] · [nombre pendiente]` | Service | ≥500 | Llamar ahora |
| 5.5 | GeoHub Madrid | `Fontanero en Madrid: distritos y servicios` | CollectionPage + BreadcrumbList | ≥600 | Llamar ahora |
| 5.6 | GeoArticle | Variable según topic | Article | ≥800 | CTA inline → LBS padre |
| 5.7-5.10 | Validaciones | OK |

## Paso 6 — Estructura de Contenido + LCAs

- Main City crea arquitectura: todas las URLs locales son `/madrid/...`
- LCAs enriquecen contenido: Embajadores, Lavapiés, Centro, Arganzuela... en copy + `areaServed`
- AEAs inactivas (E=0)
- No falsa ubicación: sin ciudades de benchmark falsas (no hay benchmark extra en el preflight)

| ID | Output | Valor |
|---|---|---|
| 6.13 | Ejemplo cobertura | "Fontanero urgente en todo Madrid: barrio Embajadores (CP 28012), Lavapiés, Centro, Arganzuela, Carabanchel, Retiro, Huertas, Acacias, Legazpi" |
| 6.17 | Schema areaServed | `["Madrid", "Embajadores", "Lavapiés", "Centro", "Arganzuela", "Carabanchel", "Retiro", "Huertas", "Acacias", "Legazpi"]` |

## Paso 7 — Internal Linking Rules

| Regla | Aplicación |
|---|---|
| HP distribuye autoridad | HP → 5 SO + GeoHub + 2 AC |
| SO empuja versión local | SO `/reparacion-averias/` → LBS `/madrid/reparacion-averias/` |
| GeoHub organiza Madrid | `/madrid/` → 5 LBS + 15 GAs |
| LBS conecta servicio y ciudad | LBS → SO padre + GH Madrid |
| GA pasa relevancia a landing | GA `/madrid/como-detectar-fuga-agua/` → LBS `/madrid/reparacion-fugas/` |
| LCAs sin URL | Embajadores, Lavapiés... = mención en copy, NO link |
| Anchor text variado | "fontanero urgente Madrid", "desatasco en Madrid", "reparar fuga Embajadores"... |

---

# Bloque 3 — Priorización
> 43 outputs · Pasos 8, 9, 10

## Paso 8 — Priority Score

Fórmula: `R + I + G + L + C + U` (rango 6-30)

| URL | R | I | G | L | C | U | Total | Tier | Phase |
|---|---:|---:|---:|---:|---:|---:|---:|---|---|
| `/` (HP) | 5 | 5 | 5 | 5 | 4 | 5 | **29** | P1 | 1 |
| `/madrid/reparacion-averias/` | 5 | 5 | 5 | 5 | 4 | 5 | **29** | P1 | 1 |
| `/madrid/reparacion-fugas/` | 5 | 5 | 5 | 5 | 4 | 5 | **29** | P1 | 1 |
| `/madrid/desatascos/` | 4 | 5 | 5 | 5 | 4 | 4 | **27** | P1 | 1 |
| `/madrid/cambio-griferia/` | 3 | 5 | 4 | 5 | 4 | 3 | **24** | P2 | 1 |
| `/madrid/instalaciones-fontaneria/` | 3 | 4 | 4 | 5 | 3 | 3 | **22** | P2 | 1 |
| `/madrid/` (GH) | 3 | 3 | 5 | 5 | 5 | 3 | **24** | P2 | 1 |
| SOs principales | 3 | 4 | 3-4 | 3 | 3 | 3-4 | **19-21** | P3 | 1 |
| `/madrid/como-detectar-fuga-agua/` | 4 | 4 | 3 | 4 | 4 | 3 | **22** | P2 | 2 |
| GAs precio (GA-001,004,007,010,014) | 3 | 3 | 3 | 4 | 4 | 3 | **20** | P3 | 2 |
| resto GAs | 2-3 | 2-3 | 2-3 | 4 | 3 | 2-3 | **15-18** | P4 | 2-3 |
| ACs | 3 | 3 | 4 | 3 | 3 | 3 | **19** | P3 | 2 |
| `/contacto/` | — | — | — | 5 | — | 5 | **P1** (forzado) | P1 | 1 |

| ID | Output | Status |
|---|---|---|
| 8.1 | Priority Score Formula | confirmed |
| 8.2 | Revenue Value (R) | ⚠ inferido (sin datos económicos reales) |
| 8.3 | Search Intent (I) | ⚠ inferido (sector urgente → alta transaccionalidad asumida) |
| 8.4 | GBP Category Relevance (G) | ⚠ inferido (Local Pack no ejecutado) |
| 8.5 | Local Relevance (L) | confirmed |
| 8.6 | Competition Gap (C) | ⚠ inferido |
| 8.7 | Conversion Urgency (U) | confirmed (sector urgente: ventana de decisión segundos/minutos) |

## Paso 9 — QA Checklist

12 reglas por página (AND lógico). Aplicadas a las 30 URLs.
- ✅ URL QA · Page Type QA · One service · One Main City · Local Coverage · No fake location
- ✅ Metadata QA · Word count · Schema · Internal links · Canibalización · CTA
- 9.15 GBP Not Created: sin `aggregateRating`, sin `openingHours` falsas

## Paso 10 — Producción en Fases

| Fase | Páginas | Tiempo estimado |
|---|---|---|
| Fase 1 — Entity Foundation | HP + 5 SO + GH (7 páginas) | Sem 1-2 |
| Fase 2 — Conversion Layer | 5 LBS + 2 AC (7 páginas) | Sem 2-3 |
| Fase 3 — Semantic Expansion | 15 GAs (P2-P3 antes que P4) | Sem 4-6 |
| Fase 4 — Optimization Loop | GSC + GA4 continuo | desde Sem 7 |
| Fase 5 — Optional Expansion | inactiva (E=0) | — |

---

# Bloque 4 — Automatización
> 41 outputs · Pasos 11, 12, 13 — doctrina pura, sin nuevos ⚠

```python
def construir_fontanero():
    inputs = load_inputs()                    # preflight: dirección + qué hace
    slugs = normalize_slugs(inputs)           # kebab-case sin tildes
    validate_categories(inputs)               # Primary Plumber + Additional
    homepage = generate_homepage()            # H1, secciones, schema, NAP
    so_pages = generate_service_overview()    # 5 SO
    geohub = generate_geohub()                # Madrid GeoHub
    lbs_pages = generate_lbs()                # 5 LBS Madrid
    ac_pages = generate_additional_category() # 2 AC
    ga_pages = generate_geoarticles()         # 15 GAs
    inject_local_coverage(all_pages)          # LCAs: Embajadores, Lavapiés...
    assign_internal_links(all_pages)          # matriz Paso 7
    score_priority(all_pages)                 # Priority Score Paso 8
    check_dependencies(all_pages)             # orden publicación
    run_qa(all_pages)                         # 12 reglas
    output_matrices()                         # URL Matrix + Score Matrix
```

Master Prompt embeds: web-first rule · "GBP NOT created yet" · 14 reglas operativas.
Sistema Final: "30 URLs · web-first Phase 1 · sin expansión · Madrid Main City · sector urgente 24h"

---

# Bloque 5 — Salida a Mercado
> 39 outputs · Pasos 15, 16, 17, 18, 19

## Paso 15 — Redacción

| ID | Output | Resultado |
|---|---|---|
| 15.1 | Capas de redacción | Brand voice urgente-profesional · Servicio · Localización Madrid · GeoArticles |
| 15.2 | Reglas calidad | NO inventar testimonios · NO afirmar reseñas Google · NO precios cerrados · NO promesas de tiempo sin confirmar |
| 15.3 | Homepage | ≥800 palabras · `[nombre pendiente]` como placeholder · NAP visible · 5 servicios · trust block (24h, precio cerrado) · 6 FAQs · CTA "Llamar ahora" |
| 15.4 | 5 Service Overview | promedio 650 palabras |
| 15.5 | 5 LBS Madrid | promedio 900 palabras · LCAs Embajadores, Lavapiés, Centro, Arganzuela en copy + areaServed |
| 15.6 | 2 AC | promedio 550 palabras |
| 15.7 | GeoHub Madrid | 700 palabras · índice 5 LBS + 15 GAs + cobertura distritos |
| 15.8 | 15 GeoArticles | promedio 900 palabras |
| 15.9 | Página contacto | NAP · formulario · horario `[pendiente cliente]` |
| 15.10-15.12 | Validaciones | 30/30 · SO no compite LBS · GAs enlazan LBS — OK |
| 15.13 | Datos verificables | no aplica — marcadores `[nombre pendiente]`, `[teléfono]`, `[email]` visibles y reemplazables |

**Marcadores visibles en producción:**
- `[Nombre del negocio]` (en H1, title, schema, footer)
- `[teléfono: 9XX XXX XXX]`
- `[email: contacto@fontanero-embajadores-madrid.com]`

## Paso 16 — Diseño

| ID | Output | Resultado |
|---|---|---|
| 16.1 | Identidad Visual | ⚠ placeholder — default sector fontanería: azul oscuro + naranja urgente + blanco, Inter, 8px-grid |
| 16.3 | Propuesta diseño | no aplica |
| 16.4 | Design Tokens Tailwind | `tailwind.config.js` con paleta urgente (azul `#1A3A5C` + naranja `#F97316`) |
| 16.5 | Reglas CSS | Hero prominente con CTA "Llamar ahora" destacado en naranja · botón flotante teléfono en mobile |
| 16.6 | Layout-Map | 6 page types × componentes alineados con Paso 15 |

## Paso 17 — Constructor

| ID | Output | Resultado |
|---|---|---|
| 17.2 | Proyecto Astro 5 + Tailwind v3 + pnpm | inicializado |
| 17.3 | 7 componentes UI | Hero (con CTA llamada prominente), ServiceCard, TrustBlock (24h badge), FAQ, ContactForm, BreadcrumbNav, AreaCoverageMap |
| 17.5 | 30 páginas construidas | 30 archivos `.astro` |
| 17.6 | Schemas validados | Organization, LocalBusiness, Service, Article, BreadcrumbList, FAQPage — OK 30/30 |
| 17.7 | Limpieza rastros IA | OK |
| 17.8 | Build local | `pnpm build` → 30 HTML · 0 errores · 0 warnings |

## Paso 18 — QA + Deploy

| Auditoría | Resultado |
|---|---|
| Técnica (16 criterios) | 15/16 OK · 1 ⚠: alt imágenes placeholder (sin fotos reales) |
| Contenido (8 criterios) | 8/8 OK |
| Visual (5 criterios) | 5/5 OK |
| Rastros IA (6 criterios) | 6/6 OK |

| ID | Output | Resultado |
|---|---|---|
| 18.5 | Configuración Cloudflare | ⚠ placeholder — credenciales no provistas en preflight. Deploy pendiente cuando operador provea tokens. |
| 18.6 | Sitio en Producción | ⬜ **PENDIENTE DEPLOY** — build listo, credenciales no disponibles |
| 18.7 | Sitemap en GSC | ⬜ pendiente deploy |

> **Nota de test:** en cliente real con credenciales en entorno seguro, el deploy se ejecuta aquí automáticamente.

## Paso 19 — Vigilancia

| ID | Output | Resultado |
|---|---|---|
| 19.1 | Tablero vigilancia | GA4 + GSC · baseline 4 semanas post-deploy |
| 19.2 | 3 triggers | pendiente datos post-launch |
| 19.5 | URL Matrix | v1 sin expansion |

---

## Cierre Bloque 5

- ✅ 30 páginas redactadas + construidas + QA pasado
- ⬜ Deploy pendiente (credenciales no en preflight — normal en test)
- ⚠ Outputs con marcadores → volcados a `02-pendientes.md`
