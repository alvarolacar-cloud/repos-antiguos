Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# Paso 14 — GBP Creation & Website Alignment

## Índice corto

**Paso 14 — GBP Creation & Website Alignment**

## Objetivo del Paso 14

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: crear y alinear el Google Business Profile después de haber construido la web base.
En esta versión del sistema, el GBP no existe al principio.
Eso significa que los pasos 1–13 trabajan con una categoría principal planificada, categorías adicionales planificadas, una Main City, Local Coverage Areas y una arquitectura web preparada para soportar la futura entidad GBP.
El Paso 14 convierte ese plan en una entidad real dentro de Google.
La web se construye primero para que el GBP tenga una fuente de verdad clara.
El perfil no debe crearse sobre una web vacía, genérica o sin páginas locales.
El perfil debe apuntar a una homepage que explique quién es el negocio, qué servicios ofrece, dónde opera y cómo contactar.
También debe estar respaldado por Service Overview Pages, páginas servicio + ciudad, un GeoHub de la Main City, páginas de categoría adicional si aplican y GeoArticles de soporte.
El objetivo no es solo crear un perfil.
El objetivo es que el GBP quede sincronizado con la arquitectura web.
Si el GBP se crea sin esta sincronización, aparecen problemas de categoría, NAP, servicios, cobertura local y señales contradictorias.
También se pueden crear riesgos de confianza si la web afirma reseñas, mapas o enlaces de GBP antes de que existan.
Este paso evita inventar una GBP URL, reseñas de Google, presencia física en zonas no reales o categorías que no están soportadas por contenido.
El Paso 14 también sirve para actualizar la web después de crear el perfil.
Una vez creado y verificado el GBP, se actualiza el schema `sameAs`, los bloques de confianza, la página de contacto, la homepage y cualquier página local que deba enlazar o reflejar el perfil.
Este paso debe ejecutarse después de publicar la web base.
No sustituye a los pasos anteriores.
Los pasos anteriores preparan la entidad web.
Este paso crea la entidad GBP y la conecta con la web.
La prioridad es mantener consistencia entre nombre, dirección, teléfono, categoría, servicios, horarios, áreas de cobertura y URLs.
También se debe preparar la estrategia de fotos, servicios, preguntas y respuestas, reseñas y tracking.
El GBP no debe usar categorías que la web no puede respaldar.
La web no debe reclamar señales de GBP que todavía no existen.
La sincronización final debe dejar claro qué se creó, qué se verificó, qué se actualizó y qué queda pendiente.
Error que previene: crear un GBP sin web preparada.
Error que previene: usar una categoría principal sin soporte real en la web.
Error que previene: añadir categorías adicionales sin páginas o secciones de soporte.
Error que previene: insertar una GBP URL falsa o prematura en schema.
Error que previene: afirmar reseñas de Google antes de tener reseñas reales.
Error que previene: publicar dirección, áreas o mapas contradictorios.
Error que previene: crear un GBP duplicado o con nombre sobreoptimizado.
Error que previene: conectar el GBP a una URL incorrecta.
Error que previene: olvidar actualizar la web después de crear el GBP.

## Lo que tienes que rellenar

```text
Business Name:

Website URL:

Canonical Domain:

GBP Status:
Not Created / Created / Verified / Pending Verification / Suspended

GBP Creation Timing:
After website launch

Final NAP:
- Business Name:
- Street Address:
- Neighborhood / District:
- City:
- State / Province:
- ZIP / Postal Code:
- Country:
- Phone:
- Email:

Business Model:
Option A: Storefront
Option B: Service Area Business
Option C: Hybrid

Physical Address:

Should address be displayed publicly?
Yes / No / Depends on business model

Main City:

Direct Local Coverage Areas:
1.
2.

Candidate Local Coverage Areas:
1.
2.
3.
4.
5.
6.
7.
8.

Approved Expansion Areas:
1.
2.
3.

Confirmed Primary GBP Category:

Why this primary category?

Confirmed Additional GBP Categories:
1.
2.
3.

Categories rejected or avoided:
1.
2.
3.

GBP Services to Add:
1.
2.
3.
4.
5.

Website URL to connect:

Contact / Appointment URL:

Opening Hours:
Option A: Standard hours
Option B: 24 hours
Option C: Emergency hours + regular hours

GBP Business Description Draft:

Photos Needed:
- Logo:
- Cover photo:
- Exterior photo:
- Interior photo:
- Team photo:
- Vehicle photo:
- Work examples:
- Local context photo:

Google Posts Plan:
1.
2.
3.

Q&A Plan:
1.
2.
3.

Review Strategy:

GBP UTM URL:

Schema Updates Needed:
Yes / No

Website Pages to Update After GBP Creation:
1.
2.
3.
4.
5.

Tracking Setup:
- GMB Crush geo-grid:
- Google Search Console:
- GA4:
- GBP performance:
```

## Ejemplo rellenado

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

Final NAP:
- Business Name: Cerrajeros Madrid 24h
- Street Address: Calle Rafael Calvo 12
- Neighborhood / District: Barrio Almagro, Distrito Chamberí
- City: Madrid
- State / Province: Comunidad de Madrid
- ZIP / Postal Code: 28010
- Country: España
- Phone: +34 600 000 000
- Email: info@cerrajerosmadrid24h.com

Business Model:
Service Area Business

Physical Address:
Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid

Should address be displayed publicly?
Depends on business model and eligibility.

Main City:
Madrid

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

Approved Expansion Areas:
None in Phase 1.

Confirmed Primary GBP Category:
Cerrajero

Why this primary category?
Representa la intención principal del negocio: servicios de cerrajería en Madrid, incluyendo urgencias, apertura de puertas, cambio de cerraduras y servicios relacionados.

Confirmed Additional GBP Categories:
1. Servicio de cerrajería de urgencia
2. Servicio de duplicado de llaves

Categories rejected or avoided:
1. Tienda de llaves si no existe tienda física abierta al público
2. Servicio de seguridad si no se ofrecen sistemas de seguridad reales
3. Reparación de puertas si no es un servicio core

GBP Services to Add:
1. Cerrajero urgente
2. Apertura de puertas
3. Cambio de cerraduras
4. Cambio de bombines
5. Instalación de cerraduras de seguridad
6. Duplicado de llaves

Website URL to connect:
https://www.cerrajerosmadrid24h.com/

Contact / Appointment URL:
https://www.cerrajerosmadrid24h.com/contacto/

Opening Hours:
24 horas

GBP Business Description Draft:
Cerrajeros Madrid 24h ofrece servicios de cerrajería en Madrid, incluyendo cerrajero urgente, apertura de puertas, cambio de cerraduras, cambio de bombines, duplicado de llaves e instalación de cerraduras de seguridad. Atendemos viviendas, locales, oficinas y comunidades en Madrid y zonas de cobertura local.

Photos Needed:
- Logo: Sí
- Cover photo: Sí
- Exterior photo: Solo si procede según modelo de negocio
- Interior photo: No prioritario si es service area business
- Team photo: Sí
- Vehicle photo: Sí
- Work examples: Sí
- Local context photo: Sí, sin fingir oficina física en zonas de cobertura

Google Posts Plan:
1. Presentación del negocio y servicios de cerrajería en Madrid
2. Servicio de cerrajero urgente 24h
3. Cambio de cerraduras y bombines en Madrid

Q&A Plan:
1. ¿Ofrecéis cerrajero urgente en Madrid?
2. ¿Atendéis en Chamberí, Salamanca y Retiro?
3. ¿Podéis hacer apertura de puertas sin dañar la cerradura?

Review Strategy:
Solicitar reseñas a clientes reales después de servicios completados, sin incentivos prohibidos y sin reseñas inventadas.

GBP UTM URL:
https://www.cerrajerosmadrid24h.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp

Schema Updates Needed:
Yes

Website Pages to Update After GBP Creation:
1. /
2. /madrid/
3. /cerrajero/madrid/cerrajero-urgente/
4. /cerrajero/madrid/apertura-puertas/
5. /contacto/

