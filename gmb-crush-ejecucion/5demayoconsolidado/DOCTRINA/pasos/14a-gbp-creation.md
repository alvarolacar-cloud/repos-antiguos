Versión literal del chat · Sistema GMB Crush para webs locales
Documento generado siguiendo el esqueleto canónico (`00 convenciones/00convenciones.md` (§1 Esqueleto)).
Proveniencia: portado de `repos-1-y-2/Bloque 6 — GBP/paso-14-gbp-creation-website-alignment/` (renombrado a Bloque 7 en este repo tras añadir el Bloque 6 Info que falta), alineado con los frameworks oficiales GMB Crush.

# Paso 14 — GBP Creation & Website Alignment

<small>§1</small>

> **Cómo leer este documento:**
> - **Bloque I — Introducción** describe qué produce el paso, lista los 20 outputs, los errores que previene, cuándo se ejecuta y la info heredada.
> - **Bloque II — Ejemplo rellenado** muestra los 20 outputs del Paso 14 con sus valores reales para Cerrajeros Madrid 24h.
> - **Bloque III — Ejecución por la IA** contiene la tabla declarativa de outputs (§8), la obtención literal de cada output con sus 24 reglas operativas portadas (§9), el checklist final de 20 checks (§10) y los outputs consolidados (§11).
> - **Bloque IV — Fuentes Internas GMB Crush usadas** lista los 8 frameworks GMB Crush en los que se basa el paso, más la nota literal sobre `GBP Services ≠ core services` y el cierre doctrinal del paso.

# Bloque I — Introducción

## Objetivo del Paso 14

<small>§2</small>

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

## Lista de outputs del Paso 14

<small>§3</small>

Al terminar este paso debes tener (literal §32 del original, 20 outputs):

- **14.1** GBP creado o plan de creación listo
- **14.2** Estado de verificación definido
- **14.3** NAP final aprobado
- **14.4** Modelo de negocio definido
- **14.5** Categoría principal confirmada
- **14.6** Categorías adicionales confirmadas o descartadas
- **14.7** Servicios del GBP mapeados a páginas web
- **14.8** URL de web seleccionada para el GBP
- **14.9** URL UTM preparada
- **14.10** Descripción GBP aprobada
- **14.11** Plan de fotos
- **14.12** Plan de Q&A
- **14.13** Plan de posts
- **14.14** Estrategia de reseñas reales
- **14.15** Cola de actualización post-GBP
- **14.16** Schema update plan
- **14.17** Homepage update plan
- **14.18** Contact page update plan
- **14.19** Tracking baseline plan
- **14.20** Lista de riesgos

## Errores que previene

<small>§4</small>

Errores que previene (literal §3 del original):

- Crear un GBP sin web preparada.
- Usar una categoría principal sin soporte real en la web.
- Añadir categorías adicionales sin páginas o secciones de soporte.
- Insertar una GBP URL falsa o prematura en schema.
- Afirmar reseñas de Google antes de tener reseñas reales.
- Publicar dirección, áreas o mapas contradictorios.
- Crear un GBP duplicado o con nombre sobreoptimizado.
- Conectar el GBP a una URL incorrecta.
- Olvidar actualizar la web después de crear el GBP.

## Cuándo se ejecuta

<small>§5</small>

Web-first: este paso se ejecuta después de publicar la web base (post-Paso 18 — QA + Deploy cerrado) y con un baseline de tracking de al menos 30 días post-launch que confirme que la homepage, el GeoHub de la Main City y las páginas comerciales principales (Service Overview Pages, Local Business Service Pages, Additional Category, GeoArticles si aplica) estén publicadas y funcionando antes de conectar la entidad GBP.

> **Definición operativa — Local Coverage Areas (literal §6 del original):** zonas, barrios, distritos o landmarks seleccionados desde la dirección física, la Main City, la coherencia GEO, la proximidad, los datos de búsqueda, los competidores y la lógica GMB Crush para reforzar relevancia local dentro del contenido, schema y futuros análisis. No son automáticamente URLs. No son automáticamente páginas propias. No son necesariamente oficinas físicas. Las Local Coverage Areas se usan primero como señales GEO dentro del contenido. No generan URLs por defecto.

## Info heredada de pasos anteriores

<small>§6</small>

| Campo | Origen |
|---|---|
| Business Name + Brand tone + Final NAP (Calle Rafael Calvo 12, Almagro, Chamberí, 28010 Madrid, +34 600 000 000) | Paso-01 1.4 |
| Main City (Madrid) | Paso-01 1.5 |
| Direct Local Coverage Areas (Almagro, Chamberí) | Paso-01 1.10 |
| Candidate Local Coverage Areas (Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad) | Paso-01 1.10 |
| Approved Expansion Areas (None in Phase 1) | Paso-01 1.11 |
| Planned Primary GBP Category (Cerrajero) | Paso-01 1.7 |
| Planned Additional GBP Categories | Paso-01 1.8 |
| URL Matrix completa con HP-001 / SO-001..005 / GH-001 / LBS-001..005 / AC-001 / GA-001..015 | Paso-03 3.5 |
| URL canonical homepage | Paso-04 4.X |
| Service Overview Pages publicadas | Paso-05 / Paso-15 |
| Página de contacto publicada | Paso-15 / Paso-17 |
| GeoHub /madrid/ publicado | Paso-08 / Paso-15 |
| LBS publicadas (cerrajero-urgente, apertura-puertas, etc.) | Paso-08 / Paso-15 |
| Schema base (Organization, WebSite, LocalBusiness, Service, areaServed) sin GBP URL | Paso-17 |
| Sitio publicado y baseline tracking ≥30 días | Paso-18 18.6 + 18.7 |
| Tracking plan (GSC + GA4 + Rank Tracker) | Paso-13 13.8 |

# Bloque II — Ejemplo rellenado para el Paso 14 — GBP Creation & Website Alignment

<small>§7</small>

> Los 20 outputs del Paso 14 con sus valores reales para Cerrajeros Madrid 24h, extraídos literal del §5 "Ejemplo rellenado" del original.

### 14.1 — GBP creado o plan de creación listo

```text
GBP Status:
Not Created (a crear post-Paso 18)

GBP Creation Timing:
After website launch

Pre-condiciones cumplidas (web base publicada):
- / publicada
- /contacto/ publicada
- /madrid/ publicada
- /cerrajero/madrid/cerrajero-urgente/ publicada
- /cerrajero/madrid/apertura-puertas/ publicada

Plan: crear el perfil después de publicar la web base, sin conectarlo
a una web vacía, genérica o sin páginas locales.
```

### 14.2 — Estado de verificación definido

```text
GBP Status: Not Created
Opciones del intake §4 del original:
Not Created / Created / Verified / Pending Verification / Suspended

En el momento de ejecutar el Paso 14, el estado declarado es Not Created.
Tras la creación se actualizará a Pending Verification y, una vez Google
confirme la verificación, a Verified.
```

### 14.3 — NAP final aprobado

```text
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

Physical Address:
Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid

Should address be displayed publicly?
Depends on business model and eligibility.
```

### 14.4 — Modelo de negocio definido

```text
Business Model:
Service Area Business

Motivo:
El servicio se presta principalmente en viviendas, locales, oficinas
y comunidades de clientes en Madrid.
```

### 14.5 — Categoría principal confirmada

```text
Confirmed Primary GBP Category:
Cerrajero

Why this primary category?
Representa la intención principal del negocio: servicios de cerrajería
en Madrid, incluyendo urgencias, apertura de puertas, cambio de cerraduras
y servicios relacionados.

GBP Name (sin keyword stuffing):
Cerrajeros Madrid 24h
```

### 14.6 — Categorías adicionales confirmadas o descartadas

```text
Confirmed Additional GBP Categories:
1. Servicio de cerrajería de urgencia
2. Servicio de duplicado de llaves

Categories rejected or avoided:
1. Tienda de llaves si no existe tienda física abierta al público
2. Servicio de seguridad si no se ofrecen sistemas de seguridad reales
3. Reparación de puertas si no es un servicio core
```

### 14.7 — Servicios del GBP mapeados a páginas web

```text
GBP Services to Add:
1. Cerrajero urgente            → /cerrajero/madrid/cerrajero-urgente/  (LBS-001)
2. Apertura de puertas          → /cerrajero/madrid/apertura-puertas/   (LBS-002)
3. Cambio de cerraduras         → /cerrajero/madrid/cambio-cerraduras/  (LBS-003)
4. Cambio de bombines           → /cerrajero/madrid/cambio-bombines/    (LBS-004)
5. Instalación de cerraduras
   de seguridad                 → /cerrajero/madrid/instalacion-cerraduras-seguridad/ (LBS-005)
6. Duplicado de llaves          → /cerrajero/madrid/duplicado-llaves/   (AC-001)
```

### 14.8 — URL de web seleccionada para el GBP

```text
Website URL to connect:
https://www.cerrajerosmadrid24h.com/

Contact / Appointment URL:
https://www.cerrajerosmadrid24h.com/contacto/
```

