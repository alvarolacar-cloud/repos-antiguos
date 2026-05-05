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
En esta versión web-first, el Google Business Profile no existe todavía: las categorías se tratan como Planned GBP Categories hasta que el Paso 14 cree, verifique y sincronice el GBP con la web.
Esto evita inventar una GBP URL, reseñas de Google o señales de perfil antes de que existan.
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

Planned Primary GBP Category:

Primary Category Slug:

Main City:

Main City Slug:

Physical Location City:

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

Planned Additional GBP Categories:
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

Direct Local Coverage Areas:
Zonas que salen directamente de la dirección física / NAP.
Ejemplo: barrio, distrito o ciudad mencionados en la dirección.
1.
2.
3.

Candidate Local Coverage Areas:
Zonas cercanas o relevantes que deben pasar el test de coherencia GEO antes de usarse como señales activas.
1.
2.
3.

Approved Expansion Areas:
Zonas que sí tendrán URLs propias. Default: None in Phase 1.
1.
2.
3.

> **Regla**: Direct = sale del ancla física. Candidate = se evalúa. Approved Expansion = genera URL.

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
Cerrajeros Madrid 24h

Website URL:
https://www.cerrajerosmadrid24h.com

Canonical Domain:
https://www.cerrajerosmadrid24h.com

Full NAP:
- Name: Cerrajeros Madrid 24h
- Street Address: Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí
- City: Madrid
- State / Province: Comunidad de Madrid
- ZIP / Postal Code: 28010
- Country: España
- Phone: +34 600 000 000

Planned Primary GBP Category:
Cerrajero

Planned Additional GBP Categories:
1. Servicio de cerrajería de urgencia
2. Servicio de duplicado de llaves

Main City:
Madrid

Physical Location City:
Madrid

Servicios principales:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de cerraduras
4. Cambio de bombines
5. Instalación de cerraduras de seguridad

Direct Local Coverage Areas:
1. Almagro
2. Chamberí

Candidate Local Coverage Areas:
1. Salamanca
2. Retiro
3. Centro
4. Tetuán
5. Chamartín
6. Arganzuela
7. Moncloa
8. Prosperidad

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

Preferred CTA:
Llamar ahora

Trust Signals:
- 10+ años de experiencia
- reseñas iniciales pendientes de recopilar tras crear el GBP
- Técnicos cerrajeros cualificados
- Servicio móvil en el mismo día
- Garantía de trabajo

GBP URL:
N/A — GBP not created yet

```

# Cuerpo operativo del Paso 11

> **Definición operativa — Local Coverage Areas:** zonas, barrios, distritos o landmarks seleccionados desde la dirección física, la Main City, la coherencia GEO, la proximidad, los datos de búsqueda, los competidores y la lógica GMB Crush para reforzar relevancia local dentro del contenido, schema y futuros análisis. No son automáticamente URLs. No son automáticamente páginas propias. No son necesariamente oficinas físicas. Las Local Coverage Areas se usan primero como señales GEO dentro del contenido. No generan URLs por defecto.

## 1. Load inputs

### Explicación

Este bloque carga los datos base que el sistema necesita antes de generar cualquier URL, matriz o página. Su función es convertir el intake del negocio en variables operativas: nombre, dominio, Main City, categoría planificada, servicios, slugs, Local Coverage Areas, estado del GBP y datos NAP.

Si aquí falta un dato crítico, el resto del pseudocódigo puede generar páginas incompletas, URLs mal formadas, schema incoherente o una arquitectura que no soporte la categoría planificada. Este bloque no crea páginas; prepara la materia prima del sistema.

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
INPUT direct_local_coverage_areas[]
INPUT candidate_local_coverage_areas[]
INPUT approved_expansion_areas[]
INPUT geoarticles_per_service
INPUT nap
INPUT gbp_url
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Inputs cargados:

business_name:
Cerrajeros Madrid 24h

website_root_domain:
https://www.cerrajerosmadrid24h.com

main_city:
Madrid

main_city_slug:
madrid

gbp_status:
Not Created

planned_primary_gbp_category:
Cerrajero

core_services:
- Cerrajero urgente
- Apertura de puertas
- Cambio de cerraduras
- Cambio de bombines
- Instalación de cerraduras de seguridad

additional_categories_with_page:
- Duplicado de llaves

direct_local_coverage_areas:
- Almagro
- Chamberí

candidate_local_coverage_areas:
- Salamanca
- Retiro
- Centro
- Tetuán
- Chamartín
- Arganzuela
- Moncloa
- Prosperidad

approved_expansion_areas:
None

Resultado:
Inputs complete enough to generate the base architecture.
```

Si falta un input crítico:

```text
Missing:
main_city

Resultado:
Blocked — no Main City available for GeoHub, LBS pages or GeoArticles.
```

### Ejemplos incorrectos

```text
- Ejecutar la generación sin Main City.
- Dejar Planned Primary GBP Category vacío aunque el GBP todavía no exista.
- Cargar Local Coverage Areas pero no definir si generan páginas o no.
- Añadir una GBP URL inventada cuando el GBP Status es Not Created.
- Cargar servicios sin slugs ni posibilidad de normalización.
```

### Regla final

```text
El sistema solo puede generar arquitectura fiable si los inputs base están completos, diferenciando datos confirmados de datos planificados.
```
## 2. Normalize slugs

### Explicación

Este bloque normaliza todos los nombres que se usarán en URLs, IDs y matrices. Su función es transformar servicios, ciudad principal, categorías y posibles áreas aprobadas en slugs limpios, consistentes y escalables.

La normalización evita URLs con mayúsculas, acentos, espacios, símbolos, guiones inconsistentes o mezclas entre servicio y ciudad. Sin esta capa, la matriz puede crear rutas distintas para la misma intención.

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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Texto original:
Cerrajero Urgente

Slug correcto:
cerrajero-urgente

Texto original:
Apertura de Puertas

Slug correcto:
apertura-puertas

Texto original:
Instalación de Cerraduras de Seguridad

Slug correcto:
instalacion-cerraduras-seguridad

Texto original:
Madrid

Slug correcto:
madrid
```

### Ejemplos incorrectos

```text
- /Cerrajero Urgente/
- /cerrajero_urgente/
- /cerrajero%20urgente/
- /cerrajero-urgente-madrid/ como Service Overview
- /instalación-de-cerraduras-de-seguridad/
- /madrid!!/
```

### Regla final

```text
Todo nombre que vaya a formar parte de una URL debe convertirse primero en un slug limpio, estable y sin ambigüedad.
```
## 3. Validate categories

### Explicación

Este bloque valida las categorías planificadas antes de convertirlas en páginas. Su función es separar categorías adicionales reales de categorías que ya están cubiertas por un servicio core.

Como el GBP todavía no existe, trabajamos con Planned Primary GBP Category y Planned Additional GBP Categories. La validación evita crear páginas duplicadas para la misma intención y asegura que cada categoría adicional que sí se mantenga tenga soporte web real.

### Pseudocódigo

```text
effective_additional_categories = []
FOR each additional_category:
    IF matches core service intent:
        mark as covered
    ELSE:
        add to effective_additional_categories
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Planned Additional Category:
Servicio de cerrajería de urgencia

Core Service:
Cerrajero urgente

Resultado:
Covered by core service.
No separate Additional Category Page needed.

URL que soporta la categoría:
/cerrajero/madrid/cerrajero-urgente/
```

Categoría que sí necesita página:

```text
Planned Additional Category:
Servicio de duplicado de llaves

Core Services:
No exact duplicate except Duplicado de llaves as approved service/category support.

Resultado:
Generate support page if it is not already fully covered.

URL:
/cerrajero/madrid/duplicado-llaves/
```

### Ejemplos incorrectos

```text
- Crear /cerrajero/madrid/servicio-de-cerrajeria-de-urgencia/ y también /cerrajero/madrid/cerrajero-urgente/.
- Añadir una categoría adicional que no representa un servicio real.
- Eliminar una categoría adicional útil sin comprobar si tiene página de soporte.
- Usar categorías planificadas como si ya estuvieran confirmadas por un GBP creado.
```

### Regla final

```text
Una categoría adicional solo genera página propia si no está ya cubierta por un servicio core y representa un servicio real del negocio.
```
## 4. Generate homepage

### Explicación

Este bloque genera la homepage como Root Entity Anchor. Su función es crear la fila base de la arquitectura: la URL raíz, el H1 principal, la metadata inicial, el schema base, la prioridad y la fase de publicación.

La homepage debe establecer marca, servicio principal, Main City, NAP, servicios core y señales de confianza. No debe convertirse en una URL local alternativa ni en una página genérica sin conexión con la arquitectura.

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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
ID:
HP-001

Page Type:
Homepage

URL:
/

H1:
Cerrajeros Madrid 24h – Cerrajero urgente en Madrid

Meta Title:
Cerrajero urgente en Madrid | Cerrajeros Madrid 24h

Schema:
Organization
WebSite
LocalBusiness if valid
FAQPage
Speakable

Priority:
P1

Publish Phase:
Phase 1 — Entity Foundation
```

### Ejemplos incorrectos

```text
- Usar /home/ o /inicio/ como homepage canónica.
- Crear /cerrajero-madrid/ como sustituto de la home.
- Publicar una homepage sin NAP.
- Publicar una homepage sin servicios core.
- Añadir “reseñas de Google” si el GBP todavía no existe.
- No enlazar desde la homepage a Service Overview Pages ni al GeoHub de Madrid.
```

### Regla final

```text
La homepage debe ser la raíz de entidad del negocio, no una landing improvisada ni una página decorativa.
```
## 5. Generate Service Overview Pages

### Explicación

Este bloque genera las Service Overview Pages para cada servicio core. Su función es crear pilares temáticos no geolocalizados que explican cada servicio sin apuntar a Madrid ni a ninguna zona de cobertura.

Estas páginas soportan a las Location-Based Service Pages. Por eso deben vivir en /category/service/ y actuar como autoridad temática antes de que las páginas /category/main-city/service/ conviertan tráfico local.

### Pseudocódigo

```text
FOR each service IN core_services:
    CREATE SO
    url = /category/service/
    city = null
    schema = Service + WebPage + BreadcrumbList
    links = homepage + related services + Main City service page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Service:
Apertura de puertas

Service Overview URL:
/cerrajero/apertura-puertas/

H1:
Servicios profesionales de apertura de puertas por Cerrajeros Madrid 24h

Schema:
Service
WebPage
BreadcrumbList
Speakable

Links later to:
/cerrajero/madrid/apertura-puertas/
```

Otros ejemplos:

```text
/cerrajero/cerrajero-urgente/
/cerrajero/cambio-cerraduras/
/cerrajero/duplicado-llaves/
/cerrajero/instalacion-cerraduras-seguridad/
```

### Ejemplos incorrectos

```text
- /cerrajero/madrid/apertura-puertas/ como Service Overview.
- /apertura-puertas-madrid/
- /servicios/
- /cerrajero/apertura-puertas-en-chamberi/
- Crear una sola página “servicios” para todos los servicios core.
```

### Regla final

```text
Cada servicio core necesita una Service Overview Page no geolocalizada que funcione como pilar temático.
```
## 6. Generate Main City GeoHub

### Explicación

Este bloque genera el GeoHub de la Main City. Su función es crear el contenedor de ciudad que organiza todos los servicios, categorías adicionales, GeoArticles y Local Coverage Areas relacionadas con Madrid.

El GeoHub no es una página de un servicio concreto. Es el índice local de la ciudad principal y debe ayudar a Google, usuarios y sistemas de IA a entender que la marca opera en Madrid con varios servicios conectados.

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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
ID:
GH-001

Page Type:
GeoHub

URL:
/madrid/

H1:
Cerrajeros Madrid 24h – Servicios de cerrajería en Madrid

Includes:
- Service menu for Madrid
- Additional Category menu
- Local Coverage Areas section
- GeoArticle resources
- Links to homepage and contact
- CollectionPage / BreadcrumbList schema
```

### Ejemplos incorrectos

```text
- /areas-served/
- /madrid-cerrajero/
- /cerrajero-madrid/
- /chamberi/ sin aprobación como Expansion Area
- GeoHub sin enlaces a páginas de servicio en Madrid
- GeoHub que solo habla de la ciudad y no lista servicios
```

### Regla final

```text
El GeoHub de la Main City debe concentrar las señales de ciudad y conectar servicios, categorías, artículos y cobertura local.
```
## 7. Generate Páginas de servicio en la Main City

### Explicación

Este bloque genera las Location-Based Service Pages de la Main City. Su función es crear una página comercial por cada combinación servicio core + Madrid.

Estas páginas son las páginas de conversión local. Deben usar el patrón /category/main-city/service/, mantener un solo servicio y una sola Main City, y enlazar de vuelta al Service Overview y al GeoHub.

### Pseudocódigo

```text
FOR each service IN core_services:
    CREATE LBS
    url = /category/main-city/service/
    parent = /category/service/
    geohub = /main-city/
    content_uses = direct_local_coverage_areas + candidate_local_coverage_areas (filtrado por test GEO)
    schema = LocalBusiness + BreadcrumbList
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Service:
Cerrajero urgente

