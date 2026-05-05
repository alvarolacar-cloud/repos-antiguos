Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 10 — Producción en Fases

## Índice corto

**Paso 10 — Producción en Fases**

## Objetivo del Paso 10

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: convertir la matriz y las prioridades en un calendario de construcción realista con dependencias claras.
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
Error que previene: publicar todas las páginas de golpe.
Error que previene: crear GeoArticles antes de sus landings.
Error que previene: activar expansión antes de terminar la Main City.
Error que previene: olvidar QA entre producción y publicación.
Error que previene: crear contenido sin enlaces internos preparados.

## Lo que tienes que rellenar

```text
Business Name:

Website Root Domain:

Primary GBP Category:

Primary Category Slug:

Main City:

Main City Slug:

Physical Location City:

Top Priority Services:
1.
2.
3.

Servicios principales:
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

Total Base Pages Calculated:

Homepage Status:
Not Started / Draft / Published

Service Overview Pages Status:
Not Started / Draft / Published

Main City GeoHub Status:
Not Started / Draft / Published

Main City Location-Based Service Pages Status:
Not Started / Draft / Published

Additional Category Pages Status:
Not Started / Draft / Published

GeoArticle Pages Status:
Not Started / Draft / Published

Publishing Capacity:
How many pages can be produced per week?

Content Team:
Solo / Writer / SEO / Developer / Designer

CMS:
WordPress / Webflow / Shopify / Custom / Other

Can schema be added?
Yes / No

Can internal links be edited manually?
Yes / No

Can Google reviews be embedded?
Yes / No

Tracking Available:
GMB Crush Geo Grid / Google Search Console / GA4 / Rank Tracker / None
```

## Ejemplo rellenado

```text
Business Name:
Cerrajeros Madrid 24h

Website Root Domain:
https://www.cerrajerosmadrid24h.com

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

Top Priority Services:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de bombines

Servicios principales:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de cerraduras
4. Cambio de bombines
5. Instalación de cerraduras de seguridad

Additional GBP Categories that need pages:
1. Servicio de duplicado de llaves

Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca
4. Retiro

Approved Expansion Areas:
None in Phase 1.

Total Base Pages Calculated:
28

Publishing Capacity:
5 pages per week

Content Team:
SEO + Writer + Developer

CMS:
WordPress

Can schema be added?
Yes

Can internal links be edited manually?
Yes

Can Google reviews be embedded?
Yes

Tracking Available:
GMB Crush Geo Grid, Google Search Console, GA4
```

# Cuerpo operativo del Paso 10

## Fase 1 — Entity Foundation

### Explicación

Construye la entidad base: homepage, contacto, about, top service overview pages y Main City GeoHub.

### Patrón o fórmula

```text
Homepage + Contacto + About + Top Service Overview + Main City GeoHub
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/, /contact/, /cerrajero/cerrajero-urgente/, /cerrajero/apertura-puertas/, /madrid/
```

### Ejemplos incorrectos

```text
- Empezar por artículos
- Crear expansión antes de homepage
- Publicar páginas sin NAP
```

### Regla final

```text
Primero se construye la entidad.
```

## Fase 2 — Main City Conversion Layer

### Explicación

Construye las páginas comerciales de la Main City.

### Patrón o fórmula

```text
Main City Location-Based Service Pages + Additional Category
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/, /cerrajero/madrid/apertura-puertas/, /cerrajero/madrid/duplicado-llaves/
```

### Ejemplos incorrectos

```text
- Crear /almagro/ sin aprobación
- Crear artículos antes de landings
- No enlazar al GeoHub
```

### Regla final

```text
Después de la entidad van las landings comerciales.
```

## Fase 3 — Main City Semantic Expansion

### Explicación

Construye GeoArticles que apoyan las landings ya publicadas.

### Patrón o fórmula

```text
GeoArticles for Main City
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/guia-precios-cerrajero-urgente/, /madrid/que-hacer-si-no-puedes-entrar-casa/
```

### Ejemplos incorrectos

```text
- Artículo sin landing
- Artículo sin link al GeoHub
- Artículo para cobertura no aprobada
```

### Regla final

```text
Los artículos apoyan landings existentes.
```

## Fase 4 — Optimization Loop

### Explicación

Usa datos para mejorar enlaces, metadatos, FAQs, schema y contenidos.

### Patrón o fórmula

```text
Geo-grid + GSC + QA + refresh
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Actualizar /cerrajero/madrid/cerrajero-urgente/ si tiene impresiones sin leads
```

### Ejemplos incorrectos

```text
- No medir
- Publicar y abandonar
- No revisar canibalización
```

### Regla final

```text
Publicar no es el final.
```

## Fase 5 — Optional Expansion Module

### Explicación

Solo si una Local Coverage Area se aprueba, se crean páginas de expansión.

### Patrón o fórmula

```text
Approved Expansion Area URLs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro expansion only if approved
```

### Ejemplos incorrectos

