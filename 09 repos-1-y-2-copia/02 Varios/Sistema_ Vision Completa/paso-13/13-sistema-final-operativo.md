Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 13 — Sistema Final Operativo

## Índice corto

**Paso 13 — Sistema Final Operativo**

## Objetivo del Paso 13

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: unir los pasos web-first anteriores y dejar preparado el Paso 14 de creación del GBP en un SOP completo, coherente y listo para usar en cualquier web local.
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
Error que previene: tener documentos sueltos sin workflow.
Error que previene: volver a mezclar Target Cities y Secondary Cities en la base.
Error que previene: crear páginas sin fórmula, matriz, contenido, enlaces, QA o tracking.
Error que previene: olvidar que Local Coverage Areas son señales de contenido antes que URLs.
Error que previene: no saber qué output debe producir cada paso.

## Lo que tienes que rellenar

```text
Business Name:

Website Root Domain:

Canonical Domain:

Country:

State / Province:

Main City:

Main City Slug:

Physical Location City:

Full NAP:
- Business Name:
- Street Address:
- City:
- State / Province:
- ZIP / Postal Code:
- Country:
- Phone:
- Email:

GBP URL:

Planned Primary GBP Category:

Primary Category Slug:

Planned Additional GBP Categories:
1.
2.
3.

Servicios principales:
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

Should Local Coverage Areas generate pages?
Default: No.

Approved Expansion Areas:
Optional.
1.
2.
3.

Additional Categories already covered by core services:
1.
2.

Additional Categories that need separate pages:
1.
2.

GeoArticles per Service:
Default: 3

Preferred CTA:

Trust Signals:

Publishing Capacity:

CMS:

Can schema be added?
Yes / No

Can internal links be edited manually?
Yes / No

Tracking Tools:
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
- Email: info@cerrajerosmadrid24h.com

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

Publishing Capacity:
5 pages per week

CMS:
WordPress

Can schema be added?
Yes

Can internal links be edited manually?
Yes

Tracking Tools:
GMB Crush Geo Grid, Google Search Console, GA4
```

# Cuerpo operativo del Paso 13

> **Definición operativa — Local Coverage Areas:** zonas, barrios, distritos o landmarks seleccionados desde la dirección física, la Main City, la coherencia GEO, la proximidad, los datos de búsqueda, los competidores y la lógica GMB Crush para reforzar relevancia local dentro del contenido, schema y futuros análisis. No son automáticamente URLs. No son automáticamente páginas propias. No son necesariamente oficinas físicas. Las Local Coverage Areas se usan primero como señales GEO dentro del contenido. No generan URLs por defecto.

## Sistema 1 — Intake

### Explicación

Recoge entidad, NAP, GBP, Main City, servicios, cobertura local y expansión aprobada.

### Patrón o fórmula

```text
Inputs complete before architecture
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h + Madrid + Almagro/Chamberí/Salamanca/Retiro as coverage
```

### Ejemplos incorrectos

```text
- Empezar sin NAP
- No definir Main City
- No clasificar cobertura
```

### Regla final

```text
El sistema empieza con inputs limpios.
```

## Sistema 2 — Fórmula

### Explicación

Calcula páginas base con una Main City.

### Patrón o fórmula

```text
1 + S + 1 + S + A + G×S
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
1 + 5 + 1 + 5 + 1 + 15 = 28
```

### Ejemplos incorrectos

```text
- 111 páginas en base
- C = target cities
- Coverage areas en fórmula
```

### Regla final

```text
La base usa C = 1 Main City.
```

## Sistema 3 — Matriz Base

### Explicación

Convierte la fórmula en filas accionables.

### Patrón o fórmula

```text
URL Matrix with IDs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
HP-001, SO-001, GH-001, LBS-001, AC-001, GA-001
```

### Ejemplos incorrectos

```text
- URLs sin ID
- Coverage areas con filas
- Sin schema
```

### Regla final

```text
Lo que no está en matriz no entra en producción.
```

## Sistema 4 — URL Rules

### Explicación

Fija patrones limpios y evita canibalización.

### Patrón o fórmula

```text
/category/main-city/service/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- near-me URLs
- best cheap URLs
- Local Coverage URLs sin aprobación
```

### Regla final

```text
Una URL = una intención.
```

## Sistema 5 — Page Type Rules

### Explicación

Define la función de cada tipo de página.

