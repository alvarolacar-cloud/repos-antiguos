Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# §1 Paso 1 — Intake Form

## §2 Índice corto

**Paso 1 — Intake Form**

## §3 Objetivo del Paso 1

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: recoger los datos mínimos del negocio antes de generar arquitectura, URLs o contenido.
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
Error que previene: empezar a crear páginas sin conocer la categoría principal del GBP.
Error que previene: confundir ciudad principal con áreas de cobertura local.
Error que previene: crear páginas para zonas donde el negocio no atiende clientes.
Error que previene: usar un NAP diferente al del GBP.
Error que previene: crear servicios sin saber si son core services o categorías adicionales.

## §4 Lo que tienes que rellenar

```text
Business Name:

Website URL:

Canonical Domain:
Option A: https://www.domain.com
Option B: https://domain.com

GBP Status:
Not Created / Created / Verified / Pending Verification

GBP Creation Timing:
After website launch

GBP Verification Status:
Not Started / Pending / Verified

GBP URL:
Leave blank until the GBP is created in Paso 14.

Full NAP:
- Name:
- Street Address:
- City:
- State / Province:
- ZIP / Postal Code:
- Country:
- Phone:
- Email:

Planned Primary GBP Category:

Planned Additional GBP Categories:
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

Direct Local Coverage Areas:
Zonas que salen directamente de la dirección física.

> **Nota para la IA:** Antes de decidir las Local Coverage Areas, consultar el módulo **Interpretación GMB Crush de la dirección física y zonas GEO** al final de este documento. Ese módulo explica cómo se interpreta la dirección física, cómo se eligen las zonas y qué criterios deben cumplir.
1.
2.

Candidate Local Coverage Areas:
Zonas que no salen de la dirección pero pueden tener sentido por proximidad, búsqueda o competencia. Solo se usan como señales GEO activas si pasan el test de coherencia GEO.
1.
2.
3.
4.
5.
6.
7.
8.

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
Option D: Contactar

Trust Signals:
- Years in business:
- Reviews:
- Certifications:
- Awards:
- Guarantees:
- Urgencias / servicio en el mismo día / servicio móvil:

```

## §5 Ejemplo rellenado

```text
Business Name:
Cerrajeros Madrid 24h

Website URL:
https://www.cerrajerosmadrid24h.com

Canonical Domain:
https://www.cerrajerosmadrid24h.com

GBP Status:
Not Created

GBP Creation Timing:
After website launch

GBP Verification Status:
Not Started

GBP URL:
N/A — GBP not created yet

Full NAP:
- Name: Cerrajeros Madrid 24h
- Street Address: Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí
- City: Madrid
- State / Province: Comunidad de Madrid
- ZIP / Postal Code: 28010
- Country: España
- Phone: +34 600 000 000
- Email: info@cerrajerosmadrid24h.com

Planned Primary GBP Category:
Cerrajero

Planned Additional GBP Categories:
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

Direct Local Coverage Areas:
1. Almagro
2. Chamberí

Candidate Local Coverage Areas:
1. Salamanca
2. Retiro
3. Centro
4. Tetuán
5. Chamartín
6. Arganzuela
7. Moncloa
8. Prosperidad

Las Candidate Local Coverage Areas solo se usan como señales GEO activas si pasan el test de coherencia GEO.

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
- Reseñas iniciales pendientes de recopilar tras crear y verificar el GBP
- Técnicos cerrajeros cualificados
- Servicio móvil en el mismo día
- Garantía de trabajo

```

# §6 Cuerpo operativo del Paso 1

> **Definición operativa — Local Coverage Areas:** zonas, barrios, distritos o landmarks seleccionados desde la dirección física, la Main City, la coherencia GEO, la proximidad, los datos de búsqueda, los competidores y la lógica GMB Crush para reforzar relevancia local dentro del contenido, schema y futuros análisis. No son automáticamente URLs. No son automáticamente páginas propias. No son necesariamente oficinas físicas. Las Local Coverage Areas se usan primero como señales GEO dentro del contenido. No generan URLs por defecto.

## §7 Business Name

### §7.1 Explicación

