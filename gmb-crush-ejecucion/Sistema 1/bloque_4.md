# GMB Crush Engine — Bloque 4: Automatización (Pasos 11-13)

## Propósito de este bloque

Bloque 4 convierte el sistema GMB Crush en lógica repetible y ejecutable. Tres pasos:

- **Paso 11 — Pseudocódigo del Sistema**: 16 funciones que cubren todo el flujo: inputs → genera → enlaza → puntúa → QA → matrices.
- **Paso 12 — Master Prompt Reutilizable**: prompt maestro completo (Matteo de GMB Crush) + 4 prompts auxiliares + 10 reglas doctrinales + 14 reglas operativas.
- **Paso 13 — Sistema Final Operativo (SFO)**: 12 Sistemas + 7 Módulos A-G + 16 Reglas operativas + workflow 21 pasos + calendario 7 fases.

**Total outputs: 41** (11.1–11.16 = 16, 12.1–12.13 = 13, 13.1–13.12 = 12. Ninguno es `no_aplica`.)

---

## Reglas globales del Bloque 4

### Principio web-first

El GBP no existe al inicio de este flujo. El pseudocódigo, el Master Prompt y el SFO trabajan con **Planned GBP Categories**. Ninguna función debe insertar GBP URL, reseñas de Google ni señales de perfil hasta el Paso 14.

### Jerarquía de generación (aplica a 11.4–11.9)

| Función | Genera |
|---------|--------|
| `generate_homepage()` | HP-001 → `/` |
| `generate_service_overview()` | SO × S → `/category/service/` |
| `generate_geohub()` | GH-001 → `/main-city/` |
| `generate_lbs()` | LBS × S → `/category/main-city/service/` |
| `generate_additional_category()` | AC × A → `/category/main-city/category/` |
| `generate_geoarticles()` | GA × G×S → `/main-city/article-topic/` |

### Función generate_slug (base de 11.2)

```
lowercase → remove accents → replace spaces with hyphens → remove symbols → remove duplicate hyphens → RETURN slug
```

### Fórmula de páginas (base de 13.1)

```
1 + S + 1 + S + A + G×S
```

Con S=5, A=1, G=3 → 28 páginas SEO base + /contacto/ auxiliar = 29 URLs.

### Regla LCAs en pseudocódigo

```
DO NOT generate URLs for any local_coverage_areas
inject direct_local_coverage_areas into intro, examples, FAQs, areaServed
inject candidate_local_coverage_areas ONLY IF GEO coherence test passes
```

### Regla expansión

```
IF approved_expansion_areas is not empty:
    generate optional expansion pages
ELSE:
    skip expansion URLs
```

### 6 Outputs de output_matrices()

```
URL Matrix | Internal Linking Matrix | Schema Map | Priority Score | Publishing Plan | QA Matrix
```

### Estructura del Master Prompt (12.1)

```
Role declaration → Non-negotiables → Business inputs → TASK → 20 output requirements (A–R)
```

### 20 secciones del Master Prompt TASK (A–R)

```
A. INPUT VALIDATION       B. TOTAL BASE PAGE COUNT   C. URL RULES
D. URL MATRIX             E. PAGE TYPE RULES         F. CONTENT ARCHITECTURE
G. HOMEPAGE BRIEF         H. SERVICE OVERVIEW PAGES  I. MAIN CITY GEOHUB PAGE
J. MAIN CITY LBS PAGES   K. ADDITIONAL CATEGORY     L. GEOARTICLE IDEAS
M. SCHEMA MAP             N. INTERNAL LINKING MAP    O. PRIORITY SCORE
P. PUBLISHING PHASES      Q. QA CHECKLIST            R. FINAL OUTPUT FORMAT
```

### 12 Sistemas del SFO (13.2)

```
S1 Intake | S2 Fórmula | S3 Matriz Base | S4 URL Rules | S5 Page Type Rules
S6 Content Architecture | S7 Internal Linking | S8 Priority Score | S9 QA
S10 Producción en fases | S11 Pseudocódigo | S12 Master Prompt
```

### 7 Módulos A-G del SFO (13.3)

```
A Entidad y GBP | B Servicios core | C Categorías adicionales
D Cobertura local | E Expansión aprobada | F Schema | G Tracking
```

### 21-step Operating Workflow (13.5)

```
1. Recoger inputs              8. Crear URL Matrix            15. Asignar publish phase
2. Validar entidad/NAP/GBP    9. Aplicar URL Rules           16. Producir contenido
3. Clasificar servicios core  10. Asignar Page Type Rules    17. Ejecutar QA
4. Clasificar categorías      11. Crear Content Architecture 18. Publicar
5. Identificar LCAs           12. Asignar schema             19. Medir
6. Confirmar Expansion Areas  13. Asignar internal links     20. Optimizar
7. Calcular fórmula base      14. Calcular Priority Score    21. Considerar expansión
```

### Relación Paso 13 → Paso 14

```
Paso 13 = website operating system complete (schema sin sameAs de GBP)
Paso 14 = GBP creation and website alignment
```

---

## Outputs del Paso 11 — Pseudocódigo del Sistema

### 11.1 — Función load_inputs()

**Qué produce:** Pseudocódigo de carga y validación de todos los inputs del negocio antes de generar arquitectura.

**Pseudocódigo canónico:**
```
FUNCTION load_inputs():
    load business_name
    load canonical_domain
    load full_NAP
    load planned_primary_gbp_category
    load primary_category_slug
    load main_city
    load main_city_slug
    load physical_location_city
    load core_services[]
    load service_slugs[]
    load planned_additional_categories[]
    load direct_local_coverage_areas[]
    load candidate_local_coverage_areas[]
    load approved_expansion_areas[]   # Default: empty
    load geoarticles_per_service      # Default: 3
    load publishing_capacity
    load tracking_tools
    IF main_city is null: BLOCK — no Main City available for GeoHub, LBS or GeoArticles
    IF primary_gbp_category is null: BLOCK — cannot assign category slug or schema
    RETURN inputs_validated
```

**Regla crítica:** La función distingue entre Planned GBP Categories (datos confirmados por cliente) y datos confirmados por herramientas externas. El GBP URL debe quedar `null` si `gbp_status = no_creado`.

**Sources:** `doctrina_gmb_crush`, `cliente_preflight`

---

### 11.2 — Función normalize_slugs()

**Qué produce:** Pseudocódigo que convierte todos los nombres que irán en URLs en slugs limpios y consistentes.

**Pseudocódigo canónico:**
```
FUNCTION generate_slug(text):
    lowercase
    remove accents
    replace spaces with hyphens
    remove symbols
    remove duplicate hyphens
    RETURN slug

FUNCTION normalize_slugs(inputs):
    primary_category_slug = generate_slug(planned_primary_gbp_category)
    main_city_slug = generate_slug(main_city)
    FOR each service IN core_services:
        service_slug = generate_slug(service)
    FOR each category IN planned_additional_categories:
        category_slug = generate_slug(category)
    IF approved_expansion_areas is not empty:
        FOR each area IN approved_expansion_areas:
            area_slug = generate_slug(area)
    RETURN normalized_slugs
```

**Ejemplos correctos:**
```
"Cerrajero Urgente"         → cerrajero-urgente
"Apertura de Puertas"       → apertura-puertas
"Instalación de Cerraduras" → instalacion-cerraduras-seguridad
"Madrid"                    → madrid
```

**Ejemplos incorrectos:** `/Cerrajero Urgente/` | `/cerrajero_urgente/` | `/cerrajero%20urgente/` | `/instalación-de-cerraduras/`

**Regla:** Todo nombre que vaya a formar parte de una URL debe convertirse primero en un slug limpio antes de ser usado en cualquier otra función.

---

### 11.3 — Función validate_categories()

**Qué produce:** Pseudocódigo que separa categorías adicionales ya cubiertas por servicios core de las que sí necesitan página propia.

