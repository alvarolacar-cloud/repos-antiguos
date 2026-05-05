Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 12 — Master Prompt Reutilizable

## Índice corto

**Paso 12 — Master Prompt Reutilizable**

## Objetivo del Paso 12

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: convertir todo el sistema en un prompt maestro reutilizable que genere arquitectura, matriz, contenidos, schema, enlaces, prioridad, QA y roadmap para cualquier negocio local.
La web local no debe construirse desde la intuición, sino desde una secuencia operativa que conecta entidad, categoría GBP, servicios, ciudad principal, cobertura local, schema, contenido e interlinking.
El objetivo es que cada dato que se recoge o cada página que se crea tenga una función clara dentro del ecosistema local.
Cuando este paso se omite, la arquitectura empieza a crecer de forma desordenada.
Eso produce páginas duplicadas, URLs sin intención, contenidos genéricos, señales locales débiles y problemas de canibalización.
La metodología GMB Crush busca evitar precisamente ese escenario.
Por eso cada paso debe indicar qué se rellena, qué se genera, qué se revisa y qué errores previene.
En la versión simplificada del sistema usamos una Main City como base de arquitectura.
Las Local Coverage Areas no generan URLs por defecto.
Las Local Coverage Areas se usan para reforzar el contenido, los ejemplos locales, las FAQs y el schema areaServed.
Solo las Approved Expansion Areas pueden convertirse en URLs propias cuando exista una justificación clara.
Esta separación evita confundir cobertura real con arquitectura obligatoria.
También evita que un negocio local pequeño acabe con cientos de páginas antes de tener una base sólida.
El criterio principal es crear primero las páginas que soportan la entidad, la categoría GBP y la intención comercial.
Después se añaden artículos, enlaces internos, QA y optimización.
Este paso debe ejecutarse antes de avanzar al siguiente.
Si se salta o se rellena mal, los pasos posteriores arrastran errores.
La revisión final debe comprobar que cada elemento tiene una función SEO, una función local y una función de conversión.
Error que previene: usar prompts incompletos que solo generan formularios.
Error que previene: omitir el cuerpo operativo de cada paso.
Error que previene: mezclar Target Cities y Secondary Cities en la base.
Error que previene: crear URLs para Local Coverage Areas sin aprobación.
Error que previene: generar outputs sin matriz, sin enlaces, sin QA o sin fases.

## Lo que tienes que rellenar

```text
Business Name:

Website Root Domain:

Canonical Domain:
Option A: https://www.domain.com
Option B: https://domain.com

Country:

State / Province:

Main City:

Main City Slug:

Physical Location City:

Full NAP:
- Business Name:
- Street Address:
- City:
- State / Province:
- ZIP / Postal Code:
- Country:
- Phone:

GBP URL:

Primary GBP Category:

Primary Category Slug:

Additional GBP Categories:
1.
2.
3.

Servicios principales:
1.
2.
3.
4.
5.

Service Slugs:
1.
2.
3.
4.
5.

Primary Local Coverage Areas:
Recommended: start with 3–5 strongest real areas served.
1.
2.
3.
4.
5.

Additional Local Coverage Areas:
Optional.
1.
2.
3.
4.
5.

Should Local Coverage Areas generate pages?
Default: No.

Approved Expansion Areas:
Optional. Only list areas that deserve their own URLs.
1.
2.
3.

Additional Categories already covered by core services:
1.
2.

Additional Categories that need separate pages:
1.
2.

GeoArticles per Service:
Default: 3

GeoHub URL Style:
Option A: /city/
Option B: /category/city/

GeoArticle URL Style:
Option A: /city/article-topic/
Option B: /category/city/article-topic/

Top Priority Services:
1.
2.
3.

Trust Signals:
- Years in business:
- Reviews:
- Certifications:
- Awards:
- Guarantees:
- Urgencias / servicio en el mismo día / servicio móvil:

Preferred CTA:
Llamar ahora / Reservar online / Solicitar presupuesto / Contactoar

Publishing Capacity:
Pages per week:

CMS:
WordPress / Webflow / Shopify / Custom / Other

Can schema be added?
Yes / No

Can internal links be edited manually?
Yes / No

Tracking Tools:
GMB Crush / Google Search Console / GA4 / Rank Tracker / Other
```

## Ejemplo rellenado

