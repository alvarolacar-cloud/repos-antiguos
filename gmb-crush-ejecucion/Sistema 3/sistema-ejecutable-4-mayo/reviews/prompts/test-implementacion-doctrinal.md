# Test de Implementación Doctrinal GMB Crush

Este documento define un test enfocado exclusivamente en comprobar si una web está bien construida según la doctrina GMB Crush.

No evalúa datos operativos como teléfono, email, fotos, hosting, formulario, dominio real o GBP verificado.  
Evalúa si la IA ha aplicado correctamente la arquitectura, jerarquía, tipos de página, URLs, contenido, interlinking, schema y reglas de expansión GMB Crush.

---

# Objetivo del test

La pregunta principal es:

```text
¿La web está construida siguiendo correctamente la doctrina GMB Crush?
```

Este test evalúa:

```text
arquitectura
jerarquía de páginas
función de cada Page Type
patrones URL
Main City
Local Coverage Areas
Approved Expansion Areas
interlinking
schema por tipo
contenido por intención
no canibalización
soporte GBP
GeoArticles
GeoHub
Additional Category Pages
AI Overview / NLP readiness
```

---

# Qué NO evalúa este test

Este test no evalúa:

```text
si el teléfono es real
si el email es real
si el dominio está comprado
si hay fotos reales
si el formulario funciona
si el GBP está verificado
si hay reseñas reales
si el hosting está configurado
si Google Search Console está conectado
si GA4 mide conversiones
```

Eso pertenece a otros tests:

```text
QA técnico
QA operativo
Web Live Ready
GBP Safe
Post-lanzamiento
```

---

# 1. Test de arquitectura GMB Crush

## Pregunta central

```text
¿La web tiene la arquitectura que dicta GMB Crush?
```

## Checks

| Check | Criterio |
|---|---|
| Homepage | Existe como Root Entity Anchor. |
| Service Overview Pages | Existen como páginas de servicio sin ciudad. |
| Location-Based Service Pages | Existen como páginas servicio + ciudad. |
| Additional Category Pages | Existen solo para categorías adicionales efectivas. |
| GeoHub | Existe como contenedor de ciudad. |
| GeoArticles | Existen como boosters semánticos, no landings. |
| Contacto | Existe como página auxiliar, no como URL SEO base. |

## Fallo doctrinal grave

```text
La web solo tiene homepage + servicios genéricos y no separa Service Overview, LBS, GeoHub y GeoArticles.
```

## Resultado esperado

```text
PASS si cada Page Type existe y tiene función diferenciada.
FAIL si la web mezcla todos los tipos de página o los reduce a landings genéricas.
```

---

# 2. Test de fórmula base

## Pregunta central

```text
¿La IA ha calculado las páginas desde la fórmula GMB Crush o ha creado páginas a ojo?
```

## Fórmula doctrinal

```text
1 Homepage
+ S Service Overview Pages
+ 1 Main City GeoHub
+ S Main City Location-Based Service Pages
+ A Main City Additional Category Pages
+ G × S Main City GeoArticles
```

## Checks

| Check | Criterio |
|---|---|
| S | Cada servicio core genera Service Overview + LBS. |
| A | Cada categoría adicional efectiva genera página propia. |
| G | Los GeoArticles se generan por servicio + ciudad. |
| Main City | La ciudad principal es el multiplicador base. |
| Local Coverage Areas | No multiplican páginas. |
| Approved Expansion Areas | Solo multiplican si están aprobadas. |

## Fallo doctrinal grave

```text
La IA crea páginas por barrios, zonas o servicios sin pasar por la fórmula.
```

---

# 3. Test de patrones URL

## Pregunta central

```text
¿Las URLs respetan la doctrina GMB Crush?
```

## Patrones correctos

```text
Homepage:
/

Service Overview:
/[category]/[service]/

Location-Based Service:
/[category]/[city]/[service]/

GeoHub:
/[city]/

Additional Category:
/[category]/[city]/[additional-category]/

GeoArticle:
/[city]/[topic]/

Contacto:
/contacto/
```

## Checks

| URL Type | Debe cumplir |
|---|---|
| Service Overview | No debe llevar ciudad. |
| LBS | Debe llevar categoría + ciudad + servicio. |
| GeoHub | Debe ser contenedor de ciudad. |
| GeoArticle | Debe ser ciudad + topic. |
| Local Coverage Areas | No deben generar URL por defecto. |

## Fallo doctrinal grave

```text
/cerrajero/almagro/cerrajero-urgente/
```

si Almagro no es Approved Expansion Area.

---

# 4. Test Main City vs Local Coverage Areas

## Pregunta central

```text
¿La IA entiende que Main City crea arquitectura y Local Coverage Areas solo refuerzan señales GEO?
```

