# Sistema GMB Crush para webs locales — V5 Cerrajeros Madrid 24h

Versión literal del chat · Sistema GMB Crush para webs locales
Documento maestro unificado regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

## Negocio de ejemplo usado en esta versión

```text
Negocio: Cerrajeros Madrid 24h
Dirección: Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid
Main City: Madrid
Primary GBP Category: Cerrajero
```

## Regla base

```text
Main City = crea la arquitectura base.
Local Coverage Areas = enriquecen contenido, FAQs, ejemplos locales y schema areaServed.
Approved Expansion Areas = generan URLs propias solo cuando se aprueban.
```

---


Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 1 — Intake Form

## Índice corto

**Paso 1 — Intake Form**

## Objetivo del Paso 1

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: recoger los datos mínimos del negocio antes de generar arquitectura, URLs o contenido.
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
Error que previene: empezar a crear páginas sin conocer la categoría principal del GBP.
Error que previene: confundir ciudad principal con áreas de cobertura local.
Error que previene: crear páginas para zonas donde el negocio no atiende clientes.
Error que previene: usar un NAP diferente al del GBP.
Error que previene: crear servicios sin saber si son core services o categorías adicionales.

## Lo que tienes que rellenar

```text
Business Name:

Website URL:

Canonical Domain:
Option A: https://www.domain.com
Option B: https://domain.com

Full NAP:
- Name:
- Street Address:
- City:
- State / Province:
- ZIP / Postal Code:
- Country:
- Phone:

Primary GBP Category:

Additional GBP Categories:
1.
2.
3.

Main City:
The primary city that will generate the base architecture.

Physical Location City:
The city where the business is physically located, if applicable.

Servicios principales:
1.
2.
3.
4.
5.

Primary Local Coverage Areas:
Recommended: start with 3–5 strongest real areas served.
1.
2.
3.
4.
5.

Additional Local Coverage Areas:
Optional.
1.
2.
3.
4.
5.

Should Local Coverage Areas generate pages?
Default: No.

Approved Expansion Areas:
Optional. Only list areas that deserve their own URLs.
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
Option A: Llamar ahora
Option B: Reservar online
Option C: Solicitar presupuesto
Option D: Contactoar

Trust Signals:
- Years in business:
- Reviews:
- Certifications:
- Awards:
- Guarantees:
- Urgencias / servicio en el mismo día / servicio móvil:

GBP URL:
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

Primary GBP Category:
Cerrajero

Additional GBP Categories:
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

Primary Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca

Additional Local Coverage Areas:
1. Retiro

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
- 250+ reseñas de Google
- Técnicos cerrajeros cualificados
- Servicio móvil en el mismo día
- Garantía de trabajo

GBP URL:
https://google.com/business/cerrajeros-madrid-24h
```

# Cuerpo operativo del Paso 1

## Business Name

### Explicación

El nombre del negocio es la entidad base. Debe coincidir con el nombre del GBP cuando se use como NAP, schema o bloque de confianza.

### Patrón o fórmula

```text
Business Name = nombre oficial de la entidad local
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h
```

### Ejemplos incorrectos

```text
- Cerrajeros Madrid 24h Madrid
- Cerrajeros Madrid 24h 24/7 Best Cheap
- Cerrajeros Madrid 24h Almagro si ese no es el nombre real
```

### Regla final

```text
El nombre del negocio debe ser estable, rastreable y consistente.
```

## Website URL

### Explicación

La URL raíz define el dominio canónico sobre el que se generarán todas las páginas. No se deben mezclar variantes con www y sin www.

### Patrón o fórmula

```text
Canonical Domain = una sola versión del dominio
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
https://www.cerrajerosmadrid24h.com
```

### Ejemplos incorrectos

```text
- http://cerrajerosmadrid24h.com
- https://cerrajerosmadrid24h.com y https://www.cerrajerosmadrid24h.com mezclados
- /home como página raíz
```

### Regla final

```text
Una web local debe operar con un solo dominio canónico.
```

## Full NAP

### Explicación

El NAP es una señal de entidad local. Debe ser igual en homepage, contacto, footer, schema y GBP cuando proceda.

### Patrón o fórmula

```text
Name + Address + Phone = NAP oficial
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h, Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid, +34 600 000 000
```

### Ejemplos incorrectos

```text
- Cambiar el teléfono entre páginas
- Usar direcciones distintas sin explicación
- Ocultar el NAP en imágenes no rastreables
```

### Regla final

```text
El NAP debe ser visible, consistente y rastreable.
```

## Primary GBP Category

### Explicación

La categoría principal del GBP manda sobre la arquitectura. Los servicios y páginas deben apoyar esa categoría.

### Patrón o fórmula

```text
Primary GBP Category → Primary Category Slug → Service Pages
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero → cerrajero
```

### Ejemplos incorrectos

```text
- Usar una categoría que no existe en el GBP
- Construir la web alrededor de un servicio secundario
- No crear páginas que soporten la categoría principal
```

### Regla final

```text
La categoría principal debe verse reflejada en homepage, servicios y páginas locales.
```

## Additional GBP Categories

### Explicación

Las categorías adicionales refuerzan la profundidad de entidad, pero no siempre generan páginas nuevas si ya están cubiertas por un core service.

### Patrón o fórmula

```text
Additional Category → covered or separate page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Servicio de cerrajería de urgencia cubierta por Cerrajero urgente; Servicio de duplicado de llaves necesita página propia
```

### Ejemplos incorrectos

```text
- Crear cerrajero-urgente y cerrajero-urgente como páginas separadas
- Ignorar Servicio de duplicado de llaves
- Crear categorías sin relación con el GBP
```

### Regla final

```text
Cada categoría adicional se consolida o se convierte en página, pero nunca se duplica.
```

## Main City

### Explicación

La Main City es la ciudad que genera la arquitectura base. Es la unidad local principal del sistema simplificado.

### Patrón o fórmula

```text
Main City = /city/ + /category/city/service/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Madrid
```

### Ejemplos incorrectos

```text
- Almagro como Main City si el GBP y el NAP están en Madrid
- Meter cinco ciudades como base
- Cambiar la Main City según la página
```

### Regla final

```text
La base se construye sobre una sola Main City.
```

## Physical Location City

### Explicación

La ciudad de ubicación física evita falsas señales. Si no hay oficina en un área, no se debe decir que la hay.

### Patrón o fórmula

```text
Physical Location City = ciudad de presencia real
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Madrid
```

### Ejemplos incorrectos

```text
- Nuestra oficina en Almagro si no existe
- Visit our Chamberí storefront si no existe
- Schema con address falsa
```

### Regla final

```text
Nunca se inventa ubicación física.
```

## Servicios principales

### Explicación

Los core services son los servicios principales que generan Service Overview Pages y Páginas de servicio en la Main City.

### Patrón o fórmula

```text
S = número de core services
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente, Apertura de puertas, Cambio de cerraduras, Cambio de bombines, Instalación de cerraduras de seguridad
```

### Ejemplos incorrectos

```text
- Meter servicios irrelevantes
- Crear servicios que no se ofrecen
- Agrupar todos los servicios en una única página
```

### Regla final

```text
Cada core service importante debe tener página propia.
```

## Local Coverage Areas

### Explicación

Son zonas reales atendidas. Incluyen barrios, distritos, municipios cercanos, códigos postales o áreas de servicio. No generan URLs por defecto.

### Patrón o fórmula

```text
Local Coverage Areas = contenido + FAQs + schema areaServed
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca, Retiro
```

### Ejemplos incorrectos

```text
- Crear /almagro/ por defecto
- Usar áreas donde no se atiende
- Listar 40 zonas sin naturalidad
```

### Regla final

```text
Las áreas de cobertura refuerzan el contenido; no crean páginas automáticamente.
```

## Approved Expansion Areas

### Explicación

Son áreas que sí pueden generar URLs propias, pero solo si se aprueban por demanda, competencia o valor comercial.

### Patrón o fórmula

```text
Approved Expansion Area → optional URLs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
None in Phase 1
```

### Ejemplos incorrectos

```text
- Aprobar todas las áreas de cobertura
- Crear una capa de expansión sin contenido único
- Confundir cobertura con arquitectura
```

### Regla final

```text
Solo las áreas aprobadas generan URLs propias.
```

## Preferred CTA

### Explicación

El CTA debe ser coherente con el tipo de negocio y el servicio.

### Patrón o fórmula

```text
CTA = llamada, reserva, presupuesto o contacto
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Llamar ahora
```

### Ejemplos incorrectos

```text
- Usar un CTA distinto en cada página sin criterio
- No tener CTA
- CTA genérico sin ciudad ni servicio
```

### Regla final

```text
Cada página debe tener un CTA claro.
```

## Trust Signals

### Explicación

Las señales de confianza ayudan al usuario, a Google y a sistemas de IA a validar autoridad.

### Patrón o fórmula

```text
Reviews + years + certifications + guarantees
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
10+ years, 250+ reviews, licensed technicians
```

### Ejemplos incorrectos

```text
- Afirmaciones sin base
- Reviews inventadas
- Badges falsos
```

### Regla final

```text
Los trust signals deben ser reales y reutilizables.
```

## NAP completo y rastreable — Regla operativa 1

### Explicación

El intake no puede avanzar si el NAP está incompleto, escrito de varias formas o desconectado del GBP. El nombre, dirección y teléfono son la base de la entidad local; si cambian entre homepage, footer, schema, contacto o GBP, el sistema empieza con una señal débil. Esta regla convierte el NAP en un dato canónico que después se reutiliza en schema, homepage, contact page y bloques de confianza.

### Patrón o fórmula

```text
NAP único → versión canónica → reutilización en web → validación en QA
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa un único NAP: Cerrajeros Madrid 24h, Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid, +34 600 000 000. Esa misma versión se usa en homepage, footer, contact page y schema.
```

### Ejemplos incorrectos

```text
- Usar Cerrajeros Madrid 24h LLC en schema y Cerrajeros Madrid 24h en homepage
- Cambiar el teléfono entre footer y página de contacto
- Omitir la dirección mientras se declara una ubicación física
```

### Regla final

```text
El NAP debe quedar definido una sola vez y reutilizarse sin variaciones.
```

## Primary GBP Category validada — Regla operativa 2

### Explicación

La categoría principal del GBP define el eje semántico del sistema. En el intake debe quedar claro si la categoría realmente describe el negocio y si los servicios principales la soportan. Sin esta validación se pueden crear páginas que no refuerzan la categoría, o peor, una homepage que habla de servicios secundarios mientras el GBP intenta posicionar otra intención.

### Patrón o fórmula

```text
Primary GBP Category → servicios core relacionados → homepage + service pages alineadas
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h declara Primary GBP Category: Cerrajero. Sus servicios core son Cerrajero urgente, Apertura de puertas, Cambio de cerraduras, Cambio de bombines y Instalación de cerraduras de seguridad.
```

### Ejemplos incorrectos

```text
- Elegir Cerrajero como categoría principal y crear contenido centrado en security cameras
- No diferenciar categoría principal de categorías adicionales
- Crear páginas para servicios no relacionados con la categoría GBP
```

### Regla final

```text
La categoría principal GBP debe tener soporte directo en homepage y servicios core.
```

## Categorías adicionales clasificadas — Regla operativa 3

### Explicación

Las categorías adicionales no se convierten automáticamente en URLs. Primero se revisa si ya están cubiertas por un servicio principal o si necesitan una página propia. Esto evita duplicar intenciones y crear páginas casi idénticas. El intake debe separar categorías cubiertas de categorías efectivas que sí requieren soporte adicional.

### Patrón o fórmula

```text
Additional GBP Category → ¿cubierta por servicio core? → sí: consolidar / no: crear página
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Servicio de cerrajería de urgencia queda cubierto por Cerrajero urgente. Servicio de duplicado de llaves no está cubierto por los servicios core y se marca como categoría adicional que necesita página.
```

### Ejemplos incorrectos

```text
- Crear /cerrajero/madrid/cerrajero-urgente/ y /cerrajero/madrid/cerrajero-urgente/
- Ignorar Servicio de duplicado de llaves aunque esté en el GBP
- Tratar todas las categorías adicionales como servicios nuevos sin revisión
```

### Regla final

```text
Cada categoría adicional debe clasificarse antes de entrar en la arquitectura.
```

## Main City separada de cobertura local — Regla operativa 4

### Explicación

La Main City es la ciudad que genera arquitectura base. Las Local Coverage Areas son zonas reales atendidas que enriquecen contenido, pero no generan URLs por defecto. Si se mezclan ambas cosas, el sistema vuelve a la confusión de target cities, secondary cities y páginas innecesarias.

### Patrón o fórmula

```text
Main City = URLs base | Local Coverage Areas = contenido y areaServed | Expansion = URLs opcionales
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa Madrid como Main City. Almagro, Chamberí, Salamanca y Retiro se registran como Local Coverage Areas para menciones de cobertura, sin crear URLs en fase base.
```

### Ejemplos incorrectos

```text
- Crear GeoHubs para todas las Local Coverage Areas en el intake base
- Usar Almagro como Main City si el GBP y la entidad están en Madrid
- No registrar zonas reales de cobertura aunque se atiendan clientes allí
```

### Regla final

```text
Una sola Main City crea la base; las áreas de cobertura no crean URLs salvo aprobación.
```

## Servicios core normalizados — Regla operativa 5

### Explicación

Los servicios core son los que generan Service Overview Pages y Páginas de servicio en la Main City. Deben estar escritos con nombres claros, slugs limpios y valor comercial real. Si se meten microvariantes desde el intake, la fórmula se infla y aparecen páginas finas o canibalizadas.

### Patrón o fórmula

```text
Servicio core → slug aprobado → página general → página Main City
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente usa el slug cerrajero-urgente y genera /cerrajero/cerrajero-urgente/ y /cerrajero/madrid/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- Crear servicios separados para urgente cerrajero, urgente cerrajero y fast cerrajero
- Usar slugs diferentes para el mismo servicio
- Añadir servicios que el negocio no ofrece realmente
```

### Regla final

```text
Solo los servicios core reales entran en la fórmula base.
```

## Ubicación física sin falsas promesas — Regla operativa 6

### Explicación

El intake debe indicar la ciudad de ubicación física y si existe atención presencial. Esto controla qué páginas pueden usar LocalBusiness con dirección, mapa o lenguaje de oficina. También evita afirmar oficinas en áreas de cobertura donde el negocio solo presta servicio móvil.

### Patrón o fórmula

```text
Physical Location City → lenguaje permitido → schema permitido → QA de ubicación
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h declara ubicación física en Madrid. Las páginas pueden hablar de la ubicación en Madrid, pero no deben decir que existe oficina en Almagro o Chamberí.
```

### Ejemplos incorrectos

```text
- Decir “our Almagro office” si no hay oficina allí
- Añadir mapas locales de zonas sin presencia real
- Usar una dirección falsa para ampliar proximidad
```

### Regla final

```text
Nunca se debe inventar presencia física para reforzar una zona.
```

## Trust signals reutilizables — Regla operativa 7

### Explicación

Las señales de confianza deben recogerse desde el intake porque se reutilizan en homepage, páginas de servicio, GeoHub, CTAs y QA. Años de experiencia, reseñas, certificaciones, garantías y servicio móvil ayudan a sostener autoridad sin inventar contenido.

### Patrón o fórmula

```text
Trust signal → página aplicable → bloque de confianza → revisión de veracidad
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h registra 10+ años de experiencia, 250+ reseñas de Google, licensed technicians y en el mismo día mobile support como señales reutilizables.
```

### Ejemplos incorrectos

```text
- Inventar certificaciones no verificables
- Usar reseñas sin fuente o número real
- No registrar garantías aunque sean parte clave del servicio
```

### Regla final

```text
Toda señal de confianza debe ser real, reutilizable y verificable.
```

## Approved Expansion Areas en blanco por defecto — Regla operativa 8

### Explicación

El sistema base no crea páginas para todas las zonas de cobertura. Solo una Local Coverage Area pasa a Approved Expansion Area si hay demanda, oportunidad, valor comercial y capacidad de escribir contenido único. En el intake base, este campo puede estar vacío sin que el sistema quede incompleto.

### Patrón o fórmula

```text
Local Coverage Area → evaluación → Approved Expansion Area solo si se justifica
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h deja Approved Expansion Areas en blanco durante Phase 1, aunque menciona Almagro, Chamberí, Salamanca y Retiro dentro del contenido.
```

### Ejemplos incorrectos

```text
- Aprobar todas las áreas de cobertura sin análisis
- Crear /almagro/ solo porque Almagro aparece en areaServed
- Confundir cobertura real con arquitectura obligatoria
```

### Regla final

```text
La expansión territorial se aprueba; no se asume.
```

## Checklist final del Paso 1

| Check | Pregunta | Estado |
|---|---|---|
| Business Name | ¿El nombre coincide con la entidad real y el GBP? | ✅ / ⬜ |
| Canonical Domain | ¿Hay una sola versión canónica del dominio? | ✅ / ⬜ |
| NAP | ¿El NAP es completo y consistente? | ✅ / ⬜ |
| Primary Category | ¿La categoría principal GBP está clara? | ✅ / ⬜ |
| Additional Categories | ¿Se detectaron categorías cubiertas y categorías que necesitan página? | ✅ / ⬜ |
| Main City | ¿La Main City está definida y no se mezcla con áreas de cobertura? | ✅ / ⬜ |
| Local Coverage Areas | ¿Las áreas de cobertura son reales y no generan URLs por defecto? | ✅ / ⬜ |
| Approved Expansion Areas | ¿Las zonas con página propia están aprobadas o vacías en fase base? | ✅ / ⬜ |
| Servicios principales | ¿Los servicios principales están listados y priorizados? | ✅ / ⬜ |
| CTA | ¿El CTA principal está definido? | ✅ / ⬜ |

## Outputs del Paso 1

- Ficha de negocio completa
- NAP validado
- Categoría principal GBP identificada
- Categorías adicionales clasificadas
- Main City definida
- Local Coverage Areas definidas
- Approved Expansion Areas definidas o vacías
- Lista de servicios core
- Trust signals reutilizables
- CTA principal


---


Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 2 — Fórmula Maestra de Arquitectura

## Índice corto

**Paso 2 — Fórmula Maestra de Arquitectura**

## Objetivo del Paso 2

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: calcular el tamaño real de la web antes de crear URLs, contenido o calendario de publicación.
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
Error que previene: crear páginas sin saber cuántas deberían existir.
Error que previene: meter Local Coverage Areas dentro de la fórmula base.
Error que previene: confundir Approved Expansion Areas con cobertura local mencionada en contenido.
Error que previene: duplicar categorías adicionales ya cubiertas por servicios core.
Error que previene: publicar GeoArticles antes de tener las páginas comerciales que apoyan.

## Lo que tienes que rellenar

```text
Business Name:

Primary GBP Category:

Primary Category Slug:

Main City:

Main City Slug:

Servicios principales:
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

Additional GBP Categories:
1.
2.
3.

Additional Categories already covered by Servicios principales:
1.
2.

Additional Categories that need separate pages:
1.
2.

Local Coverage Areas:
1.
2.
3.
4.
5.

Should Local Coverage Areas generate pages?
Default: No.

Approved Expansion Areas:
1.
2.
3.

GeoArticles per Service:
Default: 3

Does every service apply to the Main City?
Yes / No

If no, specify exclusions:
- Service:
- Reason:
```

## Ejemplo rellenado

```text
Business Name:
Cerrajeros Madrid 24h

Primary GBP Category:
Cerrajero

Primary Category Slug:
cerrajero

Main City:
Madrid

Main City Slug:
madrid

Servicios principales:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de cerraduras
4. Cambio de bombines
5. Instalación de cerraduras de seguridad

Service Slugs:
1. cerrajero-urgente
2. apertura-puertas
3. cambio-cerraduras
4. cambio-bombines
5. instalacion-cerraduras-seguridad

Additional GBP Categories:
1. Servicio de cerrajería de urgencia
2. Servicio de duplicado de llaves

Additional Categories already covered by Servicios principales:
1. Servicio de cerrajería de urgencia

Additional Categories that need separate pages:
1. Servicio de duplicado de llaves

Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca
4. Retiro

Should Local Coverage Areas generate pages?
No, not in the base build.

Approved Expansion Areas:
None in Phase 1.

GeoArticles per Service:
3

Does every service apply to the Main City?
Yes
```

# Cuerpo operativo del Paso 2

## Regla 1 — Fórmula base de una Main City

### Explicación

La versión base no calcula páginas para múltiples ciudades. Calcula una arquitectura sólida para la Main City, que es la ciudad principal del negocio.

### Patrón o fórmula

```text
1 Homepage + S Service Overview Pages + 1 Main City GeoHub + S Main City Location-Based Service Pages + A Páginas de categoría adicional en la Main City + G × S GeoArticles de la Main City
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
1 + 5 + 1 + 5 + 1 + 15 = 28 páginas base
```

### Ejemplos incorrectos

```text
- 1 + 5 ciudades + 25 city-service pages sin validación
- Incluir Almagro, Salamanca y Retiro como URLs por defecto
- Crear artículos para áreas sin página comercial
```

### Regla final

```text
La base se calcula con C = 1 Main City.
```

## Regla 2 — Variable S

### Explicación

S representa los servicios principales. Cada servicio core genera una Service Overview Page y una Main City Location-Based Service Page.

### Patrón o fórmula

```text
S = número de core services
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
S = 5 para Cerrajero urgente, apertura de puertas, cambio de cerraduras, cambio de bombines e instalación de cerraduras de seguridad
```

### Ejemplos incorrectos

```text
- Contar categorías adicionales como servicios core duplicados
- Contar cada variación de llaveword como servicio
- Crear un servicio para cada sinónimo
```

### Regla final

```text
S solo incluye servicios reales y principales.
```

## Regla 3 — Variable A

### Explicación

A representa categorías adicionales que necesitan página separada. Si una categoría adicional ya está cubierta por un core service, no entra en A.

### Patrón o fórmula

```text
A = additional categories not covered by core services
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
A = 1 porque Duplicado de llaves necesita página y Servicio de cerrajería de urgencia ya está cubierta
```