Tracking Setup:
- GMB Crush geo-grid: Configurar después de verificación
- Google Search Console: Activo
- GA4: Activo
- GBP performance: Revisar tras creación
```

# Cuerpo operativo del Paso 14

> **Definición operativa — Local Coverage Areas:** zonas, barrios, distritos o landmarks seleccionados desde la dirección física, la Main City, la coherencia GEO, la proximidad, los datos de búsqueda, los competidores y la lógica GMB Crush para reforzar relevancia local dentro del contenido, schema y futuros análisis. No son automáticamente URLs. No son automáticamente páginas propias. No son necesariamente oficinas físicas. Las Local Coverage Areas se usan primero como señales GEO dentro del contenido. No generan URLs por defecto.

## Regla operativa — Crear el GBP después de publicar la web base

### Explicación

El GBP debe crearse cuando la web ya tenga una entidad mínima sólida. La homepage, la página de contacto, el GeoHub de la Main City y las páginas comerciales principales deben existir antes de conectar el perfil. Esto permite que Google encuentre una web coherente, con NAP, servicios, contenido local, schema y arquitectura interna. Crear el perfil antes de tener web puede funcionar, pero en este sistema web-first no es la opción preferida.

### Patrón o fórmula

```text
Website base published → GBP creation → GBP verification → website synchronization
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Antes de crear el GBP:
- / publicada
- /contacto/ publicada
- /madrid/ publicada
- /cerrajero/madrid/cerrajero-urgente/ publicada
- /cerrajero/madrid/apertura-puertas/ publicada
```

### Ejemplos incorrectos

```text
- Crear el GBP con una web sin páginas de servicio.
- Crear el GBP con una homepage genérica que no menciona Madrid.
- Crear el GBP y después decidir qué categoría o servicios tendrá la web.
```

### Regla final

```text
El GBP debe apuntar a una web que ya explique quién eres, qué haces y dónde operas.
```

## Regla operativa — Convertir categorías planificadas en categorías confirmadas

### Explicación

Durante los pasos 1–13 se trabaja con Planned Primary GBP Category y Planned Additional GBP Categories. En el Paso 14 esas categorías se revisan y se convierten en categorías confirmadas. Si una categoría no está disponible, no representa el negocio o no tiene soporte en la web, no debe usarse.

### Patrón o fórmula

```text
Planned Category → availability check → relevance check → website support check → Confirmed GBP Category
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Planned Primary GBP Category:
Cerrajero

Confirmed Primary GBP Category:
Cerrajero

Motivo:
La web tiene homepage, servicios core, páginas en Madrid y contenido de soporte para cerrajería.
```

### Ejemplos incorrectos

```text
- Confirmar una categoría porque parece más amplia pero no representa el negocio.
- Añadir categorías adicionales sin soporte web.
- Elegir una categoría por volumen de búsqueda aunque no coincida con los servicios reales.
```

### Regla final

```text
La categoría confirmada del GBP debe estar soportada por la intención real del negocio y por la arquitectura web.
```

## Regla operativa — Validar el NAP final antes de crear el perfil

### Explicación

El NAP final debe coincidir en la web, schema, página de contacto, footer y GBP. Si el GBP se crea con un teléfono o dirección distinta, la entidad queda debilitada. La dirección debe tratarse con cuidado si el negocio es service area business. No se debe publicar una dirección falsa ni usar una ubicación donde no exista elegibilidad real.

### Patrón o fórmula

```text
Final NAP = Website NAP = Schema NAP = Contact Page NAP = GBP NAP
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Name:
Cerrajeros Madrid 24h

Address:
Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid

Phone:
Email:
+34 600 000 000
```

### Ejemplos incorrectos

```text
- Usar un teléfono diferente en el GBP.
- Escribir “Cerrajeros Madrid 24h Chamberí Urgente Barato” como nombre.
- Usar una dirección donde el negocio no puede recibir verificación o no opera realmente.
```

### Regla final

```text
El NAP del GBP no debe contradecir el NAP de la web.
```

## Regla operativa — Elegir el modelo de negocio correcto

### Explicación

El modelo del GBP afecta a dirección visible, áreas de servicio, fotos y expectativas del usuario. Un cerrajero móvil suele funcionar como service area business o híbrido si también tiene atención física real. El modelo no debe elegirse por SEO, sino por realidad operativa.

### Patrón o fórmula

```text
Storefront = clientes visitan la ubicación
Service Area Business = el negocio atiende en ubicaciones del cliente
Hybrid = ambas situaciones son reales
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Business Model:
Service Area Business

