# Fidelidad al original (manual GMB Crush)

> El manual GMB Crush original es **read-only para doctrina**. El sistema v2 lo aplica, no lo reescribe.

---

## Principio fundacional

**Doctrina = afirmaciones cuantitativas, fórmulas, escalas, reglas literales del manual.**
**Estructura = tablas resumen, cross-refs, numeración, secciones del esqueleto v2.**

- La **doctrina** se porta literal al v2. No se modifica.
- La **estructura** se puede reformular libremente (es nuestra, no del original).
- Cualquier cosa nueva que añadamos debe ser trazable a una fuente real (otro paso del original, decisión documentada del operador, derivación neutra).

---

## Las 7 reglas críticas

Detalle completo en `doctrina/qa-rules.md` (sección "7 reglas de fidelidad"). Resumen aquí:

| # | Regla | En 1 frase |
|---|---|---|
| 1 | Verificación bidireccional antes de declarar output | ¿el original lo lista? Si no → es heredado, no nativo |
| 2 | 7 patrones de invención prohibidos | No inventar outputs/doctrina/datos/listados nuevos |
| 3 | Qué SÍ está permitido añadir | Numeración Paso.X, tablas resumen, cross-refs |
| 4 | Protocolo antes de portar un paso | Leer original COMPLETO + listar outputs nativos + identificar intake |
| 5 | Cuando el original tiene ambigüedad | NO resolver silenciosamente. Flagear con `> Nota de fidelidad:` |
| 6 | Cuando el original es escueto | Portar literal. NO expandir narrativamente |
| 7 | Verificación post-fix | grep + diff + numeración consistente |

---

## Casos detectados en auditoría (commits aabcdd3 + ad6e06b + 2ba4013 + e607998 + b8ee926 + 667ba1d)

Aprox **70 invenciones doctrinales** detectadas y corregidas en el sistema v1. Estas son las MÁS GORDAS — el sistema v2 las evita por construcción.

### Cuantitativas inventadas (NO usar)

```
❌ "29 filas / 580 celdas operativas"     → original §27.3 dice 28 URLs
❌ "S_efectiva" como variable doctrinal    → original solo usa S
❌ "E × (1 + S + A + G×S)" para expansion → original no tiene esta fórmula
❌ "≥3 enlaces contextuales por página"    → original no declara mínimo
❌ "~15% / ~25% / ~10%" anchor distribution → original no asigna %
❌ "6ª categoría anchor: Local entity"     → original lista 5 categorías
```

### Cualitativas cambiadas (NO usar)

```
❌ Schema Homepage con FAQPage + Speakable → original §16: solo Organization+WebSite+LocalBusiness
❌ "AC añadido a outbound de Homepage"     → original §8/§20: HP outbound = SO + GeoHub + contacto (sin AC)
❌ Formato IDs `SO-1`                       → original §16 usa `SO-001` (3 dígitos)
❌ Conteo bloques estructurales modificados → ver page-types.md por cada page type (HP=11, SO=11, LBS=12, AC=11, GH=10, GA=10)
```

### Erratas a NO arreglar

```
✅ Original dice "Target long-tail llaveword" → portado al v2 LITERAL (no "keyword")
```

Las erratas del original se conservan por principio de copia literal. Si el operador quiere arreglarlas, lo hace explícitamente con un commit que documente el cambio.

### Ambigüedades a NO resolver silenciosamente

```
⚠ Original §30.3: "areaServed: 4 LCAs ejemplo"
   → Portado v1 dijo "areaServed: TODAS las 10 LCAs"
   → BUG. Restaurado a "4 LCAs ejemplo" + nota de ambigüedad.

⚠ Original Paso 10: dos "Fase 5" distintas (§11 Optional Expansion + §26 GBP Creation)
   → No elegir una. Documentar ambigüedad. Decidir con operador.
```

---

## Excepciones documentadas (commits explícitos del operador)

### Excepción NAP físico (commit 2ba4013, mayo 2026)

El original solo dice "Madrid" como NAP del cliente Cerrajeros. El operador autorizó enriquecer el ejemplo con dirección completa real (`Calle Rafael Calvo 12, Almagro, Chamberí, 28010 Madrid`) por:

1. Más realista para el ejemplo Cerrajeros.
2. Permite testar `1.10 Direct LCAs` con valores reales (Almagro, Chamberí).
3. Documentado explícitamente en commit.

**Esta excepción aplica solo al ejemplo Cerrajeros**, no es regla general.

---

## Implementación en v2

### Tests de regresión doctrinal

`scripts/qa-check.ts` ejecuta:

```typescript
test_no_invenciones_cuantitativas() {
  const prohibidos = [
    "29 filas", "580 celdas", "S_efectiva",
    "FAQPage en HP", "Speakable en HP",
    "Local entity",         // 6ª categoría anchor inventada
    "~15%", "~25%", "~10%", // distribución anchors inventada
    "≥3 enlaces contextuales",
  ];
  for (const p of prohibidos) {
    assert grep(repo, p) === 0, `Invención detectada: ${p}`;
  }
}
```

### Constantes confirmadas (cuantitativas correctas)

```typescript
// doctrina/constants.ts (ver "Cheat sheet" de reglas-operativas.md)
export const G_DEFAULT = 3;
export const S_DEFAULT = 5;
export const E_DEFAULT = 0;
export const PRIORITY_RANGE = [6, 30] as const;
export const TIER_THRESHOLDS = { P1: 26, P2: 21, P3: 16, P4: 10, Hold: 6 };
export const WORD_COUNT_RANGES = {
  HP:  [900, 1300],
  SO:  [850, 1000],
  LBS: [800, 1000],
  AC:  [800, 1000],
  GH:  [700, 1100],
  GA:  [1000, 1500],
};
export const STRUCTURAL_BLOCKS = {
  HP: 11, SO: 11, LBS: 12, AC: 11, GH: 10, GA: 10,
};
export const ANCHOR_CATEGORIES = ["branded", "exact", "partial", "topic", "generic"]; // 5, NO 6
export const TRUST_SIGNAL_THRESHOLD = 3; // perfiles top 5
```

Cualquier output que viole estas constantes → falla QA → bloquea deploy.

---

## Por qué esta convención existe

Sin esta convención, la IA tiende a:
- Tratar el original como **input para sintetizar**, no como **contenido para portar**
- Confundir "se usa aquí" con "se produce aquí" (Regla 1)
- Llenar tablas subiendo material de pasos vecinos (Regla 2.2)
- "Completar" el original con conocimiento sectorial (Regla 2.3)
- Resolver ambigüedades silenciosamente (Regla 2.6)
- Omitir contenido doctrinal porque "ya está implícito" (Regla 2.5)

Resultado: un sistema portado que **parece más completo que el original** pero contiene afirmaciones que el operador nunca tomó. Si una de esas afirmaciones llega a producción (caso schema con FAQPage inventado), Google penaliza por keyword stuffing / structured data abuse.

**Regla en una frase:** el original es read-only para doctrina, el v2 es libre para estructura, y todo lo que añadimos debe ser trazable.
