# 02 Flujo de ejecución del sistema GMB Crush

> **Audiencia:** una IA (o humano) que arranca a ejecutar el sistema GMB Crush para un cliente nuevo. Este documento explica **en qué orden leer y ejecutar** los archivos del repo para producir un cluster web local + GBP coherente.

---

## TL;DR

```
1. Lee las 3 convenciones (00 convenciones/)
2. Rellena el preflight (Bloque 0)
3. Recorre Bloques 1 → 7 en orden
4. Dentro de cada bloque: 01 Plan → 02 Ejecución → 03 Consolidación
5. Bloques 1-5: ⚠ inferido / ⚠ placeholder NO paralizan — la web sale LIVE con datos provisionales
6. Bloque 6 (Info que falta): agregador de ⚠. Cliente/operador cierran cada uno
7. Bloque 7 (GBP): bloqueado hasta que el Bloque 6 esté vacío
```

---

## Antes de arrancar — lectura obligatoria

Leer **`00 convenciones/00convenciones.md`** completo. Es un único archivo con 3 secciones:

| Sección | Qué responde |
|---|---|
| §1 Esqueleto canónico de un a-doc | ¿Qué forma tiene un a-doc? (4 bloques I/II/III/IV, IDs `Paso.X`, formato §5/§8 outputs, catálogo de Fuentes) |
| §2 Convenciones de ejecución | ¿Cómo marco el status de un output? (`confirmed` / `⚠ inferido` / `⚠ placeholder` / `validated`) |
| §3 Convenciones de fidelidad al original | ¿Cómo evito inventar doctrina del GMB Crush? (los 7 patrones prohibidos + protocolo) |

Sin esas 3 secciones leídas, no se ejecuta nada.

---

## Orden global del sistema

```
┌─────────────────────────┐
│  Bloque 0 — Preflight   │  rellenar intake del cliente
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│  Bloque 1 — Fundamentos │  Pasos 1, 2, 3
│  42 outputs              │  Intake / Fórmula / Matriz Base
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│  Bloque 2 — Arquitectura│  Pasos 4, 5, 6, 7
│  57 outputs              │  URLs / Page Types / Contenido / Linking
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│  Bloque 3 — Priorización│  Pasos 8, 9, 10
│  43 outputs              │  Priority Score / QA / Producción en Fases
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│  Bloque 4 — Automatización│ Pasos 11, 12, 13
│  41 outputs              │  Pseudocódigo / Master Prompt / SOP
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│  Bloque 5 — Salida a Mercado │ Pasos 15, 16, 17, 18, 19
│  39 outputs              │      Redacción / Diseño / Build / Deploy / Vigilancia
└────────────┬────────────┘
             │
             ▼  (sitio web LIVE en producción — puede salir con ⚠)
             │
┌─────────────────────────┐
│  Bloque 6 — Info que falta│ checkpoint asíncrono
│  agregador (no outputs)  │  Recoge todos los ⚠ inferido / ⚠ placeholder
│                          │  heredados de Bloques 1-5. Bloqueante para Bloque 7.
└────────────┬────────────┘
             │
             ▼  (tabla del Bloque 6 vacía → desbloqueo)
             │
┌─────────────────────────┐
│  Bloque 7 — GBP         │  Paso 14
│  20 outputs              │  GBP Creation & Website Alignment
└─────────────────────────┘
```

**Total: 241 outputs distribuidos en 14 pasos del sistema GMB Crush** (el Bloque 6 Info que falta no produce outputs nativos — es un agregador de `⚠` heredados).

> **Nota web-first:** el Paso 14 (GBP) NO está en Bloque 1-5. Vive en Bloque 7 y se ejecuta DESPUÉS del Paso 18 (deploy del sitio web) Y DESPUÉS de cerrar todos los `⚠` en el Bloque 6. El cluster sale a mercado con web pública (posiblemente con datos provisionales `⚠`), el Bloque 6 recoge esos `⚠` y los cliente/operador los cierran, y solo entonces el Bloque 7 crea el GBP usando la web ya publicada como source of truth.

