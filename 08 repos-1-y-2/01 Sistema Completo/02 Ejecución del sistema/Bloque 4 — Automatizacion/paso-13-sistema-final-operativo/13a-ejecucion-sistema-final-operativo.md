Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# §1 Paso 13 — Sistema Final Operativo

## §2 Índice corto

**Paso 13 — Sistema Final Operativo**

## §3 Objetivo del Paso 13

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

## §4 Lo que tienes que rellenar

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

## §5 Ejemplo rellenado

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

# §6 Cuerpo operativo del Paso 13

> **Definición operativa — Local Coverage Areas:** zonas, barrios, distritos o landmarks seleccionados desde la dirección física, la Main City, la coherencia GEO, la proximidad, los datos de búsqueda, los competidores y la lógica GMB Crush para reforzar relevancia local dentro del contenido, schema y futuros análisis. No son automáticamente URLs. No son automáticamente páginas propias. No son necesariamente oficinas físicas. Las Local Coverage Areas se usan primero como señales GEO dentro del contenido. No generan URLs por defecto.

## §7 Sistema 1 — Intake

### §7.1 Explicación

Recoge entidad, NAP, GBP, Main City, servicios, cobertura local y expansión aprobada.

### §7.2 Patrón o fórmula

```text
Inputs complete before architecture
```

### §7.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h + Madrid + Almagro/Chamberí/Salamanca/Retiro as coverage
```

### §7.4 Ejemplos incorrectos

```text
- Empezar sin NAP
- No definir Main City
- No clasificar cobertura
```

### §7.5 Regla final

```text
El sistema empieza con inputs limpios.
```

## §8 Sistema 2 — Fórmula

### §8.1 Explicación

Calcula páginas base con una Main City.

### §8.2 Patrón o fórmula

```text
1 + S + 1 + S + A + G×S
```

### §8.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
1 + 5 + 1 + 5 + 1 + 15 = 28
```

### §8.4 Ejemplos incorrectos

```text
- 111 páginas en base
- C = target cities
- Coverage areas en fórmula
```

### §8.5 Regla final

```text
La base usa C = 1 Main City.
```

## §9 Sistema 3 — Matriz Base

### §9.1 Explicación

Convierte la fórmula en filas accionables.

### §9.2 Patrón o fórmula

```text
URL Matrix with IDs
```

### §9.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
HP-001, SO-001, GH-001, LBS-001, AC-001, GA-001
```

### §9.4 Ejemplos incorrectos

```text
- URLs sin ID
- Coverage areas con filas
- Sin schema
```

### §9.5 Regla final

```text
Lo que no está en matriz no entra en producción.
```

## §10 Sistema 4 — URL Rules

### §10.1 Explicación

Fija patrones limpios y evita canibalización.

### §10.2 Patrón o fórmula

```text
/category/main-city/service/
```

### §10.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/
```

### §10.4 Ejemplos incorrectos

```text
- near-me URLs
- best cheap URLs
- Local Coverage URLs sin aprobación
```

### §10.5 Regla final

```text
Una URL = una intención.
```

## §11 Sistema 5 — Page Type Rules

### §11.1 Explicación

Define la función de cada tipo de página.

### §11.2 Patrón o fórmula

```text
Homepage, Service Overview, LBS, AC, GeoHub, GeoArticle
```

### §11.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
GeoArticle = booster, not landing
```

### §11.4 Ejemplos incorrectos

```text
- Confundir service overview con LBS
- GeoHub sin servicios
- Article como landing
```

### §11.5 Regla final

```text
Cada tipo cumple un rol.
```

## §12 Sistema 6 — Content Architecture

### §12.1 Explicación

Define cómo se escribe cada página por dentro y cómo se usan Local Coverage Areas.

### §12.2 Patrón o fórmula

```text
Content blocks + coverage usage
```

### §12.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
H2 Local Coverage Areas Served in /cerrajero/madrid/cerrajero-urgente/
```

### §12.4 Ejemplos incorrectos

```text
- Solo formulario
- Sin cuerpo operativo
- Zonas como falsas oficinas
```

### §12.5 Regla final

```text
El contenido debe tener estructura, no solo campos.
```

