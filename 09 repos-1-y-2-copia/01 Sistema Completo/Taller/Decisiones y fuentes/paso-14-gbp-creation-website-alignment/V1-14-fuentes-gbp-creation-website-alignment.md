# Paso 14 — GBP Creation & Website Alignment

Fase 2 de trazabilidad del sistema GMB Crush.

Este documento usa la taxonomía final de fuentes, sin fuente territorial independiente.

Fuentes permitidas:

```text
GMB Crush
Input humano
Input humano + GMB Crush
Datos de búsqueda
Competidores
IA sin respaldo
GMB Crush + IA sin respaldo
Input humano + IA sin respaldo
```

Regla aplicada:

```text
Las zonas directas derivadas de la dirección física se tratan como Input humano + GMB Crush.
Las zonas candidatas no confirmadas se tratan como GMB Crush + IA sin respaldo.
```

---

## Bloque 1 — Momento de creación y estado inicial

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.01 · Paso-14 §7 Timing | Se crea el GBP después de publicar la web base | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | After website launch |
| 14.02 · Paso-14 §7 GBP Status | Se define el estado inicial del GBP | Input humano | El cliente aporta este dato directamente. El sistema lo recoge como input base. | Not Created |
| 14.03 · Paso-14 §7 Sync | Se sincroniza GBP, web, schema y tracking al final | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Paso 14 como cierre |

## Bloque 2 — NAP, modelo de negocio y dirección

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.04 · Paso-14 §8 NAP | Se define el NAP final para el GBP | Input humano + IA sin respaldo | El dato base viene del input humano, pero un detalle concreto del ejemplo es placeholder o requiere confirmación. | Cerrajeros Madrid 24h + Calle Rafael Calvo 12 + Madrid + teléfono |
| 14.05 · Paso-14 §8 Business Model | Se define el modelo de negocio | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Service Area Business |
| 14.06 · Paso-14 §8 Physical Address | Se define la dirección física | Input humano | El cliente aporta este dato directamente. El sistema lo recoge como input base. | Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid |
| 14.07 · Paso-14 §8 Address visibility | Mostrar dirección públicamente depende del modelo y elegibilidad | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Depends on business model and eligibility |

## Bloque 3 — Main City y Local Coverage Areas

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.08 · Paso-14 §9 Main City | Se define Main City para el GBP | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | Madrid |
| 14.09 · Paso-14 §9 Direct LCA | Se definen Direct Local Coverage Areas para el GBP | Input humano + GMB Crush | El cliente aporta la dirección física; GMB Crush define cómo usar las zonas derivadas del NAP como Local Coverage Areas sin crear URLs por defecto. | Almagro, Chamberí |
| 14.10 · Paso-14 §9 Candidate LCA | Se definen Candidate Local Coverage Areas para el GBP | GMB Crush + IA sin respaldo | GMB Crush permite usar zonas, barrios y landmarks como señales GEO en contenido, GeoHub, GeoArticles y schema. La zona concreta fue propuesta como candidata y debe validarse con input humano, datos de búsqueda o competidores antes de usarse como señal activa. | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad |
| 14.11 · Paso-14 §9 Approved Expansion | No hay Approved Expansion Areas iniciales | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | None in Phase 1 |

## Bloque 4 — Categorías GBP

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.12 · Paso-14 §10 Primary Category | Se confirma categoría principal prevista | Input humano + GMB Crush | Deriva del negocio y GMB Crush la usa para alinear web/GBP; debe confirmarse en Google. | Cerrajero |
| 14.13 · Paso-14 §10 Additional Category | Se confirma primera categoría adicional prevista | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Servicio de cerrajería de urgencia |
| 14.14 · Paso-14 §10 Additional Category | Se confirma segunda categoría adicional prevista | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Servicio de duplicado de llaves |
| 14.15 · Paso-14 §10 Rejected categories | No añadir categoría de seguridad sin soporte web real | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | No añadir Proveedor de sistemas de seguridad |

