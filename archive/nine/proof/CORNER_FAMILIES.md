# Corner families: a hand exclusion from triangulation stars

## Scope

This note proves a complete handwritten exclusion of Type III: every
nine-point configuration containing three square corners has minimum
triangle area at most \(7/128<A_0\). It also proves triangle-occupancy
restrictions for every competitive configuration. Type II is not closed
by this note.

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
above \(y=x\), then a configuration with minimum area greater than
\(7/128\) would satisfy

\[
t\le\frac{154449}{2830924}<\frac7{128}<A_0,
\]

a contradiction. Sections 8 and 9 prove this using the sharp six-point
triangular-hull theorem and the four-corner theorem in
[FOUR_CORNERS.md](FOUR_CORNERS.md).

**The last Type-III exclusion.** If exactly three free points lie on each
side of \(y=x\), then

\[
\boxed{t\le\frac7{128}<A_0.}
\]

Sections 10--12 prove this by quantitative inequalities for the upper
six-point triangle and a two-region packing argument for the lower points.
Together the four exclusions exhaust every Type-III configuration.

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
| 3 | 3 | Strictly excluded by Sections 10--12 |
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

The \(3+3\) count class is closed in Sections 10--12 below. The following
gives the first restriction on its upper triple without importing another
theorem.

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
points, and has minimum area greater than \(7/128\). The six-point subset
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
six-point subset to obtain \(r_x-r_y\ge(11+3\sqrt5)t\). In particular,
at the competitive threshold \(t\ge A_0\),

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
\(r=1-\epsilon-\eta\ge193/200\). Then their minimum triangle area satisfies

\[
\boxed{t\le\frac{154449}{2830924}<\frac7{128}.}              \tag{22}
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
\ge\frac{4(193/200)^2}{(1+193/200)^2}
=\frac{148996}{154449}.                                  \tag{25}
\]

The function \(r/(1+r)\) is increasing for \(r>0\), which justifies the
second inequality. The transformed nine-point configuration contains
all four square corners. By [FOUR_CORNERS.md](FOUR_CORNERS.md), some
transformed triangle has area at most \(1/19\). Applying (25) to its
original triangle proves

\[
t\le\frac{154449}{19\cdot148996}=\frac{154449}{2830924}.
\]

The strict comparison in (22) follows from

\[
7\cdot2830924-128\cdot154449=46996>0.
\]

**Application to the entire \(2+4\) class.** Suppose now that a Type-III
configuration has exactly two upper points and minimum area
\(t>7/128\). Section 8 gives the quadrilateral hull \(ABCR\) and

\[
r=r_x-r_y\ge(11+3\sqrt5)t.
\]

The elementary rational lower bound \(\sqrt5>67/30\) gives

\[
r>\frac{177}{10}\cdot\frac7{128}
=\frac{1239}{1280}
>\frac{193}{200}.
\]

The square-root comparison follows from \(67^2<5\cdot30^2\).
Set \(\epsilon=1-r_x\), \(\eta=r_y\), and apply (22). It gives
\(t<7/128\), a contradiction. Thus the entire \(2+4\) class has
\(t\le7/128<A_0\). Only \(3+3\) remains at this stage among the
Type-III diagonal count classes.

## 10. Quantitative rigidity of a distributed six-point triangle

The remaining \(3+3\) class has a distributed upper triple. The following
two quantitative estimates will be useful. They are proved here at the
slightly smaller doubled-area threshold

\[
s=\frac7{64}<2A_0.
\]

Suppose a triangle has doubled area one, contains three interior points
in the distributed pattern of Section 8, and every doubled triangle area
is at least \(s\). Use the seven-face mesh and six positive cross areas
from (16)--(19), now interpreting every area as a doubled area. Let
\(K\) be the doubled area of the central triangle, and let \(a,b,c\)
be the three connector areas.

**Quantitative mesh lemma.** One has

\[
\boxed{K\le\frac{109}{98}s<\frac98s,
       \qquad a,b,c>\frac65s.}                             \tag{26}
\]

Each outer ear is also at most \(55/384\).

### The central area and the ears

Normalize all doubled areas by \(s\), and put \(\kappa=K/s\).
The notation \(Z_0\) in (20) then satisfies

\[
0\le Z_0\le\frac1s-7=\frac{15}{7},
\qquad
6(\kappa-1)\le\frac{Z_0^2}{3}+Z_0-3
\le\frac{33}{49}.
\]

The right side is increasing for \(Z_0\ge0\). This proves
\(\kappa\le109/98<9/8\).

The sharp-six proof also gives
\(a+b+c\ge3\varphi s\), where \(\varphi=(1+\sqrt5)/2\).
After accounting for the other two ears and the central area, each ear
is at most

\[
1-(3\varphi+3)s<1-\frac{47}{6}s=\frac{55}{384}.              \tag{27}
\]

Here \(\sqrt5>20/9\) gives \(3\varphi+3>47/6\).

### Every connector is larger than \(6s/5\)

Continue to use areas normalized by \(s\). Suppose, contrary to (26),
that one connector is \(C\le6/5\), and call the other two \(A,B\) in
cyclic order. Write \(\kappa\) for the normalized central area. The three
outer ears are at least one, so

\[
A+B\le M:=\frac{43}{7}-\kappa-C.                            \tag{28}
\]

In the notation of (18)--(19), put \(U=u_C\), \(V=v_C\).
Then

\[
U,V\ge1,\qquad U+V=C+\kappa,
\qquad 1\le\kappa\le\frac98.
\]

The three product identities, with each outer ear bounded below by one,
give

\[
AB\ge\kappa+u_Av_B,\qquad
BC\ge\kappa+u_BV,\qquad
CA\ge\kappa+Uv_A.
\]

Since \(u_A+v_A=A+\kappa\) and \(u_B+v_B=B+\kappa\), the last two
inequalities imply

\[
u_A\ge\frac{A(U-C)+\kappa(U+1)}{U},\qquad
v_B\ge\frac{B(V-C)+\kappa(V+1)}{V}.                         \tag{29}
\]

Both right sides are positive. Indeed \(A,B\le22/7\), by the total
area and the lower bounds on the other six faces; also \(U,V\ge1\),
\(C\le6/5\), and \(\kappa\ge1\). Each numerator in (29) is therefore
at least \(2-(22/7)/5=48/35>0\). We may multiply (29) and use the first
product inequality. Expanding and using \(U+V=C+\kappa\) yields

\[
CAB+A(V-\kappa)(V+1)+B(U-\kappa)(U+1)
\ge(1+\kappa)UV+\kappa(C+\kappa+1).                        \tag{30}
\]

Here is an explicit upper bound for the left side minus the right side.
Set

\[
N=A+B,\quad L=U+V=C+\kappa,\quad P=UV,
\quad \alpha=(V-\kappa)(V+1),\quad
\beta=(U-\kappa)(U+1).
\]

Completing the square in \(A-B\) gives

\[
CAB+\alpha A+\beta B
\le\frac{CN^2}{4}+\frac{N(\alpha+\beta)}2
       +\frac{(\alpha-\beta)^2}{4C}.                       \tag{31}
\]

This bound increases with \(N\ge2\). Its derivative is
\((CN+\alpha+\beta)/2>0\), because
\(\alpha,\beta\ge2(1-\kappa)\ge-1/4\) and \(CN\ge2\).
Thus (28) permits replacing \(N\) by \(M\).

Next,

\[
\alpha+\beta=L^2-2P+(1-\kappa)L-2\kappa,
\qquad
(\alpha-\beta)^2=(L^2-4P)(C+1)^2.
\]

After subtracting the right side of (30), the coefficient of \(P\)
in (31) is

\[
-M-\frac{(C+1)^2}{C}-(1+\kappa)<0.
\]

Since \(U,V\ge1\), one has \(P\ge U+V-1=C+\kappa-1\).
Therefore the largest permitted bound occurs at this smallest value of
\(P\), or equivalently at \(U=1,V=C+\kappa-1\) after interchanging
the two variables. Substitution in (31) gives the necessary inequality