## §13 Sistema 7 — Internal Linking

### §13.1 Explicación

Conecta páginas por jerarquía local.

### §13.2 Patrón o fórmula

```text
Homepage → Services → GeoHub → LBS → Articles
```

### §13.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/cuanto-cuesta-un-cerrajero-urgente/ links to /cerrajero/madrid/cerrajero-urgente/
```

### §13.4 Ejemplos incorrectos

```text
- Páginas huérfanas
- Links a URLs inexistentes
- Solo footer
```

### §13.5 Regla final

```text
Los enlaces sostienen el silo.
```

## §14 Sistema 8 — Priority Score

### §14.1 Explicación

Decide qué se publica primero.

### §14.2 Patrón o fórmula

```text
Revenue + Intent + GBP + Local + Gap + Urgency
```

### §14.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente Madrid = P1
```

### §14.4 Ejemplos incorrectos

```text
- Todo P1
- Blogs primero
- City Priority en base
```

### §14.5 Regla final

```text
La prioridad sigue negocio + intención + local.
```

## §15 Sistema 9 — QA

### §15.1 Explicación

Valida cada página antes de publicar.

### §15.2 Patrón o fórmula

```text
URL + metadata + schema + links + no false location
```

### §15.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 approved after QA
```

### §15.4 Ejemplos incorrectos

```text
- Sin QA
- Schema incorrecto
- Fake office
```

### §15.5 Regla final

```text
Sin QA no se publica.
```

## §16 Sistema 10 — Producción en fases

### §16.1 Explicación

Organiza publicación en lotes.

### §16.2 Patrón o fórmula

```text
Entity → Main City Conversion → Articles → Optimization → Expansion
```

### §16.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Semana 1 entity; semana 2 Main City landings
```

### §16.4 Ejemplos incorrectos

```text
- Expansion first
- Articles first
- No dependencies
```

### §16.5 Regla final

```text
Publicar por fases evita caos.
```

## §17 Sistema 11 — Pseudocódigo

### §17.1 Explicación

Convierte el sistema en lógica repetible.

### §17.2 Patrón o fórmula

```text
Input → Generate → Link → Score → QA → Output
```

### §17.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Local Coverage Areas injected into content, no URLs
```

### §17.4 Ejemplos incorrectos

```text
- Generar todo manualmente
- Sin dependencias
- Sin outputs
```

### §17.5 Regla final

```text
El sistema debe poder repetirse.
```

## §18 Sistema 12 — Master Prompt

### §18.1 Explicación

Permite ejecutar todo el sistema con un prompt maestro.

### §18.2 Patrón o fórmula

```text
Master Prompt with full outputs
```

### §18.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Prompt returns URL Matrix, content architecture, links, QA
```

### §18.4 Ejemplos incorrectos

```text
- Prompt solo de URLs
- Sin Local Coverage rules
- Sin QA
```

### §18.5 Regla final

```text
El prompt maestro debe generar el sistema completo.
```


## §19 Índice final del sistema de 14 pasos

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

## §20 Principio final de arquitectura

```text
Main City = crea la arquitectura base.
Local Coverage Areas = enriquecen contenido, FAQs, ejemplos locales y schema areaServed.
Approved Expansion Areas = generan URLs propias solo cuando se aprueban.
```

## §21 Fórmula final base

```text
1 Homepage
+ S Service Overview Pages
+ 1 Main City GeoHub
+ S Main City Location-Based Service Pages
+ A Páginas de categoría adicional en la Main City
+ G × S GeoArticles de la Main City
```

## §22 Fórmula aplicada a Cerrajeros Madrid 24h

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

## §23 URLs base finales para Cerrajeros Madrid 24h

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
Ver lista completa de 15 GeoArticles en §54.1
```

## §24 Local Coverage Areas en contenido

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

## §25 Operating workflow completo

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

## §26 Carpetas recomendadas del repo

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
└── 13-sistema-final-operativo.md
```

#
## §27 Relación con el Paso 14

### §27.1 Explicación

El Paso 13 cierra el sistema web. No crea el GBP todavía. Su función es comprobar que la web está lista para servir como fuente de verdad antes de crear el perfil. El Paso 14 ejecuta la creación y sincronización del GBP.

