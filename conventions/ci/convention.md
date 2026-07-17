# CI Convention

Pre-commit hooks run via lefthook, and CI re-runs the same hooks: one minimal validate job executes pre-commit over all files and fails on drift.

## Lefthook

- Repo `lefthook.yml` extends `~/.config/lefthook/lefthook.yml` (user-level hooks: ssh auth, conventional commit prefix, linters).
- Minimal repo job is the docs generation check: `docsgen` runs `make render-templates` and stages the regenerated files, so generated docs never go stale in a commit.

## CI

- CI jobs execute Makefile targets as the main measure to run checks (`make repo-ci-precommit-all`, `make test`, `make validate`), not raw commands.
- MR pipelines only (`workflow.rules` on `merge_request_event`).
- One `validate` stage job: `make repo-ci-precommit-all` (installs hooks, runs pre-commit over all files), then `git diff --exit-code HEAD`: stale generated docs surface as a diff and fail the job.
- The user-level config is absent in CI, a stub is created so `extends` resolves.

## Example

Runnable version in `example/`: `lefthook.yml`, `.gitlab-ci.yml`, `Makefile`.
