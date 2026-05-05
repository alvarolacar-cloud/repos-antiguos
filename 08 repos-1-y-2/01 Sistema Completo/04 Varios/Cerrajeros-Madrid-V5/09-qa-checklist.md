Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 9 — QA Checklist

## Índice corto

**Paso 9 — QA Checklist**

## Objetivo del Paso 9

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: validar cada página antes de publicarla para evitar errores técnicos, semánticos, locales y de canibalización.
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
Error que previene: publicar páginas sin URL aprobada.
Error que previene: usar H1 o metadata sin Main City cuando corresponde.
Error que previene: usar Local Coverage Areas como falsas ubicaciones.
Error que previene: publicar sin schema o sin enlaces internos.
Error que previene: duplicar intención entre páginas.

## Lo que tienes que rellenar

```text
Page ID:

Page Type:
Homepage / Service Overview / Location-Based Service / Additional Category / GeoHub / GeoArticle

URL:

Target Service:

Target Additional Category:

Main City:

Primary GBP Category:

Local Coverage Areas Used:
1.
2.
3.

Approved Expansion Area?
Yes / No

Priority:
P1 / P2 / P3 / P4 / Hold

Status:
Draft / Ready for QA / Approved / Published / Needs Revision / Blocked

Reviewer:

QA Date:

Physical office in this area?
Yes / No

Can the page mention “office”, “location” or “visit us” in this area?
Yes / No

Main Parent Page:

Required Enlaces internos:
1.
2.
3.
4.
5.

Required Schema:

Notes:
```

## Ejemplo rellenado

```text
Page ID:
LBS-001

Page Type:
Location-Based Service

URL:
/cerrajero/madrid/cerrajero-urgente/

Target Service:
Cerrajero urgente

Target Additional Category:
Servicio de cerrajería de urgencia covered by this core service

Main City:
Madrid

Primary GBP Category:
Cerrajero

Local Coverage Areas Used:
1. Almagro
2. Chamberí
3. Salamanca
4. Retiro

Approved Expansion Area?
No

Priority:
P1

Status:
Ready for QA

Reviewer:
SEO Manager

QA Date:
2026-04-24

Physical office in this area?
Yes for Madrid. No claim for Local Coverage Areas.

Can the page mention “office”, “location” or “visit us” in this area?
Only for Madrid if accurate.

Main Parent Page:
/cerrajero/cerrajero-urgente/

Required Enlaces internos:
1. /cerrajero/cerrajero-urgente/
2. /madrid/
3. /cerrajero/madrid/apertura-puertas/
4. /cerrajero/madrid/cambio-cerraduras/
5. /madrid/guia-precios-cerrajero-urgente/

Required Schema:
LocalBusiness
BreadcrumbList
FAQPage
Speakable

Notes:
This page supports the core Cerrajero urgente service, Madrid GeoHub, and Servicio de cerrajería de urgencia category relevance.
```

# Cuerpo operativo del Paso 9

## Regla 1 — URL QA

### Explicación

La URL debe coincidir con el tipo de página y las reglas del Paso 4.

### Patrón o fórmula

```text
URL pattern by page type
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ = Location-Based Service
```

### Ejemplos incorrectos

```text
- URL con near-me
- URL de Local Coverage Area sin aprobación
- URL duplicada
```

### Regla final

```text
No se publica una página con URL incorrecta.
```

## Regla 2 — Page Type QA

### Explicación

El contenido debe corresponder al tipo de página.

### Patrón o fórmula

```text
Page type → structure
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GeoArticle written as article, not landing
```

### Ejemplos incorrectos

```text
- Service Overview geolocalizada
- GeoHub sin service menu
- Article como landing
```

### Regla final

```text
Cada página debe comportarse como su tipo.
```

## Regla 3 — One service only

### Explicación

Las páginas locales deben tener un servicio principal.

### Patrón o fórmula

```text
one service per local page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente en Madrid
```

### Ejemplos incorrectos

```text
- Cerrajero urgente + apertura de puertas + cambio de cerraduras en un H1
- Página de todos los servicios locales
- Categoría adicional mezclada sin claridad
```

### Regla final

```text
Una página local, un servicio principal.
```

## Regla 4 — One Main City only

### Explicación

La página base debe apuntar a la Main City, no a varias zonas como objetivos equivalentes.

