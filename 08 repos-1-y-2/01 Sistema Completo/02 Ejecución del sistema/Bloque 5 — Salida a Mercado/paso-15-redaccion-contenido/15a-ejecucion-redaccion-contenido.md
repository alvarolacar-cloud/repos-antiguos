Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# §1 Paso 15 — Redacción de Contenido

## §2 Índice corto

**Paso 15 — Redacción de Contenido**

## §3 Objetivo del Paso 15

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: convertir la arquitectura de 28 páginas SEO base + `/contacto/` en copy real publicable.

La arquitectura define qué páginas se crean, su jerarquía, sus URLs y su schema. Pero sin reglas claras de redacción, las páginas acaban siendo genéricas, indistinguibles del competidor, sin diferenciación real, sin contexto local y sin transición lógica entre tipos de página.

Este paso aporta tres cosas:

1. **Cuatro reglas universales de calidad** que aplican a todo el copy, sea Homepage, Service Overview, LBS, Additional Category, GeoHub o GeoArticle.
2. **Un sistema de cuatro capas** por página: Estructura, Zonas, Argumentos y Entidades. Cada capa se rellena por separado y se valida por separado.
3. **Plantillas por tipo de página** que fijan qué secciones lleva cada tipo, qué rol cumple cada sección y qué reglas anti-fricción debe respetar.

Cuando este paso se omite o se rellena mal:

- Las Service Overview compiten con las LBS por las mismas keywords.
- Las LBS no convierten porque no llevan contexto local real.
- Los GeoArticles se quedan en callejones sin salida sin enlazar a su LBS padre.
- El GeoHub se convierte en índice vacío sin contenido propio.
- La Homepage cae en clichés genéricos sin pruebas verificables.

Este paso debe ejecutarse después del Paso 7 (Internal Linking Rules) y antes del Paso 16 (Extracción de Diseño).

Error que previene: redactar copy genérico que no diferencia.
Error que previene: que la Service Overview compita con la LBS por la misma intención.
Error que previene: GeoArticles sin puente narrativo a su Location parent.
Error que previene: GeoHub sin contenido propio, solo índice de enlaces.
Error que previene: trust signals inventados sin pruebas reales.

## §4 Lo que tienes que rellenar

```text
Para cada página del inventario SEO base (Output 2.6 del Paso 2),
rellenar las 4 capas siguiendo la plantilla del page type correspondiente.

Capa 1 — Estructura:
Redactar el copy de cada sección, respetando las reglas de calidad §7.

Capa 2 — Zonas:
Aplicar Main City y Local Coverage Areas (heredadas del Paso 1) según el page type.

Capa 3 — Argumentos:
Definir el argumento principal de cada sección.

Capa 4 — Entidades:
Listar entidades reales (servicios, materiales, normativa, lugares, casos) por sección.

Validación:
Cada page type tiene un checklist obligatorio. Sin pasar el checklist, el copy no se aprueba.
```

## §5 Ejemplo rellenado

```text
Negocio: Cerrajeros Madrid 24h
Main City: Madrid
LCAs Direct: Almagro, Chamberí
LCAs Candidate: Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad
Servicios core: Cerrajero urgente, Apertura de puertas, Cambio de cerraduras, Cambio de bombines, Instalación de cerraduras de seguridad
Categoría adicional con página: Duplicado de llaves
GeoArticles totales: 15

Páginas a redactar:
- 1 Homepage
- 5 Service Overview Pages (sin ciudad)
- 5 Location-Based Service Pages (Madrid)
- 1 Additional Category Page (Duplicado de llaves Madrid)
- 1 GeoHub (/madrid/)
- 15 GeoArticles
- 1 página /contacto/ (auxiliar)

Total: 28 páginas SEO base + 1 auxiliar.
```

# §6 Cuerpo operativo del Paso 15

> **Definición operativa — Capa de redacción:** una capa es una pasada vertical sobre todas las secciones de una página rellenando un mismo tipo de información. La capa Estructura redacta el copy. La capa Zonas aplica geografía. La capa Argumentos define el "porqué" de cada sección. La capa Entidades documenta los nombres reales (servicios, materiales, normativa, lugares).

## §7 Reglas de calidad del contenido

Todo el copy generado en este paso debe cumplir estas cuatro reglas. Se aplican a las cuatro capas de cada page type.

### §7.1 Regla 1 — Hero y CTA

Define cómo debe abrirse cada página y cómo dirigir al usuario hacia la siguiente acción.

| Elemento | Requisito |
|:---|:---|
| Servicio + ciudad | Obligatorio en H1 |
| Resultado concreto | Obligatorio (tiempo, coste, garantía o mejora medible) |
| Diferenciador | Obligatorio (qué te separa de los 3 del Local Pack) |
| CTA | Claro, baja fricción, alineado al rol de la página |

Reglas operativas de la Regla 1:

- Evitar frases genéricas ("calidad", "profesionales", "los mejores").
- Incluir resultado tangible (tiempo de respuesta, rango de precio, garantía concreta).
- CTA adaptado al rol de la página (Service Overview → ver versión local; LBS → solicitar presupuesto; GeoArticle → CTA suave a Location).
- No añadir storytelling ni texto largo en el Hero. El Hero es ancla, no narrativa.

### §7.2 Regla 2 — Problema y Realidad del Servicio

Define cómo conectar el contenido con la situación real del usuario y del servicio.

| Elemento | Contenido |
|:---|:---|
| Problemas reales | Casos típicos del nicho, no abstracciones |
| Contexto real | Tipos de inmueble, estado de instalaciones, época |
| Proceso real | Fases reales del servicio, en orden |
| Fricción | Incomodidades reales durante el servicio |

