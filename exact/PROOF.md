# Nine-point Heilbronn problem: complete exact computer-assisted proof draft

## Theorem

For nine arbitrary points in the unit square,

\[
H_9=\frac{9\sqrt{65}-55}{320}.
\]

The attaining configuration is unique up to square symmetries and relabeling.
The proof is computer-assisted, with all mathematical decisions made in exact
integer or quadratic-field arithmetic. The complete replay ledger is in
STATUS.md. The argument has not yet received external review or Lean formalization.

## Proof architecture and completed computation

The candidate gives the lower bound, checked over all 84 triangles. A geometric
normalization covers every possible maximizer by three families. The two
corner families are strictly below the candidate. The general family is
exhaustively covered by exact interval exclusions and neighborhoods governed
by a sharp local theorem. Every case has completed in the recorded runs.

The primary and secondary implementations agree on all 330,988 Type-I boundary
patterns and 102,364,833 candidate boxes. The corner covers contain respectively
356,024 Type-II and 12,326 Type-III candidate boxes. No case is unresolved.

The grid is a **cover by continuous boxes**, not a restriction of point
coordinates to grid locations. Exact outward rounding and a local inequality
handle every real configuration, including the zero-gap equality case.

---

# Exhaustive global certificate: mathematical specification

Read STATUS.md for the actual completion state of the accompanying runs.
A partial run is not a global upper bound. This note explains exactly what
a successful complete run establishes.

## Target and acceptance conditions

Let a=(9sqrt(65)-55)/320. The construction in LOCAL_PROOF.md attains a.
The certified global upper bound is H_9<=a; the recorded runs meet every acceptance condition below.

Three complete checks are required:

1. verify_local.py must pass the exact construction and local sharpness theorem.
2. verify_global corners must emit both TYPE3_COMPLETE_PASS and TYPE2_COMPLETE_PASS.
3. verify_global type1 must emit TYPE1_COMPLETE_PASS after every boundary pattern.

No Gurobi bound, floating-point optimization output, or assumed symmetry of
an unknown optimizer is used in these checks.

## 1. Complete geometric reduction

The boundary reduction used is Theorem 1, Proposition 2, and Lemma 3 of
N. Sudermann-Merx, arXiv:2603.11107v3 (27 October 2026).
It gives an optimal configuration in at least one of these families:

I. Five distinct prescribed points

    (0,y1), (x2,0), (1,y3), (x4,1), (0,y5),
    y1<=y5, x2<=x4,

and four arbitrary other points in the square.

II. Four prescribed distinct points

    (1,1), (0,1), (0,lambda), (b,0),

and five arbitrary other points. The condition lambda<1 can be relaxed to
lambda<=1 in an upper-bound cover.

III. Three prescribed corners

    (0,0), (0,1), (1,1),

and six arbitrary other points.

The following is an audit of why this is a global reduction. Compactness
ensures the existence of a maximizing configuration. The square must be a
minimum-area enclosing parallelogram of its convex hull: any smaller one
could be mapped affinely onto the square, increasing every triangle area.
Every side is contacted. At least one side contains an edge of the hull;
otherwise independently tilting the two pairs of support lines produces
a smaller enclosing parallelogram. Opposite contact intervals have overlapping
projections, by the one-sided derivatives of their support widths.

For an optimum without adjacent occupied corners, these contact properties
give the five distinct boundary points in I, directly by a square symmetry
and relabeling. One occupied corner forces an additional contact on both
adjacent sides; two opposite occupied corners force contacts on all four
sides. A horizontal reflection can enforce x2<=x4.

If adjacent top corners are occupied, a bottom point exists. Unless an
additional left-side point already exists, the shear

    (x,y) -> (x-s(1-y),y),
    s = min_{p: y_p<1} x_p/(1-y_p),

keeps every point in the square, preserves all areas, fixes the top corners,
and creates an additional left contact. This gives II, unless that contact
is the bottom point itself, in which case it is (0,0) and gives III.

Thus an optimum exceeding a would occur in a family tested by the checker.
The reduction does NOT assume that all eight noncentral points are on the
boundary, or that an optimizer has the candidate's reflection symmetry.

## 2. Rational thresholds

The interval-exclusion targets are

    Type I:   t1 = 439/8000 = 0.054875,
    Type II:  t2 = 137/2500 = 0.0548,
    Type III: t3 = 27/500   = 0.054.

All are strictly below a, as checked in Q(sqrt(65)). For the closest comparison,
a>439/8000 is equivalent to sqrt(65)>1814/225, whose squared rational comparison
has numerator difference 65*225^2-1814^2=29>0.

