Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# §1 Paso 4 — URL Rules

## §2 Índice corto

**Paso 4 — URL Rules**

## §3 Objetivo del Paso 4

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: fijar una estructura de URLs limpia, escalable y anti-canibalización antes de producir contenidos.
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
Error que previene: crear URLs distintas para la misma intención.
Error que previene: usar Local Coverage Areas como carpetas sin aprobación.
Error que previene: mezclar ciudad, servicio y artículo en el mismo patrón.
Error que previene: crear slugs con near-me, best o cheap.
Error que previene: tener versiones con y sin trailing slash.

## §4 Lo que tienes que rellenar

```text
Website Root Domain:

Canonical Domain:
Option A: https://www.domain.com
Option B: https://domain.com

Trailing Slash:
Yes / No

Planned Primary GBP Category:

Primary Category Slug:

Main City:

Main City Slug:

Homepage URL:
/ 

Service Overview URL Style:
/[primary-category-slug]/[service-slug]/

Main City GeoHub URL Style:
Option A: /[main-city-slug]/
Option B: /[primary-category-slug]/[main-city-slug]/

Main City Location-Based Service URL Style:
/[primary-category-slug]/[main-city-slug]/[service-slug]/

Main City Additional Category URL Style:
/[primary-category-slug]/[main-city-slug]/[additional-category-slug]/

Main City GeoArticle URL Style:
Option A: /[main-city-slug]/[article-topic-slug]/
Option B: /[primary-category-slug]/[main-city-slug]/[article-topic-slug]/

Local Coverage Areas:
Do they generate URLs?
Default: No

Approved Expansion Areas:
If any, list:
1.
2.
3.

Use “near me” in URL?
Yes / No

Use “best”, “cheap”, “top-rated” in URL?
Yes / No

Approved service slugs:

Approved local coverage area names:

Approved expansion slugs:
```

## §5 Ejemplo rellenado

```text
Website Root Domain:
https://www.cerrajerosmadrid24h.com

Canonical Domain:
https://www.cerrajerosmadrid24h.com

Trailing Slash:
Yes

Planned Primary GBP Category:
Cerrajero

Primary Category Slug:
cerrajero

Main City:
Madrid

Main City Slug:
madrid

Homepage URL:
/

Service Overview URL Style:
/cerrajero/[service-slug]/

Main City GeoHub URL Style:
/madrid/

Main City Location-Based Service URL Style:
/cerrajero/madrid/[service-slug]/

Main City Additional Category URL Style:
/cerrajero/madrid/[additional-category-slug]/

Main City GeoArticle URL Style:
/madrid/[article-topic-slug]/

Local Coverage Areas:
Almagro, Chamberí, Salamanca, Retiro

Do they generate URLs?
No, not in the base build.

Approved Expansion Areas:
None in Phase 1.

Use “near me” in URL?
No

Use “best”, “cheap”, “top-rated” in URL?
No

Approved service slugs:
- cerrajero-urgente
- apertura-puertas
- cambio-cerraduras
- cambio-bombines
- instalacion-cerraduras-seguridad

Approved additional category slugs:
- duplicado-llaves
```

# §6 Cuerpo operativo del Paso 4

> **Definición operativa — Local Coverage Areas:** zonas, barrios, distritos o landmarks seleccionados desde la dirección física, la Main City, la coherencia GEO, la proximidad, los datos de búsqueda, los competidores y la lógica GMB Crush para reforzar relevancia local dentro del contenido, schema y futuros análisis. No son automáticamente URLs. No son automáticamente páginas propias. No son necesariamente oficinas físicas. Las Local Coverage Areas se usan primero como señales GEO dentro del contenido. No generan URLs por defecto.

## §7 Regla 1 — Dominio canónico

### §7.1 Explicación

Todas las URLs deben salir de una sola versión del dominio. Esto evita duplicación técnica y señales inconsistentes.

### §7.2 Patrón o fórmula

```text
https://www.domain.com OR https://domain.com
```

### §7.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
https://www.cerrajerosmadrid24h.com/cerrajero/madrid/cerrajero-urgente/
```

### §7.4 Ejemplos incorrectos

```text
- https://cerrajerosmadrid24h.com mezclado con https://www.cerrajerosmadrid24h.com
- http://www.cerrajerosmadrid24h.com
- URLs relativas sin canonical
```

### §7.5 Regla final

```text
Una web local usa un solo dominio canónico.
```

## §8 Regla 2 — Trailing slash

### §8.1 Explicación

La regla del slash final debe ser consistente en todo el sitio.

### §8.2 Patrón o fórmula

```text
All URLs end with /
```

### §8.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/
```