```text
- Activar todas las zonas
- Expansión sin contenido único
- Expansión antes de Main City
```

### Regla final

```text
La expansión es opcional y posterior.
```


## Calendario ejemplo con 5 páginas por semana

### Semana 1 — Entity Foundation

| Día | Página |
|---|---|
| 1 | `/` |
| 2 | `/contact/` |
| 3 | `/cerrajero/cerrajero-urgente/` |
| 4 | `/cerrajero/apertura-puertas/` |
| 5 | `/cerrajero/cambio-bombines/` |

### Semana 2 — Main City Foundation

| Día | Página |
|---|---|
| 1 | `/madrid/` |
| 2 | `/cerrajero/madrid/cerrajero-urgente/` |
| 3 | `/cerrajero/madrid/apertura-puertas/` |
| 4 | `/cerrajero/madrid/cambio-bombines/` |
| 5 | `/cerrajero/cambio-cerraduras/` |

### Semana 3 — Main City Completion

| Día | Página |
|---|---|
| 1 | `/cerrajero/instalacion-cerraduras-seguridad/` |
| 2 | `/cerrajero/madrid/cambio-cerraduras/` |
| 3 | `/cerrajero/madrid/instalacion-cerraduras-seguridad/` |
| 4 | `/cerrajero/madrid/duplicado-llaves/` |
| 5 | Internal linking QA |

### Semana 4 — First GeoArticle Cluster

| Día | Página |
|---|---|
| 1 | `/madrid/guia-precios-cerrajero-urgente/` |
| 2 | `/madrid/que-hacer-si-no-puedes-entrar-casa/` |
| 3 | `/madrid/cuanto-tarda-un-cerrajero/` |
| 4 | Schema QA |
| 5 | Geo-grid baseline |

## Dependencias de publicación

| Página | Debe existir antes |
|---|---|
| Service Overview | Homepage |
| Main City GeoHub | Homepage |
| Location-Based Service | Homepage + Service Overview + GeoHub |
| Additional Category | Homepage + GeoHub + related services |
| GeoArticle | Matching Location-Based Service + GeoHub |
| Expansion Page | Approved Expansion Area + base system published |

## Phase 1 Entity Foundation — Regla operativa 1

### Explicación

La primera fase construye la entidad: homepage, contacto, about, servicios core y Main City GeoHub. Sin esta base, las páginas locales y artículos no tienen soporte.

### Patrón o fórmula

```text
Homepage + Contacto + About + Service Overviews + Main GeoHub
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h publica /, /contact/, /about/, /cerrajero/cerrajero-urgente/ y /madrid/ en la primera base.
```

### Ejemplos incorrectos

```text
- Empezar por GeoArticles
- Publicar páginas locales sin Service Overview
- No crear contact page con NAP
```

### Regla final

```text
Primero se construye la entidad y los pilares.
```

## Phase 2 Main City Conversion — Regla operativa 2

### Explicación

La segunda fase publica las páginas comerciales de la Main City. Estas son las que captan intención servicio+ciudad y sostienen Local Pack y GBP support.

### Patrón o fórmula

```text
Páginas de servicio en la Main City + Additional Category Pages
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h publica /cerrajero/madrid/cerrajero-urgente/, /cerrajero/madrid/apertura-puertas/ y /cerrajero/madrid/duplicado-llaves/.
```

### Ejemplos incorrectos

```text
- Publicar expansión antes de Madrid
- Crear artículos sin landings
- Dejar páginas P1 sin CTA
```

### Regla final

```text
La conversión local de Main City va antes que expansión.
```

## Phase 3 Semantic Expansion — Regla operativa 3

### Explicación

La tercera fase crea GeoArticles que apoyan landings ya publicadas. Esta fase refuerza AI Overview, long-tail y enlaces internos.

### Patrón o fórmula

```text
GeoArticles → matching LBS + GeoHub
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Después de /cerrajero/madrid/cerrajero-urgente/, Cerrajeros Madrid 24h publica /madrid/guia-precios-cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- Artículo sin landing de destino
- Artículo sin enlace al GeoHub
- Publicar 15 artículos antes de las páginas comerciales
```

### Regla final

```text
Los GeoArticles apoyan páginas ya existentes.
```

## Phase 4 Optimization Loop — Regla operativa 4

### Explicación

Después de publicar, el sistema entra en optimización. Se revisan rankings, GSC, leads, CTR, schema, enlaces y contenido.

### Patrón o fórmula

```text
Publicación → medición → ajustes → refresh
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h revisa Search Console y añade FAQs si /cerrajero/madrid/apertura-puertas/ tiene impresiones pero bajo CTR.
```

### Ejemplos incorrectos

```text
- Publicar y no medir
- No actualizar enlaces después de nuevos artículos
- No revisar schema
```

### Regla final

```text
La implementación se optimiza con datos.
```

## Phase 5 Optional Expansion — Regla operativa 5

### Explicación

