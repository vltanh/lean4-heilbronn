# Corner families: a hand exclusion from triangulation stars

## Scope

This note proves handwritten exclusions for every Type-III diagonal count
except \(3+3\), and a triangle-occupancy restriction for every competitive
configuration. It does **not** close Type III or Type II. Only the case
with three free points on each side of the occupied diagonal remains
open for Type III in this note.

Write

\[
A=(0,0),\qquad B=(0,1),\qquad C=(1,1),\qquad
A_0=\frac{9\sqrt{65}-55}{320}.
\]

**Type-III exclusion.** Suppose a nine-point configuration contains \(A,B,C\)
and at least four of its other six points satisfy \(y>x\). Then its minimum
triangle area \(t\) satisfies

\[
\boxed{t\le \frac{1}{14+4\sqrt2}<\frac1{19}<A_0.}             \tag{1}
\]

The proof of (1) uses only planar triangulations, one determinant identity, and
the arithmetic-geometric mean inequality. No published small-\(n\)
Heilbronn bound or computational cover is a premise.

**Global occupancy corollary.** In any nine-point configuration in the unit
square whose minimum triangle area is at least \(A_0\), a triangle spanned
by three configuration points contains at most three further configuration
points in its interior. This statement applies to every normal form,
including Type I.

**A second Type-III exclusion.** If at most one of the six free points lies
above \(y=x\), then

\[
\boxed{t\le\frac7{128}=0.0546875<A_0.}                       \tag{9}
\]

Section 6 proves this by a support-triangle normalization and the
self-contained six-point theorem in [OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md).
No external small-point Heilbronn theorem is imported.

**A third Type-III exclusion.** If exactly two of the six free points lie
above \(y=x\), then a configuration with minimum area at least \(A_0\)
would satisfy

\[
t\le\frac{38809}{715084}<\frac7{128}<A_0,
\]

a contradiction. Sections 8 and 9 prove this using the sharp six-point
triangular-hull theorem and the four-corner theorem in
[FOUR_CORNERS.md](FOUR_CORNERS.md).

## 1. The area cost of a degree-four or degree-five star

Let \(O\) be an interior vertex of degree \(d=4\) or \(d=5\) in a straight-line
triangulation of a point set in general position. List its neighbors as
\(V_1,\ldots,V_d\) counterclockwise. Translate \(O\) to the origin, write
\([u,v]=\det(u,v)/2\), and set

\[
a_i=[V_i,V_{i+1}]>0,
\]

with cyclic indices. These \(a_i\) are the areas of the incident faces.
Suppose **every** triangle spanned by the point set has area at least \(t>0\),
not just the faces of the triangulation.

**Star lemma.** The total area of the incident faces is at least

\[
\boxed{\sum_{i=1}^d a_i\ge(d-2+2\sqrt2)t.}                   \tag{2}
\]

### Degree four

Put \(b=[V_1,V_3]\) and \(c=[V_2,V_4]\). The determinant identity

\[
bc=a_1a_3-a_2a_4                                             \tag{3}
\]

holds regardless of the signs of \(b,c\). Since the triangles \(OV_1V_3\)
and \(OV_2V_4\) also occur in the configuration, \(|b|,|c|\ge t\).
Consequently one of the two products \(a_1a_3,a_2a_4\) exceeds the other by
at least \(t^2\). The smaller product is at least \(t^2\), so the larger is
at least \(2t^2\). Its two factors sum to at least \(2\sqrt2\,t\), while the
remaining two factors sum to at least \(2t\). This proves (2).

### Degree five

Put \(b_i=[V_i,V_{i+2}]\). For each cyclic index, the same determinant identity
gives

\[
b_i b_{i+1}+a_{i+1}b_{i+3}=a_i a_{i+2}.                     \tag{4}
\]

Here every \(|b_i|\ge t\). To control the signs, let \(\theta_i\in(0,\pi)\)
be the angle from \(V_i\) to \(V_{i+1}\) around \(O\). Since the incident
triangles surround an interior vertex,

