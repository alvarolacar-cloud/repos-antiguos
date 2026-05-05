# Check 1 — Confirmación de teoría interiorizada

> **Producido por:** IA (Claude)
> **Fecha:** 2026-05-04
> **Estado:** pendiente aprobación operador

---

## 1. Resumen propio de la doctrina

### Qué es el sistema GMB Crush

Un sistema operativo de **14 pasos** para construir clusters web locales SEO + un perfil de Google Business Profile (GBP) sincronizado, para un negocio local con presencia geográfica acotada. El output de un ciclo completo es: una web base publicada en producción + un GBP creado y verificado + tracking activo + un módulo de escalado a sub-clusters geográficos cuando se cumplan triggers de demanda.

### Filosofía web-first

La regla doctrinal central es: **la web base se construye primero (Bloques 1-5), el GBP se crea después (Bloque 7), usando la web ya publicada como source of truth.** No se intenta "crear el GBP rápido para tener presencia local" porque sin web base coherente el GBP queda desconectado y vulnerable a suspensión por Google. El GBP hereda categorías, NAP, servicios y descripción del cluster web ya validado.

### Los 8 bloques en orden

| # | Bloque | Qué produce |
|---|---|---|
| 0 | Preflight | 8 inputs del cliente (5 negocio + 3 credenciales deploy) |
| 1 | Fundamentos | 42 outputs — Pasos 1, 2, 3 (intake, fórmula maestra, matriz base) |
| 2 | Arquitectura | 57 outputs — Pasos 4, 5, 6, 7 (URL rules, page types, contenido, linking) |
| 3 | Priorización | 43 outputs — Pasos 8, 9, 10 (priority score, QA, producción en fases) |
| 4 | Automatización | 41 outputs — Pasos 11, 12, 13 (pseudocódigo, master prompt, SOP final) |
| 5 | Salida a Mercado | 39 outputs — Pasos 15, 16, 17, 18, 19 (redacción, diseño, build, deploy, vigilancia) |
| 6 | Info que falta | 0 outputs nativos — agregador de los `⚠` heredados de Bloques 1-5 |
| 7 | GBP | 20 outputs — Paso 14 (GBP creation & website alignment) |

Total: **242 outputs** (5 marcados `no aplica`: 3.12, 10.3, 15.13, 16.3, 17.1).

### Las 8 fuentes válidas

Organizadas en 4 categorías:

**Categoría 1 — Doctrina (3 fuentes):**
1. `Doctrina GMB Crush` — valor literal del manual.
2. `Arquitectura técnica` — decisión técnica del operador (stack, convenciones, deploy).
3. `Tracking` — datos reales post-launch (GSC, GA4, GBP performance, geo-grid).

**Categoría 2 — Cliente (2 fuentes):**
4. `Cliente preflight` — inputs del cliente (preflight inicial + adicionales durante ejecución sin filtro doctrinal).
5. `Cliente preflight + Doctrina GMB Crush` — doctrina dicta el set válido + cliente declara cuál aplica (ej. estado GBP, modelo negocio).

**Categoría 3 — Tools externas (3 fuentes, todas combinadas con doctrina):**
6. `Doctrina + Local Pack` — Google Maps top 5 competidores + criterio doctrinal.
7. `Doctrina + Keyword research` — Ahrefs/Semrush/KP + criterio doctrinal.
8. `Doctrina + Google Search` — SERP completo + criterio doctrinal.

**Notación especial — Info heredada:** `← X.Y` (no es fuente nueva, indica que el output reutiliza valor de uno upstream sin transformación significativa).

### Los 5 status

- `confirmed` — output con valor real validado (preflight cliente, doctrina aplicada directamente).
- `validated` — fuente externa real ejecutada y verificada.
- `⚠ inferido` — la IA estimó sin ejecutar la tool externa real.
- `⚠ placeholder` — input del cliente pendiente.
- `no aplica` — outputs marcados así en la doctrina; no se ejecutan en el flujo actual.

### Doctrina `⚠` (las 2 situaciones de invento legítimo)

Hay solo 2 situaciones donde la IA produce un valor sin haber ejecutado la fuente canónica:

| Situación | Marcador |
|---|---|
| Input del cliente no entregado | `⚠ placeholder` |
| Decidimos no ejecutar la fuente externa (velocidad/coste) | `⚠ inferido` |

**Reglas operativas:**

