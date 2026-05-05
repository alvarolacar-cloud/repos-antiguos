Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 7 — Internal Linking Rules

## Índice corto

**Paso 7 — Internal Linking Rules**

## Objetivo del Paso 7

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: definir cómo se conectan las páginas para crear un silo local claro, sin enlaces caóticos ni páginas huérfanas.
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
Error que previene: crear páginas sin enlaces hacia sus padres.
Error que previene: enlazar a Local Coverage Areas sin URL aprobada.
Error que previene: usar solo enlaces de footer.
Error que previene: no variar anchor text.
Error que previene: dejar GeoArticles sin enlace a la landing comercial.

## Lo que tienes que rellenar

```text
Business Name:

Website Root Domain:

Homepage URL:

Primary GBP Category:

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

Main City Additional Category Pages:
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

Contact Page URL:

GBP URL:

Top Priority Services:
1.
2.
3.

Preferred CTA Anchor:

Preferred Informational Anchor:

Preferred Local Anchor:
```

## Ejemplo rellenado

```text
Business Name:
ABC Locksmith

Website Root Domain:
https://www.abclocksmith.com

Homepage URL:
/

Primary GBP Category:
Locksmith

Primary Category Slug:
locksmith

Main City:
Miami

Main City GeoHub URL:
/miami/

Service Overview Pages:
1. /locksmith/emergency-locksmith/
2. /locksmith/car-locksmith/
3. /locksmith/residential-locksmith/
4. /locksmith/commercial-locksmith/
5. /locksmith/lock-rekeying/

Main City Location-Based Service Pages:
1. /locksmith/miami/emergency-locksmith/
2. /locksmith/miami/car-locksmith/
3. /locksmith/miami/residential-locksmith/
4. /locksmith/miami/commercial-locksmith/
5. /locksmith/miami/lock-rekeying/

Main City Additional Category Pages:
1. /locksmith/miami/key-duplication/

Main City GeoArticle Pages:
1. /miami/emergency-locksmith-cost-guide/
2. /miami/what-to-do-locked-out-of-house/
3. /miami/how-fast-can-locksmith-arrive/

Local Coverage Areas:
1. Hialeah
2. Coral Gables
3. Doral
4. Hollywood

Do Local Coverage Areas have URLs?
No, not in the base build.

Approved Expansion Areas with URLs:
None in Phase 1.

Contact Page URL:
/contact/

GBP URL:
https://google.com/business/abc-locksmith

Top Priority Services:
1. Emergency Locksmith
2. Car Locksmith
3. Commercial Locksmith

Preferred CTA Anchor:
Call ABC Locksmith today

Preferred Informational Anchor:
Learn more about emergency locksmith services

Preferred Local Anchor:
locksmith services in Miami
```

# Cuerpo operativo del Paso 7

## Regla 1 — Enlazar hacia arriba, abajo y lateralmente

### Explicación

Cada página debe tener un enlace hacia su padre, hacia páginas hijas o de soporte, y hacia páginas relacionadas del mismo silo.

### Patrón o fórmula

```text
up + down + lateral links
```

### Ejemplo correcto con ABC Locksmith

```text
LBS /locksmith/miami/emergency-locksmith/ enlaza a /locksmith/emergency-locksmith/, /miami/, servicios relacionados y artículos
```

### Ejemplos incorrectos

```text
- Página local sin link al servicio padre
- GeoArticle sin link a landing
- GeoHub sin links a servicios
```

### Regla final

```text
Cada página debe tener padre, soporte y relación lateral.
```

## Regla 2 — Homepage distribuye autoridad

### Explicación

La homepage enlaza a servicios core, GeoHub de Main City, additional category principal y contacto.

### Patrón o fórmula

```text
Homepage → Service Overview + Main City GeoHub + Contact
```

### Ejemplo correcto con ABC Locksmith

```text
/ → /locksmith/emergency-locksmith/, /locksmith/car-locksmith/, /miami/, /contact/
```

### Ejemplos incorrectos

```text
- Homepage enlaza a 100 zonas
- Homepage no enlaza a servicios
- Homepage solo usa enlaces en footer
```

