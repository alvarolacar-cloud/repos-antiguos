**Paso 3 - Matriz Base**
*Documento descargable por pasos*
GMB Crush Website Build System - SOP operativo


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


# Fuentes internas GMB Crush usadas


- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework