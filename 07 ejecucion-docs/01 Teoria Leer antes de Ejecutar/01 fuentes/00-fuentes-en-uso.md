# Fuentes en uso — Sistema GMB Crush

> **Qué es este doc:** lista canónica de las **8 fuentes** activas en el sistema GMB Crush tras las unificaciones aplicadas. Cada output del sistema declara una de estas 8 fuentes (o `Info heredada` cuando solo hereda de pasos anteriores).
> **Cuándo se actualiza:** cuando se añade/elimina/unifica una fuente. Si modificas este doc, propaga los cambios a `00 convenciones/02fuentes-y-outputs.md` y a los .md individuales en `02 agrupado por fuentes/`.

---

## Resumen ejecutivo

- **Total fuentes activas:** 8
- **Categorías:** 4 (Doctrina / Cliente / Tools externas / Info heredada)
- **Total outputs del sistema:** 242 (5 marcados `no aplica`)

```
┌─ Doctrina (3 fuentes)
│  ├─ Doctrina GMB Crush
│  ├─ Doctrina + Arquitectura técnica
│  └─ Doctrina + Tracking
│
├─ Cliente (2 fuentes)
│  ├─ Cliente preflight
│  └─ Cliente preflight + Doctrina GMB Crush
│
├─ Tools externas (3 fuentes)
│  ├─ Doctrina + Local Pack
│  ├─ Doctrina + Keyword Research
│  └─ Doctrina + Google Search
│
└─ Info heredada (notación especial)
   └─ ← X.Y (herencia pura de outputs anteriores)
```

---

## Categoría 1 — Doctrina (3 fuentes)

### 1. `Doctrina GMB Crush`

- **Qué es:** valor que dicta literalmente la doctrina del manual GMB Crush.
- **Método:** lectura del a-doc del paso. La IA aplica la regla literal sin tools externas.
- **Outputs:** 44 (37 puros + 6 con herencia + 1 con preflight implícito).
- **Doc agrupado:** `02 agrupado por fuentes/1-doctrina/01-doctrina-gmb-crush.md`.
- **Ejemplo:** `1.12 GeoArticles per Service (G)` → G=3 default doctrinal.

### 2. `Doctrina + Arquitectura técnica`

- **Qué es:** doctrina dicta la regla + decisiones técnicas del operador (stack, tooling, deploy infra).
- **Método:** doctrina del paso + criterio técnico del operador para concretar.
- **Outputs:** 4.
- **Doc agrupado:** `02 agrupado por fuentes/1-doctrina/03-arquitectura-tecnica.md`.
- **Ejemplo:** `17.2 Stack canónico` → Astro 5 + Tailwind v3 + pnpm + Cloudflare.

### 3. `Doctrina + Tracking`

- **Qué es:** doctrina dicta qué medir + tools de tracking proveen los valores reales (GSC, GA4, GBP performance).
- **Método:** doctrina del paso + lectura de tools tracking en producción.
- **Outputs:** 4.
- **Doc agrupado:** `02 agrupado por fuentes/1-doctrina/04-tracking.md`.
- **Ejemplo:** `19.x triggers de escalado` → leídos desde GSC clicks + GA4 events.

---

## Categoría 2 — Cliente (2 fuentes)

### 4. `Cliente preflight`

- **Qué es:** valor declarado por el cliente (preflight inicial + inputs adicionales durante la ejecución, sin filtro doctrinal).
- **Método:** lectura de `02 ejecución/Bloque 0 Preflight/00preflight.md` para los 8 inputs iniciales (5 negocio + 3 credenciales) + consulta directa al cliente durante ejecución para los outputs adicionales (NAP completo, web de referencia, etc.).
- **Outputs:** 4 directos del preflight inicial (1.1, 1.2, 1.8 + Outputs Bloque 18 deploy) + 2 durante ejecución sin filtro doctrinal (1.4, 16.1).
- **Doc agrupado:** `02 agrupado por fuentes/2-cliente-preflight/02-cliente-preflight.md`.
- **Ejemplo:** `1.4 Full NAP (8 campos)` → cliente declara 8 campos sin filtro doctrinal.

> **Nota — expansión post-unificación:** tras eliminar `Cliente confirmación` standalone y `Doctrina + Cliente confirmación`, los outputs sin filtro doctrinal originalmente en esas dos fuentes (1.4 Full NAP, 16.1 Identidad Visual) se han reasignado aquí. La fuente cubre ahora **todos los inputs del cliente** (preflight + durante ejecución).

### 5. `Cliente preflight + Doctrina GMB Crush`

- **Qué es:** doctrina dicta el set válido o la regla + cliente declara cuál aplica según su realidad.
- **Método:** doctrina dicta categorías/valores válidos + cliente declara su valor concreto.
- **Outputs:** 5 (1.3 + 14.1, 14.2, 14.4, 14.11).
- **Doc agrupado:** `02 agrupado por fuentes/2-cliente-preflight/02-cliente-preflight.md` (consolidado con `Cliente preflight` puro — sección "Outputs reasignados desde Doctrina + Cliente confirmación").
- **Ejemplos:**
  - `1.3 GBP Lifecycle Status` → doctrina dicta los 5 estados + cliente declara cuál aplica.
  - `14.1 GBP creado o plan` → §7 web-first + cliente declara timing.
  - `14.4 Modelo de negocio` → §10 dicta los 3 modelos + cliente declara realidad operativa.