Motivo:
El servicio se presta principalmente en viviendas, locales, oficinas y comunidades de clientes en Madrid.
```

### Ejemplos incorrectos

```text
- Usar Storefront si no hay atención al público.
- Mostrar una dirección solo para parecer más local.
- Crear varias fichas para zonas de cobertura sin sedes reales.
```

### Regla final

```text
El modelo de GBP debe reflejar cómo el negocio atiende realmente a sus clientes.
```

## Regla operativa — Conectar el GBP a la URL correcta

### Explicación

El GBP debe apuntar a la URL que mejor representa la entidad. Para la mayoría de negocios locales, esa URL será la homepage. Si el negocio es muy específico y la homepage ya actúa como Root Entity Anchor, se conecta al dominio raíz. No se debe conectar a una página débil, temporal, sin NAP o sin contenido local.

### Patrón o fórmula

```text
GBP Website URL = homepage or strongest local entity page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GBP Website URL:
https://www.cerrajerosmadrid24h.com/
```

### Ejemplos incorrectos

```text
- Conectar a /blog/.
- Conectar a una URL con parámetros sin control.
- Conectar a una página de servicio que no representa toda la entidad.
```

### Regla final

```text
El GBP debe enlazar a la URL que mejor resume la entidad local.
```

## Regla operativa — Usar UTM sin romper canonical ni NAP

### Explicación

El tracking UTM permite medir clics desde GBP, pero no debe sustituir la URL canónica del sitio. La URL con UTM se puede usar en el campo website del GBP si se controla correctamente, pero las páginas de la web siguen usando canonicals limpios.

### Patrón o fórmula

```text
Canonical URL = https://www.domain.com/
GBP tracked URL = https://www.domain.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GBP UTM URL:
https://www.cerrajerosmadrid24h.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp
```

### Ejemplos incorrectos

```text
- Usar parámetros distintos cada mes sin control.
- Cambiar canonical a la URL con UTM.
- Usar una URL acortada que oculta el dominio.
```

### Regla final

```text
El tracking GBP debe medir sin alterar la arquitectura canónica de la web.
```

## Regla operativa — Añadir servicios del GBP alineados con páginas web

### Explicación

Los servicios del GBP deben reflejar los core services de la web. Si el GBP lista “Cambio de cerraduras”, la web debe tener una Service Overview Page o una página local que lo soporte. Si la web tiene “Apertura de puertas en Madrid”, ese servicio debe estar representado dentro del perfil.

### Patrón o fórmula

```text
GBP Service → supported by Service Overview or Main City Service Page
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GBP Service:
Apertura de puertas

Páginas de soporte:
/cerrajero/apertura-puertas/
/cerrajero/madrid/apertura-puertas/
```

### Ejemplos incorrectos

```text
- Añadir servicios al GBP que la web no menciona.
- Añadir servicios que el negocio no ofrece.
- Usar nombres de servicios totalmente diferentes entre web y GBP.
```

### Regla final

```text
Los servicios del GBP deben tener soporte web y consistencia semántica.
```

## Regla operativa — Usar categorías adicionales solo si tienen soporte real

### Explicación

Las categorías adicionales aumentan profundidad de entidad, pero también pueden generar ruido si no están soportadas. Una categoría adicional debe tener un servicio real, intención comercial y contenido de soporte. Si no hay soporte, se marca como pendiente o se evita.

### Patrón o fórmula

```text
Additional Category = real service + website support + local relevance
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Additional GBP Category:
Servicio de duplicado de llaves

Página de soporte:
/cerrajero/madrid/duplicado-llaves/
```

### Ejemplos incorrectos

```text
- Añadir una categoría por ranking sin página de soporte.
- Duplicar una categoría adicional que ya está cubierta por un servicio core sin diferenciar intención.
```

### Regla final

```text
Cada categoría adicional confirmada debe estar respaldada por contenido web real.
```

## Regla operativa — No reclamar reseñas antes de tenerlas

### Explicación

Antes de crear el GBP, la web no debe afirmar “250 reseñas en Google” ni mostrar estrellas que no existen. Después de crear el perfil, se puede iniciar una estrategia de reseñas reales. Las reseñas deben proceder de clientes reales y no deben inventarse.

### Patrón o fórmula

```text
Before GBP = trust signals without Google review claims
After GBP = real review collection and review blocks
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Antes del GBP:
- Servicio 24h
- Técnicos cualificados
- Experiencia en cerrajería
- Cobertura local en Madrid

