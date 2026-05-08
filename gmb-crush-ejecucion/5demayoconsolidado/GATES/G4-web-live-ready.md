# G4 — Web Live Ready

## Cuándo se ejecuta

Al cierre de Bloque 5 (Salida a Mercado), antes del Build (Paso 17) y del Deploy (Paso 18). G4 es el gate **pre-build doctrinal + pre-publicación técnica**: si pasa, la web puede salir LIVE incluso con ⚠ controlados; el GBP queda explícitamente fuera de este gate.

> Equivalente al nivel R4 (Revisión Web Live).

---

## Input requerido

- `CLIENTES/{slug}/outputs.json` con los 6 docs canónicos pre-build:
  1. URL Matrix
  2. Page Type Map
  3. Internal Linking Plan
  4. Content Pack (briefs por URL)
  5. Schema Map
  6. Outputs Consolidados §8 (Source + Status)
- `CLIENTES/{slug}/01-bloque-5/` — artefactos de redacción, diseño y QA.
- `TESTS/test-doctrinal.md` — score doctrinal pre-build (≥90 = PASS).
- `TESTS/pack-auditoria-web-construida.md` — auditoría de los 6 docs.
- `CLIENTES/{slug}/02-pendientes.md` — para verificar que ningún ⚠ es WEB_CRITICAL.
- Build output (sitemap, robots, schema embebido) y URL Matrix definitiva.

---

## Checks

| Check | Criterio | PASS si |
|---|---|---|
| Test doctrinal | `TESTS/test-doctrinal.md` aplicado al cluster | Score ≥ 90 |
| Pack auditoría pre-build | `TESTS/pack-auditoria-web-construida.md` aplicado | PASS |
| Bloqueos automáticos doctrinales | Ninguno disparado (ver lista en `test-doctrinal.md`) | 0 |
| URL Matrix completa | Todas las URLs derivadas de `1 + S + 1 + S + A + G·S` declaradas | Sí |
| Build pasa | El cluster compila sin errores | Sí |
| Rutas existen | Cada URL de la URL Matrix responde en build | 100% |
| Canonicals correctos | Cada URL declara canonical hacia sí misma | 100% |
| Sitemap correcto | `sitemap.xml` lista exactamente las URLs de la URL Matrix | Sí |
| Robots correcto | `robots.txt` no bloquea producción | Sí |
| Schema válido | JSON-LD embebido por Page Type, sin datos inventados | Sí |
| Formularios | `/contacto/` y captura de leads funcionan | Sí |
| Teléfono visible | Si se publica, es real y confirmado | Sí o N/A |
| Mobile usable | El cluster es navegable en mobile | Sí |
| No claims falsos | Reseñas, rating, años, precios, garantías solo si Source confirmada | Sí |
| No rastros IA | Sin tokens visibles, sin "como modelo de lenguaje", sin lorem ipsum | Sí |

---

## Resultado

- **PASS** — score doctrinal ≥ 90, pack auditoría PASS, 0 bloqueos automáticos, build limpio. La web puede ir LIVE.
- **PASS_WITH_WARNINGS** — score 75–89 con ajustes menores resueltos *o* ⚠ en `02-pendientes.md` clasificados como ADVISORY / CONTENT_RISK no bloqueante. La web puede ir LIVE con ⚠ documentados; el GBP NO se autoriza por este gate.
- **BLOCKED** — score < 75, pack auditoría FAIL, bloqueos automáticos disparados, build roto, o claim publicable sin Source.

---

## Bloqueos automáticos

Heredados de `TESTS/test-doctrinal.md`:

- URL Matrix con LCAs sin aprobación documentada.
- Page Type Map mezcla Service Overview y LBS.
- Content Pack convierte GeoArticles en landings.
- URL Matrix sin GeoHub.
- Internal Linking rompe jerarquía padre/hijo.
- Schema Map asigna schema genérico a todas las páginas.
- Additional Category sin soporte en Page Type Map ni Content Pack.
- Output 1.6 declara categoría GBP sin respaldo en URL Matrix.
- Content Pack declara ubicación física inventada.
- URLs en cualquier doc que no existen en la URL Matrix.

Específicos de Web Live:

- Build no compila → BLOCKED.
- Sitemap no coincide con URL Matrix → BLOCKED.
- Schema embebe datos inventados (rating, reviews, address) → BLOCKED.
- Formulario `/contacto/` no envía → BLOCKED.
- Teléfono visible no confirmado → BLOCKED.
- Cualquier ⚠ clasificado como WEB_CRITICAL en `02-pendientes.md` → BLOCKED.

---

## Prompt ejecutable

```text
Actúa como QA del Gate G4 (Web Live Ready) del sistema GMB Crush.

Lee:
- CLIENTES/{slug}/outputs.json (6 docs canónicos)
- CLIENTES/{slug}/01-bloque-5/
- CLIENTES/{slug}/02-pendientes.md
- TESTS/test-doctrinal.md (aplicado al cluster)
- TESTS/pack-auditoria-web-construida.md (aplicado al cluster)
- Build output (sitemap, robots, schema, rutas)

Audita en tres capas:

1. DOCTRINAL (pre-build)
   - Aplica el score de TESTS/test-doctrinal.md.
   - Devuelve la puntuación 0–100.
   - Lista bloqueos automáticos disparados.
   - Aplica TESTS/pack-auditoria-web-construida.md (6 docs canónicos).

2. TÉCNICA (build)
   - Build pasa.
   - Cada URL de la URL Matrix existe en el build.
   - Canonicals correctos.
   - sitemap.xml = URL Matrix.
   - robots.txt no bloquea producción.
   - Schema válido por Page Type, sin datos inventados.
   - Formularios funcionan.
   - Mobile usable.

3. CONTENIDO
   - 0 claims falsos publicados (reseñas, rating, años, precios, garantías).
   - Teléfono / email solo si Source confirmada.
   - 0 rastros IA, 0 lorem ipsum.

Reglas:
- Score doctrinal < 75 → FAIL automático.
- Cualquier bloqueo automático del test doctrinal → FAIL.
- Cualquier ⚠ marcado WEB_CRITICAL en 02-pendientes.md → FAIL.

Devuelve:
- Score doctrinal (0–100).
- Resultado pack auditoría (PASS / WARNING / FAIL).
- Lista de errores críticos (bloquean LIVE).
- Lista de errores menores (permiten LIVE con ⚠).
- Veredicto: GO / GO_WITH_WARNINGS / NO-GO.
- Mapeo a gate: PASS / PASS_WITH_WARNINGS / BLOCKED.
- Acciones exactas para los items bloqueantes (qué corregir, en qué doc).
- Recordatorio: G4 PASS NO autoriza GBP. GBP requiere G6.
```