\[
0\le F(C,\kappa):=
\frac{177C}{49}-\frac{89\kappa}{7}+\frac{57}{7}
 +\frac{(\kappa-2)^2}{4C}.                                 \tag{32}
\]

For clarity, the expression before collecting terms is

\[
2(1-\kappa)M+
 \frac{((36/7)C+\kappa-2)^2}{4C}
 -\bigl((1+2\kappa)(C+\kappa)-1\bigr).
\]

On \(1\le C\le6/5\), \(1\le\kappa\le9/8\), the function \(F\)
decreases with \(\kappa\) and increases with \(C\):

\[
\frac{\partial F}{\partial\kappa}
 =-\frac{89}{7}+\frac{\kappa-2}{2C}<0,
\qquad
\frac{\partial F}{\partial C}
 =\frac{177}{49}-\frac{(\kappa-2)^2}{4C^2}>0.
\]

Consequently

\[
F(C,\kappa)\le F(6/5,1)=-\frac{167}{5880}<0,
\]

contradicting (32). Cyclically the same proof applies to each connector,
completing (26).

## 11. Uniform signs for an additional lower point

The following sign restriction is the next ingredient for the \(3+3\)
packing argument completed in Section 12.
Use the physical square coordinates

\[
Y=(u,v),\qquad Z=(p,q),\qquad X=(c,1-a),
\]

for the distributed upper triple, with
\(Z\in ABY\) and \(X\in BCY\). Put

\[
h=1-v,\quad z=1-q,\quad f=v-u,\quad
k=h-a,\quad Q=hc-au,
\]

and let \(K\) be the central doubled area. All these are actual areas
or coordinates, not quantities normalized by \(s\). In particular
\(Q\ge s\). Let
\(E=55/384\). The ear bounds and the three fan containments give

\[
\begin{gathered}
s\le p,a,f\le E,\\
u,h,c,z,\ 1-c-a,\ 1-p-z\ge3s.                             \tag{33}
\end{gathered}
\]

For example, \(BCY\) contains \(X\); its doubled area \(h\) is the
sum of the three triangles obtained by joining \(X\) to its vertices,
each at least \(s\). All other inequalities follow in exactly the same
way from the cyclic containments proved in Section 8. In particular
\(k\ge3s-E=71/384>1/8\).

Suppose \(R=(x,y)\) is any additional configuration point below \(AC\),
and all triangles involving it also have doubled area at least \(s\).
Write \(D(P,Q,R)=\det(Q-P,R-P)\). Then

\[
\boxed{D(B,Z,R)\ge s,\quad D(B,X,R)\le-s,
       \quad D(X,Y,R)\ge s.}                               \tag{34}
\]

### The two signs at \(B\)

Since \(Z\) is above \(AC\) and \(R\) is below it,
\(D(A,Z,R)=py-qx<0\); its area constraint gives \(x\ge s/q\).
If \(D(B,Z,R)\le-s\), then

\[
(1-q)x-p(1-y)\le-s,
\qquad x\le\frac{p-s}{1-q}.
\]

The two bounds on \(x\) require \(pq\ge s\). But by (33),

\[
pq\le E(1-3s)=\frac{2365}{24576}
<\frac{2688}{24576}=s.
\]

Thus \(D(B,Z,R)\ge s\). Reflection across \(x+y=1\) exchanges the
left and top roles and proves \(D(B,X,R)\le-s\).

### The sign for \(XYR\)

Put \(b=1-y\). The lower-point constraints include

\[
0\le b\le1,\qquad x+b\ge1+s,
\qquad zx-pb\ge s.                                       \tag{35}
\]

The last inequality is the first sign in (34). Direct calculation gives

\[
D(X,Y,R)=(c-u)b+kx-Q=:F,
\qquad K=Q+z(u-c)-pk.                                    \tag{36}
\]

Because \(k>0\), (35) gives