**Pseudocódigo canónico:**
```
FUNCTION validate_categories(planned_additional_categories, core_services):
    effective_additional_categories = []
    covered_categories = []
    FOR each additional_category IN planned_additional_categories:
        IF matches core_service_intent(additional_category, core_services):
            covered_categories.append(additional_category)
        ELSE:
            effective_additional_categories.append(additional_category)
    A = len(effective_additional_categories)
    RETURN effective_additional_categories, covered_categories, A
```

**Ejemplo:**
```
"Servicio de cerrajería de urgencia" → covered by "Cerrajero urgente" → NO genera página
"Servicio de duplicado de llaves"    → effective → SÍ genera /cerrajero/madrid/duplicado-llaves/
```

**Regla:** Una categoría adicional solo genera página propia si no está ya cubierta por un servicio core y representa un servicio real del negocio.

---

### 11.4 — Función generate_homepage()

**Qué produce:** Pseudocódigo que genera la fila base de la homepage como Root Entity Anchor.

**Pseudocódigo canónico:**
```
FUNCTION generate_homepage(inputs):
    CREATE HP-001
    page_type = Homepage
    url = /
    h1 = business_name + " – " + primary_service + " en " + main_city
    meta_title = primary_service + " en " + main_city + " | " + business_name
    schema = [Organization, WebSite, LocalBusiness if physical_in_main_city, FAQPage, Speakable]
    priority = P1   # ALWAYS P1 — override if calculation gives less
    phase = Phase 1
    internal_links = [service_overviews, main_city_geohub, contacto]
    RETURN HP-001
```

**Regla crítica:** Homepage = P1 sin excepción. No usar `/home/` ni `/inicio/`. No añadir reseñas de Google si GBP no existe.

---

### 11.5 — Función generate_service_overview()

**Qué produce:** Pseudocódigo que genera una Service Overview Page por cada servicio core. Sin geolocalización.

**Pseudocódigo canónico:**
```
FUNCTION generate_service_overview(core_services, inputs):
    FOR each service IN core_services:
        CREATE SO
        id = "SO-{n:03d}"
        page_type = Service Overview
        url = /{primary_category_slug}/{service_slug}/
        city = null   # NO city in Service Overview
        h1 = "Servicios profesionales de " + service + " por " + business_name
        schema = [Service, WebPage, BreadcrumbList, Speakable]
        internal_links = [homepage, related_SO, main_city_LBS_of_service]
        phase = Phase 1
```

**Regla:** El SO vive en `/category/service/` — nunca `/category/main-city/service/`. Actúa como pilar temático antes de que las LBS conviertan tráfico local.

---

### 11.6 — Función generate_geohub()

**Qué produce:** Pseudocódigo que genera el contenedor de ciudad principal.

**Pseudocódigo canónico:**
```
FUNCTION generate_geohub(inputs):
    CREATE GH-001
    page_type = GeoHub
    url = /{main_city_slug}/
    city = main_city
    include service_menu(core_services, main_city)
    include additional_category_menu(effective_additional_categories, main_city)
    include local_coverage_areas_section(direct_local_coverage_areas)
    include geoarticle_list(main_city)
    schema = [CollectionPage, BreadcrumbList]
    internal_links = [homepage, all_LBS_in_main_city, all_AC_in_main_city, all_GA_in_main_city, contacto]
    priority = P1
    phase = Phase 1
    RETURN GH-001
```

**Regla:** El GeoHub es el índice local de la ciudad. No es una página de servicio. No usar `/areas-served/` ni `/cerrajero-madrid/`.

---

### 11.7 — Función generate_lbs()

**Qué produce:** Pseudocódigo que genera las páginas de conversión local: un LBS por combinación servicio×Main City.

**Pseudocódigo canónico:**
```
FUNCTION generate_lbs(core_services, inputs):
    FOR each service IN core_services:
        CREATE LBS
        id = "LBS-{n:03d}"
        page_type = Location-Based Service
        url = /{primary_category_slug}/{main_city_slug}/{service_slug}/
        parent = /{primary_category_slug}/{service_slug}/
        geohub = /{main_city_slug}/
        content_uses_direct_LCAs = direct_local_coverage_areas
        content_uses_candidate_LCAs = [lca for lca in candidate_LCAs if geo_coherence_test(lca)]
        schema = [LocalBusiness, BreadcrumbList, FAQPage_optional]
        internal_links = [parent_SO, geohub, related_LBS, geoarticles_supporting, contacto]
        phase = Phase 2
```

**Regla:** Una LBS = un servicio + una Main City. Nunca mezclar servicios. Nunca usar `/madrid/apertura-puertas/` (eso es GeoArticle pattern).

---

### 11.8 — Función generate_additional_category()

**Qué produce:** Pseudocódigo que genera páginas de categoría adicional para la Main City.

**Pseudocódigo canónico:**
```
FUNCTION generate_additional_category(effective_additional_categories, inputs):
    FOR each category IN effective_additional_categories:
        CREATE AC
        id = "AC-{n:03d}"
        page_type = Additional Category
        url = /{primary_category_slug}/{main_city_slug}/{category_slug}/
        geohub = /{main_city_slug}/
        related_services = same_city_LBS
        schema = [Service_with_areaServed, BreadcrumbList, FAQPage_optional]
        internal_links = [geohub, related_LBS, contacto]
        phase = Phase 2
```

**Regla:** `additional_categories_with_page` ≠ `core_services`. Solo se generan para categorías adicionales reales no duplicadas. No crear AC para categorías que no irán al GBP.

---

### 11.9 — Función generate_geoarticles()

**Qué produce:** Pseudocódigo que genera activos semánticos long-tail para cada servicio×Main City.

**Pseudocódigo canónico:**
```
FUNCTION generate_geoarticles(core_services, inputs):
    FOR each service IN core_services:
        FOR i FROM 1 TO geoarticles_per_service:
            CREATE GA
            id = "GA-{n:03d}"
            page_type = GeoArticle
            url = /{main_city_slug}/{article_topic_slug}/
            supports = /{primary_category_slug}/{main_city_slug}/{service_slug}/
            geohub = /{main_city_slug}/
            intent = long_tail_informational_or_commercial
            schema = [Article, FAQPage, BreadcrumbList, Speakable]
            internal_links = [matching_LBS, geohub, related_GA, contacto]
            phase = Phase 3
```

**Regla:** GeoArticle no es landing. Apoya una LBS existente. Si la LBS padre no existe, el GA queda bloqueado (check_dependencies lo detectará).

---

### 11.10 — Función inject_local_coverage()

**Qué produce:** Pseudocódigo que inyecta cobertura local en contenido sin generar URLs.

**Pseudocódigo canónico:**
```
FUNCTION inject_local_coverage(pages, inputs):
    FOR each content_page IN pages:
        IF page_type IN [LBS, GeoHub, GeoArticle, AC]:
            inject direct_local_coverage_areas INTO [intro, coverage_section, FAQs, areaServed]
            FOR each candidate_lca IN candidate_local_coverage_areas:
                IF geo_coherence_test(candidate_lca) PASSES:
                    inject candidate_lca INTO [content_examples, FAQs]
                ELSE:
                    skip
        DO NOT generate URL for any local_coverage_area
        DO NOT claim physical office in coverage area unless true
```

**Ejemplo correcto:** "Atendemos solicitudes en Madrid en zonas como Almagro, Chamberí, Salamanca y Retiro."

**Ejemplos incorrectos:** Crear `/almagro/` sin aprobación | Enlazar a `/salamanca/` si no existe | Repetir lista enorme en todas las páginas.

---

### 11.11 — Función generate_expansion() (opcional)

**Qué produce:** Pseudocódigo que genera páginas de expansión solo si hay Approved Expansion Areas.

**Pseudocódigo canónico:**
```
FUNCTION generate_expansion(inputs):
    IF approved_expansion_areas is not empty:
        FOR each area IN approved_expansion_areas:
            area_slug = generate_slug(area)
            generate optional expansion GeoHub → /{area_slug}/
            FOR each service IN core_services:
                generate optional expansion LBS → /{primary_category_slug}/{area_slug}/{service_slug}/
            FOR each service IN core_services:
                FOR i FROM 1 TO geoarticles_per_service:
                    generate optional expansion GA → /{area_slug}/{article_topic}/
        phase = Phase 5
    ELSE:
        skip expansion URLs
        LOG "No Approved Expansion Areas — Phase 5 not activated"
```