### Ejemplos incorrectos

```text
- A = 2 contando Servicio de cerrajería de urgencia dos veces
- A = 0 ignorando Servicio de duplicado de llaves
- Crear páginas sin relación con GBP
```

### Regla final

```text
A solo cuenta categorías adicionales efectivas.
```

## Regla 4 — Variable G

### Explicación

G representa cuántos GeoArticles se crean por servicio dentro de la Main City.

### Patrón o fórmula

```text
G = GeoArticles per Service
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
G = 3 → 3 × 5 = 15 GeoArticles para Madrid
```

### Ejemplos incorrectos

```text
- G × S × C con C = varias ciudades en base
- Crear 75 artículos antes de tener landings
- Crear artículos sin destino interno
```

### Regla final

```text
Los GeoArticles de base solo apoyan la Main City.
```

## Regla 5 — Local Coverage Areas no entran en la fórmula

### Explicación

Las áreas de cobertura local se usan dentro del contenido, FAQs, ejemplos locales y schema areaServed. No crean filas ni URLs por defecto.

### Patrón o fórmula

```text
Local Coverage Areas = content signals, not page-count units
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca y Retiro se mencionan como cobertura en contenido de Madrid
```

### Ejemplos incorrectos

```text
- Crear /almagro/ por defecto
- Multiplicar servicios por áreas de cobertura
- Contar Local Coverage Areas como C
```

### Regla final

```text
Mencionar una zona no significa crear una página para esa zona.
```

## Regla 6 — Approved Expansion Areas sí pueden tener fórmula opcional

### Explicación

Si una Local Coverage Area se aprueba como expansión, entonces puede generar su propio hub, service pages y articles.

### Patrón o fórmula

```text
Optional Expansion = E GeoHubs + S × E Service Pages + A × E Additional Pages + G × S × E Articles
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Phase 1 no tiene expansión; si Almagro se aprueba después, se calcula aparte
```

### Ejemplos incorrectos

```text
- Mezclar expansión con base
- Aprobar todas las áreas de cobertura
- Expandir antes de terminar Madrid
```

### Regla final

```text
La expansión se calcula separada de la base.
```

## Regla 7 — Páginas comerciales antes que artículos

### Explicación

El cálculo debe reflejar dependencias. Un GeoArticle necesita una página comercial que apoyar.

### Patrón o fórmula

```text
Service Page exists → GeoArticle can be published
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/guia-precios-cerrajero-urgente/ apoya /cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Publicar artículo sin landing
- Crear guía de Almagro sin expansión aprobada
- Crear artículos antes del GeoHub
```

### Regla final

```text
Ningún artículo va antes de su landing destino.
```

## Regla 8 — Resultado total como inventario, no calendario

### Explicación

La fórmula calcula la cantidad potencial. No obliga a publicar todo a la vez.

### Patrón o fórmula

```text
Total pages ≠ publish all at once
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
28 páginas base planificadas; se publican por fases
```

### Ejemplos incorrectos

```text
- Publicar 28 páginas sin QA
- No priorizar
- Confundir inventario con calendario
```

### Regla final

```text
La fórmula crea mapa, no orden final.
```


## Tabla de inventario base

| Tipo de página | Fórmula | Ejemplo Cerrajeros Madrid 24h |
|---|---:|---:|
| Homepage | 1 | 1 |
| Service Overview Pages | S | 5 |
| Main City GeoHub | 1 | 1 |
| Main City Location-Based Service Pages | S | 5 |
| Páginas de categoría adicional en la Main City | A | 1 |
| GeoArticles de la Main City | G × S | 15 |
| **Total base** | — | **28** |

## Optional Expansion Formula

```text
Solo si una Local Coverage Area pasa a Approved Expansion Area:

+ E Expansion GeoHubs
+ S × E Expansion Service Pages
+ A × E Expansion Additional Category Pages
+ G × S × E Expansion GeoArticles
```

## Ejemplo de expansión opcional

```text
Approved Expansion Area:
Almagro

E = 1
S = 5
A = 1
G = 3

Extra pages:
1 Almagro GeoHub
+ 5 Almagro service pages
+ 1 Almagro additional category page
+ 15 Almagro GeoArticles
= 22 páginas extra
```

## Conteo de servicios core — Regla operativa 1

### Explicación

La variable S solo cuenta servicios principales reales. Esta regla evita que sinónimos, modificadores o subcasos inflen la fórmula. Si un servicio no merece una página general y una página local, probablemente no debe entrar como servicio core en la fórmula base.

### Patrón o fórmula

```text
S = número de servicios core aprobados
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h tiene S = 5: Cerrajero urgente, Apertura de puertas, Cambio de cerraduras, Cambio de bombines y Instalación de cerraduras de seguridad.
```

### Ejemplos incorrectos

```text
- Contar urgente cerrajero y urgente cerrajero como servicios separados
- Incluir duplicado de llaves en S si se tratará como categoría adicional
- Contar servicios que no tienen valor comercial suficiente
```

### Regla final

```text
S solo incluye servicios core que merecen página propia.
```

## Conteo de categorías adicionales efectivas — Regla operativa 2

### Explicación

La variable A no es igual al número total de categorías adicionales del GBP. Solo cuenta las que no están cubiertas por un servicio core. Esto evita duplicaciones y mantiene la fórmula realista.

### Patrón o fórmula

```text
A = categorías adicionales no cubiertas por servicios core
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h tiene dos categorías adicionales, pero A = 1 porque Servicio de cerrajería de urgencia queda cubierta y Servicio de duplicado de llaves sí necesita página.
```

### Ejemplos incorrectos

```text
- A = 2 aunque una categoría sea duplicada
- Crear páginas separadas para urgente cerrajero y urgente cerrajero service
- Ignorar categorías adicionales que sí necesitan soporte
```

### Regla final

```text
A cuenta categorías adicionales efectivas, no etiquetas repetidas.
```

## Main City como único multiplicador base — Regla operativa 3

### Explicación

La versión base del sistema usa una sola Main City. Esto simplifica la arquitectura y evita que el conteo se dispare por áreas de cobertura. La Main City genera el GeoHub, las páginas servicio+ciudad, páginas adicionales y GeoArticles base.

### Patrón o fórmula

```text
C base = 1 Main City
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa Madrid como C = 1. Almagro, Chamberí, Salamanca y Retiro no multiplican páginas en la fase base.
```

### Ejemplos incorrectos

```text
- Usar C = 5 porque hay cuatro áreas de cobertura
- Crear GeoHubs para todas las zonas sin haber terminado Madrid
- Calcular artículos por cada Local Coverage Area
```

### Regla final

```text
La fórmula base se multiplica por una Main City, no por toda la cobertura.
```

## GeoArticles por servicio — Regla operativa 4

### Explicación

La variable G representa cuántos GeoArticles se crean por servicio en la Main City. No debe multiplicarse por áreas de cobertura en la base. Esto permite tener profundidad semántica sin producir decenas de artículos antes de tener landings comerciales sólidas.

### Patrón o fórmula

```text
G × S = GeoArticles base de la Main City
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Con G = 3 y S = 5, Cerrajeros Madrid 24h genera 15 GeoArticles para Madrid.
```

### Ejemplos incorrectos

```text
- Crear 3 artículos por servicio y por cada cobertura local
- Publicar artículos antes de crear la página servicio+ciudad
- Usar G = 10 sin capacidad de producción o refresh
```

### Regla final

```text
Los GeoArticles base refuerzan Main City + servicio.
```

## Fórmula base completa — Regla operativa 5

### Explicación

La fórmula debe devolver un inventario ejecutable, no un mapa teórico inmanejable. En una web local base, el resultado debe contener homepage, service overview pages, Main City GeoHub, Main City service pages, additional category pages y GeoArticles.

### Patrón o fórmula

```text
1 + S + 1 + S + A + (G × S)
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Con S = 5, A = 1 y G = 3, Cerrajeros Madrid 24h produce 1 + 5 + 1 + 5 + 1 + 15 = 28 páginas base.
```

### Ejemplos incorrectos

```text
- Seguir usando la fórmula multi-ciudad de 111 páginas en la base
- No contar GeoArticles y dejar el sistema sin boosters
- Contar Local Coverage Areas como páginas obligatorias
```

### Regla final

```text
La fórmula base debe ser simple, completa y publicable.
```

## Local Coverage Areas fuera de la fórmula — Regla operativa 6

### Explicación

Las áreas de cobertura local son importantes, pero no son multiplicadores de páginas. Se usan en contenido, FAQs, ejemplos, schema areaServed y secciones de cobertura. Esta regla evita que cobertura real se convierta automáticamente en arquitectura.

### Patrón o fórmula

```text
Local Coverage Areas → contenido + schema | no → filas de URL
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h menciona Almagro, Chamberí, Salamanca y Retiro en contenido y schema areaServed, pero no las cuenta como GeoHubs base.
```

### Ejemplos incorrectos

```text
- Crear páginas para cada zona mencionada
- Eliminar las zonas de cobertura porque no generan URLs
- Usar áreas de cobertura como slugs en páginas base
```

### Regla final

```text
Una zona puede reforzar contenido sin crear una URL.
```

## Expansion Formula separada — Regla operativa 7

### Explicación

Si una zona de cobertura se aprueba para expansión, se calcula con un módulo separado. Esto mantiene la base limpia y permite escalar con control. Las Expansion Areas no deben mezclarse con la fórmula base.

### Patrón o fórmula

```text
Approved Expansion Area → fórmula adicional separada
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Almagro se aprueba después, Cerrajeros Madrid 24h puede crear /almagro/ y /cerrajero/almagro/cerrajero-urgente/ como expansión, no como base.
```

### Ejemplos incorrectos

```text
- Añadir expansión dentro del conteo base
- Aprobar todas las zonas a la vez
- No exigir página padre antes de una expansión
```

### Regla final

```text
La expansión se calcula aparte y solo con zonas aprobadas.
```

## Control anti-duplicación — Regla operativa 8

### Explicación

Antes de cerrar el conteo, la fórmula debe detectar duplicados entre servicios core y categorías adicionales. Si no se hace, el total parece completo pero incluye páginas que compiten entre sí.

### Patrón o fórmula

```text
Servicio + intención + ciudad → una sola URL
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Servicio de cerrajería de urgencia no suma una página adicional porque /cerrajero/madrid/cerrajero-urgente/ ya cubre esa intención.
```

### Ejemplos incorrectos

```text
- Sumar cerrajero-urgente como página adicional
- Crear dos URLs para la misma intención comercial
- Contar duplicados como oportunidades nuevas
```

### Regla final

```text
Una intención local debe tener una URL principal.
```

## Dependencias de página — Regla operativa 9

### Explicación

El conteo no solo mide cantidad; también debe prever dependencias. Una GeoArticle no debería existir si no existe la página local que apoya. Una Location-Based Service Page necesita Service Overview y GeoHub.

### Patrón o fórmula

```text
Página hija → página padre existente → enlace interno posible
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El artículo /madrid/guia-precios-cerrajero-urgente/ se programa después de /cerrajero/madrid/cerrajero-urgente/ y /madrid/.
```

### Ejemplos incorrectos

```text
- Contar artículos sin landings de destino
- Crear una página local sin Service Overview
- Publicar GeoHub sin enlazar a servicios
```

### Regla final

```text
Cada página contada debe tener padre y destino de enlace.
```

## Resultado final verificable — Regla operativa 10

### Explicación

La fórmula debe terminar con una tabla clara de cantidades por tipo de página. Si el número total no se puede explicar por componentes, no está listo para producción.

### Patrón o fórmula

```text
Tipo de página → fórmula → cantidad → total
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h muestra 1 Homepage, 5 Service Overview, 1 GeoHub, 5 Páginas de servicio en la Main City, 1 Additional Category Page y 15 GeoArticles.
```

### Ejemplos incorrectos

```text
- Dar un total sin desglose
- No explicar por qué A = 1
- No separar base de expansión
```

### Regla final

```text
El conteo final debe ser transparente y auditable.
```

## Checklist final del Paso 2

| Check | Pregunta | Estado |
|---|---|---|
| Fórmula base | ¿La fórmula usa una sola Main City? | ✅ / ⬜ |
| Servicios | ¿S cuenta solo core services reales? | ✅ / ⬜ |
| Categorías adicionales | ¿A excluye categorías ya cubiertas? | ✅ / ⬜ |
| GeoArticles | ¿G se calcula por servicio dentro de la Main City? | ✅ / ⬜ |
| Local Coverage Areas | ¿No están generando URLs por defecto? | ✅ / ⬜ |
| Approved Expansion | ¿La expansión está separada de la base? | ✅ / ⬜ |
| Dependencias | ¿Los artículos dependen de páginas comerciales? | ✅ / ⬜ |
| Total base | ¿El total de páginas está claro? | ✅ / ⬜ |
| No duplicación | ¿Se evitaron duplicados de intención? | ✅ / ⬜ |

## Outputs del Paso 2

- Fórmula base calculada
- Variables S, A y G definidas
- Total de páginas base
- Categorías duplicadas detectadas
- Local Coverage Areas excluidas del conteo de URLs
- Optional Expansion Formula preparada
- Inventario base de páginas
- Dependencias iniciales claras


---


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

Servicios principales:
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
Cerrajeros Madrid 24h – GMB Crush Website Architecture

Website Root Domain:
https://www.cerrajerosmadrid24h.com

Canonical Domain:
https://www.cerrajerosmadrid24h.com

Primary GBP Category:
Cerrajero

Primary Category Slug:
cerrajero

Main City:
Madrid

Main City Slug:
madrid

GeoHub URL Style:
Option A: /city/

Servicios principales:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de cerraduras
4. Cambio de bombines
5. Instalación de cerraduras de seguridad

Service Slugs:
1. cerrajero-urgente
2. apertura-puertas
3. cambio-cerraduras
4. cambio-bombines
5. instalacion-cerraduras-seguridad

Additional Categories that need separate pages:
1. Servicio de duplicado de llaves

Additional Category Slugs:
1. duplicado-llaves

Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca
4. Retiro

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

### Ejemplo correcto con Cerrajeros Madrid 24h

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

Almagro, Chamberí, Salamanca y Retiro son zonas de cobertura en el ejemplo, pero no generan filas mientras no sean Approved Expansion Areas.

### Patrón o fórmula

```text
Local Coverage Area → content field, not URL row
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro aparece en la columna Content Notes o Local Coverage Areas, no como /almagro/
```

### Ejemplos incorrectos

```text
- GH-002 /almagro/ sin aprobación
- LBS para Salamanca en fase base
- GeoArticle de Retiro sin landing
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 = /cerrajero/madrid/cerrajero-urgente/
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 parent = /cerrajero/cerrajero-urgente/
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

### Ejemplo correcto con Cerrajeros Madrid 24h

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

## Regla 6 — Enlaces internos Required

### Explicación

La matriz debe listar enlaces obligatorios para evitar páginas aisladas.

### Patrón o fórmula

```text
URL → required links
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ → parent service + /madrid/ + related services + articles
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ → P1 / Phase 2
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GA-001 status = Bloqueado hasta que exista la página LBS
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
| P | Enlaces internos Required | Enlaces obligatorios |
| Q | Priority | P1/P2/P3/P4 |
| R | Publish Phase | Fase |
| S | Status | Estado |
| T | Notes | Notas estratégicas |

## Ejemplo de URL Matrix base

| ID | Page Type | URL | H1 | Schema | Priority | Phase |
|---|---|---|---|---|---|---|
| HP-001 | Homepage | `/` | Cerrajeros Madrid 24h – Servicios de cerrajería de confianza en Madrid | Organization, WebSite, LocalBusiness | P1 | Phase 1 |
| SO-001 | Service Overview | `/cerrajero/cerrajero-urgente/` | Servicios profesionales de cerrajería urgente por Cerrajeros Madrid 24h | Service, WebPage, BreadcrumbList | P1 | Phase 1 |
| GH-001 | GeoHub | `/madrid/` | Cerrajeros Madrid 24h – Servicios de cerrajería en Madrid | CollectionPage, BreadcrumbList | P1 | Phase 1 |
| LBS-001 | Location-Based Service | `/cerrajero/madrid/cerrajero-urgente/` | Cerrajeros Madrid 24h – Cerrajero urgente en Madrid | LocalBusiness, BreadcrumbList | P1 | Phase 2 |
| AC-001 | Additional Category | `/cerrajero/madrid/duplicado-llaves/` | Cerrajeros Madrid 24h – Duplicado de llaves experto en Madrid | Service, BreadcrumbList | P3 | Phase 2 |
| GA-001 | GeoArticle | `/madrid/guia-precios-cerrajero-urgente/` | How Much Does an Precio de cerrajero urgente en Madrid? | Article, FAQPage, BreadcrumbList | P3 | Phase 3 |

## Filas que NO se generan en la base

```text
/almagro/
/cerrajero/almagro/cerrajero-urgente/
/chamberi/
/cerrajero/salamanca/apertura-puertas/
/retiro/guia-precios-cerrajero-urgente/
```

Estas URLs solo se generarían si esas zonas pasan a Approved Expansion Areas.

## Una fila por URL real — Regla operativa 1

### Explicación

La matriz base no es una lista de ideas; es una tabla de producción. Cada fila debe corresponder a una URL real que se va a crear o mantener. Si una zona solo se menciona dentro del contenido, no debe aparecer como fila.

### Patrón o fórmula

```text
URL aprobada → fila única → page type → estado
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h tiene una fila para /cerrajero/madrid/cerrajero-urgente/ y no tiene filas para /almagro/ en la fase base.
```

### Ejemplos incorrectos

```text
- Crear filas para Almagro, Salamanca y Retiro como cobertura sin aprobación
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 identifica /cerrajero/madrid/cerrajero-urgente/ y GA-001 identifica /madrid/guia-precios-cerrajero-urgente/.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La página /cerrajero/madrid/cerrajero-urgente/ tiene como parent /cerrajero/cerrajero-urgente/ y como GeoHub /madrid/.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Las filas comerciales de Cerrajeros Madrid 24h usan City = Madrid; Almagro, Chamberí, Salamanca y Retiro quedan en Notes como Local Coverage Areas.
```

### Ejemplos incorrectos

```text
- Poner Almagro en la columna City sin URL aprobada
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

### Ejemplo correcto con Cerrajeros Madrid 24h

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

## Enlaces internos Required como columna crítica — Regla operativa 6

### Explicación

La matriz debe listar enlaces obligatorios para cada URL. Sin esta columna, las páginas pueden publicarse aisladas y el sistema pierde fuerza de silo.

### Patrón o fórmula

```text
Source URL → Required Links → QA de enlaces
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 requiere enlaces a /cerrajero/cerrajero-urgente/, /madrid/, páginas relacionadas en Madrid y GeoArticles.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GA-001 puede ser P3, pero queda en Phase 3 porque primero deben existir /madrid/ y /cerrajero/madrid/cerrajero-urgente/.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h marca /cerrajero/madrid/cerrajero-urgente/ como Planned hasta que el contenido y links estén listos.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La fila /cerrajero/madrid/cerrajero-urgente/ indica que soporta Primary Category Cerrajero y Additional Category Servicio de cerrajería de urgencia.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h aprueba primero sus 28 URLs base antes de redactar los textos de homepage, servicios, GeoHub y GeoArticles.
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
| Enlaces internos | ¿Los enlaces obligatorios están listados? | ✅ / ⬜ |
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


---


Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 4 — URL Rules

## Índice corto

**Paso 4 — URL Rules**

## Objetivo del Paso 4

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: fijar una estructura de URLs limpia, escalable y anti-canibalización antes de producir contenidos.
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
Error que previene: crear URLs distintas para la misma intención.
Error que previene: usar Local Coverage Areas como carpetas sin aprobación.
Error que previene: mezclar ciudad, servicio y artículo en el mismo patrón.
Error que previene: crear slugs con near-me, best o cheap.
Error que previene: tener versiones con y sin trailing slash.

## Lo que tienes que rellenar

```text
Website Root Domain:

Canonical Domain:
Option A: https://www.domain.com
Option B: https://domain.com

Trailing Slash:
Yes / No

Primary GBP Category:

Primary Category Slug:

Main City:

Main City Slug:

Homepage URL:
/ 

Service Overview URL Style:
/[primary-category-slug]/[service-slug]/

Main City GeoHub URL Style:
Option A: /[main-city-slug]/
Option B: /[primary-category-slug]/[main-city-slug]/

Main City Location-Based Service URL Style:
/[primary-category-slug]/[main-city-slug]/[service-slug]/

Main City Additional Category URL Style:
/[primary-category-slug]/[main-city-slug]/[additional-category-slug]/

Main City GeoArticle URL Style:
Option A: /[main-city-slug]/[article-topic-slug]/
Option B: /[primary-category-slug]/[main-city-slug]/[article-topic-slug]/

Local Coverage Areas:
Do they generate URLs?
Default: No

Approved Expansion Areas:
If any, list:
1.
2.
3.

Use “near me” in URL?
Yes / No

Use “best”, “cheap”, “top-rated” in URL?
Yes / No

Approved service slugs:

Approved local coverage area names:

Approved expansion slugs:
```

## Ejemplo rellenado

```text
Website Root Domain:
https://www.cerrajerosmadrid24h.com

Canonical Domain:
https://www.cerrajerosmadrid24h.com

Trailing Slash:
Yes

Primary GBP Category:
Cerrajero

Primary Category Slug:
cerrajero

Main City:
Madrid

Main City Slug:
madrid

Homepage URL:
/

Service Overview URL Style:
/cerrajero/[service-slug]/

Main City GeoHub URL Style:
/madrid/

Main City Location-Based Service URL Style:
/cerrajero/madrid/[service-slug]/

Main City Additional Category URL Style:
/cerrajero/madrid/[additional-category-slug]/

Main City GeoArticle URL Style:
/madrid/[article-topic-slug]/

Local Coverage Areas:
Almagro, Chamberí, Salamanca, Retiro

Do they generate URLs?
No, not in the base build.

Approved Expansion Areas:
None in Phase 1.

Use “near me” in URL?
No

Use “best”, “cheap”, “top-rated” in URL?
No

Approved service slugs:
- cerrajero-urgente
- apertura-puertas
- cambio-cerraduras
- cambio-bombines
- instalacion-cerraduras-seguridad

Approved additional category slugs:
- duplicado-llaves
```

