# 02 Flujo de ejecución del sistema GMB Crush — v2 por fases

> **Audiencia:** una IA (o humano) que arranca a ejecutar el sistema GMB Crush para un cliente nuevo. Este documento explica **en qué orden ejecutar** para producir un cluster web local + GBP coherente.
>
> **Cambio v1 → v2:** el flujo dejaba de ser secuencial por bloques (Bloque 1→2→...→7) y pasa a ser por **fases** (Input → Intro → Datos → Encaje → Pendientes → GBP → Post). Los 14 pasos canónicos del original se mantienen como referencia en `pasos/` pero el flujo operativo lo dicta este documento.
>
> **Razón del cambio:** de los 242 outputs declarados, solo **9 requieren herramientas externas pre-build** (Local Pack, Keyword Research). Los **220 restantes son determinísticos** una vez tienes el preflight + el dataset de Fase 3. Separar adquisición de datos (Fase 3) de aplicación de doctrina (Fase 4) elimina round-trips innecesarios y deja la cascada limpia.

---

## TL;DR

```
1. Input        — 13 outputs del cliente (preflight)
2. Intro        — IA presenta plan
3. Datos        — IA recolecta 9 outputs con tools externas (Local Pack + Keyword Research)
4. Encaje       — IA aplica la doctrina sobre el dataset y produce 220 outputs determinísticos
5. Pre-build    — gate G4 doctrinal; si PASS → build + deploy → web LIVE (puede salir con ⚠)
6. Pendientes   — agregador asíncrono de ⚠. Cliente cierra cada uno.
7. GBP          — Paso 14 ejecutado solo cuando pendientes vacíos
8. Post         — vigilancia ≥30 días (Paso 19)
```

---

## Antes de arrancar — lectura obligatoria

Leer en orden:

| # | Documento | Para qué |
|---|---|---|
| 1 | `DOCTRINA/00-system-prompt.md` | Doctrina destilada. Lo que carga la IA al arrancar. |
| 2 | `DOCTRINA/01-convenciones.md` | Esqueleto canónico §5/§8. Status (`confirmed`/`validated`/`⚠ inferido`/`⚠ placeholder`). |
| 3 | `DOCTRINA/03-fuentes.md` | 8 fuentes canónicas + notación herencia `← X.Y`. |
| 4 | `DOCTRINA/04-fidelidad.md` | 7 reglas anti-invención. |
| 5 | Este documento (`02-flujo.md`) | Las fases. |
| 6 | `DOCTRINA/F3-data-acquisition.md` | Los 9 outputs concretos de Fase 3 con su procedimiento. |
| 7 | `DOCTRINA/F4-encaje-cascada.md` | Cómo aplicar la doctrina sobre el dataset Fase 1 + Fase 3 → 220 outputs. |
| 8 | `DOCTRINA/{page-types\|url-patterns\|linking\|qa-rules}.md` | Doctrina técnica usada en Fase 4. |

Sin esos 8 leídos, no se ejecuta nada. Pasa **gate G0 (teoría leída)**.

---

## Fase 1 — Input

### Qué pasa

El operador entrega 8 campos del preflight. La IA carga el preflight y deriva los 13 outputs de Fase 1 que están directamente declarados por el cliente.

### Outputs producidos (13 totales)

Todos con fuente `Cliente preflight`:

| ID | Nombre |
|---|---|
| 1.1 | Business Name |
| 1.2 | Website URL / Canonical Domain |
| 1.4 | Full NAP (8 sub-campos) |
| 1.8 | Physical Location City |
| 16.1 | Identidad Visual / CSS Base (web ref del cliente) |
| 16.3 | Propuesta de Diseño aprobada |

### Gate G1 (preflight válido)

- 8 campos del preflight rellenos (no `null` ni vacíos críticos)
- NAP completo (los 8 sub-campos)
- Email y teléfono con formato válido

PASS → seguir a Fase 2.
BLOCKED → faltan datos críticos del cliente.

---

## Fase 2 — Intro

### Qué pasa

La IA presenta brevemente al operador (en chat o en `INTRO.md` del cliente) qué va a hacer. Esto es opcional pero recomendado: confirma que la IA ha entendido el caso antes de gastar tokens en Fase 3+4.

### Contenido típico de la Intro

