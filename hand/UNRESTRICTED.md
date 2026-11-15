# The unrestricted nine-point Heilbronn theorem in the square

This note assembles the complete geometric reductions, sharp inequalities,
and fixed rational certificates in this directory. It is the entry point
for the unrestricted result; the component manuscripts supply the detailed
inequalities and complete finite covers used below.

For nine points \(P=(P_1,\ldots,P_9)\) in the closed unit square, put
\[
m(P)=\min_{i<j<k}\frac12\left|\det(P_j-P_i,P_k-P_i)\right|,
\qquad H_9=\max_{P\in([0,1]^2)^9}m(P).
\]
Thus all areas in the theorem are ordinary areas. Set
\[
p_0=\frac{15-\sqrt{65}}{40},\qquad
A_0=\frac{9\sqrt{65}-55}{320}.
\]

## 1. Statement and exact attaining configuration

**Theorem 1.** Every nine points in the unit square contain three whose
triangle has ordinary area at most \(A_0\), and
\[
\boxed{H_9=A_0.}
\]
Equality holds exactly for the following configuration, up to a symmetry
of the square and a permutation of the nine points:
\[
\begin{array}{lll}
A=(0,4p_0-1/2),&B=(p_0,0),&C=(1-3p_0/2,0),\\
D=(1,3p_0/2),&E=(1,1-p_0),&F=(3/2-4p_0,1),\\
G=(p_0,1),&H=(0,1-p_0),&O=(1-2p_0,2p_0).
\end{array}                                                    \tag{1}
\]

The exact 84-triangle table in the appendix of
[HAND_PROOF.md](HAND_PROOF.md) proves that (1) attains \(A_0\).
That note also proves its sharp eleven-triangle chamber inequality and
unrestricted strict local optimality. The latter will supply the rigidity
needed for global uniqueness in Section 5.

## 2. Exhaustive normalization of a maximizer

The function m is the minimum of finitely many continuous determinant
functions on the compact space \(([0,1]^2)^9\). It therefore has a
maximizer. By (1), its value is at least \(A_0>0\); all its points are
distinct and every actual triangle is nondegenerate.

The square must be a minimum-area enclosing parallelogram of its convex
hull. An affine map from a smaller enclosing parallelogram to the square
would increase all triangle areas. Consequently every square side is
contacted, the projections of opposite-side contact intervals overlap,
and a side contains at most two actual points. These facts and their
support-line proofs are in [BOUNDARY_REDUCTION.md](BOUNDARY_REDUCTION.md).

Lemma 1 and Corollary 2 of [GLOBAL_STRUCTURE.md](GLOBAL_STRUCTURE.md)
apply at most two contact-increasing, determinant-one shears. All points
stay in the square, existing boundary incidences are retained, and every
triangle area is preserved. After square symmetries and relabeling, the
result lies in one of the five exhaustive families of its Theorem 3:

| Family | Prescribed points | Additional points |
|---|---|---:|
| N | Two contacts on each of two adjacent open sides, one on each opposite side, with the projection-overlap orders | 3 |
| C1 | One occupied corner, one further contact on each incident side, and one on each opposite side | 4 |
| C2 | Two opposite occupied corners and a second contact on every side | 3 |
| Type II | Two adjacent occupied corners, a further incident-side contact and an opposite-side contact | 5 |
| Type III | Three occupied corners | 6 |

The adjacent-corner reduction and the further Type-II normalization also
use feasible determinant-one shears, reflections and relabelings. The
complete Type-II theorem explicitly includes its possible Type-III
alternative. Thus this step preserves both the maximizing value and the
finite-shear hypothesis later used for equality.

## 3. All corner families are excluded

Every member of C2 has minimum area at most \(7/128<A_0\), by
[OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md). Every Type-III configuration
has the same strict margin below \(A_0\), by
[CORNER_FAMILIES.md](CORNER_FAMILIES.md). Theorem 2 of
[UNBALANCED_FINAL_LOWER_WEDGE.md](UNBALANCED_FINAL_LOWER_WEDGE.md)
assembles the complete Type-II exclusion, covering both lower counts,
both right-hull alternatives, all support cells and every final cut.

For C1 use anchors
\[
O=(0,0),\quad C=(c,0),\quad D=(1,d),\quad F=(f,1),\quad H=(0,h),
\qquad0<d\le h<1,\quad0<f\le c<1.
\]
Let \(n_0\) be the number of its four free points inside the actual
triangle OHC. The complete alternatives are:

| Lower count | Complete exclusion |
|---|---|
| \(n_0=0\) | [C1_ZERO_LOWER.md](C1_ZERO_LOWER.md), Theorem 4 |
| \(n_0=1\) | [C1_ONE_LOWER_MIXED_CAPS.md](C1_ONE_LOWER_MIXED_CAPS.md), Theorem 2 |
| \(n_0=2\) | [C1_TWO_LOWER_COMPLETION.md](C1_TWO_LOWER_COMPLETION.md), Theorem 2 |
| \(n_0\ge3\) | The corner-triangle occupancy theorem in Sections 1–4 of [ONE_CORNER.md](ONE_CORNER.md) |

