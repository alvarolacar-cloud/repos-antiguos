#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path

def main():
    rows = []
    for p in Path.cwd().rglob("*.md"):
        text = p.read_text(encoding="utf-8", errors="ignore")
        for line in text.splitlines():
            if "⚠" in line or "⛔" in line or "🔁" in line:
                rows.append((str(p), line))

    out = ["# Info que falta — generado automáticamente\n"]
    out.append("| Archivo | Línea |\n|---|---|\n")
    for path, line in rows:
        safe = line.replace("|", "\\|")
        out.append(f"| `{path}` | {safe} |\n")

    Path("info-que-falta-auto.md").write_text("".join(out), encoding="utf-8")
    print("Generado: info-que-falta-auto.md")

if __name__ == "__main__":
    main()