# Cuerpo operativo del Paso 4

## Regla 1 — Dominio canónico

### Explicación

Todas las URLs deben salir de una sola versión del dominio. Esto evita duplicación técnica y señales inconsistentes.

### Patrón o fórmula

```text
https://www.domain.com OR https://domain.com
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
https://www.cerrajerosmadrid24h.com/cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- https://cerrajerosmadrid24h.com mezclado con https://www.cerrajerosmadrid24h.com
- http://www.cerrajerosmadrid24h.com
- URLs relativas sin canonical
```

### Regla final

```text
Una web local usa un solo dominio canónico.
```

## Regla 2 — Trailing slash

### Explicación

La regla del slash final debe ser consistente en todo el sitio.

### Patrón o fórmula

```text
All URLs end with /
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- /cerrajero/madrid/cerrajero-urgente
- Mezclar ambas versiones
- Canonical distinto al enlace interno
```

### Regla final

```text
Todas las URLs siguen la misma convención de slash.
```

## Regla 3 — Homepage

### Explicación

La homepage es la raíz de entidad y debe vivir en el root domain.

### Patrón o fórmula

```text
/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
https://www.cerrajerosmadrid24h.com/
```

### Ejemplos incorrectos

```text
- /home/
- /inicio/
- /madrid-cerrajero/
- /cerrajero-madrid/
```

### Regla final

```text
La homepage siempre es `/`.
```

## Regla 4 — Service Overview

### Explicación

Las páginas de servicio general son no geolocalizadas y no llevan ciudad.

### Patrón o fórmula

```text
/[category]/[service]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- /cerrajero-urgente-madrid/
- /madrid/cerrajero-urgente/
- /services/cerrajero-urgente/
- /cerrajero/madrid/cerrajero-urgente-overview/
```

### Regla final

```text
Service Overview = categoría + servicio, sin ciudad.
```

## Regla 5 — Main City GeoHub

### Explicación

El GeoHub de la Main City agrupa todo lo relacionado con la ciudad principal.

### Patrón o fórmula

```text
/[main-city]/ OR /[category]/[main-city]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/
```

### Ejemplos incorrectos

```text
- /areas-we-serve/madrid/
- /locations/madrid/
- /service-area/madrid/
- /madrid-cerrajero-services/
```

### Regla final

```text
El GeoHub es un contenedor de ciudad, no una landing de servicio.
```

## Regla 6 — Main City Location-Based Service

### Explicación

Estas son las páginas comerciales para búsquedas service + city.

### Patrón o fórmula

```text
/[category]/[main-city]/[service]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- /madrid/cerrajero-urgente/
- /cerrajero-urgente/madrid/
- /cerrajero/cerrajero-urgente-madrid/
- /cerrajero/madrid/urgente-car-cambio-cerraduras/
```

### Regla final

```text
Una página local = un servicio + una Main City.
```

## Regla 7 — Additional Category Page

### Explicación

Las categorías adicionales que no están cubiertas por un core service usan el mismo patrón local.

### Patrón o fórmula

```text
/[category]/[main-city]/[additional-category]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/duplicado-llaves/
```

### Ejemplos incorrectos

```text
- /duplicado-llaves-madrid/
- /cerrajero/duplicado-llaves/
- /madrid-duplicado-llaves/
- /cerrajero/madrid/duplicado-llaves/
```

### Regla final

```text
Categoría adicional real = página local propia si no está cubierta.
```

## Regla 8 — GeoArticle

### Explicación

Los GeoArticles son boosters semánticos y viven bajo la Main City.

### Patrón o fórmula

```text
/[main-city]/[article-topic]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/guia-precios-cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- /blog/cerrajero-urgente-cost-madrid/
- /cerrajero/madrid/cerrajero-urgente/
- /articles/madrid-cerrajero-urgente-cost/
- /guia-precios-cerrajero-urgente-madrid/
```

### Regla final

```text
GeoArticle = Main City + intención long-tail.
```

## Regla 9 — Local Coverage Areas no generan URLs

### Explicación

Las áreas de cobertura se mencionan en contenido y schema, pero no crean rutas.

### Patrón o fórmula

```text
Local Coverage Area → no URL unless approved
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro se menciona en la sección de cobertura, pero no existe /almagro/ en fase base
```

### Ejemplos incorrectos

```text
- /almagro/ sin aprobación
- /cerrajero/almagro/cerrajero-urgente/ sin expansión
- /retiro/cuanto-tarda-un-cerrajero/ sin landing
```

### Regla final

```text
Las áreas cubiertas no son carpetas por defecto.
```

## Regla 10 — Approved Expansion URLs

### Explicación

Una Approved Expansion Area puede usar los mismos patrones que la Main City, pero solo dentro del módulo de expansión.

### Patrón o fórmula

```text
/[approved-area]/ + /[category]/[approved-area]/[service]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/almagro/ solo si Almagro pasa a Approved Expansion Area
```

### Ejemplos incorrectos

```text
- Crear expansión sin demanda
- Aprobar todas las zonas
- No diferenciar base y expansión
```

### Regla final

```text
La expansión es opcional y aprobada.
```

## Regla 11 — No near-me

### Explicación

Near me puede aparecer en FAQs o contenido, pero no en slugs principales.

### Patrón o fórmula

```text
No `near-me` in core URLs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- /cerrajero/madrid/cerrajero-urgente-near-me/
- /near-me/cerrajero/
- /madrid/cerrajero-near-me/
```

### Regla final

```text
No usar near-me en URLs principales.
```

## Regla 12 — No adjetivos vacíos

### Explicación

Best, cheap y top-rated son modifiers comerciales, no arquitectura.

### Patrón o fórmula

```text
No best/cheap/top-rated in slugs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/apertura-puertas/
```

### Ejemplos incorrectos

```text
- /best-apertura-puertas-madrid/
- /cheap-cerrajero-madrid/
- /top-rated-cerrajero-urgente-madrid/
```

### Regla final

```text
La URL debe ser estable y objetiva.
```

## Regla 13 — Slugs limpios

### Explicación

Los slugs deben ser humanos, minúsculos y sin símbolos.

### Patrón o fórmula

```text
lowercase + hyphens + no accents + no symbols
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
chamberi, cerrajero-urgente, duplicado-llaves
```

### Ejemplos incorrectos

```text
- CerrajeroUrgentee
- cerrajero_urgente
- urgente%20cerrajero
- cerrajería-urgente
```

### Regla final

```text
Slug limpio = URL escalable.
```

## Regla 14 — No falsa ubicación

### Explicación

Una URL o contenido no debe fingir oficina física.

### Patrón o fórmula

```text
Service area ≠ physical office
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Atendemos clientes en Almagro
```

### Ejemplos incorrectos

```text
- Nuestra oficina en Almagro si no existe
- Visita nuestra tienda en Salamanca si no existe
- Schema address en Chamberí sin oficina
```

### Regla final

```text
Atender una zona no significa tener oficina allí.
```

## Regla 15 — No duplicar intención

### Explicación

Cada URL debe atacar una intención única.

### Patrón o fórmula

```text
One URL = one primary intent
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ cubre cerrajero urgente en Madrid
```

### Ejemplos incorrectos

```text
- /madrid/cerrajero-urgente/ compitiendo con la landing
- /cerrajero/madrid/cerrajero-urgente/
- /cerrajero-urgente-madrid/
```

### Regla final

```text
Una intención principal debe tener una URL principal.
```


## Estructura final aprobada para Cerrajeros Madrid 24h

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

Main City Location-Based Service:
/cerrajero/madrid/cerrajero-urgente/
/cerrajero/madrid/apertura-puertas/
/cerrajero/madrid/cambio-cerraduras/
/cerrajero/madrid/cambio-bombines/
/cerrajero/madrid/instalacion-cerraduras-seguridad/

Main City Additional Category:
/cerrajero/madrid/duplicado-llaves/

GeoArticles de la Main City:
/madrid/guia-precios-cerrajero-urgente/
/madrid/que-hacer-si-no-puedes-entrar-casa/
/madrid/cuanto-tarda-un-cerrajero/
```

## URLs no aprobadas en la fase base

```text
/almagro/
/cerrajero/almagro/cerrajero-urgente/
/chamberi/
/cerrajero/salamanca/apertura-puertas/
/retiro/guia-precios-cerrajero-urgente/
```

Estas URLs solo se crearían como Approved Expansion Areas.

## Dominio canónico único — Regla operativa 1

### Explicación

Todas las URLs deben salir de una única versión canónica del dominio. Mezclar www, non-www, HTTP y HTTPS crea duplicados técnicos y dificulta la consistencia del schema y la matriz.

### Patrón o fórmula

```text
Canonical Domain → todas las URLs absolutas → redirección del resto
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa https://www.cerrajerosmadrid24h.com como dominio canónico para /cerrajero/madrid/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- Usar https://cerrajerosmadrid24h.com en schema y https://www.cerrajerosmadrid24h.com en la matriz
- Mantener versiones HTTP accesibles
- Crear enlaces internos con dominios mezclados
```

### Regla final

```text
Una arquitectura local necesita un único dominio canónico.
```

## Trailing slash consistente — Regla operativa 2

### Explicación

La regla de slash final debe ser uniforme. No importa tanto si se usa o no slash, sino que todas las URLs sigan la misma convención.

### Patrón o fórmula

```text
URL pattern → trailing slash uniforme → canonical
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La URL correcta es /cerrajero/madrid/cerrajero-urgente/ si el sistema usa trailing slash.
```

### Ejemplos incorrectos

```text
- Publicar /cerrajero/madrid/cerrajero-urgente y /cerrajero/madrid/cerrajero-urgente/
- Crear enlaces internos sin la convención aprobada
- No canonicalizar variantes
```

### Regla final

```text
La consistencia de URL evita duplicados técnicos.
```

## Homepage en raíz — Regla operativa 3

### Explicación

La homepage debe ser la raíz del dominio. No debe moverse a /home/, /inicio/ o /cerrajero-madrid/ porque actúa como Root Entity Anchor del negocio.

### Patrón o fórmula

```text
Homepage = /
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa / como homepage y desde ahí enlaza a servicios, GeoHub de Madrid y contacto.
```

### Ejemplos incorrectos

```text
- Usar /home/ como homepage principal
- Crear /madrid-cerrajero/ como sustituto de la homepage
- Duplicar contenido de homepage en otra URL
```

### Regla final

```text
La homepage vive en la raíz del dominio.
```

## Service Overview sin ciudad — Regla operativa 4

### Explicación

Las páginas de servicio general no deben incluir ciudad en la URL. Su función es construir autoridad temática y servir como padre de la página local.

### Patrón o fórmula

```text
/[primary-category-slug]/[service-slug]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La URL correcta para Cerrajero urgente general es /cerrajero/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- /cerrajero/madrid-cerrajero-urgente/
- /cerrajero-urgente-madrid/
- /services/cerrajero-urgente/ si rompe la taxonomía aprobada
```

### Regla final

```text
Service Overview = categoría + servicio, sin ciudad.
```

## Main City GeoHub limpio — Regla operativa 5

### Explicación

El GeoHub de la Main City debe ser corto, estable y fácil de enlazar. Puede usar /city/ o /category/city/, pero en la base simplificada se recomienda /city/.

### Patrón o fórmula

```text
/[main-city-slug]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa /madrid/ como GeoHub de la Main City.
```

### Ejemplos incorrectos

```text
- /areas-we-serve/madrid/
- /locations/madrid/
- /cerrajero-services-madrid/
```

### Regla final

```text
El GeoHub debe ser un contenedor de ciudad, no una landing de servicio.
```

## Location-Based Service con patrón fijo — Regla operativa 6

### Explicación

Las páginas comerciales locales deben seguir el patrón categoría + ciudad + servicio. Esto mantiene claro el silo y evita mezclar intención de servicio con artículo o hub.

### Patrón o fórmula

```text
/[category]/[main-city]/[service]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La URL correcta es /cerrajero/madrid/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- /madrid/cerrajero-urgente/ si se reserva /madrid/ para GeoHub y artículos
- /cerrajero-urgente/madrid/
- /cerrajero/madrid/urgente-car-cambio-cerraduras/
```

### Regla final

```text
Una página local comercial usa una ciudad y un servicio.
```

## Additional Category con mismo patrón local — Regla operativa 7

### Explicación

Las categorías adicionales efectivas usan el mismo patrón que una página servicio+ciudad, porque su función es dar soporte local a una categoría GBP secundaria.

### Patrón o fórmula

```text
/[category]/[main-city]/[additional-category-slug]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Duplicado de llaves usa /cerrajero/madrid/duplicado-llaves/.
```

### Ejemplos incorrectos

```text
- /duplicado-llaves/
- /madrid-duplicado-llaves/
- /cerrajero/duplicado-llaves/ sin ciudad
```

### Regla final

```text
Una categoría adicional efectiva necesita soporte local en la Main City.
```

## GeoArticle como ciudad + tema — Regla operativa 8

### Explicación

Los GeoArticles son contenido de soporte, no landings comerciales. Su URL debe reflejar un tema long-tail asociado a la Main City, sin competir con la página servicio+ciudad.

### Patrón o fórmula

```text
/[main-city]/[article-topic-slug]/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El artículo de coste usa /madrid/guia-precios-cerrajero-urgente/ y enlaza a /cerrajero/madrid/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- /cerrajero/madrid/guia-precios-cerrajero-urgente/ si complica la distinción de landing
- /cerrajero-urgente-cost-madrid/
- /blog/random-post-123/
```

### Regla final

```text
GeoArticle = Main City + intención long-tail.
```

## Slugs limpios — Regla operativa 9

### Explicación

Los slugs deben ser legibles, estables y sin adornos. Minúsculas, guiones medios y sin símbolos es suficiente. Evita acentos, underscores, mayúsculas o palabras vacías innecesarias.

### Patrón o fórmula

```text
texto → lowercase → sin acentos → guiones medios → sin símbolos
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Chamberí se convierte en chamberi y Cerrajero urgente en cerrajero-urgente.
```

### Ejemplos incorrectos

```text
- /CerrajeroUrgentee/
- /cerrajero_urgente/
- /cerrajero-urgente!!!
```

### Regla final

```text
Un slug limpio debe ser entendible para humanos y sistemas.
```

## No near-me ni adjetivos vacíos — Regla operativa 10

### Explicación

Near me, best, cheap o top-rated pueden aparecer en contenido si encajan, pero no deben formar parte de la arquitectura base. Son modificadores inestables y pueden debilitar la URL.

### Patrón o fórmula

```text
URL objetiva → servicio real → ciudad real
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Usar /cerrajero/madrid/cerrajero-urgente/ en vez de /best-cerrajero-urgente-near-me-madrid/.
```

### Ejemplos incorrectos

```text
- /cerrajero/madrid/cerrajero-urgente-near-me/
- /best-cerrajero-madrid/
- /cheap-apertura-puertas-madrid/
```

### Regla final

```text
La URL base debe describir la entidad, no vender con adjetivos.
```

## Local Coverage Areas sin URL por defecto — Regla operativa 11

### Explicación

Las áreas de cobertura local pueden ser barrios, distritos o municipios cercanos, pero no generan URLs por defecto. Esta regla evita que el sistema base vuelva a multiplicarse sin necesidad.

### Patrón o fórmula

```text
Local Coverage Area → mención de contenido | no URL base
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca y Retiro se mencionan en contenido de Cerrajeros Madrid 24h, pero no se crean /almagro/ ni /cerrajero/almagro/... en fase base.
```

### Ejemplos incorrectos

```text
- Crear una URL por cada área mencionada
- Enlazar a páginas inexistentes de cobertura
- Usar áreas de cobertura como Main City
```

### Regla final

```text
Mencionar una zona no significa crear una página.
```

## Expansion URLs solo aprobadas — Regla operativa 12

### Explicación

Si una Local Coverage Area pasa a Approved Expansion Area, entonces sí puede generar GeoHub, páginas servicio+zona y artículos. Pero ese módulo debe quedar separado de la base.

### Patrón o fórmula

```text
Approved Expansion Area → /area/ + /category/area/service/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Almagro se aprueba después, Cerrajeros Madrid 24h puede crear /almagro/ y /cerrajero/almagro/cerrajero-urgente/ como expansión.
```

### Ejemplos incorrectos

```text
- Crear expansión sin justificación
- Mezclar expansión con fórmula base
- Crear páginas de expansión sin contenido único
```

### Regla final

```text
Las URLs de expansión se aprueban antes de generarse.
```

## Checklist final del Paso 4

| Check | Pregunta | Estado |
|---|---|---|
| Dominio canónico | ¿Todas las URLs usan la misma versión del dominio? | ✅ / ⬜ |
| Trailing slash | ¿Todas las URLs siguen la misma convención? | ✅ / ⬜ |
| Homepage | ¿La homepage es `/`? | ✅ / ⬜ |
| Service Overview | ¿Las páginas de servicio no llevan ciudad? | ✅ / ⬜ |
| GeoHub | ¿El GeoHub usa la Main City? | ✅ / ⬜ |
| Location-Based Service | ¿La URL usa /category/main-city/service/? | ✅ / ⬜ |
| Additional Category | ¿La categoría adicional efectiva tiene URL local? | ✅ / ⬜ |
| GeoArticle | ¿El artículo usa /main-city/topic/? | ✅ / ⬜ |
| Local Coverage | ¿Las áreas cubiertas no generan URLs por defecto? | ✅ / ⬜ |
| Expansion | ¿Las áreas con URL están aprobadas? | ✅ / ⬜ |
| No near-me | ¿No hay near-me en slugs principales? | ✅ / ⬜ |
| No false location | ¿No se afirma ubicación física falsa? | ✅ / ⬜ |
| No duplicate intent | ¿Cada intención tiene una sola URL principal? | ✅ / ⬜ |

## Outputs del Paso 4

- Dominio canónico definido
- Trailing slash definido
- Patrones URL aprobados
- URLs base generadas
- URLs prohibidas detectadas
- Reglas para Local Coverage Areas definidas
- Reglas para Approved Expansion Areas definidas
- Reglas anti-canibalización establecidas


---


Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 5 — Page Type Rules

## Índice corto

**Paso 5 — Page Type Rules**

## Objetivo del Paso 5

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: definir qué función cumple cada tipo de página antes de escribir contenido o enlazar páginas.
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
Error que previene: confundir Service Overview con Location-Based Service.
Error que previene: convertir GeoArticles en landing pages.
Error que previene: crear Additional Category Pages duplicadas.
Error que previene: usar el mismo schema en todos los tipos de página.
Error que previene: escribir páginas sin word count, CTA, FAQs o estructura AUDIO.

## Lo que tienes que rellenar

```text
Business Name:

Website Root Domain:

Primary GBP Category:

Primary Category Slug:

Main City:

Main City Slug:

Primary Service:

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

Phone:

Email:

GBP URL:

NAP:
- Name:
- Address:
- Phone:

Physical Location City:

Trust Signals:
- Years in business:
- Reviews:
- Certifications:
- Awards:
- Guarantees:
- Urgencias / servicio en el mismo día / servicio móvil:

Preferred CTA:
Option A: Llamar ahora
Option B: Reservar online
Option C: Solicitar presupuesto
Option D: Contactoar

Brand tone:
Option A: Professional
Option B: Friendly
Option C: Premium
Option D: Urgente / urgente
Option E: Local and conversational
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

Primary GBP Category:
Cerrajero

Additional GBP Categories:
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

Primary Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca

Additional Local Coverage Areas:
1. Retiro

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
- 250+ reseñas de Google
- Técnicos cerrajeros cualificados
- Servicio móvil en el mismo día
- Garantía de trabajo

GBP URL:
https://google.com/business/cerrajeros-madrid-24h

Phone:
+34 600 000 000

Email:
info@cerrajerosmadrid24h.com

Brand tone:
Friendly, professional, local and urgente when needed
```

# Cuerpo operativo del Paso 5

## 1. Homepage — Root Entity Anchor

### Función

La homepage es la raíz de entidad del negocio. Debe establecer quién es la marca, qué categoría GBP soporta, cuál es la Main City, qué servicios ofrece, qué cobertura local tiene y cómo contactar. No es una página decorativa ni un simple escaparate.

### Patrón URL

```text
/
```

### H1

```text
[Brand Name] – [Primary Service] de confianza en [Main City]
```

### Meta Title

```text
[Primary Service] en [Main City] | [Brand Name]
```

### Meta Description

```text
¿Necesitas [Primary Service] en [Main City]? [Brand Name] ofrece servicio local, soporte experto y respuesta rápida. Llama hoy.
```

### Word count recomendado

```text
900–1,300 words
```

### Estructura completa

```text
H1
Intro with brand + service + Main City
Quick Answer
Servicios principales
Vista previa de cobertura local
Bloques de confianza
Sección FAQ
Bloque NAP
CTA
Enlaces internos
```

### Schema requerido

```text
Organization
WebSite
LocalBusiness if physical presence exists in Main City
FAQPage
Speakable
```

### Enlaces internos requeridos

```text
Service Overview Pages
Main City GeoHub
Páginas de categoría adicional en la Main City
Página de contacto
```

### Ejemplo rellenado con Cerrajeros Madrid 24h

```text
URL: /
H1: Cerrajeros Madrid 24h – Servicios de cerrajería de confianza en Madrid
Meta Title: Cerrajero en Madrid | Cerrajeros Madrid 24h
Servicios principales: Cerrajero urgente, apertura de puertas, cambio de cerraduras, cambio de bombines e instalación de cerraduras de seguridad
Vista previa de cobertura local: Almagro, Chamberí, Salamanca, Retiro
Schema: Organization, WebSite, LocalBusiness, FAQPage, Speakable
```

### Ejemplos incorrectos

```text
- Homepage with no services
- Homepage targeting five cities equally
- Homepage without NAP
- Homepage without links to service pages
```

### Regla final

```text
1. Homepage — Root Entity Anchor debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## 2. Service Overview Page — Topical Authority Pillar

