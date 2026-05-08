# G2 — Plan presentado (Fase 2 Intro)

## Cuándo se ejecuta

Al cierre de **Fase 2 (Intro)**, después de que la IA haya leído el preflight (Fase 1 PASS por G1) y antes de gastar tokens en Fase 3 (Datos).

> Es un gate **blando**: si confías en la IA y el preflight es claro, puedes saltarlo y dejar que pase a Fase 3 sin confirmación.

---

## Input requerido

- `CLIENTES/{slug}/outputs.json` con los 13 outputs Fase 1 ya rellenos (G1 PASS).
- `CLIENTES/{slug}/00-preflight.md` (referencia para validar coherencia con la Intro).
- (Opcional) `CLIENTES/{slug}/INTRO.md` con el plan que la IA presenta.

---

## Checks

| Check | Criterio | PASS si |
|---|---|---|
| Cliente identificado | La IA cita Business Name (1.1) en la Intro | Sí |
| Categoría primaria | La IA propone una hipótesis de categoría primaria | Sí |
| Main City | La IA cita Main City derivada del NAP (1.4) | Sí |
| Servicios core | La IA propone S inicial (la lista exacta sale en Fase 3) | Hipótesis presentada |
| Plan de fases | La IA confirma que ejecutará Fases 3→4→5 sin pedir más datos al operador | Sí |
| Riesgos detectados | La IA reporta cualquier ambigüedad del preflight (NAP incompleto, web ref no provista, etc.) | Reportados o "ninguno" |

---

## Resultado

- **PASS** — Intro presentada con los 6 puntos y el operador NO la corrige.
- **PASS_WITH_WARNINGS** — Intro presentada, operador hace ajustes menores que la IA absorbe.
- **BLOCKED** — el operador detecta una hipótesis crítica errónea (ej. categoría primaria mal entendida) y la IA debe re-leer el preflight.

---

## Bloqueos automáticos

- La IA propone una hipótesis que contradice el preflight (ej. asume categoría distinta de la declarada por el cliente) → BLOCKED.
- La IA pide al operador datos adicionales que NO están en el preflight de 8 campos → BLOCKED (la IA debe inferir o marcar `⚠`, no pedir).
- La IA dice "no puedo continuar sin X" para cualquier dato no operacional → BLOCKED.

---

## Prompt ejecutable

```text
Actúa como evaluador del Gate G2 (Plan presentado) del sistema GMB Crush v2 por fases.

Lee:
- CLIENTES/{slug}/00-preflight.md
- CLIENTES/{slug}/outputs.json (Fase 1 PASS)
- (Opcional) CLIENTES/{slug}/INTRO.md o el mensaje del chat con la Intro

Verifica que la Intro de la IA cubre los 6 puntos:
1. Cliente identificado (cita Business Name 1.1).
2. Hipótesis de categoría primaria.
3. Main City (de NAP 1.4).
4. Servicios core asumidos (hipótesis basada en categoría).
5. Plan de fases declarado (Fases 3→4→5 sin más input).
6. Riesgos del preflight (o "ninguno").

Verifica además:
- Coherencia con el preflight (no contradice campos declarados).
- No pide al operador datos fuera del preflight de 8 campos.

Devuelve:
1. Lista de los 6 puntos con cobertura (✅ / ⚠ / ❌).
2. Coherencia con preflight (✅ / ⚠ / ❌).
3. Veredicto: PASS / PASS_WITH_WARNINGS / BLOCKED.
4. Si PASS: confirma que se puede proceder a Fase 3 (Datos).
5. Si BLOCKED: indica qué punto falla y la corrección esperada.
```
