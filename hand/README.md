# Nine-point Heilbronn: hand proofs and the remaining global gap

The **complete eight-boundary theorem** is proved in
[EIGHT_BOUNDARY.md](EIGHT_BOUNDARY.md): every nine-point configuration in
the unit square with at least eight boundary points has minimum triangle
area at most

\[
A_0=\frac{9\sqrt{65}-55}{320},
\]

with equality only at the stated construction, up to square symmetry and
relabeling. No symmetry or orientation chamber is assumed in that theorem.

**The unrestricted hand proof remains incomplete.** The global normalization
does not yet force eight boundary points, and the remaining continuous
families are listed below. The older computational draft is separate.

## Proven results

| Result | Written proof |
|---|---|
| Exact construction and all 84 triangle areas | [HAND_PROOF.md](HAND_PROOF.md), appendix |
| Sharp eleven-triangle inequality for the asymmetric candidate chamber | `HAND_PROOF.md`, Part I |
| Unrestricted strict local maximum against all eighteen coordinate perturbations | `HAND_PROOF.md`, Part II |
| All eight-boundary incidence and orientation cases; equality classification | [EIGHT_BOUNDARY.md](EIGHT_BOUNDARY.md), Theorem 13 |
| Finite derivation of all 36 radial words and their eight square-symmetry classes | [RADIAL_CATALOGUE.md](RADIAL_CATALOGUE.md) |
| Complete continuous exclusion of radial class R6 | [R6_BOUND.md](R6_BOUND.md) |
| Exhaustive normalization to N, C1, C2, Type II, Type III; at most twelve parameters | [GLOBAL_STRUCTURE.md](GLOBAL_STRUCTURE.md) |
| Complete exclusion of C2 at \(7/128<A_0\) | [OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md) |
| Seven-point triangular-hull bound and global triangle-occupancy restriction | [CORNER_FAMILIES.md](CORNER_FAMILIES.md), Sections 1–4 |
| Six-point nontriangular-hull support-triangle bound | `CORNER_FAMILIES.md`, Section 6 |
| Sharp six-point triangular-hull bound \(S\ge(11+3\sqrt5)t/2\) | `CORNER_FAMILIES.md`, Section 8 |
| Complete Type-III exclusion at \(7/128<A_0\), including every diagonal count | `CORNER_FAMILIES.md`, Sections 3–12 |
| Four-corner theorem at \(1/19\), with a controlled projective transfer | [FOUR_CORNERS.md](FOUR_CORNERS.md) and `CORNER_FAMILIES.md`, Section 9 |
| Type II reduced to two count classes; every central-triple orientation excluded | [TYPE_II.md](TYPE_II.md) |
| Sharp six-point quadrilateral-hull bound and N/C1 occupancy restrictions | [QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md) |
| Equality transfer through all normalizing shears | `GLOBAL_STRUCTURE.md`, Lemma 4 |

The original three-family argument is retained in
[BOUNDARY_REDUCTION.md](BOUNDARY_REDUCTION.md). All strengthened normal forms
include arbitrary remaining points; they do not assume those points lie in
an observed numerical pattern.

## What remains

- **N:** six prescribed boundary points and three arbitrary points, with fewer
  than eight total boundary points.
- **C1:** one occupied corner, four further side contacts, and four arbitrary
  points.
- **Type II:** after the area-preserving normalization to \(b\le1/2\), only
  the left/central/right counts \((1,2,3)\) and \((2,2,2)\) remain. The left
  count includes the prescribed side contact. All cases with three central
  points, and the count \((2,1,3)\), have been excluded.

The opposite-corner family C2 and the entire three-corner family Type III
are closed at \(7/128<A_0\).

A proof covering these complete families, or a proved boundary-saturation
reduction to the solved family, would finish the unrestricted theorem.
A local theorem or a numerical description of the candidate does not supply
that step. See [../ROADMAP.md](../ROADMAP.md) for the current completion gates.

## Optional exact diagnostics

From the repository root, run:

```sh
python hand/check_identities.py
python hand/check_eight_boundary.py
python hand/check_radial.py
python hand/check_r6.py
python hand/check_opposite_corners.py
python hand/check_corners.py
python hand/check_four_corners.py
python hand/check_type_ii.py
python hand/check_quadrilateral_hulls.py
```

These scripts use SymPy where appropriate and verify the printed determinant
identities, rational inequalities, and small finite tables. The written proofs
supply the geometry and sign arguments. The scripts do not replace those
arguments or serve as a global coordinate-box certificate.

No exhaustive real-box subdivision or numerical optimizer is a premise of
these hand proofs. Algebraic exploration was used to discover identities;
every identity and scalar positivity argument used in a theorem is displayed
in the text.

The local radius in the hand proof is qualitative. The separate explicit
radius \(1/200\) belongs to the older exact arithmetic certificate and cannot
be replaced by an unspecified radius in its global cover. No external
independent audit or Lean verification of these hand arguments is claimed.
