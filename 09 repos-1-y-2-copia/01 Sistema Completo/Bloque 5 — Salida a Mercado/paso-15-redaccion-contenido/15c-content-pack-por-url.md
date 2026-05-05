# 15c — Content Pack completo para construcción

Versión añadida · Paso 15 · Capa de Salida al Mercado · Sistema GMB Crush

Este documento es el **output ejecutable** del Paso 15.  
Su función es dar a la IA constructora una especificación completa por URL para que pueda montar la web sin inventar estructura, copy, enlaces, schema ni CTAs.

---

## Regla principal

```text
El constructor no decide contenido.
El constructor implementa este Content Pack.
```

Si una página, sección, FAQ, dato, CTA o enlace no aparece aquí o en los módulos anteriores, debe quedar bloqueado y pedirse confirmación.

---

## Inventario incluido

```text
28 URLs SEO base
+ /contacto/ como página auxiliar
```

Desglose:

```text
1 Homepage
5 Service Overview Pages
1 GeoHub
5 Location-Based Service Pages
1 Additional Category Page
15 GeoArticles
1 Contact Page auxiliar
```

---

## Variables globales del ejemplo

| Campo | Valor |
|---|---|
| Business Name | Cerrajeros Madrid 24h |
| Dominio | `https://www.cerrajerosmadrid24h.com` |
| Main City | Madrid |
| Primary Category | Cerrajero |
| Dirección | Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid |
| Teléfono | +34 600 000 000 |
| Email | `info@cerrajerosmadrid24h.com` |
| GBP Status | Not Created |
| Direct Local Coverage Areas | Almagro, Chamberí |
| Candidate Local Coverage Areas | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad |
| Approved Expansion Areas | None in Phase 1 |

---

## Reglas globales de contenido

1. No crear páginas por Local Coverage Areas.
2. Usar Almagro y Chamberí como señales GEO directas.
3. Usar Candidate Local Coverage Areas solo como contexto suave si no hay riesgo de falsa ubicación.
4. No usar Candidate Local Coverage Areas en `areaServed` hasta validación.
5. No inventar reseñas, precios, años de experiencia, garantías, horarios ni tiempos de llegada.
6. No inventar GBP URL.
7. `/contacto/` es página auxiliar.
8. Cada página debe tener H1 único.
9. Cada URL debe enlazar según el Internal Linking Map.
10. Cada schema debe coincidir con el Page Type.

---

## Datos globales bloqueados

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

## Índice de URLs

| ID | URL | Page Type |
|---|---|---|
| HP-001 | `/` | Homepage |
| SO-001 | `/cerrajero/cerrajero-urgente/` | Service Overview |
| SO-002 | `/cerrajero/apertura-puertas/` | Service Overview |
| SO-003 | `/cerrajero/cambio-cerraduras/` | Service Overview |
| SO-004 | `/cerrajero/cambio-bombines/` | Service Overview |
| SO-005 | `/cerrajero/instalacion-cerraduras-seguridad/` | Service Overview |
| GH-001 | `/madrid/` | GeoHub |
| LBS-001 | `/cerrajero/madrid/cerrajero-urgente/` | Location-Based Service |
| LBS-002 | `/cerrajero/madrid/apertura-puertas/` | Location-Based Service |
| LBS-003 | `/cerrajero/madrid/cambio-cerraduras/` | Location-Based Service |
| LBS-004 | `/cerrajero/madrid/cambio-bombines/` | Location-Based Service |
| LBS-005 | `/cerrajero/madrid/instalacion-cerraduras-seguridad/` | Location-Based Service |
| AC-001 | `/cerrajero/madrid/duplicado-llaves/` | Additional Category |
| GA-001 | `/madrid/cuanto-cuesta-un-cerrajero-urgente/` | GeoArticle |
| GA-002 | `/madrid/que-hacer-si-no-puedes-entrar-casa/` | GeoArticle |
| GA-003 | `/madrid/cuanto-tarda-un-cerrajero/` | GeoArticle |
| GA-004 | `/madrid/cuanto-cuesta-abrir-una-puerta/` | GeoArticle |
| GA-005 | `/madrid/que-hacer-si-te-dejas-las-llaves-dentro/` | GeoArticle |
| GA-006 | `/madrid/apertura-de-puertas-sin-romper-cerradura/` | GeoArticle |
| GA-007 | `/madrid/cuando-cambiar-la-cerradura-de-casa/` | GeoArticle |
| GA-008 | `/madrid/cambio-de-cerradura-tras-perder-llaves/` | GeoArticle |
| GA-009 | `/madrid/cerradura-nueva-o-reparacion/` | GeoArticle |
| GA-010 | `/madrid/cuando-cambiar-el-bombin/` | GeoArticle |
| GA-011 | `/madrid/bombin-antibumping-madrid/` | GeoArticle |
| GA-012 | `/madrid/cambio-de-bombin-sin-cambiar-cerradura/` | GeoArticle |
| GA-013 | `/madrid/mejores-cerraduras-de-seguridad-para-viviendas/` | GeoArticle |
| GA-014 | `/madrid/cerraduras-de-seguridad-para-comunidades/` | GeoArticle |
| GA-015 | `/madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/` | GeoArticle |
| AUX-001 | `/contacto/` | Contact |

---

# HP-001 — Homepage

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/` |
| Page Type | Homepage |
| H1 | Cerrajeros Madrid 24h — Cerrajero en Madrid |
| Meta Title | Cerrajero en Madrid | Cerrajeros Madrid 24h |
| Meta Description | Cerrajeros Madrid 24h ofrece servicios de cerrajería en Madrid. Consulta servicios, cobertura local y contacto directo. |
| Schema recomendado | Organization + WebSite |

## Hero

**Título:** Cerrajeros Madrid 24h — Cerrajero en Madrid

**Texto hero:** Cerrajeros Madrid 24h es la página raíz de entidad para los servicios de cerrajería en Madrid. Presenta servicios, cobertura, NAP y acceso directo a contacto sin inventar reseñas ni claims no confirmados.

**CTA principal:** Llamar ahora

## Secciones de contenido

### 1. Servicios de cerrajería en Madrid

Presentar los servicios principales aprobados: cerrajero urgente, apertura de puertas, cambio de cerraduras, cambio de bombines e instalación de cerraduras de seguridad. Cada servicio debe tener una descripción breve y enlace a su página correspondiente.

### 2. Cobertura local desde Madrid

Explicar que la arquitectura se centra en Madrid. Mencionar Almagro y Chamberí como referencias directas de la dirección física. Las zonas candidatas solo se mencionan como contexto urbano si procede.

### 3. Cuándo contactar con un cerrajero

Enumerar situaciones reales: llaves perdidas, puerta cerrada, cerradura dañada, cambio de bombín, mejora de seguridad. No prometer tiempo ni precio concreto.

### 4. Cómo trabajamos

Explicar un proceso simple: llamada o formulario, identificación del problema, valoración, intervención y cierre. Evitar garantías no confirmadas.

### 5. Datos de contacto

Incluir NAP, teléfono clicable y enlace a /contacto/. Recordar que teléfono y email deben validarse antes de publicar.


## FAQs

**P:** ¿Cerrajeros Madrid 24h tiene GBP creado?

**R:** No todavía. El GBP se crea después de publicar la web base y se actualizarán schema, sameAs y reseñas cuando exista.

**P:** ¿Atendéis solo en Madrid?

**R:** La arquitectura base se construye sobre Madrid. Las zonas como Almagro y Chamberí se usan como señales GEO directas; otras zonas quedan pendientes de validación.

**P:** ¿Puedo solicitar presupuesto desde la web?

**R:** Sí. La página de contacto debe permitir llamada o formulario, siempre con datos reales confirmados antes de publicar.


## Internal Links obligatorios

- `/cerrajero/cerrajero-urgente/` — Cerrajero urgente
- `/cerrajero/apertura-puertas/` — Apertura de puertas
- `/cerrajero/cambio-cerraduras/` — Cambio de cerraduras
- `/cerrajero/cambio-bombines/` — Cambio de bombines
- `/cerrajero/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad
- `/madrid/` — Servicios de cerrajería en Madrid
- `/contacto/` — Contactar con Cerrajeros Madrid 24h

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# SO-001 — Service Overview

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/cerrajero/cerrajero-urgente/` |
| Page Type | Service Overview |
| H1 | Cerrajero urgente de Cerrajeros Madrid 24h |
| Meta Title | Cerrajero urgente | Cerrajeros Madrid 24h |
| Meta Description | Información sobre cerrajero urgente de Cerrajeros Madrid 24h. Proceso, problemas que resuelve, FAQs y enlace a la versión local en Madrid. |
| Schema recomendado | Service + WebPage + BreadcrumbList + Speakable |

## Hero

**Título:** Cerrajero urgente de Cerrajeros Madrid 24h

**Texto hero:** Página pilar no geolocalizada para cerrajero urgente. Debe educar al usuario y empujar hacia la página local correspondiente en Madrid.

**CTA principal:** Ver cerrajero urgente en Madrid

## Secciones de contenido

### 1. Qué es el servicio de cerrajero urgente

Explicar el servicio como pilar temático no geolocalizado. Debe describir qué problema resuelve, cuándo se necesita y qué debe esperar el usuario.

### 2. Problemas habituales que resuelve

Listar situaciones relacionadas con cerrajero urgente sin centrar el copy en Madrid. Esta página no compite con la LBS local.

### 3. Cómo funciona el proceso

Describir fases generales: contacto, diagnóstico, intervención, revisión final. No prometer tiempos exactos.

### 4. Opciones relacionadas

Mencionar servicios complementarios y enlazar a otras Service Overview Pages.

### 5. Cobertura local

Incluir un bloque breve que enlace a la versión local: `/cerrajero/madrid/cerrajero-urgente/`.


## FAQs

**P:** ¿Cuándo necesito cerrajero urgente?

**R:** Cuando la situación requiere resolver el problema descrito por el servicio. La respuesta debe ser general y no local.

**P:** ¿Este servicio tiene versión local en Madrid?

**R:** Sí. La página local correspondiente es `/cerrajero/madrid/cerrajero-urgente/`.

**P:** ¿Qué datos debo confirmar antes de solicitar el servicio?

**R:** Teléfono, dirección, tipo de problema y cualquier detalle técnico relevante.


## Internal Links obligatorios

- `/` — Inicio
- `/cerrajero/madrid/cerrajero-urgente/` — Cerrajero urgente en Madrid
- `/madrid/` — GeoHub Madrid
- `/cerrajero/apertura-puertas/` — Apertura de puertas
- `/cerrajero/cambio-cerraduras/` — Cambio de cerraduras
- `/cerrajero/cambio-bombines/` — Cambio de bombines
- `/cerrajero/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# SO-002 — Service Overview

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/cerrajero/apertura-puertas/` |
| Page Type | Service Overview |
| H1 | Apertura de puertas de Cerrajeros Madrid 24h |
| Meta Title | Apertura de puertas | Cerrajeros Madrid 24h |
| Meta Description | Información sobre apertura de puertas de Cerrajeros Madrid 24h. Proceso, problemas que resuelve, FAQs y enlace a la versión local en Madrid. |
| Schema recomendado | Service + WebPage + BreadcrumbList + Speakable |

## Hero

**Título:** Apertura de puertas de Cerrajeros Madrid 24h

**Texto hero:** Página pilar no geolocalizada para apertura de puertas. Debe educar al usuario y empujar hacia la página local correspondiente en Madrid.

**CTA principal:** Ver apertura de puertas en Madrid

## Secciones de contenido

### 1. Qué es el servicio de apertura de puertas

Explicar el servicio como pilar temático no geolocalizado. Debe describir qué problema resuelve, cuándo se necesita y qué debe esperar el usuario.

### 2. Problemas habituales que resuelve

Listar situaciones relacionadas con apertura de puertas sin centrar el copy en Madrid. Esta página no compite con la LBS local.

### 3. Cómo funciona el proceso

Describir fases generales: contacto, diagnóstico, intervención, revisión final. No prometer tiempos exactos.

### 4. Opciones relacionadas

Mencionar servicios complementarios y enlazar a otras Service Overview Pages.

### 5. Cobertura local

Incluir un bloque breve que enlace a la versión local: `/cerrajero/madrid/apertura-puertas/`.


## FAQs

**P:** ¿Cuándo necesito apertura de puertas?

**R:** Cuando la situación requiere resolver el problema descrito por el servicio. La respuesta debe ser general y no local.

**P:** ¿Este servicio tiene versión local en Madrid?

**R:** Sí. La página local correspondiente es `/cerrajero/madrid/apertura-puertas/`.

**P:** ¿Qué datos debo confirmar antes de solicitar el servicio?

**R:** Teléfono, dirección, tipo de problema y cualquier detalle técnico relevante.


## Internal Links obligatorios

- `/` — Inicio
- `/cerrajero/madrid/apertura-puertas/` — Apertura de puertas en Madrid
- `/madrid/` — GeoHub Madrid
- `/cerrajero/cerrajero-urgente/` — Cerrajero urgente
- `/cerrajero/cambio-cerraduras/` — Cambio de cerraduras
- `/cerrajero/cambio-bombines/` — Cambio de bombines
- `/cerrajero/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# SO-003 — Service Overview

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/cerrajero/cambio-cerraduras/` |
| Page Type | Service Overview |
| H1 | Cambio de cerraduras de Cerrajeros Madrid 24h |
| Meta Title | Cambio de cerraduras | Cerrajeros Madrid 24h |
| Meta Description | Información sobre cambio de cerraduras de Cerrajeros Madrid 24h. Proceso, problemas que resuelve, FAQs y enlace a la versión local en Madrid. |
| Schema recomendado | Service + WebPage + BreadcrumbList + Speakable |

## Hero

**Título:** Cambio de cerraduras de Cerrajeros Madrid 24h

**Texto hero:** Página pilar no geolocalizada para cambio de cerraduras. Debe educar al usuario y empujar hacia la página local correspondiente en Madrid.

**CTA principal:** Ver cambio de cerraduras en Madrid

## Secciones de contenido

### 1. Qué es el servicio de cambio de cerraduras

Explicar el servicio como pilar temático no geolocalizado. Debe describir qué problema resuelve, cuándo se necesita y qué debe esperar el usuario.

### 2. Problemas habituales que resuelve

Listar situaciones relacionadas con cambio de cerraduras sin centrar el copy en Madrid. Esta página no compite con la LBS local.

### 3. Cómo funciona el proceso

Describir fases generales: contacto, diagnóstico, intervención, revisión final. No prometer tiempos exactos.

### 4. Opciones relacionadas

Mencionar servicios complementarios y enlazar a otras Service Overview Pages.

### 5. Cobertura local

Incluir un bloque breve que enlace a la versión local: `/cerrajero/madrid/cambio-cerraduras/`.


## FAQs

**P:** ¿Cuándo necesito cambio de cerraduras?

**R:** Cuando la situación requiere resolver el problema descrito por el servicio. La respuesta debe ser general y no local.

**P:** ¿Este servicio tiene versión local en Madrid?

**R:** Sí. La página local correspondiente es `/cerrajero/madrid/cambio-cerraduras/`.

**P:** ¿Qué datos debo confirmar antes de solicitar el servicio?

**R:** Teléfono, dirección, tipo de problema y cualquier detalle técnico relevante.


## Internal Links obligatorios

- `/` — Inicio
- `/cerrajero/madrid/cambio-cerraduras/` — Cambio de cerraduras en Madrid
- `/madrid/` — GeoHub Madrid
- `/cerrajero/cerrajero-urgente/` — Cerrajero urgente
- `/cerrajero/apertura-puertas/` — Apertura de puertas
- `/cerrajero/cambio-bombines/` — Cambio de bombines
- `/cerrajero/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# SO-004 — Service Overview

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/cerrajero/cambio-bombines/` |
| Page Type | Service Overview |
| H1 | Cambio de bombines de Cerrajeros Madrid 24h |
| Meta Title | Cambio de bombines | Cerrajeros Madrid 24h |
| Meta Description | Información sobre cambio de bombines de Cerrajeros Madrid 24h. Proceso, problemas que resuelve, FAQs y enlace a la versión local en Madrid. |
| Schema recomendado | Service + WebPage + BreadcrumbList + Speakable |

## Hero

**Título:** Cambio de bombines de Cerrajeros Madrid 24h

**Texto hero:** Página pilar no geolocalizada para cambio de bombines. Debe educar al usuario y empujar hacia la página local correspondiente en Madrid.

**CTA principal:** Ver cambio de bombines en Madrid

## Secciones de contenido

### 1. Qué es el servicio de cambio de bombines

Explicar el servicio como pilar temático no geolocalizado. Debe describir qué problema resuelve, cuándo se necesita y qué debe esperar el usuario.

### 2. Problemas habituales que resuelve

Listar situaciones relacionadas con cambio de bombines sin centrar el copy en Madrid. Esta página no compite con la LBS local.

### 3. Cómo funciona el proceso

Describir fases generales: contacto, diagnóstico, intervención, revisión final. No prometer tiempos exactos.

### 4. Opciones relacionadas

Mencionar servicios complementarios y enlazar a otras Service Overview Pages.

### 5. Cobertura local

Incluir un bloque breve que enlace a la versión local: `/cerrajero/madrid/cambio-bombines/`.


## FAQs

**P:** ¿Cuándo necesito cambio de bombines?

**R:** Cuando la situación requiere resolver el problema descrito por el servicio. La respuesta debe ser general y no local.

**P:** ¿Este servicio tiene versión local en Madrid?

**R:** Sí. La página local correspondiente es `/cerrajero/madrid/cambio-bombines/`.

**P:** ¿Qué datos debo confirmar antes de solicitar el servicio?

**R:** Teléfono, dirección, tipo de problema y cualquier detalle técnico relevante.


## Internal Links obligatorios

- `/` — Inicio
- `/cerrajero/madrid/cambio-bombines/` — Cambio de bombines en Madrid
- `/madrid/` — GeoHub Madrid
- `/cerrajero/cerrajero-urgente/` — Cerrajero urgente
- `/cerrajero/apertura-puertas/` — Apertura de puertas
- `/cerrajero/cambio-cerraduras/` — Cambio de cerraduras
- `/cerrajero/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# SO-005 — Service Overview

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/cerrajero/instalacion-cerraduras-seguridad/` |
| Page Type | Service Overview |
| H1 | Instalación de cerraduras de seguridad de Cerrajeros Madrid 24h |
| Meta Title | Instalación de cerraduras de seguridad | Cerrajeros Madrid 2 |
| Meta Description | Información sobre instalación de cerraduras de seguridad de Cerrajeros Madrid 24h. Proceso, problemas que resuelve, FAQs y enlace a la versión local en Madrid. |
| Schema recomendado | Service + WebPage + BreadcrumbList + Speakable |

## Hero

**Título:** Instalación de cerraduras de seguridad de Cerrajeros Madrid 24h

**Texto hero:** Página pilar no geolocalizada para instalación de cerraduras de seguridad. Debe educar al usuario y empujar hacia la página local correspondiente en Madrid.

**CTA principal:** Ver instalación de cerraduras de seguridad en Madrid

## Secciones de contenido

### 1. Qué es el servicio de instalación de cerraduras de seguridad

Explicar el servicio como pilar temático no geolocalizado. Debe describir qué problema resuelve, cuándo se necesita y qué debe esperar el usuario.

### 2. Problemas habituales que resuelve

Listar situaciones relacionadas con instalación de cerraduras de seguridad sin centrar el copy en Madrid. Esta página no compite con la LBS local.

### 3. Cómo funciona el proceso

Describir fases generales: contacto, diagnóstico, intervención, revisión final. No prometer tiempos exactos.

### 4. Opciones relacionadas

Mencionar servicios complementarios y enlazar a otras Service Overview Pages.

### 5. Cobertura local

Incluir un bloque breve que enlace a la versión local: `/cerrajero/madrid/instalacion-cerraduras-seguridad/`.


## FAQs

**P:** ¿Cuándo necesito instalación de cerraduras de seguridad?

**R:** Cuando la situación requiere resolver el problema descrito por el servicio. La respuesta debe ser general y no local.

**P:** ¿Este servicio tiene versión local en Madrid?

**R:** Sí. La página local correspondiente es `/cerrajero/madrid/instalacion-cerraduras-seguridad/`.

**P:** ¿Qué datos debo confirmar antes de solicitar el servicio?

**R:** Teléfono, dirección, tipo de problema y cualquier detalle técnico relevante.


## Internal Links obligatorios

- `/` — Inicio
- `/cerrajero/madrid/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad en Madrid
- `/madrid/` — GeoHub Madrid
- `/cerrajero/cerrajero-urgente/` — Cerrajero urgente
- `/cerrajero/apertura-puertas/` — Apertura de puertas
- `/cerrajero/cambio-cerraduras/` — Cambio de cerraduras
- `/cerrajero/cambio-bombines/` — Cambio de bombines

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GH-001 — GeoHub

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/` |
| Page Type | GeoHub |
| H1 | Servicios de cerrajería en Madrid |
| Meta Title | Servicios de cerrajería en Madrid | Cerrajeros Madrid 24h |
| Meta Description | Encuentra servicios de cerrajería en Madrid: urgencias, aperturas, cerraduras, bombines, seguridad y guías útiles. |
| Schema recomendado | CollectionPage + BreadcrumbList |

## Hero

**Título:** Servicios de cerrajería en Madrid

**Texto hero:** GeoHub de Madrid. Organiza todas las páginas locales, categorías adicionales y GeoArticles del sistema.

**CTA principal:** Explorar servicios en Madrid

## Secciones de contenido

### 1. Servicios de cerrajería en Madrid

Listar y enlazar todas las Location-Based Service Pages aprobadas para Madrid. No crear páginas por barrio.

### 2. Cobertura local y contexto urbano

Explicar que Madrid es la Main City. Usar Almagro y Chamberí como referencias directas; Candidate LCAs solo como contexto si se validan.

### 3. Guías útiles sobre cerrajería en Madrid

Listar GeoArticles agrupados por servicio para que el usuario pueda profundizar antes de contactar.

### 4. Categorías adicionales soportadas

Incluir enlace a duplicado de llaves como Additional Category Page.

### 5. Contacto

Enlazar a /contacto/ y al teléfono validado.


## FAQs

**P:** ¿Qué servicios de cerrajería se agrupan en Madrid?

**R:** Los servicios principales aprobados y sus páginas locales correspondientes.

**P:** ¿El GeoHub sustituye a las páginas de servicio?

**R:** No. El GeoHub organiza la ciudad; las páginas LBS convierten por servicio concreto.

**P:** ¿Las zonas de Madrid tienen páginas propias?

**R:** No por defecto. Solo si pasan a Approved Expansion Areas.


## Internal Links obligatorios

- `/cerrajero/madrid/cerrajero-urgente/` — Cerrajero urgente en Madrid
- `/cerrajero/madrid/apertura-puertas/` — Apertura de puertas en Madrid
- `/cerrajero/madrid/cambio-cerraduras/` — Cambio de cerraduras en Madrid
- `/cerrajero/madrid/cambio-bombines/` — Cambio de bombines en Madrid
- `/cerrajero/madrid/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad en Madrid
- `/cerrajero/madrid/duplicado-llaves/` — Duplicado de llaves en Madrid
- `/madrid/cuanto-cuesta-un-cerrajero-urgente/` — ¿Cuánto cuesta un cerrajero urgente en Madrid?
- `/madrid/que-hacer-si-no-puedes-entrar-casa/` — Qué hacer si no puedes entrar en casa en Madrid
- `/madrid/cuanto-tarda-un-cerrajero/` — Cuánto tarda un cerrajero en Madrid
- `/madrid/cuanto-cuesta-abrir-una-puerta/` — Cuánto cuesta abrir una puerta en Madrid
- `/madrid/que-hacer-si-te-dejas-las-llaves-dentro/` — Qué hacer si te dejas las llaves dentro en Madrid
- `/madrid/apertura-de-puertas-sin-romper-cerradura/` — Apertura de puertas sin romper cerradura en Madrid
- `/madrid/cuando-cambiar-la-cerradura-de-casa/` — Cuándo cambiar la cerradura de casa en Madrid
- `/madrid/cambio-de-cerradura-tras-perder-llaves/` — Cambio de cerradura tras perder las llaves en Madrid
- `/madrid/cerradura-nueva-o-reparacion/` — Cerradura nueva o reparación en Madrid
- `/madrid/cuando-cambiar-el-bombin/` — Cuándo cambiar el bombín en Madrid
- `/madrid/bombin-antibumping-madrid/` — Bombín antibumping en Madrid: cuándo instalarlo
- `/madrid/cambio-de-bombin-sin-cambiar-cerradura/` — Cambio de bombín sin cambiar cerradura en Madrid
- `/madrid/mejores-cerraduras-de-seguridad-para-viviendas/` — Mejores cerraduras de seguridad para viviendas en Madrid
- `/madrid/cerraduras-de-seguridad-para-comunidades/` — Cerraduras de seguridad para comunidades en Madrid
- `/madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/` — Instalar cerradura de seguridad en puerta blindada en Madrid
- `/` — Inicio
- `/contacto/` — Contacto

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# LBS-001 — Location-Based Service

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/cerrajero/madrid/cerrajero-urgente/` |
| Page Type | Location-Based Service |
| H1 | Cerrajero urgente en Madrid |
| Meta Title | Cerrajero urgente en Madrid | Cerrajeros Madrid 24h |
| Meta Description | Cerrajero urgente en Madrid con Cerrajeros Madrid 24h. Información local, proceso, FAQs y contacto directo. |
| Schema recomendado | LocalBusiness + FAQPage + BreadcrumbList |

## Hero

**Título:** Cerrajero urgente en Madrid

**Texto hero:** Página de conversión local para cerrajero urgente en Madrid. Debe orientar al usuario hacia llamada o contacto sin inventar claims.

**CTA principal:** Llamar ahora

## Secciones de contenido

### 1. Cerrajero urgente en Madrid

Explicar el servicio con enfoque de conversión local. Usar Madrid como ciudad principal y no transformar barrios en páginas.

### 2. Cuándo solicitar este servicio

Describir situaciones reales y comunes sin inventar precios ni tiempos exactos.

### 3. Cómo se realiza la intervención

Explicar diagnóstico, opciones, intervención y revisión. Usar lenguaje humano y directo.

### 4. Zonas y contexto local

Mencionar Almagro y Chamberí como señales GEO directas. Candidate LCAs pueden aparecer solo como contexto suave si están validadas.

### 5. Preguntas frecuentes locales

Incluir dudas relacionadas con servicio + ciudad, sin claims falsos.


## FAQs

**P:** ¿Cuándo conviene pedir cerrajero urgente en Madrid?

**R:** Cuando el problema corresponde al servicio y requiere intervención profesional. No se deben prometer precios o tiempos sin validación.

**P:** ¿Trabajáis en Almagro y Chamberí?

**R:** Estas zonas salen de la dirección física y pueden usarse como señales GEO directas. La cobertura real debe confirmarse antes de schema areaServed.

**P:** ¿Puedo llamar directamente?

**R:** Sí, pero el teléfono debe estar validado antes de publicar la web.


## Internal Links obligatorios

- `/cerrajero/cerrajero-urgente/` — Cerrajero urgente
- `/madrid/` — Servicios de cerrajería en Madrid
- `/contacto/` — Contacto
- `/madrid/cuanto-cuesta-un-cerrajero-urgente/` — ¿Cuánto cuesta un cerrajero urgente en Madrid?
- `/madrid/que-hacer-si-no-puedes-entrar-casa/` — Qué hacer si no puedes entrar en casa en Madrid
- `/madrid/cuanto-tarda-un-cerrajero/` — Cuánto tarda un cerrajero en Madrid
- `/cerrajero/madrid/apertura-puertas/` — Apertura de puertas en Madrid
- `/cerrajero/madrid/cambio-cerraduras/` — Cambio de cerraduras en Madrid
- `/cerrajero/madrid/cambio-bombines/` — Cambio de bombines en Madrid
- `/cerrajero/madrid/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# LBS-002 — Location-Based Service

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/cerrajero/madrid/apertura-puertas/` |
| Page Type | Location-Based Service |
| H1 | Apertura de puertas en Madrid |
| Meta Title | Apertura de puertas en Madrid | Cerrajeros Madrid 24h |
| Meta Description | Apertura de puertas en Madrid con Cerrajeros Madrid 24h. Información local, proceso, FAQs y contacto directo. |
| Schema recomendado | LocalBusiness + FAQPage + BreadcrumbList |

## Hero

**Título:** Apertura de puertas en Madrid

**Texto hero:** Página de conversión local para apertura de puertas en Madrid. Debe orientar al usuario hacia llamada o contacto sin inventar claims.

**CTA principal:** Llamar ahora

## Secciones de contenido

### 1. Apertura de puertas en Madrid

Explicar el servicio con enfoque de conversión local. Usar Madrid como ciudad principal y no transformar barrios en páginas.

### 2. Cuándo solicitar este servicio

Describir situaciones reales y comunes sin inventar precios ni tiempos exactos.

### 3. Cómo se realiza la intervención

Explicar diagnóstico, opciones, intervención y revisión. Usar lenguaje humano y directo.

### 4. Zonas y contexto local

Mencionar Almagro y Chamberí como señales GEO directas. Candidate LCAs pueden aparecer solo como contexto suave si están validadas.

### 5. Preguntas frecuentes locales

Incluir dudas relacionadas con servicio + ciudad, sin claims falsos.


## FAQs

**P:** ¿Cuándo conviene pedir apertura de puertas en Madrid?

**R:** Cuando el problema corresponde al servicio y requiere intervención profesional. No se deben prometer precios o tiempos sin validación.

**P:** ¿Trabajáis en Almagro y Chamberí?

**R:** Estas zonas salen de la dirección física y pueden usarse como señales GEO directas. La cobertura real debe confirmarse antes de schema areaServed.

**P:** ¿Puedo llamar directamente?

**R:** Sí, pero el teléfono debe estar validado antes de publicar la web.


## Internal Links obligatorios

- `/cerrajero/apertura-puertas/` — Apertura de puertas
- `/madrid/` — Servicios de cerrajería en Madrid
- `/contacto/` — Contacto
- `/madrid/cuanto-cuesta-abrir-una-puerta/` — Cuánto cuesta abrir una puerta en Madrid
- `/madrid/que-hacer-si-te-dejas-las-llaves-dentro/` — Qué hacer si te dejas las llaves dentro en Madrid
- `/madrid/apertura-de-puertas-sin-romper-cerradura/` — Apertura de puertas sin romper cerradura en Madrid
- `/cerrajero/madrid/cerrajero-urgente/` — Cerrajero urgente en Madrid
- `/cerrajero/madrid/cambio-cerraduras/` — Cambio de cerraduras en Madrid
- `/cerrajero/madrid/cambio-bombines/` — Cambio de bombines en Madrid
- `/cerrajero/madrid/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# LBS-003 — Location-Based Service

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/cerrajero/madrid/cambio-cerraduras/` |
| Page Type | Location-Based Service |
| H1 | Cambio de cerraduras en Madrid |
| Meta Title | Cambio de cerraduras en Madrid | Cerrajeros Madrid 24h |
| Meta Description | Cambio de cerraduras en Madrid con Cerrajeros Madrid 24h. Información local, proceso, FAQs y contacto directo. |
| Schema recomendado | LocalBusiness + FAQPage + BreadcrumbList |

## Hero

**Título:** Cambio de cerraduras en Madrid

**Texto hero:** Página de conversión local para cambio de cerraduras en Madrid. Debe orientar al usuario hacia llamada o contacto sin inventar claims.

**CTA principal:** Llamar ahora

## Secciones de contenido

### 1. Cambio de cerraduras en Madrid

Explicar el servicio con enfoque de conversión local. Usar Madrid como ciudad principal y no transformar barrios en páginas.

### 2. Cuándo solicitar este servicio

Describir situaciones reales y comunes sin inventar precios ni tiempos exactos.

### 3. Cómo se realiza la intervención

Explicar diagnóstico, opciones, intervención y revisión. Usar lenguaje humano y directo.

### 4. Zonas y contexto local

Mencionar Almagro y Chamberí como señales GEO directas. Candidate LCAs pueden aparecer solo como contexto suave si están validadas.

### 5. Preguntas frecuentes locales

Incluir dudas relacionadas con servicio + ciudad, sin claims falsos.


## FAQs

**P:** ¿Cuándo conviene pedir cambio de cerraduras en Madrid?

**R:** Cuando el problema corresponde al servicio y requiere intervención profesional. No se deben prometer precios o tiempos sin validación.

**P:** ¿Trabajáis en Almagro y Chamberí?

**R:** Estas zonas salen de la dirección física y pueden usarse como señales GEO directas. La cobertura real debe confirmarse antes de schema areaServed.

**P:** ¿Puedo llamar directamente?

**R:** Sí, pero el teléfono debe estar validado antes de publicar la web.


## Internal Links obligatorios

- `/cerrajero/cambio-cerraduras/` — Cambio de cerraduras
- `/madrid/` — Servicios de cerrajería en Madrid
- `/contacto/` — Contacto
- `/madrid/cuando-cambiar-la-cerradura-de-casa/` — Cuándo cambiar la cerradura de casa en Madrid
- `/madrid/cambio-de-cerradura-tras-perder-llaves/` — Cambio de cerradura tras perder las llaves en Madrid
- `/madrid/cerradura-nueva-o-reparacion/` — Cerradura nueva o reparación en Madrid
- `/cerrajero/madrid/cerrajero-urgente/` — Cerrajero urgente en Madrid
- `/cerrajero/madrid/apertura-puertas/` — Apertura de puertas en Madrid
- `/cerrajero/madrid/cambio-bombines/` — Cambio de bombines en Madrid
- `/cerrajero/madrid/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# LBS-004 — Location-Based Service

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/cerrajero/madrid/cambio-bombines/` |
| Page Type | Location-Based Service |
| H1 | Cambio de bombines en Madrid |
| Meta Title | Cambio de bombines en Madrid | Cerrajeros Madrid 24h |
| Meta Description | Cambio de bombines en Madrid con Cerrajeros Madrid 24h. Información local, proceso, FAQs y contacto directo. |
| Schema recomendado | LocalBusiness + FAQPage + BreadcrumbList |

## Hero

**Título:** Cambio de bombines en Madrid

**Texto hero:** Página de conversión local para cambio de bombines en Madrid. Debe orientar al usuario hacia llamada o contacto sin inventar claims.

**CTA principal:** Llamar ahora

## Secciones de contenido

### 1. Cambio de bombines en Madrid

Explicar el servicio con enfoque de conversión local. Usar Madrid como ciudad principal y no transformar barrios en páginas.

### 2. Cuándo solicitar este servicio

Describir situaciones reales y comunes sin inventar precios ni tiempos exactos.

### 3. Cómo se realiza la intervención

Explicar diagnóstico, opciones, intervención y revisión. Usar lenguaje humano y directo.

### 4. Zonas y contexto local

Mencionar Almagro y Chamberí como señales GEO directas. Candidate LCAs pueden aparecer solo como contexto suave si están validadas.

### 5. Preguntas frecuentes locales

Incluir dudas relacionadas con servicio + ciudad, sin claims falsos.


## FAQs

**P:** ¿Cuándo conviene pedir cambio de bombines en Madrid?

**R:** Cuando el problema corresponde al servicio y requiere intervención profesional. No se deben prometer precios o tiempos sin validación.

**P:** ¿Trabajáis en Almagro y Chamberí?

**R:** Estas zonas salen de la dirección física y pueden usarse como señales GEO directas. La cobertura real debe confirmarse antes de schema areaServed.

**P:** ¿Puedo llamar directamente?

**R:** Sí, pero el teléfono debe estar validado antes de publicar la web.


## Internal Links obligatorios

- `/cerrajero/cambio-bombines/` — Cambio de bombines
- `/madrid/` — Servicios de cerrajería en Madrid
- `/contacto/` — Contacto
- `/madrid/cuando-cambiar-el-bombin/` — Cuándo cambiar el bombín en Madrid
- `/madrid/bombin-antibumping-madrid/` — Bombín antibumping en Madrid: cuándo instalarlo
- `/madrid/cambio-de-bombin-sin-cambiar-cerradura/` — Cambio de bombín sin cambiar cerradura en Madrid
- `/cerrajero/madrid/cerrajero-urgente/` — Cerrajero urgente en Madrid
- `/cerrajero/madrid/apertura-puertas/` — Apertura de puertas en Madrid
- `/cerrajero/madrid/cambio-cerraduras/` — Cambio de cerraduras en Madrid
- `/cerrajero/madrid/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# LBS-005 — Location-Based Service

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/cerrajero/madrid/instalacion-cerraduras-seguridad/` |
| Page Type | Location-Based Service |
| H1 | Instalación de cerraduras de seguridad en Madrid |
| Meta Title | Instalación de cerraduras de seguridad en Madrid | Cerrajero |
| Meta Description | Instalación de cerraduras de seguridad en Madrid con Cerrajeros Madrid 24h. Información local, proceso, FAQs y contacto directo. |
| Schema recomendado | LocalBusiness + FAQPage + BreadcrumbList |

## Hero

**Título:** Instalación de cerraduras de seguridad en Madrid

**Texto hero:** Página de conversión local para instalación de cerraduras de seguridad en Madrid. Debe orientar al usuario hacia llamada o contacto sin inventar claims.

**CTA principal:** Llamar ahora

## Secciones de contenido

### 1. Instalación de cerraduras de seguridad en Madrid

Explicar el servicio con enfoque de conversión local. Usar Madrid como ciudad principal y no transformar barrios en páginas.

### 2. Cuándo solicitar este servicio

Describir situaciones reales y comunes sin inventar precios ni tiempos exactos.

### 3. Cómo se realiza la intervención

Explicar diagnóstico, opciones, intervención y revisión. Usar lenguaje humano y directo.

### 4. Zonas y contexto local

Mencionar Almagro y Chamberí como señales GEO directas. Candidate LCAs pueden aparecer solo como contexto suave si están validadas.

### 5. Preguntas frecuentes locales

Incluir dudas relacionadas con servicio + ciudad, sin claims falsos.


## FAQs

**P:** ¿Cuándo conviene pedir instalación de cerraduras de seguridad en Madrid?

**R:** Cuando el problema corresponde al servicio y requiere intervención profesional. No se deben prometer precios o tiempos sin validación.

**P:** ¿Trabajáis en Almagro y Chamberí?

**R:** Estas zonas salen de la dirección física y pueden usarse como señales GEO directas. La cobertura real debe confirmarse antes de schema areaServed.

**P:** ¿Puedo llamar directamente?

**R:** Sí, pero el teléfono debe estar validado antes de publicar la web.


## Internal Links obligatorios

- `/cerrajero/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad
- `/madrid/` — Servicios de cerrajería en Madrid
- `/contacto/` — Contacto
- `/madrid/mejores-cerraduras-de-seguridad-para-viviendas/` — Mejores cerraduras de seguridad para viviendas en Madrid
- `/madrid/cerraduras-de-seguridad-para-comunidades/` — Cerraduras de seguridad para comunidades en Madrid
- `/madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/` — Instalar cerradura de seguridad en puerta blindada en Madrid
- `/cerrajero/madrid/cerrajero-urgente/` — Cerrajero urgente en Madrid
- `/cerrajero/madrid/apertura-puertas/` — Apertura de puertas en Madrid
- `/cerrajero/madrid/cambio-cerraduras/` — Cambio de cerraduras en Madrid
- `/cerrajero/madrid/cambio-bombines/` — Cambio de bombines en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# AC-001 — Additional Category

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/cerrajero/madrid/duplicado-llaves/` |
| Page Type | Additional Category |
| H1 | Duplicado de llaves en Madrid |
| Meta Title | Duplicado de llaves en Madrid | Cerrajeros Madrid 24h |
| Meta Description | Servicio de duplicado de llaves en Madrid. Información, casos de uso, servicios relacionados y contacto. |
| Schema recomendado | Service + BreadcrumbList |

## Hero

**Título:** Duplicado de llaves en Madrid

**Texto hero:** Página de soporte para la categoría adicional de duplicado de llaves. Debe fortalecer GBP sin alterar S=5.

**CTA principal:** Consultar duplicado de llaves

## Secciones de contenido

### 1. Duplicado de llaves en Madrid

Explicar el servicio como soporte de categoría adicional. No convertirlo en core service de la fórmula base.

### 2. Cuándo puede ser necesario

Casos: copia de llaves para vivienda, oficina, comunidad o sustitución tras pérdida. No afirmar disponibilidad de todos los tipos de llaves sin confirmación.

### 3. Proceso del servicio

Recepción de solicitud, identificación del tipo de llave, confirmación técnica y entrega. Evitar prometer tiempos exactos.

### 4. Relación con otros servicios

Enlazar a apertura de puertas, cambio de bombines y cambio de cerraduras si hay relación de intención.

### 5. Cobertura local

Madrid como ciudad; Almagro y Chamberí como señales directas si procede.


## FAQs

**P:** ¿El duplicado de llaves es un servicio core?

**R:** No. En este sistema se trata como Additional Category Page, no como core service.

**P:** ¿Se puede duplicar cualquier tipo de llave?

**R:** Debe confirmarse con el negocio. No se debe publicar una promesa técnica sin validación.

**P:** ¿Dónde enlaza esta página?

**R:** Debe enlazar al GeoHub Madrid, servicios relacionados y artículos útiles.


## Internal Links obligatorios

- `/madrid/` — GeoHub Madrid
- `/cerrajero/madrid/apertura-puertas/` — Apertura de puertas en Madrid
- `/cerrajero/madrid/cambio-bombines/` — Cambio de bombines en Madrid
- `/contacto/` — Contacto

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-001 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/cuanto-cuesta-un-cerrajero-urgente/` |
| Page Type | GeoArticle |
| H1 | ¿Cuánto cuesta un cerrajero urgente en Madrid? |
| Meta Title | Precio de un cerrajero urgente en Madrid | Cerrajeros Madrid |
| Meta Description | Coste, factores y variables de una intervención urgente de cerrajería en Madrid. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** ¿Cuánto cuesta un cerrajero urgente en Madrid?

**Texto hero:** Artículo informacional de apoyo para cerrajero urgente en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Coste, factores y variables de una intervención urgente de cerrajería en Madrid. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con cerrajero urgente: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/cerrajero-urgente/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/cerrajero-urgente/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/cerrajero-urgente/` — Cerrajero urgente en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/que-hacer-si-no-puedes-entrar-casa/` — Qué hacer si no puedes entrar en casa en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-002 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/que-hacer-si-no-puedes-entrar-casa/` |
| Page Type | GeoArticle |
| H1 | Qué hacer si no puedes entrar en casa en Madrid |
| Meta Title | Qué hacer si no puedes entrar en casa en Madrid | Cerrajeros |
| Meta Description | Guía de pasos seguros cuando una persona se queda fuera de casa. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Qué hacer si no puedes entrar en casa en Madrid

**Texto hero:** Artículo informacional de apoyo para cerrajero urgente en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Guía de pasos seguros cuando una persona se queda fuera de casa. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con cerrajero urgente: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/cerrajero-urgente/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/cerrajero-urgente/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/cerrajero-urgente/` — Cerrajero urgente en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/cuanto-cuesta-un-cerrajero-urgente/` — ¿Cuánto cuesta un cerrajero urgente en Madrid?

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-003 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/cuanto-tarda-un-cerrajero/` |
| Page Type | GeoArticle |
| H1 | Cuánto tarda un cerrajero en Madrid |
| Meta Title | Cuánto tarda un cerrajero en Madrid | Cerrajeros Madrid 24h |
| Meta Description | Factores que afectan al tiempo de respuesta de un cerrajero en Madrid. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Cuánto tarda un cerrajero en Madrid

