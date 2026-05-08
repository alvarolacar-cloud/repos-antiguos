# 5demayoconsolidado — Sistema GMB Crush ejecutable consolidado

> **Versión:** v2.0 · 5 mayo 2026 — flujo por fases
> **Naturaleza:** consolidación de los 5 sistemas previos (Sistema 1 + Sistema 2 + Sistema 3 + Sistema 4 + Sistema 5) tomando lo mejor de cada uno.
> **Test doctrinal pre-build:** ≥90 PASS antes del build (gate G4).
>
> **v2 cambia el flujo:** de "secuencial por bloques 1→2→...→7" a "por fases" (Input → Intro → Datos → Encaje → Build → Pendientes → GBP → Post). El análisis empírico mostró que solo **9 de los 242 outputs requieren herramientas externas pre-build**; el 88% restante es cascada determinística (12 niveles aciclicos). Separar adquisición de datos (Fase 3) de aplicación de doctrina (Fase 4) elimina round-trips y deja la cascada explícita.

---

## Si eres una IA y tienes que ejecutar esto

**Lee en este orden exacto:**

```
1. DOCTRINA/00-system-prompt.md           ← carga como contexto inicial
2. DOCTRINA/01-convenciones.md             ← esqueleto canónico §5/§8
3. DOCTRINA/02-flujo.md                    ← flujo por fases (v2)
4. DOCTRINA/03-fuentes.md                  ← 8 fuentes válidas
5. DOCTRINA/04-fidelidad.md                ← 7 reglas anti-invención
6. DOCTRINA/F3-data-acquisition.md         ← los 9 outputs Fase 3 con procedimiento
7. DOCTRINA/F4-encaje-cascada.md           ← los 220 outputs Fase 4 en 12 niveles
8. DOCTRINA/{page-types|url-patterns|linking|qa-rules}.md ← docs técnicos
9. DOCTRINA/pasos/INDICE.md                ← referencia de los 21 a-docs canónicos
10. DOCTRINA/mapa-fases.md                 ← tabla 250 outputs → fase
11. El preflight del cliente que el operador te indique
```

Después ejecuta sin parar siguiendo `02-flujo.md`. No preguntes al operador nada hasta que la web esté en producción (excepto si detectas posible invención de doctrina — ver `04-fidelidad.md §protocolo`).

---

## Si eres el operador

Ve a [`_run.md`](_run.md). Ahí está el flujo: rellenar 8 campos, ejecutar 1 script, esperar.

---

## Estructura

```
5demayoconsolidado/
├── README.md                          ← este archivo
├── _run.md                            ← entry point operador
│
├── DOCTRINA/                          ← qué tiene que saber la IA
│   ├── 00-system-prompt.md           (Sistema 1 destilado)
│   ├── 01-convenciones.md            (Sistema 2 esqueleto canónico)
│   ├── 02-flujo.md                   (Sistema 4 + Sistema 2 orden)
│   ├── 03-fuentes.md                 (8 fuentes + status + herencia)
│   ├── 04-fidelidad.md               (7 reglas anti-invención)
│   ├── page-types.md                 (Sistema 3)
│   ├── url-patterns.md               (Sistema 3)
│   ├── linking.md                    (Sistema 3)
│   ├── qa-rules.md                   (Sistema 3)
│   └── pasos/                        (21 a-docs Sistema 4 con esqueleto §5/§8 Sistema 2)
│       ├── INDICE.md
│       ├── 01a..19a-*.md
│       ├── 00-preflight-template.md
│       └── B6-info-que-falta-template.md
│
├── PLANTILLA-CLUSTER/                  ← Sistema 3: Astro 5 + Tailwind real (validado 94/100)
│   ├── src/lib/                       (cluster, schemas, internal-links, types, ...)
│   ├── src/components/                (Hero, Faqs, ServicesGrid, ...)
│   ├── src/layouts/                   (BaseLayout)
│   ├── src/pages/                     (HP + 6 page types)
│   ├── package.json, astro.config.mjs, tsconfig.json, tailwind.config.js
│   └── (lista para `pnpm build` con CLUSTER_PATH apuntando a outputs.json)
│
├── CLIENTES/                          ← workspace por cliente
│   └── _plantilla/                    (copia base, no editar directamente)
│       ├── 00-preflight.md            ← 8 campos del operador
│       ├── outputs.json               ← outputs trazables (Sistema 3 schema)
│       ├── 01-web.md                  ← §8 Outputs Consolidados Bloques 1-5
│       ├── 02-pendientes.md           ← agregador ⚠ (Bloque 6)
│       ├── 03-gbp.md                  ← Bloque 7 (GBP) post-cierre
│       └── README.md
│
├── GATES/                             ← Sistema 5: gates ejecutables G0-G7
│   ├── G0-teoria-leida.md
│   ├── G1-preflight.md
│   ├── G2-bloque-ejecutado.md
│   ├── G3-fuentes-trazables.md
│   ├── G4-web-live-ready.md            ← gate doctrinal pre-build (incluye TESTS/)
│   ├── G5-info-faltante-cerrada.md
│   ├── G6-gbp-safe.md
│   └── G7-post-lanzamiento.md
│
├── TESTS/                             ← gate pre-build (no auditoría post-HTML)
│   ├── test-doctrinal.md              (17 checks doctrinales sobre los DOCS)
│   └── pack-auditoria-web-construida.md (6 docs canónicos pre-build)
│
└── SCRIPTS/                           ← Sistema 3: ejecutables bash
    ├── new-cliente.sh                 (crear cliente nuevo desde plantilla)
    ├── deploy.sh                      (build + deploy a Cloudflare)
    └── qa-check.sh                    (chequeos pre-deploy)
```

