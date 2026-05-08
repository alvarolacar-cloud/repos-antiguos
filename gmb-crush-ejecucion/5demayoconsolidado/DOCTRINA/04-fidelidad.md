# 04 Fidelidad al original — Las 7 reglas anti-invención

> Reglas operativas para evitar inventar doctrina del manual GMB Crush al portar contenido al sistema operativo. Nace de la auditoría de Bloques 1-5 (mayo 2026) que detectó ~70 invenciones doctrinales en los 18 a-docs portados.
>
> **Fuente:** Sistema 1 `system.md` (versión comprimida: 7 reglas) + Sistema 2 `00convenciones.md §3` (versión extendida con casos reales) + Sistema 4 `flujo.md` (protocolo cuando se detecta posible invención).

---

## Principio fundacional

**El original GMB Crush es read-only para doctrina. El esqueleto canónico es libre para estructura.**

- **Doctrina** = afirmaciones cuantitativas, fórmulas, escalas, reglas, valores específicos del cliente, listas de outputs
- **Estructura** = tablas resumen, cross-refs entre pasos, numeración `Paso.X`, secciones "Info heredada" / "Validación operativa" / "Outputs Consolidados"

Lo que se añade al esqueleto tiene que ser trazable a una fuente real (otro paso del original, decisión documentada del operador, derivación neutra). Nunca inventar la fuente.

---

## Las 7 reglas

### Regla 1 — No declares inputs como outputs nativos del paso

Verificación bidireccional antes de declarar un output:

> **¿El original §X-Outputs del paso N lo lista, o el intake §4 del paso N lo rellena?**
>
> - **Sí** → output nativo del paso, OK
> - **No (pero se usa aquí)** → input heredado, va a tabla "Info heredada", NO a "Outputs a Conseguir"
> - **No (ni se usa)** → no debería estar en este paso

#### Distinción crítica: producir ≠ aplicar

> "Producir" = el operador decide el valor en este paso.
> "Aplicar" = este paso usa el valor para construir algo.

#### Ejemplo (caso real que originó la regla)

El slug `cerrajero` (Primary Category Slug):
- Se **decide** en intake del Paso 3 §4 ("Lo que tienes que rellenar")
- Se **aplica** en Paso 2 (fórmula maestra) y Paso 4 (URL Rules) y Paso 5 (page type rules)

Lo correcto:
- Paso 3: output nativo `3.X Primary Category Slug`
- Paso 2/4/5: input heredado en tabla "Info heredada del Paso 3"
- **NO** declarar `2.2 Primary Category Slug` ni `4.1 Primary Category Slug` como outputs nativos.

Aplica el mismo razonamiento a Brand tone, Primary Service, Main City Slug, Service Slugs, NAP, GBP categories, LCAs, trust signals, etc.

---

### Regla 2 — No importes outputs de otros pasos como si fueran de este

No declarar como output nativo algo que en el original es output de otro paso anterior.

#### Ejemplo (caso real)

`2.2 Primary Category Slug`, `2.3 Main City Slug`, `2.4 Service Slugs` declarados en Paso 2 cuando los slugs son output del Paso 3 (intake §4).

Resultado correcto: en Paso 2 estos aparecen como **info heredada** (`← Paso-03 §4 intake`), no como outputs nativos.

---

### Regla 3 — No inventes doctrina cuantitativa

NO añadir afirmaciones cuantitativas o cualitativas no presentes en el original pero citadas como si fueran doctrinales.

#### Ejemplos (casos reales detectados)

- `S_efectiva` como variable doctrinal (original solo usa `S`)
- "29 filas / 580 celdas operativas" (original §27.3 dice 28 URLs)
- Fórmula `E × (1 + S + A + G×S)` para Approved Expansion (no en original)
- Distribución porcentual de anchors `~15% / ~25% / ~10%` (original no asigna %)
- Threshold `≥3 enlaces contextuales por página` (original no declara mínimo)
- 6ª categoría anchor "Local entity" (original lista 5 categorías de anchor text)

---

### Regla 4 — No alteres valores doctrinales literales

NO alterar literalmente lo que dice el original.

#### Ejemplos (casos reales)