### 14.9 — URL UTM preparada

```text
GBP UTM URL:
https://www.cerrajerosmadrid24h.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp

Canonical URL (sin tocar):
https://www.cerrajerosmadrid24h.com/
```

### 14.10 — Descripción GBP aprobada

```text
GBP Business Description Draft:
Cerrajeros Madrid 24h ofrece servicios de cerrajería en Madrid, incluyendo
cerrajero urgente, apertura de puertas, cambio de cerraduras, cambio de
bombines, duplicado de llaves e instalación de cerraduras de seguridad.
Atendemos viviendas, locales, oficinas y comunidades en Madrid y zonas
de cobertura local.

Opening Hours:
24 horas
```

### 14.11 — Plan de fotos

```text
Photos Needed:
- Logo: Sí
- Cover photo: Sí
- Exterior photo: Solo si procede según modelo de negocio
- Interior photo: No prioritario si es service area business
- Team photo: Sí
- Vehicle photo: Sí
- Work examples: Sí
- Local context photo: Sí, sin fingir oficina física en zonas de cobertura
```

### 14.12 — Plan de Q&A

```text
Q&A Plan:
1. ¿Ofrecéis cerrajero urgente en Madrid?
2. ¿Atendéis en Chamberí, Salamanca y Retiro?
3. ¿Podéis hacer apertura de puertas sin dañar la cerradura?
```

### 14.13 — Plan de posts

```text
Google Posts Plan:
1. Presentación del negocio y servicios de cerrajería en Madrid
2. Servicio de cerrajero urgente 24h
3. Cambio de cerraduras y bombines en Madrid
```

### 14.14 — Estrategia de reseñas reales

```text
Review Strategy:
Solicitar reseñas a clientes reales después de servicios completados,
sin incentivos prohibidos y sin reseñas inventadas.

Antes del GBP (homepage trust signals):
- Servicio 24h
- Técnicos cualificados
- Experiencia en cerrajería
- Cobertura local en Madrid

Después del GBP:
- Añadir reseñas reales cuando existan
```

### 14.15 — Cola de actualización post-GBP

```text
Website Pages to Update After GBP Creation:
1. /
2. /madrid/
3. /cerrajero/madrid/cerrajero-urgente/
4. /cerrajero/madrid/apertura-puertas/
5. /contacto/

Update queue:
1. Añadir sameAs al schema global
2. Actualizar homepage trust block
3. Actualizar /contacto/
4. Añadir enlace al perfil si procede
5. Preparar primer bloque de reseñas cuando existan
```

### 14.16 — Schema update plan

```text
Schema Updates Needed: Yes

Antes del Paso 14:
sameAs = social/listings real only

Después del Paso 14:
sameAs += GBP URL

Después de crear GBP (placeholder porque GBP aún no existe):
"sameAs": [
  "https://www.google.com/maps?cid=REAL_CID_OR_GBP_URL"
]

LocalBusiness schema final:
"@type": "LocalBusiness",
"name": "Cerrajeros Madrid 24h",
"telephone": "+34 600 000 000",
"areaServed": "Madrid",
"sameAs": ["GBP URL verificada"]
```

### 14.17 — Homepage update plan

```text
Actualizar homepage:
- Añadir enlace al GBP
- Añadir reseñas reales cuando existan
- Revisar NAP
- Añadir mapa si procede
```

### 14.18 — Contact page update plan

```text
/contacto/
- Teléfono clicable
- Dirección consistente
- Horario 24h si aplica
- Áreas de cobertura
- Enlace al GBP después de verificación
```

### 14.19 — Tracking baseline plan

```text
Tracking Setup:
- GMB Crush geo-grid: Configurar después de verificación
- Google Search Console: Activo
- GA4: Activo
- GBP performance: Revisar tras creación

Keywords iniciales (baseline):
- cerrajero madrid
- cerrajero urgente madrid
- apertura de puertas madrid
- cambio de cerraduras madrid
```

### 14.20 — Lista de riesgos

```text
Riesgos derivados (de §25 duplicates + §19 LCAs alignment + §33 cierre):

1. Duplicados de GBP — comprobar antes de crear:
   - Buscar el nombre del negocio
   - Buscar la dirección
   - Buscar el teléfono
   - Comprobar si hay ficha antigua o duplicada

2. LCAs sin cobertura real — añadir toda la Comunidad de Madrid o crear
   perfiles duplicados por barrio sin sedes físicas reales rompe el modelo.

3. Categorías huérfanas — confirmar Additional Category sin tener página
   de soporte (LBS o AC) ya publicada.

4. Schema con GBP URL inventada — no actualizar sameAs hasta que el perfil
   esté creado y verificado.

5. Reseñas reclamadas antes de existir — homepage no debe afirmar reseñas
   de Google ni mostrar estrellas que no existen.

6. Horarios contradictorios — web 24h y GBP 9:00-18:00 (o viceversa).

7. Falsa oficina física en zonas de cobertura — fingir presencia donde no
   hay sede real.

8. Olvidar la cola de actualización post-GBP — el Paso 14 termina cuando
   el GBP y la web quedan sincronizados, no cuando se crea el perfil.
```

# Bloque III — Ejecución por la IA

## Outputs a Conseguir

<small>§8</small>

| ID | Output | Tipo | Fuente | Hereda de |
|---|---|---|---|---|
| 14.1 | GBP creado o plan de creación listo | Plan + status | Doctrina GMB Crush | Paso-18 18.6 |
| 14.2 | Estado de verificación definido | Enum (Not Created / Created / Verified / Pending Verification / Suspended) | Cliente preflight + Doctrina GMB Crush | — |
| 14.3 | NAP final aprobado | Estructura NAP (8 campos) | Doctrina GMB Crush | Paso-01 1.4 |
| 14.4 | Modelo de negocio definido | Enum (Storefront / Service Area Business / Hybrid) | Cliente preflight + Doctrina GMB Crush | Paso-01 1.4 |
| 14.5 | Categoría principal confirmada | String | Doctrina GMB Crush | Paso-01 1.7 |
| 14.6 | Categorías adicionales confirmadas o descartadas | Lista + lista de descartes | Doctrina GMB Crush | Paso-01 1.8 |
| 14.7 | Servicios del GBP mapeados a páginas web | Lista (servicio → URL) | Doctrina GMB Crush | Paso-03 3.5 |
| 14.8 | URL de web seleccionada para el GBP | URL | Doctrina GMB Crush | Paso-04 |
| 14.9 | URL UTM preparada | URL con parámetros | Doctrina GMB Crush | Paso-13 13.8 |
| 14.10 | Descripción GBP aprobada | Texto | Doctrina GMB Crush | Paso-15 |
| 14.11 | Plan de fotos | Lista estructurada | Cliente preflight + Doctrina GMB Crush | — |
| 14.12 | Plan de Q&A | Lista (3-5) + método | Doctrina + Keyword research | — |
| 14.13 | Plan de posts | Lista (1-3 por URL prioritaria) + método | Doctrina + Keyword research | Paso-08 |
| 14.14 | Estrategia de reseñas reales | Plan | Doctrina + Local Pack | — |
| 14.15 | Cola de actualización post-GBP | Lista de páginas + acciones | Doctrina GMB Crush | Paso-03 3.5 |
| 14.16 | Schema update plan | Plan + snippets schema | Doctrina GMB Crush | Paso-17 |
| 14.17 | Homepage update plan | Plan | Doctrina GMB Crush | Paso-15 / Paso-17 |
| 14.18 | Contact page update plan | Plan | Doctrina GMB Crush | Paso-15 / Paso-17 |
| 14.19 | Tracking baseline plan | Plan + keywords | Doctrina GMB Crush | Paso-13 13.8 |
| 14.20 | Lista de riesgos | Lista | Doctrina GMB Crush | — |

## Obtención de Outputs

<small>§9</small>

> Cada sub-sección porta literal del original §7-§30 las secciones operativas que aplican al output (Explicación, Patrón o fórmula, Ejemplo correcto con Cerrajeros Madrid 24h, Ejemplos incorrectos, Regla final), añade Validación operativa (vinculada al checklist §10), Cómo se obtiene (Fuente + Método) y Output del paso (Tipo + Ejemplo Cerrajeros). Para 14.12 y 14.13 se incluye además el Método explícito (§23.6 y §24.6 del original).

### 14.1 — GBP creado o plan de creación listo

<small>§9.1</small>

> Cubre la regla operativa §7 del original — Crear el GBP después de publicar la web base.

#### Explicación (§7.1 literal)

El GBP debe crearse cuando la web ya tenga una entidad mínima sólida. La homepage, la página de contacto, el GeoHub de la Main City y las páginas comerciales principales deben existir antes de conectar el perfil. Esto permite que Google encuentre una web coherente, con NAP, servicios, contenido local, schema y arquitectura interna. Crear el perfil antes de tener web puede funcionar, pero en este sistema web-first no es la opción preferida.