### Patrón o fórmula

```text
Homepage, Service Overview, LBS, AC, GeoHub, GeoArticle
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GeoArticle = booster, not landing
```

### Ejemplos incorrectos

```text
- Confundir service overview con LBS
- GeoHub sin servicios
- Article como landing
```

### Regla final

```text
Cada tipo cumple un rol.
```

## Sistema 6 — Content Architecture

### Explicación

Define cómo se escribe cada página por dentro y cómo se usan Local Coverage Areas.

### Patrón o fórmula

```text
Content blocks + coverage usage
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
H2 Local Coverage Areas Served in /cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Solo formulario
- Sin cuerpo operativo
- Zonas como falsas oficinas
```

### Regla final

```text
El contenido debe tener estructura, no solo campos.
```

## Sistema 7 — Internal Linking

### Explicación

Conecta páginas por jerarquía local.

### Patrón o fórmula

```text
Homepage → Services → GeoHub → LBS → Articles
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/cuanto-cuesta-un-cerrajero-urgente/ links to /cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Páginas huérfanas
- Links a URLs inexistentes
- Solo footer
```

### Regla final

```text
Los enlaces sostienen el silo.
```

## Sistema 8 — Priority Score

### Explicación

Decide qué se publica primero.

### Patrón o fórmula

```text
Revenue + Intent + GBP + Local + Gap + Urgency
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente Madrid = P1
```

### Ejemplos incorrectos

```text
- Todo P1
- Blogs primero
- City Priority en base
```

### Regla final

```text
La prioridad sigue negocio + intención + local.
```

## Sistema 9 — QA

### Explicación

Valida cada página antes de publicar.

### Patrón o fórmula

```text
URL + metadata + schema + links + no false location
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 approved after QA
```

### Ejemplos incorrectos

```text
- Sin QA
- Schema incorrecto
- Fake office
```

### Regla final

```text
Sin QA no se publica.
```

## Sistema 10 — Producción en fases

### Explicación

Organiza publicación en lotes.

### Patrón o fórmula

```text
Entity → Main City Conversion → Articles → Optimization → Expansion
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Semana 1 entity; semana 2 Main City landings
```

### Ejemplos incorrectos

```text
- Expansion first
- Articles first
- No dependencies
```

### Regla final

```text
Publicar por fases evita caos.
```

## Sistema 11 — Pseudocódigo

### Explicación

Convierte el sistema en lógica repetible.

### Patrón o fórmula

```text
Input → Generate → Link → Score → QA → Output
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Local Coverage Areas injected into content, no URLs
```

### Ejemplos incorrectos

```text
- Generar todo manualmente
- Sin dependencias
- Sin outputs
```

### Regla final

```text
El sistema debe poder repetirse.
```

## Sistema 12 — Master Prompt

### Explicación

Permite ejecutar todo el sistema con un prompt maestro.

### Patrón o fórmula

```text
Master Prompt with full outputs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Prompt returns URL Matrix, content architecture, links, QA
```

### Ejemplos incorrectos

```text
- Prompt solo de URLs
- Sin Local Coverage rules
- Sin QA
```

### Regla final

```text
El prompt maestro debe generar el sistema completo.
```


## Índice final del sistema de 13 pasos

```text
1. Intake Form
2. Fórmula maestra de arquitectura
3. Matriz base
4. URL Rules
5. Page Type Rules
6. Estructura de Contenido + Áreas de Cobertura Local
7. Internal Linking Rules
8. Priority Score
9. QA Checklist
10. Producción en fases
11. Pseudocódigo del sistema
12. Master Prompt reutilizable
13. Sistema final operativo
14. GBP Creation & Website Alignment
```

## Principio final de arquitectura

```text
Main City = crea la arquitectura base.
Local Coverage Areas = enriquecen contenido, FAQs, ejemplos locales y schema areaServed.
Approved Expansion Areas = generan URLs propias solo cuando se aprueban.
```

## Fórmula final base

```text
1 Homepage
+ S Service Overview Pages
+ 1 Main City GeoHub
+ S Main City Location-Based Service Pages
+ A Páginas de categoría adicional en la Main City
+ G × S GeoArticles de la Main City
```

## Fórmula aplicada a Cerrajeros Madrid 24h