### Regla final

```text
La homepage reparte autoridad a las páginas base.
```

## Regla 3 — Service Overview empuja la versión local

### Explicación

Cada Service Overview debe enlazar a la versión Main City del servicio.

### Patrón o fórmula

```text
Service Overview → Main City LBS
```

### Ejemplo correcto con ABC Locksmith

```text
/locksmith/emergency-locksmith/ → /locksmith/miami/emergency-locksmith/
```

### Ejemplos incorrectos

```text
- Service Overview sin versión local
- Enlazar a Hialeah sin expansión
- Enlazar solo a blog
```

### Regla final

```text
El pilar temático empuja la landing local.
```

## Regla 4 — GeoHub organiza la Main City

### Explicación

El GeoHub debe enlazar a todas las páginas de servicio, categoría adicional y artículos de la Main City.

### Patrón o fórmula

```text
GeoHub → all Main City pages
```

### Ejemplo correcto con ABC Locksmith

```text
/miami/ → all /locksmith/miami/service/ + /miami/articles/
```

### Ejemplos incorrectos

```text
- GeoHub sin service menu
- GeoHub enlaza a zonas sin URL
- GeoHub con solo texto
```

### Regla final

```text
El GeoHub es el índice interno de la Main City.
```

## Regla 5 — Location-Based Service conecta servicio y ciudad

### Explicación

La landing local conecta el servicio padre, el GeoHub, servicios relacionados y artículos.

### Patrón o fórmula

```text
LBS → parent service + GeoHub + same-city services + articles
```

### Ejemplo correcto con ABC Locksmith

```text
/locksmith/miami/emergency-locksmith/ → /locksmith/emergency-locksmith/ + /miami/ + /miami/emergency-locksmith-cost-guide/
```

### Ejemplos incorrectos

```text
- Landing sin GeoHub
- Landing sin artículos
- Landing con enlaces a áreas inexistentes
```

### Regla final

```text
La landing local no puede quedar aislada.
```

## Regla 6 — Additional Category se integra en el silo local

### Explicación

La categoría adicional debe enlazar al GeoHub, servicios relacionados y contenido útil.

### Patrón o fórmula

```text
AC → GeoHub + related services + article
```

### Ejemplo correcto con ABC Locksmith

```text
/locksmith/miami/key-duplication/ → /miami/ + /locksmith/miami/lock-rekeying/
```

### Ejemplos incorrectos

```text
- Categoría adicional huérfana
- Sin conexión a GeoHub
- Duplicada con servicio core
```

### Regla final

```text
La categoría adicional complementa el cluster, no compite con él.
```

## Regla 7 — GeoArticle pasa relevancia a la landing

### Explicación

Cada GeoArticle debe enlazar a su landing comercial y al GeoHub.

### Patrón o fórmula

```text
GeoArticle → LBS + GeoHub + related article
```

### Ejemplo correcto con ABC Locksmith

```text
/miami/emergency-locksmith-cost-guide/ → /locksmith/miami/emergency-locksmith/ + /miami/
```

### Ejemplos incorrectos

```text
- Artículo sin CTA interno
- Artículo sin enlace comercial
- Artículo enlazando a área sin URL
```

### Regla final

```text
El artículo es booster, no destino final.
```

## Regla 8 — Local Coverage Areas no reciben enlaces si no tienen URLs

### Explicación

Las áreas de cobertura se mencionan en texto, pero no se enlazan si no existe página aprobada.

### Patrón o fórmula

```text
Mention only unless Approved Expansion URL exists
```

### Ejemplo correcto con ABC Locksmith

```text
Hialeah se menciona, pero no se enlaza a /hialeah/
```

### Ejemplos incorrectos

```text
- Anchor a /hialeah/ inexistente
- Breadcrumb con Doral
- Footer con enlaces a áreas sin página
```

### Regla final

```text
No enlaces a URLs que no existen.
```

## Regla 9 — Anchor text variado

### Explicación

Los anchors deben variar entre exact match, partial, branded, CTA, local entity e informacional.

### Patrón o fórmula

```text
Exact + partial + branded + CTA + informational
```

### Ejemplo correcto con ABC Locksmith

```text
emergency locksmith in Miami; urgent locksmith help in Miami; ABC Locksmith; call ABC Locksmith today
```

### Ejemplos incorrectos

```text
- Mismo anchor 20 veces
- Solo exact match
- Anchors genéricos como click here
```

### Regla final

```text
Anchor text natural y variado.
```

## Regla 10 — Enlaces contextuales primero

### Explicación

Los enlaces en cuerpo tienen más sentido que repetirlo todo en footer.

### Patrón o fórmula

```text
Intro/body/service blocks/FAQs/related resources/CTA
```

### Ejemplo correcto con ABC Locksmith

```text
Enlace a /miami/ dentro de la intro local
```

### Ejemplos incorrectos

```text
- Solo footer
- Solo menú
- Bloques de enlaces sin contexto
```

### Regla final

```text
Los enlaces deben vivir dentro del contenido.
```


## Matriz de enlaces obligatorios por tipo de página

| Source Page | Debe enlazar a | Objetivo |
|---|---|---|
| Homepage | Service Overview Pages | Reforzar servicios principales |
| Homepage | Main City GeoHub | Reforzar ciudad principal |
| Homepage | Contact Page | Conversión y NAP |
| Service Overview | Main City Service Page | Empujar landing local |
| Service Overview | Related Services | Autoridad temática |
| Main City GeoHub | All Main City Service Pages | Organizar silo local |
| Main City GeoHub | Additional Category Pages | Soporte GBP |
| Main City GeoHub | GeoArticles | Recursos locales |
| Location-Based Service | Parent Service Overview | Relación temática |
| Location-Based Service | Main City GeoHub | Relación geográfica |
| Location-Based Service | Related same-city services | Cluster local |
| Location-Based Service | GeoArticles | Profundidad semántica |
| GeoArticle | Matching Location-Based Service Page | Pasar autoridad |
| GeoArticle | Main City GeoHub | Reforzar ciudad |

## Ejemplo completo de enlaces

```text
Source:
/locksmith/miami/emergency-locksmith/

Required links:
- /locksmith/emergency-locksmith/
- /miami/
- /locksmith/miami/car-locksmith/
- /locksmith/miami/residential-locksmith/
- /miami/emergency-locksmith-cost-guide/
- /contact/

Anchor suggestions:
- emergency locksmith services
- locksmith services in Miami
- car locksmith help in Miami
- residential locksmith services in Miami
- emergency locksmith cost in Miami
- call ABC Locksmith today
```

## Breadcrumbs recomendados

```text
Homepage:
Home

Service Overview:
Home > Locksmith > Emergency Locksmith

Main City GeoHub:
Home > Miami

Location-Based Service:
Home > Locksmith > Miami > Emergency Locksmith

Additional Category:
Home > Locksmith > Miami > Key Duplication

GeoArticle:
Home > Miami > Emergency Locksmith Cost Guide
```

## Homepage distribuye autoridad inicial — Regla operativa 1

### Explicación

La homepage debe enlazar a las páginas más importantes de la arquitectura base: Service Overview Pages, Main City GeoHub, Additional Category principal y contacto. No debe enlazar a todas las áreas de cobertura si no tienen URL.

### Patrón o fórmula

```text
Homepage → Service Overviews + Main GeoHub + Contact
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith enlaza desde / a /locksmith/emergency-locksmith/, /locksmith/car-locksmith/, /miami/ y /contact/.
```

### Ejemplos incorrectos

```text
- Homepage enlaza a zonas sin página
- Homepage no enlaza al GeoHub
- Homepage solo enlaza al contacto
```

### Regla final

```text
La homepage debe distribuir autoridad hacia servicios y Main City.
```

## Service Overview enlaza a su versión local — Regla operativa 2

### Explicación

Cada Service Overview debe enlazar a la Location-Based Service Page de la Main City para transferir autoridad temática a la página comercial local.

### Patrón o fórmula

```text
/category/service/ → /category/main-city/service/
```

### Ejemplo correcto con ABC Locksmith

```text
La página /locksmith/emergency-locksmith/ enlaza a /locksmith/miami/emergency-locksmith/ con anchor emergency locksmith in Miami.
```

