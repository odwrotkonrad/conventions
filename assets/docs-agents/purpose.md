# Purpose

## Why It Exists

Repo conventions (purpose docs, commenting, Makefile style) lived scattered inside `configs`. This repo is their canonical home: one place to author, version, and reference them.

## Goals

- Single source of truth for cross-repo conventions.
- Consistent structure across all repos: same purpose doc, same comment notation, same Makefile shape.
- Agents and humans onboard onto any repo from the same short docs.

## How To Use

Read the convention docs in `assets/docs-agents/`:

- `purpose-convention.md`: every repo carries a purpose doc, included at the top of `AGENTS.md`, `CLAUDE.md`, `README.md`.
- `commenting-convention.md`: comment prefixes, sectioning, AI-generated marks.
- `makefile-convention.md`: house Makefile style.

Consuming repos reference or copy these docs. No Makefile, no templating: static files only.

## Future Direction

- `assets/docs-human/` variants of each convention.
- che templating + Makefile once generated content appears.
- Stage 2: every repo includes `assets/docs-agents/purpose.md` and consumes conventions from here, `configs` drops its copies.