### Patrón o fórmula

```text
one Main City target
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente en Madrid with coverage mentions
```

### Ejemplos incorrectos

```text
- Cerrajero urgente en Madrid, Almagro, Salamanca and Retiro
- H1 con cinco zonas
- Breadcrumb con área no aprobada
```

### Regla final

```text
La Main City debe ser clara.
```

## Regla 5 — Local Coverage QA

### Explicación

Las áreas de cobertura deben ser reales y usarse naturalmente.

### Patrón o fórmula

```text
Local Coverage Areas = real service coverage
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca, Retiro mentioned as served areas
```

### Ejemplos incorrectos

```text
- Zonas no atendidas
- Lista artificial en cada párrafo
- Áreas usadas como oficinas
```

### Regla final

```text
La cobertura local debe ser real y natural.
```

## Regla 6 — No fake location

### Explicación

No afirmar oficina, storefront o dirección en zonas sin presencia real.

### Patrón o fórmula

```text
no false physical presence
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Atendemos clientes en Salamanca
```

### Ejemplos incorrectos

```text
- Nuestra oficina en Salamanca
- Visit our Retiro location
- Schema address en Almagro
```

### Regla final

```text
Nunca se inventa ubicación física.
```

## Regla 7 — Metadata QA

### Explicación

H1, meta title y description deben coincidir con la intención.

### Patrón o fórmula

```text
H1 + Meta + Description = service + Main City where applicable
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h – Cerrajero urgente en Madrid
```

### Ejemplos incorrectos

```text
- H1 sin servicio
- Meta sin ciudad en landing local
- Meta duplicada en varias páginas
```

### Regla final

```text
La metadata debe reflejar la intención única.
```

## Regla 8 — Word count QA

### Explicación

Cada tipo de página tiene profundidad mínima.

### Patrón o fórmula

```text
Homepage 900–1300; Service 850–1000; LBS 800–1000; GeoArticle 1000–1500
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GeoArticle 1250 words
```

### Ejemplos incorrectos

```text
- 300 palabras
- Contenido relleno
- Misma longitud para todo
```

### Regla final

```text
La profundidad debe ajustarse al tipo de página.
```

## Regla 9 — Schema QA

### Explicación

El schema debe coincidir con el tipo de página.

### Patrón o fórmula

```text
Page type → schema
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS → LocalBusiness + BreadcrumbList
```

### Ejemplos incorrectos

```text
- Article schema en service page
- LocalBusiness con dirección falsa
- Schema sin URL canónica
```

### Regla final

```text
Schema correcto antes de publicar.
```

## Regla 10 — Enlaces internos QA

### Explicación

La página debe incluir enlaces obligatorios del Paso 7.

### Patrón o fórmula

```text
Required links exist
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS links to parent service, GeoHub, related services, GeoArticle
```

### Ejemplos incorrectos

```text
- Solo footer
- Sin link al GeoHub
- Enlaces a URLs inexistentes
```

### Regla final

```text
Sin enlaces obligatorios no se publica.
```

## Regla 11 — Canibalización QA

### Explicación

No debe existir otra página atacando la misma intención.

### Patrón o fórmula

```text
one intent = one URL
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ is primary for cerrajero urgente en Madrid
```

### Ejemplos incorrectos

```text
- /madrid/cerrajero-urgente/
- /cerrajero/madrid/cerrajero-urgente/
- /cerrajero-urgente-madrid/
```

### Regla final

```text
Una intención tiene una página principal.
```

## Regla 12 — CTA QA

### Explicación

Cada página debe cerrar con una acción clara.

### Patrón o fórmula

```text
CTA exists and matches intent
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Llama a Cerrajeros Madrid 24h hoy
```

### Ejemplos incorrectos

```text
- Sin CTA
- CTA genérico
- CTA que no menciona servicio o ciudad cuando aplica
```

### Regla final

```text
Toda página debe tener CTA.
```


## QA por tipo de página

| Page Type | Checks críticos |
|---|---|
| Homepage | Brand, primary category, Main City, services, NAP, trust, schema, links |
| Service Overview | No local targeting, AUDIO, FAQs, service schema, link to Main City version |
| Location-Based Service | Service + Main City, local intro, coverage section, LocalBusiness schema |
| Additional Category | Supports real GBP category, not duplicate, Service schema with areaServed |
| GeoHub | Lists all Main City services, categories, articles and coverage areas |
| GeoArticle | One service, one Main City, one long-tail intent, links to landing and GeoHub |

