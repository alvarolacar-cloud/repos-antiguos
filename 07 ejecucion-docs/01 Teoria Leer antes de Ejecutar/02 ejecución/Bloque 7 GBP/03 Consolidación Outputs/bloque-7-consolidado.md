# Consolidado del Bloque 7 — GBP (Paso 14)

> Plantilla del sistema. Documento de cierre de la Fase 1 (Ejecución) de Bloque 7. Recoge los **20 outputs** producidos por el Paso 14 (GBP Creation & Website Alignment) con sus valores reales para el cliente y su status (`confirmed` / `⚠ inferido` / `⚠ placeholder` / `validated`).
>
> Bloque 7 hereda 100% del estado de Bloques 1-5. Se ejecuta DESPUÉS del Paso 18 (deploy) según la regla web-first del sistema. Cierre del Bloque 7 = ciclo completo del sistema GMB Crush para el cluster (web base publicada + GBP creado + sincronizados).

> **Tabla de pasos cubiertos:** Total **20 outputs** = 20 (Paso 14) — único paso del Bloque 7.
>
> **Nota de fidelidad al original:** los 20 outputs son literales del §32 del original `14a-ejecucion-gbp-creation-website-alignment.md` del repo. Las 24 reglas operativas (§7-§30 del original) backan la obtención de cada output. NO se inventan outputs adicionales ni reglas adicionales.

---

## Cliente

| Campo | Valor | Status |
|---|---|---|
| Business Name | `[pendiente]` | ☐ |
| Dominio canónico (web LIVE) | `[pendiente]` | ☐ |
| Estado actual del GBP | `[pendiente]` (Not Created / Created / Verified / Pending Verification / Suspended) | ☐ |
| Días desde deploy (≥30) | `[pendiente]` | ☐ |
| Bloque 5 cerrado (sitio LIVE) | ☐ Sí / ☐ No | ☐ |

---

## Paso 14 — GBP Creation & Website Alignment (20 outputs)

| ID | Output | Valor (cliente) | Status |
|---|---|---|---|
| 14.1 | GBP creado o plan de creación listo | `[pendiente]` (timing post-Paso 18 + duplicate check) | ☐ |
| 14.2 | Estado de verificación definido | `[pendiente]` (Not Created / Created / Verified / Pending / Suspended) | ☐ |
| 14.3 | NAP final aprobado | `[pendiente]` (Web NAP = Schema NAP = Contact NAP = GBP NAP) | ☐ |
| 14.4 | Modelo de negocio definido | `[pendiente]` (Storefront / Service Area Business / Hybrid) | ☐ |
| 14.5 | Categoría principal confirmada | `[pendiente]` (heredada de Paso-01 1.5 Planned + sin keyword stuffing §26) | ☐ |
| 14.6 | Categorías adicionales confirmadas o descartadas | `[pendiente]` (heredadas de Paso-01 1.6; cada una con soporte web real o cola de producción) | ☐ |
| 14.7 | Servicios del GBP mapeados a páginas web | `[pendiente]` (cada GBP service ⟷ SO o LBS de la web) | ☐ |
| 14.8 | URL de web seleccionada para el GBP | `[pendiente]` (homepage o strongest local entity page) | ☐ |
| 14.9 | URL UTM preparada | `[pendiente]` (`?utm_source=google&utm_medium=organic&utm_campaign=gbp`) | ☐ |
| 14.10 | Descripción GBP aprobada | `[pendiente]` (alineada con homepage + horarios coherentes; sin keyword stuffing) | ☐ |
| 14.11 | Plan de fotos | `[pendiente]` (logo + cover + work examples + contexto local; reales) | ☐ |
| 14.12 | Plan de Q&A | `[pendiente]` (3-5 preguntas + respuestas; método §23.6) | ☐ |
| 14.13 | Plan de posts | `[pendiente]` (1 post/semana × URLs P1/P2; método §24.6) | ☐ |
| 14.14 | Estrategia de reseñas reales | `[pendiente]` (sin inventar; método de solicitud post-servicio + benchmarking de top 5 GBP competidores — divergencia operador) | ☐ |
| 14.15 | Cola de actualización post-GBP | `[pendiente]` (lista priorizada de elementos web a actualizar tras verificación) | ☐ |
| 14.16 | Schema update plan | `[pendiente]` (sameAs solo después de GBP verificado) | ☐ |
| 14.17 | Homepage update plan | `[pendiente]` (enlace al GBP + reseñas reales + mapa si procede) | ☐ |
| 14.18 | Contact page update plan | `[pendiente]` (NAP final + enlace al GBP verificado) | ☐ |
| 14.19 | Tracking baseline plan | `[pendiente]` (geo-grid + GSC + GA4 + GBP performance) | ☐ |
| 14.20 | Lista de riesgos | `[pendiente]` (duplicados §25 / keyword stuffing §26 / NAP falso / cobertura inflada §19) | ☐ |

---

## Resumen de status

| Status | Cantidad | % |
|---|---:|---:|
| ☐ pendiente | 20 | 100% |
| ✓ confirmed | 0 | 0% |
| ⚠ inferido | 0 | 0% |
| ⚠ placeholder | 0 | 0% |
| **Total** | **20** | **100%** |

> Actualizar esta tabla al cerrar la Fase 1 de Bloque 7 con los conteos reales del cliente.

---

## Acciones pendientes para promover ☐ → confirmed / validated

