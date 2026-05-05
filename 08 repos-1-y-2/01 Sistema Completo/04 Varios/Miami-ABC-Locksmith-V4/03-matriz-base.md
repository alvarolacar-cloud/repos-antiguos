Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 3 — Matriz Base

## Índice corto

**Paso 3 — Matriz Base**

## Objetivo del Paso 3

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: convertir la fórmula del Paso 2 en una tabla operativa donde cada URL tenga función, tipo de página, estado, prioridad y dependencias.
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
Error que previene: crear URLs sin ID ni estado.
Error que previene: perder la relación entre página padre y página hija.
Error que previene: generar filas para Local Coverage Areas sin aprobación.
Error que previene: olvidar schema o enlaces internos en la planificación.
Error que previene: publicar páginas sin saber qué función cumplen.

## Lo que tienes que rellenar

```text
Spreadsheet Name:

Website Root Domain:

Canonical Domain:

Primary GBP Category:

Primary Category Slug:

Main City:

Main City Slug:

GeoHub URL Style:
Option A: /city/
Option B: /category/city/

Core Services:
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

Additional Categories that need separate pages:
1.
2.
3.

Additional Category Slugs:
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

GeoArticles per Service:

Default Page Status:
Planned / Draft / Published

Default Priority:
P1 / P2 / P3 / P4
```

## Ejemplo rellenado

```text
Spreadsheet Name:
ABC Locksmith – GMB Crush Website Architecture

Website Root Domain:
https://www.abclocksmith.com

Canonical Domain:
https://www.abclocksmith.com

Primary GBP Category:
Locksmith

Primary Category Slug:
locksmith

Main City:
Miami

Main City Slug:
miami

GeoHub URL Style:
Option A: /city/

Core Services:
1. Emergency Locksmith
2. Car Locksmith
3. Residential Locksmith
4. Commercial Locksmith
5. Lock Rekeying

Service Slugs:
1. emergency-locksmith
2. car-locksmith
3. residential-locksmith
4. commercial-locksmith
5. lock-rekeying

Additional Categories that need separate pages:
1. Key Duplication Service

Additional Category Slugs:
1. key-duplication

Local Coverage Areas:
1. Hialeah
2. Coral Gables
3. Doral
4. Hollywood

Approved Expansion Areas:
None in Phase 1.

GeoArticles per Service:
3

Default Page Status:
Planned

Default Priority:
P3
```

# Cuerpo operativo del Paso 3

## Regla 1 — Cada página tiene una fila

### Explicación

La matriz base convierte arquitectura en producción. Si una página no tiene fila, no existe dentro del sistema operativo.

### Patrón o fórmula

```text
One URL = one row = one page type = one function
```

### Ejemplo correcto con ABC Locksmith

```text
HP-001 | Homepage | / | P1 | Phase 1
```

### Ejemplos incorrectos

```text
- Crear contenido sin fila
- Crear URL fuera de la matriz
- Publicar sin ID
```

### Regla final

```text
Toda página publicada debe existir primero en la matriz.
```

## Regla 2 — Local Coverage Areas no tienen filas base

### Explicación

Hialeah, Coral Gables, Doral y Hollywood son zonas de cobertura en el ejemplo, pero no generan filas mientras no sean Approved Expansion Areas.

### Patrón o fórmula

```text
Local Coverage Area → content field, not URL row
```

### Ejemplo correcto con ABC Locksmith

```text
Hialeah aparece en la columna Content Notes o Local Coverage Areas, no como /hialeah/
```

### Ejemplos incorrectos

```text
- GH-002 /hialeah/ sin aprobación
- LBS para Doral en fase base
- GeoArticle de Hollywood sin landing
```

### Regla final

```text
Las áreas de cobertura se documentan, no se convierten en filas por defecto.
```

## Regla 3 — ID por tipo de página

### Explicación

Los IDs permiten filtrar, auditar y producir por lotes.

### Patrón o fórmula

```text
HP, SO, GH, LBS, AC, GA
```

### Ejemplo correcto con ABC Locksmith

```text
LBS-001 = /locksmith/miami/emergency-locksmith/
```

### Ejemplos incorrectos

```text
- IDs aleatorios
- No usar IDs
- Mismo ID para varias URLs
```

### Regla final

```text
Cada fila debe tener un ID único.
```

## Regla 4 — Parent Page obligatorio

### Explicación

Cada página debe tener una relación de dependencia. Esto evita páginas huérfanas.

### Patrón o fórmula

```text
Child page → parent page
```

### Ejemplo correcto con ABC Locksmith

```text
LBS-001 parent = /locksmith/emergency-locksmith/
```

### Ejemplos incorrectos

