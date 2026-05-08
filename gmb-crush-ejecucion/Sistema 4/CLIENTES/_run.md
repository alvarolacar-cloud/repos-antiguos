# _run.md — Punto de entrada del operador

> **Uso:** rellena los 8 campos de abajo y dáselos a la IA. Eso es todo. La IA lee la doctrina internamente y ejecuta sin pedirte nada más hasta que la web esté en producción.

---

## CÓMO ARRANCAR UN CLIENTE NUEVO

### Paso 1 — Copia la plantilla
```bash
cp -r /root/ejecución/CLIENTES/_plantilla-cliente/ /root/ejecución/CLIENTES/YYYY-MM-slug/
```
Ejemplo: `2026-05-aeroeterm`

### Paso 2 — Rellena el preflight
Abre `YYYY-MM-slug/00-preflight.md` y rellena los 8 campos.

### Paso 3 — Lanza a la IA
Dale a la IA este mensaje exacto:

```
Ejecuta el sistema GMB Crush para el cliente en:
/root/ejecución/CLIENTES/YYYY-MM-slug/00-preflight.md
```

La IA hace el resto: lee la DOCTRINA/, ejecuta los Bloques 1-5, vuelca todo en `01-web.md`, agrega los ⚠ en `02-pendientes.md` y espera a que tú / el cliente cierren esa tabla para crear el GBP en `03-gbp.md`.

---

## LO QUE HACE LA IA (sin que tú lo veas)

```
1. Lee DOCTRINA/convenciones.md + flujo.md + fuentes.md
2. Lee DOCTRINA/pasos/01a → 19a (todos los a-docs completos con ejemplos)
3. Lee 00-preflight.md del cliente
4. Ejecuta Bloques 1→5 produciendo los 222 outputs web
5. Vuelca todo en 01-web.md (un solo archivo, secciones por bloque)
6. Agrega todos los ⚠ inferido / ⚠ placeholder en 02-pendientes.md
7. Ejecuta deploy a Cloudflare Pages (web LIVE)
8. Espera a que 02-pendientes.md esté vacío
9. Ejecuta Bloque 7 → vuelca en 03-gbp.md (20 outputs GBP)
```

**La IA NO te pregunta nada entre los pasos 1-7.** Si no tiene un dato, lo marca `⚠` y sigue.

---

## FLUJO POST-DEPLOY (tu trabajo real)

Cuando la web esté LIVE, abre `02-pendientes.md`. Verás una tabla con los datos que faltaban:

| Output ID | Qué falta | Quién lo da |
|---|---|---|
| 1.4 | Teléfono del negocio | Cliente |
| 1.5 | Categoría GBP real | Tú (abres Google Maps) |
| 16.1 | Web de referencia visual | Cliente |

Para cada fila: consigues el dato → lo actualizas en `01-web.md` → borras la fila de `02-pendientes.md`.

Cuando `02-pendientes.md` esté vacío → la IA puede ejecutar `03-gbp.md`.

---

## CLIENTES ACTIVOS

| Cliente | Carpeta | Estado |
|---|---|---|
| AEROETERM | `2026-05-aeroeterm/` | Bloque 1 ejecutado, pendiente migración |