**Texto hero:** Artículo informacional de apoyo para cerrajero urgente en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Factores que afectan al tiempo de respuesta de un cerrajero en Madrid. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con cerrajero urgente: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/cerrajero-urgente/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/cerrajero-urgente/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/cerrajero-urgente/` — Cerrajero urgente en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/cuanto-cuesta-un-cerrajero-urgente/` — ¿Cuánto cuesta un cerrajero urgente en Madrid?

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-004 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/cuanto-cuesta-abrir-una-puerta/` |
| Page Type | GeoArticle |
| H1 | Cuánto cuesta abrir una puerta en Madrid |
| Meta Title | Cuánto cuesta abrir una puerta en Madrid | Cerrajeros Madrid |
| Meta Description | Rangos y factores que influyen en una apertura de puerta. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Cuánto cuesta abrir una puerta en Madrid

**Texto hero:** Artículo informacional de apoyo para apertura de puertas en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Rangos y factores que influyen en una apertura de puerta. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con apertura de puertas: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/apertura-puertas/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/apertura-puertas/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/apertura-puertas/` — Apertura de puertas en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/que-hacer-si-te-dejas-las-llaves-dentro/` — Qué hacer si te dejas las llaves dentro en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-005 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/que-hacer-si-te-dejas-las-llaves-dentro/` |
| Page Type | GeoArticle |
| H1 | Qué hacer si te dejas las llaves dentro en Madrid |
| Meta Title | Qué hacer si te dejas las llaves dentro en Madrid | Cerrajer |
| Meta Description | Pasos recomendados si las llaves quedan dentro de la vivienda. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Qué hacer si te dejas las llaves dentro en Madrid

