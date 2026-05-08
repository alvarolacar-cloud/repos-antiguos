# G3 — Datos recolectados (Fase 3)

## Cuándo se ejecuta

Al cierre de **Fase 3 (Datos)**, después de que la IA haya ejecutado Local Pack + Keyword Research, y antes de empezar Fase 4 (Encaje).

> Es **bloqueante**: sin los 9 outputs Fase 3 declarados (al menos como `⚠ inferido` con justificación), la cascada de Fase 4 no puede aplicar la doctrina con dataset completo.

---

## Input requerido

- `CLIENTES/{slug}/outputs.json` con los 13 outputs Fase 1 + 9 outputs Fase 3 declarados.
- `DOCTRINA/F3-data-acquisition.md` para verificar el procedimiento esperado.
- `DOCTRINA/03-fuentes.md` para validar que cada Source declarada está en las 8 fuentes válidas.

---

## Los 9 outputs que se evalúan

| ID | Nombre | Tool esperada |
|---|---|---|
| 1.5 | Planned Primary GBP Category | Local Pack |
| 1.6 | Planned Additional GBP Categories | Local Pack |
| 1.9 | Servicios principales (S) | Local Pack |
| 1.10c | Candidate LCAs | Local Pack |
| 1.14 | Trust Signals | Local Pack |
| 3.4 | GeoArticle Topics propuestos | Keyword Research |
| 8.3 | Search Intent | Keyword Research |
| 8.4 | GBP Category Relevance | Local Pack |
| 8.6 | Competition Gap | Local Pack |

---

## Checks

| Check | Criterio | PASS si |
|---|---|---|
| 9 outputs declarados | Cada uno tiene `value` no vacío | 9/9 |
| Status válido | Cada uno con `status` ∈ {`confirmed`, `⚠ inferido`} | 100% |
| Source declarada | Cada uno con `source` específica (URL, query, fecha, tool) | 100% |
| Fuente canónica | Cada `fuente` está en `Doctrina + Local Pack` o `Doctrina + Keyword Research` | 100% |
| `⚠ inferido` justificado | Cada `⚠ inferido` tiene `notes` explicando por qué se infirió | 100% |
| Local Pack consistente | Si se ejecutó Local Pack: lista los 5 competidores consultados | Sí o documentado por qué no |
| Keyword research consistente | Si se ejecutó KW research: lista la tool + queries | Sí o documentado |
| Coherencia interna | 1.9 (Servicios) consistente con 1.5 (Categoría primaria) | Sí |
| Coherencia interna | 1.6 (AC) declara `needs_page` por categoría adicional | Sí |
| Coherencia interna | 3.4 (Topics) cubre G·S topics (G=3, S=cardinalidad de 1.9) | Sí |

---

## Resultado

- **PASS** — los 9 outputs declarados con Status `confirmed` o `⚠ inferido` justificado, source y fuente canónica.
- **PASS_WITH_WARNINGS** — los 9 declarados pero ≥3 están en `⚠ inferido` (la IA tuvo dificultades con tools). Se permite seguir a Fase 4; los ⚠ se cerrarán en Fase 6.
- **BLOCKED** — algún output sin declarar, sin source, con fuente fuera de las 8 válidas, o con incoherencia interna grave.

---

## Bloqueos automáticos

- Falta alguno de los 9 outputs (1.5, 1.6, 1.9, 1.10c, 1.14, 3.4, 8.3, 8.4, 8.6) → BLOCKED.
- Algún output con `fuente` fuera de las 8 válidas → BLOCKED.
- Algún output con `status` distinto de `confirmed` o `⚠ inferido` → BLOCKED.
- Algún `⚠ inferido` sin justificación en `notes` → BLOCKED.
- Servicios (1.9) declarados que no están alineados con Categoría primaria (1.5) → BLOCKED.

---

## Prompt ejecutable

```text
Actúa como evaluador del Gate G3 (Datos recolectados / Fase 3) del sistema GMB Crush v2.

Lee:
- DOCTRINA/F3-data-acquisition.md (procedimiento esperado)
- DOCTRINA/03-fuentes.md (8 fuentes válidas)
- CLIENTES/{slug}/outputs.json

Verifica los 9 outputs Fase 3 (1.5, 1.6, 1.9, 1.10 Candidate, 1.14, 3.4, 8.3, 8.4, 8.6):

Para cada uno:
- ¿Tiene value declarado (no vacío)?
- ¿Status es 'confirmed' o '⚠ inferido'?
- ¿Source es específica (URL, query, fecha)?
- ¿Fuente declarada está en las 8 válidas?
- Si '⚠ inferido', ¿hay justificación en notes?

Verifica coherencia interna:
- 1.9 (Servicios) alineados con 1.5 (Categoría primaria)
- 1.6 (AC) con flag needs_page por categoría
- 3.4 (Topics) cubre G·S topics

Devuelve:
1. Tabla de los 9 outputs con: ID / Nombre / Status / Source / Fuente / Coherencia (✅/⚠/❌).
2. Cuántos están en `confirmed` vs `⚠ inferido`.
3. Bloqueos automáticos detectados (si los hay).
4. Veredicto: PASS / PASS_WITH_WARNINGS / BLOCKED.
5. Si PASS o PASS_WITH_WARNINGS: confirma que se puede proceder a Fase 4 (Encaje cascada).
6. Si BLOCKED: lista exacta de outputs por corregir antes de repetir G3.
```