### Función

Esta página educa sobre un servicio sin geolocalización. Es el pilar temático que soporta la versión local del servicio en la Main City y cualquier futura expansión aprobada.

### Patrón URL

```text
/[primary-category-slug]/[service-slug]/
```

### H1

```text
Servicios profesionales de [Service] por [Brand Name]
```

### Meta Title

```text
[Service] por [Brand Name] | Expertos en [Primary Category]
```

### Meta Description

```text
¿Necesitas [Service] de confianza? [Brand Name] ofrece soluciones expertas, rápidas y cuidadosas. Consulta el proceso completo y sus beneficios.
```

### Word count recomendado

```text
850–1,000 words
```

### Estructura completa

```text
H1
Intro no local
H2 Authority
H2 Uniqueness
H2 Depth
H2 Intent
H2 Optimization
Bullet sections
FAQs
CTA
Enlaces internos
```

### Schema requerido

```text
Service
WebPage
BreadcrumbList
Speakable
```

### Enlaces internos requeridos

```text
Homepage
Related Service Overview Pages
Main City Location-Based Service Page
Relevant GeoArticle
```

### Ejemplo rellenado con Cerrajeros Madrid 24h

```text
URL: /cerrajero/cerrajero-urgente/
H1: Servicios profesionales de cerrajería urgente por Cerrajeros Madrid 24h
Meta Title: Cerrajero urgente por Cerrajeros Madrid 24h | Expertos en cerrajería
Enlaces internos: /, /cerrajero/apertura-puertas/, /cerrajero/madrid/cerrajero-urgente/, /madrid/guia-precios-cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Mentioning Madrid as the primary target
- Using /cerrajero/madrid/cerrajero-urgente/ as service overview
- No links to local version
- Thin content under 400 words
```

### Regla final

```text
2. Service Overview Page — Topical Authority Pillar debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## 3. Location-Based Service Page — Main City Converter

### Función

Esta página convierte búsquedas locales de alta intención para una combinación exacta: servicio + Main City. Es una de las páginas más importantes para soporte GBP y Local Pack.

### Patrón URL

```text
/[primary-category-slug]/[main-city-slug]/[service-slug]/
```

### H1

```text
[Brand Name] – [Service] en [Main City]
```

### Meta Title

```text
Top [Service] en [Main City] | [Brand Name]
```

### Meta Description

```text
¿Necesitas [Service] en [Main City]? [Brand Name] ayuda con [problema], [problema] y [problema]. Llama para recibir soporte local.
```

### Word count recomendado

```text
800–1,000 words
```

### Estructura completa

```text
H1
Intro local
Quick Local Answer
H2 Authority
H2 Uniqueness
H2 Depth
H2 Local Pain Points
H2 Local Coverage Areas Served
H2 Related Services in Main City
FAQs
CTA
Enlaces internos
```

### Schema requerido

```text
LocalBusiness
BreadcrumbList
FAQPage optional
Speakable optional
```

### Enlaces internos requeridos

```text
Parent Service Overview
Main City GeoHub
Other services in Main City
Related GeoArticles
Contacto
```

### Ejemplo rellenado con Cerrajeros Madrid 24h

```text
URL: /cerrajero/madrid/cerrajero-urgente/
H1: Cerrajeros Madrid 24h – Cerrajero urgente en Madrid
Local Coverage Areas: Almagro, Chamberí, Salamanca, Retiro mencionadas de forma natural
Enlaces: /cerrajero/cerrajero-urgente/, /madrid/, /cerrajero/madrid/apertura-puertas/, /madrid/guia-precios-cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Mezclar Madrid and Almagro as equal targets
- Crear una página por cada zona de cobertura sin aprobación
- Afirmar una oficina en Salamanca
- Combinar apertura de puertas y cambio de cerraduras en una sola landing local
```

### Regla final

```text
3. Location-Based Service Page — Main City Converter debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## 4. Additional Category Page — GBP Additional Category Support

### Función

Esta página soporta una categoría adicional real del GBP que no está cubierta por un servicio core. Refuerza la profundidad de entidad y la relevancia semántica.

### Patrón URL

```text
/[primary-category-slug]/[main-city-slug]/[additional-category-slug]/
```

### H1

```text
[Brand Name] – Expert [Service] en [Main City]
```

### Meta Title

```text
[Service] en [Main City] | [Brand Name]
```

### Meta Description

```text
¿Necesitas [Service] en [Main City]? [Brand Name] ofrece ayuda fiable para [problema], [caso de uso] y [caso de uso]. Llama hoy.
```

### Word count recomendado

```text
800–1,000 words
```

### Estructura completa

```text
H1
Intro con problema local
H2 Authority
H2 Uniqueness
H2 Depth
H2 Intent
H2 Optimization
Local Coverage Use Case
FAQs
CTA
Enlaces internos
```

### Schema requerido

```text
Service with areaServed
BreadcrumbList
FAQPage optional
Speakable optional
```

### Enlaces internos requeridos

```text
Main City GeoHub
Related Location-Based Service Pages
Related GeoArticles
Contacto
```

### Ejemplo rellenado con Cerrajeros Madrid 24h

```text
URL: /cerrajero/madrid/duplicado-llaves/
H1: Cerrajeros Madrid 24h – Duplicado de llaves experto en Madrid
Meta Title: Duplicado de llaves en Madrid | Cerrajeros Madrid 24h
Enlaces: /madrid/, /cerrajero/madrid/cambio-cerraduras/, /cerrajero/madrid/instalacion-cerraduras-seguridad/
```

### Ejemplos incorrectos

```text
- Crear /cerrajero/madrid/cerrajero-urgente/ when urgente is already covered
- No local context
- No links to GeoHub
- Category page with no relation to GBP
```

### Regla final

```text
4. Additional Category Page — GBP Additional Category Support debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## 5. GeoHub Page — Main City Silo Container

### Función

El GeoHub agrupa todas las señales de la Main City. Es el índice local del sitio: servicios, categorías adicionales, artículos, cobertura local, confianza y contacto.

### Patrón URL

```text
/[main-city-slug]/ OR /[primary-category-slug]/[main-city-slug]/
```

### H1

```text
[Brand Name] – [Industry] Services in [Main City]
```

### Meta Title

```text
[Industry] Services in [Main City] | [Brand Name]
```

### Meta Description

```text
Explore trusted [Industry] services in [Main City] from [Brand Name]. View local services, helpful resources, coverage areas, and ways to contact our team.
```

### Word count recomendado

```text
700–1,100 words
```

### Estructura completa

```text
H1
City Intro
Menú de servicios
Additional Category Menu
Local Coverage Areas Section
GeoArticle Resources
Trust Signals
CTA
Enlaces internos
```

### Schema requerido

```text
CollectionPage
BreadcrumbList
LocalBusiness optional if physical presence exists
```

### Enlaces internos requeridos

```text
Homepage
All Páginas de servicio en la Main City
Páginas de categoría adicional en la Main City
GeoArticles de la Main City
Página de contacto
```

### Ejemplo rellenado con Cerrajeros Madrid 24h

```text
URL: /madrid/
H1: Cerrajeros Madrid 24h – Servicios de cerrajería en Madrid
Menú de servicios: urgente, apertura de puertas, cambio de cerraduras, cambio de bombines, cambio de bombines
Sección de cobertura: Almagro, Chamberí, Salamanca, Retiro
Enlaces: /cerrajero/madrid/cerrajero-urgente/, /cerrajero/madrid/duplicado-llaves/, /madrid/guia-precios-cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- GeoHub with only generic city text
- No links to service pages
- Treating Almagro as a child page without approval
- No CTA
```

### Regla final

```text
5. GeoHub Page — Main City Silo Container debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## 6. GeoArticle Page — Semantic Booster

### Función

El GeoArticle no es una landing comercial. Es un booster semántico para un servicio, una Main City y una intención long-tail. Su misión es apoyar la página comercial y el GeoHub.

### Patrón URL

```text
/[main-city-slug]/[article-topic-slug]/
```

### H1

```text
[Article Topic] in [Main City]
```

### Meta Title

```text
[Article Topic] in [Main City] | [Brand Name]
```

### Meta Description

```text
Learn about [Article Topic] in [Main City], including what to expect, common mistakes, local factors, and when to call [Brand Name].
```

### Word count recomendado

```text
1,000–1,500 words
```

### Estructura completa

```text
H1
Intro contextual
H2 Problem
H2 Local Context
H2 Options / Mistakes
H2 When to Call
H2 Local Examples
FAQs
CTA
Enlaces internos
```

### Schema requerido

```text
Article
FAQPage
BreadcrumbList
Speakable
```

### Enlaces internos requeridos

```text
Matching Main City Service Page
Main City GeoHub
Related GeoArticle
Contacto
```

### Ejemplo rellenado con Cerrajeros Madrid 24h

```text
URL: /madrid/guia-precios-cerrajero-urgente/
H1: How Much Does an Precio de cerrajero urgente en Madrid?
Enlaces: /cerrajero/madrid/cerrajero-urgente/, /madrid/, /madrid/que-hacer-si-no-puedes-entrar-casa/
```

### Ejemplos incorrectos

```text
- Writing as a generic landing page
- No link to service page
- No local examples
- Pretending physical location in every coverage area
```

### Regla final

```text
6. GeoArticle Page — Semantic Booster debe cumplir su función específica y no debe mezclarse con otro tipo de página.
```
## Homepage como Root Entity Anchor — Regla operativa 1

### Explicación

La homepage no es una página decorativa. Es el contenedor principal de la entidad local y debe establecer marca, categoría GBP, servicio principal, Main City, NAP, señales de confianza y enlaces a las páginas clave.

### Patrón o fórmula

```text
Brand + Primary Service + Main City → servicios core → NAP → enlaces internos
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa / con H1 orientado a Servicios de cerrajería en Madrid, lista servicios core y enlaza a /madrid/ y páginas Service Overview.
```

### Ejemplos incorrectos

```text
- Homepage solo con un slider y una frase genérica
- No mencionar la Main City
- No enlazar a servicios core
```

### Regla final

```text
La homepage debe explicar quién es el negocio, qué hace y dónde opera.
```

## Service Overview como pilar no local — Regla operativa 2

### Explicación

La Service Overview Page crea autoridad temática sobre un servicio sin enfocarse en ciudad. Debe explicar el servicio, proceso, problemas resueltos, FAQs y enlaces a su versión Main City.

### Patrón o fórmula

```text
/category/service/ → topical authority → link a Main City service page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La página /cerrajero/cerrajero-urgente/ explica Cerrajero urgente sin apuntar a Madrid como llaveword principal.
```

### Ejemplos incorrectos

```text
- Usar /cerrajero/cerrajero-urgente/ como landing de Madrid
- Meter Local Coverage Areas como si fuera una página local
- No enlazar a /cerrajero/madrid/cerrajero-urgente/
```

### Regla final

```text
Service Overview educa; no reemplaza la página servicio+ciudad.
```

## Location-Based Service como convertidor local — Regla operativa 3

### Explicación

La Location-Based Service Page es la página comercial más importante para una combinación servicio + Main City. Debe tener intención local, CTA, reviews, contenido GEO y enlaces a padre, GeoHub y artículos.

### Patrón o fórmula

```text
/category/main-city/service/ → servicio + ciudad → conversión
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa /cerrajero/madrid/cerrajero-urgente/ para captar búsquedas de cerrajero urgente en Madrid.
```

### Ejemplos incorrectos

```text
- Mezclar cerrajero urgente, apertura de puertas y cambio de cerraduras en una sola landing
- Crear una página local sin CTA
- Escribir contenido genérico sin contexto de Madrid
```

### Regla final

```text
Una página local comercial debe cubrir un servicio y una ciudad.
```

## Additional Category como soporte GBP — Regla operativa 4

### Explicación

Las Additional Category Pages existen para soportar categorías adicionales reales del GBP que no estén ya cubiertas por servicios core. Su formato es local porque refuerzan relevancia de categoría en la Main City.

### Patrón o fórmula

```text
Effective Additional Category + Main City → página local de soporte
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Servicio de duplicado de llaves genera /cerrajero/madrid/duplicado-llaves/ porque no está cubierto por los servicios core.
```

### Ejemplos incorrectos

```text
- Crear página duplicada para Servicio de cerrajería de urgencia
- Ignorar una categoría adicional del GBP
- Usar una página genérica sin Main City
```

### Regla final

```text
Una categoría adicional efectiva debe tener soporte local propio.
```

## GeoHub como contenedor de ciudad — Regla operativa 5

### Explicación

El GeoHub organiza todas las señales de la Main City: servicios, categorías adicionales, GeoArticles, cobertura local, confianza y contacto. No es una landing de un servicio concreto.

### Patrón o fórmula

```text
/main-city/ → índice local → servicios + artículos + cobertura
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa /madrid/ como hub de Servicios de cerrajería en Madrid y lista páginas locales de urgente, apertura de puertas, cambio de cerraduras, cambio de bombines y cambio de bombines.
```

### Ejemplos incorrectos

```text
- Crear /madrid/ con texto turístico sin servicios
- Usar /madrid/ para vender solo urgente cerrajero
- No enlazar a las páginas locales
```

### Regla final

```text
El GeoHub es el índice de la Main City.
```

## GeoArticle como booster semántico — Regla operativa 6

### Explicación

El GeoArticle no es una landing comercial. Debe cubrir un tema long-tail de servicio + Main City y enlazar a la página comercial correspondiente y al GeoHub.

### Patrón o fórmula

```text
/main-city/topic/ → artículo → soporte a /category/main-city/service/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El artículo /madrid/guia-precios-cerrajero-urgente/ explica costes y enlaza a /cerrajero/madrid/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- Escribir un artículo como página de venta directa
- No enlazar al servicio local
- Crear el artículo antes de la página que debe apoyar
```

### Regla final

```text
Un GeoArticle debe empujar relevancia hacia una página local.
```

## Schema por tipo de página — Regla operativa 7

### Explicación

Cada tipo de página tiene un schema esperado. La homepage usa Organization y WebSite; servicios usan Service; landings locales usan LocalBusiness; artículos usan Article y FAQPage.

### Patrón o fórmula

```text
Page Type → Schema Required → QA
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 usa LocalBusiness + BreadcrumbList; GA-001 usa Article + FAQPage + BreadcrumbList + Speakable.
```

### Ejemplos incorrectos

```text
- Usar Article schema en una landing
- Usar LocalBusiness con ubicación falsa
- No añadir BreadcrumbList
```

### Regla final

```text
El schema debe coincidir con la función de la página.
```

## Word count por intención — Regla operativa 8

### Explicación

El contenido debe tener suficiente profundidad según el tipo de página. No se trata de inflar palabras, sino de cubrir intención, proceso, beneficios, FAQs, enlaces y contexto local.

### Patrón o fórmula

```text
Page Type → word count objetivo → contenido completo
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Una Location-Based Service Page de Cerrajeros Madrid 24h tiene 800–1.000 palabras; un GeoArticle tiene 1.000–1.500.
```

### Ejemplos incorrectos

```text
- Publicar landings de 250 palabras
- Crear artículos de 400 palabras sin profundidad
- Repetir bloques para llegar al word count
```

### Regla final

```text
La longitud debe permitir profundidad, no relleno.
```

## CTA adaptado al page type — Regla operativa 9

### Explicación

Cada página debe tener un CTA, pero no todos los CTAs cumplen la misma función. Homepage y landings deben convertir; Service Overview puede ser más consultivo; GeoArticle debe enlazar contextual y suavemente al servicio.

### Patrón o fórmula

```text
Page Type → CTA intent → enlace o acción
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
En /cerrajero/madrid/cerrajero-urgente/ el CTA es llamar ahora; en /madrid/guia-precios-cerrajero-urgente/ el CTA invita a consultar la página de Cerrajero urgente en Madrid.
```

### Ejemplos incorrectos

```text
- Usar el mismo CTA genérico en todo el sitio
- No incluir CTA en artículos
- Hacer CTAs agresivos en contenido informativo
```

### Regla final

```text
El CTA debe coincidir con la intención de la página.
```

## No false location claims — Regla operativa 10

### Explicación

Cualquier page type puede mencionar cobertura local, pero ninguno debe inventar oficina física. Esta regla protege la confianza local y evita contradicciones con GBP, NAP y schema.

### Patrón o fórmula

```text
Local Coverage Area → servir clientes | no → oficina ficticia
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h puede decir que atiende Almagro, pero no que tiene oficina en Almagro si su ubicación física es Madrid.
```

### Ejemplos incorrectos

```text
- Nuestra oficina en Almagro si no existe
- Mapa de una ubicación no real
- LocalBusiness address en zona de cobertura sin sede
```

### Regla final

```text
Cobertura no equivale a presencia física.
```

## Checklist final del Paso 5

| Check | Pregunta | Estado |
|---|---|---|
| Homepage | ¿Funciona como Root Entity Anchor? | ✅ / ⬜ |
| Service Overview | ¿No tiene intención local principal? | ✅ / ⬜ |
| Location-Based Service | ¿Es un servicio + Main City? | ✅ / ⬜ |
| Additional Category | ¿Soporta una categoría adicional real y no duplicada? | ✅ / ⬜ |
| GeoHub | ¿Agrupa todos los elementos de la Main City? | ✅ / ⬜ |
| GeoArticle | ¿Es booster semántico y no landing? | ✅ / ⬜ |
| Schema | ¿Cada tipo de página tiene schema correcto? | ✅ / ⬜ |
| CTA | ¿Cada tipo de página tiene CTA definido? | ✅ / ⬜ |
| Enlaces internos | ¿Cada tipo tiene enlaces obligatorios? | ✅ / ⬜ |
| No mezcla | ¿No se mezclan servicios ni zonas sin aprobación? | ✅ / ⬜ |

## Outputs del Paso 5

- Reglas de tipo de página definidas
- URLs por tipo de página confirmadas
- H1 y metadata por tipo de página
- Word count por tipo
- Schema por tipo
- Internal links base por tipo
- Errores frecuentes documentados


---


Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 6 — Estructura de Contenido + Áreas de Cobertura Local

## Índice corto

**Paso 6 — Estructura de Contenido + Áreas de Cobertura Local**

## Objetivo del Paso 6

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: definir cómo se escribe y organiza el contenido real de cada tipo de página, y cómo se usan las áreas de cobertura local sin convertirlas automáticamente en URLs.
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
Error que previene: crear solo formularios sin cuerpo operativo.
Error que previene: mencionar zonas locales de forma artificial.
Error que previene: crear páginas para cada área de cobertura sin aprobación.
Error que previene: usar Local Coverage Areas como si fueran Main City.
Error que previene: olvidar dónde van FAQs, CTAs, reviews, Local Coverage Areas y enlaces internos.

## Lo que tienes que rellenar

```text
Business Name:

Primary GBP Category:

Primary Category Slug:

Main City:

Main City Slug:

Physical Location City:

Servicios principales:
1.
2.
3.
4.
5.

Primary Local Coverage Areas:
Recommended: start with 3–5 strongest real areas served.
1.
2.
3.
4.
5.

Additional Local Coverage Areas:
Optional.
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

Service Page URL to structure:

Page Type:
Homepage / Service Overview / Location-Based Service / Additional Category / GeoHub / GeoArticle

Target Service:

Target Additional Category:

Matching Parent Page:

Matching GeoHub:

Related GeoArticles:

Preferred CTA:

Trust Signals:

Can the page mention physical office in this area?
Yes / No
```

## Ejemplo rellenado

```text
Business Name:
Cerrajeros Madrid 24h

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

Servicios principales:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de cerraduras
4. Cambio de bombines
5. Instalación de cerraduras de seguridad

Primary Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca

Additional Local Coverage Areas:
1. Retiro

Should Local Coverage Areas generate pages?
No, not in the base build.

Approved Expansion Areas:
None in Phase 1.

Service Page URL to structure:
/cerrajero/madrid/cerrajero-urgente/

Page Type:
Location-Based Service

Target Service:
Cerrajero urgente

Target Additional Category:
Servicio de cerrajería de urgencia is already covered by this service.

Matching Parent Page:
/cerrajero/cerrajero-urgente/

Matching GeoHub:
/madrid/

Related GeoArticles:
1. /madrid/guia-precios-cerrajero-urgente/
2. /madrid/que-hacer-si-no-puedes-entrar-casa/
3. /madrid/cuanto-tarda-un-cerrajero/

Preferred CTA:
Llamar ahora

Trust Signals:
- 10+ años de experiencia
- 250+ reseñas de Google
- Técnicos cerrajeros cualificados
- Servicio móvil en el mismo día

Can the page mention physical office in this area?
Only for Madrid, not for Local Coverage Areas unless true.
```

# Cuerpo operativo del Paso 6

## Principio 1 — Main City crea arquitectura

### Explicación

La Main City es la ciudad principal que genera URLs base. Todo el sistema base se organiza alrededor de esa ciudad.

### Patrón o fórmula

```text
Main City → /city/ + /category/city/service/ + /city/article-topic/
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Madrid genera /madrid/ y /cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Almagro genera URL sin aprobación
- Salamanca se usa como Main City en una página de Madrid
- Cambiar Main City por cada bloque
```

### Regla final

```text
La arquitectura base pertenece a una sola Main City.
```

## Principio 2 — Local Coverage Areas enriquecen contenido

### Explicación

Las Local Coverage Areas son zonas reales atendidas que se usan para contexto, FAQs, ejemplos, cobertura y schema areaServed.

### Patrón o fórmula

```text
Local Coverage Areas → content, FAQs, examples, areaServed
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca y Retiro se mencionan en secciones de cobertura
```

### Ejemplos incorrectos

```text
- Crear páginas por cada zona
- Listar zonas donde no se atiende
- Usarlas como H1 principal
```

### Regla final

```text
Las Local Coverage Areas refuerzan contenido, no crean URLs por defecto.
```

## Principio 3 — Approved Expansion Areas crean URLs solo si se aprueban

### Explicación

Cuando una zona tiene demanda, competencia o valor comercial, puede pasar a expansión.

