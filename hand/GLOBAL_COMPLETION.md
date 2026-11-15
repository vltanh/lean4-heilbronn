# Global hull and exterior-cap exclusions

## Scope

This note closes the entire family in which all nine configuration points
are vertices of their convex hull. No square-boundary incidence assumption,
normal form, or coordinate subdivision is needed.

**Theorem 1.** If nine points in the unit square are in convex position,
their minimum triangle area satisfies

\[
\boxed{t<\frac1{19}<\frac7{128}<A_0.}
\]

More generally, if their convex hull has area S, then

\[
t\le\frac{4\pi^2}{729+3\pi^2}S
 <\frac{1936}{37173}S<\frac S{19}.                 \tag{1}
\]

This is a hand argument using the classical planar affine isoperimetric
inequality. That analytic theorem is the one external mathematical input;
its statement and a primary proof reference are given below. The argument
does not use the sharper, computer-assisted nonagon inequality.

For the unrestricted nine-point problem, Theorem 1 means that every
configuration with minimum triangle area at least A0 has at least one
point strictly inside its convex hull. It does **not** prove that there is
exactly one such point or that hull vertices lie on the square boundary.

## 1. The analytic input

For a positively oriented, convex closed curve enclosing area B, its
affine perimeter is

\[
\Omega=\int \det(\gamma'(u),\gamma''(u))^{1/3}\,du.
\]

The integral can be added over finitely many smooth pieces. The classical
planar affine isoperimetric inequality states

\[
                         \Omega^3\le8\pi^2 B.             \tag{2}
\]

We use its version for general convex bodies, so a curve formed by finitely
many C2 arcs meeting with matching nonzero tangent vectors is included.
One primary analytic proof is W. Chen, R. Howard, E. Lutwak, D. Yang and
G. Zhang, *A generalized affine isoperimetric inequality* (2004),
[arXiv:math/0402083](https://arxiv.org/abs/math/0402083),
[author's PDF](https://people.math.sc.edu/howard/Reprints/affine.pdf),
Section 4, especially the concluding inequality in the proof of
Theorem 4.1. The introductory formula (1.1) gives the same cubic
normalization. Its affine perimeter is the integral of curvature to the
one-third power against Euclidean arc length; changing to a regular
parameter gives the determinant integral above.

Thus no unproved smoothness extension or limiting equality assertion is
needed here. Alternatively the finitely many curvature jumps in the
curve constructed below can be smoothed in its positive radius-of-curvature
function: the areas and affine-perimeter integrals converge, and (2)
passes to the limit. On every arc the curvature is strictly positive and
has finite positive one-sided limits at the junctions.

## 2. Round the corners by explicit parabolic arcs

Let \(V_1,\ldots,V_n\) be the cyclic vertices of a strictly convex
polygon of area S. Indices are cyclic. Write

\[
e_i=\operatorname{Area}(V_{i-1},V_i,V_{i+1})>0,
\qquad M_i=\frac{V_i+V_{i+1}}2.
\]

Replace the two boundary half-edges from \(M_{i-1}\) through \(V_i\)
to \(M_i\) by the quadratic arc

\[
\gamma_i(u)=(1-u)^2M_{i-1}+2u(1-u)V_i+u^2M_i,
\qquad0\le u\le1.                                         \tag{3}
\]

Each arc lies in the triangle \(M_{i-1}V_iM_i\), because all three
coefficients in (3) are nonnegative and sum to one. These corner triangles
have disjoint interiors: together with the convex polygon of edge
midpoints they partition the original polygon. Each arc is regular and
turns monotonically from the direction of edge \(V_{i-1}V_i\) to that
of \(V_iV_{i+1}\). Adjacent arcs have exactly the same tangent vector at
their common midpoint:

\[
\gamma_i'(1)=V_{i+1}-V_i=\gamma_{i+1}'(0).
\]

Consequently the arcs form a simple convex C1 closed curve, piecewise
quadratic with positive curvature. In particular it encloses a convex
body to which (2) applies.

Translate the vertex \(V_i\) to the origin and put
\(a=V_{i-1}-V_i\), \(b=V_{i+1}-V_i\). The positive orientation gives
\(\det(a,b)=-2e_i\), and (3) becomes

\[
\gamma_i(u)=\frac12(1-u)^2a+\frac12u^2b.
\]

Direct differentiation gives the constant identity

\[
\det(\gamma_i'(u),\gamma_i''(u))=-\det(a,b)=2e_i.           \tag{4}
\]

Thus its contribution to affine perimeter is \((2e_i)^{1/3}\).
The removed corner area is obtained by closing the arc to the vertex.
The two straight radial segments contribute zero to Green's area integral,
and

\[
\frac12\int_0^1\det(\gamma_i(u),\gamma_i'(u))\,du
 =\frac{\det(a,b)}{24}=-\frac{e_i}{12}.                    \tag{5}
\]

The negative sign records the clockwise orientation of the removed cap.
Its unsigned area is therefore \(e_i/12\). It follows that the rounded
body has precisely

\[
\boxed{\Omega=2^{1/3}\sum_{i=1}^n e_i^{1/3},
\qquad B=S-\frac1{12}\sum_{i=1}^n e_i.}                  \tag{6}
\]

Inserting (6) into (2) gives an affine-invariant inequality for every
strictly convex polygon:

\[
\left(\sum_i e_i^{1/3}\right)^3
 +\frac{\pi^2}{3}\sum_i e_i\le4\pi^2S.                  \tag{7}
\]

## 3. Apply the polygon inequality to a nonagon

If every triangle on the polygon's vertices has area at least t, every
ear does as well. Hence

\[
\sum_i e_i^{1/3}\ge n t^{1/3},\qquad
\sum_i e_i\ge nt.
\]

Equation (7) proves the general, not necessarily sharp, bound

\[
\boxed{t\le\frac{4\pi^2}{n^3+n\pi^2/3}S.}              \tag{8}
\]

For n=9 this is the first inequality of (1). The function
\(x\mapsto4x/(729+3x)\) is strictly increasing for \(x>0\).
The classical rational inequality \(\pi<22/7\) therefore gives

\[
\frac{4\pi^2}{729+3\pi^2}
 <\frac{4(484/49)}{729+3(484/49)}
 =\frac{1936}{37173}<\frac1{19}.                          \tag{9}
\]

The final comparison is the integer inequality
\(1936\cdot19=36784<37173\).
Since the convex hull lies inside the unit square, S is at most one.
Also \(1/19<7/128\) because \(128<133\), and

\[
A_0-\frac7{128}=\frac{18\sqrt{65}-145}{640}>0,
\qquad18^2\cdot65-145^2=35>0.
\]

This proves Theorem 1, including a strict margin below the target.
Degenerate configurations already have minimum triangle area zero. A
nine-vertex convex hull is strictly convex, so no other case was omitted.

## Verification and remaining scope

The optional script [check_global_completion.py](check_global_completion.py)
checks the two local polynomial identities (4)--(5), their area factors,
and the rational comparisons in (9). The convex-curve construction and
the affine isoperimetric theorem are mathematical premises, not consequences
of that diagnostic.

The complete nine-vertex hull family is excluded. The hull-eight family
with one interior point remains distinct from the already completed
eight-**boundary** family. In particular, (8) at n=8 alone is not strong
enough to close the hull-eight case; the interior point's triangle
constraints must still be used.

## 4. Both lower exterior corner caps with seven boundary contacts

There is a second complete placement exclusion, independent of affine
isoperimetry. Use the seven-boundary notation

\[
\begin{array}{lll}
A=(0,a),&H=(0,h),&0<a<h<1,\\
B=(b,0),&C=(c,0),&0<b<c<1,\\
D=(1,d),&E=(1,e),&0<d<e<1,\\
F=(f,1),&&0<f<1.
\end{array}                                                \tag{10}
\]

The other two points may lie anywhere in the square. In particular, the
following statement does not require either free point to be inside the
boundary heptagon or to be a vertex of the full hull. It does not even
require the projection-overlap condition \(b\le f\le c\).

**Theorem 2.** If either free point lies in either lower exterior corner
cap

\[
\operatorname{conv}\{(0,0),A,B\},\qquad
\operatorname{conv}\{(1,0),C,D\},
\]

then some configuration triangle has area strictly less than \(7/128\).

**Proof.** Horizontal reflection exchanges the two caps, so consider
\(P=(x,y)\) in the first cap. Assume for a contradiction that every
triangle has doubled area at least

\[
 s=\frac7{64},\qquad L=h-a,\quad M=c-b,\quad R=e-d.
\]

A point on an actual triangle edge already makes a collinear triple;
the area inequalities below handle the full closed cap in any case.
The cap condition and the triangles AHP and BCP give

\[
\frac xb+\frac ya\le1,\qquad xL\ge s,\qquad yM\ge s.
\]

Consequently

\[
\frac{s}{bL}+\frac{s}{aM}\le1.
\]

Set \(\lambda=s/(aM)\). Positivity gives \(0<\lambda<1\),
and therefore

\[
a=\frac{s}{\lambda M},\qquad
b\ge\frac{s}{(1-\lambda)L}.                              \tag{11}
\]

Triangles BCD and CDE imply \(dM\ge s\) and \((1-c)R\ge s\).
The horizontal length identity \(M+b+(1-c)=1\) now yields

\[
1\ge M+\frac{s}{(1-\lambda)L}+\frac{s}{R}.                \tag{12}
\]

The doubled area of HFE is

\[
(1-f)(1-h)+f(1-e)\ge s.
\]

This is a convex combination of \(1-h\) and \(1-e\). Hence
at least one of h,e is at most \(1-s\); both are at most one.
With the unequal positive weights 3/4 and 1/4 this gives

\[
\frac34h+\frac14e\le1-\frac s4.
\]

Using (11), \(h=a+L\), and \(e=d+R\), we conclude that

\[
1-\frac s4\ge\frac{3L}{4}+\frac R4
          +\frac{s}{4M}\left(\frac3\lambda+1\right).     \tag{13}
\]

Add (12)--(13), and group each positive length with its reciprocal.
Three applications of the arithmetic-geometric mean inequality give

\[
2-\frac s4\ge\sqrt{s}\left(
\sqrt{1+\frac3\lambda}
+\sqrt{\frac3{1-\lambda}}+1\right)>6\sqrt{s}.             \tag{14}
\]

For the strict final comparison put \(q=\lambda(1-\lambda)\le1/4\).
The square of the sum of the first two radicals is

\[
1+\frac3q+2\sqrt{\frac{3(\lambda+3)}q}
 >1+12+12=25.
\]

Both radicals are positive, so their sum exceeds five. At \(s=7/64\),
(14) is impossible, since

\[
2-\frac s4=\frac{505}{256}
 <\frac{3\sqrt7}{4}=6\sqrt s.
\]

Squaring positive quantities reduces this last comparison to
\(7\cdot192^2-505^2=3023>0\). This contradiction proves the left-cap
exclusion; reflection proves the right-cap exclusion. No constraint
involving the other free point was used. \(\square\)

Thus a competitive seven-boundary configuration has no free point in
either exterior cap along its doubled bottom side. If exactly eight
points are hull vertices and the eighth lies outside the boundary
heptagon, it must lie in one of the two upper exterior caps. Those upper
caps contain perturbations of the known optimal configuration, and are
not claimed to have a uniform strict bound below A0.