### §27.2 Patrón o fórmula

```text
Paso 13 = website operating system complete
Paso 14 = GBP creation and website alignment
```

### §27.3 Ejemplo correcto con Cerrajeros Madrid 24h

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

### §27.4 Ejemplos incorrectos

```text
- Tratar el Paso 13 como si ya existiera GBP.
- Cerrar el sistema sin plan para crear el GBP.
- Añadir Google reviews o GBP URL antes del Paso 14.
```

### §27.5 Regla final

```text
El sistema web termina en el Paso 13; la entidad GBP se crea y sincroniza en el Paso 14.
```

# §28 Output final que debe producir el sistema

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

## §29 Módulo A — Entidad y GBP

### §29.1 Explicación

La entidad debe estar clara antes de crear cualquier página. El GBP define categoría principal, NAP, ubicación física y señales de confianza.

### §29.2 Patrón o fórmula

```text
Business + GBP + NAP → entity base
```

### §29.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h + Cerrajero + Madrid + Calle Rafael Calvo 12
```

### §29.4 Ejemplos incorrectos

```text
- Crear páginas sin GBP category
- NAP inconsistente
- Marca distinta en schema
```

### §29.5 Regla final

```text
La entidad se valida antes de la arquitectura.
```

## §30 Módulo B — Servicios core

### §30.1 Explicación

Los servicios core generan Service Overview Pages y Location-Based Service Pages.

### §30.2 Patrón o fórmula

```text
Core Service → SO + LBS
```

### §30.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente → /cerrajero/cerrajero-urgente/ + /cerrajero/madrid/cerrajero-urgente/
```

### §30.4 Ejemplos incorrectos

```text
- Servicio sin página
- Servicio agrupado en página general
- Servicio inventado
```

### §30.5 Regla final

```text
Cada servicio core importante tiene estructura completa.
```

## §31 Módulo C — Categorías adicionales

### §31.1 Explicación

Las categorías adicionales se consolidan o se convierten en página.

### §31.2 Patrón o fórmula

```text
Additional Category → covered or AC page
```

### §31.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Duplicado de llaves → /cerrajero/madrid/duplicado-llaves/
```

### §31.4 Ejemplos incorrectos

```text
- Duplicate urgente page
- Ignoring additional categories
- Category with no GBP relation
```

### §31.5 Regla final

```text
Cada categoría GBP tiene soporte sin duplicación.
```

## §32 Módulo D — Cobertura local

### §32.1 Explicación

Las Local Coverage Areas son cobertura real y contexto GEO.

### §32.2 Patrón o fórmula

```text
Coverage → content + areaServed
```

### §32.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca, Retiro mencionadas de forma natural
```

### §32.4 Ejemplos incorrectos

```text
- Coverage URLs by default
- Fake offices
- Unnatural lists
```

### §32.5 Regla final

```text
Cobertura local primero en contenido.
```

## §33 Módulo E — Expansión aprobada

### §33.1 Explicación

La expansión se activa solo cuando una zona lo merece.

### §33.2 Patrón o fórmula

```text
Approved Expansion → optional URLs
```

### §33.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro expansion later if approved
```

### §33.4 Ejemplos incorrectos

```text
- All zones expanded
- Expansion before base
- No demand
```

### §33.5 Regla final

```text
La expansión es posterior y justificada.
```

## §34 Módulo F — Schema

### §34.1 Explicación

Schema ayuda a estructurar entidad, servicios, ciudad, cobertura y artículos.

### §34.2 Patrón o fórmula

```text
Page Type → Schema Type
```

### §34.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS → LocalBusiness with areaServed
```

### §34.4 Ejemplos incorrectos

```text
- Same schema everywhere
- False address
- No schema
```

### §34.5 Regla final

```text
Schema debe coincidir con tipo de página.
```

## §35 Módulo G — Tracking

### §35.1 Explicación

El sistema se mide después de publicar.

### §35.2 Patrón o fórmula

```text
GMB Crush + GSC + GA4
```

