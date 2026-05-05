**GMB Crush Website Build System**
*Sistema completo en 12 pasos - SOP descargable*
GMB Crush Website Build System - SOP operativo


# Resumen ejecutivo


Este documento reúne el sistema completo para construir una web local desde cero siguiendo la metodología GMB Crush. El workflow final es:

Input -> Architecture -> URL Matrix -> Page Briefs -> Internal Links -> Schema -> Priority -> QA -> Publish -> Track -> Optimize


La jerarquía base es:

Homepage = entidad raíz
Service Overview Pages = autoridad temática
Location-Based Service Pages = conversión local
Additional Category Pages = soporte GBP
GeoHub Pages = contenedores de ciudad
GeoArticle Pages = boosters semánticos


## Cómo usar este documento


- Rellena los inputs del Paso 1.
- Calcula el mapa de páginas con el Paso 2.
- Genera la matriz operativa con el Paso 3.
- Aplica reglas de URLs, páginas, enlaces y schema.
- Prioriza, publica por fases y pasa QA.
- Mide con geo-grid, GSC y conversiones.
- Optimiza y expande con GeoArticles.


## Entregables del sistema


| Entregable | Uso |
| --- | --- |
| URL Matrix | Controlar todas las páginas |
| Page Briefs | Producir contenido consistente |
| Internal Linking Map | Construir el silo local |
| Schema Map | Implementar datos estructurados |
| Priority Score | Decidir qué publicar primero |
| Publishing Plan | Ejecutar por fases |
| QA Checklist | Evitar errores antes de publicar |
| Tracking Log | Optimizar con datos reales |


# Paso 1 - Intake Form


## Objetivo


Recoger los datos base del negocio antes de generar páginas, URLs, contenidos o enlaces. Este paso define la entidad local: marca, NAP, GBP, categoría principal, categorías adicionales, servicios y ciudades.


## Lo que tienes que rellenar


Business Name:
Website URL:
NAP completo:
- Nombre:
- Dirección:
- Teléfono:

Primary GBP Category:
Additional GBP Categories:
Main City:
Service Area Cities:
List of Services:
GBP URL:
País / Estado / Provincia:
¿Tiene ubicación física abierta al público? Sí / No
¿En qué ciudad está físicamente ubicado?
¿Atiende otras ciudades sin oficina física allí? Sí / No


## Ejemplo rellenado


Business Name: ABC Locksmith
Website URL: https://www.abclocksmith.com

NAP completo:
- Nombre: ABC Locksmith
- Dirección: 123 Main St, Miami, FL
- Teléfono: +1 305 000 0000

Primary GBP Category: Locksmith

Additional GBP Categories:
- Emergency Locksmith Service
- Key Duplication Service

Main City: Miami

Service Area Cities:
- Miami
- Hialeah
- Coral Gables
- Doral
- Hollywood

List of Services:
- Emergency Locksmith
- Car Locksmith
- Residential Locksmith
- Commercial Locksmith
- Lock Rekeying

GBP URL: https://google.com/business/abc-locksmith
País / Estado / Provincia: Florida, United States
¿Tiene ubicación física abierta al público? Sí
¿En qué ciudad está físicamente ubicado? Miami
¿Atiende otras ciudades sin oficina física allí? Sí


## Output del paso


| Elemento | Resultado |
| --- | --- |
| Entidad local | Definida |
| GBP principal | Definida |
| Categorías adicionales | Definidas |
| Servicios | Definidos |
| Ciudades objetivo | Definidas |
| NAP | Validado |
| Presencia física | Validada |


## Regla


No se crea ninguna URL antes de validar categoría GBP, servicios, ciudades y presencia física real.


# Paso 2 - Fórmula maestra de arquitectura


## Objetivo


Calcular cuántas páginas necesita la web antes de producir contenido. La estructura se basa en la jerarquía GMB Crush: Homepage, Service Overview Pages, Location-Based Service Pages, Additional Category Pages, GeoHub Pages y GeoArticle Pages.


## Lo que tienes que rellenar


Business Name:
Primary GBP Category:
Primary Category Slug:
Main City:

Target Cities:
1.
2.
3.
4.
5.

Core Services:
1.
2.
3.
4.
5.

Additional GBP Categories:
1.
2.
3.

Additional Categories already covered by Core Services:
1.
2.

Additional Categories that need separate pages:
1.
2.

GeoArticles per Service x City:
Default: 3

Does every service apply to every city?
Yes / No

If no, specify exclusions:
- Service:
- City excluded:
- Reason:


## Ejemplo rellenado


Business Name: ABC Locksmith
Primary GBP Category: Locksmith
Primary Category Slug: locksmith
Main City: Miami

Target Cities:
1. Miami
2. Hialeah
3. Coral Gables
4. Doral
5. Hollywood

Core Services:
1. Emergency Locksmith
2. Car Locksmith
3. Residential Locksmith
4. Commercial Locksmith
5. Lock Rekeying

Additional GBP Categories:
1. Emergency Locksmith Service
2. Key Duplication Service

Additional Categories already covered by Core Services:
1. Emergency Locksmith Service

Additional Categories that need separate pages:
1. Key Duplication Service

GeoArticles per Service x City: 3
Does every service apply to every city? Yes


## Fórmula