**Texto hero:** Artículo informacional de apoyo para apertura de puertas en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Pasos recomendados si las llaves quedan dentro de la vivienda. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con apertura de puertas: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/apertura-puertas/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/apertura-puertas/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/apertura-puertas/` — Apertura de puertas en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/cuanto-cuesta-abrir-una-puerta/` — Cuánto cuesta abrir una puerta en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-006 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/apertura-de-puertas-sin-romper-cerradura/` |
| Page Type | GeoArticle |
| H1 | Apertura de puertas sin romper cerradura en Madrid |
| Meta Title | Apertura de puertas sin romper cerradura en Madrid | Cerraje |
| Meta Description | Cuándo es posible abrir una puerta sin dañar cerradura o puerta. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Apertura de puertas sin romper cerradura en Madrid

**Texto hero:** Artículo informacional de apoyo para apertura de puertas en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Cuándo es posible abrir una puerta sin dañar cerradura o puerta. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con apertura de puertas: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/apertura-puertas/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/apertura-puertas/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/apertura-puertas/` — Apertura de puertas en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/cuanto-cuesta-abrir-una-puerta/` — Cuánto cuesta abrir una puerta en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-007 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/cuando-cambiar-la-cerradura-de-casa/` |
| Page Type | GeoArticle |
| H1 | Cuándo cambiar la cerradura de casa en Madrid |
| Meta Title | Cuándo cambiar la cerradura de casa en Madrid | Cerrajeros M |
| Meta Description | Señales para sustituir una cerradura por seguridad o desgaste. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Cuándo cambiar la cerradura de casa en Madrid

