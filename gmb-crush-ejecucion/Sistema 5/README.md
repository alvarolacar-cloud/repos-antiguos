# Sistema Ejecutable GMB Crush

Capa operativa para ejecutar el sistema GMB Crush con una IA u operador.

Este pack no sustituye la teoría ni modifica los documentos existentes.  
Añade una capa de ejecución encima del sistema actual.

---

## Objetivo

Convertir el sistema en un flujo ejecutable:

```text
entrada → validación → ejecución → outputs → revisión → gate → siguiente bloque
```

La IA debe saber:

```text
qué leer
qué validar
qué producir
qué bloquear
cuándo avanzar
cuándo publicar la web
cuándo NO crear el GBP
```

---

## Estructura

```text
sistema-ejecutable-gmb-crush/
├── README.md
├── INDICE.md
├── RESUMEN-SISTEMA-CHECKS.md
├── 00-controller/
├── 01-runbook/
├── 02-plantillas/
├── 03-checks/
├── 04-prompts/
└── 05-scripts/
```

---

## Estados permitidos

| Estado | Significado | Permite web | Permite GBP |
|---|---|---:|---:|
| ✅ Validado | Confirmado y usable | Sí | Sí |
| ⚠ Inferido | Razonable pero no confirmado | Sí, si no es crítico | No si afecta GBP |
| ⚠ Placeholder | Temporal o ficticio | Solo si no se publica como verdad | No |
| ⛔ Bloqueado | Falta crítico o contradicción | No | No |
| 🔁 Revisión | Requiere decisión humana | Depende | No |
| N/A | No aplica | Sí | Sí |

---

## Gates

```text
G0 — Teoría leída
G1 — Preflight mínimo
G2 — Bloque ejecutado
G3 — Decisiones y fuentes auditables
G4 — Web Live Ready
G5 — Info faltante agregada
G6 — GBP Safe
G7 — Post-lanzamiento
```

Cada gate devuelve:

```text
PASS
PASS_WITH_WARNINGS
BLOCKED
```

---

## Regla central

```text
La web puede avanzar con ⚠ controlados.
El GBP no puede avanzar con ⚠ críticos.
```