### §35.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Track urgente cerrajero Madrid and page performance
```

### §35.4 Ejemplos incorrectos

```text
- No tracking
- No refresh
- No grid review
```

### §35.5 Regla final

```text
Sin medición no hay optimización.
```

## §36 Sistema empieza por entidad — Regla operativa 1

### §36.1 Explicación

El SOP final debe dejar claro que todo empieza con la entidad: negocio, NAP, GBP, categoría, Main City, servicios y cobertura real. Sin entidad, no hay arquitectura confiable.

### §36.2 Patrón o fórmula

```text
Entity inputs → architecture → content → links → QA
```

### §36.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h define nombre, NAP, Cerrajero como categoría, Madrid como Main City y servicios core antes de crear URLs.
```

### §36.4 Ejemplos incorrectos

```text
- Crear URLs antes del intake
- No validar GBP category
- No definir ubicación física
```

### §36.5 Regla final

```text
La entidad manda sobre la arquitectura.
```

## §37 Arquitectura base de una Main City — Regla operativa 2

### §37.1 Explicación

El sistema final debe consagrar la versión simplificada: una Main City crea la base, Local Coverage Areas enriquecen contenido y Approved Expansion Areas crean URLs solo después.

### §37.2 Patrón o fórmula

```text
Main City base | Coverage content | Expansion optional
```

### §37.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h crea base en Madrid y usa Almagro, Chamberí, Salamanca y Retiro como cobertura textual.
```

### §37.4 Ejemplos incorrectos

```text
- Volver a target cities como base
- Crear páginas para toda cobertura
- No diferenciar expansión
```

### §37.5 Regla final

```text
La base local se construye alrededor de una Main City.
```

## §38 Matriz como centro operativo — Regla operativa 3

### §38.1 Explicación

El sistema final debe tratar la URL Matrix como fuente de verdad. Todas las decisiones de contenido, links, schema, prioridad y QA deben referirse a ella.

### §38.2 Patrón o fórmula

```text
URL Matrix → briefs → production → QA
```

### §38.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 en la matriz define URL, H1, schema, links, priority y status antes de redactar.
```

### §38.4 Ejemplos incorrectos

```text
- Crear contenido fuera de la matriz
- Cambiar URL sin actualizar matriz
- No registrar status
```

### §38.5 Regla final

```text
Si no está en la matriz, no existe en producción.
```

## §39 Contenido por page type — Regla operativa 4

### §39.1 Explicación

El SOP final debe mantener que cada page type tiene estructura propia. Esto impide escribir todas las páginas con el mismo molde.

### §39.2 Patrón o fórmula

```text
Page Type → content architecture → QA
```

### §39.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
GeoHub de Madrid lista servicios y cobertura; GeoArticle de coste explica un tema long-tail; Service Overview no menciona cobertura.
```

### §39.4 Ejemplos incorrectos

```text
- Usar el mismo texto para todos los tipos
- Convertir GeoArticles en landings
- Usar Service Overview como página local
```

### §39.5 Regla final

```text
La forma del contenido depende de la función de la página.
```

## §40 Local Coverage Areas como contexto — Regla operativa 5

### §40.1 Explicación

Las áreas de cobertura local deben quedar integradas en contenido, FAQs, ejemplos y schema areaServed. No son un apéndice ni un motor automático de URLs.

### §40.2 Patrón o fórmula

```text
Coverage real → content blocks + schema | no URLs base
```

### §40.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa Almagro y Chamberí en secciones de cobertura y FAQs, no como GeoHubs base.
```

### §40.4 Ejemplos incorrectos

```text
- No mencionar cobertura real
- Crear páginas de cobertura sin aprobación
- Afirmar oficina en coverage areas
```

### §40.5 Regla final

```text
La cobertura local refuerza, no multiplica por defecto.
```

## §41 Internal linking como distribución de autoridad — Regla operativa 6

### §41.1 Explicación

El sistema final debe dejar claro que el enlazado no es decoración. Define cómo fluye autoridad desde homepage hasta servicios, GeoHub, landings y artículos.

### §41.2 Patrón o fórmula

```text
Homepage → Services / GeoHub → LBS → GeoArticles → back
```

