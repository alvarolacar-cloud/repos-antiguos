# Validación anti-duplicados — V4

Se ejecutó una validación sobre los 13 archivos del sistema para comprobar que no existan bloques de `Regla operativa` con el mismo texto normalizado dentro de un mismo documento.

| Archivo | Reglas operativas | Duplicados normalizados | Líneas |
|---|---:|---:|---:|
| 01-intake-form.md | 8 | 0 | 876 |
| 02-formula-maestra-arquitectura.md | 10 | 0 | 808 |
| 03-matriz-base.md | 10 | 0 | 818 |
| 04-url-rules.md | 12 | 0 | 1113 |
| 05-page-type-rules.md | 10 | 0 | 1102 |
| 06-estructura-contenido-areas-cobertura-local.md | 12 | 0 | 1098 |
| 07-internal-linking-rules.md | 12 | 0 | 983 |
| 08-priority-score.md | 10 | 0 | 826 |
| 09-qa-checklist.md | 10 | 0 | 941 |
| 10-produccion-en-fases.md | 10 | 0 | 752 |
| 11-pseudocodigo-sistema.md | 8 | 0 | 1178 |
| 12-master-prompt.md | 14 | 0 | 1918 |
| 13-sistema-final-operativo.md | 16 | 0 | 1558 |

Resultado:

```text
Duplicados normalizados detectados: 0
```

Nota: la validación normaliza espacios y elimina el número de la regla para detectar duplicaciones reales aunque cambie el título.