## Final Publish Gate

```text
URL approved:
Yes / No

Content approved:
Yes / No

SEO metadata approved:
Yes / No

Schema approved:
Yes / No

Internal links approved:
Yes / No

NAP approved:
Yes / No

No canibalization:
Yes / No

No false location claim:
Yes / No

CTA approved:
Yes / No

Ready to publish:
Yes / No
```

## URL y page type correctos — Regla operativa 1

### Explicación

El QA empieza confirmando que la URL coincide con el tipo de página. Una buena página con URL incorrecta puede crear canibalización o romper la matriz.

### Patrón o fórmula

```text
URL pattern + Page Type → aprobado o revisión
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ se valida como Location-Based Service Page.
```

### Ejemplos incorrectos

```text
- /madrid/cerrajero-urgente/ usada como landing comercial si el patrón aprobado es /category/city/service/
- GeoArticle con URL de landing
- Service Overview con ciudad en slug
```

### Regla final

```text
La URL debe confirmar la función de la página.
```

## H1 y metadata alineados — Regla operativa 2

### Explicación

El H1, meta title y meta description deben reflejar el page type, servicio y Main City cuando aplique. No deben perseguir otra intención.

### Patrón o fórmula

```text
Page Type → H1 formula → meta formula
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 usa H1: Cerrajeros Madrid 24h – Cerrajero urgente en Madrid y meta title con Cerrajero urgente en Madrid.
```

### Ejemplos incorrectos

```text
- H1 genérico Our Services
- Meta title sin servicio
- Meta description que menciona varias ciudades como target
```

### Regla final

```text
Metadata y H1 deben apuntar a la misma intención que la URL.
```

## Word count y profundidad — Regla operativa 3

### Explicación

El QA debe revisar que el contenido no sea thin y que la longitud cumpla su función: explicación, proceso, FAQs, CTA, enlaces y contexto local.

### Patrón o fórmula

```text
Page Type → word count objetivo → contenido útil
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Una página local de Cerrajeros Madrid 24h tiene 800–1.000 palabras con H2s, FAQs y CTA.
```

### Ejemplos incorrectos

```text
- Publicar 300 palabras para una landing local
- Inflar contenido con repetición de zonas
- No cubrir proceso ni problemas resueltos
```

### Regla final

```text
La página debe tener profundidad real, no relleno.
```

## Schema correcto — Regla operativa 4

### Explicación

El schema debe coincidir con el page type y con los datos reales del negocio. Es un error usar LocalBusiness con dirección falsa o Article schema en páginas comerciales.

### Patrón o fórmula

```text
Page Type → schema required → validación JSON-LD
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GeoArticle usa Article + FAQPage; Location-Based Service usa LocalBusiness con areaServed real.
```

### Ejemplos incorrectos

```text
- LocalBusiness address en área sin oficina
- Schema sin URL canónica
- Datos NAP diferentes del footer
```

### Regla final

```text
Schema debe ser válido, coherente y verdadero.
```

## Internal links completos — Regla operativa 5

### Explicación

El QA debe comprobar enlaces obligatorios y anchors. Una página sin enlaces al padre, GeoHub o artículos no cumple el sistema.

### Patrón o fórmula

```text
Required Links → presentes → anchors naturales
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 enlaza a /cerrajero/cerrajero-urgente/, /madrid/, servicios relacionados y GeoArticles.
```

### Ejemplos incorrectos

```text
- Publicar sin enlaces internos
- Enlazar a coverage areas sin URL
- Usar anchors repetidos exact-match
```

### Regla final

```text
Cada página debe cumplir su mapa de enlaces.
```

## NAP consistente — Regla operativa 6

### Explicación

El NAP en página, schema, footer y contacto debe coincidir. Las páginas locales no deben modificar teléfono o dirección para simular proximidad.

### Patrón o fórmula

```text
NAP canónico → página → schema → footer
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h mantiene +34 600 000 000 en homepage, contact page y schema.
```

### Ejemplos incorrectos