```
- Cliente: [Business Name]
- Categoría primaria estimada: [hipótesis]
- Main City: [ciudad NAP]
- Servicios core asumidos: [hipótesis basada en categoría]
- Plan de ejecución: Fase 3 → 9 outputs con Local Pack + Keyword Research; Fase 4 → 220 outputs derivados; Build + deploy en ~2-4h.
- Riesgos detectados: [si hay alguno con datos del preflight]
```

### Gate G2 (plan presentado)

- Intro entregada con los 6 puntos
- Operador confirma o ajusta (si la IA tiene dudas concretas)

PASS → seguir a Fase 3.

> **Nota:** si confías en la IA y el preflight es claro, puedes saltar G2 y dejar que pase a Fase 3 sin confirmación. Es un gate "blando".

---

## Fase 3 — Datos (data acquisition)

### Qué pasa

La IA hace **una sola pasada** por las 2 herramientas externas (Local Pack + Keyword Research) y produce los 9 outputs que las requieren. Después de Fase 3, la IA tiene el dataset completo para encajar la doctrina sin más round-trips a tools.

### Outputs producidos (9 pre-build)

Ver `DOCTRINA/F3-data-acquisition.md` para procedimiento detallado output por output.

| Tool | Outputs | Total |
|---|---|---:|
| Local Pack (Google Maps) | 1.5, 1.6, 1.9, 1.10c, 1.14, 8.4, 8.6 | 7 |
| Keyword Research | 3.4, 8.3 | 2 |
| **Total** | | **9** |

### Outputs Fase 3 post-build (no se sacan ahora)

- **14.12, 14.13, 14.14** — Plan Q&A, posts, reseñas (Paso 14 / GBP, post-pendientes)
- **19.1, 19.2, 19.3** — Vigilancia, triggers, SERP (Paso 19 / Post-launch ≥30 días)

Estos se ejecutan en su fase correspondiente, no aquí.

### Si una tool no está disponible

La doctrina lo permite: la IA marca el output como `⚠ inferido — pendiente [tool]` con su mejor inferencia y sigue. El ⚠ se cierra después en Fase 6 (Pendientes) cuando el operador o cliente ejecuten la tool real. Bloques 1-5 toleran ⚠ — la web puede salir LIVE igualmente.

### Gate G3 (datos recolectados)

- 9 outputs de Fase 3 con `value` declarado
- Cada uno con `status` ∈ {`confirmed`, `⚠ inferido`}
- Cada uno con `source` declarada (URL del Local Pack consultado, query Ahrefs/Semrush usada, etc.)

PASS → seguir a Fase 4.

---

## Fase 4 — Encaje (cascada determinística)

### Qué pasa

La IA aplica la doctrina sobre el dataset (Fase 1 + Fase 3) y produce los **220 outputs determinísticos** sin más herramientas externas. Es procesamiento puro: dado el input, la doctrina dicta el output.

### Distribución por bloque (referencia)

| Bloque GMB Crush | Outputs Fase 4 | Cuáles |
|---|---:|---|
| Bloque 1 (Fundamentos) | 33 | derivaciones de preflight + matriz base |
| Bloque 2 (Arquitectura) | 57 | URL patterns, Page Types, Content Architecture, Internal Linking |
| Bloque 3 (Priorización) | 38 | Priority Scores derivados, QA, Producción en Fases |
| Bloque 4 (Automatización) | 41 | Pseudocódigo, Master Prompt, SOP completo |
| Bloque 5 (Salida a Mercado) | 34 | Redacción + Diseño + Build + Deploy |
| Bloque 7 (GBP) | 17 | 17 de los 20 outputs GBP son determinísticos |

### Cascada

Ver `DOCTRINA/F4-encaje-cascada.md` para la cascada completa de qué outputs dependen de qué.

### Outputs marcados N/A o ⚠ revisar

- **10.3** (CMS + capabilities) — `no aplica` doctrinal. Skip.
- **10.14** (GBP Creation §26) — `⚠ revisar` por ambigüedad heredada del original. Decidir caso por caso al ejecutar.

### Gate G4 (web-live-ready / pre-build)

Antes de Paso 17 (Build) + Paso 18 (Deploy):

- Pasa `TESTS/test-doctrinal.md` con score ≥ 90 (PASS)
- Pasa `TESTS/pack-auditoria-web-construida.md` (los 6 docs canónicos completos)
- Web puede salir LIVE con ⚠ (la doctrina lo permite — Bloques 1-5 toleran ⚠)

PASS → ejecutar Paso 17 (Build) + Paso 18 (Deploy) → **web LIVE**.

