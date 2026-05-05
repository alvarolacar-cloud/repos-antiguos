# Reglas del sistema GMB Crush V6.4

Las reglas estructurales y operativas que definen el sistema. Si una se viola, el sistema deja de ser coherente.

Cada regla apunta a su sección canónica donde se define con detalle (`paso-XX §Y`).

---

## A. Arquitectura base

### 1. Fórmula maestra
`1 + S + 1 + S + A + G×S = 28 páginas SEO base`. Con S=5 servicios core, A=1 categoría adicional con página, G=3 GeoArticles por servicio.
→ paso-02 §16, paso-13 §21

### 2. /contacto/ es página auxiliar
No entra en el cálculo de las 28 SEO base. Tiene prioridad operativa, no SEO.
→ paso-02 §16, paso-08 §13

### 3. Una sola Main City crea la arquitectura
No se multiplica la fórmula por zonas de cobertura.
→ paso-02 §8 (Regla 1), paso-02 §21

### 4. Web first, GBP después
El GBP se crea en paso 14, después de publicar la web base. Sin web detrás no soporta sameAs ni schema integrado.
→ paso-14 §7

### 5. La URL Matrix es la fuente de verdad
Si una página no existe en la matriz, no existe en producción.
→ paso-03 §27

---

## B. Geografía operativa

### 6. Direct Local Coverage Areas
Salen directamente de la dirección física del NAP.
→ paso-01 §35

### 7. Candidate Local Coverage Areas (test GEO)
Requieren pasar el **test de coherencia GEO**: cumplir al menos 3 de 6 criterios:

```text
Ancla física        — ¿sale directamente o está conectada a la dirección?
Main City           — ¿pertenece claramente a la Main City?
Proximidad          — ¿está cerca o conectada al punto físico?
Intención local     — ¿explica una necesidad local real del servicio?
Demanda/competencia — ¿hay búsquedas o competidores trabajando esa zona?
No falsa ubicación  — ¿puede mencionarse sin afirmar oficina física allí?
```

→ paso-01 §34

### 8. Las Local Coverage Areas no generan URLs por defecto
Se usan en contenido, FAQs, ejemplos locales y schema `areaServed`. Mencionar una zona ≠ crear una página.
→ paso-01 §15, paso-04 §15, paso-06 §10

### 9. Approved Expansion Areas
Solo pueden generar URLs nuevas si hay justificación: demanda, valor comercial, oportunidad competitiva, contenido único.
→ paso-01 §16, §26, paso-06 §32

### 10. No se inventa ubicación física en zonas
"Atendemos en Almagro" ≠ "tenemos oficina en Almagro". Falsa ubicación viola guidelines y dispara penalizaciones.
→ paso-01 §24, paso-06 §11

---

## C. Page types

### 11. Homepage = Root Entity Anchor
URL `/`. Siempre P1. Establece marca, categoría GBP principal, Main City, NAP, servicios core, enlaces clave.
→ paso-05 §7, paso-08 §16

### 12. Service Overview = pillar temático sin ciudad
URL `/[category]/[service]/`. NO geolocalizada — su función es autoridad temática, no conversión local.
→ paso-05 §8, paso-04 §10

### 13. Location-Based Service = convertidor local
URL `/[category]/[main-city]/[service]/`. Un servicio + una Main City. NO mezclar varios servicios ni varias ciudades en una página.
→ paso-05 §9, paso-04 §12, paso-09 §9

### 14. GeoHub = índice de Main City
URL `/[main-city]/`. Agrupa servicios, categorías adicionales, GeoArticles y cobertura local.
→ paso-05 §11, paso-04 §11

### 15. GeoArticle = booster semántico, no landing comercial
URL `/[main-city]/[topic]/`. Apoya un LBS específico con contenido long-tail. Siempre enlaza a su LBS padre con 3 puentes narrativos.
→ paso-05 §12, paso-07 §13, paso-15 §14.5

### 16. Additional Category Page = soporte web a categoría GBP sin servicio core
URL `/[category]/[main-city]/[adicional]/`. Solo se crea cuando la categoría no queda cubierta por un servicio core.
→ paso-04 §13, paso-05 §10, paso-15 §12.1

---

## D. URLs y schema

### 17. Una intención = una URL
Anti-canibalización. No crear dos páginas para la misma búsqueda.
→ paso-04 §21, paso-09 §17

### 18. Slugs limpios
Minúsculas, guiones medios, sin acentos, sin símbolos. **No usar** `near-me`, `best`, `cheap`, `top-rated` en URLs.
→ paso-04 §17–§19

### 19. Trailing slash uniforme
Decisión binaria (con o sin), aplicada consistentemente en todo el sitio.
→ paso-04 §8

### 20. Dominio canónico fijo
Apex vs www: una sola versión canónica, redirección desde la otra. Sin canónica fija se generan duplicados invisibles.
→ paso-04 §7, paso-18 §12.2

### 21. HTTPS obligatorio
Sin HTTPS Google penaliza ranking y bloquea schema.
→ paso-04 §7, paso-18 §12.2

### 22. Schema asignado por page type
- **Homepage:** Organization + WebSite + LocalBusiness + FAQPage
- **Service Overview:** Service + WebPage + BreadcrumbList
- **LBS:** LocalBusiness + BreadcrumbList
- **Additional Category:** Service con `areaServed` + BreadcrumbList
- **GeoHub:** CollectionPage + BreadcrumbList
- **GeoArticle:** Article + FAQPage + BreadcrumbList + Speakable

→ paso-05 §19, paso-03 §22

### 23. NAP único y consistente
En homepage, footer, página de contacto, schema y GBP. Una sola versión canónica.
→ paso-01 §19

---