El nombre del negocio es la entidad base. Debe coincidir con el nombre del GBP cuando se use como NAP, schema o bloque de confianza.

### §7.2 Patrón o fórmula

```text
Business Name = nombre oficial de la entidad local
```

### §7.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h
```

### §7.4 Ejemplos incorrectos

```text
- Cerrajeros Madrid 24h Madrid
- Cerrajeros Madrid 24h 24/7 Best Cheap
- Cerrajeros Madrid 24h Almagro si ese no es el nombre real
```

### §7.5 Regla final

```text
El nombre del negocio debe ser estable, rastreable y consistente.
```

## §8 Website URL

### §8.1 Explicación

La URL raíz define el dominio canónico sobre el que se generarán todas las páginas. No se deben mezclar variantes con www y sin www.

### §8.2 Patrón o fórmula

```text
Canonical Domain = una sola versión del dominio
```

### §8.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
https://www.cerrajerosmadrid24h.com
```

### §8.4 Ejemplos incorrectos

```text
- http://cerrajerosmadrid24h.com
- https://cerrajerosmadrid24h.com y https://www.cerrajerosmadrid24h.com mezclados
- /home como página raíz
```

### §8.5 Regla final

```text
Una web local debe operar con un solo dominio canónico.
```

## §9 Full NAP

### §9.1 Explicación

El NAP es una señal de entidad local. Debe ser igual en homepage, contacto, footer, schema y GBP cuando proceda.

### §9.2 Patrón o fórmula

```text
Name + Address + Phone = NAP oficial
```

### §9.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h, Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid, +34 600 000 000
```

### §9.4 Ejemplos incorrectos

```text
- Cambiar el teléfono entre páginas
- Usar direcciones distintas sin explicación
- Ocultar el NAP en imágenes no rastreables
```

### §9.5 Regla final

```text
El NAP debe ser visible, consistente y rastreable.
```

## §10 Planned Primary GBP Category

### §10.1 Explicación

La categoría principal del GBP manda sobre la arquitectura. Los servicios y páginas deben apoyar esa categoría.

### §10.2 Patrón o fórmula

```text
Planned Primary GBP Category → Primary Category Slug → Service Pages
```

### §10.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero → cerrajero
```

### §10.4 Ejemplos incorrectos

```text
- Usar una categoría que no existe en el GBP
- Construir la web alrededor de un servicio secundario
- No crear páginas que soporten la categoría principal
```

### §10.5 Regla final

```text
La categoría principal debe verse reflejada en homepage, servicios y páginas locales.
```

## §11 Planned Additional GBP Categories

### §11.1 Explicación

Las categorías adicionales refuerzan la profundidad de entidad, pero no siempre generan páginas nuevas si ya están cubiertas por un core service.

### §11.2 Patrón o fórmula

```text
Additional Category → covered or separate page
```

### §11.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Servicio de cerrajería de urgencia cubierta por Cerrajero urgente; Servicio de duplicado de llaves necesita página propia
```

### §11.4 Ejemplos incorrectos

```text
- Crear cerrajero-urgente y cerrajero-urgente como páginas separadas
- Ignorar Servicio de duplicado de llaves
- Crear categorías sin relación con el GBP
```

### §11.5 Regla final

```text
Cada categoría adicional se consolida o se convierte en página, pero nunca se duplica.
```

## §12 Main City

### §12.1 Explicación

La Main City es la ciudad que genera la arquitectura base. Es la unidad local principal del sistema simplificado.

### §12.2 Patrón o fórmula

```text
Main City = /city/ + /category/city/service/
```

### §12.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Madrid
```

### §12.4 Ejemplos incorrectos

```text
- Almagro como Main City si el GBP y el NAP están en Madrid
- Meter cinco ciudades como base
- Cambiar la Main City según la página
```

### §12.5 Regla final

```text
La base se construye sobre una sola Main City.
```

## §13 Physical Location City

### §13.1 Explicación

La ciudad de ubicación física evita falsas señales. Si no hay oficina en un área, no se debe decir que la hay.

### §13.2 Patrón o fórmula

