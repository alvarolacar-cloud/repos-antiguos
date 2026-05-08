# G5 — Info faltante cerrada

## Cuándo se ejecuta

Después del Deploy de la web (G4 PASS o PASS_WITH_WARNINGS) y antes de iniciar Bloque 7 (GBP). Es el gate que **vacía `02-pendientes.md`**: todos los ⚠ Inferido / ⚠ Placeholder / ⛔ / 🔁 deben ser promovidos a ✅ Validado o desestimados con justificación. Sin esto, el GBP no puede arrancar.

> Equivalente al nivel R5 (Revisión Info Faltante).

---

## Input requerido

- `CLIENTES/{slug}/02-pendientes.md` — matriz de info faltante consolidada.
- `CLIENTES/{slug}/outputs.json` — outputs producidos hasta el momento.
- `CLIENTES/{slug}/01-bloque-6/` — agregador del Bloque 6 (Info que falta).
- `DOCTRINA/03-fuentes.md` — fuentes válidas para confirmar cada faltante.
- Confirmaciones del cliente (correos, formularios, llamadas) que sirven como Source para promover ⚠ → ✅.

---

## Checks

| Check | Criterio | PASS si |
|---|---|---|
| `02-pendientes.md` vacío de críticos | 0 entradas con clasificación WEB_CRITICAL o GBP_CRITICAL | 0 |
| Cada faltante tiene responsable | cliente / operador / herramienta externa / GMB Crush | 100% |
| Cada faltante tiene clasificación | WEB_CRITICAL / GBP_CRITICAL / CONTENT_RISK / TECHNICAL / ADVISORY | 100% |
| Promociones con Source | Cada ⚠ → ✅ declara fuente confirmatoria del cliente | 100% |
| Outputs sincronizados | `outputs.json` y §8 Consolidados reflejan el nuevo Status | Sí |
| Decisiones registradas | Decision Log o equivalente actualizado con cada cambio | Sí |
| Desestimaciones justificadas | Cada faltante cerrado como N/A explica por qué no aplica | Sí |
| GBP_CRITICAL = 0 | No queda ningún faltante crítico para GBP | 0 |

---

## Resultado

- **PASS** — `02-pendientes.md` no contiene WEB_CRITICAL ni GBP_CRITICAL; todos los ⚠ se han promovido a ✅ con Source o se han desestimado como N/A justificado. G6 (GBP Safe) queda autorizado a evaluarse.
- **PASS_WITH_WARNINGS** — quedan items en CONTENT_RISK / TECHNICAL / ADVISORY no bloqueantes, con responsable y plazo. G6 puede evaluarse, pero los ⚠ siguen vigilados en G7.
- **BLOCKED** — queda al menos un GBP_CRITICAL en `02-pendientes.md`. Bloque 7 no puede arrancar.

---

## Bloqueos automáticos

- Cualquier entrada GBP_CRITICAL sin resolver → BLOCKED.
- Promoción ⚠ → ✅ sin Source declarada → BLOCKED.
- Promoción ⚠ → ✅ basada en suposición de la IA (no del cliente) → BLOCKED.
- Faltante sin clasificación o sin responsable → BLOCKED.
- `outputs.json` y `02-pendientes.md` desincronizados (un output sigue ⚠ pero el pendiente está cerrado, o viceversa) → BLOCKED.
- Cierre de un faltante crítico con `N/A` cuando sí aplica al modelo de negocio → BLOCKED.

---

## Prompt ejecutable

```text
Actúa como agregador del Gate G5 (Info faltante cerrada) del sistema GMB Crush.

Lee:
- CLIENTES/{slug}/02-pendientes.md
- CLIENTES/{slug}/outputs.json
- CLIENTES/{slug}/01-bloque-6/
- DOCTRINA/03-fuentes.md
- Confirmaciones del cliente (correos / formularios / llamadas)

Para cada entrada en 02-pendientes.md:
1. Verifica clasificación: WEB_CRITICAL / GBP_CRITICAL / CONTENT_RISK / TECHNICAL / ADVISORY.
2. Verifica responsable: cliente / operador / herramienta externa / GMB Crush.
3. Si fue promovida a ✅, exige Source confirmatoria (una de las 8 fuentes válidas).
4. Si fue cerrada como N/A, exige justificación del modelo de negocio.
5. Sincroniza el Status en outputs.json y §8 Consolidados.

Reglas:
- No cierres ⚠ a ✅ sin Source nueva.
- No marques N/A un faltante GBP_CRITICAL si el cliente quiere GBP.
- No avances a G6 si queda algún GBP_CRITICAL.

Devuelve:
1. Tabla resumen: faltantes promovidos / desestimados / pendientes.
2. Lista de promociones ⚠ → ✅ con Source.
3. Lista de cierres N/A con justificación.
4. Conteo final por clasificación (debe haber 0 GBP_CRITICAL para PASS).
5. Estado de sincronización outputs.json ↔ 02-pendientes.md.
6. Veredicto: PASS / PASS_WITH_WARNINGS / BLOCKED.
7. Si PASS o PASS_WITH_WARNINGS: declara que G6 (GBP Safe) puede evaluarse.
8. Si BLOCKED: lista de items GBP_CRITICAL que faltan cerrar antes de repetir G5.
```
