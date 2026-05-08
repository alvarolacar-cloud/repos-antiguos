# G1 — Preflight mínimo

## Cuándo se ejecuta

Inmediatamente después de G0 (Teoría leída) y antes de iniciar Bloque 1. Valida que el cliente tiene los datos mínimos para operar el flujo web-first.

> Equivalente al nivel R1 (Revisión de preflight).

---

## Input requerido

- `CLIENTES/{slug}/00-preflight.md` — preflight del cliente con los 8 campos rellenados.
- `DOCTRINA/03-fuentes.md` — para validar que cada campo declara fuente.

Cada campo del preflight debe llevar uno de estos estados:

```text
✅ Validado
⚠ Inferido
⚠ Placeholder
⛔ Bloqueado
🔁 Revisión
N/A
```

---

## Checks

| Check | Criterio | PASS si |
|---|---|---|
| Business Name | Nombre legal o comercial confirmado | ✅ |
| NAP mínimo | Dirección o servicio territorial declarado coherente con el modelo (SAB / hybrid / brick&mortar) | ✅ o ⚠ Inferido (no crítico web) |
| Main City | Ciudad principal declarada (input de la fórmula `1 + S + 1 + S + A + G·S`) | ✅ |
| Primary Category | Categoría GBP principal declarada y soportada por la doctrina | ✅ |
| GBP Status | `NOT_CREATED` / `CREATED` / `VERIFIED` declarado | ✅ |
| Website URL / dominio | URL final o placeholder controlado | ✅ o ⚠ Placeholder |
| Servicios | Lista de servicios (input para `S` en la fórmula) | ✅ o ⚠ Inferido (debe quedar registrado en `02-pendientes.md`) |
| Cliente confirma web-first | El cliente acepta que primero se publica web y después se trabaja GBP | ✅ |

---

## Resultado

- **PASS** — los 8 campos están en ✅ (o en estado tolerado por la columna PASS si).
- **PASS_WITH_WARNINGS** — Servicios y/o NAP en ⚠ Inferido, todo lo demás en ✅. Avanza a Bloque 1; los ⚠ se acumulan en `CLIENTES/{slug}/02-pendientes.md`.
- **BLOCKED** — falta cualquier campo crítico (Business Name, Main City, Primary Category, GBP Status, web-first confirmado).

---

## Bloqueos automáticos

- Falta Business Name, Main City, Primary Category o GBP Status → BLOCKED.
- Cliente NO confirma web-first → BLOCKED (el sistema solo opera web-first).
- Categoría primaria no existe en el catálogo GBP soportado por la doctrina → BLOCKED.
- Dirección presentada como real cuando el modelo es Service Area Business sin dirección elegible → ⛔ y BLOCKED para GBP (web puede continuar con NAP en ⚠).

---

## Prompt ejecutable

```text
Actúa como validador del Gate G1 (Preflight) del sistema GMB Crush.

Lee:
- CLIENTES/{slug}/00-preflight.md
- DOCTRINA/03-fuentes.md

Para cada uno de los 8 campos del preflight:
1. Business Name
2. NAP mínimo
3. Main City
4. Primary Category
5. GBP Status
6. Website URL / dominio
7. Servicios
8. Cliente confirma web-first

Clasifica como:
✅ Validado / ⚠ Inferido / ⚠ Placeholder / ⛔ Bloqueado / 🔁 Revisión / N/A

Indica para cada uno:
- valor declarado
- fuente (de las 8 válidas)
- si bloquea web
- si bloquea GBP

Reglas:
- No inventes datos que el cliente no haya entregado.
- No marques ✅ algo que no tenga fuente declarada.
- Cualquier ⚠ o ⛔ se exporta a CLIENTES/{slug}/02-pendientes.md.

Devuelve:
1. Tabla de validación de los 8 campos.
2. Lista de faltantes (con responsable: cliente / operador / herramienta).
3. Veredicto: PASS / PASS_WITH_WARNINGS / BLOCKED.
4. Si PASS o PASS_WITH_WARNINGS: declara que los Bloques 1–5 pueden ejecutarse.
5. Si BLOCKED: indica qué falta y a quién pedirlo antes de repetir G1.
```
