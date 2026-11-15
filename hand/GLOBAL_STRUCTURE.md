# A stronger global boundary normalization

## Scope

This note proves a global structural reduction for a positive-area maximizing
nine-point configuration. It strengthens the five-contact Type-I normalization:
the corner-free branch can be represented by **six distinct prescribed boundary
points and three arbitrary points**. The one-corner branch still has four
arbitrary points, but its fixed corner removes one coordinate parameter.

This is a reduction, not a sharp upper bound. In particular, it does not prove
that an optimizer has eight boundary points, and it does not close G6.

Write

\[
 m(P)=\min_{i<j<k}\operatorname{Area}(P_iP_jP_k).
\]

We use two elementary facts established in `BOUNDARY_REDUCTION.md`: if
\(P\) maximizes \(m\) in the unit square and \(m(P)>0\), then every side
is contacted, and the contact intervals of opposite sides overlap in their
coordinate projections. Both facts follow because the square must be a
minimum-area enclosing parallelogram of \(\operatorname{conv}(P)\).
Positive minimum area also implies that at most two points lie on each side.

## 1. The contact-increasing shear

**Lemma 1.** Suppose that a positive-area maximizing configuration has exactly
one point on each of its left and right sides. Then there is a determinant-one
affine shear that preserves every existing boundary incidence and creates a
new left or right boundary incidence. The analogous assertion holds for the
bottom and top sides.

**Proof.** Write the two contacts as \(L=(0,\ell)\) and \(R=(1,r)\).
The overlap of the singleton contact projections gives \(r=\ell\).
Consider

\[
 F_t(x,y)=(x+t(y-\ell),y).
\]

It fixes both \(L\) and \(R\), has determinant one, and preserves the
bottom and top sides as lines. A point \((x_i,y_i)\) remains in the square
precisely when

\[
             0\le x_i+t(y_i-\ell)\le1.                 \tag{1}
\]

For every point other than \(L,R\), one has \(0<x_i<1\), because those
two contacts are unique. Thus the finitely many conditions (1) admit an open
interval about \(t=0\). At least one coefficient \(y_i-\ell\) is
nonzero, since otherwise all points would be collinear. Consequently the
intersection of the intervals (1) has a finite positive endpoint \(t_+\).
At this endpoint at least one of the previously strict inequalities becomes
an equality: a new left or right contact is created.

All the old left and right contacts are fixed. All old bottom and top
contacts retain their y-coordinate. Hence no old boundary incidence is lost.
The affine map is invertible and preserves all unsigned triangle areas, so
the resulting configuration remains a positive-area maximizer. This proves
the lemma. Interchanging x and y gives the other assertion. \(\square\)

The word *incidence* counts a corner twice, once for each incident side.
This convention makes the preceding assertion valid even if a new contact
is a corner.

**Corollary 2.** There exists a maximizing configuration for which each pair
of opposite sides contains a side with two contacts.

**Proof.** If the left and right sides each have one contact, apply Lemma 1.
If the bottom and top sides each have one contact in the resulting
configuration, apply the transposed lemma. The second shear preserves the
first pair's boundary incidences. At most two shears are needed. \(\square\)

Equivalently, one may select a maximizer with the largest number of boundary
incidences. Lemma 1 rules out two opposite singleton contacts in such a
maximizer. This is a finite integer maximization (there are at most eight
incidences), not an additional compactness assumption about a stratum.

## 2. Three remaining forms without adjacent corners

For upper bounds it is enough to consider a maximizer from Corollary 2.
If it has adjacent occupied corners, the established Type-II/Type-III
reduction applies. Otherwise it has zero corners, one corner, or two opposite
corners. The following list covers those cases.

### N: no occupied corner — six boundary points, three free points

After reflections and relabeling, six distinct points can be chosen as

\[
 A=(0,a),\quad H=(0,h),\quad B=(b,0),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),                                      \tag{2}
\]

where

\[
 0<a<h<1,\qquad 0<b<c<1,\qquad a\le d\le h,\qquad b\le f\le c.
                                                               \tag{3}
\]

The remaining three points are arbitrary points of the square. They may
include additional boundary contacts. Consequently this form includes
configurations with six, seven, or eight distinct boundary points; it is
not a claim that exactly six are present.

To justify the selection in (2)-(3), consider the left/right projection
intervals. At least one has two endpoints, by Corollary 2. If one interval
is a singleton, that singleton belongs to the other interval. If both are
nondegenerate, two overlapping closed intervals have an endpoint of one
lying in the other. Choose the latter interval as the double-contact side
and choose the former endpoint as the opposite contact. A horizontal
reflection puts the double side on the left. Independently make the same
choice for the bottom/top pair, and use a vertical reflection to put its
double side at the bottom. These two choices are compatible because
reflections preserve interval membership. Since no corner is occupied,
the six selected points are distinct. This proves (2)-(3).

### C1: one occupied corner — five boundary points, four free points

Put the unique occupied corner at \(A=(0,0)\). Both incident sides must
have another contact. Indeed, if the bottom contact interval were only
\(\{0\}\), overlap with the top interval would force the other left
corner \((0,1)\) to be occupied. The left side is handled similarly.
Thus choose

\[
 A=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),                                     \tag{4}
\]

with

\[
       0<d\le h<1,\qquad 0<f\le c<1.                       \tag{5}
\]

For example, the smallest top-contact x-coordinate is at most c by
opposite-projection overlap, so it is an available choice of f; likewise
choose the smallest right-contact y-coordinate for d. All five points are
distinct. Four other points remain arbitrary in the square.

### C2: two opposite occupied corners — six boundary points, three free points

Put the occupied corners at \(A=(0,0)\) and \(E=(1,1)\). Each side has
a second contact: otherwise the opposite-projection condition would force
an adjacent occupied corner. The six boundary points are therefore