**Texto hero:** Artículo informacional de apoyo para cambio de cerraduras en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Señales para sustituir una cerradura por seguridad o desgaste. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con cambio de cerraduras: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/cambio-cerraduras/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/cambio-cerraduras/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/cambio-cerraduras/` — Cambio de cerraduras en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/cambio-de-cerradura-tras-perder-llaves/` — Cambio de cerradura tras perder las llaves en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-008 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/cambio-de-cerradura-tras-perder-llaves/` |
| Page Type | GeoArticle |
| H1 | Cambio de cerradura tras perder las llaves en Madrid |
| Meta Title | Cambio de cerradura tras perder las llaves en Madrid | Cerra |
| Meta Description | Qué hacer cuando se pierden llaves y hay riesgo de copia. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Cambio de cerradura tras perder las llaves en Madrid

**Texto hero:** Artículo informacional de apoyo para cambio de cerraduras en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Qué hacer cuando se pierden llaves y hay riesgo de copia. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con cambio de cerraduras: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/cambio-cerraduras/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/cambio-cerraduras/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/cambio-cerraduras/` — Cambio de cerraduras en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/cuando-cambiar-la-cerradura-de-casa/` — Cuándo cambiar la cerradura de casa en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-009 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/cerradura-nueva-o-reparacion/` |
| Page Type | GeoArticle |
| H1 | Cerradura nueva o reparación en Madrid |
| Meta Title | Cerradura nueva o reparación en Madrid | Cerrajeros Madrid 2 |
| Meta Description | Comparativa entre reparar una cerradura o sustituirla. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Cerradura nueva o reparación en Madrid

**Texto hero:** Artículo informacional de apoyo para cambio de cerraduras en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Comparativa entre reparar una cerradura o sustituirla. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con cambio de cerraduras: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/cambio-cerraduras/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/cambio-cerraduras/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/cambio-cerraduras/` — Cambio de cerraduras en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/cuando-cambiar-la-cerradura-de-casa/` — Cuándo cambiar la cerradura de casa en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-010 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/cuando-cambiar-el-bombin/` |
| Page Type | GeoArticle |
| H1 | Cuándo cambiar el bombín en Madrid |
| Meta Title | Cuándo cambiar el bombín en Madrid | Cerrajeros Madrid 24h |
| Meta Description | Casos en los que basta cambiar el cilindro o bombín. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Cuándo cambiar el bombín en Madrid

**Texto hero:** Artículo informacional de apoyo para cambio de bombines en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Casos en los que basta cambiar el cilindro o bombín. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con cambio de bombines: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/cambio-bombines/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/cambio-bombines/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/cambio-bombines/` — Cambio de bombines en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/bombin-antibumping-madrid/` — Bombín antibumping en Madrid: cuándo instalarlo

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-011 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/bombin-antibumping-madrid/` |
| Page Type | GeoArticle |
| H1 | Bombín antibumping en Madrid: cuándo instalarlo |
| Meta Title | Bombín antibumping en Madrid: cuándo instalarlo | Cerrajeros |
| Meta Description | Guía sobre bombines antibumping y seguridad residencial. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Bombín antibumping en Madrid: cuándo instalarlo

**Texto hero:** Artículo informacional de apoyo para cambio de bombines en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Guía sobre bombines antibumping y seguridad residencial. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con cambio de bombines: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/cambio-bombines/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/cambio-bombines/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/cambio-bombines/` — Cambio de bombines en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/cuando-cambiar-el-bombin/` — Cuándo cambiar el bombín en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-012 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/cambio-de-bombin-sin-cambiar-cerradura/` |
| Page Type | GeoArticle |
| H1 | Cambio de bombín sin cambiar cerradura en Madrid |
| Meta Title | Cambio de bombín sin cambiar cerradura en Madrid | Cerrajero |
| Meta Description | Cuándo se puede cambiar solo el bombín sin sustituir cerradura completa. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Cambio de bombín sin cambiar cerradura en Madrid

**Texto hero:** Artículo informacional de apoyo para cambio de bombines en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Cuándo se puede cambiar solo el bombín sin sustituir cerradura completa. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con cambio de bombines: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/cambio-bombines/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/cambio-bombines/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/cambio-bombines/` — Cambio de bombines en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/cuando-cambiar-el-bombin/` — Cuándo cambiar el bombín en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-013 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/mejores-cerraduras-de-seguridad-para-viviendas/` |
| Page Type | GeoArticle |
| H1 | Mejores cerraduras de seguridad para viviendas en Madrid |
| Meta Title | Mejores cerraduras de seguridad para viviendas en Madrid | C |
| Meta Description | Opciones de seguridad para viviendas y puertas de acceso. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Mejores cerraduras de seguridad para viviendas en Madrid

**Texto hero:** Artículo informacional de apoyo para instalación de cerraduras de seguridad en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Opciones de seguridad para viviendas y puertas de acceso. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con instalación de cerraduras de seguridad: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/instalacion-cerraduras-seguridad/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/instalacion-cerraduras-seguridad/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/cerraduras-de-seguridad-para-comunidades/` — Cerraduras de seguridad para comunidades en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-014 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/cerraduras-de-seguridad-para-comunidades/` |
| Page Type | GeoArticle |
| H1 | Cerraduras de seguridad para comunidades en Madrid |
| Meta Title | Cerraduras de seguridad para comunidades en Madrid | Cerraje |
| Meta Description | Criterios para reforzar accesos en comunidades de vecinos. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Cerraduras de seguridad para comunidades en Madrid