---

## Dentro de cada bloque — orden obligatorio

Cada Bloque (1-6) tiene la misma estructura de 3 carpetas:

```
Bloque N/
├── 01 Plan Ejecución/         ← LEE PRIMERO
│   └── 00a-plan-ejecucion-bloque-N.md
│
├── 02 Ejecución/              ← LUEGO EJECUTA
│   ├── XXa-ejecucion-*.md     (1 a 5 a-docs según el bloque)
│   └── ...
│
└── 03 Consolidación Outputs/  ← CIERRE
    └── bloque-N-consolidado.md
```

### Paso 1 — Lee el plan-ejecución

`01 Plan Ejecución/00a-plan-ejecucion-bloque-N.md` te dice:
- Qué outputs hay que producir en este bloque (con sus IDs `Paso.X`)
- De dónde viene cada output (heredado / doctrina / decisión operador / cliente confirma)
- Qué bloqueos críticos hay que resolver antes de arrancar
- Cuándo arrancar la ejecución (pre-requisitos del bloque anterior)

### Paso 2 — Ejecuta los a-docs

`02 Ejecución/XXa-ejecucion-*.md` es donde se produce el contenido real. Cada a-doc tiene 4 bloques:
- **Bloque I** — Introducción + outputs heredados
- **Bloque II** — Ejemplo rellenado (Cerrajeros Madrid 24h como referencia)
- **Bloque III** — Ejecución por la IA: §5 outputs declarados + §6 obtención de cada output + §7 checklist + §8 outputs consolidados con valores reales
- **Bloque IV** — Fuentes internas GMB Crush usadas

Cada output que produces va al §8 con su valor real + status (`confirmed` / `⚠ inferido` / `⚠ placeholder` / `validated`).

### Paso 3 — Consolida en el cierre del bloque

`03 Consolidación Outputs/bloque-N-consolidado.md` es la vista de cierre. Vuelcas los valores reales del cliente desde los §8 de cada a-doc del bloque a la tabla del consolidado, y revisas el resumen de status.

**Avance entre Bloques 1-5:** los `⚠ inferido` y `⚠ placeholder` NO bloquean la propagación entre bloques. La construcción avanza con datos provisionales hasta el Paso 18 (deploy). La web sale LIVE con esos marcadores presentes.

**Bloqueo crítico:** el `⚠` solo bloquea el paso **del Bloque 6 al Bloque 7**. El agregador del Bloque 6 (`06-info-que-falta.md`) tiene que estar vacío antes de crear el GBP. Ver §2 Reglas 3 + 4 de `00convenciones.md`.

---

## Condiciones de paso entre bloques

| De | A | Pre-requisito |
|---|---|---|
| Bloque 0 | Bloque 1 | Preflight rellenado completo |
| Bloque 1 | Bloque 2 | 42 outputs B1 con valor (admite `⚠ inferido` / `⚠ placeholder`) |
| Bloque 2 | Bloque 3 | 57 outputs B2 con valor (admite `⚠`) |
| Bloque 3 | Bloque 4 | 43 outputs B3 con valor (admite `⚠`). Final Publish Gate Pass: validación de gaps críticos, no de status `⚠` |
| Bloque 4 | Bloque 5 | 41 outputs B4 con valor (SOP firmado) |
| Bloque 5 | Bloque 6 | 39 outputs B5 con valor + sitio LIVE + ≥30 días tracking GSC/GA4. **El sitio puede haber salido LIVE con `⚠` en outputs heredados** |
| Bloque 6 | Bloque 7 | **Tabla agregada del Bloque 6 vacía** — todos los `⚠ inferido` y `⚠ placeholder` heredados de Bloques 1-5 promovidos a `confirmed`/`validated` |
| Bloque 7 | (continuo) | 20 outputs B7 cerrados + GBP verificado |