```text
- GeoArticle sin service page
- Additional Category sin GeoHub
- Service Overview sin homepage
```

### Regla final

```text
Cada página debe saber de qué depende y a qué apoya.
```

## Regla 5 — Schema asignado desde matriz

### Explicación

La matriz debe definir el schema antes de producir contenido.

### Patrón o fórmula

```text
Page Type → Schema Type
```

### Ejemplo correcto con ABC Locksmith

```text
Location-Based Service → LocalBusiness + BreadcrumbList
```

### Ejemplos incorrectos

```text
- Schema decidido al final
- Mismo schema para todo
- Sin schema en GeoArticles
```

### Regla final

```text
El schema se planifica en la matriz.
```

## Regla 6 — Internal Links Required

### Explicación

La matriz debe listar enlaces obligatorios para evitar páginas aisladas.

### Patrón o fórmula

```text
URL → required links
```

### Ejemplo correcto con ABC Locksmith

```text
/locksmith/miami/emergency-locksmith/ → parent service + /miami/ + related services + articles
```

### Ejemplos incorrectos

```text
- Solo footer links
- Sin enlace al GeoHub
- Sin enlace al servicio padre
```

### Regla final

```text
Los enlaces internos se planifican antes del contenido.
```

## Regla 7 — Priority y Phase

### Explicación

Cada fila debe tener prioridad y fase. La matriz no es solo inventario, también es cola de producción.

### Patrón o fórmula

```text
Priority + Publish Phase
```

### Ejemplo correcto con ABC Locksmith

```text
/locksmith/miami/emergency-locksmith/ → P1 / Phase 2
```

### Ejemplos incorrectos

```text
- Todas P1
- Sin fase
- Publicar según intuición
```

### Regla final

```text
La producción se decide en la matriz.
```

## Regla 8 — Status

### Explicación

El estado permite saber si una página está planificada, en borrador, en QA o publicada.

### Patrón o fórmula

```text
Planned → Draft → Ready for QA → Approved → Published
```

### Ejemplo correcto con ABC Locksmith

```text
GA-001 status = Blocked until LBS exists
```

### Ejemplos incorrectos

```text
- Publicada sin QA
- Borrador sin responsable
- Estado vacío
```

### Regla final

```text
Ninguna página debe estar sin status.
```


## Columnas obligatorias de la URL Matrix

| Columna | Nombre | Función |
|---|---|---|
| A | ID | Identificador único |
| B | Page Type | Tipo de página GMB Crush |
| C | Parent Page | Página padre |
| D | Service | Servicio |
| E | Service Slug | Slug del servicio |
| F | Main City | Ciudad principal |
| G | Main City Slug | Slug de la ciudad |
| H | Additional Category | Categoría adicional, si aplica |
| I | Local Coverage Areas | Zonas mencionadas en contenido |
| J | Approved Expansion Area | Solo si aplica |
| K | URL | URL final |
| L | H1 | H1 recomendado |
| M | Meta Title | Title SEO |
| N | Meta Description | Descripción SEO |
| O | Schema Type | Schema recomendado |
| P | Internal Links Required | Enlaces obligatorios |
| Q | Priority | P1/P2/P3/P4 |
| R | Publish Phase | Fase |
| S | Status | Estado |
| T | Notes | Notas estratégicas |

## Ejemplo de URL Matrix base

| ID | Page Type | URL | H1 | Schema | Priority | Phase |
|---|---|---|---|---|---|---|
| HP-001 | Homepage | `/` | ABC Locksmith – Trusted Locksmith Services in Miami, FL | Organization, WebSite, LocalBusiness | P1 | Phase 1 |
| SO-001 | Service Overview | `/locksmith/emergency-locksmith/` | Professional Emergency Locksmith Services by ABC Locksmith | Service, WebPage, BreadcrumbList | P1 | Phase 1 |
| GH-001 | GeoHub | `/miami/` | ABC Locksmith – Locksmith Services in Miami | CollectionPage, BreadcrumbList | P1 | Phase 1 |
| LBS-001 | Location-Based Service | `/locksmith/miami/emergency-locksmith/` | ABC Locksmith – Emergency Locksmith in Miami | LocalBusiness, BreadcrumbList | P1 | Phase 2 |
| AC-001 | Additional Category | `/locksmith/miami/key-duplication/` | ABC Locksmith – Expert Key Duplication in Miami | Service, BreadcrumbList | P3 | Phase 2 |
| GA-001 | GeoArticle | `/miami/emergency-locksmith-cost-guide/` | How Much Does an Emergency Locksmith Cost in Miami? | Article, FAQPage, BreadcrumbList | P3 | Phase 3 |

## Filas que NO se generan en la base