### §41.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h enlaza /madrid/cuanto-cuesta-un-cerrajero-urgente/ hacia /cerrajero/madrid/cerrajero-urgente/ y /madrid/.
```

### §41.4 Ejemplos incorrectos

```text
- Páginas huérfanas
- Enlaces solo en footer
- Anchors repetidos o genéricos
```

### §41.5 Regla final

```text
Cada página debe tener enlaces entrantes y salientes útiles.
```

## §42 Schema como claridad de entidad — Regla operativa 7

### §42.1 Explicación

El schema final debe explicar entidad, servicio, ubicación, cobertura y contenido. Debe ser coherente con NAP y no simular ubicaciones.

### §42.2 Patrón o fórmula

```text
Page Type → schema → NAP/areaServed validation
```

### §42.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
LocalBusiness usa address de Madrid y areaServed para cobertura real.
```

### §42.4 Ejemplos incorrectos

```text
- Schema con dirección falsa
- Omitir Service schema
- No usar Article schema en GeoArticles
```

### §42.5 Regla final

```text
Schema debe ser coherente, válido y verdadero.
```

## §43 Priority Score como decisión de producción — Regla operativa 8

### §43.1 Explicación

El score debe ordenar producción, no reemplazar criterio. Se combina con dependencias y fases para evitar publicar páginas fuera de orden.

### §43.2 Patrón o fórmula

```text
Score + dependencies + phase → publish order
```

### §43.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente Madrid se prioriza antes que un artículo informativo de bajo valor.
```

### §43.4 Ejemplos incorrectos

```text
- Publicar por score sin parent
- No valorar GBP relevance
- Dar prioridad a zonas no aprobadas
```

### §43.5 Regla final

```text
La prioridad debe convertirse en calendario, no en caos.
```

## §44 QA como puerta de publicación — Regla operativa 9

### §44.1 Explicación

El SOP final debe exigir QA antes de publicar. Esta puerta detecta errores de URL, contenido, schema, links, NAP, canibalización y ubicación falsa.

### §44.2 Patrón o fórmula

```text
Ready for QA → checklist → Approved → Published
```

### §44.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h no publica /cerrajero/madrid/duplicado-llaves/ hasta validar schema Service, links y no duplicación.
```

### §44.4 Ejemplos incorrectos

```text
- Publicar sin revisión
- No comprobar enlaces
- No revisar canibalización
```

### §44.5 Regla final

```text
No hay publicación sin QA.
```

## §45 Producción en fases — Regla operativa 10

### §45.1 Explicación

Las fases protegen el orden lógico: entidad, conversión, semántica, optimización y expansión opcional. Sin fases, el sistema puede construir artículos antes de las páginas que deben apoyar.

### §45.2 Patrón o fórmula

```text
Phase 1 → Phase 2 → Phase 3 → Phase 4 → Phase 5 optional
```

### §45.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h publica primero homepage y servicios, luego Madrid landings, luego GeoArticles.
```

### §45.4 Ejemplos incorrectos

```text
- Empezar por expansión
- Publicar artículos sin landing
- No cerrar Phase 1 antes de Phase 2
```

### §45.5 Regla final

```text
Las fases convierten arquitectura en ejecución controlada.
```

## §46 Tracking como ciclo de mejora — Regla operativa 11

### §46.1 Explicación

El sistema no termina al publicar. GSC, geo-grid, leads y comportamiento deben alimentar mejoras de contenido, metadata, links y expansión.

### §46.2 Patrón o fórmula

```text
Publish → measure → optimize → refresh
```

### §46.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si /cerrajero/madrid/apertura-puertas/ tiene impresiones pero bajo CTR, Cerrajeros Madrid 24h ajusta title y meta.
```

### §46.4 Ejemplos incorrectos

```text
- No medir después de publicar
- No optimizar páginas con oportunidades
- No refrescar artículos
```

### §46.5 Regla final

```text
Publicar es el inicio del ciclo de optimización.
```

## §47 Expansion Areas con gobernanza — Regla operativa 12

### §47.1 Explicación

La expansión debe tener criterios y aprobación. Esto evita crear páginas por ambición territorial antes de que la Main City esté sólida.

### §47.2 Patrón o fórmula

```text
Coverage → evidence → approval → expansion pages
```