Reglas operativas de la Regla 2:

- Basado en situaciones reales, no idealizadas.
- Evitar lenguaje comercial puro ("solución integral", "atención personalizada").
- Mostrar cómo es el servicio en la práctica, incluyendo las incomodidades reales.
- No simplificar en exceso el proceso. Si el servicio tiene 5 fases, se cuentan las 5.

### §7.3 Regla 3 — Datos, Precio y Opinión Experta

Define cómo construir la autoridad del contenido.

| Elemento | Contenido |
|:---|:---|
| Datos | Rangos de precio reales, tiempos, medidas, normativa |
| Factores | Variables que afectan al precio o al tiempo |
| Opinión | Recomendaciones y advertencias concretas |
| Comparativas | Opción A vs opción B con criterio claro |

Reglas operativas de la Regla 3:

- Usar datos reales del mercado local, no globales.
- No ocultar rangos de precio — la transparencia genera confianza.
- Incluir criterio profesional: posicionarse, no ser neutral.
- Evitar contenido genérico, vacío o superficial.

### §7.4 Regla 4 — Contexto Local y Realismo

Define el nivel de conexión con la realidad geográfica y del servicio.

| Elemento | Aplicación |
|:---|:---|
| Ciudad | Obligatoria en todas las páginas locales |
| Barrios y distritos | Recomendado en Location y GeoHub, mencionable en Homepage |
| Tipos de vivienda | Recomendado |
| Casos reales | Muy recomendado (sin nombres reales si no hay autorización) |

Reglas operativas de la Regla 4:

- Integrar contexto local de forma natural, no forzada.
- Usar ejemplos concretos: barrios reales, situaciones reales, materiales específicos.
- Evitar contenido abstracto o genérico.
- Diferenciarse claramente del contenido IA genérico mediante el detalle específico verificable.

## §8 Capas de redacción

Cada page type se redacta en cuatro capas verticales. La capa anterior se completa antes de pasar a la siguiente.

| Capa | Qué se rellena |
|:---|:---|
| 1 — Estructura | El copy concreto de cada sección (H1, H2, párrafos, CTAs, FAQs) |
| 2 — Zonas | Cómo se aplica Main City y Local Coverage Areas a cada sección |
| 3 — Argumentos | El argumento principal de cada sección (el "porqué") |
| 4 — Entidades | Los nombres reales mencionados (servicios, materiales, normativa, lugares, marcas) |

Cada capa tiene su checklist obligatorio. La página se aprueba cuando los cuatro checklists están en verde.

## §9 Homepage — Redacción

### §9.1 Capa 1 — Estructura

| Sección | Texto generado |
|:---|:---|
| 1) Hero | H1: SERVICIO + CIUDAD. H2: BENEFICIO CONCRETO + DIFERENCIADOR. CTA: ACCIÓN SIN COMPROMISO |
| 2) Servicios Core | Listado breve de los 5 servicios principales con descripción de 1 línea cada uno |
| 3) Autoridad | Pruebas reales: años de experiencia, equipo, garantías, certificaciones (no claims genéricos) |
| 4) Zonas | Mención ligera de Main City y Direct LCAs |
| 5) Prueba social | Testimonio o resultado real verificable (sin reseñas inventadas si el GBP no existe todavía) |
| 6) CTA | Invitación al siguiente paso (Service Overview o GeoHub), no cierre de venta |

Reglas operativas para Homepage:

- El H1 incluye servicio principal + ciudad.
- El Hero incluye beneficio claro, diferenciación y CTA.
- Servicios Core aparecen antes y con mayor prominencia que la Additional Category.
- La sección Autoridad incluye pruebas reales, no claims genéricos.
- La sección Zonas menciona Main City y Direct LCAs de forma ligera (no listado exhaustivo).
- La sección Prueba social no inventa reseñas antes del Paso 14 (regla web-first).
- El CTA está orientado al siguiente paso (Service Overview o GeoHub), no cierra la venta.
- La Homepage no desarrolla el servicio en profundidad ni compite con Service Overview o LBS.

### §9.2 Capa 2 — Zonas

| Sección | Zona aplicada |
|:---|:---|
| 1) Hero | Main City (ancla) |
| 4) Zonas | Main City + 2–4 LCAs (Direct + algunas Candidate validadas) |

Reglas operativas:

- El Hero menciona la Main City, no las LCAs.
- La sección Zonas no agota la lista de LCAs candidatas; menciona 2–4 para no saturar.

### §9.3 Capa 3 — Argumentos

Cada sección de la Homepage tiene un argumento principal. El argumento es el "porqué" que respalda el copy.

| Sección | Argumento |
|:---|:---|
| 1) Hero | Por qué este negocio resuelve este servicio mejor que el Local Pack |
| 3) Autoridad | Por qué hay que confiar en este negocio (años, certificaciones, garantías) |
| 4) Zonas | Por qué este negocio cubre estas zonas (proximidad real, tiempo de respuesta) |
| 5) Prueba social | Por qué la prueba es verificable |
| 6) CTA | Por qué el siguiente paso es ese y no otro |

### §9.4 Capa 4 — Entidades

Cada sección referencia entidades reales. Son los nombres concretos que dan credibilidad.

