# Purpose

## What It Is

Canonical repo conventions: purpose docs, commenting notation, Makefile style, che template docs generation. Markdown docs for AI agents, runnable examples, che.yml wiring, gomplate templates.

## Why It Exists

Repo conventions (purpose docs, commenting, Makefile style) for all user projects. This repo is their canonical home: one place to author, version, and reference them.

## Goals

- Single source of truth for cross-repo conventions.
- Consistent structure across all repos: same purpose doc, same comment notation, same Makefile shape.
- Agents and humans onboard onto any repo from the same short docs.

## How To Use

Read the convention docs in `conventions/<topic>/`:

- `conventions/purpose/`: every repo carries a purpose doc, included at the top of `AGENTS.md`, `CLAUDE.md`, `README.md`.
- `conventions/comments/`: comment prefixes, sectioning, AI-generated marks.
- `conventions/makefile/`: house Makefile style.
- `conventions/templates/`: generating repo docs with che templates.
- `conventions/ci/`: lefthook pre-commit hooks, re-run in CI.

`make render-templates` regenerates `assets/data/makefile.agents.md`, `assets/data/repo-structure.md`, `CLAUDE.md`, `AGENTS.md` via che, the same setup consuming repos replicate.

## Future Direction

- `assets/docs-human/` variants of each convention.
