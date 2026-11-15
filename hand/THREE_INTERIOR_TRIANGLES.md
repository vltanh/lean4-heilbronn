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

## Verification

[check_three_interior_triangles.py](check_three_interior_triangles.py)
checks the canonical affine coordinates, every width-polar vertex, all
six determinant bounds, and the rational comparisons above. The
convex-combination and support-line arguments are part of the hand proof.
