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

Servicios principales:
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
Cerrajeros Madrid 24h

Primary GBP Category:
Cerrajero

Primary Category Slug:
cerrajero

Main City:
Madrid

Main City Slug:
madrid

Physical Location City:
Madrid

Servicios principales:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de cerraduras
4. Cambio de bombines
5. Instalación de cerraduras de seguridad

Primary Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca

Additional Local Coverage Areas:
1. Retiro

Should Local Coverage Areas generate pages?
No, not in the base build.

Approved Expansion Areas:
None in Phase 1.

Service Page URL to structure:
/cerrajero/madrid/cerrajero-urgente/

Page Type:
Location-Based Service

Target Service:
Cerrajero urgente

Target Additional Category:
Servicio de cerrajería de urgencia is already covered by this service.

Matching Parent Page:
/cerrajero/cerrajero-urgente/

Matching GeoHub:
/madrid/

Related GeoArticles:
1. /madrid/guia-precios-cerrajero-urgente/
2. /madrid/que-hacer-si-no-puedes-entrar-casa/
3. /madrid/cuanto-tarda-un-cerrajero/

Preferred CTA:
Llamar ahora

Trust Signals:
- 10+ años de experiencia
- 250+ reseñas de Google
- Técnicos cerrajeros cualificados
- Servicio móvil en el mismo día

Can the page mention physical office in this area?
Only for Madrid, not for Local Coverage Areas unless true.
```

# Cuerpo operativo del Paso 6

## Principio 1 — Main City crea arquitectura

### Explicación

La Main City es la ciudad principal que genera URLs base. Todo el sistema base se organiza alrededor de esa ciudad.

### Patrón o fórmula

```text
Main City → /city/ + /category/city/service/ + /city/article-topic/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Madrid genera /madrid/ y /cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Almagro genera URL sin aprobación
- Salamanca se usa como Main City en una página de Madrid
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca y Retiro se mencionan en secciones de cobertura
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro podría generar /almagro/ en una fase futura si se aprueba
```

### Ejemplos incorrectos

```text
- Aprobar todas las zonas
- Crear expansión antes de terminar Madrid
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Se menciona Almagro dentro de /cerrajero/madrid/cerrajero-urgente/ sin enlazar a /almagro/
```

### Ejemplos incorrectos

```text
- Crear enlaces a URLs inexistentes
- Usar la zona en breadcrumbs
- Crear páginas por presión de llaveword
```

### Regla final

```text
Mencionar una zona no significa crear una URL.
```

## Principio 5 — No falsa ubicación

### Explicación

Si la oficina física está en Madrid, no se afirma oficina en Almagro, Salamanca o Retiro.

### Patrón o fórmula

```text
Service coverage ≠ physical presence
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Atendemos clientes en Salamanca
```

### Ejemplos incorrectos

```text
- Nuestra oficina en Salamanca
- Visita nuestra tienda en Almagro
- Schema address en Chamberí
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
Servicios principales
Vista previa de cobertura local
Bloques de confianza
Sección FAQ
Bloque NAP
CTA
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

La homepage puede mencionar 3–5 Local Coverage Areas de forma ligera, normalmente en un bloque de service area preview. No debe convertirse en una lista masiva de zonas ni usar las áreas de cobertura como sustituto de la Main City.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
H1: Cerrajeros Madrid 24h – Servicios de cerrajería de confianza en Madrid
Vista previa de cobertura local: Atendemos clientes en Madrid y zonas de cobertura como Almagro, Chamberí, Salamanca y Retiro según disponibilidad.
Enlaces a servicios principales: /cerrajero/cerrajero-urgente/, /cerrajero/apertura-puertas/, /cerrajero/cambio-bombines/
Enlace al GeoHub: /madrid/
```

### Ejemplos incorrectos

```text
- Homepage con 30 zonas listadas sin contexto
- Homepage orientada a Almagro, Salamanca y Retiro al mismo nivel que Madrid
- Homepage sin Servicios principales
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
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

No se usan Local Coverage Areas. Esta página no debe mencionar Madrid, Almagro, Salamanca ni ninguna zona como target principal. Su función es ser pilar temático del servicio.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL: /cerrajero/cerrajero-urgente/
Intro: Cerrajeros Madrid 24h provides professional urgente servicios de cerrajería for urgente aperturas urgentes, llaves rotas and access problems.
No local targeting.
Internal link to local version: /cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Mencionar Almagro en el H1
- Crear un bloque de cobertura local en service overview
- Usar /madrid/ como target principal
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
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

