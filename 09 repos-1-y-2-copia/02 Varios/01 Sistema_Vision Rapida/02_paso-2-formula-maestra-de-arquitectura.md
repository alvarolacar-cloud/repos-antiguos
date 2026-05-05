**Paso 2 - Formula Maestra de Arquitectura**
*Documento descargable por pasos*
GMB Crush Website Build System - SOP operativo


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


# Fuentes internas GMB Crush usadas


- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework