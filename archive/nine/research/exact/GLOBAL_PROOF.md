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