### §47.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro solo genera URLs si se aprueba por demanda, valor y capacidad de contenido único.
```

### §47.4 Ejemplos incorrectos

```text
- Expandir por intuición
- Copiar páginas de Madrid
- No medir la base antes de expandir
```

### §47.5 Regla final

```text
La expansión requiere evidencia y control.
```

## §48 IA como operador del sistema — Regla operativa 13

### §48.1 Explicación

Si una IA usa estos documentos, debe operar con matrices, reglas y QA, no improvisar. El SOP final debe ser suficientemente explícito para generar outputs repetibles.

### §48.2 Patrón o fórmula

```text
Prompt → inputs → matrices → QA → outputs
```

### §48.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
El Master Prompt genera URL Matrix, Schema Map, Internal Linking Map y Publishing Plan para Cerrajeros Madrid 24h.
```

### §48.4 Ejemplos incorrectos

```text
- Pedir contenido suelto sin matriz
- No pasar QA a outputs de IA
- Permitir que la IA cree URLs no aprobadas
```

### §48.5 Regla final

```text
La IA debe seguir el sistema, no inventarlo.
```

## §49 No negociables finales — Regla operativa 14

### §49.1 Explicación

El SOP final debe cerrar con reglas que nunca se rompen: no mezclar servicios, no mezclar ciudades, no false locations, no páginas huérfanas, no artículos sin destino y no duplicación.

### §49.2 Patrón o fórmula

```text
Non-negotiables → QA → governance
```

### §49.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h mantiene una página para Cerrajero urgente en Madrid y un artículo de costes separado que la apoya.
```

### §49.4 Ejemplos incorrectos

```text
- Una landing con 5 servicios
- Una página que apunta a varias ciudades
- GeoArticle que compite con la landing
```

### §49.5 Regla final

```text
Las reglas no negociables protegen el sistema completo.
```

## §50 Documentación del cambio — Regla operativa 15

### §50.1 Explicación

Cada cambio importante debe registrarse: nuevas páginas, expansión aprobada, actualización de fórmula, cambios de schema o nuevos enlaces. Esto hace que el sistema sea mantenible.

### §50.2 Patrón o fórmula

```text
Change → reason → matrix update → QA
```

### §50.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Cerrajeros Madrid 24h aprueba Almagro como expansión, se registra en matriz, fórmula y publishing plan.
```

### §50.4 Ejemplos incorrectos

```text
- Crear páginas nuevas sin registro
- Cambiar slugs sin documentar
- No actualizar enlaces tras expansión
```

### §50.5 Regla final

```text
Todo cambio debe quedar documentado en la matriz y el plan.
```

## §51 Sistema final como fuente única — Regla operativa 16

### §51.1 Explicación

El documento final debe reunir los pasos, pero no sustituye los archivos individuales. Sirve como mapa global y fuente de consulta para entender cómo se conectan las piezas.

### §51.2 Patrón o fórmula

```text
14 pasos → sistema completo → ejecución por documentos
```

### §51.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa el sistema final para entender el flujo y los pasos individuales para ejecutar cada parte.
```

### §51.4 Ejemplos incorrectos

```text
- Usar solo el resumen final para producir páginas
- No consultar el Paso 6 al escribir contenido
- No consultar QA antes de publicar
```

### §51.5 Regla final

```text
El sistema final coordina; los pasos individuales ejecutan.
```

## §52 Checklist final del Paso 13

| Check | Pregunta | Estado |
|---|---|---|
| 14 pasos | ¿El sistema final incluye los 14 pasos? | ✅ / ⬜ |
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

## §53 Outputs del Paso 13

- SOP final de 14 pasos
- Índice definitivo
- Fórmula final base
- Arquitectura Cerrajeros Madrid 24h aplicada
- Workflow operativo completo
- Reglas no negociables
- Checklist final del sistema
- Output final esperado para cualquier negocio local

---

# §54 Fuentes internas GMB Crush usadas

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework



### §54.1 GeoArticles completos (15)

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



### §54.2 Inventario SEO base — Priority Score completo

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


### §54.3 Inventario SEO base — Estado QA

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


### §54.4 Calendario de producción completo

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