1. Los `⚠` **no paralizan los Bloques 1-5**. La construcción avanza, el sitio sale LIVE en Paso 18 con datos provisionales.
2. Al cerrar el Bloque 5 → todos los `⚠` se vuelcan al **Bloque 6 Info que falta** (agregador asíncrono).
3. El **Bloque 7 GBP está bloqueado** hasta que el agregador del Bloque 6 esté vacío. Razón: Google penaliza GBPs con NAP falso, fotos genéricas o categorías inventadas.
4. Cierre de un `⚠`: actualizar output original → promover a `confirmed`/`validated` → eliminar fila del agregador → si afecta contenido publicado, disparar re-deploy parcial.
5. La **fuente del output no cambia** cuando se inventa; lo que cambia es el status. Esto preserva trazabilidad.

### Tools externas y cuándo se usan

| Tool | Pasos donde aplica |
|---|---|
| Google Maps Local Pack | Bloque 1 (1.5, 1.6, 1.9, 1.10, 1.13, 1.14) + Bloque 3 (8.4, 8.6) + Bloque 7 (14.6, 14.10, 14.12, 14.14) |
| Keyword Research (Ahrefs/Semrush/KP) | Bloque 1 (3.4 GeoArticle Topics) + Bloque 3 (8.3, 8.6) + Bloque 7 (14.13) |
| Google Search (SERP qualitative) | Bloque 1 (2.10 Wikipedia URL) |
| Tracking (GSC + GA4 + Rank Tracker + GMB Geo Grid) | Bloque 1 (1.11) + Bloque 5 (Paso 19) + Bloque 7 (14.9, 14.19) |

### Reglas de fidelidad al original (las 7 críticas)

Cuando porto contenido del manual GMB Crush al esqueleto canónico:

1. **Verificación bidireccional** antes de declarar un output: ¿el original lo lista como output del paso? Distinguir "producir" vs "aplicar".
2. **No inventar outputs** que el original no liste.
3. **No robar outputs** de un paso a otro.
4. **No inventar doctrina** (afirmaciones cuantitativas, fórmulas, escalas, reglas no presentes en el original).
5. **No cambiar doctrina** literalmente (alterar valores del original).
6. **No omitir doctrina** literal del original (todos los ejemplos rellenados, ejemplos incorrectos, reglas finales).
7. **No hacer cambios silenciosos** (erratas mantenidas, ambigüedades flagged no resueltas).

---

## 2. Checklist binario

- ✅ Entiendo la diferencia entre `Doctrina GMB Crush` (puro) y `Cliente preflight + Doctrina GMB Crush` (combinación: doctrina dicta el set válido, cliente declara su valor).
- ✅ Sé qué outputs viven en qué bloque (242 outputs distribuidos en 14 pasos del sistema, 8 bloques operativos).
- ✅ Sé qué tools externas se invocan en qué momento (Local Pack en B1+B3+B7; Keyword Research en B1+B3+B7; Google Search en B1; Tracking en B1+B5+B7).
- ✅ Entiendo que el Bloque 6 Info que falta es bloqueante para arrancar Bloque 7 GBP (cero tolerancia a `⚠` antes de crear GBP).
- ✅ Conozco las 7 reglas de fidelidad al original (no inventar doctrina, no arreglar erratas, no resolver ambigüedades silenciosamente, etc.).
- ✅ Sé que `Approved Expansion Areas` (1.11) defaultea a `None` en Phase 1 (E=0 → 0 URLs de expansión); se activa solo si el operador aprueba expansión real, normalmente post-launch con datos del Paso 19.

**Adicionales que verifico:**

- ✅ Esqueleto canónico de a-doc: 4 bloques (I Introducción / II Ejemplo / III Ejecución con §5 + §6 + §7 + §8 / IV Fuentes Internas).
- ✅ Cross-refs externas formato `Paso-NN N.X` (no por sección).
- ✅ La fórmula maestra del Paso 2: `1 + S + 1 + S + A + G×S` (HP + S Service Overviews + 1 GeoHub + S LBS + A Additional Categories + G×S GeoArticles).
- ✅ Defaults doctrinales: G=3 GeoArticles per service, S=5 core services típico.
- ✅ Web-first: el Paso 14 GBP Creation NO se ejecuta hasta tener web LIVE (Paso 18 cerrado) Y Bloque 6 vacío.

---

## 3. Preguntas al operador

He detectado 3 zonas grises que conviene resolver antes de arrancar `01 cliente preflight/`:

### Pregunta 1 — Cliente sin web de referencia (output 16.1)

**Contexto:** el output `16.1 Identidad Visual y CSS Base` (Bloque 5, Paso 16) tiene fuente `Cliente preflight`. Doctrina actual: el cliente provee la URL de su web de referencia y el operador extrae los tokens visuales (colores, typography, spacing, shadows, radius) por inspección visual + DevTools.