---

## Casos especiales

### Si encuentras un `⚠ inferido` o `⚠ placeholder`

Significa que la IA "se inventó" el dato por una de las 2 situaciones legítimas:

- **`⚠ inferido`** — la fuente requería tool externa (Local Pack, Keyword Research, Google Search) y la IA sustituyó por inferencia (decidimos no ejecutar la tool por velocidad/coste).
- **`⚠ placeholder`** — el input es del cliente y el cliente no lo dio aún (NAP incompleto, fotos no entregadas, web ref no provista).

**Acción:**
1. Marca el output con `⚠ inferido — pendiente [tool]` o `⚠ placeholder — pendiente cliente`
2. Continúa el bloque con ese marcador. **El sistema avanza** — los `⚠` no paralizan los Bloques 1-5.
3. **El sitio web puede salir LIVE en Paso 18 con esos `⚠` presentes.** La web tolera datos provisionales.
4. Al cerrar Bloque 5, los `⚠` se vuelcan al agregador del Bloque 6 (`06-info-que-falta.md`).
5. **El Bloque 7 (GBP) está bloqueado hasta que el agregador del Bloque 6 esté vacío.** Allí se cierran todos los `⚠` antes de crear el GBP.
6. Cuando se cierra un `⚠`: actualizar el output original → promover a `confirmed`/`validated` → eliminar fila del agregador → re-deploy si afecta contenido publicado.

### Si detectas posible invención de doctrina

Un output o regla del a-doc parece no estar en el original GMB Crush. Aplica la **Regla 7 de la Convención 01** (verificación bidireccional):

> ¿El original §X-Outputs del paso N lo lista, o el intake §4 del paso N lo rellena?
> - Sí → output nativo, OK
> - No (pero se usa aquí) → input heredado, NO output
> - No (ni se usa) → no debería estar

Si detectas invención, NO la "arregles" silenciosamente. Reporta al operador.

### Si el original tiene ambigüedad o contradicción

Ejemplo: el original Paso 10 tiene dos "Fase 5" distintas (§11 Optional Expansion y §26 GBP Creation).

**Protocolo:**
1. NO resuelvas silenciosamente eligiendo una.
2. Documenta la ambigüedad con `> **Nota de fidelidad:**`
3. Decide en consulta con el operador.
4. La sección no elegida queda referenciada con cross-ref pero NO desplazada.

### Si el original tiene una errata

Ejemplo: original Paso 12 dice `Target long-tail llaveword` (errata por `keyword`).

**NO arregles**. Conserva la errata literal. El principio de copia literal no permite "arreglos" silenciosos.

---

## Cross-refs entre pasos

Cuando un output de un paso necesita un valor de otro paso, se usa formato `Paso-NN N.X`:

```text
| **2.5** Variable S | `← Paso-01 1.9` | Contar core services aplicables |
```

Esto significa: el output 2.5 hereda de 1.9 (el campo `Servicios principales` del intake del Paso 1).

**Validación**: para cada `Paso-NN N.X` que cites, el output ID `N.X` tiene que existir en el a-doc destino. Si no existe, está roto.

---

## Catálogo de Fuentes

Cada output declara una `Fuente` que indica de dónde sale el dato. Las 10 fuentes válidas + la notación de herencia `← X.Y` están documentadas en `00 convenciones/02fuentes-y-outputs.md` con descripción detallada y ejemplos de uso por fuente.

Cualquier etiqueta fuera de ese catálogo es inválida.

---

## Cómo la IA arranca con un cliente nuevo