\[
 A=(0,0),\quad E=(1,1),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),                                     \tag{6}
\]

with (5) again. The inequalities now follow by intersecting the intervals
\([0,h],[d,1]\) and \([0,c],[f,1]\). There are three other arbitrary
points.

## 3. Exhaustiveness and exact scope of the improvement

**Theorem 3.** To prove an upper bound for the unrestricted nine-point
problem, it is sufficient to prove it on the five complete continuous
families N, C1, C2, Type II, and Type III. Families N, C1, and C2 are defined
by (2)-(6); Types II and III are the adjacent-corner forms in
`BOUNDARY_REDUCTION.md`.

**Proof.** A global maximizer exists by compactness. The known construction
gives a positive lower bound, so the maximum is positive. Apply Corollary 2
to obtain another maximizer of the same value. If it has adjacent corners,
the existing shear reduction gives Type II or Type III with the same value.
If it has no adjacent corners, the three possibilities for its occupied
corners give N, C1, or C2 as proved above. Hence any counterexample to a
claimed global upper bound yields a counterexample in the displayed list.
\(\square\)

| Complete continuous family | Prescribed boundary points | Boundary parameters | Arbitrary points | Total real parameters before inequalities |
|---|---:|---:|---:|---:|
| N | 6 | 6 | 3 | 12 |
| C1 | 5, including one corner | 4 | 4 | 12 |
| C2 | 6, including two opposite corners | 4 | 3 | 10 |
| Type II | 4, including two adjacent corners | 2 | 5 | 12 |
| Type III | 3 corners | 0 | 6 | 12 |

The former Type-I parameterization had five boundary parameters and four
arbitrary points, hence thirteen real parameters. The new global reduction
has at most twelve in every family, and the corner-free branch has only
three arbitrary points. No global sharp bound is inferred from this dimension
count.

The possible boundary multiplicities of the selected normalized optimizer
can also be listed finitely. Without corners, the doubled sides number two
adjacent sides, three sides, or all four sides. With one corner, the doubled
sides must include its two incident sides, and may include zero, one, or
both opposite sides. With two opposite corners, all four sides are doubled.
These are seven incidence patterns up to square symmetry. They are
**incidence patterns only**; the triangle-orientation and contact-pattern
classification within them has not been solved.

## 4. Equality and the remaining obstruction

The contact-increasing maps are determinant-one shears, not necessarily
square symmetries. Theorem 3 by itself transfers the optimal *value*.
The existing strict local theorem supplies exactly the additional rigidity
needed to transfer a future normalized equality classification.

**Lemma 4 (equality transfer).** Suppose an arbitrary maximizing configuration
can be transformed into the candidate by finitely many square symmetries,
relabelings, and the feasible shears used in the normalization. Then it is
already a square-symmetric relabeling of the candidate.

**Proof.** Consider the last shear that actually changes the point set,
conjugating by any later square symmetries and relabelings. Write it as
\(F_T\), so \(F_T(P)=P_*\). The allowed shear parameters form an interval,
because square membership is the intersection of finitely many linear
inequalities in the parameter. Hence \(F_t(P)\) stays in the square for
every t between 0 and T. All of these configurations have exactly the same
triangle areas. As t approaches T, they approach \(P_*\); if the shear
changes any point, they are distinct from \(P_*\) for \(t\ne T\).
This contradicts the unrestricted strict local optimality of \(P_*\)
proved in Theorem 2 of `HAND_PROOF.md`. Therefore that shear cannot change
the configuration. Applying the same argument backwards eliminates every
shear. Only square symmetries and relabelings remain. \(\square\)

Consequently a future proof of sharpness and candidate uniqueness in the
five normalized families would give both conclusions globally. The missing
part is the sharp classification of those families, not inverse-shear
rigidity.

The obstacle after this lemma remains substantive: in N the three arbitrary
points need not be movable to the boundary while keeping all triangle areas
above the sharp threshold. For a fixed choice of the other eight points,
each oriented area constraint on the ninth point is a half-plane, so a
sign-consistent feasible component is a convex polygon. Such a polygon can
be trapped entirely inside the square. The new shear argument applies to
the whole configuration through its enclosing parallelogram; it makes no
unsupported assertion about these individual-point feasible polygons.

The complete family C2 has since been excluded in
[`OPPOSITE_CORNERS.md`](OPPOSITE_CORNERS.md): every member has a triangle
of area at most \(7/128<A_0\). The entire eight-boundary family, including
all its orientation classes, is also closed by Theorem 13 of
[`EIGHT_BOUNDARY.md`](EIGHT_BOUNDARY.md).

To close G6, a sharp inequality or a further proved structural reduction
is still required for N with fewer than eight boundary points and for C1.
The complete eight-boundary theorem cannot yet be applied to arbitrary
members of these two families. Type III is now completely excluded at
\(7/128<A_0\) by [`CORNER_FAMILIES.md`](CORNER_FAMILIES.md). The remaining
corner obligation is Type II, reduced to the two count classes in
[`TYPE_II.md`](TYPE_II.md), Section 8.

The later note [`THREE_INTERIOR_TRIANGLES.md`](THREE_INTERIOR_TRIANGLES.md)
proves unrestricted triangle capacity two at the target threshold. Its
normalization applies to arbitrary competitive configurations by first
choosing a minimum-area enclosing parallelogram. Further completed
restrictions are in [`ONE_CORNER.md`](ONE_CORNER.md),
[`SEVEN_BOUNDARY_CAPS.md`](SEVEN_BOUNDARY_CAPS.md), and
[`TYPE_II_BALANCED.md`](TYPE_II_BALANCED.md). They do not yet supply the
remaining sharp inequalities for N, C1, or the two Type-II rows.
