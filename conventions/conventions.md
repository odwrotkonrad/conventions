# Conventions

- `conventions/purpose/convention.md`: every repo carries `assets/docs-agents/purpose.md` with five headings (what, why, goals, usage, future), included at the top of `AGENTS.md`, `CLAUDE.md`, `README.md`.
- `conventions/comments/convention.md`: comment label prefixes (`[where]`, `[why]`, `[what]`), `[>]`/`[<]` sectioning, 🤖 AI-generated marks.
- `conventions/makefile/convention.md`: house Makefile style, `[genai-include]` sectioning that feeds the generated Makefile doc for AI agents.
- `conventions/templates/convention.md`: generating repo docs with che templates: `templates/1-env|2-data|3-audience`, `che.yml` wiring, `make render-templates`.

Each convention dir carries a runnable `example/`. This repo itself follows all of these conventions.