## Checks

| Elemento | Criterio |
|---|---|
| Main City | Crea GeoHub, LBS y GeoArticles. |
| Direct LCA | Se usan como señales GEO derivadas del NAP. |
| Candidate LCA | Se usan solo si están validadas o como contexto suave. |
| Approved Expansion Area | Solo estas pueden crear URLs. |
| areaServed | No debe incluir zonas no validadas como cobertura real. |
| Falsa ubicación | No se afirma oficina donde no existe. |

## Fallo doctrinal grave

```text
La IA convierte Candidate Local Coverage Areas en páginas propias.
```

## Fallo doctrinal grave adicional

```text
La IA dice “oficina en Salamanca” sin que Salamanca sea ubicación real.
```

---

# 5. Test de Page Type Fidelity

## Pregunta central

```text
¿Cada página se comporta como el Page Type que dice ser?
```

## Checks por tipo

| Page Type | Debe hacer | No debe hacer |
|---|---|---|
| Homepage | Anclar entidad, marca, servicio principal, ciudad, NAP, servicios, trust y enlaces. | Competir con todas las LBS. |
| Service Overview | Explicar un servicio sin ciudad como target principal. | Convertirse en “servicio en Madrid”. |
| LBS | Convertir por servicio + ciudad. | Mezclar varios servicios o barrios como si fueran ciudades. |
| Additional Category | Soportar categoría adicional GBP. | Convertirse en core service si no lo es. |
| GeoHub | Agrupar ciudad, servicios, artículos y categorías. | Ser solo una lista de enlaces. |
| GeoArticle | Responder intención long-tail y reforzar LBS/GeoHub. | Vender como landing principal. |

## Fallo doctrinal grave

```text
Un GeoArticle tiene CTA agresivo, repite la LBS y se comporta como landing.
```

---

# 6. Test de Service Overview

## Pregunta central

```text
¿La Service Overview es realmente una página de servicio sin ciudad?
```

## Checks

| Check | Criterio |
|---|---|
| URL | `/category/service/` |
| H1 | Servicio, no servicio + ciudad como target principal. |
| Contenido | Explica el servicio, proceso, problemas, entidades y FAQs. |
| CTA | Empuja hacia la LBS correspondiente. |
| Links | Enlaza a LBS, servicios relacionados y GeoArticles. |

## Fallo doctrinal grave

```text
H1: Cerrajero urgente en Madrid
URL: /cerrajero/cerrajero-urgente/
```

Eso mezcla Service Overview con LBS.

---

# 7. Test de Location-Based Service Page

## Pregunta central

```text
¿La LBS cumple servicio + ciudad + conversión?
```

## Checks

| Check | Criterio |
|---|---|
| URL | `/category/city/service/` |
| H1 | Servicio + ciudad. |
| Intro | Contexto local real. |
| H2s | Profundidad, intención, proceso, confianza y CTA. |
| Local Coverage Areas | Señales GEO, no URLs. |
| FAQs | Servicio + ciudad. |
| Schema | LocalBusiness + FAQPage + BreadcrumbList. |
| Links | Parent Service Overview + GeoHub + GeoArticles. |

## Fallo doctrinal grave

```text
La LBS no enlaza a su Service Overview padre.
```

## Fallo doctrinal grave adicional

```text
La LBS menciona 10 barrios como si fueran sedes físicas.
```

---

# 8. Test de Additional Category Page

## Pregunta central

```text
¿La página soporta una categoría adicional GBP real sin romper la fórmula de servicios core?
```

## Checks

| Check | Criterio |
|---|---|
| Existe solo si hay categoría adicional efectiva | Sí. |
| URL | `/category/city/additional-category/` |
| H1 | Categoría/servicio adicional + ciudad. |
| Contenido | Soporta entidad GBP. |
| Links | GeoHub + LBS relacionadas + contacto. |
| Schema | Service + BreadcrumbList. |
| No core service | No altera S si no es servicio core. |

## Fallo doctrinal grave

```text
Duplicado de llaves pasa a core service sin decisión previa.
```

---

# 9. Test de GeoHub

## Pregunta central

```text
¿El GeoHub funciona como contenedor de ciudad?
```

## Checks

| Check | Criterio |
|---|---|
| URL | `/city/` |
| Función | Agrupar servicios, categorías, artículos y cobertura. |
| Enlaces | Todas las LBS de la ciudad. |
| Additional Category | Incluida si existe. |
| GeoArticles | Listados y agrupados. |
| Local Coverage Areas | Sección de cobertura o contexto. |
| Schema | CollectionPage + BreadcrumbList. |

## Fallo doctrinal grave