1 Homepage
+ S Service Overview Pages
+ C GeoHub Pages
+ S x C Location-Based Service Pages
+ A x C Additional Category Pages
+ G x S x C GeoArticle Pages


Donde:

S = servicios principales
C = ciudades objetivo
A = categorías adicionales que necesitan página separada
G = GeoArticles por servicio x ciudad


## Ejemplo ABC Locksmith


| Tipo de página | Fórmula | Resultado |
| --- | --- | --- |
| Homepage | 1 | 1 |
| Service Overview Pages | S | 5 |
| GeoHub Pages | C | 5 |
| Location-Based Service Pages | S x C | 25 |
| Additional Category Pages | A x C | 5 |
| GeoArticle Pages | G x S x C | 75 |
| Total | - | 111 |


## Decisión importante


No duplicar páginas cuando una categoría adicional ya está cubierta por un servicio principal. Ejemplo: Emergency Locksmith Service se consolida en Emergency Locksmith.


## Output del paso


Total pages: 111
Services: 5
Cities: 5
Effective additional categories: 1
GeoArticles per service x city: 3


# Paso 3 - Matriz base


## Objetivo


Convertir la arquitectura calculada en una matriz operativa. Cada página tendrá una fila con URL, tipo, servicio, ciudad, H1, metadata, schema, prioridad y estado.


## Lo que tienes que rellenar


Spreadsheet Name:
Website Root Domain:
Primary GBP Category:
Primary Category Slug:
Main City:
GeoHub URL Style: /city/ or /category/city/

Services:
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

Target Cities:
1.
2.
3.
4.
5.

City Slugs:
1.
2.
3.
4.
5.

Additional Categories that need separate pages:
1.
2.

Additional Category Slugs:
1.
2.

GeoArticles per Service x City:
Default Page Status:
Default Priority:


## Ejemplo rellenado


Spreadsheet Name: ABC Locksmith - GMB Crush Website Architecture
Website Root Domain: https://www.abclocksmith.com
Primary GBP Category: Locksmith
Primary Category Slug: locksmith
Main City: Miami
GeoHub URL Style: /city/

Services:
1. Emergency Locksmith
2. Car Locksmith
3. Residential Locksmith
4. Commercial Locksmith
5. Lock Rekeying

Service Slugs:
1. emergency-locksmith
2. car-locksmith
3. residential-locksmith
4. commercial-locksmith
5. lock-rekeying

Target Cities:
1. Miami
2. Hialeah
3. Coral Gables
4. Doral
5. Hollywood

City Slugs:
1. miami
2. hialeah
3. coral-gables
4. doral
5. hollywood

Additional Categories that need separate pages:
1. Key Duplication Service

Additional Category Slugs:
1. key-duplication

GeoArticles per Service x City: 3
Default Page Status: Planned
Default Priority: P3


## Columnas recomendadas


| Columna | Nombre |
| --- | --- |
| A | ID |
| B | Page Type |
| C | Parent Page |
| D | Service |
| E | Service Slug |
| F | City |
| G | City Slug |
| H | Additional Category |
| I | URL |
| J | H1 |
| K | Meta Title |
| L | Meta Description |
| M | Schema Type |
| N | Internal Links Required |
| O | Priority |
| P | Publish Phase |
| Q | Status |
| R | Notes |


## Ejemplo de filas


| ID | Page Type | URL | H1 | Schema | Priority |
| --- | --- | --- | --- | --- | --- |
| HP-001 | Homepage | / | ABC Locksmith - Trusted Locksmith Services in Miami | Organization, WebSite, LocalBusiness | P1 |
| SO-001 | Service Overview | /locksmith/emergency-locksmith/ | Professional Emergency Locksmith Services by ABC Locksmith | Service, WebPage | P1 |
| GH-001 | GeoHub | /miami/ | ABC Locksmith - Locksmith Services in Miami | CollectionPage | P1 |
| LBS-001 | Location-Based Service | /locksmith/miami/emergency-locksmith/ | ABC Locksmith - Emergency Locksmith in Miami | LocalBusiness | P1 |
| AC-001 | Additional Category | /locksmith/miami/key-duplication/ | ABC Locksmith - Key Duplication in Miami | Service | P3 |
| GA-001 | GeoArticle | /miami/emergency-locksmith-cost-guide/ | How Much Does an Emergency Locksmith Cost in Miami? | Article, FAQPage | P3 |


## Output del paso


Una URL Matrix completa que convierte estrategia en producción.


# Paso 4 - URL Rules


## Objetivo


Fijar reglas de URL para evitar caos, duplicación, canibalización y slugs inconsistentes.


## Lo que tienes que rellenar


Website Root Domain:
Canonical Domain:
Trailing Slash: Yes / No
Primary GBP Category:
Primary Category Slug:
Main City:
GeoHub URL Style: /city/ or /category/city/
Service Overview URL Style:
Location-Based Service URL Style:
Additional Category URL Style:
GeoArticle URL Style:
Use State in URL? Yes / No
Use near me in URL? Yes / No
Use stop words in URL? Yes / No
Approved city slugs:
Approved service slugs:
Approved additional category slugs:


## Ejemplo rellenado


