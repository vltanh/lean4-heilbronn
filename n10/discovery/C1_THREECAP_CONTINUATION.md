# C1 two-central / three-cap continuation: exact local checkpoint

This note is **discovery state, not a hand-proof closure**. It concerns exactly the
one-corner count `(k,j,r,t,l)=(0,2,1,1,1)`: two actual free points in the
central quadrilateral and one actual point in each exterior cap. The C1
parent and the global n=10 hand proof remain open.

## Verifiable current state

The original `c1_js_threecap_frontier.json` contains 28 determinant splits,
three area leaves, sixteen linear leaves, and ten queued branches.
`c1_js_threecap_extension_01.json` through
`c1_js_threecap_extension_06.json` and their explicitly named leaf
certificates extend that same tree, without discarding earlier nodes.

The independent exact replay of the complete patched tree reports:

| Recorded kind | Count |
|---|---:|
| Determinant splits | 38 |
| Area-interval contradiction leaves | 8 |
| Exact positive linear-combination contradiction leaves | 24 |
| Geometric contradiction leaves | 0 |
| Retained exact area updates | 7,003 |
| Unresolved queued branches | 7 |
| Complete | **No** |

Run locally (Node.js only; no solver, CI, Lean or network):

```bash
node n10/discovery/c1_js_threecap_assemble.js
```

The assembler reads the original immutable state, all six extension JSON
files and eight individually stored linear certificates. It checks the
recorded ancestry and independently replays each cumulative tree using
`C1RTL_CHECK.check` and `C1RTL_LINEAR_CHECK.check`. Every retained leaf
has exact mathematical geometry and arithmetic witnesses. No floating-point
solver conclusion enters the replay.

## Conditional branches newly excluded

Five new exact area leaves require respectively 543, 161, 775, 734 and
413 immutable arithmetic updates. Eight additional exact linear leaves
have the following positive-integer factor counts:

| Signed leaf ID | Factors |
|---|---:|
| `rmmmmmmppmppmmp` | 15 |
| `rmmmmmmppmppmpp` | 12 |
| `rmmmmmmppmppmpm` | 85 |
| `rmmmmmmppmppppm` | 78 |
| `rmmmmmmppp` | 26 |
| `rmmmmmpp` | 25 |
| `rmmmmmpmmp` | 78 |
| `rmmmmmpmpp` | 63 |

The entire subtree rooted at `rmmmmmmppmpp` is closed, covering both
`CZR` alternatives. Its negative child is covered by the `FYP` and
`YPQ/YPR` cuts, and its positive child by the `FYP` and `YPR` cuts.
The sibling `rmmmmmmppp` is separately excluded by a 26-factor exact
certificate. These are *proper subtrees*, not a whole exterior count row.

## Exact unresolved frontier

Every remaining node is explicitly queued. In order:

```text
rp
rmp
rmmp
rmmmp
rmmmmp
rmmmmmpmmm
rmmmmmpmpm
```

The first five branches have few stipulated signs. Their current area-only
LP relaxations are feasible, so another sign, geometric bound or nonlinear
invariant is required; numerical feasibility does **not** imply that an
actual ten-point configuration exists.

The last two have `HDY-, CFY-, HDZ-, ODY-, OFZ-, HYZ+, PYZ-`,
and respectively `RYZ-` or `RYZ+`, with `OYP-`. Both require an
additional `OZQ` split under current rules; each resulting child
currently still requires an `HYP` split. Their `OYP+` siblings are
excluded by the final two committed exact certificates.

## Acceptance and next gate

No new box is ticked in `n10/hand/ROADMAP.md`: proof of a signed subtree
by exact computer replay is not, by itself, the standalone hand argument
required there. A successful next gate must (1) exhaust the seven queued
branches with fully auditable inequalities, (2) turn the complete C1 count
into a written geometric argument, and (3) continue to the ten other open
C1 counts and the N6/N7 parents. Prefer a uniform argument that eliminates
several shallow roots over indefinitely adding isolated local cuts.

All commits in this continuation carry `[skip ci]`. No CI, GitHub Actions,
Lean compilation or n=9 files are needed for this research checkpoint.