```text
Business Name:
Cerrajeros Madrid 24h

Website Root Domain:
https://www.cerrajerosmadrid24h.com

Canonical Domain:
https://www.cerrajerosmadrid24h.com

Country:
España

State / Province:
Comunidad de Madrid

Main City:
Madrid

Main City Slug:
madrid

Physical Location City:
Madrid

Full NAP:
- Business Name: Cerrajeros Madrid 24h
- Street Address: Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí
- City: Madrid
- State / Province: Comunidad de Madrid
- ZIP / Postal Code: 28010
- Country: España
- Phone: +34 600 000 000

GBP URL:
https://google.com/business/cerrajeros-madrid-24h

Primary GBP Category:
Cerrajero

Primary Category Slug:
cerrajero

Additional GBP Categories:
1. Servicio de cerrajería de urgencia
2. Servicio de duplicado de llaves

Servicios principales:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de cerraduras
4. Cambio de bombines
5. Instalación de cerraduras de seguridad

Service Slugs:
1. cerrajero-urgente
2. apertura-puertas
3. cambio-cerraduras
4. cambio-bombines
5. instalacion-cerraduras-seguridad

Primary Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca

Additional Local Coverage Areas:
1. Retiro

Should Local Coverage Areas generate pages?
No, not in the base build.

Approved Expansion Areas:
None in Phase 1.

Additional Categories already covered by core services:
1. Servicio de cerrajería de urgencia

Additional Categories that need separate pages:
1. Servicio de duplicado de llaves

GeoArticles per Service:
3

GeoHub URL Style:
/city/

GeoArticle URL Style:
/city/article-topic/

Top Priority Services:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de bombines

Trust Signals:
- 10+ años de experiencia
- 250+ reseñas de Google
- Técnicos cerrajeros cualificados
- Reconocimiento local de servicio
- Garantía de trabajo
- Soporte móvil en el mismo día

Preferred CTA:
Llamar ahora

Publishing Capacity:
5 pages per week

CMS:
WordPress

Can schema be added?
Yes

Can internal links be edited manually?
Yes

Tracking Tools:
GMB Crush Geo Grid, Google Search Console, GA4
```

# Cuerpo operativo del Paso 12

## Regla 1 — El Master Prompt debe generar el sistema completo

### Explicación

El prompt maestro no debe limitarse a pedir URLs. Debe pedir validación, fórmula, matriz, tipos de página, estructura de contenido, enlaces internos, schema, prioridad, fases, QA y roadmap.

### Patrón o fórmula

```text
Prompt → validate → generate → link → score → QA → roadmap
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h recibe un sistema completo de 28 páginas base, no solo una lista de URLs
```

### Ejemplos incorrectos

```text
- Prompt que solo pide H1s
- Prompt que solo pide blog ideas
- Prompt sin QA ni enlaces
```

### Regla final

```text
El Master Prompt debe producir un sistema, no una lista.
```

## Regla 2 — Main City first

### Explicación

La versión base debe construir alrededor de una Main City. No debe usar Target Cities o Secondary Cities como motor base.

### Patrón o fórmula

```text
Main City = base architecture
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Madrid genera /madrid/ y /cerrajero/madrid/service/
```

### Ejemplos incorrectos

```text
- Target Cities: Madrid, Almagro, Salamanca como base
- Secondary Cities en fase 1
- Multiplicar servicios por zonas de cobertura
```

### Regla final

```text
La base es Main City first.
```

## Regla 3 — Local Coverage Areas como señales de contenido

### Explicación

El prompt debe pedir Local Coverage Areas, pero debe prohibir que generen URLs por defecto.

### Patrón o fórmula

```text
Local Coverage Areas = content signals
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca, Retiro aparecen en contenido y areaServed
```

### Ejemplos incorrectos

```text
- Crear /almagro/ sin aprobación
- Enlazar a cobertura sin URL
- Usar cobertura como H1
```

### Regla final

```text
Las áreas de cobertura se usan dentro del contenido.
```

## Regla 4 — Approved Expansion Areas separadas

### Explicación

Si el negocio quiere páginas para otras zonas, el prompt debe tratarlas como expansión opcional.

### Patrón o fórmula

```text
Approved Expansion Areas → optional module
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
None in Phase 1
```

### Ejemplos incorrectos

```text
- Aprobar todas las zonas
- Crear expansión en la base
- No justificar expansion
```

### Regla final

```text
La expansión no pertenece a la base.
```

## Regla 5 — Duplicate category detection

### Explicación

El prompt debe detectar categorías adicionales ya cubiertas por servicios core.

### Patrón o fórmula

```text
additional category → covered or separate page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Servicio de cerrajería de urgencia cubierta por Cerrajero urgente
```

### Ejemplos incorrectos

```text
- Crear cerrajero-urgente duplicada
- Ignorar duplicado de llaves
- No clasificar categorías
```

### Regla final

```text
Las categorías se consolidan o generan página, pero no se duplican.
```

## Regla 6 — Output con tablas limpias

### Explicación

El output debe devolver tablas operativas y no solo texto explicativo.

### Patrón o fórmula

```text
URL Matrix + Linking Matrix + Schema Map + Score + QA
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Tabla con HP-001, SO-001, GH-001, LBS-001, AC-001, GA-001
```

### Ejemplos incorrectos

```text
- Narrativa sin tablas
- Tablas sin status
- No IDs
```

### Regla final

```text
Cada output debe ser accionable.
```

## Regla 7 — Page Type Rules completas

### Explicación

