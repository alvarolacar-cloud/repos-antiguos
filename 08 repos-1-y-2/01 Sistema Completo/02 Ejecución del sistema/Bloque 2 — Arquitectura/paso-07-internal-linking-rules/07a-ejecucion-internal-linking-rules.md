Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# §1 Paso 7 — Internal Linking Rules

## §2 Índice corto

**Paso 7 — Internal Linking Rules**

## §3 Objetivo del Paso 7

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: definir cómo se conectan las páginas para crear un silo local claro, sin enlaces caóticos ni páginas huérfanas.
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
Error que previene: crear páginas sin enlaces hacia sus padres.
Error que previene: enlazar a Local Coverage Areas sin URL aprobada.
Error que previene: usar solo enlaces de footer.
Error que previene: no variar anchor text.
Error que previene: dejar GeoArticles sin enlace a la landing comercial.

## §4 Lo que tienes que rellenar

```text
Business Name:

Website Root Domain:

Homepage URL:

Planned Primary GBP Category:

Primary Category Slug:

Main City:

Main City GeoHub URL:

Service Overview Pages:
1.
2.
3.
4.
5.

Main City Location-Based Service Pages:
1.
2.
3.
4.
5.

Páginas de categoría adicional en la Main City:
1.
2.
3.

Main City GeoArticle Pages:
1.
2.
3.
4.
5.

Local Coverage Areas:
1.
2.
3.
4.
5.

Do Local Coverage Areas have URLs?
Default: No

Approved Expansion Areas with URLs:
1.
2.
3.

Página de contacto URL:

GBP URL:

Top Priority Services:
1.
2.
3.

Preferred CTA Anchor:

Preferred Informational Anchor:

Preferred Local Anchor:
```

## §5 Ejemplo rellenado

```text
Business Name:
Cerrajeros Madrid 24h

Website Root Domain:
https://www.cerrajerosmadrid24h.com

Homepage URL:
/

Planned Primary GBP Category:
Cerrajero

Primary Category Slug:
cerrajero

Main City:
Madrid

Main City GeoHub URL:
/madrid/

Service Overview Pages:
1. /cerrajero/cerrajero-urgente/
2. /cerrajero/apertura-puertas/
3. /cerrajero/cambio-cerraduras/
4. /cerrajero/cambio-bombines/
5. /cerrajero/instalacion-cerraduras-seguridad/

Main City Location-Based Service Pages:
1. /cerrajero/madrid/cerrajero-urgente/
2. /cerrajero/madrid/apertura-puertas/
3. /cerrajero/madrid/cambio-cerraduras/
4. /cerrajero/madrid/cambio-bombines/
5. /cerrajero/madrid/instalacion-cerraduras-seguridad/

Páginas de categoría adicional en la Main City:
1. /cerrajero/madrid/duplicado-llaves/

Main City GeoArticle Pages:
1. /madrid/cuanto-cuesta-un-cerrajero-urgente/
2. /madrid/que-hacer-si-no-puedes-entrar-casa/
3. /madrid/cuanto-tarda-un-cerrajero/

Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca
4. Retiro

Do Local Coverage Areas have URLs?
No, not in the base build.

Approved Expansion Areas with URLs:
None in Phase 1.

Página de contacto URL:
/contacto/

GBP URL:
N/A — GBP not created yet

Top Priority Services:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de bombines

Preferred CTA Anchor:
Llama a Cerrajeros Madrid 24h hoy

Preferred Informational Anchor:
Conoce más sobre servicios de cerrajería urgente

Preferred Local Anchor:
servicios de cerrajería en Madrid
```

# §6 Cuerpo operativo del Paso 7

> **Definición operativa — Local Coverage Areas:** zonas, barrios, distritos o landmarks seleccionados desde la dirección física, la Main City, la coherencia GEO, la proximidad, los datos de búsqueda, los competidores y la lógica GMB Crush para reforzar relevancia local dentro del contenido, schema y futuros análisis. No son automáticamente URLs. No son automáticamente páginas propias. No son necesariamente oficinas físicas. Las Local Coverage Areas se usan primero como señales GEO dentro del contenido. No generan URLs por defecto.

## §7 Regla 1 — Enlazar hacia arriba, abajo y lateralmente

### §7.1 Explicación

Cada página debe tener un enlace hacia su padre, hacia páginas hijas o de soporte, y hacia páginas relacionadas del mismo silo.

### §7.2 Patrón o fórmula

```text
up + down + lateral links
```

### §7.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS /cerrajero/madrid/cerrajero-urgente/ enlaza a /cerrajero/cerrajero-urgente/, /madrid/, servicios relacionados y artículos
```

### §7.4 Ejemplos incorrectos

```text
- Página local sin link al servicio padre
- GeoArticle sin link a landing
- GeoHub sin links a servicios
```

### §7.5 Regla final

```text
Cada página debe tener padre, soporte y relación lateral.
```

## §8 Regla 2 — Homepage distribuye autoridad

### §8.1 Explicación

La homepage enlaza a servicios core, GeoHub de Main City, additional category principal y contacto.

### §8.2 Patrón o fórmula

```text
Homepage → Service Overview + Main City GeoHub + Contacto
```

### §8.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/ → /cerrajero/cerrajero-urgente/, /cerrajero/apertura-puertas/, /madrid/, /contacto/
```

### §8.4 Ejemplos incorrectos

```text
- Homepage enlaza a 100 zonas
- Homepage no enlaza a servicios
- Homepage solo usa enlaces en footer
```

### §8.5 Regla final

```text
La homepage reparte autoridad a las páginas base.
```

## §9 Regla 3 — Service Overview empuja la versión local

### §9.1 Explicación

Cada Service Overview debe enlazar a la versión Main City del servicio.

### §9.2 Patrón o fórmula

```text
Service Overview → Main City LBS
```

### §9.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/cerrajero-urgente/ → /cerrajero/madrid/cerrajero-urgente/
```

### §9.4 Ejemplos incorrectos

```text
- Service Overview sin versión local
- Enlazar a Almagro sin expansión
- Enlazar solo a blog
```

### §9.5 Regla final

```text
El pilar temático empuja la landing local.
```

## §10 Regla 4 — GeoHub organiza la Main City

### §10.1 Explicación

El GeoHub debe enlazar a todas las páginas de servicio, categoría adicional y artículos de la Main City.

### §10.2 Patrón o fórmula

```text
GeoHub → all Main City pages
```

### §10.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/ → all /cerrajero/madrid/service/ + /madrid/articles/
```

### §10.4 Ejemplos incorrectos

```text
- GeoHub sin service menu
- GeoHub enlaza a zonas sin URL
- GeoHub con solo texto
```

### §10.5 Regla final

```text
El GeoHub es el índice interno de la Main City.
```

## §11 Regla 5 — Location-Based Service conecta servicio y ciudad

### §11.1 Explicación

La landing local conecta el servicio padre, el GeoHub, servicios relacionados y artículos.

### §11.2 Patrón o fórmula

```text
LBS → parent service + GeoHub + same-city services + articles
```

### §11.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ → /cerrajero/cerrajero-urgente/ + /madrid/ + /madrid/cuanto-cuesta-un-cerrajero-urgente/
```

### §11.4 Ejemplos incorrectos

```text
- Landing sin GeoHub
- Landing sin artículos
- Landing con enlaces a áreas inexistentes
```

### §11.5 Regla final

```text
La landing local no puede quedar aislada.
```

## §12 Regla 6 — Additional Category se integra en el silo local

### §12.1 Explicación

La categoría adicional debe enlazar al GeoHub, servicios relacionados y contenido útil.

### §12.2 Patrón o fórmula

```text
AC → GeoHub + related services + article
```

### §12.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/duplicado-llaves/ → /madrid/ + /cerrajero/madrid/instalacion-cerraduras-seguridad/
```

### §12.4 Ejemplos incorrectos

