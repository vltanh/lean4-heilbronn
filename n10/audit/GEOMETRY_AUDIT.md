# Independent audit of the n=10 global reduction

This document audits the mathematical reduction, continuous box checker, and
local acceptance rule in `../global/GLOBAL_COVER.md`,
`../global/global_cover.cpp`, and `../seed/LOCAL_THEOREM.md`. It does not use
the n=9 conclusion. A successful audit is not a completed global search: the
five complete cover receipts and the exact local certificate must also pass.

The checker initially audited was the PR head
`a9a18754f10a9fc5076c31b97d9aa9d5d4062db7`, with source blob
`6dc7da6efe3ffd82fd6d8d989d0abef78e4702ad`.

## 1. Maximizers exist and their square is a minimum parallelogram

Write `m(P)` for the smallest ordinary area among the 120 triangles of a
labeled ten-point configuration. This is a continuous function on the compact
space `[0,1]^20`, so it attains a maximum. The independently verified candidate
has `m(P)=A>0`; every maximizer therefore has positive minimum area. In
particular its points are distinct and no three are collinear. A side of the
square consequently contains at most two points.

Suppose a maximizer were contained in a parallelogram of area `b<1`.
An affine bijection from this parallelogram onto the unit square multiplies
all triangle areas by `1/b>1`, contradicting maximality. Thus every enclosing
parallelogram has area at least 1, and the unit square itself is one of the
minimum-area enclosing parallelograms. No unproved uniqueness of that
parallelogram is required, and no preliminary affine deformation is performed.

All four sides of the square are contacted: a missing contact would allow a
strictly smaller enclosing axis-aligned rectangle.

### Opposite projection intervals overlap

Let `L` and `R` be the sets of heights of contacts on `x=0` and `x=1`.
For real `t`, put

`W(t) = max_i(x_i+t y_i) - min_i(x_i+t y_i)`.

The strips between these two lines, intersected with `0<=y<=1`, form an
enclosing parallelogram of area `W(t)`. Hence `W(t)>=W(0)=1`. Because the
point set is finite, the one-sided derivatives at zero are

`W'(0+) = max R - min L`,

`W'(0-) = min R - max L`.

The local-minimum inequalities imply `min L<=max R` and `min R<=max L`.
These are exactly the condition that the closed projection intervals overlap.
Interchanging x and y gives the horizontal statement. This proves the tilt
argument used by the specification, including cases with two contacts on
both sides or equal projection endpoints.

## 2. Every maximizer reaches one of the five domains

The reduction may use square isometries, relabeling, and feasible shears of
determinant 1. These operations preserve all triangle areas.

### No occupied corner

If both vertical sides have single contacts, overlap makes them
`(0,l)` and `(1,l)`. Apply the one-parameter shear

`(x,y) -> (x+t(y-l),y)`.

It fixes the two vertical contacts and keeps every horizontal contact on its
horizontal side line. For every other point, `0<x<1` initially, so all its
x-constraints allow an open interval of t around zero. The intersection of
these finitely many intervals is closed, contains zero in its interior, and
is bounded: a top or bottom contact has `y!=l`. Moving to either endpoint
creates a new vertical-side incidence while losing no old incidence.

If a corner is created, use the corresponding corner case below. Otherwise
one vertical side now contains two points. If both horizontal sides still
have single contacts, use the transposed shear with their common x-coordinate.
This preserves all vertical side lines and the existing horizontal contacts,
so it cannot undo the achieved vertical double contact. Again it either
creates a corner or creates a horizontal double contact. At most these two
steps are needed; there is no infinite saturation argument.

For two overlapping intervals with endpoints at contacts, at least one
interval contains an endpoint of the other. If one interval is a singleton
and the other is not, choose the nonsingleton interval. If both are
nonsingletons, choose either interval that contains an opposite endpoint.
Reflect horizontally to put the chosen vertical double side on the left,
and vertically to put the chosen horizontal double side on the bottom.
These reflections commute and preserve the projection-containment property
already obtained in the other direction.

We may therefore label six distinct contacts

`(0,a), (0,h), (b,0), (c,0), (1,d), (f,1)`

with `a<h`, `b<c`, `a<=d<=h`, and `b<=f<=c`. The remaining four points are
arbitrary square points. This is exactly family N. Unspecified points are
allowed to be additional boundary contacts; the reduction does not assume
six, seven, or eight boundary points in total.

### One corner

Move the occupied corner to `(0,0)`. A right contact has positive height,
so vertical projection overlap forces a second left contact `(0,h)` and
some right contact `(1,d)` with `0<d<=h`. Similarly there is a second bottom
contact `(c,0)` and a top contact `(f,1)` with `0<f<=c`. These five points
are distinct when there are no other corners. The other five points are
unrestricted. This is C1; its weak closed inequalities enlarge the domain
and are safe for an upper bound.

### Two opposite corners

