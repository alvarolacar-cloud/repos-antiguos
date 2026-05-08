#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
import re
import sys

ROOT = Path.cwd()
PATTERN = re.compile(r"Paso-(\d{2}) §([\d.]+)")

def find_a_docs(root):
    return {p.name[:2]: p for p in root.rglob("*a-ejecucion*.md")}

def extract_sections(text):
    return set(re.findall(r"§\s*([\d.]+)", text))

def main():
    a_docs = find_a_docs(ROOT)
    if not a_docs:
        print("No encuentro a-docs.")
        sys.exit(1)

    section_map = {}
    for step, path in a_docs.items():
        section_map[step] = extract_sections(path.read_text(encoding="utf-8"))

    errors = []
    for b in ROOT.rglob("*b-decisiones*.md"):
        text = b.read_text(encoding="utf-8")
        for step, sec in PATTERN.findall(text):
            if step not in section_map:
                errors.append((b, f"Paso-{step} no tiene a-doc"))
            elif sec not in section_map[step]:
                errors.append((b, f"Paso-{step} §{sec} no existe"))

    if errors:
        print("REFERENCIAS ROTAS:")
        for path, msg in errors:
            print(f"- {path}: {msg}")
        sys.exit(1)

    print("OK: referencias canónicas verificadas.")

if __name__ == "__main__":
    main()