---

## Fase 5 — Build + Deploy

### Qué pasa

```bash
# desde el cluster del cliente
CLUSTER_PATH=../outputs.json pnpm build
wrangler pages deploy dist
```

O directamente:
```bash
./SCRIPTS/deploy.sh {slug}
```

Resultado: web LIVE en Cloudflare Pages con todas las URLs (HP + S SO + 1 GH + S LBS + A AC + G·S GA + 3 AUX = `1 + S + 1 + S + A + G·S + 3`).

---

## Fase 6 — Pendientes (asíncrono)

### Qué pasa

Todos los `⚠ inferido` y `⚠ placeholder` de Fases 1-4 se agregan en `CLIENTES/{slug}/02-pendientes.md`. El cliente o el operador cierra cada uno:

```
Output ID 1.5 → ⚠ inferido → cliente confirma "Bathroom remodeler" → status=confirmed
Output ID 1.4 phone → ⚠ placeholder → cliente da "+34 911 234 567" → status=confirmed
```

Al cerrar cada ⚠:
1. Actualizar `outputs.json` (cambiar `value` y `status`)
2. Borrar la fila del agregador
3. Si afecta contenido publicado: re-deploy

### Gate G5 (info faltante cerrada)

- `02-pendientes.md` sección A (bloqueante GBP) vacía
- Todos los outputs upstream de Bloque 7 promovidos a `confirmed` o `validated`

PASS → seguir a Fase 7.

---

## Fase 7 — GBP (Paso 14)

### Qué pasa

La IA ejecuta el Paso 14 (GBP Creation & Website Alignment) ahora que la web está LIVE y los pendientes están cerrados. Produce los 20 outputs del GBP.

De esos 20:
- 17 son determinísticos (Fase 4 ya los tendría disponibles si los necesitaba)
- 3 requieren tools externas (14.12 Q&A, 14.13 posts, 14.14 reseñas) — **se ejecutan AQUÍ, no en Fase 3 inicial**

### Gate G6 (GBP safe)

- G5 PASS
- Outputs 14.1-14.20 declarados
- GBP listo para verificación (offline, postal, video según corresponda)

PASS → cliente verifica GBP → web ⟷ GBP sincronizados.

---

## Fase 8 — Post-lanzamiento (Paso 19)

### Qué pasa

≥30 días con la web LIVE + GBP verificado:

- Tracking GSC + GA4 + GBP performance + geo-grid
- Outputs 19.1, 19.2, 19.3 producidos (Fase 3 tools ahora con datos reales)
- Decisión de escalado a sub-clusters (Approved Expansion Areas)

### Gate G7 (post-lanzamiento)

- ≥30 días tracking activo
- 3 triggers de escalado evaluados
- Si los 3 triggers cumplen → arranca nuevo ciclo Fase 1 con `Approved Expansion Areas` activas

---

## Diagrama global

```
┌─────────────────────────────┐
│  Fase 1 — Input             │  13 outputs (Cliente preflight)
└────────────┬────────────────┘
             │ G1 PASS
             ▼
┌─────────────────────────────┐
│  Fase 2 — Intro             │  Plan presentado al operador
└────────────┬────────────────┘
             │ G2 PASS
             ▼
┌─────────────────────────────┐
│  Fase 3 — Datos             │  9 outputs (Local Pack + Keyword Research)
└────────────┬────────────────┘
             │ G3 PASS
             ▼
┌─────────────────────────────┐
│  Fase 4 — Encaje            │  220 outputs determinísticos
└────────────┬────────────────┘
             │ G4 PASS (TESTS/ ≥90)
             ▼
┌─────────────────────────────┐
│  Fase 5 — Build + Deploy    │  pnpm build + wrangler → web LIVE (puede salir con ⚠)
└────────────┬────────────────┘
             │
             ▼ (web LIVE en producción)
             │
┌─────────────────────────────┐
│  Fase 6 — Pendientes        │  Cliente cierra ⚠. Asíncrono.
└────────────┬────────────────┘
             │ G5 PASS (agregador vacío)
             ▼
┌─────────────────────────────┐
│  Fase 7 — GBP (Paso 14)     │  20 outputs GBP. 14.12+13+14 con tools aquí.
└────────────┬────────────────┘
             │ G6 PASS (GBP listo)
             ▼
┌─────────────────────────────┐
│  Fase 8 — Post (Paso 19)    │  ≥30 días tracking. Decisión escalado.
└─────────────────────────────┘
             │ G7 PASS si triggers cumplen
             ▼ (nuevo ciclo Fase 1 con Expansion)
```