#### Patrón o fórmula (§7.2 literal)

```text
Website base published → GBP creation → GBP verification → website synchronization
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§7.3 literal)

```text
Antes de crear el GBP:
- / publicada
- /contacto/ publicada
- /madrid/ publicada
- /cerrajero/madrid/cerrajero-urgente/ publicada
- /cerrajero/madrid/apertura-puertas/ publicada
```

#### Ejemplos incorrectos (§7.4 literal)

```text
- Crear el GBP con una web sin páginas de servicio.
- Crear el GBP con una homepage genérica que no menciona Madrid.
- Crear el GBP y después decidir qué categoría o servicios tendrá la web.
```

#### Regla final (§7.5 literal)

```text
El GBP debe apuntar a una web que ya explique quién eres, qué haces y dónde operas.
```

#### Validación operativa

Validar contra los checks del §10: "GBP status confirmed" y "Website base ready".

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** confirmar publicación de homepage, contacto, GeoHub Main City y páginas core (LBS) antes de proceder con la creación. Documentar timing como "After website launch".

#### Output del paso

- **Tipo:** Plan + status.
- **Ejemplo Cerrajeros:** "GBP Status: Not Created (a crear post-Paso 18)" + lista de pre-condiciones cumplidas.

### 14.2 — Estado de verificación definido

<small>§9.2</small>

> Derivado del §7 (web-first timing) y del intake §4 del original (campo "GBP Status").

#### Explicación

El estado de verificación define en qué momento del ciclo está el perfil: aún no creado, creado pendiente de verificación, verificado, suspendido. Es información de control que debe quedar declarada antes de avanzar con sincronización post-GBP.

#### Patrón o fórmula

```text
GBP Status ∈ { Not Created, Created, Verified, Pending Verification, Suspended }
```

#### Ejemplo correcto con Cerrajeros Madrid 24h

```text
GBP Status: Not Created
GBP Creation Timing: After website launch
```

#### Ejemplos incorrectos

```text
- Declarar "Verified" antes de que Google confirme verificación.
- Avanzar con sincronización schema/homepage/contact con estado "Pending Verification" sin esperar a "Verified".
```

#### Regla final

```text
El estado del GBP debe reflejar el ciclo real (creación → verificación → sincronización), nunca un estado anticipado.
```

#### Validación operativa

Validar contra el check del §10: "GBP status confirmed".

#### Cómo se obtiene

- **Fuente:** Cliente preflight + Doctrina GMB Crush.
- **Método:** declarar uno de los 5 valores del intake §4 del original. Actualizar tras cada hito (creación, verificación).

#### Output del paso

- **Tipo:** Enum.
- **Ejemplo Cerrajeros:** "Not Created".

### 14.3 — NAP final aprobado

<small>§9.3</small>

> Cubre la regla operativa §9 del original — Validar el NAP final antes de crear el perfil.

#### Explicación (§9.1 literal)

El NAP final debe coincidir en la web, schema, página de contacto, footer y GBP. Si el GBP se crea con un teléfono o dirección distinta, la entidad queda debilitada. La dirección debe tratarse con cuidado si el negocio es service area business. No se debe publicar una dirección falsa ni usar una ubicación donde no exista elegibilidad real.

#### Patrón o fórmula (§9.2 literal)

```text
Final NAP = Website NAP = Schema NAP = Contact Page NAP = GBP NAP
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§9.3 literal)

```text
Name:
Cerrajeros Madrid 24h

Address:
Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid

Phone:
Email:
+34 600 000 000
```

#### Ejemplos incorrectos (§9.4 literal)

```text
- Usar un teléfono diferente en el GBP.
- Escribir “Cerrajeros Madrid 24h Chamberí Urgente Barato” como nombre.
- Usar una dirección donde el negocio no puede recibir verificación o no opera realmente.
```

#### Regla final (§9.5 literal)

```text
El NAP del GBP no debe contradecir el NAP de la web.
```

#### Validación operativa

Validar contra el check del §10: "Final NAP approved".

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** comparar NAP de Paso-01 1.4, schema (Paso-17), página de contacto y futuros datos GBP. Si hay desviación, corregir antes de crear el perfil.

#### Output del paso

- **Tipo:** Estructura NAP (8 campos: Business Name, Street Address, Neighborhood/District, City, State/Province, ZIP, Country, Phone).
- **Ejemplo Cerrajeros:** "Cerrajeros Madrid 24h / Calle Rafael Calvo 12 / Barrio Almagro, Distrito Chamberí / Madrid / Comunidad de Madrid / 28010 / España / +34 600 000 000".

### 14.4 — Modelo de negocio definido

<small>§9.4</small>

> Cubre la regla operativa §10 del original — Elegir el modelo de negocio correcto.

#### Explicación (§10.1 literal)

El modelo del GBP afecta a dirección visible, áreas de servicio, fotos y expectativas del usuario. Un cerrajero móvil suele funcionar como service area business o híbrido si también tiene atención física real. El modelo no debe elegirse por SEO, sino por realidad operativa.

#### Patrón o fórmula (§10.2 literal)

```text
Storefront = clientes visitan la ubicación
Service Area Business = el negocio atiende en ubicaciones del cliente
Hybrid = ambas situaciones son reales
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§10.3 literal)

```text
Business Model:
Service Area Business

Motivo:
El servicio se presta principalmente en viviendas, locales, oficinas y comunidades de clientes en Madrid.
```

#### Ejemplos incorrectos (§10.4 literal)

```text
- Usar Storefront si no hay atención al público.
- Mostrar una dirección solo para parecer más local.
- Crear varias fichas para zonas de cobertura sin sedes reales.
```

#### Regla final (§10.5 literal)

```text
El modelo de GBP debe reflejar cómo el negocio atiende realmente a sus clientes.
```

#### Validación operativa

Validar contra el check del §10: "Business model selected".

#### Cómo se obtiene

- **Fuente:** Cliente preflight + Doctrina GMB Crush.
- **Método:** confirmar realidad operativa del cliente (¿clientes visitan ubicación, negocio acude a ubicaciones del cliente, o ambas?). Elegir uno de los 3 valores.

#### Output del paso

- **Tipo:** Enum.
- **Ejemplo Cerrajeros:** "Service Area Business".

### 14.5 — Categoría principal confirmada

<small>§9.5</small>

> Cubre las reglas operativas §8 (Convertir categorías planificadas en categorías confirmadas) y §26 (No usar keyword stuffing en el nombre del GBP) del original.

#### Sub-bloque A — Regla §8 (categoría confirmada)

##### Explicación (§8.1 literal)

Durante los pasos 1–13 se trabaja con Planned Primary GBP Category y Planned Additional GBP Categories. En el Paso 14 esas categorías se revisan y se convierten en categorías confirmadas. Si una categoría no está disponible, no representa el negocio o no tiene soporte en la web, no debe usarse.

##### Patrón o fórmula (§8.2 literal)

```text
Planned Category → availability check → relevance check → website support check → Confirmed GBP Category
```

##### Ejemplo correcto con Cerrajeros Madrid 24h (§8.3 literal)

```text
Planned Primary GBP Category:
Cerrajero

Confirmed Primary GBP Category:
Cerrajero

Motivo:
La web tiene homepage, servicios core, páginas en Madrid y contenido de soporte para cerrajería.
```

##### Ejemplos incorrectos (§8.4 literal)

```text
- Confirmar una categoría porque parece más amplia pero no representa el negocio.
- Añadir categorías adicionales sin soporte web.
- Elegir una categoría por volumen de búsqueda aunque no coincida con los servicios reales.
```

##### Regla final (§8.5 literal)

```text
La categoría confirmada del GBP debe estar soportada por la intención real del negocio y por la arquitectura web.
```

#### Sub-bloque B — Regla §26 (no keyword stuffing en el nombre)

##### Explicación (§26.1 literal)

El nombre del GBP debe reflejar el nombre real del negocio. Añadir palabras clave, ciudades, “barato”, “mejor” o “24h” solo es correcto si forman parte real del nombre comercial. El sistema debe proteger la entidad, no sobreoptimizarla.

##### Patrón o fórmula (§26.2 literal)

```text
GBP Name = real business name
```

##### Ejemplo correcto con Cerrajeros Madrid 24h (§26.3 literal)

```text
Cerrajeros Madrid 24h
```

##### Ejemplos incorrectos (§26.4 literal)

```text
- Cerrajeros Madrid 24h Baratos Urgentes Chamberí
- Cerrajero Urgente Madrid Apertura Puertas 24 Horas
- Cerrajeros Madrid 24h Salamanca Retiro Chamberí
```

##### Regla final (§26.5 literal)

```text
El nombre del GBP debe ser el nombre real del negocio, no una cadena de keywords.
```

#### Validación operativa

Validar contra el check del §10: "Primary category confirmed". Cruce con check "Final NAP approved" en lo relativo al nombre real del negocio.

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** tomar Planned Primary GBP Category de Paso-01 1.7. Verificar disponibilidad en GBP, relevancia con la intención principal, soporte en la web (Homepage HP-001 + LBS-001..005 + GeoHub GH-001). Confirmar nombre = nombre real del negocio.

#### Output del paso

- **Tipo:** String.
- **Ejemplo Cerrajeros:** "Cerrajero" (Confirmed Primary GBP Category) + "Cerrajeros Madrid 24h" (GBP Name real).

### 14.6 — Categorías adicionales confirmadas o descartadas

<small>§9.6</small>

> Cubre las reglas operativas §14 (Usar categorías adicionales solo si tienen soporte real) y §27 (Sincronizar páginas de categoría adicional) del original.

#### Sub-bloque A — Regla §14 (categorías adicionales con soporte real)

##### Explicación (§14.1 literal)

Las categorías adicionales aumentan profundidad de entidad, pero también pueden generar ruido si no están soportadas. Una categoría adicional debe tener un servicio real, intención comercial y contenido de soporte. Si no hay soporte, se marca como pendiente o se evita.

##### Patrón o fórmula (§14.2 literal)

```text
Additional Category = real service + website support + local relevance
```

##### Ejemplo correcto con Cerrajeros Madrid 24h (§14.3 literal)

```text
Additional GBP Category:
Servicio de duplicado de llaves