Website Root Domain: https://www.abclocksmith.com
Canonical Domain: https://www.abclocksmith.com
Trailing Slash: Yes
Primary GBP Category: Locksmith
Primary Category Slug: locksmith
Main City: Miami
GeoHub URL Style: /city/
Service Overview URL Style: /[primary-category-slug]/[service-slug]/
Location-Based Service URL Style: /[primary-category-slug]/[city-slug]/[service-slug]/
Additional Category URL Style: /[primary-category-slug]/[city-slug]/[additional-category-slug]/
GeoArticle URL Style: /[city-slug]/[article-topic-slug]/
Use State in URL? No
Use near me in URL? No
Use stop words in URL? No, unless needed for readability


## Patrones aprobados


| Tipo | Patrón | Ejemplo |
| --- | --- | --- |
| Homepage | / | / |
| Service Overview | /category/service/ | /locksmith/emergency-locksmith/ |
| Location-Based Service | /category/city/service/ | /locksmith/miami/emergency-locksmith/ |
| Additional Category | /category/city/additional-category/ | /locksmith/miami/key-duplication/ |
| GeoHub | /city/ | /miami/ |
| GeoArticle | /city/article-topic/ | /miami/emergency-locksmith-cost-guide/ |


## Reglas anti-error


- No usar near-me en URLs principales.
- No usar best, cheap o top-rated como arquitectura base.
- No mezclar múltiples servicios en una URL local.
- No mezclar múltiples ciudades en una URL local.
- No crear duplicados para categorías adicionales ya cubiertas.
- No fingir ubicación física en el contenido.


## Estructura final para ABC Locksmith


Homepage:
/

Service Overview:
/locksmith/emergency-locksmith/
/locksmith/car-locksmith/
/locksmith/residential-locksmith/

GeoHub:
/miami/
/hialeah/
/coral-gables/

Location-Based Service:
/locksmith/miami/emergency-locksmith/
/locksmith/hialeah/emergency-locksmith/

Additional Category:
/locksmith/miami/key-duplication/

GeoArticle:
/miami/emergency-locksmith-cost-guide/


## Output del paso


Reglas de URL aprobadas, slugs validados y estructura anti-canibalización.


# Paso 5 - Page Type Rules


## Objetivo


Definir qué debe contener cada tipo de página: H1, metadata, secciones, FAQs, CTA, schema, enlaces internos y word count.


## Lo que tienes que rellenar


Business Name:
Website Root Domain:
Primary GBP Category:
Primary Category Slug:
Main City:
Main State / Province:
Primary Service:
Core Services:
Target Cities:
Additional GBP Categories that need pages:
Phone:
Email:
GBP URL:
NAP:
Trust Signals:
Preferred CTA:
Brand tone:


## Ejemplo rellenado


Business Name: ABC Locksmith
Website Root Domain: https://www.abclocksmith.com
Primary GBP Category: Locksmith
Primary Category Slug: locksmith
Main City: Miami
Main State / Province: Florida
Primary Service: Locksmith Services
Core Services: Emergency Locksmith, Car Locksmith, Residential Locksmith, Commercial Locksmith, Lock Rekeying
Target Cities: Miami, Hialeah, Coral Gables, Doral, Hollywood
Additional GBP Categories that need pages: Key Duplication Service
Preferred CTA: Call now
Brand tone: Friendly, professional, local and urgent when needed


## Matriz de tipos de página


| Page Type | URL Pattern | Word Count | Propósito | Schema |
| --- | --- | --- | --- | --- |
| Homepage | / | 900-1,300 | Root Entity Anchor | Organization, WebSite, LocalBusiness optional, FAQPage |
| Service Overview | /category/service/ | 850-1,000 | Topical Authority Pillar | Service, WebPage, BreadcrumbList |
| Location-Based Service | /category/city/service/ | 800-1,000 | Local Converter | LocalBusiness, BreadcrumbList |
| Additional Category | /category/city/service/ | 800-1,000 | GBP Category Support | Service with areaServed |
| GeoHub | /city/ | 700-1,100 | City Silo Container | CollectionPage, BreadcrumbList |
| GeoArticle | /city/article-topic/ | 1,000-1,500 | Semantic Booster | Article, FAQPage, BreadcrumbList, Speakable |


## Homepage template


H1:
[Brand Name] - Trusted [Primary Service] in [Main City, ST]

Meta Title:
Top-Rated [Primary Service] in [Main City, ST] | [Brand Name]

Incluye:
- Intro con marca + servicio + ciudad
- Quick Answer
- 3-6 servicios principales
- Trust blocks
- NAP
- CTA
- FAQs
- Links a servicios, GeoHub y categorías adicionales


## Service Overview template


URL: /[category]/[service]/
H1: Professional [Service] Services by [Brand Name]

Incluye:
- Intro sin ciudad
- Authority
- Uniqueness
- Depth
- Intent
- Optimization
- FAQs
- CTA
- Links a versiones ciudad + servicio


## Location-Based Service template


URL: /[category]/[city]/[service]/
H1: [Brand Name] - [Service] in [City]

Incluye:
- Intro local
- AUDIO sections
- FAQs locales
- CTA local
- Parent Service link
- GeoHub link
- Related services
- Related GeoArticles


## Additional Category template


URL: /[category]/[city]/[additional-category]/
H1: [Brand Name] - Expert [Service] in [City]