```text
/madrid/ solo tiene 5 enlaces y nada de contenido propio.
```

---

# 10. Test de GeoArticles

## Pregunta central

```text
¿Los GeoArticles son boosters semánticos y no landings encubiertas?
```

## Checks

| Check | Criterio |
|---|---|
| URL | `/city/topic/` |
| Tema | Servicio + ciudad + long-tail. |
| Intención | Informacional o precomercial. |
| H1 | Pregunta o tema + ciudad. |
| CTA | Suave, hacia la LBS. |
| Links | LBS + GeoHub + artículo relacionado. |
| Schema | Article + FAQPage + Breadcrumb + Speakable. |
| Contenido | No duplica la LBS. |

## Fallo doctrinal grave

```text
El artículo “cuánto cuesta...” vende como una landing y no responde la pregunta.
```

## Fallo doctrinal grave adicional

```text
El artículo no enlaza a su LBS padre.
```

---

# 11. Test de Internal Linking Doctrine

## Pregunta central

```text
¿La arquitectura está conectada como GMB Crush exige?
```

## Mapa esperado

```text
Homepage → Service Overview + GeoHub + Contacto
Service Overview → LBS + servicios relacionados
LBS → Service Overview + GeoHub + GeoArticles + contacto
GeoHub → LBS + Additional Category + GeoArticles
GeoArticle → LBS + GeoHub + related article
Additional Category → GeoHub + LBS relacionadas
```

## Checks

| Check | Criterio |
|---|---|
| No páginas huérfanas | Sí |
| Anchors contextuales | Sí |
| No enlaces a URLs inexistentes | Sí |
| Breadcrumbs | Sí |
| Links padre/hijo | Sí |
| Links semánticos laterales | Sí |

## Fallo doctrinal grave

```text
GeoArticles publicados sin enlaces hacia LBS.
```

---

# 12. Test de Schema Doctrine

## Pregunta central

```text
¿El schema se asigna por Page Type y no de forma genérica?
```

## Mapa doctrinal

| Page Type | Schema esperado |
|---|---|
| Homepage | Organization + WebSite |
| Service Overview | Service + WebPage + BreadcrumbList |
| LBS | LocalBusiness + FAQPage + BreadcrumbList |
| Additional Category | Service + BreadcrumbList |
| GeoHub | CollectionPage + BreadcrumbList |
| GeoArticle | Article + FAQPage + BreadcrumbList + Speakable |
| Contacto | ContactPage + Organization |

## Fallo doctrinal grave

```text
Todas las páginas tienen el mismo LocalBusiness schema.
```

## Fallo doctrinal grave adicional

```text
GeoArticle usa LocalBusiness como si fuera landing local.
```

---

# 13. Test de canibalización

## Pregunta central

```text
¿Cada URL tiene una intención única?
```

## Checks

| Check | Criterio |
|---|---|
| 1 intención = 1 URL | Sí |
| Service Overview y LBS no compiten | Sí |
| LBS y GeoArticle no compiten | Sí |
| GeoArticles no duplican topics | Sí |
| Additional Category no duplica core service | Sí |
| GeoHub no compite con LBS | Sí |

## Fallo doctrinal grave

```text
/madrid/cerrajero-urgente/
/cerrajero/madrid/cerrajero-urgente/
/madrid/cuanto-cuesta-un-cerrajero-urgente/
```

todas intentando rankear exactamente por la misma intención comercial.

---

# 14. Test de AI Overview / NLP Readiness

## Pregunta central

```text
¿La web está redactada para que IA y buscadores entiendan entidad, servicio, ciudad e intención?
```

## Checks

| Check | Criterio |
|---|---|
| H1 claro | Servicio / ciudad / entidad según Page Type. |
| Quick answers | Respuestas breves en páginas clave. |
| FAQs | Preguntas reales y útiles. |
| Entidades | Servicios, ciudad, categoría, problemas, herramientas. |
| Contexto local | Natural, no stuffing. |
| AUDIO | Authority, Uniqueness, Depth, Intent, Optimization. |
| Speakable | En páginas donde aplique. |

## Fallo doctrinal grave

```text
Contenido genérico sin entidades, sin preguntas y sin estructura semántica.
```

---

# 15. Test de soporte GBP

## Pregunta central

```text
¿La web está preparando correctamente el futuro GBP?
```

No se evalúa si el GBP está creado.  
Se evalúa si la web lo soporta doctrinalmente.

## Checks

| Check | Criterio |
|---|---|
| Primary Category | Tiene soporte en homepage y arquitectura. |
| Additional Categories | Tienen páginas si son efectivas. |
| Services GBP | Están reflejados en páginas o contenido. |
| GeoHub | Refuerza ciudad principal. |
| NAP | Se trata como dato de entidad. |
| sameAs | Solo si GBP existe. |
| Reviews | No se inventan. |
| Service Areas | No se usan como URLs salvo expansión. |