\[
\sum_i\theta_i=2\pi,
\qquad b_i<0\ \Longleftrightarrow\ \theta_i+\theta_{i+1}>\pi.
\]

Two negative \(b_i\)'s must have adjacent indices on the five-cycle:
otherwise their two disjoint angle pairs would already sum to more than
\(2\pi\). Hence there are at most two negative terms, and if there are two
they are consecutive. The possibility \(b_i=0\) is excluded by \(t>0\).

There is an index \(i\) for which \(b_i,b_{i+1}\) have the same sign and
\(b_{i+3}>0\). If there are no negative terms, any index works. If there is
one negative term, cyclically call it \(b_1\) and take \(i=2\). If there
are two, take their consecutive indices for \(i,i+1\).

For this index, both summands on the left of (4) are at least \(t^2\).
Thus \(a_i a_{i+2}\ge2t^2\). These two face areas sum to at least
\(2\sqrt2\,t\); the other three sum to at least \(3t\). This proves (2)
for degree five as well. The neighbor polygon need not be convex.

## 2. Seven points with a triangular convex hull

**Triangular-hull lemma.** Let seven points be in general position, with
convex hull a triangle of area \(S\). If every spanned triangle has area at
least \(t\), then

\[
\boxed{S\ge(7+2\sqrt2)t.}                                   \tag{5}
\]

There are four interior points. We first show that some triangulation has
an interior vertex of degree four or five.

### An empty convex quadrilateral exists

Any five points in general position contain a convex quadrilateral. This is
immediate if at least four are hull vertices. Otherwise their hull is a
triangle and there are two interior points \(P,Q\). The line \(PQ\) separates
one triangle vertex from the other two. Those other two vertices together
with \(P,Q\) form a convex quadrilateral: the two hull vertices remain
extreme, and \(PQ\) is a supporting segment for the four-point set.

Now choose a convex quadrilateral of minimum area among the seven-point set.
It contains no other point in its interior. Otherwise, the preceding
five-point fact applied to its vertices and an interior point would give
a strictly smaller convex quadrilateral inside it. No point lies on its
edges, by general position.

Draw this empty quadrilateral and either diagonal, then extend these
noncrossing edges to a triangulation of the full seven-point set. The
selected diagonal is flippable: its two incident faces have a convex
quadrilateral as their union.

### Choosing a degree-four or degree-five vertex

Let \(I\) be the set of four interior vertices. A triangulation has 15 edges,
of which three are the hull edges. Write \(e_{II}\) for the number of edges
joining two vertices of \(I\), and \(e_{IB}\) for the number joining an
interior vertex to a boundary vertex. Then

\[
e_{II}+e_{IB}=12,
\qquad \sum_{v\in I}\deg(v)=2e_{II}+e_{IB}=12+e_{II}\le18.    \tag{6}
\]

Suppose there is no interior vertex of degree four or five. Each interior
degree is therefore three or at least six.

If \(e_{II}=6\), the four interior vertices induce a planar straight-line
\(K_4\). Three are vertices of its triangular convex hull, and the fourth
is inside that triangle. Each of those three hull vertices of \(I\) must
have a neighbor outside \(I\): its neighbors in \(I\) alone all lie in a
strict half-plane and cannot surround an interior vertex of the full
triangulation. Thus their degrees are at least four, and under the
supposition at least six. Together with the fourth degree, which is at
least three, their degree sum is at least 21, contradicting (6).

Hence \(e_{II}\le5\), and the interior degree sum is at most 17. There can
be at most one interior vertex of degree at least six; all the other
interior vertices have degree three.

An edge incident to an interior degree-three vertex is not flippable.
Indeed that vertex lies inside the triangle of its three neighbors, so
the union of the two faces along such an edge is not a convex quadrilateral.
The flippable edge selected above must therefore join the unique interior
vertex of degree at least six to a boundary vertex. It cannot join two
boundary vertices, because all three pairs of boundary vertices are hull
edges.

At least one of the two opposite vertices of its quadrilateral is interior.
If both were boundary vertices, the quadrilateral would consist of the
three outer triangle vertices and one point inside their triangle, so
would not be convex. This opposite interior vertex has degree three.
Flipping the selected diagonal increases its degree to four.

