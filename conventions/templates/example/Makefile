#[what] Project's Makefile
SHELL := zsh

COMMANDS := render-templates

.PHONY: $(COMMANDS)

##[>] Docs [genai-include]
#[what] render *.ontoRepo.tpl onto the repo (.env, makefile.agents.md, CLAUDE.md, AGENTS.md)
render-templates:
	@che render-templates --profile=ontoRepo
##[<] Docs
