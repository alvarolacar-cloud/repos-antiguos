# Runbook 04 — Agregar info faltante Bloque 6

## Qué agrega

```text
⚠ inferidos
⚠ placeholders
⛔ bloqueos
claims pendientes
datos cliente pendientes
datos técnicos pendientes
datos GBP pendientes
```

---

## Clasificación

| Tipo | Descripción | Bloquea web | Bloquea GBP |
|---|---|---:|---:|
| WEB_CRITICAL | Rompe publicación web | Sí | Sí |
| GBP_CRITICAL | Web puede vivir, GBP no | No | Sí |
| CONTENT_RISK | Puede inducir claim falso | Sí si visible | Sí |
| TECHNICAL | Build/hosting/schema/form | Depende | Depende |
| ADVISORY | Mejora recomendada | No | No |

---

## Output

```text
info-faltante-master.md
info-faltante-gbp.md
info-faltante-web.md
```
