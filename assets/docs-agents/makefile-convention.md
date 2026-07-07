# Makefile Convention

## Shell

- `SHELL := zsh`, `.SHELLFLAGS := -c`.
- A custom `SHELL` wrapper script when targets need orchestration (dry-run, dependency gating): `SHELL := $(CURDIR)/ci/zsh/scripts/make-run-target.zsh`.

## Variables

- Tool vars overridable via `?=`: `GO ?= go`, `TF ?= terraform`, `CC ?= clang`.
- Fixed values via `:=`: `BIN := che`.

## Targets

- `COMMANDS :=` lists all command targets, `WRAPPERS :=` lists aggregate targets.
- `.PHONY: $(WRAPPERS) $(COMMANDS)`.
- Wrappers chain commands as prerequisite lists, no recipes: `run-sync: run-host-upsert-configs run-host-render-templates`.

## Naming

- Plain verbs: `test`, `build`, `plan`, `install`.
- `run-<host|repo-ci>-*` prefixes when the execution side matters.

## Docs

- Every target preceded by a `#[what]` one-liner.
- Env vars documented with `#[what]` + `#[vals]` above their `export`.
- Targets grouped in `##[>] Section [genai-include]` ... `##[<] Section`.
- `[genai-include]` marks sections harvested into generated `assets/data/makefile.agents.md` (via `templates/2-docs/makefile-agents.md.repo.tpl` + che).

## Example

```make
#[what] Project's Makefile
SHELL := zsh
.SHELLFLAGS := -c
GO ?= go

COMMANDS := test build

.PHONY: $(COMMANDS)

##[>] Go [genai-include]
#[what] run all tests
test:
	$(GO) test ./...

#[what] build the binary into ./dist
build:
	$(GO) build -o dist/ .
##[<] Go
```
