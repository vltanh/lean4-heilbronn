# Heilbronn triangle problem: nine points in the unit square

The complete mathematical proof and equality classification are assembled
in [hand/GLOBAL_THEOREM.md](hand/GLOBAL_THEOREM.md):

\[
\boxed{
H_9=\max_{P_1,\ldots,P_9\in[0,1]^2}
\min_{i<j<k}\operatorname{Area}(P_iP_jP_k)
=\frac{9\sqrt{65}-55}{320}.
}
\]

Equality holds only at the stated construction, up to square symmetry and
relabeling. Every maximizer has two points on each open square side and
one interior point.

The proof combines geometric reductions, sharp analytic inequalities,
and fixed exact rational certificate tables. All cases in the retained
register are closed: **62 of 62 parent rows and 221 of 221 leaves**.
The proof has received internal geometric review and independent
implementations of the new certificate checks. It is not Lean-verified,
and no external peer review or CI run is claimed.

## Reading the proof

| Purpose | Entry point |
|---|---|
| Complete unrestricted theorem, exact coordinates, and uniqueness | [hand/GLOBAL_THEOREM.md](hand/GLOBAL_THEOREM.md) |
| Detailed theorem index | [hand/README.md](hand/README.md) |
| Exact attainment, sharp chamber, and unrestricted strict local maximum | [hand/HAND_PROOF.md](hand/HAND_PROOF.md) |
| Exhaustive normalization and equality transfer through shears | [hand/GLOBAL_STRUCTURE.md](hand/GLOBAL_STRUCTURE.md) |
| Every eight-boundary incidence and orientation class | [hand/EIGHT_BOUNDARY.md](hand/EIGHT_BOUNDARY.md) |
| Complete normalized seven-boundary theorem | [hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md), Theorem 2 |
| Stable closed case register | [hand/G6_ITEMIZED_CASES.md](hand/G6_ITEMIZED_CASES.md) and [hand/G6_ITEMIZED_LEAVES.tsv](hand/G6_ITEMIZED_LEAVES.tsv) |
| Completion gates and review work | [ROADMAP.md](ROADMAP.md) |
| Reproduction and handoff | [HANDOFF.md](HANDOFF.md) |

The normalization covers N, C1, C2, Type II, and Type III without assuming
that an arbitrary interior point can be pushed to the boundary. The complete
C1 and N case proofs supply the formerly missing step. The final equality
argument uses unrestricted strict local optimality to eliminate any
nontrivial normalization shear.

## Final case closures

| Complete family | Main manuscript | Fixed certificates | Positive terms |
|---|---|---:|---:|
| N6 single opposite-cap point, both interior placements | [SIX_BOUNDARY_SINGLE_TOP_COMPLETION](hand/SIX_BOUNDARY_SINGLE_TOP_COMPLETION.md) | 542 | 86,610 |
| N6 side plus opposite cap, lower and upper interior placements | [SIX_BOUNDARY_SIDE_TOP_COMPLETION](hand/SIX_BOUNDARY_SIDE_TOP_COMPLETION.md) and its lower companion | 105 | 22,138 |
| N6 two opposite-cap points, both hulls and interior placements | [SIX_BOUNDARY_DOUBLE_TOP_COMPLETION](hand/SIX_BOUNDARY_DOUBLE_TOP_COMPLETION.md) | 329 | 56,558 |
| C1 one lower point with two or three opposite-cap points | [C1_ONE_LOWER_TOP_MULTIPLICITY](hand/C1_ONE_LOWER_TOP_MULTIPLICITY.md) | 201 | 27,887 |
| C1 one lower point and two different occupied caps | [C1_ONE_LOWER_MIXED_CAPS](hand/C1_ONE_LOWER_MIXED_CAPS.md) | 134 | 20,543 |

These five final packages contain **1,311 certificates and 213,736 positive
rational terms**. The finite covers include every required free-point sign,
fixed coordinate subdivision, and sharp-chamber complement. Counting the
coarser register leaves alone is not their proof.

Concurrent contributions are preserved as additional complete proofs:
[SIX_BOUNDARY_SINGLE_TOP](hand/SIX_BOUNDARY_SINGLE_TOP.md),
[SIX_BOUNDARY_SIDE_OPPOSITE](hand/SIX_BOUNDARY_SIDE_OPPOSITE.md),
[SIX_BOUNDARY_TWO_TOP_CONVEX](hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md), and the
separate C1 top-cap packages. The global assembly names the precise
version used at each step.

## Reproduce the final exact checks

The coefficient verifiers below use only the Python standard library.
Run from the repository root:

```sh
python hand/check_g6_case_ledger.py
python hand/check_g6_itemized_cases.py
python hand/check_six_boundary_side_top_lower.py
python hand/check_six_boundary_side_top_completion.py
python hand/check_six_boundary_single_top_completion.py
python hand/check_six_boundary_double_top_completion.py
python hand/check_c1_one_lower_top_multiplicity.py
python hand/check_c1_one_lower_mixed_caps.py
```

The sharp E/F height-bound identities and the independent coefficient
audits use SymPy:

```sh
python hand/check_sharp_ef_high.py
python research/audit_n6_side_top_lower_sympy.py
python research/audit_n6_side_top_upper_sympy.py
python research/audit_six_boundary_single_top_sympy.py
python research/audit_n6_double_top_sympy.py
python research/audit_c1_one_lower_mixed_caps_sympy.py
```

The independent scripts reconstruct determinants, factors, finite covers,
and coefficient sums without importing the production polynomial kernels.
Their receipts and input hashes are under `research/`.
The original identities and geometric diagnostics remain indexed in
[hand/README.md](hand/README.md). The exact local checker is
[exact/verify_local.py](exact/verify_local.py).

The convex-position exclusion retains the classical affine-isoperimetric
input and primary reference stated in
[hand/GLOBAL_COMPLETION.md](hand/GLOBAL_COMPLETION.md).
Numerical optimization discovers coefficients; the fixed rational
identities and exhaustive covers are the proof witnesses.

## Earlier computational draft

[exact/PROOF.md](exact/PROOF.md), [exact/STATUS.md](exact/STATUS.md), and
[exact/REPRODUCE.md](exact/REPRODUCE.md) preserve the older executable
three-family proof approach and its recorded runs. Its 330,988-pattern
Type-I run was not rerun for this completion and is not a premise of
the proof assembled in GLOBAL_THEOREM.md.

## Literature

- N. Sudermann-Merx, [*From Global Optimization to Exact Coordinates: Heilbronn's Triangle Problem on the Unit Square Using Mixed-Integer Nonlinear Optimization*](https://arxiv.org/abs/2603.11107), version 3, October 27, 2026.
- Comellas and Yebra (2002), the candidate construction.

No existing main-branch Lean proof was modified. Formalization and external
review remain separate validation steps for the completed mathematical proof.