Página de soporte:
/cerrajero/madrid/duplicado-llaves/
```

##### Ejemplos incorrectos (§14.4 literal)

```text
- Añadir una categoría por ranking sin página de soporte.
- Duplicar una categoría adicional que ya está cubierta por un servicio core sin diferenciar intención.
```

##### Regla final (§14.5 literal)

```text
Cada categoría adicional confirmada debe estar respaldada por contenido web real.
```

#### Sub-bloque B — Regla §27 (sincronizar páginas de categoría adicional)

##### Explicación (§27.1 literal)

Si en el GBP se confirma una categoría adicional, la web debe tener soporte. Si el soporte ya existe, se marca como sincronizado. Si no existe, se añade a la cola de producción. El objetivo es que el GBP no tenga categorías huérfanas.

##### Patrón o fórmula (§27.2 literal)

```text
Confirmed Additional Category → existing support page or production queue
```

##### Ejemplo correcto con Cerrajeros Madrid 24h (§27.3 literal)

```text
Categoría adicional:
Servicio de duplicado de llaves

Página:
 /cerrajero/madrid/duplicado-llaves/
```

##### Ejemplos incorrectos (§27.4 literal)

```text
- Confirmar la categoría y no revisar la web.
- Crear la página con contenido thin.
- Usar una URL genérica como /servicios/ para soportar todas las categorías.
```

##### Regla final (§27.5 literal)

```text
Las categorías adicionales del GBP no deben quedar sin soporte web.
```

#### Validación operativa

Validar contra el check del §10: "Additional categories reviewed".

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** tomar Planned Additional GBP Categories de Paso-01 1.8. Para cada candidata, verificar (a) disponibilidad en GBP, (b) servicio real, (c) página de soporte (AC-001 o LBS) ya publicada o en cola. Las que no pasan los 3 filtros se trasladan a "Categories rejected or avoided" con motivo.

#### Output del paso

- **Tipo:** Lista (confirmadas) + lista (descartadas).
- **Ejemplo Cerrajeros:**
  - Confirmadas: "Servicio de cerrajería de urgencia", "Servicio de duplicado de llaves" (mapea a AC-001 = `/cerrajero/madrid/duplicado-llaves/`).
  - Descartadas: "Tienda de llaves" (no hay tienda física), "Servicio de seguridad" (no se ofrecen sistemas de seguridad reales), "Reparación de puertas" (no es servicio core).

### 14.7 — Servicios del GBP mapeados a páginas web

<small>§9.7</small>

> Cubre la regla operativa §13 del original — Añadir servicios del GBP alineados con páginas web.

#### Explicación (§13.1 literal)

Los servicios del GBP deben reflejar los core services de la web. Si el GBP lista “Cambio de cerraduras”, la web debe tener una Service Overview Page o una página local que lo soporte. Si la web tiene “Apertura de puertas en Madrid”, ese servicio debe estar representado dentro del perfil.

#### Patrón o fórmula (§13.2 literal)

```text
GBP Service → supported by Service Overview or Main City Service Page
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§13.3 literal)

```text
GBP Service:
Apertura de puertas

Páginas de soporte:
/cerrajero/apertura-puertas/
/cerrajero/madrid/apertura-puertas/
```

#### Ejemplos incorrectos (§13.4 literal)

```text
- Añadir servicios al GBP que la web no menciona.
- Añadir servicios que el negocio no ofrece.
- Usar nombres de servicios totalmente diferentes entre web y GBP.
```

#### Regla final (§13.5 literal)

```text
Los servicios del GBP deben tener soporte web y consistencia semántica.
```

#### Validación operativa

Validar contra el check del §10: "Services mapped".

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** para cada servicio del GBP, identificar la SO (Service Overview SO-001..005) y/o LBS (LBS-001..005) o AC (AC-001) que lo soporta. Nombre semánticamente alineado entre web y GBP.

#### Output del paso

- **Tipo:** Lista (servicio → URL/ID).
- **Ejemplo Cerrajeros:** "Cerrajero urgente → LBS-001", "Apertura de puertas → LBS-002", "Cambio de cerraduras → LBS-003", "Cambio de bombines → LBS-004", "Instalación de cerraduras de seguridad → LBS-005", "Duplicado de llaves → AC-001".

### 14.8 — URL de web seleccionada para el GBP

<small>§9.8</small>

> Cubre la regla operativa §11 del original — Conectar el GBP a la URL correcta.

#### Explicación (§11.1 literal)

El GBP debe apuntar a la URL que mejor representa la entidad. Para la mayoría de negocios locales, esa URL será la homepage. Si el negocio es muy específico y la homepage ya actúa como Root Entity Anchor, se conecta al dominio raíz. No se debe conectar a una página débil, temporal, sin NAP o sin contenido local.

#### Patrón o fórmula (§11.2 literal)

```text
GBP Website URL = homepage or strongest local entity page
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§11.3 literal)

```text
GBP Website URL:
https://www.cerrajerosmadrid24h.com/
```

#### Ejemplos incorrectos (§11.4 literal)

```text
- Conectar a /blog/.
- Conectar a una URL con parámetros sin control.
- Conectar a una página de servicio que no representa toda la entidad.
```

#### Regla final (§11.5 literal)

```text
El GBP debe enlazar a la URL que mejor resume la entidad local.
```

#### Validación operativa

Validar contra el check del §10: "Website URL selected".

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** seleccionar HP-001 (homepage) como Root Entity Anchor por defecto. Confirmar que la página existe, está publicada y contiene NAP, servicios y contenido local.

#### Output del paso

- **Tipo:** URL.
- **Ejemplo Cerrajeros:** "https://www.cerrajerosmadrid24h.com/" (HP-001).

### 14.9 — URL UTM preparada

<small>§9.9</small>

> Cubre la regla operativa §12 del original — Usar UTM sin romper canonical ni NAP.

#### Explicación (§12.1 literal)

El tracking UTM permite medir clics desde GBP, pero no debe sustituir la URL canónica del sitio. La URL con UTM se puede usar en el campo website del GBP si se controla correctamente, pero las páginas de la web siguen usando canonicals limpios.

#### Patrón o fórmula (§12.2 literal)

```text
Canonical URL = https://www.domain.com/
GBP tracked URL = https://www.domain.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§12.3 literal)

```text
GBP UTM URL:
https://www.cerrajerosmadrid24h.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp
```

#### Ejemplos incorrectos (§12.4 literal)

```text
- Usar parámetros distintos cada mes sin control.
- Cambiar canonical a la URL con UTM.
- Usar una URL acortada que oculta el dominio.
```

#### Regla final (§12.5 literal)

```text
El tracking GBP debe medir sin alterar la arquitectura canónica de la web.
```

#### Validación operativa

Validar contra el check del §10: "UTM prepared".

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** generar URL con `utm_source=google&utm_medium=organic&utm_campaign=gbp`. Confirmar que el `<link rel="canonical">` de la página sigue apuntando a la URL limpia (sin parámetros).

#### Output del paso

- **Tipo:** URL con parámetros.
- **Ejemplo Cerrajeros:** "https://www.cerrajerosmadrid24h.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp".

### 14.10 — Descripción GBP aprobada

<small>§9.10</small>

> Cubre las reglas operativas §17 (Redactar una descripción GBP alineada con la web) y §18 (Definir horarios sin contradicción) del original.

#### Sub-bloque A — Regla §17 (descripción alineada con la web)

##### Explicación (§17.1 literal)

La descripción del GBP debe resumir servicios, ciudad, cobertura local y propuesta de valor sin keyword stuffing. Debe reflejar lo que ya aparece en la homepage y páginas core. No debe incluir afirmaciones falsas de ubicación, reseñas o certificaciones.

