# Sistema ejecutable GMB Crush

> **Versión:** v2.0 · 4 mayo 2026
> **Filosofía:** la doctrina vive en código + plantillas + tests, no en 33 markdowns. Cuando se ejecuta un cliente, sale **web LIVE en Cloudflare en 2-4h**, no en 6-9 días.

---

## Estructura

```
sistema-ejecutable-4-mayo/
├── doctrina/                          (~7 archivos esenciales por TEMA, no por paso)
├── plantilla-cluster/                 (REPO ASTRO REAL — base parametrizable)
├── scripts/                            (automatización: new-cliente, deploy, qa-check)
├── clientes/                           (1 carpeta por cliente real)
├── _ejemplos/                          (Cerrajeros Madrid 24h como caso de estudio + fixtures)
└── matriz-cobertura.md                 (mapeo doctrina antigua → nueva ubicación)
```

---

## Cómo arrancar un cliente nuevo (resumen)

```bash
# 1. Operador rellena preflight
./scripts/new-cliente.sh aeroeterm 2026-05

# 2. Edita preflight (8 campos)
nano clientes/2026-05-aeroeterm/preflight.md

# 3. La IA arranca
#    - lee preflight + doctrina (~5 archivos)
#    - ejecuta Local Pack
#    - parametriza plantilla-cluster con datos cliente
#    - construye contenido en componentes Astro
#    - hace pnpm build local

# 4. Deploy
./scripts/deploy.sh aeroeterm

# 5. Resultado: web LIVE en Cloudflare Pages
```

---

## Stack técnico

- **Frontend:** Astro 5 + Tailwind v3
- **Package manager:** pnpm
- **Deploy:** Cloudflare Pages (push a GitHub → auto-deploy via GitHub Actions)
- **GBP:** Google Business Profile API (cuando aplique)
- **Tracking:** Google Search Console + Google Analytics 4

---

## Estado del refactor

- ☐ **Fase 0** — Matriz de cobertura (auditoría 33 archivos del sistema antiguo)
- ☐ **Fase 1** — Estructura inicial + commit
- ☐ **Fase 2** — Plantilla Astro MVP (3 páginas: HP + 1 LBS + contacto)
- ☐ **Fase 3** — Doctrina reorganizada por tema
- ☐ **Fase 4** — Scripts (new-cliente, deploy, qa-check)
- ☐ **Fase 5** — Validación con Aeroeterm real → deploy LIVE

---

## Sistema antiguo (referencia)

El sistema anterior (v1) vive en `C:\Users\alvaro\Desktop\ejecución\` y está pusheado a `https://github.com/alvarolacar-cloud/ejecucion-docs`. Se conserva como referencia hasta que un cliente real complete el ciclo OK con el sistema v2.
