#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from collections import Counter

TOKENS = ["✅", "⚠", "⛔", "🔁", "N/A"]

def main():
    c = Counter()
    for p in Path.cwd().rglob("*.md"):
        text = p.read_text(encoding="utf-8", errors="ignore")
        for t in TOKENS:
            c[t] += text.count(t)
    for k in TOKENS:
        print(f"{k}: {c[k]}")

if __name__ == "__main__":
    main()