\[
F\ge(c-u)b+k\max\left(1+s-b,\frac{s+pb}{z}\right)-Q.
\]

The two affine lower bounds on \(x\) coincide at

\[
b_0=\frac{z(1+s)-s}{p+z}\in(0,1).
\]

For \(b\le b_0\), the resulting bound on \(F\) has slope
\(c-u-k=f-(1-c-a)<0\). For \(b\ge b_0\), its slope is
\((Q-K)/z\), by (36). Hence its minimum occurs at \(b=1\) when
\(Q\le K\), and at \(b=b_0\) when \(Q\ge K\).

In the first case, using \(Q\ge s\) and \(K<9s/8\),

\[
F\ge\frac{ks-K+Q(1-z)}z
\ge-s+\frac{s(k+1)-K}{z}>-s,
\]

because \(k>1/8\). In the second case, substitution of \(b_0\) gives

\[
F\ge-K+s\frac{1-c-a-f}{p+z}.
\]

More explicitly, the substituted expression is the displayed right side
plus

\[
\frac{(K-Q)(p+z-1-s)}{p+z}\ge0,
\]

since \(Q\ge K\) and \(p+z\le1-3s\).

Here \(1-c-a-f\ge3s-E\), while \(p+z\le1-3s\). Therefore

\[
\frac{1-c-a-f}{p+z}\ge\frac{3s-E}{1-3s}
=\frac{71}{258}>\frac14,
\qquad F> -\frac98s+\frac14s=-\frac78s>-s.
\]

In both cases \(F>-s\), and \(|F|\ge s\) forces \(F\ge s\), proving
the last sign in (34).

## 12. Complete exclusion of the three-upper-point class

Suppose a Type-III configuration has exactly three upper and three lower
points, and minimum area \(t>7/128\). All its doubled triangle areas
are then at least \(s=7/64\). The upper triple must be distributed:
otherwise Section 7 gives
\(t\le1/(12+4\sqrt3)<7/128\).
Thus Sections 10 and 11 apply.

Reflect across \(x+y=1\), if necessary, so that \(u+v\ge1\), or
equivalently \(u\ge h\). This reflection preserves the upper and lower
half-squares and exchanges the roles of \(X\) and \(Z\).

The line \(BY\) divides the lower points into two classes. Call a lower
point \(R=(x,y)\) an A-side point when

\[
D(B,Y,R)=hx-u(1-y)\le-s,
\]

and a C-side point when this determinant is at least \(s\). The area
constraint leaves no third possibility. We prove that each class contains
at most one point, contradicting the three lower points.

### At most one C-side point

A C-side point satisfies \(x+y>1\). Indeed, if \(x+y\le1\), then

\[
hx-u(1-y)\le hx-ux\le0,
\]

because \(u\ge h\).

Suppose \(R,S\) were two C-side lower points. The six actual points
\(B,C,Y,X,R,S\) all lie in the triangle \(BCD\), where \(D=(1,0)\)
is only a container vertex. The points \(Y,X\) lie there because
\(u+v\ge1\) and \(X\in BCY\). The container has area \(1/2\), and
two of its vertices, \(B,C\), are actual points.

If the six-point hull is nontriangular, the nontriangular-hull lemma of
Section 6 applies after an area-preserving affine map taking the base
\(BC\) to the diagonal base used there. It gives a triangle of area at
most \(7/128\), contrary to \(t>7/128\).

If the hull is triangular, its vertices are \(B,C,T\), where \(T\) is
one of \(R,S\). Indeed, \(X\) is strictly inside \(BCY\), so cannot
be the third hull vertex; and neither lower point lies in \(BCY\), so
the third vertex cannot be \(Y\). The sharp-six theorem gives

\[
1-T_y\ge\Gamma s,
\qquad \Gamma=\frac{11+3\sqrt5}{2}.
\]

On the other hand, the C-side inequality for \(T\) gives

\[
s\le hT_x-u(1-T_y)
\le h-u+uT_y\le T_y.
\]

Thus \(1\ge(\Gamma+1)s>133/128>1\), since \(\Gamma>17/2\).
This contradiction proves that the C-side class has at most one point.

### The feasible triangle for A-side points

Keep the notation of Section 11 and put

\[
d=u-c,\qquad e=Q+d=u(1-a)-cv,\qquad
J=k-Q.
\]

Here \(e\) is the doubled area of \(AYX\), so \(e\ge s\), and
\(J\) is the connector area of \(CYX\), so \(J>6s/5\).

For an A-side lower point, its class inequality and (34) give

\[
hx+uy\le u-s,\qquad kx+dy\ge s+e,
\qquad y\ge0.                                            \tag{37}
\]

Since \(ku-hd=Q>0\), these inequalities describe a triangle, possibly
empty or degenerate. Its vertices are

\[
L=(\ell,0),\quad R_0=(r_0,0),\quad T_0=(x_0,y_0),
\]

where

\[
\begin{aligned}
\ell&=\frac{s+e}{k},&
r_0&=\frac{u-s}{h},\\
y_0&=v-\frac{s(k+h)}Q,&
x_0&=u+\frac{s(u+d)}Q.
\end{aligned}                                             \tag{38}
\]

If there is an A-side point, \(y_0\ge0\) and \(r_0\ge\ell\).
The triangle in (37) is allowed to extend outside the square; enlarging
the feasible set in this way is harmless. If it is degenerate, it is a
single point and cannot contain two distinct lower points. Assume it is
nondegenerate from now on.

We will prove that every triangle formed by \(Z\) and two points in this
feasible triangle has doubled area less than \(s\). A determinant is
affine in each of its two varying vertices separately. Therefore its
absolute value on the product of two triangles is at most its maximum
on pairs of vertices. It suffices to examine the following three numbers:

\[
\begin{aligned}
G_0&=|D(Z,L,R_0)|=q(r_0-\ell)
       =\frac{qQy_0}{hk},\\
G_1&=|D(Z,L,T_0)|=\frac{(s+K)y_0}{k},\\
G_2&=|D(Z,R_0,T_0)|=\frac{(P-s)y_0}{h},
\end{aligned}                                             \tag{39}
\]

where \(P=u(1-q)-hp\ge s\) is the doubled area of \(BYZ\).
The formulas follow by substituting the two boundary-line equations
from (37). In particular \(D(X,Y,Z)=-K\), whereas the entire line
\(LT_0\) has \(D(X,Y,\cdot)=s\). All three displayed quantities are
nonnegative.

### The left-side vertex pair

Since \(k=Q+J\) and \(h=Q+J+a\), (38) becomes

\[
y_0=1-a-Q-J-2s-\frac{s(a+2J)}Q.                            \tag{40}
\]

For \(y_0\ge0\), the expression \((s+K)y_0/(Q+J)\) increases when
\(K\) increases, and when either \(a\) or \(J\) decreases. Use
\(K<9s/8\), \(a\ge s\), and \(J>6s/5\) to obtain

\[
G_1\le\frac{17s}{8}
 \frac{1-(21/5)s-Q-(17/5)s^2/Q}{Q+(6/5)s}<s.                \tag{41}
\]

For the last strict inequality, put \(\rho=Q/s>0\), substitute
\(s=7/64\), and multiply positive denominators. It is equivalent to

\[
875\rho^2-2605\rho+2023>0.
\]

The leading coefficient is positive and the discriminant is
\(-294475<0\). This proves (41) for every possible \(Q\).

### The two base vertices

For this pair a second product identity is useful. Let \(W\) be the
connector area of \(BXZ\), and let \(V\) be the cross area of \(CZX\).
The mesh identity and the subdivision of \(BCZ\) give

\[
WJ=aK+QV,
\qquad 1-q=a+W+V.
\]

Since \(a,K,V\ge s\), these imply

\[
q\le1-2s-\frac{s(s+Q)}J.                                 \tag{42}
\]

This upper bound is positive, since \(q\ge4s\). Also
\(W=P+Q-K\), so the seven-face area sum can be written as

