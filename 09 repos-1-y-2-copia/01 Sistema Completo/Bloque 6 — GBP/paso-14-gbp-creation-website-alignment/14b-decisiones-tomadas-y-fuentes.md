# Paso 14 — GBP Creation & Website Alignment

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`14a-ejecucion-gbp-creation-website-alignment.md`).

---

## Bloque 1 — Momento de creación y estado inicial

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 14.01 | Se decide crear el GBP después de publicar la web base | After website launch | GMB Crush | GBP sin web detrás no soporta sameAs ni schema integrado | no | §7 |
| 14.02 | Se define el estado inicial del GBP | Not Created | GMB Crush | Estado inicial determina qué se construye y qué se hereda | ← 1.04 | §7 |
| 14.03 | Se decide sincronizar GBP, web, schema y tracking al final | Paso 14 como cierre | GMB Crush | Cierre conjunto evita desalineamientos entre canales | no | §29 |

## Bloque 2 — NAP, modelo de negocio y dirección

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 14.04 | Se define el NAP final para el GBP | Cerrajeros Madrid 24h + Calle Rafael Calvo 12 + Madrid + teléfono | GMB Crush | NAP discrepante entre web y GBP rompe verificación local | ← 1.08–1.15 | §9 |
| 14.05 | Se define el modelo de negocio | Service Area Business | Input humano | Modelo (SAB/Storefront/Hybrid) condiciona dirección y radio | no | §10 |
| 14.06 | Se define la dirección física | Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid | GMB Crush | Dirección verificable es el ancla de la entidad local | ← 1.19 | §9 |
| 14.07 | Se decide que mostrar la dirección públicamente depende del modelo y elegibilidad | Depends on business model and eligibility | GMB Crush | Mostrar dirección de un SAB puede romper elegibilidad GBP | no | §10 |

## Bloque 3 — Main City y Local Coverage Areas

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 14.08 | Se define la Main City para el GBP | Madrid | GMB Crush | Main City divergente entre web y GBP fragmenta la entidad | ← 1.20 | §9 |
| 14.09 | Se definen Direct Local Coverage Areas para el GBP | Almagro, Chamberí | GMB Crush | Direct LCAs en GBP refuerzan señales locales fuertes | ← 1.22, 1.23 | §19 |
| 14.10 | Se definen Candidate Local Coverage Areas para el GBP | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad | GMB Crush | Sin test GEO 3/6 las candidatas son ruido en el GBP | ← 1.24–1.31 | §19 |
| 14.11 | Se decide que no hay Approved Expansion Areas en fase inicial | None in Phase 1 | GMB Crush | Expansión sin tracción real produce áreas zombie en GBP | no | §19 |

## Bloque 4 — Categorías GBP

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 14.12 | Se confirma la categoría principal GBP prevista | Cerrajero | GMB Crush | Categoría primaria mal elegida desactiva el Local Pack | ← 1.16 | §8 |
| 14.13 | Se confirma la primera categoría adicional GBP prevista | Servicio de cerrajería de urgencia | GMB Crush | Adicionales amplían cobertura sin diluir la primaria | ← 1.17 | §8 |
| 14.14 | Se confirma la segunda categoría adicional GBP prevista | Servicio de duplicado de llaves | GMB Crush | Adicionales amplían cobertura sin diluir la primaria | ← 1.18 | §8 |
| 14.15 | Se decide no añadir categoría de seguridad sin soporte web real | No añadir Proveedor de sistemas de seguridad | GMB Crush | Categoría GBP sin landing web rompe trust y E-E-A-T | no | §14 |

## Bloque 5 — Servicios del GBP

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 14.16 | Se define el servicio GBP 1 | Apertura de puertas | GMB Crush | Servicios GBP duplican señales si coinciden con la web | ← 1.35 | §8 |
| 14.17 | Se define el servicio GBP 2 | Cerrajero urgente | GMB Crush | Servicios GBP duplican señales si coinciden con la web | ← 1.34 | §8 |
| 14.18 | Se define el servicio GBP 3 | Cambio de cerraduras | GMB Crush | Servicios GBP duplican señales si coinciden con la web | ← 1.36 | §8 |
| 14.19 | Se define el servicio GBP 4 | Cambio de bombines | GMB Crush | Servicios GBP duplican señales si coinciden con la web | ← 1.37 | §8 |
| 14.20 | Se define el servicio GBP 5 | Duplicado de llaves | GMB Crush | Servicio extra cubre la categoría adicional efectiva | ← 1.18 | §8 |
| 14.21 | Se define el servicio GBP 6 | Instalación de cerraduras de seguridad | GMB Crush | Servicios GBP duplican señales si coinciden con la web | ← 1.38 | §8 |

## Bloque 6 — URLs conectadas al GBP

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 14.22 | Se define la URL web que se conectará al GBP | https://www.cerrajerosmadrid24h.com/ | GMB Crush | URL canónica diferente entre GBP y web rompe sameAs | ← 1.02 | §11 |
| 14.23 | Se define la URL de contacto o cita | https://www.cerrajerosmadrid24h.com/contacto/ | GMB Crush | URL específica de contacto mejora el flujo de conversión | ← 1.02 | §11 |