```text
/hialeah/
/locksmith/hialeah/emergency-locksmith/
/coral-gables/
/locksmith/doral/car-locksmith/
/hollywood/emergency-locksmith-cost-guide/
```

Estas URLs solo se generarían si esas zonas pasan a Approved Expansion Areas.

## Una fila por URL real — Regla operativa 1

### Explicación

La matriz base no es una lista de ideas; es una tabla de producción. Cada fila debe corresponder a una URL real que se va a crear o mantener. Si una zona solo se menciona dentro del contenido, no debe aparecer como fila.

### Patrón o fórmula

```text
URL aprobada → fila única → page type → estado
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith tiene una fila para /locksmith/miami/emergency-locksmith/ y no tiene filas para /hialeah/ en la fase base.
```

### Ejemplos incorrectos

```text
- Crear filas para Hialeah, Doral y Hollywood como cobertura sin aprobación
- Añadir ideas de artículos sin URL
- Duplicar una misma URL con dos IDs
```

### Regla final

```text
La matriz solo contiene URLs aprobadas.
```

## ID por tipo de página — Regla operativa 2

### Explicación

Cada fila necesita un ID legible para controlar producción, QA y enlaces. El ID debe indicar el tipo de página y su orden, sin depender de títulos largos o slugs complejos.

### Patrón o fórmula

```text
HP / SO / GH / LBS / AC / GA + número correlativo
```

### Ejemplo correcto con ABC Locksmith

```text
LBS-001 identifica /locksmith/miami/emergency-locksmith/ y GA-001 identifica /miami/emergency-locksmith-cost-guide/.
```

### Ejemplos incorrectos

```text
- Usar IDs aleatorios
- Repetir LBS-001 para varias páginas
- No diferenciar artículos de páginas comerciales
```

### Regla final

```text
El ID debe identificar el tipo de página sin ambigüedad.
```

## Parent Page obligatorio — Regla operativa 3

### Explicación

Cada página que no sea homepage necesita una página padre o una página de soporte. Esto ayuda a construir el silo y a saber desde dónde se enlazará cada URL.

### Patrón o fórmula

```text
Page Type → Parent Page → Internal Link Required
```

### Ejemplo correcto con ABC Locksmith

```text
La página /locksmith/miami/emergency-locksmith/ tiene como parent /locksmith/emergency-locksmith/ y como GeoHub /miami/.
```

### Ejemplos incorrectos

```text
- Dejar Parent Page vacío en páginas locales
- Asignar homepage como padre de todos los artículos
- Usar una página inexistente como parent
```

### Regla final

```text
Toda URL debe saber de qué página depende.
```

## Main City como campo geográfico base — Regla operativa 4

### Explicación

En la matriz base, el campo City debe corresponder a la Main City. Las Local Coverage Areas pueden aparecer en notas o contenido, pero no como city rows.

### Patrón o fórmula

```text
Main City → City column | Local Coverage Areas → Notes / Content Brief
```

### Ejemplo correcto con ABC Locksmith

```text
Las filas comerciales de ABC Locksmith usan City = Miami; Hialeah, Coral Gables, Doral y Hollywood quedan en Notes como Local Coverage Areas.
```

### Ejemplos incorrectos

```text
- Poner Hialeah en la columna City sin URL aprobada
- Crear slugs de cobertura en la matriz base
- Mezclar ciudad principal y zonas de cobertura en el mismo campo
```

### Regla final

```text
La columna City representa la ciudad de la URL, no una lista de cobertura.
```

## Schema Type asignado desde la matriz — Regla operativa 5

### Explicación

La matriz debe incluir schema requerido por tipo de página para que el equipo no lo decida al final. Esto evita que páginas locales salgan sin LocalBusiness, Service, Article o BreadcrumbList.

### Patrón o fórmula

```text
Page Type → Schema Required → QA Schema
```

### Ejemplo correcto con ABC Locksmith

```text
LBS-001 usa LocalBusiness y BreadcrumbList; GA-001 usa Article, FAQPage, BreadcrumbList y Speakable.
```

### Ejemplos incorrectos

```text
- Dejar schema vacío hasta el final
- Usar Article schema en una landing comercial
- Usar LocalBusiness con dirección falsa en una zona de cobertura
```

### Regla final

```text
El schema se decide en la matriz, no después de publicar.
```

## Internal Links Required como columna crítica — Regla operativa 6

### Explicación

La matriz debe listar enlaces obligatorios para cada URL. Sin esta columna, las páginas pueden publicarse aisladas y el sistema pierde fuerza de silo.

### Patrón o fórmula

```text
Source URL → Required Links → QA de enlaces
```

### Ejemplo correcto con ABC Locksmith