### Patrón o fórmula

```text
Local Coverage Area → Approved Expansion Area → URLs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro podría generar /almagro/ en una fase futura si se aprueba
```

### Ejemplos incorrectos

```text
- Aprobar todas las zonas
- Crear expansión antes de terminar Madrid
- Crear expansión sin contenido único
```

### Regla final

```text
Solo las zonas aprobadas generan URLs.
```

## Principio 4 — Mencionar una zona no es crear una página

### Explicación

Este principio evita confundir cobertura real con arquitectura.

### Patrón o fórmula

```text
Mention ≠ URL
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Se menciona Almagro dentro de /cerrajero/madrid/cerrajero-urgente/ sin enlazar a /almagro/
```

### Ejemplos incorrectos

```text
- Crear enlaces a URLs inexistentes
- Usar la zona en breadcrumbs
- Crear páginas por presión de llaveword
```

### Regla final

```text
Mencionar una zona no significa crear una URL.
```

## Principio 5 — No falsa ubicación

### Explicación

Si la oficina física está en Madrid, no se afirma oficina en Almagro, Salamanca o Retiro.

### Patrón o fórmula

```text
Service coverage ≠ physical presence
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Atendemos clientes en Salamanca
```

### Ejemplos incorrectos

```text
- Nuestra oficina en Salamanca
- Visita nuestra tienda en Almagro
- Schema address en Chamberí
```

### Regla final

```text
Atender una zona no equivale a estar físicamente allí.
```

## 1. Homepage Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

### Estructura completa

```text
H1
Intro
Quick Answer
Servicios principales
Vista previa de cobertura local
Bloques de confianza
Sección FAQ
Bloque NAP
CTA
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

La homepage puede mencionar 3–5 Local Coverage Areas de forma ligera, normalmente en un bloque de service area preview. No debe convertirse en una lista masiva de zonas ni usar las áreas de cobertura como sustituto de la Main City.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
H1: Cerrajeros Madrid 24h – Servicios de cerrajería de confianza en Madrid
Vista previa de cobertura local: Atendemos clientes en Madrid y zonas de cobertura como Almagro, Chamberí, Salamanca y Retiro según disponibilidad.
Enlaces a servicios principales: /cerrajero/cerrajero-urgente/, /cerrajero/apertura-puertas/, /cerrajero/cambio-bombines/
Enlace al GeoHub: /madrid/
```

### Ejemplos incorrectos

```text
- Homepage con 30 zonas listadas sin contexto
- Homepage orientada a Almagro, Salamanca y Retiro al mismo nivel que Madrid
- Homepage sin Servicios principales
- Homepage sin NAP
```

### Regla final

```text
La homepage debe reforzar marca, categoría, Main City, servicios y cobertura real sin crear URLs innecesarias.
```
## 2. Service Overview Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

### Estructura completa

```text
H1
Intro no local
H2 Authority
H2 Uniqueness
H2 Depth
H2 Intent
H2 Optimization
Bullet sections
FAQs
CTA
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

No se usan Local Coverage Areas. Esta página no debe mencionar Madrid, Almagro, Salamanca ni ninguna zona como target principal. Su función es ser pilar temático del servicio.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL: /cerrajero/cerrajero-urgente/
Intro: Cerrajeros Madrid 24h provides professional urgente servicios de cerrajería for urgente aperturas urgentes, llaves rotas and access problems.
No local targeting.
Internal link to local version: /cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Mencionar Almagro en el H1
- Crear un bloque de cobertura local en service overview
- Usar /madrid/ como target principal
- No enlazar a la versión local
```

### Regla final

```text
Service Overview = servicio sin localización.
```
## 3. Location-Based Service Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

### Estructura completa

```text
H1
Intro local 100–150 words
Quick Local Answer
H2 Authority
H2 Uniqueness
H2 Depth
H2 Local Pain Points
H2 Local Coverage Areas Served
H2 Related Services in [Main City]
FAQs
CTA
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

Sí se usan Local Coverage Areas. Deben aparecer de forma natural en la intro, en una sección de cobertura, en ejemplos locales y en FAQs. La página sigue siendo de Main City, no de cada área mencionada.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL: /cerrajero/madrid/cerrajero-urgente/
H2: Ayuda de cerrajero urgente en Madrid y áreas de cobertura local
Texto: Cerrajeros Madrid 24h ayuda a clientes en Madrid con aperturas urgentes, llaves rotas y problemas de acceso. También atendemos zonas de cobertura como Almagro, Chamberí, Salamanca y Retiro cuando el servicio está disponible.
FAQ: ¿Ofrecéis cerrajero urgente en Almagro y Chamberí?
Respuesta: Sí, atendemos esas zonas según disponibilidad, mientras esta página sigue enfocada en el servicio de cerrajero urgente en Madrid.
```

### Ejemplos incorrectos

```text
- H1: Cerrajero urgente en Almagro, Madrid y Salamanca
- Create one paragraph for each area with duplicated text
- Claim office in Retiro
- Link to /almagro/ when that URL does not exist
```

### Regla final

```text
Una Location-Based Service Page menciona cobertura local sin dejar de ser service + Main City.
```
## 4. Additional Category Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

### Estructura completa

```text
H1
Intro con problema local
H2 Authority
H2 Uniqueness
H2 Depth
H2 Intent
H2 Optimization
Local Coverage Use Case
FAQs
CTA
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

Las Local Coverage Areas se usan para explicar casos de uso locales relacionados con la categoría adicional. No deben crear páginas propias si no están aprobadas.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL: /cerrajero/madrid/duplicado-llaves/
H2: Duplicado de llaves en zonas de cobertura de Madrid
Texto: Clientes en Madrid y zonas como Almagro, Chamberí y Salamanca pueden necesitar llaves de repuesto para familiares, empleados, inquilinos o accesos urgentes.
Enlaces: /madrid/, /cerrajero/madrid/cambio-cerraduras/, /cerrajero/madrid/instalacion-cerraduras-seguridad/
```

### Ejemplos incorrectos

```text
- Crear /cerrajero/almagro/duplicado-llaves/ sin aprobación
- No conectar con GeoHub
- Tratar duplicado de llaves como servicio core si no está definido
- Copiar contenido de la página de cambio de bombines
```

### Regla final

```text
La categoría adicional se contextualiza localmente, pero no se multiplica por zonas no aprobadas.
```
## 5. GeoHub Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

### Estructura completa

```text
H1
City intro
Menú de servicios
Additional Category Menu
Local Coverage Areas Section
GeoArticle Resources
Trust Signals
CTA
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

El GeoHub es el lugar más natural para una sección explícita de Local Coverage Areas. Aquí se puede explicar la cobertura de la empresa sin crear URLs por cada zona.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL: /madrid/
H2: Zonas de cobertura de cerrajería en Madrid
Texto: Cerrajeros Madrid 24h provides servicios de cerrajería en Madrid and local coverage areas such as Almagro, Chamberí, Salamanca and Retiro. Estas áreas representan cobertura real y ayudan al usuario a entender dónde puede estar disponible el servicio.
Menú de servicios: urgente, apertura de puertas, cambio de cerraduras, cambio de bombines, cambio de bombines.
```

### Ejemplos incorrectos

```text
- GeoHub sin lista de servicios
- GeoHub como artículo sobre la ciudad
- Enlaces a áreas inexistentes
- Cobertura local escrita como si hubiese oficinas en cada zona
```

### Regla final

```text
El GeoHub organiza Main City, servicios y cobertura local real.
```
## 6. GeoArticle Content Architecture

### Explicación

Este bloque define la arquitectura interna de contenido para este tipo de página. No se limita a H1 y meta title. Incluye intro, H2s, bloques de apoyo, áreas de cobertura local, FAQs, CTA, enlaces internos y schema.

### Estructura completa

```text
H1
Intro contextual
H2 Problem
H2 Local Context
H2 Options / Mistakes
H2 When to Call
H2 Local Examples
FAQs
CTA
Enlaces internos
Schema
```

### Uso de Local Coverage Areas

Las Local Coverage Areas se usan como ejemplos semánticos y contexto real. No se usan para fingir presencia física ni para crear intención principal distinta.

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL: /madrid/guia-precios-cerrajero-urgente/
Texto: El precio de un cerrajero urgente en Madrid puede variar según el tipo de cerradura, la hora, la urgencia y la zona de cobertura. Una apertura sencilla en un piso de Madrid puede ser diferente de un aviso nocturno en Almagro, Chamberí o Salamanca según disponibilidad y condiciones de desplazamiento.
Enlaces: /cerrajero/madrid/cerrajero-urgente/, /madrid/, /madrid/que-hacer-si-no-puedes-entrar-casa/
```

### Ejemplos incorrectos

```text
- Article targeting Almagro as primary location without page
- No link to service page
- Fake office statement
- Article written as sales landing
```

### Regla final

```text
GeoArticles use local coverage as context and send authority back to the Main City service page.
```

## Tabla de uso de Local Coverage Areas por tipo de página

| Page Type | ¿Usa Local Coverage Areas? | Cómo las usa |
|---|---|---|
| Homepage | Sí, ligero | Service area preview |
| Service Overview | No | No debe ser local |
| Location-Based Service | Sí | Intro, pain points, cobertura, FAQs |
| Additional Category | Sí | Escenarios locales y cobertura |
| GeoHub | Sí, recomendado | Sección principal de cobertura local |
| GeoArticle | Sí | Ejemplos, contexto, landmarks, FAQs |

## Ejemplo práctico completo

```text
Main City:
Madrid

Service:
Cerrajero urgente

Primary Local Coverage Areas:
Almagro, Chamberí, Salamanca

Additional Local Coverage Areas:
Retiro

URL:
/cerrajero/madrid/cerrajero-urgente/

Sección:
H2: Cerrajero urgente en Madrid and Nearby Coverage Areas

Texto:
Cerrajeros Madrid 24h ayuda a clientes en Madrid con aperturas urgentes, llaves rotas, cambios de bombín y problemas de acceso. También atendemos zonas de cobertura como Almagro, Chamberí, Salamanca y Retiro según disponibilidad. Estas zonas ayudan a aclarar la cobertura real mientras la página sigue enfocada en el servicio de cerrajero urgente en Madrid.
```

## FAQ ejemplo

```text
Pregunta:
¿Ofrecéis cerrajero urgente en Almagro, Chamberí y Salamanca?

Respuesta:
Sí. Cerrajeros Madrid 24h atiende clientes en Madrid y zonas de cobertura como Almagro, Chamberí y Salamanca según disponibilidad. Esta página se centra en el servicio de cerrajero urgente en Madrid y aclara la cobertura local real.
```

## Homepage con cobertura ligera — Regla operativa 1

### Explicación

La homepage puede mencionar Local Coverage Areas, pero no debe convertirse en una lista interminable de zonas. Su prioridad sigue siendo entidad, categoría GBP, Main City, servicios, NAP y confianza.

### Patrón o fórmula

```text
Homepage → Main City primero → 3–5 coverage areas como preview
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h menciona que atiende Madrid y zonas como Almagro, Chamberí, Salamanca y Retiro, pero el H1 se mantiene centrado en Madrid.
```

### Ejemplos incorrectos

```text
- Hacer un H1 con todas las áreas de cobertura
- Listar 40 zonas antes de explicar servicios
- Crear enlaces a zonas sin URL
```

### Regla final

```text
La cobertura en homepage debe ser breve y subordinada a la Main City.
```

## Service Overview sin cobertura local — Regla operativa 2

### Explicación

Las páginas de servicio general deben evitar Main City y Local Coverage Areas como objetivo principal. Su trabajo es explicar el servicio de forma no geolocalizada y actuar como pilar temático.

### Patrón o fórmula

```text
Service Overview → sin ciudad → sin coverage areas → autoridad temática
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La página /cerrajero/apertura-puertas/ explica Apertura de puertas sin mencionar Almagro o Chamberí como targets.
```

### Ejemplos incorrectos

```text
- Meter una sección de zonas en Service Overview
- Usar H1 Apertura de puertas en Madrid en /cerrajero/apertura-puertas/
- Enlazar a áreas sin página propia
```

### Regla final

```text
La cobertura local no pertenece al pilar de servicio general.
```

## Intro local en Location-Based Service — Regla operativa 3

### Explicación

La página servicio+Main City debe abrir con una intro localizada de 100–150 palabras. Aquí se puede mencionar 2–4 Local Coverage Areas de forma natural si refuerzan el contexto, pero sin desplazar la Main City.

### Patrón o fórmula

```text
Servicio + Main City + problema local + cobertura ligera
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La intro de /cerrajero/madrid/cerrajero-urgente/ menciona aperturas urgentes en Madrid y puede citar Almagro o Chamberí como cobertura cercana.
```

### Ejemplos incorrectos

```text
- Abrir con una lista de zonas en vez de problema del usuario
- No mencionar Madrid en la intro
- Prometer oficina en áreas de cobertura
```

### Regla final

```text
La intro local debe reforzar la Main City y el problema real del usuario.
```

## Sección Local Coverage Areas Served — Regla operativa 4

### Explicación

Las páginas locales pueden incluir una sección específica de cobertura. Esta sección permite mencionar barrios, distritos o municipios atendidos sin crear páginas propias ni URLs artificiales.

### Patrón o fórmula

```text
H2 Coverage Areas → áreas reales → sin enlaces salvo URLs aprobadas
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h incluye un H2: Soporte de cerrajería en Madrid y zonas de cobertura cercanas, mencionando Almagro, Chamberí, Salamanca y Retiro.
```

### Ejemplos incorrectos

```text
- Convertir cada área en enlace inexistente
- Usar la sección para ocultar llaveword stuffing
- Listar zonas que el negocio no atiende
```

### Regla final

```text
Las áreas de cobertura se mencionan como cobertura real, no como páginas implícitas.
```

## Additional Category con caso local — Regla operativa 5

### Explicación

Las páginas de categorías adicionales deben usar Local Coverage Areas solo cuando ayuden a explicar escenarios reales del servicio. El foco sigue siendo servicio adicional + Main City.

### Patrón o fórmula

```text
Additional Category → problema local → cobertura como ejemplo
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
En /cerrajero/madrid/duplicado-llaves/, Cerrajeros Madrid 24h menciona spare llaves para hogares y negocios en Madrid y zonas de cobertura cercanas.
```

### Ejemplos incorrectos

```text
- Crear una página de duplicado de llaves para cada área sin aprobación
- Usar cobertura local como relleno
- No conectar la categoría con el GBP
```

### Regla final

```text
La cobertura local debe contextualizar, no multiplicar páginas.
```

## GeoHub con sección de cobertura principal — Regla operativa 6

### Explicación

El GeoHub es el mejor lugar para explicar la cobertura local. Debe tener una sección clara de áreas atendidas, conectada con servicios y sin transformar cada zona en URL si no está aprobada.

### Patrón o fórmula

```text
/main-city/ → services → local coverage → resources
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
En /madrid/, Cerrajeros Madrid 24h lista servicios en Madrid y una sección de cobertura con Almagro, Chamberí, Salamanca y Retiro.
```

### Ejemplos incorrectos

```text
- Hacer del GeoHub una página turística sin servicios
- Crear enlaces a zonas inexistentes
- No incluir cobertura aunque sea relevante para clientes
```

### Regla final

```text
El GeoHub debe organizar ciudad, servicios y cobertura real.
```

## GeoArticles con ejemplos locales — Regla operativa 7

### Explicación

Los GeoArticles pueden usar Local Coverage Areas como ejemplos semánticos: tipos de vivienda, zonas cercanas, landmarks o escenarios. Eso ayuda a NLP y AIO sin convertir el artículo en página de zona.

### Patrón o fórmula

```text
GeoArticle → tema + Main City → ejemplos de cobertura
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
En /madrid/guia-precios-cerrajero-urgente/, Cerrajeros Madrid 24h explica que el coste puede variar según tipo de apertura urgente y zona de cobertura.
```

### Ejemplos incorrectos

```text
- Escribir el artículo como landing de Almagro
- Repetir listas de zonas en cada párrafo
- Afirmar presencia física en zonas de cobertura
```

### Regla final

```text
Los ejemplos locales deben enriquecer el tema, no cambiar la intención.
```

## Reviews y trust blocks en contenido — Regla operativa 8

### Explicación

Las reseñas y señales de confianza deben colocarse donde apoyan la intención: homepage, landings locales, GeoHub y, ocasionalmente, artículos. No deben inventarse ni repetirse como bloque genérico sin contexto.

### Patrón o fórmula

```text
Trust signal → sección adecuada → servicio o Main City
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa 250+ reseñas de Google en homepage y en /cerrajero/madrid/cerrajero-urgente/ como prueba local.
```

### Ejemplos incorrectos

```text
- Pegar el mismo bloque de reseñas en todas las páginas sin contexto
- Usar reseñas de una zona como si fueran de otra
- Inventar certificaciones
```

### Regla final

```text
Las señales de confianza deben apoyar la intención de la página.
```

## FAQs con cobertura natural — Regla operativa 9

### Explicación

Las FAQs pueden mencionar Local Coverage Areas si responden preguntas reales de usuarios. Deben sonar naturales y no funcionar como llaveword stuffing de zonas.

### Patrón o fórmula

```text
Pregunta real → Main City + coverage area → respuesta útil
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
¿Atendéis emergencias de cerrajería en Almagro y Chamberí? Sí, Cerrajeros Madrid 24h atiende solicitudes en Madrid y zonas de cobertura cercanas según disponibilidad.
```

### Ejemplos incorrectos

```text
- Crear una FAQ por cada zona sin valor nuevo
- Usar preguntas repetidas cambiando solo el área
- Responder con promesas de oficina inexistente
```

### Regla final

```text
Las FAQs de cobertura deben resolver dudas reales.
```

## Schema areaServed coherente — Regla operativa 10

### Explicación

Las Local Coverage Areas pueden reflejarse en areaServed si representan cobertura real. El schema debe diferenciar cobertura de dirección física y no añadir áreas falsas solo por SEO.

### Patrón o fórmula

```text
Real coverage → areaServed | Physical address → address
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa Madrid como address si es su ubicación y puede incluir Almagro, Chamberí, Salamanca y Retiro en areaServed.
```

### Ejemplos incorrectos

```text
- Poner Almagro como address sin sede
- Añadir ciudades no atendidas en areaServed
- Omitir areaServed si la cobertura es clave
```

### Regla final

```text
areaServed debe representar cobertura real, no ubicación física.
```

## No URLs por cobertura sin aprobación — Regla operativa 11

### Explicación

Mencionar una zona en el contenido no implica crear una URL. Esta separación es clave para que el sistema base se mantenga enfocado y no genere thin content.

### Patrón o fórmula

```text
Local Coverage Area mencionada → no URL | Approved Expansion Area → URL
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h menciona Retiro como cobertura, pero no crea /retiro/ en la base.
```

### Ejemplos incorrectos

```text
- Enlazar automáticamente cada zona mencionada
- Crear páginas vacías para zonas citadas
- Tratar una mención como arquitectura
```

### Regla final

```text
La cobertura se menciona primero; la página se aprueba después.
```

## Umbral de expansión — Regla operativa 12

### Explicación

Una Local Coverage Area solo se convierte en Approved Expansion Area si hay demanda, valor comercial, oportunidad competitiva y contenido único. Esta regla protege el sistema de expansión prematura.

### Patrón o fórmula

```text
Cobertura → evaluación → aprobación → fórmula de expansión
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Almagro tiene búsquedas y competidores con páginas locales débiles, Cerrajeros Madrid 24h puede aprobar Almagro como expansión futura.
```

### Ejemplos incorrectos

```text
- Aprobar todas las zonas por defecto
- Crear expansión sin investigación
- Copiar el contenido de Madrid cambiando el nombre de la zona
```

### Regla final

```text
La expansión necesita justificación, no solo cobertura.
```

## Checklist final del Paso 6

| Check | Pregunta | Estado |
|---|---|---|
| Main City | ¿La página mantiene clara la Main City? | ✅ / ⬜ |
| Local Coverage Areas | ¿Las zonas mencionadas representan cobertura real? | ✅ / ⬜ |
| Uso natural | ¿Las áreas aparecen de forma natural y no forzada? | ✅ / ⬜ |
| No URLs innecesarias | ¿No se crearon páginas para áreas no aprobadas? | ✅ / ⬜ |
| No fake office | ¿No se afirma oficina donde no existe? | ✅ / ⬜ |
| FAQs | ¿Las FAQs usan cobertura local cuando aporta valor? | ✅ / ⬜ |
| CTA | ¿El CTA está contextualizado? | ✅ / ⬜ |
| Schema | ¿areaServed refleja cobertura real? | ✅ / ⬜ |
| Enlaces internos | ¿Solo se enlaza a URLs existentes? | ✅ / ⬜ |
| One service | ¿La página mantiene un solo servicio principal cuando aplica? | ✅ / ⬜ |

## Outputs del Paso 6

- Arquitectura interna por tipo de página
- Reglas de uso de Local Coverage Areas
- Ejemplos de secciones de cobertura
- FAQs modelo
- Reglas anti-error
- Bloques de contenido listos para briefs
- Checklist de cobertura local


---


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

## Ejemplo rellenado

```text
Business Name:
Cerrajeros Madrid 24h

Website Root Domain:
https://www.cerrajerosmadrid24h.com

Homepage URL:
/

Primary GBP Category:
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
1. /madrid/guia-precios-cerrajero-urgente/
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
/contact/

GBP URL:
https://google.com/business/cerrajeros-madrid-24h

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

# Cuerpo operativo del Paso 7

## Regla 1 — Enlazar hacia arriba, abajo y lateralmente

### Explicación

Cada página debe tener un enlace hacia su padre, hacia páginas hijas o de soporte, y hacia páginas relacionadas del mismo silo.

### Patrón o fórmula