## Bloque 7 — Horarios y recursos visuales

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 14.24 | Se definen horarios de apertura | 24 horas, todos los días | Input humano | Horarios reales determinan disponibilidad y trust en SERP | no | §18 |
| 14.25 | Se decide preparar logo | Logo del negocio | GMB Crush | Sin logo el GBP no genera reconocimiento de marca | no | §16 |
| 14.26 | Se decide preparar cover photo | Foto de portada del GBP | GMB Crush | Cover photo afecta CTR del listado en Local Pack | no | §16 |
| 14.27 | Se decide preparar foto de exterior | Solo si procede según modelo de negocio (Service Area Business) | GMB Crush | Foto exterior en SAB puede sugerir storefront falso | ← 14.05 | §16 |
| 14.28 | Se decide preparar foto de interior | No prioritario si es Service Area Business | GMB Crush | Foto interior en SAB no aporta señal verificable | ← 14.05 | §16 |
| 14.29 | Se decide preparar fotos de equipo | Foto del equipo de cerrajeros | GMB Crush | Equipo visible activa señales E-E-A-T y humaniza la marca | no | §16 |
| 14.30 | Se decide preparar fotos de vehículo | Foto del vehículo de servicio | GMB Crush | Vehículo branded refuerza prueba de operación real | no | §16 |
| 14.31 | Se decide preparar fotos de trabajo | Ejemplos de trabajos realizados (cerraduras instaladas, aperturas, etc.) | GMB Crush | Trabajos reales convierten más que fotos genéricas | no | §16 |
| 14.32 | Se decide preparar fotos de contexto local | Fotos en zonas de cobertura, sin fingir oficina física en esas zonas | GMB Crush | Falsa ubicación viola guidelines y dispara penalizaciones | no | §16 |

## Bloque 8 — Q&A, posts, reseñas y tracking

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 14.33 | Se decide preparar Q&A 1 del GBP | "¿Ofrecéis cerrajero urgente en Madrid?" | GMB Crush + Datos de búsqueda | Pre-poblar Q&A real evita que la SERP las llene de spam | no | §23 |
| 14.34 | Se decide preparar Q&A 2 del GBP | "¿Atendéis en Chamberí, Salamanca y Retiro?" | GMB Crush + Datos de búsqueda | Pre-poblar Q&A real evita que la SERP las llene de spam | no | §23 |
| 14.35 | Se decide preparar Q&A 3 del GBP | "¿Podéis hacer apertura de puertas sin dañar la cerradura?" | GMB Crush + Datos de búsqueda | Pre-poblar Q&A real evita que la SERP las llene de spam | no | §23 |
| 14.36 | Se decide preparar Google Post 1 | "Presentación del negocio y servicios de cerrajería en Madrid" | GMB Crush + Datos de búsqueda | Posts señalan actividad reciente y mejoran ranking GBP | no | §24 |
| 14.37 | Se decide preparar Google Post 2 | "Servicio de cerrajero urgente 24h" | GMB Crush + Datos de búsqueda | Posts señalan actividad reciente y mejoran ranking GBP | no | §24 |
| 14.38 | Se decide preparar Google Post 3 | "Cambio de cerraduras y bombines en Madrid" | GMB Crush + Datos de búsqueda | Posts señalan actividad reciente y mejoran ranking GBP | no | §24 |
| 14.39 | Se decide crear estrategia de reseñas reales | Solicitar reseñas a clientes reales después de servicios completados, sin incentivos prohibidos y sin reseñas inventadas | GMB Crush | Fake reviews violan guidelines y pueden suspender el GBP | no | §15 |
| 14.40 | Se decide crear UTM para el enlace del GBP | https://www.cerrajerosmadrid24h.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp | GMB Crush | Sin UTM el tráfico GBP se confunde con orgánico en analítica | ← 1.02 | §12 |

## Bloque 9 — Ajustes post-GBP en la web

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 14.41 | Se decide actualizar schema después de crear el GBP | Añadir `sameAs` cuando exista GBP URL | GMB Crush | sameAs cierra el grafo entre web y GBP en knowledge graph | no | §20 |
| 14.42 | Se decide actualizar la Homepage tras crear el GBP | Añadir GBP URL, reseñas reales si existen, trust blocks | GMB Crush | Homepage sin trust real desactiva conversión post-GBP | no | §21 |
| 14.43 | Se decide actualizar la página de contacto tras crear el GBP | Añadir datos confirmados y mapa si procede | GMB Crush | Contacto sin datos GBP confirma falta de coherencia | no | §22 |
| 14.44 | Se decide actualizar las Location-Based Service Pages tras crear el GBP | Ajustar schema, `sameAs`, reseñas y NAP | GMB Crush | LBS sin sameAs queda desconectada del knowledge graph | no | §22 |
| 14.45 | Se decide actualizar el GeoHub tras crear el GBP | Alinear cobertura, reviews y enlaces | GMB Crush | GeoHub debe reflejar la realidad GBP para no contradecirse | no | §22 |

## Bloque 10 — No invención

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 14.46 | Se decide no inventar reseñas antes de que existan | Reseñas iniciales pendientes | GMB Crush | Fake reviews violan guidelines y pueden suspender el GBP | no | §15 |
| 14.47 | Se decide no inventar GBP URL antes de crear el perfil | GBP URL N/A hasta creación | GMB Crush | URL inventada rompe sameAs y dispara penalizaciones | no | §11 |