Type II and III are excluded entirely at their thresholds. Type I is covered
by the disjunction

    minimum area <= t1, OR
    an entire box lies within coordinate distance 1/200 of a square-symmetric
    copy of P*, after a bijective relabeling.

The second alternative invokes the already proved local upper bound <=a.
This is what avoids an infinite subdivision near equality.

## 3. Finite initial cover

Use the 400 closed grid squares of side 1/20. A point on a grid line can be
assigned to either adjacent square, using any fixed half-open convention for
existence of a canonical assignment. The closed computational boxes contain it.

Two points assigned to the same grid square have coordinate differences at
most 1/20. Together with any third point of the unit square their triangle
has area at most

    (|dx|*1 + |dy|*1)/2 <= 1/20.

Since every threshold exceeds 1/20, a configuration with minimum area above
the threshold assigns its unspecified points to distinct grid squares.
We may enumerate these cells in increasing index; this is a relabeling of
unspecified points, not an assumed geometric order.

A prescribed moving boundary point is covered by the twenty closed edge
segments of length 1/20. Type II has 20^2 boundary-parameter boxes. Type III
has no moving prescribed boundary point. In Type I the lower and upper
left contacts occupy indices j<m (the same segment cannot contain both in
a competitive configuration), and the bottom/top indices satisfy i<=l.
All such choices, with every right-side segment, are enumerated.

For any triangle of point rectangles the signed doubled area is multi-affine
in the six coordinates. Its largest absolute value is therefore attained at
rectangle corners. In the initial grid, all these doubled areas are integers
in coordinates scaled by 20. A corner maximum <=43 gives an area bound
43/800, below all three thresholds. Hence a necessary compatibility condition
for every triple is a corner maximum at least 44.

For a boundary box, reject impossible prescribed-point triples. Reject a
free cell if it is incompatible with a pair of prescribed points. Retain a
pair of free cells only if it is compatible with every prescribed point.
Finally enumerate increasing free-cell lists while enforcing all triples
of free cells.

The depth-first invariant is: every candidate extension is compatible with
all previously chosen points, pairs and triples. Extending a prefix tests
exactly the new pair conditions and the new triples that contain the newest
point. No possible competitive cell assignment is discarded. Early stopping
for insufficient remaining candidates is only a cardinality bound.

There are 331,472 Type-I boundary choices after the prescribed-triple test,
and 330,988 after the necessary test that at least four free cells remain.
These numbers are checked independently, not assumed as a coverage theorem.
A successful full run must process every one of the latter choices.

## 4. Exact interval contraction

Coordinates of a current box are real, not grid-restricted, and are enclosed
between integer endpoints after scaling by S=20*16384 in the C++ checker.
Subdivision and contraction always round outwards; no point is rounded to
a discrete grid for the mathematical optimization problem.

Let D be a triangle's signed doubled area in scaled coordinates. For each
coordinate x in [l,u], compute exact corner maxima M0, M1 of |D| on the two
faces x=l and x=u. For any intermediate coordinate x=(1-s)l+su,

    |D(x,other coordinates)| <= (1-s)M0+sM1.

This follows from affinity in x, the triangle inequality, and the two exact
face maxima. It is valid even if the triangle changes orientation.

The target is |D|>T/d, with integer T and d. If d*max(M0,M1)<=T, the box is
excluded. If d*M0<T<d*M1, every surviving point satisfies

    x > l + (T-d*M0)(u-l)/(d*M1-d*M0).

Replacing l by l plus the FLOOR of this increment is a safe outward-rounded
contraction. The opposite endpoint is contracted by the analogous rule.
The face maxima are computed before contracting the triangle's coordinates.
Shrinking other coordinate ranges cannot invalidate these upper bounds.

If contraction does not settle a box, bisect a widest coordinate interval,
including the midpoint in both children. This covers the parent exactly.
Both children must be settled. A resource limit or a smallest unresolved
box returns FAIL_OR_INCOMPLETE, never PASS.

All decisions use integer arithmetic. The C++ code uses signed 128-bit
intermediate products for contraction; the coordinate/determinant values
are bounded well inside signed 64-bit range. In particular every scaled
coordinate lies in [0,327680], and a doubled area is at most S^2.

## 5. Local leaves

The code brackets sqrt(65) between the rational numbers 80622577/10000000
and 80622578/10000000, verifies these brackets by integer squaring, and
constructs exact outward enclosures of the candidate coordinates.
Every square symmetry is included. A local leaf requires that each entire
point rectangle be inside one candidate's 1/200 coordinate neighborhood,
with nine distinct matches. Therefore the whole leaf is governed by the
local sharpness theorem; no sampling is used in a local acceptance.

## 6. Consequences of a complete successful run