---

## Casos especiales

### Si una tool externa falla en Fase 3

Marcar `⚠ inferido — pendiente [tool]` con la mejor inferencia. Avanzar. El ⚠ se cierra en Fase 6.

### Si detectas posible invención de doctrina

Aplicar la **Regla 7 de `04-fidelidad.md`** (verificación bidireccional). Si confirmas invención: NO la "arregles" silenciosamente. Reporta al operador.

### Si el original tiene ambigüedad

Ejemplo: output 10.14 marcado `⚠ revisar` (ambigüedad heredada §26). Documentar la decisión con `> **Nota de fidelidad:**` y consultar al operador.

### Si el cliente añade un dato durante Fase 4

Promover `⚠ placeholder` → `confirmed` en outputs.json. No re-ejecutar fases anteriores; solo re-encajar las dependientes en cascada (ver `F4-encaje-cascada.md`).

---

## Cómo arranca la IA con un cliente nuevo

```
SI eres una IA leyendo este repo por primera vez:

1. Cargar DOCTRINA/00-system-prompt.md como contexto
2. Leer DOCTRINA/01-convenciones.md + 02-flujo.md (este doc) + 03-fuentes.md + 04-fidelidad.md
3. Leer DOCTRINA/F3-data-acquisition.md + F4-encaje-cascada.md
4. Pedir al operador el slug del cliente y leer CLIENTES/{slug}/00-preflight.md
5. Fase 1: derivar los 13 outputs preflight → outputs.json
6. Fase 2 (opcional): presentar plan al operador
7. Fase 3: ejecutar Local Pack + Keyword Research → 9 outputs → outputs.json
8. Fase 4: aplicar doctrina sobre dataset → 220 outputs → outputs.json + 01-web.md
9. Pasar TESTS/test-doctrinal.md (gate G4) → si ≥90, ejecutar Build + Deploy
10. Volcar ⚠ en 02-pendientes.md (Fase 6)
11. Esperar a operador/cliente cerrar pendientes
12. Cuando 02-pendientes.md vacío: ejecutar Fase 7 (Paso 14 GBP) → 03-gbp.md
13. ≥30 días después: ejecutar Fase 8 (Paso 19) → decisión escalado
```

**Regla de oro**: solo el gate G4 (pre-build) y el gate G5 (pre-GBP) son no-negociables. Para los demás, los `⚠ inferido` y `⚠ placeholder` son aceptables — la IA marca y avanza.

---

## Mapeo fases → bloques GMB Crush originales

Para mantener compatibilidad con los 21 a-docs de `pasos/`:

| Fase | Bloques GMB Crush originales que toca |
|---|---|
| Fase 1 (Input) | Bloque 0 (preflight) + 11 outputs Bloque 1 |
| Fase 3 (Datos) | 6 outputs Bloque 1 + 3 outputs Bloque 3 + 3 outputs Bloque 5 (post) |
| Fase 4 (Encaje) | 33 B1 + 57 B2 + 38 B3 + 41 B4 + 34 B5 + 17 B7 |
| Fase 7 (GBP) | 3 outputs adicionales del Bloque 7 (14.12+13+14, requieren tools) |
| Fase 8 (Post) | 3 outputs Bloque 5 (19.1+2+3, requieren tools post-launch) |

Los a-docs en `pasos/` se siguen leyendo por la IA cuando ejecuta cada output. La diferencia es que **el orden operativo lo dicta este doc** (`02-flujo.md`), no el orden de los bloques originales.

---

## Por qué esto es mejor que el orden por bloques

| Antes (v1, por bloques) | Ahora (v2, por fases) |
|---|---|
| 14 round-trips a tools (cada bloque consultaba sus fuentes) | 1 sola pasada en Fase 3 |
| Outputs producidos sin contexto completo (Bloque 1 sin saber qué dirá Bloque 3) | Fase 4 con dataset completo |
| Re-ejecutar bloques caro si la doctrina cambia | Re-ejecutar Fase 4 barato (datos ya están) |
| Fuentes externas espolvoreadas — difícil auditar | Fase 3 produce dataset versionable |
| 88% del trabajo en cascada determinística pero presentado como secuencial | Cascada determinística declarada como tal |