## E. Internal linking

### 24. Internal Linking Map por page type
Cada page type tiene una matriz fija de links entrantes y salientes. Sin map de links la autoridad no fluye según jerarquía.
→ paso-07 §7–§16

### 25. No enlaces a URLs no aprobadas
Link a URL inexistente rompe crawl y dispersa autoridad. No enlazar a LCAs sin URL aprobada.
→ paso-07 §15, paso-07 §16

### 26. Anchors contextuales y variados
Anchors exactos repetidos disparan filtros de over-optimization.
→ paso-07 §15, §17

### 27. Breadcrumbs canónicos
Por page type. Mejoran CTR en SERP y explicitan jerarquía.
→ paso-07 §19

---

## F. GBP y confianza

### 28. GBP Status = Not Created hasta paso 14
Antes del paso 14: las categorías son `Planned`, no se inserta GBP URL en schema, no hay sameAs, no hay reseñas de Google.
→ paso-01 §1.4, paso-09 §33

### 29. No reseñas de Google antes de tener el perfil
Antes del paso 14, los trust signals son cosas verificables (años de experiencia, certificaciones, garantías), nunca "250+ reseñas".
→ paso-14 §15

### 30. core_services ≠ GBP Services
No mezclar los dos conjuntos. Una categoría adicional GBP con página propia se gestiona por `additional_categories_with_page`, NO entra en `core_services`.
→ Nota doctrinal al final de pasos 1, 5, 11, 14

### 31. Categorías GBP solo con soporte web real
No añadir una categoría adicional al GBP si no hay página web que la respalde.
→ paso-14 §14

### 32. Trust signals deben ser verificables
Años, certificaciones, premios, garantías reales. No inventar.
→ paso-01 §25

### 33. No inventar GBP URL antes del paso 14
URL inventada rompe sameAs y dispara penalizaciones.
→ paso-12 §35, paso-14 §11

### 34. `sameAs` solo cuando exista el GBP
`sameAs` a GBP inexistente rompe validación schema y E-E-A-T.
→ paso-05 §19, paso-14 §20

### 35. `areaServed` con cobertura real validada
Schema `areaServed` con zonas inventadas rompe validación schema.
→ paso-06 §30, paso-14 §19

---

## G. Producción y QA

### 36. Dependencias de páginas
GeoArticles solo se publican después de su LBS padre. LBS solo después de su Service Overview padre y del GeoHub.
→ paso-02 §14, paso-10 §13, paso-11 §20

### 37. Sin QA aprobado no se publica
Cada página debe pasar el QA Checklist antes de subir a producción. Publicar sin QA mete deuda técnica imposible de auditar luego.
→ paso-09 §20, paso-12 §32

### 38. Producción en 5 fases con orden lógico
Entity Foundation → Main City Conversion → Semantic Expansion → Optimization Loop → Optional Expansion. No saltar fases ni invertir el orden.
→ paso-10 §7–§11

### 39. Cluster completo por servicio core antes de publicar
Cada servicio core necesita 1 SO + 1 LBS + 3 GeoArticles publicados juntos. Cluster incompleto deja servicios sin captar o sin convertir.
→ paso-15 §15.3

---

## H. Escalado y vigilancia

### 40. Páginas de barrio al final, nunca al principio
Construir barrios sin LBS asentada produce páginas zombie.
→ paso-19 §8.3

### 41. Regla 2 de 3 triggers para escalar a barrio
Solo se autoriza una página de barrio si cumple 2 de 3 triggers:

```text
Trigger 1 — Location ya responde      (impresiones >100/mes, clicks >10/mes, posición <30)
Trigger 2 — GeoArticles traen tráfico (1+ con >50 impresiones/mes y >5 clicks/mes)
Trigger 3 — SERP cambia con barrio    (3+ páginas específicas del barrio en SERP)
```

→ paso-19 §9.1–§9.4

### 42. Output de escalado documentado con confianza
Decisión CREAR / NO CREAR + justificación 3-5 líneas + nivel de confianza Alta/Media/Baja. Sin output documentado la decisión no es auditable.
→ paso-19 §10.3

### 43. Tracking canónico = Geo Grid + GSC + GA4
Geo Grid mide ranking local, GSC mide query, GA4 mide conversión. Sin los tres falta una pieza del ciclo de optimización.
→ paso-10 §5, paso-13 §46

---

## I. Limpieza de rastros de IA (Bloque 5)

### 44. Sin README de starter kit visible
README de Astro starter visible delata sitio sin curar.
→ paso-17 §13, paso-18 §10

### 45. Sin comentarios scaffold ni meta generator
Comentarios "este componente hace X" o `<meta name="generator">` filtran origen automatizado.
→ paso-17 §13.32–§13.33

### 46. Grep limpio de referencias a IA en repo y commits
Cualquier referencia a `claude`, `chatgpt`, `openai`, `anthropic` filtra origen no humano.
→ paso-17 §13.34–§13.36, paso-18 §10

### 47. package.json con nombre real del proyecto
"astro-starter" delata sitio sin personalizar.
→ paso-17 §13.35

---

## Cómo usar este documento

- **Si vas a editar el sistema:** lee estas reglas antes. Cualquier cambio debe ser compatible.
- **Si encuentras una violación:** marca el archivo y la línea, y consulta la sección canónica para entender el porqué.
- **Si propones una excepción:** documéntala en `CHANGELOG.md` con justificación. No vale "es un caso especial" sin más.
- **Si una regla parece arbitraria:** lee la sección canónica completa. Suele haber una razón estructural detrás.

> Estas reglas no son sugerencias. Son los pilares que mantienen el sistema coherente entre los 19 pasos y replicable en cualquier negocio local.