```text
S = 5
A = 1
G = 3

1 Homepage
+ 5 Service Overview Pages
+ 1 Madrid GeoHub
+ 5 Madrid Service Pages
+ 1 Madrid Additional Category Page
+ 15 Madrid GeoArticles
= 28 páginas SEO base. Adicionalmente, /contacto/ como página auxiliar fuera del inventario SEO base.
```

## URLs base finales para Cerrajeros Madrid 24h

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

Páginas de servicio en la Main City:
/cerrajero/madrid/cerrajero-urgente/
/cerrajero/madrid/apertura-puertas/
/cerrajero/madrid/cambio-cerraduras/
/cerrajero/madrid/cambio-bombines/
/cerrajero/madrid/instalacion-cerraduras-seguridad/

Additional Category:
/cerrajero/madrid/duplicado-llaves/

GeoArticles:
/madrid/cuanto-cuesta-un-cerrajero-urgente/
/madrid/que-hacer-si-no-puedes-entrar-casa/
/madrid/cuanto-tarda-un-cerrajero/
... plus 3 articles per service
```

## Local Coverage Areas en contenido

```text
Almagro
Chamberí
Salamanca
Retiro
```

Se usan en:

```text
Homepage coverage preview
Main City GeoHub coverage section
Location-Based Service intro and coverage section
Additional Category local use cases
GeoArticle local examples
FAQs
Schema areaServed
```

No generan por defecto:

```text
/almagro/
/chamberi/
/salamanca/
/retiro/
```

## Operating workflow completo

```text
1. Recoger inputs
2. Validar entidad, NAP, GBP y Main City
3. Clasificar servicios core
4. Clasificar categorías adicionales
5. Identificar Local Coverage Areas
6. Confirmar si hay Approved Expansion Areas
7. Calcular fórmula base
8. Crear URL Matrix
9. Aplicar URL Rules
10. Asignar Page Type Rules
11. Crear Content Architecture
12. Asignar schema
13. Asignar internal links
14. Calcular Priority Score
15. Asignar publish phase
16. Producir contenido
17. Ejecutar QA
18. Publicar
19. Medir
20. Optimizar
21. Considerar expansión opcional
```

## Carpetas recomendadas del repo

```text
docs/
├── README.md
├── 01-intake-form.md
├── 02-formula-maestra-arquitectura.md
├── 03-matriz-base.md
├── 04-url-rules.md
├── 05-page-type-rules.md
├── 06-estructura-contenido-areas-cobertura-local.md
├── 07-internal-linking-rules.md
├── 08-priority-score.md
├── 09-qa-checklist.md
├── 10-produccion-en-fases.md
├── 11-pseudocodigo-sistema.md
├── 12-master-prompt.md
├── 13-sistema-final-operativo.md
└── gmb-crush-sistema-completo-estilo-literal-13-pasos.md
```

#
## Relación con el Paso 14

### Explicación

El Paso 13 cierra el sistema web. No crea el GBP todavía. Su función es comprobar que la web está lista para servir como fuente de verdad antes de crear el perfil. El Paso 14 ejecuta la creación y sincronización del GBP.

### Patrón o fórmula

```text
Paso 13 = website operating system complete
Paso 14 = GBP creation and website alignment
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Paso 13 entrega:
- Homepage lista
- Service Overview Pages listas
- /madrid/ listo
- páginas /cerrajero/madrid/service/ listas
- schema sin sameAs de GBP
- QA aprobado