El prompt debe desarrollar cada tipo con función, patrón, H1, meta, estructura, schema, CTA, links y ejemplo.

### Patrón o fórmula

```text
Page Type → full brief
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS /cerrajero/madrid/cerrajero-urgente/ con H1, metas, H2s, FAQs, schema
```

### Ejemplos incorrectos

```text
- Solo URL
- Solo H1
- Sin schema
```

### Regla final

```text
Cada tipo debe salir como brief completo.
```

## Regla 8 — Content Architecture obligatoria

### Explicación

El prompt debe incluir el nuevo paso de estructura de contenido y áreas de cobertura.

### Patrón o fórmula

```text
Step 6 included
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Location page incluye H2 Local Coverage Areas Served
```

### Ejemplos incorrectos

```text
- Omitir cómo mencionar zonas
- No definir FAQs
- No definir CTA
```

### Regla final

```text
El contenido interno es obligatorio.
```

## Regla 9 — Internal Linking Map obligatorio

### Explicación

El prompt debe pedir enlaces internos con source, target, anchor, placement y prioridad.

### Patrón o fórmula

```text
Source URL → Target URL + Anchor + Placement
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/guia-precios-cerrajero-urgente/ → /cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Sin anchors
- Solo footer
- Enlaces a URLs inexistentes
```

### Regla final

```text
El mapa de enlaces debe estar completo.
```

## Regla 10 — QA final obligatorio

### Explicación

El prompt debe terminar con checklist QA por página.

### Patrón o fórmula

```text
QA fields for each page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL approved, schema approved, no false location, no canibalization
```

### Ejemplos incorrectos

```text
- Sin QA
- QA genérico
- No revisar false location
```

### Regla final

```text
No hay publicación sin QA.
```


## Master Prompt reutilizable completo

