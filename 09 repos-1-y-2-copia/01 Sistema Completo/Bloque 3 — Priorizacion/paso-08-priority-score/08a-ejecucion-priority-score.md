Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# §1 Paso 8 — Priority Score

## §2 Índice corto

**Paso 8 — Priority Score**

## §3 Objetivo del Paso 8

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: decidir qué páginas se producen primero usando criterios comerciales, GBP, intención y relevancia local.
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
Error que previene: publicar artículos antes de landings comerciales.
Error que previene: priorizar servicios de bajo valor antes de servicios urgentes.
Error que previene: usar City Priority cuando la base ya trabaja con una sola Main City.
Error que previene: crear páginas sin relación con la categoría GBP.
Error que previene: producir todo sin fases.

## §4 Lo que tienes que rellenar

```text
Business Name:

Planned Primary GBP Category:

Main City:

Page Type:
Homepage / Service Overview / Main City GeoHub / Location-Based Service / Additional Category / GeoArticle

Service:

Additional Category:

URL:

Revenue Value:
1 / 2 / 3 / 4 / 5

Search Intent:
1 / 2 / 3 / 4 / 5

GBP Category Relevance:
1 / 2 / 3 / 4 / 5

Local Relevance:
1 / 2 / 3 / 4 / 5

Competition Gap:
1 / 2 / 3 / 4 / 5

Conversion Urgency:
1 / 2 / 3 / 4 / 5

Existing Page?
Yes / No

Existing Ranking?
None / Low / Medium / High

Notes:
```

## §5 Ejemplo rellenado

```text
Business Name:
Cerrajeros Madrid 24h

Planned Primary GBP Category:
Cerrajero

Main City:
Madrid

Page Type:
Location-Based Service

Service:
Cerrajero urgente

Additional Category:
Servicio de cerrajería de urgencia covered by core service

URL:
/cerrajero/madrid/cerrajero-urgente/

Revenue Value:
5

Search Intent:
5

GBP Category Relevance:
5

Local Relevance:
5

Competition Gap:
4

Conversion Urgency:
5

Existing Page?
No

Existing Ranking?
None

Notes:
Urgentee cerrajero is high-value, urgente, directly aligned with cerrajero intent, and important for Madrid Local Pack visibility.
```

# §6 Cuerpo operativo del Paso 8

> **Definición operativa — Local Coverage Areas:** zonas, barrios, distritos o landmarks seleccionados desde la dirección física, la Main City, la coherencia GEO, la proximidad, los datos de búsqueda, los competidores y la lógica GMB Crush para reforzar relevancia local dentro del contenido, schema y futuros análisis. No son automáticamente URLs. No son automáticamente páginas propias. No son necesariamente oficinas físicas. Las Local Coverage Areas se usan primero como señales GEO dentro del contenido. No generan URLs por defecto.

## §7 Regla 1 — Fórmula de prioridad

### §7.1 Explicación

El score sustituye la intuición por una fórmula. Como la base usa una Main City, no usamos City Priority; usamos Local Relevance.

### §7.2 Patrón o fórmula

```text
Revenue Value + Search Intent + GBP Category Relevance + Local Relevance + Competition Gap + Conversion Urgency
```

### §7.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
5 + 5 + 5 + 5 + 4 + 5 = 29
```

### §7.4 Ejemplos incorrectos

```text
- Usar City Priority con una sola ciudad
- Dar P1 a todo
- No considerar conversión
```

### §7.5 Regla final

```text
La prioridad se calcula con seis factores.
```

## §8 Regla 2 — Revenue Value

### §8.1 Explicación

Mide el valor económico del servicio o página.

### §8.2 Patrón o fórmula

```text
1 low value → 5 high value
```

### §8.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente = 5; Duplicado de llaves = 2
```

### §8.4 Ejemplos incorrectos

```text
- Asignar 5 a todos
- Ignorar ticket medio
- Priorizar páginas de bajo margen
```

### §8.5 Regla final

```text
Los servicios más rentables pesan más.
```

## §9 Regla 3 — Search Intent

### §9.1 Explicación

Mide si la búsqueda indica compra o urgencia.

### §9.2 Patrón o fórmula

```text
1 informational → 5 urgente buying intent
```

### §9.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
cerrajero urgente en Madrid = 5
```

### §9.4 Ejemplos incorrectos

```text
- how locks work = 1 pero producirlo primero
- guía de precios antes que landing
- No diferenciar intención
```

### §9.5 Regla final

```text
La intención comercial manda sobre contenido informativo.
```

## §10 Regla 4 — GBP Category Relevance

### §10.1 Explicación

Mide cuánto apoya la página a la categoría principal o adicional del GBP.

### §10.2 Patrón o fórmula

```text
1 weak → 5 direct GBP support
```

### §10.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente = 5; Duplicado de llaves = 4
```