**Texto hero:** Artículo informacional de apoyo para instalación de cerraduras de seguridad en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Criterios para reforzar accesos en comunidades de vecinos. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con instalación de cerraduras de seguridad: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/instalacion-cerraduras-seguridad/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/instalacion-cerraduras-seguridad/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/mejores-cerraduras-de-seguridad-para-viviendas/` — Mejores cerraduras de seguridad para viviendas en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# GA-015 — GeoArticle

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/` |
| Page Type | GeoArticle |
| H1 | Instalar cerradura de seguridad en puerta blindada en Madrid |
| Meta Title | Instalar cerradura de seguridad en puerta blindada en Madrid |
| Meta Description | Qué revisar antes de instalar una cerradura de seguridad en puerta blindada. Guía local de Cerrajeros Madrid 24h para usuarios en Madrid. |
| Schema recomendado | Article + FAQPage + BreadcrumbList + Speakable |

## Hero

**Título:** Instalar cerradura de seguridad en puerta blindada en Madrid

**Texto hero:** Artículo informacional de apoyo para instalación de cerraduras de seguridad en Madrid. Debe actuar como booster semántico, no como landing de venta.

**CTA principal:** Ver servicio relacionado en Madrid

## Secciones de contenido

### 1. Respuesta rápida

Responder directamente la intención: Qué revisar antes de instalar una cerradura de seguridad en puerta blindada. Evitar precios o tiempos cerrados sin datos reales.

### 2. Factores que influyen

Explicar variables relacionadas con instalación de cerraduras de seguridad: tipo de puerta, tipo de cerradura, urgencia, horario, estado del mecanismo o nivel de seguridad.

### 3. Errores habituales

Enumerar errores que puede cometer el usuario antes de contactar: forzar la puerta, manipular bombín, aceptar presupuestos sin explicación, no verificar datos del profesional.

### 4. Contexto local en Madrid

Usar Madrid como ciudad y mencionar Local Coverage Areas solo como referencias contextuales, sin afirmar oficina física ni cobertura no validada.

### 5. Siguiente paso recomendado

Conectar con la LBS `/cerrajero/madrid/instalacion-cerraduras-seguridad/` usando un puente narrativo natural.


## FAQs

**P:** ¿Esta guía sustituye a una valoración profesional?

**R:** No. Sirve para orientar, pero la situación real debe valorarse con datos del caso.

**P:** ¿Qué página relacionada debo consultar?

**R:** La página relacionada es `/cerrajero/madrid/instalacion-cerraduras-seguridad/`.

**P:** ¿Se pueden usar barrios en el artículo?

**R:** Sí, como referencias locales, pero sin fingir ubicación física ni crear URLs por barrio.


## Internal Links obligatorios

- `/cerrajero/madrid/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad en Madrid
- `/madrid/` — GeoHub Madrid
- `/contacto/` — Contacto
- `/madrid/mejores-cerraduras-de-seguridad-para-viviendas/` — Mejores cerraduras de seguridad para viviendas en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar reseñas de Google hasta crear/verificar GBP y tener reseñas reales.
- No publicar “10+ años de experiencia” hasta confirmación del negocio.
- No publicar precios cerrados sin dato real.
- No prometer tiempos de llegada concretos sin confirmación operativa.
- No afirmar oficina física fuera de la dirección real.
- Teléfono y email son placeholders hasta validación.

---

# AUX-001 — Contact

## Datos de construcción

| Campo | Valor |
|---|---|
| URL | `/contacto/` |
| Page Type | Contact |
| H1 | Contactar con Cerrajeros Madrid 24h |
| Meta Title | Contacto | Cerrajeros Madrid 24h |
| Meta Description | Contacta con Cerrajeros Madrid 24h para consultas de cerrajería en Madrid. Llamada, formulario y datos de contacto. |
| Schema recomendado | ContactPage + Organization |

## Hero

**Título:** Contactar con Cerrajeros Madrid 24h

**Texto hero:** Página auxiliar de contacto. Debe facilitar conversión, pero no forma parte del inventario SEO base.

**CTA principal:** Enviar consulta

## Secciones de contenido

### 1. Datos de contacto

Mostrar NAP, teléfono y email solo cuando estén validados. Si no, mantenerlos como placeholders no publicables.

### 2. Formulario de contacto

Campos recomendados: nombre, teléfono, email, tipo de servicio, mensaje, aceptación de privacidad.

### 3. Servicios disponibles

Enlazar a los principales servicios en Madrid sin convertir la página en landing SEO.

### 4. Horario

No publicar 24h si no está confirmado.

### 5. Ubicación

Mostrar dirección física si procede según modelo de negocio y elegibilidad GBP.


## FAQs

**P:** ¿Puedo llamar directamente?

**R:** Sí, si el teléfono está validado y enlazado con tel:.

**P:** ¿Puedo pedir presupuesto desde el formulario?

**R:** Sí. El formulario debe enviar la solicitud correctamente y dar feedback al usuario.

**P:** ¿La dirección debe mostrarse siempre?

**R:** Depende del modelo de negocio y elegibilidad GBP.


## Internal Links obligatorios

- `/` — Inicio
- `/madrid/` — Servicios de cerrajería en Madrid
- `/cerrajero/madrid/cerrajero-urgente/` — Cerrajero urgente en Madrid
- `/cerrajero/madrid/apertura-puertas/` — Apertura de puertas en Madrid
- `/cerrajero/madrid/cambio-cerraduras/` — Cambio de cerraduras en Madrid
- `/cerrajero/madrid/cambio-bombines/` — Cambio de bombines en Madrid
- `/cerrajero/madrid/instalacion-cerraduras-seguridad/` — Instalación de cerraduras de seguridad en Madrid

## Datos bloqueados / no publicables sin validación

- No publicar teléfono si sigue siendo placeholder.
- No publicar email si sigue siendo placeholder.
- No publicar horario 24h sin confirmación.
- No mostrar mapa o dirección pública si el modelo de negocio no lo permite.
- No añadir reseñas ni GBP URL hasta crear el perfil.

---

# Checklist final del Content Pack

| Check | Pregunta | Estado |
|---|---|---|
| Inventario | ¿Incluye 28 URLs SEO base + `/contacto/`? | ⬜ |
| Page Type | ¿Cada URL tiene Page Type correcto? | ⬜ |
| H1 | ¿Cada página tiene H1 único? | ⬜ |
| Metadata | ¿Cada página tiene title y description? | ⬜ |
| Hero | ¿Cada página tiene hero y CTA? | ⬜ |
| Secciones | ¿Cada página tiene secciones suficientes para construir? | ⬜ |
| FAQs | ¿Cada página tiene FAQs? | ⬜ |
| Links | ¿Cada página tiene internal links obligatorios? | ⬜ |
| Schema | ¿Cada página tiene schema recomendado? | ⬜ |
| Datos bloqueados | ¿Se bloquearon reseñas, precios, horarios y claims no confirmados? | ⬜ |
| LCA | ¿No se crean URLs por Local Coverage Areas? | ⬜ |
| Build-ready | ¿El Paso 17 puede construir sin inventar? | ⬜ |

---

# Output para Paso 17

El Paso 17 debe usar este documento como fuente de verdad para:

```text
rutas
H1
metadata
copy base por sección
FAQs
CTAs
internal links
schema recomendado
datos bloqueados
```

Si el constructor necesita más texto largo, debe expandir cada sección manteniendo las decisiones de este Content Pack y sin introducir datos no validados.