**Regla:** `approved_expansion_areas is empty` en Phase 1 es el estado por defecto. Una zona de cobertura (LCA) solo genera URLs cuando pasa a Approved Expansion Area con justificación explícita.

---

### 11.12 — Función assign_internal_links()

**Qué produce:** Pseudocódigo que asigna enlaces internos obligatorios por tipo de página.

**Pseudocódigo canónico:**
```
FUNCTION assign_internal_links(pages):
    FOR each page IN pages:
        IF page.type == Homepage:
            link TO [all service_overviews, main_city_geohub, contacto]
        IF page.type == Service_Overview:
            link TO [homepage, main_city_LBS_of_service, related_SO, relevant_GA]
        IF page.type == GeoHub:
            link TO [homepage, all_LBS_main_city, all_AC_main_city, all_GA_main_city, contacto]
        IF page.type == LBS:
            link TO [parent_SO, geohub, related_LBS_same_city, supporting_GA, contacto]
        IF page.type == Additional_Category:
            link TO [geohub, related_LBS_same_city, relevant_GA, contacto]
        IF page.type == GeoArticle:
            link TO [matching_LBS, geohub, related_GA, optional_related_SO, contacto]
        DO NOT link TO local_coverage_areas (no URL exists)
        USE varied anchor text (not always exact match)
```

---

### 11.13 — Función score_priority()

**Qué produce:** Pseudocódigo del cálculo de Priority Score y asignación de tier por página.

**Pseudocódigo canónico:**
```
FUNCTION score_priority(page, inputs):
    revenue = score_revenue_value(page)         # 1-5
    intent  = score_search_intent(page)         # 1-5
    gbp_rel = score_gbp_category_relevance(page)# 1-5
    local   = score_local_relevance(page)       # 1-5 (replaces City Priority)
    gap     = score_competition_gap(page)       # 1-5
    urgency = score_conversion_urgency(page)    # 1-5

    score = revenue + intent + gbp_rel + local + gap + urgency

    IF page.type == Homepage:
        priority = P1   # OVERRIDE — always P1
    ELSE IF score >= 26: priority = P1
    ELSE IF score >= 21: priority = P2
    ELSE IF score >= 16: priority = P3
    ELSE IF score >= 10: priority = P4
    ELSE:                priority = Hold

    IF page.type == GeoArticle AND matching_LBS.priority < page.priority:
        BLOCK GA — publish matching LBS first

    RETURN score, priority
```

---

### 11.14 — Función check_dependencies()

**Qué produce:** Pseudocódigo que valida si una página puede existir en el sistema (no valida calidad).

**Pseudocódigo canónico:**
```
FUNCTION check_dependencies(page, all_pages):
    IF page.type == LBS:
        require homepage EXISTS in all_pages
        require parent_service_overview EXISTS in all_pages
        require main_city_geohub EXISTS in all_pages
        require main_city IS approved
        require service IS in core_services
    IF page.type == GeoArticle:
        require matching_LBS EXISTS in all_pages
        require main_city_geohub EXISTS in all_pages
    IF page.type == Additional_Category:
        require main_city_geohub EXISTS in all_pages
        require category IN effective_additional_categories
    IF page.type == Expansion:
        require area IN approved_expansion_areas
    IF any dependency MISSING:
        RETURN status = "Blocked — Missing: {dependency}"
    RETURN status = "Ready for QA"
```

**Ejemplo correcto:**
```
LBS /cerrajero/madrid/cerrajero-urgente/ → Homepage ✓ + SO /cerrajero/cerrajero-urgente/ ✓ + GeoHub /madrid/ ✓ → Ready for QA
LBS /cerrajero/madrid/cerrajero-urgente/ → SO missing → Blocked — Missing Parent Service Overview
```

---

### 11.15 — Función run_qa()

**Qué produce:** Pseudocódigo que valida si una página ya construida cumple reglas mínimas para publicarse.

**Pseudocódigo canónico:**
```
FUNCTION run_qa(page, inputs):
    errors = []
    CHECK url MATCHES approved_pattern           OR errors.append("URL_ERROR")
    CHECK page_type IS correct                   OR errors.append("PAGE_TYPE_ERROR")
    CHECK one_service_only (if LBS/SO)           OR errors.append("MULTI_SERVICE")
    CHECK one_main_city_only (if LBS)            OR errors.append("MULTI_CITY")
    CHECK local_coverage_usage IS natural        OR errors.append("COVERAGE_UNNATURAL")
    CHECK no_false_location_claim                OR errors.append("FALSE_LOCATION")
    CHECK h1 IS set AND relevant                 OR errors.append("H1_MISSING")
    CHECK meta_title IS set                      OR errors.append("META_TITLE_MISSING")
    CHECK meta_description IS set                OR errors.append("META_DESC_MISSING")
    CHECK word_count >= minimum_for_type         OR errors.append("WORD_COUNT_LOW")
    CHECK schema IS correct_for_page_type        OR errors.append("SCHEMA_ERROR")
    CHECK internal_links ARE present             OR errors.append("LINKS_MISSING")
    CHECK no_canibalization WITH existing_pages  OR errors.append("CANIBALIZATION")
    CHECK cta IS present AND relevant            OR errors.append("CTA_MISSING")

    IF errors is empty: RETURN "Approved"
    ELSE IF errors contains critical: RETURN "Blocked"
    ELSE: RETURN "Needs Revision", errors
```

---

### 11.16 — Función output_matrices()

**Qué produce:** Pseudocódigo del output final del sistema — 6 matrices operativas.

**Pseudocódigo canónico:**
```
FUNCTION output_matrices(all_pages, all_links, scores, qa_results, phases):
    OUTPUT URL_Matrix:
        columns = [ID, Page_Type, Parent, Service, Service_Slug, Main_City,
                   Main_City_Slug, Additional_Category, LCAs_Used, Expansion_Area,
                   URL, H1, Meta_Title, Meta_Description, Schema_Type,
                   Internal_Links_Required, Priority, Publish_Phase, Status, Notes]
        rows = all_pages
        EXCLUDE local_coverage_areas (no URL row unless Approved Expansion)

    OUTPUT Internal_Linking_Matrix:
        columns = [Source_URL, Target_URL, Anchor_Text, Placement, Priority]

    OUTPUT Schema_Map:
        columns = [URL, Page_Type, Schema_Types]

    OUTPUT Priority_Score:
        columns = [URL, Revenue, Intent, GBP_Relevance, Local_Relevance,
                   Competition_Gap, Conversion_Urgency, Total_Score, Priority_Tier]

    OUTPUT Publishing_Plan:
        Phase_1 = [HP, SO, GH] + Service_Overviews_P1
        Phase_2 = [LBS, AC]
        Phase_3 = [GeoArticles]
        Phase_4 = [Optimization_Loop]
        Phase_5 = [Expansion_optional]

    OUTPUT QA_Matrix:
        columns = [URL, QA_Status, Errors, Required_Fixes]
```

**Regla:** El output del sistema son matrices operativas listas para producción, no listas de ideas ni contenido suelto.

---

## Outputs del Paso 12 — Master Prompt Reutilizable

### 12.1 — Master Prompt principal

**Qué produce:** El prompt maestro completo con rol, inputs y 20 secciones de output (A–R).

**Contenido canónico — inicio del prompt:**
```
Actúa como Matteo de GMB Crush, especialista top 1% en Local SEO, Google Business Profile
optimization, AI Overview visibility, semantic SEO, GeoHub architecture, internal linking
y LocalBusiness site structure.

Quiero construir una web local desde cero siguiendo la metodología GMB Crush.

Usa exclusivamente esta jerarquía de páginas:

1. Homepage = Root Entity Anchor
2. Service Overview Pages = Topical Authority Pillars, no location
3. Location-Based Service Pages = Main City Geo-Targeted Converters
4. Additional Category Pages = GBP additional category support
5. GeoHub Pages = Main City Silo Containers
6. GeoArticle Pages = Semantic Boosters for service + Main City + long-tail intent
```