- "AC añadido a outbound de Homepage" — original §8 / §20 solo cita SO + GeoHub + contacto
- Schema Homepage con `FAQPage + Speakable` añadidos — original §16 dice solo `Organization, WebSite, LocalBusiness`
- Formato IDs `SO-1` cuando el original §16 usa `SO-001` (3 dígitos)
- Conteo de bloques estructurales por page type (SO 11 vs 12 del original, LBS 12 vs 13, AC 11 vs 12, GA 10 vs 11)

---

### Regla 5 — No omitas doctrina que el paso exige

NO portar contenido literal del original al sistema operativo.

#### Ejemplo (caso real, el peor detectado)

Paso 5 omitió las **18 secciones doctrinales** del original — los 6 "Ejemplo rellenado" + 6 "Ejemplos incorrectos" + 6 "Regla final" por page type (§7.10-§12.12 del original).

La portabilidad obliga a **incluir todas** esas 18 secciones, incluso si alargan el doc, porque la doctrina del paso es ese conjunto y omitirlas equivale a perder el filtro QA de la página.

---

### Regla 6 — No hagas cambios silenciosos

NO modificar el original sin advertirlo. Tres tipos:

#### 6.a Erratas "arregladas"

Original `Target long-tail llaveword` → portado `Target long-tail keyword`. **NO arreglar.** Conserva la errata literal.

#### 6.b Ambigüedades resueltas silenciosamente

Original §30.3 dice `areaServed: 4 LCAs ejemplo` → portado dice `areaServed: TODAS las 10 LCAs`. **NO resolver — flagear** con `> **Nota de fidelidad:**` y decidir en consulta con el operador.

#### 6.c Convenciones cambiadas

Formato IDs (3 dígitos vs 1 dígito), casing, separadores. **NO cambiar.**

---

### Regla 7 — Verifica bidireccionalidad

Para cada output que vayas a declarar, hacer un **check obligatorio**:

> ¿El original §X-Outputs del paso N lo lista, o el intake §4 del paso N lo rellena?
> - Sí → output nativo, OK
> - No (pero se usa aquí) → input heredado, NO output
> - No (ni se usa) → no debería estar

Esta regla resume operativamente las 6 anteriores: cualquier candidato a output debe pasar este check antes de aceptarlo.

---

## Patrón adicional — datos del cliente fabricados

Aunque no es una "regla" de las 7 originales, vigila este patrón porque está estrechamente ligado a Regla 4 (no alterar valores doctrinales literales):

#### Ejemplo (caso real)

Paso 6 portado tenía `streetAddress: "Calle Rafael Calvo 12"`, `postalCode: "28010"` cuando el original solo dice "Madrid".

> **Excepción NAP físico (decisión del operador, mayo 2026):** se permite enriquecer el ejemplo con datos físicos completos cuando son más realistas que el original Y el operador lo aprueba explícitamente. Documentar la excepción en el commit.

---

## Qué SÍ está permitido añadir

Para evitar el otro extremo (eliminar enriquecimientos legítimos), explicitar lo que SÍ está permitido:

- Numeración `Paso.X` (1.1-1.14, 2.1-2.14, etc.) — diseño del esqueleto canónico
- Tabla §3 "Info heredada de pasos anteriores" — trazabilidad
- Sección "Validación operativa" + "Cómo se obtiene" en cada output `§6.X` — método explícito
- Tabla §8 "Outputs Consolidados" — vista de cierre
- Cross-refs `Paso-NN N.X` — enlace entre pasos del esqueleto
- Reformulación estructural de prosa a tabla, manteniendo contenido literal
- Tablas resumen de listas largas del original
- "Errores que previene" derivados doctrinalmente del original
- Capa "ejemplo Cerrajeros Madrid 24h" — siempre que use valores del original

Ninguna de estas adiciones es bug. Lo que las convierte en bug es **inventar contenido dentro de ellas**.

---

## Protocolo cuando se detecta posible invención

> Fuente: Sistema 4 `flujo.md` "Casos especiales".

Si encuentras un output o regla que parece no estar en el original GMB Crush:

### Paso 1 — Aplica la verificación bidireccional (Regla 7)

> ¿El original §X-Outputs del paso N lo lista, o el intake §4 del paso N lo rellena?
> - Sí → output nativo, OK
> - No (pero se usa aquí) → input heredado, NO output
> - No (ni se usa) → no debería estar

### Paso 2 — Si confirmas invención, NO la "arregles" silenciosamente