Sí se usan Local Coverage Areas. Deben aparecer de forma natural en la intro, en una sección de cobertura, en ejemplos locales y en FAQs. La página sigue siendo de Main City, no de cada área mencionada.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL: /cerrajero/madrid/cerrajero-urgente/
H2: Ayuda de cerrajero urgente en Madrid y áreas de cobertura local
Texto: Cerrajeros Madrid 24h ayuda a clientes en Madrid con aperturas urgentes, llaves rotas y problemas de acceso. También atendemos zonas de cobertura como Almagro, Chamberí, Salamanca y Retiro cuando el servicio está disponible.
FAQ: ¿Ofrecéis cerrajero urgente en Almagro y Chamberí?
Respuesta: Sí, atendemos esas zonas según disponibilidad, mientras esta página sigue enfocada en el servicio de cerrajero urgente en Madrid.
```

### Ejemplos incorrectos

```text
- H1: Cerrajero urgente en Almagro, Madrid y Salamanca
- Create one paragraph for each area with duplicated text
- Claim office in Retiro
- Link to /almagro/ when that URL does not exist
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
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

Las Local Coverage Areas se usan para explicar casos de uso locales relacionados con la categoría adicional. No deben crear páginas propias si no están aprobadas.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL: /cerrajero/madrid/duplicado-llaves/
H2: Duplicado de llaves en zonas de cobertura de Madrid
Texto: Clientes en Madrid y zonas como Almagro, Chamberí y Salamanca pueden necesitar llaves de repuesto para familiares, empleados, inquilinos o accesos urgentes.
Enlaces: /madrid/, /cerrajero/madrid/cambio-cerraduras/, /cerrajero/madrid/instalacion-cerraduras-seguridad/
```

### Ejemplos incorrectos

```text
- Crear /cerrajero/almagro/duplicado-llaves/ sin aprobación
- No conectar con GeoHub
- Tratar duplicado de llaves como servicio core si no está definido
- Copiar contenido de la página de cambio de bombines
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
Menú de servicios
Additional Category Menu
Local Coverage Areas Section
GeoArticle Resources
Trust Signals
CTA
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

El GeoHub es el lugar más natural para una sección explícita de Local Coverage Areas. Aquí se puede explicar la cobertura de la empresa sin crear URLs por cada zona.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL: /madrid/
H2: Zonas de cobertura de cerrajería en Madrid
Texto: Cerrajeros Madrid 24h provides servicios de cerrajería en Madrid and local coverage areas such as Almagro, Chamberí, Salamanca and Retiro. Estas áreas representan cobertura real y ayudan al usuario a entender dónde puede estar disponible el servicio.
Menú de servicios: urgente, apertura de puertas, cambio de cerraduras, cambio de bombines, cambio de bombines.
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
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

Las Local Coverage Areas se usan como ejemplos semánticos y contexto real. No se usan para fingir presencia física ni para crear intención principal distinta.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL: /madrid/guia-precios-cerrajero-urgente/
Texto: El precio de un cerrajero urgente en Madrid puede variar según el tipo de cerradura, la hora, la urgencia y la zona de cobertura. Una apertura sencilla en un piso de Madrid puede ser diferente de un aviso nocturno en Almagro, Chamberí o Salamanca según disponibilidad y condiciones de desplazamiento.
Enlaces: /cerrajero/madrid/cerrajero-urgente/, /madrid/, /madrid/que-hacer-si-no-puedes-entrar-casa/
```

### Ejemplos incorrectos

```text
- Article targeting Almagro as primary location without page
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
Madrid

Service:
Cerrajero urgente

Primary Local Coverage Areas:
Almagro, Chamberí, Salamanca

Additional Local Coverage Areas:
Retiro

URL:
/cerrajero/madrid/cerrajero-urgente/

Sección:
H2: Cerrajero urgente en Madrid and Nearby Coverage Areas

Texto:
Cerrajeros Madrid 24h ayuda a clientes en Madrid con aperturas urgentes, llaves rotas, cambios de bombín y problemas de acceso. También atendemos zonas de cobertura como Almagro, Chamberí, Salamanca y Retiro según disponibilidad. Estas zonas ayudan a aclarar la cobertura real mientras la página sigue enfocada en el servicio de cerrajero urgente en Madrid.
```

## FAQ ejemplo

```text
Pregunta:
¿Ofrecéis cerrajero urgente en Almagro, Chamberí y Salamanca?