**Sección IMPORTANTE (no negociables del prompt):**
```
- Build the base architecture around one Main City.
- Use Local Coverage Areas as GEO content signals.
- Do not create URLs for Local Coverage Areas unless they are approved as Expansion Areas.
- Do not use Target Cities or Secondary Cities in the base build.
- Do not confuse Service Overview Pages with Location-Based Service Pages.
- Do not mix multiple services in one local landing.
- Do not create pages duplicated for additional categories already covered by core services.
- Do not claim a physical office in any Local Coverage Area unless true.
- GeoArticles are not landing pages; they are semantic boosters.
- Every page must have function, URL, H1, metadata, schema, internal links, priority, phase and QA.
```

**Sección INPUTS DEL NEGOCIO:** Campos con marcador `[INSERT]` para: Business Name, Website Root Domain, Canonical Domain, Country, State/Province, Main City, Main City Slug, Physical Location City, Full NAP, GBP URL, Planned Primary GBP Category, Primary Category Slug, Planned Additional GBP Categories, Servicios principales, Service Slugs, Direct Local Coverage Areas, Candidate Local Coverage Areas, Approved Expansion Areas, Should LCAs generate pages? (Default: No), Additional Categories covered/separate, GeoArticles per Service, GeoHub URL Style, GeoArticle URL Style, Top Priority Services, Trust Signals, Preferred CTA, Publishing Capacity, CMS, Can schema be added?, Can internal links be edited manually?, Tracking Tools.

**Sección TASK:** Generate a complete GMB Crush website architecture system with the 20 outputs (ver Global Rules del bloque).

**Sección OUTPUT REQUIREMENTS (A–R):** Ver especificaciones en 12.6.

**Cierre del prompt:**
```
Use clean tables.
Be precise.
Do not invent physical locations.
Do not create duplicate pages.
Do not create URLs for Local Coverage Areas unless they are Approved Expansion Areas.
Do not create pages with no clear parent, target, or internal link destination.
```

---

### 12.2 — Auxiliary Prompt URL Matrix

**Qué produce:** Prompt auxiliar para generar solo la URL Matrix de una web local.

**Contenido canónico:**
```
Actúa como Matteo de GMB Crush.

Genera únicamente la URL Matrix completa para una web local de una Main City.

Inputs: Business Name / Website Root Domain / Planned Primary GBP Category /
Primary Category Slug / Main City / Main City Slug / Servicios principales /
Service Slugs / Additional Categories that need separate pages /
Additional Category Slugs / Local Coverage Areas / Approved Expansion Areas /
GeoArticles per Service

Rules:
- Base architecture uses one Main City.
- Local Coverage Areas do not generate URLs.
- Approved Expansion Areas generate URLs only if provided.
- Homepage = / | Service Overview = /category/service/
- Main City GeoHub = /city/ | Main City Service Page = /category/city/service/
- Additional Category = /category/city/additional-category/
- GeoArticle = /city/article-topic/

Columns: ID / Page Type / Parent Page / Service / Service Slug / Main City /
Main City Slug / Additional Category / Local Coverage Areas Used /
URL / H1 / Meta Title / Schema Type / Priority / Publish Phase / Status / Notes
```

---

### 12.3 — Auxiliary Prompt Content Architecture

**Qué produce:** Prompt auxiliar para generar contenido completo de una página concreta.

**Contenido canónico:**
```
Actúa como Matteo de GMB Crush y senior SEO content strategist.

Quiero generar contenido completo para esta página siguiendo GMB Crush, AIO, GEO y AUDIO.

Page Type: [Homepage / Service Overview / Location-Based Service / Additional Category / GeoHub / GeoArticle]
Business Name: [INSERT] | Planned Primary GBP Category: [INSERT]
Primary Category Slug: [INSERT] | Main City: [INSERT] | Main City Slug: [INSERT]
Local Coverage Areas: [INSERT LIST] | Service: [INSERT] | Service Slug: [INSERT]
URL: [INSERT] | Parent Service Page: [INSERT] | GeoHub Page: [INSERT]
Related Pages: [INSERT] | Phone/Email: [INSERT] | NAP: [INSERT]
Physical office in Main City? Yes / No
Physical office in Local Coverage Areas? Yes / No

Generate:
1. H1  2. Meta title  3. Meta description  4. Quick Answer block if relevant
5. Full page outline  6. 3–5 H2s using AUDIO where applicable
7. Local Coverage Areas section where appropriate  8. 3–5 FAQs
9. CTA  10. Internal links with anchor text  11. Schema recommendation
12. Anti-canibalization note

Rules:
- If Service Overview, do not target Main City or Local Coverage Areas.
- If Location-Based Service, use one service and one Main City.
- If GeoHub, list all Main City services, categories, articles and coverage areas.
- If GeoArticle, write as semantic booster, not landing page.
- Do not claim physical presence in Local Coverage Areas unless true.
```

---

### 12.4 — Auxiliary Prompt GeoArticles

**Qué produce:** Prompt auxiliar para generar 3 ideas de GeoArticle por servicio.

**Contenido canónico:**
```
Actúa como Matteo de GMB Crush, especialista en GeoArticles, AI Overview y semantic SEO local.

Inputs: Brand Name / Primary Business Category Slug / Service / Service Slug /
Main City / Main City Slug / Local Coverage Areas / Matching Location-Based Service Page /
Matching GeoHub Page / Target Audience / Physical office in Main City? Yes / No

Generate 3 GeoArticle ideas.

For each idea:
1. Page Title  2. H1 Suggestion  3. Suggested URL  4. Target Long-Tail Keyword
5. Intent Type  6. Summary  7. Matching Location-Based Service Page
8. Matching GeoHub Page  9. Related GeoArticle  10. Suggested CTA  11. Schema Type

Rules:
- Each article supports one service, one Main City and one long-tail intent.
- Local Coverage Areas may appear as examples or context.
- Each article links to the matching /category/main-city/service/ page.
- Each article links to the matching /main-city/ GeoHub page.
- Do not create URLs for Local Coverage Areas.
```

---

### 12.5 — Auxiliary Prompt QA

**Qué produce:** Prompt auxiliar de QA por página antes de publicar.

**Contenido canónico:**
```
Actúa como Matteo de GMB Crush y haz QA de esta página antes de publicarla.

Page URL: [INSERT] | Page Type: [INSERT] | Business Name: [INSERT]
Planned Primary GBP Category: [INSERT] | Target Service: [INSERT]
Main City: [INSERT] | Local Coverage Areas Used: [INSERT]
Physical office in Main City? Yes / No | Physical office in Local Coverage Areas? Yes / No
H1: [INSERT] | Meta Title: [INSERT] | Meta Description: [INSERT]
Word Count: [INSERT] | Schema Added: [INSERT]
Internal Links Added: [INSERT] | NAP Used: [INSERT]

Check:
1. URL approved          6. No fake office/location  11. AUDIO structure
2. Page type correct     7. H1 approved              12. FAQs included
3. One service only      8. Meta title approved      13. CTA included
4. One Main City only    9. Meta description approved 14. Schema approved
5. LCAs used naturally  10. Word count approved      15. Internal links approved
                                                      16. NAP consistent
                                                      17. No canibalization
                                                      18. Final approval

Return: QA table / Problems found / Required fixes / Final status: Approved / Needs Revision / Blocked
```

---

### 12.6 — Estructura del prompt

**Qué produce:** Descripción estructural del Master Prompt — cómo está organizado en secciones.

