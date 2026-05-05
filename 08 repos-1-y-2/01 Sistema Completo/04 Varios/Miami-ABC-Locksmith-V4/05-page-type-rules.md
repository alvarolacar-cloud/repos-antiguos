Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 5 — Page Type Rules

## Índice corto

**Paso 5 — Page Type Rules**

## Objetivo del Paso 5

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: definir qué función cumple cada tipo de página antes de escribir contenido o enlazar páginas.
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
Error que previene: confundir Service Overview con Location-Based Service.
Error que previene: convertir GeoArticles en landing pages.
Error que previene: crear Additional Category Pages duplicadas.
Error que previene: usar el mismo schema en todos los tipos de página.
Error que previene: escribir páginas sin word count, CTA, FAQs o estructura AUDIO.

## Lo que tienes que rellenar

```text
Business Name:

Website Root Domain:

Primary GBP Category:

Primary Category Slug:

Main City:

Main City Slug:

Primary Service:

Core Services:
1.
2.
3.
4.
5.

Additional GBP Categories that need pages:
1.
2.
3.

Local Coverage Areas:
1.
2.
3.
4.
5.

Approved Expansion Areas:
Default: None.

Phone:

Email:

GBP URL:

NAP:
- Name:
- Address:
- Phone:

Physical Location City:

Trust Signals:
- Years in business:
- Reviews:
- Certifications:
- Awards:
- Guarantees:
- Emergency / same-day / mobile service:

Preferred CTA:
Option A: Call now
Option B: Book online
Option C: Request estimate
Option D: Contact us

Brand tone:
Option A: Professional
Option B: Friendly
Option C: Premium
Option D: Urgent / emergency
Option E: Local and conversational
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

Phone:
+1 305 000 0000

Email:
info@abclocksmith.com

Brand tone:
Friendly, professional, local and urgent when needed
```

# Cuerpo operativo del Paso 5

## 1. Homepage — Root Entity Anchor

### Función

La homepage es la raíz de entidad del negocio. Debe establecer quién es la marca, qué categoría GBP soporta, cuál es la Main City, qué servicios ofrece, qué cobertura local tiene y cómo contactar. No es una página decorativa ni un simple escaparate.

### Patrón URL

```text
/
```

### H1

```text
[Brand Name] – Trusted [Primary Service] in [Main City, ST]
```

### Meta Title

```text
Top-Rated [Primary Service] in [Main City, ST] | [Brand Name]
```

### Meta Description

```text
Need trusted [Primary Service] in [Main City]? [Brand Name] provides reliable local service, expert support, and fast response. Call today.
```

### Word count recomendado

```text
900–1,300 words
```

### Estructura completa

```text
H1
Intro with brand + service + Main City
Quick Answer
Core Services
Local Coverage Preview
Trust Blocks
FAQ Section
NAP Block
CTA
Internal Links
```

### Schema requerido

```text
Organization
WebSite
LocalBusiness if physical presence exists in Main City
FAQPage
Speakable
```

### Internal Links requeridos

```text
Service Overview Pages
Main City GeoHub
Main City Additional Category Pages
Contact Page
```

### Ejemplo rellenado con ABC Locksmith

```text
URL: /
H1: ABC Locksmith – Trusted Locksmith Services in Miami, FL
Meta Title: Top-Rated Locksmith in Miami, FL | ABC Locksmith
Core Services: Emergency, Car, Residential, Commercial, Lock Rekeying
Local Coverage Preview: Hialeah, Coral Gables, Doral, Hollywood
Schema: Organization, WebSite, LocalBusiness, FAQPage, Speakable
```

### Ejemplos incorrectos

```text
- Homepage with no services
- Homepage targeting five cities equally
- Homepage without NAP
- Homepage without links to service pages
```

### Regla final

```text
1. Homepage — Root Entity Anchor debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## 2. Service Overview Page — Topical Authority Pillar

### Función

Esta página educa sobre un servicio sin geolocalización. Es el pilar temático que soporta la versión local del servicio en la Main City y cualquier futura expansión aprobada.

### Patrón URL

```text
/[primary-category-slug]/[service-slug]/
```

### H1

```text
Professional [Service] Services by [Brand Name]
```

### Meta Title

```text
[Service] by [Brand Name] | [Primary Category] Experts
```

### Meta Description

```text
Need trusted [Service]? [Brand Name] delivers expert solutions with speed, quality, and care. Explore our full process and benefits.
```

### Word count recomendado

```text
850–1,000 words
```

### Estructura completa

```text
H1
Intro no local
H2 Authority
H2 Uniqueness
H2 Depth
H2 Intent
H2 Optimization
Bullet sections
FAQs
CTA
Internal Links
```

### Schema requerido

```text
Service
WebPage
BreadcrumbList
Speakable
```

### Internal Links requeridos

```text
Homepage
Related Service Overview Pages
Main City Location-Based Service Page
Relevant GeoArticle
```

### Ejemplo rellenado con ABC Locksmith

```text
URL: /locksmith/emergency-locksmith/
H1: Professional Emergency Locksmith Services by ABC Locksmith
Meta Title: Emergency Locksmith by ABC Locksmith | Locksmith Experts
Internal Links: /, /locksmith/car-locksmith/, /locksmith/miami/emergency-locksmith/, /miami/emergency-locksmith-cost-guide/
```

### Ejemplos incorrectos

```text
- Mentioning Miami as the primary target
- Using /locksmith/miami/emergency-locksmith/ as service overview
- No links to local version
- Thin content under 400 words
```

### Regla final

```text
2. Service Overview Page — Topical Authority Pillar debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## 3. Location-Based Service Page — Main City Converter

### Función

Esta página convierte búsquedas locales de alta intención para una combinación exacta: servicio + Main City. Es una de las páginas más importantes para soporte GBP y Local Pack.

### Patrón URL

```text
/[primary-category-slug]/[main-city-slug]/[service-slug]/
```

### H1

```text
[Brand Name] – [Service] in [Main City]
```

### Meta Title

```text
Top [Service] in [Main City] | [Brand Name]
```

### Meta Description

```text
Need [Service] in [Main City]? [Brand Name] helps with [problem], [problem], and [problem]. Call for trusted local support.
```

### Word count recomendado

```text
800–1,000 words
```

### Estructura completa

```text
H1
Intro local
Quick Local Answer
H2 Authority
H2 Uniqueness
H2 Depth
H2 Local Pain Points
H2 Local Coverage Areas Served
H2 Related Services in Main City
FAQs
CTA
Internal Links
```

### Schema requerido

```text
LocalBusiness
BreadcrumbList
FAQPage optional
Speakable optional
```

### Internal Links requeridos

```text
Parent Service Overview
Main City GeoHub
Other services in Main City
Related GeoArticles
Contact
```

### Ejemplo rellenado con ABC Locksmith

```text
URL: /locksmith/miami/emergency-locksmith/
H1: ABC Locksmith – Emergency Locksmith in Miami
Local Coverage Areas: Hialeah, Coral Gables, Doral, Hollywood mentioned naturally
Links: /locksmith/emergency-locksmith/, /miami/, /locksmith/miami/car-locksmith/, /miami/emergency-locksmith-cost-guide/
```

### Ejemplos incorrectos

```text
- Mixing Miami and Hialeah as equal targets
- Creating a page for every coverage area without approval
- Claiming an office in Doral
- Combining car and residential locksmith in one local landing
```

### Regla final

```text
3. Location-Based Service Page — Main City Converter debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## 4. Additional Category Page — GBP Additional Category Support

### Función

Esta página soporta una categoría adicional real del GBP que no está cubierta por un servicio core. Refuerza la profundidad de entidad y la relevancia semántica.

### Patrón URL

```text
/[primary-category-slug]/[main-city-slug]/[additional-category-slug]/
```

### H1

```text
[Brand Name] – Expert [Service] in [Main City]
```

### Meta Title

```text
[Service] in [Main City] | [Brand Name]
```

### Meta Description

```text
Need [Service] in [Main City]? [Brand Name] provides reliable help for [problem], [use case], and [use case]. Call today.
```

### Word count recomendado

```text
800–1,000 words
```

### Estructura completa

```text
H1
Intro con problema local
H2 Authority
H2 Uniqueness
H2 Depth
H2 Intent
H2 Optimization
Local Coverage Use Case
FAQs
CTA
Internal Links
```

### Schema requerido

```text
Service with areaServed
BreadcrumbList
FAQPage optional
Speakable optional
```

### Internal Links requeridos

```text
Main City GeoHub
Related Location-Based Service Pages
Related GeoArticles
Contact
```

### Ejemplo rellenado con ABC Locksmith

```text
URL: /locksmith/miami/key-duplication/
H1: ABC Locksmith – Expert Key Duplication in Miami
Meta Title: Key Duplication in Miami | ABC Locksmith
Links: /miami/, /locksmith/miami/residential-locksmith/, /locksmith/miami/lock-rekeying/
```

### Ejemplos incorrectos

```text
- Creating /locksmith/miami/emergency-locksmith-service/ when emergency is already covered
- No local context
- No links to GeoHub
- Category page with no relation to GBP
```

### Regla final

```text
4. Additional Category Page — GBP Additional Category Support debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## 5. GeoHub Page — Main City Silo Container

### Función

El GeoHub agrupa todas las señales de la Main City. Es el índice local del sitio: servicios, categorías adicionales, artículos, cobertura local, confianza y contacto.

### Patrón URL

```text
/[main-city-slug]/ OR /[primary-category-slug]/[main-city-slug]/
```

### H1

```text
[Brand Name] – [Industry] Services in [Main City]
```

### Meta Title

```text
[Industry] Services in [Main City] | [Brand Name]
```

### Meta Description

```text
Explore trusted [Industry] services in [Main City] from [Brand Name]. View local services, helpful resources, coverage areas, and ways to contact our team.
```

### Word count recomendado

```text
700–1,100 words
```

### Estructura completa

```text
H1
City Intro
Service Menu
Additional Category Menu
Local Coverage Areas Section
GeoArticle Resources
Trust Signals
CTA
Internal Links
```

### Schema requerido

```text
CollectionPage
BreadcrumbList
LocalBusiness optional if physical presence exists
```

### Internal Links requeridos

```text
Homepage
All Main City Service Pages
Main City Additional Category Pages
Main City GeoArticles
Contact Page
```

### Ejemplo rellenado con ABC Locksmith

```text
URL: /miami/
H1: ABC Locksmith – Locksmith Services in Miami
Service Menu: emergency, car, residential, commercial, rekeying
Coverage Section: Hialeah, Coral Gables, Doral, Hollywood
Links: /locksmith/miami/emergency-locksmith/, /locksmith/miami/key-duplication/, /miami/emergency-locksmith-cost-guide/
```

### Ejemplos incorrectos

```text
- GeoHub with only generic city text
- No links to service pages
- Treating Hialeah as a child page without approval
- No CTA
```

### Regla final

```text
5. GeoHub Page — Main City Silo Container debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## 6. GeoArticle Page — Semantic Booster

### Función

El GeoArticle no es una landing comercial. Es un booster semántico para un servicio, una Main City y una intención long-tail. Su misión es apoyar la página comercial y el GeoHub.

### Patrón URL

```text
/[main-city-slug]/[article-topic-slug]/
```

### H1

```text
[Article Topic] in [Main City]
```

### Meta Title

```text
[Article Topic] in [Main City] | [Brand Name]
```

### Meta Description

```text
Learn about [Article Topic] in [Main City], including what to expect, common mistakes, local factors, and when to call [Brand Name].
```

### Word count recomendado

```text
1,000–1,500 words
```

### Estructura completa

```text
H1
Intro contextual
H2 Problem
H2 Local Context
H2 Options / Mistakes
H2 When to Call
H2 Local Examples
FAQs
CTA
Internal Links
```

### Schema requerido

```text
Article
FAQPage
BreadcrumbList
Speakable
```

### Internal Links requeridos

```text
Matching Main City Service Page
Main City GeoHub
Related GeoArticle
Contact
```

### Ejemplo rellenado con ABC Locksmith

```text
URL: /miami/emergency-locksmith-cost-guide/
H1: How Much Does an Emergency Locksmith Cost in Miami?
Links: /locksmith/miami/emergency-locksmith/, /miami/, /miami/what-to-do-locked-out-of-house/
```

### Ejemplos incorrectos

```text
- Writing as a generic landing page
- No link to service page
- No local examples
- Pretending physical location in every coverage area
```

### Regla final

```text
6. GeoArticle Page — Semantic Booster debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## Homepage como Root Entity Anchor — Regla operativa 1

### Explicación

La homepage no es una página decorativa. Es el contenedor principal de la entidad local y debe establecer marca, categoría GBP, servicio principal, Main City, NAP, señales de confianza y enlaces a las páginas clave.

### Patrón o fórmula

