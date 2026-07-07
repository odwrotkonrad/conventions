# Conventions

Canonical repo conventions: purpose docs, commenting, Makefile style.

## Purpose

Repo conventions lived scattered inside `configs`. This repo is their canonical home: one place to author, version, and reference them. Every repo follows the same purpose doc structure, comment notation, and Makefile shape, so agents and humans onboard onto any repo from the same short docs.

Static files only, no Makefile, no templating. Future: `assets/docs-human/` variants, che templating once generated content appears, all repos consuming conventions from here.

## Conventions

- [Purpose](assets/docs-agents/purpose-convention.md): every repo carries `assets/docs-agents/purpose.md`, included at the top of `AGENTS.md`, `CLAUDE.md`, `README.md`.
- [Commenting](assets/docs-agents/commenting-convention.md): comment prefixes, sectioning, AI-generated marks.
- [Makefile](assets/docs-agents/makefile-convention.md): house Makefile style.

## License

[MIT](LICENSE)
