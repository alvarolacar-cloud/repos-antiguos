# Bloque 7 — GBP Creation & Website Alignment (Paso 14)

**Propósito:** Crear el Google Business Profile usando la web publicada como fuente de verdad, y sincronizar web + GBP después de la verificación.

**Total outputs:** 20 (14.1–14.20)
**Outputs no_aplica:** ninguno

---

## Reglas Globales del Bloque 7

### Prerequisito absoluto (web-first)

**El Bloque 7 está bloqueado hasta que 18.6 (Sitio en Producción — URL live) tenga valor confirmado.**

La web base publicada es la fuente de verdad. El GBP se crea DESPUÉS, nunca antes. El GBP se construye sobre lo que la web ya afirma, no al revés.

### Regla de Bloque 6 como barrera

El Bloque 7 solo se desbloquea cuando `block_6_clear = true` en el pipeline state, es decir, cuando todos los outputs con estado `⚠` de los Bloques 1-5 han sido resueltos (zero warnings en el agregador).

### Regla NAP inmutable

```
Final NAP = Website NAP = Schema NAP = Contact Page NAP = GBP NAP
```

Si hay cualquier discrepancia entre estas 4 fuentes, el output que la contiene es `⚠` (warning). Antes de crear el GBP, el NAP debe estar sincronizado en todos los puntos.

### Regla de categorías: Planned → Confirmed

Las categorías del GBP pasan de "Planned" (Paso 1) a "Confirmed" en este paso mediante 3 checks:
1. **Disponibilidad**: la categoría existe en el catálogo actual de Google
2. **Relevancia**: describe con precisión los servicios reales del negocio
3. **Soporte web**: existe una página web (SO o LBS) que respalda la categoría

### Regla de reseñas

Sin GBP creado y verificado: cero reseñas en el copy ni en el GBP. Solo pruebas verificables. Después de la verificación: reseñas reales solicitadas a clientes reales.

### Regla de sameAs

El campo `sameAs` del schema LocalBusiness solo recibe la URL del GBP DESPUÉS de que el perfil esté creado y verificado. No se inventa una URL GBP anticipada.

### Regla de fotos

Las fotos del GBP deben representar el negocio real. No fotos stock, no oficinas que no existen, no equipos que no se usan.

### Regla de sincronización final

El Paso 14 NO termina cuando se crea el perfil. Termina cuando la web y el GBP están sincronizados (schema actualizado, homepage actualizada, contacto actualizado, tracking configurado).

---

## Contexto de Doctrina del Paso 14

### Modelos de negocio GBP

```
STOREFRONT: El cliente va al negocio (tienda, taller, clínica).
  → Dirección física completa y pública en GBP.
  → Fotos del local.

SERVICE AREA BUSINESS (SAB): El negocio va al cliente (cerrajero, fontanero, electricista).
  → Dirección oculta o solo ciudad en GBP.
  → Areas de servicio configuradas en GBP.
  → No reclamar sede física en barrios donde no hay oficina real.

HÍBRIDO: Tiene sede y también atiende a domicilio.
  → Dirección visible + áreas de servicio configuradas.
```

### Patrones de URL y UTM

```
URL seleccionada para GBP: Homepage del cliente (18.6)

URL UTM para tracking (sin romper canonical):
  https://[dominio]/?utm_source=google&utm_medium=organic&utm_campaign=gbp

Regla: la URL UTM se prepara pero el canonical de la homepage sigue siendo
  https://[dominio]/ (sin parámetros). La URL UTM solo se usa en el campo
  "Website" del GBP para trackear clics desde el perfil.
```

### Fórmula de descripción GBP

```
Description = brand + primary category + Main City + core services + local coverage + CTA soft

Ejemplo: "[Nombre] ofrece servicios de [primary category] en [Main City],
incluyendo [servicio 1], [servicio 2], [servicio 3], [servicio 4] y [servicio 5].
Atendemos en [LCA-1], [LCA-2] y resto de [Main City]."

Restricciones:
- Sin keyword stuffing ni repetición artificial
- Sin afirmaciones falsas de ubicación
- Sin tiempos garantizados que no sean operativamente confirmados
- Sin reseñas o certificaciones antes de tenerlas
- Máximo 750 caracteres
```

### Pack de fotos GBP

```
Obligatorias:
  - Logo (cuadrado, calidad alta)
  - Cover photo (16:9, representativa del negocio)

Según modelo de negocio:
  - Fotos del local (STOREFRONT/HÍBRIDO)
  - Vehículo de servicio (SAB con vehículo)
  - Equipo técnico/herramientas
  - Ejemplos de trabajos realizados

Siempre:
  - Contexto local si procede (zona reconocible de Main City)

Prohibido:
  - Fotos stock que no representen el negocio
  - Fotos de una oficina que no existe
  - Fotos de equipos/materiales que no se usan
```

