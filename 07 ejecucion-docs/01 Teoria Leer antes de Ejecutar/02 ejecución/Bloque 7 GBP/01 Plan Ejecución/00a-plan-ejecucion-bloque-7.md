# Plan de ejecución del Bloque 7 (Paso 14)

> Plantilla del sistema. Vista unificada de los **20 outputs** del Paso 14 (GBP Creation & Website Alignment). El Bloque 7 contiene un único paso — el Paso 14 — que se ejecuta DESPUÉS del Paso 18 (Deploy) siguiendo la regla web-first del sistema.

> **Punto de entrada:** si arrancas a ejecutar el sistema desde aquí, lee primero `00 convenciones/01flujo-ejecucion.md` para entender el orden global (Convenciones → Preflight → Bloques 1-6) y las condiciones de paso entre bloques.

> **Cómo usar esta plantilla:**
> 1. Confirma que el Bloque 5 está cerrado y el sitio web está LIVE en producción (Paso 18 cerrado).
> 2. Confirma que han pasado mínimo 30 días desde el deploy con tracking GSC activo.
> 3. Rellena la sección "Cliente" si arrancas un cliente nuevo.
> 4. Lee la tabla de outputs del Paso 14 (20 outputs) para entender qué hay que producir.
> 5. Resuelve los bloqueos críticos antes de arrancar la ejecución (sección final).
> 6. Una vez ejecutado, vuelca los valores reales en `03 Consolidación Outputs/`.

> **Regla web-first:** el Paso 14 se ejecuta solo cuando el cluster web ya está publicado y verificable. Crear el GBP antes de tener web base es contrario al principio doctrinal del sistema.

---

## Cliente

| Campo | Valor |
|---|---|
| 1. Nombre del negocio | `[pendiente]` |
| 2. Dominio canónico (web LIVE) | `[pendiente]` |
| 3. Estado actual del GBP | `[pendiente]` (Not Created / Created / Verified / Pending Verification / Suspended) |
| 4. Días desde deploy | `[pendiente]` (≥30 recomendado) |
| 5. Modelo de negocio | `[pendiente]` (Storefront / Service Area Business / Hybrid) |

---

## Fuentes

> Las **8 fuentes válidas** del sistema (`Doctrina GMB Crush`, `Cliente preflight`, `Cliente preflight + Doctrina GMB Crush`, `Arquitectura técnica`, `Tracking`, `Doctrina + Local Pack`, `Doctrina + Keyword research`, `Doctrina + Google Search`) y la notación de herencia `← X.Y` (Info heredada) están documentadas en `00 convenciones/02fuentes-y-outputs.md` y `01 fuentes/00-fuentes-en-uso.md`. Cualquier valor en la columna `Fuentes para Decidir` de las tablas de abajo debe pertenecer a ese catálogo.

---

## Paso 14 — GBP Creation & Website Alignment (20 outputs)

> Los 20 outputs vienen literales del original §32. Cada output mapea a una o varias reglas operativas del original (§7-§30) que documentan cómo se obtiene.

| Output a decidir | Fuentes para Decidir | Cómo Decidimos |
|---|---|---|
| **14.1** GBP creado o plan de creación listo | `Cliente preflight + Doctrina GMB Crush` | Aplicar §7 (web-first); confirmar timing post-Paso 18 |
| **14.2** Estado de verificación definido | `Cliente preflight + Doctrina GMB Crush` | Determinar Not Created / Created / Verified / Pending / Suspended |
| **14.3** NAP final aprobado | `← Paso-01 1.4` | Aplicar §9; cruzar NAP web vs schema vs página contacto vs GBP |
| **14.4** Modelo de negocio definido | `Cliente preflight + Doctrina GMB Crush` | Aplicar §10; elegir Storefront/SAB/Hybrid según realidad operativa |
| **14.5** Categoría principal confirmada | `← Paso-01 1.5` (Planned) | Aplicar §8 + §26; convertir Planned Primary en Confirmed sin keyword stuffing |
| **14.6** Categorías adicionales confirmadas o descartadas | `← Paso-01 1.6` + `Doctrina + Local Pack` | Aplicar §14 + §27; cada Additional necesita soporte web real o se descarta |
| **14.7** Servicios del GBP mapeados a páginas web | `← Paso-01 1.9` + `← Paso-05 5.4 + 5.5` | Aplicar §13; cada GBP service alineado con SO o LBS de la web |
| **14.8** URL de web seleccionada para el GBP | `← Paso-04 4.3 (Homepage URL)` | Aplicar §11; conectar a homepage o strongest local entity page |
| **14.9** URL UTM preparada | `Tracking` | Aplicar §12; UTM sin romper canonical (`?utm_source=google&utm_medium=organic&utm_campaign=gbp`) |
| **14.10** Descripción GBP aprobada | `Doctrina + Local Pack` | Aplicar §17 + §18; descripción alineada con homepage + horarios coherentes |
| **14.11** Plan de fotos | `Cliente preflight + Doctrina GMB Crush` | Aplicar §16; pack de fotos reales (logo, vehículo, work examples, contexto local) |
| **14.12** Plan de Q&A | `← Paso-09 9.X` + `Doctrina + Local Pack` | Aplicar §23 + §23.6 método (Auto-Suggest / PAA / Keyword research / competitors) |
| **14.13** Plan de posts | `← Paso-08 8.X` + `Doctrina + Keyword research` | Aplicar §24 + §24.6 método (URLs P1/P2 + queries transaccionales por URL) |
| **14.14** Estrategia de reseñas reales | `Doctrina + Local Pack` | Aplicar §15 + benchmarking de top 5 GBP competidores (volumen, frecuencia, patrones de respuesta, métodos de solicitud); nada de inventar reseñas ni mostrar estrellas falsas |
| **14.15** Cola de actualización post-GBP | `Doctrina GMB Crush` | Aplicar §29; lista priorizada de elementos web a actualizar tras verificación |
| **14.16** Schema update plan | `← Paso-03 3.8` | Aplicar §20 + §28; añadir sameAs solo después de GBP verificado |
| **14.17** Homepage update plan | `← Paso-05 5.3` | Aplicar §21; homepage sincronizada con GBP (enlace, reseñas reales, mapa) |
| **14.18** Contact page update plan | `← Paso-05 5.X (Contact Page)` | Aplicar §22; contacto coherente con NAP final + enlace al GBP verificado |
| **14.19** Tracking baseline plan | `← Paso-19 19.1` + `Tracking` | Aplicar §30; geo-grid + GSC + GA4 + GBP performance |
| **14.20** Lista de riesgos | `Doctrina GMB Crush` | Compilar riesgos: §25 duplicados / §26 keyword stuffing / NAP falso / cobertura inflada |

