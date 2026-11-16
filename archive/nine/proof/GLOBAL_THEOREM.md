# The unrestricted nine-point Heilbronn theorem

This note assembles the complete geometric reductions, sharp chamber
inequalities, and fixed exact rational certificates in this directory.
The coefficient tables are part of the proof. The result is an exact
computer-assisted mathematical proof; it is not a Lean formalization.

## 1. Statement and equality configuration

For nine points \(P=(P_1,\ldots,P_9)\) in the closed unit square, write

\[
m(P)=\min_{1\le i<j<k\le9}\operatorname{Area}(P_iP_jP_k),
\qquad H_9=\max_{P\in([0,1]^2)^9}m(P).
\]

**Theorem 1.** The exact value is

\[
\boxed{H_9=A_0=\frac{9\sqrt{65}-55}{320}.}
\]

Equality holds only at the following configuration, up to a symmetry of
the square and a permutation of the nine points. Put

\[
p=\frac{15-\sqrt{65}}{40}.
\]

| Point | Coordinates |
|---|---|
| \(A\) | \((0,\,4p-\tfrac12)\) |
| \(B\) | \((p,\,0)\) |
| \(C\) | \((1-\tfrac32p,\,0)\) |
| \(D\) | \((1,\,\tfrac32p)\) |
| \(E\) | \((1,\,1-p)\) |
| \(F\) | \((\tfrac32-4p,\,1)\) |
| \(G\) | \((p,\,1)\) |
| \(H\) | \((0,\,1-p)\) |
| \(O\) | \((1-2p,\,2p)\) |

In particular every maximizing configuration has exactly eight boundary
points, two on each open side, and one point in the open square.
This boundary conclusion follows from the completed proof below.

The exact attainment table in the appendix of
[HAND_PROOF.md](HAND_PROOF.md) checks all \(\binom93=84\) triangles.
Thus the displayed configuration belongs to the square and has
\(m(P)=A_0>0\).

## 2. Exhaustive normalization

The function \(m\) is continuous on the compact space
\(([0,1]^2)^9\), so a maximizer exists. Its value is positive by the
construction. Hence its points are distinct, no three are collinear,
and no square side has more than two points.

[GLOBAL_STRUCTURE.md](GLOBAL_STRUCTURE.md), Theorem 3, transforms such
a maximizer, preserving every triangle area, into one of the following
five complete continuous families:

| Family | Prescribed contacts | Remaining points |
|---|---|---:|
| N | Two contacts on each of two adjacent sides, one on each opposite side, no occupied corner | 3 arbitrary points |
| C1 | One occupied corner, a further contact on each incident side, and contacts on both opposite sides | 4 arbitrary points |
| C2 | Two opposite occupied corners and one further contact on each side | 3 arbitrary points |
| Type II | The adjacent-corner normal form | 5 arbitrary points |
| Type III | Three occupied corners | 6 arbitrary points |

The reduction uses a minimum-area enclosing parallelogram and the overlap
of opposite contact projections. When a pair of opposite sides has only
one contact each, a feasible determinant-one shear increases the number
of boundary incidences. At most two such shears give the strengthened
contact pattern; the established adjacent-corner normalization then
handles that alternative.

The unprescribed points remain arbitrary throughout. No step assumes
that a point can be moved individually to the square boundary while
preserving the minimum triangle area.

The complete corner-family exclusions are:

| Family | Complete proof |
|---|---|
| C2 | [OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md) |
| Type III | [CORNER_FAMILIES.md](CORNER_FAMILIES.md), Sections 3–12 |
| Type II | [UNBALANCED_FINAL_LOWER_WEDGE.md](UNBALANCED_FINAL_LOWER_WEDGE.md), Theorem 2, including the area-equivalent Type-III alternative |

Each excludes a configuration of minimum area at least \(A_0\).
It remains to treat C1 and N.

## 3. The entire one-corner family is excluded

Use the C1 anchors

\[
O=(0,0),\quad C=(c,0),\quad D=(1,d),\quad
F=(f,1),\quad H=(0,h),
\qquad 0<d\le h<1,\quad0<f\le c<1.
\]