### Método Q&A del GBP

```
Fuentes para extraer preguntas reales:
  1. GBP Auto-Suggest: buscar "[servicio] [Main City]" → anotar sugerencias automáticas
  2. People Also Ask: buscar "[servicio] [Main City]" → anotar 5-10 preguntas del bloque PAA
  3. Keyword research informacional: queries con "cómo", "qué", "cuándo", "cuánto", "coste"
     con volumen ≥ 10/mes
  4. Q&A de competidores: revisar 3-5 GBP competitors → identificar patrones recurrentes

Filtro: eliminar preguntas sobre servicios que el negocio no ofrece o zonas donde no atiende.
Priorizar: 3-5 preguntas sobre objeciones comerciales reales (cobertura, precio, urgencia, garantía).
Redacción: respuestas alineadas con copy de Homepage/LBS y NAP verificado.
```

### Plan de posts GBP

```
Candidatas a posts: URLs con Priority ≥ P2 (Homepage, las S LBS, AC, GeoHub)

Por cada URL candidata, generar 1-3 posts con angles distintos:
  - Servicio principal (qué hace el negocio)
  - Beneficio diferencial (por qué este negocio)
  - Llamada a acción local (urgencia, cobertura, zona)

Destinos de posts:
  - Post sobre servicio core → URL de la LBS
  - Post sobre cobertura → URL del GeoHub
  - Post sobre categoría adicional → URL de la AC

Cadencia mínima: 1 post nuevo por semana. Variar el angle.
Cada 4 semanas revisar GSC: si una URL recibe poco tráfico → reforzar con post adicional.
```

### Estrategia de reseñas reales

```
Pre-GBP: cero reseñas. Solo pruebas verificables del negocio.
Post-GBP y post-verificación:
  1. Identificar clientes reales satisfechos (histórico o recientes)
  2. Solicitar reseña con link directo al GBP (Google review link)
  3. No ofrecer incentivos a cambio de reseñas (viola políticas de Google)
  4. Responder a todas las reseñas (positivas y negativas)
  5. No inventar reseñas ni usar servicios de reseñas falsas

Integración en la web (después de verificación y primeras reseñas):
  → Actualizar homepage trust block con N real de reseñas
  → Añadir widget o enlace al GBP
```

### Cola de actualización post-GBP

```
Después de crear y verificar el GBP, actualizar en orden:

1. Schema global (LocalBusiness):
   sameAs: añadir URL real del GBP
   NAP: verificar consistencia final

2. Homepage:
   - Añadir enlace al perfil GBP
   - Actualizar trust block con señales reales
   - Añadir mapa si procede (STOREFRONT/HÍBRIDO)
   - NAP en footer: verificar coincidencia

3. Página de contacto:
   - Confirmar NAP idéntico al GBP
   - Añadir enlace al GBP
   - Mapa si procede

4. Páginas LBS + GeoHub:
   - Verificar NAP en footer (herencia del layout)
   - GeoHub: puede añadir enlace al GBP

5. Tracking baseline:
   - Geo-grid inicial: keywords [{servicio} {Main City}] × {barrios LCA}
   - GSC: verificar propiedad + sitemap
   - GA4: confirmar eventos configurados (form_submit, tel_click)
   - GBP Insights: activar seguimiento de búsquedas y acciones
```

### Riesgos operativos

```
R-1: Perfil duplicado existente → revisar antes de crear; reclamar si existe
R-2: Suspensión por categoría incorrecta → usar solo categorías con soporte web real
R-3: NAP inconsistente → sincronizar web+schema+GBP antes de verificar
R-4: Keyword stuffing en nombre → nombre GBP = nombre real del negocio
R-5: Dirección falsa (SAB afirmando sede en barrio) → solo dirección operativa real
R-6: Categorías adicionales sin soporte web → añadir a cola de producción
R-7: Reseñas falsas antes de verificación → cero tolerancia
R-8: Horario inconsistente (web dice 24h, GBP dice 9-18) → sincronizar
R-9: sameAs con URL GBP inventada → solo añadir después de verificación real
R-10: Post GBP sin URL de destino real → cada post debe apuntar a página publicada
```

---

### Output 14.1 — GBP creado o plan de creación listo

Produce el estado actual del GBP y el plan de acción correspondiente según `gbp_status` del cliente.

**Inputs requeridos:** 1.3 (GBP Lifecycle Status), 18.6 (URL live — prerequisito)