```text
Actúa como Matteo de GMB Crush, especialista top 1% en Local SEO, Google Business Profile optimization, AI Overview visibility, semantic SEO, GeoHub architecture, internal linking y LocalBusiness site structure.

Quiero construir una web local desde cero siguiendo la metodología GMB Crush.

Usa exclusivamente esta jerarquía de páginas:

1. Homepage = Root Entity Anchor
2. Service Overview Pages = Topical Authority Pillars, no location
3. Location-Based Service Pages = Main City Geo-Targeted Converters
4. Additional Category Pages = GBP additional category support
5. GeoHub Pages = Main City Silo Containers
6. GeoArticle Pages = Semantic Boosters for service + Main City + long-tail intent

IMPORTANTE:
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

INPUTS DEL NEGOCIO:

Business Name:
[INSERT]

Website Root Domain:
[INSERT]

Canonical Domain:
[INSERT]

Country:
[INSERT]

State / Province:
[INSERT]

Main City:
[INSERT]

Main City Slug:
[INSERT]

Physical Location City:
[INSERT]

Full NAP:
- Business Name: [INSERT]
- Street Address: [INSERT]
- City: [INSERT]
- State / Province: [INSERT]
- ZIP / Postal Code: [INSERT]
- Country: [INSERT]
- Phone: [INSERT]

GBP URL:
[INSERT]

Primary GBP Category:
[INSERT]

Primary Category Slug:
[INSERT]

Additional GBP Categories:
[INSERT LIST]

Servicios principales:
[INSERT LIST]

Service Slugs:
[INSERT LIST]

Primary Local Coverage Areas:
[INSERT 3–5 strongest real service areas]

Additional Local Coverage Areas:
[INSERT OPTIONAL LIST]

Should Local Coverage Areas generate pages?
Default: No.

Approved Expansion Areas:
[INSERT ONLY IF DEDICATED URLS ARE APPROVED]

Additional Categories already covered by core services:
[INSERT LIST]

Additional Categories that need separate pages:
[INSERT LIST]

GeoArticles per Service:
[INSERT NUMBER]

GeoHub URL Style:
[/city/ OR /category/city/]

GeoArticle URL Style:
[/city/article-topic/ OR /category/city/article-topic/]

Top Priority Services:
[INSERT LIST]

Trust Signals:
[INSERT LIST]

Preferred CTA:
[INSERT]

Publishing Capacity:
[INSERT NUMBER] pages per week

CMS:
[INSERT]

Can schema be added?
[YES / NO]

Can internal links be edited manually?
[YES / NO]

Tracking Tools:
[INSERT]

TASK:

Generate a complete GMB Crush website architecture system with the following outputs:

1. Executive summary
2. Inputs validation
3. Duplicate category detection
4. Total base page count formula
5. Full URL Matrix
6. Page Type Rules
7. Content Architecture + Local Coverage Areas
8. Homepage brief
9. Service Overview Pages
10. Main City GeoHub Page
11. Main City Location-Based Service Pages
12. Páginas de categoría adicional en la Main City
13. Main City GeoArticle ideas
14. Schema Map
15. Internal Linking Map
16. Priority Score
17. Publishing Phases
18. QA Checklist
19. Optional Expansion Module
20. Final implementation roadmap

OUTPUT REQUIREMENTS:

A. INPUT VALIDATION

Validate:
- Primary GBP category alignment
- Core services
- Additional GBP categories
- Main City
- Physical Location City
- Local Coverage Areas
- Approved Expansion Areas
- Category duplication risks
- Missing slugs
- URL consistency
- NAP consistency

B. TOTAL BASE PAGE COUNT

Use this formula:

1 Homepage
+ S Service Overview Pages
+ 1 Main City GeoHub
+ S Main City Location-Based Service Pages
+ A Páginas de categoría adicional en la Main City
+ G × S Main City GeoArticle Pages

Where:
S = number of core services
A = number of additional categories that need separate pages
G = number of GeoArticles per service

Do not include Local Coverage Areas in the base formula.
Only include Approved Expansion Areas in an optional expansion formula.

C. URL RULES

Use these URL patterns:

Homepage:
/

Service Overview:
/[primary-category-slug]/[service-slug]/

Main City GeoHub:
/[main-city-slug]/
or
/[primary-category-slug]/[main-city-slug]/

Main City Location-Based Service:
/[primary-category-slug]/[main-city-slug]/[service-slug]/

Main City Additional Category:
/[primary-category-slug]/[main-city-slug]/[additional-category-slug]/

Main City GeoArticle:
/[main-city-slug]/[article-topic-slug]/
or
/[primary-category-slug]/[main-city-slug]/[article-topic-slug]/

Local Coverage Areas:
No URLs by default.

Approved Expansion Areas:
Create URLs only if explicitly approved.

D. URL MATRIX

Create a clean table with these columns:

ID
Page Type
Parent Page
Service
Service Slug
Main City
Main City Slug
Additional Category
Local Coverage Areas Used
Approved Expansion Area
URL
H1
Meta Title
Meta Description
Schema Type
Enlaces internos Required
Priority
Publish Phase
Status
Notes

E. PAGE TYPE RULES

For each page type, provide:
- Purpose
- URL pattern
- H1 formula
- Meta title formula
- Meta description formula
- Word count target
- Required sections
- FAQ requirements
- CTA requirements
- Schema required
- Internal links required
- Example using the business inputs
- Incorrect examples
- Final rule

F. CONTENT ARCHITECTURE + LOCAL COVERAGE AREAS

For each page type, define:
- Required internal content structure
- Where Local Coverage Areas may be mentioned
- Where Local Coverage Areas must not be used
- How to avoid fake location claims
- How to use Local Coverage Areas in FAQs
- How to use Local Coverage Areas in schema areaServed
- How to avoid creating unnecessary URLs

G. HOMEPAGE BRIEF

Generate:
- Homepage URL
- H1
- Meta title
- Meta description
- Quick Answer block
- Core service menu
- Vista previa de cobertura local
- Trust blocks
- FAQ ideas
- Schema
- Internal links

H. SERVICE OVERVIEW PAGES

For each service, generate:
- URL
- H1
- Meta title
- Meta description
- Suggested H2s using AUDIO:
  Authority
  Uniqueness
  Depth
  Intent
  Optimization
- FAQs
- Internal links to the Main City service version
- Schema

I. MAIN CITY GEOHUB PAGE

Generate:
- URL
- H1
- Meta title
- Meta description
- Services available in Main City
- Additional category pages in Main City
- Local Coverage Areas section
- GeoArticle ideas for Main City
- Internal links
- Schema

J. MAIN CITY LOCATION-BASED SERVICE PAGES

For each Service × Main City combination, generate:
- URL
- H1
- Meta title
- Meta description
- Local intro angle
- AUDIO H2s
- Local Coverage Areas section
- FAQs
- CTA
- Parent service page
- Matching GeoHub page
- Related same-city services
- Related GeoArticles
- Schema

K. ADDITIONAL CATEGORY PAGES

For each Additional Category × Main City combination, generate:
- URL
- H1
- Meta title
- Meta description
- Local problem/scenario
- AUDIO H2s
- Local Coverage Areas use case
- FAQs
- CTA
- Related services
- Matching GeoHub
- Schema

L. GEOARTICLE IDEAS

Generate [G] GeoArticle ideas for each Service in the Main City.

For each GeoArticle, return:
- Page title
- H1
- URL
- Target long-tail llaveword
- Intent type
- Summary
- Matching Main City Location-Based Service Page
- Matching GeoHub Page
- Related GeoArticle
- Schema

M. SCHEMA MAP

Assign schema by page type:

Homepage:
Organization
WebSite
LocalBusiness if physical presence exists in Main City
FAQPage
Speakable

Service Overview:
Service
WebPage
BreadcrumbList
Speakable

Location-Based Service:
LocalBusiness
BreadcrumbList
FAQPage optional
Speakable optional

Additional Category:
Service with areaServed
BreadcrumbList
FAQPage optional

GeoHub:
CollectionPage
BreadcrumbList
LocalBusiness only if physical presence exists in Main City

GeoArticle:
Article
FAQPage
BreadcrumbList
Speakable

N. INTERNAL LINKING MAP

Apply this hierarchy:

Homepage links to:
- Service Overview Pages
- Main City GeoHub
- Páginas de categoría adicional en la Main City
- Página de contacto

Service Overview links to:
- Homepage
- Main City version of that service
- Related Service Overview Pages
- Relevant GeoArticles

Main City Location-Based Service links to:
- Parent Service Overview
- Matching Main City GeoHub
- Other services in Main City
- Related GeoArticles
- Página de contacto

Additional Category links to:
- Matching Main City GeoHub
- Related services in Main City
- Related GeoArticles
- Página de contacto

Main City GeoHub links to:
- Homepage
- All services in Main City
- All additional category pages in Main City
- All GeoArticles in Main City
- Página de contacto

GeoArticle links to:
- Matching Main City Location-Based Service Page
- Matching Main City GeoHub
- Related GeoArticle
- Optional related service
- Página de contacto

Local Coverage Areas:
Do not link unless they are Approved Expansion Areas with real URLs.

O. PRIORITY SCORE

Calculate priority using:

Priority Score =
Revenue Value
+ Search Intent
+ GBP Category Relevance
+ Local Relevance
+ Competition Gap
+ Conversion Urgency

Each factor is scored from 1 to 5.

Priority tiers:
26–30 = P1
21–25 = P2
16–20 = P3
10–15 = P4
0–9 = Hold

P. PUBLISHING PHASES

Assign every page to one of these phases:

Phase 1: Entity Foundation
- Homepage
- Contacto
- About
- Service Overview Pages prioritarias
- Main City GeoHub

Phase 2: Main City Conversion Layer
- Main City service pages
- Additional category pages for Main City

Phase 3: Main City Semantic Expansion
- GeoArticles
- FAQ clusters
- Cost guides
- Comparison articles
- Mistake guides

Phase 4: Optimization Loop
- Internal link updates
- Metadata refresh
- FAQ expansion
- Schema QA
- Geo-grid review
- Search Console optimization

Phase 5: Optional Expansion Module
- Approved Expansion Area GeoHubs
- Approved Expansion Area service pages
- Approved Expansion Area GeoArticles

Q. QA CHECKLIST

For each page, include QA checks:

- URL approved
- Page type correct
- One service only
- One Main City only if applicable
- Local Coverage Areas used naturally
- No unnecessary coverage-area URLs
- No fake location claim
- H1 approved
- Meta title approved
- Meta description approved
- Word count approved
- AUDIO structure included
- FAQs included
- CTA included
- Schema approved
- Internal links approved
- NAP consistent
- No canibalization
- Final approval status

R. FINAL OUTPUT FORMAT

Return the answer in this structure:

1. Title + Summary Block
2. Inputs Validation
3. Duplicate Category Detection
4. Page Count Formula
5. URL Matrix
6. Page Type Rules
7. Content Architecture + Local Coverage Areas
8. Homepage Brief
9. Service Overview Matrix
10. Main City GeoHub Matrix
11. Main City Location-Based Service Matrix
12. Additional Category Matrix
13. GeoArticle Matrix
14. Schema Map
15. Internal Linking Map
16. Priority Score Table
17. Publishing Plan
18. QA Checklist
19. Optional Expansion Module
20. Final Takeaway

Use clean tables.
Be precise.
Do not invent physical locations.
Do not create duplicate pages.
Do not create URLs for Local Coverage Areas unless they are Approved Expansion Areas.
Do not create pages with no clear parent, target, or internal link destination.
```

## Prompt auxiliar 1 — Solo URL Matrix

```text
Actúa como Matteo de GMB Crush.

Genera únicamente la URL Matrix completa para una web local de una Main City.

Inputs:
Business Name:
Website Root Domain:
Primary GBP Category:
Primary Category Slug:
Main City:
Main City Slug:
Servicios principales:
Service Slugs:
Additional Categories that need separate pages:
Additional Category Slugs:
Local Coverage Areas:
Approved Expansion Areas:
GeoArticles per Service:

Rules:
- Base architecture uses one Main City.
- Local Coverage Areas do not generate URLs.
- Approved Expansion Areas generate URLs only if provided.
- Homepage = /
- Service Overview = /category/service/
- Main City GeoHub = /city/
- Main City Service Page = /category/city/service/
- Additional Category = /category/city/additional-category/
- GeoArticle = /city/article-topic/

Columns:
ID
Page Type
Parent Page
Service
Service Slug
Main City
Main City Slug
Additional Category
Local Coverage Areas Used
URL
H1
Meta Title
Schema Type
Priority
Publish Phase
Status
Notes
```

## Prompt auxiliar 2 — Solo contenido de una página

```text
Actúa como Matteo de GMB Crush y senior SEO content strategist.

Quiero generar contenido completo para esta página siguiendo GMB Crush, AIO, GEO y AUDIO.

Page Type:
[Homepage / Service Overview / Location-Based Service / Additional Category / GeoHub / GeoArticle]

Business Name:
[INSERT]

Primary GBP Category:
[INSERT]

Primary Category Slug:
[INSERT]

Main City:
[INSERT]

Main City Slug:
[INSERT]

Local Coverage Areas:
[INSERT LIST]

Service:
[INSERT]

Service Slug:
[INSERT]

URL:
[INSERT]

Parent Service Page:
[INSERT]

GeoHub Page:
[INSERT]

Related Pages:
[INSERT]

Phone:
[INSERT]

NAP:
[INSERT]

Physical office in Main City?
Yes / No

Physical office in Local Coverage Areas?
Yes / No

Generate:
1. H1
2. Meta title
3. Meta description
4. Quick Answer block if relevant
5. Full page outline
6. 3–5 H2s using AUDIO where applicable
7. Local Coverage Areas section where appropriate
8. 3–5 FAQs
9. CTA
10. Internal links with anchor text
11. Schema recommendation
12. Anti-canibalization note

Rules:
- If Service Overview, do not target Main City or Local Coverage Areas.
- If Location-Based Service, use one service and one Main City.
- If GeoHub, list all Main City services, categories, articles and coverage areas.
- If GeoArticle, write as semantic booster, not landing page.
- Do not claim physical presence in Local Coverage Areas unless true.
```

