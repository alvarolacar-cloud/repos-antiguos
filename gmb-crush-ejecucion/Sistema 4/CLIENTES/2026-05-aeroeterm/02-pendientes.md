# 02-pendientes.md — AEROETERM

> **Web LIVE:** `https://www.aeroeterm.com/` desde 2026-05-04
> **Bloqueo real del GBP:** solo la Sección A. Cuando la Sección A esté vacía → ejecutar `03-gbp.md`.

---

## Sección A — Bloqueantes para GBP (3 filas)

> Estos son los únicos datos que Google penaliza si están mal o ausentes en el GBP.
> **Cuando esta sección esté vacía:** di a la IA "ejecuta 03-gbp.md para aeroeterm".

| # | Output ID | Output | Status | Valor provisional | Acción | Quién |
|---|---|---|---|---|---|---|
| A1 | 1.4 | Full NAP — Teléfono | ⚠ placeholder | `[teléfono pendiente]` visible en web | Cliente entrega phone real (`+34 9XX XXX XXX`) | Cliente |
| A2 | 1.4 | Full NAP — Email | ⚠ placeholder | `contacto@aeroeterm.com` (propuesto) | Cliente confirma email real | Cliente |
| A3 | — | Fotos reales para GBP | ⚠ placeholder | sin fotos | Cliente entrega pack mínimo: logo + 1 exterior local + 3-5 trabajos antes/después | Cliente |

> ⚠ **Nota:** si el cliente solo entrega teléfono, se cierra A1. Si además confirma email, A2. Con A1+A2+A3 cerrados el GBP se puede crear aunque todas las filas de Sección B sigan abiertas.

---

## Sección B — Mejoras web (no bloquean GBP)

> Estos datos mejoran la web y el scoring interno, pero **no impiden crear el GBP**.
> Se cierran de forma asíncrona — el cliente o el operador los van cerrando a su ritmo.

| # | Output ID | Output | Status | Valor provisional | Acción | Quién |
|---|---|---|---|---|---|---|
| B1 | 1.2 | Domain canónico | ⚠ placeholder | `aeroeterm.com` (propuesto) | Cliente confirma o registra dominio | Cliente |
| B2 | 1.10 | Direct LCAs | ⚠ inferido | `Lista, Salamanca` (inferido CP 28002) | Validar barrio + distrito real con catastro o Google Maps | Operador |
| B3 | 1.10 | Candidate LCAs (test GEO) | ⚠ inferido | 8 LCAs estimadas | Validar con test GEO real | Operador |
| B4 | 1.14 | Trust Signals reales | ⚠ placeholder | `[X años · garantía 2 años · financiación 0%]` | Cliente entrega: años actividad, certificaciones, garantía concreta | Cliente |
| B5 | 3.4 | GeoArticle Topics | ⚠ inferido | 15 topics razonables del sector | Ejecutar Keyword Research real (Ahrefs/Semrush) | Operador |
| B6 | 8.2 | Revenue Value (R) | ⚠ inferido | scores estimados | Cliente entrega ticket medio + margen | Cliente + Operador |
| B7 | 8.3 | Search Intent (I) | ⚠ inferido | scores estimados | Keyword Research → % queries transaccionales | Operador |
| B8 | 8.6 | Competition Gap (C) | ⚠ inferido | scores estimados | Ahrefs DR/UR top 10 SERP | Operador |
| B9 | 15.9 | Contacto — Horario | ⚠ placeholder | `Horario: [pendiente cliente]` | Cliente entrega horario laboral | Cliente |
| B10 | 15.13 | Marcadores en copy | placeholder visible | `[X años]`, `[teléfono]`, `[email]` | Sustituir cuando lleguen datos (automático al cerrar A1, A2, B4) | Operador |
| B11 | 16.1 | Identidad Visual y CSS | ⚠ placeholder | tokens neutros (azul + Inter) | Cliente entrega URL de web referencia → extraer tokens → re-deploy | Cliente |
| B12 | 18.1 | Alt imágenes hero | ⚠ menor | alt placeholder | Generar alt descriptivos cuando lleguen fotos reales | Operador |

---

## Cómo cerrar un pendiente

1. Consigues el dato real
2. Actualizas en `01-web.md` → status a `confirmed` / `validated`
3. Borras la fila de esta tabla
4. Si afecta contenido publicado (NAP, identidad visual): **re-deploy**

**Re-deploy SI:** 1.2 dominio · 1.4 NAP · 1.14 trust signals · 16.1 identidad visual
**Re-deploy NO:** scores 8.2/8.3/8.6 · 3.4 topics · alt images (esperan fotos)

---

## Histórico de cierres

| Fecha | Output cerrado | Antes | Después | Re-deploy |
|---|---|---|---|---|
| — | — | — | — | — |

---

## Estado

```
Sección A: 3/3 abiertos → GBP bloqueado
Sección B: 12/12 abiertos → mejoras pendientes

Para desbloquear GBP: vaciar Sección A (mínimo viable: A1 + A2 + A3)
```
