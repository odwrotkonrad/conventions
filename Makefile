##[>] 🤖🤖
#[what] Project's Makefile
SHELL := zsh
.SHELLFLAGS := -c

WRAPPERS :=
COMMANDS := render-templates repo-ci-prepare-hooks repo-ci-precommit-all

.PHONY: $(WRAPPERS) $(COMMANDS)

##[>] Docs [genai-include]
#[what] render *.ontoRepo.tpl onto the repo (makefile.agents.md, repo-structure.md, CLAUDE.md, AGENTS.md)
render-templates:
	@che render-templates
##[<] Docs

##[>] CI [genai-include]
#[what] install lefthook git hooks
repo-ci-prepare-hooks:
	@lefthook install --force

#[what] run pre-commit hooks over all files (not just staged)
repo-ci-precommit-all: repo-ci-prepare-hooks
	@lefthook run pre-commit --all-files --force
##[<] CI
##[<] 🤖🤖