```text
up + down + lateral links
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS /cerrajero/madrid/cerrajero-urgente/ enlaza a /cerrajero/cerrajero-urgente/, /madrid/, servicios relacionados y artículos
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
Homepage → Service Overview + Main City GeoHub + Contacto
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/ → /cerrajero/cerrajero-urgente/, /cerrajero/apertura-puertas/, /madrid/, /contact/
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/cerrajero-urgente/ → /cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Service Overview sin versión local
- Enlazar a Almagro sin expansión
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/ → all /cerrajero/madrid/service/ + /madrid/articles/
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ → /cerrajero/cerrajero-urgente/ + /madrid/ + /madrid/guia-precios-cerrajero-urgente/
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/duplicado-llaves/ → /madrid/ + /cerrajero/madrid/instalacion-cerraduras-seguridad/
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/guia-precios-cerrajero-urgente/ → /cerrajero/madrid/cerrajero-urgente/ + /madrid/
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro se menciona, pero no se enlaza a /almagro/
```

### Ejemplos incorrectos

```text
- Anchor a /almagro/ inexistente
- Breadcrumb con Salamanca
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
cerrajero urgente en Madrid; ayuda de cerrajero urgente en Madrid; Cerrajeros Madrid 24h; llama hoy a Cerrajeros Madrid 24h
```

### Ejemplos incorrectos

```text
- Mismo anchor 20 veces
- Solo exact match
- Anchors genéricos como haz clic aquí
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Enlace a /madrid/ dentro de la intro local
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

## Ejemplo completo de enlaces

```text
Source:
/cerrajero/madrid/cerrajero-urgente/

Required links:
- /cerrajero/cerrajero-urgente/
- /madrid/
- /cerrajero/madrid/apertura-puertas/
- /cerrajero/madrid/cambio-cerraduras/
- /madrid/guia-precios-cerrajero-urgente/
- /contact/

Anchor suggestions:
- urgente servicios de cerrajería
- servicios de cerrajería en Madrid
- apertura de puertas en Madrid
- servicios de cambio de cerraduras en Madrid
- precio de cerrajero urgente en Madrid
- llama hoy a Cerrajeros Madrid 24h
```

## Breadcrumbs recomendados

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

## Homepage distribuye autoridad inicial — Regla operativa 1

### Explicación

La homepage debe enlazar a las páginas más importantes de la arquitectura base: Service Overview Pages, Main City GeoHub, Additional Category principal y contacto. No debe enlazar a todas las áreas de cobertura si no tienen URL.

### Patrón o fórmula

```text
Homepage → Service Overviews + Main GeoHub + Contacto
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h enlaza desde / a /cerrajero/cerrajero-urgente/, /cerrajero/apertura-puertas/, /madrid/ y /contact/.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
La página /cerrajero/cerrajero-urgente/ enlaza a /cerrajero/madrid/cerrajero-urgente/ con anchor cerrajero urgente en Madrid.
```

### Ejemplos incorrectos

```text
- No enlazar a la versión local
- Enlazar a páginas de cobertura inexistentes
- Usar solo anchors genéricos como haz clic aquí
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/ enlaza a /cerrajero/madrid/cerrajero-urgente/, /cerrajero/madrid/apertura-puertas/ y /madrid/guia-precios-cerrajero-urgente/.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ enlaza a /cerrajero/cerrajero-urgente/ y /madrid/.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ enlaza a /cerrajero/madrid/apertura-puertas/ y /cerrajero/madrid/instalacion-cerraduras-seguridad/.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/duplicado-llaves/ enlaza a /madrid/, /cerrajero/madrid/cambio-cerraduras/ y /cerrajero/madrid/instalacion-cerraduras-seguridad/.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/guia-precios-cerrajero-urgente/ enlaza a /cerrajero/madrid/cerrajero-urgente/ y /madrid/.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h menciona Almagro en contenido, pero no crea anchor a /almagro/ hasta que esa URL sea aprobada.
```

### Ejemplos incorrectos

```text
- Crear anchors rotos hacia /almagro/
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Usar cerrajero urgente en Madrid, ayuda urgente de apertura de puertas en Madrid, Cerrajeros Madrid 24h y consulta precios de cerrajero urgente.
```

### Ejemplos incorrectos

```text
- Repetir urgente cerrajero Madrid en todos los enlaces
- Usar solo haz clic aquí
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Para /cerrajero/madrid/cerrajero-urgente/: Home > Cerrajero > Madrid > Cerrajero urgente.
```

### Ejemplos incorrectos

```text
- Home > Almagro si la página es de Madrid
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ recibe enlaces desde homepage, Service Overview, GeoHub y GeoArticles.
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

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Almagro se aprueba, /almagro/ enlaza a /cerrajero/almagro/cerrajero-urgente/ y esa página vuelve a /cerrajero/cerrajero-urgente/.
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


---


Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 8 — Priority Score

## Índice corto

**Paso 8 — Priority Score**

## Objetivo del Paso 8

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: decidir qué páginas se producen primero usando criterios comerciales, GBP, intención y relevancia local.
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
Error que previene: publicar artículos antes de landings comerciales.
Error que previene: priorizar servicios de bajo valor antes de servicios urgentes.
Error que previene: usar City Priority cuando la base ya trabaja con una sola Main City.
Error que previene: crear páginas sin relación con la categoría GBP.
Error que previene: producir todo sin fases.

## Lo que tienes que rellenar

```text
Business Name:

Primary GBP Category:

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

## Ejemplo rellenado

```text
Business Name:
Cerrajeros Madrid 24h

Primary GBP Category:
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

# Cuerpo operativo del Paso 8

## Regla 1 — Fórmula de prioridad

### Explicación

El score sustituye la intuición por una fórmula. Como la base usa una Main City, no usamos City Priority; usamos Local Relevance.

### Patrón o fórmula

```text
Revenue Value + Search Intent + GBP Category Relevance + Local Relevance + Competition Gap + Conversion Urgency
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
5 + 5 + 5 + 5 + 4 + 5 = 29
```

### Ejemplos incorrectos

```text
- Usar City Priority con una sola ciudad
- Dar P1 a todo
- No considerar conversión
```

### Regla final

```text
La prioridad se calcula con seis factores.
```

## Regla 2 — Revenue Value

### Explicación

Mide el valor económico del servicio o página.

### Patrón o fórmula

```text
1 low value → 5 high value
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente = 5; Duplicado de llaves = 2
```

### Ejemplos incorrectos

```text
- Asignar 5 a todos
- Ignorar ticket medio
- Priorizar páginas de bajo margen
```

### Regla final

```text
Los servicios más rentables pesan más.
```

## Regla 3 — Search Intent

### Explicación

Mide si la búsqueda indica compra o urgencia.

### Patrón o fórmula

```text
1 informational → 5 urgente buying intent
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
cerrajero urgente en Madrid = 5
```

### Ejemplos incorrectos

```text
- how locks work = 1 pero producirlo primero
- guía de precios antes que landing
- No diferenciar intención
```

### Regla final

```text
La intención comercial manda sobre contenido informativo.
```

## Regla 4 — GBP Category Relevance

### Explicación

Mide cuánto apoya la página a la categoría principal o adicional del GBP.

### Patrón o fórmula

```text
1 weak → 5 direct GBP support
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente = 5; Duplicado de llaves = 4
```

### Ejemplos incorrectos

```text
- Página genérica de seguridad = P1
- Ignorar categoría adicional
- Crear servicios no GBP
```

### Regla final

```text
La web debe respaldar el GBP.
```

## Regla 5 — Local Relevance

### Explicación

Mide cuánto refuerza la Main City, la ubicación real, el NAP, el GeoHub y las Local Coverage Areas.

### Patrón o fórmula

```text
1 weak local signal → 5 strong Main City relevance
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ = 5
```

### Ejemplos incorrectos

```text
- Artículo genérico sin Madrid
- Página que mezcla zonas
- No usar Main City
```

### Regla final

```text
La relevancia local sustituye a City Priority en la base.
```

## Regla 6 — Competition Gap

### Explicación

Mide la oportunidad frente a competidores.

### Patrón o fórmula

```text
1 hard → 5 weak competitor gap
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Competidores con pages genéricas = 4
```

### Ejemplos incorrectos

```text
- No mirar gaps
- Asumir dificultad sin analizar
- Copiar competidores
```

### Regla final

```text
Donde la competencia es débil, se acelera.
```

## Regla 7 — Conversion Urgency

### Explicación

Mide si el usuario necesita resolver ahora.

### Patrón o fórmula

```text
1 sin urgencia → 5 llamada inmediata
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Apertura urgente de puerta = 5
```

### Ejemplos incorrectos

```text
- Key duplication antes de urgente
- Blog antes de servicio urgente
- No diferenciar urgencia
```

### Regla final

```text
La urgencia acelera publicación.
```

## Regla 8 — Priority Tiers

### Explicación

El score se convierte en una prioridad operativa.

### Patrón o fórmula

```text
26–30 P1; 21–25 P2; 16–20 P3; 10–15 P4; 0–9 Hold
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
29 = P1
```

### Ejemplos incorrectos

```text
- Score sin tier
- Tier sin score
- Hold ignorado
```

### Regla final

```text
Cada página debe tener score y tier.
```

## Regla 9 — Páginas comerciales antes que semánticas

### Explicación

Las páginas comerciales preceden a los GeoArticles que las apoyan.

### Patrón o fórmula

```text
Landing first → article second
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ antes de /madrid/guia-precios-cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Artículo P1 sin landing
- Cost guide antes de service page
- Cluster sin destino
```

### Regla final

```text
Los boosters se publican después de sus landings.
```

## Regla 10 — Homepage siempre P1

### Explicación

La homepage es el Root Entity Anchor y siempre se prioriza.

### Patrón o fórmula

```text
Homepage = P1
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/ = P1
```

### Ejemplos incorrectos

```text
- Homepage después de artículos
- Homepage sin servicio core
- Homepage P3
```

### Regla final

```text
La homepage va primero.
```


## Tabla de prioridad para Cerrajeros Madrid 24h

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
| GeoArticle | `/madrid/guia-precios-cerrajero-urgente/` | 3 | 3 | 4 | 5 | 4 | 3 | 22 | P2 after landing |

## Orden recomendado

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

## Revenue Value — Regla operativa 1

### Explicación

El valor económico del servicio debe influir en el orden de producción. Servicios de alto ticket o alto margen deben avanzar antes que páginas de bajo retorno, siempre que estén alineados con GBP.

### Patrón o fórmula

```text
Revenue Value 1–5 → parte del score total
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente obtiene 5 por urgencia y valor; Duplicado de llaves obtiene 2 o 3 según margen.
```

### Ejemplos incorrectos

```text
- Priorizar contenido informativo antes que servicios rentables
- Dar 5 a todos los servicios
- No diferenciar ticket bajo y alto
```

### Regla final

```text
La prioridad debe reflejar valor económico real.
```

## Search Intent — Regla operativa 2

### Explicación

La intención de búsqueda mide qué tan cerca está el usuario de convertirse en lead. Las búsquedas urgentes y transaccionales deben tener puntuación alta.

### Patrón o fórmula

```text
Informacional 1–2 | Comercial 3–4 | Urgentee 5
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
cerrajero urgente en Madrid obtiene 5; qué es cambiar un bombín obtiene 2.
```

### Ejemplos incorrectos

```text
- Tratar todos los contenidos como intención 5
- Priorizar artículos de awareness antes que landings
- No distinguir investigación de urgencia
```

### Regla final

```text
La intención de compra guía el orden de publicación.
```

## GBP Category Relevance — Regla operativa 3

### Explicación

Las páginas que soportan la categoría principal o categorías adicionales del GBP deben tener más prioridad. Esto conecta web y perfil de negocio.

### Patrón o fórmula

```text
Primary category support = 5 | Additional category support = 4
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente y Apertura de puertas refuerzan Cerrajero; Duplicado de llaves refuerza una categoría adicional.
```

### Ejemplos incorrectos

```text
- Priorizar servicios fuera de categoría
- Ignorar categorías adicionales del GBP
- Crear contenido que no soporta GBP
```

### Regla final

```text
La web debe reforzar lo que el GBP intenta posicionar.
```

## Local Relevance — Regla operativa 4

### Explicación

En la versión simplificada, City Priority se reemplaza por Local Relevance. Este factor mide cuánto una página refuerza Main City, cobertura local real y señales de proximidad sin crear URLs innecesarias.

### Patrón o fórmula

```text
Main City + coverage fit + NAP alignment → Local Relevance 1–5
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ obtiene 5 porque conecta servicio urgente con Main City y cobertura local real.
```

### Ejemplos incorrectos

```text
- Usar City Priority cuando solo hay una Main City
- Premiar páginas de expansión no aprobadas
- Dar relevancia alta a zonas no atendidas
```

### Regla final

```text
Local Relevance mide encaje local, no número de ciudades.
```

## Competition Gap — Regla operativa 5

### Explicación

La oportunidad competitiva valora si los competidores tienen páginas débiles, genéricas o sin estructura. Un gap alto justifica publicar antes.

### Patrón o fórmula

```text
Competidores débiles → 4–5 | competidores fuertes → 1–2
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si competidores en Madrid solo tienen /services/, Cerrajeros Madrid 24h da 4 a /cerrajero/madrid/cerrajero-urgente/.
```

### Ejemplos incorrectos

```text
- Asumir gap sin revisar SERP
- No diferenciar nichos competidos
- Usar gap alto para todas las páginas
```

### Regla final

```text
El gap competitivo debe basarse en oportunidad real.
```

## Conversion Urgency — Regla operativa 6

### Explicación

La urgencia mide si el usuario necesita resolver ahora. Servicios de emergencia, bloqueo o pérdida de acceso suelen puntuar alto.

### Patrón o fórmula

```text
No urgente 1–2 | moderado 3 | urgente 4–5
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente obtiene 5; Duplicado de llaves puede obtener 2.
```

### Ejemplos incorrectos

```text
- Dar urgencia alta a guías informativas
- No priorizar aperturas urgentes
- Confundir frecuencia con urgencia
```

### Regla final

```text
La urgencia aumenta prioridad de páginas comerciales.
```

## Page Type Adjustment — Regla operativa 7

### Explicación

El score debe interpretarse según el tipo de página. Homepage y páginas core son P1 por dependencia aunque no se calculen como un servicio específico. GeoArticles normalmente se publican después de landings.

### Patrón o fórmula

```text
Page Type + Score + Dependency → Priority final
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Homepage es P1; /madrid/guia-precios-cerrajero-urgente/ puede ser P3 aunque su tema sea importante.
```

### Ejemplos incorrectos

```text
- Publicar artículos antes de landings por score temático
- Marcar homepage como P3
- Ignorar dependencias de page type
```

### Regla final

```text
El score se ajusta por función dentro del sistema.
```

## Local Coverage Areas sin score propio — Regla operativa 8

### Explicación

Las Local Coverage Areas no reciben score en la base porque no generan URLs. Solo se puntúan si pasan a Approved Expansion Areas.

### Patrón o fórmula

```text
Coverage area → sin score | Approved Expansion Area → score
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro no recibe score como página en Phase 1; si se aprueba expansión, se evalúa con la fórmula.
```

### Ejemplos incorrectos

```text
- Asignar score a zonas sin URL
- Crear ranking de coverage areas para publicar páginas
- Confundir menciones de contenido con páginas
```

### Regla final

```text
Solo se puntúan URLs o expansiones aprobadas.
```

## Publish Phase derivada — Regla operativa 9

### Explicación

La prioridad no basta; también hay que ubicar la página en una fase. Las fases protegen dependencias y evitan publicar soporte antes de la base.

### Patrón o fórmula

```text
Priority + dependencies → Phase
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/cerrajero/madrid/cerrajero-urgente/ puede ser P1/P2 y Phase 2; el artículo relacionado es Phase 3.
```

### Ejemplos incorrectos

```text
- Publicar Phase 3 antes de Phase 2
- Crear calendarios solo por score
- No revisar si existe el parent
```

### Regla final

```text
La fase convierte prioridad en ejecución ordenada.
```

## Revisión periódica del score — Regla operativa 10

### Explicación

Los scores no son eternos. Después de publicar y medir, Search Console, leads y geo-grid pueden cambiar prioridades futuras, especialmente para GeoArticles o expansión.

### Patrón o fórmula

```text
Datos reales → revisar score → actualizar plan
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si /cerrajero/madrid/apertura-puertas/ genera más leads que expected, Cerrajeros Madrid 24h puede subir prioridad de sus GeoArticles.
```

### Ejemplos incorrectos

```text
- Mantener scores sin revisar
- Ignorar datos de conversión
- No actualizar competencia o intención
```

### Regla final

```text
El score es operativo y debe revisarse con datos.
```

## Checklist final del Paso 8

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

## Outputs del Paso 8

- Fórmula de prioridad definida
- Scores por página
- Tiers P1-P4 asignados
- Orden inicial de publicación
- Dependencias de GeoArticles revisadas
- Priorización basada en negocio y GBP


---


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


Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 11 — Pseudocódigo del Sistema

## Índice corto

**Paso 11 — Pseudocódigo del Sistema**

## Objetivo del Paso 11

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: convertir el proceso en una lógica repetible que pueda generar matriz, contenidos, links, schema, prioridad, QA y fases.
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
Error que previene: depender de memoria para cada negocio.
Error que previene: generar URLs para Local Coverage Areas por defecto.
Error que previene: no validar duplicados de categorías adicionales.
Error que previene: no bloquear artículos sin landing.
Error que previene: crear outputs incompletos.

## Lo que tienes que rellenar

```text
Business Name:

Website Root Domain:

Canonical Domain:

Primary GBP Category:

Primary Category Slug:

Main City:

Main City Slug:

Physical Location City:

Servicios principales:
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

Additional GBP Categories:
1.
2.
3.

Additional Categories already covered by core services:
1.
2.

Effective Additional Categories that need pages:
1.
2.

Local Coverage Areas:
1.
2.
3.
4.
5.

Primary Local Coverage Areas:
1.
2.
3.

Additional Local Coverage Areas:
1.
2.
3.

Approved Expansion Areas:
Default: None.

GeoArticles per Service:
Default: 3

Phone:

Email:

NAP:
- Name:
- Address:
- Phone:

GBP URL:

Publishing Capacity:
Pages per week:

Tracking Tools:
GMB Crush / GSC / GA4 / Other
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

Primary GBP Category:
Cerrajero

Additional GBP Categories:
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

Primary Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca

Additional Local Coverage Areas:
1. Retiro

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
- 250+ reseñas de Google
- Técnicos cerrajeros cualificados
- Servicio móvil en el mismo día
- Garantía de trabajo

GBP URL:
https://google.com/business/cerrajeros-madrid-24h

```

# Cuerpo operativo del Paso 11

## 1. Load inputs

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
INPUT business_name
INPUT website_root_domain
INPUT canonical_domain
INPUT primary_gbp_category
INPUT primary_category_slug
INPUT main_city
INPUT main_city_slug
INPUT physical_location_city
INPUT core_services[]
INPUT service_slugs[]
INPUT additional_gbp_categories[]
INPUT local_coverage_areas[]
INPUT approved_expansion_areas[]
INPUT geoarticles_per_service
INPUT nap
INPUT gbp_url
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 2. Normalize slugs

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FUNCTION generate_slug(text):
    lowercase
    remove accents
    replace spaces with hyphens
    remove symbols
    remove duplicate hyphens
    RETURN slug
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 3. Validate categories

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
effective_additional_categories = []
FOR each additional_category:
    IF matches core service intent:
        mark as covered
    ELSE:
        add to effective_additional_categories
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 4. Generate homepage

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
CREATE HP-001
type = Homepage
url = /
h1 = Brand + Primary Service + Main City
schema = Organization + WebSite + LocalBusiness if valid
priority = P1
phase = Phase 1
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 5. Generate Service Overview Pages

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FOR each service IN core_services:
    CREATE SO
    url = /category/service/
    city = null
    schema = Service + WebPage + BreadcrumbList
    links = homepage + related services + Main City service page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 6. Generate Main City GeoHub

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
CREATE GH-001
url = /main-city/
city = main_city
include service menu
include additional categories
include local coverage areas
include GeoArticles
schema = CollectionPage + BreadcrumbList
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 7. Generate Páginas de servicio en la Main City

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FOR each service IN core_services:
    CREATE LBS
    url = /category/main-city/service/
    parent = /category/service/
    geohub = /main-city/
    content_uses = local_coverage_areas
    schema = LocalBusiness + BreadcrumbList
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 8. Generate Páginas de categoría adicional en la Main City

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FOR each category IN effective_additional_categories:
    CREATE AC
    url = /category/main-city/category/
    geohub = /main-city/
    related_services = same-city services
    schema = Service with areaServed
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 9. Generate GeoArticles de la Main City

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FOR each service IN core_services:
    FOR i FROM 1 TO geoarticles_per_service:
        CREATE GA
        url = /main-city/article-topic/
        supports = /category/main-city/service/
        geohub = /main-city/
        schema = Article + FAQPage + BreadcrumbList + Speakable
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 10. Use Local Coverage Areas

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
FOR each content page:
    IF page_type supports local coverage:
        inject local_coverage_areas into intro, examples, FAQs, areaServed
    DO NOT generate URLs for local_coverage_areas
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 11. Generate expansion only if approved

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
IF approved_expansion_areas is not empty:
    FOR each area IN approved_expansion_areas:
        generate optional expansion GeoHub
        generate optional expansion service pages
        generate optional expansion articles
ELSE:
    skip expansion URLs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 12. Assign internal links

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
IF homepage:
    link to service overviews + Main City GeoHub + contact
IF service overview:
    link to Main City service page
IF LBS:
    link to parent service + GeoHub + related services + GeoArticles
IF GeoArticle:
    link to matching LBS + GeoHub + related article
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 13. Score priority

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
score = revenue + intent + gbp_relevance + local_relevance + gap + urgency
IF score >= 26: P1
ELSE IF score >= 21: P2
ELSE IF score >= 16: P3
ELSE IF score >= 10: P4
ELSE: Hold
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 14. Check dependencies

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
IF LBS:
    require homepage + service overview + geohub
IF GeoArticle:
    require matching LBS + geohub
IF expansion:
    require approved_expansion_area == true
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 15. Run QA

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
CHECK url
CHECK page type
CHECK one service
CHECK Main City
CHECK local coverage usage
CHECK no false location
CHECK schema
CHECK internal links
CHECK no canibalization
CHECK CTA
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## 16. Output matrices