Each family then has upper bound <=a, and the exact construction attains a.
Consequently H_9=a.

There is also a possible equality conclusion, provided the stated checks
all complete: a maximizing configuration cannot have adjacent occupied
corners, since the shear would give II or III below a. Every other maximizing
configuration belongs directly to I up to square symmetries and relabeling.
A nonlocal leaf is strictly below a, and a local leaf can attain a only at
its candidate center, by LOCAL_PROOF.md. Thus the only maximizers would be
square-isometric copies of the displayed construction (with arbitrary labeling).

Do not infer these conclusions from an unfinished run. STATUS.md and the
full replay receipts specify which acceptance conditions actually passed.


---

# Exact local sharpness at the nine-point configuration

## Statement

Let r = sqrt(65), a = (9r-55)/320, and let P* be the labeled configuration

| i | x | y |
|---|---|---|
|1|0|1-r/10|
|2|3/8-r/40|0|
|3|1|9/16-3r/80|
|4|3/8-r/40|1|
|5|0|5/8+r/40|
|6|1/4+r/20|3/4-r/20|
|7|7/16+3r/80|0|
|8|r/10|1|
|9|1|5/8+r/40|

For any labeled P in the unit square, put h = max_i ||p_i-p_i*||_infinity.
The exact certificate proves

    h <= 1/200  =>  min_triangle_area(P) <= a - 3h/1700.

In particular P* is the unique configuration in this entire 18-coordinate
neighborhood with minimum triangle area at least a. No reflection symmetry,
boundary incidence, critical-triangle pattern, or stationarity is assumed of P.
The theorem also holds after any square symmetry and relabeling.

The construction itself is established in the literature: Sudermann-Merx,
arXiv:2603.11107v3, Appendix A, Table 12, following Comellas–Yebra (2002).
Here all 84 areas are rechecked independently in Q(sqrt(65)).

## 1. Active constraints

The eleven triangles of area a are

    125, 127, 136, 145, 269, 356, 389, 458, 467, 489, 678.

For each such triple, choose the sign of its oriented area at P*, and denote
that signed quadratic area polynomial by f_i. Thus f_i(P*)=a.
Let J be the 11 x 18 matrix of gradients of these polynomials at P*.

There are eight active square-boundary coordinates. Let N have one row +e_k
for a coordinate equal to 0 at P*, and one row -e_k for a coordinate equal to 1.
For every feasible displacement d=P-P*, therefore, N d >= 0.

Form the 19 x 19 matrix

    C = [ J  -1 ]
        [ N   0 ].

The standalone program verify_local.py constructs this matrix from the
coordinates, performs exact Gaussian elimination, and independently checks
C*C^{-1}=I. No approximate matrix inverse is used.

## 2. The exact finite certificate

Write R=C^{-1} and w_j=-R_{19,j}. The checker proves all of the following:

* Every one of the nineteen w_j is strictly positive.
* Sum_{j=1}^{11} w_j = 1.
* |R_{ij}| < 85 w_j for all 1<=i<=18 and 1<=j<=19.

These are comparisons in Q(sqrt(65)). To compare A+B sqrt(65) with zero,
the checker uses signs and rational comparisons of A^2 with 65 B^2.
It does not approximate sqrt(65) for a mathematical decision.

## 3. First-order sharpness

Given a feasible d, put t=min_i (Jd)_i and

    s = (Jd-t*1, Nd).

Every component of s is nonnegative, and C(d,t)=s. Consequently

    t = -sum_j w_j s_j <= 0,
    |d_i| <= sum_j |R_ij| s_j <= -85t.

Hence t <= -||d||_infinity/85 = -h/85.
This handles every feasible direction, including movements of boundary
points into the square and arbitrary asymmetric movements of the other points.

## 4. Exact quadratic remainder

The exact expansion of an active signed area is

    f_i(P*+d) = a + (Jd)_i + q_i(d),

where q_i(d) is the same signed triangle-area expression applied to the
three displacement vectors. They lie in [-h,h]^2, so |q_i(d)|<=2h^2.
The latter bound follows by multi-affinity and checking the corners of this
square; the checker also verifies that the largest absolute doubled area
among these corner triples is 4 when h=1.

Each gradient row has absolute row sum at most 3. Since a>1/20 and
3/200+2/200^2 < 1/20, every selected signed area remains positive when
h<=1/200. It is therefore the actual unsigned area of its triangle.
Choosing a row attaining the minimum linear term gives

    min_triangle_area(P) <= a - h/85 + 2h^2
                         <= a - (1/85-1/100)h
                         =  a - 3h/1700.

This proves the stated local theorem and its equality assertion.