Respuesta:
Sí. Cerrajeros Madrid 24h atiende clientes en Madrid y zonas de cobertura como Almagro, Chamberí y Salamanca según disponibilidad. Esta página se centra en el servicio de cerrajero urgente en Madrid y aclara la cobertura local real.
```

## Homepage con cobertura ligera — Regla operativa 1

### Explicación

La homepage puede mencionar Local Coverage Areas, pero no debe convertirse en una lista interminable de zonas. Su prioridad sigue siendo entidad, categoría GBP, Main City, servicios, NAP y confianza.

### Patrón o fórmula

```text
Homepage → Main City primero → 3–5 coverage areas como preview
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h menciona que atiende Madrid y zonas como Almagro, Chamberí, Salamanca y Retiro, pero el H1 se mantiene centrado en Madrid.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La página /cerrajero/apertura-puertas/ explica Apertura de puertas sin mencionar Almagro o Chamberí como targets.
```

### Ejemplos incorrectos

```text
- Meter una sección de zonas en Service Overview
- Usar H1 Apertura de puertas en Madrid en /cerrajero/apertura-puertas/
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La intro de /cerrajero/madrid/cerrajero-urgente/ menciona aperturas urgentes en Madrid y puede citar Almagro o Chamberí como cobertura cercana.
```

### Ejemplos incorrectos

```text
- Abrir con una lista de zonas en vez de problema del usuario
- No mencionar Madrid en la intro
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h incluye un H2: Soporte de cerrajería en Madrid y zonas de cobertura cercanas, mencionando Almagro, Chamberí, Salamanca y Retiro.
```

### Ejemplos incorrectos

```text
- Convertir cada área en enlace inexistente
- Usar la sección para ocultar llaveword stuffing
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
En /cerrajero/madrid/duplicado-llaves/, Cerrajeros Madrid 24h menciona spare llaves para hogares y negocios en Madrid y zonas de cobertura cercanas.
```

### Ejemplos incorrectos

```text
- Crear una página de duplicado de llaves para cada área sin aprobación
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
En /madrid/, Cerrajeros Madrid 24h lista servicios en Madrid y una sección de cobertura con Almagro, Chamberí, Salamanca y Retiro.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
En /madrid/guia-precios-cerrajero-urgente/, Cerrajeros Madrid 24h explica que el coste puede variar según tipo de apertura urgente y zona de cobertura.
```

### Ejemplos incorrectos

```text
- Escribir el artículo como landing de Almagro
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa 250+ reseñas de Google en homepage y en /cerrajero/madrid/cerrajero-urgente/ como prueba local.
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

Las FAQs pueden mencionar Local Coverage Areas si responden preguntas reales de usuarios. Deben sonar naturales y no funcionar como llaveword stuffing de zonas.

### Patrón o fórmula

```text
Pregunta real → Main City + coverage area → respuesta útil
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
¿Atendéis emergencias de cerrajería en Almagro y Chamberí? Sí, Cerrajeros Madrid 24h atiende solicitudes en Madrid y zonas de cobertura cercanas según disponibilidad.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa Madrid como address si es su ubicación y puede incluir Almagro, Chamberí, Salamanca y Retiro en areaServed.
```

### Ejemplos incorrectos

```text
- Poner Almagro como address sin sede
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h menciona Retiro como cobertura, pero no crea /retiro/ en la base.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Almagro tiene búsquedas y competidores con páginas locales débiles, Cerrajeros Madrid 24h puede aprobar Almagro como expansión futura.
```

### Ejemplos incorrectos

```text
- Aprobar todas las zonas por defecto
- Crear expansión sin investigación
- Copiar el contenido de Madrid cambiando el nombre de la zona
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
| Enlaces internos | ¿Solo se enlaza a URLs existentes? | ✅ / ⬜ |
| One service | ¿La página mantiene un solo servicio principal cuando aplica? | ✅ / ⬜ |

## Outputs del Paso 6

- Arquitectura interna por tipo de página
- Reglas de uso de Local Coverage Areas
- Ejemplos de secciones de cobertura
- FAQs modelo
- Reglas anti-error
- Bloques de contenido listos para briefs
- Checklist de cobertura local

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

