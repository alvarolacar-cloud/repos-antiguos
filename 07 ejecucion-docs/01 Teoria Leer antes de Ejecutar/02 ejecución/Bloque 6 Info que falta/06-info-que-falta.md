# Bloque 6 — Info que falta

> **Qué es:** checkpoint asíncrono entre el deploy del cluster web (Bloque 5 cerrado, web LIVE) y la creación del GBP (Bloque 7). Recoge en un solo agregador todos los outputs que llegaron a producción con marcador `⚠ inferido` o `⚠ placeholder`.
>
> **Por qué existe:** la web puede salir LIVE rápido aunque haya datos inferidos por la IA o pendientes del cliente. Pero el GBP **no puede crearse** mientras existan `⚠`, porque Google suspende fichas con NAP falso, fotos genéricas o categorías inventadas. Este bloque es la frontera operativa entre "rápido a producción" y "GBP seguro".

---

## Cómo se llena este bloque

Al cerrar el Bloque 5 (Paso 18 deploy ejecutado, web LIVE), la IA recorre los consolidados de los Bloques 1-5 y agrega aquí todos los outputs con status `⚠ inferido` o `⚠ placeholder`.

**Origen de los `⚠`:**

| Status | Por qué se marcó | Quién lo cierra |
|---|---|---|
| `⚠ inferido` | La IA estimó el valor sin ejecutar la tool externa real (Local Pack, Keyword Research, Google Search) | Operador ejecuta la tool real, valida o corrige el valor |
| `⚠ placeholder` | Input del cliente que no llegó a tiempo (NAP completo, fotos, web de referencia, etc.) | Cliente provee el dato real |

---

## Tabla agregada

> Una fila por cada output con status `⚠`. Heredado de los §8 Outputs Consolidados de los a-docs de los Bloques 1-5.

| Output ID | Output | Status | Valor actual (provisional) | Acción pendiente | Quién | Bloque origen |
|---|---|---|---|---|---|---|
| 1.4 | Full NAP (8 campos) | `⚠ placeholder` | `[email + phone pendiente cliente]` | Cliente confirma email + phone | Cliente | Bloque 1 |
| 1.5 | Planned Primary GBP Category | `⚠ inferido` | `Locksmith` (inferida del nombre) | Abrir Google Maps, extraer categoría más frecuente top 5 Local Pack | Operador | Bloque 1 |
| 1.10 | Direct + Candidate LCAs | `⚠ inferido` | `[10 LCAs estimadas por proximidad]` | Validar con test GEO real (búsqueda desde cada LCA) | Operador | Bloque 1 |
| ... | ... | ... | ... | ... | ... | ... |

> **Plantilla** — al ejecutar el Bloque 6, sustituir las filas de ejemplo por las reales del cluster.

---

## Reglas operativas

### 1. Los `⚠` no paralizan el avance hasta el Bloque 7

Durante Bloques 1-5, la IA puede dejar `⚠ inferido` y `⚠ placeholder` sin bloqueo. La web se construye, se hace QA, se despliega a producción (Paso 18) con esos marcadores presentes. **El cluster sale LIVE**.

### 2. El Bloque 7 (GBP) **sí está bloqueado** hasta que esta tabla quede vacía

El sistema rechaza arrancar el Paso 14 (GBP Creation) si el agregador del Bloque 6 contiene aunque sea una fila. Razón: Google penaliza GBPs con datos no reales y la web del cluster (que es la `Website` declarada en el GBP) tiene que ser source of truth coherente.

### 3. Cómo se cierra cada `⚠`

Cuando se obtiene el dato real:

1. **Actualizar el output original** en el §8 del a-doc del bloque correspondiente (no aquí — esto es solo el agregador).
2. **Promover el status** del output original a `confirmed` o `validated`.
3. **Eliminar la fila** del agregador del Bloque 6.
4. **Si el dato corregido afecta contenido publicado** (ej. NAP en schema, fotos en LBS, descripciones en GeoArticles), disparar **re-ejecución parcial del Paso 18** para re-deploy del cluster con datos actualizados.

### 4. Outputs estructurales vs cosméticos

Conviene distinguir al cerrar `⚠`:

- **Estructurales** (NAP, dominio, GBP categories, schema LocalBusiness, modelo de negocio, fotos del local) → re-deploy obligatorio.
- **Cosméticos** (long-tail keywords secundarias, CTAs, copy de GeoArticles que no afectan schema) → re-deploy opcional (puede esperar al siguiente ciclo de optimización del Paso 19).

### 5. Trigger de paso al Bloque 7

```
SI tabla agregada del Bloque 6 está vacía:
   - Verificar último deploy refleja todos los datos cerrados (no quedó re-deploy pendiente)
   - Desbloquear Bloque 7
   - Arrancar Paso 14 GBP Creation con datos confirmados
SI NO:
   - Listar al operador qué `⚠` siguen abiertos
   - Bloque 7 sigue bloqueado
```

---

## Outputs

**Este bloque no produce outputs nativos.** Es un agregador downstream — refleja el estado de outputs ya producidos en Bloques 1-5. Cuando todos los `⚠` se cierran, el bloque se "vacía" y desbloquea el Bloque 7.

---

## Estado del bloque (operativo)

```
[ ] Tabla agregada poblada (al cerrar Bloque 5)
[ ] Tools externas ejecutadas (Local Pack, Keyword Research, Google Search) → cierre de ⚠ inferido
[ ] Datos del cliente recibidos (NAP completo, fotos, web ref) → cierre de ⚠ placeholder
[ ] Re-deploy ejecutado para cambios estructurales
[ ] Tabla vacía → Bloque 7 desbloqueado
```

---

## Fuente de los `⚠` agregados (referencia)

| Bloque | A-docs | Outputs típicamente con `⚠` |
|---|---|---|
| Bloque 1 Fundamentos | 01a, 02a, 03a | 1.4 NAP (placeholder), 1.5 Primary Category (inferido), 1.6 Additional Categories (inferido), 1.10 LCAs (inferido), 1.13 Preferred CTA (inferido), 1.14 Trust Signals (placeholder) |
| Bloque 2 Arquitectura | 04a, 05a, 06a, 07a | 5.X Specs si dependen de KW research no ejecutado, 6.X Content Architecture si dependen de Local Pack |
| Bloque 3 Priorización | 08a, 09a, 10a | 8.X Priority Score si dependen de Revenue Value / Search Intent inferidos |
| Bloque 4 Automatización | 11a, 12a, 13a | Normalmente sin `⚠` (doctrina pura) |
| Bloque 5 Salida a Mercado | 15a, 16a, 17a, 18a, 19a | 16.1 Identidad Visual (placeholder si cliente no proveyó URL ref) |

---

## Notas

- **Re-deploy parcial vs full:** ver §10 del Paso 18 (criterios para decidir alcance del re-deploy según outputs corregidos).
- **Múltiples ciclos:** este bloque puede ejecutarse N veces si el cliente entrega datos en oleadas. Cada oleada cierra un subset, dispara re-deploy si aplica, y deja la tabla más vacía.
- **Histórico:** se recomienda commitear el estado del agregador antes y después de cada cierre, para tener trazabilidad de qué se inventó y qué se confirmó (auditable).
