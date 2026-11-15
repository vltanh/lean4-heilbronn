# Independent audit: the complete one-lower C1 mixed-cap theorem

The three-file mixed-cap package at upstream commit
`052c931fcfba2475505037916f2e06d3b1e631c1` was independently reviewed
and checked during the November 15, 2026 continuation.

## Scope and result

The geometry and exact finite cover exclude all three ordered cap patterns
`RT`, `RL`, and `TL` after imposing `f <= d`. They close both complete
parent rows **C1-1-04** and **C1-1-07**, for every lower wedge, upper sector,
and free-point orientation. No incompatible second reflection is assumed.

The review checked the supporting-angle word argument, cap and coordinate
gaps, the positive top-point cross-ear areas and their bound `1 - 7s/3`,
the capacity-one bound for `OFH`, the affine argument for `[XYL] > 0`, and
the whole-word inequalities `h >= rho` and
`f <= (1-rho)/(4s) = 803/1920`. It checked the exhaustive sign and scalar
branches, including their boundaries, and the geometric terminal rules.

The supplied Fraction checker passed. The separate audit script reconstructed
the anchor words, retained word pairs, assigned signs, containment costs,
geometric pruning, every cover edge and leaf, and every affine factor directly.
It independently re-expanded all determinants and weighted sums with a SymPy
polynomial ring. It imports neither the supplied checker nor an optimizer.

| Checked quantity | Exact result |
|---|---:|
| Retained word pairs | 62: 20 RT, 20 RL, 22 TL |
| Rational certificates | 134 |
| Terminal branches | 136 |
| Positive rational terms | 20,543 |
| Scalar branch locations | 1: RT(1,3), `q_x <= 5/8` or `q_x >= 5/8` |

Both implementations obtained the same largest cube upper bound:

\[
-\frac{14173057434018160863047671}
       {14173058272635861860352000}<-\frac34.
\]

## Reproduction

From the repository root, run:

```bash
python hand/check_c1_one_lower_mixed_caps.py
python research/audit_c1_one_lower_mixed_caps_sympy.py
```

The first command uses only the standard library. The independent command
requires SymPy. This audit used Python 3.12.14 and SymPy 1.14.0.
It reports the complete word/leaf/term census, exact worst bound, and sole
scalar cut. It rejects missing cover nodes, inconsistent branch conditions,
invalid coefficient indices, and incorrect polynomial bounds.

## Audited inputs

| File | SHA-256 |
|---|---|
| `hand/C1_ONE_LOWER_MIXED_CAPS.md` | `cc5284525d01888b8378890d28400ec7e5e4a394620769a64637efe3e406ae09` |
| `hand/check_c1_one_lower_mixed_caps.py` | `7c9c11b50cbf07ad883ad6b26c8072212481d806a97f79a7c72de07269d3df0e` |
| `hand/c1_one_lower_mixed_caps_certificates.json` | `a78e1b936990e910b0f7b981927daa6d03cf9580eecf3d07173a073cd87ea98e` |

These checks establish the stated finite cover and independently validate
its exact algebra. They are not Lean verification or an external peer review,
and they rely on the previously proved geometric triangle and container
theorems cited by the manuscript. No CI was used.
