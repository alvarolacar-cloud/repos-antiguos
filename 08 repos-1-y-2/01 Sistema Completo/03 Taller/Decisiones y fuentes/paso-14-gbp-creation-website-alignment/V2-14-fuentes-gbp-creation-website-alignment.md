# Paso 14 — GBP Creation & Website Alignment

Fase 2 de trazabilidad del sistema GMB Crush.

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
IA heredada (paso X.YY)
Decisión de diseño
```

---

## Bloque 1 — Momento de creación y estado inicial

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.01 · Paso-14 §7 Web-first | Se decide crear el GBP después de publicar la web base | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Web-first: GBP en Paso 14. | After website launch |
| 14.02 · Paso-14 §7 Web-first | Se define el estado inicial del GBP | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. GBP Status = Not Created hasta el Paso 14. | Not Created |
| 14.03 · Paso-14 §29 Tracking | Se decide sincronizar GBP, web, schema y tracking al final | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. El Paso 14 cierra el ecosistema. | Paso 14 como cierre |

## Bloque 2 — NAP, modelo de negocio y dirección

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.04 · Paso-14 §9 NAP | Se define el NAP final para el GBP | IA heredada (paso 1.14) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El NAP completo del GBP incluye el teléfono placeholder del paso 1.14; nombre, dirección y resto de campos son Input humano del cliente. | Cerrajeros Madrid 24h + Calle Rafael Calvo 12 + Madrid + teléfono |
| 14.05 · Paso-14 §10 Modelo de negocio | Se define el modelo de negocio | Input humano | El cliente aporta este dato directamente. El sistema lo recoge sin transformación. Los 3 modelos canónicos (Storefront/SAB/Hybrid) son GMB Crush; el cliente confirma SAB por operar como service area business móvil. | Service Area Business |
| 14.06 · Paso-14 §9 NAP | Se define la dirección física | Input humano + GMB Crush | El cliente aporta la dirección (heredada del paso 1.19) y GMB Crush la usa como ancla NAP del GBP. | Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid |
| 14.07 · Paso-14 §10 Visibilidad dirección | Se decide que mostrar la dirección públicamente depende del modelo y elegibilidad | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La visibilidad pública depende del modelo y de la elegibilidad GBP. | Depends on business model and eligibility |

## Bloque 3 — Main City y Local Coverage Areas

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.08 · Paso-14 §9 Main City | Se define la Main City para el GBP | Input humano + GMB Crush | El cliente aporta Madrid (heredada del paso 1.20) y GMB Crush la usa como ancla del cluster. | Madrid |
| 14.09 · Paso-14 §19 areaServed | Se definen Direct Local Coverage Areas para el GBP | Input humano + GMB Crush | El cliente aporta la dirección (heredadas del paso 1.22–1.23) y GMB Crush define cómo usar las zonas derivadas del NAP. | Almagro, Chamberí |
| 14.10 · Paso-14 §19 areaServed | Se definen Candidate Local Coverage Areas para el GBP | IA heredada (paso 1.24–1.31) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La regla del campo es GMB Crush, pero las zonas concretas son IA del paso 1 pendientes de validación. | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad |
| 14.11 · Paso-14 §19 areaServed | Se decide que no hay Approved Expansion Areas en fase inicial | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Expansión opcional, requiere aprobación. | None in Phase 1 |

## Bloque 4 — Categorías GBP

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.12 · Paso-14 §8 Categorías GBP | Se confirma la categoría principal GBP prevista | Input humano + GMB Crush | El cliente aporta el dato (heredado del paso 1.16) y GMB Crush exige categoría principal alineada con el negocio. | Cerrajero |
| 14.13 · Paso-14 §8 Categorías GBP | Se confirma la primera categoría adicional GBP prevista | IA heredada (paso 1.17) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | Servicio de cerrajería de urgencia |
| 14.14 · Paso-14 §8 Categorías GBP | Se confirma la segunda categoría adicional GBP prevista | IA heredada (paso 1.18) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | Servicio de duplicado de llaves |
| 14.15 · Paso-14 §14 No categorías sin web | Se decide no añadir categoría de seguridad sin soporte web real | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Regla "no categoría sin soporte web" obligatoria. | No añadir Proveedor de sistemas de seguridad |

## Bloque 5 — Servicios del GBP

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.16 · Paso-14 §8 GBP Services | Se define el servicio GBP 1 | IA heredada (paso 1.35) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | Apertura de puertas |
| 14.17 · Paso-14 §8 GBP Services | Se define el servicio GBP 2 | IA heredada (paso 1.34) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | Cerrajero urgente |
| 14.18 · Paso-14 §8 GBP Services | Se define el servicio GBP 3 | IA heredada (paso 1.36) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | Cambio de cerraduras |
| 14.19 · Paso-14 §8 GBP Services | Se define el servicio GBP 4 | IA heredada (paso 1.37) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | Cambio de bombines |
| 14.20 · Paso-14 §8 GBP Services | Se define el servicio GBP 5 | IA heredada (paso 1.18) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | Duplicado de llaves |
| 14.21 · Paso-14 §8 GBP Services | Se define el servicio GBP 6 | IA heredada (paso 1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. | Instalación de cerraduras de seguridad |

## Bloque 6 — URLs conectadas al GBP

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.22 · Paso-14 §11 URL web-GBP | Se define la URL web que se conectará al GBP | Input humano | El cliente aporta este dato directamente (heredado del paso 1.02). El sistema lo recoge sin transformación. | https://www.cerrajerosmadrid24h.com/ |
| 14.23 · Paso-14 §11 URL contacto | Se define la URL de contacto o cita | Input humano | El cliente aporta este dato directamente (dominio heredado del paso 1.02). El slug `/contacto/` es GMB Crush. | https://www.cerrajerosmadrid24h.com/contacto/ |

## Bloque 7 — Horarios y recursos visuales

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.24 · Paso-14 §18 Horarios | Se definen horarios de apertura | Input humano | El cliente aporta este dato directamente. El sistema lo recoge sin transformación. El cliente confirma horarios 24h consistente con el nombre del negocio. | 24 horas, todos los días |
| 14.25 · Paso-14 §16 Fotos | Se decide preparar logo | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Foto canónica obligatoria. | Logo del negocio |
| 14.26 · Paso-14 §16 Fotos | Se decide preparar cover photo | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Foto canónica obligatoria. | Foto de portada del GBP |
| 14.27 · Paso-14 §16 Fotos | Se decide preparar foto de exterior | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Foto exterior solo si procede según modelo. | Solo si procede según modelo de negocio (Service Area Business) |
| 14.28 · Paso-14 §16 Fotos | Se decide preparar foto de interior | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Foto interior no prioritaria si Service Area Business. | No prioritario si es Service Area Business |
| 14.29 · Paso-14 §16 Fotos | Se decide preparar fotos de equipo | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | Foto del equipo de cerrajeros |
| 14.30 · Paso-14 §16 Fotos | Se decide preparar fotos de vehículo | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | Foto del vehículo de servicio |
| 14.31 · Paso-14 §16 Fotos | Se decide preparar fotos de trabajo | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | Ejemplos de trabajos realizados (cerraduras instaladas, aperturas, etc.) |
| 14.32 · Paso-14 §16 Fotos | Se decide preparar fotos de contexto local | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Regla "no fake location" — sin fingir oficina física en zonas. | Fotos en zonas de cobertura, sin fingir oficina física en esas zonas |

## Bloque 8 — Q&A, posts, reseñas y tracking

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.33 · Paso-14 §23 Q&A | Se decide preparar Q&A 1 del GBP | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Sin GBP Auto-Suggest detrás. Debe validarse o sustituirse antes de producción. | "¿Ofrecéis cerrajero urgente en Madrid?" |
| 14.34 · Paso-14 §23 Q&A | Se decide preparar Q&A 2 del GBP | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | "¿Atendéis en Chamberí, Salamanca y Retiro?" |
| 14.35 · Paso-14 §23 Q&A | Se decide preparar Q&A 3 del GBP | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | "¿Podéis hacer apertura de puertas sin dañar la cerradura?" |
| 14.36 · Paso-14 §24 Google Posts | Se decide preparar Google Post 1 | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | "Presentación del negocio y servicios de cerrajería en Madrid" |
| 14.37 · Paso-14 §24 Google Posts | Se decide preparar Google Post 2 | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | "Servicio de cerrajero urgente 24h" |
| 14.38 · Paso-14 §24 Google Posts | Se decide preparar Google Post 3 | IA sin respaldo | Valor generado para el ejemplo sin dato real, sin keyword research, sin análisis competitivo y sin confirmación humana. Debe validarse o sustituirse antes de producción. | "Cambio de cerraduras y bombines en Madrid" |
| 14.39 · Paso-14 §15 Reseñas | Se decide crear estrategia de reseñas reales | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Regla "no fake reviews" — solo reseñas reales tras servicios completados. | Solicitar reseñas a clientes reales después de servicios completados, sin incentivos prohibidos y sin reseñas inventadas |
| 14.40 · Paso-14 §12 UTM | Se decide crear UTM para el enlace del GBP | Input humano | El cliente aporta el dominio (heredado del paso 1.02). El formato UTM canónico es GMB Crush. | https://www.cerrajerosmadrid24h.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp |

## Bloque 9 — Ajustes post-GBP en la web

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.41 · Paso-14 §20 Schema sameAs | Se decide actualizar schema después de crear el GBP | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Añadir `sameAs` cuando exista GBP URL. | Añadir `sameAs` cuando exista GBP URL |
| 14.42 · Paso-14 §21 Homepage | Se decide actualizar la Homepage tras crear el GBP | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Añadir GBP URL, reseñas reales y trust blocks. | Añadir GBP URL, reseñas reales si existen, trust blocks |
| 14.43 · Paso-14 §22 Contacto | Se decide actualizar la página de contacto tras crear el GBP | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Datos confirmados y mapa si procede. | Añadir datos confirmados y mapa si procede |
| 14.44 · Paso-14 §22 LBS | Se decide actualizar las Location-Based Service Pages tras crear el GBP | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Ajustar schema, sameAs, reseñas y NAP. | Ajustar schema, `sameAs`, reseñas y NAP |
| 14.45 · Paso-14 §22 GeoHub | Se decide actualizar el GeoHub tras crear el GBP | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Alinear cobertura, reviews y enlaces. | Alinear cobertura, reviews y enlaces |

## Bloque 10 — No invención

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 14.46 · Paso-14 §15 Reseñas | Se decide no inventar reseñas antes de que existan | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Regla "no fake reviews" obligatoria. | Reseñas iniciales pendientes |
| 14.47 · Paso-14 §11 GBP URL | Se decide no inventar GBP URL antes de crear el perfil | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Regla "no GBP URL inventada" obligatoria. | GBP URL N/A hasta creación |
