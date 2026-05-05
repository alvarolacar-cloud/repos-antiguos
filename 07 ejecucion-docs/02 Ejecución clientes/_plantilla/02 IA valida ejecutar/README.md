# 02 IA valida ejecutar — Validación de viabilidad

> **Qué pasa aquí:** la IA lee el preflight rellenado y produce un doc go/no-go que explica si puede ejecutar y con qué nivel de confianza por output.

---

## Pre-requisito

`01 cliente preflight/00preflight-cliente.md` rellenado completo (8 inputs).

---

## Qué hace la IA

### 1. Validar inputs del preflight

Para cada uno de los 8 campos:

- ☐ ¿Está rellenado?
- ☐ ¿Tiene formato válido? (ej. NAP con CP, dominio canónico HTTPS+www+trailing, modelo GBP en uno de los 5 estados doctrinales)
- ☐ ¿Las 3 credenciales están confirmadas en entorno seguro?

Si algún campo falta o tiene formato inválido → **STOP**, devolver al operador para que el cliente complete.

### 2. Mapeo upstream → downstream

Para cada uno de los 242 outputs del sistema, la IA proyecta su status final:

- ✅ `confirmed` — se puede resolver con la info del preflight + doctrina + tool ejecutable.
- ⚠ `⚠ inferido` — depende de tool externa (Local Pack / Keyword Research / Google Search) que la IA no va a ejecutar en esta corrida → marcar inferido.
- ⚠ `⚠ placeholder` — input cliente pendiente más allá del preflight (ej. fotos reales, web de referencia).
- 🚫 `no aplica` — outputs marcados así en doctrina (10.3 CMS, 16.3 Propuesta diseño, etc.).

### 3. Plan de tools externas

Lista de las tools que la IA va a ejecutar **realmente** en esta corrida (no inferir):

- ☐ Google Maps Local Pack — qué ciudades + qué categorías.
- ☐ Keyword Research (Ahrefs / Semrush / Google KP) — qué core services.
- ☐ Google Search — qué queries.

Y las que **NO** va a ejecutar (quedan como `⚠ inferido` para cerrar después en el Bloque 6 Info que falta).

### 4. Plan de ejecución

- Estimación de outputs por bloque con su status proyectado.
- Identificación de bloqueos críticos (ej. NAP incompleto, GBP suspendido, dominio inexistente).
- Tiempo estimado de cada bloque.

---

## Qué entrega la IA

Un doc en esta carpeta — `precheck-cliente.md` — con:

1. **Decisión: GO / NO-GO** + razón.
2. **Tabla outputs proyectados:** cuántos `confirmed`, cuántos `⚠ inferido`, cuántos `⚠ placeholder`, cuántos `no aplica`.
3. **Plan de tools externas** (lo que ejecuto vs lo que infiero).
4. **Bloqueos detectados** (si los hay) + plan de resolución.
5. **Estimación temporal** de Bloques 1-5 (ejecución web) + Bloque 6 (cierre de ⚠) + Bloque 7 (GBP).

---

## Salida

`precheck-cliente.md` con decisión **GO** aprobada por el operador → desbloquea `03 IA ejecuta web/`. Si **NO-GO**, volver a `01 cliente preflight/` con la lista de gaps.