**Lógica por estado:**

```
SI gbp_status = "no_creado":
  → Producir plan de creación: pasos 1-10 para crear nuevo GBP desde cero.
  → Pasos: buscar duplicados → crear perfil → añadir NAP → categorías → descripción → fotos → URL UTM → solicitar verificación

SI gbp_status = "creado_no_verificado":
  → Producir plan de verificación: método de verificación disponible (postal, teléfono, video, etc.)
  → Confirmar que el perfil existente tiene NAP correcto antes de verificar.

SI gbp_status = "creado_verificado":
  → GBP ya existe y está verificado.
  → Producir plan de alineación web-GBP (sincronización NAP, schema, homepage, contacto).

SI gbp_status = "creado_suspendido":
  → Producir plan de desuspensión: identificar causa → corregir → solicitar revisión.
  → No crear perfil nuevo mientras el suspendido exista.

SI gbp_status = "no_aplica":
  → Documentar por qué el GBP no aplica. Finalizar el paso.
```

**Formato:** Documento de estado + plan de acción detallado por pasos.

**Validación:** El plan está alineado con el estado real del GBP (no_creado ≠ creado_verificado). La web (18.6) está live antes de ejecutar el plan.

---

### Output 14.2 — Estado de verificación definido

Produce la definición del estado de verificación del GBP y el método elegido.

**Contenido del output:**
```
Estado actual: [no verificado / verificado / suspendido / no_aplica]
Método de verificación seleccionado: [postal / teléfono / video / correo electrónico / sin verificación pendiente]
Tiempo estimado: [días]
Prerequisito cumplido: ¿La web está publicada? → [SÍ: 18.6 = URL live / NO: bloqueado]
```

**Formato:** Tabla de estado + método + tiempo estimado + prerequisito.

**Validación:** Si la web no está live (18.6 vacío), este output es placeholder con nota de bloqueo.

---

### Output 14.3 — NAP final aprobado

Produce el NAP definitivo que se usará en GBP, web, schema y página de contacto.

**Inputs requeridos:** 1.4 (Full NAP del cliente)

**Contenido del output:**
```
Nombre: [nombre exacto del negocio — sin keyword stuffing]
Dirección: [dirección completa si Storefront/Híbrido] / [solo ciudad si SAB]
Teléfono: [teléfono con formato internacional, ej: +34 XXX XXX XXX]
URL web: [18.6 — URL live]

Verificación de consistencia:
  Homepage: [NAP en footer] → MATCH / MISMATCH
  Schema LocalBusiness: [NAP en JSON-LD] → MATCH / MISMATCH
  Página /contacto/: [NAP visible] → MATCH / MISMATCH
  GBP (cuando exista): [NAP en perfil] → MATCH / MISMATCH

Estado: APROBADO (todo MATCH) / BLOQUEADO (hay MISMATCH pendiente de corrección)
```

**Formato:** NAP canónico + tabla de verificación de consistencia.

**Validación:** Todo MATCH antes de continuar. Cualquier MISMATCH es bloqueante.

---

### Output 14.4 — Modelo de negocio definido

Produce la definición del modelo de negocio del GBP del cliente.

**Inputs requeridos:** 1.4 (dirección), descripción del servicio del preflight

**Contenido del output:**
```
Modelo: [STOREFRONT / SAB / HÍBRIDO]

Justificación:
  STOREFRONT → el cliente visita la sede (tienda, taller, consulta)
  SAB → el negocio visita al cliente (servicio en domicilio)
  HÍBRIDO → tiene sede y también va al cliente

Implicaciones en GBP:
  STOREFRONT: dirección pública + fotos del local
  SAB: dirección oculta o solo ciudad + áreas de servicio
  HÍBRIDO: dirección pública + áreas de servicio

Implicaciones en schema:
  SAB: @type LocalBusiness con areaServed; sin addressLocality si dirección oculta
  STOREFRONT/HÍBRIDO: @type LocalBusiness con address completa
```

**Formato:** Definición + justificación + tabla de implicaciones.

**Validación:** El modelo es consistente con el NAP (si es SAB, no hay dirección física pública en GBP que no exista).

---

### Output 14.5 — Categoría principal confirmada

Produce la categoría principal del GBP, pasando de "Planned" (1.5) a "Confirmed".

**Inputs requeridos:** 1.5 (Planned Primary GBP Category), 15.3-15.5 (páginas publicadas)

**Checklist de confirmación:**
```
☐ Disponibilidad: la categoría existe en el catálogo actual de Google Business
☐ Relevancia: describe con precisión el servicio principal real del negocio
☐ Soporte web: existe página web publicada que respalda esta categoría
  → Homepage menciona la categoría
  → Al menos 1 LBS o SO cubre la categoría con contenido real
```