### §10.4 Ejemplos incorrectos

```text
- Página genérica de seguridad = P1
- Ignorar categoría adicional
- Crear servicios no GBP
```

### §10.5 Regla final

```text
La web debe respaldar el GBP.
```

## §11 Regla 5 — Local Relevance

### §11.1 Explicación

Mide cuánto refuerza la Main City, la ubicación real, el NAP, el GeoHub y las Local Coverage Areas.

### §11.2 Patrón o fórmula

```text
1 weak local signal → 5 strong Main City relevance
```

### §11.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ = 5
```

### §11.4 Ejemplos incorrectos

```text
- Artículo genérico sin Madrid
- Página que mezcla zonas
- No usar Main City
```

### §11.5 Regla final

```text
La relevancia local sustituye a City Priority en la base.
```

## §12 Regla 6 — Competition Gap

### §12.1 Explicación

Mide la oportunidad frente a competidores.

### §12.2 Patrón o fórmula

```text
1 hard → 5 weak competitor gap
```

### §12.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Competidores con pages genéricas = 4
```

### §12.4 Ejemplos incorrectos

```text
- No mirar gaps
- Asumir dificultad sin analizar
- Copiar competidores
```

### §12.5 Regla final

```text
Donde la competencia es débil, se acelera.
```

## §13 Regla 7 — Conversion Urgency

### §13.1 Explicación

Mide si el usuario necesita resolver ahora.

### §13.2 Patrón o fórmula

```text
1 sin urgencia → 5 llamada inmediata
```

### §13.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Apertura urgente de puerta = 5
```

### §13.4 Ejemplos incorrectos

```text
- Key duplication antes de urgente
- Blog antes de servicio urgente
- No diferenciar urgencia
```

### §13.5 Regla final

```text
La urgencia acelera publicación.
```

## §14 Regla 8 — Priority Tiers

### §14.1 Explicación

El score se convierte en una prioridad operativa.

### §14.2 Patrón o fórmula

```text
26–30 P1; 21–25 P2; 16–20 P3; 10–15 P4; 0–9 Hold
```

### §14.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
29 = P1
```

### §14.4 Ejemplos incorrectos

```text
- Score sin tier
- Tier sin score
- Hold ignorado
```

### §14.5 Regla final

```text
Cada página debe tener score y tier.
```

## §15 Regla 9 — Páginas comerciales antes que semánticas

### §15.1 Explicación

Las páginas comerciales preceden a los GeoArticles que las apoyan.

### §15.2 Patrón o fórmula

```text
Landing first → article second
```

### §15.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ antes de /madrid/cuanto-cuesta-un-cerrajero-urgente/
```

### §15.4 Ejemplos incorrectos

```text
- Artículo P1 sin landing
- Cost guide antes de service page
- Cluster sin destino
```

### §15.5 Regla final

```text
Los boosters se publican después de sus landings.
```

## §16 Regla 10 — Homepage siempre P1

### §16.1 Explicación

La homepage es el Root Entity Anchor y siempre se prioriza.

### §16.2 Patrón o fórmula

```text
Homepage = P1
```

### §16.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/ = P1
```

### §16.4 Ejemplos incorrectos

```text
- Homepage después de artículos
- Homepage sin servicio core
- Homepage P3
```

### §16.5 Regla final

```text
La homepage va primero.
```


## §17 Tabla de prioridad para Cerrajeros Madrid 24h

| Page Type | URL | Revenue | Intent | GBP | Local | Gap | Urgency | Score | Priority |
|---|---|---:|---:|---:|---:|---:|---:|---:|---|
| Homepage | `/` | 5 | 5 | 5 | 5 | 4 | 5 | 29 | P1 |
| Service Overview | `/cerrajero/cerrajero-urgente/` | 5 | 5 | 5 | 4 | 4 | 5 | 28 | P1 |
| Service Overview | `/cerrajero/apertura-puertas/` | 4 | 5 | 4 | 4 | 4 | 5 | 26 | P1 |
| Main City GeoHub | `/madrid/` | 4 | 4 | 5 | 5 | 4 | 4 | 26 | P1 |
| Location-Based Service | `/cerrajero/madrid/cerrajero-urgente/` | 5 | 5 | 5 | 5 | 4 | 5 | 29 | P1 |
| Location-Based Service | `/cerrajero/madrid/apertura-puertas/` | 4 | 5 | 4 | 5 | 4 | 5 | 27 | P1 |
| Location-Based Service | `/cerrajero/madrid/cambio-bombines/` | 5 | 4 | 4 | 5 | 3 | 4 | 25 | P2 |
| Location-Based Service | `/cerrajero/madrid/cambio-cerraduras/` | 4 | 4 | 4 | 5 | 3 | 4 | 24 | P2 |
| Additional Category | `/cerrajero/madrid/duplicado-llaves/` | 2 | 3 | 4 | 5 | 3 | 2 | 19 | P3 |
| GeoArticle | `/madrid/cuanto-cuesta-un-cerrajero-urgente/` | 3 | 3 | 4 | 5 | 4 | 3 | 22 | P2 after landing |