### §8.4 Ejemplos incorrectos

```text
- /cerrajero/madrid/cerrajero-urgente
- Mezclar ambas versiones
- Canonical distinto al enlace interno
```

### §8.5 Regla final

```text
Todas las URLs siguen la misma convención de slash.
```

## §9 Regla 3 — Homepage

### §9.1 Explicación

La homepage es la raíz de entidad y debe vivir en el root domain.

### §9.2 Patrón o fórmula

```text
/
```

### §9.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
https://www.cerrajerosmadrid24h.com/
```

### §9.4 Ejemplos incorrectos

```text
- /home/
- /inicio/
- /madrid-cerrajero/
- /cerrajero-madrid/
```

### §9.5 Regla final

```text
La homepage siempre es `/`.
```

## §10 Regla 4 — Service Overview

### §10.1 Explicación

Las páginas de servicio general son no geolocalizadas y no llevan ciudad.

### §10.2 Patrón o fórmula

```text
/[category]/[service]/
```

### §10.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/cerrajero-urgente/
```

### §10.4 Ejemplos incorrectos

```text
- /cerrajero-urgente-madrid/
- /madrid/cerrajero-urgente/
- /services/cerrajero-urgente/
- /cerrajero/madrid/cerrajero-urgente-overview/
```

### §10.5 Regla final

```text
Service Overview = categoría + servicio, sin ciudad.
```

## §11 Regla 5 — Main City GeoHub

### §11.1 Explicación

El GeoHub de la Main City agrupa todo lo relacionado con la ciudad principal.

### §11.2 Patrón o fórmula

```text
/[main-city]/ OR /[category]/[main-city]/
```

### §11.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/
```

### §11.4 Ejemplos incorrectos

```text
- /areas-we-serve/madrid/
- /locations/madrid/
- /service-area/madrid/
- /madrid-cerrajero-services/
```

### §11.5 Regla final

```text
El GeoHub es un contenedor de ciudad, no una landing de servicio.
```

## §12 Regla 6 — Main City Location-Based Service

### §12.1 Explicación

Estas son las páginas comerciales para búsquedas service + city.

### §12.2 Patrón o fórmula

```text
/[category]/[main-city]/[service]/
```

### §12.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/
```

### §12.4 Ejemplos incorrectos

```text
- /madrid/cerrajero-urgente/
- /cerrajero-urgente/madrid/
- /cerrajero/cerrajero-urgente-madrid/
- /cerrajero/madrid/urgente-car-cambio-cerraduras/
```

### §12.5 Regla final

```text
Una página local = un servicio + una Main City.
```

## §13 Regla 7 — Additional Category Page

### §13.1 Explicación

Las categorías adicionales que no están cubiertas por un core service usan el mismo patrón local.

### §13.2 Patrón o fórmula

```text
/[category]/[main-city]/[additional-category]/
```

### §13.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/duplicado-llaves/
```

### §13.4 Ejemplos incorrectos

```text
- /duplicado-llaves-madrid/
- /cerrajero/duplicado-llaves/
- /madrid-duplicado-llaves/
- /cerrajero/madrid/duplicado-llaves/
```

### §13.5 Regla final

```text
Categoría adicional real = página local propia si no está cubierta.
```

## §14 Regla 8 — GeoArticle

### §14.1 Explicación

Los GeoArticles son boosters semánticos y viven bajo la Main City.

### §14.2 Patrón o fórmula

```text
/[main-city]/[article-topic]/
```

### §14.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/cuanto-cuesta-un-cerrajero-urgente/
```

### §14.4 Ejemplos incorrectos

```text
- /blog/cerrajero-urgente-cost-madrid/
- /cerrajero/madrid/cerrajero-urgente/
- /articles/madrid-cerrajero-urgente-cost/
- /cuanto-cuesta-un-cerrajero-urgente-madrid/
```

### §14.5 Regla final

```text
GeoArticle = Main City + intención long-tail.
```

## §15 Regla 9 — Local Coverage Areas no generan URLs

### §15.1 Explicación

Las áreas de cobertura se mencionan en contenido y schema, pero no crean rutas.

### §15.2 Patrón o fórmula

```text
Local Coverage Area → no URL unless approved
```

### §15.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro se menciona en la sección de cobertura, pero no existe /almagro/ en fase base
```

### §15.4 Ejemplos incorrectos

```text
- /almagro/ sin aprobación
- /cerrajero/almagro/cerrajero-urgente/ sin expansión
- /retiro/cuanto-tarda-un-cerrajero/ sin landing
```

### §15.5 Regla final

```text
Las áreas cubiertas no son carpetas por defecto.
```

## §16 Regla 10 — Approved Expansion URLs

### §16.1 Explicación

Una Approved Expansion Area puede usar los mismos patrones que la Main City, pero solo dentro del módulo de expansión.

### §16.2 Patrón o fórmula

```text
/[approved-area]/ + /[category]/[approved-area]/[service]/
```

### §16.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/almagro/ solo si Almagro pasa a Approved Expansion Area
```

### §16.4 Ejemplos incorrectos

```text
- Crear expansión sin demanda
- Aprobar todas las zonas
- No diferenciar base y expansión
```

### §16.5 Regla final

```text
La expansión es opcional y aprobada.
```

## §17 Regla 11 — No near-me

### §17.1 Explicación

Near me puede aparecer en FAQs o contenido, pero no en slugs principales.

### §17.2 Patrón o fórmula

```text
No `near-me` in core URLs
```

### §17.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/
```

### §17.4 Ejemplos incorrectos

```text
- /cerrajero/madrid/cerrajero-urgente-near-me/
- /near-me/cerrajero/
- /madrid/cerrajero-near-me/
```

### §17.5 Regla final

```text
No usar near-me en URLs principales.
```

## §18 Regla 12 — No adjetivos vacíos

### §18.1 Explicación

Best, cheap y top-rated son modifiers comerciales, no arquitectura.

### §18.2 Patrón o fórmula

```text
No best/cheap/top-rated in slugs
```

### §18.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/apertura-puertas/
```

### §18.4 Ejemplos incorrectos

```text
- /best-apertura-puertas-madrid/
- /cheap-cerrajero-madrid/
- /top-rated-cerrajero-urgente-madrid/
```

### §18.5 Regla final

```text
La URL debe ser estable y objetiva.
```

## §19 Regla 13 — Slugs limpios

### §19.1 Explicación

Los slugs deben ser humanos, minúsculos y sin símbolos.

### §19.2 Patrón o fórmula

```text
lowercase + hyphens + no accents + no symbols
```

### §19.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
chamberi, cerrajero-urgente, duplicado-llaves
```

### §19.4 Ejemplos incorrectos

```text
- CerrajeroUrgentee
- cerrajero_urgente
- urgente%20cerrajero
- cerrajería-urgente
```

### §19.5 Regla final

```text
Slug limpio = URL escalable.
```

## §20 Regla 14 — No falsa ubicación

### §20.1 Explicación

Una URL o contenido no debe fingir oficina física.

### §20.2 Patrón o fórmula

```text
Service area ≠ physical office
```

### §20.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Atendemos clientes en Almagro
```

### §20.4 Ejemplos incorrectos

```text
- Nuestra oficina en Almagro si no existe
- Visita nuestra tienda en Salamanca si no existe
- Schema address en Chamberí sin oficina
```

### §20.5 Regla final

```text
Atender una zona no significa tener oficina allí.
```

## §21 Regla 15 — No duplicar intención

### §21.1 Explicación

Cada URL debe atacar una intención única.

### §21.2 Patrón o fórmula

```text
One URL = one primary intent
```

### §21.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ cubre cerrajero urgente en Madrid
```

### §21.4 Ejemplos incorrectos

```text
- /madrid/cerrajero-urgente/ compitiendo con la landing
- /cerrajero/madrid/cerrajero-urgente/
- /cerrajero-urgente-madrid/
```

### §21.5 Regla final

```text
Una intención principal debe tener una URL principal.
```


## §22 Estructura final aprobada para Cerrajeros Madrid 24h

```text
Homepage:
/ 

Service Overview:
/cerrajero/cerrajero-urgente/
/cerrajero/apertura-puertas/
/cerrajero/cambio-cerraduras/
/cerrajero/cambio-bombines/
/cerrajero/instalacion-cerraduras-seguridad/

Main City GeoHub:
/madrid/

Main City Location-Based Service:
/cerrajero/madrid/cerrajero-urgente/
/cerrajero/madrid/apertura-puertas/
/cerrajero/madrid/cambio-cerraduras/
/cerrajero/madrid/cambio-bombines/
/cerrajero/madrid/instalacion-cerraduras-seguridad/

Main City Additional Category:
/cerrajero/madrid/duplicado-llaves/