**Contenido del output:**
```
Categoría planned:  [1.5]
Categoría confirmed: [categoría validada]
¿Es la misma? [SÍ / NO — justificación si cambió]
Soporte web: [URL de la página de soporte]
```

**Formato:** Tabla de confirmación con los 3 checks.

**Validación:** Los 3 checks en verde. Si la categoría no existe en el catálogo de Google, se selecciona la más cercana disponible y se documenta el cambio.

---

### Output 14.6 — Categorías adicionales confirmadas

Produce las categorías adicionales del GBP, pasando de "Planned" (1.6) a "Confirmed" o "Descartada".

**Inputs requeridos:** 1.6 (Planned Additional Categories), páginas publicadas

**Checklist por categoría adicional:**
```
Para cada categoría en 1.6:
☐ Disponibilidad en catálogo Google
☐ Relevancia real para el negocio
☐ Soporte web: existe página publicada (AC page o LBS)

Resultado: CONFIRMED / DESCARTADA / EN COLA DE PRODUCCIÓN
```

**Tabla de resultado:**
```
| Categoría planned | Categoría confirmed | Soporte web existente | Estado |
|-------------------|--------------------|----------------------|--------|
| [Cat adicional 1] | [confirmada/ajust.] | /ruta-pagina/         | CONFIRMED |
| [Cat adicional 2] | —                  | no existe aún        | EN COLA |
```

**Regla:** Categoría adicional sin soporte web → añadir a cola de producción web antes de añadir al GBP.

**Validación:** Ninguna categoría adicional se añade al GBP si no tiene soporte web existente o confirmado en producción.

---

### Output 14.7 — Servicios GBP mapeados a páginas web

Produce el mapeado entre los servicios del GBP y las páginas web que los soportan.

**Inputs requeridos:** 1.9 (servicios core), 3.5 (URL Matrix), páginas publicadas

**Tabla de mapeado:**
```
| Servicio GBP | Tipo | URL página de soporte | Page Type |
|--------------|------|----------------------|-----------|
| [Servicio 1] | core | /servicio/ciudad/url/ | LBS       |
| [Servicio 2] | core | /servicio/            | SO        |
| [Cat. adic.] | ac   | /categoria-adicional/ | AC        |
```

**Reglas:**
- Cada servicio del GBP tiene al menos una página web (SO o LBS)
- Los servicios core mapean a sus LBS de Main City
- Las categorías adicionales mapean a su AC page
- No se añaden servicios al GBP que no tengan página de soporte publicada

**Validación:** 0 servicios sin URL de soporte. Todas las URLs están en la URL Matrix (3.5).

---

### Output 14.8 — URL de web seleccionada para GBP

Produce la URL que se configurará en el campo "Sitio web" del GBP.

**Inputs requeridos:** 18.6 (URL live)

**Contenido del output:**
```
URL seleccionada: https://[dominio del cliente]/
Justificación: homepage = Root Entity Anchor, máxima autoridad y contexto de negocio
Status: LIVE (confirmado por 18.6)

Verificación previa:
  ☐ URL responde con status 200
  ☐ URL es el canonical definitivo (no redirect)
  ☐ SSL activo (https://)
  ☐ NAP correcto en la página (footer + schema)
```

**Formato:** URL confirmada + checklist de verificación.

**Validación:** Solo se usa una URL con status 200 y SSL activo.

---

### Output 14.9 — URL UTM preparada

Produce la URL UTM para tracking de clics desde el GBP sin romper el canonical.

**Inputs requeridos:** 18.6 (URL live)

**Contenido del output:**
```
URL UTM:
  https://[dominio]/?utm_source=google&utm_medium=organic&utm_campaign=gbp

Parámetros:
  utm_source:   google
  utm_medium:   organic
  utm_campaign: gbp

Uso: esta URL se introduce en el campo "Website" del GBP para trackear clics.
     La homepage mantiene su canonical en https://[dominio]/ (sin parámetros).
     GA4 filtra los parámetros UTM y los asocia al evento session_start.

Configuración GA4:
  Evento esperado: session_start con source=google, medium=organic, campaign=gbp
  Dashboard: Traffic Acquisition → filtra por campaign=gbp para ver clics GBP
```

**Formato:** URL UTM completa + explicación de parámetros + configuración GA4.

**Validación:** URL UTM funciona correctamente (no rompe la carga de la homepage). Canonical de homepage no incluye parámetros UTM.

---

### Output 14.10 — Descripción GBP aprobada

Produce el texto de descripción del GBP usando la fórmula doctrinal.

