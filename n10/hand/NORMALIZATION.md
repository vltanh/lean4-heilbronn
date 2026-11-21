# Exhaustive analytic normalization for ten points

This closes HP03–HP05 and the conditional lemma HP13. It does not use the
computer-assisted upper bound. Exact attainment is supplied by ATTAINMENT.md.

Write m(P) for the least ordinary unsigned area of the 120 triangles of P.

## 1. Compactness and nondegeneracy

The function m is continuous on the compact space [0,1]^20, hence has a
maximizer. The candidate has value A*>0, so every maximizer has positive
minimum area. Its ten points are distinct, no three are collinear, and
at most two points lie on any side of the square.

## 2. The square is a minimum-area enclosing parallelogram

If a maximizer fitted inside a parallelogram of area b<1, an affine map
from that parallelogram onto the unit square would multiply every triangle
area by 1/b>1. This contradicts maximality. Thus every enclosing
parallelogram has area at least one; the square is one such minimizer.

Every square side is contacted, since otherwise a smaller axis-aligned
rectangle would enclose the configuration. Uniqueness of the minimum
parallelogram is neither asserted nor needed.

Let L and R be the sets of heights of contacts on x=0 and x=1. Put

    W(t)=max_i(x_i+t y_i)-min_i(x_i+t y_i).

The two supporting lines, together with y=0 and y=1, enclose a parallelogram
of area W(t). Hence W(t)>=W(0)=1. Since the point set is finite,

    W'(0+) = max R-min L >= 0,
    W'(0-) = min R-max L <= 0.

Therefore the intervals spanned by L and R overlap. Interchanging the
coordinates proves the analogous overlap for bottom and top contacts.

## 3. No-corner normalization uses at most two shears

Suppose there is no occupied corner. If both vertical sides have just one
contact, the overlap says that they are (0,l) and (1,l), for 0<l<1. The shear

    (x,y) -> (x+t(y-l),y)

fixes these contacts and keeps every existing horizontal incidence on its
side line. Every other point initially has 0<x<1, so the feasible values of
t contain an open interval around zero. Their intersection is a closed
bounded interval: a top or bottom contact has y different from l.
At an endpoint, a new vertical incidence appears without losing an old one.

This shear has determinant one, so the transformed configuration remains a
maximizer and the overlap lemma still applies. If a corner appeared, pass
to the corresponding corner case below. Otherwise a vertical side is now
double. If both horizontal sides are still singletons, use the transposed
shear through their common x-coordinate. It preserves the vertical side
lines and the existing horizontal contacts; it creates a corner or makes
a horizontal side double. It cannot undo the vertical double side.

Thus, in the no-corner outcome, each opposite pair of sides contains a
double side. For two overlapping contact intervals, one interval contains
an endpoint of the other. Choose such a double interval in each direction;
if the other interval is a singleton, choose the nonsingleton. Independent
reflections put the chosen vertical and horizontal double sides on the left
and bottom. Containment of the opposite contact is preserved by reflection.

The resulting six distinct selected contacts are

    (0,u), (0,v), (w,0), (z,0), (1,r), (s,1),

where u<v, w<z, u<=r<=v and w<=s<=z. The other four points are arbitrary
square points, possibly additional boundary contacts. This is family N.

## 4. The corner alternatives

### Exactly one corner: C1

Move the corner to (0,0). Every right contact has positive height. Projection
overlap forces another left contact (0,v), and a right contact (1,r) with
0<r<=v. Similarly there are (z,0) and (s,1) with 0<s<=z. These five points
are distinct; the other five points are unrestricted.

### Exactly two opposite corners: C2

Move them to (0,0),(1,1). Projection overlap forces a second contact on
both vertical sides: otherwise their intervals could meet only at another
corner. Write them as (0,v),(1,r), so r<=v. The horizontal argument gives
(z,0),(s,1), with s<=z. There are six anchors and four unrestricted points.

### Exactly two adjacent corners: II, or III after one shear

Move the corners to (0,1),(1,1). A bottom contact exists. If another left
contact exists, it and the bottom contact are distinct unless the bottom-left
corner is occupied; these alternatives give II and III respectively.

Otherwise every point below the top side has positive x-coordinate. Put

    c=min_{y_i<1} x_i/(1-y_i)>0.

The shear (x,y)->(x-c(1-y),y) fixes both top corners, keeps every point
in the square and produces a left contact. The bottom contact stays on the
bottom. If these are the same point, a third corner is occupied. Otherwise
the four distinct anchors are (0,1),(1,1),(0,l),(b,0), with six free points.

### At least three corners: III

Move three corners to (0,0),(0,1),(1,1). The other seven points are arbitrary,
including a possible fourth corner.

## 5. The exhaustive five-domain statement

Every maximizer can be taken, by square symmetries, relabeling and the finite
area-preserving shears above, to one of the following domains.

| Family | Anchors | Coordinate restrictions | Free points |
|---|---|---|---:|
| N | (0,u),(0,v),(w,0),(z,0),(1,r),(s,1) | u<v, w<z, u<=r<=v, w<=s<=z | 4 |
| C1 | (0,0),(0,v),(z,0),(1,r),(s,1) | 0<=r<=v<=1, 0<=s<=z<=1 | 5 |
| C2 | (0,0),(1,1),(0,v),(z,0),(1,r),(s,1) | same inequalities as C1 | 4 |
| II | (0,1),(1,1),(0,l),(b,0) | 0<=l,b<=1 | 6 |
| III | (0,0),(0,1),(1,1) | none | 7 |

