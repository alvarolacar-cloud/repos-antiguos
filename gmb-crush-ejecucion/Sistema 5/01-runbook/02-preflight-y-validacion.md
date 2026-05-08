# Runbook 02 — Preflight y validación

## Inputs mínimos

| Campo | Estado |
|---|---|
| Business Name | ⬜ |
| Dirección / NAP mínimo | ⬜ |
| Main City | ⬜ |
| Primary Category | ⬜ |
| GBP Status | ⬜ |
| Website URL / dominio | ⬜ |
| Servicios | ⬜ |
| Zonas / Local Coverage Areas | ⬜ |

---

## Clasificación

| Campo | Si falta | Acción |
|---|---|---|
| Business Name | ⛔ | Pedir cliente |
| Dirección | ⛔ | Pedir cliente |
| Main City | ⛔ | Derivar de dirección o pedir |
| Primary Category | ⛔ | Pedir o inferir con revisión |
| GBP Status | ⛔ | Pedir cliente |
| Website URL | ⚠ | Placeholder permitido web, no GBP |
| Servicios | ⚠ | Inferir con GMB Crush / competidores pendiente |
| LCA | ⚠ | Direct por NAP, Candidate pendiente |

---

## Output

```text
preflight-validado.md
preflight-faltantes.md
```