```text
Physical Location City = ciudad de presencia real
```

### §13.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Madrid
```

### §13.4 Ejemplos incorrectos

```text
- Nuestra oficina en Almagro si no existe
- Visit our Chamberí storefront si no existe
- Schema con address falsa
```

### §13.5 Regla final

```text
Nunca se inventa ubicación física.
```

## §14 Servicios principales

### §14.1 Explicación

Los core services son los servicios principales que generan Service Overview Pages y Páginas de servicio en la Main City.

### §14.2 Patrón o fórmula

```text
S = número de core services
```

### §14.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente, Apertura de puertas, Cambio de cerraduras, Cambio de bombines, Instalación de cerraduras de seguridad
```

### §14.4 Ejemplos incorrectos

```text
- Meter servicios irrelevantes
- Crear servicios que no se ofrecen
- Agrupar todos los servicios en una única página
```

### §14.5 Regla final

```text
Cada core service importante debe tener página propia.
```

## §15 Local Coverage Areas

### §15.1 Explicación

Son zonas seleccionadas por proximidad al NAP, coherencia GEO y lógica GMB Crush. Incluyen barrios, distritos, municipios cercanos o áreas de servicio. Se clasifican en Direct (salen del ancla física) y Candidate (requieren validación GEO). No generan URLs por defecto.

### §15.2 Patrón o fórmula

```text
Local Coverage Areas = contenido + FAQs + schema areaServed
```

### §15.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Almagro, Chamberí, Salamanca, Retiro
```

### §15.4 Ejemplos incorrectos

```text
- Crear /almagro/ por defecto
- Usar áreas donde no se atiende
- Listar 40 zonas sin naturalidad
```

### §15.5 Regla final

```text
Las áreas de cobertura refuerzan el contenido; no crean páginas automáticamente.
```

## §16 Approved Expansion Areas

### §16.1 Explicación

Son áreas que sí pueden generar URLs propias, pero solo si se aprueban por demanda, competencia o valor comercial.

### §16.2 Patrón o fórmula

```text
Approved Expansion Area → optional URLs
```

### §16.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
None in Phase 1
```

### §16.4 Ejemplos incorrectos

```text
- Aprobar todas las áreas de cobertura
- Crear una capa de expansión sin contenido único
- Confundir cobertura con arquitectura
```

### §16.5 Regla final

```text
Solo las áreas aprobadas generan URLs propias.
```

## §17 Preferred CTA

### §17.1 Explicación

El CTA debe ser coherente con el tipo de negocio y el servicio.

### §17.2 Patrón o fórmula

```text
CTA = llamada, reserva, presupuesto o contacto
```

### §17.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Llamar ahora
```

### §17.4 Ejemplos incorrectos

```text
- Usar un CTA distinto en cada página sin criterio
- No tener CTA
- CTA genérico sin ciudad ni servicio
```

### §17.5 Regla final

```text
Cada página debe tener un CTA claro.
```

## §18 Trust Signals

### §18.1 Explicación

Las señales de confianza ayudan al usuario, a Google y a sistemas de IA a validar autoridad.

### §18.2 Patrón o fórmula

```text
Reviews + years + certifications + guarantees
```

### §18.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
10+ años de experiencia, reseñas iniciales pendientes tras crear el GBP, técnicos cerrajeros cualificados, servicio móvil en el mismo día, garantía de trabajo
```

### §18.4 Ejemplos incorrectos

```text
- Afirmaciones sin base
- Reviews inventadas
- Badges falsos
```

### §18.5 Regla final

```text
Los trust signals deben ser reales y reutilizables.
```

## §19 NAP completo y rastreable — Regla operativa 1

### §19.1 Explicación

El intake no puede avanzar si el NAP está incompleto, escrito de varias formas o desconectado del GBP. El nombre, dirección y teléfono son la base de la entidad local; si cambian entre homepage, footer, schema, contacto o GBP, el sistema empieza con una señal débil. Esta regla convierte el NAP en un dato canónico que después se reutiliza en schema, homepage, contact page y bloques de confianza.

### §19.2 Patrón o fórmula