```text
- Categoría adicional huérfana
- Sin conexión a GeoHub
- Duplicada con servicio core
```

### §12.5 Regla final

```text
La categoría adicional complementa el cluster, no compite con él.
```

## §13 Regla 7 — GeoArticle pasa relevancia a la landing

### §13.1 Explicación

Cada GeoArticle debe enlazar a su landing comercial y al GeoHub.

### §13.2 Patrón o fórmula

```text
GeoArticle → LBS + GeoHub + related article
```

### §13.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/cuanto-cuesta-un-cerrajero-urgente/ → /cerrajero/madrid/cerrajero-urgente/ + /madrid/
```

### §13.4 Ejemplos incorrectos

```text
- Artículo sin CTA interno
- Artículo sin enlace comercial
- Artículo enlazando a área sin URL
```

### §13.5 Regla final

```text
El artículo es booster, no destino final.
```

## §14 Regla 8 — Local Coverage Areas no reciben enlaces si no tienen URLs

### §14.1 Explicación

Las áreas de cobertura se mencionan en texto, pero no se enlazan si no existe página aprobada.

### §14.2 Patrón o fórmula

```text
Mention only unless Approved Expansion URL exists
```

### §14.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro se menciona, pero no se enlaza a /almagro/
```

### §14.4 Ejemplos incorrectos

```text
- Anchor a /almagro/ inexistente
- Breadcrumb con Salamanca
- Footer con enlaces a áreas sin página
```

### §14.5 Regla final

```text
No enlaces a URLs que no existen.
```

## §15 Regla 9 — Anchor text variado

### §15.1 Explicación

Los anchors deben variar entre exact match, partial, branded, CTA, local entity e informacional.

### §15.2 Patrón o fórmula

```text
Exact + partial + branded + CTA + informational
```

### §15.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
cerrajero urgente en Madrid; ayuda de cerrajero urgente en Madrid; Cerrajeros Madrid 24h; llama hoy a Cerrajeros Madrid 24h
```

### §15.4 Ejemplos incorrectos

```text
- Mismo anchor 20 veces
- Solo exact match
- Anchors genéricos como haz clic aquí
```

### §15.5 Regla final

```text
Anchor text natural y variado.
```

## §16 Regla 10 — Enlaces contextuales primero

### §16.1 Explicación

Los enlaces en cuerpo tienen más sentido que repetirlo todo en footer.

### §16.2 Patrón o fórmula

```text
Intro/body/service blocks/FAQs/related resources/CTA
```

### §16.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Enlace a /madrid/ dentro de la intro local
```

### §16.4 Ejemplos incorrectos

```text
- Solo footer
- Solo menú
- Bloques de enlaces sin contexto
```

### §16.5 Regla final

```text
Los enlaces deben vivir dentro del contenido.
```


## §17 Matriz de enlaces obligatorios por tipo de página

| Source Page | Debe enlazar a | Objetivo |
|---|---|---|
| Homepage | Service Overview Pages | Reforzar servicios principales |
| Homepage | Main City GeoHub | Reforzar ciudad principal |
| Homepage | Página de contacto | Conversión y NAP |
| Service Overview | Main City Service Page | Empujar landing local |
| Service Overview | Related Services | Autoridad temática |
| Main City GeoHub | All Páginas de servicio en la Main City | Organizar silo local |
| Main City GeoHub | Additional Category Pages | Soporte GBP |
| Main City GeoHub | GeoArticles | Recursos locales |
| Location-Based Service | Parent Service Overview | Relación temática |
| Location-Based Service | Main City GeoHub | Relación geográfica |
| Location-Based Service | Related same-city services | Cluster local |
| Location-Based Service | GeoArticles | Profundidad semántica |
| GeoArticle | Matching Location-Based Service Page | Pasar autoridad |
| GeoArticle | Main City GeoHub | Reforzar ciudad |

## §18 Ejemplo completo de enlaces