Main City:
Madrid

URL:
/cerrajero/madrid/cerrajero-urgente/

H1:
Cerrajeros Madrid 24h – Cerrajero urgente en Madrid

Parent Service Overview:
/cerrajero/cerrajero-urgente/

Main City GeoHub:
/madrid/
```

Más ejemplos:

```text
/cerrajero/madrid/cerrajero-urgente/
/cerrajero/madrid/cambio-cerraduras/
/cerrajero/madrid/duplicado-llaves/
```

### Ejemplos incorrectos

```text
- /madrid/apertura-puertas/
- /cerrajero/apertura-puertas-madrid/
- /cerrajero/madrid/apertura-puertas-cambio-cerraduras/
- /cerrajero/chamberi/apertura-puertas/ sin expansión aprobada
- Una página que cubre Madrid, Chamberí, Salamanca y Retiro como si fueran URLs separadas.
```

### Regla final

```text
Cada Location-Based Service Page debe cubrir un servicio aprobado y una Main City, sin mezclar servicios ni generar URLs para zonas de cobertura no aprobadas.
```
## 8. Generate Páginas de categoría adicional en la Main City

### Explicación

Este bloque genera páginas de categoría adicional para la Main City cuando una categoría planificada necesita soporte propio. Su función es convertir una categoría adicional real y no duplicada en una página local de soporte.

Estas páginas son importantes porque ayudan a que la web respalde la profundidad de entidad del futuro GBP, pero no deben duplicar servicios core ya existentes.

### Pseudocódigo

```text
FOR each category IN effective_additional_categories:
    CREATE AC
    url = /category/main-city/category/
    geohub = /main-city/
    related_services = same-city services
    schema = Service with areaServed
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Planned Additional Category:
Servicio de duplicado de llaves

Main City:
Madrid

URL:
/cerrajero/madrid/duplicado-llaves/

H1:
Cerrajeros Madrid 24h – Duplicado de llaves en Madrid

Related pages:
/madrid/
/cerrajero/madrid/cambio-cerraduras/
/cerrajero/madrid/apertura-puertas/
```

### Ejemplos incorrectos

```text
- Crear una página adicional para “Servicio de cerrajería de urgencia” si ya existe /cerrajero/madrid/cerrajero-urgente/.
- Crear páginas para categorías que no se añadirán al GBP.
- Crear /duplicado-llaves/ sin ciudad ni categoría.
- Crear páginas de categorías adicionales para Local Coverage Areas sin aprobación.
```

### Regla final

```text
Las Additional Category Pages solo se generan para categorías adicionales reales, útiles y no duplicadas dentro de la Main City.
```
## 9. Generate GeoArticles de la Main City

### Explicación

Este bloque genera ideas de GeoArticles para la Main City. Su función es crear activos semánticos que apoyen páginas comerciales existentes, no reemplazarlas.

Cada GeoArticle debe estar ligado a un servicio, una Main City, una intención long-tail y una Location-Based Service Page padre. Si no existe la landing comercial que debe apoyar, el artículo queda bloqueado por dependencias.

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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GeoArticle:
¿Cuánto cuesta un cerrajero urgente en Madrid?

URL:
/madrid/cuanto-cuesta-un-cerrajero-urgente/

Supports LBS:
/cerrajero/madrid/cerrajero-urgente/

Matching GeoHub:
/madrid/

Intent:
Cost Guide / Commercial Research

Schema:
Article
FAQPage
BreadcrumbList
Speakable
```

### Ejemplos incorrectos

```text
- Crear /madrid/cuanto-cuesta-un-cerrajero-urgente/ sin que exista /cerrajero/madrid/cerrajero-urgente/.
- Escribir el GeoArticle como una landing comercial duplicada.
- Crear /salamanca/cuanto-cuesta-un-cerrajero/ si Salamanca solo es Local Coverage Area.
- Crear artículos sin enlace al GeoHub ni a la página servicio + ciudad.
```

### Regla final

```text
Cada GeoArticle debe apoyar una LBS existente, reforzar una intención long-tail y enlazar al GeoHub de la Main City.
```
## 10. Use Local Coverage Areas

### Explicación

Este bloque usa las Local Coverage Areas dentro del contenido sin convertirlas en URLs. Su función es inyectar cobertura local real en introducciones, FAQs, ejemplos, secciones de cobertura y schema areaServed.

Las Local Coverage Areas ayudan a contextualizar la cobertura del negocio, pero no deben comportarse como ciudades objetivo ni generar páginas por defecto.

### Pseudocódigo

```text
FOR each content page:
    IF page_type supports local coverage:
        inject direct_local_coverage_areas into intro, examples, FAQs, areaServed
        inject candidate_local_coverage_areas only if GEO coherence test passes
    DO NOT generate URLs for any local_coverage_areas
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Direct Local Coverage Areas:
- Almagro
- Chamberí

Candidate Local Coverage Areas (solo si pasan el test de coherencia GEO del paso 1):
- Salamanca
- Retiro
- Centro
- Tetuán
- Chamartín
- Arganzuela
- Moncloa
- Prosperidad

Use in:
/madrid/
/cerrajero/madrid/apertura-puertas/
/madrid/cuanto-cuesta-un-cerrajero-urgente/

Example sentence:
Atendemos solicitudes de cerrajería en Madrid en zonas como Almagro, Chamberí, Salamanca, Retiro y Centro.

Schema:
areaServed includes Madrid and selected real coverage areas when appropriate.
```

### Ejemplos incorrectos

```text
- Crear /almagro/ sin aprobación.
- Crear /cerrajero/chamberi/apertura-puertas/ como parte de la base.
- Enlazar a /salamanca/ si no existe esa URL.
- Repetir una lista enorme de zonas en todas las páginas sin naturalidad.
- Decir “oficina en Retiro” si no existe oficina allí.
```

### Regla final

```text
Las Local Coverage Areas enriquecen contenido, FAQs y schema; no generan URLs salvo que pasen a Approved Expansion Areas.
```
## 11. Generate expansion only if approved

### Explicación

Este bloque genera páginas de expansión solo cuando una zona ha sido aprobada explícitamente como Approved Expansion Area. Su función es mantener separada la arquitectura base de Madrid de cualquier expansión futura.

La expansión no debe activarse por el simple hecho de que una zona aparezca como cobertura local. Debe existir una decisión estratégica, demanda, valor comercial y capacidad de crear contenido único.

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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Approved Expansion Areas:
None

Resultado:
No se genera /alcobendas/
No se genera /cerrajero/alcobendas/apertura-puertas/
No se generan GeoArticles para Alcobendas
```

Si se aprueba una expansión:

```text
Approved Expansion Area:
Alcobendas

Generated:
/alcobendas/
/cerrajero/alcobendas/apertura-puertas/
/alcobendas/cuanto-cuesta-un-cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Crear páginas para todas las Local Coverage Areas.
- Crear /chamberi/ solo porque Chamberí aparece en el NAP.
- Crear expansión sin GeoHub.
- Crear expansión sin Service Overview padre.
- Crear una página de expansión que afirma oficina física falsa.
```

### Regla final

```text
Una zona de cobertura solo genera URLs cuando está aprobada como Expansion Area y puede sostener contenido único.
```
## 12. Assign internal links

### Explicación

Este bloque asigna enlaces internos obligatorios según el tipo de página. Su función es conectar homepage, Service Overview Pages, GeoHub, Location-Based Service Pages, Additional Category Pages y GeoArticles sin romper el silo.

También evita enlaces a Local Coverage Areas sin URL aprobada. El objetivo no es enlazar todo con todo, sino crear rutas lógicas entre páginas padre, páginas comerciales, hubs y artículos de soporte.

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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Source:
/cerrajero/madrid/cerrajero-urgente/

Required links:
- /cerrajero/cerrajero-urgente/
- /madrid/
- /cerrajero/madrid/apertura-puertas/
- /cerrajero/madrid/cambio-cerraduras/
- /madrid/cuanto-cuesta-un-cerrajero-urgente/
- /contacto/

Anchor examples:
- cerrajero urgente en Madrid
- servicios de cerrajería en Madrid
- apertura de puertas en Madrid
```

