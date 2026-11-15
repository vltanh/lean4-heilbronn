# A global restriction on triangles containing three points

## The result and its dependencies

Put

\[
A_0=\frac{9\sqrt{65}-55}{320},\qquad s_0=2A_0,
\qquad \Gamma=\frac{11+3\sqrt5}{2}.
\]

**Theorem 1 (three-interior triangles are hull ears).** In a nine-point
configuration in the unit square whose minimum triangle area is at least
\(A_0\), suppose an actual triangle contains three further configuration
points. All three remaining points then lie beyond the same edge of the
triangle and between the extensions of its other two edges. Consequently
the other two edges are edges of the full convex hull: the original
triangle consists of three consecutive hull vertices, and the full hull
has at most six vertices.

**Corollary 2 (the entire family N has triangle capacity two).** In the
complete normalized family N of [GLOBAL_STRUCTURE.md](GLOBAL_STRUCTURE.md),
every actual triangle contains at most two further points at minimum area
at least \(A_0\). This applies whether or not the three arbitrary points
add further square-boundary contacts or hull vertices.

The same conclusion holds for the entire normalized Type-II family,
by Corollary 4 below. Its additional input is only the original
corner-triangle occupancy theorem in Sections 1--4 of
[ONE_CORNER.md](ONE_CORNER.md), not the later C1 hull-ear corollary.
Corollary 5 then proves triangle capacity two for every competitive
nine-point configuration in the unit square, without a normalization
or maximizing hypothesis.

The new geometric ingredient is an explicit five-point enclosing-
parallelogram bound. Its proof below has only a six-entry rational table.
The other ingredients are the six-point triangular-hull theorem in
[CORNER_FAMILIES.md](CORNER_FAMILIES.md), and the robust coupled affine
corollary in Section 10 of [TYPE_II.md](TYPE_II.md). No numerical
optimization is a premise.

## 1. Two canonical exterior points force extra enclosing area

For a triangle \(ABC\), barycentric coordinates \((\alpha,\beta,\gamma)\)
mean the affine combination \(\alpha A+\beta B+\gamma C\), with
\(\alpha+\beta+\gamma=1\). A point lies beyond one edge and between
the other two edge extensions precisely when exactly one coordinate is
negative and the other two are positive. We call this one of the three
exterior regions of the triangle.

**Lemma 3.** Suppose the unit square contains \(A,B,C,E,F\), where
\(ABC\) has positive doubled area \(D\). Suppose E and F are in two
different exterior regions. For each of E and F, write its negative
barycentric coordinate as \(-p\) and its two positive coordinates as
\(\alpha,q\), and suppose

\[
p\ge\frac{11}{20}\alpha,
\qquad p\ge\frac{11}{20}q.                                 \tag{1}
\]

Then

\[
\boxed{D\le\frac{29}{31}.}                                \tag{2}
\]

### A fixed point in each exterior region

By relabeling the triangle, assume E is beyond BC and F is beyond AC.
For E, its coordinates are \((-p,\alpha,q)\). Adding (1), and using
\(\alpha+q=1+p\), gives \(p\ge11/29\). Put

\[
p_* =\frac{11}{29},\qquad q_* =\frac{20}{29},
\qquad\theta=\frac{p_*}{p}\le1.
\]

The fixed barycentric point

\[
E_*=(-p_*,q_*,q_*)
\]

belongs to \(\operatorname{conv}\{B,C,E\}\). Indeed it equals

\[
\theta E+(q_*-\theta\alpha)B+(q_*-\theta q)C,
\]

and both remaining coefficients are nonnegative by (1), since
\(p_*/(11/20)=q_*\). Their sum is \(1-\theta\).
Similarly the square contains the fixed point

\[
F_*=(q_*,-p_*,q_*).
\]

Normalize \(ABC\) affinely to
\((0,0),(1,0),(0,1)\). In these coordinates the five points
\(A,B,C,E_*,F_*\) are

\[
(0,0),\quad(1,0),\quad(0,1),\quad
(20/29,20/29),\quad(-11/29,20/29).
\]

The determinant-one shear and translation
\((x,y)\mapsto(x+y/2-1/2,y)\) turn their hull into the fixed
pentagon K with vertices

