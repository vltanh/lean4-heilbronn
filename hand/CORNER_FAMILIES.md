# Corner families: a hand exclusion from triangulation stars

## Scope

This note proves new handwritten exclusions for part of Type III,
and a triangle-occupancy restriction for every competitive configuration.
It does **not** close Type III or Type II. The Type-III cases with two or three
free points above the diagonal remain open in this note.

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

Section 6 proves this using an explicitly stated classical theorem of
Yang and Zeng (1995): seven points in a planar convex body of area \(S\)
span a triangle of area at most \(S/9\). This established theorem is an
imported premise; it is not independently reproved in this note. The new
corner-cut inequality and its application are proved below.

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
| 0 | 6 | Strictly excluded by (9), using the stated classical theorem |
| 1 | 5 | Strictly excluded by (9), using the stated classical theorem |
| 2 | 4 | Open |
| 3 | 3 | Open |
| 4, 5, or 6 | 2, 1, or 0 | Strictly excluded by (1) |

## 6. At most one upper point: a complete exclusion

### The classical theorem used

We use the following theorem of Lu Yang and Zhenbing Zeng:

> Given seven points in a planar convex body \(K\), one of their triangles
> has area at most \(\operatorname{area}(K)/9\).

Reference: L. Yang and Z. Zeng, *Heilbronn Problem for Seven Points in a
Planar Convex Body*, in *Minimax and Applications*, Nonconvex Optimization
and Its Applications 4 (1995), pp. 191–218,
[DOI 10.1007/978-1-4613-3557-3_14](https://doi.org/10.1007/978-1-4613-3557-3_14).
The exact theorem statement is visible on printed p. 192 in the publisher's
[two-page preview](https://page-one.springer.com/pdf/preview/10.1007/978-1-4613-3557-3_14).
Only this theorem statement is imported. Neither the numerical nine-point
cover nor the exact optimum for seven points in a triangular container is
used here.

### Seven points below a diagonal, including its two endpoints

**Endpoint lemma.** Suppose seven points lie in

\[
T=\operatorname{conv}\{A=(0,0),D=(1,0),C=(1,1)\}
\]

and include \(A,C\). Then their minimum triangle area is at most \(7/128\).

Let their minimum area be \(t\). If \(t=0\), the conclusion is immediate.
Otherwise they are in general position. Let \(K\) be their convex hull.
If \(K\) is triangular, the triangular-hull lemma gives

\[
t\le\frac{1}{14+4\sqrt2}<\frac1{19}<\frac7{128}.
\]

Suppose instead \(K\) has at least four vertices. The segment \(AC\) is
a hull edge, and the complementary hull chain from \(A\) to \(C\) contains
at least two other vertices. Choose two consecutive such vertices, writing

\[
P=(x,y),\qquad Q=(x+d,y+e).
\]

Both increments satisfy \(d,e>0\). Here are the geometric details behind
this assertion. Because \(K\) is convex, contains \(AC\), and lies in
\(0\le y\le x\le1\), its lower boundary is the graph of a convex piecewise
linear function \(f\) on \([0,1]\), possibly followed by a vertical segment
on \(x=1\). Its first slope is nonnegative, since \(f(0)=0\) and
\(f(x)\ge0\); all subsequent finite slopes are at least as large. Thus
the chain is nondecreasing in both coordinates. An edge between two free
vertices cannot be vertical: the only possible vertical part is on \(x=1\),
which would make those two vertices collinear with \(C\). Nor can such
an edge be horizontal: by nondecreasing slopes, a horizontal edge forces
the preceding chain back to \(A\) to lie on \(y=0\), again giving three
collinear points. Hence both increments are strictly positive.

The supporting line \(PQ\) places \(A,C\) on the \(K\) side and \(D\) on
the opposite side. In fact the signed doubled area of \(DPQ\) is
\(-E\), where

\[
E=dy+e(1-x)>0.
\]

Consequently the interiors of \(\triangle DPQ\) and \(K\) are disjoint.
Since both are contained in \(T\),

\[
\operatorname{area}(K)\le\frac{1-E}{2}.                      \tag{10}
\]

The triangles \(APQ,CPQ\) have positive doubled areas

\[
2\operatorname{area}(APQ)=e-E,
\qquad 2\operatorname{area}(CPQ)=d-E.
\]

Put \(s=2t\). Both areas are at least \(t\), so

\[
d,e\ge s+E.
\]

Also \(y\ge0\) and \(x+d\le1\), whence

\[
\boxed{E=dy+e(1-x)\ge de\ge(s+E)^2.}                        \tag{11}
\]

Apply the classical seven-point theorem to \(K\), and combine it with
(10). This gives

\[
18t\le1-E.                                                   \tag{12}
\]

Let \(u=\sqrt E\). Inequalities (11) and (12) give two scalar bounds:

\[
2t\le u-u^2,
\qquad 18t\le1-u^2.
\]

If \(u\le1/8\), the increasing function \(u-u^2\) on \([0,1/8]\)
gives

\[
t\le\frac{1/8-1/64}{2}=\frac7{128}.
\]

If \(u\ge1/8\), the second inequality gives

\[
t\le\frac{1-1/64}{18}=\frac7{128}.
\]

This proves the endpoint lemma for the full continuous family, with no
assumption about the number of hull vertices or their exact incidences
on the two remaining sides.

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

by the arithmetic-geometric mean inequality. This proves (13).
The same bound is stated as Proposition 2.1 in the classical source cited
in Section 6, but the displayed derivation supplies the proof needed here.

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

## Verification

The determinant identities in this note can optionally be checked with
`python hand/check_corners.py`. That diagnostic is not a premise of the
written proof. Type II is not addressed by these arguments.