Thus a triangulation with an interior degree-four or degree-five vertex
exists, whether or not the original triangulation already had one.

### The area sum

A triangulation of seven points with triangular hull has nine faces. If
the chosen interior degree is \(d\), the star lemma accounts for its \(d\)
faces with total area at least \((d-2+2\sqrt2)t\). Each of the other
\(9-d\) faces has area at least \(t\). Adding gives

\[
S\ge(d-2+2\sqrt2)t+(9-d)t=(7+2\sqrt2)t,
\]

as claimed.

## 3. Application to the three-corner family

If the minimum area \(t\) is zero, (1) is immediate. Otherwise all points
are distinct and no three are collinear.

Select four free points with \(y>x\). They lie strictly inside
\(\triangle ABC\): points on \(x=0\) or \(y=1\) would be collinear with two
of the prescribed corners. Together with \(A,B,C\), these are seven points
with triangular hull of area \(1/2\). Apply (5):

\[
t\le\frac{1}{2(7+2\sqrt2)}.
\]

Finally, \(\sqrt2>5/4\) implies \(14+4\sqrt2>19\), while
\(\sqrt{65}>8\) gives

\[
A_0>\frac{17}{320}>\frac1{19}.
\]

This proves the strict exclusion (1), including every boundary case that
could occur in this diagonal-count class.

## 4. The global triangle-occupancy corollary

Suppose three points of an arbitrary configuration span a triangle
containing four further points. The seven selected points have triangular
convex hull. A triangle in the unit square has area at most \(1/2\): the
absolute determinant is affine separately in each coordinate before taking
absolute value, so its maximum on the coordinate box occurs at square
corners, where the area is at most \(1/2\).

The triangular-hull lemma now gives the same bound (1), contradicting
minimum area at least \(A_0\). A configuration point on the triangle's
boundary would already give a zero-area triangle, so boundary degeneracies
cannot evade the conclusion.

This is a global structural restriction. It does not assert that the
remaining order types are exhausted by the chamber in `HAND_PROOF.md`.

## 5. Exact residual Type-III geometry

For any positive minimum area \(t\), put \(s=2t\). Triangles formed with
two of \(A,B,C\) imply, for every free point \((x,y)\),

\[
x\ge s,\qquad y\le1-s,\qquad |y-x|\ge s.                    \tag{7}
\]

Consequently every free point lies in one of the two disjoint triangles

\[
\begin{aligned}
U_s&=\operatorname{conv}\{(s,2s),(s,1-s),(1-2s,1-s)\},\\
L_s&=\operatorname{conv}\{(s,0),(1,0),(1,1-s)\}.
\end{aligned}                                               \tag{8}
\]

Here (8) is used when \(0<s<1/3\), as is the case at the target threshold;
if \(s>1/3\), the upper region is empty, and if \(s=1/3\), it is a single
point. At \(t\ge A_0\), the preceding exclusion shows that **at most three**
of the six free points can lie in \(U_s\).

The remaining count classes are

| Free points in \(U_s\) | Free points in \(L_s\) | Status here |
|---:|---:|---|
| 0 | 6 | Strictly excluded by (9) and the six-point theorem |
| 1 | 5 | Strictly excluded by (9) and the six-point theorem |
| 2 | 4 | Strictly excluded by Sections 8 and 9 |
| 3 | 3 | Open |
| 4, 5, or 6 | 2, 1, or 0 | Strictly excluded by (1) |

## 6. At most one upper point: a complete exclusion

### A support-triangle normalization

The following lemma uses the self-contained six-point theorem proved as
Theorem 1 in [OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md).

**Nontriangular-hull lemma.** Suppose at least six points lie in

\[
T=\operatorname{conv}\{A=(0,0),D=(1,0),C=(1,1)\},
\]

include \(A,C\), and have nontriangular convex hull. Then their minimum
triangle area is at most \(7/128\).

If the minimum area is zero there is nothing to prove, so assume it is
positive. In particular no three of the points are collinear. For each
point other than \(A,C\), one has \(x>0\), \(y<1\), and \(y<x\). Define

\[
\rho=\min\frac yx,\qquad
\eta=\min\frac{1-x}{1-y},
\]

where both minima range over those other points. Thus
\(0\le\rho,\eta<1\). Every configuration point satisfies

\[
\rho x\le y\le x,
\qquad x\le1-\eta+\eta y.
\]

These inequalities describe the enclosing triangle \(T'=ACR\), where

\[
R=\left(\frac{1-\eta}{1-\rho\eta},
         \frac{\rho(1-\eta)}{1-\rho\eta}\right).              \tag{10}
\]

The denominator is positive, and \(0\le R_y<R_x\le1\), so \(T'\subseteq T\)
and \(0<\operatorname{area}(T')\le1/2\).

Let \(P\) attain the first minimum and \(Q\) the second. They are actual
configuration points on the two supporting legs \(AR\) and \(CR\),
respectively. Neither is one of the base endpoints by the definition of
the minima. Each contact is unique, since two contacts on a leg would be
collinear with its base endpoint.

The contacts are distinct. Otherwise their common point would be \(R\),
and since all configuration points lie in \(ACR\), their hull would be the
triangle \(ACR\), contrary to the hypothesis. Moreover neither contact can
be \(R\): if \(P=R\), the three distinct actual points \(C,R,Q\) would be
collinear, and similarly if \(Q=R\). Therefore

\[
P\in\operatorname{relint}(AR),\qquad
Q\in\operatorname{relint}(CR).
\]

Choose any two additional configuration points besides \(A,C,P,Q\). There
are at least two, by the six-point hypothesis. Apply the affine bijection
from \(T'\) onto \(T\) fixing \(A,C\) and sending \(R\) to \(D\). Its
absolute determinant is

\[
\frac{\operatorname{area}(T)}{\operatorname{area}(T')}\ge1.
\]

The six selected points now have the two diagonal endpoints, distinct
contacts in the open bottom and right legs, and two further points in
\(T\). Reflect across \(y=x\). This is exactly the six-point family of
Theorem 1 in `OPPOSITE_CORNERS.md`, so some transformed triangle has area
at most \(7/128\). Affine expansion did not decrease any area; consequently
the corresponding original triangle also has area at most \(7/128\).
This proves the nontriangular-hull lemma.

### Seven points below a diagonal, including its two endpoints

**Endpoint lemma.** Seven points in \(T\) including \(A,C\) have minimum
triangle area at most \(7/128\).

If their minimum area is zero the conclusion is immediate. Otherwise,
if their hull is nontriangular, apply the preceding lemma. If their hull
is triangular, apply the triangular-hull lemma of Section 2:

\[
t\le\frac{1}{14+4\sqrt2}<\frac1{19}<\frac7{128}.
\]

These two hull alternatives are exhaustive. No assertion about the number
of boundary points, symmetry, or the locations of the other five points
is assumed.

### Application to Type III

If there are zero or one free points above \(y=x\), at least five are
below it. Choose any five of them, together with the already occupied
diagonal endpoints \(A,C\). The endpoint lemma applies. The minimum area
of the full nine-point configuration is no greater than that of this
seven-point subset, so (9) follows.

The comparison with the target is exact:

\[
A_0-\frac7{128}=\frac{18\sqrt{65}-145}{640}>0,
\]

because \(18^2\cdot65-145^2=35>0\). Thus only the \(2+4\) and \(3+3\)
diagonal count classes remain for a complete Type-III hand exclusion.

## 7. A further hand restriction on the three-upper-point case

The remaining \(3+3\) count class is not closed here. The following gives
a precise restriction on its upper triple without importing another theorem.

**Two-interior-point lemma.** Suppose a triangle of area \(S\), together
with two points strictly inside it, has minimum triangle area at least
\(t>0\). Then

\[
\boxed{S\ge(4+2\sqrt3)t.}                                   \tag{13}
\]

To prove this, draw the line through the two interior points. It intersects
two sides of the outer triangle; denote those intersections by \(U,V\),
and their common outer-triangle vertex by \(R\). The other vertices are
\(S_1,S_2\), with \(U\in RS_1\), \(V\in RS_2\). The line does not pass
through an outer vertex because that would give a zero-area triangle.

Choose affine coordinates in which

\[
U=(0,0),\quad V=(1,0),\quad R=(a,h),\quad
S_1=R+\lambda(U-R),\quad S_2=R+\mu(V-R),
\]

where \(h>0\) and \(\lambda,\mu>1\). Write the two interior points as
\(P=(p,0),Q=(q,0)\), with \(0<p<q<1\). All areas and \(t\) are scaled
by the same factor under this change of coordinates, so it suffices to
prove the claimed ratio in these coordinates. Put \(k=h/(2t)\).

The five triangles \(RS_1P,RS_2Q,RPQ,S_1PQ,S_2PQ\) give

\[
\begin{aligned}
p&\ge\frac1{\lambda k},&
1-q&\ge\frac1{\mu k},\\
q-p&\ge\frac1k\max\left(1,\frac1{\lambda-1},\frac1{\mu-1}\right).
\end{aligned}
\]

Adding these bounds, and using \(S/t=\lambda\mu k\), yields

\[
\frac St\ge \lambda+\mu+
\lambda\mu\max\left(1,\frac1{\lambda-1},\frac1{\mu-1}\right).
\]

Let \(l=\min(\lambda,\mu)>1\). The right side is at least

\[
2l+\frac{l^2}{l-1}
=4+3(l-1)+\frac1{l-1}
\ge4+2\sqrt3,
\]

by the arithmetic-geometric mean inequality. This proves (13) directly from the five displayed triangle constraints.

**Upper-triple restriction.** In a Type-III configuration of minimum area
at least \(A_0\) with exactly three upper points \(P,Q,R\), for every one
of these points, the other two lie in distinct members of the three
triangles obtained by joining that point to \(A,B,C\).

Indeed, suppose \(Q,R\) both lie in one of the three triangles subdivided
by \(P\). Its area is at least \((4+2\sqrt3)t\) by (13), and the other
two subdivision triangles each have area at least \(t\). Therefore

\[
\frac12\ge(6+2\sqrt3)t,
\qquad
t\le\frac1{12+4\sqrt3}<\frac7{132}<\frac{17}{320}<A_0.
\]

The first strict comparison uses \(\sqrt3>12/7\); the remaining ones
follow by multiplying positive denominators and by \(\sqrt{65}>8\).
No upper point can lie on a subdivision edge, because that would give
a collinear triple. Thus the restriction is exhaustive, including ties.

Equation (13) also gives a global restriction applicable to Type I: a
triangle containing two further configuration points must have area at
least \((4+2\sqrt3)A_0\) at the competitive threshold. This does not
complete the remaining global classification.

## 8. The two-upper-point case has a triangular lower hull

Suppose the Type-III configuration has two upper points and four lower
points, and has minimum area at least \(A_0\). The six-point subset
consisting of \(A,C\) and the four lower points lies in \(T\).
By the nontriangular-hull lemma, its convex hull must be triangular.
Let \(R=(r_x,r_y)\) be its third hull vertex. It is one of the four lower
points, and the other three are strictly inside \(ACR\).

Thus the global nine-point hull is exactly the quadrilateral \(ABCR\):
two free points are strictly inside \(ABC\), and three are strictly
inside \(ACR\). This is a proved reduction of the entire \(2+4\) class,
not an assumption that an optimizer has this hull pattern.

There is also a quantitative constraint on \(R\), furnished by the
following exact six-point theorem.

### A sharp six-point theorem for triangular hulls

**Six-point triangular-hull theorem.** If six points are in general
position, their convex hull is a triangle of area \(S\), and their minimum
triangle area is \(t\), then

\[
\boxed{S\ge\Gamma t,\qquad
       \Gamma=\frac{11+3\sqrt5}{2}.}                         \tag{14}
\]

The coefficient is sharp. The following proof is independent of an exact
Heilbronn theorem for points in a triangular *container*: the three hull
vertices here are actual configuration points.

Let the outer triangle be \(ABC\), in counterclockwise order, and let the
other three points be interior. If two lie in one of the three triangles
formed by joining the third to \(A,B,C\), Section 7 gives

\[
S\ge(6+2\sqrt3)t>\Gamma t.
\]

For the strict comparison, \(6+2\sqrt3>9\) while \(\Gamma<9\).
It remains to handle the distributed case: for each interior point, the
other two lie in distinct triangles of its fan.

**The seven-face mesh.** Label an interior point \(Y\). Relabel the outer
vertices cyclically, or reverse all orientations if needed, and name the
other two points so that

\[
Z\in\operatorname{int}(ABY),\qquad
X\in\operatorname{int}(BCY).
\]

The distributed condition forces the additional four containments

\[
\begin{aligned}
Y&\in\operatorname{int}(CAZ),&
X&\in\operatorname{int}(BCZ),\\
Y&\in\operatorname{int}(CAX),&
Z&\in\operatorname{int}(ABX).                               \tag{15}
\end{aligned}
\]

For clarity, these are deductions, not additional chamber assumptions.
The point \(Y\) cannot lie in \(ABZ\), because \(Z\) is strictly inside
\(ABY\). If \(Y\) lay in \(BCZ\), then \(X\in BCY\subset BCZ\), putting
both \(X,Y\) in the same fan triangle of \(Z\). Thus \(Y\in CAZ\).
Also \(X\notin ABZ\subset ABY\), and the distributed condition now forces
\(X\in BCZ\). The same argument at \(X\), using \(Z\in ABY\), gives
\(Y\in CAX\) and \(Z\in ABX\).

Insert \(Z,X\) into their two fan triangles at \(Y\). The quadrilateral
\(BZYX\) is convex: the only possible nonconvexity would put \(Y\) inside
\(BZX\), but \(BZX\subset BCZ\) whereas \(Y\in CAZ\). Its other vertices
cannot be interior to the other three: \(B\) is an outer hull vertex, and
\(Z,X\) lie on opposite sides of \(BY\). Flipping \(BY\) to \(ZX\)
therefore gives a triangulation with seven positively oriented faces.
Write their areas as

\[
\begin{array}{lll}
x=[ABZ],&y=[BCX],&z=[CAY],\\
a=[AZY],&b=[BXZ],&c=[CYX],\\
k=[ZXY],
\end{array}
\qquad S=x+y+z+a+b+c+k.                                    \tag{16}
\]

Here \([UVW]=\det(V-U,W-U)/2\) is the signed area. Every bracket in (16)
is positive and at least \(t\).

Define the six further signed areas

\[
\begin{array}{lll}
u_A=[AZX],&u_B=[BXY],&u_C=[CYZ],\\
v_A=[AXY],&v_B=[BYZ],&v_C=[CZX].
\end{array}                                               \tag{17}
\]

All six are positive by the cyclic containments (15), so each is at least
\(t\). For example \(Z\in ABX\) gives \([AZX]>0\), and \(Y\in CAX\)
gives \([AXY]>0\); the other four follow cyclically.

**The area identities.** Adding signed triangle areas gives

\[
a=u_A+v_A-k,\qquad b=u_B+v_B-k,\qquad c=u_C+v_C-k.            \tag{18}
\]

Three Pluecker identities give

\[
\begin{aligned}
xk&=ab-u_Av_B,\\
yk&=bc-u_Bv_C,\\
zk&=ca-u_Cv_A.
\end{aligned}                                               \tag{19}
\]

These follow directly from determinants; for instance the first is the
four-vector identity at vertex \(Z\), with its four neighbors
\(A,B,X,Y\). Every required sign has already been established.

Normalize by \(t\), writing

\[
\begin{aligned}
k/t&=1+K,\\
u_i/t&=1+U_i,&v_i/t&=1+V_i,\\
a_i/t&=1+T_i,&(a_A,a_B,a_C)&=(a,b,c).
\end{aligned}
\]

All \(K,U_i,V_i,T_i\) are nonnegative. Equation (18) says

\[
T_i=U_i+V_i-K.
\]

Put \(Z_0=T_A+T_B+T_C\). Sum (19), use \(x+y+z\ge3t\), and expand by
(18). The result is

\[
T_AT_B+T_BT_C+T_CT_A+Z_0
\ge3+6K+(U_AV_B+U_BV_C+U_CV_A)\ge3.                         \tag{20}
\]

For completeness the expansion before discarding nonnegative terms is

\[
\frac{k(x+y+z)}{t^2}
=T_AT_B+T_BT_C+T_CT_A+Z_0-3K
 -(U_AV_B+U_BV_C+U_CV_A).
\]

Since \(T_AT_B+T_BT_C+T_CT_A\le Z_0^2/3\), (20) implies

\[
\frac{Z_0^2}{3}+Z_0\ge3,
\qquad Z_0\ge\frac{3(\sqrt5-1)}2.
\]

Finally, (16) yields

\[
\frac St\ge 3+(3+Z_0)+(1+K)
\ge7+\frac{3(\sqrt5-1)}2
=\frac{11+3\sqrt5}{2}.
\]

This proves (14) for every six-point triangular hull, including both
possible distributions of the interior points.

**Attainment of the six-point bound.** Put

\[
\varphi=\frac{1+\sqrt5}{2},\qquad r=\frac1{4+3\varphi}.
\]

In barycentric coordinates relative to any outer triangle \(ABC\), take

\[
\begin{aligned}
Y&=r(\varphi+2,\ 1,\ 2\varphi+1),\\
Z&=r(2\varphi+1,\ \varphi+2,\ 1),\\
X&=r(1,\ 2\varphi+1,\ \varphi+2).
\end{aligned}
\]

Each row sums to one and has positive entries. The 20 triangle areas,
normalized by \(S\), are grouped as follows:

| Triangles | Normalized area |
|---|---:|
| \(ABC\) | \(1\) |
| Two outer vertices and one interior vertex | \(r,(\varphi+2)r,(2\varphi+1)r\), each three times |
| One outer vertex and two interior vertices | \(r\), three times; \(\varphi r\), six times |
| \(XYZ\) | \(r\) |

The entries follow from the determinant formula and
\(\varphi^2=\varphi+1\). Thus the minimum is \(rS=S/\Gamma\), as claimed.

### Quantitative conclusion for the fourth hull vertex

Since \(\operatorname{area}(ACR)=(r_x-r_y)/2\), apply (14) to the lower
six-point subset to obtain

\[
\boxed{r_x-r_y\ge(11+3\sqrt5)A_0
       =0.9717553843\ldots.}                                \tag{21}
\]

The exact expression, not its decimal approximation, is the proved bound.
In particular

\[
r_x\ge(11+3\sqrt5)A_0,\qquad
r_y\le1-(11+3\sqrt5)A_0.
\]

Thus the fourth hull vertex lies within \(1-(11+3\sqrt5)A_0\) in each
coordinate of the missing square corner \(D\). Section 9 excludes this
entire residual family by a projective change of coordinates with a
controlled area factor.

## 9. Complete exclusion of the two-upper-point class

The following projective lemma is useful independently of Type III.

**Near-square quadrilateral lemma.** Let nine points have convex hull
\(ABCR\), where

\[
A=(0,0),\quad B=(0,1),\quad C=(1,1),\quad
R=(1-\epsilon,\eta),
\]

with \(\epsilon,\eta\ge0\) and
\(r=1-\epsilon-\eta\ge97/100\). Then their minimum triangle area satisfies

\[
\boxed{t\le\frac{38809}{715084}<\frac7{128}.}               \tag{22}
\]

To prove this, put

\[
\alpha=\frac{1-\eta}{1-\epsilon},\qquad
g=-\frac{\eta(1-\eta)}{r(1-\epsilon)},\qquad
h=\frac{\epsilon}{r},\qquad
e=\frac{1-\eta}{r}=1+h,
\]

and define

\[
F(x,y)=\left(
 \frac{\alpha x}{1+gx+hy},
 \frac{gx+ey}{1+gx+hy}\right).                             \tag{23}
\]

The linear denominator \(q(x,y)=1+gx+hy\) has the following values
at the four hull vertices:

\[
q(A)=1,\qquad q(B)=e,\qquad
q(C)=\alpha,\qquad q(R)=1-\eta.
\]

They all lie in \([1-\eta,e]\). Since \(q\) is affine, the same bounds
hold throughout the quadrilateral, so its denominator never vanishes.
Direct substitution gives

\[
F(A)=A,\quad F(B)=B,\quad F(C)=C,\quad F(R)=(1,0).
\]

The homogeneous matrix of (23) is

\[
M=\begin{pmatrix}
\alpha&0&0\\ g&e&0\\ g&h&1
\end{pmatrix},
\qquad \det M=\alpha e>0.
\]

Thus \(F\) is one-to-one. It sends the quadrilateral onto the unit square:
if a point is a convex combination of its vertices, its image is the
convex combination of their images with weights proportional to the
original weights times the positive numbers \(q(A),q(B),q(C),q(R)\).
Conversely, divide any convex-combination weights in the square by these
four positive numbers and renormalize to obtain a preimage.

For three points \(P_1,P_2,P_3\), the determinant formula in homogeneous
coordinates gives

\[
\frac{\operatorname{area}(F(P_1)F(P_2)F(P_3))}
     {\operatorname{area}(P_1P_2P_3)}
=\frac{\det M}{q(P_1)q(P_2)q(P_3)}
\ge\frac{\alpha}{e^2}
=\frac{r^2}{(1-\epsilon)(1-\eta)}.                         \tag{24}
\]

For a zero-area triangle (22) is immediate, so division by its area
causes no loss. Since \(\epsilon+\eta=1-r\),

\[
(1-\epsilon)(1-\eta)
=r+\epsilon\eta
\le r+\frac{(1-r)^2}{4}
=\frac{(1+r)^2}{4}.
\]

Consequently every triangle's area is multiplied by at least

\[
\frac{4r^2}{(1+r)^2}
\ge\frac{4(97/100)^2}{(1+97/100)^2}
=\frac{37636}{38809}.                                    \tag{25}
\]

The function \(r/(1+r)\) is increasing for \(r>0\), which justifies the
second inequality. The transformed nine-point configuration contains
all four square corners. By [FOUR_CORNERS.md](FOUR_CORNERS.md), some
transformed triangle has area at most \(1/19\). Applying (25) to its
original triangle proves

\[
t\le\frac{38809}{19\cdot37636}=\frac{38809}{715084}.
\]

The strict comparison in (22) follows from

\[
7\cdot715084-128\cdot38809=38036>0.
\]

**Application to the entire \(2+4\) class.** Suppose now that a Type-III
configuration has exactly two upper points and minimum area
\(t\ge A_0\). Section 8 gives the quadrilateral hull \(ABCR\) and

\[
r=r_x-r_y\ge(11+3\sqrt5)A_0.
\]

The elementary rational lower bounds

\[
\sqrt5>\frac{67}{30},\qquad
\sqrt{65}>\frac{403}{50},\qquad
A_0>\frac{877}{16000}
\]

give

\[
r>\frac{177}{10}\cdot\frac{877}{16000}
=\frac{155229}{160000}
>\frac{97}{100}.
\]

The two square-root comparisons follow respectively from
\(67^2<5\cdot30^2\) and \(403^2<65\cdot50^2\).
Set \(\epsilon=1-r_x\), \(\eta=r_y\), and apply (22). It gives
\(t<7/128<A_0\), contradicting the competitive hypothesis.
Thus the \(2+4\) class is completely excluded. Only \(3+3\) remains
among the Type-III diagonal count classes.

## Verification

The determinant identities in this note can optionally be checked with
`python hand/check_corners.py`. That diagnostic is not a premise of the
written proof. Type II is not addressed by these arguments.