\[
(-1/2,0),\quad(1/2,0),\quad(31/58,20/29),
\quad(0,1),\quad(-31/58,20/29).                             \tag{3}
\]

There is thus an affine image of K contained in the unit square whose
linear determinant has absolute value D.

### Exact width calculation

For a row vector \((u,v)\), let

\[
w_K(u,v)=\max_{P\in K}(uP_x+vP_y)
          -\min_{P\in K}(uP_x+vP_y).
\]

The difference body \(K-K\) is invariant under reflection in either
coordinate axis. Its extreme pair differences give the exact formula

\[
w_K(u,v)=\max\left\{
\frac{31}{29}|u|,
\frac{30|u|+20|v|}{29},
\frac{|u|}{2}+|v|
\right\}.                                                  \tag{4}
\]

For completeness, the three types of extreme differences in the first
quadrant are
\((31/29,0),(30/29,20/29),(1/2,1)\).
The other pair differences in that quadrant are coordinatewise bounded
by these: \((1,0)\), \((1/29,20/29)\), and
\((31/58,9/29)\). Reflection supplies the other quadrants. This proves
(4) directly from the five vertices (3).

If a linear map sends K, up to translation, into the unit square, both
of its row vectors satisfy \(w_K\le1\). The nonnegative parts of such
vectors therefore satisfy

\[
u\le\frac{29}{31},\qquad 30u+20v\le29,
\qquad \frac u2+v\le1.                                   \tag{5}
\]

The upper boundary of this polygon has the three vertices

\[
T=(0,1),\qquad
U=(29/31,29/620),\qquad
V=(9/20,31/40).                                             \tag{6}
\]

The additional vertices \((0,0),(29/31,0)\) of its nonnegative
quadrant are dominated coordinatewise by the vertices in (6).
For any two row vectors, their determinant satisfies

\[
|u_1v_2-v_1u_2|\le |u_1||v_2|+|v_1||u_2|.
\]

The expression on the right is nondecreasing in all four nonnegative
arguments, and affine in each vector separately. Its maximum over (5)
is therefore attained by a pair from (6). All six unordered values are

| Pair | \(u_1v_2+v_1u_2\) |
|---|---:|
| T,T | \(0\) |
| T,U | \(29/31\) |
| T,V | \(9/20\) |
| U,U | \(841/9610\) |
| U,V | \(9251/12400\) |
| V,V | \(279/400\) |

Each entry is at most \(29/31\), by multiplication of positive
integer denominators. Thus every affine image of K inside the square
has determinant at most \(29/31\). Applied to the image just
constructed, this proves (2). \(\square\)

Equivalently, every parallelogram containing K has area at least
\(31/29\); its axis-parallel bounding rectangle attains this value.
The width proof covers all support directions, not merely rectangular
or symmetry-preserving enclosures.

## 2. Applying the robust affine exclusion to every exterior point

Let an actual triangle \(ABC\), of area S, contain three configuration
points, and suppose the minimum triangle area is \(t\ge A_0\).
The six-point triangular-hull theorem gives

\[
S\ge\Gamma t\ge\Gamma A_0.                               \tag{7}
\]

Every triangle in the unit square has area at most \(1/2\). Therefore
every barycentric coordinate of every other actual point has absolute
value at most \(1/(2S)\). We record the useful strict bound

\[
2S\ge\Gamma s_0>\frac{29}{30},
\qquad \frac1{2S}<\frac{30}{29}.                           \tag{8}
\]

Here the completely rational comparisons

\[
\Gamma>\frac{177}{20},\qquad s_0>\frac{79}{720},\qquad
\frac{177}{20}\frac{79}{720}=\frac{13983}{14400}
>\frac{29}{30}
\]

follow respectively from
\(5\cdot30^2-67^2=11>0\),
\(65\cdot81^2-653^2=56>0\), and integer multiplication.

No actual point can have two negative barycentric coordinates. Each
negative magnitude is itself a ratio of an actual triangle area to S,
so each is at least \(t/S\ge2A_0=s_0>7/64\). If two were negative,
the remaining positive coordinate would exceed
\(1+2(7/64)=39/32>30/29\), contrary to (8). No coordinate can be
zero, because that would give a collinear triple.

Hence every exterior point has exactly one negative coordinate and
two positive coordinates. Write them, after a permutation of vertices,
as \((\alpha,q,-p)\). Normalize the doubled area of ABC to one. The
normalized doubled minimum is \(\sigma=t/S\), and

\[
\sigma\ge\frac{A_0}{S}=\frac{s_0}{2S}
\ge s_0\max(1,q),\qquad 0<q<30/29.                        \tag{9}
\]

The second inequality uses both \(S\le1/2\) and
\(q\le1/(2S)\). These are precisely the coupled hypotheses in
Section 10 of `TYPE_II.md`. That corollary rules out
\(p\le11q/20\). Interchanging the edge endpoints rules out
\(p\le11\alpha/20\) as well. Thus every exterior point satisfies

\[
p>\frac{11}{20}q,
\qquad p>\frac{11}{20}\alpha.                             \tag{10}
\]

If two exterior points occupied different exterior regions, Lemma 3
would give \(2S\le29/31\), contradicting (8). All exterior points
therefore occupy the same region.

The earlier seven-point triangular-hull bound already excludes four
interior points in an actual triangle at this threshold. Thus exactly
three of the six remaining points are interior to ABC, and the other
three are exterior. Relabel so the latter are beyond BC. Their
coordinates relative to the other two edges are positive, so AB and
AC support the entire configuration. The three interior points have
positive coordinates as well, and positive minimum area excludes any
additional point on either supporting line. Hence AB and AC are hull
edges; B,A,C are consecutive hull vertices. All hull vertices belong
to \(\{A,B,C\}\) and the three exterior points. This proves
Theorem 1.

## 3. Consequence for the complete normalized family N

Use the six prescribed anchors

\[
\begin{gathered}
A=(0,a),\quad B=(b,0),\quad C=(c,0),\quad
D=(1,d),\quad F=(f,1),\quad H=(0,h),\\
0<a<h<1,\quad0<b<c<1,\quad a\le d\le h,\quad b\le f\le c.
\end{gathered}                                              \tag{11}
\]

All six anchors are distinct vertices of the full convex hull: each
lies on a supporting square side, and the only possible other point
on that side is its already specified partner. A third point on a
side would give zero area.

Suppose an actual triangle contains three further points. Theorem 1
then makes the full hull have at most six vertices. Its hull therefore
consists of precisely the six anchors in (11), in cyclic order
\(A,B,C,D,F,H\). The three arbitrary points are all interior to
this hull, so the three-interior triangle is a hull ear formed by
three consecutive anchors.

Set \(s=2t\ge s_0\), \(L=h-a\), and \(M=c-b\). The two anchor
triangles \(ABH\) and \(ABC\) imply

\[
bL\ge s,\qquad aM\ge s.
\]

In particular \(a,b\ge s\) and \(a,b\le1-s\), because
\(L,M\le1\), \(L\ge s\), and \(M\ge s\). Every hull ear
has doubled area at most \(1-s\):

| Ear | Doubled area | Upper bound |
|---|---|---|
| HAB | \(bL\) | \(b\le1-s\) |
| ABC | \(aM\) | \(a\le1-s\) |
| BCD | \(dM\) | \(M\le1-b\le1-s\) |
| CDF | \(1-c+d(c-f)\) | \(1-f\le1-b\le1-s\) |
| DFH | \(1-h+f(h-d)\) | \(1-d\le1-a\le1-s\) |
| FHA | \(fL\) | \(L\le1-a\le1-s\) |

The fourth and fifth rows use \(c\ge f\) and \(h\ge d\),
respectively. On the other hand, the three interior points force its
doubled area to be at least \(\Gamma s\), by (7). This is impossible:

\[
(\Gamma+1)s\ge(\Gamma+1)s_0
>\frac{19}{2}\frac7{64}=\frac{133}{128}>1.                 \tag{12}
\]

Here \(\Gamma>17/2\) follows from \(\sqrt5>2\). Thus no such
triangle exists, proving Corollary 2.