---

## Reglas operativas del Paso 14 — referencia rápida (24 reglas)

> Las 24 reglas operativas del original (§7-§30) backan los 20 outputs del paso. Cada output cita en su columna "Cómo Decidimos" la(s) regla(s) operativa(s) que aplica.

| Regla | Tema |
|---|---|
| §7 | Crear el GBP después de publicar la web base |
| §8 | Convertir categorías planificadas en categorías confirmadas |
| §9 | Validar el NAP final antes de crear el perfil |
| §10 | Elegir el modelo de negocio correcto |
| §11 | Conectar el GBP a la URL correcta |
| §12 | Usar UTM sin romper canonical ni NAP |
| §13 | Añadir servicios del GBP alineados con páginas web |
| §14 | Usar categorías adicionales solo si tienen soporte real |
| §15 | No reclamar reseñas antes de tenerlas |
| §16 | Preparar fotos antes de crear el GBP |
| §17 | Redactar una descripción GBP alineada con la web |
| §18 | Definir horarios sin contradicción |
| §19 | Alinear Local Coverage Areas con el GBP |
| §20 | Actualizar schema después de crear el GBP |
| §21 | Actualizar la homepage después de verificar el perfil |
| §22 | Actualizar la página de contacto |
| §23 | Preparar Q&A del GBP con preguntas reales (+ §23.6 método) |
| §24 | Planificar Google Posts conectados con páginas web (+ §24.6 método) |
| §25 | Evitar duplicados de GBP |
| §26 | No usar keyword stuffing en el nombre del GBP |
| §27 | Sincronizar páginas de categoría adicional |
| §28 | Revisar LocalBusiness schema tras verificación |
| §29 | Crear una cola de actualización post-GBP |
| §30 | Medir la visibilidad después de crear el GBP |

---

## Resumen — qué necesita la IA antes de ejecutar

### Inputs heredados de Bloques 1-5 (deben estar `confirmed`)

- ☐ **Outputs 1.X** — Intake completo (Paso 1) — especialmente NAP, Planned categories, servicios
- ☐ **Outputs 4.X-5.X** — URL Rules + Page Type Rules (para mapeo GBP services → páginas)
- ☐ **Outputs 8.X** — Priority Score (para identificar URLs P1/P2 candidatas a posts)
- ☐ **Outputs 17.X-18.X** — Sitio web LIVE (Paso 18 cerrado, dominio público activo)
- ☐ **Output 19.1** — Tablero de vigilancia post-launch con datos ≥ 30 días

### Decisiones del cliente (4 outputs)

- ☐ Confirmar NAP final (output 14.3) — verificable contra documentación oficial
- ☐ Modelo de negocio real (output 14.4) — Storefront / SAB / Hybrid
- ☐ Plan de fotos (output 14.11) — fotos reales del negocio
- ☐ Categorías adicionales con soporte real (output 14.6)

### Decisiones del operador (5 outputs)

- ☐ Categorías adicionales descartadas (output 14.6, parte) — operador decide cuáles van a cola de producción
- ☐ URL UTM (output 14.9) — operador define utm_campaign
- ☐ Descripción GBP (output 14.10) — operador redacta y alinea con homepage
- ☐ Estrategia de reseñas (output 14.14) — operador define cadencia y método de solicitud
- ☐ Tracking stack (output 14.19) — operador confirma geo-grid configurado