Después del GBP:
- Añadir reseñas reales cuando existan
```

### Ejemplos incorrectos

```text
- Mostrar estrellas de Google sin perfil creado.
- Inventar reseñas.
- Copiar reseñas de otros negocios.
```

### Regla final

```text
Las reseñas del GBP solo se usan cuando existen y son reales.
```

## Regla operativa — Preparar fotos antes de crear el GBP

### Explicación

Las fotos del GBP ayudan a reforzar confianza, identidad y contexto operativo. Deben representar el negocio real: logo, vehículo, herramientas, trabajos, equipo y contexto local. No deben fingir oficina física si el negocio es service area business.

### Patrón o fórmula

```text
GBP Photo Pack = logo + cover + team/vehicle/tools/work examples + local context
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Fotos:
- Logo de Cerrajeros Madrid 24h
- Herramientas de cerrajería
- Cerradura instalada
- Vehículo de servicio
- Equipo técnico si aplica
```

### Ejemplos incorrectos

```text
- Fotos stock que no representan el negocio.
- Fotos de una oficina que no existe.
- Fotos de cerraduras o equipos que no se usan.
```

### Regla final

```text
Las fotos del GBP deben reforzar la entidad real, no fabricar una identidad falsa.
```

## Regla operativa — Redactar una descripción GBP alineada con la web

### Explicación

La descripción del GBP debe resumir servicios, ciudad, cobertura local y propuesta de valor sin keyword stuffing. Debe reflejar lo que ya aparece en la homepage y páginas core. No debe incluir afirmaciones falsas de ubicación, reseñas o certificaciones.

### Patrón o fórmula

```text
Description = brand + primary category + Main City + core services + local coverage + CTA soft
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h ofrece servicios de cerrajería en Madrid, incluyendo cerrajero urgente, apertura de puertas, cambio de cerraduras, cambio de bombines, duplicado de llaves e instalación de cerraduras de seguridad.
```

### Ejemplos incorrectos

```text
- Repetir “cerrajero Madrid barato 24h” de forma artificial.
- Afirmar sedes en barrios donde no existen.
- Prometer tiempos garantizados si no están operativamente confirmados.
```

### Regla final

```text
La descripción GBP debe ser coherente con la homepage y no sobreoptimizada.
```

## Regla operativa — Definir horarios sin contradicción

### Explicación

Si el negocio se presenta como 24h, el GBP, la web y las páginas de servicio deben reflejarlo de forma consistente. Si hay atención de urgencia 24h pero administración en horario limitado, debe explicarse correctamente. La contradicción de horarios crea mala experiencia y señales débiles.

### Patrón o fórmula

```text
Website Hours = GBP Hours = Service Promise
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Opening Hours:
24 horas, todos los días

Páginas de servicio:
Cerrajero urgente 24h en Madrid
```

### Ejemplos incorrectos

```text
- Web dice 24h y GBP dice 9:00–18:00.
- GBP dice abierto siempre pero nadie responde fuera de horario.
- Usar “24h” solo como keyword sin capacidad operativa.
```

### Regla final

```text
Los horarios del GBP deben coincidir con la promesa real de servicio.
```

## Regla operativa — Alinear Local Coverage Areas con el GBP

### Explicación

Las Local Coverage Areas se usan en la web como cobertura real y señales GEO. En el GBP se deben configurar de forma coherente si el modelo lo permite. No se debe añadir cobertura en zonas donde el negocio no atiende realmente, ni convertir automáticamente cada zona en una ficha o URL.

### Patrón o fórmula

```text
Local Coverage Areas in website → GBP service areas if accurate → no automatic URLs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Local Coverage Areas:
Almagro, Chamberí, Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela
```

### Ejemplos incorrectos

```text
- Añadir toda la Comunidad de Madrid si no hay capacidad real.
- Crear perfiles duplicados para cada barrio.
- Usar Local Coverage Areas como si fueran sedes físicas.
```

### Regla final

```text
Las áreas del GBP deben representar cobertura real, no expansión artificial.
```

## Regla operativa — Actualizar schema después de crear el GBP

### Explicación

Antes del GBP, el schema puede incluir Organization, WebSite, LocalBusiness, Service y areaServed si los datos son reales. Pero no debe incluir un enlace GBP inexistente. Después de crear y verificar el perfil, se actualiza `sameAs` con la URL real del GBP y se revisa NAP.

### Patrón o fórmula

```text
Before Paso 14:
sameAs = social/listings real only