## Prompt auxiliar 3 — Solo GeoArticles

```text
Actúa como Matteo de GMB Crush, especialista en GeoArticles, AI Overview y semantic SEO local.

Inputs:
Brand Name:
Primary Business Category Slug:
Service:
Service Slug:
Main City:
Main City Slug:
Local Coverage Areas:
Matching Location-Based Service Page:
Matching GeoHub Page:
Target Audience:
Physical office in Main City?
Yes / No

Generate 3 GeoArticle ideas.

For each idea:
1. Page Title
2. H1 Suggestion
3. Suggested URL
4. Target Long-Tail Keyword
5. Intent Type
6. Summary
7. Matching Location-Based Service Page
8. Matching GeoHub Page
9. Related GeoArticle
10. Suggested CTA
11. Schema Type

Rules:
- Each article supports one service, one Main City and one long-tail intent.
- Local Coverage Areas may appear as examples or context.
- Each article links to the matching /category/main-city/service/ page.
- Each article links to the matching /main-city/ GeoHub page.
- Do not create URLs for Local Coverage Areas.
```

## Prompt auxiliar 4 — Solo QA

```text
Actúa como Matteo de GMB Crush y haz QA de esta página antes de publicarla.

Page URL:
[INSERT]

Page Type:
[INSERT]

Business Name:
[INSERT]

Primary GBP Category:
[INSERT]

Target Service:
[INSERT]

Main City:
[INSERT]

Local Coverage Areas Used:
[INSERT]

Physical office in Main City?
Yes / No

Physical office in Local Coverage Areas?
Yes / No

H1:
[INSERT]

Meta Title:
[INSERT]

Meta Description:
[INSERT]

Word Count:
[INSERT]

Schema Added:
[INSERT]

Enlaces internos Added:
[INSERT]

NAP Used:
[INSERT]

Check:
1. URL approved
2. Page type correct
3. One service only
4. One Main City only
5. Local Coverage Areas used naturally
6. No fake office/location claim
7. H1 approved
8. Meta title approved
9. Meta description approved
10. Word count approved
11. AUDIO structure included
12. FAQs included
13. CTA included
14. Schema approved
15. Internal links approved
16. NAP consistent
17. No canibalization
18. Final approval

Return:
- QA table
- Problems found
- Required fixes
- Final status:
  Approved / Needs Revision / Blocked
```
## Rol y restricciones iniciales — Regla operativa 1

### Explicación

El Master Prompt debe empezar definiendo el rol, la metodología y las reglas no negociables. Esto evita que la IA improvise estructuras ajenas al sistema.

### Patrón o fórmula

```text
Role → Methodology → Non-negotiables
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El prompt dice: Actúa como Matteo de GMB Crush y usa Homepage, Service Overview, Location-Based Service, Additional Category, GeoHub y GeoArticle.
```

### Ejemplos incorrectos

```text
- Pedir simplemente “crea una web SEO”
- No mencionar GMB Crush
- No prohibir mezclar servicios o zonas
```

### Regla final

```text
El prompt maestro debe fijar rol y límites desde el inicio.
```

## Inputs geográficos simplificados — Regla operativa 2

### Explicación

El prompt debe pedir Main City, Physical Location City, Local Coverage Areas y Approved Expansion Areas. No debe usar Target Cities ni Secondary Cities en la base.

### Patrón o fórmula

