# Contributors

[Back to the README](../README.md)

AI models wrote the mathematics and the Lean code. The repository owner
directed the work and made the decisions about scope and naming. Times are
commit times, in US Central time (UTC−6).

## Nine points: the first draft, 14 to 15 November 2026

ChatGPT 6 Pro, in the ChatGPT chat, prompted by the repository owner, wrote the
first draft of the nine-point proof, from 21:48 on 14 November to 13:12 on
15 November 2026. It is archived in `archive/nine/`.

## Nine points: the formalization, 15 November 2026

Claude Opus 5.5, in Claude Code, wrote the Lean code, with the repository
owner directing the work. It ran the formalize-math-paper skill (version
3.4.0) and up to twelve sub-agents at once, each formalizing a part of
the proof against a private build snapshot of the library, with a memory
watchdog over their Lean processes.

* **15:22 to 16:09: the statement and the tools.** The Lean project on mathlib
  `v4.36.0-rc2`: the statement, the construction with its 84 triangle areas, the
  polynomial certificate checker checked by the kernel, the Challenge and its
  Comparator check, CI, the sanity checks and the axiom audit. The three-cap
  occupancy closed at once by a certificate and a new Bernstein checker. At
  16:09, every result on the route of the assembly stated, with its proof left
  as `sorry`.
* **16:24 to 17:55: the assembly and the foundations.** `maximizer_congruent`
  from the family theorems; the normalization of a maximizer into the five
  families; the sharp chambers and the strict local maximum; the hull bounds and
  capacity two; the opposite corners; the eight-boundary theorem with its radial
  catalogue.
* **18:13 to 19:39: the corner families and seven boundary points.** A shared
  framework for case splits with certificate leaves; the C1 zero-lower package;
  the three-corner family and one corner; the complete Type II exclusion; the
  seven-boundary exterior chain, and its two interior points by one cover of
  403 certificates found by linear programming.
* **19:40 to 21:46: six boundary points and C1.** The seven-boundary family
  complete at 20:13; the six-boundary occupancies; the C1 one-lower class at
  21:10 and the two-lower class at 21:46. The largest certificate tree, which
  needed 13 GB in one module, was split into seven kernel checks.
* **21:47 to 21:56: no `sorry` remains.** The linter warnings cleaned up; the
  exact anchor hexagon, by a cover of 1,209 leaves found by linear programming,
  and the last six-boundary cases closed.
* **From 21:58: one case of many.** The library reorganized so that nine
  points is its first case: the generic statement `optimal_value`,
  `heilbronn_number`, `optimal_configurations` over a table of cases, the
  generic `Optimum`, nine points under `Heilbronn/Nine/`, and these documents.

From the start of the session at 14:53 to the last proof at 21:56, the work took
7.1 hours of wall-clock time. 52 sub-agents ran 51.8 agent-hours in all, with
at most twelve at once, and made 5,954 tool calls. Claude used 30.09 million
input tokens, 2,026 million cache-read tokens and 14.58 million output tokens.

## Nine points: memory, consolidation and names, 16 November 2026

Claude Opus 5.5, in Claude Code, with the repository owner directing the work,
in one session with up to six sub-agents at once.

* **The build fits Palomar's memory.** Palomar's preflight ran out of memory:
  Lake builds one module per core, and a single kernel check of a certificate
  tree needed 5 to 8 GB. `tree_decide` checks a tree one subtree at a time.
* **The draft is archived.** The first draft moved to `archive/nine/` with its
  research notes and exporters; the Lean docstrings no longer cite it, and the
  685 declarations and four modules named after its numbering were renamed.
* **The library is consolidated.** Unreachable declarations removed; the
  hand-split certificate trees made whole again, in part modules glued by
  `tree_decide using`; shared layers for the geometry helpers, the sign-table
  certificate packages and the two single-cap families. 9,169 theorems became
  6,262.
* **`Cert.check` is faster.** A factored expansion written with the recursor of
  `List` checks the largest certificate three times as fast.