## §18 Orden recomendado

```text
1. Homepage
2. Service Overview Pages prioritarias
3. Main City GeoHub
4. Main City cerrajero urgente/apertura de puertas/cambio de bombines
5. Páginas de servicio restantes de la Main City
6. Additional Category Page
7. GeoArticle clusters
8. Optimización y revisión de expansión
```

## §19 Revenue Value — Regla operativa 1

### §19.1 Explicación

El valor económico del servicio debe influir en el orden de producción. Servicios de alto ticket o alto margen deben avanzar antes que páginas de bajo retorno, siempre que estén alineados con GBP.

### §19.2 Patrón o fórmula

```text
Revenue Value 1–5 → parte del score total
```

### §19.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente obtiene 5 por urgencia y valor; Duplicado de llaves obtiene 2 o 3 según margen.
```

### §19.4 Ejemplos incorrectos

```text
- Priorizar contenido informativo antes que servicios rentables
- Dar 5 a todos los servicios
- No diferenciar ticket bajo y alto
```

### §19.5 Regla final

```text
La prioridad debe reflejar valor económico real.
```

## §20 Search Intent — Regla operativa 2

### §20.1 Explicación

La intención de búsqueda mide qué tan cerca está el usuario de convertirse en lead. Las búsquedas urgentes y transaccionales deben tener puntuación alta.

### §20.2 Patrón o fórmula

```text
Informacional 1–2 | Comercial 3–4 | Urgentee 5
```

### §20.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
cerrajero urgente en Madrid obtiene 5; qué es cambiar un bombín obtiene 2.
```

### §20.4 Ejemplos incorrectos

```text
- Tratar todos los contenidos como intención 5
- Priorizar artículos de awareness antes que landings
- No distinguir investigación de urgencia
```

### §20.5 Regla final

```text
La intención de compra guía el orden de publicación.
```

## §21 GBP Category Relevance — Regla operativa 3

### §21.1 Explicación

Las páginas que soportan la categoría principal o categorías adicionales del GBP deben tener más prioridad. Esto conecta web y perfil de negocio.

### §21.2 Patrón o fórmula

```text
Primary category support = 5 | Additional category support = 4
```

### §21.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente y Apertura de puertas refuerzan Cerrajero; Duplicado de llaves refuerza una categoría adicional.
```

### §21.4 Ejemplos incorrectos

```text
- Priorizar servicios fuera de categoría
- Ignorar categorías adicionales del GBP
- Crear contenido que no soporta GBP
```

### §21.5 Regla final

```text
La web debe reforzar lo que el GBP intenta posicionar.
```

## §22 Local Relevance — Regla operativa 4

### §22.1 Explicación

En la versión simplificada, City Priority se reemplaza por Local Relevance. Este factor mide cuánto una página refuerza Main City, cobertura local real y señales de proximidad sin crear URLs innecesarias.

### §22.2 Patrón o fórmula

```text
Main City + coverage fit + NAP alignment → Local Relevance 1–5
```

### §22.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ obtiene 5 porque conecta servicio urgente con Main City y cobertura local real.
```

### §22.4 Ejemplos incorrectos

```text
- Usar City Priority cuando solo hay una Main City
- Premiar páginas de expansión no aprobadas
- Dar relevancia alta a zonas no atendidas
```

### §22.5 Regla final

```text
Local Relevance mide encaje local, no número de ciudades.
```

## §23 Competition Gap — Regla operativa 5

### §23.1 Explicación

La oportunidad competitiva valora si los competidores tienen páginas débiles, genéricas o sin estructura. Un gap alto justifica publicar antes.

### §23.2 Patrón o fórmula

```text
Competidores débiles → 4–5 | competidores fuertes → 1–2
```

### §23.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si competidores en Madrid solo tienen /services/, Cerrajeros Madrid 24h da 4 a /cerrajero/madrid/cerrajero-urgente/.
```

### §23.4 Ejemplos incorrectos

```text
- Asumir gap sin revisar SERP
- No diferenciar nichos competidos
- Usar gap alto para todas las páginas
```

### §23.5 Regla final

```text
El gap competitivo debe basarse en oportunidad real.
```

## §24 Conversion Urgency — Regla operativa 6

### §24.1 Explicación

La urgencia mide si el usuario necesita resolver ahora. Servicios de emergencia, bloqueo o pérdida de acceso suelen puntuar alto.

### §24.2 Patrón o fórmula

```text
No urgente 1–2 | moderado 3 | urgente 4–5
```

### §24.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente obtiene 5; Duplicado de llaves puede obtener 2.
```