| Sección | Entidad |
|:---|:---|
| 1) Hero | Marca del negocio, servicio principal, ciudad |
| 2) Servicios Core | Nombre exacto de cada servicio core (heredado del Paso 1) |
| 3) Autoridad | Años, certificaciones específicas, asociaciones, premios reales |
| 4) Zonas | Nombre de la Main City y de las LCAs mencionadas |
| 5) Prueba social | Nombre del cliente (con permiso), barrio, fecha, servicio prestado |
| 6) CTA | Nombre del siguiente destino (GeoHub Madrid, Service Overview de cerrajero urgente) |

### §9.5 Checklist Homepage

| Regla de validación | Estado |
|:---|:---|
| El H1 del Hero incluye servicio principal + ciudad | ☐ |
| El Hero incluye beneficio claro, diferenciación y CTA | ☐ |
| Servicios Core aparecen antes y con mayor prominencia que la Additional Category | ☐ |
| La sección Autoridad incluye pruebas reales, no claims genéricos | ☐ |
| La sección Zonas menciona ciudad y zonas de forma ligera | ☐ |
| La sección Prueba social respeta la regla web-first (no inventa reseñas) | ☐ |
| El CTA está orientado al siguiente paso, no cierra la venta | ☐ |
| La Homepage no desarrolla el servicio en profundidad | ☐ |

## §10 Service Overview Pages — Redacción

Service Overview Page es pillar temático sin ciudad. Su rol es autoridad temática, no conversión local.

### §10.1 Capa 1 — Estructura

| Sección | Texto generado |
|:---|:---|
| 1) Hero Servicio | H1: SERVICIO. H2: BENEFICIO + PROCESO. CTA: VER COBERTURA EN [CIUDAD] |
| 2) Problema / Solución | Problema real → solución concreta |
| 3) Proceso | Fases reales del servicio numeradas |
| 4) Materiales / Opciones | Materiales técnicos reales + variantes |
| 5) Dónde operamos | Mención de la Main City + enlace a la LBS correspondiente |
| 6) FAQs | 2–3 preguntas frecuentes reales del servicio |
| 7) CTA | Enlace a la LBS — no a contacto directo |

Reglas operativas para Service Overview:

- El H1 incluye el nombre del servicio sin ciudad.
- El CTA del Hero dirige a la LBS, no a contacto directo.
- La sección Problema/Solución describe el problema real del usuario.
- La sección Proceso explica las fases reales del servicio.
- La sección Materiales incluye elementos técnicos reales.
- La sección Dónde operamos enlaza a la LBS.
- El CTA final dirige a la LBS, no a contacto directo.
- La Service Overview no compite con la LBS — su intención es informacional/temática, no conversión local.

### §10.2 Capa 2 — Zonas

| Sección | Zona aplicada |
|:---|:---|
| 5) Dónde operamos | Main City (mención y enlace) |

La Service Overview no usa LCAs (regla del Paso 6 §13). Su rol es no geolocalizado.

### §10.3 Capa 3 — Argumentos

| Sección | Argumento |
|:---|:---|
| 1) Hero | Por qué este servicio importa |
| 2) Problema/Solución | Por qué este problema es frecuente y por qué la solución es la propuesta |
| 3) Proceso | Por qué se hace así y no de otra forma |
| 4) Materiales | Por qué estos materiales y no otros |
| 5) Dónde operamos | Por qué la cobertura está en la Main City |
| 6) FAQs | Por qué cada pregunta es relevante |
| 7) CTA | Por qué la LBS es el siguiente paso |

### §10.4 Capa 4 — Entidades

| Sección | Entidad |
|:---|:---|
| 1) Hero | Servicio (nombre exacto), beneficio (medible) |
| 3) Proceso | Fases con nombres específicos, tiempos, herramientas |
| 4) Materiales | Marcas, normativas, certificaciones, modelos |
| 6) FAQs | Términos técnicos del servicio |

### §10.5 Checklist Service Overview

| Regla de validación | Estado |
|:---|:---|
| El H1 incluye el nombre del servicio sin ciudad | ☐ |
| El CTA del Hero dirige a la LBS | ☐ |
| La sección Problema/Solución describe un problema real | ☐ |
| La sección Proceso explica las fases reales | ☐ |
| La sección Materiales incluye elementos técnicos reales | ☐ |
| La sección Dónde operamos enlaza a la LBS | ☐ |
| El CTA final dirige a la LBS, no a contacto directo | ☐ |
| La Service Overview no compite con la LBS | ☐ |

## §11 Location-Based Service Pages — Redacción

Location-Based Service es Main City Converter. Es la página de conversión principal del cluster.

### §11.1 Capa 1 — Estructura

| Sección | Texto generado |
|:---|:---|
| 1) Hero Local | H1: SERVICIO + CIUDAD. H2: DIFERENCIADOR LOCAL. CTA: SOLICITAR PRESUPUESTO |
| 2) Contexto Local | Parque de viviendas + particularidades de la Main City |
| 3) Bloque de Zonas | LCAs con barrios reales (Direct y Candidate validadas) |
| 4) Servicio en la ciudad | Cómo se presta el servicio en esta ciudad + normativa local |
| 5) Argumentos / Confianza | Pruebas reales: registros, garantías, presupuesto cerrado |
| 6) Prueba local | Proyecto real o caso concreto en la ciudad (anonimizado si procede) |
| 7) FAQs Locales | Preguntas específicas de la ciudad: normativa, ayudas, plazos |
| 8) CTA | Solicitar presupuesto + respuesta en plazo concreto |

Reglas operativas para LBS:

- El H1 combina servicio + Main City.
- El CTA del Hero cierra venta (a diferencia del Service Overview).
- La sección Contexto Local incluye particularidades reales de la ciudad.
- La sección Bloque de Zonas cita barrios reales, no un listado vacío.
- La sección Argumentos/Confianza usa pruebas reales y datos verificables.
- La sección Prueba local se omite si no hay caso real con permiso.
- Las FAQs son específicas de la ciudad, no genéricas del servicio.