GeoArticles de la Main City:
/madrid/cuanto-cuesta-un-cerrajero-urgente/
/madrid/que-hacer-si-no-puedes-entrar-casa/
/madrid/cuanto-tarda-un-cerrajero/
```

## §23 URLs no aprobadas en la fase base

```text
/almagro/
/cerrajero/almagro/cerrajero-urgente/
/chamberi/
/cerrajero/salamanca/apertura-puertas/
/retiro/cuanto-cuesta-un-cerrajero-urgente/
```

Estas URLs solo se crearían como Approved Expansion Areas.

## §24 Dominio canónico único — Regla operativa 1

### §24.1 Explicación

Todas las URLs deben salir de una única versión canónica del dominio. Mezclar www, non-www, HTTP y HTTPS crea duplicados técnicos y dificulta la consistencia del schema y la matriz.

### §24.2 Patrón o fórmula

```text
Canonical Domain → todas las URLs absolutas → redirección del resto
```

### §24.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa https://www.cerrajerosmadrid24h.com como dominio canónico para /cerrajero/madrid/cerrajero-urgente/.
```

### §24.4 Ejemplos incorrectos

```text
- Usar https://cerrajerosmadrid24h.com en schema y https://www.cerrajerosmadrid24h.com en la matriz
- Mantener versiones HTTP accesibles
- Crear enlaces internos con dominios mezclados
```

### §24.5 Regla final

```text
Una arquitectura local necesita un único dominio canónico.
```

## §25 Trailing slash consistente — Regla operativa 2

### §25.1 Explicación

La regla de slash final debe ser uniforme. No importa tanto si se usa o no slash, sino que todas las URLs sigan la misma convención.

### §25.2 Patrón o fórmula

```text
URL pattern → trailing slash uniforme → canonical
```

### §25.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
La URL correcta es /cerrajero/madrid/cerrajero-urgente/ si el sistema usa trailing slash.
```

### §25.4 Ejemplos incorrectos

```text
- Publicar /cerrajero/madrid/cerrajero-urgente y /cerrajero/madrid/cerrajero-urgente/
- Crear enlaces internos sin la convención aprobada
- No canonicalizar variantes
```

### §25.5 Regla final

```text
La consistencia de URL evita duplicados técnicos.
```

## §26 Homepage en raíz — Regla operativa 3

### §26.1 Explicación

La homepage debe ser la raíz del dominio. No debe moverse a /home/, /inicio/ o /cerrajero-madrid/ porque actúa como Root Entity Anchor del negocio.

### §26.2 Patrón o fórmula

```text
Homepage = /
```

### §26.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa / como homepage y desde ahí enlaza a servicios, GeoHub de Madrid y contacto.
```

### §26.4 Ejemplos incorrectos

```text
- Usar /home/ como homepage principal
- Crear /madrid-cerrajero/ como sustituto de la homepage
- Duplicar contenido de homepage en otra URL
```

### §26.5 Regla final

```text
La homepage vive en la raíz del dominio.
```

## §27 Service Overview sin ciudad — Regla operativa 4

### §27.1 Explicación

Las páginas de servicio general no deben incluir ciudad en la URL. Su función es construir autoridad temática y servir como padre de la página local.

### §27.2 Patrón o fórmula

```text
/[primary-category-slug]/[service-slug]/
```

### §27.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
La URL correcta para Cerrajero urgente general es /cerrajero/cerrajero-urgente/.
```

### §27.4 Ejemplos incorrectos

```text
- /cerrajero/madrid-cerrajero-urgente/
- /cerrajero-urgente-madrid/
- /services/cerrajero-urgente/ si rompe la taxonomía aprobada
```

### §27.5 Regla final

```text
Service Overview = categoría + servicio, sin ciudad.
```

## §28 Main City GeoHub limpio — Regla operativa 5

### §28.1 Explicación

El GeoHub de la Main City debe ser corto, estable y fácil de enlazar. Puede usar /city/ o /category/city/, pero en la base simplificada se recomienda /city/.

### §28.2 Patrón o fórmula

```text
/[main-city-slug]/
```

### §28.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa /madrid/ como GeoHub de la Main City.
```

### §28.4 Ejemplos incorrectos

```text
- /areas-we-serve/madrid/
- /locations/madrid/
- /cerrajero-services-madrid/
```

### §28.5 Regla final

```text
El GeoHub debe ser un contenedor de ciudad, no una landing de servicio.
```

## §29 Location-Based Service con patrón fijo — Regla operativa 6

### §29.1 Explicación

Las páginas comerciales locales deben seguir el patrón categoría + ciudad + servicio. Esto mantiene claro el silo y evita mezclar intención de servicio con artículo o hub.

### §29.2 Patrón o fórmula

```text
/[category]/[main-city]/[service]/
```

### §29.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
La URL correcta es /cerrajero/madrid/cerrajero-urgente/.
```

### §29.4 Ejemplos incorrectos

```text
- /madrid/cerrajero-urgente/ si se reserva /madrid/ para GeoHub y artículos
- /cerrajero-urgente/madrid/
- /cerrajero/madrid/urgente-car-cambio-cerraduras/
```

### §29.5 Regla final

```text
Una página local comercial usa una ciudad y un servicio.
```

## §30 Additional Category con mismo patrón local — Regla operativa 7

### §30.1 Explicación

Las categorías adicionales efectivas usan el mismo patrón que una página servicio+ciudad, porque su función es dar soporte local a una categoría GBP secundaria.

### §30.2 Patrón o fórmula

```text
/[category]/[main-city]/[additional-category-slug]/
```

### §30.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Duplicado de llaves usa /cerrajero/madrid/duplicado-llaves/.
```

### §30.4 Ejemplos incorrectos

```text
- /duplicado-llaves/
- /madrid-duplicado-llaves/
- /cerrajero/duplicado-llaves/ sin ciudad
```

### §30.5 Regla final

```text
Una categoría adicional efectiva necesita soporte local en la Main City.
```

## §31 GeoArticle como ciudad + tema — Regla operativa 8

### §31.1 Explicación

Los GeoArticles son contenido de soporte, no landings comerciales. Su URL debe reflejar un tema long-tail asociado a la Main City, sin competir con la página servicio+ciudad.

### §31.2 Patrón o fórmula

```text
/[main-city]/[article-topic-slug]/
```

### §31.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
El artículo de coste usa /madrid/cuanto-cuesta-un-cerrajero-urgente/ y enlaza a /cerrajero/madrid/cerrajero-urgente/.
```

### §31.4 Ejemplos incorrectos

```text
- /cerrajero/madrid/cuanto-cuesta-un-cerrajero-urgente/ si complica la distinción de landing
- /cerrajero-urgente-cost-madrid/
- /blog/random-post-123/
```

### §31.5 Regla final

```text
GeoArticle = Main City + intención long-tail.
```

## §32 Slugs limpios — Regla operativa 9

### §32.1 Explicación

Los slugs deben ser legibles, estables y sin adornos. Minúsculas, guiones medios y sin símbolos es suficiente. Evita acentos, underscores, mayúsculas o palabras vacías innecesarias.

### §32.2 Patrón o fórmula

```text
texto → lowercase → sin acentos → guiones medios → sin símbolos
```

### §32.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Chamberí se convierte en chamberi y Cerrajero urgente en cerrajero-urgente.
```

### §32.4 Ejemplos incorrectos

```text
- /CerrajeroUrgentee/
- /cerrajero_urgente/
- /cerrajero-urgente!!!
```

### §32.5 Regla final

```text
Un slug limpio debe ser entendible para humanos y sistemas.
```

## §33 No near-me ni adjetivos vacíos — Regla operativa 10

### §33.1 Explicación

Near me, best, cheap o top-rated pueden aparecer en contenido si encajan, pero no deben formar parte de la arquitectura base. Son modificadores inestables y pueden debilitar la URL.

### §33.2 Patrón o fórmula

```text
URL objetiva → servicio real → ciudad real
```

### §33.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Usar /cerrajero/madrid/cerrajero-urgente/ en vez de /best-cerrajero-urgente-near-me-madrid/.
```

### §33.4 Ejemplos incorrectos

```text
- /cerrajero/madrid/cerrajero-urgente-near-me/
- /best-cerrajero-madrid/
- /cheap-apertura-puertas-madrid/
```

### §33.5 Regla final

```text
La URL base debe describir la entidad, no vender con adjetivos.
```

## §34 Local Coverage Areas sin URL por defecto — Regla operativa 11

### §34.1 Explicación

Las áreas de cobertura local pueden ser barrios, distritos o municipios cercanos, pero no generan URLs por defecto. Esta regla evita que el sistema base vuelva a multiplicarse sin necesidad.

### §34.2 Patrón o fórmula

```text
Local Coverage Area → mención de contenido | no URL base
```

### §34.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca y Retiro se mencionan en contenido de Cerrajeros Madrid 24h, pero no se crean /almagro/ ni /cerrajero/almagro/... en fase base.
```

