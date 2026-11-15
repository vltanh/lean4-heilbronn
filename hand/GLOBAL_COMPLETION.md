# A complete exclusion of nine convex-hull vertices

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