### §24.4 Ejemplos incorrectos

```text
- Dar urgencia alta a guías informativas
- No priorizar aperturas urgentes
- Confundir frecuencia con urgencia
```

### §24.5 Regla final

```text
La urgencia aumenta prioridad de páginas comerciales.
```

## §25 Page Type Adjustment — Regla operativa 7

### §25.1 Explicación

El score debe interpretarse según el tipo de página. Homepage y páginas core son P1 por dependencia aunque no se calculen como un servicio específico. GeoArticles normalmente se publican después de landings.

### §25.2 Patrón o fórmula

```text
Page Type + Score + Dependency → Priority final
```

### §25.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Homepage es P1; /madrid/cuanto-cuesta-un-cerrajero-urgente/ puede ser P3 aunque su tema sea importante.
```

### §25.4 Ejemplos incorrectos

```text
- Publicar artículos antes de landings por score temático
- Marcar homepage como P3
- Ignorar dependencias de page type
```

### §25.5 Regla final

```text
El score se ajusta por función dentro del sistema.
```

## §26 Local Coverage Areas sin score propio — Regla operativa 8

### §26.1 Explicación

Las Local Coverage Areas no reciben score en la base porque no generan URLs. Solo se puntúan si pasan a Approved Expansion Areas.

### §26.2 Patrón o fórmula

```text
Coverage area → sin score | Approved Expansion Area → score
```

### §26.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro no recibe score como página en Phase 1; si se aprueba expansión, se evalúa con la fórmula.
```

### §26.4 Ejemplos incorrectos

```text
- Asignar score a zonas sin URL
- Crear ranking de coverage areas para publicar páginas
- Confundir menciones de contenido con páginas
```

### §26.5 Regla final

```text
Solo se puntúan URLs o expansiones aprobadas.
```

## §27 Publish Phase derivada — Regla operativa 9

### §27.1 Explicación

La prioridad no basta; también hay que ubicar la página en una fase. Las fases protegen dependencias y evitan publicar soporte antes de la base.

### §27.2 Patrón o fórmula

```text
Priority + dependencies → Phase
```

### §27.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ puede ser P1/P2 y Phase 2; el artículo relacionado es Phase 3.
```

### §27.4 Ejemplos incorrectos

```text
- Publicar Phase 3 antes de Phase 2
- Crear calendarios solo por score
- No revisar si existe el parent
```

### §27.5 Regla final

```text
La fase convierte prioridad en ejecución ordenada.
```

## §28 Revisión periódica del score — Regla operativa 10

### §28.1 Explicación

Los scores no son eternos. Después de publicar y medir, Search Console, leads y geo-grid pueden cambiar prioridades futuras, especialmente para GeoArticles o expansión.

### §28.2 Patrón o fórmula

```text
Datos reales → revisar score → actualizar plan
```

### §28.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si /cerrajero/madrid/apertura-puertas/ genera más leads que expected, Cerrajeros Madrid 24h puede subir prioridad de sus GeoArticles.
```

### §28.4 Ejemplos incorrectos

```text
- Mantener scores sin revisar
- Ignorar datos de conversión
- No actualizar competencia o intención
```

### §28.5 Regla final

```text
El score es operativo y debe revisarse con datos.
```

## §29 Checklist final del Paso 8

| Check | Pregunta | Estado |
|---|---|---|
| Score formula | ¿Se usa Local Relevance en vez de City Priority? | ✅ / ⬜ |
| Revenue | ¿El valor económico está puntuado? | ✅ / ⬜ |
| Intent | ¿La intención de búsqueda está puntuado? | ✅ / ⬜ |
| GBP | ¿La relevancia con categoría GBP está clara? | ✅ / ⬜ |
| Local | ¿La página refuerza Main City y cobertura real? | ✅ / ⬜ |
| Gap | ¿Se consideró oportunidad competitiva? | ✅ / ⬜ |
| Urgency | ¿La urgencia de conversión está puntuada? | ✅ / ⬜ |
| Tier | ¿Cada página tiene P1/P2/P3/P4/Hold? | ✅ / ⬜ |
| Dependencies | ¿Los artículos no van antes de landings? | ✅ / ⬜ |

## §30 Outputs del Paso 8

- Fórmula de prioridad definida
- Scores por página
- Tiers P1-P4 asignados
- Orden inicial de publicación
- Dependencias de GeoArticles revisadas
- Priorización basada en negocio y GBP

---

# §31 Fuentes internas GMB Crush usadas

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework



### §31.1 Inventario SEO base — Priority Score completo

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
