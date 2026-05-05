Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 11 — Pseudocódigo del Sistema

## Índice corto

**Paso 11 — Pseudocódigo del Sistema**

## Objetivo del Paso 11

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: convertir el proceso en una lógica repetible que pueda generar matriz, contenidos, links, schema, prioridad, QA y fases.
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
Error que previene: depender de memoria para cada negocio.
Error que previene: generar URLs para Local Coverage Areas por defecto.
Error que previene: no validar duplicados de categorías adicionales.
Error que previene: no bloquear artículos sin landing.
Error que previene: crear outputs incompletos.

## Lo que tienes que rellenar

```text
Business Name:

Website Root Domain:

Canonical Domain:

Primary GBP Category:

Primary Category Slug:

Main City:

Main City Slug:

Physical Location City:

Core Services:
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

Additional GBP Categories:
1.
2.
3.

Additional Categories already covered by core services:
1.
2.

Effective Additional Categories that need pages:
1.
2.

Local Coverage Areas:
1.
2.
3.
4.
5.

Primary Local Coverage Areas:
1.
2.
3.

Additional Local Coverage Areas:
1.
2.
3.

Approved Expansion Areas:
Default: None.

GeoArticles per Service:
Default: 3

Phone:

Email:

NAP:
- Name:
- Address:
- Phone:

GBP URL:

Publishing Capacity:
Pages per week:

Tracking Tools:
GMB Crush / GSC / GA4 / Other
```

## Ejemplo rellenado

```text
Business Name:
ABC Locksmith

Website URL:
https://www.abclocksmith.com

Canonical Domain:
https://www.abclocksmith.com

Full NAP:
- Name: ABC Locksmith
- Street Address: 123 Main St
- City: Miami
- State / Province: FL
- ZIP / Postal Code: 33101
- Country: United States
- Phone: +1 305 000 0000

Primary GBP Category:
Locksmith

Additional GBP Categories:
1. Emergency Locksmith Service
2. Key Duplication Service

Main City:
Miami

Physical Location City:
Miami

Core Services:
1. Emergency Locksmith
2. Car Locksmith
3. Residential Locksmith
4. Commercial Locksmith
5. Lock Rekeying

Primary Local Coverage Areas:
1. Hialeah
2. Coral Gables
3. Doral

Additional Local Coverage Areas:
1. Hollywood

Should Local Coverage Areas generate pages?
No, not in the base build.

Approved Expansion Areas:
None in Phase 1.

Additional Categories already covered by core services:
1. Emergency Locksmith Service

Additional Categories that need separate pages:
1. Key Duplication Service

GeoArticles per Service:
3

Preferred CTA:
Call now

Trust Signals:
- 10+ years in business
- 250+ Google reviews
- Licensed locksmith technicians
- Same-day mobile service
- Workmanship guarantee

GBP URL:
https://google.com/business/abc-locksmith

```

# Cuerpo operativo del Paso 11

## 1. Load inputs

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

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
INPUT local_coverage_areas[]
INPUT approved_expansion_areas[]
INPUT geoarticles_per_service
INPUT nap
INPUT gbp_url
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 2. Normalize slugs

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FUNCTION generate_slug(text):
    lowercase
    remove accents
    replace spaces with hyphens
    remove symbols
    remove duplicate hyphens
    RETURN slug
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 3. Validate categories

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
effective_additional_categories = []
FOR each additional_category:
    IF matches core service intent:
        mark as covered
    ELSE:
        add to effective_additional_categories
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 4. Generate homepage

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
CREATE HP-001
type = Homepage
url = /
h1 = Brand + Primary Service + Main City
schema = Organization + WebSite + LocalBusiness if valid
priority = P1
phase = Phase 1
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 5. Generate Service Overview Pages

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FOR each service IN core_services:
    CREATE SO
    url = /category/service/
    city = null
    schema = Service + WebPage + BreadcrumbList
    links = homepage + related services + Main City service page
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 6. Generate Main City GeoHub

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

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

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 7. Generate Main City Service Pages

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FOR each service IN core_services:
    CREATE LBS
    url = /category/main-city/service/
    parent = /category/service/
    geohub = /main-city/
    content_uses = local_coverage_areas
    schema = LocalBusiness + BreadcrumbList
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 8. Generate Main City Additional Category Pages

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FOR each category IN effective_additional_categories:
    CREATE AC
    url = /category/main-city/category/
    geohub = /main-city/
    related_services = same-city services
    schema = Service with areaServed
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 9. Generate Main City GeoArticles

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FOR each service IN core_services:
    FOR i FROM 1 TO geoarticles_per_service:
        CREATE GA
        url = /main-city/article-topic/
        supports = /category/main-city/service/
        geohub = /main-city/
        schema = Article + FAQPage + BreadcrumbList + Speakable
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 10. Use Local Coverage Areas

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FOR each content page:
    IF page_type supports local coverage:
        inject local_coverage_areas into intro, examples, FAQs, areaServed
    DO NOT generate URLs for local_coverage_areas
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 11. Generate expansion only if approved

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
IF approved_expansion_areas is not empty:
    FOR each area IN approved_expansion_areas:
        generate optional expansion GeoHub
        generate optional expansion service pages
        generate optional expansion articles
ELSE:
    skip expansion URLs
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 12. Assign internal links

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

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

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 13. Score priority

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
score = revenue + intent + gbp_relevance + local_relevance + gap + urgency
IF score >= 26: P1
ELSE IF score >= 21: P2
ELSE IF score >= 16: P3
ELSE IF score >= 10: P4
ELSE: Hold
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 14. Check dependencies

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
IF LBS:
    require homepage + service overview + geohub
IF GeoArticle:
    require matching LBS + geohub
IF expansion:
    require approved_expansion_area == true
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 15. Run QA

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

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

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 16. Output matrices

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
OUTPUT URL Matrix
OUTPUT Internal Linking Matrix
OUTPUT Schema Map
OUTPUT Priority Score
OUTPUT Publishing Plan
OUTPUT QA Matrix
```

### Ejemplo correcto con ABC Locksmith

```text
Main City = Miami
Local Coverage Areas = Hialeah, Coral Gables, Doral, Hollywood
Approved Expansion Areas = none
Generate base URLs only for Miami.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /hialeah/ with no approval
- Generate GeoArticles for Doral with no landing page
- Ignore Key Duplication Service
- Create emergency-locksmith-service duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## Normalización de inputs — Regla operativa 1

### Explicación

El pseudocódigo debe convertir nombres, servicios y zonas en slugs limpios antes de generar URLs. Sin normalización, la matriz puede terminar con inconsistencias.

### Patrón o fórmula

```text
raw input → normalize → approved slug
```

### Ejemplo correcto con ABC Locksmith

```text
Emergency Locksmith se normaliza como emergency-locksmith y Miami como miami.
```

### Ejemplos incorrectos

```text
- Usar mayúsculas en slugs
- Dejar acentos o símbolos
- Crear dos slugs para el mismo servicio
```

### Regla final

```text
Todo input que genera URL debe normalizarse primero.
```

## Dedupe de categorías — Regla operativa 2

### Explicación

La lógica debe detectar categorías adicionales ya cubiertas por servicios core. Esto evita crear URLs redundantes.

### Patrón o fórmula

```text
additional_category → matches core_service intent → covered
```

### Ejemplo correcto con ABC Locksmith

```text
Emergency Locksmith Service se marca covered; Key Duplication Service entra como effective additional category.
```

### Ejemplos incorrectos

```text
- Generar páginas duplicadas
- Ignorar categorías adicionales efectivas
- No registrar la decisión de consolidación
```

### Regla final

```text
La deduplicación ocurre antes de la fórmula.
```

## Generación base Main City — Regla operativa 3

### Explicación

El algoritmo base genera páginas solo para la Main City. Local Coverage Areas no entran en loops de URL salvo que estén aprobadas como expansión.

### Patrón o fórmula

```text
generate_base(main_city, services, effective_categories, G)
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith genera /miami/ y /locksmith/miami/service/ para sus servicios core.
```

### Ejemplos incorrectos

```text
- for area in local_coverage_areas: create pages
- Crear GeoHubs para cobertura sin aprobación
- Multiplicar G por zonas no aprobadas
```

### Regla final

```text
La base se genera con Main City, no con todas las áreas.
```

## Inyección de Local Coverage Areas en contenido — Regla operativa 4

### Explicación

Aunque no generen URLs, las áreas de cobertura sí deben entrar en briefs de contenido, FAQs, ejemplos y schema areaServed.

### Patrón o fórmula

```text
coverage_areas[] → content_blocks + FAQs + areaServed
```

### Ejemplo correcto con ABC Locksmith

```text
Hialeah, Coral Gables, Doral y Hollywood se pasan al brief de /miami/ y a páginas locales de Miami.
```

### Ejemplos incorrectos

```text
- No usar cobertura en contenido
- Crear URLs en vez de bloques de cobertura
- Añadir zonas falsas en schema
```

### Regla final

```text
La cobertura entra en contenido, no en URL loops base.
```

## Asignación de schema y links — Regla operativa 5

### Explicación

El pseudocódigo debe asignar schema e internal links por page type de forma automática. Esto reduce decisiones manuales y errores.

### Patrón o fórmula

```text
page.type → schema + required_links
```

### Ejemplo correcto con ABC Locksmith

```text
GeoArticle recibe Article + FAQPage y enlaces a matching LBS y GeoHub.
```

### Ejemplos incorrectos

```text
- Dejar schema manual sin reglas
- No asignar required links
- Usar el mismo schema en todas las páginas
```

### Regla final

```text
Schema y enlaces se derivan del page type.
```

## Scoring y fase — Regla operativa 6

### Explicación

El algoritmo debe calcular prioridad y fase por separado. El score define importancia; la fase define cuándo se puede publicar según dependencias.

### Patrón o fórmula

```text
score(page) → priority | dependencies(page) → phase/status
```

### Ejemplo correcto con ABC Locksmith

```text
Emergency Locksmith Miami puede ser P1 y Phase 2; su GeoArticle es Phase 3.
```

### Ejemplos incorrectos

```text
- Publicar por score sin dependencia
- No diferenciar priority de phase
- Asignar Phase 1 a todo lo urgente
```

### Regla final

```text
Priority y phase cumplen funciones distintas.
```

## QA automático — Regla operativa 7

### Explicación

El sistema debe ejecutar checks mínimos antes de marcar una página como Ready for QA o Approved: URL, H1, metadata, schema, links, NAP, canibalización y ubicación.

### Patrón o fórmula

```text
page → run_qa_checks → Approved / Needs Revision / Blocked
```

### Ejemplo correcto con ABC Locksmith

```text
LBS-001 pasa QA solo si tiene URL correcta, H1 de servicio+Miami, LocalBusiness schema y enlaces obligatorios.
```

### Ejemplos incorrectos

```text
- Marcar Published sin QA
- No bloquear dependencias faltantes
- No revisar false location claims
```

### Regla final

```text
El algoritmo debe poder bloquear páginas incompletas.
```

## Branch de expansión separado — Regla operativa 8

### Explicación

El pseudocódigo debe tener una rama opcional para Approved Expansion Areas. Si la lista está vacía, no genera nada. Si contiene zonas aprobadas, genera URLs con sus propias dependencias.

### Patrón o fórmula

```text
if approved_expansion_areas: generate_expansion(area)
```

### Ejemplo correcto con ABC Locksmith

```text
Si Hialeah se aprueba, el sistema genera /hialeah/ y páginas /locksmith/hialeah/service/ después de la base.
```

### Ejemplos incorrectos

```text
- Generar expansión cuando la lista está vacía
- Mezclar expansión con Main City en la misma fórmula
- No exigir contenido único en expansión
```

### Regla final

```text
La expansión es un branch opcional, no parte del loop base.
```

## Checklist final del Paso 11

| Check | Pregunta | Estado |
|---|---|---|
| Inputs | ¿Todos los inputs obligatorios están cargados? | ✅ / ⬜ |
| Slugs | ¿Los slugs están normalizados? | ✅ / ⬜ |
| Categories | ¿Las categorías adicionales duplicadas están detectadas? | ✅ / ⬜ |
| Base pages | ¿Solo se generan páginas para Main City? | ✅ / ⬜ |
| Local Coverage | ¿Las áreas se inyectan en contenido sin crear URLs? | ✅ / ⬜ |
| Expansion | ¿Solo se activa si hay aprobación? | ✅ / ⬜ |
| Links | ¿Los enlaces se asignan por tipo de página? | ✅ / ⬜ |
| Score | ¿Cada página tiene prioridad? | ✅ / ⬜ |
| Dependencies | ¿Las dependencias bloquean páginas inmaduras? | ✅ / ⬜ |
| QA | ¿Se ejecuta QA antes de publish? | ✅ / ⬜ |

## Outputs del Paso 11

- Pseudocódigo completo
- Lógica de generación base
- Lógica de Local Coverage Areas
- Lógica de expansión opcional
- Asignación de enlaces
- Asignación de schema
- Scoring
- QA y outputs finales