## Fallo doctrinal grave

```text
El sistema propone una categoría GBP sin página, contenido ni soporte interno.
```

---

# 16. Test de expansión

## Pregunta central

```text
¿La IA entiende que la expansión es posterior y condicionada?
```

## Checks

| Check | Criterio |
|---|---|
| Candidate LCA | No genera URL. |
| Approved Expansion Area | Sí puede generar URL. |
| Nueva ciudad | Requiere módulo de expansión. |
| Barrio | Requiere validación. |
| Competidores | Se usan cuando el módulo de competidores se ejecute. |
| Datos post-lanzamiento | Condicionan escalado. |

## Fallo doctrinal grave

```text
La IA crea páginas de barrio en la base inicial.
```

---

# 17. Test de trazabilidad doctrinal

## Pregunta central

```text
¿Cada decisión estructural puede explicarse por GMB Crush?
```

## Checks

| Check | Criterio |
|---|---|
| Page Type | Tiene fuente doctrinal. |
| URL pattern | Tiene fuente doctrinal. |
| Internal link | Tiene fuente doctrinal. |
| Schema | Tiene fuente doctrinal. |
| Content role | Tiene fuente doctrinal. |
| Expansion rule | Tiene fuente doctrinal. |

## Fallo doctrinal grave

```text
La IA dice “lo hice así porque queda mejor” para una decisión de arquitectura GMB Crush.
```

---

# Score doctrinal

| Área | Peso |
|---|---:|
| Arquitectura y fórmula GMB Crush | 15 |
| URLs y Page Types | 15 |
| Main City / LCA / Expansion | 10 |
| Contenido por Page Type | 15 |
| GeoHub y GeoArticles | 10 |
| Internal Linking | 10 |
| Schema | 10 |
| No canibalización | 5 |
| Soporte GBP | 5 |
| AI Overview / entidades | 5 |

Total:

```text
100 puntos
```

## Interpretación

| Puntuación | Resultado |
|---|---|
| 90–100 | Implementación doctrinal excelente |
| 75–89 | Buena, con ajustes |
| 60–74 | Parcial, necesita corrección |
| <60 | No cumple doctrina GMB Crush |

---

# Bloqueos automáticos

Aunque la web saque buena nota, falla automáticamente si ocurre cualquiera de estos casos:

```text
Local Coverage Areas generan URLs sin aprobación.
Service Overview y LBS se mezclan.
GeoArticles se comportan como landings.
No existe GeoHub.
No hay internal linking padre/hijo.
Schema genérico para todas las páginas.
Additional Category sin soporte.
Una categoría GBP no tiene respaldo web.
Se inventa ubicación física.
Se crean páginas fuera de la URL Matrix.
```

---

# Prompt para ejecutar este test

```text
Audita esta web según la doctrina GMB Crush.

No evalúes si el teléfono, email, fotos, dominio o GBP son reales.
No evalúes datos operativos.
Evalúa solo si la implementación respeta la doctrina GMB Crush.

Revisa:

1. Arquitectura base.
2. Fórmula de páginas.
3. Patrones URL.
4. Page Types.
5. Main City vs Local Coverage Areas.
6. Approved Expansion Areas.
7. Service Overview Pages.
8. Location-Based Service Pages.
9. Additional Category Pages.
10. GeoHub.
11. GeoArticles.
12. Internal Linking.
13. Schema por Page Type.
14. Canibalización.
15. Soporte GBP.
16. AI Overview / NLP readiness.
17. Trazabilidad doctrinal.

Para cada bloque devuelve:

- PASS / WARNING / FAIL
- Evidencia encontrada
- Problema doctrinal si existe
- Corrección exacta
- Severidad: crítica / alta / media / baja

No marques como fallo que falte teléfono, email, fotos, reseñas o GBP real.
Solo márcalo si la web inventa esos datos o los usa de forma doctrinalmente incorrecta.

Entrega un score final de 0 a 100 y lista los bloqueos automáticos si existen.
```

---

# Conclusión

El test doctrinal no pregunta:

```text
¿Tengo todos los datos reales?
```

Pregunta:

```text
¿La IA entendió y aplicó GMB Crush correctamente?
```

La web puede tener datos pendientes y aun así estar doctrinalmente bien montada.

Pero no puede estar doctrinalmente bien si:

```text
mezcla page types
rompe la fórmula
crea URLs por barrios
no tiene GeoHub
no enlaza GeoArticles a LBS
usa schema genérico
convierte artículos en landings
o soporta categorías GBP sin páginas.
```
