Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 13 — Sistema Final Operativo

## Índice corto

**Paso 13 — Sistema Final Operativo**

## Objetivo del Paso 13

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: unir los 12 pasos anteriores en un SOP completo, coherente y listo para usar en cualquier web local.
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

GBP URL:

Primary GBP Category:

Primary Category Slug:

Additional GBP Categories:
1.
2.
3.

Core Services:
1.
2.
3.
4.
5.

Primary Local Coverage Areas:
1.
2.
3.
4.
5.

Additional Local Coverage Areas:
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

## Sistema 1 — Intake

### Explicación

Recoge entidad, NAP, GBP, Main City, servicios, cobertura local y expansión aprobada.

### Patrón o fórmula

```text
Inputs complete before architecture
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith + Miami + Hialeah/Coral Gables/Doral/Hollywood as coverage
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

### Ejemplo correcto con ABC Locksmith

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

### Ejemplo correcto con ABC Locksmith

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

### Ejemplo correcto con ABC Locksmith

```text
/locksmith/miami/emergency-locksmith/
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

### Ejemplo correcto con ABC Locksmith

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

### Ejemplo correcto con ABC Locksmith

```text
H2 Local Coverage Areas Served in /locksmith/miami/emergency-locksmith/
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

### Ejemplo correcto con ABC Locksmith

```text
/miami/emergency-locksmith-cost-guide/ links to /locksmith/miami/emergency-locksmith/
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

### Ejemplo correcto con ABC Locksmith

```text
Emergency Locksmith Miami = P1
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

### Ejemplo correcto con ABC Locksmith

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

### Ejemplo correcto con ABC Locksmith

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

### Ejemplo correcto con ABC Locksmith

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

### Ejemplo correcto con ABC Locksmith

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
+ A Main City Additional Category Pages
+ G × S Main City GeoArticles
```

## Fórmula aplicada a ABC Locksmith

```text
S = 5
A = 1
G = 3

1 Homepage
+ 5 Service Overview Pages
+ 1 Miami GeoHub
+ 5 Miami Service Pages
+ 1 Miami Additional Category Page
+ 15 Miami GeoArticles
= 28 páginas base
```

## URLs base finales para ABC Locksmith

```text
Homepage:
/

Service Overview:
/locksmith/emergency-locksmith/
/locksmith/car-locksmith/
/locksmith/residential-locksmith/
/locksmith/commercial-locksmith/
/locksmith/lock-rekeying/

Main City GeoHub:
/miami/

Main City Service Pages:
/locksmith/miami/emergency-locksmith/
/locksmith/miami/car-locksmith/
/locksmith/miami/residential-locksmith/
/locksmith/miami/commercial-locksmith/
/locksmith/miami/lock-rekeying/

Additional Category:
/locksmith/miami/key-duplication/

GeoArticles:
/miami/emergency-locksmith-cost-guide/
/miami/what-to-do-locked-out-of-house/
/miami/how-fast-can-locksmith-arrive/
... plus 3 articles per service
```

## Local Coverage Areas en contenido

```text
Hialeah
Coral Gables
Doral
Hollywood
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
/hialeah/
/coral-gables/
/doral/
/hollywood/
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

## Output final que debe producir el sistema

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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith + Locksmith + Miami + 123 Main St
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

### Ejemplo correcto con ABC Locksmith

```text
Emergency Locksmith → /locksmith/emergency-locksmith/ + /locksmith/miami/emergency-locksmith/
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

### Ejemplo correcto con ABC Locksmith

```text
Key Duplication → /locksmith/miami/key-duplication/
```

### Ejemplos incorrectos

```text
- Duplicate emergency page
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

### Ejemplo correcto con ABC Locksmith

```text
Hialeah, Coral Gables, Doral, Hollywood mentioned naturally
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

### Ejemplo correcto con ABC Locksmith

```text
Hialeah expansion later if approved
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

### Ejemplo correcto con ABC Locksmith

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

### Ejemplo correcto con ABC Locksmith

```text
Track emergency locksmith Miami and page performance
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith define nombre, NAP, Locksmith como categoría, Miami como Main City y servicios core antes de crear URLs.
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith crea base en Miami y usa Hialeah, Coral Gables, Doral y Hollywood como cobertura textual.
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

### Ejemplo correcto con ABC Locksmith

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

### Ejemplo correcto con ABC Locksmith

```text
GeoHub de Miami lista servicios y cobertura; GeoArticle de coste explica un tema long-tail; Service Overview no menciona cobertura.
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith usa Hialeah y Coral Gables en secciones de cobertura y FAQs, no como GeoHubs base.
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith enlaza /miami/emergency-locksmith-cost-guide/ hacia /locksmith/miami/emergency-locksmith/ y /miami/.
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

### Ejemplo correcto con ABC Locksmith

```text
LocalBusiness usa address de Miami y areaServed para cobertura real.
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

### Ejemplo correcto con ABC Locksmith

```text
Emergency Locksmith Miami se prioriza antes que un artículo informativo de bajo valor.
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith no publica /locksmith/miami/key-duplication/ hasta validar schema Service, links y no duplicación.
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith publica primero homepage y servicios, luego Miami landings, luego GeoArticles.
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

### Ejemplo correcto con ABC Locksmith

```text
Si /locksmith/miami/car-locksmith/ tiene impresiones pero bajo CTR, ABC Locksmith ajusta title y meta.
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

### Ejemplo correcto con ABC Locksmith

```text
Hialeah solo genera URLs si se aprueba por demanda, valor y capacidad de contenido único.
```

### Ejemplos incorrectos

```text
- Expandir por intuición
- Copiar páginas de Miami
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

### Ejemplo correcto con ABC Locksmith

```text
El Master Prompt genera URL Matrix, Schema Map, Internal Linking Map y Publishing Plan para ABC Locksmith.
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith mantiene una página para Emergency Locksmith in Miami y un artículo de costes separado que la apoya.
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

### Ejemplo correcto con ABC Locksmith

```text
Si ABC Locksmith aprueba Hialeah como expansión, se registra en matriz, fórmula y publishing plan.
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith usa el sistema final para entender el flujo y los pasos individuales para ejecutar cada parte.
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
- Arquitectura ABC Locksmith aplicada
- Workflow operativo completo
- Reglas no negociables
- Checklist final del sistema
- Output final esperado para cualquier negocio local