La expansión territorial solo se activa si una Local Coverage Area pasa a Approved Expansion Area. Esta fase no pertenece a la base.

### Patrón o fórmula

```text
Approved Expansion Area → GeoHub + service pages + articles
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Almagro se aprueba, Cerrajeros Madrid 24h crea /almagro/ y /cerrajero/almagro/cerrajero-urgente/ como Phase 5.
```

### Ejemplos incorrectos

```text
- Crear todas las áreas como fase inicial
- Copiar contenido de Madrid cambiando ciudad
- No justificar expansión
```

### Regla final

```text
La expansión es opcional y aprobada.
```

## Dependencias por lote — Regla operativa 6

### Explicación

Cada lote debe respetar dependencias. Una página hija no se publica si su padre, GeoHub o destino de enlace no existe.

### Patrón o fórmula

```text
Dependency check → lote aprobado → publicación
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El artículo /madrid/cuanto-tarda-un-cerrajero/ espera a que existan /madrid/ y /cerrajero/madrid/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- Publicar artículos huérfanos
- Publicar landings sin Service Overview
- No actualizar links tras publicar el lote
```

### Regla final

```text
Cada lote debe ser publicable y enlazable.
```

## QA por lote — Regla operativa 7

### Explicación

No basta con hacer QA página por página. Cada lote debe revisarse como conjunto: enlaces cruzados, breadcrumbs, status y coherencia de contenido.

### Patrón o fórmula

```text
Batch complete → internal links → QA → publish
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El lote de Páginas de servicio en la Main City de Cerrajeros Madrid 24h se revisa antes de publicar para asegurar enlaces entre servicios relacionados.
```

### Ejemplos incorrectos

```text
- Publicar páginas individuales sin links laterales
- No revisar breadcrumbs
- No sincronizar status en matriz
```

### Regla final

```text
Cada lote debe salir como mini-cluster completo.
```

## Capacidad de publicación realista — Regla operativa 8

### Explicación

El plan debe adaptarse a la capacidad del equipo. Producir más páginas de las que se pueden escribir, maquetar, enlazar y revisar aumenta errores.

### Patrón o fórmula

```text
Publishing Capacity → calendario semanal → QA
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Cerrajeros Madrid 24h puede publicar 5 páginas por semana, no programa 20 páginas con QA completo en una semana.
```

### Ejemplos incorrectos

```text
- Calendario irreal
- Publicar sin QA por falta de tiempo
- No asignar responsables
```

### Regla final

```text
La velocidad debe respetar calidad y revisión.
```

## Refresh de contenido — Regla operativa 9

### Explicación

Los contenidos importantes deben revisarse periódicamente. GeoArticles, FAQs, metadatos y CTAs pueden mejorar con datos de búsqueda y conversión.

### Patrón o fórmula

```text
3–6 meses → refresh → enlaces + FAQs + metadata
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h refresca /madrid/guia-precios-cerrajero-urgente/ a los 6 meses con nuevas FAQs y enlaces.
```

### Ejemplos incorrectos

```text
- No actualizar artículos
- Actualizar solo fechas sin mejorar contenido
- No añadir enlaces a nuevas páginas publicadas
```

### Regla final

```text
El contenido local debe mantenerse vivo.
```

## No expansión prematura — Regla operativa 10

### Explicación

La presión por cubrir más zonas no debe romper la base. La expansión solo llega cuando Main City, servicios core, GeoHub, artículos iniciales y tracking están funcionando.

### Patrón o fórmula

```text
Base completa → datos → expansión aprobada
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h no crea /almagro/ hasta tener el cluster de Madrid publicado y datos que justifiquen Almagro.
```

### Ejemplos incorrectos

```text
- Expandir antes de terminar Main City
- Crear páginas de zonas por volumen aparente
- Abandonar el GeoHub principal
```

### Regla final

```text
Primero dominio local central; después expansión.
```

## Checklist final del Paso 10

| Check | Pregunta | Estado |
|---|---|---|
| Phase 1 | ¿La entidad base está planificada primero? | ✅ / ⬜ |
| Phase 2 | ¿Las landings de Main City van antes de artículos? | ✅ / ⬜ |
| Phase 3 | ¿Los GeoArticles tienen landing destino? | ✅ / ⬜ |
| Phase 4 | ¿Hay tracking y optimización? | ✅ / ⬜ |
| Phase 5 | ¿La expansión está separada y aprobada? | ✅ / ⬜ |
| Dependencies | ¿Cada página tiene dependencias claras? | ✅ / ⬜ |
| QA | ¿Cada lote pasa QA antes de publicar? | ✅ / ⬜ |
| Internal links | ¿Los enlaces están listos antes de publicar? | ✅ / ⬜ |

## Outputs del Paso 10

- Plan de producción por fases
- Calendario ejemplo
- Dependencias de publicación
- Reglas de expansión opcional
- Orden de publicación recomendado
- QA por lote

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