The one-lower assembly includes the exact anchor hull, every single
exterior cap, every pair of occupied caps, both hulls for two opposite-cap
points, and the complete three-opposite-cap placement. Its nine-row
occupancy table is proved after the allowed normalization \(f\le d\).
It does not combine that order with an additional choice of left/right
cap multiplicities. A point on an actual triangle edge gives zero area,
so the lower-count partition has no omitted boundary case.

Thus no normalized maximizing configuration can lie in a corner family.
Only N remains.

## 4. The complete N family

Write its six prescribed anchors as
\[
A=(0,a),\quad H=(0,h),\quad B=(b,0),\quad C=(c,0),\quad
D=(1,d),\quad F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
                                                               \tag{2}
\]
The three other points can be anywhere in the square. The normalized
corner-free maximizer has six, seven or eight square-boundary points.

### Eight or seven boundary points

With at least eight boundary points, Theorem 13 of
[EIGHT_BOUNDARY.md](EIGHT_BOUNDARY.md) gives the sharp bound and
classification (1). It covers every incidence and radial orientation.

With exactly seven boundary points and no corners, three sides have two
contacts and the fourth has one. Rotate the singleton side to the top.
Opposite-side projection overlap puts its contact f between the two
bottom coordinates b,c; a horizontal reflection arranges \(f\le1/2\).
This is precisely the open-side form in Theorem 2 of
[SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md).
That theorem covers both interior points, every exterior placement and
equality. Equality would force an eighth boundary contact and (1), so
it cannot occur with exactly seven contacts.

### Six boundary points: the exhaustive eight occupancies

Suppose there are exactly six contacts. If all three other points are
inside the anchor hexagon ABCDFH, Theorem 7 of
[SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md) excludes the configuration.

Otherwise partition the exterior into corner caps. The cap at the
double-contact corner \((0,0)AB\) is empty, and each side cap has
capacity one, by [SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md).
Name the remaining regions
\[
L=FH(0,1),\quad T=DF(1,1),\quad R=CD(1,0),\quad I=ABCDFH.
\]
The square corners here are virtual containing vertices. For the counts
\((n_L,n_T,n_R;n_I)\),
\[
n_L,n_R\in\{0,1\},\quad n_L+n_T+n_R+n_I=3,
\qquad n_L+n_T+n_R\ge1.
\]
Transposition exchanges L and R. Up to that symmetry the exact complete
list, with its closing theorem, is:

| Case | \((n_L,n_T,n_R;n_I)\) | Complete theorem |
|---|---|---|
| N6-01 | (0,0,1;2) | [SIX_BOUNDARY_SINGLE_SIDE.md](SIX_BOUNDARY_SINGLE_SIDE.md) |
| N6-02 | (1,0,1;1) | [SIX_BOUNDARY_TWO_SIDE_UPPER.md](SIX_BOUNDARY_TWO_SIDE_UPPER.md), with its [lower-point companion](SIX_BOUNDARY_TWO_SIDE_COMPLETION.md) |
| N6-03 | (0,1,0;2) | [SIX_BOUNDARY_SINGLE_TOP.md](SIX_BOUNDARY_SINGLE_TOP.md) |
| N6-04 | (0,1,1;1) | [SIX_BOUNDARY_SIDE_OPPOSITE.md](SIX_BOUNDARY_SIDE_OPPOSITE.md) |
| N6-05 | (1,1,1;0) | Corollary 2 of [SIX_BOUNDARY_TWO_SIDE_UPPER.md](SIX_BOUNDARY_TWO_SIDE_UPPER.md), using the convex-nonagon exclusion |
| N6-06 | (0,2,0;1) | [SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md](SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md) and [SIX_BOUNDARY_TWO_TOP_CONVEX.md](SIX_BOUNDARY_TWO_TOP_CONVEX.md) |
| N6-07 | (0,2,1;0) | [SIX_BOUNDARY_SIDE_TWO_TOP.md](SIX_BOUNDARY_SIDE_TWO_TOP.md) |
| N6-08 | (0,3,0;0) | [SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md](SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md) |

Each entry covers both permitted lower/upper locations of its
anchor-interior points and every actual pair-line sign. The N6-06
parent theorem is also stated in
[SIX_BOUNDARY_TWO_TOP_COMPLETION.md](SIX_BOUNDARY_TWO_TOP_COMPLETION.md). For N6-06,
D and F are vertices of the four-point cap hull. Its hull is therefore
either a triangle, with one cap point inside, or a convex quadrilateral.
These are exactly the two linked theorems. A change between them would
place three actual points on a line and give zero area.

Every entry gives minimum area at most \(A_0\). The possible equality
branches are classified by their continuous sharp moving-point theorems;
they force the displaced contacts back to the square sides and yield
(1). The other branches have strict exclusions. In particular, equality
is impossible while the total number of boundary contacts is six.

