# GMB Crush — Sistema de Ejecución v2

Sistema de 14 pasos para construir webs locales SEO + GBP sincronizado.

---

## Si eres una IA y tienes que ejecutar esto

Lee en este orden exacto:

```
1. Sistema 4/DOCTRINA/convenciones.md
2. Sistema 4/DOCTRINA/flujo.md
3. Sistema 4/DOCTRINA/fuentes.md
4. Sistema 4/DOCTRINA/pasos/01a → 19a (todos los a-docs)
5. El preflight del cliente que te hayan indicado
```

Después ejecuta sin parar. No preguntes al operador nada hasta que la web esté en producción.

---

## Flujo de ejecución

```
Preflight (2 campos mínimos)
    ↓
Bloques 1-4  →  arquitectura + contenido + automatización
    ↓
pnpm build   →  genera dist/ local
    ↓
TEST GATE    →  pasar los 2 tests de la carpeta Test/
    ↓                (contra el dist/ local — sin deploy)
    ↓  FAIL → corregir y volver a build
    ↓  PASS ↓
Bloque 5 Paso 18  →  deploy a Cloudflare Pages  →  WEB LIVE
    ↓
02-pendientes.md  →  cliente cierra datos reales
    ↓
03-gbp.md  →  GBP cuando pendientes vacíos
```

**Los tests se ejecutan contra el build local, antes de que la web toque producción.**

---

## Los 2 tests (carpeta Test/)

| Test | Pregunta | Cuándo |
|---|---|---|
| `test-doctrinal.md` | ¿La IA aplicó bien la doctrina GMB Crush? | Antes del deploy |
| `pack-auditoria-web-construida.md` | ¿La web construida es correcta? | Antes del deploy |

**Ambos deben pasar antes de ejecutar el Paso 18 (deploy).**

`test-doctrinal` evalúa la implementación arquitectónica — page types, URLs, schema, interlinking.

`pack-auditoria` evalúa la web real construida — URL Matrix vs sitemap generado vs HTML renderizado vs contenido vs no-invención. Trabaja contra `dist/` sin necesitar la web live.

---

## Si eres el operador

Lee `Sistema 4/CLIENTES/_run.md`. Ahí está todo.

---

## Qué hay aquí

```
Sistema 4/
├── DOCTRINA/     ← La IA lee esto al arrancar (tú no necesitas entrar)
└── CLIENTES/     ← Aquí trabajas tú

Test/
├── test-doctrinal.md              ← Gate pre-deploy: doctrina
└── pack-auditoria-web-construida.md  ← Gate pre-deploy: construcción
```