##### Patrón o fórmula (§17.2 literal)

```text
Description = brand + primary category + Main City + core services + local coverage + CTA soft
```

##### Ejemplo correcto con Cerrajeros Madrid 24h (§17.3 literal)

```text
Cerrajeros Madrid 24h ofrece servicios de cerrajería en Madrid, incluyendo cerrajero urgente, apertura de puertas, cambio de cerraduras, cambio de bombines, duplicado de llaves e instalación de cerraduras de seguridad.
```

##### Ejemplos incorrectos (§17.4 literal)

```text
- Repetir “cerrajero Madrid barato 24h” de forma artificial.
- Afirmar sedes en barrios donde no existen.
- Prometer tiempos garantizados si no están operativamente confirmados.
```

##### Regla final (§17.5 literal)

```text
La descripción GBP debe ser coherente con la homepage y no sobreoptimizada.
```

#### Sub-bloque B — Regla §18 (horarios sin contradicción)

##### Explicación (§18.1 literal)

Si el negocio se presenta como 24h, el GBP, la web y las páginas de servicio deben reflejarlo de forma consistente. Si hay atención de urgencia 24h pero administración en horario limitado, debe explicarse correctamente. La contradicción de horarios crea mala experiencia y señales débiles.

##### Patrón o fórmula (§18.2 literal)

```text
Website Hours = GBP Hours = Service Promise
```

##### Ejemplo correcto con Cerrajeros Madrid 24h (§18.3 literal)

```text
Opening Hours:
24 horas, todos los días

Páginas de servicio:
Cerrajero urgente 24h en Madrid
```

##### Ejemplos incorrectos (§18.4 literal)

```text
- Web dice 24h y GBP dice 9:00–18:00.
- GBP dice abierto siempre pero nadie responde fuera de horario.
- Usar “24h” solo como keyword sin capacidad operativa.
```

##### Regla final (§18.5 literal)

```text
Los horarios del GBP deben coincidir con la promesa real de servicio.
```

#### Validación operativa

Validar contra el check del §10: "Business description approved". Cruce: la promesa horaria de la descripción no debe contradecir el campo Opening Hours.

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** redactar siguiendo el patrón `brand + primary category + Main City + core services + local coverage + CTA soft`. Verificar que coincide con homepage y horarios del servicio.

#### Output del paso

- **Tipo:** Texto + Opening Hours.
- **Ejemplo Cerrajeros:** descripción (ver §17.3 literal arriba) + "24 horas".

### 14.11 — Plan de fotos

<small>§9.11</small>

> Cubre la regla operativa §16 del original — Preparar fotos antes de crear el GBP.

#### Explicación (§16.1 literal)

Las fotos del GBP ayudan a reforzar confianza, identidad y contexto operativo. Deben representar el negocio real: logo, vehículo, herramientas, trabajos, equipo y contexto local. No deben fingir oficina física si el negocio es service area business.

#### Patrón o fórmula (§16.2 literal)

```text
GBP Photo Pack = logo + cover + team/vehicle/tools/work examples + local context
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§16.3 literal)

```text
Fotos:
- Logo de Cerrajeros Madrid 24h
- Herramientas de cerrajería
- Cerradura instalada
- Vehículo de servicio
- Equipo técnico si aplica
```

#### Ejemplos incorrectos (§16.4 literal)

```text
- Fotos stock que no representan el negocio.
- Fotos de una oficina que no existe.
- Fotos de cerraduras o equipos que no se usan.
```

#### Regla final (§16.5 literal)

```text
Las fotos del GBP deben reforzar la entidad real, no fabricar una identidad falsa.
```

#### Validación operativa

Validar contra los checks del §10: "Photos prepared" y "No fake office claim".

#### Cómo se obtiene

- **Fuente:** Cliente preflight + Doctrina GMB Crush.
- **Método:** recopilar fotos reales del negocio (logo, cover, equipo, vehículo, herramientas, ejemplos de trabajos, contexto local). Marcar como "No prioritario" las que no aplican al modelo (p. ej. interior si es service area business).

#### Output del paso

- **Tipo:** Lista estructurada (8 categorías del intake §4).
- **Ejemplo Cerrajeros:** Logo (Sí), Cover (Sí), Exterior (solo si procede), Interior (no prioritario en SAB), Team (Sí), Vehicle (Sí), Work examples (Sí), Local context (Sí, sin fingir oficina física).

### 14.12 — Plan de Q&A

<small>§9.12</small>

> Cubre la regla operativa §23 del original (incluye método §23.6) — Preparar Q&A del GBP con preguntas reales.

#### Explicación (§23.1 literal)

Las preguntas y respuestas ayudan a resolver dudas locales y comerciales. Deben estar alineadas con servicios reales y con el contenido de la web. No deben ser spam ni repetir keywords de forma artificial.

#### Patrón o fórmula (§23.2 literal)

```text
Q&A = real local objection + clear answer + service alignment
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§23.3 literal)

```text
Pregunta:
¿Atendéis cerrajero urgente en Chamberí?

Respuesta:
Sí, atendemos servicios de cerrajería urgente en Madrid y zonas de cobertura local como Chamberí, Almagro, Salamanca y Centro, según disponibilidad.
```

#### Ejemplos incorrectos (§23.4 literal)

```text
- Crear preguntas falsas solo para repetir keywords.
- Responder con promesas no garantizadas.
- Mencionar zonas donde no se atiende.
```

#### Regla final (§23.5 literal)

```text
El Q&A del GBP debe reforzar servicio real, cobertura real y confianza.
```

#### Método (§23.6 literal — extraer Q&A reales)

```text
1. GBP Auto-Suggest: empezar a escribir en Google Search "[servicio]
   [main city]" y anotar las sugerencias automáticas que aparecen.
   Estas son las dudas reales que la gente busca.
2. People Also Ask (PAA): hacer la búsqueda principal en Google y
   abrir el bloque "La gente también pregunta". Anotar 5-10 preguntas
   relevantes para servicios del cliente.
3. Keyword research informacional: filtrar queries con modificadores
   de pregunta (cómo, qué, cuándo, cuánto, atendéis, hacéis) que
   tengan volumen ≥ 10/mes.
4. Reseñas y Q&A de competidores: revisar 3-5 GBP de competidores
   top y leer las preguntas que ya tienen respondidas. Identificar
   patrones recurrentes.
5. Filtrar y priorizar:
   - Eliminar preguntas que no apliquen al cliente (no atiende esa zona,
     no ofrece ese servicio).
   - Priorizar 3-5 preguntas que cubran objeciones comerciales reales
     (cobertura, precio, urgencia, garantía).
6. Redactar respuestas alineadas con copy de Homepage/LBS y NAP.
```

#### Validación operativa

Validar contra el check del §10: "Q&A planned".

#### Cómo se obtiene

- **Fuente:** Doctrina + Keyword research.
- **Método:** ejecutar el protocolo de 6 pasos (§23.6 literal). Priorizar 3-5 preguntas que cubran objeciones comerciales reales (cobertura, precio, urgencia, garantía).

#### Output del paso

- **Tipo:** Lista (3-5 preguntas) + respuestas redactadas.
- **Ejemplo Cerrajeros:** "¿Ofrecéis cerrajero urgente en Madrid?", "¿Atendéis en Chamberí, Salamanca y Retiro?", "¿Podéis hacer apertura de puertas sin dañar la cerradura?".

### 14.13 — Plan de posts

<small>§9.13</small>

> Cubre la regla operativa §24 del original (incluye método §24.6) — Planificar Google Posts conectados con páginas web.

#### Explicación (§24.1 literal)

Los posts del GBP pueden reforzar servicios y páginas recién publicadas. No deben ser contenido aislado. Cada post importante debe poder apuntar a una página de servicio, homepage o página de contacto.

#### Patrón o fórmula (§24.2 literal)

```text
GBP Post → relevant website page → conversion action
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§24.3 literal)

```text
Post:
Cerrajero urgente en Madrid

URL:
https://www.cerrajerosmadrid24h.com/cerrajero/madrid/cerrajero-urgente/
```

#### Ejemplos incorrectos (§24.4 literal)

```text
- Publicar posts sin enlace ni objetivo.
- Repetir el mismo post cada semana sin variación.
- Crear posts sobre servicios que no tienen página de soporte.
```

#### Regla final (§24.5 literal)

```text
Los posts del GBP deben apoyar páginas web reales y objetivos comerciales claros.
```

#### Método (§24.6 literal — extraer topics de Google Posts)

```text
1. Listar las URLs prioritarias del cluster con score Priority ≥ P2
   (paso-08): Homepage, las 5 LBS, AC, GeoHub. Cada URL es candidata
   a tener un post asociado.
2. Para cada URL candidata, hacer keyword research transaccional:
   - Anotar las queries top con volumen ≥ 30/mes y intent comercial
     (no informacional).
   - Excluir queries que canibalicen con la página (intent informativo
     largo).