**Contenido:**
```
Estructura del Master Prompt (12.1):

BLOQUE 1 — ROL Y METODOLOGÍA
  · "Actúa como Matteo de GMB Crush..."
  · Jerarquía de 6 tipos de página
  · 10 non-negotiables (IMPORTANTE)

BLOQUE 2 — INPUTS DEL NEGOCIO
  · Campos con [INSERT] para todos los datos del cliente
  · Separación: Direct LCAs / Candidate LCAs / Approved Expansion Areas
  · GBP URL = N/A si gbp_status = no_creado

BLOQUE 3 — TASK
  · 20 outputs enumerados

BLOQUE 4 — OUTPUT REQUIREMENTS (A–R)
  A. Input Validation         B. Total Base Page Count
  C. URL Rules                D. URL Matrix (20 columns)
  E. Page Type Rules          F. Content Architecture + LCAs
  G. Homepage Brief           H. Service Overview Pages
  I. Main City GeoHub         J. Main City LBS Pages
  K. Additional Category      L. GeoArticle Ideas
  M. Schema Map               N. Internal Linking Map
  O. Priority Score           P. Publishing Phases
  Q. QA Checklist             R. Final Output Format

BLOQUE 5 — CIERRE
  · Use clean tables / Be precise / Do not invent locations / etc.

4 PROMPTS AUXILIARES
  · Prompt 1: Solo URL Matrix
  · Prompt 2: Solo contenido de una página
  · Prompt 3: Solo GeoArticles
  · Prompt 4: Solo QA
```

---

### 12.7 — Web-First GBP Rule embedded

**Qué produce:** La regla web-first embebida en el Master Prompt que impide insertar GBP antes del Paso 14.

**Contenido canónico:**
```
WEB-FIRST GBP RULE (embedded en 12.1):

"The GBP does not exist at the beginning of this workflow.
Work with Planned Primary GBP Category and Planned Additional GBP Categories.
Do not insert a real GBP URL until Paso 14 creates and verifies the GBP.
Do not add Google reviews, GBP performance signals or sameAs GBP URL before Paso 14.
The website is built first and goes live. The GBP is created after using the live website
as the source of truth."

Campo en inputs:
GBP URL: N/A — GBP not created yet (if gbp_status = no_creado)

Consecuencia en schema:
- Omit sameAs: [gbp_url] until Paso 14 is executed
- Use Planned Primary GBP Category for category alignment
```

---

### 12.8 — 14 Reglas operativas (§22–§34)

**Qué produce:** Las 14 reglas operativas del Master Prompt que guían cómo construir y usar el prompt.

**Contenido canónico:**
```
Regla 1 (§22) — Rol + restricciones:
  El Master Prompt fija rol Matteo de GMB Crush y límites no negociables desde el inicio.
  Patrón: Role → Methodology → Non-negotiables

Regla 2 (§23) — Inputs geográficos simplificados:
  Pedir Main City, Physical Location City, Direct LCAs, Candidate LCAs y AEAs.
  No usar Target Cities ni Secondary Cities en la base.
  Patrón: Main City + Local Coverage Areas + Approved Expansion Areas

Regla 3 (§24) — Fórmula base explícita:
  El prompt debe obligar a calcular 1+S+1+S+A+G×S antes de generar URLs.
  Patrón: 1 + S + 1 + S + A + G×S

Regla 4 (§25) — URL Matrix obligatoria:
  El output debe exigir URL Matrix con ID, Page Type, Parent, Service, City, URL, H1,
  metas, schema, links, priority, phase, status.
  Patrón: Inputs → URL Matrix → producción

Regla 5 — Page Type Rules completas:
  El prompt desarrolla cada tipo con función, patrón, H1, meta, estructura, schema, CTA, links.
  Patrón: Page Type → full brief

Regla 6 — Output con tablas limpias:
  El output devuelve tablas operativas, no solo texto explicativo.
  Patrón: URL Matrix + Linking Matrix + Schema Map + Score + QA

Regla 7 — Page Type Rules completas:
  Cada tipo de página sale como brief completo (no solo URL o solo H1).

Regla 8 — Content Architecture obligatoria:
  El prompt incluye el paso de estructura de contenido y uso de LCAs en cada tipo.
  Patrón: Step F (Content Architecture) es obligatorio.

Regla 9 — Internal Linking Map obligatorio:
  El prompt pide Source URL → Target URL + Anchor + Placement.

Regla 10 — QA final obligatorio:
  El prompt termina con checklist QA por página.
  Patrón: QA fields for each page

Regla 11 — Duplicate category detection:
  El prompt detecta categorías adicionales ya cubiertas por servicios core.
  Patrón: additional_category → covered or separate page

Regla 12 — Local Coverage Areas como señales de contenido:
  El prompt prohíbe URLs para LCAs por defecto.
  Patrón: Local Coverage Areas = content signals

Regla 13 — Expansion Module separado:
  Las Approved Expansion Areas son módulo opcional separado.
  Patrón: Approved Expansion Areas → optional module

Regla 14 — Ordenar outputs:
  Los outputs siguen el orden A→R del TASK section.
  Patrón: Return the answer in the structure: 1. Title+Summary → ... → 20. Final Takeaway
```

---

### 12.9 — Inputs Validation embedded

**Qué produce:** La sección A del Master Prompt — validación de inputs antes de generar cualquier arquitectura.

**Contenido canónico:**
```
A. INPUT VALIDATION

Validate:
- Primary GBP category alignment
- Core services (slugs + uniqueness)
- Additional GBP categories (covered vs separate)
- Main City (confirmed)
- Physical Location City (matches NAP)
- Local Coverage Areas (Direct vs Candidate classification)
- Approved Expansion Areas (explicit approval confirmed)
- Category duplication risks
- Missing slugs
- URL consistency
- NAP consistency

Output format:
| Field | Value | Status | Notes |
|-------|-------|--------|-------|
| Primary GBP Category | Cerrajero | ✅ Confirmed | Planned |
| Main City | Madrid | ✅ Confirmed | |
| GBP URL | N/A | ⚠ Placeholder | GBP not created yet |
| Approved Expansion | None | ✅ Confirmed | Phase 1 base only |
```

---

### 12.10 — Executive Summary template

**Qué produce:** El template de resumen ejecutivo que el Master Prompt genera como primer output.

**Contenido canónico:**
```
R1. TITLE + SUMMARY BLOCK (sección 1 del Final Output Format)

Template:
---
SISTEMA GMB CRUSH — [BUSINESS NAME]
Generado con la metodología GMB Crush | Paso 11-12 | Fecha: [DATE]

Negocio:      [Business Name]
Main City:    [Main City]
Servicios:    [S] servicios core
Páginas base: [Total] páginas SEO + /contacto/
GBP Status:   [Planned / Created / Verified]
GBP URL:      [N/A si no_creado]

Fórmula aplicada:
1 + [S] + 1 + [S] + [A] + [G×S] = [Total] páginas SEO base

Top Priority Pages (P1):
1. / (Homepage)
2. /[main-city]/ (GeoHub)
3. /[cat]/[main-city]/[top-service]/ (LBS principal)

Publishing Capacity: [N] páginas/semana → [X] semanas para base completa
---
```

---

### 12.11 — Validación prompt produce outputs del Master Prompt

**Qué produce:** Checklist de validación de que el prompt generado produce los 20 outputs requeridos.

**Contenido:**
```
CHECKLIST: ¿El prompt produce todos los outputs del Master Prompt?

| Output | Sección | Presente |
|--------|---------|----------|
| Executive Summary | R1 / Title+Summary | ✅ / ⬜ |
| Input Validation | A | ✅ / ⬜ |
| Duplicate Category Detection | A.duplicate | ✅ / ⬜ |
| Page Count Formula | B | ✅ / ⬜ |
| URL Matrix (20 columns) | D | ✅ / ⬜ |
| Page Type Rules | E | ✅ / ⬜ |
| Content Architecture | F | ✅ / ⬜ |
| Homepage Brief | G | ✅ / ⬜ |
| Service Overview Pages | H | ✅ / ⬜ |
| Main City GeoHub | I | ✅ / ⬜ |
| Main City LBS Pages | J | ✅ / ⬜ |
| Additional Category Pages | K | ✅ / ⬜ |
| GeoArticle Ideas | L | ✅ / ⬜ |
| Schema Map | M | ✅ / ⬜ |
| Internal Linking Map | N | ✅ / ⬜ |
| Priority Score | O | ✅ / ⬜ |
| Publishing Phases | P | ✅ / ⬜ |
| QA Checklist | Q | ✅ / ⬜ |
| Optional Expansion Module | R19 | ✅ / ⬜ |
| Final Output Format | R | ✅ / ⬜ |

Resultado: Si algún output falta → el prompt necesita revisión antes de uso en producción.
```

