# Redacción

> Reglas de redacción para los 30+ archivos `.astro` del cluster. Aplicadas por los auxiliary prompts del Paso 15 + validadas por `scripts/qa-check.ts` audit 18.4 (rastros IA).

---

## Las 4 capas de redacción

Cada página del cluster se redacta en estas 4 capas (en orden):

### Capa 1 — Estructura

Aplicar el contrato del page type (ver `doctrina/page-types.md`):
- H1 según pattern
- Bloques estructurales obligatorios
- Word count dentro del rango
- Schema JSON-LD inline

### Capa 2 — Zonas (LCAs)

Inyectar las LCAs del cliente (`Direct + Candidate`) en:
- Copy del Hero local (LBS, GH)
- Sección "Cobertura por barrios"
- `areaServed` del schema LocalBusiness
- FAQs locales ("¿Trabajáis en mi distrito?")

> **Mencionar zona ≠ crear página.** Las LCAs son menciones, no rutas.

### Capa 3 — Argumentos

Inyectar los argumentos comerciales del cliente:
- Trust signals (4-7 señales reales del cliente + benchmark sectorial)
- USPs (años actividad, garantía, certificaciones, financiación, equipos cualificados)
- Casos / antes-después (si modelo Storefront/Hybrid)
- Reviews (placeholder hasta GBP verificado)

### Capa 4 — Entidades

Inyectar entidades canónicas del sector:
- Marcas (productos, materiales, certificadores)
- Términos técnicos del sector
- Wikipedia URLs cuando aplique (`Madrid` → `https://es.wikipedia.org/wiki/Madrid`)
- Otras entidades reconocidas por Google (ej. ISO 9001, AENOR)

---

## Las 4 reglas de calidad universal

Toda página del cluster debe cumplir estas 4 reglas:

### Regla 1 — Hero + CTA visible al instante

**Above the fold:**
- H1 claro (qué hace + dónde)
- Subtitle con propuesta de valor en 1 frase
- CTA primario (botón destacado)
- Trust mínimo (1 trust signal corto, ej. "+10 años", "★★★★★ 4.8/5")
- Imagen / visual relevante

### Regla 2 — Problema antes de solución

Antes de explicar el servicio, identificar el **problema del cliente**:

```
✅ "¿Tu bañera está vieja y quieres ducha pero te asusta el caos?"
   "Hacemos el cambio en 5 días sin destrozar el resto del baño."

❌ "Somos especialistas en cambio de bañera por ducha."
   (no identifica el problema, va directo a la solución)
```

### Regla 3 — Datos antes que adjetivos

Reemplazar adjetivos vacíos por datos concretos:

```
❌ "Servicio profesional y rápido"
✅ "Cambio en 5-7 días, técnicos cualificados con +10 años"

❌ "Precios competitivos"
✅ "Presupuesto cerrado por escrito, sin sorpresas. Reformas desde 3.500€"

❌ "Calidad excelente"
✅ "Garantía 2 años + ISO 9001 + materiales con marcado CE"
```

### Regla 4 — Local en cada párrafo

Toda página local (LBS, GH, GA) menciona la Main City + LCAs **al menos 1 vez por sección**:

```
✅ "En Madrid trabajamos todos los distritos: Salamanca, Chamberí, Centro, Retiro..."
✅ "Servicio Madrid 24h con presencia física en Lista (CP 28002)"
✅ "Especialistas en reforma de baños en Madrid desde 2014"

❌ "Hacemos reformas de baños en cualquier ciudad."
   (no menciona Madrid ni distritos)
```

---

## Anti-patrones — frases prohibidas (rastros IA)

`scripts/qa-check.ts` audit 18.4 hace `grep` de:

```
"como modelo de lenguaje"
"es importante destacar"
"es crucial mencionar"
"en el dinámico mundo de"
"en este artículo, exploraremos"
"sumérgete en"
"descubre los secretos de"
"transforma tu" (excepto si es servicio real)
"en la era digital"
"hoy en día"
"a continuación, te presentamos"
"para concluir"
"en resumen"
"esperamos que este artículo"
"no dudes en contactar"   (sustituir por CTA real específico)
"para más información"     (sustituir por CTA específico)
```

Si encuentra alguna, deploy se aborta.

---

## Anti-patrones — emojis innecesarios

NO usar emojis decorativos en copy comercial:

```
❌ "✨ Servicio premium para tu reforma 🛁"
❌ "🔥 Ofertas exclusivas en cambio de bañera 🚿"
❌ "📞 ¡Llámanos ya!"

✅ "Reforma integral de baños en Madrid"
✅ "Cambio de bañera por ducha en 5-7 días"
```

**Excepción:** emojis funcionales en GBP posts/Q&A pueden aprobarse por modelo de negocio (decisión operador caso por caso).

---

## Anti-patrones — listas irregulares

NO mezclar tipos de bullets:

```
❌
- Servicio rápido
* Garantía 2 años
1. Materiales premium
- Presupuesto gratis

✅ (consistente con guion `-`)
- Servicio rápido
- Garantía 2 años
- Materiales premium
- Presupuesto gratis
```

---

## Anti-patrones — placeholders olvidados

Antes del deploy, `scripts/qa-check.ts` busca:

```
"Lorem ipsum"
"TODO:"
"FIXME:"
"[pendiente"     (excepto los `⚠ placeholder` documentados en pendientes.md)
"XXX"
"REPLACE_ME"
"PLACEHOLDER"
```

Si encuentra alguna que no esté documentada, falla.

> **Excepción:** los marcadores explícitos del cliente (`[teléfono pendiente]`, `[email pendiente]`) sí pueden estar en producción si están registrados en `clientes/[slug]/pendientes.md`. La doctrina ⚠ permite web LIVE con datos provisionales visibles.

---

## Tono y registro

### Por modelo de negocio

| Modelo | Tono | Vocabulario |
|---|---|---|
| Storefront (peluquería, restaurante) | cercano, cálido, sensorial | "te recibimos", "experiencia", "ambiente" |
| SAB urgente (cerrajero, fontanero 24h) | directo, urgente, técnico | "respuesta inmediata", "24h", "técnico cualificado" |
| SAB programable (reformas, mudanzas) | profesional, transparente, didáctico | "presupuesto cerrado", "plazos definidos", "proceso paso a paso" |
| B2B (consultoría, software) | formal, técnico, autoritario | "implementación", "ROI", "metodología" |

### Tratamiento

**Default:** "tú" (España, retail/B2C). Cambia a "usted" si:
- B2B
- Cliente lo pide explícitamente
- Sector formal (notaría, abogados, gestoría)

---

## Implementación

```
plantilla-cluster/src/lib/
├── content-rules.ts         (las 4 capas + 4 reglas calidad)
├── anti-patterns.ts         (lista de strings prohibidos para grep)
└── tone.ts                  (tone por modelo de negocio)

scripts/qa-check.ts:
  test_capa_1_estructura(page)
  test_capa_2_lcas_presentes(page, lcas)
  test_capa_3_trust_signals(page)
  test_capa_4_entidades(page)
  test_anti_patterns(page)         → grep de frases prohibidas
  test_emojis_decorativos(page)    → 0 matches en copy comercial
  test_listas_consistentes(page)   → un solo tipo de bullet
  test_placeholders_documentados(page, pendientes_md)
```