After Paso 14:
sameAs += GBP URL
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Después de crear GBP:
"sameAs": [
  "https://www.google.com/maps?cid=REAL_CID_OR_GBP_URL"
]
```

### Ejemplos incorrectos

```text
- Inventar una GBP URL.
- Añadir un enlace de Google Maps que no corresponde al negocio.
- No actualizar schema después de crear el GBP.
```

### Regla final

```text
El enlace GBP en schema solo se añade cuando el perfil existe y es verificable.
```

## Regla operativa — Actualizar la homepage después de verificar el perfil

### Explicación

La homepage es el Root Entity Anchor. Después de crear el GBP, debe reflejar señales reales: enlace al perfil, reseñas si ya existen, mapa si procede, NAP sincronizado y trust blocks actualizados. Antes de ese momento no debe fingir señales de Google.

### Patrón o fórmula

```text
Verified GBP → homepage trust section update
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Actualizar homepage:
- Añadir enlace al GBP
- Añadir reseñas reales cuando existan
- Revisar NAP
- Añadir mapa si procede
```

### Ejemplos incorrectos

```text
- Añadir un mapa de una ubicación incorrecta.
- Mostrar reseñas antes de recopilarlas.
- Dejar la homepage sin actualizar después de crear el GBP.
```

### Regla final

```text
La homepage debe sincronizarse con el GBP después de verificarlo.
```

## Regla operativa — Actualizar la página de contacto

### Explicación

La página de contacto debe ser la fuente más clara para NAP, teléfono, dirección, modelo de servicio y URLs de contacto. Después de crear el GBP, debe reflejar el mismo NAP y puede incluir mapa o enlace al perfil si procede.

### Patrón o fórmula

```text
Contact Page = final NAP + contact options + verified GBP reference
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
/contacto/
- Teléfono clicable
- Dirección consistente
- Horario 24h si aplica
- Áreas de cobertura
- Enlace al GBP después de verificación
```

### Ejemplos incorrectos

```text
- Página de contacto sin dirección ni teléfono.
- Teléfono distinto al del GBP.
- Mapa de una ubicación no relacionada.
```

### Regla final

```text
La página de contacto debe coincidir con el GBP y con el schema.
```

## Regla operativa — Preparar Q&A del GBP con preguntas reales

### Explicación

Las preguntas y respuestas ayudan a resolver dudas locales y comerciales. Deben estar alineadas con servicios reales y con el contenido de la web. No deben ser spam ni repetir keywords de forma artificial.

### Patrón o fórmula

```text
Q&A = real local objection + clear answer + service alignment
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Pregunta:
¿Atendéis cerrajero urgente en Chamberí?

Respuesta:
Sí, atendemos servicios de cerrajería urgente en Madrid y zonas de cobertura local como Chamberí, Almagro, Salamanca y Centro, según disponibilidad.
```

### Ejemplos incorrectos

```text
- Crear preguntas falsas solo para repetir keywords.
- Responder con promesas no garantizadas.
- Mencionar zonas donde no se atiende.
```

### Regla final

```text
El Q&A del GBP debe reforzar servicio real, cobertura real y confianza.
```

## Regla operativa — Planificar Google Posts conectados con páginas web

### Explicación

Los posts del GBP pueden reforzar servicios y páginas recién publicadas. No deben ser contenido aislado. Cada post importante debe poder apuntar a una página de servicio, homepage o página de contacto.

### Patrón o fórmula

```text
GBP Post → relevant website page → conversion action
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Post:
Cerrajero urgente en Madrid

