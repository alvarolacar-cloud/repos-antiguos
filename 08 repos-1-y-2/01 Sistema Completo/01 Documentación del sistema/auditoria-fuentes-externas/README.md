# Auditoría de fuentes externas

Audit del sistema GMB Crush V6.4 sobre las decisiones cuya Fuente contiene `Competidores` o `Datos de búsqueda`. Para cada fila se cruza la `§X` canónica del ejecutable para validar que la doctrina realmente define el método de extracción del valor desde la fuente externa.

---

## Por qué este audit existe

El sistema usa 6 fuentes posibles + 4 combinaciones (ver `catalogo-de-fuentes.md`). Cuatro fuentes son "internas" (GMB Crush, Input humano, Decisión de diseño, IA sin respaldo) y dos son "externas" (Competidores, Datos de búsqueda).

Las externas requieren un método de extracción objetivo y reproducible para que el operador no improvise. Si la doctrina dice "extraer de competidores" sin decir cómo, el sistema falla en la práctica.

Este audit recorre las **41 filas del sistema** que dependen de fuentes externas, identifica las §X canónicas asociadas y valida que cada una documente el método.

---

## Estados

```text
✅ DEFINIDO — la §X canónica describe el método de extracción.
⚠️ VAGO    — la §X menciona la fuente pero no detalla cómo aplicarla.
❌ AUSENTE — la §X no menciona la fuente ni el método.
```

---

## Alcance por bloque

| Bloque | Filas | Grupos | Audit doc |
|---|---:|---:|---|
| 1 — Fundamentos | 29 | 6 | [bloque-1-fundamentos.md](bloque-1-fundamentos.md) |
| 2 — Arquitectura | 0 | — | (no aplica) |
| 3 — Priorización | 3 | 3 | [bloque-3-priorizacion.md](bloque-3-priorizacion.md) |
| 4 — Automatización | 0 | — | (no aplica) |
| 5 — Salida a Mercado | 3 | 1 | [bloque-5-salida-a-mercado.md](bloque-5-salida-a-mercado.md) |
| 6 — GBP | 6 | 2 | [bloque-6-gbp.md](bloque-6-gbp.md) |
| **TOTAL** | **41** | **12** | **4 audit docs** |

Bloques 2 y 4 no contienen ninguna decisión con fuente externa — son framework puro.

---

## Resultado global

```text
12 grupos auditados:
- 11 grupos resueltos con nuevas subsecciones §X.6 Método aplicadas
   a los ejecutables.
- 1 grupo (Bloque 5 §10.2) ya estaba definido completamente
   en origen sin necesidad de cambios.

Total: 12 ✅ DEFINIDOS.
```

---

## Cambios aplicados a los ejecutables

```text
paso-01a-ejecucion-intake-form.md:
  + §10.6 Método (Categoría principal GBP de Local Pack)
  + §11.6 Método (Categorías adicionales GBP de Local Pack)
  + §14.6 Método (Servicios core de competidores GBP)
  + §15.6 Método (Candidate LCAs de áreas de servicio competidoras)
  + §18.6 Método (Trust signals — benchmark sectorial)

paso-03a-ejecucion-matriz-base.md:
  + §31 GeoArticle Topics — método de extracción (sección nueva)

paso-08a-ejecucion-priority-score.md:
  + §9.6 Método (Search Intent con keyword research)
  + §10.6 Método (GBP Category Relevance con Local Pack)
  + §12.6 Método (Competition Gap con SERP analysis)

paso-14a-ejecucion-gbp-creation-website-alignment.md:
  + §23.6 Método (Q&A reales de Auto-Suggest, PAA, KR y competidores)
  + §24.6 Método (Google Posts conectados con páginas web prioritarias)

Total: 11 nuevas subsecciones §X.6 Método + 1 nueva sección §31.
```

---

## Cambios aplicados a las decisiones

```text
paso-03b-decisiones-tomadas-y-fuentes.md:
  Las 15 filas de GeoArticles (3.19-3.33) cambiadas de §7 (genérico)
  a §31 (sección nueva con método de keyword research).
```

Tras estos cambios, las 41 filas del sistema con fuentes externas tienen método operativo definido en su `§X` canónica.