Paso 14 ejecuta:
- creación del GBP
- categoría Cerrajero
- servicios del perfil
- actualización de sameAs
```

### Ejemplos incorrectos

```text
- Tratar el Paso 13 como si ya existiera GBP.
- Cerrar el sistema sin plan para crear el GBP.
- Añadir Google reviews o GBP URL antes del Paso 14.
```

### Regla final

```text
El sistema web termina en el Paso 13; la entidad GBP se crea y sincroniza en el Paso 14.
```

# Output final que debe producir el sistema

```text
1. Ficha completa del negocio
2. Fórmula de páginas base
3. URL Matrix completa
4. Page Type Rules
5. Content Architecture
6. Schema Map
7. Internal Linking Map
8. Priority Score
9. Publishing Plan
10. QA Checklist
11. Tracking Plan
12. Optimization Queue
13. Optional Expansion Plan
```

## Módulo A — Entidad y GBP

### Explicación

La entidad debe estar clara antes de crear cualquier página. El GBP define categoría principal, NAP, ubicación física y señales de confianza.

### Patrón o fórmula

```text
Business + GBP + NAP → entity base
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h + Cerrajero + Madrid + Calle Rafael Calvo 12
```

### Ejemplos incorrectos

```text
- Crear páginas sin GBP category
- NAP inconsistente
- Marca distinta en schema
```

### Regla final

```text
La entidad se valida antes de la arquitectura.
```

## Módulo B — Servicios core

### Explicación

Los servicios core generan Service Overview Pages y Location-Based Service Pages.

### Patrón o fórmula

```text
Core Service → SO + LBS
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente → /cerrajero/cerrajero-urgente/ + /cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Servicio sin página
- Servicio agrupado en página general
- Servicio inventado
```

### Regla final

```text
Cada servicio core importante tiene estructura completa.
```

## Módulo C — Categorías adicionales

### Explicación

Las categorías adicionales se consolidan o se convierten en página.

### Patrón o fórmula

```text
Additional Category → covered or AC page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Duplicado de llaves → /cerrajero/madrid/duplicado-llaves/
```

### Ejemplos incorrectos

```text
- Duplicate urgente page
- Ignoring additional categories
- Category with no GBP relation
```

### Regla final

```text
Cada categoría GBP tiene soporte sin duplicación.
```

## Módulo D — Cobertura local

### Explicación

Las Local Coverage Areas son cobertura real y contexto GEO.

### Patrón o fórmula

```text
Coverage → content + areaServed
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca, Retiro mencionadas de forma natural
```

### Ejemplos incorrectos

```text
- Coverage URLs by default
- Fake offices
- Unnatural lists
```

### Regla final

```text
Cobertura local primero en contenido.
```

## Módulo E — Expansión aprobada

### Explicación

La expansión se activa solo cuando una zona lo merece.

### Patrón o fórmula

```text
Approved Expansion → optional URLs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro expansion later if approved
```

### Ejemplos incorrectos

```text
- All zones expanded
- Expansion before base
- No demand
```

### Regla final

```text
La expansión es posterior y justificada.
```

## Módulo F — Schema

### Explicación

Schema ayuda a estructurar entidad, servicios, ciudad, cobertura y artículos.

### Patrón o fórmula

```text
Page Type → Schema Type
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS → LocalBusiness with areaServed
```

### Ejemplos incorrectos

```text
- Same schema everywhere
- False address
- No schema
```

### Regla final

```text
Schema debe coincidir con tipo de página.
```

## Módulo G — Tracking

### Explicación

El sistema se mide después de publicar.

### Patrón o fórmula

```text
GMB Crush + GSC + GA4
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Track urgente cerrajero Madrid and page performance
```

### Ejemplos incorrectos

```text
- No tracking
- No refresh
- No grid review
```

### Regla final

```text
Sin medición no hay optimización.
```

## Sistema empieza por entidad — Regla operativa 1

### Explicación

El SOP final debe dejar claro que todo empieza con la entidad: negocio, NAP, GBP, categoría, Main City, servicios y cobertura real. Sin entidad, no hay arquitectura confiable.

### Patrón o fórmula

```text
Entity inputs → architecture → content → links → QA
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h define nombre, NAP, Cerrajero como categoría, Madrid como Main City y servicios core antes de crear URLs.
```

### Ejemplos incorrectos

```text
- Crear URLs antes del intake
- No validar GBP category
- No definir ubicación física
```

### Regla final

```text
La entidad manda sobre la arquitectura.
```

## Arquitectura base de una Main City — Regla operativa 2

### Explicación

El sistema final debe consagrar la versión simplificada: una Main City crea la base, Local Coverage Areas enriquecen contenido y Approved Expansion Areas crean URLs solo después.

### Patrón o fórmula

```text
Main City base | Coverage content | Expansion optional
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h crea base en Madrid y usa Almagro, Chamberí, Salamanca y Retiro como cobertura textual.
```

### Ejemplos incorrectos

```text
- Volver a target cities como base
- Crear páginas para toda cobertura
- No diferenciar expansión
```

### Regla final

```text
La base local se construye alrededor de una Main City.
```

## Matriz como centro operativo — Regla operativa 3

### Explicación

El sistema final debe tratar la URL Matrix como fuente de verdad. Todas las decisiones de contenido, links, schema, prioridad y QA deben referirse a ella.

### Patrón o fórmula

```text
URL Matrix → briefs → production → QA
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 en la matriz define URL, H1, schema, links, priority y status antes de redactar.
```

### Ejemplos incorrectos

```text
- Crear contenido fuera de la matriz
- Cambiar URL sin actualizar matriz
- No registrar status
```

### Regla final

```text
Si no está en la matriz, no existe en producción.
```

## Contenido por page type — Regla operativa 4

### Explicación

El SOP final debe mantener que cada page type tiene estructura propia. Esto impide escribir todas las páginas con el mismo molde.

### Patrón o fórmula

```text
Page Type → content architecture → QA
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GeoHub de Madrid lista servicios y cobertura; GeoArticle de coste explica un tema long-tail; Service Overview no menciona cobertura.
```

### Ejemplos incorrectos

```text
- Usar el mismo texto para todos los tipos
- Convertir GeoArticles en landings
- Usar Service Overview como página local
```

### Regla final

```text
La forma del contenido depende de la función de la página.
```

## Local Coverage Areas como contexto — Regla operativa 5

### Explicación

Las áreas de cobertura local deben quedar integradas en contenido, FAQs, ejemplos y schema areaServed. No son un apéndice ni un motor automático de URLs.

### Patrón o fórmula

```text
Coverage real → content blocks + schema | no URLs base
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa Almagro y Chamberí en secciones de cobertura y FAQs, no como GeoHubs base.
```

### Ejemplos incorrectos

```text
- No mencionar cobertura real
- Crear páginas de cobertura sin aprobación
- Afirmar oficina en coverage areas
```

### Regla final

```text
La cobertura local refuerza, no multiplica por defecto.
```

## Internal linking como distribución de autoridad — Regla operativa 6

### Explicación

El sistema final debe dejar claro que el enlazado no es decoración. Define cómo fluye autoridad desde homepage hasta servicios, GeoHub, landings y artículos.

### Patrón o fórmula

```text
Homepage → Services / GeoHub → LBS → GeoArticles → back
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h enlaza /madrid/cuanto-cuesta-un-cerrajero-urgente/ hacia /cerrajero/madrid/cerrajero-urgente/ y /madrid/.
```

### Ejemplos incorrectos

```text
- Páginas huérfanas
- Enlaces solo en footer
- Anchors repetidos o genéricos
```

### Regla final

```text
Cada página debe tener enlaces entrantes y salientes útiles.
```

## Schema como claridad de entidad — Regla operativa 7

### Explicación

El schema final debe explicar entidad, servicio, ubicación, cobertura y contenido. Debe ser coherente con NAP y no simular ubicaciones.

### Patrón o fórmula

```text
Page Type → schema → NAP/areaServed validation
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LocalBusiness usa address de Madrid y areaServed para cobertura real.
```

### Ejemplos incorrectos

```text
- Schema con dirección falsa
- Omitir Service schema
- No usar Article schema en GeoArticles
```

### Regla final

```text
Schema debe ser coherente, válido y verdadero.
```

## Priority Score como decisión de producción — Regla operativa 8

### Explicación

El score debe ordenar producción, no reemplazar criterio. Se combina con dependencias y fases para evitar publicar páginas fuera de orden.

### Patrón o fórmula

```text
Score + dependencies + phase → publish order
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente Madrid se prioriza antes que un artículo informativo de bajo valor.
```

### Ejemplos incorrectos

```text
- Publicar por score sin parent
- No valorar GBP relevance
- Dar prioridad a zonas no aprobadas
```

### Regla final

```text
La prioridad debe convertirse en calendario, no en caos.
```

## QA como puerta de publicación — Regla operativa 9

### Explicación

El SOP final debe exigir QA antes de publicar. Esta puerta detecta errores de URL, contenido, schema, links, NAP, canibalización y ubicación falsa.

### Patrón o fórmula

```text
Ready for QA → checklist → Approved → Published
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h no publica /cerrajero/madrid/duplicado-llaves/ hasta validar schema Service, links y no duplicación.
```

### Ejemplos incorrectos

```text
- Publicar sin revisión
- No comprobar enlaces
- No revisar canibalización
```

### Regla final

```text
No hay publicación sin QA.
```

## Producción en fases — Regla operativa 10

### Explicación

Las fases protegen el orden lógico: entidad, conversión, semántica, optimización y expansión opcional. Sin fases, el sistema puede construir artículos antes de las páginas que deben apoyar.

### Patrón o fórmula

```text
Phase 1 → Phase 2 → Phase 3 → Phase 4 → Phase 5 optional
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h publica primero homepage y servicios, luego Madrid landings, luego GeoArticles.
```

### Ejemplos incorrectos

```text
- Empezar por expansión
- Publicar artículos sin landing
- No cerrar Phase 1 antes de Phase 2
```

### Regla final

```text
Las fases convierten arquitectura en ejecución controlada.
```

## Tracking como ciclo de mejora — Regla operativa 11

### Explicación

El sistema no termina al publicar. GSC, geo-grid, leads y comportamiento deben alimentar mejoras de contenido, metadata, links y expansión.

### Patrón o fórmula

```text
Publish → measure → optimize → refresh
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si /cerrajero/madrid/apertura-puertas/ tiene impresiones pero bajo CTR, Cerrajeros Madrid 24h ajusta title y meta.
```

### Ejemplos incorrectos

```text
- No medir después de publicar
- No optimizar páginas con oportunidades
- No refrescar artículos
```

### Regla final

```text
Publicar es el inicio del ciclo de optimización.
```

## Expansion Areas con gobernanza — Regla operativa 12

### Explicación

La expansión debe tener criterios y aprobación. Esto evita crear páginas por ambición territorial antes de que la Main City esté sólida.

### Patrón o fórmula

```text
Coverage → evidence → approval → expansion pages
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro solo genera URLs si se aprueba por demanda, valor y capacidad de contenido único.
```

### Ejemplos incorrectos

```text
- Expandir por intuición
- Copiar páginas de Madrid
- No medir la base antes de expandir
```

### Regla final

```text
La expansión requiere evidencia y control.
```

## IA como operador del sistema — Regla operativa 13

### Explicación

Si una IA usa estos documentos, debe operar con matrices, reglas y QA, no improvisar. El SOP final debe ser suficientemente explícito para generar outputs repetibles.

### Patrón o fórmula

```text
Prompt → inputs → matrices → QA → outputs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El Master Prompt genera URL Matrix, Schema Map, Internal Linking Map y Publishing Plan para Cerrajeros Madrid 24h.
```

### Ejemplos incorrectos

```text
- Pedir contenido suelto sin matriz
- No pasar QA a outputs de IA
- Permitir que la IA cree URLs no aprobadas
```

### Regla final

```text
La IA debe seguir el sistema, no inventarlo.
```

## No negociables finales — Regla operativa 14

### Explicación

El SOP final debe cerrar con reglas que nunca se rompen: no mezclar servicios, no mezclar ciudades, no false locations, no páginas huérfanas, no artículos sin destino y no duplicación.

### Patrón o fórmula

```text
Non-negotiables → QA → governance
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h mantiene una página para Cerrajero urgente en Madrid y un artículo de costes separado que la apoya.
```

### Ejemplos incorrectos

```text
- Una landing con 5 servicios
- Una página que apunta a varias ciudades
- GeoArticle que compite con la landing
```

### Regla final

```text
Las reglas no negociables protegen el sistema completo.
```

## Documentación del cambio — Regla operativa 15

### Explicación

Cada cambio importante debe registrarse: nuevas páginas, expansión aprobada, actualización de fórmula, cambios de schema o nuevos enlaces. Esto hace que el sistema sea mantenible.

### Patrón o fórmula

```text
Change → reason → matrix update → QA
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Cerrajeros Madrid 24h aprueba Almagro como expansión, se registra en matriz, fórmula y publishing plan.
```

### Ejemplos incorrectos

```text
- Crear páginas nuevas sin registro
- Cambiar slugs sin documentar
- No actualizar enlaces tras expansión
```

### Regla final

```text
Todo cambio debe quedar documentado en la matriz y el plan.
```

## Sistema final como fuente única — Regla operativa 16

### Explicación

El documento final debe reunir los pasos, pero no sustituye los archivos individuales. Sirve como mapa global y fuente de consulta para entender cómo se conectan las piezas.

### Patrón o fórmula

```text
13 pasos → sistema completo → ejecución por documentos
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa el sistema final para entender el flujo y los pasos individuales para ejecutar cada parte.
```

### Ejemplos incorrectos

```text
- Usar solo el resumen final para producir páginas
- No consultar el Paso 6 al escribir contenido
- No consultar QA antes de publicar
```

### Regla final

```text
El sistema final coordina; los pasos individuales ejecutan.
```

## Checklist final del Paso 13

| Check | Pregunta | Estado |
|---|---|---|
| 13 pasos | ¿El sistema final incluye los 13 pasos? | ✅ / ⬜ |
| Main City | ¿La base se construye sobre una sola Main City? | ✅ / ⬜ |
| Local Coverage | ¿Las áreas de cobertura no generan URLs por defecto? | ✅ / ⬜ |
| Expansion | ¿La expansión está separada y aprobada? | ✅ / ⬜ |
| Formula | ¿La fórmula base está actualizada? | ✅ / ⬜ |
| Matrix | ¿La URL Matrix tiene todos los tipos de página? | ✅ / ⬜ |
| Content | ¿El Paso 6 cubre estructura interna de contenido? | ✅ / ⬜ |
| Links | ¿El Paso 7 conecta todos los tipos de página? | ✅ / ⬜ |
| Score | ¿El Paso 8 usa Local Relevance? | ✅ / ⬜ |
| QA | ¿El Paso 9 valida no fake location y no canibalización? | ✅ / ⬜ |
| Phases | ¿El Paso 10 publica por dependencias? | ✅ / ⬜ |
| Prompt | ¿El Paso 12 genera todo el sistema? | ✅ / ⬜ |
| Output | ¿El sistema final produce matrices, briefs, QA y roadmap? | ✅ / ⬜ |

## Outputs del Paso 13

- SOP final de 13 pasos
- Índice definitivo
- Fórmula final base
- Arquitectura Cerrajeros Madrid 24h aplicada
- Workflow operativo completo
- Reglas no negociables
- Checklist final del sistema
- Output final esperado para cualquier negocio local

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



### GeoArticles completos (15)

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



### Inventario SEO base — Priority Score completo

| # | URL | Tipo | Priority Score |
|---|-----|------|----------------|
| 1 | / | Homepage | 100 |
| 2 | /cerrajero/cerrajero-urgente/ | Service Overview | 90 |
| 3 | /cerrajero/apertura-puertas/ | Service Overview | 88 |
| 4 | /cerrajero/cambio-cerraduras/ | Service Overview | 86 |
| 5 | /cerrajero/cambio-bombines/ | Service Overview | 84 |
| 6 | /cerrajero/instalacion-cerraduras-seguridad/ | Service Overview | 82 |
| 7 | /madrid/ | GeoHub | 95 |
| 8 | /cerrajero/madrid/cerrajero-urgente/ | LBS | 92 |
| 9 | /cerrajero/madrid/apertura-puertas/ | LBS | 88 |
| 10 | /cerrajero/madrid/cambio-cerraduras/ | LBS | 85 |
| 11 | /cerrajero/madrid/cambio-bombines/ | LBS | 83 |
| 12 | /cerrajero/madrid/instalacion-cerraduras-seguridad/ | LBS | 80 |
| 13 | /cerrajero/madrid/duplicado-llaves/ | Additional Category | 75 |
| 14 | /madrid/cuanto-cuesta-un-cerrajero-urgente/ | GeoArticle | 70 |
| 15 | /madrid/que-hacer-si-no-puedes-entrar-casa/ | GeoArticle | 68 |
| 16 | /madrid/cuanto-tarda-un-cerrajero/ | GeoArticle | 65 |
| 17 | /madrid/cuanto-cuesta-abrir-una-puerta/ | GeoArticle | 64 |
| 18 | /madrid/que-hacer-si-te-dejas-las-llaves-dentro/ | GeoArticle | 62 |
| 19 | /madrid/apertura-de-puertas-sin-romper-cerradura/ | GeoArticle | 60 |
| 20 | /madrid/cuando-cambiar-la-cerradura-de-casa/ | GeoArticle | 58 |
| 21 | /madrid/cambio-de-cerradura-tras-perder-llaves/ | GeoArticle | 56 |
| 22 | /madrid/cerradura-nueva-o-reparacion/ | GeoArticle | 54 |
| 23 | /madrid/cuando-cambiar-el-bombin/ | GeoArticle | 52 |
| 24 | /madrid/bombin-antibumping-madrid/ | GeoArticle | 50 |
| 25 | /madrid/cambio-de-bombin-sin-cambiar-cerradura/ | GeoArticle | 48 |
| 26 | /madrid/mejores-cerraduras-de-seguridad-para-viviendas/ | GeoArticle | 46 |
| 27 | /madrid/cerraduras-de-seguridad-para-comunidades/ | GeoArticle | 44 |
| 28 | /madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/ | GeoArticle | 42 |
| — | /contacto/ | Auxiliar | Sin score SEO |

> Cada URL SEO del inventario base debe tener prioridad asignada.


### Inventario SEO base — Estado QA

| # | URL | Tipo | QA Status |
|---|-----|------|-----------|
| 1 | / | Homepage | Pending |
| 2 | /cerrajero/cerrajero-urgente/ | Service Overview | Pending |
| 3 | /cerrajero/apertura-puertas/ | Service Overview | Pending |
| 4 | /cerrajero/cambio-cerraduras/ | Service Overview | Pending |
| 5 | /cerrajero/cambio-bombines/ | Service Overview | Pending |
| 6 | /cerrajero/instalacion-cerraduras-seguridad/ | Service Overview | Pending |
| 7 | /madrid/ | GeoHub | Pending |
| 8 | /cerrajero/madrid/cerrajero-urgente/ | LBS | Pending |
| 9 | /cerrajero/madrid/apertura-puertas/ | LBS | Pending |
| 10 | /cerrajero/madrid/cambio-cerraduras/ | LBS | Pending |
| 11 | /cerrajero/madrid/cambio-bombines/ | LBS | Pending |
| 12 | /cerrajero/madrid/instalacion-cerraduras-seguridad/ | LBS | Pending |
| 13 | /cerrajero/madrid/duplicado-llaves/ | Additional Category | Pending |
| 14-28 | 15 GeoArticles | GeoArticle | Pending |
| — | /contacto/ | Auxiliar | Pending |

> Ninguna URL se publica sin QA, aunque el documento muestre solo un ejemplo desarrollado.


### Calendario de producción completo

**Fase 1 — Estructura base (Semana 1-2):**
- / (Homepage)
- /contacto/
- /madrid/ (GeoHub)
- /cerrajero/madrid/cerrajero-urgente/ (LBS principal)
- /cerrajero/madrid/apertura-puertas/ (LBS)

**Fase 2 — Servicios core (Semana 2-3):**
- /cerrajero/madrid/cambio-cerraduras/ (LBS)
- /cerrajero/madrid/cambio-bombines/ (LBS)
- /cerrajero/madrid/instalacion-cerraduras-seguridad/ (LBS)
- /cerrajero/madrid/duplicado-llaves/ (Additional Category)

**Fase 3 — Service Overview Pages (Semana 3-4):**
- /cerrajero/cerrajero-urgente/
- /cerrajero/apertura-puertas/
- /cerrajero/cambio-cerraduras/
- /cerrajero/cambio-bombines/
- /cerrajero/instalacion-cerraduras-seguridad/

**Fase 4 — GeoArticles lote 1 (Semana 4-5):**
- /madrid/cuanto-cuesta-un-cerrajero-urgente/
- /madrid/que-hacer-si-no-puedes-entrar-casa/
- /madrid/cuanto-tarda-un-cerrajero/
- /madrid/cuanto-cuesta-abrir-una-puerta/
- /madrid/que-hacer-si-te-dejas-las-llaves-dentro/

**Fase 5 — GeoArticles lote 2 (Semana 5-6):**
- /madrid/apertura-de-puertas-sin-romper-cerradura/
- /madrid/cuando-cambiar-la-cerradura-de-casa/
- /madrid/cambio-de-cerradura-tras-perder-llaves/
- /madrid/cerradura-nueva-o-reparacion/
- /madrid/cuando-cambiar-el-bombin/

**Fase 6 — GeoArticles lote 3 (Semana 6-7):**
- /madrid/bombin-antibumping-madrid/
- /madrid/cambio-de-bombin-sin-cambiar-cerradura/
- /madrid/mejores-cerraduras-de-seguridad-para-viviendas/
- /madrid/cerraduras-de-seguridad-para-comunidades/
- /madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/

**Fase 7 — GBP y sincronización (Semana 7-8):**
- Paso 14: Crear GBP
- Verificar GBP
- Sincronizar web con GBP (schema sameAs, trust signals, contacto)

> El calendario debe cubrir todo el inventario base o declararse como calendario parcial.
