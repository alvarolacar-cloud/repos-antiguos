# Outputs marcados `no aplica`

> Outputs que existen conceptualmente en la doctrina del manual original GMB Crush pero **no aplican en el flujo del sistema v2**. Se conservan con su razón documentada para mantener fidelidad y trazabilidad.

---

## Los 5 outputs

### 3.12 — Notes estratégicas por fila

**Original:** anotaciones por fila del Spreadsheet de URL Matrix con contexto operativo (dependencias, riesgos, comentarios).

**Razón `no aplica`:** el sistema v2 no usa Google Sheets. La URL Matrix vive en `clientes/[slug]/cluster/src/data/url-matrix.json`. Las notas estratégicas viven en commits de git (`git log` da trazabilidad mejor que un campo `notes` en spreadsheet).

**Si necesitas equivalente:** mensaje de commit explícito al cambiar la matriz. Ejemplo: `"add LBS-006 — operador autoriza añadir servicio extra Aeroterm post-launch"`.

---

### 10.3 — CMS + capabilities

**Original:** declarar el CMS del cliente (WordPress / Webflow / Wix / custom) + capabilities (schema injection, internal linking automation, reviews integration, tracking stack).

**Razón `no aplica`:** el sistema v2 fija el stack canónico: **Astro 5 + Tailwind v3 + pnpm + Cloudflare Pages**. No hay CMS a evaluar — el cliente NO importa qué CMS tenía antes. Migramos a stack canónico siempre.

**Si el cliente tenía web previa con otro stack:** se considera "web de referencia" para output 16.1 (extracción de tokens visuales), pero NO se mantiene su stack.

---

### 15.13 — Validación datos verificables

**Original:** validar que cada dato del cluster (años de actividad, número de clientes, premios, certificaciones) sea verificable contra fuentes externas.

**Razón `no aplica`:** solapamiento con outputs:
- **9.7 No fake location** (cubre NAP coherente vs realidad).
- **18.4 Auditoría rastros IA** (cubre placeholders sin sustituir).

La validación de datos verificables se hace consolidada en la suite QA, no como output separado.

**Si necesitas equivalente:** ejecutar `scripts/qa-check.ts` audit 9.7 + 18.4 antes del deploy.

---

### 16.3 — Propuesta de Diseño aprobada

**Original:** ciclo mockup Figma → cliente revisa → iteración → aprobación.

**Razón `no aplica`:** el sistema v2 deriva el diseño automáticamente de los tokens extraídos en output 16.1 (Identidad Visual + CSS Base). El cliente provee URL de web de referencia → operador extrae tokens (paleta, typography, spacing, radius, shadows) → Tailwind config → Astro components.

**Si el cliente no provee web ref:** default doctrinal (paleta neutra-profesional según sector + Inter typography + 8px-grid).

**Si el cliente quiere mockup explícito:** decisión operador caso por caso. NO es flujo default.

---

### 17.1 — Acta de Lectura y Autocontraste

**Original:** documento donde la IA lee el material previo, contrasta con la doctrina, y firma "he leído y entendido".

**Razón `no aplica`:** la IA writer del sistema v2 valida coherencia inline durante la generación de contenido (Paso 15 redacción). NO produce acta separada — los auxiliary prompts del Paso 15 ya tienen embedded los constraints doctrinales (web-first, anti-keyword stuffing, schemas correctos, etc.).

**Si necesitas equivalente histórico:** ver `02 Ejecución clientes/2026-05-aeroeterm/00 IA lee teoria/check-1-confirmacion.md` del sistema v1 (en `_legacy/`). Era un check útil cuando la IA leía la teoría manualmente.

---

## Resumen

| Output | Categoría | Conservar histórico |
|---|---|---|
| 3.12 Notes estratégicas | Stack v2 fija convención | No, va en commits git |
| 10.3 CMS + capabilities | Stack v2 fija canónico | No relevante |
| 15.13 Validación datos verificables | Solapamiento con QA suite | Sí, en `qa-check.ts` |
| 16.3 Propuesta diseño aprobada | Sistema deriva tokens | Solo si operador pide mockup |
| 17.1 Acta de lectura | IA valida inline | No relevante |

---

## Implementación

```typescript
// doctrina/no-aplica.ts (constante)
export const NOT_APPLICABLE_OUTPUTS = {
  "3.12": "Notes estratégicas por fila — viven en commits git",
  "10.3": "CMS + capabilities — stack canónico fijado en 17.2",
  "15.13": "Datos verificables — cubierto por audit 9.7 + 18.4",
  "16.3": "Propuesta diseño aprobada — sistema deriva tokens de 16.1",
  "17.1": "Acta de lectura — IA valida inline en Paso 15",
} as const;
```

Cuando un script o test menciona estos output IDs, retorna `{ status: "no aplica", reason: NOT_APPLICABLE_OUTPUTS[id] }` en lugar de procesarlos.

`scripts/qa-check.ts` salta estos 5 outputs explícitamente y NO bloquea por su ausencia.
