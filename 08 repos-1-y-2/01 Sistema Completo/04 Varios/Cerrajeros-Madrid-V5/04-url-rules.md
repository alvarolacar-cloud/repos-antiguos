Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 4 — URL Rules

## Índice corto

**Paso 4 — URL Rules**

## Objetivo del Paso 4

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: fijar una estructura de URLs limpia, escalable y anti-canibalización antes de producir contenidos.
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
Error que previene: crear URLs distintas para la misma intención.
Error que previene: usar Local Coverage Areas como carpetas sin aprobación.
Error que previene: mezclar ciudad, servicio y artículo en el mismo patrón.
Error que previene: crear slugs con near-me, best o cheap.
Error que previene: tener versiones con y sin trailing slash.

## Lo que tienes que rellenar

```text
Website Root Domain:

Canonical Domain:
Option A: https://www.domain.com
Option B: https://domain.com

Trailing Slash:
Yes / No

Primary GBP Category:

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

## Ejemplo rellenado

```text
Website Root Domain:
https://www.cerrajerosmadrid24h.com

Canonical Domain:
https://www.cerrajerosmadrid24h.com

Trailing Slash:
Yes

Primary GBP Category:
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

# Cuerpo operativo del Paso 4

## Regla 1 — Dominio canónico

### Explicación

Todas las URLs deben salir de una sola versión del dominio. Esto evita duplicación técnica y señales inconsistentes.

### Patrón o fórmula

```text
https://www.domain.com OR https://domain.com
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
https://www.cerrajerosmadrid24h.com/cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- https://cerrajerosmadrid24h.com mezclado con https://www.cerrajerosmadrid24h.com
- http://www.cerrajerosmadrid24h.com
- URLs relativas sin canonical
```

### Regla final

```text
Una web local usa un solo dominio canónico.
```

## Regla 2 — Trailing slash

### Explicación

La regla del slash final debe ser consistente en todo el sitio.

### Patrón o fórmula

```text
All URLs end with /
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- /cerrajero/madrid/cerrajero-urgente
- Mezclar ambas versiones
- Canonical distinto al enlace interno
```

### Regla final

```text
Todas las URLs siguen la misma convención de slash.
```

## Regla 3 — Homepage

### Explicación

La homepage es la raíz de entidad y debe vivir en el root domain.

### Patrón o fórmula

```text
/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
https://www.cerrajerosmadrid24h.com/
```

### Ejemplos incorrectos

```text
- /home/
- /inicio/
- /madrid-cerrajero/
- /cerrajero-madrid/
```

### Regla final

```text
La homepage siempre es `/`.
```

## Regla 4 — Service Overview

### Explicación

Las páginas de servicio general son no geolocalizadas y no llevan ciudad.

### Patrón o fórmula

```text
/[category]/[service]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- /cerrajero-urgente-madrid/
- /madrid/cerrajero-urgente/
- /services/cerrajero-urgente/
- /cerrajero/madrid/cerrajero-urgente-overview/
```

### Regla final

```text
Service Overview = categoría + servicio, sin ciudad.
```

## Regla 5 — Main City GeoHub

### Explicación

El GeoHub de la Main City agrupa todo lo relacionado con la ciudad principal.

### Patrón o fórmula

```text
/[main-city]/ OR /[category]/[main-city]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/
```

### Ejemplos incorrectos

```text
- /areas-we-serve/madrid/
- /locations/madrid/
- /service-area/madrid/
- /madrid-cerrajero-services/
```

### Regla final

```text
El GeoHub es un contenedor de ciudad, no una landing de servicio.
```

## Regla 6 — Main City Location-Based Service

### Explicación

Estas son las páginas comerciales para búsquedas service + city.

### Patrón o fórmula

```text
/[category]/[main-city]/[service]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- /madrid/cerrajero-urgente/
- /cerrajero-urgente/madrid/
- /cerrajero/cerrajero-urgente-madrid/
- /cerrajero/madrid/urgente-car-cambio-cerraduras/
```

### Regla final

```text
Una página local = un servicio + una Main City.
```

## Regla 7 — Additional Category Page

### Explicación

Las categorías adicionales que no están cubiertas por un core service usan el mismo patrón local.

### Patrón o fórmula

```text
/[category]/[main-city]/[additional-category]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/duplicado-llaves/
```

### Ejemplos incorrectos

```text
- /duplicado-llaves-madrid/
- /cerrajero/duplicado-llaves/
- /madrid-duplicado-llaves/
- /cerrajero/madrid/duplicado-llaves/
```

### Regla final

```text
Categoría adicional real = página local propia si no está cubierta.
```

## Regla 8 — GeoArticle

### Explicación

Los GeoArticles son boosters semánticos y viven bajo la Main City.

### Patrón o fórmula

```text
/[main-city]/[article-topic]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/guia-precios-cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- /blog/cerrajero-urgente-cost-madrid/
- /cerrajero/madrid/cerrajero-urgente/
- /articles/madrid-cerrajero-urgente-cost/
- /guia-precios-cerrajero-urgente-madrid/
```

### Regla final

```text
GeoArticle = Main City + intención long-tail.
```

## Regla 9 — Local Coverage Areas no generan URLs

### Explicación

Las áreas de cobertura se mencionan en contenido y schema, pero no crean rutas.

### Patrón o fórmula

```text
Local Coverage Area → no URL unless approved
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro se menciona en la sección de cobertura, pero no existe /almagro/ en fase base
```

### Ejemplos incorrectos

```text
- /almagro/ sin aprobación
- /cerrajero/almagro/cerrajero-urgente/ sin expansión
- /retiro/cuanto-tarda-un-cerrajero/ sin landing
```

### Regla final

```text
Las áreas cubiertas no son carpetas por defecto.
```

## Regla 10 — Approved Expansion URLs

### Explicación

Una Approved Expansion Area puede usar los mismos patrones que la Main City, pero solo dentro del módulo de expansión.

### Patrón o fórmula

```text
/[approved-area]/ + /[category]/[approved-area]/[service]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/almagro/ solo si Almagro pasa a Approved Expansion Area
```

### Ejemplos incorrectos

```text
- Crear expansión sin demanda
- Aprobar todas las zonas
- No diferenciar base y expansión
```

### Regla final

```text
La expansión es opcional y aprobada.
```

## Regla 11 — No near-me

### Explicación

Near me puede aparecer en FAQs o contenido, pero no en slugs principales.

### Patrón o fórmula

```text
No `near-me` in core URLs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- /cerrajero/madrid/cerrajero-urgente-near-me/
- /near-me/cerrajero/
- /madrid/cerrajero-near-me/
```

### Regla final

```text
No usar near-me en URLs principales.
```

## Regla 12 — No adjetivos vacíos

### Explicación

Best, cheap y top-rated son modifiers comerciales, no arquitectura.

### Patrón o fórmula

```text
No best/cheap/top-rated in slugs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/apertura-puertas/
```

### Ejemplos incorrectos

```text
- /best-apertura-puertas-madrid/
- /cheap-cerrajero-madrid/
- /top-rated-cerrajero-urgente-madrid/
```

### Regla final

```text
La URL debe ser estable y objetiva.
```

## Regla 13 — Slugs limpios

### Explicación

Los slugs deben ser humanos, minúsculos y sin símbolos.

### Patrón o fórmula

```text
lowercase + hyphens + no accents + no symbols
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
chamberi, cerrajero-urgente, duplicado-llaves
```

### Ejemplos incorrectos

```text
- CerrajeroUrgentee
- cerrajero_urgente
- urgente%20cerrajero
- cerrajería-urgente
```

### Regla final

```text
Slug limpio = URL escalable.
```

## Regla 14 — No falsa ubicación

### Explicación

Una URL o contenido no debe fingir oficina física.

### Patrón o fórmula

```text
Service area ≠ physical office
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Atendemos clientes en Almagro
```

### Ejemplos incorrectos

```text
- Nuestra oficina en Almagro si no existe
- Visita nuestra tienda en Salamanca si no existe
- Schema address en Chamberí sin oficina
```

### Regla final

```text
Atender una zona no significa tener oficina allí.
```

## Regla 15 — No duplicar intención

### Explicación

Cada URL debe atacar una intención única.

### Patrón o fórmula

```text
One URL = one primary intent
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ cubre cerrajero urgente en Madrid
```

### Ejemplos incorrectos

```text
- /madrid/cerrajero-urgente/ compitiendo con la landing
- /cerrajero/madrid/cerrajero-urgente/
- /cerrajero-urgente-madrid/
```

### Regla final

```text
Una intención principal debe tener una URL principal.
```