### Explicación

Este bloque convierte una decisión estratégica en una instrucción operativa. Debe ejecutarse de forma secuencial para evitar duplicados, páginas huérfanas o URLs no aprobadas.

### Pseudocódigo

```text
OUTPUT URL Matrix
OUTPUT Internal Linking Matrix
OUTPUT Schema Map
OUTPUT Priority Score
OUTPUT Publishing Plan
OUTPUT QA Matrix
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Main City = Madrid
Local Coverage Areas = Almagro, Chamberí, Salamanca, Retiro
Approved Expansion Areas = none
Generate base URLs only for Madrid.
Use coverage areas inside content and schema areaServed.
```

### Ejemplos incorrectos

```text
- Generate /almagro/ with no approval
- Generate GeoArticles for Salamanca with no landing page
- Ignore Servicio de duplicado de llaves
- Create cerrajero-urgente duplicate page
```

### Regla final

```text
El pseudocódigo debe generar páginas base para Main City y contenido local para Local Coverage Areas, no URLs innecesarias.
```

## Normalización de inputs — Regla operativa 1

### Explicación

El pseudocódigo debe convertir nombres, servicios y zonas en slugs limpios antes de generar URLs. Sin normalización, la matriz puede terminar con inconsistencias.

### Patrón o fórmula

```text
raw input → normalize → approved slug
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente se normaliza como cerrajero-urgente y Madrid como madrid.
```

### Ejemplos incorrectos

```text
- Usar mayúsculas en slugs
- Dejar acentos o símbolos
- Crear dos slugs para el mismo servicio
```

### Regla final

```text
Todo input que genera URL debe normalizarse primero.
```

## Dedupe de categorías — Regla operativa 2

### Explicación

La lógica debe detectar categorías adicionales ya cubiertas por servicios core. Esto evita crear URLs redundantes.

### Patrón o fórmula

```text
additional_category → matches core_service intent → covered
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Servicio de cerrajería de urgencia se marca covered; Servicio de duplicado de llaves entra como effective additional category.
```

### Ejemplos incorrectos

```text
- Generar páginas duplicadas
- Ignorar categorías adicionales efectivas
- No registrar la decisión de consolidación
```

### Regla final

```text
La deduplicación ocurre antes de la fórmula.
```

## Generación base Main City — Regla operativa 3

### Explicación

El algoritmo base genera páginas solo para la Main City. Local Coverage Areas no entran en loops de URL salvo que estén aprobadas como expansión.

### Patrón o fórmula

```text
generate_base(main_city, services, effective_categories, G)
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h genera /madrid/ y /cerrajero/madrid/service/ para sus servicios core.
```

### Ejemplos incorrectos

```text
- for area in local_coverage_areas: create pages
- Crear GeoHubs para cobertura sin aprobación
- Multiplicar G por zonas no aprobadas
```

### Regla final

```text
La base se genera con Main City, no con todas las áreas.
```

## Inyección de Local Coverage Areas en contenido — Regla operativa 4

### Explicación

Aunque no generen URLs, las áreas de cobertura sí deben entrar en briefs de contenido, FAQs, ejemplos y schema areaServed.

### Patrón o fórmula

```text
coverage_areas[] → content_blocks + FAQs + areaServed
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca y Retiro se pasan al brief de /madrid/ y a páginas locales de Madrid.
```

### Ejemplos incorrectos

```text
- No usar cobertura en contenido
- Crear URLs en vez de bloques de cobertura
- Añadir zonas falsas en schema
```

### Regla final

```text
La cobertura entra en contenido, no en URL loops base.
```

## Asignación de schema y links — Regla operativa 5

### Explicación

El pseudocódigo debe asignar schema e internal links por page type de forma automática. Esto reduce decisiones manuales y errores.

### Patrón o fórmula

```text
page.type → schema + required_links
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GeoArticle recibe Article + FAQPage y enlaces a matching LBS y GeoHub.
```

### Ejemplos incorrectos

```text
- Dejar schema manual sin reglas
- No asignar required links
- Usar el mismo schema en todas las páginas
```

### Regla final

```text
Schema y enlaces se derivan del page type.
```

## Scoring y fase — Regla operativa 6

### Explicación

El algoritmo debe calcular prioridad y fase por separado. El score define importancia; la fase define cuándo se puede publicar según dependencias.

### Patrón o fórmula

```text
score(page) → priority | dependencies(page) → phase/status
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente Madrid puede ser P1 y Phase 2; su GeoArticle es Phase 3.
```

### Ejemplos incorrectos

```text
- Publicar por score sin dependencia
- No diferenciar priority de phase
- Asignar Phase 1 a todo lo urgente
```

### Regla final

```text
Priority y phase cumplen funciones distintas.
```

## QA automático — Regla operativa 7

### Explicación

El sistema debe ejecutar checks mínimos antes de marcar una página como Ready for QA o Approved: URL, H1, metadata, schema, links, NAP, canibalización y ubicación.

### Patrón o fórmula

```text
page → run_qa_checks → Approved / Needs Revision / Blocked
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 pasa QA solo si tiene URL correcta, H1 de servicio+Madrid, LocalBusiness schema y enlaces obligatorios.
```

### Ejemplos incorrectos

```text
- Marcar Published sin QA
- No bloquear dependencias faltantes
- No revisar false location claims
```

### Regla final

```text
El algoritmo debe poder bloquear páginas incompletas.
```

## Branch de expansión separado — Regla operativa 8

### Explicación

El pseudocódigo debe tener una rama opcional para Approved Expansion Areas. Si la lista está vacía, no genera nada. Si contiene zonas aprobadas, genera URLs con sus propias dependencias.

### Patrón o fórmula

```text
if approved_expansion_areas: generate_expansion(area)
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Si Almagro se aprueba, el sistema genera /almagro/ y páginas /cerrajero/almagro/service/ después de la base.
```

### Ejemplos incorrectos

```text
- Generar expansión cuando la lista está vacía
- Mezclar expansión con Main City en la misma fórmula
- No exigir contenido único en expansión
```

### Regla final

```text
La expansión es un branch opcional, no parte del loop base.
```

## Checklist final del Paso 11

| Check | Pregunta | Estado |
|---|---|---|
| Inputs | ¿Todos los inputs obligatorios están cargados? | ✅ / ⬜ |
| Slugs | ¿Los slugs están normalizados? | ✅ / ⬜ |
| Categories | ¿Las categorías adicionales duplicadas están detectadas? | ✅ / ⬜ |
| Base pages | ¿Solo se generan páginas para Main City? | ✅ / ⬜ |
| Local Coverage | ¿Las áreas se inyectan en contenido sin crear URLs? | ✅ / ⬜ |
| Expansion | ¿Solo se activa si hay aprobación? | ✅ / ⬜ |
| Links | ¿Los enlaces se asignan por tipo de página? | ✅ / ⬜ |
| Score | ¿Cada página tiene prioridad? | ✅ / ⬜ |
| Dependencies | ¿Las dependencias bloquean páginas inmaduras? | ✅ / ⬜ |
| QA | ¿Se ejecuta QA antes de publish? | ✅ / ⬜ |

## Outputs del Paso 11

- Pseudocódigo completo
- Lógica de generación base
- Lógica de Local Coverage Areas
- Lógica de expansión opcional
- Asignación de enlaces
- Asignación de schema
- Scoring
- QA y outputs finales


---


Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 12 — Master Prompt Reutilizable

## Índice corto

**Paso 12 — Master Prompt Reutilizable**

## Objetivo del Paso 12

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: convertir todo el sistema en un prompt maestro reutilizable que genere arquitectura, matriz, contenidos, schema, enlaces, prioridad, QA y roadmap para cualquier negocio local.
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
Error que previene: usar prompts incompletos que solo generan formularios.
Error que previene: omitir el cuerpo operativo de cada paso.
Error que previene: mezclar Target Cities y Secondary Cities en la base.
Error que previene: crear URLs para Local Coverage Areas sin aprobación.
Error que previene: generar outputs sin matriz, sin enlaces, sin QA o sin fases.

## Lo que tienes que rellenar

```text
Business Name:

Website Root Domain:

Canonical Domain:
Option A: https://www.domain.com
Option B: https://domain.com

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

Servicios principales:
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

Primary Local Coverage Areas:
Recommended: start with 3–5 strongest real areas served.
1.
2.
3.
4.
5.

Additional Local Coverage Areas:
Optional.
1.
2.
3.
4.
5.

Should Local Coverage Areas generate pages?
Default: No.

Approved Expansion Areas:
Optional. Only list areas that deserve their own URLs.
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

GeoHub URL Style:
Option A: /city/
Option B: /category/city/

GeoArticle URL Style:
Option A: /city/article-topic/
Option B: /category/city/article-topic/

Top Priority Services:
1.
2.
3.

Trust Signals:
- Years in business:
- Reviews:
- Certifications:
- Awards:
- Guarantees:
- Urgencias / servicio en el mismo día / servicio móvil:

Preferred CTA:
Llamar ahora / Reservar online / Solicitar presupuesto / Contactoar

Publishing Capacity:
Pages per week:

CMS:
WordPress / Webflow / Shopify / Custom / Other

Can schema be added?
Yes / No

Can internal links be edited manually?
Yes / No

Tracking Tools:
GMB Crush / Google Search Console / GA4 / Rank Tracker / Other
```

## Ejemplo rellenado

```text
Business Name:
Cerrajeros Madrid 24h

Website Root Domain:
https://www.cerrajerosmadrid24h.com

Canonical Domain:
https://www.cerrajerosmadrid24h.com

Country:
España

State / Province:
Comunidad de Madrid

Main City:
Madrid

Main City Slug:
madrid

Physical Location City:
Madrid

Full NAP:
- Business Name: Cerrajeros Madrid 24h
- Street Address: Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí
- City: Madrid
- State / Province: Comunidad de Madrid
- ZIP / Postal Code: 28010
- Country: España
- Phone: +34 600 000 000

GBP URL:
https://google.com/business/cerrajeros-madrid-24h

Primary GBP Category:
Cerrajero

Primary Category Slug:
cerrajero

Additional GBP Categories:
1. Servicio de cerrajería de urgencia
2. Servicio de duplicado de llaves

Servicios principales:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de cerraduras
4. Cambio de bombines
5. Instalación de cerraduras de seguridad

Service Slugs:
1. cerrajero-urgente
2. apertura-puertas
3. cambio-cerraduras
4. cambio-bombines
5. instalacion-cerraduras-seguridad

Primary Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca

Additional Local Coverage Areas:
1. Retiro

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

GeoHub URL Style:
/city/

GeoArticle URL Style:
/city/article-topic/

Top Priority Services:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de bombines

Trust Signals:
- 10+ años de experiencia
- 250+ reseñas de Google
- Técnicos cerrajeros cualificados
- Reconocimiento local de servicio
- Garantía de trabajo
- Soporte móvil en el mismo día

Preferred CTA:
Llamar ahora

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

# Cuerpo operativo del Paso 12

## Regla 1 — El Master Prompt debe generar el sistema completo

### Explicación

El prompt maestro no debe limitarse a pedir URLs. Debe pedir validación, fórmula, matriz, tipos de página, estructura de contenido, enlaces internos, schema, prioridad, fases, QA y roadmap.

### Patrón o fórmula

```text
Prompt → validate → generate → link → score → QA → roadmap
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h recibe un sistema completo de 28 páginas base, no solo una lista de URLs
```

### Ejemplos incorrectos

```text
- Prompt que solo pide H1s
- Prompt que solo pide blog ideas
- Prompt sin QA ni enlaces
```

### Regla final

```text
El Master Prompt debe producir un sistema, no una lista.
```

## Regla 2 — Main City first

### Explicación

La versión base debe construir alrededor de una Main City. No debe usar Target Cities o Secondary Cities como motor base.

### Patrón o fórmula

```text
Main City = base architecture
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Madrid genera /madrid/ y /cerrajero/madrid/service/
```

### Ejemplos incorrectos

```text
- Target Cities: Madrid, Almagro, Salamanca como base
- Secondary Cities en fase 1
- Multiplicar servicios por zonas de cobertura
```

### Regla final

```text
La base es Main City first.
```

## Regla 3 — Local Coverage Areas como señales de contenido

### Explicación

El prompt debe pedir Local Coverage Areas, pero debe prohibir que generen URLs por defecto.

### Patrón o fórmula

```text
Local Coverage Areas = content signals
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca, Retiro aparecen en contenido y areaServed
```

### Ejemplos incorrectos

```text
- Crear /almagro/ sin aprobación
- Enlazar a cobertura sin URL
- Usar cobertura como H1
```

### Regla final

```text
Las áreas de cobertura se usan dentro del contenido.
```

## Regla 4 — Approved Expansion Areas separadas

### Explicación

Si el negocio quiere páginas para otras zonas, el prompt debe tratarlas como expansión opcional.

### Patrón o fórmula

```text
Approved Expansion Areas → optional module
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
None in Phase 1
```

### Ejemplos incorrectos

```text
- Aprobar todas las zonas
- Crear expansión en la base
- No justificar expansion
```

### Regla final

```text
La expansión no pertenece a la base.
```

## Regla 5 — Duplicate category detection

### Explicación

El prompt debe detectar categorías adicionales ya cubiertas por servicios core.

### Patrón o fórmula

```text
additional category → covered or separate page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Servicio de cerrajería de urgencia cubierta por Cerrajero urgente
```

### Ejemplos incorrectos

```text
- Crear cerrajero-urgente duplicada
- Ignorar duplicado de llaves
- No clasificar categorías
```

### Regla final

```text
Las categorías se consolidan o generan página, pero no se duplican.
```

## Regla 6 — Output con tablas limpias

### Explicación

El output debe devolver tablas operativas y no solo texto explicativo.

### Patrón o fórmula

```text
URL Matrix + Linking Matrix + Schema Map + Score + QA
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Tabla con HP-001, SO-001, GH-001, LBS-001, AC-001, GA-001
```

### Ejemplos incorrectos

```text
- Narrativa sin tablas
- Tablas sin status
- No IDs
```

### Regla final

```text
Cada output debe ser accionable.
```

## Regla 7 — Page Type Rules completas

### Explicación

El prompt debe desarrollar cada tipo con función, patrón, H1, meta, estructura, schema, CTA, links y ejemplo.

### Patrón o fórmula

```text
Page Type → full brief
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS /cerrajero/madrid/cerrajero-urgente/ con H1, metas, H2s, FAQs, schema
```

### Ejemplos incorrectos

```text
- Solo URL
- Solo H1
- Sin schema
```

### Regla final

```text
Cada tipo debe salir como brief completo.
```

## Regla 8 — Content Architecture obligatoria

### Explicación

El prompt debe incluir el nuevo paso de estructura de contenido y áreas de cobertura.

### Patrón o fórmula

```text
Step 6 included
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Location page incluye H2 Local Coverage Areas Served
```

### Ejemplos incorrectos

```text
- Omitir cómo mencionar zonas
- No definir FAQs
- No definir CTA
```

### Regla final

```text
El contenido interno es obligatorio.
```

## Regla 9 — Internal Linking Map obligatorio

### Explicación

El prompt debe pedir enlaces internos con source, target, anchor, placement y prioridad.

### Patrón o fórmula

```text
Source URL → Target URL + Anchor + Placement
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/madrid/guia-precios-cerrajero-urgente/ → /cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Sin anchors
- Solo footer
- Enlaces a URLs inexistentes
```

### Regla final

```text
El mapa de enlaces debe estar completo.
```

## Regla 10 — QA final obligatorio

### Explicación

El prompt debe terminar con checklist QA por página.

### Patrón o fórmula

```text
QA fields for each page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
URL approved, schema approved, no false location, no canibalization
```

### Ejemplos incorrectos

```text
- Sin QA
- QA genérico
- No revisar false location
```

### Regla final

```text
No hay publicación sin QA.
```


## Master Prompt reutilizable completo

```text
Actúa como Matteo de GMB Crush, especialista top 1% en Local SEO, Google Business Profile optimization, AI Overview visibility, semantic SEO, GeoHub architecture, internal linking y LocalBusiness site structure.

Quiero construir una web local desde cero siguiendo la metodología GMB Crush.

Usa exclusivamente esta jerarquía de páginas:

1. Homepage = Root Entity Anchor
2. Service Overview Pages = Topical Authority Pillars, no location
3. Location-Based Service Pages = Main City Geo-Targeted Converters
4. Additional Category Pages = GBP additional category support
5. GeoHub Pages = Main City Silo Containers
6. GeoArticle Pages = Semantic Boosters for service + Main City + long-tail intent

IMPORTANTE:
- Build the base architecture around one Main City.
- Use Local Coverage Areas as GEO content signals.
- Do not create URLs for Local Coverage Areas unless they are approved as Expansion Areas.
- Do not use Target Cities or Secondary Cities in the base build.
- Do not confuse Service Overview Pages with Location-Based Service Pages.
- Do not mix multiple services in one local landing.
- Do not create pages duplicated for additional categories already covered by core services.
- Do not claim a physical office in any Local Coverage Area unless true.
- GeoArticles are not landing pages; they are semantic boosters.
- Every page must have function, URL, H1, metadata, schema, internal links, priority, phase and QA.

INPUTS DEL NEGOCIO:

Business Name:
[INSERT]

Website Root Domain:
[INSERT]

Canonical Domain:
[INSERT]

Country:
[INSERT]

State / Province:
[INSERT]

Main City:
[INSERT]

Main City Slug:
[INSERT]

Physical Location City:
[INSERT]

Full NAP:
- Business Name: [INSERT]
- Street Address: [INSERT]
- City: [INSERT]
- State / Province: [INSERT]
- ZIP / Postal Code: [INSERT]
- Country: [INSERT]
- Phone: [INSERT]

GBP URL:
[INSERT]

Primary GBP Category:
[INSERT]

Primary Category Slug:
[INSERT]

Additional GBP Categories:
[INSERT LIST]

Servicios principales:
[INSERT LIST]

Service Slugs:
[INSERT LIST]

Primary Local Coverage Areas:
[INSERT 3–5 strongest real service areas]

Additional Local Coverage Areas:
[INSERT OPTIONAL LIST]

Should Local Coverage Areas generate pages?
Default: No.

Approved Expansion Areas:
[INSERT ONLY IF DEDICATED URLS ARE APPROVED]

Additional Categories already covered by core services:
[INSERT LIST]

Additional Categories that need separate pages:
[INSERT LIST]

GeoArticles per Service:
[INSERT NUMBER]

GeoHub URL Style:
[/city/ OR /category/city/]

GeoArticle URL Style:
[/city/article-topic/ OR /category/city/article-topic/]

Top Priority Services:
[INSERT LIST]

Trust Signals:
[INSERT LIST]

Preferred CTA:
[INSERT]

Publishing Capacity:
[INSERT NUMBER] pages per week

CMS:
[INSERT]

Can schema be added?
[YES / NO]

Can internal links be edited manually?
[YES / NO]

Tracking Tools:
[INSERT]

TASK:

Generate a complete GMB Crush website architecture system with the following outputs:

1. Executive summary
2. Inputs validation
3. Duplicate category detection
4. Total base page count formula
5. Full URL Matrix
6. Page Type Rules
7. Content Architecture + Local Coverage Areas
8. Homepage brief
9. Service Overview Pages
10. Main City GeoHub Page
11. Main City Location-Based Service Pages
12. Páginas de categoría adicional en la Main City
13. Main City GeoArticle ideas
14. Schema Map
15. Internal Linking Map
16. Priority Score
17. Publishing Phases
18. QA Checklist
19. Optional Expansion Module
20. Final implementation roadmap

OUTPUT REQUIREMENTS:

A. INPUT VALIDATION

Validate:
- Primary GBP category alignment
- Core services
- Additional GBP categories
- Main City
- Physical Location City
- Local Coverage Areas
- Approved Expansion Areas
- Category duplication risks
- Missing slugs
- URL consistency
- NAP consistency

B. TOTAL BASE PAGE COUNT

Use this formula:

1 Homepage
+ S Service Overview Pages
+ 1 Main City GeoHub
+ S Main City Location-Based Service Pages
+ A Páginas de categoría adicional en la Main City
+ G × S Main City GeoArticle Pages

Where:
S = number of core services
A = number of additional categories that need separate pages
G = number of GeoArticles per service

Do not include Local Coverage Areas in the base formula.
Only include Approved Expansion Areas in an optional expansion formula.

C. URL RULES

Use these URL patterns:

Homepage:
/

Service Overview:
/[primary-category-slug]/[service-slug]/

Main City GeoHub:
/[main-city-slug]/
or
/[primary-category-slug]/[main-city-slug]/

Main City Location-Based Service:
/[primary-category-slug]/[main-city-slug]/[service-slug]/

Main City Additional Category:
/[primary-category-slug]/[main-city-slug]/[additional-category-slug]/

Main City GeoArticle:
/[main-city-slug]/[article-topic-slug]/
or
/[primary-category-slug]/[main-city-slug]/[article-topic-slug]/

Local Coverage Areas:
No URLs by default.

Approved Expansion Areas:
Create URLs only if explicitly approved.

D. URL MATRIX

Create a clean table with these columns:

ID
Page Type
Parent Page
Service
Service Slug
Main City
Main City Slug
Additional Category
Local Coverage Areas Used
Approved Expansion Area
URL
H1
Meta Title
Meta Description
Schema Type
Enlaces internos Required
Priority
Publish Phase
Status
Notes

E. PAGE TYPE RULES

For each page type, provide:
- Purpose
- URL pattern
- H1 formula
- Meta title formula
- Meta description formula
- Word count target
- Required sections
- FAQ requirements
- CTA requirements
- Schema required
- Internal links required
- Example using the business inputs
- Incorrect examples
- Final rule

F. CONTENT ARCHITECTURE + LOCAL COVERAGE AREAS

For each page type, define:
- Required internal content structure
- Where Local Coverage Areas may be mentioned
- Where Local Coverage Areas must not be used
- How to avoid fake location claims
- How to use Local Coverage Areas in FAQs
- How to use Local Coverage Areas in schema areaServed
- How to avoid creating unnecessary URLs