3. Por cada URL prioritaria, generar 1-3 posts cubriendo angles distintos:
   - Servicio principal (lo que hace).
   - Beneficio diferencial (por qué con este negocio).
   - Llamada a acción local (urgencia, cobertura).
4. Cada post lleva la URL de la página soporte como destino:
   - Post sobre servicio core → URL de la LBS.
   - Post sobre cobertura → URL del GeoHub.
   - Post sobre categoría adicional → URL de la AC.
5. Calendario: 1 post nuevo por semana mínimo. Variar el angle para
   no duplicar contenido.
6. Cada 4 semanas revisar GSC: si una URL recibe poco tráfico orgánico,
   reforzarla con post adicional.
```

#### Validación operativa

Validar contra el check del §10: "Posts planned".

#### Cómo se obtiene

- **Fuente:** Doctrina + Keyword research.
- **Método:** ejecutar el protocolo de 6 pasos (§24.6 literal). Listar URLs P≥P2 (HP-001, LBS-001..005, AC-001, GH-001), generar 1-3 posts por URL.

#### Output del paso

- **Tipo:** Lista (1-3 posts por URL prioritaria).
- **Ejemplo Cerrajeros:** "Presentación del negocio y servicios de cerrajería en Madrid" (→ HP-001), "Servicio de cerrajero urgente 24h" (→ LBS-001), "Cambio de cerraduras y bombines en Madrid" (→ LBS-003 / LBS-004).

### 14.14 — Estrategia de reseñas reales

<small>§9.14</small>

> Cubre la regla operativa §15 del original — No reclamar reseñas antes de tenerlas.

#### Explicación (§15.1 literal)

Antes de crear el GBP, la web no debe afirmar “250 reseñas en Google” ni mostrar estrellas que no existen. Después de crear el perfil, se puede iniciar una estrategia de reseñas reales. Las reseñas deben proceder de clientes reales y no deben inventarse.

#### Patrón o fórmula (§15.2 literal)

```text
Before GBP = trust signals without Google review claims
After GBP = real review collection and review blocks
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§15.3 literal)

```text
Antes del GBP:
- Servicio 24h
- Técnicos cualificados
- Experiencia en cerrajería
- Cobertura local en Madrid

Después del GBP:
- Añadir reseñas reales cuando existan
```

#### Ejemplos incorrectos (§15.4 literal)

```text
- Mostrar estrellas de Google sin perfil creado.
- Inventar reseñas.
- Copiar reseñas de otros negocios.
```

#### Regla final (§15.5 literal)

```text
Las reseñas del GBP solo se usan cuando existen y son reales.
```

#### Validación operativa

Validar contra el check del §10: "Review plan ready".

#### Cómo se obtiene

- **Fuente:** Doctrina + Local Pack.
- **Método:** definir trust signals previos al GBP (sin afirmar reseñas Google) + protocolo de solicitud post-servicio (sin incentivos prohibidos, sin reseñas inventadas) + benchmarking de top 5 GBP competidores en Maps (volumen objetivo realista, frecuencia mensual del sector, patrones de respuesta del owner, métodos visibles de solicitud).

> **Divergencia operador del original (mayo 2026, actualizada):** la fuente original era `Doctrina GMB Crush` puro. El operador autorizó añadir benchmarking competitivo — la doctrina §15 sigue actuando como constraint negativo (no inventar, no incentivos prohibidos), pero el contenido del plan se enriquece con datos del top 5 GBP competidores. La combinación se mapea a `Doctrina + Local Pack` del catálogo cerrado de 8 fuentes (`02fuentes-y-outputs.md`). Precedente similar: NAP físico Calle Rafael Calvo 12.

#### Output del paso

- **Tipo:** Plan (trust signals pre-GBP + protocolo post-GBP + benchmarking competidores).
- **Ejemplo Cerrajeros:** "Solicitar reseñas a clientes reales después de servicios completados, sin incentivos prohibidos y sin reseñas inventadas."

### 14.15 — Cola de actualización post-GBP

<small>§9.15</small>

> Cubre la regla operativa §29 del original — Crear una cola de actualización post-GBP.

#### Explicación (§29.1 literal)

Después de crear el GBP no basta con decir “perfil creado”. Hay que actualizar páginas y elementos de la web. Esta cola evita que se olviden cambios importantes como enlaces, schema, bloques de confianza o CTAs.

#### Patrón o fórmula (§29.2 literal)

```text
Verified GBP → update queue → QA → publish updates → tracking
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§29.3 literal)

```text
Update queue:
1. Añadir sameAs al schema global
2. Actualizar homepage trust block
3. Actualizar /contacto/
4. Añadir enlace al perfil si procede
5. Preparar primer bloque de reseñas cuando existan
```

#### Ejemplos incorrectos (§29.4 literal)

```text
- Crear el GBP y no tocar la web.
- Actualizar solo la homepage y olvidar páginas locales.
- Añadir reseñas o mapas sin QA.
```

#### Regla final (§29.5 literal)

```text
El Paso 14 termina cuando el GBP y la web quedan sincronizados, no cuando se crea el perfil.
```

#### Validación operativa

Cubre los checks "Schema update queued", "Homepage update queued", "Contact page update queued" del §10.

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** listar páginas a actualizar (HP-001, GH-001, LBS-001, LBS-002, página de contacto) + acciones (sameAs, trust block, NAP, enlace al perfil, reseñas cuando existan).

#### Output del paso

- **Tipo:** Lista de páginas + acciones.
- **Ejemplo Cerrajeros:** Pages = `/`, `/madrid/`, `/cerrajero/madrid/cerrajero-urgente/`, `/cerrajero/madrid/apertura-puertas/`, `/contacto/`. Acciones = ver §29.3 literal arriba.

### 14.16 — Schema update plan

<small>§9.16</small>

> Cubre las reglas operativas §20 (Actualizar schema después de crear el GBP) y §28 (Revisar LocalBusiness schema tras verificación) del original.

#### Sub-bloque A — Regla §20 (actualizar schema)

##### Explicación (§20.1 literal)

Antes del GBP, el schema puede incluir Organization, WebSite, LocalBusiness, Service y areaServed si los datos son reales. Pero no debe incluir un enlace GBP inexistente. Después de crear y verificar el perfil, se actualiza `sameAs` con la URL real del GBP y se revisa NAP.

##### Patrón o fórmula (§20.2 literal)

```text
Before Paso 14:
sameAs = social/listings real only

After Paso 14:
sameAs += GBP URL
```

##### Ejemplo correcto con Cerrajeros Madrid 24h (§20.3 literal)

```text
Después de crear GBP:
"sameAs": [
  "https://www.google.com/maps?cid=REAL_CID_OR_GBP_URL"
]
```

##### Ejemplos incorrectos (§20.4 literal)

```text
- Inventar una GBP URL.
- Añadir un enlace de Google Maps que no corresponde al negocio.
- No actualizar schema después de crear el GBP.
```

##### Regla final (§20.5 literal)

```text
El enlace GBP en schema solo se añade cuando el perfil existe y es verificable.
```

#### Sub-bloque B — Regla §28 (revisar LocalBusiness schema)

##### Explicación (§28.1 literal)

El schema LocalBusiness debe reflejar la información real del negocio. Después de crear el GBP, se revisan nombre, teléfono, dirección, área servida, URL, email y sameAs. Si el negocio oculta dirección por ser service area business, la implementación debe revisarse con cuidado.

##### Patrón o fórmula (§28.2 literal)

```text
LocalBusiness schema = final NAP + main service + areaServed + verified sameAs
```

##### Ejemplo correcto con Cerrajeros Madrid 24h (§28.3 literal)

```text
"@type": "LocalBusiness",
"name": "Cerrajeros Madrid 24h",
"telephone": "+34 600 000 000",
"areaServed": "Madrid",
"sameAs": ["GBP URL verificada"]
```

##### Ejemplos incorrectos (§28.4 literal)

```text
- Usar dirección distinta a la del GBP.
- Añadir areaServed enorme sin cobertura real.
- Omitir sameAs después de tener GBP verificado.
```

##### Regla final (§28.5 literal)

```text
El schema debe reflejar el GBP verificado y la cobertura real del negocio.
```

#### Validación operativa

Validar contra el check del §10: "Schema update queued".

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** mantener Schema base (Organization, WebSite, LocalBusiness, Service, areaServed) sin sameAs GBP hasta crear el perfil. Tras verificación, añadir sameAs con la URL real del GBP y revisar NAP / areaServed.

#### Output del paso

- **Tipo:** Plan + snippets schema (placeholder pre-GBP, definitivo post-verificación).
- **Ejemplo Cerrajeros:** ver bloque B literal arriba (`"@type": "LocalBusiness", "name": "Cerrajeros Madrid 24h", "telephone": "+34 600 000 000", "areaServed": "Madrid", "sameAs": ["GBP URL verificada"]`). Placeholder durante Paso 14: `"sameAs": ["https://www.google.com/maps?cid=REAL_CID_OR_GBP_URL"]`.

### 14.17 — Homepage update plan

<small>§9.17</small>

> Cubre la regla operativa §21 del original — Actualizar la homepage después de verificar el perfil.

#### Explicación (§21.1 literal)

La homepage es el Root Entity Anchor. Después de crear el GBP, debe reflejar señales reales: enlace al perfil, reseñas si ya existen, mapa si procede, NAP sincronizado y trust blocks actualizados. Antes de ese momento no debe fingir señales de Google.

#### Patrón o fórmula (§21.2 literal)

```text
Verified GBP → homepage trust section update
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§21.3 literal)

