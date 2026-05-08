# _run.md — Punto de entrada del operador

> **Uso:** rellena el preflight (8 campos), ejecuta el script y dale el mensaje a la IA. La IA hace el resto siguiendo el flujo por fases hasta que la web esté en producción.

---

## CÓMO ARRANCAR UN CLIENTE NUEVO

### Paso 1 — Crea la carpeta del cliente

```bash
./SCRIPTS/new-cliente.sh <slug> <YYYY-MM>
```

Ejemplo:
```bash
./SCRIPTS/new-cliente.sh aeroterm 2026-05
```

Esto crea `CLIENTES/2026-05-aeroterm/` con plantilla cliente + `cluster/` con plantilla Astro + `outputs.json` semilla.

### Paso 2 — Rellena el preflight (8 campos)

Abre `CLIENTES/2026-05-aeroterm/00-preflight.md` y rellena:

```
1. Nombre del negocio
2. Categoría primaria GBP
3. Main City
4. Servicios core (lista)
5. Categorías adicionales GBP (lista)
6. NAP (dirección, ciudad, ZIP, país, teléfono, email)
7. Web actual (si existe)
8. Estado actual del GBP (creado / no creado / necesita verificación)
```

### Paso 3 — Lanza a la IA

Dale a la IA este mensaje exacto:

```
Ejecuta el sistema 5demayoconsolidado para el cliente en:
CLIENTES/2026-05-aeroterm/00-preflight.md

Sigue el flujo por fases declarado en DOCTRINA/02-flujo.md.
Lee primero los 8 docs de DOCTRINA/ (gate G0).
```

---

## LO QUE HACE LA IA (sin que tú lo veas) — FLUJO POR FASES

```
G0   IA carga DOCTRINA/00-system-prompt.md + 01-convenciones + 02-flujo + 03-fuentes
     + 04-fidelidad + F3-data-acquisition + F4-encaje-cascada (gate teoría leída)
        ↓
F1   Input — IA deriva los 13 outputs preflight (Cliente preflight)
G1                                   (gate G1 — preflight válido)
        ↓
F2   Intro — IA presenta plan al operador (opcional)
G2                                   (gate G2 — plan presentado, blando)
        ↓
F3   Datos — IA ejecuta Local Pack + Keyword Research → 9 outputs
G3                                   (gate G3 — datos recolectados)
        ↓
F4   Encaje — IA aplica cascada de 12 niveles → 220 outputs determinísticos
G4                                   (gate G4 — TESTS/test-doctrinal.md ≥ 90 PASS)
        ↓
F5   Build + Deploy — pnpm build + wrangler → web LIVE en Cloudflare
        ↓                              (puede salir LIVE con ⚠ — la doctrina lo permite)
F6   Pendientes — IA vuelca ⚠ en 02-pendientes.md. ASÍNCRONO.
        ↓                              ↓ (cliente cierra cada ⚠)
G5                                   (gate G5 — agregador vacío)
        ↓
F7   GBP (Paso 14) — IA ejecuta los 20 outputs GBP. 14.12+13+14 con tools aquí.
G6                                   (gate G6 — GBP listo para verificación)
        ↓
F8   Post (Paso 19) — ≥30 días tracking. Decisión escalado.
G7                                   (gate G7 — triggers evaluados)
```

**La IA NO te pregunta nada entre F1 y F5.** Si no tiene un dato, lo marca `⚠ inferido` o `⚠ placeholder` y sigue. La doctrina lo permite (Fases 1-5 toleran ⚠).

---

## FLUJO POST-DEPLOY (tu trabajo real — Fase 6)

Cuando la web esté LIVE, abre `CLIENTES/{slug}/02-pendientes.md`. Verás una tabla con los datos que faltaban:

| Output ID | Qué falta | Quién lo da |
|---|---|---|
| 1.4 phone | Teléfono real del negocio | Cliente |
| 1.5 | Categoría GBP real | Tú (abres Google Maps) |
| 1.14 | Trust signals reales | Cliente |
| ... | ... | ... |

Para cada fila:
1. Consigues el dato
2. Actualizas el output en `outputs.json` (cambias `value` y promueves `status` a `confirmed`)
3. Borras la fila de `02-pendientes.md`
4. Si afecta contenido publicado: re-deploy con `./SCRIPTS/deploy.sh {slug}`

Cuando `02-pendientes.md` esté vacío → la IA puede ejecutar Fase 7 (GBP).

---

## DISTRIBUCIÓN REAL DE TRABAJO

De los 242 outputs canónicos del sistema GMB Crush:

| Fase | Outputs | % | Naturaleza |
|---|---:|---:|---|
| F1 (Input) | 13 | 5% | Operador / cliente da estos |
| F3 (Datos) | 9 | 4% | IA con tools externas |
| F4 (Encaje) | 220 | 88% | IA determinístico (cascada) |
| F7 (GBP tools) | 3 | 1% | IA con tools (post-pendientes) |
| F8 (Post tools) | 3 | 1% | IA con tools (post-launch ≥30d) |
| Especiales | 2 | 1% | 1 N/A + 1 `⚠ revisar` ambigüedad |
| **Total** | **250** | **100%** | (242 únicos por ID) |

> El 88% del trabajo es cascada determinística. La IA solo necesita 9 outputs de tools externas para arrancar Fase 4.

---

## CLIENTES ACTIVOS

| Cliente | Carpeta | Estado |
|---|---|---|
| (vacío) | — | Sistema recién consolidado, sin clientes en ejecución |

---

## Si algo falla

| Problema | Acción |
|---|---|
| La IA pide un dato fuera del preflight | BLOCKED — la IA debe inferir o marcar `⚠`, no pedir |
| `pnpm build` falla con `CLUSTER_PATH no definido` | Usa `./SCRIPTS/deploy.sh {slug}`, no `pnpm build` directo |
| TESTS/ devuelve <90 (gate G4) | Falta algún output crítico o tiene status incorrecto. Revisa `outputs.json`. |
| Local Pack no accesible en Fase 3 | OK — la IA marca los 7 outputs de Local Pack como `⚠ inferido` y sigue |
| La IA quiere ejecutar Fase 7 con `02-pendientes.md` lleno | BLOCKED — gate G5 no pasa. Cierra los pendientes primero. |