### Ejemplos incorrectos

```text
- Enlazar a /almagro/ si no existe.
- Publicar un GeoArticle sin enlace a su LBS.
- Crear un GeoHub sin enlaces a servicios.
- Crear una Service Overview Page sin enlace a su versión Madrid.
- Usar siempre el mismo anchor exact match.
```

### Regla final

```text
Cada página debe recibir y emitir enlaces internos según su función, sin apuntar a URLs no aprobadas ni crear enlaces huérfanos.
```
## 13. Score priority

### Explicación

Este bloque calcula la prioridad de cada página para ordenar la producción. Su función es convertir criterios estratégicos en un score operativo que indique qué se publica primero.

Como la base trabaja con una sola Main City, el factor City Priority se sustituye por Local Relevance. El score debe reflejar valor económico, intención, relevancia para la categoría planificada, oportunidad competitiva y urgencia de conversión.

### Pseudocódigo

```text
score = revenue + intent + gbp_relevance + local_relevance + gap + urgency
IF score >= 26: P1
ELSE IF score >= 21: P2
ELSE IF score >= 16: P3
ELSE IF score >= 10: P4
ELSE: Hold
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Page:
/cerrajero/madrid/cerrajero-urgente/

Revenue Value:
5

Search Intent:
5

Planned GBP Category Relevance:
5

Local Relevance:
5

Competition Gap:
4

Conversion Urgency:
5

Total Score:
29

Priority:
P1

Publish Phase:
Phase 2 — Main City Conversion Layer
```

### Ejemplos incorrectos

```text
- Priorizar /madrid/cuanto-cuesta-un-cerrajero-urgente/ antes de /cerrajero/madrid/cerrajero-urgente/.
- Usar City Priority cuando solo hay una Main City en la base.
- Dar prioridad alta a una página que no apoya la categoría planificada.
- Priorizar una zona de cobertura sin URL aprobada.
- Ignorar servicios urgentes de alta conversión.
```

### Regla final

```text
La prioridad debe ordenar la producción según valor comercial, intención local, relevancia de categoría planificada y capacidad de conversión.
```
## 14. Check dependencies

### Explicación

Este bloque no valida la calidad del contenido; valida si la página puede existir dentro del sistema. Su función es comprobar que cada URL tenga sus páginas padre, páginas destino y condiciones previas antes de pasar a producción o QA.

En una arquitectura GMB Crush, una Location-Based Service Page no debe crearse si todavía no existe su Service Overview Page o su GeoHub principal. Un GeoArticle no debe producirse si no existe la página comercial que debe apoyar. Una página de expansión no debe generarse si la zona no está aprobada como Approved Expansion Area.

Este bloque evita páginas huérfanas, artículos sin destino comercial, landings sin padre semántico y URLs que rompen la lógica Main City → Service Page → GeoHub → GeoArticle.

### Pseudocódigo

```text
IF LBS:
    require homepage + service overview + geohub
IF GeoArticle:
    require matching LBS + geohub
IF expansion:
    require approved_expansion_area == true
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Página solicitada:
LBS-001

URL:
/cerrajero/madrid/cerrajero-urgente/

Page Type:
Location-Based Service

Dependency check:
- Homepage exists: /
- Parent Service Overview exists: /cerrajero/cerrajero-urgente/
- Main City GeoHub exists: /madrid/
- Main City approved: Madrid
- Service approved: Cerrajero urgente

Resultado:
Ready for QA
```

Si intentamos crear la misma página sin que exista el Service Overview:

```text
URL:
/cerrajero/madrid/cerrajero-urgente/

Missing dependency:
/cerrajero/cerrajero-urgente/

Resultado:
Blocked — Missing Parent Service Overview
```

Si intentamos crearla sin que exista el GeoHub:

```text
URL:
/cerrajero/madrid/cerrajero-urgente/

Missing dependency:
/madrid/

Resultado:
Blocked — Missing Main City GeoHub
```

### Ejemplos incorrectos

```text
- Crear /cerrajero/madrid/apertura-puertas/ sin que exista /cerrajero/apertura-puertas/.
- Crear /madrid/cuanto-cuesta-un-cerrajero-urgente/ sin que exista /cerrajero/madrid/cerrajero-urgente/.
- Crear /almagro/ aunque Almagro solo sea Local Coverage Area y no Approved Expansion Area.
- Marcar una página como Ready for QA aunque su GeoHub todavía no exista.
- Crear enlaces internos hacia URLs que todavía no están aprobadas ni planificadas.
```