Incluye:
- Problema local
- AUDIO sections
- FAQs
- CTA
- GeoHub link
- Related service links


## GeoHub template


URL: /[city]/
H1: [Brand Name] - [Industry] Services in [City]

Incluye:
- Intro de ciudad
- Todos los servicios de la ciudad
- Categorías adicionales
- GeoArticles
- Trust signals
- CTA


## GeoArticle template


URL: /[city]/[article-topic]/
H1: [Article Topic] in [City]

Incluye:
- Una ciudad
- Un servicio
- Una intención long-tail
- 3-5 H2
- 3-5 FAQs
- CTA contextual
- Link a página servicio + ciudad
- Link a GeoHub


## Output del paso


Plantillas de producción para todos los tipos de página.


# Paso 6 - Internal Linking Rules


## Objetivo


Definir cómo se conectan todas las páginas entre sí para construir silos de ciudad, servicio y artículos.


## Lo que tienes que rellenar


Business Name:
Homepage URL:
Primary GBP Category:
Main City:
Main GeoHub URL:
Service Overview Pages:
GeoHub Pages:
Location-Based Service Pages:
Additional Category Pages:
GeoArticle Pages:
Contact Page URL:
Top Priority Services:
Top Priority Cities:
Preferred CTA Anchor:
Preferred Informational Anchor:
Preferred Local Anchor:


## Ejemplo rellenado


Business Name: ABC Locksmith
Homepage URL: /
Primary GBP Category: Locksmith
Main City: Miami
Main GeoHub URL: /miami/

Service Overview Pages:
- /locksmith/emergency-locksmith/
- /locksmith/car-locksmith/
- /locksmith/residential-locksmith/

GeoHub Pages:
- /miami/
- /hialeah/
- /coral-gables/

Location-Based Service Pages:
- /locksmith/miami/emergency-locksmith/
- /locksmith/miami/car-locksmith/
- /locksmith/hialeah/emergency-locksmith/

Additional Category Pages:
- /locksmith/miami/key-duplication/

GeoArticle Pages:
- /miami/emergency-locksmith-cost-guide/
- /miami/what-to-do-locked-out-of-house/

Contact Page URL: /contact/


## Regla madre


Cada página debe enlazar hacia arriba, hacia abajo y lateralmente.


## Mapa general


| Source Page | Debe enlazar a | Objetivo |
| --- | --- | --- |
| Homepage | Service Overview Pages, Main GeoHub, Additional Categories | Distribuir autoridad |
| Service Overview | Todas las versiones ciudad + servicio | Empujar landings locales |
| Location-Based Service | Servicio padre, GeoHub, servicios relacionados, artículos | Conectar servicio, ciudad y soporte |
| Additional Category | GeoHub, servicios relacionados, artículos | Integrar categoría GBP |
| GeoHub | Todos los servicios, categorías y artículos de la ciudad | Crear índice local |
| GeoArticle | Página servicio + ciudad, GeoHub, artículo relacionado | Pasar relevancia al convertidor |


## Ejemplo: Emergency Locksmith Miami


Source:
/locksmith/miami/emergency-locksmith/

Debe enlazar a:
- /locksmith/emergency-locksmith/
- /miami/
- /locksmith/miami/car-locksmith/
- /locksmith/miami/residential-locksmith/
- /miami/emergency-locksmith-cost-guide/
- /contact/


## Anchor text rules


| Tipo | Ejemplo |
| --- | --- |
| Exact match | emergency locksmith in Miami |
| Partial match | urgent locksmith help in Miami |
| Branded | ABC Locksmith |
| CTA | call ABC Locksmith today |
| Informational | learn what to do if you are locked out |
| Local entity | locksmith services in Miami |


## Minimum internal links


| Page Type | Mínimo | Ideal |
| --- | --- | --- |
| Homepage | 6 | 8-12 |
| Service Overview | 6 | 8-10 |
| Location-Based Service | 5 | 7-9 |
| Additional Category | 4 | 6-8 |
| GeoHub | 8 | 12-20 |
| GeoArticle | 3 | 4-6 |


## Output del paso


Mapa de enlaces internos, anchors, links obligatorios, links opcionales y breadcrumbs.


# Paso 7 - Priority Score


## Objetivo


Decidir qué páginas publicar primero. No se publican todas las páginas a la vez; se priorizan las que tienen mayor impacto comercial y mayor soporte para GBP.


## Lo que tienes que rellenar


Business Name:
Primary GBP Category:
Main City:
Service:
City:
Page Type:
Revenue Value: 1-5
Search Intent: 1-5
GBP Category Relevance: 1-5
City Priority: 1-5
Competition Gap: 1-5
Conversion Urgency: 1-5
Existing Page? Yes / No
Existing Ranking? None / Low / Medium / High
Notes:


## Ejemplo rellenado


Business Name: ABC Locksmith
Primary GBP Category: Locksmith
Main City: Miami
Service: Emergency Locksmith
City: Miami
Page Type: Location-Based Service

Revenue Value: 5
Search Intent: 5
GBP Category Relevance: 5
City Priority: 5
Competition Gap: 4
Conversion Urgency: 5
Existing Page? No
Existing Ranking? None

Notes:
Emergency locksmith is high-value, urgent, directly aligned with locksmith intent, and important for Miami Local Pack visibility.


