# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repository is

This is an **operational doctrine system**, not a code repository. It contains structured Markdown documents that prescribe a 14-step framework for building local SEO web clusters + Google Business Profiles (GBP) following the **GMB Crush methodology**. The system is designed to be executed by both humans and Claude.

There are no build commands, tests, or deployable artifacts in this repo itself. The web stack referenced throughout (Astro 5 + Tailwind + pnpm + Cloudflare Pages) is the target stack for client sites, not for this repo.

---

## Repository structure

Two top-level sections with a strict separation of concerns:

```
01 Teoria Leer antes de Ejecutar/   ← doctrine, conventions, execution guides (read-only reference)
02 Ejecución clientes/              ← per-client workspaces (write here when executing for a client)
```

**Theory layer** (`01 Teoria/`):
- `00 convenciones/` — 3 master documents: canonical doc skeleton, execution flow, source catalog
- `01 fuentes/` — 8 valid information sources and the full 242-output inventory
- `02 ejecución/` — Execution documents (a-docs) organized into Bloques 0–7

**Client layer** (`02 Ejecución clientes/`):
- `_plantilla/` — Master template; copy this for each new client, never edit directly
- `[YYYY-MM]-[slug]/` — One folder per client, following the template structure

---

## Key concepts

**Output** — A decision or value produced by a step, identified by `Paso.X` (e.g., `1.5 Planned Primary GBP Category`). There are 242 total outputs across 14 steps.

**A-doc** — The operative document for a step. Every a-doc has an invariant 4-block skeleton:
1. Introduction (objective, output list, common errors)
2. Completed example using reference client "Cerrajeros Madrid 24h"
3. AI Execution (§5 output table → §6 obtention rules → §7 checklist → **§8 Outputs Consolidados**)
4. Internal GMB Crush sources

**§8 Outputs Consolidados** is the single source of truth for a step's completed data. It always contains: `ID / Inherits From / Output+value / How obtained+Source / Status`.

**Status markers:**
- `confirmed` — real data provided by client or tool execution
- `validated` — confirmed post-hoc after site launch
- `⚠ inferido` — inferred (canonical source not executed); does NOT block progression in Bloques 1–5
- `⚠ placeholder` — awaiting client input; does NOT block progression in Bloques 1–5

**Hereda de / ← X.Y** — notation indicating a value is reused from upstream output X.Y, not re-obtained.

---

## The 8 valid information sources

Every output in §5 must declare exactly one of these:
1. Doctrina GMB Crush
2. Cliente preflight
3. Cliente preflight + Doctrina
4. Arquitectura técnica
5. Tracking (GSC/GA4/Rank Tracker — only valid ≥30 days post-launch)
6. Doctrina + Local Pack (Google Maps competitive analysis)
7. Doctrina + Keyword research (Ahrefs, Semrush, etc.)
8. Doctrina + Google Search (SERP qualitative signals)

---

## Execution flow and gates

```
Bloque 0 — Preflight (8 client fields required)
    ↓ all 8 fields provided
Bloques 1–5 — Main delivery (42+57+43+41+39 = 222 outputs)
    • ⚠ markers are allowed; web goes LIVE at end of Bloque 5
    ↓ site live + ≥30 days tracking data
Bloque 6 — Checkpoint (aggregates all ⚠ markers from Bloques 1–5)
    • GATE: table must be fully emptied (all ⚠ → confirmed or validated)
    ↓ Bloque 6 table empty
Bloque 7 — GBP (20 outputs)
    • Only starts when Bloque 6 is empty
```

**Design principle:** web-first. The website launches with provisional data. GBP is created only after the published site is the confirmed source of truth (Google penalizes false NAP, generic images, or wrong categories in GBP).

---

## Fidelity rules (critical)

Doctrine comes from the official GMB Crush manual. When working with theory documents:

1. **Do not invent outputs, rules, or output counts.** If something seems missing, flag it — don't add it.
2. **Do not silently fix ambiguities** in source doctrine. Flag them explicitly.
3. **Do not touch adjacent content** when fixing a specific section.
4. Cross-references between steps use output IDs (`Paso-NN N.X`), never section headings.
5. The reference client throughout all examples is **"Cerrajeros Madrid 24h"** — use this for consistency.

---

## How to execute for a client

1. Read theory (mandatory before any client work):
   - `00 convenciones/00convenciones.md`
   - `00 convenciones/01flujo-ejecucion.md`
   - `00 convenciones/02fuentes-y-outputs.md`

2. Copy `02 Ejecución clientes/_plantilla/` → new folder `[YYYY-MM]-[slug]/`

3. Complete Preflight (Bloque 0) — all 8 fields required before proceeding.

4. Execute Bloques 1 → 5 in order: for each Bloque read the Plan doc, execute each a-doc, then fill the Consolidación doc. Mark `⚠` for unavailable data; do not block on it.

5. After site is live ≥30 days, execute Bloque 6: collect all `⚠` markers and resolve each one.

6. Only after Bloque 6 table is empty: execute Bloque 7 (GBP).

---

## Naming conventions

- Client folders: `[YYYY-MM]-[slug]/` (e.g., `2026-05-aeroterm/`)
- A-doc filenames: `01a-ejecucion-[step-name].md` (or `01b-`, `01c-` for sub-steps)
- Consolidation docs: `bloque-N-consolidado.md`
- Output IDs: `N.X` where N = step number, X = sequential output within that step