```text
LBS-001 requiere enlaces a /locksmith/emergency-locksmith/, /miami/, páginas relacionadas en Miami y GeoArticles.
```

### Ejemplos incorrectos

```text
- Publicar páginas sin enlaces obligatorios
- Enlazar a áreas de cobertura sin URL
- Usar solo enlaces de footer
```

### Regla final

```text
Toda fila debe llevar enlaces internos mínimos antes de QA.
```

## Priority y Publish Phase separados — Regla operativa 7

### Explicación

La prioridad mide importancia estratégica; la fase mide cuándo se publica. Una página P1 puede estar bloqueada si su padre no existe. La matriz debe incluir ambos campos para evitar publicar por impulso.

### Patrón o fórmula

```text
Priority Tier + Dependency → Publish Phase
```

### Ejemplo correcto con ABC Locksmith

```text
GA-001 puede ser P3, pero queda en Phase 3 porque primero deben existir /miami/ y /locksmith/miami/emergency-locksmith/.
```

### Ejemplos incorrectos

```text
- Publicar GeoArticles P3 antes de landings P1
- Confundir score alto con listo para publicar
- No marcar páginas bloqueadas por dependencia
```

### Regla final

```text
Prioridad no elimina dependencias.
```

## Status operativo — Regla operativa 8

### Explicación

Cada URL necesita un estado para controlar el flujo de producción. Planned, Draft, Ready for QA, Approved y Published son estados suficientes para saber qué hacer con cada fila.

### Patrón o fórmula

```text
Planned → Draft → Ready for QA → Approved → Published
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith marca /locksmith/miami/emergency-locksmith/ como Planned hasta que el contenido y links estén listos.
```

### Ejemplos incorrectos

```text
- Usar estados vagos como “en proceso”
- Publicar sin pasar por Ready for QA
- No actualizar estado después de QA
```

### Regla final

```text
La matriz debe mostrar el estado real de cada página.
```

## Notes para decisiones estratégicas — Regla operativa 9

### Explicación

La columna Notes debe registrar por qué una página existe, qué categoría soporta, si consolida una categoría adicional o qué cobertura local debe mencionarse. Esto ayuda a evitar repetir discusiones.

### Patrón o fórmula

```text
Decisión estratégica → Notes → trazabilidad
```

### Ejemplo correcto con ABC Locksmith

```text
La fila /locksmith/miami/emergency-locksmith/ indica que soporta Primary Category Locksmith y Additional Category Emergency Locksmith Service.
```

### Ejemplos incorrectos

```text
- Dejar notas vacías en páginas complejas
- No documentar por qué una categoría adicional se consolida
- No indicar Local Coverage Areas relevantes
```

### Regla final

```text
Las notas deben explicar decisiones que podrían confundirse.
```

## Matriz base antes de contenido — Regla operativa 10

### Explicación

No se debe escribir contenido página por página sin haber cerrado la matriz. La matriz es el contrato operativo entre arquitectura, contenido, schema, enlaces y publicación.

### Patrón o fórmula

```text
URL Matrix aprobada → briefs → contenido → QA
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith aprueba primero sus 28 URLs base antes de redactar los textos de homepage, servicios, GeoHub y GeoArticles.
```

### Ejemplos incorrectos

```text
- Redactar páginas sin saber si existen en la matriz
- Crear nuevos slugs durante escritura
- Cambiar page type sin actualizar matriz
```

### Regla final

```text
La matriz manda; el contenido sigue.
```

## Checklist final del Paso 3

| Check | Pregunta | Estado |
|---|---|---|
| ID | ¿Cada página tiene identificador único? | ✅ / ⬜ |
| Page Type | ¿Cada fila tiene tipo de página correcto? | ✅ / ⬜ |
| Parent Page | ¿Cada página tiene dependencia clara? | ✅ / ⬜ |
| Main City | ¿La base usa solo la Main City? | ✅ / ⬜ |
| Local Coverage Areas | ¿Se documentan sin generar URLs? | ✅ / ⬜ |
| URL | ¿La URL sigue el patrón del Paso 4? | ✅ / ⬜ |
| Schema | ¿El schema está asignado? | ✅ / ⬜ |
| Internal Links | ¿Los enlaces obligatorios están listados? | ✅ / ⬜ |
| Priority | ¿La prioridad está definida? | ✅ / ⬜ |
| Status | ¿El estado de producción está claro? | ✅ / ⬜ |

## Outputs del Paso 3

- URL Matrix creada
- Filas base generadas
- Local Coverage Areas documentadas como contenido
- IDs asignados
- Parent pages definidos
- Schema inicial asignado
- Internal links requeridos añadidos
- Prioridades y fases preparadas