## Fórmula


Priority Score =
Revenue Value
+ Search Intent
+ GBP Category Relevance
+ City Priority
+ Competition Gap
+ Conversion Urgency


## Tiers


| Score | Prioridad | Acción |
| --- | --- | --- |
| 26-30 | P1 | Publicar inmediatamente |
| 21-25 | P2 | Primera fase |
| 16-20 | P3 | Después de páginas core |
| 10-15 | P4 | Expansión |
| 0-9 | Hold | No construir todavía |


## Ejemplo aplicado


| URL | Revenue | Intent | GBP | City | Gap | Urgency | Score | Priority |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| /locksmith/miami/emergency-locksmith/ | 5 | 5 | 5 | 5 | 4 | 5 | 29 | P1 |
| /locksmith/miami/car-locksmith/ | 4 | 5 | 4 | 5 | 4 | 5 | 28 | P1 |
| /locksmith/miami/commercial-locksmith/ | 5 | 4 | 4 | 5 | 3 | 4 | 26 | P1 |
| /locksmith/miami/key-duplication/ | 2 | 3 | 4 | 5 | 3 | 2 | 19 | P3 |


## Regla


Primero páginas comerciales de alta intención. Después GeoArticles y expansión.


# Paso 8 - QA Checklist


## Objetivo


Crear una checklist de control antes de publicar cualquier página.


## Lo que tienes que rellenar


Page ID:
Page Type:
URL:
Target Service:
Target City:
Primary GBP Category:
Additional GBP Category Supported:
Priority:
Status:
Reviewer:
QA Date:
Physical office in this city? Yes / No
Can the page mention office, location or visit us? Yes / No
Main Parent Page:
Required Internal Links:
Required Schema:
Notes:


## Ejemplo rellenado


Page ID: LBS-001
Page Type: Location-Based Service
URL: /locksmith/miami/emergency-locksmith/
Target Service: Emergency Locksmith
Target City: Miami
Primary GBP Category: Locksmith
Additional GBP Category Supported: Yes - Emergency Locksmith Service
Priority: P1
Status: Ready for QA
Reviewer: SEO Manager
QA Date: 2026-04-23
Physical office in this city? Yes
Can mention office/location/visit us? Yes
Main Parent Page: /locksmith/emergency-locksmith/

Required Internal Links:
1. /locksmith/emergency-locksmith/
2. /miami/
3. /locksmith/miami/car-locksmith/
4. /locksmith/miami/residential-locksmith/
5. /miami/emergency-locksmith-cost-guide/

Required Schema:
LocalBusiness, BreadcrumbList, FAQPage, Speakable


## Checklist general


| Check | Pregunta | Estado |
| --- | --- | --- |
| URL correcta | ¿Sigue las reglas del Paso 4? | [ ] |
| Page type correcto | ¿Corresponde al tipo definido? | [ ] |
| Servicio único | ¿Una sola intención de servicio? | [ ] |
| Ciudad única | ¿Una sola ciudad si aplica? | [ ] |
| H1 correcto | ¿Incluye marca, servicio y/o ciudad según el tipo? | [ ] |
| Metadata | ¿Title y description correctos? | [ ] |
| Word count | ¿Cumple el objetivo del tipo de página? | [ ] |
| AUDIO | ¿Incluye Authority, Uniqueness, Depth, Intent, Optimization? | [ ] |
| FAQs | ¿Incluye preguntas útiles y naturales? | [ ] |
| CTA | ¿Hay llamada a la acción clara? | [ ] |
| Internal links | ¿Incluye enlaces obligatorios? | [ ] |
| Schema | ¿Coincide con el tipo de página? | [ ] |
| NAP | ¿Es consistente? | [ ] |
| No false location | ¿No finge oficina física? | [ ] |
| No canibalización | ¿No compite con otra URL? | [ ] |
| Final approval | ¿Lista para publicar? | [ ] |


## Final Publish Gate


URL approved: Yes / No
Content approved: Yes / No
SEO metadata approved: Yes / No
Schema approved: Yes / No
Internal links approved: Yes / No
NAP approved: Yes / No
No canibalization: Yes / No
No false location claim: Yes / No
CTA approved: Yes / No
Ready to publish: Yes / No


## Output del paso


Sistema de QA para homepage, servicios, location pages, categorías adicionales, GeoHubs y GeoArticles.


# Paso 9 - Producción en fases


## Objetivo


Convertir el sistema en un plan real de implementación. Se publica por fases, no todo de golpe.


## Lo que tienes que rellenar


Business Name:
Website Root Domain:
Primary GBP Category:
Primary Category Slug:
Main City:
Physical Location City:
Top Priority Cities:
Top Priority Services:
Additional GBP Categories that need pages:
Total Pages Calculated:
Homepage Status:
Service Overview Pages Status:
GeoHub Pages Status:
Location-Based Service Pages Status:
Additional Category Pages Status:
GeoArticle Pages Status:
Publishing Capacity:
Content Team:
CMS:
Can schema be added?
Can internal links be edited manually?
Can Google reviews be embedded?
Tracking Available:


## Ejemplo rellenado


