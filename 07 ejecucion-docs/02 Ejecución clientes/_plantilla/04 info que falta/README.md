# 04 info que falta — Agregador de ⚠

> **Qué pasa aquí:** checkpoint asíncrono entre el deploy del cluster (Bloque 5 cerrado, web LIVE) y la creación del GBP (Bloque 7). Recoge en un solo agregador todos los outputs que llegaron a producción con marcador `⚠ inferido` o `⚠ placeholder`.

---

## Pre-requisito

`03 IA ejecuta web/Bloque 5 Salida a Mercado/` cerrado con web LIVE.

---

## Cómo se llena

Al cerrar el Bloque 5, la IA recorre los consolidados de los Bloques 1-5 del cliente y agrega aquí todos los outputs con status `⚠ inferido` o `⚠ placeholder`.

Plantilla a copiar de:

```
01 Teoria Leer antes de Ejecutar/02 ejecución/Bloque 6 Info que falta/06-info-que-falta.md
```

Renombrar a `06-info-que-falta-cliente.md` y rellenar la tabla con las filas reales del cluster del cliente.

---

## Por qué este bloque existe

- La **web** puede salir LIVE rápido aunque haya `⚠`. El cluster sale a producción con datos provisionales.
- El **GBP** (Bloque 7) **no puede crearse** mientras existan `⚠`, porque Google penaliza fichas con NAP falso, fotos genéricas o categorías inventadas.
- Este bloque es la frontera operativa entre "rápido a producción" y "GBP seguro".

---

## Cómo se cierra cada `⚠`

Para cada fila del agregador:

1. **Obtener el dato real:**
   - `⚠ inferido` → operador ejecuta la tool externa (Local Pack / Keyword Research / Google Search) y obtiene el valor real.
   - `⚠ placeholder` → cliente entrega el dato pendiente (NAP completo, fotos, web ref, etc.).
2. **Actualizar el output original** en `03 IA ejecuta web/Bloque N/...§8 Outputs Consolidados`.
3. **Promover el status** a `confirmed` o `validated`.
4. **Eliminar la fila** del agregador.
5. **Si el dato corregido afecta contenido publicado** (NAP en schema, fotos en LBS, descripciones en GeoArticles) → re-ejecutar Paso 18 deploy parcial.

---

## Trigger de paso al Bloque 7 GBP (`05 IA crea GBP/`)

```
SI tabla agregada vacía:
   - Verificar último deploy refleja todos los datos cerrados
   - Crear estructura interna en `05 IA crea GBP/` (01 Plan / 02 Ejecución / 03 Consolidación)
   - Arrancar Paso 14 GBP Creation con datos confirmados
SI NO:
   - Listar al operador qué `⚠` siguen abiertos
   - `05 IA crea GBP/` sigue bloqueado
```

---

## Salida

Tabla agregada vacía (todos los `⚠` cerrados) + último deploy refleja datos actualizados → desbloquea **`05 IA crea GBP/`** (carpeta hermana al mismo nivel donde la IA arranca el Paso 14 con datos confirmados).
