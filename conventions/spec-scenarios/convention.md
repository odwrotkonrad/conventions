# Spec Scenarios Convention

<!-- [>] 🤖🤖 -->

Behavior specs live as markdown feature files (`spec/<unit>/<Feature>Behavior.md`):
Gherkin-style scenarios, each carrying a `Status:` line as its first line.

## Statuses

```
Statuses: todo | implemented | tested (implemented, tests in place).
```

- `todo`: specified, not implemented
- `implemented`: behavior exists, no test pins it
- `tested`: behavior exists and tests pin every Then clause

A status must stay accurate: promote to `tested` only when a test pins the
scenario's clauses, demote when implementation or tests are removed.

## Shape

```
Scenario: <one-line behavior statement>
  Status: todo | implemented | tested
  Given <precondition>
  When <trigger>
  Then <observable outcome>
  And <further outcomes>
```

<!-- [<] 🤖🤖 -->