---

### 12.12 — Validación prompt cumple web-first

**Qué produce:** Checklist específico de que el prompt respeta el principio web-first (GBP no existe al inicio).

**Contenido:**
```
CHECKLIST WEB-FIRST:

| Regla | Verificación |
|-------|-------------|
| GBP URL = N/A en inputs | ✅ / ⬜ |
| Categorías son "Planned" (no confirmadas por GBP) | ✅ / ⬜ |
| No hay campo de GBP reviews en ningún brief | ✅ / ⬜ |
| Schema sameAs de GBP omitido en outputs | ✅ / ⬜ |
| No se genera GBP URL en ninguna página | ✅ / ⬜ |
| Paso 14 mencionado como condición para sameAs | ✅ / ⬜ |
| LCAs no generan URLs en el prompt | ✅ / ⬜ |
| Expansión solo si hay Approved Expansion Areas | ✅ / ⬜ |

Resultado: Cualquier ⬜ = prompt no cumple doctrina web-first → corregir antes de producción.
```

---

### 12.13 — 10 Reglas doctrinales (§7–§16)

**Qué produce:** Las 10 reglas doctrinales del paso 12 que definen qué debe hacer el Master Prompt.

**Contenido canónico:**
```
Regla 1 (§7)  — El Master Prompt debe generar el sistema completo:
  No limitarse a pedir URLs. Pedir validación + fórmula + matriz + tipos + contenido
  + enlaces + schema + prioridad + fases + QA + roadmap.
  Patrón: Prompt → validate → generate → link → score → QA → roadmap

Regla 2 (§8)  — Main City first:
  La versión base se construye alrededor de una Main City.
  Patrón: Main City = base architecture

Regla 3 (§9)  — Local Coverage Areas como señales de contenido:
  El prompt pide LCAs pero prohíbe que generen URLs por defecto.
  Patrón: Local Coverage Areas = content signals

Regla 4 (§10) — Approved Expansion Areas separadas:
  La expansión es módulo opcional, no parte de la base.
  Patrón: Approved Expansion Areas → optional module

Regla 5 (§11) — Duplicate category detection:
  El prompt detecta categorías adicionales ya cubiertas por servicios core.
  Patrón: additional_category → covered or separate page

Regla 6 (§12) — Output con tablas limpias:
  El output devuelve tablas operativas: URL Matrix + Linking Matrix + Schema Map + Score + QA.

Regla 7 (§13) — Page Type Rules completas:
  Cada tipo de página sale como brief completo (no solo URL o H1).
  Patrón: Page Type → full brief

Regla 8 (§14) — Content Architecture obligatoria:
  El prompt incluye la sección F de estructura interna y uso de LCAs.
  Patrón: Step F (Content Architecture) incluido.

Regla 9 (§15) — Internal Linking Map obligatorio:
  El prompt pide Source URL → Target URL + Anchor + Placement.

Regla 10 (§16) — QA final obligatorio:
  El prompt termina con checklist QA por página.
  Patrón: QA fields for each page. No hay publicación sin QA.
```

---

## Outputs del Paso 13 — Sistema Final Operativo

### 13.1 — Resumen ejecutivo

**Qué produce:** Visión global del SFO: índice de 14 pasos, principio de arquitectura y fórmula final.

**Contenido canónico:**
```
ÍNDICE FINAL DEL SISTEMA DE 14 PASOS:
1. Intake Form                   8. Priority Score
2. Fórmula maestra de arquitectura  9. QA Checklist
3. Matriz base                   10. Producción en fases
4. URL Rules                     11. Pseudocódigo del sistema
5. Page Type Rules               12. Master Prompt reutilizable
6. Estructura de Contenido + LCAs   13. Sistema final operativo
7. Internal Linking Rules        14. GBP Creation & Website Alignment

PRINCIPIO FINAL DE ARQUITECTURA:
Main City = crea la arquitectura base.
Local Coverage Areas = enriquecen contenido, FAQs, ejemplos locales y schema areaServed.
Approved Expansion Areas = generan URLs propias solo cuando se aprueban.

FÓRMULA FINAL BASE:
1 Homepage + S Service Overview Pages + 1 Main City GeoHub
+ S Main City LBS Pages + A Additional Category Pages + G×S GeoArticles

APLICADA A CERRAJEROS MADRID 24H:
S=5, A=1, G=3 → 1+5+1+5+1+15 = 28 páginas SEO base + /contacto/ auxiliar = 29 URLs
```

---

### 13.2 — 12 Sistemas literales

**Qué produce:** Los 12 sistemas del SFO con función, patrón y regla final para cada uno.

**Contenido canónico:**
```
S1  INTAKE             → Recoge entidad, NAP, GBP, Main City, servicios, LCAs, AEAs.
                          Patrón: Inputs complete before architecture
                          Regla: El sistema empieza con inputs limpios.

S2  FÓRMULA            → Calcula páginas base con una Main City.
                          Patrón: 1 + S + 1 + S + A + G×S (C=1 Main City)
                          Regla: La base usa C = 1 Main City.

S3  MATRIZ BASE        → Convierte la fórmula en filas accionables con IDs.
                          Patrón: URL Matrix with IDs (HP-001, SO-001, GH-001...)
                          Regla: Lo que no está en matriz no entra en producción.

S4  URL RULES          → Fija patrones limpios y evita canibalización.
                          Patrón: /category/main-city/service/
                          Regla: Una URL = una intención.

S5  PAGE TYPE RULES    → Define la función de cada tipo de página.
                          Patrón: HP | SO | LBS | AC | GeoHub | GeoArticle
                          Regla: Cada tipo cumple un rol.

S6  CONTENT ARCH.      → Define cómo se escribe cada página y cómo se usan LCAs.
                          Patrón: Content blocks + coverage usage
                          Regla: El contenido debe tener estructura, no solo campos.

S7  INTERNAL LINKING   → Conecta páginas por jerarquía local.
                          Patrón: HP → SO → GeoHub → LBS → GeoArticles
                          Regla: Los enlaces sostienen el silo.

S8  PRIORITY SCORE     → Decide qué se publica primero.
                          Patrón: Revenue + Intent + GBP + Local + Gap + Urgency
                          Regla: La prioridad sigue negocio + intención + local.

S9  QA                 → Valida cada página antes de publicar.
                          Patrón: URL + metadata + schema + links + no false location
                          Regla: Sin QA no se publica.

S10 PRODUCCIÓN FASES   → Organiza publicación en lotes.
                          Patrón: Entity → Main City Conversion → Articles → Optimization → Expansion
                          Regla: Publicar por fases evita caos.

S11 PSEUDOCÓDIGO       → Convierte el sistema en lógica repetible.
                          Patrón: Input → Generate → Link → Score → QA → Output
                          Regla: El sistema debe poder repetirse.

S12 MASTER PROMPT      → Permite ejecutar todo el sistema con un prompt maestro.
                          Patrón: Master Prompt with full outputs (A–R)
                          Regla: El prompt maestro debe generar el sistema completo.
```

---

### 13.3 — 7 Módulos A-G literales

**Qué produce:** Los 7 módulos operativos del SFO con función, patrón y regla.

**Contenido canónico:**
```
A  ENTIDAD Y GBP         → Business + GBP + NAP → entity base
                            Regla: La entidad se valida antes de la arquitectura.

B  SERVICIOS CORE        → Core Service → SO + LBS
                            Regla: Cada servicio core importante tiene estructura completa.

C  CATEGORÍAS ADICIONALES → Additional Category → covered or AC page
                            Regla: Cada categoría GBP tiene soporte sin duplicación.

D  COBERTURA LOCAL       → Coverage → content + areaServed (no URLs por defecto)
                            Regla: Cobertura local primero en contenido.

E  EXPANSIÓN APROBADA    → Approved Expansion → optional URLs (solo si aprobada)
                            Regla: La expansión es posterior y justificada.

F  SCHEMA                → Page Type → Schema Type
                            Regla: Schema debe coincidir con tipo de página.

G  TRACKING              → GMB Crush + GSC + GA4
                            Regla: Sin medición no hay optimización.
```

