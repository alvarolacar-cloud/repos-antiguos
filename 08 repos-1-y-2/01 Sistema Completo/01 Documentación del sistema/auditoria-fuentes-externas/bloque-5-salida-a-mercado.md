# Auditoría de fuentes externas — Bloque 5 Salida a Mercado

Audit de las decisiones cuya Fuente contiene `Competidores` o `Datos de búsqueda` en el Bloque 5. Se cruza cada fila con su `§X` canónica del ejecutable para validar si la doctrina realmente define el método de extracción del valor.

---

## Alcance

```text
Bloque 5 — Salida a Mercado:
  paso-15-redaccion-contenido     → 0 filas
  paso-16-extraccion-diseno-layout → 0 filas
  paso-17-constructor-sitio       → 0 filas
  paso-18-qa-deploy               → 0 filas
  paso-19-acciones-futuro-escalado → 3 filas (1 grupo)

Total Bloque 5: 3 filas en 1 grupo.
```

---

## Resumen del audit

| Grupo | Filas | §X canónica | Estado |
|---|---|---|---|
| A — Análisis SERP por barrio | 19.10, 19.11, 19.12 | paso-19 §10.2 | ✅ DEFINIDO en origen |

```text
Estado actual: 1 ✅ DEFINIDO (sin necesidad de modificación)
```

---

## Detalle del grupo

### Grupo A — Análisis SERP por barrio

| Filas | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 19.10 | Ejecutar doble búsqueda en Google | GMB Crush + Datos de búsqueda | paso-19 §10.2 |
| 19.11 | Responder las 4 preguntas de comparación SERP | GMB Crush + Competidores | paso-19 §10.2 |
| 19.12 | Clasificar resultado en Escenario A o B | GMB Crush + Competidores | paso-19 §10.2 |

**Qué dice paso-19 §10.2 (Instrucciones de ejecución):**

```text
1. Ejecutar dos búsquedas en Google:
   a) "{servicio} {ciudad}"
   b) "{servicio} {barrio}"

2. Analizar SOLO resultados orgánicos (ignorar Local Pack y Ads).

3. Comparar las dos SERPs respondiendo:
   a) ¿Los resultados orgánicos son los mismos o muy similares?
   b) ¿Aparecen 3+ páginas optimizadas específicamente para el barrio?
   c) ¿Existen múltiples URLs diferentes orientadas al barrio?
   d) ¿Google mantiene la intención a nivel ciudad aunque se añada el barrio?

4. Clasificar en uno de 2 escenarios:

   ESCENARIO A — SIN segmentación:
   La SERP del barrio es igual o muy similar a la SERP de ciudad.
   → NO CREAR página de barrio.

   ESCENARIO B — CON segmentación:
   La SERP cambia claramente. Aparecen 3+ páginas específicas del barrio.
   → CREAR página de barrio (si además se cumplen Triggers 1 y 2 del §9).
```

**Veredicto:** ✅ **DEFINIDO COMPLETAMENTE.** §10.2 incluye el método paso a paso, las 4 preguntas explícitas, los 2 escenarios de clasificación y la regla de decisión final. Además, §10.4 añade reglas operativas del protocolo (no decidir por número de competidores ni por volumen, repetir desde 2 ubicaciones físicas distintas).

**Ejemplo del único caso en el sistema donde la doctrina ya tenía método completo desde el origen.** No se requieren correcciones.

---

## Conclusión Bloque 5

```text
Estado: 1 ✅ DEFINIDO

Sin cambios necesarios. paso-19 §10.2 es ejemplo de cómo
deberían estar definidas las §X que dependen de fuentes externas:

- Pasos numerados.
- Criterios objetivos (4 preguntas concretas).
- Clasificación binaria (Escenario A o B).
- Regla de decisión explícita.
- Reglas anti-sesgo (§10.4).

Este es el patrón que se ha aplicado para crear los §X.6 Método
en los bloques 1, 3 y 6.
```
