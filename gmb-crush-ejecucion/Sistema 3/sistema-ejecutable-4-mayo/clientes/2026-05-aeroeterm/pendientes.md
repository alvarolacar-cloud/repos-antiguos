# Pendientes — aeroeterm

> **Generado:** 2026-05-05T01:35:51.375Z
> **Total pendientes:** 10

> ⚠ Mientras esta tabla NO esté vacía, **el Bloque 7 GBP está bloqueado**.
> La web SÍ puede salir LIVE con estos pendientes (saldrán visibles en HTML como placeholders).

---

## Tabla de pendientes

| Output | Nombre | Status | Valor actual | Acción | Quién |
|---|---|---|---|---|---|
| 1.2 | Website URL / Canonical Domain | ⚠ placeholder | `https://www.aeroeterm.com/` | Cliente entrega dato real | Cliente |
| 1.4 | Full NAP (8 campos) | ⚠ placeholder | `{"name":"AEROETERM","street":"Gomez Ortega 3","city":"Madrid…` | Cliente entrega dato real | Cliente |
| 1.5 | Planned Primary GBP Category | ⚠ inferido | `Bathroom remodeler` | Operador ejecuta tool real (Local Pack / KW Research / Catastro) | Operador |
| 1.6 | Planned Additional GBP Categories | ⚠ inferido | `[{"category":"Tile contractor","needs_page":true,"page_slug"…` | Operador ejecuta tool real (Local Pack / KW Research / Catastro) | Operador |
| 1.9 | Servicios principales | ⚠ inferido | `[{"slug":"reforma-integral-bano","name":"Reforma integral de…` | Operador ejecuta tool real (Local Pack / KW Research / Catastro) | Operador |
| 1.10 | Direct + Candidate LCAs | ⚠ inferido | `{"direct":["Lista","Salamanca"],"candidate":["Chamberí","Alm…` | Operador ejecuta tool real (Local Pack / KW Research / Catastro) | Operador |
| 1.13 | Preferred CTA | ⚠ inferido | `Solicitar presupuesto` | Operador ejecuta tool real (Local Pack / KW Research / Catastro) | Operador |
| 1.14 | Trust Signals | ⚠ placeholder | `["+10 años de experiencia","Presupuesto sin compromiso","Gar…` | Cliente entrega dato real | Cliente |
| 3.4 | GeoArticle Topics | ⚠ inferido | `[{"service_slug":"reforma-integral-bano","topic_slug":"cuant…` | Operador ejecuta tool real (Local Pack / KW Research / Catastro) | Operador |
| 16.1 | Identidad Visual y CSS Base (design tokens) | ⚠ placeholder | `{"color_primary":"#0A4C8C","color_primary_50":"#E8F0F9","col…` | Cliente entrega dato real | Cliente |

---

## Cómo cerrar un pendiente

1. Obtener el dato real (cliente entrega o operador ejecuta tool)
2. Editar `outputs.json` → actualizar `value`, cambiar `status` a `confirmed`/`validated`
3. Actualizar `source` con la fecha y prueba real
4. Re-ejecutar `qa-check` y `generate-pendientes`
5. Si afecta HTML publicado → re-deploy
