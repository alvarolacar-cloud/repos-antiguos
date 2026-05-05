**Paso 10 - Pseudocodigo del Sistema**
*Documento descargable por pasos*
GMB Crush Website Build System - SOP operativo


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


# Fuentes internas GMB Crush usadas


- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework