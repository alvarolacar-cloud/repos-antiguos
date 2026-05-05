Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 6 — Estructura de Contenido + Áreas de Cobertura Local

## Índice corto

**Paso 6 — Estructura de Contenido + Áreas de Cobertura Local**

## Objetivo del Paso 6

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: definir cómo se escribe y organiza el contenido real de cada tipo de página, y cómo se usan las áreas de cobertura local sin convertirlas automáticamente en URLs.
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
Error que previene: crear solo formularios sin cuerpo operativo.
Error que previene: mencionar zonas locales de forma artificial.
Error que previene: crear páginas para cada área de cobertura sin aprobación.
Error que previene: usar Local Coverage Areas como si fueran Main City.
Error que previene: olvidar dónde van FAQs, CTAs, reviews, Local Coverage Areas y enlaces internos.

## Lo que tienes que rellenar

```text
Business Name:

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

Primary Local Coverage Areas:
Recommended: start with 3–5 strongest real areas served.
1.
2.
3.
4.
5.

Additional Local Coverage Areas:
Optional.
1.
2.
3.
4.
5.

Should Local Coverage Areas generate pages?
Default: No.

Approved Expansion Areas:
Optional.
1.
2.
3.

Service Page URL to structure:

Page Type:
Homepage / Service Overview / Location-Based Service / Additional Category / GeoHub / GeoArticle

Target Service:

Target Additional Category:

Matching Parent Page:

Matching GeoHub:

Related GeoArticles:

Preferred CTA:

Trust Signals:

Can the page mention physical office in this area?
Yes / No
```

## Ejemplo rellenado

```text
Business Name:
ABC Locksmith

Primary GBP Category:
Locksmith

Primary Category Slug:
locksmith

Main City:
Miami

Main City Slug:
miami

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

Service Page URL to structure:
/locksmith/miami/emergency-locksmith/

Page Type:
Location-Based Service

Target Service:
Emergency Locksmith

Target Additional Category:
Emergency Locksmith Service is already covered by this service.

Matching Parent Page:
/locksmith/emergency-locksmith/

Matching GeoHub:
/miami/

Related GeoArticles:
1. /miami/emergency-locksmith-cost-guide/
2. /miami/what-to-do-locked-out-of-house/
3. /miami/how-fast-can-locksmith-arrive/

Preferred CTA:
Call now

Trust Signals:
- 10+ years in business
- 250+ Google reviews
- Licensed locksmith technicians
- Same-day mobile service

Can the page mention physical office in this area?
Only for Miami, not for Local Coverage Areas unless true.
```

# Cuerpo operativo del Paso 6

## Principio 1 — Main City crea arquitectura

### Explicación

La Main City es la ciudad principal que genera URLs base. Todo el sistema base se organiza alrededor de esa ciudad.

### Patrón o fórmula

```text
Main City → /city/ + /category/city/service/ + /city/article-topic/
```

### Ejemplo correcto con ABC Locksmith

```text
Miami genera /miami/ y /locksmith/miami/emergency-locksmith/
```

### Ejemplos incorrectos

```text
- Hialeah genera URL sin aprobación
- Doral se usa como Main City en una página de Miami
- Cambiar Main City por cada bloque
```

### Regla final

```text
La arquitectura base pertenece a una sola Main City.
```

## Principio 2 — Local Coverage Areas enriquecen contenido

### Explicación

Las Local Coverage Areas son zonas reales atendidas que se usan para contexto, FAQs, ejemplos, cobertura y schema areaServed.

### Patrón o fórmula

```text
Local Coverage Areas → content, FAQs, examples, areaServed
```

### Ejemplo correcto con ABC Locksmith

```text
Hialeah, Coral Gables, Doral y Hollywood se mencionan en secciones de cobertura
```

### Ejemplos incorrectos

```text
- Crear páginas por cada zona
- Listar zonas donde no se atiende
- Usarlas como H1 principal
```

### Regla final

```text
Las Local Coverage Areas refuerzan contenido, no crean URLs por defecto.
```

## Principio 3 — Approved Expansion Areas crean URLs solo si se aprueban

### Explicación

Cuando una zona tiene demanda, competencia o valor comercial, puede pasar a expansión.

### Patrón o fórmula

```text
Local Coverage Area → Approved Expansion Area → URLs
```

### Ejemplo correcto con ABC Locksmith

```text
Hialeah podría generar /hialeah/ en una fase futura si se aprueba
```

### Ejemplos incorrectos

```text
- Aprobar todas las zonas
- Crear expansión antes de terminar Miami
- Crear expansión sin contenido único
```

### Regla final

```text
Solo las zonas aprobadas generan URLs.
```

## Principio 4 — Mencionar una zona no es crear una página

### Explicación

Este principio evita confundir cobertura real con arquitectura.

### Patrón o fórmula

```text
Mention ≠ URL
```

### Ejemplo correcto con ABC Locksmith

```text
Se menciona Hialeah dentro de /locksmith/miami/emergency-locksmith/ sin enlazar a /hialeah/
```

### Ejemplos incorrectos

```text
- Crear enlaces a URLs inexistentes
- Usar la zona en breadcrumbs
- Crear páginas por presión de keyword
```

### Regla final

```text
Mencionar una zona no significa crear una URL.
```

## Principio 5 — No falsa ubicación

### Explicación

Si la oficina física está en Miami, no se afirma oficina en Hialeah, Doral o Hollywood.

### Patrón o fórmula

```text
Service coverage ≠ physical presence
```

### Ejemplo correcto con ABC Locksmith

```text
We serve customers in Doral
```

### Ejemplos incorrectos

```text
- Our Doral office
- Visit our Hialeah storefront
- Schema address in Coral Gables
```

### Regla final

```text
Atender una zona no equivale a estar físicamente allí.
```

## 1. Homepage Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

### Estructura completa

```text
H1
Intro
Quick Answer
Core Services
Local Coverage Preview
Trust Blocks
FAQ Section
NAP Block
CTA
Internal Links
Schema
```

### Uso de Local Coverage Areas

La homepage puede mencionar 3–5 Local Coverage Areas de forma ligera, normalmente en un bloque de service area preview. No debe convertirse en una lista masiva de zonas ni usar las áreas de cobertura como sustituto de la Main City.

### Ejemplo correcto con ABC Locksmith

```text
H1: ABC Locksmith – Trusted Locksmith Services in Miami, FL
Local Coverage Preview: We serve customers in Miami and nearby coverage areas such as Hialeah, Coral Gables, Doral, and Hollywood depending on availability.
Core Service Links: /locksmith/emergency-locksmith/, /locksmith/car-locksmith/, /locksmith/commercial-locksmith/
GeoHub Link: /miami/
```

### Ejemplos incorrectos

```text
- Homepage con 30 zonas listadas sin contexto
- Homepage orientada a Hialeah, Doral y Hollywood al mismo nivel que Miami
- Homepage sin Core Services
- Homepage sin NAP
```

### Regla final

```text
La homepage debe reforzar marca, categoría, Main City, servicios y cobertura real sin crear URLs innecesarias.
```
## 2. Service Overview Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

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
Schema
```

### Uso de Local Coverage Areas

No se usan Local Coverage Areas. Esta página no debe mencionar Miami, Hialeah, Doral ni ninguna zona como target principal. Su función es ser pilar temático del servicio.

### Ejemplo correcto con ABC Locksmith

```text
URL: /locksmith/emergency-locksmith/
Intro: ABC Locksmith provides professional emergency locksmith services for urgent lockouts, broken keys and access problems.
No local targeting.
Internal link to local version: /locksmith/miami/emergency-locksmith/
```

### Ejemplos incorrectos

```text
- Mencionar Hialeah en el H1
- Crear un bloque de cobertura local en service overview
- Usar /miami/ como target principal
- No enlazar a la versión local
```

### Regla final

```text
Service Overview = servicio sin localización.
```
## 3. Location-Based Service Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

### Estructura completa

```text
H1
Intro local 100–150 words
Quick Local Answer
H2 Authority
H2 Uniqueness
H2 Depth
H2 Local Pain Points
H2 Local Coverage Areas Served
H2 Related Services in [Main City]
FAQs
CTA
Internal Links
Schema
```

### Uso de Local Coverage Areas

Sí se usan Local Coverage Areas. Deben aparecer de forma natural en la intro, en una sección de cobertura, en ejemplos locales y en FAQs. La página sigue siendo de Main City, no de cada área mencionada.

### Ejemplo correcto con ABC Locksmith

```text
URL: /locksmith/miami/emergency-locksmith/
H2: Emergency Locksmith Help in Miami and Local Coverage Areas
Text: ABC Locksmith helps customers in Miami with urgent lockouts, broken keys and access problems. We also serve nearby coverage areas such as Hialeah, Coral Gables, Doral and Hollywood when available.
FAQ: Do you provide emergency locksmith help in Hialeah and Coral Gables?
Answer: Yes, we serve customers in those coverage areas depending on availability, while this page remains focused on emergency locksmith service in Miami.
```

### Ejemplos incorrectos

```text
- H1: Emergency Locksmith in Hialeah and Miami and Doral
- Create one paragraph for each area with duplicated text
- Claim office in Hollywood
- Link to /hialeah/ when that URL does not exist
```

### Regla final

```text
Una Location-Based Service Page menciona cobertura local sin dejar de ser service + Main City.
```
## 4. Additional Category Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

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
Schema
```

### Uso de Local Coverage Areas

Las Local Coverage Areas se usan para explicar casos de uso locales relacionados con la categoría adicional. No deben crear páginas propias si no están aprobadas.

### Ejemplo correcto con ABC Locksmith

```text
URL: /locksmith/miami/key-duplication/
H2: Key Duplication Support Across Miami Coverage Areas
Text: Customers in Miami and coverage areas like Hialeah, Coral Gables and Doral often need spare keys for family, staff, tenants or emergency access.
Links: /miami/, /locksmith/miami/residential-locksmith/, /locksmith/miami/lock-rekeying/
```

### Ejemplos incorrectos

```text
- Crear /locksmith/hialeah/key-duplication/ sin aprobación
- No conectar con GeoHub
- Tratar key duplication como servicio core si no está definido
- Copiar contenido de la página de rekeying
```

### Regla final

```text
La categoría adicional se contextualiza localmente, pero no se multiplica por zonas no aprobadas.
```
## 5. GeoHub Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

### Estructura completa

```text
H1
City intro
Service Menu
Additional Category Menu
Local Coverage Areas Section
GeoArticle Resources
Trust Signals
CTA
Internal Links
Schema
```

### Uso de Local Coverage Areas

El GeoHub es el lugar más natural para una sección explícita de Local Coverage Areas. Aquí se puede explicar la cobertura de la empresa sin crear URLs por cada zona.

### Ejemplo correcto con ABC Locksmith

```text
URL: /miami/
H2: Locksmith Coverage Areas Around Miami
Text: ABC Locksmith provides locksmith services in Miami and local coverage areas such as Hialeah, Coral Gables, Doral and Hollywood. These areas represent real service coverage and help customers understand where support may be available.
Service Menu: emergency, car, residential, commercial, lock rekeying.
```

### Ejemplos incorrectos

```text
- GeoHub sin lista de servicios
- GeoHub como artículo sobre la ciudad
- Enlaces a áreas inexistentes
- Cobertura local escrita como si hubiese oficinas en cada zona
```

### Regla final

```text
El GeoHub organiza Main City, servicios y cobertura local real.
```
## 6. GeoArticle Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

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
Schema
```

### Uso de Local Coverage Areas

Las Local Coverage Areas se usan como ejemplos semánticos y contexto real. No se usan para fingir presencia física ni para crear intención principal distinta.

### Ejemplo correcto con ABC Locksmith

```text
URL: /miami/emergency-locksmith-cost-guide/
Text: Emergency locksmith cost in Miami can vary by lock type, time of day, urgency and coverage area. A simple apartment lockout in Miami may differ from a late-night call in Hialeah, Coral Gables or Doral depending on availability and travel conditions.
Links: /locksmith/miami/emergency-locksmith/, /miami/, /miami/what-to-do-locked-out-of-house/
```

### Ejemplos incorrectos

```text
- Article targeting Hialeah as primary location without page
- No link to service page
- Fake office statement
- Article written as sales landing
```

### Regla final

```text
GeoArticles use local coverage as context and send authority back to the Main City service page.
```

## Tabla de uso de Local Coverage Areas por tipo de página

| Page Type | ¿Usa Local Coverage Areas? | Cómo las usa |
|---|---|---|
| Homepage | Sí, ligero | Service area preview |
| Service Overview | No | No debe ser local |
| Location-Based Service | Sí | Intro, pain points, cobertura, FAQs |
| Additional Category | Sí | Escenarios locales y cobertura |
| GeoHub | Sí, recomendado | Sección principal de cobertura local |
| GeoArticle | Sí | Ejemplos, contexto, landmarks, FAQs |

## Ejemplo práctico completo

```text
Main City:
Miami

Service:
Emergency Locksmith

Primary Local Coverage Areas:
Hialeah, Coral Gables, Doral

Additional Local Coverage Areas:
Hollywood

URL:
/locksmith/miami/emergency-locksmith/

Sección:
H2: Emergency Locksmith in Miami and Nearby Coverage Areas

Texto:
ABC Locksmith helps customers in Miami with urgent lockouts, broken keys, rekeying needs and access problems. We also serve nearby coverage areas such as Hialeah, Coral Gables, Doral and Hollywood depending on availability. These areas help clarify real service coverage while the page remains focused on emergency locksmith service in Miami.
```

## FAQ ejemplo

```text
Question:
Do you provide emergency locksmith help in Hialeah, Coral Gables and Doral?

Answer:
Yes. ABC Locksmith serves customers in Miami and nearby coverage areas such as Hialeah, Coral Gables and Doral depending on availability. This page focuses on emergency locksmith service in Miami while clarifying the broader local coverage area.
```

## Homepage con cobertura ligera — Regla operativa 1

### Explicación

La homepage puede mencionar Local Coverage Areas, pero no debe convertirse en una lista interminable de zonas. Su prioridad sigue siendo entidad, categoría GBP, Main City, servicios, NAP y confianza.

### Patrón o fórmula

```text
Homepage → Main City primero → 3–5 coverage areas como preview
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith menciona que atiende Miami y zonas como Hialeah, Coral Gables, Doral y Hollywood, pero el H1 se mantiene centrado en Miami.
```

### Ejemplos incorrectos

```text
- Hacer un H1 con todas las áreas de cobertura
- Listar 40 zonas antes de explicar servicios
- Crear enlaces a zonas sin URL
```

### Regla final

```text
La cobertura en homepage debe ser breve y subordinada a la Main City.
```

## Service Overview sin cobertura local — Regla operativa 2

### Explicación

Las páginas de servicio general deben evitar Main City y Local Coverage Areas como objetivo principal. Su trabajo es explicar el servicio de forma no geolocalizada y actuar como pilar temático.

### Patrón o fórmula

```text
Service Overview → sin ciudad → sin coverage areas → autoridad temática
```

### Ejemplo correcto con ABC Locksmith

```text
La página /locksmith/car-locksmith/ explica Car Locksmith sin mencionar Hialeah o Coral Gables como targets.
```

### Ejemplos incorrectos

```text
- Meter una sección de zonas en Service Overview
- Usar H1 Car Locksmith in Miami en /locksmith/car-locksmith/
- Enlazar a áreas sin página propia
```

### Regla final

```text
La cobertura local no pertenece al pilar de servicio general.
```

## Intro local en Location-Based Service — Regla operativa 3

### Explicación

La página servicio+Main City debe abrir con una intro localizada de 100–150 palabras. Aquí se puede mencionar 2–4 Local Coverage Areas de forma natural si refuerzan el contexto, pero sin desplazar la Main City.

### Patrón o fórmula

```text
Servicio + Main City + problema local + cobertura ligera
```

### Ejemplo correcto con ABC Locksmith

```text
La intro de /locksmith/miami/emergency-locksmith/ menciona lockouts en Miami y puede citar Hialeah o Coral Gables como cobertura cercana.
```

### Ejemplos incorrectos

```text
- Abrir con una lista de zonas en vez de problema del usuario
- No mencionar Miami en la intro
- Prometer oficina en áreas de cobertura
```

### Regla final

```text
La intro local debe reforzar la Main City y el problema real del usuario.
```

## Sección Local Coverage Areas Served — Regla operativa 4

### Explicación

Las páginas locales pueden incluir una sección específica de cobertura. Esta sección permite mencionar barrios, distritos o municipios atendidos sin crear páginas propias ni URLs artificiales.

### Patrón o fórmula

```text
H2 Coverage Areas → áreas reales → sin enlaces salvo URLs aprobadas
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith incluye un H2: Locksmith support in Miami and nearby coverage areas, mencionando Hialeah, Coral Gables, Doral y Hollywood.
```

### Ejemplos incorrectos

```text
- Convertir cada área en enlace inexistente
- Usar la sección para ocultar keyword stuffing
- Listar zonas que el negocio no atiende
```

### Regla final

```text
Las áreas de cobertura se mencionan como cobertura real, no como páginas implícitas.
```

## Additional Category con caso local — Regla operativa 5

### Explicación

Las páginas de categorías adicionales deben usar Local Coverage Areas solo cuando ayuden a explicar escenarios reales del servicio. El foco sigue siendo servicio adicional + Main City.

### Patrón o fórmula

```text
Additional Category → problema local → cobertura como ejemplo
```

### Ejemplo correcto con ABC Locksmith

```text
En /locksmith/miami/key-duplication/, ABC Locksmith menciona spare keys para hogares y negocios en Miami y zonas de cobertura cercanas.
```

### Ejemplos incorrectos

```text
- Crear una página de key duplication para cada área sin aprobación
- Usar cobertura local como relleno
- No conectar la categoría con el GBP
```

### Regla final

```text
La cobertura local debe contextualizar, no multiplicar páginas.
```

## GeoHub con sección de cobertura principal — Regla operativa 6

### Explicación

El GeoHub es el mejor lugar para explicar la cobertura local. Debe tener una sección clara de áreas atendidas, conectada con servicios y sin transformar cada zona en URL si no está aprobada.

### Patrón o fórmula

```text
/main-city/ → services → local coverage → resources
```

### Ejemplo correcto con ABC Locksmith

```text
En /miami/, ABC Locksmith lista servicios en Miami y una sección de cobertura con Hialeah, Coral Gables, Doral y Hollywood.
```

### Ejemplos incorrectos

```text
- Hacer del GeoHub una página turística sin servicios
- Crear enlaces a zonas inexistentes
- No incluir cobertura aunque sea relevante para clientes
```

### Regla final

```text
El GeoHub debe organizar ciudad, servicios y cobertura real.
```

## GeoArticles con ejemplos locales — Regla operativa 7

### Explicación

Los GeoArticles pueden usar Local Coverage Areas como ejemplos semánticos: tipos de vivienda, zonas cercanas, landmarks o escenarios. Eso ayuda a NLP y AIO sin convertir el artículo en página de zona.

### Patrón o fórmula

```text
GeoArticle → tema + Main City → ejemplos de cobertura
```

### Ejemplo correcto con ABC Locksmith

```text
En /miami/emergency-locksmith-cost-guide/, ABC Locksmith explica que el coste puede variar según tipo de lockout y zona de cobertura.
```

### Ejemplos incorrectos

```text
- Escribir el artículo como landing de Hialeah
- Repetir listas de zonas en cada párrafo
- Afirmar presencia física en zonas de cobertura
```

### Regla final

```text
Los ejemplos locales deben enriquecer el tema, no cambiar la intención.
```

## Reviews y trust blocks en contenido — Regla operativa 8

### Explicación

Las reseñas y señales de confianza deben colocarse donde apoyan la intención: homepage, landings locales, GeoHub y, ocasionalmente, artículos. No deben inventarse ni repetirse como bloque genérico sin contexto.

### Patrón o fórmula

```text
Trust signal → sección adecuada → servicio o Main City
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith usa 250+ Google reviews en homepage y en /locksmith/miami/emergency-locksmith/ como prueba local.
```

### Ejemplos incorrectos

```text
- Pegar el mismo bloque de reseñas en todas las páginas sin contexto
- Usar reseñas de una zona como si fueran de otra
- Inventar certificaciones
```

### Regla final

```text
Las señales de confianza deben apoyar la intención de la página.
```

## FAQs con cobertura natural — Regla operativa 9

### Explicación

Las FAQs pueden mencionar Local Coverage Areas si responden preguntas reales de usuarios. Deben sonar naturales y no funcionar como keyword stuffing de zonas.

### Patrón o fórmula

```text
Pregunta real → Main City + coverage area → respuesta útil
```

### Ejemplo correcto con ABC Locksmith

```text
¿Atendéis emergencias de cerrajería en Hialeah y Coral Gables? Sí, ABC Locksmith atiende solicitudes en Miami y zonas de cobertura cercanas según disponibilidad.
```

### Ejemplos incorrectos

```text
- Crear una FAQ por cada zona sin valor nuevo
- Usar preguntas repetidas cambiando solo el área
- Responder con promesas de oficina inexistente
```

### Regla final

```text
Las FAQs de cobertura deben resolver dudas reales.
```

## Schema areaServed coherente — Regla operativa 10

### Explicación

Las Local Coverage Areas pueden reflejarse en areaServed si representan cobertura real. El schema debe diferenciar cobertura de dirección física y no añadir áreas falsas solo por SEO.

### Patrón o fórmula

```text
Real coverage → areaServed | Physical address → address
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith usa Miami como address si es su ubicación y puede incluir Hialeah, Coral Gables, Doral y Hollywood en areaServed.
```

### Ejemplos incorrectos

```text
- Poner Hialeah como address sin sede
- Añadir ciudades no atendidas en areaServed
- Omitir areaServed si la cobertura es clave
```

### Regla final

```text
areaServed debe representar cobertura real, no ubicación física.
```

## No URLs por cobertura sin aprobación — Regla operativa 11

### Explicación

Mencionar una zona en el contenido no implica crear una URL. Esta separación es clave para que el sistema base se mantenga enfocado y no genere thin content.

### Patrón o fórmula

```text
Local Coverage Area mencionada → no URL | Approved Expansion Area → URL
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith menciona Hollywood como cobertura, pero no crea /hollywood/ en la base.
```

### Ejemplos incorrectos

```text
- Enlazar automáticamente cada zona mencionada
- Crear páginas vacías para zonas citadas
- Tratar una mención como arquitectura
```

### Regla final

```text
La cobertura se menciona primero; la página se aprueba después.
```

## Umbral de expansión — Regla operativa 12

### Explicación

Una Local Coverage Area solo se convierte en Approved Expansion Area si hay demanda, valor comercial, oportunidad competitiva y contenido único. Esta regla protege el sistema de expansión prematura.

### Patrón o fórmula

```text
Cobertura → evaluación → aprobación → fórmula de expansión
```

### Ejemplo correcto con ABC Locksmith

```text
Si Hialeah tiene búsquedas y competidores con páginas locales débiles, ABC Locksmith puede aprobar Hialeah como expansión futura.
```

### Ejemplos incorrectos

```text
- Aprobar todas las zonas por defecto
- Crear expansión sin investigación
- Copiar el contenido de Miami cambiando el nombre de la zona
```

### Regla final

```text
La expansión necesita justificación, no solo cobertura.
```

## Checklist final del Paso 6

| Check | Pregunta | Estado |
|---|---|---|
| Main City | ¿La página mantiene clara la Main City? | ✅ / ⬜ |
| Local Coverage Areas | ¿Las zonas mencionadas representan cobertura real? | ✅ / ⬜ |
| Uso natural | ¿Las áreas aparecen de forma natural y no forzada? | ✅ / ⬜ |
| No URLs innecesarias | ¿No se crearon páginas para áreas no aprobadas? | ✅ / ⬜ |
| No fake office | ¿No se afirma oficina donde no existe? | ✅ / ⬜ |
| FAQs | ¿Las FAQs usan cobertura local cuando aporta valor? | ✅ / ⬜ |
| CTA | ¿El CTA está contextualizado? | ✅ / ⬜ |
| Schema | ¿areaServed refleja cobertura real? | ✅ / ⬜ |
| Internal Links | ¿Solo se enlaza a URLs existentes? | ✅ / ⬜ |
| One service | ¿La página mantiene un solo servicio principal cuando aplica? | ✅ / ⬜ |

## Outputs del Paso 6

- Arquitectura interna por tipo de página
- Reglas de uso de Local Coverage Areas
- Ejemplos de secciones de cobertura
- FAQs modelo
- Reglas anti-error
- Bloques de contenido listos para briefs
- Checklist de cobertura local