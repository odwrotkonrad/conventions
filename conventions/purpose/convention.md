# Purpose Convention

Every repo contains `assets/docs-agents/purpose.md` (and `assets/docs-human/purpose.md` once human docs exist). It answers, in order:

1. What it is: very concise repo description, packing as many keywords as possible.
2. Why it exists: the need, creator intention.
3. What goals can be achieved with it: high level.
4. How it can be used: interface, Makefile doc.
5. Future direction of development: target shape.

## Example

Skeleton in `example/`: `assets/docs-agents/purpose.md` with all five headings, included by `AGENTS.md`, `CLAUDE.md` (via `@`), inlined in `README.md`.

## Placement

Included at the top of `AGENTS.md`, `CLAUDE.md`, `README.md`:

- Agent files: `@assets/docs-agents/purpose.md` include.
- `README.md`: template include or inline.
