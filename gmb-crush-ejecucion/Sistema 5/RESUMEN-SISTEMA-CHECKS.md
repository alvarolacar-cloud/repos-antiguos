# Resumen del Sistema de Checks y Revisión

## Capas del sistema de revisión

```text
1. Estados por output
2. Criticidad por faltante
3. Gates de avance
4. Reviews por momento del proyecto
```

---

## 1. Estados por output

| Estado | Qué significa |
|---|---|
| ✅ Validado | Dato confirmado y usable. |
| ⚠ Inferido | Dato razonable pero no confirmado. |
| ⚠ Placeholder | Dato temporal o ficticio. |
| ⛔ Bloqueado | Falta crítica o contradicción. |
| 🔁 Revisión | Necesita decisión humana u operador. |
| N/A | No aplica. |

---

## 2. Criticidad

| Tipo | Bloquea web | Bloquea GBP |
|---|---:|---:|
| WEB_CRITICAL | Sí | Sí |
| GBP_CRITICAL | No necesariamente | Sí |
| CONTENT_RISK | Depende | Sí |
| TECHNICAL | Depende | Depende |
| ADVISORY | No | No |

---

## 3. Gates

| Gate | Decide |
|---|---|
| G0 | Si la IA puede empezar |
| G1 | Si el preflight permite ejecutar |
| G2 | Si un bloque puede cerrarse |
| G3 | Si decisiones/fuentes son auditables |
| G4 | Si la web puede publicarse |
| G5 | Si la info faltante está agregada |
| G6 | Si el GBP puede crearse |
| G7 | Si post-lanzamiento está activo |

---

## 4. Reviews

| Review | Momento |
|---|---|
| R0 | Antes de tocar cliente |
| R1 | Después del preflight |
| R2 | Al cerrar cada bloque |
| R3 | Antes de deploy |
| R4 | Después de deploy |
| R5 | Antes de GBP |
| R6 | 7/30/90 días post-lanzamiento |

---

## Regla final

```text
Web LIVE puede avanzar con ⚠ controlados.
GBP SAFE no puede avanzar con ⚠ críticos.
```