Move them to `(0,0)` and `(1,1)`. Vertical overlap forces another contact
on each vertical side, with projections `[0,h]` and `[d,1]`, hence `d<=h`.
The horizontal argument gives contacts `(c,0)` and `(f,1)` with `f<=c`.
The six contacts plus four free points give C2. If another corner occurs,
the configuration is already in the three-corner case.

### Two adjacent corners

Move them to `(0,1)` and `(1,1)`. A bottom contact exists. If another left
contact exists, it and the bottom contact are distinct unless `(0,0)` is
occupied; this gives II or III immediately.

Otherwise every point below the top side has positive x-coordinate. Put

`s = min_{y_i<1} x_i/(1-y_i) > 0`.

The shear `(x,y) -> (x-s(1-y),y)` fixes both top corners, keeps all points
inside the square, and produces a left contact. The bottom contact remains
on the bottom side. If it is the same point as the new left contact there
are three corners; otherwise there are distinct anchors
`(1,1),(0,1),(0,l),(b,0)` and six free points, namely II. No right-side
contact needs to be retained beyond the fixed top-right corner.

### At least three corners

Any three square corners can be moved to `(0,0),(0,1),(1,1)` by a square
isometry. All other points, including a possible fourth corner, are among
the seven free points of III.

These cases exhaust the number and adjacency pattern of occupied corners.
Coinciding labels and collinear triples have minimum area zero and cannot
be maximizing configurations. Including such points on closure faces does
not invalidate the upper-bound cover.

## 3. The finite initial enumeration does cover real configurations

Assign each coordinate r to the monotone segment index
`min(21,floor(22r))`; this is the usual half-open convention, with 1 in the
last segment. The checker then uses the corresponding *closed* intervals,
so all boundary assignments remain enclosed.

Two free points in one grid cell have coordinate differences at most
`1/22`; their determinant with any third point is at most `2/22`, so their
ordinary area is at most `1/22`. Two contacts in one side segment give area
at most `1/44` with any third point. Both are below the corner threshold
and hence below the N threshold. A competitive configuration therefore has
distinct free-cell indices and distinct segment indices for each selected
same-side pair. Sorting the free-cell indices only relabels free points.

For three rectangles, the signed determinant is affine in each of its six
coordinates separately. Iterating the elementary endpoint bound for an
affine function proves that its maximum absolute value is attained at
rectangle corners. Thus `mxdet` is exact. For fixed first and second corners,
the signs of the coefficients of the third point's coordinates choose its
two extrema exactly as in the implementation.

Every grid determinant is an integer. A corner maximum below 46 is at most
45, so ordinary area is at most `45/(2*22^2)`, which is below both actual
thresholds. The fixed-triple, two-anchor/one-cell, one-anchor/two-cell, and
three-free-cell tests therefore reject only impossible competitive choices.

At each free-cell recursion level, the available list already satisfies
compatibility with every selected earlier pair. Adding v filters later w
against every anchor and every earlier selected free point. By induction,
every competitive increasing free-cell list is retained until its full root
box is checked. Cardinality pruning is valid because the available list is
a necessary superset of all extensions. The final free point inherits all
the tests it needs from the preceding recursion step.

The anchor index inequalities are necessary because segment assignment is
monotone. They may include boxes whose real coordinates violate a continuous
ordering constraint; this only enlarges the checked domain. The early N
fixed-triple filters use the same necessary determinant bound.

## 4. Contraction is an enclosure argument

Fix one coordinate `z` of one triangle in an old box `[l,h]`. Let `M0,M1`
be the absolute determinant maxima on its two faces. For
`u=(z-l)/(h-l)`, affine dependence and the triangle inequality give

`|D| <= (1-u) M0 + u M1`.

If both scaled maxima are at most the strict target T, all points of the
box violate that triangle's strict target. Otherwise, for
`low<T<high`, a feasible coordinate must satisfy

`z > l + (h-l)(T-low)/(high-low)`.

Raising l by the integer floor of the last increment retains every such
coordinate. The decreasing case is identical with h lowered. The floor is
outward rounding for this purpose. Other coordinates may already have
shrunk since the face maxima were computed, but that only reduces the face
domains, so the old maxima remain valid. A coordinate occurs only once in
the six-coordinate list for a triangle; its own interval has not been
changed when its corresponding precomputed face maxima are used.

After contraction, subdivision uses `[l,mid]` and `[mid,h]`, with both
children retained. The overlap at mid prevents holes. All 120 triangles
are unsigned throughout; midpoint ordering affects only speed. Exhausting
the work budget or reaching an undecided smallest integer box raises an
exception and emits no successful range completion.

The finite scale does not restrict the real coordinates to a lattice. Every
box denotes the full closed real product of intervals whose endpoints have
that scale. No claim of automatic termination at the chosen scale or target
is needed: successful complete runs, with no undecided leaf, are required.

## 5. Local acceptance and the strict local theorem

The template root interval contains the same unique real root g as the exact
local certificate. The function `a(g)=1-3g+2g^2` is decreasing throughout
that interval. The floor/ceiling expressions therefore enclose a, g/2, g,
their complements, and the exact coordinates 0 and 1. The loop enumerates
all four rotations, both with and without a reflection.

For a candidate coordinate enclosed by `[qlo,qhi]`, the local test requires

`blo >= qhi - 1/2000` and `bhi <= qlo + 1/2000`.

Every real coordinate in the box is consequently within `1/2000` of the
actual candidate coordinate. The used-label bit mask gives a bijection of
the ten box points to the ten candidate points whenever the test succeeds.
Greedy matching could fail to find an existing bijection, but cannot accept
an invalid one; such false negatives can only increase search work.

The local theorem concerns all twenty movable coordinates. Its argument is
valid with the data checked by `verify_n10.py`:

* The sixteen selected signed areas stay positive because their gradient
  row sums are at most 3, their quadratic remainders have absolute value at
  most `2h^2`, and `3/2000+2/2000^2<1/25<A`.
* Assuming all areas are at least A gives `Jd>=-2h^2` and `Nd>=0`.
  For `q=d_Ox` and `e=d-qv`, the gauge coordinate is zero; `Jv=Nv=0`
  permits applying all 38 dual inequalities, yielding `E<=162h^2`.
* Therefore `E<=81h/1000`, `|q|<=h`, and
  `|q|>=(h-E)/(11/8)>=919h/1375`.
* The exact curvature and mixed bounds imply
  `Q(d)<=-(57921081/30250000)h^2<0` whenever `h>0`.
  The positive stress and the inward-boundary inequalities simultaneously
  force `Q(d)>=0`, a contradiction.

Thus an accepted local box has minimum area at most A; equality is possible
only at the exact candidate for its selected labeling and square symmetry.
The algebraic stress and dual identities are separate certificate inputs,
not consequences of the global run counts.

## 6. Threshold and machine-integer checks

`check_geometry_bounds.py` is a standalone standard-library rational check.
It does not import the seed arithmetic. It verifies both *actual* global
thresholds

`4653/100000 < 4653741958254/10^14 < A`,

using a direct interval evaluation of `A=5g^2/8-g^3/2` on the fine rational
isolating interval. The lower bound for `A-tN` is strictly positive. It also
checks the coarse template root interval, the grid cut, and the local
contradiction margin. Its ordinary and `python -O` runs give identical output;
it uses explicit exceptions rather than removable assertions.

With `S=22*2^20`, raw determinant differences are bounded by `2S^2` and
the midpoint-ordering determinants by `8S^2`, both below `2^63`. Local
coordinate comparisons fit signed 64-bit integers too. The largest
contraction numerator is bounded by

`4653741958254 * S^3 = 57130770474626477335914040673697792 < 2^117`.

All face products, target products, template enclosure products, and the
actual intermediate terms of both root-polynomial evaluations fit signed
128-bit integers. The largest root-polynomial intermediate is

`6312222752180000000000000000000000000 < 2^125`.

These bounds apply to the audited constants; a change of grid, target, root
precision, or arithmetic representation requires updating the checks.

## 7. Global theorem assembly and equality

Assume the independent exact local certificate passes and successful cover
ranges cover every allowed anchor pattern in all five families. Each corner
family then has minimum area at most `tC<A`. Family N has minimum area at
most `tN<A` or lies in a certified local box, where it has minimum area at
most A. Applying the exhaustive normalization to an arbitrary maximizer
therefore gives `H10<=A`; attainment supplies `H10>=A`.

This argument does not assume that every point outside the local neighborhood
has a known strict gap. The complete global run is precisely what proves
the exclusion needed there. A partial range or a positive node count cannot
replace it.

There is also an equality classification once all these premises are met.
A maximizing normalized configuration cannot use a corner-family exclusion
or an N threshold exclusion, because its value A exceeds both thresholds.
It must enter a local box, whose strict theorem makes it the exact candidate
up to relabeling and a square symmetry.

To reverse normalization, consider the last nontrivial shear. The feasible
parameter interval is convex, so the segment from its pre-shear value to
its endpoint stays inside the square. Every point on the segment has the
same triangle areas. If its endpoint is a strict local maximizer, a
nonconstant segment would give distinct maximizers arbitrarily close to that
endpoint, contradicting the strict local theorem. The segment cannot be
constant for a positive-area configuration unless the shear parameter is
zero: all its points would otherwise have to lie on the shear's fixed line.
Square isometries and relabelings preserve this strict local property.
Reversing the finite sequence of operations therefore eliminates every
nontrivial shear. The original maximizer itself is a square-symmetry image
of the candidate, up to labeling.

## Audit conclusion

No mathematical gap was found in the five-family reduction, unsigned-area
enumeration, conservative contraction, or local acceptance rule. The
independent constant checks pass. The originally imported seed script
checked a different nearby rational threshold; the actual two global
comparisons are supplied explicitly here and should also be included in
the final reproducibility entry point. Global completion still depends on
the complete family receipts and independent search replay.
