# Auditoría de fuentes externas — Bloque 1 Fundamentos

Audit de las decisiones cuya Fuente contiene `Competidores` o `Datos de búsqueda` en el Bloque 1. Se cruza cada fila con su `§X` canónica del ejecutable para validar si la doctrina realmente define el método de extracción del valor desde la fuente externa.

---

## Alcance

```text
Bloque 1 — Fundamentos:
  paso-01-intake-form         → 14 filas (4 grupos)
  paso-02-formula-maestra     → 0 filas
  paso-03-matriz-base         → 15 filas (1 grupo, ahora apuntando a §31)

Total Bloque 1: 29 filas en 5 grupos (resueltos).
```

---

## Estados

```text
✅ DEFINIDO — la §X canónica describe el método de extracción de la fuente externa.
⚠️ VAGO    — la §X menciona la fuente pero no detalla cómo aplicarla.
❌ AUSENTE — la §X no menciona la fuente ni el método de extracción.
```

---

## Resumen del audit (post-correcciones)

| Grupo | Filas | §X canónica | Estado original | Estado actual |
|---|---|---|---|---|
| A — Categoría principal GBP | 1.16 | paso-01 §10 | ❌ AUSENTE | ✅ DEFINIDO con §10.6 Método |
| B — Categorías adicionales GBP | 1.17, 1.18 | paso-01 §11 | ❌ AUSENTE | ✅ DEFINIDO con §11.6 Método |
| C — Candidate LCAs | 1.24–1.31 | paso-01 §15 | ⚠️ VAGO | ✅ DEFINIDO con §15.6 Método |
| D — Servicios core | 1.34–1.38 | paso-01 §14 | ❌ AUSENTE | ✅ DEFINIDO con §14.6 Método |
| E — Trust signals | 1.43, 1.45–1.47 | paso-01 §18 | ⚠️ VAGO | ✅ DEFINIDO con §18.6 Método |
| F — GeoArticles topics | 3.19–3.33 | paso-03 §7 | ❌ MAL APUNTADA | ✅ DEFINIDO con §31 GeoArticle Topics + refs movidas |

```text
Total grupos: 6
Estado actual: 6 ✅ DEFINIDOS
```

---

## Detalle de cada grupo

### Grupo A — Categoría principal del GBP planificada

| Filas | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 1.16 | Categoría principal del GBP planificada | GMB Crush + Competidores | paso-01 §10 + §10.6 Método |

**Método ahora documentado en §10.6:**

```text
1. Buscar en Google Maps "[servicio principal] [main city]" sin login.
2. Anotar la categoría primaria declarada por los 5 competidores top.
3. Seleccionar la que más se repite (>3 de 5) como Primary Category.
4. Validar contra el catálogo oficial de GBP.
```

---

### Grupo B — Categorías adicionales del GBP

| Filas | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 1.17, 1.18 | Categoría adicional planificada | GMB Crush + Competidores | paso-01 §11 + §11.6 Método |

**Método ahora documentado en §11.6:**

```text
1. Tras escoger la Primary Category (§10), revisar adicionales de los 5 competidores.
2. Listar las que aparecen en al menos 2 de 5.
3. Filtrar las que el cliente realmente ofrece.
4. Aplicar regla de consolidación (§11.5).
```

---

### Grupo C — Candidate Local Coverage Areas

| Filas | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 1.24–1.31 | Candidate LCA (8 zonas) | GMB Crush + Competidores | paso-01 §15 + §15.6 Método |

**Método ahora documentado en §15.6:**

```text
1. Tras fijar Direct LCAs (§34), revisar áreas de servicio de 3-5 competidores.
2. Listar zonas que aparecen en al menos 2 competidores y NO están en Direct.
3. Aplicar test de coherencia GEO 3/6 (§34) a cada candidata.
4. Las aprobadas entran como contenido (no URL salvo Approved Expansion §16).
```

---

### Grupo D — Servicios core

| Filas | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 1.34–1.38 | Servicio principal (5 core services) | GMB Crush + Competidores | paso-01 §14 + §14.6 Método |

**Método ahora documentado en §14.6:**

```text
1. Buscar "[categoría principal] [main city]" en Google Maps.
2. Listar servicios declarados en los 5 perfiles GBP top.
3. Top 5 por frecuencia. Cruzar con oferta real del cliente.
4. Si empate, priorizar volumen de búsqueda local.
```

---

### Grupo E — Trust signals

| Filas | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 1.43, 1.45–1.47 | Trust signal (4 señales) | GMB Crush + Competidores | paso-01 §18 + §18.6 Método |

**Método ahora documentado en §18.6:**

```text
1. Revisar homepages y LBS de 5 competidores top.
2. Listar trust signals que aparecen en ≥3 de 5 (estándar del sector).
3. Listar diferenciadores (1-2 competidores).
4. Filtrar los acreditables por el cliente.
5. Output: 3-5 estándar + 1-2 diferenciadores.
```

---

### Grupo F — GeoArticle Topics

| Filas | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 3.19–3.33 | GeoArticle topic (15 artículos) | GMB Crush + Datos de búsqueda | paso-03 §31 |

**Método ahora documentado en paso-03 §31 GeoArticle Topics:**

Sección nueva creada con explicación, método paso a paso (5 pasos), ejemplos correctos e incorrectos, y regla final. Las 15 referencias del 03b se actualizaron de §7 a §31.

---

## Conclusión Bloque 1

```text
Estado original:  4 ❌ AUSENTE + 2 ⚠️ VAGO = 6 grupos sin método claro
Estado tras fix:  6 ✅ DEFINIDOS

Cambios aplicados:
- paso-01a: 5 nuevas subsecciones §X.6 Método (en §10, §11, §14, §15, §18)
- paso-03a: nueva sección §31 GeoArticle Topics — método de extracción
- paso-03b: 15 refs de GeoArticles cambiadas de §7 a §31

Resultado: las 29 filas del Bloque 1 marcadas con Competidores o Datos
           de búsqueda tienen ahora método operativo definido en §X.6.
```