Business Name: ABC Locksmith
Website Root Domain: https://www.abclocksmith.com
Primary GBP Category: Locksmith
Primary Category Slug: locksmith
Main City: Miami
Physical Location City: Miami
Top Priority Cities: Miami, Hialeah, Coral Gables, Doral, Hollywood
Top Priority Services: Emergency Locksmith, Car Locksmith, Commercial Locksmith, Residential Locksmith, Lock Rekeying
Additional GBP Categories that need pages: Key Duplication Service
Total Pages Calculated: 111
Publishing Capacity: 5 pages per week
Content Team: SEO + Writer + Developer
CMS: WordPress
Can schema be added? Yes
Can internal links be edited manually? Yes
Tracking Available: GMB Crush Geo Grid, GSC, GA4


## Fases


| Fase | Nombre | Objetivo |
| --- | --- | --- |
| 1 | Entity Foundation | Homepage, contacto, about, servicios principales, GeoHub principal |
| 2 | Local Conversion Layer | Páginas ciudad + servicio, categorías adicionales, GeoHubs secundarios |
| 3 | Semantic Expansion Layer | GeoArticles, FAQs, cost guides, comparison guides |
| 4 | Optimization Loop | Tracking, enlaces, schema, metadata, refresh |


## Ejemplo de calendario


| Semana | Páginas |
| --- | --- |
| 1 | /, /contact/, /locksmith/emergency-locksmith/, /locksmith/car-locksmith/, /locksmith/commercial-locksmith/ |
| 2 | /miami/, /locksmith/miami/emergency-locksmith/, /locksmith/miami/car-locksmith/, /locksmith/miami/commercial-locksmith/ |
| 3 | /locksmith/residential-locksmith/, /locksmith/lock-rekeying/, /locksmith/miami/residential-locksmith/, /locksmith/miami/lock-rekeying/, /locksmith/miami/key-duplication/ |
| 4 | /hialeah/, /coral-gables/, /locksmith/hialeah/emergency-locksmith/, /locksmith/coral-gables/emergency-locksmith/ |
| 5 | /miami/emergency-locksmith-cost-guide/, /miami/what-to-do-locked-out-of-house/, /miami/how-fast-can-locksmith-arrive/ |


## Dependencias


| Página | Debe existir antes |
| --- | --- |
| Location-Based Service | Homepage + Service Overview + GeoHub |
| Additional Category | Homepage + GeoHub + servicios relacionados |
| GeoArticle | Matching Location-Based Service + GeoHub |
| GeoHub | Homepage |
| Service Overview | Homepage |


## Regla


Nunca publicar una página que no tenga padre, destino de enlace y función clara.


# Paso 10 - Pseudocódigo del sistema


## Objetivo


Convertir el sistema en una lógica repetible para generar la arquitectura de cualquier negocio local.


## Lo que tienes que rellenar


Business Name:
Website Root Domain:
Canonical Domain:
Primary GBP Category:
Primary Category Slug:
Main City:
Physical Location City:
Target Cities:
Core Services:
Service Slugs:
Additional GBP Categories:
Additional Categories Already Covered:
Effective Additional Categories:
GeoArticles per Service x City:
GeoHub URL Style:
GeoArticle URL Style:
Phone:
Email:
NAP:
GBP URL:
Top Priority Services:
Top Priority Cities:
Publishing Capacity:
Tracking Tools:


## Ejemplo rellenado


Business Name: ABC Locksmith
Website Root Domain: https://www.abclocksmith.com
Canonical Domain: https://www.abclocksmith.com
Primary GBP Category: Locksmith
Primary Category Slug: locksmith
Main City: Miami
Physical Location City: Miami
Target Cities: Miami, Hialeah, Coral Gables, Doral, Hollywood
Core Services: Emergency Locksmith, Car Locksmith, Residential Locksmith, Commercial Locksmith, Lock Rekeying
Additional GBP Categories: Emergency Locksmith Service, Key Duplication Service
Effective Additional Categories: Key Duplication Service
GeoArticles per Service x City: 3
GeoHub URL Style: /city/
GeoArticle URL Style: /city/article-topic/


## Pseudocódigo general


START

1. Load business inputs
2. Normalize all names and slugs
3. Validate GBP category alignment
4. Detect duplicate additional categories
5. Generate Homepage
6. Generate Service Overview Pages
7. Generate GeoHub Pages
8. Generate Location-Based Service Pages
9. Generate Additional Category Pages
10. Generate GeoArticle Ideas
11. Assign schema by page type
12. Assign internal links by page type
13. Calculate Priority Score
14. Assign publishing phase
15. Run QA checklist
16. Output URL Matrix
17. Output Internal Linking Matrix
18. Output Schema Map
19. Output Publishing Plan
20. Output QA Status

END


## Funciones principales


generate_slug(text)
detect_duplicate_categories(additional_categories, core_services)
generate_homepage()
generate_service_overviews(core_services)
generate_geohubs(target_cities)
generate_location_based_services(core_services, target_cities)
generate_additional_category_pages(effective_categories, target_cities)
generate_geoarticles(core_services, target_cities, G)
assign_schema(page_type)
assign_internal_links(page)
calculate_priority(service, city, page_type)
assign_publish_phase(page)
check_dependencies(page)
run_qa(page)


## Output del sistema


