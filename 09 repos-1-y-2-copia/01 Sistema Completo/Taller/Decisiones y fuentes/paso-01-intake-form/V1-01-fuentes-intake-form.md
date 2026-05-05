# Paso 1 — Intake Form

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

## Bloque 1 — Identidad del negocio

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 1.01 · Paso-01 §7 Business Name | Se define el nombre del negocio | Input humano | El cliente aporta este dato directamente. El sistema lo recoge como input base. | Cerrajeros Madrid 24h |
| 1.02 · Paso-01 §8 Website URL | Se define la URL principal de la web | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | https://www.cerrajerosmadrid24h.com |
| 1.03 · Paso-01 §8 Website URL | Se define el dominio canónico | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | https://www.cerrajerosmadrid24h.com |

## Bloque 2 — Estado inicial del GBP

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 1.04 · Paso-01 §4 GBP Status | Se decide el estado inicial del GBP | Input humano | El cliente aporta este dato directamente. El sistema lo recoge como input base. | GBP Status: Not Created |
| 1.05 · Paso-01 §4 GBP Creation Timing | Se decide que el GBP se creará después de la web | Input humano + GMB Crush | El cliente aporta el dato y GMB Crush define cómo usarlo dentro de la arquitectura, contenido, schema o GBP. | After website launch |
| 1.06 · Paso-01 §4 GBP Verification Status | Se decide que la verificación no ha empezado | Input humano | El cliente aporta este dato directamente. El sistema lo recoge como input base. | Not Started |
| 1.07 · Paso-01 §4 GBP URL | Se decide no usar GBP URL todavía | GMB Crush | GMB Crush prohíbe inventar GBP URL o `sameAs` antes de que exista el perfil. | N/A — GBP not created yet |

## Bloque 3 — NAP y contacto

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 1.08 · Paso-01 §9 Full NAP | Se define el nombre NAP | Input humano | El cliente aporta este dato directamente. El sistema lo recoge como input base. | Cerrajeros Madrid 24h |
| 1.09 · Paso-01 §9 Full NAP | Se define la dirección del negocio | Input humano | El cliente aporta este dato directamente. El sistema lo recoge como input base. | Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí |
| 1.10 · Paso-01 §9 Full NAP | Se define la ciudad del negocio | Input humano | El cliente aporta este dato directamente. El sistema lo recoge como input base. | Madrid |
| 1.11 · Paso-01 §9 Full NAP | Se define la provincia o comunidad | Input humano + GMB Crush | El dato deriva del input territorial aportado; GMB Crush lo usa para NAP y consistencia local. | Comunidad de Madrid |
| 1.12 · Paso-01 §9 Full NAP | Se define el código postal | Input humano + IA sin respaldo | La dirección base viene del input, pero el CP concreto debe verificarse antes de producción. | 28010 |
| 1.13 · Paso-01 §9 Full NAP | Se define el país | Input humano | El cliente aporta este dato directamente. El sistema lo recoge como input base. | España |
| 1.14 · Paso-01 §9 Full NAP | Se define el teléfono del negocio | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | +34 600 000 000 |
| 1.15 · Paso-01 §9 Full NAP | Se define el email del negocio | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | info@cerrajerosmadrid24h.com |

## Bloque 4 — Categorías GBP planificadas

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 1.16 · Paso-01 §10 Planned Primary GBP Category | Se define la categoría principal planificada | Input humano + GMB Crush | El nombre del negocio apunta a cerrajería; GMB Crush exige categoría principal para alinear web y futuro GBP. Debe confirmarse como categoría disponible. | Cerrajero |
| 1.17 · Paso-01 §11 Planned Additional GBP Categories | Se define una categoría adicional planificada | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Servicio de cerrajería de urgencia |
| 1.18 · Paso-01 §11 Planned Additional GBP Categories | Se define otra categoría adicional planificada | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Servicio de duplicado de llaves |

## Bloque 5 — Dirección física, Main City y Local Coverage Areas

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 1.19 · Paso-01 §9 Physical Address | Se define la dirección física como ancla del sistema | Input humano + GMB Crush | El cliente aporta la dirección; GMB Crush la usa para NAP, Main City, señales GEO y consistencia local. | Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid |
| 1.20 · Paso-01 §12 Main City | Se define la ciudad que crea la arquitectura base | Input humano + GMB Crush | El cliente aporta una dirección en Madrid; GMB Crush usa la Main City para construir homepage, GeoHub y páginas city/service. | Madrid |
| 1.21 · Paso-01 §13 Physical Location City | Se define la ciudad de ubicación física | Input humano | El cliente aporta este dato directamente. El sistema lo recoge como input base. | Madrid |
| 1.22 · Paso-01 §15 Local Coverage Areas | Se define una Direct Local Coverage Area | Input humano + GMB Crush | El cliente aporta la dirección física; GMB Crush define cómo usar las zonas derivadas del NAP como Local Coverage Areas sin crear URLs por defecto. | Almagro |
| 1.23 · Paso-01 §15 Local Coverage Areas | Se define una Direct Local Coverage Area | Input humano + GMB Crush | El cliente aporta la dirección física; GMB Crush define cómo usar las zonas derivadas del NAP como Local Coverage Areas sin crear URLs por defecto. | Chamberí |
| 1.24 · Paso-01 §15 Local Coverage Areas | Se define una Candidate Local Coverage Area | GMB Crush + IA sin respaldo | GMB Crush permite usar zonas, barrios y landmarks como señales GEO en contenido, GeoHub, GeoArticles y schema. La zona concreta fue propuesta como candidata y debe validarse con input humano, datos de búsqueda o competidores antes de usarse como señal activa. | Salamanca |
| 1.25 · Paso-01 §15 Local Coverage Areas | Se define una Candidate Local Coverage Area | GMB Crush + IA sin respaldo | GMB Crush permite usar zonas, barrios y landmarks como señales GEO en contenido, GeoHub, GeoArticles y schema. La zona concreta fue propuesta como candidata y debe validarse con input humano, datos de búsqueda o competidores antes de usarse como señal activa. | Retiro |
| 1.26 · Paso-01 §15 Local Coverage Areas | Se define una Candidate Local Coverage Area | GMB Crush + IA sin respaldo | GMB Crush permite usar zonas, barrios y landmarks como señales GEO en contenido, GeoHub, GeoArticles y schema. La zona concreta fue propuesta como candidata y debe validarse con input humano, datos de búsqueda o competidores antes de usarse como señal activa. | Centro |
| 1.27 · Paso-01 §15 Local Coverage Areas | Se define una Candidate Local Coverage Area | GMB Crush + IA sin respaldo | GMB Crush permite usar zonas, barrios y landmarks como señales GEO en contenido, GeoHub, GeoArticles y schema. La zona concreta fue propuesta como candidata y debe validarse con input humano, datos de búsqueda o competidores antes de usarse como señal activa. | Tetuán |
| 1.28 · Paso-01 §15 Local Coverage Areas | Se define una Candidate Local Coverage Area | GMB Crush + IA sin respaldo | GMB Crush permite usar zonas, barrios y landmarks como señales GEO en contenido, GeoHub, GeoArticles y schema. La zona concreta fue propuesta como candidata y debe validarse con input humano, datos de búsqueda o competidores antes de usarse como señal activa. | Chamartín |
| 1.29 · Paso-01 §15 Local Coverage Areas | Se define una Candidate Local Coverage Area | GMB Crush + IA sin respaldo | GMB Crush permite usar zonas, barrios y landmarks como señales GEO en contenido, GeoHub, GeoArticles y schema. La zona concreta fue propuesta como candidata y debe validarse con input humano, datos de búsqueda o competidores antes de usarse como señal activa. | Arganzuela |
| 1.30 · Paso-01 §15 Local Coverage Areas | Se define una Candidate Local Coverage Area | GMB Crush + IA sin respaldo | GMB Crush permite usar zonas, barrios y landmarks como señales GEO en contenido, GeoHub, GeoArticles y schema. La zona concreta fue propuesta como candidata y debe validarse con input humano, datos de búsqueda o competidores antes de usarse como señal activa. | Moncloa |
| 1.31 · Paso-01 §15 Local Coverage Areas | Se define una Candidate Local Coverage Area | GMB Crush + IA sin respaldo | GMB Crush permite usar zonas, barrios y landmarks como señales GEO en contenido, GeoHub, GeoArticles y schema. La zona concreta fue propuesta como candidata y debe validarse con input humano, datos de búsqueda o competidores antes de usarse como señal activa. | Prosperidad |

## Bloque 6 — Expansión geográfica

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 1.32 · Paso-01 §16 Approved Expansion Areas | Se decide que las Local Coverage Areas no generarán páginas en la base | GMB Crush | GMB Crush usa la ciudad como base; barrios y zonas se usan como señales GEO salvo expansión aprobada. | No, not in the base build |
| 1.33 · Paso-01 §16 Approved Expansion Areas | Se decide que no hay Approved Expansion Areas iniciales | GMB Crush | La expansión requiere validación y aprobación. La fase inicial se centra en Main City. | None in Phase 1 |

## Bloque 7 — Servicios principales

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 1.34 · Paso-01 §14 Servicios principales | Se define el servicio principal 1 | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Cerrajero urgente |
| 1.35 · Paso-01 §14 Servicios principales | Se define el servicio principal 2 | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Apertura de puertas |
| 1.36 · Paso-01 §14 Servicios principales | Se define el servicio principal 3 | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Cambio de cerraduras |
| 1.37 · Paso-01 §14 Servicios principales | Se define el servicio principal 4 | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Cambio de bombines |
| 1.38 · Paso-01 §14 Servicios principales | Se define el servicio principal 5 | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Instalación de cerraduras de seguridad |

## Bloque 8 — Consolidación de categorías adicionales

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 1.39 · Paso-01 §21 Categorías adicionales clasificadas | Se decide que una categoría adicional ya está cubierta por un servicio principal | GMB Crush | GMB Crush evita duplicar páginas cuando una categoría ya está cubierta por un servicio core. | Servicio de cerrajería de urgencia queda cubierta por Cerrajero urgente |
| 1.40 · Paso-01 §21 Categorías adicionales clasificadas | Se decide que una categoría adicional necesita página propia | GMB Crush + IA sin respaldo | GMB Crush valida la estructura o regla. El valor concreto usado en el ejemplo está pendiente de validación con input humano, datos de búsqueda o competidores. | Servicio de duplicado de llaves |

## Bloque 9 — Contenido, conversión y confianza

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 1.41 · Paso-01 §18 Trust Signals / GeoArticles | Se define el número de GeoArticles por servicio | GMB Crush | El framework de GeoArticles establece tres ideas por Service × City pair. | 3 |
| 1.42 · Paso-01 §17 Preferred CTA | Se define el CTA principal | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Llamar ahora |
| 1.43 · Paso-01 §18 Trust Signals | Se define una señal de confianza | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | 10+ años de experiencia |
| 1.44 · Paso-01 §18 Trust Signals | Se define una señal de confianza pendiente del futuro GBP | GMB Crush | No se inventan reseñas antes de crear y verificar el GBP. | Reseñas iniciales pendientes de recopilar tras crear y verificar el GBP |
| 1.45 · Paso-01 §18 Trust Signals | Se define una señal de confianza | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Técnicos cerrajeros cualificados |
| 1.46 · Paso-01 §18 Trust Signals | Se define una señal de confianza | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Servicio móvil en el mismo día |
| 1.47 · Paso-01 §18 Trust Signals | Se define una señal de confianza | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | Garantía de trabajo |