**Caso ambiguo:** si el cliente **no tiene web previa** (negocio nuevo, sin presencia digital), ¿qué pasa con 16.1?

Opciones:
- **A)** Marcar `⚠ placeholder` y bloquear el deploy hasta que cliente provea referencia visual (logo, colores corporativos, etc.). Iría al Bloque 6 Info que falta.
- **B)** Operador elige tokens neutros del sector (ej. paleta blanca/azul para servicios profesionales) y marcar como `Arquitectura técnica` (decisión técnica del operador).
- **C)** Default doctrinal: tokens estándar del sistema GMB Crush (sin colores propios, tipografía Inter, spacing 8px-grid).

**Mi inclinación:** A — coherente con la doctrina "cliente provee, operador extrae". Pero si el operador prefiere otra alternativa, la documentamos.

### Pregunta 2 — Workflow de creación del Bloque 7 dentro de `03 IA ejecuta web/`

**Contexto:** según el README de `03 IA ejecuta web/`, la estructura del Bloque 7 GBP "se crea aquí cuando aplique" (es decir, al desbloquearse desde el Bloque 6).

**Pregunta:** ¿la IA crea físicamente las 3 subcarpetas (`01 Plan Ejecución/` + `02 Ejecución/` + `03 Consolidación Outputs/`) cuando arranca el Paso 14, o prefieres que existan vacías desde el principio para coherencia visual?

**Mi inclinación:** crear dinámicamente cuando arranca Paso 14 — coherente con el flujo "Bloque 7 está bloqueado hasta tener Bloque 6 vacío", evita falsa expectativa de que ya se puede ejecutar.

### Pregunta 3 — Re-deploy parcial vs full en Bloque 6

**Contexto:** la doctrina del Bloque 6 dice que cuando se cierra un `⚠` que afecta contenido publicado (NAP, fotos, schema), se dispara "re-deploy parcial". También menciona "estructurales vs cosméticos" como criterio.

**Pregunta:** ¿quién decide qué outputs son "estructurales" vs "cosméticos"? Conviene tener una tabla doctrinal explícita en el `06-info-que-falta.md` template, o lo dejamos a criterio operador caso por caso.

**Mi inclinación:** tabla doctrinal explícita para evitar inconsistencias. Outputs estructurales típicos: 1.4 NAP, 1.5/1.6 categorías GBP, 14.4 modelo negocio, 14.11 fotos. Outputs cosméticos: 1.13 CTA, 1.14 trust signals, descripción larga GeoArticles. Pero esto es decisión del operador.

---

## 4. Respuestas del operador

### Respuesta a P1 — Cliente sin web de referencia (output 16.1)

**Resolución:** Opción A — `⚠ placeholder`. Si el cliente no provee URL de web de referencia, output 16.1 queda como `⚠ placeholder` y se vuelca al Bloque 6 Info que falta para que el cliente entregue referencia visual antes de crear el GBP.

### Respuesta a P2 — Carpeta del Bloque 7 GBP

**Resolución:** El Bloque 7 GBP **no vive dentro de `03 IA ejecuta web/`** (esa carpeta es solo Bloques 1-5 de la web). El Bloque 7 vive en una **carpeta hermana al mismo nivel** llamada **`05 IA crea GBP/`**, después de `04 info que falta/`. Estructura final del flujo cliente:

```
02 Ejecución clientes/
├── 00 IA lee teoria/
├── 01 cliente preflight/
├── 02 IA valida ejecutar/
├── 03 IA ejecuta web/         ← Bloques 1-5 (web LIVE)
├── 04 info que falta/    ← agregador de ⚠
└── 05 IA crea GBP/               ← Bloque 7 (se llena cuando 04 esté vacío)
```

### Respuesta a P3 — Re-deploy parcial vs full en Bloque 6

**Resolución:** Sin doctrina previa. Cuando llega un dato real, simplemente se actualiza el output. Si el dato afecta contenido publicado, se re-deploya. Acción directa caso por caso, sin clasificación previa de outputs estructurales vs cosméticos.

---

## 5. Estado del check

- ✅ Resumen de doctrina producido (sección 1).
- ✅ Checklist binario completo (sección 2).
- ✅ 3 preguntas planteadas y respondidas (secciones 3 + 4).
- ☐ Aprobación final operador.

Una vez aprobado → desbloquear `01 cliente preflight/` para que el cliente entregue los 8 inputs del preflight.
