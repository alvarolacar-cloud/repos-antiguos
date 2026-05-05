**Paso 4 - URL Rules**
*Documento descargable por pasos*
GMB Crush Website Build System - SOP operativo


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


# Fuentes internas GMB Crush usadas


- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework