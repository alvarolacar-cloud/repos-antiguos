# GMB Crush Website Build System

Sistema completo en 14 pasos para construir una web local desde cero siguiendo la metodología GMB Crush.

---

## Estructura del repositorio

Este repositorio contiene 4 carpetas, cada una con una versión o perspectiva diferente del sistema:

### 01 Sistema_Vision Rapida

Todos los pasos del sistema explicados de manera **resumida**. Cada paso tiene su esquema estructurado con fórmulas, reglas y matrices, pero sin ejemplos extensos ni profundidad procedimental. Es la referencia rápida del sistema: lo que necesitas para entender qué hace cada paso sin entrar en detalle.

### 02 Sistema_ Ejecucion

Todos los pasos **ampliados** con el ejemplo completo de **Cerrajeros Madrid 24h**. Cada paso incluye objetivo, formulario en blanco, ejemplo rellenado, cuerpo operativo con reglas, ejemplos correctos e incorrectos, checklist final y fuentes GMB Crush. Es la versión que se usa para ejecutar el sistema con un negocio real.

### 03 Sistema_ Vision Completa

Clon de la carpeta 02 donde se añaden las **decisiones** que se toman en cada paso. Para cada decisión concreta del ejemplo (qué servicios se eligen, qué zonas se cubren, qué URLs se crean, qué prioridades se asignan), se indica de qué fuente viene: Framework GMB Crush, Competidores, Datos de búsqueda, Geografía o Input humano. El objetivo es verificar que cada decisión está anclada a una fuente y detectar las que la IA tomó sin respaldo.

### 04 Ejemplos Antiguos

Versiones anteriores del sistema usadas durante el desarrollo:

- **Miami-ABC-Locksmith-V4**: ejemplo original en inglés con ABC Locksmith en Miami (13 pasos)
- **Cerrajeros-Madrid-V5**: primera versión en español con Cerrajeros Madrid 24h (13 pasos)

Estas versiones están superadas por la V6.4 de la carpeta 02.

---

## Flujo del sistema

```
Input → Architecture → URL Matrix → URL Rules → Page Types → Content Structure → Internal Links → Priority → QA → Production → Pseudocode → Master Prompt → Final System → GBP Alignment
```

## Fórmula de arquitectura

```
Total páginas = 1 + S + C + (S × C) + (A × C) + (G × S × C)

Donde:
  S = Servicios principales
  C = Ciudades objetivo
  A = Categorías GBP adicionales (sin duplicados)
  G = GeoArticles por servicio × ciudad
```

---

*Sistema desarrollado siguiendo la metodología GMB Crush.*
