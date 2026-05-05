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

Core Services:
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
Option A: Call now
Option B: Book online
Option C: Request estimate
Option D: Contact us

Trust Signals:
- Years in business:
- Reviews:
- Certifications:
- Awards:
- Guarantees:
- Emergency / same-day / mobile service:

GBP URL:
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
```

# Cuerpo operativo del Paso 1

## Business Name

### Explicación

El nombre del negocio es la entidad base. Debe coincidir con el nombre del GBP cuando se use como NAP, schema o bloque de confianza.

### Patrón o fórmula

```text
Business Name = nombre oficial de la entidad local
```

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith
```

### Ejemplos incorrectos

```text
- ABC Locksmith Miami
- ABC Locksmith 24/7 Best Cheap
- ABC Locksmith Hialeah si ese no es el nombre real
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

### Ejemplo correcto con ABC Locksmith

```text
https://www.abclocksmith.com
```

### Ejemplos incorrectos

```text
- http://abclocksmith.com
- https://abclocksmith.com y https://www.abclocksmith.com mezclados
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith, 123 Main St, Miami, FL, +1 305 000 0000
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

### Ejemplo correcto con ABC Locksmith

```text
Locksmith → locksmith
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

### Ejemplo correcto con ABC Locksmith

```text
Emergency Locksmith Service cubierta por Emergency Locksmith; Key Duplication Service necesita página propia
```

### Ejemplos incorrectos

```text
- Crear emergency-locksmith y emergency-locksmith-service como páginas separadas
- Ignorar Key Duplication Service
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

### Ejemplo correcto con ABC Locksmith

```text
Miami
```

### Ejemplos incorrectos

```text
- Hialeah como Main City si el GBP y el NAP están en Miami
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

### Ejemplo correcto con ABC Locksmith

```text
Miami
```

### Ejemplos incorrectos

```text
- Our Hialeah office si no existe
- Visit our Coral Gables storefront si no existe
- Schema con address falsa
```

### Regla final

```text
Nunca se inventa ubicación física.
```

## Core Services

### Explicación

Los core services son los servicios principales que generan Service Overview Pages y Main City Service Pages.

### Patrón o fórmula

```text
S = número de core services
```

### Ejemplo correcto con ABC Locksmith

```text
Emergency Locksmith, Car Locksmith, Residential Locksmith, Commercial Locksmith, Lock Rekeying
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

### Ejemplo correcto con ABC Locksmith

```text
Hialeah, Coral Gables, Doral, Hollywood
```

### Ejemplos incorrectos

```text
- Crear /hialeah/ por defecto
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

### Ejemplo correcto con ABC Locksmith

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

### Ejemplo correcto con ABC Locksmith

```text
Call now
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

### Ejemplo correcto con ABC Locksmith

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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith usa un único NAP: ABC Locksmith, 123 Main St, Miami, FL, +1 305 000 0000. Esa misma versión se usa en homepage, footer, contact page y schema.
```

### Ejemplos incorrectos

```text
- Usar ABC Locksmith LLC en schema y ABC Locksmith en homepage
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith declara Primary GBP Category: Locksmith. Sus servicios core son Emergency Locksmith, Car Locksmith, Residential Locksmith, Commercial Locksmith y Lock Rekeying.
```

### Ejemplos incorrectos

```text
- Elegir Locksmith como categoría principal y crear contenido centrado en security cameras
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

### Ejemplo correcto con ABC Locksmith

```text
Emergency Locksmith Service queda cubierto por Emergency Locksmith. Key Duplication Service no está cubierto por los servicios core y se marca como categoría adicional que necesita página.
```

### Ejemplos incorrectos

```text
- Crear /locksmith/miami/emergency-locksmith-service/ y /locksmith/miami/emergency-locksmith/
- Ignorar Key Duplication Service aunque esté en el GBP
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith usa Miami como Main City. Hialeah, Coral Gables, Doral y Hollywood se registran como Local Coverage Areas para menciones de cobertura, sin crear URLs en fase base.
```

### Ejemplos incorrectos

```text
- Crear GeoHubs para todas las Local Coverage Areas en el intake base
- Usar Hialeah como Main City si el GBP y la entidad están en Miami
- No registrar zonas reales de cobertura aunque se atiendan clientes allí
```

### Regla final

```text
Una sola Main City crea la base; las áreas de cobertura no crean URLs salvo aprobación.
```

## Servicios core normalizados — Regla operativa 5

### Explicación

Los servicios core son los que generan Service Overview Pages y Main City Service Pages. Deben estar escritos con nombres claros, slugs limpios y valor comercial real. Si se meten microvariantes desde el intake, la fórmula se infla y aparecen páginas finas o canibalizadas.

### Patrón o fórmula

```text
Servicio core → slug aprobado → página general → página Main City
```

### Ejemplo correcto con ABC Locksmith

```text
Emergency Locksmith usa el slug emergency-locksmith y genera /locksmith/emergency-locksmith/ y /locksmith/miami/emergency-locksmith/.
```

### Ejemplos incorrectos

```text
- Crear servicios separados para emergency locksmith, urgent locksmith y fast locksmith
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith declara ubicación física en Miami. Las páginas pueden hablar de la ubicación en Miami, pero no deben decir que existe oficina en Hialeah o Coral Gables.
```

### Ejemplos incorrectos

```text
- Decir “our Hialeah office” si no hay oficina allí
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith registra 10+ years in business, 250+ Google reviews, licensed technicians y same-day mobile support como señales reutilizables.
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

### Ejemplo correcto con ABC Locksmith

```text
ABC Locksmith deja Approved Expansion Areas en blanco durante Phase 1, aunque menciona Hialeah, Coral Gables, Doral y Hollywood dentro del contenido.
```

### Ejemplos incorrectos

```text
- Aprobar todas las áreas de cobertura sin análisis
- Crear /hialeah/ solo porque Hialeah aparece en areaServed
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
| Core Services | ¿Los servicios principales están listados y priorizados? | ✅ / ⬜ |
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