# G0 — Teoría leída

## Cuándo se ejecuta

Antes de tocar cualquier cliente. Es el primer gate del flujo: ninguna acción operativa está autorizada hasta que la IA u operador declare haber leído y entendido la doctrina GMB Crush.

> Equivalente al nivel R0 (Revisión de lectura).

---

## Input requerido

La IA debe haber leído estos artefactos canónicos en `DOCTRINA/`:

- `DOCTRINA/00-system-prompt.md` — rol y reglas de comportamiento.
- `DOCTRINA/01-convenciones.md` — convenciones de outputs, estados (✅ / ⚠ / ⛔ / 🔁 / N/A) y referencias canónicas (`Paso-XX §Y`).
- `DOCTRINA/02-flujo.md` — flujo Bloques 1–7 (web-first, GBP posterior).
- `DOCTRINA/03-fuentes.md` — catálogo de las 8 fuentes válidas.
- `DOCTRINA/04-fidelidad.md` — regla de no invención y trazabilidad.
- `DOCTRINA/pasos/` — pasos canónicos referenciables (`Paso-01` … `Paso-NN`).

Antes de declarar G0 PASS, la IA no puede haber tocado ningún cliente, ni leído ningún `CLIENTES/{slug}/*`.

---

## Checks

| Check | Criterio | PASS si |
|---|---|---|
| README / system-prompt leído | La IA declara haber leído `00-system-prompt.md` | Declarado |
| Convenciones leídas | La IA conoce estados, formato de outputs y referencias `Paso-XX §Y` | Declarado |
| Flujo leído | La IA entiende Bloques 1–7 y la regla web-first / GBP posterior | Declarado |
| Fuentes leídas | La IA conoce el catálogo de 8 fuentes válidas | Declarado |
| Fidelidad leída | La IA acepta no inventar datos y declara cada output con Source + Status | Declarado |
| No modificación | La IA entiende que `DOCTRINA/` es inmutable durante la operación | Declarado |

---

## Resultado

- **PASS** — los 6 checks declarados. Habilita G1 (Preflight).
- **PASS_WITH_WARNINGS** — no aplica en G0. La doctrina es binaria: leída o no.
- **BLOCKED** — falta cualquiera de los 6 checks. La IA no puede operar sobre clientes.

---

## Bloqueos automáticos

- La IA propone modificar cualquier archivo de `DOCTRINA/` → BLOCKED inmediato.
- La IA empieza a producir outputs sin haber declarado lectura → BLOCKED.
- La IA propone usar una fuente no listada en `DOCTRINA/03-fuentes.md` → BLOCKED.
- La IA usa una referencia que no corresponde a un `Paso-XX §Y` real → BLOCKED.

---

## Prompt ejecutable

```text
Actúa como evaluador del Gate G0 (Teoría leída) del sistema GMB Crush.

Lee:
- DOCTRINA/00-system-prompt.md
- DOCTRINA/01-convenciones.md
- DOCTRINA/02-flujo.md
- DOCTRINA/03-fuentes.md
- DOCTRINA/04-fidelidad.md
- (índice de) DOCTRINA/pasos/

Declara, uno por uno, los 6 checks:
1. system-prompt leído.
2. convenciones leídas (estados + referencias canónicas Paso-XX §Y).
3. flujo Bloques 1–7 entendido (web-first, GBP posterior).
4. catálogo de fuentes leído (8 fuentes válidas).
5. regla de no invención aceptada (cada output lleva Source + Status).
6. DOCTRINA/ es inmutable durante la operación.

Reglas:
- No leas nada de CLIENTES/ todavía.
- No produzcas outputs operativos.
- No inventes secciones que no existen en los pasos canónicos.

Devuelve:
- Tabla con los 6 checks y su resultado.
- Veredicto: PASS / BLOCKED.
- Si BLOCKED: qué falta leer o aceptar antes de avanzar a G1.
```
