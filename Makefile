##[>] 🤖🤖
#[what] Project's Makefile
SHELL := zsh
.SHELLFLAGS := -c

COMMANDS := render-templates

.PHONY: $(COMMANDS)

##[>] Docs [genai-include]
#[what] render *.repo.tpl onto the repo (makefile.agents.md, repo-structure.md, CLAUDE.md, AGENTS.md)
render-templates:
	@che render-templates --repo
##[<] Docs
##[<] 🤖🤖