```text
Source:
/cerrajero/madrid/cerrajero-urgente/

Required links:
- /cerrajero/cerrajero-urgente/
- /madrid/
- /cerrajero/madrid/apertura-puertas/
- /cerrajero/madrid/cambio-cerraduras/
- /madrid/cuanto-cuesta-un-cerrajero-urgente/
- /contacto/

Anchor suggestions:
- urgente servicios de cerrajería
- servicios de cerrajería en Madrid
- apertura de puertas en Madrid
- servicios de cambio de cerraduras en Madrid
- precio de cerrajero urgente en Madrid
- llama hoy a Cerrajeros Madrid 24h
```

## §19 Breadcrumbs recomendados

```text
Homepage:
Home

Service Overview:
Home > Cerrajero > Cerrajero urgente

Main City GeoHub:
Home > Madrid

Location-Based Service:
Home > Cerrajero > Madrid > Cerrajero urgente

Additional Category:
Home > Cerrajero > Madrid > Duplicado de llaves

GeoArticle:
Home > Madrid > Cerrajero urgente Cost Guide
```

## §20 Homepage distribuye autoridad inicial — Regla operativa 1

### §20.1 Explicación

La homepage debe enlazar a las páginas más importantes de la arquitectura base: Service Overview Pages, Main City GeoHub, Additional Category principal y contacto. No debe enlazar a todas las áreas de cobertura si no tienen URL.

### §20.2 Patrón o fórmula

```text
Homepage → Service Overviews + Main GeoHub + Contacto
```

### §20.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h enlaza desde / a /cerrajero/cerrajero-urgente/, /cerrajero/apertura-puertas/, /madrid/ y /contacto/.
```

### §20.4 Ejemplos incorrectos

```text
- Homepage enlaza a zonas sin página
- Homepage no enlaza al GeoHub
- Homepage solo enlaza al contacto
```

### §20.5 Regla final

```text
La homepage debe distribuir autoridad hacia servicios y Main City.
```

## §21 Service Overview enlaza a su versión local — Regla operativa 2

### §21.1 Explicación

Cada Service Overview debe enlazar a la Location-Based Service Page de la Main City para transferir autoridad temática a la página comercial local.

### §21.2 Patrón o fórmula

```text
/category/service/ → /category/main-city/service/
```

### §21.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
La página /cerrajero/cerrajero-urgente/ enlaza a /cerrajero/madrid/cerrajero-urgente/ con anchor cerrajero urgente en Madrid.
```

### §21.4 Ejemplos incorrectos

```text
- No enlazar a la versión local
- Enlazar a páginas de cobertura inexistentes
- Usar solo anchors genéricos como haz clic aquí
```

### §21.5 Regla final

```text
El pilar de servicio debe empujar su versión local principal.
```

## §22 GeoHub enlaza a todo el cluster de Main City — Regla operativa 3

### §22.1 Explicación

El GeoHub debe ser el índice de la Main City. Debe enlazar a todas las páginas servicio+ciudad, categorías adicionales y GeoArticles de esa ciudad.

### §22.2 Patrón o fórmula

```text
/main-city/ → all Main City service pages + articles
```

### §22.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/ enlaza a /cerrajero/madrid/cerrajero-urgente/, /cerrajero/madrid/apertura-puertas/ y /madrid/cuanto-cuesta-un-cerrajero-urgente/.
```

### §22.4 Ejemplos incorrectos

```text
- GeoHub sin enlaces a servicios
- GeoHub enlaza a cobertura sin URLs aprobadas
- GeoHub solo tiene texto de ciudad
```

### §22.5 Regla final

```text
El GeoHub debe organizar todas las URLs de la Main City.
```

## §23 Location-Based Service enlaza hacia arriba — Regla operativa 4

### §23.1 Explicación

Una página local debe enlazar a su Service Overview padre y al GeoHub. Esto conecta tópico y geografía, evitando que la landing quede aislada.

### §23.2 Patrón o fórmula

```text
LBS → Parent Service Overview + Main GeoHub
```

### §23.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ enlaza a /cerrajero/cerrajero-urgente/ y /madrid/.
```