## Estructura final aprobada para Cerrajeros Madrid 24h

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
/madrid/guia-precios-cerrajero-urgente/
/madrid/que-hacer-si-no-puedes-entrar-casa/
/madrid/cuanto-tarda-un-cerrajero/
```

## URLs no aprobadas en la fase base

```text
/almagro/
/cerrajero/almagro/cerrajero-urgente/
/chamberi/
/cerrajero/salamanca/apertura-puertas/
/retiro/guia-precios-cerrajero-urgente/
```

Estas URLs solo se crearían como Approved Expansion Areas.

## Dominio canónico único — Regla operativa 1

### Explicación

Todas las URLs deben salir de una única versión canónica del dominio. Mezclar www, non-www, HTTP y HTTPS crea duplicados técnicos y dificulta la consistencia del schema y la matriz.

### Patrón o fórmula

```text
Canonical Domain → todas las URLs absolutas → redirección del resto
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa https://www.cerrajerosmadrid24h.com como dominio canónico para /cerrajero/madrid/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- Usar https://cerrajerosmadrid24h.com en schema y https://www.cerrajerosmadrid24h.com en la matriz
- Mantener versiones HTTP accesibles
- Crear enlaces internos con dominios mezclados
```

### Regla final

```text
Una arquitectura local necesita un único dominio canónico.
```

## Trailing slash consistente — Regla operativa 2

### Explicación

La regla de slash final debe ser uniforme. No importa tanto si se usa o no slash, sino que todas las URLs sigan la misma convención.

### Patrón o fórmula

```text
URL pattern → trailing slash uniforme → canonical
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La URL correcta es /cerrajero/madrid/cerrajero-urgente/ si el sistema usa trailing slash.
```

### Ejemplos incorrectos

```text
- Publicar /cerrajero/madrid/cerrajero-urgente y /cerrajero/madrid/cerrajero-urgente/
- Crear enlaces internos sin la convención aprobada
- No canonicalizar variantes
```

### Regla final

```text
La consistencia de URL evita duplicados técnicos.
```

## Homepage en raíz — Regla operativa 3

### Explicación

La homepage debe ser la raíz del dominio. No debe moverse a /home/, /inicio/ o /cerrajero-madrid/ porque actúa como Root Entity Anchor del negocio.

### Patrón o fórmula

```text
Homepage = /
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa / como homepage y desde ahí enlaza a servicios, GeoHub de Madrid y contacto.
```

### Ejemplos incorrectos

```text
- Usar /home/ como homepage principal
- Crear /madrid-cerrajero/ como sustituto de la homepage
- Duplicar contenido de homepage en otra URL
```

### Regla final

```text
La homepage vive en la raíz del dominio.
```

## Service Overview sin ciudad — Regla operativa 4

### Explicación

Las páginas de servicio general no deben incluir ciudad en la URL. Su función es construir autoridad temática y servir como padre de la página local.

### Patrón o fórmula

```text
/[primary-category-slug]/[service-slug]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La URL correcta para Cerrajero urgente general es /cerrajero/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- /cerrajero/madrid-cerrajero-urgente/
- /cerrajero-urgente-madrid/
- /services/cerrajero-urgente/ si rompe la taxonomía aprobada
```

### Regla final

```text
Service Overview = categoría + servicio, sin ciudad.
```

## Main City GeoHub limpio — Regla operativa 5

### Explicación

El GeoHub de la Main City debe ser corto, estable y fácil de enlazar. Puede usar /city/ o /category/city/, pero en la base simplificada se recomienda /city/.

### Patrón o fórmula

```text
/[main-city-slug]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa /madrid/ como GeoHub de la Main City.
```

### Ejemplos incorrectos

```text
- /areas-we-serve/madrid/
- /locations/madrid/
- /cerrajero-services-madrid/
```

### Regla final

```text
El GeoHub debe ser un contenedor de ciudad, no una landing de servicio.
```

## Location-Based Service con patrón fijo — Regla operativa 6

### Explicación

Las páginas comerciales locales deben seguir el patrón categoría + ciudad + servicio. Esto mantiene claro el silo y evita mezclar intención de servicio con artículo o hub.

### Patrón o fórmula

```text
/[category]/[main-city]/[service]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La URL correcta es /cerrajero/madrid/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- /madrid/cerrajero-urgente/ si se reserva /madrid/ para GeoHub y artículos
- /cerrajero-urgente/madrid/
- /cerrajero/madrid/urgente-car-cambio-cerraduras/
```

### Regla final

```text
Una página local comercial usa una ciudad y un servicio.
```

## Additional Category con mismo patrón local — Regla operativa 7

### Explicación

Las categorías adicionales efectivas usan el mismo patrón que una página servicio+ciudad, porque su función es dar soporte local a una categoría GBP secundaria.

### Patrón o fórmula

```text
/[category]/[main-city]/[additional-category-slug]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Duplicado de llaves usa /cerrajero/madrid/duplicado-llaves/.
```

### Ejemplos incorrectos

```text
- /duplicado-llaves/
- /madrid-duplicado-llaves/
- /cerrajero/duplicado-llaves/ sin ciudad
```

### Regla final

```text
Una categoría adicional efectiva necesita soporte local en la Main City.
```

## GeoArticle como ciudad + tema — Regla operativa 8

### Explicación

Los GeoArticles son contenido de soporte, no landings comerciales. Su URL debe reflejar un tema long-tail asociado a la Main City, sin competir con la página servicio+ciudad.

### Patrón o fórmula

```text
/[main-city]/[article-topic-slug]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El artículo de coste usa /madrid/guia-precios-cerrajero-urgente/ y enlaza a /cerrajero/madrid/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- /cerrajero/madrid/guia-precios-cerrajero-urgente/ si complica la distinción de landing
- /cerrajero-urgente-cost-madrid/
- /blog/random-post-123/
```

### Regla final

```text
GeoArticle = Main City + intención long-tail.
```

## Slugs limpios — Regla operativa 9

### Explicación

Los slugs deben ser legibles, estables y sin adornos. Minúsculas, guiones medios y sin símbolos es suficiente. Evita acentos, underscores, mayúsculas o palabras vacías innecesarias.

### Patrón o fórmula

```text
texto → lowercase → sin acentos → guiones medios → sin símbolos
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Chamberí se convierte en chamberi y Cerrajero urgente en cerrajero-urgente.
```

### Ejemplos incorrectos

```text
- /CerrajeroUrgentee/
- /cerrajero_urgente/
- /cerrajero-urgente!!!
```

### Regla final

```text
Un slug limpio debe ser entendible para humanos y sistemas.
```

## No near-me ni adjetivos vacíos — Regla operativa 10

### Explicación

Near me, best, cheap o top-rated pueden aparecer en contenido si encajan, pero no deben formar parte de la arquitectura base. Son modificadores inestables y pueden debilitar la URL.

### Patrón o fórmula

```text
URL objetiva → servicio real → ciudad real
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Usar /cerrajero/madrid/cerrajero-urgente/ en vez de /best-cerrajero-urgente-near-me-madrid/.
```

### Ejemplos incorrectos

```text
- /cerrajero/madrid/cerrajero-urgente-near-me/
- /best-cerrajero-madrid/
- /cheap-apertura-puertas-madrid/
```

### Regla final

```text
La URL base debe describir la entidad, no vender con adjetivos.
```

## Local Coverage Areas sin URL por defecto — Regla operativa 11

### Explicación

Las áreas de cobertura local pueden ser barrios, distritos o municipios cercanos, pero no generan URLs por defecto. Esta regla evita que el sistema base vuelva a multiplicarse sin necesidad.

### Patrón o fórmula

```text
Local Coverage Area → mención de contenido | no URL base
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca y Retiro se mencionan en contenido de Cerrajeros Madrid 24h, pero no se crean /almagro/ ni /cerrajero/almagro/... en fase base.
```

### Ejemplos incorrectos

```text
- Crear una URL por cada área mencionada
- Enlazar a páginas inexistentes de cobertura
- Usar áreas de cobertura como Main City
```

### Regla final

```text
Mencionar una zona no significa crear una página.
```

## Expansion URLs solo aprobadas — Regla operativa 12

### Explicación

Si una Local Coverage Area pasa a Approved Expansion Area, entonces sí puede generar GeoHub, páginas servicio+zona y artículos. Pero ese módulo debe quedar separado de la base.

### Patrón o fórmula

```text
Approved Expansion Area → /area/ + /category/area/service/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Almagro se aprueba después, Cerrajeros Madrid 24h puede crear /almagro/ y /cerrajero/almagro/cerrajero-urgente/ como expansión.
```

### Ejemplos incorrectos

```text
- Crear expansión sin justificación
- Mezclar expansión con fórmula base
- Crear páginas de expansión sin contenido único
```

### Regla final

```text
Las URLs de expansión se aprueban antes de generarse.
```

## Checklist final del Paso 4

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

## Outputs del Paso 4

- Dominio canónico definido
- Trailing slash definido
- Patrones URL aprobados
- URLs base generadas
- URLs prohibidas detectadas
- Reglas para Local Coverage Areas definidas
- Reglas para Approved Expansion Areas definidas
- Reglas anti-canibalización establecidas

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