Reporta al operador. La acción correcta es:

1. Marcar el output con `> **Nota de fidelidad:**` describiendo la sospecha
2. Citar la sección del original que se buscó (y dónde NO aparece la doctrina)
3. Decidir con el operador: eliminar / reasignar a otro paso / promover oficialmente con autorización

### Paso 3 — Si el original tiene ambigüedad o contradicción

Ejemplo: el original Paso 10 tiene dos "Fase 5" distintas (§11 Optional Expansion y §26 GBP Creation).

**Protocolo:**
1. NO resuelvas silenciosamente eligiendo una.
2. Documenta la ambigüedad con `> **Nota de fidelidad:**`
3. Decide en consulta con el operador.
4. La sección no elegida queda referenciada con cross-ref pero NO desplazada.

### Paso 4 — Si el original tiene una errata

Ejemplo: original Paso 12 dice `Target long-tail llaveword` (errata por `keyword`).

**NO arregles**. Conserva la errata literal. El principio de copia literal no permite "arreglos" silenciosos.

### Paso 5 — Si el original es escueto

El original puede dar un campo como `1 low → 5 high` sin detallar. Tentación: expandir a 5 niveles narrativos.

**Protocolo:**
- Portar literal: si el original dice `1 low → 5 high`, escribir exactamente eso.
- NO inventar 5 niveles narrativos.
- Si el operador necesita la expansión, añadirla como `> Decisión de diseño: ...` con label explícito y firma del operador.

---

## Protocolo antes de portar un paso

Antes de tocar un a-doc, ejecutar 4 pasos:

1. **Leer el original COMPLETO** (no solo las secciones que crees que aplican). Buscar TODAS las listas numeradas — pueden coexistir 2 sets paralelos (caso Paso 12: 10 Reglas + 14 Reglas operativas).
2. **Listar los outputs nativos del paso** según el original §28-§30 (o equivalente "Outputs del Paso N"). Cualquier output que añadas fuera de esa lista necesita justificación de fuente.
3. **Identificar el intake del paso** (§4 "Lo que tienes que rellenar"). Esos son inputs del operador, NO outputs nativos. Si se usan en otros pasos van a "Info heredada".
4. **Identificar las secciones doctrinales por page type / sub-tema** ("Ejemplo rellenado", "Ejemplos incorrectos", "Regla final" en Paso 5; los 16 bloques del SOP en Paso 13). Portarlas literales aunque alarguen el doc.

---

## Verificación post-fix

Tras aplicar fixes a un paso, hacer 4 checks:

```
1. grep "29 filas|580 celdas|S_efectiva|FAQPage en HP|Local entity"  →  0 matches
2. wc -l antes vs después  →  diferencia explicable (omisiones restauradas suben, invenciones eliminadas bajan)
3. ¿Bloque IV Fuentes intacto?  →  sí
4. ¿Numeración de outputs consistente entre §2 / §5 / §6 / §7 / §8?  →  sí
```

Si algún check falla, el fix está incompleto.

---

## Por qué esta convención existe

Sin esta convención, la IA tiende a:

- Tratar el original como **input para sintetizar**, no como **contenido para portar**
- Confundir "se usa aquí" con "se produce aquí" (Regla 1 / Regla 7)
- Llenar tablas del esqueleto subiendo material de pasos vecinos (Regla 2)
- "Completar" el original con conocimiento sectorial (Regla 3)
- Resolver ambigüedades silenciosamente (Regla 6)
- Omitir contenido doctrinal porque "ya está implícito" (Regla 5)

El resultado es un sistema portado que **parece más completo que el original** pero contiene afirmaciones que el operador nunca tomó. Si una de esas afirmaciones llega a producción (caso schema con dirección física inventada), el cliente publica datos falsos.

La regla operativa que evita todo esto en una frase: **el original es read-only para doctrina, el esqueleto es libre para estructura, y todo lo que añado tiene que ser trazable.**

---

## Cross-refs

- Convenciones de ejecución (status `confirmed` / `⚠ inferido` / `⚠ placeholder` / `validated` / `no aplica`): `01-convenciones.md §2`
- Catálogo de las 8 fuentes válidas: `03-fuentes.md`
- Flujo global del sistema: `02-flujo.md`
- Doctrina destilada (system prompt): `00-system-prompt.md`