### §11.2 Capa 2 — Zonas

| Sección | Zona aplicada |
|:---|:---|
| 1) Hero Local | Main City (ancla) |
| 3) Bloque de Zonas | Direct LCAs + Candidate LCAs validadas |
| 4) Servicio en la ciudad | Main City (normativa local) |
| 7) FAQs Locales | Main City + LCAs en preguntas específicas |

Regla operativa: la LBS es donde la geo es fuerte. Las LCAs aparecen con barrios reales y contexto.

### §11.3 Capa 3 — Argumentos

| Sección | Argumento |
|:---|:---|
| 1) Hero Local | Por qué este servicio en esta ciudad concreta |
| 2) Contexto Local | Por qué la ciudad tiene estas particularidades |
| 4) Servicio en la ciudad | Por qué la normativa local importa |
| 5) Argumentos / Confianza | Por qué confiar en este negocio |
| 6) Prueba local | Por qué este caso real es relevante |
| 8) CTA | Por qué solicitar presupuesto ahora |

### §11.4 Capa 4 — Entidades

| Sección | Entidad |
|:---|:---|
| 1) Hero Local | Servicio + Main City + diferenciador concreto |
| 2) Contexto Local | Tipos de vivienda, épocas, materiales locales |
| 3) Bloque de Zonas | Nombres de LCAs y barrios |
| 4) Servicio en la ciudad | Normativa local, ordenanzas, ayudas |
| 6) Prueba local | Cliente (anonimizado), barrio, fecha, servicio |
| 7) FAQs Locales | Términos legales, plazos, organismos |

### §11.5 Checklist LBS

| Regla de validación | Estado |
|:---|:---|
| El H1 incluye servicio + Main City | ☐ |
| El CTA del Hero pide presupuesto (cierra venta) | ☐ |
| La sección Contexto Local cita particularidades reales | ☐ |
| El Bloque de Zonas cita barrios reales (Direct LCAs incluidas) | ☐ |
| La sección Argumentos usa pruebas verificables | ☐ |
| La sección Prueba local solo aparece si hay caso real | ☐ |
| Las FAQs son específicas de la ciudad | ☐ |
| La LBS no replica el Service Overview ni se queda en abstracto | ☐ |

## §12 Additional Category Page — Redacción

Additional Category es soporte de categoría adicional efectiva del GBP. Tiene cobertura local pero no es el centro de conversión principal del cluster (lo es la LBS del servicio core).

### §12.1 Capa 1 — Estructura

| Sección | Texto generado |
|:---|:---|
| 1) Hero AC | H1: CATEGORÍA + CIUDAD. H2: BENEFICIO + DIFERENCIADOR. CTA: SOLICITAR PRESUPUESTO |
| 2) Sobre la categoría | Qué es, cuándo se necesita, qué tipos hay |
| 3) Cobertura | Main City + Direct LCAs |
| 4) Argumentos / Confianza | Pruebas reales aplicadas a esta categoría |
| 5) FAQs | Preguntas frecuentes específicas de la categoría |
| 6) CTA | Solicitar presupuesto |

Reglas operativas:

- El H1 incluye categoría adicional + Main City.
- La sección Sobre la categoría no replica la del servicio core.
- La cobertura cita Main City + LCAs Direct, no la lista entera de Candidates.
- Las FAQs son específicas de la categoría adicional, no del servicio core.

### §12.2 Capa 2 — Zonas

| Sección | Zona aplicada |
|:---|:---|
| 1) Hero AC | Main City |
| 3) Cobertura | Main City + Direct LCAs |
| 5) FAQs | Main City contextual |

### §12.3 Capa 3 — Argumentos

| Sección | Argumento |
|:---|:---|
| 1) Hero AC | Por qué esta categoría se ofrece y por qué importa |
| 2) Sobre la categoría | Por qué hay diferentes tipos y cuándo aplica cada uno |
| 4) Argumentos / Confianza | Por qué confiar en este negocio para esta categoría |

### §12.4 Capa 4 — Entidades

| Sección | Entidad |
|:---|:---|
| 1) Hero AC | Categoría adicional, Main City |
| 2) Sobre la categoría | Tipos, marcas, normas |
| 4) Argumentos / Confianza | Garantías, certificaciones aplicadas a la categoría |

### §12.5 Checklist Additional Category

| Regla de validación | Estado |
|:---|:---|
| El H1 incluye categoría adicional + Main City | ☐ |
| La sección Sobre la categoría no replica el servicio core | ☐ |
| La cobertura cita Main City + Direct LCAs (no Candidates sin validar) | ☐ |
| Las FAQs son específicas de la categoría adicional | ☐ |
| La AC no canibaliza la LBS del servicio core | ☐ |

## §13 GeoHub — Redacción

GeoHub es Main City Silo Container. Agrupa servicios, AC, GeoArticles y cobertura local de la Main City. Tiene contenido propio, no es solo índice.

### §13.1 Capa 1 — Estructura

| Sección | Texto generado |
|:---|:---|
| 1) Hero Ciudad | H1: SERVICIO GENÉRICO + CIUDAD. H2: COBERTURA GENERAL |
| 2) Introducción | Contexto real: parque de viviendas, normativa, particularidades de la ciudad |
| 3) Listado de servicios | Enlaces a las 5 LBS organizados como cluster |
| 4) Additional Category | Enlace a la AC del cluster |
| 5) Cobertura en la ciudad | Zonas con lógica real, no listado vacío |
| 6) Contenido informativo contextual | Información útil del servicio en la ciudad — no compite con SO ni LBS |
| 7) Enlaces a GeoArticles | Artículos relevantes con enlace contextual |
| 8) CTA suave | Invitación a explorar servicios — sin presión |