All omitted coordinates lie in [0,1]. Including closure faces only enlarges
the checked domains. Repeated points or collinear triples have m=0 and
cannot be competitive. Domains need not be disjoint for an upper bound.
The reduction is a statement about maximizers, which suffices by compactness;
it is not an assertion that arbitrary configurations already satisfy the
support-overlap restrictions. At most two no-corner shears and, if needed,
one adjacent-corner shear occur.

## 6. A three-type corner-free boundary catalogue

In a corner-free normalized maximizer, each of the four sides has one or two
points, and each opposite pair has a double side. Because there are no
corners, boundary counts add without double counting.

There are consequently exactly three possibilities:

| Type | Side multiplicities, up to square symmetry | Strictly interior points |
|---|---|---:|
| N6 | (2,2,1,1), with the double sides adjacent | 4 |
| N7 | (2,2,2,1) | 3 |
| N8 | (2,2,2,2) | 2 |

For N6 the double sides cannot be opposite, since then the other opposite
pair would consist of two singleton sides. This proves the catalogue.
It does NOT eliminate N6 or N7, or force symmetry in N8.

There is no uniform gap below A* on all of N6 or N7. For example, start
from the candidate and move D slightly left into the square and G slightly
down. The other six boundary points remain fixed, giving N6 configurations
whose minimum area tends to A*. Moving just D gives N7. These perturbations
retain admissible N anchors A,H,B,C,E,F. A hand exclusion must therefore
rule out attainment by a maximizer, not assert a fixed positive gap on the
entire nonclosed domain.

## 7. A global occupancy cut and the remaining three-corner counts

First, A*>1/22. Indeed g>5/16, and x^2(5/4-x) increases on (0,1/3), so

    2A* > (5/16)^2(5/4-5/16) = 375/4096 > 1/11.

If a triangle of configuration points contains k other points strictly
inside it, triangulating those k+3 points gives 2k+1 triangular faces.
For completeness, Euler's formula and counting incidences give
V-E+F=1 and 3F=2E-3, hence F=2V-5=2k+1. A straight-line triangulation
exists by inserting the interior points into an initial triangle; any
needed edge subdivision preserves a triangulation.

When m>=A*, the triangle's area is at least (2k+1)A*. But every triangle
inside the unit square has area at most 1/2: multi-affinity of its signed
determinant reduces its maximum absolute value to square vertices.
For k>=5 we would get area>=11A*>1/2. Thus k<=4.

The stronger hand argument in TRIANGLE_OCCUPANCY.md improves this to k<=3.
For four interior points it proves

    area >= ((15+3 sqrt(5))/2) m,
    m <= 1/(15+3 sqrt(5)) < 5/108 < A*.

The proof selects an interior point of minimum barycentric coordinate,
leaving an empty fan triangle, and uses explicit two- and three-interior-point
area inequalities in the other two fan triangles. It applies to every triangle
of actual configuration points, with no assumption about the remaining points.

For exactly three corners, choose (0,0),(0,1),(1,1) and put s=2A*.
The seven other points satisfy

    x>=s,  y<=1-s,  |y-x|>=s.

They lie in the two triangles

    U_s=conv{(s,2s),(s,1-s),(1-2s,1-s)},
    L_s=conv{(s,0),(1,0),(1,1-s)}.

There is no diagonal equality because m>0. At most four are in U_s by
the preceding occupancy cut, since these lie inside the triangle of the
three occupied corners. Hence the residual exact-three-corner classes are

    (number in U_s, number in L_s) = (0,7),(1,6),(2,5),(3,4),(4,3).

The four-corner alternative is fully excluded in FOUR_CORNERS.md. The stronger
occupancy theorem excludes (4,3). THREE_CORNERS.md excludes (0,7), (1,6)
and (2,5) by a complete seven-point endpoint theorem. Thus the only remaining
exact-three-corner count after those reductions is (3,4). Its clustered
case and all distributed fan splits are now excluded in the proofs
assembled by THREE_CORNERS_COMPLETE.md.

## 8. Conditional reversal of normalization: HP13

Assume a later hand argument proves that every normalized maximizer is a
square-symmetry image and relabeling of the candidate. Also assume the strict
local isolation proved in LOCAL_RIGIDITY.md.

Suppose a normalizing sequence had a last nonconstant shear. Its endpoint,
after subsequent square isometries and relabeling, would be the candidate.
Feasibility along a shear is an intersection of intervals in its parameter,
so the segment leading to the endpoint is feasible. Every point on that
segment has the same triangle areas.

A nonconstant segment would supply distinct feasible maximizing configurations
arbitrarily close to the candidate, contradicting strict local isolation.
The segment could be constant only if every point lay on the shear's fixed
line, impossible when m>0. Therefore no nonconstant shear occurred. The
original maximizer was itself a square-symmetry image and relabeling of the
candidate.

The [global proof](ASSEMBLY.md) applies the reversal lemma after the
[six-contact exclusion](N6_ASSEMBLY.md) and the
[sharp eight-contact theorem](N8_COMPLETE.md).