### Defaults doctrinales (no requieren input)

- §7 web-first (output 14.1)
- §8 + §26 keyword stuffing prohibido (output 14.5)
- §9 NAP coherence (output 14.3)
- §13 GBP services ⟷ web alignment (output 14.7)
- §15 no fake reviews (output 14.14)
- §20 + §28 schema discipline (output 14.16)
- §29 update queue post-GBP (output 14.15)

### Inputs externos NO requeridos

> El Paso 14 NO necesita Local Pack analysis nuevo (ya cubierto en Paso 1) ni Keyword research (ya cubierto en Paso 3 y Paso 8). El §23.6 método para Q&A SÍ recomienda Auto-Suggest / PAA / competitors review, que son acciones del operador en este paso.

---

## Cascada de dependencias (qué bloquea qué)

```
Bloques 1-5 cerrados (web LIVE en producción, ≥30 días tracking)
    │
    ├─► Bloque A — Pre-checks (no Bloqueantes)
    │       │
    │       ├── ☐ Confirmar GBP no existe (§25 duplicate check)
    │       ├── ☐ Confirmar NAP final coherente (§9)
    │       ├── ☐ Confirmar modelo negocio real (§10)
    │       └── ☐ Tablero post-launch con datos suficientes (Paso-19 19.1)
    │
    ├─► Bloque B — Creación del perfil (Bloqueante: GBP debe existir)
    │       │
    │       ├── 14.5 categoría principal (§8)
    │       ├── 14.6 categorías adicionales (§14)
    │       ├── 14.7 servicios (§13)
    │       ├── 14.8 URL web (§11)
    │       └── 14.10 descripción (§17)
    │
    ├─► Bloque C — Activos del perfil (post-creación)
    │       │
    │       ├── 14.9 UTM (§12)
    │       ├── 14.11 fotos (§16)
    │       ├── 14.12 Q&A (§23)
    │       ├── 14.13 posts (§24)
    │       └── 14.14 reseñas (§15)
    │
    └─► Bloque D — Sincronización web (post-verificación)
            │
            ├── 14.15 cola actualización (§29)
            ├── 14.16 schema update (§20 + §28)
            ├── 14.17 homepage update (§21)
            ├── 14.18 contact page update (§22)
            ├── 14.19 tracking baseline (§30)
            └── 14.20 lista de riesgos (§25 + §26)
```

---

## Bloqueos críticos antes de arrancar

| Bloqueo | Impacto | Resolución |
|---|---|---|
| Bloque 5 sin cerrar (web no LIVE) | TODOS los 20 outputs del Paso 14 | Cerrar Paso 18 (deploy) antes de arrancar Bloque 7 |
| **Bloque 6 con `⚠` abiertos** | TODOS los 20 outputs del Paso 14 | El agregador del Bloque 6 (`06-info-que-falta.md`) debe quedar vacío antes de arrancar el Bloque 7. Cada `⚠ inferido` y `⚠ placeholder` heredado de Bloques 1-5 debe promoverse a `confirmed`/`validated` |
| Tracking <30 días | Output 14.19 baseline incompleto | Esperar mínimo 30 días post-deploy con GSC + GA4 activos |
| NAP del intake (Paso 1) sin confirmar | Output 14.3 bloqueado | Cliente confirma NAP real (no placeholders) antes de §9 |
| Categorías Planned del Paso 1 sin Local Pack analysis | Outputs 14.5 + 14.6 quedan inferidos | Si no hay Local Pack reciente, marcar `⚠ inferido` y refrescar antes de crear GBP |
| Modelo de negocio no decidido | Output 14.4 bloquea §10 + §16 (fotos) | Cliente declara modelo real (Storefront/SAB/Hybrid) |

> **Cuándo arrancar la ejecución:** una vez Bloque 5 esté cerrado con sitio web LIVE en producción y al menos 30 días de tracking GSC + GA4. El Paso 14 cierra el ciclo completo del sistema GMB Crush — no produce nuevas URLs ni nuevo contenido web, sincroniza la entidad GBP con la web ya publicada como source of truth. Tras cerrar Bloque 7, el sistema queda en modo continuo (Paso 19 sigue activo + sincronización web ⟷ GBP).

---

## Qué **no** se hace en este Bloque 7

> El Bloque 7 cierra el ciclo creando el GBP. NO incluye:
> - Crear nuevas URLs de la web (eso fue Paso 17)
> - Cambiar la arquitectura web (eso fue Paso 4-7)
> - Generar nuevos servicios o categorías (eso fue Paso 1)
> - Vigilancia continua de SERPs (eso es Paso 19, paralelo)
> - Crear segundos clusters geográficos (eso es Paso 19 + replicación)

> **Cierre del sistema:** una vez cerrados los Bloques 1-6, el sistema GMB Crush ha cumplido su ciclo completo para un cluster (web base publicada + GBP creado + sincronizados + tracking activo). El Paso 19 sigue en modo continuo evaluando triggers de escalado.