```text
NAP único → versión canónica → reutilización en web → validación en QA
```

### §19.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa un único NAP: Cerrajeros Madrid 24h, Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid, +34 600 000 000. Esa misma versión se usa en homepage, footer, contact page y schema.
```

### §19.4 Ejemplos incorrectos

```text
- Usar Cerrajeros Madrid 24h LLC en schema y Cerrajeros Madrid 24h en homepage
- Cambiar el teléfono entre footer y página de contacto
- Omitir la dirección mientras se declara una ubicación física
```

### §19.5 Regla final

```text
El NAP debe quedar definido una sola vez y reutilizarse sin variaciones.
```

## §20 Planned Primary GBP Category validada — Regla operativa 2

### §20.1 Explicación

La categoría principal del GBP define el eje semántico del sistema. En el intake debe quedar claro si la categoría realmente describe el negocio y si los servicios principales la soportan. Sin esta validación se pueden crear páginas que no refuerzan la categoría, o peor, una homepage que habla de servicios secundarios mientras el GBP intenta posicionar otra intención.

### §20.2 Patrón o fórmula

```text
Planned Primary GBP Category → servicios core relacionados → homepage + service pages alineadas
```

### §20.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h declara Planned Primary GBP Category: Cerrajero. Sus servicios core son Cerrajero urgente, Apertura de puertas, Cambio de cerraduras, Cambio de bombines y Instalación de cerraduras de seguridad.
```

### §20.4 Ejemplos incorrectos

```text
- Elegir Cerrajero como categoría principal y crear contenido centrado en security cameras
- No diferenciar categoría principal de categorías adicionales
- Crear páginas para servicios no relacionados con la categoría GBP
```

### §20.5 Regla final

```text
La categoría principal GBP debe tener soporte directo en homepage y servicios core.
```

## §21 Categorías adicionales clasificadas — Regla operativa 3

### §21.1 Explicación

Las categorías adicionales no se convierten automáticamente en URLs. Primero se revisa si ya están cubiertas por un servicio principal o si necesitan una página propia. Esto evita duplicar intenciones y crear páginas casi idénticas. El intake debe separar categorías cubiertas de categorías efectivas que sí requieren soporte adicional.

### §21.2 Patrón o fórmula

```text
Additional GBP Category → ¿cubierta por servicio core? → sí: consolidar / no: crear página
```

### §21.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Servicio de cerrajería de urgencia queda cubierto por Cerrajero urgente. Servicio de duplicado de llaves no está cubierto por los servicios core y se marca como categoría adicional que necesita página.
```

### §21.4 Ejemplos incorrectos

```text
- Crear /cerrajero/madrid/cerrajero-urgente/ y /cerrajero/madrid/cerrajero-urgente/
- Ignorar Servicio de duplicado de llaves aunque esté en el GBP
- Tratar todas las categorías adicionales como servicios nuevos sin revisión
```

### §21.5 Regla final

```text
Cada categoría adicional debe clasificarse antes de entrar en la arquitectura.
```

## §22 Main City separada de cobertura local — Regla operativa 4

### §22.1 Explicación

La Main City es la ciudad que genera arquitectura base. Las Local Coverage Areas son zonas seleccionadas por proximidad y coherencia GEO que enriquecen contenido, pero no generan URLs por defecto. Si se mezclan ambas cosas, el sistema vuelve a la confusión de target cities, secondary cities y páginas innecesarias.

### §22.2 Patrón o fórmula

```text
Main City = URLs base | Local Coverage Areas = contenido y areaServed | Expansion = URLs opcionales
```

### §22.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h usa Madrid como Main City. Almagro, Chamberí, Salamanca y Retiro se registran como Local Coverage Areas para menciones de cobertura, sin crear URLs en fase base.
```

### §22.4 Ejemplos incorrectos

```text
- Crear GeoHubs para todas las Local Coverage Areas en el intake base
- Usar Almagro como Main City si el GBP y la entidad están en Madrid
- No registrar zonas reales de cobertura aunque se atiendan clientes allí
```

### §22.5 Regla final

```text
Una sola Main City crea la base; las áreas de cobertura no crean URLs salvo aprobación.
```