Reglas operativas:

- El H1 incluye servicio genérico (categoría principal GBP) + Main City.
- La Introducción describe el contexto real del servicio en la ciudad, no abstracciones.
- El Listado de servicios incluye enlaces a LBS, organizados como cluster.
- La Cobertura menciona zonas con lógica real (Direct + Candidates validadas).
- El Contenido informativo no compite con Service Overview ni LBS — aporta contexto, no conversión.
- Los Enlaces a GeoArticles son contextuales (no listado completo).
- El CTA invita a explorar, sin presión de venta.

### §13.2 Capa 2 — Zonas

| Sección | Zona aplicada |
|:---|:---|
| 1) Hero Ciudad | Main City (ancla) |
| 2) Introducción | Main City (contexto general) |
| 5) Cobertura | Todas las LCAs (Direct + Candidate validadas) con barrios |

El GeoHub es la sección principal de cobertura local. Aquí se concentra el detalle geográfico.

### §13.3 Capa 3 — Argumentos

| Sección | Argumento |
|:---|:---|
| 2) Introducción | Por qué la ciudad importa para este servicio |
| 5) Cobertura | Por qué se cubren estas zonas |
| 6) Contenido informativo | Por qué este detalle informativo es relevante |
| 8) CTA suave | Por qué seguir explorando |

### §13.4 Capa 4 — Entidades

| Sección | Entidad |
|:---|:---|
| 1) Hero Ciudad | Categoría GBP, Main City |
| 2) Introducción | Tipos de vivienda, normativa, datos del mercado local |
| 3) Listado de servicios | Nombres exactos de los 5 servicios core |
| 5) Contenido informativo | Términos técnicos, normativa local, datos verificables |

### §13.5 Checklist GeoHub

| Regla de validación | Estado |
|:---|:---|
| El H1 incluye servicio principal + Main City con enfoque general | ☐ |
| La Introducción describe el contexto real del servicio en la ciudad | ☐ |
| El Listado de servicios incluye enlaces a las LBS | ☐ |
| La Cobertura menciona zonas con lógica real | ☐ |
| El Contenido informativo no compite con SO ni LBS | ☐ |
| Los Enlaces a GeoArticles son contextuales | ☐ |
| El CTA invita a explorar servicios, sin presión | ☐ |
| El GeoHub no es solo índice — tiene contenido propio | ☐ |

## §14 GeoArticles — Redacción

GeoArticle es Semantic Booster — apoya un LBS con contenido long-tail. Nunca es página de conversión directa: siempre enlaza a su LBS padre.

### §14.1 Capa 1 — Estructura

| Sección | Texto generado |
|:---|:---|
| 1) Hero Artículo | H1: PREGUNTA + CIUDAD. INTRO: CONTEXTO DE LA PREGUNTA |
| 2) Introducción | Por qué importa esta pregunta — contexto real |
| 3) Desarrollo principal | Respuesta directa con datos, rangos, desglose |
| 4) Bloques de apoyo | Variables, alternativas, factores que afectan |
| 5) Transición final | Puente narrativo hacia la LBS — contexto local |
| 6) CTA suave | Invitación a la LBS — sin presión |

### §14.2 Capa 2 — Zonas

| Sección | Zona aplicada |
|:---|:---|
| 1) Hero Artículo | Main City (en el H1) |
| 3) Desarrollo principal | Main City (datos del mercado local cuando proceda) |
| 5) Transición final | Main City (contexto específico) |

### §14.3 Capa 3 — Argumentos

| Sección | Argumento |
|:---|:---|
| 1) Hero Artículo | Por qué esta pregunta es relevante para alguien en la Main City |
| 3) Desarrollo principal | Por qué la respuesta es esta y no otra |
| 4) Bloques de apoyo | Por qué los factores cambian la respuesta |
| 5) Transición final | Por qué el siguiente paso lógico es la LBS |
| 6) CTA suave | Por qué la LBS resuelve el problema completo |

### §14.4 Capa 4 — Entidades

| Sección | Entidad |
|:---|:---|
| 1) Hero Artículo | Pregunta exacta, Main City |
| 3) Desarrollo principal | Datos numéricos, rangos de precio, tiempos, normativa |
| 4) Bloques de apoyo | Materiales, marcas, certificaciones |
| 5) Transición final | Nombre de la LBS destino |

### §14.5 Reglas de puentes narrativos (interlinking de GeoArticles)

Cada GeoArticle debe llevar al usuario hacia su LBS padre. Tres puntos de transición obligatorios:

| Punto | Posición | Tipo |
|:---|:---|:---|
| Punto 1 | Mitad del artículo, tras precios o comparativa | Transición natural en línea + enlace inline a la LBS |
| Punto 2 | Antes del CTA final | Bloque "¿Listo para el siguiente paso?" + enlace a la LBS |
| Punto 3 (CTA) | Final del artículo | CTA suave a la LBS |

Reglas operativas:

- El anchor text debe variar entre los tres puntos. No repetir literalmente el mismo texto.
- El primer enlace es inline (dentro del texto), el segundo es bloque (destacado), el tercero es CTA visual.
- Los tres puntos enlazan a la misma LBS padre — no a tres LBS distintas.
- Si el GeoArticle apoya un servicio sin LBS canónica, primero hay que crear la LBS.

### §14.6 Checklist GeoArticle

| Regla de validación | Estado |
|:---|:---|
| El H1 incluye pregunta + Main City | ☐ |
| El Desarrollo principal aporta datos verificables | ☐ |
| Los Bloques de apoyo cubren factores que afectan la respuesta | ☐ |
| La Transición final lleva a la LBS padre | ☐ |
| Los tres puentes narrativos están presentes | ☐ |
| El anchor text varía entre los tres puentes | ☐ |
| El CTA suave no presiona la venta | ☐ |
| El GeoArticle no compite con la LBS — apoya, no convierte | ☐ |

## §15 Clusters por Servicio

Cada servicio core forma un cluster. El cluster es la unidad funcional del sistema.

### §15.1 Definición de cluster

Un cluster por servicio core está formado por:

| Pieza | Función |
|:---|:---|
| Service Overview | Pillar temático sin ciudad — captación informacional |
| Location-Based Service | Convertidor local — conversión |
| GeoArticles (3) | Boosters semánticos — captación long-tail |

Total por cluster: 1 SO + 1 LBS + 3 GeoArticles = 5 piezas.

Para el ejemplo Cerrajeros Madrid 24h con S=5 servicios core, hay 5 clusters × 5 piezas = 25 páginas. Más Homepage (1) + GeoHub (1) + Additional Category (1) = 28 páginas SEO base.

### §15.2 Flujo del cluster

El flujo del cluster es siempre el mismo:

```text
Captación (GeoArticle) → Distribución (Service Overview o GeoHub) → Conversión (LBS)
```

Cada pieza del cluster debe respetar su rol y enlazar al siguiente paso del flujo:

| Página | Enlaza a | No enlaza a |
|:---|:---|:---|
| GeoArticle | LBS padre + GeoHub | Contacto directo |
| Service Overview | LBS local + servicios relacionados | Contacto directo |
| LBS | Service Overview padre + GeoHub + LBS relacionadas + GeoArticles | — |
| GeoHub | Todas las LBS + Additional Category + GeoArticles | — |
| Homepage | Service Overviews + GeoHub + Additional Category + Contacto | — |

### §15.3 Validación del cluster

Cada cluster pasa esta validación:

| Regla de validación | Estado |
|:---|:---|
| Cada servicio core aprobado tiene su propio cluster | ☐ |
| Cada cluster tiene exactamente 1 Service Overview + 1 LBS + 3 GeoArticles | ☐ |
| El servicio Core (1.34 del Paso 1) tiene cluster prioritario en orden de publicación | ☐ |
| Todas las URLs del cluster están en la URL Matrix (Paso 3) | ☐ |
| Ningún servicio core queda sin cluster completo | ☐ |
| El flujo de cada cluster respeta GeoArticle → SO/GeoHub → LBS | ☐ |

## §16 Una sola fuente de copy por página — Regla operativa 1

### §16.1 Explicación

Cada página tiene un único documento de copy aprobado. No se mezclan versiones, ni se reescribe el copy en el constructor.

### §16.2 Patrón

```text
Página → 4 capas (Estructura, Zonas, Argumentos, Entidades) → copy aprobado → constructor
```

### §16.3 Ejemplo correcto con Cerrajeros Madrid 24h

```text
LBS-001 /cerrajero/madrid/cerrajero-urgente/ tiene su copy redactado por capas en este paso. El constructor (Paso 17) lo coge sin modificar.
```

### §16.4 Regla final

```text
El copy se redacta una vez, se aprueba una vez y se ejecuta en el constructor sin reescritura.
```

## §17 Service Overview no compite con LBS — Regla operativa 2

### §17.1 Explicación

Service Overview es informacional y temática. LBS es local y conversional. Si el copy de la SO se solapa con el de la LBS, hay canibalización.

### §17.2 Patrón

```text
Service Overview → captación temática → CTA hacia LBS
LBS → conversión local → CTA hacia presupuesto
```

### §17.3 Ejemplo correcto

```text
SO /cerrajero/cerrajero-urgente/ explica el servicio de cerrajero urgente en general (proceso, materiales, FAQs genéricas) y enlaza a /cerrajero/madrid/cerrajero-urgente/. La LBS añade contexto local (barrios de Madrid, normativa local, casos en la ciudad) y pide presupuesto.
```

### §17.4 Regla final

```text
SO informa, LBS convierte. No se mezclan los dos roles en una misma página.
```

## §18 GeoArticle siempre enlaza a su LBS padre — Regla operativa 3

### §18.1 Explicación

Si un GeoArticle no enlaza a su LBS, se queda en un callejón sin salida. El usuario lee el artículo y no encuentra la siguiente acción.

### §18.2 Patrón

```text
GeoArticle → 3 puntos de transición → LBS padre
```

### §18.3 Ejemplo correcto

```text
/madrid/cuanto-cuesta-un-cerrajero-urgente/ enlaza tres veces a /cerrajero/madrid/cerrajero-urgente/: una vez inline en el desarrollo, otra como bloque "¿Necesitas un cerrajero urgente?", y una tercera como CTA suave.
```

### §18.4 Regla final

```text
Cada GeoArticle tiene LBS padre identificada y tres puentes narrativos hacia ella.
```

## §19 Datos verificables, no claims — Regla operativa 4

### §19.1 Explicación

El copy se diferencia del competidor genérico cuando incluye datos reales: rangos de precio, tiempos, normativa, materiales específicos, casos concretos. Las frases tipo "los mejores", "calidad garantizada", "atención personalizada" no diferencian.