**Inputs requeridos:** 1.1 (nombre), 14.5 (primary category confirmed), 1.7 (Main City), 1.9 (servicios), 1.10 (LCAs)

**Fórmula:** `brand + primary category + Main City + core services + local coverage + CTA soft`

**Contenido del output:**
```
Descripción aprobada (máx. 750 caracteres):
"[Nombre del negocio] ofrece servicios de [categoría principal] en [Main City],
incluyendo [servicio 1], [servicio 2], [servicio 3], [servicio 4] y [servicio 5].
Atendemos en [LCA-1], [LCA-2], [LCA-3] y [resto de Main City].
[CTA soft opcional: Contacta con nosotros para más información.]"

Caracteres: [N]/750

Checklist:
  ☐ Sin keyword stuffing
  ☐ Sin afirmaciones falsas de ubicación
  ☐ Sin tiempos garantizados no operativos
  ☐ Sin reseñas o certificaciones sin prueba
  ☐ Coherente con homepage y páginas core
```

**Validación:** Descripción ≤ 750 caracteres. Checklist en verde.

---

### Output 14.11 — Plan de fotos

Produce el plan detallado de fotografías para el GBP.

**Inputs requeridos:** 14.4 (modelo de negocio), 1.1 (nombre negocio)

**Contenido del output:**

```
Pack de fotos requerido para [Modelo de negocio]:

OBLIGATORIAS:
  1. Logo: [nombre negocio], formato cuadrado, fondo blanco o transparente, ≥400×400px
  2. Cover: imagen representativa del servicio principal, 16:9, ≥1024×576px

POR MODELO:
  STOREFRONT/HÍBRIDO:
  3. Exterior del local (fachada, cartel, acceso)
  4. Interior del local (recepción, área de trabajo)

  SAB:
  3. Vehículo de servicio con branding (si aplica)
  4. Herramientas/equipos reales del servicio

SIEMPRE (según disponibilidad):
  5. Equipo técnico (foto profesional del equipo)
  6. Ejemplos de trabajos realizados (antes/después si aplica)
  7. Contexto local: zona reconocible de Main City (si aplica)

PROHIBIDO:
  - Fotos stock de bancos de imágenes
  - Fotos de local o sede que no existe
  - Fotos de equipos/materiales que no se usan en el servicio

Estado por foto: [DISPONIBLE / PENDIENTE DE CAPTURA / NO APLICA]
```

**Formato:** Lista de fotos con descripción, requisitos técnicos y estado.

**Validación:** Al menos logo + cover disponibles antes de crear el GBP. El resto se añade después.

---

### Output 14.12 — Plan de Q&A

Produce el plan de preguntas y respuestas para el GBP.

**Inputs requeridos:** 1.7 (Main City), 1.9 (servicios), 1.10 (LCAs), 14.5 (primary category)

**Método de extracción:** Ver sección Q&A del contexto de doctrina (Auto-Suggest, PAA, keyword research informacional, competitor GBPs).

**Contenido del output:**

```
Q&A planificado — [Nombre negocio]

Pregunta 1: [objeción real sobre cobertura]
Respuesta: [respuesta alineada con LBS/Homepage NAP]

Pregunta 2: [objeción real sobre precio]
Respuesta: [rango real verificable]

Pregunta 3: [objeción real sobre urgencia/disponibilidad]
Respuesta: [coherente con horario real del GBP]

Pregunta 4: [objeción real sobre garantía/certificación]
Respuesta: [solo claims verificables]

Pregunta 5: [duda sobre zona específica]
Respuesta: [coherente con LCAs y SAB/STOREFRONT model]

Fuente de cada pregunta: [Auto-Suggest / PAA / Keyword research / Competidores]
```

**Validación:** Las respuestas son coherentes con el copy de la web (Homepage, LBS). Sin afirmaciones sobre zonas donde no se atiende. Sin promesas de tiempo sin respaldo operativo.

---

### Output 14.13 — Plan de posts

Produce el calendario inicial de Google Posts del GBP.

**Inputs requeridos:** 1.9 (servicios core), 3.5 (URL Matrix), 8.9 (Priority Tiers)

**Contenido del output:**

```
Posts planificados — [Nombre negocio]

Semana 1:
  Angle: Servicio principal
  Tema: [Servicio core P1]
  URL destino: [LBS URL del servicio principal]
  CTA: [texto de acción]

Semana 2:
  Angle: Beneficio diferencial
  Tema: [diferenciador verificable del negocio]
  URL destino: [Homepage o LBS]
  CTA: [texto de acción]

Semana 3:
  Angle: Cobertura local
  Tema: Servicios en [Main City] y zonas de cobertura
  URL destino: [GeoHub URL]
  CTA: Ver zonas de servicio

Semana 4:
  Angle: Llamada a acción
  Tema: [Servicio P2 o AC]
  URL destino: [URL correspondiente]
  CTA: [texto de acción]

Regla: 1 post/semana mínimo. Revisar GSC cada 4 semanas para reforzar URLs lentas.
```