```text
Main City + Local Coverage Areas + Approved Expansion Areas
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h: Main City Madrid; Local Coverage Areas Almagro, Chamberí, Salamanca y Retiro; Approved Expansion Areas vacío.
```

### Ejemplos incorrectos

```text
- Pedir Target Cities como base
- Multiplicar páginas por cobertura
- No pedir ubicación física
```

### Regla final

```text
La geografía del prompt debe reflejar la versión simplificada.
```

## Fórmula base explícita — Regla operativa 3

### Explicación

El prompt debe obligar a calcular la fórmula base antes de generar URLs. Así la IA no salta directamente a matrices infladas o incompletas.

### Patrón o fórmula

```text
1 + S + 1 + S + A + G×S
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Para Cerrajeros Madrid 24h, el prompt debe devolver 28 páginas base con S=5, A=1, G=3.
```

### Ejemplos incorrectos

```text
- Usar C = target cities
- No explicar A
- No mostrar tabla de conteo
```

### Regla final

```text
El Master Prompt debe calcular antes de listar.
```

## URL Matrix obligatoria — Regla operativa 4

### Explicación

El output debe exigir una URL Matrix con ID, Page Type, Parent, Service, City, URL, H1, metas, schema, links, priority, phase y status.

### Patrón o fórmula

```text
Inputs → URL Matrix → producción
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El prompt genera filas HP-001, SO-001, GH-001, LBS-001, AC-001 y GA-001 para Cerrajeros Madrid 24h.
```

### Ejemplos incorrectos

```text
- Pedir solo lista de URLs
- No incluir schema
- No incluir status o phase
```

### Regla final

```text
Sin matriz completa, el prompt no produce un sistema operativo.
```

## Page Type Rules completas — Regla operativa 5

### Explicación

El Master Prompt debe desarrollar cada tipo de página con propósito, patrón, H1, metas, word count, secciones, schema, enlaces y CTA.

### Patrón o fórmula

```text
Page Type → rules → example
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Homepage de Cerrajeros Madrid 24h incluye H1 de Servicios de cerrajería en Madrid, servicios core, NAP y enlaces.
```

### Ejemplos incorrectos

```text
- Definir solo URL patterns
- No separar Service Overview de Location-Based Service
- No pedir schema por tipo
```

### Regla final

```text
Cada tipo de página debe tener reglas completas.
```

## Content Architecture incluida — Regla operativa 6

### Explicación

El prompt debe incluir el nuevo Paso 6: dónde y cómo usar Local Coverage Areas dentro del contenido. Sin esto, la IA vuelve a crear páginas innecesarias o ignora cobertura.

### Patrón o fórmula

```text
Page Type → content sections → coverage usage
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
En /cerrajero/madrid/cerrajero-urgente/, el prompt pide sección de Local Coverage Areas Served con Almagro, Chamberí, Salamanca y Retiro.
```

### Ejemplos incorrectos

```text
- No pedir secciones internas
- Tratar coverage areas como URLs
- No pedir FAQs de cobertura
```

### Regla final

```text
El prompt debe enseñar a escribir cada página por dentro.
```

## Internal Linking Map detallado — Regla operativa 7

### Explicación

El Master Prompt debe pedir Source URL, Target URL, Anchor, Priority y Placement. Esto convierte enlaces en producción, no en recomendación genérica.

### Patrón o fórmula

```text
Source → Target → Anchor → Placement
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GA-001 enlaza a /cerrajero/madrid/cerrajero-urgente/ con anchor cerrajero urgente en Madrid.
```

### Ejemplos incorrectos

```text
- Pedir “añade enlaces internos” sin mapa
- No definir anchors
- Enlazar a coverage areas sin URL
```

### Regla final

```text
Los enlaces deben salir como matriz accionable.
```

## Schema Map por page type — Regla operativa 8

### Explicación

El prompt debe obligar a asignar schema por URL. Esto ayuda a evitar errores posteriores de implementación.

### Patrón o fórmula

```text
URL → Page Type → Schema Required
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
AC-001 usa Service with areaServed; GA-001 usa Article + FAQPage + BreadcrumbList + Speakable.
```

### Ejemplos incorrectos

```text
- No pedir schema
- Usar el mismo schema en todas las URLs
- No diferenciar address y areaServed
```

### Regla final

```text
El schema debe generarse desde el output maestro.
```

## Priority Score con Local Relevance — Regla operativa 9

### Explicación

La fórmula del prompt debe usar Local Relevance en lugar de City Priority. Esto es coherente con una base de una Main City.

### Patrón o fórmula

```text
Revenue + Intent + GBP + Local Relevance + Gap + Urgency
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente Madrid obtiene score alto por urgencia, GBP relevance y Main City fit.
```

### Ejemplos incorrectos

```text
- Usar Top Priority Cities
- Puntuar áreas sin URL
- No explicar el score
```

### Regla final

```text
La prioridad debe medir páginas, no zonas sin arquitectura.
```

## Publishing Phases con expansión opcional — Regla operativa 10