### §19.2 Patrón

```text
Copy = problema real + dato verificable + opinión profesional + CTA
```

### §19.3 Ejemplo correcto

```text
Mal: "Ofrecemos servicio de cerrajero urgente las 24 horas con la mejor calidad."
Bien: "Cerrajero urgente en Madrid, respuesta en 30 minutos en Almagro y Chamberí. Apertura sin rotura desde 60€ + IVA. Garantía de trabajo 2 años."
```

### §19.4 Regla final

```text
Cada sección incluye al menos un dato verificable que el competidor genérico no usa.
```

## §20 No fake reviews ni claims sin prueba — Regla operativa 5

### §20.1 Explicación

Antes del Paso 14 (creación del GBP) no hay reseñas reales. El copy no inventa "250+ reseñas", "miles de clientes satisfechos" ni testimonios sin permiso. Solo se incluyen pruebas verificables.

### §20.2 Patrón

```text
Trust signal = dato real + verificable + reutilizable
```

### §20.3 Ejemplo correcto

```text
Antes del Paso 14:
- "10+ años de experiencia" si es real
- "Técnicos cerrajeros cualificados" si lo son
- "Servicio móvil en el mismo día" si es operativo

Después del Paso 14 (con GBP creado y reseñas reales):
- "X reseñas reales en Google" con número actual
```

### §20.4 Regla final

```text
Sin GBP creado, no hay reseñas en el copy. Solo pruebas verificables del negocio.
```

## §21 Contexto local concreto, no abstracto — Regla operativa 6

### §21.1 Explicación

El copy local se diferencia cuando cita barrios reales, normativa local, tipos de inmueble específicos, casos reales de la ciudad. Listar zonas sin contexto es genérico.

### §21.2 Patrón

```text
Contexto local = LCA real + dato específico de esa zona o de la ciudad
```

### §21.3 Ejemplo correcto

```text
Mal: "Servimos en Almagro, Chamberí, Salamanca y Retiro."
Bien: "En Almagro y Chamberí intervenimos con frecuencia en fincas de los años 30 con cerraduras de tubo originales. En Salamanca y Retiro, predominan los bombines europeos en bloques de los 60-70."
```

### §21.4 Regla final

```text
Mencionar una zona implica añadir un detalle real de esa zona. Si no hay detalle, no se menciona.
```

## §22 No texto largo en Hero — Regla operativa 7

### §22.1 Explicación

El Hero es ancla, no narrativa. Texto largo en Hero distrae y baja el CTR del CTA principal. El detalle va más abajo.

### §22.2 Patrón

```text
Hero = H1 (servicio + ciudad) + H2 (beneficio + diferenciador, una línea) + CTA (1 botón principal)
```

### §22.3 Ejemplo correcto

```text
Hero LBS:
H1: Cerrajero urgente en Madrid
H2: Apertura sin rotura en 30 minutos. Garantía 2 años.
CTA: Solicitar presupuesto
```

### §22.4 Regla final

```text
El Hero cabe en una pantalla móvil sin scroll. Si no cabe, sobra texto.
```

## §23 Anchors variados, no repetidos — Regla operativa 8

### §23.1 Explicación

Cuando una página enlaza varias veces a otra (caso típico GeoArticle → LBS), los tres anchors deben variar. Repetir el mismo anchor literal es señal de generación automática.

### §23.2 Patrón

```text
Punto 1 (inline): anchor descriptivo dentro del texto
Punto 2 (bloque): anchor de acción ("¿Necesitas un cerrajero urgente?")
Punto 3 (CTA): anchor cerrado ("Solicitar presupuesto")
```

### §23.3 Ejemplo correcto

```text
Anchor 1: "consulta la página de cerrajero urgente en Madrid"
Anchor 2: "¿Necesitas un cerrajero urgente ahora?"
Anchor 3: "Solicitar presupuesto"
```

### §23.4 Regla final

```text
Tres puntos de enlace = tres anchors distintos.
```

## §24 Cluster completo o no se publica — Regla operativa 9

### §24.1 Explicación

Un servicio core sin Service Overview, sin LBS o sin GeoArticles es un cluster roto. Los clusters rotos rompen el flujo y matan la conversión. Antes de publicar, se valida que cada servicio aprobado tiene cluster completo.

### §24.2 Patrón

```text
Servicio core aprobado → 1 SO + 1 LBS + 3 GeoArticles → cluster completo → publicar
```

### §24.3 Ejemplo correcto

```text
Cerrajero urgente:
- Service Overview /cerrajero/cerrajero-urgente/
- LBS /cerrajero/madrid/cerrajero-urgente/
- GeoArticle 1: /madrid/cuanto-cuesta-un-cerrajero-urgente/
- GeoArticle 2: /madrid/que-hacer-si-no-puedes-entrar-casa/
- GeoArticle 3: /madrid/cuanto-tarda-un-cerrajero/
Estado: cluster completo, listo para publicar.
```

### §24.4 Regla final

```text
Sin cluster completo, el servicio no se publica. Antes hay que cerrar las piezas que faltan.
```

## §25 Capas en orden, no simultáneas — Regla operativa 10

### §25.1 Explicación

Las cuatro capas se rellenan en orden: Estructura → Zonas → Argumentos → Entidades. Saltarse el orden produce copy con argumentos sin estructura, o entidades sin contexto.

### §25.2 Patrón

```text
1. Estructura (qué se dice)
2. Zonas (dónde se aplica)
3. Argumentos (por qué)
4. Entidades (con qué nombres)
```

### §25.3 Ejemplo correcto

```text
LBS /cerrajero/madrid/cerrajero-urgente/:
1. Estructura redactada (Hero + Contexto + Zonas + ... + CTA).
2. Zonas aplicadas (Madrid en Hero, Almagro/Chamberí en Bloque de Zonas).
3. Argumentos por sección documentados.
4. Entidades documentadas (marcas, normativa, barrios, materiales).
```

### §25.4 Regla final

```text
Una capa solo empieza cuando la anterior ha pasado su checklist.
```

## §26 Dependencia con Paso 4 y Paso 7 — Regla operativa 11

### §26.1 Explicación

El copy del Paso 15 referencia URLs (Paso 4) y enlaces internos (Paso 7). Si una URL del cluster no existe en la URL Matrix o un enlace interno no está en el Internal Linking Map, el copy se rompe en producción.

### §26.2 Patrón

```text
Antes de redactar copy → URL Matrix completa (Paso 3) + URL Rules aplicadas (Paso 4) + Internal Linking Map (Paso 7)
```

### §26.3 Ejemplo correcto

```text
Antes de redactar /madrid/cuanto-cuesta-un-cerrajero-urgente/, se confirma que la URL existe en la URL Matrix y que enlaza a /cerrajero/madrid/cerrajero-urgente/ según el Internal Linking Map.
```

### §26.4 Regla final

```text
El copy no añade URLs ni enlaces que no estén en los Pasos 3, 4 y 7.
```

## §27 Validación QA antes de pasar al Paso 16 — Regla operativa 12

### §27.1 Explicación

Cada página tiene su checklist de copy aprobado en este paso. Sin checklist en verde, no pasa al Paso 16 (Extracción de Diseño) ni al Paso 17 (Constructor).

### §27.2 Patrón

```text
Copy redactado → checklist por capa (4) → checklist por page type (1) → aprobación → siguiente paso
```

### §27.3 Ejemplo correcto

```text
LBS-001 tiene los 4 checklists de capa en verde y el checklist de page type en verde. Estado: aprobado para Paso 16.
```

### §27.4 Regla final

```text
Sin todos los checklists en verde, la página no avanza.
```

## §28 Fuentes para validar — Regla operativa 13

### §28.1 Explicación

El copy del Paso 15 tiene tres fuentes principales de validación: el cliente (Input humano), el framework GMB Crush (reglas de calidad y page type), y los datos de mercado (Datos de búsqueda y Competidores). Cuando una decisión de copy no tiene fuente, queda como IA sin respaldo y debe sustituirse antes de producción.

### §28.2 Patrón

```text
Cada decisión de copy → fuente identificada (Input humano · GMB Crush · Datos de búsqueda · Competidores · Decisión de diseño · IA sin respaldo)
```

### §28.3 Ejemplo correcto

```text
"10+ años de experiencia" → Input humano (cliente lo confirma) o IA sin respaldo (placeholder).
"Apertura desde 60€" → Datos de búsqueda + Competidores (rango validado por mercado local).
"Llamar ahora" → Decisión de diseño (operador elige por UX y conversión).
```

### §28.4 Regla final

```text
Toda decisión de copy va al Paso 15b con su fuente asignada según las 10 fuentes del catálogo (ver Decisiones y fuentes/README).
```

## §29 Checklist final del Paso 15

| Check | Pregunta | Estado |
|---|---|---|
| Reglas de calidad | ¿Las 4 reglas se aplican a todo el copy? | ☐ |
| Homepage | ¿Las 4 capas están redactadas y validadas? | ☐ |
| Service Overview Pages | ¿Las 5 SOs tienen las 4 capas validadas? | ☐ |
| Location-Based Service Pages | ¿Las 5 LBSs tienen las 4 capas validadas? | ☐ |
| Additional Category Page | ¿La AC tiene las 4 capas validadas? | ☐ |
| GeoHub | ¿El GeoHub tiene las 4 capas validadas? | ☐ |
| GeoArticles | ¿Los 15 GeoArticles tienen las 4 capas + puentes narrativos validados? | ☐ |
| Clusters | ¿Cada servicio core tiene cluster completo? | ☐ |
| URL/Linking | ¿Todo el copy respeta URL Matrix (Paso 3/4) y Internal Linking Map (Paso 7)? | ☐ |
| Web-first reviews | ¿No hay reseñas inventadas antes del Paso 14? | ☐ |

## §30 Outputs del Paso 15

- Copy redactado por capas para las 28 páginas SEO base + `/contacto/`.
- Checklist por capa y por page type en verde.
- Validación de clusters completos para los 5 servicios core.
- Documento de decisiones tomadas y fuentes (`15b-decisiones-tomadas-y-fuentes.md`).
- Lista de pendientes de validación para producción real (cliente, datos de búsqueda, competidores).

---

# §31 Fuentes internas GMB Crush usadas

- Page Type Rules (Paso 5)
- Estructura de Contenido + Local Coverage Areas (Paso 6)
- Internal Linking Rules (Paso 7)
- Reglas de calidad del antiguo Bloque 3 — Contenido (4 capas: Estructura, Zonas, Argumentos, Entidades)
- Reglas de puentes narrativos para GeoArticles
- Web-First GBP Rule (Paso 1 §4 + Paso 14)

> **Nota importante — Capa 2 Zonas y Paso 6:**
> La capa 2 Zonas de cada page type usa las LCAs definidas en Paso 1 §15 y aplicadas según las reglas de Paso 6. Si las LCAs no están validadas con test de coherencia GEO 3/6 (Paso 1 §34), no se usan como señales fuertes en el copy de LBS o GeoHub.
