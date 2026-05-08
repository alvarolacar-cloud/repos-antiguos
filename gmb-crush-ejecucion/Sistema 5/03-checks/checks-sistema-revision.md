# Sistema de Checks y Revisión

## Niveles de revisión

| Nivel | Nombre | Momento |
|---|---|---|
| R0 | Revisión de lectura | Antes de tocar cliente |
| R1 | Revisión de preflight | Después del preflight |
| R2 | Revisión por bloque | Al cerrar cada bloque |
| R3 | Revisión de trazabilidad | Antes de deploy |
| R4 | Revisión Web Live | Antes de publicación |
| R5 | Revisión Info Faltante | Después de deploy |
| R6 | Revisión GBP Safe | Antes de crear GBP |
| R7 | Revisión Post-lanzamiento | 7/30/90 días |

---

## Reglas de decisión

```text
PASS = todos los checks críticos están ✅.
PASS_WITH_WARNINGS = hay ⚠, pero no son críticos.
BLOCKED = hay ⛔ o ⚠ crítico para el gate.
```