### Explicación

El prompt debe separar fases base y expansión opcional. Esto evita volver al modelo multi-ciudad por defecto.

### Patrón o fórmula

```text
Phase 1–4 base | Phase 5 expansion optional
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h publica primero Madrid y sus servicios; Almagro solo entra si se aprueba como expansión.
```

### Ejemplos incorrectos

```text
- Publicar coverage areas en Phase 2
- No crear Phase 5 opcional
- Publicar artículos antes de landings
```

### Regla final

```text
La expansión debe vivir en una fase separada.
```

## QA Checklist obligatoria — Regla operativa 11

### Explicación

El prompt debe devolver QA por page type y por cobertura local: URL, H1, metadata, schema, links, NAP, canibalización y no false location claims.

### Patrón o fórmula

```text
Page → QA checks → final status
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 no se aprueba si dice “Almagro office” sin oficina real.
```

### Ejemplos incorrectos

```text
- No incluir QA
- No revisar ubicación falsa
- No revisar enlaces internos
```

### Regla final

```text
El Master Prompt debe producir control de calidad.
```

## Anti-duplicación de reglas — Regla operativa 12

### Explicación

El prompt debe prohibir reglas operativas repetidas. Cada regla debe tener nombre semántico y contenido distinto. Esto evita ruido y pérdida de confianza.

### Patrón o fórmula

```text
Rule name → specific content → duplicate check
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
En Paso 4, las reglas son canonical domain, trailing slash, service overview pattern, GeoArticle URL, local coverage no URL, etc.
```

### Ejemplos incorrectos

```text
- Regla operativa 1–12 con el mismo texto
- Cambiar solo el número de la regla
- Inflar longitud sin contenido nuevo
```

### Regla final

```text
Cada regla operativa debe aportar una decisión nueva.
```

## Expansion Module controlado — Regla operativa 13

### Explicación

El prompt debe pedir Approved Expansion Areas como campo opcional y generar URLs solo si ese campo tiene contenido validado.

### Patrón o fórmula

```text
Approved Expansion Areas empty → no expansion URLs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h deja Approved Expansion Areas vacío y el output no genera /almagro/.
```

### Ejemplos incorrectos

```text
- Generar URLs por coverage areas
- No pedir justificación de expansión
- Mezclar expansión con fórmula base
```

### Regla final

```text
La expansión se activa solo con aprobación explícita.
```

## Output final ordenado — Regla operativa 14

### Explicación

El prompt debe exigir un orden de salida fijo para que cualquier usuario o IA pueda consumir el resultado sin buscar secciones perdidas.

### Patrón o fórmula

```text
Summary → Validation → Formula → Matrix → Rules → Links → Score → Phases → QA → Takeaway
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El output de Cerrajeros Madrid 24h termina con URL Matrix, Internal Linking Map, Publishing Plan y QA Checklist.
```

### Ejemplos incorrectos

```text
- Entregar respuesta libre sin estructura
- Omitir outputs clave
- Mezclar explicación con tablas sin orden
```

### Regla final

```text
El Master Prompt debe generar un sistema, no una respuesta suelta.
```

## Checklist final del Paso 12

| Check | Pregunta | Estado |
|---|---|---|
| Header | ¿El prompt define el rol Matteo / GMB Crush? | ✅ / ⬜ |
| Hierarchy | ¿Incluye los seis tipos de página GMB Crush? | ✅ / ⬜ |
| Main City | ¿La base se construye con una sola Main City? | ✅ / ⬜ |
| Local Coverage | ¿Las áreas de cobertura no generan URLs por defecto? | ✅ / ⬜ |
| Expansion | ¿Las áreas con URL son Approved Expansion Areas? | ✅ / ⬜ |
| Inputs | ¿Incluye todos los datos necesarios? | ✅ / ⬜ |
| Formula | ¿Usa la fórmula base simplificada? | ✅ / ⬜ |
| URL Matrix | ¿Pide matriz con IDs y estados? | ✅ / ⬜ |
| Content Architecture | ¿Incluye el nuevo Paso 6? | ✅ / ⬜ |
| Enlaces internos | ¿Pide source, target, anchor y placement? | ✅ / ⬜ |
| Priority | ¿Usa Local Relevance en el score? | ✅ / ⬜ |
| QA | ¿Incluye checklist completo? | ✅ / ⬜ |
| Aux prompts | ¿Incluye prompts auxiliares reutilizables? | ✅ / ⬜ |

## Outputs del Paso 12

- Master Prompt completo
- Prompt auxiliar para URL Matrix
- Prompt auxiliar para contenido
- Prompt auxiliar para GeoArticles
- Prompt auxiliar para QA
- Reglas no negociables integradas
- Formato final de output
- Protección contra Target Cities / Secondary Cities en base

---

# Fuentes internas GMB Crush usadas

Este paso se construyó usando como base los frameworks internos cargados en la conversación:

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework

