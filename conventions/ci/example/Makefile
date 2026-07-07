##[>] 🤖
#[what] Project's Makefile
SHELL := zsh

COMMANDS := run-repo-ci-prepare-hooks run-repo-ci-precommit-all

.PHONY: $(COMMANDS)

##[>] CI [genai-include]
#[what] install lefthook git hooks
run-repo-ci-prepare-hooks:
	@lefthook install --force

#[what] run pre-commit hooks over all files (not just staged)
run-repo-ci-precommit-all: run-repo-ci-prepare-hooks
	@lefthook run pre-commit --all-files --force
##[<] CI
##[<] 🤖