**Validación:** Cada post apunta a una URL publicada y en la URL Matrix (3.5). Sin posts sin URL de destino.

---

### Output 14.14 — Estrategia de reseñas reales

Produce el plan para obtener reseñas reales en el GBP post-verificación.

**Contenido del output:**

```
Estrategia de reseñas — [Nombre negocio]

Pre-condición: GBP verificado y activo. Sin reseñas hasta entonces.

Método:
  1. Generar enlace directo a reseña Google:
     https://search.google.com/local/writereview?placeid=[PLACE_ID_del_GBP]
  2. Identificar clientes satisfechos recientes (histórico de trabajos)
  3. Solicitar reseña vía: [canal: WhatsApp / email / en persona]
     Mensaje tipo: "¿Quedaste satisfecho con el servicio? Tu opinión en Google
     nos ayuda a llegar a más clientes en [Main City]. [enlace]"
  4. No ofrecer incentivos a cambio de reseñas (viola políticas Google)
  5. Responder a todas las reseñas:
     - Positiva: agradecer + mencionar servicio realizado + invitar a volver
     - Negativa: responder sin atacar + ofrecer resolución

Integración en web (después de las primeras reseñas reales):
  → Actualizar homepage trust block: "X reseñas reales en Google"
  → Añadir widget de reseñas o enlace al perfil

Prohibido:
  - Reseñas de empleados o familiares
  - Servicios de compra de reseñas
  - Respuestas que desacrediten al reviewer
```

**Validación:** Sin referencias al número de reseñas en la web antes de tenerlas. El plan es ejecutable con clientes reales.

---

### Output 14.15 — Cola de actualización post-GBP

Produce la cola ordenada de actualizaciones a ejecutar en la web después de verificar el GBP.

**Inputs requeridos:** 17.6 (schemas), 15.3 (homepage), 15.9 (contacto)

**Contenido del output:**

```
Cola de actualización post-verificación GBP:

Prioridad ALTA (ejecutar en las primeras 48h post-verificación):
  1. Schema global LocalBusiness:
     → sameAs: añadir URL real del GBP (https://www.google.com/maps?cid=[CID_REAL])
     → Verificar NAP consistente con perfil verificado
  2. Homepage (/):
     → Añadir enlace al perfil GBP
     → Actualizar trust block si hay reseñas iniciales
     → Añadir mapa si modelo = STOREFRONT o HÍBRIDO
  3. Página de contacto (/contacto/):
     → Confirmar NAP idéntico al GBP
     → Añadir enlace al perfil GBP
     → Mapa si procede

Prioridad MEDIA (primera semana):
  4. GeoHub: añadir enlace al perfil GBP en sección de confianza
  5. LBS principales (P1): verificar NAP en footer (herencia del layout)
  6. Sitemap: regenerar y re-enviar a GSC si se añadieron páginas

Prioridad BAJA (primer mes):
  7. Cuando existan reseñas reales:
     → Actualizar homepage con N de reseñas reales
     → Añadir widget si aplica
  8. Categorías adicionales EN COLA: publicar páginas de soporte pendientes
```

**Formato:** Lista ordenada por prioridad con acción específica por elemento.

**Validación:** La cola está completa antes de declarar el Paso 14 como terminado.

---

### Output 14.16 — Schema update plan

Produce el plan detallado de actualización del schema LocalBusiness post-GBP.

**Inputs requeridos:** 17.6 (schemas implementados), 14.3 (NAP final), 14.4 (modelo de negocio)

**Contenido del output:**

```
Schema LocalBusiness — actualización post-GBP:

Campos a actualizar en src/components/schema/LocalBusinessSchema.astro:

ANTES del Paso 14 (ya implementado):
  "@type": "LocalBusiness",
  "name": "[1.1]",
  "telephone": "[1.4 teléfono]",
  "url": "[18.6]",
  "areaServed": "[1.7]",
  "sameAs": []  ← vacío antes de GBP

DESPUÉS del Paso 14 (añadir tras verificación):
  "sameAs": ["https://www.google.com/maps?cid=[CID_REAL_DEL_GBP]"]

SI STOREFRONT/HÍBRIDO (añadir si no estaba):
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[calle y número]",
    "addressLocality": "[ciudad]",
    "addressRegion": "[región/provincia]",
    "postalCode": "[CP]",
    "addressCountry": "[ES]"
  }

SI SAB (revisar que NO tiene dirección física completa si es oculta):
  Usar solo: "addressLocality": "[Main City]"

Validación post-update:
  ☐ sameAs contiene URL GBP real y verificable
  ☐ NAP en schema = NAP en GBP = NAP en web
  ☐ areaServed coherente con áreas reales de servicio
```

**Formato:** Bloque de código JSON-LD con campos antes/después + checklist de validación.

**Validación:** Nunca inventar URL GBP. Solo añadir sameAs cuando el perfil existe y es verificable.

---

### Output 14.17 — Homepage update plan

Produce el plan de actualización de la homepage después de verificar el GBP.

**Inputs requeridos:** 15.3 (homepage copy), 14.3 (NAP), 14.14 (reseñas)

**Contenido del output:**

```
Homepage — actualizaciones post-GBP:

1. Enlace al perfil GBP:
   Sección: Trust block o footer
   Texto: "Ver perfil en Google" o "X reseñas en Google"
   URL: https://www.google.com/maps?cid=[CID_REAL]
   Cuándo: inmediato tras verificación

2. Trust block actualizado:
   Antes del Paso 14: solo pruebas verificables del negocio (años, certificaciones)
   Después (con reseñas): añadir "X reseñas en Google" con número real
   Cuándo: cuando existan ≥3 reseñas reales

3. Mapa (solo STOREFRONT/HÍBRIDO):
   Añadir Google Maps embed de la sede real
   Cuándo: inmediato tras verificación si modelo lo justifica

4. NAP footer:
   Verificar que nombre, teléfono y URL coinciden con el GBP verificado
   Cuándo: al actualizar schema (puede requerir rebuild)

Archivos a modificar:
  src/pages/index.astro
  src/components/schema/LocalBusinessSchema.astro (sameAs)
  src/components/Footer.astro (si NAP cambió)
```

**Validación:** No se añaden reseñas ni mapa antes de que el GBP esté verificado. No se inventa el CID del GBP.

---

### Output 14.18 — Contact page update plan

Produce el plan de actualización de la página de contacto después de verificar el GBP.

**Inputs requeridos:** 15.9 (contacto copy), 14.3 (NAP final), 14.4 (modelo de negocio)

**Contenido del output:**

```
Página /contacto/ — actualizaciones post-GBP:

1. NAP final sincronizado:
   Nombre: [14.3 — nombre]
   Teléfono: [14.3 — teléfono]
   Dirección: [14.3 — según modelo: completa o solo ciudad]
   Horario: [coherente con GBP — mismo horario declarado]
   Cuándo: inmediato si hay discrepancia

2. Enlace al perfil GBP:
   Texto: "Ver en Google Maps" o "Perfil verificado en Google"
   URL: https://www.google.com/maps?cid=[CID_REAL]
   Cuándo: inmediato tras verificación

3. Mapa embed (STOREFRONT/HÍBRIDO):
   Google Maps embed de la dirección real del negocio
   Cuándo: inmediato si modelo lo justifica

4. Schema LocalBusiness en /contacto/:
   NAP completo (nombre, teléfono, dirección si procede, URL, horario)
   sameAs: añadir GBP URL tras verificación

Archivos a modificar:
  src/pages/contacto/index.astro
```

**Validación:** NAP de /contacto/ = NAP del GBP = NAP del schema global. Sin mapa de ubicación que no corresponde al negocio.

---

### Output 14.19 — Tracking baseline plan

Produce el plan de tracking inicial post-GBP para medir visibilidad y conversión.

**Inputs requeridos:** 1.7 (Main City), 1.9 (servicios), 1.10 (LCAs), 18.7 (sitemap en GSC)

**Contenido del output:**

```
Tracking baseline — [Nombre negocio]

1. GEO-GRID inicial:
   Keywords a rastrear: ["{servicio 1} {Main City}", "{servicio 2} {Main City}", ...]
   Puntos del grid: [Main City center + LCAs representativas]
   Herramienta: [Local Falcon / BrightLocal / similar]
   Frecuencia: mensual
   Baseline: capturar antes o justo después de crear el GBP

2. Google Search Console:
   Property: [18.6 — dominio]
   Sitemap enviado: [18.7 confirmado]
   Queries a vigilar por servicio: ["{servicio} {Main City}" × S servicios]
   Métricas: impresiones, clics, CTR, posición media
   Revisión: mensual

3. GA4:
   Property: [ID de GA4]
   Eventos configurados:
     - form_submit (en ContactForm.astro)
     - tel_click (en números de teléfono clicables)
     - page_view (estándar)
   UTM tracking GBP: session_start con utm_campaign=gbp
   Dashboard recomendado: Traffic Acquisition + Events

4. GBP Insights:
   Métricas a vigilar:
     - Búsquedas: directas (marca) vs descubrimiento (sin marca)
     - Clics al sitio web (desde GBP)
     - Llamadas desde GBP
     - Solicitudes de ruta (STOREFRONT/HÍBRIDO)
   Revisión: mensual

Frecuencia de revisión del tablero completo: mensual (ver 19.1 del Paso 19)
```