This eliminates all three-interior-triangle order types from the entire
continuous family N. It does not show that the remaining configurations
have eight boundary points, and it leaves their sharp upper bound open.

## 4. Consequence for the complete normalized Type-II family

**Corollary 4 (Type II has triangle capacity two).** Suppose nine points
in the unit square include

\[
D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad B=(b,0),
\qquad 0<\lambda<1,\quad0<b\le\frac12.
                                                               \tag{13}
\]

If their minimum triangle area is at least \(A_0\), every actual
triangle contains at most two further configuration points. The other
five points may be anywhere in the square.

**Proof.** Put \(s=2t\ge s_0\), where t is the minimum area.
Every point \(P\ne D,C\) satisfies

\[
                 P_y\le1-s,                              \tag{14}
\]

because the doubled area of \(DCP\) is \(1-P_y\). The triangle
\(DBE\) also gives

\[
                  b(1-\lambda)\ge s,
                  \qquad b\ge s.                         \tag{15}
\]

Suppose an actual triangle contains three other points. By Theorem 1
it is a full-hull ear, formed by three consecutive hull vertices, and
its doubled area is at least \(\Gamma s\).

An ear using neither D nor C lies in the rectangle
\([0,1]\times[0,1-s]\), by (14). Its doubled area is at most
\(1-s<\Gamma s\), where the strict inequality follows from (12).

The hull chain from D to B which avoids C lies to the left of the
line DB, hence inside \(\operatorname{conv}\{D,B,(0,0)\}\).
Indeed DB is a diagonal of the convex hull, and its two boundary
chains lie in its opposite half-planes. The actual vertex E lies
strictly between D and B on this chain. An ear using D but not C
consists of D and the next two vertices of this chain: DC is a hull
edge, so these are the only three consecutive vertices containing D
and avoiding C. Its doubled area is at most \(b\le1/2<\Gamma s\).

There is also at least one point strictly to the right of BC.
For completeness, the endpoint-triangle theorem in Section 1 of
`TYPE_II.md` permits at most two of the six points other than D,C,B
in the left container: three would give
\(s\le(3-2\sqrt2)b<1/10<7/64\), since
\(3-2\sqrt2<1/5\) and \(b\le1/2\).
The actual central triangle DBC contains at most three points by the
seven-point triangular-hull bound. If the right container were empty,
these two capacities would accommodate at most five of the six points.
Thus the hull chain from C to B which avoids D has a vertex strictly
between C and B.

This latter hull chain lies inside
\(\operatorname{conv}\{B,C,(1,0)\}\). An ear using C but not D
has doubled area at most \(1-b\le1-s<\Gamma s\), by (15).

It remains to consider ears containing both D and C. The other hull
neighbor of D is E, since DE is the occupied left-side hull edge.
Thus the only possibilities are \(DCE\) and \(DCR\), where R is
the other hull neighbor of C. The first is a triangle with an actual
square corner and its other two vertices on the incident square sides.
The corner-triangle theorem in Sections 1--4 of `ONE_CORNER.md`
excludes three further points inside it at minimum area
\(t\ge A_0>7/128\).

For \(DCR\), (14) makes every denominator in the following minimum
strictly positive. The supporting edge CR gives

\[
\tau=\frac{1-R_x}{1-R_y}
    =\min_{P\ne D,C}\frac{1-P_x}{1-P_y}\ge0.             \tag{16}
\]

To check the equality directly, the inward half-plane of the line CR
is

\[
(1-P_x)(1-R_y)-(1-R_x)(1-P_y)\ge0.
\]

It contains every actual point because CR is a hull edge and it
contains D. Division by the positive factors in (16) proves the
minimum formula.

Apply the determinant-one shear

\[
                 F_\tau(x,y)=(x+\tau(1-y),y).             \tag{17}
\]

It fixes D and C. Every other point remains in the unit square:
its new x-coordinate is nonnegative since \(\tau\ge0\), and is
at most one by the defining minimum (16); its y-coordinate is
unchanged. Equation (16) makes \(F_\tau(R)=(1,R_y)\).
Therefore the image of \(DCR\) is an actual corner triangle at C,
with D on the top side and \(F_\tau(R)\) on the right side.
Its three interior points remain interior, since (17) is an affine
bijection, and all triangle areas are unchanged. The same
corner-triangle theorem again gives a contradiction.