## Replay and trust boundary

    python verify_local.py
    python -O verify_local.py

Both commands retain all mathematical checks; they are not Python assertions
that disappear under optimization. This is an exact arithmetic certificate
with a written mathematical interpretation, not a Lean kernel theorem or an
external independent review. Numerical discovery is not an input to the proof.


---

# Audit of the three-family boundary reduction

This is a self-contained exposition of the geometric reduction used by the
checker, following Sudermann-Merx, arXiv:2603.11107v3, Section 2.2.
It is a hand argument, not a numerical inference about the known candidate.

Let P be a maximizing n-point configuration in the square, n>=5, with positive
minimum triangle area. Such a maximizer exists by continuity on a compact
configuration space. Its points are distinct and no three are collinear.
Let K=conv(P).

## Minimum-area enclosing parallelogram

The square is a minimum-area parallelogram containing K. Otherwise an affine
bijection from a smaller enclosing parallelogram onto the square would have
absolute determinant greater than one and strictly increase every triangle
area. This contradicts maximality.

Every side of the square meets K, because a noncontacted side could be moved
inward. Each contact is a vertex or an edge of K.

## Some side has two contacts

Suppose all four contacts were single vertices, denoted

    bottom (b,0), top (t,1), left (0,l), right (1,r).

Introduce linear coordinates u=x-beta*y and v=y-alpha*x. For sufficiently
small alpha,beta the same vertices remain the unique extremes, since K has
finitely many vertices and all four support gaps are strict. The smallest
parallelogram with these support directions has area

    [(1-beta*(r-l))*(1-alpha*(t-b))]/(1-alpha*beta).

Put c=r-l, d=t-b, alpha=s and beta=-s. The difference between its numerator
and denominator is

    (c-d)*s - (1+c*d)*s^2.

If c!=d, choose a sufficiently small s with (c-d)*s<0. If c=d, the difference
is -(1+c^2)*s^2<0 for any small nonzero s. In either case the area is below one,
a contradiction. Thus some side contains an edge of K, hence two points of P.

## Opposite contact intervals overlap in projection

Let the bottom x-contact interval be [b-,b+] and the top interval [t-,t+].
Keep vertical support directions fixed and tilt horizontal directions to
v=y-alpha*x. If b+<t-, then for small alpha>0 the vertical-coordinate width
is 1+alpha*(b+-t-)<1. If t+<b-, a small alpha<0 gives width
1+alpha*(b--t+)<1. Both contradict minimum parallelogram area.
Thus the two intervals intersect. The analogous y-projections of left and
right contacts also intersect.

## No adjacent occupied corners

There are only three possibilities.

* No occupied corner: the four sides supply four distinct points, and the
  preceding two-contact lemma supplies a fifth. Rotate so the double-contact
  side is left and label its points in increasing y order.
* Exactly one occupied corner: rotate it to A=(0,0). If the bottom side had
  only A as a contact, the opposite projection condition would force D=(0,1)
  to be occupied, a contradiction. Thus there is a second bottom contact.
  The same argument gives a second left contact. Together with the right
  and top contacts this gives five distinct points.
* Two opposite occupied corners: rotate them to A=(0,0), C=(1,1). The same
  projection argument forces a second contact on every side; otherwise B or
  D would also be occupied. Five distinct points of the required pattern can
  be selected from these contacts.

In each case we obtain

    p1=(0,y1), p2=(x2,0), p3=(1,y3), p4=(x4,1), p5=(0,y5),
    y1<y5.

If x2>x4, reflect vertically and reverse the appropriate boundary labels.
This gives x2<=x4. Only square symmetries and relabeling have been used.
Thus every maximizing configuration with no adjacent occupied corners
belongs directly to Type I up to square symmetries and relabeling.

## Adjacent occupied corners

Rotate them to C=(1,1), D=(0,1). There is at least one bottom point (b,0).
If a left point (0,lambda), lambda<1, exists already, keep the configuration.
Otherwise every point below the top has positive x. Put

    s = min_{p: y_p<1} x_p/(1-y_p).

This is a positive finite minimum, and the bottom point gives s<=b<=1.
The shear

    psi(x,y)=(x-s*(1-y),y)

has determinant one. By the defining minimum it maps every point into the
square. It fixes C and D, preserves all triangle areas, preserves a bottom
point, and creates a left contact below D. If the left and bottom contacts
are distinct, this is Type II. If they coincide, the point is A=(0,0), giving
Type III. In either case the resulting configuration is still maximizing.

This exhausts every maximizing configuration. It also explains why proving
strictly suboptimal bounds for II and III rules out adjacent occupied corners
in every maximizer, a fact used in the equality classification.