\[
1=(\hbox{three outer ears})
 +(\hbox{connector }AZY)+J+P+Q.
\]

The three ears and \(P\) are at least \(s\), while both displayed
connectors exceed \(6s/5\). Therefore

\[
Q<1-\frac{32}{5}s,
\qquad 1\le\rho:=\frac Qs<\frac{96}{35}.                   \tag{43}
\]

Put \(\gamma=J/s\ge6/5\). Use (42), and decrease \(a\) to \(s\)
in (40) and in \(h=Q+J+a\). This increases the nonnegative expression
for \(G_0\), so

\[
G_0\le
\frac{\left(1-2s-\frac{s(1+\rho)}\gamma\right)\rho
 \left(1-s(\rho+\gamma+3)-\frac{s(2\gamma+1)}\rho\right)}
 {s(\rho+\gamma)(\rho+\gamma+1)}.                          \tag{44}
\]

At \(s=7/64\), subtracting the right side of (44) from \(s\) and
putting over a common denominator gives

\[
\frac{N(\gamma,\rho)}
 {448\gamma(\gamma+\rho)(\gamma+\rho+1)},
\]

where

\[
\begin{aligned}
N(\gamma,\rho)={}&49\gamma^3+448\gamma^2\rho+749\gamma^2
 +350\gamma\rho^2-2248\gamma\rho+252\gamma\\
&-49\rho^3+252\rho^2+252\rho-49.
\end{aligned}                                             \tag{45}
\]

The denominator is positive. Here is a short exact proof that the
numerator is positive on the whole range in (43).

First \(N_\gamma\) increases with \(\gamma>0\), since

\[
N_{\gamma\gamma}=14(21\gamma+64\rho+107)>0.
\]

At the lower endpoint,

\[
N_\gamma(6/5,\rho)
=\frac2{25}(4375\rho^2-14660\rho+28266)>0.
\]

This quadratic has positive leading coefficient and negative
discriminant. Consequently it suffices to set \(\gamma=6/5\). There

\[
125N(6/5,\rho)
=P_0(\rho):=-6125\rho^3+84000\rho^2-225060\rho+177079.
\]

For \(1\le\rho\le2\),

\[
P_0(\rho)\ge71750\rho^2-225060\rho+177079>0,
\]

because this last quadratic has positive leading coefficient and
discriminant \(-169669400\). For \(2\le\rho\le96/35\), the derivative
\(P_0'\) is concave and has positive values \(37440\) and \(97500\)
at the two endpoints. Thus \(P_0'>0\) throughout that interval, and

\[
P_0(\rho)\ge P_0(2)=13959>0.
\]

This proves positivity in (45), hence \(G_0<s\).

### The last vertex pair and the contradiction

Finally, (33) gives \(q\ge4s\), whereas (40) and the lower bounds
\(a,Q\ge s\), \(J>6s/5\) give

\[
y_0<1-\frac{26}{5}s<4s.
\]

The last gap is \(4s-(1-(26/5)s)=1/160>0\). A direct subtraction
in (39) gives

\[
G_1-G_2=(r_0-\ell)(q-y_0)\ge0.
\]

Therefore \(G_2\le G_1<s\), and all three vertex-pair determinants
are below \(s\). The affine-in-each-vertex observation following (38)
shows that two A-side lower points would form a triangle with \(Z\)
of doubled area below \(s\), a contradiction.

Both sides of \(BY\) contain at most one lower point. There cannot be
three lower points. The assumption \(t>7/128\) was impossible, proving
the complete \(3+3\) bound

\[
\boxed{t\le\frac7{128}<A_0.}
\]

Together with Sections 3, 6, and 9, this exhausts all seven possible
counts of upper points and proves the universal Type-III bound
\(t\le7/128<A_0\).

## Verification

The determinant identities in this note can optionally be checked with
`python docs/proof/nine/check_corners.py`. That diagnostic is not a premise of the
written proof. Type II is not addressed by these arguments.