## §23 Servicios core normalizados — Regla operativa 5

### §23.1 Explicación

Los servicios core son los que generan Service Overview Pages y Páginas de servicio en la Main City. Deben estar escritos con nombres claros, slugs limpios y valor comercial real. Si se meten microvariantes desde el intake, la fórmula se infla y aparecen páginas finas o canibalizadas.

### §23.2 Patrón o fórmula

```text
Servicio core → slug aprobado → página general → página Main City
```

### §23.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajero urgente usa el slug cerrajero-urgente y genera /cerrajero/cerrajero-urgente/ y /cerrajero/madrid/cerrajero-urgente/.
```

### §23.4 Ejemplos incorrectos

```text
- Crear servicios separados para urgente cerrajero, urgente cerrajero y fast cerrajero
- Usar slugs diferentes para el mismo servicio
- Añadir servicios que el negocio no ofrece realmente
```

### §23.5 Regla final

```text
Solo los servicios core reales entran en la fórmula base.
```

## §24 Ubicación física sin falsas promesas — Regla operativa 6

### §24.1 Explicación

El intake debe indicar la ciudad de ubicación física y si existe atención presencial. Esto controla qué páginas pueden usar LocalBusiness con dirección, mapa o lenguaje de oficina. También evita afirmar oficinas en áreas de cobertura donde el negocio solo presta servicio móvil.

### §24.2 Patrón o fórmula

```text
Physical Location City → lenguaje permitido → schema permitido → QA de ubicación
```

### §24.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h declara ubicación física en Madrid. Las páginas pueden hablar de la ubicación en Madrid, pero no deben decir que existe oficina en Almagro o Chamberí.
```

### §24.4 Ejemplos incorrectos

```text
- Decir “our Almagro office” si no hay oficina allí
- Añadir mapas locales de zonas sin presencia real
- Usar una dirección falsa para ampliar proximidad
```

### §24.5 Regla final

```text
Nunca se debe inventar presencia física para reforzar una zona.
```

## §25 Trust signals reutilizables — Regla operativa 7

### §25.1 Explicación

Las señales de confianza deben recogerse desde el intake porque se reutilizan en homepage, páginas de servicio, GeoHub, CTAs y QA. Años de experiencia, reseñas, certificaciones, garantías y servicio móvil ayudan a sostener autoridad sin inventar contenido.

### §25.2 Patrón o fórmula

```text
Trust signal → página aplicable → bloque de confianza → revisión de veracidad
```

### §25.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h registra 10+ años de experiencia, reseñas iniciales pendientes de recopilar tras crear el GBP, técnicos cerrajeros cualificados y servicio móvil en el mismo día como señales reutilizables.
```

### §25.4 Ejemplos incorrectos

```text
- Inventar certificaciones no verificables
- Usar reseñas sin fuente o número real
- No registrar garantías aunque sean parte clave del servicio
```

### §25.5 Regla final

```text
Toda señal de confianza debe ser real, reutilizable y verificable.
```

## §26 Approved Expansion Areas en blanco por defecto — Regla operativa 8

### §26.1 Explicación

El sistema base no crea páginas para todas las zonas de cobertura. Solo una Local Coverage Area pasa a Approved Expansion Area si hay demanda, oportunidad, valor comercial y capacidad de escribir contenido único. En el intake base, este campo puede estar vacío sin que el sistema quede incompleto.

### §26.2 Patrón o fórmula

```text
Local Coverage Area → evaluación → Approved Expansion Area solo si se justifica
```

### §26.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h deja Approved Expansion Areas en blanco durante Phase 1, aunque menciona Almagro, Chamberí, Salamanca y Retiro dentro del contenido.
```

### §26.4 Ejemplos incorrectos

```text
- Aprobar todas las áreas de cobertura sin análisis
- Crear /almagro/ solo porque Almagro aparece en areaServed
- Confundir cobertura real con arquitectura obligatoria
```

### §26.5 Regla final

```text
La expansión territorial se aprueba; no se asume.
```

## §27 Checklist final del Paso 1

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