The only analytic input from outside this directory is the classical
planar affine isoperimetric inequality used for N6-05's convex nonagon.
[GLOBAL_COMPLETION.md](GLOBAL_COMPLETION.md), Theorem 1, states that
input with its normalization and proves the resulting strict bound
\(m(P)<1/19<A_0\). A primary source is Chen, Howard, Lutwak, Yang and
Zhang, [*A Generalized Affine Isoperimetric Inequality*](https://arxiv.org/abs/math/0402083),
formula (1.1) and Section 4. The cited form applies to general planar
convex bodies, including the explicitly rounded polygon used there.

We have now covered every normalized maximizing configuration. In all
cases its value is at most \(A_0\). Since (1) attains that value,
\(H_9=A_0\). This proves the upper bound for every original nine-point
configuration, not only for normalized maximizers.

## 5. Equality transfers to the original configuration

Let an arbitrary configuration P attain \(A_0\). It is a global
maximizer by the upper bound just proved. Apply the same finite sequence
of feasible determinant-one shears, square symmetries and relabelings.
The normalized result still has minimum \(A_0\). Sections 3–4 force it
to be a square-symmetric relabeling of (1).

Lemma 4 of [GLOBAL_STRUCTURE.md](GLOBAL_STRUCTURE.md) removes the shears.
For completeness, consider the last shear that changes the point set,
after conjugating by any later square symmetries. Its feasible parameter
set is an interval: square membership is a finite intersection of linear
inequalities in that parameter. Approaching its final value therefore
gives configurations in the square arbitrarily close to (1), with all
triangle areas unchanged. They are distinct from (1) if the shear changes
any point. This contradicts the unrestricted strict local optimality in
Theorem 2 of [HAND_PROOF.md](HAND_PROOF.md).

Remove that last shear and repeat backwards. Every shear is trivial on
the configuration. The original P is consequently obtained from (1)
only by a square symmetry and relabeling. Conversely those operations
preserve all areas, so every such image attains \(A_0\). This proves
the full equality statement of Theorem 1. \(\square\)

## 6. Boundary and certificate audit

The assembly uses the following exhaustive boundary conventions.

| Situation | Treatment |
|---|---|
| Repeated points or three collinear actual points | The minimum triangle area is zero. |
| A free point on an actual anchor chord, cap edge or tested pair line | Its actual triangle has zero area; positive-minimum sign tests are strict. |
| An additional square-side contact | Counted in the seven/eight-boundary alternatives; the cap theorems also allow their stated side endpoints. |
| An occupied square corner | Included in C1, C2, Type II or Type III by the global normalization. |
| Equalities in overlap orders such as \(a=d\), \(d=h\), \(f=b\), \(f=c\) or an allowed \(f=d\) | The affine factors and relevant theorems use the stated weak inequalities. |
| A scalar cut such as \(x\le1/2\) versus \(x\ge1/2\) | Both closed halves are checked, including their common boundary. |
| A sharp residual chamber | Its complete continuous theorem supplies the bound and exact equality conditions. |

The finite polynomial packages form part of the proof. Each manuscript
derives its geometric signs, containment thresholds and nonnegative
factors. A supplied expression is a positive rational sum of products
of those factors and costs. For coordinates in \([0,1]\), the exact
monomial bound
\[
P(z)=p_0+\sum_{\alpha\ne0}p_\alpha z^\alpha
\quad\Longrightarrow\quad
P(z)\le p_0+\sum_{\alpha\ne0}\max(p_\alpha,0)
\]
proves it strictly negative. Complete sign covers and valid reuse
implications give a contradiction for every excluded cell. Discovery
optimizers do not supply a proof premise.

The final N6 packages have the following exact sizes:

| Complete package | Cover | Fixed expressions | Positive terms |
|---|---:|---:|---:|
| One opposite-cap point, two anchor-interior points | 884 pairs / 893 cells | 616 cubics | 89,897 |
| One side-cap point, one opposite-cap point, one anchor-interior point | 97 words with a complete branch cover and two sharp chambers | 107 cubics + 1 quartic | 22,019 |
| Two opposite-cap points with triangular cap hull | 260 pairs / 262 cells | 220 cubics | 29,641 |
| Two opposite-cap points with convex cap hull | 94 words with a complete branch cover and one sharp chamber | 100 cubics | 17,619 |

All four exact verifiers passed. Separate SymPy implementations rebuilt
their factors, determinant costs, complete covers and every coefficient;
geometric hypotheses and equality maps were reviewed separately. Those
audit scripts are retained in `research/`. The C1 packages received the
same separate reconstruction and expansion checks. This is an exact
mathematical certificate proof with documented geometric arguments; it
is not a Lean formalization, and no external peer review is claimed.

The [62-row register](G6_ITEMIZED_CASES.md) and
[221-leaf register](G6_ITEMIZED_LEAVES.tsv) retain their original case IDs
and link every row to its complete theorem. The census checker verifies
that bookkeeping; the linked theorems and exact certificates establish
the mathematical exclusions.
