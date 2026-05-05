# Auditoría de fuentes externas — Bloque 3 Priorización

Audit de las decisiones cuya Fuente contiene `Competidores` o `Datos de búsqueda` en el Bloque 3. Se cruza cada fila con su `§X` canónica del ejecutable para validar si la doctrina realmente define el método de extracción del valor.

---

## Alcance

```text
Bloque 3 — Priorización:
  paso-08-priority-score    → 3 filas (3 grupos)
  paso-09-qa-checklist      → 0 filas
  paso-10-produccion-fases  → 0 filas

Total Bloque 3: 3 filas en 3 grupos (resueltos).
```

---

## Resumen del audit (post-correcciones)

| Grupo | Fila | §X canónica | Estado original | Estado actual |
|---|---|---|---|---|
| A — Search Intent | 8.05 | paso-08 §9 | ❌ AUSENTE (define escala, no método) | ✅ DEFINIDO con §9.6 Método |
| B — GBP Category Relevance | 8.06 | paso-08 §10 | ❌ AUSENTE (define escala, no método) | ✅ DEFINIDO con §10.6 Método |
| C — Competition Gap | 8.08 | paso-08 §12 | ❌ AUSENTE (define escala, no método) | ✅ DEFINIDO con §12.6 Método |

```text
Estado actual: 3 ✅ DEFINIDOS
```

---

## Detalle de cada grupo

### Grupo A — Search Intent

| Fila | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 8.05 | Asignar Search Intent | GMB Crush + Datos de búsqueda | paso-08 §9 + §9.6 Método |

**Estado original:** §9 explicaba el factor (1=informational → 5=urgente buying intent) pero no decía cómo medirlo con keyword research real. Solo daba la escala y un ejemplo.

**Método ahora documentado en §9.6:**

```text
1. Ejecutar keyword research sobre la query principal de la URL.
2. Anotar volumen mensual y modificadores transaccionales/informacionales.
3. Asignar score según predominio:
   - 5: ≥60% transaccional
   - 4: 40-60% transaccional
   - 3: mezcla equilibrada
   - 2: 60-80% informacional
   - 1: puramente informacional
4. Verificar coherencia con page type (LBS y AC ≥ 4, GeoArticle 1-3).
```

---

### Grupo B — GBP Category Relevance

| Fila | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 8.06 | Asignar GBP Category Relevance | GMB Crush + Competidores | paso-08 §10 + §10.6 Método |

**Estado original:** §10 explicaba qué medía (1=weak → 5=direct GBP support) pero no especificaba cómo cruzar con el Local Pack ni qué umbrales aplicar.

**Método ahora documentado en §10.6:**

```text
1. Identificar la categoría que cubre la URL evaluada.
2. Buscar "[categoría] [main city]" en Google Maps → 5 perfiles top.
3. Score según presencia en perfiles del Local Pack:
   - 5: Primary en ≥3 de 5 (categoría dominante)
   - 4: Additional en ≥3 de 5
   - 3: irregular (1-2 perfiles)
   - 2: solo en perfiles fuera del top
   - 1: no aparece en el Local Pack
4. Score 1-2 indica replantear page type o URL.
```

---

### Grupo C — Competition Gap

| Fila | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 8.08 | Asignar Competition Gap | GMB Crush + Competidores | paso-08 §12 + §12.6 Método |

**Estado original:** §12 explicaba qué medía (1=hard → 5=weak gap) pero no daba método de SERP analysis ni umbrales objetivos.

**Método ahora documentado en §12.6:**

```text
1. Buscar query principal en Google sin login.
2. Analizar las 10 primeras orgánicas (excluir Local Pack y Ads):
   ¿LBS dedicadas? ¿SO genéricas? ¿Directorios? ¿Thin content?
3. Score según composición:
   - 5: ≤2 LBS dedicadas + resto débil (gap fuerte)
   - 4: 3-4 LBS + resto débil (gap moderado)
   - 3: 5-6 LBS (competencia normal)
   - 2: 7-8 LBS con on-page bueno (alta)
   - 1: ≥9 LBS profesionales con E-E-A-T fuerte (gap inexistente)
4. Score 4-5 acelera publicación. 1-2 fuerza estrategia long-tail.
```

---

## Conclusión Bloque 3

```text
Estado original: 3 ❌ AUSENTE = los 3 factores con fuente externa
                                  definían escala pero no método.

Estado tras fix: 3 ✅ DEFINIDOS

Cambios aplicados en paso-08a:
- §9.6 Método (Search Intent con keyword research)
- §10.6 Método (GBP Category Relevance con Local Pack)
- §12.6 Método (Competition Gap con SERP analysis)

Resultado: los 3 factores del Priority Score que dependen de fuentes
           externas (Datos de búsqueda y Competidores) tienen ahora
           método objetivo y reproducible para asignar el score 1-5.
```