### Ejemplos incorrectos

```text
- No enlazar a la versión local
- Enlazar a páginas de cobertura inexistentes
- Usar solo anchors genéricos como click here
```

### Regla final

```text
El pilar de servicio debe empujar su versión local principal.
```

## GeoHub enlaza a todo el cluster de Main City — Regla operativa 3

### Explicación

El GeoHub debe ser el índice de la Main City. Debe enlazar a todas las páginas servicio+ciudad, categorías adicionales y GeoArticles de esa ciudad.

### Patrón o fórmula

```text
/main-city/ → all Main City service pages + articles
```

### Ejemplo correcto con ABC Locksmith

```text
/miami/ enlaza a /locksmith/miami/emergency-locksmith/, /locksmith/miami/car-locksmith/ y /miami/emergency-locksmith-cost-guide/.
```

### Ejemplos incorrectos

```text
- GeoHub sin enlaces a servicios
- GeoHub enlaza a cobertura sin URLs aprobadas
- GeoHub solo tiene texto de ciudad
```

### Regla final

```text
El GeoHub debe organizar todas las URLs de la Main City.
```

## Location-Based Service enlaza hacia arriba — Regla operativa 4

### Explicación

Una página local debe enlazar a su Service Overview padre y al GeoHub. Esto conecta tópico y geografía, evitando que la landing quede aislada.

### Patrón o fórmula

```text
LBS → Parent Service Overview + Main GeoHub
```

### Ejemplo correcto con ABC Locksmith

```text
/locksmith/miami/emergency-locksmith/ enlaza a /locksmith/emergency-locksmith/ y /miami/.
```

### Ejemplos incorrectos

```text
- No enlazar al padre
- No enlazar al GeoHub
- Enlazar solo a contacto
```

### Regla final

```text
La página local necesita conexión temática y geográfica.
```

## Location-Based Service enlaza lateralmente — Regla operativa 5

### Explicación

Las páginas locales deben enlazar a servicios relacionados en la misma Main City para crear cluster comercial. Estos enlaces ayudan al usuario y refuerzan co-ocurrencias de servicio local.

### Patrón o fórmula

```text
LBS → related Main City services
```

### Ejemplo correcto con ABC Locksmith

```text
/locksmith/miami/emergency-locksmith/ enlaza a /locksmith/miami/car-locksmith/ y /locksmith/miami/lock-rekeying/.
```

### Ejemplos incorrectos

```text
- Enlazar a servicios no relacionados
- Enlazar a todas las páginas sin criterio
- No usar anchors semánticos
```

### Regla final

```text
El enlace lateral debe ser útil y del mismo cluster local.
```

## Additional Category integrada en el silo — Regla operativa 6

### Explicación

La página de categoría adicional debe enlazar al GeoHub y a servicios relacionados para no quedar como página secundaria aislada.

### Patrón o fórmula

```text
Additional Category → GeoHub + related local services
```

### Ejemplo correcto con ABC Locksmith

```text
/locksmith/miami/key-duplication/ enlaza a /miami/, /locksmith/miami/residential-locksmith/ y /locksmith/miami/lock-rekeying/.
```

### Ejemplos incorrectos

```text
- Página adicional sin enlaces internos
- Enlazar solo a homepage
- No conectarla con servicios relacionados
```

### Regla final

```text
Una categoría adicional debe integrarse en el silo de Main City.
```

## GeoArticle enlaza a la landing que apoya — Regla operativa 7

### Explicación

Cada GeoArticle debe enlazar a la página comercial servicio+Main City que quiere reforzar. Sin ese enlace, el artículo no cumple su función de booster.

### Patrón o fórmula

```text
GeoArticle → matching LBS + GeoHub + related article
```

### Ejemplo correcto con ABC Locksmith

```text
/miami/emergency-locksmith-cost-guide/ enlaza a /locksmith/miami/emergency-locksmith/ y /miami/.
```

### Ejemplos incorrectos

```text
- Artículo sin enlace a landing
- Artículo enlaza solo a homepage
- Artículo apunta a una URL inexistente
```