## §28 Outputs del Paso 1

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

# §29 Módulo — Interpretación GMB Crush de la dirección física y zonas GEO

Este módulo se añade dentro del **Paso 1 — Intake Form**, justo después de recoger el **Physical Address / NAP** y antes de definir:

```text
Main City
Local Coverage Areas
Approved Expansion Areas
```

La función de este bloque es dejar claro cómo se interpreta una dirección física concreta dentro de la lógica GMB Crush.

---

## §30 Interpretación GMB Crush de la dirección física

A partir de una dirección concreta como:

```text
Rafael Calvo 40, Madrid
```

GMB Crush nos dice que hagamos esto:

| Orden | Qué hacer | Resultado |
|---:|---|---|
| 1 | Usar la dirección como **Physical Address / NAP** | Nombre, dirección, ciudad, teléfono y país quedan como datos base del negocio. El Analysis Framework pide Physical Address y Service Areas como input inicial. |
| 2 | Extraer la **Main City** desde la dirección | Main City = **Madrid**. |
| 3 | Construir la arquitectura sobre la ciudad, no sobre la calle | La unidad base no es "Rafael Calvo", sino **Madrid**. |
| 4 | Crear la homepage como entidad raíz | `/` con H1 tipo `[Brand] + [Primary Service] + Madrid`, NAP visible, servicios core y enlaces internos. |
| 5 | Crear páginas de servicio sin ciudad | `/cerrajero/apertura-puertas/`, `/cerrajero/cerrajero-urgente/`, etc. Estas páginas son pilares temáticos, no páginas locales. |
| 6 | Crear páginas servicio + ciudad | `/cerrajero/madrid/apertura-puertas/`, `/cerrajero/madrid/cerrajero-urgente/`, etc. GMB Crush define este patrón como `/category/city/service/`. |
| 7 | Crear GeoHub de ciudad | `/madrid/`, como contenedor de todos los servicios, categorías y artículos de Madrid. |
| 8 | Usar barrios, zonas cercanas o landmarks solo como señales GEO dentro del contenido | Se pueden mencionar barrios, zonas o landmarks en intro, H2s, FAQs, GeoHub y GeoArticles, pero no generan páginas por defecto. El framework permite "neighborhood coverage" en GeoHub y referencias locales en GeoArticles. |
| 9 | No fingir ubicación física en otras zonas | Puedes decir que el contenido referencia zonas locales, pero no "tenemos oficina en X" si no es verdad. Los GeoArticles indican expresamente no fingir ubicación física. |
| 10 | Usar `areaServed` en schema | En páginas locales, el schema `LocalBusiness` debe incluir `areaServed`, URL, teléfono, email y `sameAs` si existe. |

### §30.1 En una frase

GMB Crush no dice:

```text
Tengo una dirección en Rafael Calvo 40 → creo páginas por barrios automáticamente.
```

Dice:

```text
Tengo una dirección física → fijo NAP y Main City → construyo homepage, servicios, páginas servicio+Madrid, GeoHub Madrid y GeoArticles → uso barrios/zonas como señales GEO dentro del contenido, no como URLs por defecto.
```

### §30.2 Aplicado al ejemplo

```text
Dirección:
Rafael Calvo 40, Madrid

Main City:
Madrid
```

Arquitectura base:

```text
/
/cerrajero/apertura-puertas/
/cerrajero/cerrajero-urgente/
/madrid/
/cerrajero/madrid/apertura-puertas/
/cerrajero/madrid/cerrajero-urgente/
/madrid/cuanto-cuesta-un-cerrajero-urgente/
```

Si luego queremos crear páginas por zona o barrio, eso ya es una **expansión**, no la base GMB Crush.

---

## §31 Qué dice GMB Crush sobre elegir barrios, zonas o landmarks

GMB Crush **no da una fórmula cerrada tipo "elige estos 3 barrios"**.

Lo que sí dice es:

1. **El input inicial debe incluir Physical Address y Service Areas.**

   Es decir, la dirección física y las áreas relevantes son datos base de análisis local.

2. **La arquitectura base se construye con ciudad, no con barrio.**

   La homepage usa:

   ```text
   [Brand] + [Primary Service] + [Main City]
   ```

   Las páginas locales usan:

   ```text
   /category/city/service/
   ```

   Y el GeoHub es:

   ```text
   /city/
   ```

3. **Los barrios, zonas o landmarks se usan dentro del contenido como señales GEO.**

   GMB Crush los menciona en tres sitios:

   ```text
   Location-Based Service Pages:
   opening geo-specific con neighborhood / local issues

   GeoHub Pages:
   neighborhood coverage opcional

   GeoArticles:
   local references, landmarks, neighborhoods
   ```

4. **No se debe fingir ubicación física en esas zonas.**

   GeoArticles dice expresamente que deben enviar señales geográficas sin pretender que el negocio está físicamente ubicado allí si no es verdad.

---

## §32 Entonces, ¿cómo se deciden las zonas?

Según GMB Crush, se deciden así:

| Orden | Criterio | Qué significa |
|---:|---|---|
| 1 | **Dirección física** | Primero extraes la ciudad, barrio, distrito o zona que salen directamente del NAP. |
| 2 | **Main City** | La ciudad de la dirección se convierte en la base de la arquitectura. |
| 3 | **Service Areas / zonas relevantes** | Se identifican zonas que tienen sentido como señales GEO dentro de la ciudad o área principal. |
| 4 | **Neighborhood coverage** | Se usan barrios o zonas en GeoHub, páginas locales y artículos como cobertura semántica. |
| 5 | **Local issues / landmarks** | Se añaden referencias locales reales para dar contexto humano y GEO. |
| 6 | **No URLs automáticas** | Esas zonas no generan páginas por defecto. Solo se mencionan como señales GEO. |

### §32.1 Aplicado a Rafael Calvo 40, Madrid

| Paso | Resultado |
|---|---|
| Dirección física | Rafael Calvo 40, Madrid |
| Main City | Madrid |
| Zonas derivadas directas | Si la dirección está en Almagro / Chamberí, esas zonas son las primeras referencias GEO |
| Zonas cercanas o representativas | Se pueden usar como neighborhood coverage si son coherentes: Salamanca, Retiro, Centro, etc. |
| Uso en arquitectura | No crean URLs por defecto |
| Uso en contenido | Intro local, H2s, FAQs, GeoHub, GeoArticles, schema `areaServed` |

---

## §33 Regla final sobre barrios, zonas y landmarks

GMB Crush no dice:

```text
Crea páginas por barrios.
```

GMB Crush dice:

```text
Usa la dirección física para fijar Main City, crea páginas city+service, y usa barrios, zonas o landmarks como señales GEO dentro del contenido.
```

Y para elegir esas zonas:

```text
Empieza por las zonas derivadas directamente de la dirección física.
Después añade zonas cercanas o relevantes solo si tienen sentido GEO, semántico o competitivo.
No las conviertas en URLs salvo que pasen a una fase de expansión aprobada.
```

---

## §34 Test GMB Crush para saber si una zona tiene sentido

Una zona se puede añadir como señal GEO si cumple **al menos 3 de estos 6 criterios**.

| Criterio | Pregunta | Si la respuesta es sí |
|---|---|---|
| 1. Ancla física | ¿La zona sale directamente de la dirección? | Entra casi seguro |
| 2. Main City | ¿La zona pertenece claramente a la Main City? | Puede usarse como señal GEO |
| 3. Proximidad | ¿Está cerca o conectada al punto físico? | Puede usarse como zona candidata |
| 4. Intención local | ¿La zona ayuda a explicar una necesidad local real del servicio? | Puede aparecer en contenido |
| 5. Demanda o competencia | ¿Hay búsquedas o competidores trabajando esa zona? | Refuerza su inclusión |
| 6. No falsa ubicación | ¿Podemos mencionarla sin decir que tenemos oficina allí? | Es segura para contenido |

Si una zona solo cumple 1 criterio débil, no la metemos.

---

## §35 Regla práctica

### §35.1 Entra directamente

Zonas que salen de la dirección física.

Ejemplo:

```text
Dirección:
Calle Rafael Calvo 40, Barrio Almagro, Distrito Chamberí, Madrid
```

Entonces:

```text
Madrid = Main City
Almagro = zona GEO directa
Chamberí = zona GEO directa
```

Estas son coherentes porque salen del propio ancla físico.

### §35.2 Entra como candidata

Zonas que no salen de la dirección, pero pueden tener sentido por proximidad, búsqueda o competencia.

Ejemplo:

```text
Salamanca
Retiro
Centro
Tetuán
Chamartín
Arganzuela
Moncloa
Prosperidad
```

Estas no deberían añadirse automáticamente. Solo entran si podemos justificar que:

```text
están conectadas geográficamente
o tienen demanda
o aparecen en competencia
o ayudan a explicar contexto local real
```

### §35.3 No entra

Una zona no entra si:

```text
no sale de la dirección
no está conectada a la Main City
no aporta contexto local
no hay búsqueda ni competencia
solo se añade para inflar contenido
obliga a fingir ubicación física
```

Ejemplo incorrecto:

```text
"Cerrajero en Valencia" dentro de una página de Madrid.
```

Ejemplo también débil:

```text
Meter 20 barrios de Madrid en todas las páginas sin relación concreta.
```

---

## §36 Cómo se usa una zona aprobada

Una zona aprobada primero se usa como **señal GEO**, no como URL.

### §36.1 Correcto

```text
/cerrajero/madrid/cerrajero-urgente/
```

Dentro del contenido:

```text
Atendemos situaciones habituales de cerrajería urgente en Madrid, especialmente en zonas próximas al eje Almagro-Chamberí y otras áreas urbanas donde son frecuentes los problemas de acceso en viviendas, oficinas y comunidades.
```

### §36.2 Incorrecto

```text
/cerrajero/almagro/cerrajero-urgente/
```

si Almagro no está aprobada como Expansion Area.

---

## §37 Cuándo una zona pasa a página propia

Una zona solo puede pasar de "señal GEO" a "URL propia" si cumple criterios más fuertes:

| Criterio | Necesario para página propia |
|---|---|
| Está geográficamente clara | Sí |
| Tiene demanda de búsqueda | Muy recomendable |
| Competidores la trabajan | Muy recomendable |
| Puede tener contenido único | Sí |
| No duplica la página de Madrid | Sí |
| No finge oficina física | Obligatorio |
| Tiene valor comercial | Sí |

Ejemplo:

```text
/madrid/chamberi/
```

o:

```text
/cerrajero/madrid/chamberi/cerrajero-urgente/
```

solo si Chamberí pasa a **Approved Expansion Area**.

---

## §38 Aplicado a Rafael Calvo 40, Madrid

| Zona | Decisión correcta |
|---|---|
| Madrid | Crea arquitectura base |
| Almagro | Señal GEO directa |
| Chamberí | Señal GEO directa |
| Salamanca | Candidata, validar proximidad/demanda/competencia |
| Retiro | Candidata, validar antes de usar fuerte |
| Centro | Candidata, no automática |
| Tetuán | Candidata, no automática |
| Chamartín | Candidata, no automática |
| Arganzuela | Candidata, no automática |

---

## §39 Fórmula final

```text
Dirección física → Main City → zonas directas → zonas candidatas → validación → uso en contenido → expansión solo si procede
```

En una frase:

```text
Una zona tiene sentido GEO si sale del ancla física o ayuda a reforzar la relevancia local de la Main City sin crear una falsa ubicación, y si además puede justificarse por proximidad, demanda, competencia o contexto real del servicio.
```

---

# §40 Fuentes internas GMB Crush usadas

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework


> **Nota importante — GBP Services ≠ core services del sitio web:**
> Las categorías adicionales del Google Business Profile (como "Servicio de duplicado de llaves") pueden tener página propia en la web, pero **no forman parte de `core_services`**. La variable `core_services` define los 5 servicios principales que generan Service Overview, LBS y GeoArticles. Las Additional Categories con página propia se gestionan por separado mediante `additional_categories_with_page`. No mezclar ambos conjuntos.