> Si Bloque 5 no está cerrado (sitio web no LIVE), todas las acciones del Bloque 7 quedan bloqueadas.
>
> **Pre-requisito adicional:** el agregador del Bloque 6 (`06-info-que-falta.md`) debe estar vacío. Mientras existan `⚠ inferido` o `⚠ placeholder` heredados de Bloques 1-5, el Bloque 7 no arranca. El GBP no puede crearse con datos inferidos por la IA o pendientes del cliente — Google penaliza GBPs con NAP falso, fotos genéricas o categorías inventadas.

### Bloque A — Pre-checks doctrinales (resuelve 4 outputs)

| ID | Output | Acción |
|---|---|---|
| 14.1 | GBP creado / plan listo | Confirmar que NO existe GBP previo (§25 duplicate check) y timing post-Paso 18 |
| 14.2 | Estado verificación | Determinar estado actual (Not Created / Created / Verified / Pending / Suspended) |
| 14.3 | NAP final aprobado | Cliente confirma NAP real verificable (no placeholders); cruzar §9 |
| 14.4 | Modelo de negocio | Cliente declara modelo real (Storefront/SAB/Hybrid) según §10 |

### Bloque B — Confirmación de categorías y servicios (resuelve 3 outputs)

| ID | Output | Acción |
|---|---|---|
| 14.5 | Categoría principal | Aplicar §8 + §26: convertir Planned (Paso-01 1.5) en Confirmed sin keyword stuffing |
| 14.6 | Categorías adicionales | Aplicar §14 + §27: cada Additional necesita soporte web real (LBS/AC) o cola de producción |
| 14.7 | Servicios mapeados | Aplicar §13: cada GBP service ⟷ SO (Paso-05 5.4) o LBS (Paso-05 5.5) |

### Bloque C — Activos del perfil (resuelve 7 outputs)

| ID | Output | Acción |
|---|---|---|
| 14.8 | URL web GBP | Aplicar §11: conectar a homepage o strongest local entity page |
| 14.9 | URL UTM | Operador define UTM sin romper canonical (§12) |
| 14.10 | Descripción GBP | Operador redacta descripción alineada con homepage (§17 + §18 horarios) |
| 14.11 | Plan de fotos | Cliente confirma fotos reales (§16): logo + work examples + contexto local |
| 14.12 | Plan de Q&A | Aplicar §23 + método §23.6 (Auto-Suggest / PAA / competitors) |
| 14.13 | Plan de posts | Aplicar §24 + método §24.6 (URLs P1/P2 × angles transaccionales) |
| 14.14 | Estrategia reseñas | Operador define método de solicitud post-servicio (§15: sin inventar) |

### Bloque D — Sincronización web post-verificación (resuelve 6 outputs)

| ID | Output | Acción |
|---|---|---|
| 14.15 | Cola actualización | Aplicar §29: lista priorizada de elementos web a tocar |
| 14.16 | Schema update | Aplicar §20 + §28: añadir sameAs solo después de verificación |
| 14.17 | Homepage update | Aplicar §21: enlace al GBP + reseñas reales + mapa si procede |
| 14.18 | Contact page update | Aplicar §22: NAP final coherente + enlace al GBP verificado |
| 14.19 | Tracking baseline | Aplicar §30: geo-grid + GSC + GA4 + GBP performance baseline |
| 14.20 | Lista de riesgos | Compilar riesgos según §25 (duplicates) + §26 (stuffing) + §19 (cobertura) + §9 (NAP) |

---

## Bloqueo de creación GBP

> Por la regla del sistema, este documento NO puede pasar a creación real del GBP mientras existan marcadores `⚠` o `☐ pendiente` en outputs estructurales (14.3 NAP / 14.4 modelo / 14.5 categoría / 14.6 categorías adicionales / 14.7 servicios).

**Pre-requisitos antes de cerrar Bloque 7:**

- ☐ Bloque 5 cerrado (sitio LIVE en producción + 30+ días tracking GSC/GA4)
- ☐ Bloque A resuelto (4 pre-checks: duplicate / verificación / NAP / modelo)
- ☐ Bloque B cerrado (3 outputs: categoría principal + adicionales + servicios)
- ☐ Bloque C cerrado (7 activos del perfil: URL + UTM + descripción + fotos + Q&A + posts + reseñas)
- ☐ Bloque D cerrado (6 sincronizaciones web: cola + schema + homepage + contacto + tracking + riesgos)
- ☐ GBP creado y verificado en Google Business Profile Manager

---

## Cierre del sistema GMB Crush

Tras cerrar Bloque 7:

- **Web base** publicada (Bloque 5)
- **GBP creado y verificado** sincronizado con la web (Bloque 7)
- **Tracking activo** (GSC + GA4 + GBP performance + geo-grid)
- **Paso 19** continuo evaluando triggers de escalado a sub-clusters

> El sistema queda en modo continuo: sincronización permanente web ⟷ GBP, vigilancia post-launch (Paso 19), y decisiones de escalado en función de los 3 triggers (Location ya responde / GeoArticles traen tráfico / Señal en SERP).

---

> **Cruce con el plan de ejecución:** este consolidado es el **output** de ejecutar `00a-plan-ejecucion-bloque-7.md`. Los IDs (14.X) coinciden 1:1 con los del plan y con los outputs literales del §32 del original `14a-ejecucion-gbp-creation-website-alignment.md`.
>
> **Cierre del ciclo:** Bloque 7 marca el cierre del sistema GMB Crush para el cluster. Tras este punto, el sistema queda en modo continuo (Paso 19 + sincronización web ⟷ GBP). El Paso 19 puede activar escalado a Approved Expansion Areas si los 3 triggers se cumplen, lo que arranca un nuevo ciclo (vuelve a Paso 1 para el sub-cluster).