---

### 13.4 — 16 Reglas operativas literales

**Qué produce:** Las 16 reglas operativas del SFO (§36–§51) con patrón y regla final.

**Contenido canónico:**
```
R1  (§36) SISTEMA EMPIEZA POR ENTIDAD
    Patrón: Entity inputs → architecture → content → links → QA
    Regla: La entidad manda sobre la arquitectura.

R2  (§37) ARQUITECTURA BASE DE UNA MAIN CITY
    Patrón: Main City base | Coverage content | Expansion optional
    Regla: La base local se construye alrededor de una Main City.

R3  (§38) MATRIZ COMO CENTRO OPERATIVO
    Patrón: URL Matrix = fuente de verdad para todas las decisiones
    Regla: Todo parte de la matriz; nada entra en producción sin fila.

R4  CONTENIDO POR PAGE TYPE
    Patrón: Brief específico por tipo → no plantillas genéricas
    Regla: Cada tipo de página tiene su estructura interna.

R5  LCAs COMO CONTEXTO
    Patrón: LCAs en intro / FAQs / areaServed / ejemplos
    Regla: Las LCAs enriquecen; no generan URLs.

R6  INTERNAL LINKING DISTRIBUYE AUTORIDAD
    Patrón: HP → SO → GH → LBS → GA
    Regla: Los enlaces siguen la jerarquía local.

R7  SCHEMA COHERENCIA
    Patrón: Page Type → Schema Type correcto
    Regla: Sin schema correcto no hay publicación.

R8  PRIORITY SCORE DECISIÓN PRODUCCIÓN
    Patrón: Score → P1/P2/P3/P4/Hold → publish phase
    Regla: La prioridad ordena la producción.

R9  QA PUERTA PUBLICACIÓN
    Patrón: QA checklist completo → Approved / Needs Revision / Blocked
    Regla: No hay publicación sin QA.
    Patrón: Publish → measure → optimize → refresh

R10 PRODUCCIÓN EN FASES
    Patrón: Phase 1 → Phase 2 → Phase 3 → Phase 4 → Phase 5 optional
    Regla: Las fases convierten arquitectura en ejecución controlada.

R11 TRACKING COMO CICLO DE MEJORA
    Patrón: Publish → measure → optimize → refresh
    Regla: Publicar es el inicio del ciclo de optimización.

R12 EXPANSION AREAS CON GOBERNANZA
    Patrón: Coverage → evidence → approval → expansion pages
    Regla: La expansión requiere evidencia y control.

R13 IA COMO OPERADOR DEL SISTEMA
    Patrón: Prompt → inputs → matrices → QA → outputs
    Regla: La IA debe seguir el sistema, no inventarlo.

R14 NO NEGOCIABLES FINALES
    Patrón: Non-negotiables → QA → governance
    Regla: Las reglas no negociables protegen el sistema completo.
    (No mezclar servicios | No mezclar ciudades | No false locations |
     No páginas huérfanas | No artículos sin destino | No duplicación)

R15 DOCUMENTACIÓN DEL CAMBIO
    Patrón: Change → reason → matrix update → QA
    Regla: Todo cambio debe quedar documentado en la matriz y el plan.

R16 SISTEMA FINAL COMO FUENTE ÚNICA
    Patrón: 14 pasos → sistema completo → ejecución por documentos individuales
    Regla: El sistema final coordina; los pasos individuales ejecutan.
```

---

### 13.5 — Workflow operativo de 21 pasos

**Qué produce:** El flujo operativo completo del sistema, de inputs a expansión opcional.

**Contenido canónico:**
```
OPERATING WORKFLOW (21 pasos):

1.  Recoger inputs
2.  Validar entidad, NAP, GBP y Main City
3.  Clasificar servicios core
4.  Clasificar categorías adicionales (covered vs effective)
5.  Identificar Local Coverage Areas (Direct vs Candidate)
6.  Confirmar si hay Approved Expansion Areas
7.  Calcular fórmula base: 1+S+1+S+A+G×S
8.  Crear URL Matrix
9.  Aplicar URL Rules
10. Asignar Page Type Rules
11. Crear Content Architecture
12. Asignar schema por tipo de página
13. Asignar internal links por jerarquía
14. Calcular Priority Score por página
15. Asignar publish phase
16. Producir contenido por página
17. Ejecutar QA
18. Publicar (Bloques 1-5 live)
19. Medir (GSC, GA4, geo-grid)
20. Optimizar (metadata, links, schema)
21. Considerar expansión opcional (Paso 19)

Paso 14 no está en este workflow: ocurre en Bloque 7 después de que la web esté live.
```

---

### 13.6 — Carpetas recomendadas del repo

**Qué produce:** Estructura de carpetas `/docs/` recomendada para documentar el sistema GMB Crush de cada cliente.

**Contenido canónico:**
```
docs/
├── README.md
├── 01-intake-form.md
├── 02-formula-maestra-arquitectura.md
├── 03-matriz-base.md
├── 04-url-rules.md
├── 05-page-type-rules.md
├── 06-estructura-contenido-areas-cobertura-local.md
├── 07-internal-linking-rules.md
├── 08-priority-score.md
├── 09-qa-checklist.md
├── 10-produccion-en-fases.md
├── 11-pseudocodigo-sistema.md
├── 12-master-prompt.md
└── 13-sistema-final-operativo.md
```

**Nota:** Esta estructura es la fuente de documentación del sistema, no del código del sitio. El repo del sitio (Astro 5) tiene su propia estructura en `/src/`.

---

### 13.7 — Tabla inventario URL con scores

**Qué produce:** Tabla de inventario SEO base con Priority Score relativo (escala 0-100) para Cerrajeros Madrid 24h.

**Contenido canónico:**
```
| #  | URL | Tipo | Priority Score |
|----|-----|------|----------------|
| 1  | / | Homepage | 100 |
| 2  | /cerrajero/cerrajero-urgente/ | Service Overview | 90 |
| 3  | /cerrajero/apertura-puertas/ | Service Overview | 88 |
| 4  | /cerrajero/cambio-cerraduras/ | Service Overview | 86 |
| 5  | /cerrajero/cambio-bombines/ | Service Overview | 84 |
| 6  | /cerrajero/instalacion-cerraduras-seguridad/ | Service Overview | 82 |
| 7  | /madrid/ | GeoHub | 95 |
| 8  | /cerrajero/madrid/cerrajero-urgente/ | LBS | 92 |
| 9  | /cerrajero/madrid/apertura-puertas/ | LBS | 88 |
| 10 | /cerrajero/madrid/cambio-cerraduras/ | LBS | 85 |
| 11 | /cerrajero/madrid/cambio-bombines/ | LBS | 83 |
| 12 | /cerrajero/madrid/instalacion-cerraduras-seguridad/ | LBS | 80 |
| 13 | /cerrajero/madrid/duplicado-llaves/ | Additional Category | 75 |
| 14 | /madrid/cuanto-cuesta-un-cerrajero-urgente/ | GeoArticle | 70 |
| 15 | /madrid/que-hacer-si-no-puedes-entrar-casa/ | GeoArticle | 68 |
| 16 | /madrid/cuanto-tarda-un-cerrajero/ | GeoArticle | 65 |
| 17 | /madrid/cuanto-cuesta-abrir-una-puerta/ | GeoArticle | 64 |
| 18 | /madrid/que-hacer-si-te-dejas-las-llaves-dentro/ | GeoArticle | 62 |
| 19 | /madrid/apertura-de-puertas-sin-romper-cerradura/ | GeoArticle | 60 |
| 20 | /madrid/cuando-cambiar-la-cerradura-de-casa/ | GeoArticle | 58 |
| 21 | /madrid/cambio-de-cerradura-tras-perder-llaves/ | GeoArticle | 56 |
| 22 | /madrid/cerradura-nueva-o-reparacion/ | GeoArticle | 54 |
| 23 | /madrid/cuando-cambiar-el-bombin/ | GeoArticle | 52 |
| 24 | /madrid/bombin-antibumping-madrid/ | GeoArticle | 50 |
| 25 | /madrid/cambio-de-bombin-sin-cambiar-cerradura/ | GeoArticle | 48 |
| 26 | /madrid/mejores-cerraduras-de-seguridad-para-viviendas/ | GeoArticle | 46 |
| 27 | /madrid/cerraduras-de-seguridad-para-comunidades/ | GeoArticle | 44 |
| 28 | /madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/ | GeoArticle | 42 |
| — | /contacto/ | Auxiliar | Sin score SEO |

Nota: Scores en escala 0-100 (relativa). Para scores P1/P2/P3/P4 en escala 6-30, ver output 8.14.
Cada URL SEO del inventario base debe tener prioridad asignada.
```