URL:
https://www.cerrajerosmadrid24h.com/cerrajero/madrid/cerrajero-urgente/
```

### Ejemplos incorrectos

```text
- Publicar posts sin enlace ni objetivo.
- Repetir el mismo post cada semana sin variación.
- Crear posts sobre servicios que no tienen página de soporte.
```

### Regla final

```text
Los posts del GBP deben apoyar páginas web reales y objetivos comerciales claros.
```

## Regla operativa — Evitar duplicados de GBP

### Explicación

Crear perfiles duplicados puede causar problemas de visibilidad, confianza y suspensión. Antes de crear el nuevo GBP se debe comprobar que no exista un perfil previo para el mismo negocio, dirección o teléfono. Si existe, hay que gestionarlo antes de crear otro.

### Patrón o fórmula

```text
Check existing GBP → claim/update if exists → create only if no valid profile exists
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Antes de crear:
- Buscar el nombre del negocio
- Buscar la dirección
- Buscar el teléfono
- Comprobar si hay ficha antigua o duplicada
```

### Ejemplos incorrectos

```text
- Crear otra ficha porque no se recuerda el acceso.
- Crear fichas por barrio.
- Crear fichas por cada servicio.
```

### Regla final

```text
Un negocio local debe evitar perfiles duplicados salvo que existan ubicaciones reales y elegibles.
```

## Regla operativa — No usar keyword stuffing en el nombre del GBP

### Explicación

El nombre del GBP debe reflejar el nombre real del negocio. Añadir palabras clave, ciudades, “barato”, “mejor” o “24h” solo es correcto si forman parte real del nombre comercial. El sistema debe proteger la entidad, no sobreoptimizarla.

### Patrón o fórmula

```text
GBP Name = real business name
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Cerrajeros Madrid 24h
```

### Ejemplos incorrectos

```text
- Cerrajeros Madrid 24h Baratos Urgentes Chamberí
- Cerrajero Urgente Madrid Apertura Puertas 24 Horas
- Cerrajeros Madrid 24h Salamanca Retiro Chamberí
```

### Regla final

```text
El nombre del GBP debe ser el nombre real del negocio, no una cadena de keywords.
```

## Regla operativa — Sincronizar páginas de categoría adicional

### Explicación

Si en el GBP se confirma una categoría adicional, la web debe tener soporte. Si el soporte ya existe, se marca como sincronizado. Si no existe, se añade a la cola de producción. El objetivo es que el GBP no tenga categorías huérfanas.

### Patrón o fórmula

```text
Confirmed Additional Category → existing support page or production queue
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Categoría adicional:
Servicio de duplicado de llaves

Página:
 /cerrajero/madrid/duplicado-llaves/
