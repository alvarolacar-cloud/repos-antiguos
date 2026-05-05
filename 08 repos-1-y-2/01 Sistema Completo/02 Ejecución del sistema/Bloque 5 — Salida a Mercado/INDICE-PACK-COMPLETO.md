# Bloque 5 — Salida a Mercado · Pack completo Pasos 15–19

Este bloque contiene la capa añadida de salida al mercado.

No sustituye el sistema principal GMB Crush de 14 pasos.
Añade la fase de producción real para poder pasar de arquitectura SEO a web publicable.

---

## Contenido del pack

```text
Bloque 5 — Salida a Mercado/
├── README.md
├── INDICE-PACK-COMPLETO.md
├── indice-capa-salida-mercado.md
├── VALIDACION-PACK-COMPLETO.md
├── paso-15-redaccion-contenido/
│   ├── 15a-ejecucion-redaccion-contenido.md
│   ├── 15b-decisiones-tomadas-y-fuentes.md
│   └── 15c-content-pack-por-url.md
├── paso-16-extraccion-diseno-layout/
│   ├── 16a-ejecucion-extraccion-diseno-layout.md
│   └── 16b-decisiones-tomadas-y-fuentes.md
├── paso-17-constructor-sitio/
│   ├── 17a-ejecucion-constructor-sitio.md
│   └── 17b-decisiones-tomadas-y-fuentes.md
├── paso-18-qa-deploy/
│   ├── 18a-ejecucion-qa-deploy.md
│   └── 18b-decisiones-tomadas-y-fuentes.md
└── paso-19-acciones-futuro-escalado/
    ├── 19a-ejecucion-acciones-futuro-escalado.md
    └── 19b-decisiones-tomadas-y-fuentes.md
```

---

## Orden de uso

1. **15a** — Ejecución del Paso 15: método de redacción por capas y reglas de calidad.
2. **15b** — Decisiones tomadas y fuentes del Paso 15.
3. **15c** — Content Pack ejecutable por URL (output crítico para construcción).
4. **16a** — Ejecución del Paso 16: método de extracción de diseño.
5. **16b** — Decisiones tomadas y fuentes del Paso 16.
6. **17a** — Ejecución del Paso 17: construcción del sitio (Astro + Tailwind).
7. **17b** — Decisiones tomadas y fuentes del Paso 17.
8. **18a** — Ejecución del Paso 18: QA y deploy.
9. **18b** — Decisiones tomadas y fuentes del Paso 18.
10. **19a** — Ejecución del Paso 19: acciones futuro y escalado.
11. **19b** — Decisiones tomadas y fuentes del Paso 19.

---

## Documento clave para construir

El documento más importante para que una IA construya la web es:

```text
paso-15-redaccion-contenido/15c-content-pack-por-url.md
```

Ese archivo contiene:

```text
28 URLs SEO base
+ /contacto/ como página auxiliar
```

y para cada URL incluye:

```text
URL
Page Type
H1
Meta Title
Meta Description
Hero
CTA
Secciones
FAQs
Internal Links
Schema recomendado
Datos bloqueados
```

---

## Estructura por paso

Cada paso tiene 2 archivos canónicos siguiendo el patrón V6.4:

- `XYa-ejecucion-{name}.md` — método, reglas, ejemplo, checklist.
- `XYb-decisiones-tomadas-y-fuentes.md` — decisiones tomadas con fuente del catálogo de 10 fuentes y frase fija de funcionamiento.

Excepción: el **Paso 15 añade un tercer archivo `15c-content-pack-por-url.md`** que es el output ejecutable que consume el constructor.

---

## Catálogo de fuentes usado

Las decisiones de los archivos `XYb` usan el catálogo de 10 fuentes definido en `Carpeta de trabajo/Decisiones y fuentes/V2-README.md`:

```text
GMB Crush
Input humano
Input humano + GMB Crush
Datos de búsqueda
Competidores
IA sin respaldo
GMB Crush + IA sin respaldo
Input humano + IA sin respaldo
IA heredada (paso X.YY)
Decisión de diseño
```

---

## Total de decisiones nuevas

- Paso 15: 38 decisiones
- Paso 16: 32 decisiones
- Paso 17: 36 decisiones
- Paso 18: 41 decisiones
- Paso 19: 13 decisiones
- **Total: 160 decisiones nuevas**

Sumadas a las 334 decisiones de los pasos 1–14, el sistema completo tiene **494 decisiones trazadas** con fuente del catálogo.

---

## Regla principal

```text
El constructor (Paso 17) no decide contenido.
El constructor implementa lo que está en el Content Pack (15c).
Si una pieza no está en los pasos 1–16, el constructor para y pregunta.
```