> **Nota — expansión post-unificación:** los 4 outputs del Bloque 14 (14.1, 14.2, 14.4, 14.11) se reasignaron aquí desde `Doctrina + Cliente confirmación` porque tienen el mismo patrón que 1.3 (doctrina dicta set válido + cliente declara valor concreto).

---

## Categoría 3 — Tools externas (3 fuentes, todas combinadas con doctrina)

### 6. `Doctrina + Local Pack`

- **Qué es:** doctrina dicta cómo extraer/agregar el dato + Local Pack provee el SERP top 5 real.
- **Método:** búsqueda manual o tool SERP en Google Maps para `[servicio] [ciudad]` + aplicar regla doctrinal del paso.
- **Outputs:** 13.
- **Doc agrupado:** `02 agrupado por fuentes/3-tools-externas/05-doctrina-local-pack.md`.
- **Ejemplo:** `1.5 Planned Primary GBP Category` → categoría más frecuente en top 5 Local Pack según doctrina.

### 7. `Doctrina + Keyword Research`

- **Qué es:** doctrina dicta el set/criterio + KW research provee volúmenes/long-tails reales.
- **Método:** Ahrefs/Semrush/Keyword Planner para `[servicio] [ciudad]` + aplicar criterio doctrinal.
- **Outputs:** 4.
- **Doc agrupado:** `02 agrupado por fuentes/3-tools-externas/06-doctrina-keyword-research.md`.
- **Ejemplo:** `1.10 Direct LCAs` → top KW long-tail según doctrina del Paso 1.

### 8. `Doctrina + Google Search`

- **Qué es:** doctrina dicta qué mirar + Google Search provee resultado para validar elementos genéricos (Wikipedia, organic SERP).
- **Método:** búsqueda directa en Google + verificación según doctrina.
- **Outputs:** 1.
- **Doc agrupado:** `02 agrupado por fuentes/3-tools-externas/08-doctrina-google-search.md`.
- **Ejemplo:** `2.10 Wikipedia URL` → primer resultado Wikipedia para `[ciudad]`.

---

## Notación especial — `Info heredada` (← X.Y)

- **Qué es:** output que solo hereda valor de un output anterior, sin tool ni decisión nueva.
- **Método:** copia literal del valor de `← X.Y` (referenciando paso + output ID).
- **Outputs:** 161.
- **Doc agrupado:** `02 agrupado por fuentes/4-info-heredada/09-info-heredada.md`.
- **Ejemplo:** `5.4 Spec Service Page` hereda de `← 4.5` (Service URL Schema).

> **Importante:** `Info heredada` no es una "fuente" en el sentido estricto (no genera valor nuevo). Es una notación que indica que el output reusa otro output anterior sin transformación.

---

## Outputs `no aplica` (5 outputs)

Outputs que existen conceptualmente en la doctrina GMB Crush pero **no aplican en el flujo actual** del sistema. Se conservan con su razón documentada para mantener fidelidad al original.

| Output | Razón "no aplica" |
|---|---|
| 3.12 *(pendiente identificar)* | *(documentar)* |
| 10.3 CMS + capabilities | Stack canónico fijado en 17.2 (Astro 5 + Tailwind v3 + pnpm + Cloudflare). El CMS del cliente es irrelevante en el flujo actual |
| 15.13 *(pendiente identificar)* | *(documentar)* |
| 16.3 Propuesta de Diseño aprobada | El sistema deriva el diseño extrayendo tokens de la web de referencia del cliente (16.1), sin ciclo mockup → aprobación |
| 17.1 *(pendiente identificar)* | *(documentar)* |

---

## Histórico de unificaciones

| Versión | Fuentes | Cambio |
|---|---|---|
| v1 (inicial) | 12 | Catálogo original |
| v2 | 11 | Unificación 1: eliminado X |
| v3 | 9 | Unificación 2: eliminados standalone (Local Pack / Keyword Research / Cliente confirmación / Google Search → solo doctrinales combinadas) |
| v4 (actual) | 8 | Unificación 3: eliminado `Doctrina + Cliente confirmación`. 4 outputs → `Cliente preflight + Doctrina GMB Crush`. 2 outputs → `Cliente preflight` (expandido) |

## Cambio relacionado — añadido Bloque 6 Info que falta

En paralelo a la unificación de fuentes, se añadió un nuevo **Bloque 6 Info que falta** entre el Bloque 5 (deploy) y el antiguo Bloque 6 GBP (renumerado a Bloque 7). Este nuevo bloque es un agregador de los outputs marcados `⚠ inferido` y `⚠ placeholder` durante construcción — el GBP no se crea hasta que estén todos cerrados. Detalle en `00 convenciones/00convenciones.md` §2 Reglas 3 + 4.

---

## Reglas de uso

1. **Cualquier etiqueta fuera de estas 8 fuentes es inválida.** Si un output declara una fuente que no está aquí, está roto.
2. **`Info heredada` solo se usa cuando el output no añade transformación** sobre el valor heredado. Si añade criterio, va en una de las 8 fuentes con notación `← X.Y + [fuente]`.
3. **Las combinaciones doctrinales** (`Doctrina + X`) se usan cuando la doctrina aporta criterio. Si solo se usa la tool externa sin criterio doctrinal, no debe existir como fuente standalone (ya hemos eliminado esos casos).
4. **`Cliente preflight`** ahora es el nombre canónico para todos los inputs del cliente (preflight inicial + durante ejecución). Si la doctrina aporta criterio, usa la combinación `Cliente preflight + Doctrina GMB Crush`.