### §23.4 Ejemplos incorrectos

```text
- No enlazar al padre
- No enlazar al GeoHub
- Enlazar solo a contacto
```

### §23.5 Regla final

```text
La página local necesita conexión temática y geográfica.
```

## §24 Location-Based Service enlaza lateralmente — Regla operativa 5

### §24.1 Explicación

Las páginas locales deben enlazar a servicios relacionados en la misma Main City para crear cluster comercial. Estos enlaces ayudan al usuario y refuerzan co-ocurrencias de servicio local.

### §24.2 Patrón o fórmula

```text
LBS → related Main City services
```

### §24.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ enlaza a /cerrajero/madrid/apertura-puertas/ y /cerrajero/madrid/instalacion-cerraduras-seguridad/.
```

### §24.4 Ejemplos incorrectos

```text
- Enlazar a servicios no relacionados
- Enlazar a todas las páginas sin criterio
- No usar anchors semánticos
```

### §24.5 Regla final

```text
El enlace lateral debe ser útil y del mismo cluster local.
```

## §25 Additional Category integrada en el silo — Regla operativa 6

### §25.1 Explicación

La página de categoría adicional debe enlazar al GeoHub y a servicios relacionados para no quedar como página secundaria aislada.

### §25.2 Patrón o fórmula

```text
Additional Category → GeoHub + related local services
```

### §25.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/duplicado-llaves/ enlaza a /madrid/, /cerrajero/madrid/cambio-cerraduras/ y /cerrajero/madrid/instalacion-cerraduras-seguridad/.
```

### §25.4 Ejemplos incorrectos

```text
- Página adicional sin enlaces internos
- Enlazar solo a homepage
- No conectarla con servicios relacionados
```

### §25.5 Regla final

```text
Una categoría adicional debe integrarse en el silo de Main City.
```

## §26 GeoArticle enlaza a la landing que apoya — Regla operativa 7

### §26.1 Explicación

Cada GeoArticle debe enlazar a la página comercial servicio+Main City que quiere reforzar. Sin ese enlace, el artículo no cumple su función de booster.

### §26.2 Patrón o fórmula

```text
GeoArticle → matching LBS + GeoHub + related article
```

### §26.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/cuanto-cuesta-un-cerrajero-urgente/ enlaza a /cerrajero/madrid/cerrajero-urgente/ y /madrid/.
```

### §26.4 Ejemplos incorrectos

```text
- Artículo sin enlace a landing
- Artículo enlaza solo a homepage
- Artículo apunta a una URL inexistente
```

### §26.5 Regla final

```text
El artículo debe pasar relevancia a la página comercial.
```

## §27 No enlaces a coverage areas sin URL — Regla operativa 8

### §27.1 Explicación

Si una Local Coverage Area no es Approved Expansion Area, no debe recibir enlaces internos. Puede mencionarse en texto, pero no como anchor hacia una página inexistente.

### §27.2 Patrón o fórmula

```text
Local Coverage Area sin URL → mención textual | no link
```

### §27.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h menciona Almagro en contenido, pero no crea anchor a /almagro/ hasta que esa URL sea aprobada.
```

### §27.4 Ejemplos incorrectos

```text
- Crear anchors rotos hacia /almagro/
- Simular páginas de cobertura con hashtags
- Enlazar a búsquedas externas en vez de URLs propias
```

### §27.5 Regla final

```text
Solo se enlaza a URLs reales y aprobadas.
```

## §28 Anchor text variado — Regla operativa 9

### §28.1 Explicación

Los anchors deben ser naturales y variados. Usar siempre el exact match puede parecer mecánico y reduce calidad editorial.

### §28.2 Patrón o fórmula

```text
Exact match + partial match + branded + CTA + informational
```

