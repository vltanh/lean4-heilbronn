# Nine points: research archive

The research notes of the nine-point proof, as they stood when the hand proof
was completed: this README, the completion gates
([ROADMAP.md](ROADMAP.md)), the handoff ([HANDOFF.md](HANDOFF.md)), the
independent audits and searches ([research/](research/)), a discovery
workspace ([work/](work/)) and the earlier computational route
([exact/](exact/)). They are kept for the record; nothing here is a premise of
the proof or of the formalization.

- The proof: [docs/proof/nine/](../../proof/nine/README.md).
- Its Lean formalization: [`Heilbronn/Nine/`](../../../Heilbronn/Nine).

The scripts run from the repository root, for example
`python docs/research/nine/research/run_hand_checks.py`. The text below is
unchanged except for its paths. Two of its statements are out of date: the
proof is now formalized in Lean, and the formalization does not use the affine
isoperimetric inequality.

## The README at completion


The unrestricted proof and its equality classification are complete in
[hand/UNRESTRICTED.md](../../proof/nine/UNRESTRICTED.md):

\[
\boxed{H_9=\frac{9\sqrt{65}-55}{320}.}
\]

Here \(H_9\) is the largest possible minimum **ordinary** triangle area
among nine points in the closed unit square. Equality holds only at the
explicit nine-point configuration in the theorem, up to a symmetry of the
square and relabeling.

The proof combines geometric arguments, continuous sharp inequalities and
fixed rational polynomial certificates with complete sign covers. All five
normalized families are handled. The original case register now has
**62 closed parent rows and 221 closed leaves; none remain open**.

### Read the proof

| Entry point | Contents |
|---|---|
| [Unrestricted theorem](../../proof/nine/UNRESTRICTED.md) | Complete assembly, exact attaining configuration, all family closures, boundary cases and global uniqueness |
| [Theorem index](../../proof/nine/README.md) | Detailed index of the component proofs and their exact verifiers |
| [Global normalization](../../proof/nine/GLOBAL_STRUCTURE.md) | Exhaustive reduction to N, C1, C2, Type II and Type III; equality transfer through feasible shears |
| [Sharp chamber and construction](../../proof/nine/HAND_PROOF.md) | Sharp eleven-triangle inequality, all 84 attaining areas and unrestricted strict local optimality |
| [Completed case register](../../proof/nine/G6_ITEMIZED_CASES.md) | Stable IDs and proof links for every parent case |
| [Completion gates](ROADMAP.md) | Final dependency and validation map |

The final N6 occupancy closes by the two exhaustive cap-hull alternatives
in [SIX_BOUNDARY_TWO_TOP_COMPLETION.md](../../proof/nine/SIX_BOUNDARY_TWO_TOP_COMPLETION.md).
The complete C1 one-lower assembly is Theorem 2 of
[C1_ONE_LOWER_MIXED_CAPS.md](../../proof/nine/C1_ONE_LOWER_MIXED_CAPS.md).
Both build on the previously completed zero-lower, two-lower, seven-boundary
and corner-family arguments.

### Preserved alternative certificate covers

The concurrent assembly [GLOBAL_THEOREM.md](../../proof/nine/GLOBAL_THEOREM.md)
proves the same result using separately developed final covers. Its
[single-top completion](../../proof/nine/SIX_BOUNDARY_SINGLE_TOP_COMPLETION.md) has
542 certificates and 897 terminal cells; its
[double-top completion](../../proof/nine/SIX_BOUNDARY_DOUBLE_TOP_COMPLETION.md) has
329 certificates across both cap hulls, using the
[high E/F sharp chamber](../../proof/nine/SHARP_EF_HIGH.md). Both complete covers and
the sharp chamber passed separate symbolic and geometric audits. These
packages are retained alongside the primary assembly above; each count
belongs to its named certificate file.

### Reproduce the exact checks

Python 3 and SymPy are used by the complete collection of hand-proof
diagnostics. The fixed rational certificate verifiers themselves use
integer and fraction arithmetic; they do not import an optimizer.

Run the whole integrated collection with
`python docs/research/nine/research/run_hand_checks.py`; its per-file results and input
fingerprints are in [research/HAND_CHECKS.md](research/HAND_CHECKS.md).
The final combined verification passed all **89 diagnostics**, with zero
failures. It preserves the original 86-check run, adds the three concurrent
diagnostics, and confirms that the original proof inputs were unchanged.
A targeted follow-up also confirmed all 62 parent cases and 221 leaves.

The final packages can also be checked directly:

```sh
python docs/proof/nine/check_g6_itemized_cases.py
python docs/proof/nine/check_six_boundary_single_top.py
python docs/proof/nine/check_six_boundary_side_opposite.py
python docs/proof/nine/check_six_boundary_two_top_triangular.py
python docs/proof/nine/check_six_boundary_two_top_convex.py
python docs/proof/nine/check_c1_one_lower_mixed_caps.py
```

Separate implementations in `research/audit_*.py` independently reconstruct
the finite covers, geometric costs, coefficient expansions and permitted
certificate reuse. The manuscripts explain the geometric premises that
these arithmetic checks use. Optional discovery scripts use SciPy to find
weights; the fixed rational expressions and their exact negative bounds
are the proof objects.

### Mathematical scope

This is a completed mathematical proof with exact finite certificates.
It is **not a Lean formalization**. The scripts and manuscripts have received
separate internal reconstruction and geometric audits; external peer review
is not claimed. The convex-nonagon step uses the classical planar affine
isoperimetric inequality, with a primary reference and the full reduction
in [GLOBAL_COMPLETION.md](../../proof/nine/GLOBAL_COMPLETION.md).

### Earlier computational route

The separate [exact/PROOF.md](exact/PROOF.md) and
[exact/STATUS.md](exact/STATUS.md) retain the earlier executable global
cover. Its full 330,988-pattern Type-I computation has not been rerun for
this completion, and the new proof does not depend on that run.
Reproduction requirements, including the archived secondary journal,
remain in [exact/REPRODUCE.md](exact/REPRODUCE.md).

The original exact local certificate can be reproduced with
`python docs/research/nine/exact/verify_local.py`. Its explicit radius \(1/200\) belongs to
that certificate; the hand proof's local-rigidity theorem is qualitative.

### References

- N. Sudermann-Merx, [*From Global Optimization to Exact Coordinates: Heilbronn's Triangle Problem on the Unit Square Using Mixed-Integer Nonlinear Optimization*](https://arxiv.org/abs/2603.11107), for the computational research context and earlier normalization.
- W. Chen, R. Howard, E. Lutwak, D. Yang and G. Zhang, [*A Generalized Affine Isoperimetric Inequality*](https://arxiv.org/abs/math/0402083), for the classical analytic input to the nonagon bound.
- The candidate construction is attributed to Comellas and Yebra (2002); its coordinates and every attaining triangle area are checked exactly in this repository.