```text
Brand + Primary Service + Main City → servicios core → NAP → enlaces internos
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith usa / con H1 orientado a Locksmith Services in Miami, lista servicios core y enlaza a /miami/ y páginas Service Overview.
```

### Ejemplos incorrectos

```text
- Homepage solo con un slider y una frase genérica
- No mencionar la Main City
- No enlazar a servicios core
```

### Regla final

```text
La homepage debe explicar quién es el negocio, qué hace y dónde opera.
```

## Service Overview como pilar no local — Regla operativa 2

### Explicación

La Service Overview Page crea autoridad temática sobre un servicio sin enfocarse en ciudad. Debe explicar el servicio, proceso, problemas resueltos, FAQs y enlaces a su versión Main City.

### Patrón o fórmula

```text
/category/service/ → topical authority → link a Main City service page
```

### Ejemplo correcto con ABC Locksmith

```text
La página /locksmith/emergency-locksmith/ explica Emergency Locksmith sin apuntar a Miami como keyword principal.
```

### Ejemplos incorrectos

```text
- Usar /locksmith/emergency-locksmith/ como landing de Miami
- Meter Local Coverage Areas como si fuera una página local
- No enlazar a /locksmith/miami/emergency-locksmith/
```

### Regla final

```text
Service Overview educa; no reemplaza la página servicio+ciudad.
```

## Location-Based Service como convertidor local — Regla operativa 3

### Explicación

La Location-Based Service Page es la página comercial más importante para una combinación servicio + Main City. Debe tener intención local, CTA, reviews, contenido GEO y enlaces a padre, GeoHub y artículos.

### Patrón o fórmula

```text
/category/main-city/service/ → servicio + ciudad → conversión
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith usa /locksmith/miami/emergency-locksmith/ para captar búsquedas de emergency locksmith in Miami.
```

### Ejemplos incorrectos

```text
- Mezclar emergency, car y residential en una sola landing
- Crear una página local sin CTA
- Escribir contenido genérico sin contexto de Miami
```

### Regla final

```text
Una página local comercial debe cubrir un servicio y una ciudad.
```

## Additional Category como soporte GBP — Regla operativa 4

### Explicación

Las Additional Category Pages existen para soportar categorías adicionales reales del GBP que no estén ya cubiertas por servicios core. Su formato es local porque refuerzan relevancia de categoría en la Main City.

### Patrón o fórmula

```text
Effective Additional Category + Main City → página local de soporte
```

### Ejemplo correcto con ABC Locksmith

```text
Key Duplication Service genera /locksmith/miami/key-duplication/ porque no está cubierto por los servicios core.
```

### Ejemplos incorrectos

```text
- Crear página duplicada para Emergency Locksmith Service
- Ignorar una categoría adicional del GBP
- Usar una página genérica sin Main City
```

### Regla final

```text
Una categoría adicional efectiva debe tener soporte local propio.
```

## GeoHub como contenedor de ciudad — Regla operativa 5

### Explicación

El GeoHub organiza todas las señales de la Main City: servicios, categorías adicionales, GeoArticles, cobertura local, confianza y contacto. No es una landing de un servicio concreto.

### Patrón o fórmula

```text
/main-city/ → índice local → servicios + artículos + cobertura
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith usa /miami/ como hub de Locksmith Services in Miami y lista páginas locales de emergency, car, residential, commercial y rekeying.
```

### Ejemplos incorrectos

```text
- Crear /miami/ con texto turístico sin servicios
- Usar /miami/ para vender solo emergency locksmith
- No enlazar a las páginas locales
```

### Regla final

```text
El GeoHub es el índice de la Main City.
```

## GeoArticle como booster semántico — Regla operativa 6

### Explicación

El GeoArticle no es una landing comercial. Debe cubrir un tema long-tail de servicio + Main City y enlazar a la página comercial correspondiente y al GeoHub.

### Patrón o fórmula

```text
/main-city/topic/ → artículo → soporte a /category/main-city/service/
```

### Ejemplo correcto con ABC Locksmith

```text
El artículo /miami/emergency-locksmith-cost-guide/ explica costes y enlaza a /locksmith/miami/emergency-locksmith/.
```

### Ejemplos incorrectos

```text
- Escribir un artículo como página de venta directa
- No enlazar al servicio local
- Crear el artículo antes de la página que debe apoyar
```

### Regla final

```text
Un GeoArticle debe empujar relevancia hacia una página local.
```

## Schema por tipo de página — Regla operativa 7

### Explicación

Cada tipo de página tiene un schema esperado. La homepage usa Organization y WebSite; servicios usan Service; landings locales usan LocalBusiness; artículos usan Article y FAQPage.

### Patrón o fórmula

```text
Page Type → Schema Required → QA
```

### Ejemplo correcto con ABC Locksmith

```text
LBS-001 usa LocalBusiness + BreadcrumbList; GA-001 usa Article + FAQPage + BreadcrumbList + Speakable.
```

### Ejemplos incorrectos

```text
- Usar Article schema en una landing
- Usar LocalBusiness con ubicación falsa
- No añadir BreadcrumbList
```

### Regla final

```text
El schema debe coincidir con la función de la página.
```

## Word count por intención — Regla operativa 8

### Explicación

El contenido debe tener suficiente profundidad según el tipo de página. No se trata de inflar palabras, sino de cubrir intención, proceso, beneficios, FAQs, enlaces y contexto local.

### Patrón o fórmula

```text
Page Type → word count objetivo → contenido completo
```

### Ejemplo correcto con ABC Locksmith

```text
Una Location-Based Service Page de ABC Locksmith tiene 800–1.000 palabras; un GeoArticle tiene 1.000–1.500.
```

### Ejemplos incorrectos

```text
- Publicar landings de 250 palabras
- Crear artículos de 400 palabras sin profundidad
- Repetir bloques para llegar al word count
```

### Regla final

```text
La longitud debe permitir profundidad, no relleno.
```

## CTA adaptado al page type — Regla operativa 9

### Explicación

Cada página debe tener un CTA, pero no todos los CTAs cumplen la misma función. Homepage y landings deben convertir; Service Overview puede ser más consultivo; GeoArticle debe enlazar contextual y suavemente al servicio.

### Patrón o fórmula

```text
Page Type → CTA intent → enlace o acción
```

### Ejemplo correcto con ABC Locksmith

```text
En /locksmith/miami/emergency-locksmith/ el CTA es llamar ahora; en /miami/emergency-locksmith-cost-guide/ el CTA invita a consultar la página de Emergency Locksmith in Miami.
```

### Ejemplos incorrectos

```text
- Usar el mismo CTA genérico en todo el sitio
- No incluir CTA en artículos
- Hacer CTAs agresivos en contenido informativo
```

### Regla final

```text
El CTA debe coincidir con la intención de la página.
```

## No false location claims — Regla operativa 10

### Explicación

Cualquier page type puede mencionar cobertura local, pero ninguno debe inventar oficina física. Esta regla protege la confianza local y evita contradicciones con GBP, NAP y schema.

### Patrón o fórmula

```text
Local Coverage Area → servir clientes | no → oficina ficticia
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith puede decir que atiende Hialeah, pero no que tiene oficina en Hialeah si su ubicación física es Miami.
```

### Ejemplos incorrectos

```text
- Our Hialeah office si no existe
- Mapa de una ubicación no real
- LocalBusiness address en zona de cobertura sin sede
```

### Regla final

```text
Cobertura no equivale a presencia física.
```

## Checklist final del Paso 5

| Check | Pregunta | Estado |
|---|---|---|
| Homepage | ¿Funciona como Root Entity Anchor? | ✅ / ⬜ |
| Service Overview | ¿No tiene intención local principal? | ✅ / ⬜ |
| Location-Based Service | ¿Es un servicio + Main City? | ✅ / ⬜ |
| Additional Category | ¿Soporta una categoría adicional real y no duplicada? | ✅ / ⬜ |
| GeoHub | ¿Agrupa todos los elementos de la Main City? | ✅ / ⬜ |
| GeoArticle | ¿Es booster semántico y no landing? | ✅ / ⬜ |
| Schema | ¿Cada tipo de página tiene schema correcto? | ✅ / ⬜ |
| CTA | ¿Cada tipo de página tiene CTA definido? | ✅ / ⬜ |
| Internal Links | ¿Cada tipo tiene enlaces obligatorios? | ✅ / ⬜ |
| No mezcla | ¿No se mezclan servicios ni zonas sin aprobación? | ✅ / ⬜ |

## Outputs del Paso 5

- Reglas de tipo de página definidas
- URLs por tipo de página confirmadas
- H1 y metadata por tipo de página
- Word count por tipo
- Schema por tipo
- Internal links base por tipo
- Errores frecuentes documentados