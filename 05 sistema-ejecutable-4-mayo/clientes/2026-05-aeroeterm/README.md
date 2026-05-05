# Cliente: aeroeterm (2026-05)

> Carpeta de ejecución del sistema GMB Crush v2 para este cliente.

## Pasos

1. **Rellenar preflight.md** con los 8 datos del cliente.
2. **Ejecutar Local Pack** en Madrid + ciudades benchmark → editar `cluster/src/data/cliente.json` con: primary_category, additional_categories, services, lcas, trust_signals, preferred_cta.
3. **(Opcional) Keyword Research** → si tienes acceso, refina topics de GAs en `cliente.json`. Si no, queda `⚠ inferido`.
4. **Build local:**
   ```bash
   cd cluster
   pnpm install
   pnpm build
   ```
5. **Deploy a Cloudflare Pages:**
   ```bash
   ../../scripts/deploy.sh aeroeterm
   ```
6. **Pendientes:** todos los `⚠` van a `pendientes.md`. Cuando se vacía → arrancar GBP.

---

## Estado actual

- [x] Carpeta cliente creada
- [ ] Preflight rellenado
- [ ] Local Pack ejecutado
- [ ] Build local OK
- [ ] Deploy a Cloudflare Pages
- [ ] Pendientes vacíos
- [ ] GBP creado
- [ ] GBP verificado