**Validación:** Todos los instrumentos de tracking están configurados antes de declarar el Paso 14 terminado.

---

### Output 14.20 — Lista de riesgos

Produce la lista de riesgos identificados para el GBP del cliente con su mitigación.

**Inputs requeridos:** 1.3 (gbp_status), 14.4 (modelo de negocio), 1.4 (NAP), 14.5-14.6 (categorías)

**Contenido del output:**

```
Riesgos identificados — [Nombre negocio]

| ID  | Riesgo | Probabilidad | Impacto | Mitigación |
|-----|--------|-------------|---------|------------|
| R-1 | Perfil duplicado existente | [Alta/Media/Baja según gbp_status] | Alto | Buscar por nombre+teléfono+dirección antes de crear. Reclamar si existe. |
| R-2 | Suspensión por categoría incorrecta | Media | Alto | Usar solo categorías con soporte web real. Evitar categorías demasiado amplias. |
| R-3 | NAP inconsistente web-GBP | [según 14.3] | Alto | Verificar 14.3 antes de crear el perfil. Auditar footer+schema+contacto. |
| R-4 | Keyword stuffing en nombre GBP | Baja (si se sigue doctrina) | Medio | Nombre GBP = nombre real del negocio. Sin añadir keywords al nombre. |
| R-5 | Dirección falsa (SAB afirma sede en barrio) | [según modelo] | Alto | Solo dirección operativa real. SAB: ocultar dirección o poner solo ciudad. |
| R-6 | Categorías adicionales sin soporte web | [según 14.6] | Medio | Añadir a cola de producción. No activar en GBP hasta tener página. |
| R-7 | Reseñas falsas antes de verificación | Baja (si se sigue doctrina) | Alto | Cero reseñas en web o GBP antes de verificación y clientes reales. |
| R-8 | Horario inconsistente (web ≠ GBP) | Media | Medio | Website Hours = GBP Hours = Service Promise. Sincronizar. |
| R-9 | sameAs con URL GBP inventada | Baja (si se sigue doctrina) | Medio | sameAs solo se añade post-verificación con URL real del perfil. |
| R-10| Posts sin URL de destino real | Media | Bajo | Cada post apunta a página publicada. Verificar antes de publicar. |

Riesgos específicos del cliente [según su gbp_status]:
  [Añadir riesgos adicionales según contexto: suspendido → riesgo de rechazo de revisión, etc.]
```

**Formato:** Tabla de riesgos con probabilidad / impacto / mitigación + riesgos específicos del cliente.

**Validación:** Al menos R-1, R-3 y R-7 están siempre presentes. Los riesgos específicos del cliente se añaden según su contexto real.

---

## Formato de Respuesta

Responde con un JSON array con los outputs del bloque. Incluye TODOS los outputs (14.1–14.20):

```json
[
  {
    "id": "14.1",
    "value": "...",
    "status": "confirmed|validated|inferido|placeholder",
    "source": "doctrina_gmb_crush|cliente_preflight|cliente_preflight_doctrina|...",
    "notes": "Obligatorio si status es inferido o placeholder"
  },
  {
    "id": "14.8",
    "value": null,
    "status": "placeholder",
    "source": null,
    "notes": "Requiere 18.6 (URL live). El Bloque 7 está bloqueado hasta que el sitio esté publicado."
  }
]
```

**Reglas de estado:**
- `confirmed`: valor real validado (NAP del cliente, modelo de negocio conocido)
- `validated`: herramienta externa ejecutada (categoría verificada en catálogo Google)
- `inferido`: estimado sin herramienta externa; `notes` obligatorio con razonamiento
- `placeholder`: esperando que la web esté publicada (18.6) o datos del cliente; `notes` describe qué falta

**Regla crítica de bloqueo:** Si 18.6 no tiene valor (URL live), los outputs 14.1, 14.8, 14.9, 14.15, 14.16, 14.17, 14.18 y 14.19 deben tener status `placeholder` con nota "Bloqueado: requiere 18.6 (sitio en producción) confirmado".