### Regla final

```text
El artículo debe pasar relevancia a la página comercial.
```

## No enlaces a coverage areas sin URL — Regla operativa 8

### Explicación

Si una Local Coverage Area no es Approved Expansion Area, no debe recibir enlaces internos. Puede mencionarse en texto, pero no como anchor hacia una página inexistente.

### Patrón o fórmula

```text
Local Coverage Area sin URL → mención textual | no link
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith menciona Hialeah en contenido, pero no crea anchor a /hialeah/ hasta que esa URL sea aprobada.
```

### Ejemplos incorrectos

```text
- Crear anchors rotos hacia /hialeah/
- Simular páginas de cobertura con hashtags
- Enlazar a búsquedas externas en vez de URLs propias
```

### Regla final

```text
Solo se enlaza a URLs reales y aprobadas.
```

## Anchor text variado — Regla operativa 9

### Explicación

Los anchors deben ser naturales y variados. Usar siempre el exact match puede parecer mecánico y reduce calidad editorial.

### Patrón o fórmula

```text
Exact match + partial match + branded + CTA + informational
```

### Ejemplo correcto con ABC Locksmith

```text
Usar emergency locksmith in Miami, urgent lockout help in Miami, ABC Locksmith y learn about emergency locksmith costs.
```

### Ejemplos incorrectos

```text
- Repetir emergency locksmith Miami en todos los enlaces
- Usar solo click here
- Usar anchors irrelevantes
```

### Regla final

```text
El anchor debe reflejar intención y contexto.
```

## Breadcrumbs como enlace estructural — Regla operativa 10

### Explicación

Los breadcrumbs ayudan a usuarios y motores a entender jerarquía. Deben reflejar el page type y no inventar niveles de cobertura inexistentes.

### Patrón o fórmula

```text
Home → Main City / Category → Service
```

### Ejemplo correcto con ABC Locksmith

```text
Para /locksmith/miami/emergency-locksmith/: Home > Locksmith > Miami > Emergency Locksmith.
```

### Ejemplos incorrectos

```text
- Home > Hialeah si la página es de Miami
- No incluir breadcrumbs
- Usar breadcrumbs que no coinciden con URLs
```

### Regla final

```text
Breadcrumbs deben reflejar jerarquía real.
```

## Inbound links esperados — Regla operativa 11

### Explicación

La matriz debe prever desde qué páginas recibirá enlaces cada URL importante. Esto evita páginas huérfanas y permite QA de silo.

### Patrón o fórmula

```text
Target URL → inbound sources mínimas
```

### Ejemplo correcto con ABC Locksmith

```text
/locksmith/miami/emergency-locksmith/ recibe enlaces desde homepage, Service Overview, GeoHub y GeoArticles.
```

### Ejemplos incorrectos

```text
- Crear páginas sin inbound links
- Depender solo del menú principal
- No revisar enlaces entrantes en QA
```

### Regla final

```text
Toda página clave debe tener enlaces entrantes planificados.
```

## Expansion linking separado — Regla operativa 12

### Explicación

Cuando una Approved Expansion Area genera URLs, se añade una capa de linking propia. No debe contaminar la base hasta que exista el cluster.

### Patrón o fórmula

```text
Approved Expansion GeoHub → expansion service pages → related articles
```

### Ejemplo correcto con ABC Locksmith

```text
Si Hialeah se aprueba, /hialeah/ enlaza a /locksmith/hialeah/emergency-locksmith/ y esa página vuelve a /locksmith/emergency-locksmith/.
```

### Ejemplos incorrectos

```text
- Enlazar expansión antes de publicar páginas
- Mezclar expansión con cobertura textual
- No enlazar la expansión al servicio padre
```

### Regla final

```text
La expansión se enlaza solo cuando sus URLs existen.
```

## Checklist final del Paso 7

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

## Outputs del Paso 7

- Mapa de enlaces internos por tipo de página
- Anchors sugeridos
- Enlaces obligatorios
- Breadcrumbs
- Reglas para Local Coverage Areas sin URL
- Reglas de expansión si existe
- Checklist anti-páginas huérfanas