Versión literal del chat · Sistema GMB Crush para webs locales
Documento generado siguiendo el esqueleto canónico (`00 convenciones/00convenciones.md` (§1 Esqueleto)).
Proveniencia: portado de `repos-1-y-2/Bloque 4 — Automatizacion/paso-11-pseudocodigo-sistema/`, alineado con los frameworks oficiales GMB Crush.

# Paso 11 — Pseudocódigo del Sistema

<small>§1</small>

> **Cómo leer este documento:**
> - **Bloque I — Introducción** describe qué produce el paso y qué hereda.
> - **Bloque II — Ejemplo rellenado** muestra los 16 outputs del Paso 11 con sus valores reales para Cerrajeros Madrid 24h.
> - **Bloque III — Ejecución por la IA** contiene los 4 sub-bloques operativos: outputs a conseguir, obtención de outputs, checklist final y outputs consolidados.
> - **Bloque IV — Fuentes Internas GMB Crush usadas** lista los frameworks GMB Crush en los que se basa el paso.

# Bloque I — Introducción

## Objetivo del Paso 11

<small>§2</small>

En este paso la IA produce todos los outputs que **expresan el sistema GMB Crush como pseudocódigo ejecutable** — las 16 funciones que cargan inputs, normalizan slugs, validan categorías, generan páginas (HP / SO / GH / LBS / AC / GA), inyectan cobertura local, asignan enlaces internos, calculan priority, validan dependencias, ejecutan QA y generan las matrices finales. Este paso NO produce datos nuevos: produce el **algoritmo** que orquesta los outputs heredados de Bloques 1-3 en una secuencia repetible.

**Outputs del paso:**

- **11.1** Función `load_inputs()` — recoge variables del preflight + outputs de Bloques 1-3
- **11.2** Función `normalize_slugs()` — slugify de todos los componentes
- **11.3** Función `validate_categories()` — eliminación de duplicados Additional vs core
- **11.4** Función `generate_homepage()` — algoritmo Homepage (HP)
- **11.5** Función `generate_service_overview()` — algoritmo Service Overview Pages × S
- **11.6** Función `generate_geohub()` — algoritmo Main City GeoHub
- **11.7** Función `generate_lbs()` — algoritmo Location-Based Service Pages × S
- **11.8** Función `generate_additional_category()` — algoritmo Additional Category Pages × A
- **11.9** Función `generate_geoarticles()` — algoritmo GeoArticles × G×S
- **11.10** Función `inject_local_coverage()` — inyección de LCAs en contenido + areaServed
- **11.11** Función `generate_expansion()` — opcional, solo si Approved Expansion ≠ vacío
- **11.12** Función `assign_internal_links()` — matriz de enlaces obligatorios por URL
- **11.13** Función `score_priority()` — aplicación de la fórmula maestra del Paso 8
- **11.14** Función `check_dependencies()` — validación de orden de publicación
- **11.15** Función `run_qa()` — validación de las 5 categorías QA del Paso 9
- **11.16** Función `output_matrices()` — generación URL Matrix + Schema Map + Link Map

**Errores que previene:**

- Ejecutar el sistema en orden caótico (rompe dependencias)
- Inventar inputs no heredados (que rompen trazabilidad)
- Olvidar validaciones intermedias (categorías duplicadas, slugs sucios)
- Saltar el QA gate antes de generar matrices finales
- Hacer expansion sin Approved Expansion declarado
- Re-implementar lógica que ya existe en Bloques 1-3
- Confundir generate_homepage con generate_lbs (rompe specs por page type)

**Cuándo se ejecuta:** después de Pasos 1-10 cerrados (Bloques 1-3 completos). Antes de Paso 12 (Master Prompt) y Paso 13 (Sistema Final Operativo).

## Info heredada de pasos anteriores

<small>§3</small>

> Este paso es **meta**: no consume outputs de un solo paso, sino que orquesta todos los de Bloques 1-3. Lista resumida:

| Bloque | Outputs heredados | Cómo se usan en el pseudocódigo |
|---|---|---|
| Bloque 1 (Pasos 1-3) | outputs intake + fórmula + matriz base | `load_inputs()` recoge intake + fórmula + matriz base |
| Bloque 2 (Pasos 4-7) | outputs URL rules + page types + content arch + linking | Las funciones `generate_*()` aplican URL rules + page type specs + content arch + linking |
| Bloque 3 (Pasos 8-10) | outputs scoring + QA + dependencias | `score_priority()` aplica Paso 8; `run_qa()` aplica Paso 9; `check_dependencies()` aplica Paso 10 |

# Bloque II — Ejemplo rellenado para el Paso 11 — Pseudocódigo del Sistema

<small>§4</small>

> Los 16 outputs del Paso 11 con sus valores reales para Cerrajeros Madrid 24h. Cada sub-sección §4.X corresponde 1:1 al output 11.X declarado en §5.

### 11.1 — Función `load_inputs()`

```text
INPUT business_name
INPUT website_root_domain
INPUT canonical_domain
INPUT primary_gbp_category
INPUT primary_category_slug
INPUT main_city
INPUT main_city_slug
INPUT physical_location_city
INPUT core_services[]
INPUT service_slugs[]
INPUT additional_gbp_categories[]
INPUT direct_local_coverage_areas[]
INPUT candidate_local_coverage_areas[]
INPUT approved_expansion_areas[]
INPUT geoarticles_per_service
INPUT nap
INPUT gbp_url
```

### 11.2 — Función `normalize_slugs()`

```text
FUNCTION generate_slug(text):
    lowercase
    remove accents
    replace spaces with hyphens
    remove symbols
    remove duplicate hyphens
    RETURN slug
```

### 11.3 — Función `validate_categories()`

```text
effective_additional_categories = []
FOR each additional_category:
    IF matches core service intent:
        mark as covered
    ELSE:
        add to effective_additional_categories
```

### 11.4 — Función `generate_homepage()`

```text
CREATE HP-001
type = Homepage
url = /
h1 = Brand + Primary Service + Main City
schema = Organization + WebSite + LocalBusiness if valid
priority = P1
phase = Phase 1
```

### 11.5 — Función `generate_service_overview()`

```text
FOR each service IN core_services:
    CREATE SO
    url = /category/service/
    city = null
    schema = Service + WebPage + BreadcrumbList
    links = homepage + related services + Main City service page
```

### 11.6 — Función `generate_geohub()`

```text
CREATE GH-001
url = /main-city/
city = main_city
include service menu
include additional categories
include local coverage areas
include GeoArticles
schema = CollectionPage + BreadcrumbList
```

### 11.7 — Función `generate_lbs()`

```text
FOR each service IN core_services:
    CREATE LBS
    url = /category/main-city/service/
    parent = /category/service/
    geohub = /main-city/
    content_uses = direct_local_coverage_areas + candidate_local_coverage_areas (filtrado por test GEO)
    schema = LocalBusiness + BreadcrumbList
```

### 11.8 — Función `generate_additional_category()`

```text
FOR each category IN effective_additional_categories:
    CREATE AC
    url = /category/main-city/category/
    geohub = /main-city/
    related_services = same-city services
    schema = Service with areaServed
```

### 11.9 — Función `generate_geoarticles()`

```text
FOR each service IN core_services:
    FOR i FROM 1 TO geoarticles_per_service:
        CREATE GA
        url = /main-city/article-topic/
        supports = /category/main-city/service/
        geohub = /main-city/
        schema = Article + FAQPage + BreadcrumbList + Speakable
```

### 11.10 — Función `inject_local_coverage()`

```text
FOR each content page:
    IF page_type supports local coverage:
        inject direct_local_coverage_areas into intro, examples, FAQs, areaServed
        inject candidate_local_coverage_areas only if GEO coherence test passes
    DO NOT generate URLs for any local_coverage_areas
```

### 11.11 — Función `generate_expansion()` (opcional)

```text
IF approved_expansion_areas is not empty:
    FOR each area IN approved_expansion_areas:
        generate optional expansion GeoHub
        generate optional expansion service pages
        generate optional expansion articles
ELSE:
    skip expansion URLs
```

### 11.12 — Función `assign_internal_links()`

```text
IF homepage:
    link to service overviews + Main City GeoHub + contact
IF service overview:
    link to Main City service page
IF LBS:
    link to parent service + GeoHub + related services + GeoArticles
IF GeoArticle:
    link to matching LBS + GeoHub + related article
```

### 11.13 — Función `score_priority()`

```text
score = revenue + intent + gbp_relevance + local_relevance + gap + urgency
IF score >= 26: P1
ELSE IF score >= 21: P2
ELSE IF score >= 16: P3
ELSE IF score >= 10: P4
ELSE: Hold
```

### 11.14 — Función `check_dependencies()`

```text
IF LBS:
    require homepage + service overview + geohub
IF GeoArticle:
    require matching LBS + geohub
IF expansion:
    require approved_expansion_area == true
```

### 11.15 — Función `run_qa()`

```text
CHECK url
CHECK page type
CHECK one service
CHECK Main City
CHECK local coverage usage
CHECK no false location
CHECK schema
CHECK internal links
CHECK no canibalization
CHECK CTA
```

### 11.16 — Función `output_matrices()`

```text
OUTPUT URL Matrix
OUTPUT Internal Linking Matrix
OUTPUT Schema Map
OUTPUT Priority Score
OUTPUT Publishing Plan
OUTPUT QA Matrix
```

# Bloque III — Ejecución por la IA

## Outputs a Conseguir

<small>§5</small>

> Tabla declarativa de los 16 outputs que el Paso 11 debe producir. Cada output tiene un ID global (`Paso.Output`, ej. `11.7`) citable desde cualquier doc del sistema.

| ID | Output | Tipo | Fuente | Hereda de |
|---|---|---|---|---|
| 11.1 | Función `load_inputs()` | Función pseudocódigo | Doctrina GMB Crush | Paso-01 + Paso-02 + Paso-03 |
| 11.2 | Función `normalize_slugs()` | Función pseudocódigo | Doctrina GMB Crush | Paso-02 2.2 + 2.3 + 2.4 + Paso-03 3.3 |
| 11.3 | Función `validate_categories()` | Función pseudocódigo | Doctrina GMB Crush | Paso-02 2.7 + 2.12 |
| 11.4 | Función `generate_homepage()` | Función pseudocódigo | Doctrina GMB Crush | Paso-04 4.3 + Paso-05 5.3 |
| 11.5 | Función `generate_service_overview()` | Función pseudocódigo | Doctrina GMB Crush | Paso-04 4.4 + Paso-05 5.4 |
| 11.6 | Función `generate_geohub()` | Función pseudocódigo | Doctrina GMB Crush | Paso-04 4.5 + Paso-05 5.7 + Paso-03 3.2 |
| 11.7 | Función `generate_lbs()` | Función pseudocódigo | Doctrina GMB Crush | Paso-04 4.6 + Paso-05 5.5 |
| 11.8 | Función `generate_additional_category()` | Función pseudocódigo | Doctrina GMB Crush | Paso-04 4.7 + Paso-05 5.6 + Paso-03 3.3 |
| 11.9 | Función `generate_geoarticles()` | Función pseudocódigo | Doctrina GMB Crush | Paso-04 4.8 + Paso-05 5.8 + Paso-03 3.4 |
| 11.10 | Función `inject_local_coverage()` | Función pseudocódigo | Doctrina GMB Crush | Paso-06 6.2 + 6.12 + 6.17 |
| 11.11 | Función `generate_expansion()` | Función pseudocódigo opcional | Doctrina GMB Crush | Paso-01 1.11 + Paso-04 4.10 |
| 11.12 | Función `assign_internal_links()` | Función pseudocódigo | Doctrina GMB Crush | Paso-07 7.9 + 7.11 |
| 11.13 | Función `score_priority()` | Función pseudocódigo | Doctrina GMB Crush | Paso-08 8.1-8.10 |
| 11.14 | Función `check_dependencies()` | Función pseudocódigo | Doctrina GMB Crush | Paso-08 8.11 + Paso-10 10.10 |
| 11.15 | Función `run_qa()` | Función pseudocódigo | Doctrina GMB Crush | Paso-09 9.2-9.8 |
| 11.16 | Función `output_matrices()` | Función pseudocódigo | Doctrina GMB Crush | Paso-03 3.5 + 3.8 + Paso-07 7.11 |

## Obtención de Outputs

<small>§6</small>

> Esta sección es donde la IA produce cada uno de los 16 outputs (11.1–11.16). Cada output usa el patrón estándar adaptado a pseudocódigo: Explicación / Firma de la función / Lógica interna / Ejemplo Cerrajeros / Ejemplos incorrectos / Regla / Validación / Cómo se obtiene / Output del paso.

### 11.1 — Función `load_inputs()`

<small>§6.1</small>

**Explicación**

Función de entrada del sistema. Recoge **todas las variables** del preflight + outputs de Bloques 1-3 en un único objeto.

**Firma de la función**

```python
def load_inputs() -> dict
```

**Lógica interna**

```text
1. Leer 00preflight.md (5 campos del cliente)
2. Leer §8 Outputs Consolidados de los a-docs 01a, 02a, 03a (Bloque 1)
3. Leer §8 de los a-docs 04a, 05a, 06a, 07a (Bloque 2)
4. Leer §8 de los a-docs 08a, 09a, 10a (Bloque 3)
5. Devolver dict con todas las variables
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 11.1.

**Ejemplos incorrectos**

```text
- Inventar un campo no presente en preflight ni en outputs heredados
- Saltar la validación de status (cargar outputs ⚠ inferido como confirmed)
- Omitir Bloques completos
```

**Regla final**

```text
load_inputs() es source-of-truth: todo input usado downstream viene de aquí.
```

**Validación operativa**

Aplicar al inicio del flujo. Validar que los outputs upstream están en `confirmed`.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Lectura programática de los §8 de cada a-doc + preflight.

**Output del paso**

- **Tipo:** Función pseudocódigo + dict resultado.
- **Ejemplo (Cerrajeros Madrid 24h):** dict con campos de Paso 1 + slugs Paso 2 + matriz Paso 3.

### 11.2 — Función `normalize_slugs()`

<small>§6.2</small>

**Explicación**

Normaliza todos los componentes que aparecen en URLs: categoría primaria, Main City, servicios, categorías adicionales.

**Firma de la función**

```python
def normalize_slugs(inputs: dict) -> dict
```

**Lógica interna**

```text
1. Aplicar slugify a primary_gbp_category → primary_category_slug
2. Aplicar slugify a main_city → main_city_slug
3. Aplicar slugify a cada core_service → service_slugs[]
4. Aplicar slugify a cada Additional Category con needs_page=True → additional_category_slugs[]
5. Cumplir formato: lowercase + sin acentos + kebab-case
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 11.2.

**Ejemplos incorrectos**

```text
- Slugs con mayúsculas (Cerrajero-Urgente) — viola Paso-04 4.13
- Slugs con espacios (cerrajero urgente)
- Slugs con caracteres especiales
```

**Regla final**

```text
Todos los slugs cumplen slugify estándar (cruza con Paso-02 2.2-2.4 + Paso-03 3.3).
```

**Validación operativa**

Aplicar tras `load_inputs()`. Cruce con Paso-04 4.13.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Implementar slugify estándar.

**Output del paso**

- **Tipo:** Función pseudocódigo + dict de slugs.
- **Ejemplo (Cerrajeros Madrid 24h):** `cerrajero` + `madrid` + 5 service_slugs + 1 additional_slug.

### 11.3 — Función `validate_categories()`

<small>§6.3</small>

**Explicación**

Cruza Additional Categories declaradas vs core services y elimina duplicaciones.

**Firma de la función**

```python
def validate_categories(inputs: dict) -> list[dict]
```

**Lógica interna**

```text
1. Iterar additional_gbp_categories
2. Si needs_page=True, validar que NO esté cubierta por algún core_service
3. Si está cubierta → marcar como "Servicio cubierto"
4. Si no está cubierta → añadir a effective_additional[]
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 11.3 — `cerrajería de urgencia` se elimina (cubierta); `duplicado de llaves` queda como única efectiva.

**Ejemplos incorrectos**

```text
- Generar página AC para una categoría ya cubierta (canibalización)
- Olvidar el check de semantic match
```

**Regla final**

```text
Una categoría adicional solo genera página propia si NO está cubierta por core service.
```

**Validación operativa**

Aplicar tras `load_inputs()`. Cruce con Paso-02 2.7 y 2.12.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Comparar semánticamente cada categoría adicional con cada core service.

**Output del paso**

- **Tipo:** Función pseudocódigo + lista categorías efectivas.
- **Ejemplo (Cerrajeros Madrid 24h):** `[{"name": "Servicio de duplicado de llaves"}]` (A=1).

### 11.4 — Función `generate_homepage()`

<small>§6.4</small>

**Explicación**

Genera la **única Homepage** del cluster aplicando spec Paso-05 5.3 (Root Entity Anchor). La Homepage es la raíz de entidad — concentra señales de marca, categoría GBP, Main City, NAP, servicios y cobertura.

**Firma de la función**

```python
def generate_homepage(inputs: dict) -> dict
```

**Lógica interna**

```text
1. Asignar URL = '/'
2. H1 con template: '[Brand] – [Primary Service] de confianza en [Main City]'
3. Meta Title: '[Primary Service] en [Main City] | [Brand]'
4. Meta Description: pregunta + servicios + ciudad + Llama hoy
5. Schema: Organization + WebSite + LocalBusiness + FAQPage + Speakable
6. Estructura: bloques de Homepage (Paso-06 6.6) — H1 → Intro → Quick Answer → Services
   → Coverage Preview → Trust → FAQ → NAP → CTA → Internal Links
7. Word count target: 900-1,300 (Paso-05 5.10)
8. Internal links: SO-001..S, GH, AC-001..A, AUX (Paso-07 7.11)
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 11.4 — HP-001 con todos los campos.

**Ejemplos incorrectos**

```text
- Homepage con multiple services como targets (rompe rol Root Entity)
- Homepage targeting 5 cities equally
- Homepage sin NAP
- Homepage sin enlaces a service pages
```

**Regla final**

```text
generate_homepage() produce 1 Homepage = Root Entity Anchor con bloques estructurales + schema completo.
```

**Validación operativa**

Aplicar al inicio de la generación. Cruce con Paso-05 5.3 + Paso-06 6.6.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Aplicar spec Homepage del Paso-05 5.3 con inputs heredados.

**Output del paso**

- **Tipo:** Función pseudocódigo + dict Homepage.
- **Ejemplo (Cerrajeros Madrid 24h):** 1 Homepage HP-001 (`/`).

### 11.5 — Función `generate_service_overview()`

<small>§6.5</small>

**Explicación**

Genera **S Service Overview Pages** (una por core service) aplicando spec Paso-05 5.4 (Topical Authority Pillars). **Crucial**: las SO son **NO geolocalizadas** — su rol es pilar temático que sustenta las versiones locales (LBS).

**Firma de la función**

```python
def generate_service_overview(inputs: dict, slugs: dict) -> list[dict]
```

**Lógica interna**

```text
1. Iterar core_services (longitud S, default 5)
2. Por cada service:
   - URL: /[primary-cat-slug]/[service-slug]/
   - H1: 'Servicios profesionales de [Service] por [Brand]'
   - Meta Title: '[Service] por [Brand] | Expertos en [Primary Category]'
   - Schema: Service + WebPage + BreadcrumbList + Speakable
   - Estructura: H1 → Intro NO local → AUDIO H2s → Bullets → FAQs → CTA → Links
   - Word count: 850-1,000
   - Internal links: HP, otras SO, LBS matching, GA relevante
   - is_local: False  (CRÍTICO)
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 11.5 — 5 SO pages: SO-001 Cerrajero urgente, SO-002 Apertura de puertas, SO-003 Cambio de cerraduras, SO-004 Cambio de bombines, SO-005 Instalación de cerraduras de seguridad.

**Ejemplos incorrectos**

```text
- SO con Madrid como target principal (rompe rol no-local)
- SO escrita como artículo informacional (rompe rol comercial)
- URL /cerrajero/madrid/cerrajero-urgente/ como SO (esa URL es LBS)
```

**Regla final**

```text
generate_service_overview() produce S SO no-locales. NO target Main City. NO target LCAs.
```

**Validación operativa**

Aplicar tras `validate_categories()`. Cruce con Paso-05 5.4 + Paso-06 6.7.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Aplicar spec SO del Paso-05 5.4 replicada × S core services.

**Output del paso**

- **Tipo:** Función pseudocódigo + lista de S SO.
- **Ejemplo (Cerrajeros Madrid 24h):** 5 SO en `/cerrajero/{service}/`.

### 11.6 — Función `generate_geohub()`

<small>§6.6</small>

**Explicación**

Genera el **único Main City GeoHub** aplicando spec Paso-05 5.7 (Main City Silo Container). El GeoHub agrupa TODAS las señales de la Main City: servicios + categorías + LCAs + GeoArticles.

**Firma de la función**

```python
def generate_geohub(inputs: dict, slugs: dict, all_pages: list) -> dict
```

**Lógica interna**

```text
1. URL: /[main-city-slug]/   (Option A, default; Paso-03 3.2)
2. H1: '[Brand] – Servicios de [Industry] en [Main City]'
3. Meta Title: 'Servicios de [Industry] en [Main City] | [Brand]'
4. Schema: CollectionPage + BreadcrumbList (+ LocalBusiness opcional)
5. Estructura: bloques de GeoHub (Paso-06 6.10):
   H1 → City Intro → Menú servicios (S LBS) → AC Menu (A AC) →
   LCAs Section → GeoArticle Resources (G×S GAs) → Trust → CTA → Links
6. Word count: 700-1,100
7. Internal links: HP, las S LBS, las A AC, los G×S GAs, AUX
8. lcas_section = True (GH es donde las LCAs son visibles como menu)
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 11.6 — 1 GeoHub `/madrid/` con menú de servicios + AC + GAs.

**Ejemplos incorrectos**

```text
- GeoHub con only generic city text (sin menús de servicios)
- GeoHub sin links a service pages
- Tratar Almagro como child page (rompe LCAs sin URL)
- GeoHub sin CTA
```

**Regla final**

```text
generate_geohub() produce 1 GeoHub = Main City Silo Container con menús completos.
```

**Validación operativa**

Aplicar tras `generate_service_overview()`. Cruce con Paso-05 5.7 + Paso-06 6.10.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Aplicar spec GeoHub Paso-05 5.7 al GeoHub Main City con URL Option A o B (Paso-03 3.2).

**Output del paso**

- **Tipo:** Función pseudocódigo + dict GeoHub.
- **Ejemplo (Cerrajeros Madrid 24h):** 1 GeoHub `/madrid/`.

### 11.7 — Función `generate_lbs()`

<small>§6.7</small>

**Explicación**

Genera **S Location-Based Service Pages** (una por core service en la Main City) aplicando spec Paso-05 5.5 (Main City Converters). Son las páginas comerciales más importantes — convierten búsquedas locales de alta intención.

**Firma de la función**

```python
def generate_lbs(inputs: dict, slugs: dict) -> list[dict]
```

**Lógica interna**

```text
1. Iterar core_services (longitud S)
2. Por cada service:
   - URL: /[primary-cat-slug]/[main-city-slug]/[service-slug]/
   - H1: '[Brand] – [Service] en [Main City]'
   - Meta Title: 'Top [Service] en [Main City] | [Brand]'
   - Meta Description: pregunta local + dolor + Llama
   - Schema: LocalBusiness + BreadcrumbList + FAQPage + Speakable
   - Estructura: bloques de LBS (Paso-06 6.8):
     H1 → Intro local → Quick Local Answer → AUDIO H2s →
     H2 Local Pain Points → H2 LCAs Section → H2 Related Services →
     FAQs → CTA → Links
   - Word count: 800-1,000
   - Internal links: parent SO, GH, otras LBS lateral, GAs, AUX
   - lcas_in_content = True (LCAs en H2 dedicado)
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 11.7 — 5 LBS en Madrid:
- LBS-001: `/cerrajero/madrid/cerrajero-urgente/`
- LBS-002: `/cerrajero/madrid/apertura-puertas/`
- LBS-003: `/cerrajero/madrid/cambio-cerraduras/`
- LBS-004: `/cerrajero/madrid/cambio-bombines/`
- LBS-005: `/cerrajero/madrid/instalacion-cerraduras-seguridad/`

**Ejemplos incorrectos**

```text
- Mezclar Madrid and Almagro as equal targets en H1
- Crear 1 página por cada zona de cobertura
- Afirmar oficina en Salamanca
- Combinar 2 servicios en una sola landing local (rompe One Service)
```

**Regla final**

```text
generate_lbs() produce S LBS = Main City Converters con LCAs Section + areaServed.
```

**Validación operativa**

Aplicar tras `generate_geohub()`. Cruce con Paso-05 5.5 + Paso-06 6.8.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Aplicar spec LBS Paso-05 5.5 replicada × S core services × Main City.

**Output del paso**

- **Tipo:** Función pseudocódigo + lista de S LBS.
- **Ejemplo (Cerrajeros Madrid 24h):** 5 LBS en `/cerrajero/madrid/{service}/`.

### 11.8 — Función `generate_additional_category()`

<small>§6.8</small>

**Explicación**

Genera **A Additional Category Pages** (una por categoría efectiva tras `validate_categories()`) aplicando spec Paso-05 5.6 (GBP Additional Category Support). Solo se generan para categorías que NO están cubiertas por un core service.

**Firma de la función**

```python
def generate_additional_category(inputs: dict, slugs: dict, effective_additional: list) -> list[dict]
```

**Lógica interna**

```text
1. Iterar effective_additional (longitud A)
2. Por cada cat:
   - URL: /[primary-cat-slug]/[main-city-slug]/[additional-slug]/
   - H1: '[Brand] – [Additional Service] experto en [Main City]'
   - Meta Title: '[Additional Service] en [Main City] | [Brand]'
   - Schema: Service (con areaServed) + BreadcrumbList + FAQPage opcional
   - Estructura: bloques de AC (Paso-06 6.9)
   - Word count: 800-1,000
   - Internal links: GH, LBS Madrid relacionadas, GAs relevantes, AUX
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 11.8 — 1 AC: `/cerrajero/madrid/duplicado-llaves/` (A=1, solo `Servicio de duplicado de llaves` queda efectivo).

**Ejemplos incorrectos**

```text
- Crear /cerrajero/madrid/cerrajero-urgente/ como AC (canibaliza con LBS-001)
- AC sin local context
- AC sin links a GeoHub
- AC para una categoría que ya está cubierta por core service
```

**Regla final**

```text
generate_additional_category() solo genera A páginas (categorías efectivas, no duplicadas con core).
```

**Validación operativa**

Aplicar tras `generate_lbs()`. Cruce con Paso-05 5.6 + Paso-06 6.9 + Paso-02 2.12.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Aplicar spec AC Paso-05 5.6 a las A categorías efectivas con slugs Paso-03 3.3.

**Output del paso**

- **Tipo:** Función pseudocódigo + lista de A AC.
- **Ejemplo (Cerrajeros Madrid 24h):** 1 AC `/cerrajero/madrid/duplicado-llaves/`.

### 11.9 — Función `generate_geoarticles()`

<small>§6.9</small>

**Explicación**

Genera **G×S GeoArticles** (G topics por cada core service) aplicando spec Paso-05 5.8 (Semantic Boosters). Los GAs **NO son landing comerciales** — son boosters semánticos que apoyan a las LBS y al GeoHub.

**Firma de la función**

```python
def generate_geoarticles(inputs: dict, slugs: dict, geo_topics_by_service: dict) -> list[dict]
```

**Lógica interna**

```text
1. Iterar core_services × geo_topics_by_service[service] (validados con keyword research, Paso-03 3.4)
2. Por cada (service, topic):
   - URL: /[main-city-slug]/[topic-slug]/
   - H1: '[Article Topic] in [Main City]'
   - Meta Title: '[Article Topic] in [Main City] | [Brand]'
   - Schema: Article + FAQPage + BreadcrumbList + Speakable
   - Estructura: bloques de GeoArticle (Paso-06 6.11):
     H1 → Intro contextual → H2 Problem → H2 Local Context →
     H2 Options/Mistakes → H2 When to Call → H2 Local Examples →
     FAQs → CTA → Links
   - Word count: 1,000-1,500
   - Internal links: matching LBS (parent obligatorio Paso-08 8.11), GH, GAs related, AUX
   - parent_lbs: f"LBS-{service_idx+1}"
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 11.9 — 15 GAs en `/madrid/{topic}/`:
- 3 por Cerrajero urgente: cuanto-cuesta-... / que-hacer-si-no-puedes-... / cuanto-tarda-...
- 3 por Apertura de puertas: cuanto-cuesta-abrir-... / que-hacer-si-te-dejas-llaves / sin-romper-cerradura
- 3 por Cambio cerraduras: cuando-cambiar-... / cambio-tras-perder-llaves / cerradura-nueva-o-reparacion
- 3 por Cambio bombines: cuando-cambiar-bombin / antibumping / cambio-bombin-sin-cambiar-cerradura
- 3 por Instalación seguridad: mejores-cerraduras-viviendas / comunidades / puerta-blindada

**Ejemplos incorrectos**

```text
- GA con H1 idéntico a su LBS hijo (canibalización)
- GA escrito como landing comercial (rompe rol semantic booster)
- GA sin parent LBS (rompe Paso-08 8.11)
- Más GAs que G×S (rompe fórmula 2.8)
```

**Regla final**

```text
generate_geoarticles() produce G×S GAs como semantic boosters; cada uno con parent LBS.
```

**Validación operativa**

Aplicar tras `generate_additional_category()`. Cruce con Paso-05 5.8 + Paso-06 6.11 + Paso-08 8.11.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Aplicar spec GA Paso-05 5.8 a G×S combinaciones service × topic (topics de Paso-03 3.4).

**Output del paso**

- **Tipo:** Función pseudocódigo + lista de G×S GAs.
- **Ejemplo (Cerrajeros Madrid 24h):** 15 GAs en `/madrid/{topic}/`.

### 11.10 — Función `inject_local_coverage()`

<small>§6.10</small>

**Explicación**

Inyecta las LCAs (Direct + Candidate) en el contenido y schema `areaServed` de las páginas locales. Las páginas no-locales (SO) reciben lista vacía. La Homepage solo recibe Main City.

**Firma de la función**

```python
def inject_local_coverage(pages: list, lcas: dict, page_type_uses_lcas: list) -> list
```

**Lógica interna**

```text
1. Para cada page:
   - Si page_type ∈ {LBS, GeoHub, AC, GeoArticle} → inyectar lcas (direct + candidate)
   - Si page_type = Homepage → inyectar solo Main City
   - Si page_type = SO → inyectar [] (no-local)
2. Schema areaServed:
   - LBS, GH, AC, GA: [Main City] + lcas direct + lcas candidate
   - HP: [Main City]
   - SO: [] o sin areaServed
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Páginas locales (LBS, GH, AC, GA) con LCAs (Direct + Candidate aprobadas) en areaServed; SO sin LCAs.

**Ejemplos incorrectos**

```text
- Inyectar LCAs en SO (rompe rol pilar temático)
- Olvidar areaServed en LBS
- Mencionar LCA no aprobada
```

**Regla final**

```text
LCAs en contenido + areaServed solo en page types locales; SO siempre no-local.
```

**Validación operativa**

Aplicar tras `generate_geoarticles()`. Cruce con Paso-06 6.2 + 6.12 + 6.17.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Iterar páginas, mapear page_type → conjunto LCAs según matriz Paso-06 6.12.

**Output del paso**

- **Tipo:** Función pseudocódigo + páginas con `content_lcas` y `schema_areaServed`.
- **Ejemplo (Cerrajeros Madrid 24h):** páginas locales con LCAs en areaServed; SO sin LCAs.

### 11.11 — Función `generate_expansion()`

<small>§6.11</small>

**Explicación**

Función opcional. Solo se ejecuta si Approved Expansion Areas ≠ vacío. En Phase 1 web-first default, NO se ejecuta.

**Firma de la función**

```python
def generate_expansion(inputs: dict) -> list[dict]
```

**Lógica interna**

```text
1. Si approved_expansion_areas == [] → return []
2. Por cada area: generar GeoHub + S LBS + G×S GAs replicando lógica de generate_*()
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```python
generate_expansion(inputs) == []  # Phase 1, E=0
```

**Ejemplos incorrectos**

```text
- Generar expansion sin aprobación
- Mezclar LBS de Approved Area con LBS de Main City
```

**Regla final**

```text
generate_expansion() solo se ejecuta tras decisión explícita del operador.
```

**Validación operativa**

Cruce con Paso-01 1.11 + Paso-04 4.10.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Replicar lógica de generate_*() para cada Approved Area.

**Output del paso**

- **Tipo:** Función pseudocódigo + lista (puede estar vacía).
- **Ejemplo (Cerrajeros Madrid 24h):** `[]`.

### 11.12 — Función `assign_internal_links()`

<small>§6.12</small>

**Explicación**

Asigna los enlaces internos según la matriz del Paso-07 7.11.

**Firma de la función**

```python
def assign_internal_links(pages: list[dict]) -> list[dict]
```

**Lógica interna**

```text
1. Para cada page: determinar enlaces Required según page_type (matriz 7.11)
2. Por cada link target: validar que target existe + asignar anchor (Paso-07 7.9) + dirección
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Enlaces internos asignados en todo el cluster según matriz Paso-07 7.11.

**Ejemplos incorrectos**

```text
- Enlazar a URL no existente (link roto)
- Anchors todos branded
- Saltar enlaces Required
```

**Regla final**

```text
assign_internal_links() cumple matriz Paso-07 7.11 + anchors variados Paso-07 7.9.
```

**Validación operativa**

Cruce con Paso-07 7.14.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Lookup matriz 7.11 + selección anchor por catálogo 7.9.

**Output del paso**

- **Tipo:** Función pseudocódigo + lista de tuplas.
- **Ejemplo (Cerrajeros Madrid 24h):** matriz de enlaces aplicada al cluster.

### 11.13 — Función `score_priority()`

<small>§6.13</small>

**Explicación**

Aplica la fórmula maestra del Paso-08 8.1 a cada URL.

**Firma de la función**

```python
def score_priority(pages: list[dict]) -> list[dict]
```

**Lógica interna**

Ver §4 sub-sección 11.13.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Cada URL del cluster recibe score y tier según fórmula maestra del Paso-08.

**Ejemplos incorrectos**

```text
- Sumar con pesos distintos (rompe fórmula)
- Olvidar HP=P1 (viola 8.12)
```

**Regla final**

```text
score_priority() aplica fórmula completa con peso 1; HP siempre P1.
```

**Validación operativa**

Cruce con Paso-08 8.1-8.10 + 8.12.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Implementar 6 funciones de medición + suma + mapeo a tier/phase.

**Output del paso**

- **Tipo:** Función pseudocódigo + páginas scored.
- **Ejemplo (Cerrajeros Madrid 24h):** páginas del cluster con scores y tiers.

### 11.14 — Función `check_dependencies()`

<small>§6.14</small>

**Explicación**

Valida que cada página puede publicarse cuando le toca según su Phase.

**Firma de la función**

```python
def check_dependencies(scored_pages: list[dict]) -> list[dict]
```

**Lógica interna**

Ver §4 sub-sección 11.14.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Páginas del cluster validadas; ninguna queda Blocked si las dependencias se cumplen.

**Ejemplos incorrectos**

```text
- Publicar GA en Phase 2 cuando su LBS está en Phase 3
- Olvidar validar parent SO en LBS
```

**Regla final**

```text
check_dependencies() bloquea cualquier publicación que viole orden parent → child.
```

**Validación operativa**

Cruce con Paso-10 10.10.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Lookup parents (Paso-03 3.7) + comparar phases + bloquear conflictos.

**Output del paso**

- **Tipo:** Función pseudocódigo + páginas con flag.
- **Ejemplo (Cerrajeros Madrid 24h):** páginas validadas sin Blocked.

### 11.15 — Función `run_qa()`

<small>§6.15</small>

**Explicación**

Aplica las 5 categorías QA del Paso-09 9.2-9.6 + Final Publish Gate (9.7).

**Firma de la función**

```python
def run_qa(pages: list[dict]) -> list[dict]
```

**Lógica interna**

Ver §4 sub-sección 11.15.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Páginas que pasan QA gate; GBP checklist sin violaciones.

**Ejemplos incorrectos**

```text
- Saltar alguna categoría QA (rompe gate doctrinal)
- Marcar Pass sin haber validado realmente
```

**Regla final**

```text
run_qa() aplica las 5 categorías + gate; cualquier No bloquea la publicación.
```

**Validación operativa**

Cruce con Paso-09 9.2-9.8.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** 5 funciones QA + gate consolidation + opcional GBP checklist.

**Output del paso**

- **Tipo:** Función pseudocódigo + páginas con qa, publish_gate, gbp_checklist.
- **Ejemplo (Cerrajeros Madrid 24h):** páginas con publish_gate Pass.

### 11.16 — Función `output_matrices()`

<small>§6.16</small>

**Explicación**

Genera las **3 matrices finales** que el Paso 13 (SOP) consume.

**Firma de la función**

```python
def output_matrices(scored_pages: list[dict], link_matrix: list[dict]) -> dict
```

**Lógica interna**

Ver §4 sub-sección 11.16.

**Ejemplo correcto con Cerrajeros Madrid 24h**

3 matrices: URL Matrix + Schema Map + Link Map.

**Ejemplos incorrectos**

```text
- Omitir alguna columna doctrinal
- Schema Map con tipos inventados
- Link Map con URLs no existentes
```

**Regla final**

```text
output_matrices() produce las 3 matrices que consume el SOP del Paso 13.
```

**Validación operativa**

Cruce con Paso-03 3.5 + 3.8 + Paso-07 7.11.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Serializar las páginas scored + link_matrix en 3 estructuras.

**Output del paso**

- **Tipo:** Función pseudocódigo + dict con 3 matrices.
- **Ejemplo (Cerrajeros Madrid 24h):** URL Matrix + Schema Map + Link Map.

## Checklist Final

<small>§7</small>

> Validación operativa antes de cerrar el Paso 11 y avanzar al Paso 12 (Master Prompt).

### Validación de funciones de carga y normalización

- ☐ Función `load_inputs()` recoge los outputs upstream de Bloques 1-3 (11.1)
- ☐ Función `normalize_slugs()` produce slugs limpios (11.2)
- ☐ Función `validate_categories()` elimina duplicados (11.3)

### Validación de las 6 funciones de generación de páginas

- ☐ Función `generate_homepage()` produce 1 HP con spec 5.3 (11.4)
- ☐ Función `generate_service_overview()` produce S SO no-locales con spec 5.4 (11.5)
- ☐ Función `generate_geohub()` produce 1 GH con spec 5.7 (11.6)
- ☐ Función `generate_lbs()` produce S LBS con spec 5.5 (11.7)
- ☐ Función `generate_additional_category()` produce A AC con spec 5.6 (11.8)
- ☐ Función `generate_geoarticles()` produce G×S GAs con spec 5.8 (11.9)

### Validación de funciones de orquestación

- ☐ Función `inject_local_coverage()` aplica LCAs correctamente (11.10)
- ☐ Función `generate_expansion()` opcional según E (11.11)
- ☐ Función `assign_internal_links()` cumple matriz 7.11 (11.12)
- ☐ Función `score_priority()` aplica fórmula 8.1 (11.13)
- ☐ Función `check_dependencies()` bloquea violaciones (11.14)
- ☐ Función `run_qa()` aplica las 5 categorías + gate (11.15)
- ☐ Función `output_matrices()` produce 3 matrices (11.16)

## Outputs Consolidados

<small>§8</small>

> Tabla final compacta con la trazabilidad row-per-output. Los IDs (`11.1`–`11.16`) coinciden con los declarados en §5. Esta tabla es la fuente única de la trazabilidad consolidada del paso (sustituye al antiguo b-doc).

| ID | Hereda de | Output y valor (Cerrajeros Madrid 24h) | Cómo se obtiene + Fuente | Status |
|---|---|---|---|---|
| 11.1 | ← Paso-01 1.1-1.14 + Paso-02 + Paso-03 | **Función load_inputs()** = dict con variables Cerrajeros | Lectura programática de §8 de cada a-doc + preflight. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.2 | ← Paso-02 2.2-2.4 + Paso-03 3.3 | **Función normalize_slugs()** = `cerrajero` + `madrid` + 5 service_slugs + 1 additional_slug | Implementar slugify estándar. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.3 | ← Paso-02 2.7 + 2.12 | **Función validate_categories()** = effective_additional con `[duplicado-llaves]` (A=1) | Comparar Additional vs core; aplicar criterio cobertura. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.4 | ← Paso-04 4.3 + Paso-05 5.3 | **Función generate_homepage()** = 1 Homepage HP-001 (`/`) con bloques estructurales | Aplicar spec Homepage del Paso-05 5.3 con inputs heredados. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.5 | ← Paso-04 4.4 + Paso-05 5.4 | **Función generate_service_overview()** = 5 SO `/cerrajero/{service}/` no-locales | Aplicar spec SO del Paso-05 5.4 replicada × S core services. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.6 | ← Paso-04 4.5 + Paso-05 5.7 + Paso-03 3.2 | **Función generate_geohub()** = 1 GeoHub `/madrid/` con bloques estructurales del Paso-05 5.7 | Aplicar spec GeoHub Paso-05 5.7 al GeoHub Main City. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.7 | ← Paso-04 4.6 + Paso-05 5.5 | **Función generate_lbs()** = 5 LBS `/cerrajero/madrid/{service}/` con LCAs Section + areaServed | Aplicar spec LBS Paso-05 5.5 replicada × S × Main City. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.8 | ← Paso-04 4.7 + Paso-05 5.6 + Paso-03 3.3 | **Función generate_additional_category()** = 1 AC `/cerrajero/madrid/duplicado-llaves/` (A=1) | Aplicar spec AC Paso-05 5.6 a las A categorías efectivas. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.9 | ← Paso-04 4.8 + Paso-05 5.8 + Paso-03 3.4 | **Función generate_geoarticles()** = 15 GAs `/madrid/{topic}/` (3 por servicio × 5 servicios) | Aplicar spec GA Paso-05 5.8 a G×S combinaciones service × topic. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.10 | ← Paso-06 6.2 + 6.12 + 6.17 | **Función inject_local_coverage()** = páginas locales con LCAs inyectadas en areaServed | Iterar páginas, mapear page_type → LCAs según matriz 6.12. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.11 | ← Paso-01 1.11 + Paso-04 4.10 | **Función generate_expansion()** = `[]` (Phase 1, E=0) | Replicar lógica generate_*() para cada Approved Area. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.12 | ← Paso-07 7.9 + 7.11 | **Función assign_internal_links()** = enlaces internos según matriz 7.11 | Lookup matriz 7.11 + selección anchor por catálogo 7.9. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.13 | ← Paso-08 8.1-8.10 | **Función score_priority()** = páginas del cluster con score y tier (P1/P2/P3/P4/Hold según thresholds 26/21/16/10) | Aplicar fórmula maestra 8.1; HP siempre P1. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.14 | ← Paso-08 8.11 + Paso-10 10.10 | **Función check_dependencies()** = páginas validadas contra parents + phases | Lookup parents + comparar phases + bloquear conflictos. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.15 | ← Paso-09 9.2-9.8 | **Función run_qa()** = páginas con publish_gate consolidado | 5 funciones QA + gate consolidation + GBP checklist. **Fuente:** Doctrina GMB Crush. | confirmed |
| 11.16 | ← Paso-03 3.5 + 3.8 + Paso-07 7.11 | **Función output_matrices()** = 3 matrices (URL Matrix + Schema Map + Link Map) | Serializar páginas scored + link_matrix. **Fuente:** Doctrina GMB Crush. | confirmed |

# Bloque IV — Fuentes Internas GMB Crush usadas

## Fuentes internas GMB Crush usadas

<small>§9</small>

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework
- Pseudocódigo del sistema GMB Crush (formalización algorítmica)

> **Nota importante — Pseudocódigo como contrato:**
> Las 16 funciones del Paso 11 NO inventan lógica nueva — formalizan en código la doctrina ya establecida en Bloques 1-3. Si una función necesita un input no presente en los outputs upstream, hay que volver al paso correspondiente y producirlo allí. El Paso 11 es el "compilador" del sistema, no su fuente. Las 6 funciones individuales `generate_*()` (HP/SO/GH/LBS/AC/GA) cumplen la separación de page types del Paso 5 — cada función aplica el spec doctrinal de su page type.