---

### 13.8 — Calendario de producción de 7 fases

**Qué produce:** Calendario de publicación de 7 fases para el ejemplo Cerrajeros Madrid 24h (5 páginas/semana).

**Contenido canónico:**
```
CALENDARIO DE PRODUCCIÓN COMPLETO (7 fases):

Fase 1 — Estructura base (Semana 1-2):
  / (Homepage) | /contacto/ | /madrid/ (GeoHub)
  /cerrajero/madrid/cerrajero-urgente/ (LBS principal)
  /cerrajero/madrid/apertura-puertas/ (LBS)

Fase 2 — Servicios core (Semana 2-3):
  /cerrajero/madrid/cambio-cerraduras/ (LBS)
  /cerrajero/madrid/cambio-bombines/ (LBS)
  /cerrajero/madrid/instalacion-cerraduras-seguridad/ (LBS)
  /cerrajero/madrid/duplicado-llaves/ (Additional Category)

Fase 3 — Service Overview Pages (Semana 3-4):
  /cerrajero/cerrajero-urgente/
  /cerrajero/apertura-puertas/
  /cerrajero/cambio-cerraduras/
  /cerrajero/cambio-bombines/
  /cerrajero/instalacion-cerraduras-seguridad/

Fase 4 — GeoArticles lote 1 (Semana 4-5):
  /madrid/cuanto-cuesta-un-cerrajero-urgente/
  /madrid/que-hacer-si-no-puedes-entrar-casa/
  /madrid/cuanto-tarda-un-cerrajero/
  /madrid/cuanto-cuesta-abrir-una-puerta/
  /madrid/que-hacer-si-te-dejas-las-llaves-dentro/

Fase 5 — GeoArticles lote 2 (Semana 5-6):
  /madrid/apertura-de-puertas-sin-romper-cerradura/
  /madrid/cuando-cambiar-la-cerradura-de-casa/
  /madrid/cambio-de-cerradura-tras-perder-llaves/
  /madrid/cerradura-nueva-o-reparacion/
  /madrid/cuando-cambiar-el-bombin/

Fase 6 — GeoArticles lote 3 (Semana 6-7):
  /madrid/bombin-antibumping-madrid/
  /madrid/cambio-de-bombin-sin-cambiar-cerradura/
  /madrid/mejores-cerraduras-de-seguridad-para-viviendas/
  /madrid/cerraduras-de-seguridad-para-comunidades/
  /madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/

Fase 7 — GBP y sincronización (Semana 7-8):
  → Paso 14: Crear GBP con web live como fuente de verdad
  → Sincronizar categorías, servicios, NAP y sameAs
  → Actualizar schema sameAs en Homepage y páginas clave
```

---

### 13.9 — Output final del Paso 13 (13 elementos)

**Qué produce:** La lista de los 13 elementos que el sistema completo debe entregar para cualquier negocio local.

**Contenido canónico (§28):**
```
OUTPUT FINAL DEL SISTEMA (13 elementos que debe producir):

1.  Ficha completa del negocio
2.  Fórmula de páginas base
3.  URL Matrix completa
4.  Page Type Rules
5.  Content Architecture
6.  Schema Map
7.  Internal Linking Map
8.  Priority Score
9.  Publishing Plan
10. QA Checklist
11. Tracking Plan
12. Optimization Queue
13. Optional Expansion Plan
```

---

### 13.10 — Relación con Paso 14

**Qué produce:** Definición de la frontera entre el Paso 13 (sistema web completo) y el Paso 14 (creación GBP).

**Contenido canónico:**
```
RELACIÓN PASO 13 → PASO 14:

Paso 13 = website operating system complete
Paso 14 = GBP creation and website alignment

Paso 13 entrega:
- Homepage lista y live
- Service Overview Pages listas y live
- /madrid/ (GeoHub) listo y live
- Páginas /cerrajero/madrid/service/ listas y live
- Schema sin sameAs de GBP
- QA aprobado para todas las páginas publicadas

Paso 14 ejecuta (DESPUÉS de que web esté live):
- Creación del GBP
- Categoría principal: Cerrajero
- Categorías adicionales
- Servicios del perfil mapeados a URLs de la web
- Actualización de schema sameAs en HP y páginas clave
- Inserción de GBP URL en estado.json (outputs 14.x)

Regla final: El sistema web termina en el Paso 13. La entidad GBP se crea y sincroniza
en el Paso 14. Nunca crear GBP antes de que la web esté live.
```

---

### 13.11 — Checklist final de 13 preguntas

**Qué produce:** Checklist final del Paso 13 para verificar que el sistema está completo.

**Contenido canónico (§52):**
```
| Check | Pregunta | Estado |
|-------|----------|--------|
| 14 pasos | ¿El sistema final incluye los 14 pasos? | ✅ / ⬜ |
| Main City | ¿La base se construye sobre una sola Main City? | ✅ / ⬜ |
| Local Coverage | ¿Las áreas de cobertura no generan URLs por defecto? | ✅ / ⬜ |
| Expansion | ¿La expansión está separada y aprobada? | ✅ / ⬜ |
| Formula | ¿La fórmula base está actualizada? | ✅ / ⬜ |
| Matrix | ¿La URL Matrix tiene todos los tipos de página? | ✅ / ⬜ |
| Content | ¿El Paso 6 cubre estructura interna de contenido? | ✅ / ⬜ |
| Links | ¿El Paso 7 conecta todos los tipos de página? | ✅ / ⬜ |
| Score | ¿El Paso 8 usa Local Relevance (no City Priority)? | ✅ / ⬜ |
| QA | ¿El Paso 9 valida no fake location y no canibalización? | ✅ / ⬜ |
| Phases | ¿El Paso 10 publica por dependencias? | ✅ / ⬜ |
| Prompt | ¿El Paso 12 genera todo el sistema? | ✅ / ⬜ |
| Output | ¿El sistema final produce matrices, briefs, QA y roadmap? | ✅ / ⬜ |

Todos ✅ → sistema listo para Paso 14.
Algún ⬜ → completar antes de avanzar.
```

---

### 13.12 — 8 Outputs del Paso 13

**Qué produce:** La lista de outputs que el Paso 13 produce como entregables del SFO.

**Contenido canónico (§53):**
```
8 OUTPUTS DEL PASO 13:

1. SOP final de 14 pasos
2. Índice definitivo
3. Fórmula final base
4. Arquitectura del cliente aplicada (ejemplo Cerrajeros Madrid 24h)
5. Workflow operativo completo (21 pasos)
6. Reglas no negociables
7. Checklist final del sistema
8. Output final esperado para cualquier negocio local (13 elementos)
```

---

## Formato de respuesta

Responde con un JSON array con los 41 outputs del bloque. Todos tienen `"status"` obligatorio.
Para outputs `inferido`: campo `"notes"` obligatorio.
Para outputs `placeholder`: campo `"notes"` describe qué dato del cliente se necesita.

```json
[
  {
    "id": "11.1",
    "value": "...",
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "11.2",
    "value": "...",
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  ...continúa hasta 13.12
]
```

**Regla crítica:** Los outputs del Bloque 4 son doctrina pura de automatización (pseudocódigo, prompt, SFO). El AI los reproduce fielmente desde los a-docs. No los adapta ni los abrevia. El valor de cada output es el contenido doctrinal literal correspondiente a ese ID.