| Output | Descripción |
| --- | --- |
| URL Matrix | Todas las páginas generadas |
| Internal Linking Matrix | Source URL, Target URL, anchor, placement |
| Schema Map | Schema requerido por página |
| Publishing Plan | Fases, semanas, orden y dependencias |
| QA Matrix | Aprobación final antes de publicar |


## Regla


Input -> Normalize -> Validate -> Generate -> Link -> Score -> Phase -> QA -> Output.


# Paso 11 - Master Prompt reutilizable


## Objetivo


Tener un prompt maestro para generar automáticamente la arquitectura GMB Crush de cualquier negocio local.


## Lo que tienes que rellenar


Business Name:
Website Root Domain:
Canonical Domain:
Country:
State / Province:
Main City:
Physical Location City:
Full NAP:
GBP URL:
Primary GBP Category:
Primary Category Slug:
Additional GBP Categories:
Core Services:
Service Slugs:
Target Cities:
City Slugs:
Services available in every city?
Additional Categories already covered by core services:
Additional Categories that need separate pages:
GeoArticles per Service x City:
GeoHub URL Style:
GeoArticle URL Style:
Top Priority Services:
Top Priority Cities:
Trust Signals:
Preferred CTA:
Publishing Capacity:
CMS:
Can schema be added?
Can internal links be edited manually?
Tracking Tools:


## Ejemplo rellenado


Business Name: ABC Locksmith
Website Root Domain: https://www.abclocksmith.com
Canonical Domain: https://www.abclocksmith.com
Country: United States
State / Province: Florida
Main City: Miami
Physical Location City: Miami
Full NAP:
- Business Name: ABC Locksmith
- Street Address: 123 Main St
- City: Miami
- State / Province: FL
- ZIP: 33101
- Country: United States
- Phone: +1 305 000 0000
GBP URL: https://google.com/business/abc-locksmith
Primary GBP Category: Locksmith
Primary Category Slug: locksmith
Additional GBP Categories: Emergency Locksmith Service, Key Duplication Service
Core Services: Emergency Locksmith, Car Locksmith, Residential Locksmith, Commercial Locksmith, Lock Rekeying
Target Cities: Miami, Hialeah, Coral Gables, Doral, Hollywood
Services available in every city? Yes
Additional Categories already covered: Emergency Locksmith Service
Additional Categories that need separate pages: Key Duplication Service
GeoArticles per Service x City: 3
GeoHub URL Style: /city/
GeoArticle URL Style: /city/article-topic/
Top Priority Services: Emergency Locksmith, Car Locksmith, Commercial Locksmith
Top Priority Cities: Miami, Hialeah, Coral Gables
Preferred CTA: Call now
Publishing Capacity: 5 pages per week
CMS: WordPress
Can schema be added? Yes
Can internal links be edited manually? Yes
Tracking Tools: GMB Crush Geo Grid, GSC, GA4


## Master Prompt


Actúa como Matteo de GMB Crush, especialista top 1% en Local SEO, Google Business Profile optimization, AI Overview visibility, semantic SEO, GeoHub architecture, internal linking y LocalBusiness site structure.

Quiero construir una web local desde cero siguiendo la metodología GMB Crush.

Usa exclusivamente esta jerarquía:
1. Homepage = Root Entity Anchor
2. Service Overview Pages = Topical Authority Pillars, no location
3. Location-Based Service Pages = Geo-Targeted Converters
4. Additional Category Pages = GBP additional category support
5. GeoHub Pages = City-Level Silo Containers
6. GeoArticle Pages = Semantic Boosters for service + city + long-tail intent

Reglas:
- No confundas Service Overview Pages con Location-Based Service Pages.
- No mezcles múltiples ciudades en una página local.
- No mezcles múltiples servicios en una página local.
- No crees páginas duplicadas para categorías adicionales ya cubiertas.
- No afirmes oficina física si no se indica explícitamente.
- Cada categoría GBP debe tener soporte local específico.
- Los GeoArticles no son landing pages; son boosters semánticos.
- Cada página debe tener función, URL, H1, metadata, schema, enlaces internos, prioridad y fase.

Inputs:
[PEGAR FICHA COMPLETA DEL NEGOCIO]

Genera:
1. Executive summary
2. Inputs validation
3. Duplicate category detection
4. Total page count formula
5. Full URL Matrix
6. Page Type Rules
7. Homepage brief
8. Service Overview Pages
9. GeoHub Pages
10. Location-Based Service Pages
11. Additional Category Pages
12. GeoArticle ideas
13. Schema Map
14. Internal Linking Map
15. Priority Score
16. Publishing Phases
17. QA Checklist
18. Final implementation roadmap

Formato:
- Usa tablas limpias.
- Sé preciso.
- No inventes ubicaciones físicas.
- No crees páginas duplicadas.
- No crees páginas sin padre, target o destino de enlace claro.


## Prompts auxiliares


1. URL Matrix Prompt
2. Page Content Prompt
3. GeoArticle Ideas Prompt
4. QA Audit Prompt


## Output del paso


Prompt maestro y prompts auxiliares listos para reutilizar.


# Paso 12 - Sistema final operativo


## Objetivo


Unir todos los pasos en un SOP final para construir cualquier web local desde cero siguiendo GMB Crush.


## Lo que tienes que rellenar