```
SI eres una IA leyendo este repo por primera vez:

1. Lee 00 convenciones/00convenciones.md (3 secciones: esqueleto + ejecución + fidelidad)
2. Lee 00 convenciones/01flujo-ejecucion.md (este doc)
3. Lee 00 convenciones/02fuentes-y-outputs.md (catálogo de 10 fuentes + vista de los 241 outputs)
4. Pide al operador: "¿Tenemos preflight rellenado del cliente?"
   - Sí → empieza por 02 ejecución/Bloque 0 Preflight/00preflight.md, valida los datos
   - No → solicita los datos del preflight al operador
5. Una vez el preflight está completo:
   - Lee 02 ejecución/Bloque 1 Fundamentos/01 Plan Ejecución/00a-plan-ejecucion-bloque-1.md
   - Ejecuta 02 ejecución/Bloque 1 Fundamentos/02 Ejecución/01a, 02a, 03a
   - Vuelca outputs reales en 02 ejecución/Bloque 1 Fundamentos/03 Consolidación Outputs/
   - Verifica que los 42 outputs estén confirmed/validated
6. Repite paso 5 con Bloques 2, 3, 4, 5 en orden (los `⚠` no paralizan el avance)
7. Tras Bloque 5 cerrado (web LIVE), ejecuta el Bloque 6 Info que falta: agrega los `⚠` heredados, espera al cliente/operador para cerrarlos, dispara re-deploy si aplica
8. Cuando el agregador del Bloque 6 está vacío, arranca el Bloque 7 GBP
9. Tras Bloque 7 cerrado: sistema en modo continuo (Paso 19 + sincronización
   web ⟷ GBP)
```

**Regla de oro**: el único pre-requisito que se aplica con cero tolerancia es el del Bloque 7 (GBP) → exige que el Bloque 6 esté vacío. Para los Bloques 1-5, los `⚠ inferido` y `⚠ placeholder` upstream son aceptables (la IA debe marcarlos pero puede continuar).

---

## Cierre del sistema

Tras Bloque 7 cerrado:
- Web base publicada (Bloque 5 entregó esto, posiblemente con `⚠`)
- Todos los `⚠` cerrados (Bloque 6 entregó esto, con re-deploy si aplicó)
- GBP creado y verificado, sincronizado con la web (Bloque 7)
- Tracking activo (GSC + GA4 + GBP performance + geo-grid)
- Paso 19 continuo evaluando triggers de escalado a sub-clusters

Si el Paso 19 detecta que los 3 triggers se cumplen (Location ya responde / GeoArticles traen tráfico / Señal en SERP), arranca un nuevo ciclo del sistema para el sub-cluster aprobado (vuelve a Paso 1 con `Approved Expansion Areas` activas).

---

## Resumen visual del repo

```
ejecución/
│
├── 00 convenciones/                ← LEE PRIMERO
│   ├── 00convenciones.md          (esqueleto + ejecución + fidelidad)
│   ├── 01flujo-ejecucion.md       ← este doc
│   └── 02fuentes-y-outputs.md     (catálogo de 8 fuentes + vista de los 241 outputs)
│
├── 01 fuentes/                    ← Vistas de fuentes y outputs
│   ├── 00-fuentes-en-uso.md
│   ├── 01 todos los outputs y fuentes/
│   └── 02 agrupado por fuentes/
│
└── 02 ejecución/                  ← EJECUCIÓN POR BLOQUES
    ├── Bloque 0 Preflight/         (intake inicial — 00preflight.md)
    ├── Bloque 1 Fundamentos/
    ├── Bloque 2 Arquitectura/
    ├── Bloque 3 Priorización/
    ├── Bloque 4 Automatización/
    ├── Bloque 5 Salida a Mercado/
    ├── Bloque 6 Info que falta/    (agregador de ⚠ — 06-info-que-falta.md)
    └── Bloque 7 GBP/

cada Bloque 1-5 + 7:
    ├── 01 Plan Ejecución/         (1 doc — leer primero)
    ├── 02 Ejecución/               (1-5 a-docs — ejecutar)
    └── 03 Consolidación Outputs/  (1 doc — cerrar)
```

Total: 3 convenciones + 1 preflight + 6 bloques × 3 carpetas (Bloques 1-5 + 7) + 1 agregador (Bloque 6) = ~34 archivos operativos del sistema.