---

## Flujo end-to-end (lo que pasa con un cliente nuevo)

```
1. Operador rellena _run.md con 8 campos del cliente
2. Operador ejecuta `./SCRIPTS/new-cliente.sh aeroterm 2026-05`
   → copia CLIENTES/_plantilla a CLIENTES/2026-05-aeroterm
   → copia PLANTILLA-CLUSTER a CLIENTES/2026-05-aeroterm/cluster
3. Operador da el mensaje a la IA: "ejecuta para 2026-05-aeroterm"
4. IA carga DOCTRINA/00-system-prompt.md como contexto
5. IA ejecuta cada bloque siguiendo DOCTRINA/02-flujo.md
   - Por cada bloque: lee DOCTRINA/pasos/XX-aXX.md
   - Rellena outputs.json + 01-web.md trazables
   - Pasa por GATES/GX (G0→G3) entre bloques
6. Antes del Build (Paso 17):
   - Pasa GATES/G4-web-live-ready.md (incluye TESTS/test-doctrinal.md ≥90 PASS)
7. Build: `pnpm build` con CLUSTER_PATH=../outputs.json
8. Deploy: `./SCRIPTS/deploy.sh aeroterm` → web LIVE en Cloudflare
9. ⚠ se cierran asíncronamente en 02-pendientes.md (G5)
10. Cuando 02-pendientes.md está vacío:
    - Pasa GATES/G6-gbp-safe.md
    - IA ejecuta 03-gbp.md (Bloque 7)
11. ≥30 días tracking → GATES/G7-post-lanzamiento.md → decisión expansión
```

---

## Quien hizo qué

| Capa | Origen | Aporte |
|---|---|---|
| Doctrina destilada | Sistema 1 | `00-system-prompt.md` (lo que carga la IA) |
| Esqueleto canónico §5/§8 + 7 reglas fidelidad + 8 fuentes | Sistema 2 | `01-convenciones.md`, `04-fidelidad.md`, `03-fuentes.md` |
| Plantilla Astro real + outputs.json + scripts | Sistema 3 (yo) | `PLANTILLA-CLUSTER/`, `SCRIPTS/`, doctrina técnica |
| `_run.md` operador + 21 a-docs estructurados | Sistema 4 (Hermes) | `_run.md`, `DOCTRINA/pasos/`, `CLIENTES/_plantilla/` |
| Gates G0-G7 con PASS/PASS_WITH_WARNINGS/BLOCKED | Sistema 5 | `GATES/` |
| Tests pre-build (no post-HTML) | Refactor reciente | `TESTS/` |

---

## Estado del sistema

- ✅ **DOCTRINA/** completa (9 archivos + 21 a-docs en `pasos/` + INDICE)
- ✅ **PLANTILLA-CLUSTER/** validada (Sistema 3 pasó 94/100 PASS)
- ✅ **CLIENTES/_plantilla/** lista (5 archivos + README)
- ✅ **GATES/** con 8 gates ejecutables
- ✅ **TESTS/** refactor pre-build aplicado
- ✅ **SCRIPTS/** adaptados a la nueva estructura
- ⏳ **Pendiente:** primera ejecución end-to-end con cliente real
