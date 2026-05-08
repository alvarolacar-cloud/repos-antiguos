# G7 — Post-lanzamiento

## Cuándo se ejecuta

Después del lanzamiento (web LIVE + GBP creado o sincronizado). Se evalúa en tres ventanas: 7 días (medición operativa), 30 días (decisión de continuidad y primera optimización) y 90 días (decisión de expansión a Approved Expansion Areas).

> Equivalente al nivel R7 (Revisión Post-lanzamiento). G7 es el cierre del flujo y la entrada al ciclo de iteración.

---

## Input requerido

- Web LIVE con G4 PASS (o PASS_WITH_WARNINGS) confirmado.
- GBP creado o sincronizado tras G6 PASS.
- `CLIENTES/{slug}/outputs.json` consolidado.
- Acceso a:
  - Google Search Console (GSC) del dominio.
  - Google Analytics 4 (GA4) del dominio.
  - GBP Performance del listing.
- `CLIENTES/{slug}/02-pendientes.md` — para verificar que solo quedan ADVISORY abiertos.
- Roadmap de optimización (Bloque 5 / Bloque 7) y plan de Approved Expansion Areas.

---

## Checks

| Check | Criterio | PASS si |
|---|---|---|
| GSC configurado | Propiedad verificada y conectada al dominio | Sí |
| GA4 configurado | Stream activo y midiendo el dominio | Sí |
| Eventos configurados | Llamada, formulario, click WhatsApp, click GBP | Sí |
| Sitemap enviado | `sitemap.xml` enviado en GSC | Sí |
| Indexación revisada | Cobertura GSC sin errores críticos | Sí |
| Formularios probados en producción | Envíos llegan al destino real | Sí |
| GBP Performance activo | Búsquedas, vistas, llamadas, direcciones medidas | Sí |
| Tracking ≥ 30 días | Datos GSC + GA4 + GBP de al menos 30 días continuos | Sí |
| Revisión 7 días | Primer chequeo realizado | Sí |
| Revisión 30 días | Decisión de continuidad y ajustes | Sí |
| Revisión 90 días | Decisión de expansión a Approved Expansion Areas | Sí |
| Roadmap de optimización | Plan vivo de mejoras por Page Type | Sí |
| Decisión de expansión | Documentada (avanzar / esperar / descartar) | Sí |

---

## Resultado

- **PASS** — los 13 checks ✅ y se documenta la decisión de continuidad / expansión. El cliente entra en ciclo de iteración.
- **PASS_WITH_WARNINGS** — tracking activo pero alguna ventana (7/30/90) aún sin completar; quedan items en ADVISORY. Avanza con plan declarado.
- **BLOCKED** — falta tracking básico (GSC, GA4 o GBP Performance), formularios no llegan, indexación con errores críticos, o no hay revisiones documentadas a ≥ 30 días.

---

## Bloqueos automáticos

- GSC o GA4 no configurados → BLOCKED.
- GBP Performance inaccesible cuando el GBP existe → BLOCKED.
- Formularios en producción no entregan → BLOCKED.
- Indexación con errores críticos no resueltos (URLs principales no indexadas) → BLOCKED.
- Sin tracking de ≥ 30 días continuos cuando se intenta cerrar la revisión 30d / 90d → BLOCKED.
- Decisión de expansión tomada sin datos (saltarse la revisión 30/90) → BLOCKED.

---

## Prompt ejecutable

```text
Actúa como revisor del Gate G7 (Post-lanzamiento) del sistema GMB Crush.

Lee:
- CLIENTES/{slug}/outputs.json
- CLIENTES/{slug}/02-pendientes.md
- Datos GSC del dominio (cobertura, performance, sitemap)
- Datos GA4 del dominio (eventos, conversiones, sesiones)
- GBP Performance del listing (búsquedas, vistas, llamadas, direcciones)
- Roadmap de optimización del cluster

Verifica los 13 checks G7:
1. GSC configurado.
2. GA4 configurado.
3. Eventos configurados (llamada, formulario, WhatsApp, click GBP).
4. Sitemap enviado en GSC.
5. Indexación revisada (sin errores críticos).
6. Formularios probados en producción (entregas reales).
7. GBP Performance activo y accesible.
8. Tracking ≥ 30 días continuos.
9. Revisión 7 días documentada.
10. Revisión 30 días documentada con decisión.
11. Revisión 90 días documentada con decisión.
12. Roadmap de optimización vivo (mejoras por Page Type).
13. Decisión de expansión a Approved Expansion Areas (avanzar / esperar / descartar).

Reglas:
- No declares PASS sin tracking real de ≥ 30 días.
- No tomes decisión de expansión sin datos GSC + GA4 + GBP de la ventana correspondiente.
- Cualquier ADVISORY que ahora se vuelva CONTENT_RISK / TECHNICAL debe re-clasificarse en 02-pendientes.md.

Devuelve:
- Tabla de los 13 checks.
- Resumen de tracking (GSC + GA4 + GBP) por ventana 7/30/90 días.
- Lista de bloqueos (si los hay) con acción exacta y responsable.
- Decisión de expansión documentada (con datos que la sustentan).
- Veredicto: PASS / PASS_WITH_WARNINGS / BLOCKED.
- Si PASS: el cliente entra en ciclo de iteración y se reinicia G2 sobre nuevos bloques de expansión.
- Si BLOCKED: lista exacta de mediciones que faltan antes de repetir G7.
```
