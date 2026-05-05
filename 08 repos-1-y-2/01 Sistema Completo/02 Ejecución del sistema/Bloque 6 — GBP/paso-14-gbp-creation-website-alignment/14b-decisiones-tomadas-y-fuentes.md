# Paso 14 — GBP Creation & Website Alignment

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Por qué esta decisión`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Por qué esta decisión** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Fuente de la decisión** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Manual resuelve** — `Sí` si el manual cubre la decisión completa; `No` si falta acción externa (Competidores, Datos de búsqueda).
- **Viene de una decisión anterior** — `no` o `← X.YY`.
- **Referencia exacta en el manual** — una o varias referencias canónicas separadas por `;`.

---

## Bloque 1 — Momento de creación y estado inicial

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 14.01 | Se decide crear el GBP después de publicar la web base | After website launch | GBP sin web detrás no soporta sameAs ni schema integrado | GMB Crush | Sí | no |  Paso-14 §7; Paso-10 §7 |
| 14.02 | Se define el estado inicial del GBP | Not Created | Estado inicial determina qué se construye y qué se hereda | GMB Crush | Sí | ← 1.04 |  Paso-14 §7; Paso-01 §4 |
| 14.03 | Se decide sincronizar GBP, web, schema y tracking al final | Paso 14 como cierre | Cierre conjunto evita desalineamientos entre canales | GMB Crush | Sí | no |  Paso-14 §29 |

## Bloque 2 — NAP, modelo de negocio y dirección

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 14.04 | Se define el NAP final para el GBP | Cerrajeros Madrid 24h + Calle Rafael Calvo 12 + Madrid + teléfono | NAP discrepante entre web y GBP rompe verificación local | GMB Crush | Sí | ← 1.08–1.15 |  Paso-14 §9; Paso-01 §9 |
| 14.05 | Se define el modelo de negocio | Service Area Business | Modelo (SAB/Storefront/Hybrid) condiciona dirección y radio | Input humano | Sí | no |  Paso-14 §10 |
| 14.06 | Se define la dirección física | Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid | Dirección verificable es el ancla de la entidad local | GMB Crush | Sí | ← 1.19 |  Paso-14 §9; Paso-01 §9 |
| 14.07 | Se decide que mostrar la dirección públicamente depende del modelo y elegibilidad | Depends on business model and eligibility | Mostrar dirección de un SAB puede romper elegibilidad GBP | GMB Crush | Sí | no |  Paso-14 §10 |

## Bloque 3 — Main City y Local Coverage Areas

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 14.08 | Se define la Main City para el GBP | Madrid | Main City divergente entre web y GBP fragmenta la entidad | GMB Crush | Sí | ← 1.20 |  Paso-14 §9; Paso-01 §12 |
| 14.09 | Se definen Direct Local Coverage Areas para el GBP | Almagro, Chamberí | Direct LCAs en GBP refuerzan señales locales fuertes | GMB Crush | Sí | ← 1.22, 1.23 |  Paso-14 §19; Paso-01 §15 |
| 14.10 | Se definen Candidate Local Coverage Areas para el GBP | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad | Sin test GEO 3/6 las candidatas son ruido en el GBP | GMB Crush | Sí | ← 1.24–1.31 |  Paso-14 §19; Paso-01 §15 |
| 14.11 | Se decide que no hay Approved Expansion Areas en fase inicial | None in Phase 1 | Expansión sin tracción real produce áreas zombie en GBP | GMB Crush | Sí | no |  Paso-14 §19; Paso-01 §16 |

## Bloque 4 — Categorías GBP

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 14.12 | Se confirma la categoría principal GBP prevista | Cerrajero | Categoría primaria mal elegida desactiva el Local Pack | GMB Crush | Sí | ← 1.16 |  Paso-14 §8; Paso-01 §10 |
| 14.13 | Se confirma la primera categoría adicional GBP prevista | Servicio de cerrajería de urgencia | Adicionales amplían cobertura sin diluir la primaria | GMB Crush | Sí | ← 1.17 |  Paso-14 §8; Paso-01 §11 |
| 14.14 | Se confirma la segunda categoría adicional GBP prevista | Servicio de duplicado de llaves | Adicionales amplían cobertura sin diluir la primaria | GMB Crush | Sí | ← 1.18 |  Paso-14 §8; Paso-01 §11 |
| 14.15 | Se decide no añadir categoría de seguridad sin soporte web real | No añadir Proveedor de sistemas de seguridad | Categoría GBP sin landing web rompe trust y E-E-A-T | GMB Crush | Sí | no |  Paso-14 §14; Paso-05 §10 |

## Bloque 5 — Servicios del GBP

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 14.16 | Se define el servicio GBP 1 | Apertura de puertas | Servicios GBP duplican señales si coinciden con la web | GMB Crush | Sí | ← 1.35 |  Paso-14 §8; Paso-01 §14; Paso-01 §21 |
| 14.17 | Se define el servicio GBP 2 | Cerrajero urgente | Servicios GBP duplican señales si coinciden con la web | GMB Crush | Sí | ← 1.34 |  Paso-14 §8; Paso-01 §14; Paso-01 §21 |
| 14.18 | Se define el servicio GBP 3 | Cambio de cerraduras | Servicios GBP duplican señales si coinciden con la web | GMB Crush | Sí | ← 1.36 |  Paso-14 §8; Paso-01 §14; Paso-01 §21 |
| 14.19 | Se define el servicio GBP 4 | Cambio de bombines | Servicios GBP duplican señales si coinciden con la web | GMB Crush | Sí | ← 1.37 |  Paso-14 §8; Paso-01 §14; Paso-01 §21 |
| 14.20 | Se define el servicio GBP 5 | Duplicado de llaves | Servicio extra cubre la categoría adicional efectiva | GMB Crush | Sí | ← 1.18 |  Paso-14 §8; Paso-01 §14; Paso-01 §21 |
| 14.21 | Se define el servicio GBP 6 | Instalación de cerraduras de seguridad | Servicios GBP duplican señales si coinciden con la web | GMB Crush | Sí | ← 1.38 |  Paso-14 §8; Paso-01 §14; Paso-01 §21 |

## Bloque 6 — URLs conectadas al GBP

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 14.22 | Se define la URL web que se conectará al GBP | https://www.cerrajerosmadrid24h.com/ | URL canónica diferente entre GBP y web rompe sameAs | GMB Crush | Sí | ← 1.02 |  Paso-14 §11; Paso-01 §8 |
| 14.23 | Se define la URL de contacto o cita | https://www.cerrajerosmadrid24h.com/contacto/ | URL específica de contacto mejora el flujo de conversión | GMB Crush | Sí | ← 1.02 |  Paso-14 §11; Paso-04 §7; Paso-01 §8 |

## Bloque 7 — Horarios y recursos visuales

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 14.24 | Se definen horarios de apertura | 24 horas, todos los días | Horarios reales determinan disponibilidad y trust en SERP | Input humano | Sí | no |  Paso-14 §18 |
| 14.25 | Se decide preparar logo | Logo del negocio | Sin logo el GBP no genera reconocimiento de marca | GMB Crush | Sí | no |  Paso-14 §16 |
| 14.26 | Se decide preparar cover photo | Foto de portada del GBP | Cover photo afecta CTR del listado en Local Pack | GMB Crush | Sí | no |  Paso-14 §16 |
| 14.27 | Se decide preparar foto de exterior | Solo si procede según modelo de negocio (Service Area Business) | Foto exterior en SAB puede sugerir storefront falso | GMB Crush | Sí | ← 14.05 |  Paso-14 §16 |
| 14.28 | Se decide preparar foto de interior | No prioritario si es Service Area Business | Foto interior en SAB no aporta señal verificable | GMB Crush | Sí | ← 14.05 |  Paso-14 §16 |
| 14.29 | Se decide preparar fotos de equipo | Foto del equipo de cerrajeros | Equipo visible activa señales E-E-A-T y humaniza la marca | GMB Crush | Sí | no |  Paso-14 §16 |
| 14.30 | Se decide preparar fotos de vehículo | Foto del vehículo de servicio | Vehículo branded refuerza prueba de operación real | GMB Crush | Sí | no |  Paso-14 §16 |
| 14.31 | Se decide preparar fotos de trabajo | Ejemplos de trabajos realizados (cerraduras instaladas, aperturas, etc.) | Trabajos reales convierten más que fotos genéricas | GMB Crush | Sí | no |  Paso-14 §16 |
| 14.32 | Se decide preparar fotos de contexto local | Fotos en zonas de cobertura, sin fingir oficina física en esas zonas | Falsa ubicación viola guidelines y dispara penalizaciones | GMB Crush | Sí | no |  Paso-14 §16 |

## Bloque 8 — Q&A, posts, reseñas y tracking

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 14.33 | Se decide preparar Q&A 1 del GBP | "¿Ofrecéis cerrajero urgente en Madrid?" | Pre-poblar Q&A real evita que la SERP las llene de spam | GMB Crush + Datos de búsqueda | No | no |  Paso-14 §23 |
| 14.34 | Se decide preparar Q&A 2 del GBP | "¿Atendéis en Chamberí, Salamanca y Retiro?" | Pre-poblar Q&A real evita que la SERP las llene de spam | GMB Crush + Datos de búsqueda | No | no |  Paso-14 §23 |
| 14.35 | Se decide preparar Q&A 3 del GBP | "¿Podéis hacer apertura de puertas sin dañar la cerradura?" | Pre-poblar Q&A real evita que la SERP las llene de spam | GMB Crush + Datos de búsqueda | No | no |  Paso-14 §23 |
| 14.36 | Se decide preparar Google Post 1 | "Presentación del negocio y servicios de cerrajería en Madrid" | Posts señalan actividad reciente y mejoran ranking GBP | GMB Crush + Datos de búsqueda | No | no |  Paso-14 §24 |
| 14.37 | Se decide preparar Google Post 2 | "Servicio de cerrajero urgente 24h" | Posts señalan actividad reciente y mejoran ranking GBP | GMB Crush + Datos de búsqueda | No | no |  Paso-14 §24 |
| 14.38 | Se decide preparar Google Post 3 | "Cambio de cerraduras y bombines en Madrid" | Posts señalan actividad reciente y mejoran ranking GBP | GMB Crush + Datos de búsqueda | No | no |  Paso-14 §24 |
| 14.39 | Se decide crear estrategia de reseñas reales | Solicitar reseñas a clientes reales después de servicios completados, sin incentivos prohibidos y sin reseñas inventadas | Fake reviews violan guidelines y pueden suspender el GBP | GMB Crush | Sí | no |  Paso-14 §15 |
| 14.40 | Se decide crear UTM para el enlace del GBP | https://www.cerrajerosmadrid24h.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp | Sin UTM el tráfico GBP se confunde con orgánico en analítica | GMB Crush | Sí | ← 1.02 |  Paso-14 §12; Paso-01 §8 |

## Bloque 9 — Ajustes post-GBP en la web

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 14.41 | Se decide actualizar schema después de crear el GBP | Añadir `sameAs` cuando exista GBP URL | sameAs cierra el grafo entre web y GBP en knowledge graph | GMB Crush | Sí | no |  Paso-14 §20; Paso-14 §11 |
| 14.42 | Se decide actualizar la Homepage tras crear el GBP | Añadir GBP URL, reseñas reales si existen, trust blocks | Homepage sin trust real desactiva conversión post-GBP | GMB Crush | Sí | no |  Paso-14 §21; Paso-14 §15 |
| 14.43 | Se decide actualizar la página de contacto tras crear el GBP | Añadir datos confirmados y mapa si procede | Contacto sin datos GBP confirma falta de coherencia | GMB Crush | Sí | no |  Paso-14 §22; Paso-01 §9 |
| 14.44 | Se decide actualizar las Location-Based Service Pages tras crear el GBP | Ajustar schema, `sameAs`, reseñas y NAP | LBS sin sameAs queda desconectada del knowledge graph | GMB Crush | Sí | no |  Paso-14 §22; Paso-05 §9 |
| 14.45 | Se decide actualizar el GeoHub tras crear el GBP | Alinear cobertura, reviews y enlaces | GeoHub debe reflejar la realidad GBP para no contradecirse | GMB Crush | Sí | no |  Paso-14 §22; Paso-05 §11 |

## Bloque 10 — No invención

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 14.46 | Se decide no inventar reseñas antes de que existan | Reseñas iniciales pendientes | Fake reviews violan guidelines y pueden suspender el GBP | GMB Crush | Sí | no |  Paso-14 §15; Paso-01 §18 |
| 14.47 | Se decide no inventar GBP URL antes de crear el perfil | GBP URL N/A hasta creación | URL inventada rompe sameAs y dispara penalizaciones | GMB Crush | Sí | no |  Paso-14 §11; Paso-01 §4 |
