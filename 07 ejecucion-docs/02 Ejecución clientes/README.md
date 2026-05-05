# 02 Ejecución clientes

> **Qué pasa aquí:** una carpeta por cada cliente real al que se le ejecuta el sistema GMB Crush. Cada cliente tiene su propio espacio de trabajo aislado.

---

## Estructura

```
02 Ejecución clientes/
├── _plantilla/                    ← TEMPLATE (no tocar — copiar para cada cliente nuevo)
│   ├── 00 IA lee teoria/
│   ├── 01 cliente preflight/
│   ├── 02 IA valida ejecutar/
│   ├── 03 IA ejecuta web/
│   ├── 04 info que falta/
│   └── 05 IA crea GBP/
│
├── 2026-05-aeroterm/              ← carpeta por cliente con fecha de arranque
│   ├── 00 IA lee teoria/
│   │   ├── README.md (heredado de plantilla)
│   │   └── check-1-confirmacion.md (producido por la IA)
│   ├── 01 cliente preflight/
│   │   └── 00preflight-cliente.md (rellenado por el cliente)
│   ├── 02 IA valida ejecutar/
│   │   └── precheck-cliente.md (producido por la IA)
│   ├── 03 IA ejecuta web/        (Bloques 1-5 con valores reales)
│   ├── 04 info que falta/
│   │   └── 06-info-que-falta-cliente.md (agregador de ⚠)
│   └── 05 IA crea GBP/
│
└── 2026-06-cerrajeros-mad24/      ← otro cliente
    └── ...
```

---

## Cómo crear un cliente nuevo

1. **Copiar la plantilla.** En la raíz de `02 Ejecución clientes/`, copia la carpeta `_plantilla/` y renómbrala con el patrón `[YYYY-MM]-[slug-cliente]/` (ej. `2026-05-aeroterm/`).
2. **Arrancar `00 IA lee teoria/`.** La IA lee la teoría completa y produce `check-1-confirmacion.md` dentro de esta carpeta del cliente.
3. **Seguir el flujo.** `01 → 02 → 03 → 04 → 05` según los READMEs heredados de la plantilla en cada subcarpeta.

---

## Convención de nombres

`[YYYY-MM]-[slug-cliente]/`

- **YYYY-MM:** año y mes en que arranca el ciclo del cliente. Útil para ordenar cronológicamente.
- **slug-cliente:** kebab-case sin espacios ni tildes. Ej. `aeroterm`, `cerrajeros-mad24`, `clinica-vet-velazquez`.

Ejemplos válidos:
- `2026-05-aeroterm/`
- `2026-06-cerrajeros-mad24/`
- `2027-01-clinica-vet-velazquez/`

---

## Reglas

1. **Nunca tocar `_plantilla/`** — es el template canónico. Si necesitas cambiar algo de la plantilla, hazlo deliberadamente y con commit explicativo (ej. "actualizar plantilla — añadir paso X").
2. **Una carpeta = un cliente.** No mezclar ejecuciones de varios clientes en la misma carpeta.
3. **Aislamiento total.** Cada cliente tiene su preflight, sus checks, sus consolidados, sus `⚠`. Nada se comparte entre clientes.
4. **Cliente con ciclo cerrado.** Cuando un cliente termina su Bloque 7 (GBP creado y verificado), su carpeta puede archivarse. *(Mejora futura: mover a `clientes-terminados/`.)*

---

## Estado actual de clientes

*(Esta sección se actualiza al arrancar/cerrar cada cliente.)*

| Cliente | Fecha arranque | Estado | Bloque actual |
|---|---|---|---|
| *(ninguno todavía)* | — | — | — |