Let \(n_0\) count the four free points inside the actual lower triangle
\(OHC\). An incidence on one of its actual edges would give a zero-area
triangle and is already impossible under the competitive hypothesis
\(m(P)\ge A_0\).

The lower-point alternatives are exhaustive:

| Lower count | Complete exclusion |
|---|---|
| \(n_0\ge3\) | [ONE_CORNER.md](ONE_CORNER.md), corner-triangle occupancy theorem |
| \(n_0=2\) | [C1_TWO_LOWER_COMPLETION.md](C1_TWO_LOWER_COMPLETION.md) |
| \(n_0=0\) | [C1_ZERO_LOWER.md](C1_ZERO_LOWER.md) |
| \(n_0=1\) | The complete assembly immediately below |

For \(n_0=1\), transpose the square if necessary to arrange \(f\le d\).
The three other points occupy the upper quadrilateral \(HCDF\) or one
of the three exterior caps. Denote their counts, in this order, by
\((U,R,T,L)\), where the caps are \(CD(1,0)\), \(DF(1,1)\), and
\(FH(0,1)\). The corners in these cap names are virtual containing
vertices.

If no point is exterior, all three nonlower points are in \(HCDF\).
The seven-point quadrilateral theorem in
[QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md) then requires its doubled
area \(W\ge10s>1\), with \(s=8/73<2A_0\), contradicting \(W\le1\).
If exactly one is exterior,
the full single-top or single-side theorem applies:
[C1_ONE_LOWER_TOP_CAP.md](C1_ONE_LOWER_TOP_CAP.md) and
[C1_ONE_LOWER_SIDE_CAP.md](C1_ONE_LOWER_SIDE_CAP.md).

With at least two exterior points, the occupancy-independent cap
lemmas in Sections 1–2 of C1_ZERO_LOWER give the following complete
nine-row list. Its integer enumeration is also checked in the
mixed-cap verifier.

| \((U,R,T,L)\) | Complete exclusion |
|---|---|
| \((1,2,0,0)\) | [C1_ONE_LOWER_RIGHT_PAIR.md](C1_ONE_LOWER_RIGHT_PAIR.md) |
| \((0,2,1,0)\) | [C1_ONE_LOWER_RIGHT_PAIR.md](C1_ONE_LOWER_RIGHT_PAIR.md) |
| \((1,1,1,0)\) | [C1_ONE_LOWER_MIXED_CAPS.md](C1_ONE_LOWER_MIXED_CAPS.md), Theorem 1 |
| \((1,1,0,1)\) | The same complete mixed-cap theorem |
| \((1,0,1,1)\) | The same complete mixed-cap theorem |
| \((1,0,2,0)\) | [C1_ONE_LOWER_TOP_MULTIPLICITY.md](C1_ONE_LOWER_TOP_MULTIPLICITY.md) |
| \((0,1,2,0)\) | The same complete top-multiplicity theorem |
| \((0,1,1,1)\) | [C1_ONE_LOWER_EIGHT_HULL.md](C1_ONE_LOWER_EIGHT_HULL.md) |
| \((0,0,3,0)\) | The complete top-multiplicity theorem |

The top-multiplicity theorem includes both possible hulls of two cap
points together with \(D,F\), and every hull allowed for three cap
points. The mixed-cap theorem retains all three oriented classes
\(RT,RL,TL\) after choosing \(f\le d\).
In particular, an independent cap-order convention is not imposed
using the same reflection a second time.

All C1 placements are therefore excluded at \(m(P)\ge A_0\).

## 4. The complete corner-free family

The N anchors are

\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
\]

There are at least six and at most eight distinct boundary points.

### Eight boundary points

[EIGHT_BOUNDARY.md](EIGHT_BOUNDARY.md), Theorem 13, gives the sharp
bound \(m(P)\le A_0\), with exactly the equality configuration in
Section 1. It covers every incidence and orientation class.

### Seven boundary points