```text
- Cambiar teléfono por página
- Usar dirección distinta en schema
- Omitir NAP en páginas donde es obligatorio
```

### Regla final

```text
El NAP debe ser consistente en todo el sitio.
```

## Local Coverage Areas reales — Regla operativa 7

### Explicación

El QA debe revisar que las áreas mencionadas sean zonas atendidas y que no se usen como si fueran ubicaciones físicas. Esta regla es clave para el nuevo Paso 6.

### Patrón o fórmula

```text
Coverage mentioned → real service coverage → no fake office
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h menciona Almagro como área atendida, no como oficina.
```

### Ejemplos incorrectos

```text
- Our Chamberí location sin sede
- Mencionar zonas no atendidas
- Crear enlaces a URLs no aprobadas
```

### Regla final

```text
La cobertura local debe ser real y no inventar presencia.
```

## Canibalización revisada — Regla operativa 8

### Explicación

Antes de publicar, debe verificarse que no exista otra URL con la misma intención. Esto aplica a servicios, categorías adicionales, GeoArticles y expansiones.

### Patrón o fórmula

```text
Intención principal → URL única
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/guia-precios-cerrajero-urgente/ no compite con /cerrajero/madrid/cerrajero-urgente/ porque apunta a costes, no a landing comercial.
```

### Ejemplos incorrectos

```text
- Crear /madrid/cerrajero-urgente/ y /cerrajero/madrid/cerrajero-urgente/
- GeoArticle con H1 igual a la landing
- Duplicar categoría adicional ya cubierta
```

### Regla final

```text
Una intención principal debe tener una URL principal.
```

## Estructura de contenido completa — Regla operativa 9

### Explicación

El QA debe confirmar que la página tiene las secciones necesarias: intro, H2s, bullets, FAQs, CTA y enlaces según page type. Esto evita publicar páginas técnicamente correctas pero incompletas.

### Patrón o fórmula

```text
Page Type Structure → secciones presentes → QA aprobado
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La página local de Cerrajero urgente incluye intro, Authority, Uniqueness, Depth, Intent, Local Coverage, FAQs y CTA.
```

### Ejemplos incorrectos

```text
- Sin FAQs
- Sin CTA
- Sin sección de cobertura cuando es necesaria
```

### Regla final

```text
La estructura de contenido debe coincidir con el tipo de página.
```

## Final Approval documentado — Regla operativa 10

### Explicación

La publicación no debe depender de memoria. El QA debe dejar constancia de estado, reviewer, fecha y notas de revisión.

### Patrón o fórmula

```text
Ready for QA → Approved / Needs Revision → Published
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 queda Approved por SEO Manager antes de publicarse.
```

### Ejemplos incorrectos

```text
- Publicar sin estado final
- No registrar correcciones
- No actualizar la matriz tras QA
```

### Regla final

```text
Ninguna página se publica sin aprobación final registrada.
```

## Checklist final del Paso 9

| Check | Pregunta | Estado |
|---|---|---|
| URL | ¿La URL sigue el patrón correcto? | ✅ / ⬜ |
| Page Type | ¿El contenido corresponde al tipo de página? | ✅ / ⬜ |
| Service | ¿Hay un solo servicio principal cuando aplica? | ✅ / ⬜ |
| Main City | ¿La Main City está clara? | ✅ / ⬜ |
| Local Coverage | ¿Las áreas de cobertura se usan correctamente? | ✅ / ⬜ |
| No fake location | ¿No hay afirmaciones falsas de oficina? | ✅ / ⬜ |
| Metadata | ¿H1, meta title y description están aprobados? | ✅ / ⬜ |
| Word Count | ¿Cumple el rango recomendado? | ✅ / ⬜ |
| Schema | ¿El schema es correcto? | ✅ / ⬜ |
| Enlaces internos | ¿Los enlaces obligatorios están presentes? | ✅ / ⬜ |
| Canibalización | ¿No compite con otra URL? | ✅ / ⬜ |
| CTA | ¿Tiene CTA claro? | ✅ / ⬜ |

## Outputs del Paso 9

- Checklist QA general
- Checklist por tipo de página
- Final Publish Gate
- Validación de Local Coverage Areas
- Validación anti-canibalización
- Validación de schema e internal links
- Estado final Approved / Needs Revision / Blocked

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

