# Feature: Example Greeter

<!-- [>] 🤖🤖 -->

Scenario: greeting names the caller
  Status: tested
  When I invoke `greet Ada`
  Then the output reads `hello Ada`

Scenario: greeting defaults to world
  Status: todo
  When I invoke `greet` with no argument
  Then the output reads `hello world`

<!-- [<] 🤖🤖 -->
