# G6 — GBP Safe

## Cuándo se ejecuta

Antes de iniciar Bloque 7 (Crear / sincronizar GBP). G6 verifica que el cliente tiene los datos reales necesarios para que el Google Business Profile pueda crearse, verificarse y publicarse sin riesgo de suspensión, claims falsos o desincronización con la web.

> Equivalente al nivel R6 (Revisión GBP Safe). **Regla central:** la web puede avanzar con ⚠ controlados, pero el GBP no puede avanzar con ⚠ críticos.

---

## Input requerido

- G5 PASS o PASS_WITH_WARNINGS confirmado (sin GBP_CRITICAL pendientes).
- Web LIVE en producción (G4 PASS o PASS_WITH_WARNINGS) con `/contacto/` operativo.
- `CLIENTES/{slug}/00-preflight.md` — NAP final, GBP Status.
- `CLIENTES/{slug}/outputs.json` — categorías, servicios, horarios, fotos, áreas de servicio.
- `CLIENTES/{slug}/02-pendientes.md` — para confirmar 0 GBP_CRITICAL.
- §8 Outputs Consolidados.
- URL de la web publicada (canonical real, no placeholder).

---

## Checks

| Check | Criterio | PASS si |
|---|---|---|
| G5 PASS | `02-pendientes.md` sin GBP_CRITICAL | Sí |
| Web publicada | Web LIVE en dominio definitivo | Sí |
| `/contacto/` funcional | Página de contacto con NAP coherente y formulario operativo | Sí |
| NAP final validado | Name + Address + Phone confirmados por el cliente | ✅ |
| Teléfono real | Teléfono atribuible al negocio (no centralita compartida no autorizada) | ✅ |
| Dirección elegible | Dirección cumple guidelines GBP (o SAB declarado) | ✅ o SAB declarado |
| Categoría principal confirmada | Primary Category soportada por la doctrina y por GBP | ✅ |
| Categorías adicionales soportadas | Cada categoría adicional tiene Page Type / Content Pack que la respalda | ✅ |
| Servicios confirmados | Lista de servicios del GBP confirmada por el cliente | ✅ |
| Horarios confirmados | Horarios reales y vigentes | ✅ |
| Fotos reales | Fotos disponibles del negocio (no stock) | ✅ |
| Service Areas confirmadas | LCA / Approved Expansion Areas validadas | ✅ |
| GBP URL no inventada | `SameAs` / Website apunta al dominio real publicado | ✅ |
| Schema coherente con GBP | NAP del schema = NAP del GBP | Sí |

---

## Resultado

- **PASS** — todos los checks ✅. Bloque 7 puede arrancar.
- **PASS_WITH_WARNINGS** — no aplica para GBP. La regla central exige que el GBP no avance con ⚠ críticos. Items menores (foto extra, descripción larga) se documentan pero no son G6.
- **BLOCKED** — cualquier check crítico en ⚠ o ⛔. GBP no se crea hasta que se promuevan a ✅.

---

## Bloqueos automáticos

- G5 sigue con GBP_CRITICAL → BLOCKED.
- Web no LIVE en dominio definitivo → BLOCKED.
- Teléfono no confirmado o no atribuible → BLOCKED.
- Dirección presentada como física cuando el modelo es SAB sin dirección elegible → BLOCKED.
- Categoría principal no soportada por GBP → BLOCKED.
- Categoría adicional sin respaldo en Page Type Map o Content Pack → BLOCKED.
- Fotos no reales (stock, IA, banco de imágenes sin licencia) → BLOCKED.
- Horarios marcados como ⚠ Inferido → BLOCKED.
- `SameAs` apuntando a un dominio distinto al de la web publicada → BLOCKED.
- Cualquier output del cluster con claim publicable (reseñas, rating, años de experiencia) sin Source → BLOCKED para GBP.

---

## Prompt ejecutable

```text
Actúa como revisor del Gate G6 (GBP Safe) del sistema GMB Crush.

Lee:
- CLIENTES/{slug}/00-preflight.md
- CLIENTES/{slug}/outputs.json
- CLIENTES/{slug}/02-pendientes.md (debe tener 0 GBP_CRITICAL)
- §8 Outputs Consolidados
- URL de la web publicada
- Categorías, servicios, horarios, fotos, service areas declaradas

Verifica los 14 checks G6:
1. G5 PASS (sin GBP_CRITICAL).
2. Web LIVE en dominio definitivo.
3. /contacto/ funcional.
4. NAP final validado.
5. Teléfono real.
6. Dirección elegible (o SAB declarado).
7. Categoría principal confirmada y soportada.
8. Categorías adicionales soportadas en Page Type Map / Content Pack.
9. Servicios confirmados.
10. Horarios confirmados.
11. Fotos reales.
12. Service Areas confirmadas.
13. GBP URL = dominio real publicado (no inventada).
14. Schema coherente con GBP (NAP idéntico).

Regla:
- Si queda CUALQUIER check crítico en ⚠ o ⛔, resultado = BLOCKED.
- No existe PASS_WITH_WARNINGS para G6.

Devuelve:
- Tabla de los 14 checks con resultado.
- Lista de campos bloqueantes (con responsable y acción exacta).
- Veredicto: PASS / BLOCKED.
- Si PASS: checklist final para creación / sincronización GBP en Bloque 7.
- Si BLOCKED: items que deben promoverse a ✅ antes de repetir G6, y a quién pedirlos.

Recordatorio: no se crean cuentas ni se ejecutan trades. La creación / verificación
del GBP se hace con el cliente; G6 solo declara que es seguro arrancar.
```
