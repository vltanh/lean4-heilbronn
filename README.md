# Heilbronn triangle problem — nine points

Research branch for the **unit-square nine-point Heilbronn problem**

\[
H_9=\max_{p_1,\ldots,p_9\in[0,1]^2}
\min_{i<j<k}\operatorname{Area}(p_i,p_j,p_k)
\]

with exact candidate

\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]

## What is available

- **Complete eight-boundary hand theorem:** [hand/EIGHT_BOUNDARY.md](hand/EIGHT_BOUNDARY.md) proves the sharp upper bound and uniqueness for every configuration with at least eight boundary points. The proof includes all boundary multiplicities and all orientation classes; symmetry is a conclusion at equality.
- **Global hand reductions and corner theorems:** [hand/GLOBAL_STRUCTURE.md](hand/GLOBAL_STRUCTURE.md) strengthens the normalization to five explicit families with at most twelve parameters. [hand/OPPOSITE_CORNERS.md](hand/OPPOSITE_CORNERS.md) completely excludes the opposite-corner family with the strict bound \(7/128<A_0\). [hand/CORNER_FAMILIES.md](hand/CORNER_FAMILIES.md) gives self-contained occupancy theorems, a sharp six-point triangular-hull lemma, and reduces Type III to two diagonal-count cases.
- **Exact attainment and local optimality:** [hand/HAND_PROOF.md](hand/HAND_PROOF.md) supplies the sharp chamber argument used in the eight-boundary theorem, all 84 attaining areas, and unrestricted qualitative strict local optimality.
- **Exact computational proof draft:** [exact/PROOF.md](exact/PROOF.md) and [exact/STATUS.md](exact/STATUS.md) describe a claimed complete finite global cover over three families, with exact arithmetic checkers and previously recorded PASS runs. The mathematical/code argument is unreviewed and **not Lean-verified**.
- **The unrestricted hand proof is still incomplete.** [ROADMAP.md](ROADMAP.md) and [HANDOFF.md](HANDOFF.md) identify the remaining continuous families: N, C1, Type II, and the two residual Type-III cases. The eight-boundary theorem does not assert that an unrestricted optimizer has eight boundary points.

## Quick local checks

```sh
python hand/check_identities.py            # SymPy diagnostics; not a global certificate
python hand/check_eight_boundary.py
python hand/check_radial.py
python hand/check_r6.py
python hand/check_opposite_corners.py
python hand/check_corners.py
python exact/verify_local.py                # standard-library exact local theorem
cd exact
g++ -O3 -std=c++17 verify_global.cpp -o verify_global
./verify_global corners                    # complete Type II and III
./verify_global type1                      # full Type I; expensive
```

Check all three markers `TYPE3_COMPLETE_PASS`, `TYPE2_COMPLETE_PASS`, `TYPE1_COMPLETE_PASS`. A partial Type-I replay is **not** a global proof. Full requirements and missing archived journal are described in [exact/REPRODUCE.md](exact/REPRODUCE.md).

## Literature

- N. Sudermann-Merx, [*From Global Optimization to Exact Coordinates: Heilbronn's Triangle Problem on the Unit Square Using Mixed-Integer Nonlinear Optimization*](https://arxiv.org/abs/2603.11107), version 3, October 27, 2026 (three-family reduction, exact candidate).
- Comellas and Yebra (2002), the candidate construction.

No existing main-branch Lean proof was modified; this PR records mathematical and computational research first, with formalization as a later review gate.