There are three doubly occupied sides and one singly occupied side.
Rotate the singleton to the top. Opposite-projection overlap puts its
coordinate \(f\) between the two bottom coordinates \(b,c\).
A horizontal reflection, if necessary, arranges \(f\le1/2\);
both vertical sides still have two contacts. Thus the hypotheses of
[SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md),
Theorem 2, hold.

That complete theorem covers both interior-point placements and every
exterior-cap alternative. It gives \(m(P)\le A_0\), and equality
forces the eighth boundary contact and the configuration in Section 1.
Consequently exactly seven boundary points cannot occur at equality.

### Six boundary points

The exact anchor-hexagon hull is excluded by
[SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md).
The lower-left exterior cap \((0,0)AB\) is empty, and each side cap
\(FH(0,1)\), \(CD(1,0)\) has capacity one, by
[SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md).

Write \((n_L,n_T,n_R;n_I)\) for the occupancies of the left, top,
right caps and the anchor-hexagon interior. Their sum is three,
at least one cap is occupied, and \(n_L,n_R\le1\).
Up to transposition there are exactly eight possibilities:

| Stable ID | Occupancy | Complete theorem and equality treatment |
|---|---|---|
| N6-01 | \((0,0,1;2)\) | [SIX_BOUNDARY_SINGLE_SIDE.md](SIX_BOUNDARY_SINGLE_SIDE.md): strict exclusion |
| N6-02 | \((1,0,1;1)\) | [SIX_BOUNDARY_TWO_SIDE_UPPER.md](SIX_BOUNDARY_TWO_SIDE_UPPER.md), with [its lower companion](SIX_BOUNDARY_TWO_SIDE_COMPLETION.md): sharp bound and complete equality |
| N6-03 | \((0,1,0;2)\) | [SIX_BOUNDARY_SINGLE_TOP_COMPLETION.md](SIX_BOUNDARY_SINGLE_TOP_COMPLETION.md): both lower/upper rows excluded |
| N6-04 | \((0,1,1;1)\) | [SIX_BOUNDARY_SIDE_TOP_COMPLETION.md](SIX_BOUNDARY_SIDE_TOP_COMPLETION.md): both rows closed; sharp B/D and D/F alternatives |
| N6-05 | \((1,1,1;0)\) | [SIX_BOUNDARY_TWO_SIDE_UPPER.md](SIX_BOUNDARY_TWO_SIDE_UPPER.md), Corollary 2: convex nonagon excluded |
| N6-06 | \((0,2,0;1)\) | [SIX_BOUNDARY_DOUBLE_TOP_COMPLETION.md](SIX_BOUNDARY_DOUBLE_TOP_COMPLETION.md): both cap hulls and both rows closed; sharp E/F alternative |
| N6-07 | \((0,2,1;0)\) | [SIX_BOUNDARY_SIDE_TWO_TOP.md](SIX_BOUNDARY_SIDE_TWO_TOP.md): strict exclusion |
| N6-08 | \((0,3,0;0)\) | [SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md](SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md): sharp bound and complete equality |

The interior points below \(HC\) and those in \(HCDF\) are both
included in every applicable row. The component proofs allow the extra
points on square sides, which is needed for their equality statements.
All sharp alternatives force the additional contacts and identify the
eight-boundary configuration in Section 1. In N6-06 the precise moving
chamber is [SHARP_EF_HIGH.md](SHARP_EF_HIGH.md); its hypothesis
\(k\ge6/7\) is proved by a separate complementary certificate.
No order between the displaced height \(k\) and \(h\) is assumed.

The count convention \(n_L\le n_R\) is only an orbit label.
The asymmetric single-side and mixed-cap theorems retain both reflected
placements and do not additionally assume \(f\le d\).
Where the symmetric top-only or both-side families use \(f\le d\),
their occupancy is preserved by transposition.

These eight complete results prove \(m(P)\le A_0\) throughout the
six-contact branch, with equality possible only at the stated
eight-boundary configuration. Thus equality cannot actually remain
in the stratum with exactly six boundary points.

## 5. Global value and equality

Let \(M\) be the unrestricted maximum. Attainment gives \(M\ge A_0\).
Normalize a maximizer as in Section 2. The corner families are
excluded at this threshold, and Section 4 gives \(M\le A_0\) in the
remaining family N. Therefore \(M=A_0\).

Now start with any equality configuration. It is a global maximizer,
so the same finite sequence of feasible shears, square symmetries,
and relabelings applies. The complete normalized equality results
identify its image with the configuration in Section 1.

[GLOBAL_STRUCTURE.md](GLOBAL_STRUCTURE.md), Lemma 4, transfers that
classification back. For clarity, take the last shear in the sequence
that changes the configuration. Its feasible parameters form an
interval. Approaching its final parameter therefore gives distinct
configurations in the square, arbitrarily close to the stated
extremizer, with exactly the same triangle areas. This contradicts
the unrestricted strict local maximum in
[HAND_PROOF.md](HAND_PROOF.md), Theorem 2. Removing such shears
backwards leaves only square symmetries and relabelings.

This proves Theorem 1, including uniqueness and the boundary
description. \(\square\)

## 6. Exact certificate and coverage conventions

The finite coefficient packages prove statements over complete
continuous regions. Their common structure is:

1. Derive the hull, affine parameter bounds, and all required
   containment inequalities geometrically.
2. Enumerate every necessary radial word or word pair using the
   cyclic chord-reversal relation. A word need not be realizable;
   including an impossible word only enlarges the cover.
3. Split any remaining actual-triangle signs exhaustively.
   An actual zero sign is impossible at a positive minimum area.
4. Where needed, use a fixed finite coordinate tree with the closed
   alternatives \(z\le q\) and \(z\ge q\). Equality belongs to the
   cover; no numerical tolerance or discarded interval is involved.
5. Form a positive rational combination \(P\) of valid nonnegative
   factors and costs. Expand it exactly in coordinates
   \(z\in[0,1]^d\). If
   \[
   P(z)=p_0+\sum_{\alpha\ne0}p_\alpha z^\alpha,\qquad
   p_0+\sum_{\alpha\ne0}\max(p_\alpha,0)<0,
   \]
   then \(P(z)<0\) throughout the cube, contradicting \(P(z)\ge0\).

When a certificate is reused, each factor must remain valid and each
used signed-area cost must have the same expression and a threshold
at least as strong as its reference threshold. The verifiers check
these implications, not merely a claimed count of covered cells.
Increasing an actual-triangle threshold does not silently change a
previous geometric upper bound or the indexing of a coefficient table.

The [62-parent case register](G6_ITEMIZED_CASES.md) and
[221-leaf register](G6_ITEMIZED_LEAVES.tsv) retain the original stable
IDs. Every parent and leaf is closed by a complete linked theorem.
These administrative leaves are coarser than the finite sign and
coordinate covers inside the proof packages.

## 7. Dependencies and verification scope

The triangle and quadrilateral capacity results precede their use in
the final cap certificates. In particular the unrestricted
actual-triangle capacity theorem in
[THREE_INTERIOR_TRIANGLES.md](THREE_INTERIOR_TRIANGLES.md) uses the
ear reductions, the earlier corner-family results, and the original
corner-triangle occupancy theorem. It does not assume the completed
C1 or N theorem proved here. The stronger two-actual-vertex theorem
is downstream of that capacity result; it is not substituted into
an upstream proof that would create a circular dependency.

The convex-position exclusion in
[GLOBAL_COMPLETION.md](GLOBAL_COMPLETION.md) uses its explicitly
stated classical affine-isoperimetric theorem and primary reference.
That analytic input remains part of the dependency chain.

The exact coefficient files and their deterministic verifiers are
the algebraic witnesses. Floating-point optimization used to discover
coefficients is not a proof premise. The older computational
330,988-pattern Type-I run is not a premise of this assembly.
The supplied checks establish the printed identities, finite covers,
and rational inequalities; the geometric reductions are mathematical
arguments reviewed alongside them.

This completion does not claim an external independent audit,
a Lean kernel check, or a CI run. The remaining review and
formalization work concerns validation of the complete proof,
not an unclosed case in its stated finite cover.