```

### Ejemplos incorrectos

```text
- Confirmar la categoría y no revisar la web.
- Crear la página con contenido thin.
- Usar una URL genérica como /servicios/ para soportar todas las categorías.
```

### Regla final

```text
Las categorías adicionales del GBP no deben quedar sin soporte web.
```

## Regla operativa — Revisar LocalBusiness schema tras verificación

### Explicación

El schema LocalBusiness debe reflejar la información real del negocio. Después de crear el GBP, se revisan nombre, teléfono, dirección, área servida, URL, email y sameAs. Si el negocio oculta dirección por ser service area business, la implementación debe revisarse con cuidado.

### Patrón o fórmula

```text
LocalBusiness schema = final NAP + main service + areaServed + verified sameAs
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
"@type": "LocalBusiness",
"name": "Cerrajeros Madrid 24h",
"telephone": "+34 600 000 000",
"areaServed": "Madrid",
"sameAs": ["GBP URL verificada"]
```

### Ejemplos incorrectos

```text
- Usar dirección distinta a la del GBP.
- Añadir areaServed enorme sin cobertura real.
- Omitir sameAs después de tener GBP verificado.
```

### Regla final

```text
El schema debe reflejar el GBP verificado y la cobertura real del negocio.
```

## Regla operativa — Crear una cola de actualización post-GBP

### Explicación

Después de crear el GBP no basta con decir “perfil creado”. Hay que actualizar páginas y elementos de la web. Esta cola evita que se olviden cambios importantes como enlaces, schema, bloques de confianza o CTAs.

### Patrón o fórmula

```text
Verified GBP → update queue → QA → publish updates → tracking
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Update queue:
1. Añadir sameAs al schema global
2. Actualizar homepage trust block
3. Actualizar /contacto/
4. Añadir enlace al perfil si procede
5. Preparar primer bloque de reseñas cuando existan
```

### Ejemplos incorrectos

```text
- Crear el GBP y no tocar la web.
- Actualizar solo la homepage y olvidar páginas locales.
- Añadir reseñas o mapas sin QA.
```

### Regla final

```text
El Paso 14 termina cuando el GBP y la web quedan sincronizados, no cuando se crea el perfil.
```

## Regla operativa — Medir la visibilidad después de crear el GBP

### Explicación

La creación del GBP permite empezar a medir señales locales con más claridad. Se deben revisar geo-grid, búsquedas de marca, consultas servicio + ciudad, clics desde GBP, llamadas, formularios y páginas de destino. La medición ayuda a decidir qué mejorar después.

### Patrón o fórmula

```text
GBP created → baseline geo-grid → monitor → optimize website and GBP
```

### Ejemplo correcto con Cerrajeros Madrid 24h

```text
Keywords iniciales:
- cerrajero madrid
- cerrajero urgente madrid
- apertura de puertas madrid
- cambio de cerraduras madrid
```

### Ejemplos incorrectos

```text
- Crear GBP y no medir nada.
- Medir solo tráfico orgánico sin revisar GBP.
- Optimizar posts o fotos sin mirar rendimiento local.
```

### Regla final

```text
Después del GBP, la optimización se basa en datos de perfil, web y geo-grid.
```

# Checklist final del Paso 14

| Check | Pregunta | Estado |
|---|---|---|
| GBP status confirmed | ¿Se confirmó si el GBP no existe, está creado o está verificado? | ⬜ |
| Website base ready | ¿La homepage, contacto, GeoHub y páginas core están publicadas? | ⬜ |
| Final NAP approved | ¿El NAP final coincide con web, schema y perfil? | ⬜ |
| Business model selected | ¿Storefront, service area business o híbrido está definido correctamente? | ⬜ |
| Primary category confirmed | ¿La categoría principal confirmada está soportada por la web? | ⬜ |
| Additional categories reviewed | ¿Las categorías adicionales tienen soporte o cola de producción? | ⬜ |
| Services mapped | ¿Los servicios del GBP coinciden con páginas y servicios reales? | ⬜ |
| Website URL selected | ¿El GBP apunta a la URL correcta? | ⬜ |
| UTM prepared | ¿La URL con tracking está preparada sin romper canonicals? | ⬜ |
| Business description approved | ¿La descripción refleja servicios, ciudad y cobertura sin stuffing? | ⬜ |
| Photos prepared | ¿Existe un pack de fotos realista y verificable? | ⬜ |
| Review plan ready | ¿Hay estrategia para reseñas reales sin inventar pruebas? | ⬜ |
| Q&A planned | ¿Las preguntas frecuentes del GBP están alineadas con la web? | ⬜ |
| Posts planned | ¿Los posts conectan con páginas web reales? | ⬜ |
| No fake office claim | ¿No se afirma ubicación física en zonas de cobertura sin sede real? | ⬜ |
| Duplicate check done | ¿Se revisó si existe un GBP previo o duplicado? | ⬜ |
| Schema update queued | ¿Se planificó añadir sameAs solo después del GBP real? | ⬜ |
| Homepage update queued | ¿La homepage queda marcada para actualización post-GBP? | ⬜ |
| Contact page update queued | ¿La página de contacto queda marcada para actualización post-GBP? | ⬜ |
| Tracking ready | ¿Se preparó geo-grid, GSC, GA4 y seguimiento de GBP? | ⬜ |

# Outputs del Paso 14

Al terminar este paso debes tener:

```text
GBP creado o plan de creación listo
Estado de verificación definido
NAP final aprobado
Modelo de negocio definido
Categoría principal confirmada
Categorías adicionales confirmadas o descartadas
Servicios del GBP mapeados a páginas web
URL de web seleccionada para el GBP
URL UTM preparada
Descripción GBP aprobada
Plan de fotos
Plan de Q&A
Plan de posts
Estrategia de reseñas reales
Cola de actualización post-GBP
Schema update plan
Homepage update plan
Contact page update plan
Tracking baseline plan
Lista de riesgos
```

# Cierre del Paso 14

El Paso 14 convierte la web en una entidad local conectada al ecosistema GBP.
Los pasos 1–13 construyen la base web.
El Paso 14 crea, verifica y sincroniza el perfil.
La regla central es simple:

```text
Primero la web como fuente de verdad.
Después el GBP como entidad local conectada.
Finalmente, sincronización continua entre web, perfil y tracking.
```


---

# Fuentes internas GMB Crush usadas

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