### Regla final

```text
Ninguna página pasa a producción, QA o publicación si no tiene sus dependencias obligatorias creadas o aprobadas.
```

## 15. Run QA

### Explicación

Este bloque valida si una página ya generada cumple las reglas mínimas para poder publicarse. A diferencia del bloque de dependencias, aquí no se pregunta si la página puede existir; se comprueba si está bien construida.

El QA revisa URL, page type, H1, metadata, schema, CTA, enlaces internos, NAP, uso correcto de Local Coverage Areas, ausencia de falsas ubicaciones y ausencia de canibalización. Si una página falla en un elemento crítico, no debe publicarse aunque tenga buenas keywords o sea prioritaria.

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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Página revisada:
LBS-001

URL esperada:
/cerrajero/madrid/cerrajero-urgente/

URL encontrada:
/madrid/apertura-puertas/

Schema esperado:
LocalBusiness + BreadcrumbList

Schema encontrado:
Article

CTA esperado:
Llamar ahora / Solicitar asistencia de cerrajería en Madrid

CTA encontrado:
No existe CTA visible

QA result:
Needs Revision
```

Corrección necesaria:

```text
- Cambiar URL a /cerrajero/madrid/cerrajero-urgente/
- Sustituir Article schema por LocalBusiness schema
- Añadir CTA local visible
- Confirmar enlaces a /cerrajero/apertura-puertas/ y /madrid/
```

Resultado después de corregir:

```text
QA result:
Approved
```

### Ejemplos incorrectos

```text
- Aprobar una página solo porque el H1 contiene “Madrid”.
- Publicar una LBS con URL mal formada.
- Usar Article schema en una página comercial de servicio + ciudad.
- Publicar una página sin CTA.
- Ignorar enlaces internos obligatorios porque el contenido está bien escrito.
- Añadir reseñas de Google o GBP URL antes de que el GBP exista.
```

### Regla final

```text
El QA es la puerta de publicación: cualquier fallo crítico en URL, schema, CTA, enlaces, NAP o ubicación bloquea la página.
```

## 16. Output matrices

### Explicación

Este bloque define qué entrega el sistema al terminar. El resultado no debe ser una lista suelta de ideas, títulos o páginas. El output debe ser un conjunto de matrices operativas que permitan producir, enlazar, revisar, publicar y optimizar la web.

Cada matriz cumple una función distinta: la URL Matrix organiza las páginas, la Internal Linking Matrix define conexiones, el Schema Map asigna marcado, el Priority Score ordena ejecución, el Publishing Plan marca fases y la QA Matrix controla aprobación. Sin estas matrices, el sistema no es operativo; solo sería una recomendación editorial.

### Pseudocódigo

```text
OUTPUT URL Matrix
OUTPUT Internal Linking Matrix
OUTPUT Schema Map
OUTPUT Priority Score
OUTPUT Publishing Plan
OUTPUT QA Matrix
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Output 1 — URL Matrix:
HP-001 | Homepage | / | P1 | Phase 1
SO-001 | Service Overview | /cerrajero/apertura-puertas/ | P1 | Phase 1
GH-001 | GeoHub | /madrid/ | P1 | Phase 1
LBS-001 | Location-Based Service | /cerrajero/madrid/cerrajero-urgente/ | P1 | Phase 2
GA-001 | GeoArticle | /madrid/cuanto-cuesta-un-cerrajero-urgente/ | P3 | Phase 3

Output 2 — Internal Linking Matrix:
Source: /cerrajero/madrid/cerrajero-urgente/
Target: /cerrajero/cerrajero-urgente/
Anchor: cerrajero urgente
Priority: P1

Output 3 — Schema Map:
URL: /cerrajero/madrid/cerrajero-urgente/
Schema: LocalBusiness, BreadcrumbList, FAQPage optional

Output 4 — Priority Score:
URL: /cerrajero/madrid/cerrajero-urgente/
Score: 29
Priority: P1

Output 5 — Publishing Plan:
Phase 1: Homepage + Service Overview + GeoHub
Phase 2: Main City service pages
Phase 3: GeoArticles
Phase 4: Optimization
Phase 5: GBP Creation & Website Alignment