```text
Actualizar homepage:
- Añadir enlace al GBP
- Añadir reseñas reales cuando existan
- Revisar NAP
- Añadir mapa si procede
```

#### Ejemplos incorrectos (§21.4 literal)

```text
- Añadir un mapa de una ubicación incorrecta.
- Mostrar reseñas antes de recopilarlas.
- Dejar la homepage sin actualizar después de crear el GBP.
```

#### Regla final (§21.5 literal)

```text
La homepage debe sincronizarse con el GBP después de verificarlo.
```

#### Validación operativa

Validar contra el check del §10: "Homepage update queued".

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** preparar 4 acciones para HP-001 post-verificación: añadir enlace al GBP, integrar reseñas reales cuando existan, revisar NAP, añadir mapa si procede.

#### Output del paso

- **Tipo:** Plan (4 acciones).
- **Ejemplo Cerrajeros:** ver §21.3 literal arriba.

### 14.18 — Contact page update plan

<small>§9.18</small>

> Cubre la regla operativa §22 del original — Actualizar la página de contacto.

#### Explicación (§22.1 literal)

La página de contacto debe ser la fuente más clara para NAP, teléfono, dirección, modelo de servicio y URLs de contacto. Después de crear el GBP, debe reflejar el mismo NAP y puede incluir mapa o enlace al perfil si procede.

#### Patrón o fórmula (§22.2 literal)