## Bloque 5 — Servicios del GBP

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.16–14.21 · Paso-14 §11 GBP Services | Se definen servicios del GBP | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Apertura, urgente, cerraduras, bombines, duplicado, seguridad |

## Bloque 6 — URLs conectadas al GBP

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.22 · Paso-14 §12 Website URL | Se define URL web conectada al GBP | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | https://www.cerrajerosmadrid24h.com/ |
| 14.23 · Paso-14 §12 Contact URL | Se define URL de contacto/cita | GMB Crush + IA sin respaldo | GMB Crush exige URL de contacto clara; dominio concreto pendiente de validación. | https://www.cerrajerosmadrid24h.com/contacto/ |

## Bloque 7 — Horarios y recursos visuales

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.24 · Paso-14 §13 Hours | Se definen horarios de apertura | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | 24 horas, todos los días |
| 14.25–14.30 · Paso-14 §14 Photos | Se preparan recursos visuales | GMB Crush + IA sin respaldo | GMB Crush recomienda pruebas visuales/trust; los activos concretos deben existir o producirse. | Logo, cover, equipo, vehículo, herramientas, trabajos |

## Bloque 8 — Q&A, posts, reseñas y tracking

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.31 · Paso-14 §15 Q&A Plan | Se decide preparar Q&A del GBP | GMB Crush | La preparación de Q&A es parte de la optimización GBP/web. Las preguntas concretas se auditan en filas siguientes. | Q&A Plan |
| 14.32 · Paso-14 §16 Google Posts Plan | Se decide preparar Google Posts | GMB Crush | La preparación de posts es parte del plan GBP. Los posts concretos requieren validación. | Google Posts Plan |
| 14.33–14.35 · Paso-14 §15 Q&A concretas | Se proponen preguntas concretas de Q&A | GMB Crush + IA sin respaldo | GMB Crush exige Q&A útil y alineada con intención local; las preguntas/respuestas concretas deben validarse con búsqueda, GBP, competidores o input humano. | Preguntas sobre tiempo, precio y cobertura |
| 14.36–14.38 · Paso-14 §16 Posts concretos | Se proponen posts concretos de Google Posts | GMB Crush + IA sin respaldo | GMB Crush respalda usar posts; los temas concretos son propuestas no validadas. | Posts de urgencia, duplicado de llaves y novedades |
| 14.39 · Paso-14 §17 Review Strategy | Se crea estrategia de reseñas reales | GMB Crush + IA sin respaldo | GMB Crush exige reseñas reales; el método concreto de solicitud debe confirmarse con el negocio. | Review Strategy |
| 14.40 · Paso-14 §18 UTM | Se crea UTM para el enlace GBP | GMB Crush + IA sin respaldo | La regla de tracking viene de GMB Crush; la URL concreta depende del dominio no validado. | GBP UTM URL |

## Bloque 9 — Ajustes post-GBP en la web

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.41 · Paso-14 §19 Schema | Se actualiza schema después de crear el GBP | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Añadir sameAs cuando exista GBP URL |
| 14.42 · Paso-14 §20 Homepage | Se actualiza Homepage tras crear GBP | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Añadir GBP URL, reseñas reales si existen, trust blocks |
| 14.43 · Paso-14 §21 Contact page | Se actualiza contacto tras crear GBP | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Añadir datos confirmados y mapa si procede |
| 14.44 · Paso-14 §22 LBS | Se actualizan LBS tras crear GBP | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Ajustar schema, sameAs, reseñas y NAP |
| 14.45 · Paso-14 §23 GeoHub | Se actualiza GeoHub tras crear GBP | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Alinear cobertura, reviews y enlaces |

## Bloque 10 — No invención

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.46 · Paso-14 §24 Reviews | No inventar reseñas antes de que existan | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | Reseñas iniciales pendientes |
| 14.47 · Paso-14 §25 GBP URL | No inventar GBP URL antes de crear el perfil | GMB Crush | GMB Crush define esta regla estructural. Se aplica como parte fija del sistema. | GBP URL N/A hasta creación |

