# Commenting Convention

Comments advertise themselves with a label prefix, so a reader decides upfront whether to invest energy into a particular piece of information. Prefixes also help prose-in-code postprocessing and programmatic retrieval. Unprefixed comments have open, undefined purpose.

## Syntax

| Token | Meaning |
| ----- | ------- |
| `[where]` | related reads, sources, references |
| `[why]` | why it exists, purpose, why chosen over else |
| `[what]` | what it is |
| `[>]` `[<]` | section start, end (leader + N extra leaders, N = depth from top) |
| 🤖 🤖🤖 🤖🤖🤖 | AI-generated section |

## AI-Generated Content

AI-generated content is wrapped in a section whose name is one or more 🤖, encoding how much **more** human attention the human wants to give it despite being AI-generated: 🤖🤖🤖 a lot more, 🤖🤖 some more, 🤖 a little more.

## Sectioning

A section starts with `[>]` and ends with `[<]`, both carry the section name. Nesting repeats the file's comment leader (its first character): top level carries the fewest extra leaders, each deeper level one more, so the extra-leader count equals the section's depth from the top. Leader `#`: top `##[>] x`, nested `###[>] x`. Leader `//`: `///[>] x`, `////[>] x`.

## Example

```
foo 123         #[where] $ man 5 foo
param=foo       #[why] foo over bar: better DX
cmd -f          #[what] -f means foo ()
#>[why]
#   foo over bar: better DX
#/[why]
##[>] section 🤖🤖
foo_a=1
###[>] subsection
bar_a=1
###[<] subsection
##[<] section 🤖🤖
```