G. HOMEPAGE BRIEF

Generate:
- Homepage URL
- H1
- Meta title
- Meta description
- Quick Answer block
- Core service menu
- Vista previa de cobertura local
- Trust blocks
- FAQ ideas
- Schema
- Internal links

H. SERVICE OVERVIEW PAGES

For each service, generate:
- URL
- H1
- Meta title
- Meta description
- Suggested H2s using AUDIO:
  Authority
  Uniqueness
  Depth
  Intent
  Optimization
- FAQs
- Internal links to the Main City service version
- Schema

I. MAIN CITY GEOHUB PAGE

Generate:
- URL
- H1
- Meta title
- Meta description
- Services available in Main City
- Additional category pages in Main City
- Local Coverage Areas section
- GeoArticle ideas for Main City
- Internal links
- Schema

J. MAIN CITY LOCATION-BASED SERVICE PAGES

For each Service × Main City combination, generate:
- URL
- H1
- Meta title
- Meta description
- Local intro angle
- AUDIO H2s
- Local Coverage Areas section
- FAQs
- CTA
- Parent service page
- Matching GeoHub page
- Related same-city services
- Related GeoArticles
- Schema

K. ADDITIONAL CATEGORY PAGES

For each Additional Category × Main City combination, generate:
- URL
- H1
- Meta title
- Meta description
- Local problem/scenario
- AUDIO H2s
- Local Coverage Areas use case
- FAQs
- CTA
- Related services
- Matching GeoHub
- Schema

L. GEOARTICLE IDEAS

Generate [G] GeoArticle ideas for each Service in the Main City.

For each GeoArticle, return:
- Page title
- H1
- URL
- Target long-tail llaveword
- Intent type
- Summary
- Matching Main City Location-Based Service Page
- Matching GeoHub Page
- Related GeoArticle
- Schema

M. SCHEMA MAP

Assign schema by page type:

Homepage:
Organization
WebSite
LocalBusiness if physical presence exists in Main City
FAQPage
Speakable

Service Overview:
Service
WebPage
BreadcrumbList
Speakable

Location-Based Service:
LocalBusiness
BreadcrumbList
FAQPage optional
Speakable optional

Additional Category:
Service with areaServed
BreadcrumbList
FAQPage optional

GeoHub:
CollectionPage
BreadcrumbList
LocalBusiness only if physical presence exists in Main City

GeoArticle:
Article
FAQPage
BreadcrumbList
Speakable

N. INTERNAL LINKING MAP

Apply this hierarchy:

Homepage links to:
- Service Overview Pages
- Main City GeoHub
- Páginas de categoría adicional en la Main City
- Página de contacto

Service Overview links to:
- Homepage
- Main City version of that service
- Related Service Overview Pages
- Relevant GeoArticles

Main City Location-Based Service links to:
- Parent Service Overview
- Matching Main City GeoHub
- Other services in Main City
- Related GeoArticles
- Página de contacto

Additional Category links to:
- Matching Main City GeoHub
- Related services in Main City
- Related GeoArticles
- Página de contacto

Main City GeoHub links to:
- Homepage
- All services in Main City
- All additional category pages in Main City
- All GeoArticles in Main City
- Página de contacto

GeoArticle links to:
- Matching Main City Location-Based Service Page
- Matching Main City GeoHub
- Related GeoArticle
- Optional related service
- Página de contacto

Local Coverage Areas:
Do not link unless they are Approved Expansion Areas with real URLs.

O. PRIORITY SCORE

Calculate priority using:

Priority Score =
Revenue Value
+ Search Intent
+ GBP Category Relevance
+ Local Relevance
+ Competition Gap
+ Conversion Urgency

Each factor is scored from 1 to 5.

Priority tiers:
26–30 = P1
21–25 = P2
16–20 = P3
10–15 = P4
0–9 = Hold

P. PUBLISHING PHASES

Assign every page to one of these phases:

Phase 1: Entity Foundation
- Homepage
- Contacto
- About
- Service Overview Pages prioritarias
- Main City GeoHub

Phase 2: Main City Conversion Layer
- Main City service pages
- Additional category pages for Main City

Phase 3: Main City Semantic Expansion
- GeoArticles
- FAQ clusters
- Cost guides
- Comparison articles
- Mistake guides

Phase 4: Optimization Loop
- Internal link updates
- Metadata refresh
- FAQ expansion
- Schema QA
- Geo-grid review
- Search Console optimization

Phase 5: Optional Expansion Module
- Approved Expansion Area GeoHubs
- Approved Expansion Area service pages
- Approved Expansion Area GeoArticles

Q. QA CHECKLIST

For each page, include QA checks:

- URL approved
- Page type correct
- One service only
- One Main City only if applicable
- Local Coverage Areas used naturally
- No unnecessary coverage-area URLs
- No fake location claim
- H1 approved
- Meta title approved
- Meta description approved
- Word count approved
- AUDIO structure included
- FAQs included
- CTA included
- Schema approved
- Internal links approved
- NAP consistent
- No canibalization
- Final approval status

R. FINAL OUTPUT FORMAT

Return the answer in this structure:

1. Title + Summary Block
2. Inputs Validation
3. Duplicate Category Detection
4. Page Count Formula
5. URL Matrix
6. Page Type Rules
7. Content Architecture + Local Coverage Areas
8. Homepage Brief
9. Service Overview Matrix
10. Main City GeoHub Matrix
11. Main City Location-Based Service Matrix
12. Additional Category Matrix
13. GeoArticle Matrix
14. Schema Map
15. Internal Linking Map
16. Priority Score Table
17. Publishing Plan
18. QA Checklist
19. Optional Expansion Module
20. Final Takeaway

Use clean tables.
Be precise.
Do not invent physical locations.
Do not create duplicate pages.
Do not create URLs for Local Coverage Areas unless they are Approved Expansion Areas.
Do not create pages with no clear parent, target, or internal link destination.
```

## Prompt auxiliar 1 — Solo URL Matrix

```text
Actúa como Matteo de GMB Crush.

Genera únicamente la URL Matrix completa para una web local de una Main City.

Inputs:
Business Name:
Website Root Domain:
Primary GBP Category:
Primary Category Slug:
Main City:
Main City Slug:
Servicios principales:
Service Slugs:
Additional Categories that need separate pages:
Additional Category Slugs:
Local Coverage Areas:
Approved Expansion Areas:
GeoArticles per Service:

Rules:
- Base architecture uses one Main City.
- Local Coverage Areas do not generate URLs.
- Approved Expansion Areas generate URLs only if provided.
- Homepage = /
- Service Overview = /category/service/
- Main City GeoHub = /city/
- Main City Service Page = /category/city/service/
- Additional Category = /category/city/additional-category/
- GeoArticle = /city/article-topic/

Columns:
ID
Page Type
Parent Page
Service
Service Slug
Main City
Main City Slug
Additional Category
Local Coverage Areas Used
URL
H1
Meta Title
Schema Type
Priority
Publish Phase
Status
Notes
```

## Prompt auxiliar 2 — Solo contenido de una página

```text
Actúa como Matteo de GMB Crush y senior SEO content strategist.

Quiero generar contenido completo para esta página siguiendo GMB Crush, AIO, GEO y AUDIO.

Page Type:
[Homepage / Service Overview / Location-Based Service / Additional Category / GeoHub / GeoArticle]

Business Name:
[INSERT]

Primary GBP Category:
[INSERT]

Primary Category Slug:
[INSERT]

Main City:
[INSERT]

Main City Slug:
[INSERT]

Local Coverage Areas:
[INSERT LIST]

Service:
[INSERT]

Service Slug:
[INSERT]

URL:
[INSERT]

Parent Service Page:
[INSERT]

GeoHub Page:
[INSERT]

Related Pages:
[INSERT]

Phone:
[INSERT]

NAP:
[INSERT]

Physical office in Main City?
Yes / No

Physical office in Local Coverage Areas?
Yes / No

Generate:
1. H1
2. Meta title
3. Meta description
4. Quick Answer block if relevant
5. Full page outline
6. 3–5 H2s using AUDIO where applicable
7. Local Coverage Areas section where appropriate
8. 3–5 FAQs
9. CTA
10. Internal links with anchor text
11. Schema recommendation
12. Anti-canibalization note

Rules:
- If Service Overview, do not target Main City or Local Coverage Areas.
- If Location-Based Service, use one service and one Main City.
- If GeoHub, list all Main City services, categories, articles and coverage areas.
- If GeoArticle, write as semantic booster, not landing page.
- Do not claim physical presence in Local Coverage Areas unless true.
```

## Prompt auxiliar 3 — Solo GeoArticles

```text
Actúa como Matteo de GMB Crush, especialista en GeoArticles, AI Overview y semantic SEO local.

Inputs:
Brand Name:
Primary Business Category Slug:
Service:
Service Slug:
Main City:
Main City Slug:
Local Coverage Areas:
Matching Location-Based Service Page:
Matching GeoHub Page:
Target Audience:
Physical office in Main City?
Yes / No

Generate 3 GeoArticle ideas.

For each idea:
1. Page Title
2. H1 Suggestion
3. Suggested URL
4. Target Long-Tail Keyword
5. Intent Type
6. Summary
7. Matching Location-Based Service Page
8. Matching GeoHub Page
9. Related GeoArticle
10. Suggested CTA
11. Schema Type

Rules:
- Each article supports one service, one Main City and one long-tail intent.
- Local Coverage Areas may appear as examples or context.
- Each article links to the matching /category/main-city/service/ page.
- Each article links to the matching /main-city/ GeoHub page.
- Do not create URLs for Local Coverage Areas.
```

## Prompt auxiliar 4 — Solo QA

```text
Actúa como Matteo de GMB Crush y haz QA de esta página antes de publicarla.

Page URL:
[INSERT]

Page Type:
[INSERT]

Business Name:
[INSERT]

Primary GBP Category:
[INSERT]

Target Service:
[INSERT]

Main City:
[INSERT]

Local Coverage Areas Used:
[INSERT]

Physical office in Main City?
Yes / No

Physical office in Local Coverage Areas?
Yes / No

H1:
[INSERT]

Meta Title:
[INSERT]

Meta Description:
[INSERT]

Word Count:
[INSERT]

Schema Added:
[INSERT]

Enlaces internos Added:
[INSERT]

NAP Used:
[INSERT]

Check:
1. URL approved
2. Page type correct
3. One service only
4. One Main City only
5. Local Coverage Areas used naturally
6. No fake office/location claim
7. H1 approved
8. Meta title approved
9. Meta description approved
10. Word count approved
11. AUDIO structure included
12. FAQs included
13. CTA included
14. Schema approved
15. Internal links approved
16. NAP consistent
17. No canibalization
18. Final approval

Return:
- QA table
- Problems found
- Required fixes
- Final status:
  Approved / Needs Revision / Blocked
```
## Rol y restricciones iniciales — Regla operativa 1

### Explicación

El Master Prompt debe empezar definiendo el rol, la metodología y las reglas no negociables. Esto evita que la IA improvise estructuras ajenas al sistema.

### Patrón o fórmula

```text
Role → Methodology → Non-negotiables
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El prompt dice: Actúa como Matteo de GMB Crush y usa Homepage, Service Overview, Location-Based Service, Additional Category, GeoHub y GeoArticle.
```

### Ejemplos incorrectos

```text
- Pedir simplemente “crea una web SEO”
- No mencionar GMB Crush
- No prohibir mezclar servicios o zonas
```

### Regla final

```text
El prompt maestro debe fijar rol y límites desde el inicio.
```

## Inputs geográficos simplificados — Regla operativa 2

### Explicación

El prompt debe pedir Main City, Physical Location City, Local Coverage Areas y Approved Expansion Areas. No debe usar Target Cities ni Secondary Cities en la base.

### Patrón o fórmula

```text
Main City + Local Coverage Areas + Approved Expansion Areas
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h: Main City Madrid; Local Coverage Areas Almagro, Chamberí, Salamanca y Retiro; Approved Expansion Areas vacío.
```

### Ejemplos incorrectos

```text
- Pedir Target Cities como base
- Multiplicar páginas por cobertura
- No pedir ubicación física
```

### Regla final

```text
La geografía del prompt debe reflejar la versión simplificada.
```

## Fórmula base explícita — Regla operativa 3

### Explicación

El prompt debe obligar a calcular la fórmula base antes de generar URLs. Así la IA no salta directamente a matrices infladas o incompletas.

### Patrón o fórmula

```text
1 + S + 1 + S + A + G×S
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Para Cerrajeros Madrid 24h, el prompt debe devolver 28 páginas base con S=5, A=1, G=3.
```

### Ejemplos incorrectos

```text
- Usar C = target cities
- No explicar A
- No mostrar tabla de conteo
```

### Regla final

```text
El Master Prompt debe calcular antes de listar.
```

## URL Matrix obligatoria — Regla operativa 4

### Explicación

El output debe exigir una URL Matrix con ID, Page Type, Parent, Service, City, URL, H1, metas, schema, links, priority, phase y status.

### Patrón o fórmula

```text
Inputs → URL Matrix → producción
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El prompt genera filas HP-001, SO-001, GH-001, LBS-001, AC-001 y GA-001 para Cerrajeros Madrid 24h.
```

### Ejemplos incorrectos

```text
- Pedir solo lista de URLs
- No incluir schema
- No incluir status o phase
```

### Regla final

```text
Sin matriz completa, el prompt no produce un sistema operativo.
```

## Page Type Rules completas — Regla operativa 5

### Explicación

El Master Prompt debe desarrollar cada tipo de página con propósito, patrón, H1, metas, word count, secciones, schema, enlaces y CTA.

### Patrón o fórmula

```text
Page Type → rules → example
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Homepage de Cerrajeros Madrid 24h incluye H1 de Servicios de cerrajería en Madrid, servicios core, NAP y enlaces.
```

### Ejemplos incorrectos

```text
- Definir solo URL patterns
- No separar Service Overview de Location-Based Service
- No pedir schema por tipo
```

### Regla final

```text
Cada tipo de página debe tener reglas completas.
```

## Content Architecture incluida — Regla operativa 6

### Explicación

El prompt debe incluir el nuevo Paso 6: dónde y cómo usar Local Coverage Areas dentro del contenido. Sin esto, la IA vuelve a crear páginas innecesarias o ignora cobertura.

### Patrón o fórmula

```text
Page Type → content sections → coverage usage
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
En /cerrajero/madrid/cerrajero-urgente/, el prompt pide sección de Local Coverage Areas Served con Almagro, Chamberí, Salamanca y Retiro.
```

### Ejemplos incorrectos

```text
- No pedir secciones internas
- Tratar coverage areas como URLs
- No pedir FAQs de cobertura
```

### Regla final

```text
El prompt debe enseñar a escribir cada página por dentro.
```

## Internal Linking Map detallado — Regla operativa 7

### Explicación

El Master Prompt debe pedir Source URL, Target URL, Anchor, Priority y Placement. Esto convierte enlaces en producción, no en recomendación genérica.

### Patrón o fórmula

```text
Source → Target → Anchor → Placement
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GA-001 enlaza a /cerrajero/madrid/cerrajero-urgente/ con anchor cerrajero urgente en Madrid.
```

### Ejemplos incorrectos

```text
- Pedir “añade enlaces internos” sin mapa
- No definir anchors
- Enlazar a coverage areas sin URL
```

### Regla final

```text
Los enlaces deben salir como matriz accionable.
```

## Schema Map por page type — Regla operativa 8

### Explicación

El prompt debe obligar a asignar schema por URL. Esto ayuda a evitar errores posteriores de implementación.

### Patrón o fórmula

```text
URL → Page Type → Schema Required
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
AC-001 usa Service with areaServed; GA-001 usa Article + FAQPage + BreadcrumbList + Speakable.
```

### Ejemplos incorrectos

```text
- No pedir schema
- Usar el mismo schema en todas las URLs
- No diferenciar address y areaServed
```

### Regla final

```text
El schema debe generarse desde el output maestro.
```

## Priority Score con Local Relevance — Regla operativa 9

### Explicación

La fórmula del prompt debe usar Local Relevance en lugar de City Priority. Esto es coherente con una base de una Main City.

### Patrón o fórmula

```text
Revenue + Intent + GBP + Local Relevance + Gap + Urgency
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente Madrid obtiene score alto por urgencia, GBP relevance y Main City fit.
```

### Ejemplos incorrectos

```text
- Usar Top Priority Cities
- Puntuar áreas sin URL
- No explicar el score
```

### Regla final

```text
La prioridad debe medir páginas, no zonas sin arquitectura.
```

## Publishing Phases con expansión opcional — Regla operativa 10

### Explicación

El prompt debe separar fases base y expansión opcional. Esto evita volver al modelo multi-ciudad por defecto.

### Patrón o fórmula

```text
Phase 1–4 base | Phase 5 expansion optional
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h publica primero Madrid y sus servicios; Almagro solo entra si se aprueba como expansión.
```

### Ejemplos incorrectos

```text
- Publicar coverage areas en Phase 2
- No crear Phase 5 opcional
- Publicar artículos antes de landings
```

### Regla final

```text
La expansión debe vivir en una fase separada.
```

## QA Checklist obligatoria — Regla operativa 11

### Explicación

El prompt debe devolver QA por page type y por cobertura local: URL, H1, metadata, schema, links, NAP, canibalización y no false location claims.

### Patrón o fórmula

```text
Page → QA checks → final status
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 no se aprueba si dice “Almagro office” sin oficina real.
```

### Ejemplos incorrectos

```text
- No incluir QA
- No revisar ubicación falsa
- No revisar enlaces internos
```

### Regla final

```text
El Master Prompt debe producir control de calidad.
```

## Anti-duplicación de reglas — Regla operativa 12

### Explicación

El prompt debe prohibir reglas operativas repetidas. Cada regla debe tener nombre semántico y contenido distinto. Esto evita ruido y pérdida de confianza.

### Patrón o fórmula

```text
Rule name → specific content → duplicate check
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
En Paso 4, las reglas son canonical domain, trailing slash, service overview pattern, GeoArticle URL, local coverage no URL, etc.
```

### Ejemplos incorrectos

```text
- Regla operativa 1–12 con el mismo texto
- Cambiar solo el número de la regla
- Inflar longitud sin contenido nuevo
```

### Regla final

```text
Cada regla operativa debe aportar una decisión nueva.
```

## Expansion Module controlado — Regla operativa 13

### Explicación

El prompt debe pedir Approved Expansion Areas como campo opcional y generar URLs solo si ese campo tiene contenido validado.

### Patrón o fórmula

```text
Approved Expansion Areas empty → no expansion URLs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h deja Approved Expansion Areas vacío y el output no genera /almagro/.
```

### Ejemplos incorrectos

```text
- Generar URLs por coverage areas
- No pedir justificación de expansión
- Mezclar expansión con fórmula base
```

### Regla final

```text
La expansión se activa solo con aprobación explícita.
```

## Output final ordenado — Regla operativa 14

### Explicación

El prompt debe exigir un orden de salida fijo para que cualquier usuario o IA pueda consumir el resultado sin buscar secciones perdidas.

### Patrón o fórmula

```text
Summary → Validation → Formula → Matrix → Rules → Links → Score → Phases → QA → Takeaway
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
El output de Cerrajeros Madrid 24h termina con URL Matrix, Internal Linking Map, Publishing Plan y QA Checklist.
```

### Ejemplos incorrectos

```text
- Entregar respuesta libre sin estructura
- Omitir outputs clave
- Mezclar explicación con tablas sin orden
```

### Regla final

```text
El Master Prompt debe generar un sistema, no una respuesta suelta.
```

## Checklist final del Paso 12

| Check | Pregunta | Estado |
|---|---|---|
| Header | ¿El prompt define el rol Matteo / GMB Crush? | ✅ / ⬜ |
| Hierarchy | ¿Incluye los seis tipos de página GMB Crush? | ✅ / ⬜ |
| Main City | ¿La base se construye con una sola Main City? | ✅ / ⬜ |
| Local Coverage | ¿Las áreas de cobertura no generan URLs por defecto? | ✅ / ⬜ |
| Expansion | ¿Las áreas con URL son Approved Expansion Areas? | ✅ / ⬜ |
| Inputs | ¿Incluye todos los datos necesarios? | ✅ / ⬜ |
| Formula | ¿Usa la fórmula base simplificada? | ✅ / ⬜ |
| URL Matrix | ¿Pide matriz con IDs y estados? | ✅ / ⬜ |
| Content Architecture | ¿Incluye el nuevo Paso 6? | ✅ / ⬜ |
| Enlaces internos | ¿Pide source, target, anchor y placement? | ✅ / ⬜ |
| Priority | ¿Usa Local Relevance en el score? | ✅ / ⬜ |
| QA | ¿Incluye checklist completo? | ✅ / ⬜ |
| Aux prompts | ¿Incluye prompts auxiliares reutilizables? | ✅ / ⬜ |

## Outputs del Paso 12

- Master Prompt completo
- Prompt auxiliar para URL Matrix
- Prompt auxiliar para contenido
- Prompt auxiliar para GeoArticles
- Prompt auxiliar para QA
- Reglas no negociables integradas
- Formato final de output
- Protección contra Target Cities / Secondary Cities en base


---


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

Servicios principales:
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

Primary GBP Category:
Cerrajero

Additional GBP Categories:
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

Primary Local Coverage Areas:
1. Almagro
2. Chamberí
3. Salamanca

Additional Local Coverage Areas:
1. Retiro

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
- 250+ reseñas de Google
- Técnicos cerrajeros cualificados
- Servicio móvil en el mismo día
- Garantía de trabajo

GBP URL:
https://google.com/business/cerrajeros-madrid-24h

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
/madrid/guia-precios-cerrajero-urgente/ links to /cerrajero/madrid/cerrajero-urgente/
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
= 28 páginas base
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
/madrid/guia-precios-cerrajero-urgente/
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
Cerrajeros Madrid 24h enlaza /madrid/guia-precios-cerrajero-urgente/ hacia /cerrajero/madrid/cerrajero-urgente/ y /madrid/.
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