Business Name:
Website Root Domain:
Canonical Domain:
Country:
State / Province:
Main City:
Physical Location City:
Full NAP:
GBP URL:
Primary GBP Category:
Additional GBP Categories:
Core Services:
Target Cities:
Services available in every city?
Additional Categories already covered:
Additional Categories that need separate pages:
GeoArticles per Service x City:
GeoHub URL Style:
GeoArticle URL Style:
Top Priority Services:
Top Priority Cities:
Trust Signals:
Preferred CTA:
Publishing Capacity:
CMS:
Can schema be added?
Can internal links be edited manually?
Tracking Tools:


## Ejemplo rellenado


Business Name: ABC Locksmith
Website Root Domain: https://www.abclocksmith.com
Canonical Domain: https://www.abclocksmith.com
Country: United States
State / Province: Florida
Main City: Miami
Physical Location City: Miami
Primary GBP Category: Locksmith
Additional GBP Categories: Emergency Locksmith Service, Key Duplication Service
Core Services: Emergency Locksmith, Car Locksmith, Residential Locksmith, Commercial Locksmith, Lock Rekeying
Target Cities: Miami, Hialeah, Coral Gables, Doral, Hollywood
Effective Additional Category: Key Duplication Service
GeoArticles per Service x City: 3
Total Pages: 111


## Sistema final


Input -> Architecture -> URL Matrix -> Page Briefs -> Internal Links -> Schema -> Priority -> QA -> Publish -> Track -> Optimize


## SOP completo


1. Recoger inputs del negocio
2. Validar GBP category, servicios y ciudades
3. Detectar categorías adicionales duplicadas
4. Calcular número total de páginas
5. Crear URL Matrix
6. Aplicar reglas de URL
7. Asignar page type a cada URL
8. Crear brief por tipo de página
9. Asignar schema por tipo de página
10. Crear mapa de enlaces internos
11. Calcular Priority Score
12. Asignar fase de publicación
13. Producir contenidos por lote
14. Pasar QA
15. Publicar
16. Revisar indexación
17. Medir geo-grid, GSC y conversiones
18. Optimizar páginas débiles
19. Crear nuevos GeoArticles
20. Refrescar contenido cada 3-6 meses


## Pestañas recomendadas


| Pestaña | Función |
| --- | --- |
| Inputs | Datos base del negocio |
| Services | Servicios, slugs, prioridad, valor |
| Cities | Ciudades, slugs, prioridad, ubicación física |
| Additional Categories | Categorías GBP adicionales y duplicados |
| URL Matrix | Todas las páginas del sistema |
| Page Briefs | H1, metas, estructura, secciones |
| Internal Linking Map | Source URL, target URL, anchor, placement |
| Schema Map | Schema requerido por página |
| Priority Score | P1, P2, P3, P4 |
| Publishing Plan | Fase, semana, orden, estado |
| QA Checklist | Control antes de publicar |
| Tracking Log | Rankings, GSC, leads, geo-grid |
| Optimization Queue | Acciones pendientes |


## Primera publicación para ABC Locksmith


/
/contact/
/locksmith/emergency-locksmith/
/locksmith/car-locksmith/
/locksmith/commercial-locksmith/
/miami/
/locksmith/miami/emergency-locksmith/
/locksmith/miami/car-locksmith/
/locksmith/miami/commercial-locksmith/


## Segunda publicación


/locksmith/residential-locksmith/
/locksmith/lock-rekeying/
/locksmith/miami/residential-locksmith/
/locksmith/miami/lock-rekeying/
/locksmith/miami/key-duplication/
/hialeah/
/coral-gables/
/locksmith/hialeah/emergency-locksmith/
/locksmith/coral-gables/emergency-locksmith/


## Tercera publicación


/miami/emergency-locksmith-cost-guide/
/miami/what-to-do-locked-out-of-house/
/miami/how-fast-can-locksmith-arrive/
/miami/car-locksmith-cost-guide/
/miami/what-to-do-locked-out-of-car/
/miami/car-key-replacement-guide/


## Reglas finales no negociables


- No crear páginas sin función clara.
- No mezclar servicios en una landing local.
- No mezclar ciudades en una landing local.
- No crear categorías adicionales duplicadas.
- No publicar artículos antes de sus páginas comerciales.
- No fingir ubicación física.
- No dejar páginas huérfanas.
- No publicar sin schema.
- No publicar sin CTA.
- No publicar sin enlaces internos.
- No publicar sin QA.
- No dejar de medir después de publicar.


## Resumen final


Homepage = entidad raíz
Service Overview Pages = autoridad temática
Location-Based Service Pages = conversión local
Additional Category Pages = soporte GBP
GeoHub Pages = contenedores de ciudad
GeoArticle Pages = boosters semánticos
Internal Linking = distribución de autoridad
Schema = claridad para Google y AI
Priority Score = orden de ejecución
QA = control de calidad
Tracking = mejora continua


# Fuentes internas GMB Crush usadas


Este SOP se construyó usando como base los frameworks internos cargados en la conversación:

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework


# Nota de uso


Este documento es una plantilla operativa. Para convertirlo en una arquitectura final de un negocio real, sustituye el ejemplo ABC Locksmith por los datos reales del cliente y valida siempre:
- categoría principal GBP
- servicios reales
- ciudades atendidas
- presencia física
- categorías adicionales
- capacidad de publicación
- tracking disponible