Every possible hull ear has been excluded, proving the corollary.
\(\square\)

The argument is valid for all configurations satisfying (13), not only
for a maximizing configuration or a specified side-count class.

## 5. Unrestricted triangle capacity two

**Corollary 5 (global triangle capacity).** In any nine-point
configuration in the unit square with minimum triangle area at least
\(A_0\), every triangle spanned by actual configuration points
contains at most two further configuration points.

The issue in passing from normalized families to this unrestricted
statement is that the configuration need not be a global maximizer.
We therefore justify the needed normalization directly.

Let K be its convex hull. Positive minimum area gives K nonempty
interior, so K contains a disk of some radius \(r>0\). If u and v
are two independent unit normal vectors, the smallest parallelogram
with those two support directions containing K has area

\[
\mathcal A(u,v)=\frac{w_K(u)w_K(v)}{|\det(u,v)|},          \tag{18}
\]

where \(w_K\) is the width of K. These widths are continuous and
at least \(2r\). Since the given unit square encloses K, the
infimum of (18) is at most one. Every pair with
\(\mathcal A(u,v)\le1\) satisfies
\(|\det(u,v)|\ge4r^2>0\). Such pairs lie in a compact subset
of the product of two unit circles, on which (18) is continuous.
It follows that a minimum-area enclosing parallelogram exists.

Map this parallelogram affinely onto the unit square. The absolute
determinant is at least one, because its original area is at most one.
Thus every triangle area weakly increases, while all containment
relations among actual triangles and points are preserved. The image
square is a minimum-area enclosing parallelogram for the image hull:
any smaller one would pull back to an enclosure of K of smaller area.

The support-contact and opposite-projection arguments in
[BOUNDARY_REDUCTION.md](BOUNDARY_REDUCTION.md) use only this minimum
parallelogram property. The two contact-increasing shears of
[GLOBAL_STRUCTURE.md](GLOBAL_STRUCTURE.md) likewise use this property,
strictly positive minimum area, and the finite list of points. They
preserve every triangle area and every triangle-interior relation.
After each shear the square remains a minimum-area enclosure, because
an inverse determinant-one shear preserves the area of every enclosing
parallelogram. Hence the proofs apply verbatim to the normalized
configuration even though no global maximizing hypothesis was made.

Consequently an affine image of the original configuration, with
minimum area still at least \(A_0\), belongs to one of the five
complete families N, C1, C2, Type II, and Type III. The adjacent-corner
normalization also uses only determinant-one shears within the square,
as explicitly described in `BOUNDARY_REDUCTION.md`.
In Type II, apply the further top-fixed shear and reflection from
Section 3 of [TYPE_II.md](TYPE_II.md). It either produces Type III or
puts the bottom contact at \(b\le1/2\), as required by Corollary 4.

Families C2 and Type III are impossible at this threshold, by
[OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md) and
[CORNER_FAMILIES.md](CORNER_FAMILIES.md), respectively. The remaining
families have triangle capacity two: N by Corollary 2 above, C1 by
Section 6 of [ONE_CORNER.md](ONE_CORNER.md), and Type II by Corollary 4.
An affine bijection preserves strict interior containment, so the
original configuration has the same capacity property. This proves
the corollary. \(\square\)

The dependency order is noncircular. Theorem 1 uses the triangular-hull
and robust exterior-point lemmas. The C1 result in `ONE_CORNER.md`,
Section 6, and the Type-II result above then use Theorem 1 together
with the original corner-triangle occupancy theorem in that note's
Sections 1--4. Only after these results is Corollary 5 deduced by
normalization.

Corollary 5 excludes all order types containing a triangle with three
interior points. It does not exclude the surviving order types or
complete the unrestricted sharp upper bound.

## Verification

[check_three_interior_triangles.py](check_three_interior_triangles.py)
checks the canonical affine coordinates, every width-polar vertex, all
six determinant bounds, and the rational comparisons above. The
convex-combination and support-line arguments are part of the hand proof.