### §34.4 Ejemplos incorrectos

```text
- Crear una URL por cada área mencionada
- Enlazar a páginas inexistentes de cobertura
- Usar áreas de cobertura como Main City
```

### §34.5 Regla final

```text
Mencionar una zona no significa crear una página.
```

## §35 Expansion URLs solo aprobadas — Regla operativa 12

### §35.1 Explicación

Si una Local Coverage Area pasa a Approved Expansion Area, entonces sí puede generar GeoHub, páginas servicio+zona y artículos. Pero ese módulo debe quedar separado de la base.

### §35.2 Patrón o fórmula

```text
Approved Expansion Area → /area/ + /category/area/service/
```

### §35.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Almagro se aprueba después, Cerrajeros Madrid 24h puede crear /almagro/ y /cerrajero/almagro/cerrajero-urgente/ como expansión.
```

### §35.4 Ejemplos incorrectos

```text
- Crear expansión sin justificación
- Mezclar expansión con fórmula base
- Crear páginas de expansión sin contenido único
```

### §35.5 Regla final

```text
Las URLs de expansión se aprueban antes de generarse.
```

## §36 Checklist final del Paso 4

| Check | Pregunta | Estado |
|---|---|---|
| Dominio canónico | ¿Todas las URLs usan la misma versión del dominio? | ✅ / ⬜ |
| Trailing slash | ¿Todas las URLs siguen la misma convención? | ✅ / ⬜ |
| Homepage | ¿La homepage es `/`? | ✅ / ⬜ |
| Service Overview | ¿Las páginas de servicio no llevan ciudad? | ✅ / ⬜ |
| GeoHub | ¿El GeoHub usa la Main City? | ✅ / ⬜ |
| Location-Based Service | ¿La URL usa /category/main-city/service/? | ✅ / ⬜ |
| Additional Category | ¿La categoría adicional efectiva tiene URL local? | ✅ / ⬜ |
| GeoArticle | ¿El artículo usa /main-city/topic/? | ✅ / ⬜ |
| Local Coverage | ¿Las áreas cubiertas no generan URLs por defecto? | ✅ / ⬜ |
| Expansion | ¿Las áreas con URL están aprobadas? | ✅ / ⬜ |
| No near-me | ¿No hay near-me en slugs principales? | ✅ / ⬜ |
| No false location | ¿No se afirma ubicación física falsa? | ✅ / ⬜ |
| No duplicate intent | ¿Cada intención tiene una sola URL principal? | ✅ / ⬜ |

## §37 Outputs del Paso 4

- Dominio canónico definido
- Trailing slash definido
- Patrones URL aprobados
- URLs base generadas
- URLs prohibidas detectadas
- Reglas para Local Coverage Areas definidas
- Reglas para Approved Expansion Areas definidas
- Reglas anti-canibalización establecidas

---

# §38 Fuentes internas GMB Crush usadas

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework



### §38.1 GeoArticles completos (15)

> **Aviso de trazabilidad:** estos 15 títulos son un primer borrador derivado de la fórmula G × S = 15 y de la lógica del servicio. **No vienen de keyword research real**. Antes de producirlos hay que validar volumen de búsqueda, dificultad y oportunidad competitiva por título. La fórmula garantiza la cantidad; los temas concretos requieren validación.

**Cerrajero urgente (3):**
1. /madrid/cuanto-cuesta-un-cerrajero-urgente/
2. /madrid/que-hacer-si-no-puedes-entrar-casa/
3. /madrid/cuanto-tarda-un-cerrajero/

**Apertura de puertas (3):**
4. /madrid/cuanto-cuesta-abrir-una-puerta/
5. /madrid/que-hacer-si-te-dejas-las-llaves-dentro/
6. /madrid/apertura-de-puertas-sin-romper-cerradura/

**Cambio de cerraduras (3):**
7. /madrid/cuando-cambiar-la-cerradura-de-casa/
8. /madrid/cambio-de-cerradura-tras-perder-llaves/
9. /madrid/cerradura-nueva-o-reparacion/

**Cambio de bombines (3):**
10. /madrid/cuando-cambiar-el-bombin/
11. /madrid/bombin-antibumping-madrid/
12. /madrid/cambio-de-bombin-sin-cambiar-cerradura/

**Instalación de cerraduras de seguridad (3):**
13. /madrid/mejores-cerraduras-de-seguridad-para-viviendas/
14. /madrid/cerraduras-de-seguridad-para-comunidades/
15. /madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/