### §28.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Usar cerrajero urgente en Madrid, ayuda urgente de apertura de puertas en Madrid, Cerrajeros Madrid 24h y consulta precios de cerrajero urgente.
```

### §28.4 Ejemplos incorrectos

```text
- Repetir urgente cerrajero Madrid en todos los enlaces
- Usar solo haz clic aquí
- Usar anchors irrelevantes
```

### §28.5 Regla final

```text
El anchor debe reflejar intención y contexto.
```

## §29 Breadcrumbs como enlace estructural — Regla operativa 10

### §29.1 Explicación

Los breadcrumbs ayudan a usuarios y motores a entender jerarquía. Deben reflejar el page type y no inventar niveles de cobertura inexistentes.

### §29.2 Patrón o fórmula

```text
Home → Main City / Category → Service
```

### §29.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Para /cerrajero/madrid/cerrajero-urgente/: Home > Cerrajero > Madrid > Cerrajero urgente.
```

### §29.4 Ejemplos incorrectos

```text
- Home > Almagro si la página es de Madrid
- No incluir breadcrumbs
- Usar breadcrumbs que no coinciden con URLs
```

### §29.5 Regla final

```text
Breadcrumbs deben reflejar jerarquía real.
```

## §30 Inbound links esperados — Regla operativa 11

### §30.1 Explicación

La matriz debe prever desde qué páginas recibirá enlaces cada URL importante. Esto evita páginas huérfanas y permite QA de silo.

### §30.2 Patrón o fórmula

```text
Target URL → inbound sources mínimas
```

### §30.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ recibe enlaces desde homepage, Service Overview, GeoHub y GeoArticles.
```

### §30.4 Ejemplos incorrectos

```text
- Crear páginas sin inbound links
- Depender solo del menú principal
- No revisar enlaces entrantes en QA
```

### §30.5 Regla final

```text
Toda página clave debe tener enlaces entrantes planificados.
```

## §31 Expansion linking separado — Regla operativa 12

### §31.1 Explicación

Cuando una Approved Expansion Area genera URLs, se añade una capa de linking propia. No debe contaminar la base hasta que exista el cluster.

### §31.2 Patrón o fórmula

```text
Approved Expansion GeoHub → expansion service pages → related articles
```

### §31.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Almagro se aprueba, /almagro/ enlaza a /cerrajero/almagro/cerrajero-urgente/ y esa página vuelve a /cerrajero/cerrajero-urgente/.
```

### §31.4 Ejemplos incorrectos

```text
- Enlazar expansión antes de publicar páginas
- Mezclar expansión con cobertura textual
- No enlazar la expansión al servicio padre
```

### §31.5 Regla final

```text
La expansión se enlaza solo cuando sus URLs existen.
```

## §32 Checklist final del Paso 7

| Check | Pregunta | Estado |
|---|---|---|
| Homepage links | ¿La homepage enlaza a servicios, GeoHub y contacto? | ✅ / ⬜ |
| Service Overview links | ¿Cada servicio enlaza a su landing de Main City? | ✅ / ⬜ |
| GeoHub links | ¿El GeoHub enlaza a todas las páginas de Main City? | ✅ / ⬜ |
| LBS links | ¿Cada landing enlaza a servicio padre, GeoHub y artículos? | ✅ / ⬜ |
| GeoArticle links | ¿Cada artículo enlaza a landing y GeoHub? | ✅ / ⬜ |
| Local Coverage links | ¿No se enlaza a áreas sin URL aprobada? | ✅ / ⬜ |
| Anchors | ¿Hay variación natural de anchor text? | ✅ / ⬜ |
| Placement | ¿Los enlaces están en contenido contextual? | ✅ / ⬜ |
| Breadcrumbs | ¿La ruta de navegación es lógica? | ✅ / ⬜ |

## §33 Outputs del Paso 7

- Mapa de enlaces internos por tipo de página
- Anchors sugeridos
- Enlaces obligatorios
- Breadcrumbs
- Reglas para Local Coverage Areas sin URL
- Reglas de expansión si existe
- Checklist anti-páginas huérfanas

---

# §34 Fuentes internas GMB Crush usadas

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework



### §34.1 GeoArticles completos (15)

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

