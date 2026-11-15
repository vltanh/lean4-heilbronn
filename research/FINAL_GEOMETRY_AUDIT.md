# Final geometry and assembly audit

**Reviewed:** 2026-11-15, against the current
[GLOBAL_THEOREM.md](../hand/GLOBAL_THEOREM.md), including its corrected
one-lower C1 argument and the reference to
[SIX_BOUNDARY_SINGLE_TOP_COMPLETION.md](../hand/SIX_BOUNDARY_SINGLE_TOP_COMPLETION.md).

**Result:** no remaining gap was found in the reviewed normalization,
occupancy assembly, symmetry conventions, equality transfer, or capacity
dependency order. This records an internal mathematical review. It does
not claim an external audit or Lean formalization; exact coefficient
verification is documented separately.

## 1. Exhaustive normalization and the corrected C1 argument

Positive minimum area excludes coincident points and collinear triples,
so every square side has at most two contacts. For a maximizer, the
minimum enclosing parallelogram argument gives opposite-projection
overlap. The feasible determinant-one shears in
[GLOBAL_STRUCTURE.md](../hand/GLOBAL_STRUCTURE.md) preserve every triangle
area and every existing boundary incidence. At most two contact-increasing
shears, followed when needed by the adjacent-corner normalization, lead
to N, C1, C2, Type II, or Type III. The remaining points stay arbitrary.

The four C1 lower-count alternatives are exhaustive. In the one-lower
case with no exterior point, the three other free points lie in HCDF.
The seven-point quadrilateral theorem gives

\[
W=2\operatorname{area}(HCDF)\ge10s=80/73>1,
\qquad s=8/73<2A_0,
\]

contradicting \(W\le1\). This is the corrected direct argument in the
global assembly. It avoids applying the two-lower configuration stated
in `C1_MIXED_PENTAGON.md` to a one-lower placement.

## 2. Independent occupancy enumeration

For one-lower C1, use \((U,R,T,L)\) after choosing \(f\le d\).
The four nonnegative counts sum to three. With at least two exterior
points, the cap lemmas give \(R\le2,L\le1,T\le3\);
\(R=2\) forces \(L=0,T\le1\); occupied L forces \(T\le1\);
occupied R forces \(T\le2\). Independent integer enumeration leaves
exactly the nine printed rows:

\[
\begin{gathered}
(1,2,0,0),\ (0,2,1,0),\ (1,1,1,0),\ (1,1,0,1),\ (1,0,1,1),\\
(1,0,2,0),\ (0,1,2,0),\ (0,1,1,1),\ (0,0,3,0).
\end{gathered}
\]

Zero and one exterior point are handled separately. In the one-point-per-cap
row, each cap point is separated from all other points by its own anchor
edge, so the eight-hull exclusion applies.

For N with exactly six boundary contacts, the anchor-hull theorem handles
no exterior point. The lower-left cap is empty and each side cap has
capacity one. Independently enumerating
\(n_L+n_T+n_R+n_I=3\), \(n_L+n_T+n_R>0\), and
\(0\le n_L\le n_R\le1\) gives precisely the eight transposition
representatives:

\[
\begin{gathered}
(0,0,1;2),\ (1,0,1;1),\ (0,1,0;2),\ (0,1,1;1),\\
(1,1,1;0),\ (0,2,0;1),\ (0,2,1;0),\ (0,3,0;0).
\end{gathered}
\]

The linked component theorems cover both lower and upper interior
placements where applicable. N6-03 uses `SIX_BOUNDARY_SINGLE_TOP_COMPLETION.md`;
N6-06 uses `SIX_BOUNDARY_DOUBLE_TOP_COMPLETION.md` and `SHARP_EF_HIGH.md`.

## 3. Seven-boundary normalization and symmetry use

With seven corner-free boundary points, exactly three sides have two
contacts. Rotate the singleton to the top. Projection overlap gives
\(b\le f\le c\). The horizontal reflection sends this to
\(1-c\le1-f\le1-b\), so choosing \(f\le1/2\) preserves the
projection condition and leaves both vertical sides doubly occupied.
These are exactly the open-side hypotheses of Theorem 2 in
[SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](../hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md).

For C1, choosing \(f\le d\) does not also justify ordering cap counts:
the mixed-cap theorem retains RT, RL, and TL. For N6, \(n_L\le n_R\)
labels transposition orbits; the asymmetric side and mixed-cap theorems
do not additionally assume \(f\le d\). The symmetric top-only and
both-side occupancies are preserved by transposition, so their separate
choice of \(f\le d\) is valid. No reflection is used twice to impose
independent asymmetric conventions.

## 4. Equality transfer

The N7 and N6 sharp results force the additional boundary contacts and
identify the same eight-boundary extremizer. The N6-06 E/F theorem used
here requires \(k\ge6/7\), supplied by its complementary certificate;
it does not assume \(h\le k\) or \(b\le g\).

The normalization's last nonconstant feasible shear would give distinct
configurations approaching that extremizer with all triangle areas
unchanged. Its feasible parameters form an interval. This contradicts
the **unrestricted**, eighteen-coordinate strict local theorem in
[HAND_PROOF.md](../hand/HAND_PROOF.md), Theorem 2. Applying the argument
backwards leaves only square symmetries and relabelings, as formalized
in `GLOBAL_STRUCTURE.md`, Lemma 4.

## 5. Noncircular capacity dependencies

The reviewed dependency order is:

1. The earlier triangular-hull bounds and robust exterior-point inequality
   yield the hull-ear theorem in
   [THREE_INTERIOR_TRIANGLES.md](../hand/THREE_INTERIOR_TRIANGLES.md), Theorem 1.
2. That ear theorem gives N capacity through its Corollary 2. Together
   with the **original** corner-triangle occupancy theorem in
   [ONE_CORNER.md](../hand/ONE_CORNER.md), Sections 1–4, it gives C1 capacity
   in that note's Section 6 and Type-II capacity in Corollary 4 of
   `THREE_INTERIOR_TRIANGLES.md`.
3. These capacity results, the earlier C2/Type-III exclusions, and the
   enclosing-parallelogram normalization give unrestricted actual-triangle
   capacity in Corollary 5.
4. Only then does
   [TYPE_II_COMPLETION.md](../hand/TYPE_II_COMPLETION.md), Theorem 1, combine
   actual-triangle capacity with the earlier nontriangular support lemma
   to prove the closed two-actual-vertex container bound.
5. The final fan, cap, and occupancy arguments use these established
   capacities downstream.

Thus the stronger two-vertex theorem is not an input to the earlier
corner-triangle argument, and neither unrestricted capacity nor the
normalization assumes the completed C1 or N upper bound. The separately
stated affine-isoperimetric input for the convex-nonagon exclusion remains
an explicit mathematical dependency of the assembly.
