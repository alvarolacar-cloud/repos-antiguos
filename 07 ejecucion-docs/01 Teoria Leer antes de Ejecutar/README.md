# Sistema GMB Crush — repo de ejecución

Sistema de **14 pasos para construir webs locales SEO + GBP** según la doctrina GMB Crush. Cada cliente se ejecuta de principio a fin para producir un cluster web LIVE en producción + Google Business Profile sincronizado.

> **Filosofía web-first:** la web base se construye primero (Bloques 1-5, puede salir LIVE con `⚠`). El Bloque 6 cierra los datos provisionales. El GBP se crea después (Bloque 7) usando la web ya publicada como source of truth, con datos confirmados.

---

## Para qué sirve este repo

- **Doctrina del sistema** — los 14 pasos del proceso GMB Crush para webs locales, portados desde [el repo canónico](https://github.com/alvarolacar-cloud/repos-1-y-2) al esqueleto canónico (4 bloques I/II/III/IV por a-doc).
- **Plantilla operativa** — un operador (humano o IA) lee este repo, rellena el preflight con un cliente nuevo, y ejecuta los 6 bloques en orden hasta que el cluster web sale a producción + GBP creado.
- **Convenciones doctrinales** — reglas para portar/auditar contenido manteniendo fidelidad al GMB Crush original (sin inventar doctrina, sin resolver ambigüedades silenciosamente, sin "arreglar" erratas).

---

## Estructura del repo

```
ejecucion-docs/
│
├── 00 convenciones/             ← LEE PRIMERO (3 docs)
│   ├── 00convenciones.md        Esqueleto + ejecución + fidelidad (3 secciones)
│   ├── 01flujo-ejecucion.md     Orden global + condiciones de paso
│   └── 02fuentes-y-outputs.md   Catálogo de 8 fuentes + vista de los 241 outputs
│
├── 01 fuentes/                  ← Vistas de fuentes y outputs
│   ├── 00-fuentes-en-uso.md
│   ├── 01 todos los outputs y fuentes/
│   └── 02 agrupado por fuentes/
│
└── 02 ejecución/
    ├── Bloque 0 Preflight/      ← INTAKE INICIAL (8 inputs cliente)
    │   └── 00preflight.md
    │
    ├── Bloque 1 Fundamentos/    ← Pasos 1, 2, 3 (42 outputs)
    ├── Bloque 2 Arquitectura/   ← Pasos 4, 5, 6, 7 (57 outputs)
    ├── Bloque 3 Priorización/   ← Pasos 8, 9, 10 (43 outputs)
    ├── Bloque 4 Automatización/ ← Pasos 11, 12, 13 (41 outputs)
    ├── Bloque 5 Salida a Mercado/  ← Pasos 15, 16, 17, 18, 19 (39 outputs) → web LIVE
    ├── Bloque 6 Info que falta/    ← agregador de ⚠ heredados de Bloques 1-5
    │   └── 06-info-que-falta.md
    └── Bloque 7 GBP/            ← Paso 14 (20 outputs) — bloqueado hasta Bloque 6 vacío
```

Cada **Bloque 1-5 + 7** tiene 3 sub-carpetas con orden de lectura fijo:

```
Bloque N/
├── 01 Plan Ejecución/         ← LEE PRIMERO (qué outputs hay que producir)
├── 02 Ejecución/               ← LUEGO EJECUTA (1-5 a-docs por bloque)
└── 03 Consolidación Outputs/  ← CIERRE (vuelca valores reales del cliente)
```

El **Bloque 6 Info que falta** es distinto: un solo .md agregador, sin a-docs ni outputs propios.

**Total: 14 pasos del sistema GMB Crush · 241 outputs · ~34 archivos operativos.**

---

## Cómo arrancar

### Si eres un humano (operador)

1. Lee los 3 docs de `00 convenciones/` en orden (00 → 01 → 02)
2. Abre `02 ejecución/Bloque 0 Preflight/00preflight.md` y rellena los 8 inputs del cliente
3. Empieza por `02 ejecución/Bloque 1 Fundamentos/01 Plan Ejecución/` y sigue el orden 01 → 02 → 03 dentro del bloque
4. Cuando cierres el consolidado de Bloque 1, pasa al Bloque 2. Y así hasta el Bloque 5 (web LIVE)
5. Bloque 6: agrega los `⚠` heredados de Bloques 1-5 y ciérralos (cliente entrega datos, operador ejecuta tools)
6. Cuando Bloque 6 esté vacío, arranca Bloque 7 GBP
7. Tras Bloque 7 cerrado: web publicada + GBP creado y verificado

### Si eres una IA (Claude Code u otra)

1. Lee `00 convenciones/01flujo-ejecucion.md` — orden global + condiciones de paso entre bloques
2. Lee `00 convenciones/00convenciones.md` — 3 secciones (esqueleto / ejecución / fidelidad)
3. Lee `00 convenciones/02fuentes-y-outputs.md` — catálogo de 8 fuentes + vista de los 241 outputs del sistema
4. Pide al operador el preflight rellenado y ejecuta Bloques 1 → 7 en orden (Bloque 6 es checkpoint asíncrono entre 5 y 7)

> **Regla de oro:** los Bloques 1-5 toleran `⚠ inferido` y `⚠ placeholder` upstream — la web puede salir LIVE con datos provisionales. El único bloqueo real es **del Bloque 6 al Bloque 7**: el GBP no se crea hasta que el agregador del Bloque 6 esté vacío.

---

## Conceptos clave

| Concepto | Qué es |
|---|---|
| **Output** | Una decisión/valor producido por un paso (ID `Paso.X`, ej. `1.5 Planned Primary GBP Category`) |
| **Fuente** | De dónde sale el dato canónicamente — una de las 8 fuentes del catálogo (ver `01 fuentes/00-fuentes-en-uso.md`) |
| **Status** | Si la fuente se ha ejecutado realmente (`confirmed` / `⚠ inferido` / `validated` / `⚠ placeholder`) |
| **A-doc** | El doc operativo de un paso del sistema (4 bloques: Intro / Ejemplo / Ejecución / Fuentes) |
| **Cross-ref** | Referencia entre pasos formato `Paso-NN N.X` (ej. `Paso-01 1.4` = output 1.4 del Paso 1) |

---

## Cuándo la IA se inventa un dato (y cómo se marca)

Hay **2 situaciones** en las que la IA produce un valor sin haber ejecutado la fuente canónica. En ambas el output se marca con `⚠` para que sea explícito qué es real y qué es provisional:

| Situación | Marcador | Ejemplo |
|---|---|---|
| 1. El input es del cliente y el cliente no lo ha dado | `⚠ placeholder` | Cliente no proveyó email/phone → `1.4 Full NAP` con `[PENDIENTE CLIENTE]` |
| 2. Decidimos no ejecutar la fuente externa (velocidad / coste) | `⚠ inferido` | No abrimos Google Maps → `1.5 Primary GBP Category` inferida del nombre del negocio |

### Reglas operativas de los `⚠`

1. **Los `⚠` no paralizan los Bloques 1-5.** La IA marca el output, sigue ejecutando, y la web puede llegar a producción (Paso 18 deploy) con datos provisionales. **El cluster sale LIVE**.

2. **Al cerrar el Bloque 5, los `⚠` se vuelcan al Bloque 6 Info que falta** — un agregador con una tabla de todos los outputs marcados, su origen, y qué se necesita para cerrarlos.

3. **El Bloque 7 (GBP) está bloqueado hasta que el Bloque 6 esté vacío.** Razón: Google penaliza GBPs con NAP falso, fotos genéricas o categorías inventadas. La web tolera datos provisionales, el GBP no.

4. **Cómo se cierra cada `⚠`:**
   - Operador ejecuta la tool externa → `⚠ inferido` → `validated`
   - Cliente entrega el dato → `⚠ placeholder` → `confirmed`
   - Se actualiza el output original (no la fila del agregador)
   - Si el dato corregido afecta contenido publicado (NAP, fotos, schema), se dispara re-deploy parcial del cluster
   - La fila desaparece del agregador del Bloque 6

5. **La fuente del output no cambia con el `⚠`.** Sigue siendo `Doctrina + Local Pack` aunque la IA no abrió Google Maps. Lo que cambia es el status. Esto preserva la trazabilidad: cuando un humano vea `⚠ inferido`, sabe exactamente qué tool ejecutar.

> Detalle completo en `00 convenciones/00convenciones.md` §2 Reglas 3 + 4.

---

## Fidelidad al original

La doctrina del sistema (afirmaciones cuantitativas, fórmulas, escalas, reglas) viene del [repo canónico](https://github.com/alvarolacar-cloud/repos-1-y-2). Este repo lo porta al esqueleto canónico aplicando 7 reglas de fidelidad documentadas en `00convenciones.md` §3:

- No inventar outputs / reglas / conteos
- No "arreglar" erratas del original
- No resolver ambigüedades silenciosamente (flagear, no decidir)
- No tocar código adyacente cuando se aplica un fix

Cada a-doc cita en su Bloque IV las "Fuentes Internas GMB Crush usadas" — los frameworks oficiales (PDFs) que sustentan la doctrina del paso.

---

## Estado actual

- **Sistema:** 14 pasos completos, doctrina alineada con el repo canónico
- **Auditorías de fidelidad:** 6 commits documentados (`aabcdd3`, `ad6e06b`, `2ba4013`, `e607998`, `b8ee926`, `667ba1d`) que detectaron ~70 invenciones doctrinales y las corrigieron
- **Convenciones:** 4 docs maestros + 1 catálogo de fuentes
- **Cliente de ejemplo:** Cerrajeros Madrid 24h (Bloque II de cada a-doc rellenado con valores literales del original)

---

## Repos relacionados

- [`alvarolacar-cloud/repos-1-y-2`](https://github.com/alvarolacar-cloud/repos-1-y-2) — repo canónico original del sistema GMB Crush (14 a-docs Xa, fuente de doctrina)

---

## Licencia

Sistema doctrinal de GMB Crush. Reservados todos los derechos.