Output 6 — QA Matrix:
URL: /cerrajero/madrid/cerrajero-urgente/
QA Status: Approved / Needs Revision / Blocked
```

### Ejemplos incorrectos

```text
- Entregar solo una lista de URLs sin prioridades, fases ni estado.
- Entregar borradores de contenido sin URL Matrix.
- Crear una tabla de enlaces sin source URL, target URL ni anchor text.
- Omitir Schema Map y dejar el marcado para decisión manual.
- No separar Publishing Plan de Priority Score.
- Tratar Local Coverage Areas como filas URL cuando no son Approved Expansion Areas.
```

### Regla final

```text
El output del sistema son matrices operativas listas para producción, no contenido suelto ni listas aisladas de ideas.
```

## Regla operativa — Normalización de inputs
### Explicación

El pseudocódigo debe convertir nombres, servicios y zonas en slugs limpios antes de generar URLs. Sin normalización, la matriz puede terminar con inconsistencias.

### Patrón o fórmula

```text
raw input → normalize → approved slug
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente se normaliza como cerrajero-urgente y Madrid como madrid.
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

## Regla operativa — Dedupe de categorías
### Explicación

La lógica debe detectar categorías adicionales ya cubiertas por servicios core. Esto evita crear URLs redundantes.

### Patrón o fórmula

```text
additional_category → matches core_service intent → covered
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Servicio de cerrajería de urgencia se marca covered; Servicio de duplicado de llaves entra como effective additional category.
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

## Regla operativa — Generación base Main City
### Explicación

El algoritmo base genera páginas solo para la Main City. Local Coverage Areas no entran en loops de URL salvo que estén aprobadas como expansión.

### Patrón o fórmula

```text
generate_base(main_city, services, effective_categories, G)
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h genera /madrid/ y /cerrajero/madrid/service/ para sus servicios core.
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

## Regla operativa — Inyección de Local Coverage Areas en contenido
### Explicación

Aunque no generen URLs, las áreas de cobertura sí deben entrar en briefs de contenido, FAQs, ejemplos y schema areaServed.

### Patrón o fórmula

```text
coverage_areas[] → content_blocks + FAQs + areaServed
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca y Retiro se pasan al brief de /madrid/ y a páginas locales de Madrid.
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

## Regla operativa — Asignación de schema y links
### Explicación

El pseudocódigo debe asignar schema e internal links por page type de forma automática. Esto reduce decisiones manuales y errores.

### Patrón o fórmula

```text
page.type → schema + required_links
```

### Ejemplo correcto con Cerrajeros Madrid 24h

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

## Regla operativa — Scoring y fase
### Explicación

El algoritmo debe calcular prioridad y fase por separado. El score define importancia; la fase define cuándo se puede publicar según dependencias.

### Patrón o fórmula

```text
score(page) → priority | dependencies(page) → phase/status
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente Madrid puede ser P1 y Phase 2; su GeoArticle es Phase 3.
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

## Regla operativa — QA automático
### Explicación

El sistema debe ejecutar checks mínimos antes de marcar una página como Ready for QA o Approved: URL, H1, metadata, schema, links, NAP, canibalización y ubicación.

### Patrón o fórmula

```text
page → run_qa_checks → Approved / Needs Revision / Blocked
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 pasa QA solo si tiene URL correcta, H1 de servicio+Madrid, LocalBusiness schema y enlaces obligatorios.
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

## Regla operativa — Branch de expansión separado
### Explicación

El pseudocódigo debe tener una rama opcional para Approved Expansion Areas. Si la lista está vacía, no genera nada. Si contiene zonas aprobadas, genera URLs con sus propias dependencias.

### Patrón o fórmula

```text
if approved_expansion_areas: generate_expansion(area)
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Almagro se aprueba, el sistema genera /almagro/ y páginas /cerrajero/almagro/service/ después de la base.
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

---

# Fuentes internas GMB Crush usadas

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework

> **Nota importante — GBP Services ≠ core services del sitio web:**
> Las categorías adicionales del Google Business Profile (como "Servicio de duplicado de llaves") pueden tener página propia en la web, pero **no forman parte de `core_services`**. La variable `core_services` define los 5 servicios principales que generan Service Overview, LBS y GeoArticles. Las Additional Categories con página propia se gestionan por separado mediante `additional_categories_with_page`. No mezclar ambos conjuntos.