```text
Contact Page = final NAP + contact options + verified GBP reference
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§22.3 literal)

```text
/contacto/
- Teléfono clicable
- Dirección consistente
- Horario 24h si aplica
- Áreas de cobertura
- Enlace al GBP después de verificación
```

#### Ejemplos incorrectos (§22.4 literal)

```text
- Página de contacto sin dirección ni teléfono.
- Teléfono distinto al del GBP.
- Mapa de una ubicación no relacionada.
```

#### Regla final (§22.5 literal)

```text
La página de contacto debe coincidir con el GBP y con el schema.
```

#### Validación operativa

Validar contra el check del §10: "Contact page update queued".

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** preparar 5 elementos para `/contacto/`: teléfono clicable, dirección consistente, horario 24h si aplica, áreas de cobertura, enlace al GBP post-verificación.

#### Output del paso

- **Tipo:** Plan (5 elementos).
- **Ejemplo Cerrajeros:** ver §22.3 literal arriba.

### 14.19 — Tracking baseline plan

<small>§9.19</small>

> Cubre la regla operativa §30 del original — Medir la visibilidad después de crear el GBP.

#### Explicación (§30.1 literal)

La creación del GBP permite empezar a medir señales locales con más claridad. Se deben revisar geo-grid, búsquedas de marca, consultas servicio + ciudad, clics desde GBP, llamadas, formularios y páginas de destino. La medición ayuda a decidir qué mejorar después.

#### Patrón o fórmula (§30.2 literal)

```text
GBP created → baseline geo-grid → monitor → optimize website and GBP
```

#### Ejemplo correcto con Cerrajeros Madrid 24h (§30.3 literal)

```text
Keywords iniciales:
- cerrajero madrid
- cerrajero urgente madrid
- apertura de puertas madrid
- cambio de cerraduras madrid
```

#### Ejemplos incorrectos (§30.4 literal)

```text
- Crear GBP y no medir nada.
- Medir solo tráfico orgánico sin revisar GBP.
- Optimizar posts o fotos sin mirar rendimiento local.
```

#### Regla final (§30.5 literal)

```text
Después del GBP, la optimización se basa en datos de perfil, web y geo-grid.
```

#### Validación operativa

Validar contra el check del §10: "Tracking ready".

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** configurar GMB Crush geo-grid (post-verificación), GSC y GA4 activos, GBP performance a revisar tras creación. Definir keywords iniciales (servicio + ciudad).

#### Output del paso

- **Tipo:** Plan + keywords iniciales.
- **Ejemplo Cerrajeros:** geo-grid (post-verificación), GSC activo, GA4 activo, GBP performance (post-creación) + keywords iniciales del §30.3 literal arriba.

### 14.20 — Lista de riesgos

<small>§9.20</small>

> Derivado de las reglas operativas §25 (Evitar duplicados de GBP), §19 (Alinear Local Coverage Areas con el GBP) y del cierre §33 del original. Reúne los riesgos doctrinales que el Paso 14 debe enumerar antes de cerrar.

#### Sub-bloque A — Regla §25 (evitar duplicados)

##### Explicación (§25.1 literal)

Crear perfiles duplicados puede causar problemas de visibilidad, confianza y suspensión. Antes de crear el nuevo GBP se debe comprobar que no exista un perfil previo para el mismo negocio, dirección o teléfono. Si existe, hay que gestionarlo antes de crear otro.

##### Patrón o fórmula (§25.2 literal)

```text
Check existing GBP → claim/update if exists → create only if no valid profile exists
```

##### Ejemplo correcto con Cerrajeros Madrid 24h (§25.3 literal)

```text
Antes de crear:
- Buscar el nombre del negocio
- Buscar la dirección
- Buscar el teléfono
- Comprobar si hay ficha antigua o duplicada
```

##### Ejemplos incorrectos (§25.4 literal)

```text
- Crear otra ficha porque no se recuerda el acceso.
- Crear fichas por barrio.
- Crear fichas por cada servicio.
```

##### Regla final (§25.5 literal)

```text
Un negocio local debe evitar perfiles duplicados salvo que existan ubicaciones reales y elegibles.
```

#### Sub-bloque B — Regla §19 (alinear LCAs con el GBP)

##### Explicación (§19.1 literal)

Las Local Coverage Areas se usan en la web como cobertura real y señales GEO. En el GBP se deben configurar de forma coherente si el modelo lo permite. No se debe añadir cobertura en zonas donde el negocio no atiende realmente, ni convertir automáticamente cada zona en una ficha o URL.

##### Patrón o fórmula (§19.2 literal)

```text
Local Coverage Areas in website → GBP service areas if accurate → no automatic URLs
```

##### Ejemplo correcto con Cerrajeros Madrid 24h (§19.3 literal)

```text
Local Coverage Areas:
Almagro, Chamberí, Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela
```

##### Ejemplos incorrectos (§19.4 literal)

```text
- Añadir toda la Comunidad de Madrid si no hay capacidad real.
- Crear perfiles duplicados para cada barrio.
- Usar Local Coverage Areas como si fueran sedes físicas.
```

##### Regla final (§19.5 literal)

```text
Las áreas del GBP deben representar cobertura real, no expansión artificial.
```

#### Validación operativa

Validar contra los checks del §10: "Duplicate check done" y "No fake office claim".

#### Cómo se obtiene

- **Fuente:** Doctrina GMB Crush.
- **Método:** consolidar riesgos derivados de §25, §19 y del cierre §33: duplicados, LCAs sin cobertura real, categorías huérfanas, schema con GBP URL inventada, reseñas reclamadas antes de existir, horarios contradictorios, falsa oficina física, olvidar la cola de actualización post-GBP.

#### Output del paso

- **Tipo:** Lista (8 riesgos).
- **Ejemplo Cerrajeros:** ver §7 14.20 arriba (lista completa).

## Checklist Final

<small>§10</small>

> 20 checks literales del §31 del original.

- ☐ **GBP status confirmed** — ¿Se confirmó si el GBP no existe, está creado o está verificado?
- ☐ **Website base ready** — ¿La homepage, contacto, GeoHub y páginas core están publicadas?
- ☐ **Final NAP approved** — ¿El NAP final coincide con web, schema y perfil?
- ☐ **Business model selected** — ¿Storefront, service area business o híbrido está definido correctamente?
- ☐ **Primary category confirmed** — ¿La categoría principal confirmada está soportada por la web?
- ☐ **Additional categories reviewed** — ¿Las categorías adicionales tienen soporte o cola de producción?
- ☐ **Services mapped** — ¿Los servicios del GBP coinciden con páginas y servicios reales?
- ☐ **Website URL selected** — ¿El GBP apunta a la URL correcta?
- ☐ **UTM prepared** — ¿La URL con tracking está preparada sin romper canonicals?
- ☐ **Business description approved** — ¿La descripción refleja servicios, ciudad y cobertura sin stuffing?
- ☐ **Photos prepared** — ¿Existe un pack de fotos realista y verificable?
- ☐ **Review plan ready** — ¿Hay estrategia para reseñas reales sin inventar pruebas?
- ☐ **Q&A planned** — ¿Las preguntas frecuentes del GBP están alineadas con la web?
- ☐ **Posts planned** — ¿Los posts conectan con páginas web reales?
- ☐ **No fake office claim** — ¿No se afirma ubicación física en zonas de cobertura sin sede real?
- ☐ **Duplicate check done** — ¿Se revisó si existe un GBP previo o duplicado?
- ☐ **Schema update queued** — ¿Se planificó añadir sameAs solo después del GBP real?
- ☐ **Homepage update queued** — ¿La homepage queda marcada para actualización post-GBP?
- ☐ **Contact page update queued** — ¿La página de contacto queda marcada para actualización post-GBP?
- ☐ **Tracking ready** — ¿Se preparó geo-grid, GSC, GA4 y seguimiento de GBP?

## Outputs Consolidados

<small>§11</small>

| ID | Hereda de | Output y valor (Cerrajeros Madrid 24h) | Cómo se obtiene + Fuente | Status |
|---|---|---|---|---|
| 14.1 | ← Paso-18 18.6 | **GBP creado o plan listo** = `Not Created (a crear post-Paso 18)` + pre-condiciones cumplidas (HP, contacto, GeoHub, LBS-001, LBS-002 publicadas) | Confirmar publicación de web base antes de crear (§9.1 / §7 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.2 | — | **Estado de verificación** = `Not Created` (de los 5 valores: Not Created / Created / Verified / Pending Verification / Suspended) | Declarar uno de los 5 valores del intake §4 (§9.2). **Fuente:** Cliente preflight + Doctrina GMB Crush. | confirmed |
| 14.3 | ← Paso-01 1.4 | **NAP final** = `Cerrajeros Madrid 24h / Calle Rafael Calvo 12 / Barrio Almagro, Distrito Chamberí / Madrid / Comunidad de Madrid / 28010 / España / +34 600 000 000` | Web NAP = Schema NAP = Contact Page NAP = GBP NAP (§9.3 / §9 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.4 | ← Paso-01 1.4 | **Modelo de negocio** = `Service Area Business` | Realidad operativa: servicio en ubicaciones del cliente (§9.4 / §10 original). **Fuente:** Cliente preflight + Doctrina GMB Crush. | confirmed |
| 14.5 | ← Paso-01 1.7 | **Categoría principal** = `Cerrajero` + **GBP Name** = `Cerrajeros Madrid 24h` (sin keyword stuffing) | Confirmar categoría planificada con availability + relevance + website support (§9.5 / §8 + §26 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.6 | ← Paso-01 1.8 | **Adicionales confirmadas** = `Servicio de cerrajería de urgencia, Servicio de duplicado de llaves` (con AC-001) / **Descartadas** = `Tienda de llaves, Servicio de seguridad, Reparación de puertas` | Cada AC requiere servicio real + página soporte + relevancia local; sin soporte → cola producción o descarte (§9.6 / §14 + §27 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.7 | ← Paso-03 3.5 | **Servicios mapeados** = `Cerrajero urgente→LBS-001, Apertura de puertas→LBS-002, Cambio de cerraduras→LBS-003, Cambio de bombines→LBS-004, Instalación cerraduras seguridad→LBS-005, Duplicado de llaves→AC-001` | GBP Service → SO o LBS o AC publicada (§9.7 / §13 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.8 | ← Paso-04 | **URL web GBP** = `https://www.cerrajerosmadrid24h.com/` (HP-001) | Homepage como Root Entity Anchor (§9.8 / §11 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.9 | ← Paso-13 13.8 | **URL UTM** = `https://www.cerrajerosmadrid24h.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp` | Tracking sin alterar canonical (§9.9 / §12 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.10 | ← Paso-15 | **Descripción + Hours** = `Cerrajeros Madrid 24h ofrece servicios de cerrajería en Madrid...` + `24 horas` | Patrón brand + primary category + Main City + core services + local coverage + CTA soft, hours = Service Promise (§9.10 / §17 + §18 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.11 | — | **Plan de fotos** = Logo (Sí), Cover (Sí), Exterior (procede), Interior (no prioritario en SAB), Team (Sí), Vehicle (Sí), Work examples (Sí), Local context (Sí) | Logo + cover + team/vehicle/tools/work + local context, sin oficina ficticia (§9.11 / §16 original). **Fuente:** Cliente preflight + Doctrina GMB Crush. | confirmed |
| 14.12 | — | **Plan Q&A** = `¿Ofrecéis cerrajero urgente en Madrid?`, `¿Atendéis en Chamberí, Salamanca y Retiro?`, `¿Podéis hacer apertura de puertas sin dañar la cerradura?` | Método 6-pasos §23.6: Auto-Suggest + PAA + KW informacional + competidores + filtrar + redactar (§9.12 / §23 original). **Fuente:** Doctrina + Keyword research. | confirmed |
| 14.13 | ← Paso-08 | **Plan posts** = 1 post por URL P≥P2: `Presentación` (HP-001), `Cerrajero urgente 24h` (LBS-001), `Cambio de cerraduras y bombines` (LBS-003/LBS-004) | Método 6-pasos §24.6: URLs P≥P2 + KW transaccional + 1-3 posts/URL + 1/sem + revisión 4 sem (§9.13 / §24 original). **Fuente:** Doctrina + Keyword research. | confirmed |
| 14.14 | — | **Estrategia reseñas** = `Solicitar reseñas a clientes reales después de servicios completados, sin incentivos prohibidos y sin reseñas inventadas.` | Pre-GBP trust signals sin reclamar reseñas Google + post-GBP recolección real + benchmarking top 5 GBP competidores (§9.14 / §15 original + divergencia operador). **Fuente:** Doctrina + Local Pack. | confirmed |
| 14.15 | ← Paso-03 3.5 | **Cola actualización** = pages `/, /madrid/, /cerrajero/madrid/cerrajero-urgente/, /cerrajero/madrid/apertura-puertas/, /contacto/` + 5 acciones (sameAs, trust block, contacto, enlace perfil, reseñas) | Verified GBP → update queue → QA → publish → tracking (§9.15 / §29 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.16 | ← Paso-17 | **Schema update** = pre-GBP `Organization + WebSite + LocalBusiness + Service + areaServed sin sameAs GBP` / post-verificación `sameAs += https://www.google.com/maps?cid=REAL_CID_OR_GBP_URL` + revisar NAP/areaServed | Schema base sin GBP URL hasta verificación; tras verificación sameAs + revisión LocalBusiness (§9.16 / §20 + §28 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.17 | ← Paso-15 / Paso-17 | **Homepage update** = añadir enlace al GBP, reseñas reales cuando existan, revisar NAP, añadir mapa si procede | Verified GBP → homepage trust section update (§9.17 / §21 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.18 | ← Paso-15 / Paso-17 | **Contact page update** = teléfono clicable, dirección consistente, horario 24h, áreas de cobertura, enlace al GBP post-verificación | Contact = final NAP + contact options + verified GBP reference (§9.18 / §22 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.19 | ← Paso-13 13.8 | **Tracking baseline** = geo-grid (post-verificación), GSC activo, GA4 activo, GBP performance + keywords iniciales `cerrajero madrid, cerrajero urgente madrid, apertura de puertas madrid, cambio de cerraduras madrid` | GBP creado → baseline geo-grid → monitor → optimize (§9.19 / §30 original). **Fuente:** Doctrina GMB Crush. | confirmed |
| 14.20 | — | **Lista de riesgos** = 8 riesgos (duplicados, LCAs sin cobertura real, AC huérfanas, schema con GBP URL inventada, reseñas pre-existencia, horarios contradictorios, falsa oficina física, olvidar cola post-GBP) | Derivado de §25 + §19 + cierre §33 (§9.20). **Fuente:** Doctrina GMB Crush. | confirmed |

# Bloque IV — Fuentes Internas GMB Crush usadas

<small>§12</small>

Lista literal de las 8 fuentes del §34 del original:

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework

## Apéndice — Nota importante (literal del original)

> **Nota importante — GBP Services ≠ core services del sitio web:**
> Las categorías adicionales del Google Business Profile (como "Servicio de duplicado de llaves") pueden tener página propia en la web, pero **no forman parte de `core_services`**. La variable `core_services` define los 5 servicios principales que generan Service Overview, LBS y GeoArticles. Las Additional Categories con página propia se gestionan por separado mediante `additional_categories_with_page`. No mezclar ambos conjuntos.

## Cierre del Paso 14

> Cierre literal §33 del original.

El Paso 14 convierte la web en una entidad local conectada al ecosistema GBP.
Los pasos 1–13 construyen la base web.
El Paso 14 crea, verifica y sincroniza el perfil.
La regla central es simple:

```text
Primero la web como fuente de verdad.
Después el GBP como entidad local conectada.
Finalmente, sincronización continua entre web, perfil y tracking.
```
