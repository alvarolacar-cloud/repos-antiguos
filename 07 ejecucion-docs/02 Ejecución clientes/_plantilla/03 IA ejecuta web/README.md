# 03 IA ejecuta web — La IA ejecuta el sistema (Bloques 1-5)

> **Qué pasa aquí:** la IA recorre los Bloques 1-5 produciendo outputs reales del cliente. Réplica de la estructura teórica de `02 ejecución/` pero con valores reales (no plantillas).

---

## Pre-requisito

`02 IA valida ejecutar/precheck-cliente.md` con decisión **GO**.

---

## Estructura interna esperada

Réplica de `01 Teoria Leer antes de Ejecutar/02 ejecución/` (Bloques 1-5) adaptada al cliente:

```
03 IA ejecuta web/
├── Bloque 1 Fundamentos/
│   ├── 01 Plan Ejecución/      (heredado de teoría — referencia, no se reescribe)
│   ├── 02 Ejecución/            (a-docs con §8 Outputs Consolidados rellenos con valores cliente)
│   └── 03 Consolidación Outputs/ (consolidado del bloque con valores reales)
│
├── Bloque 2 Arquitectura/
├── Bloque 3 Priorización/
├── Bloque 4 Automatización/
└── Bloque 5 Salida a Mercado/
```

> **Nota:** el `Bloque 0 Preflight` vive en `01 cliente preflight/`. El `Bloque 6 Info que falta` vive en `04 info que falta/`. El `Bloque 7 GBP` vive en `05 IA crea GBP/`. Esta carpeta solo contiene Bloques 1-5 (la web).

---

## Cómo ejecuta la IA

Para cada bloque:

1. Lee el plan-ejecución teórico (`01 Teoria Leer antes de Ejecutar/02 ejecución/Bloque N/01 Plan Ejecución/`).
2. Ejecuta el a-doc del paso (`02 Ejecución/`) produciendo:
   - §6 Obtención de cada output (decisión + cómo obtenerlo).
   - §8 Outputs Consolidados con **valores reales del cliente** (no plantillas).
3. Cierra con el consolidado del bloque (`03 Consolidación Outputs/`).
4. Verifica condiciones de paso al siguiente bloque (ver `00 convenciones/01flujo-ejecucion.md`).

---

## Reglas de status durante ejecución

Aplicar la doctrina §2 Reglas 3+4 de `00convenciones.md`:

- `confirmed` — output con valor real validado (cliente o doctrina).
- `validated` — output con tool externa ejecutada y validada.
- `⚠ inferido` — la IA estimó sin ejecutar la tool (decidido en precheck). **No paraliza Bloques 1-5.**
- `⚠ placeholder` — input del cliente pendiente. **No paraliza Bloques 1-5.**
- `no aplica` — outputs marcados así en doctrina.

---

## Hito crítico: Paso 18 Deploy

Al cerrar Bloque 5 → Paso 18 hace push a producción. **El sitio sale LIVE aunque queden `⚠`** (esa es la doctrina actual).

Tras el deploy → todos los outputs con `⚠ inferido` o `⚠ placeholder` se vuelcan al `04 info que falta/` para cerrarlos.

---

## Salida

5 carpetas de bloque cerradas con consolidados rellenos + sitio LIVE en producción → desbloquea `04 info que falta/`. El GBP del cliente (Bloque 7) se ejecuta después en `05 IA crea GBP/`, una vez `04 info que falta/` esté vacío.
