# Complete N occupancy with two opposite-cap points

Use the six N anchors
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c.
\]
Two other actual points lie beyond DF in the opposite cap
\(DF(1,1)\), and the ninth point is inside the original anchor
hexagon ABCDFH. The corner \((1,1)\) is a virtual containing
vertex; cap points on square sides are allowed.

**Theorem 1.** Every configuration in this complete occupancy has
minimum ordinary triangle area at most
\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]
Equality holds only at the configuration of
[HAND_PROOF.md](HAND_PROOF.md), up to square symmetry and relabeling.
In particular equality forces two additional square-boundary contacts.
This closes both N6-06-L0 and N6-06-L1.

**Proof.** A repeated point or an actual collinearity already gives
minimum area zero. Otherwise D and F are vertices of the hull formed
by them and the two cap points: every cap point has y-coordinate
greater than d and x-coordinate greater than f, so D is its unique
lowest vertex and F its unique leftmost vertex. The four-point hull
has either three or four vertices.

If it is a triangle, name its third vertex X and its interior point P.
Then \(P\in\operatorname{int}(DXF)\). The complete theorem in
[SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md](SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md)
gives minimum ordinary area strictly below \(4/73<A_0\). It covers
all 260 radial pairs and both required actual-line splits, for 262
terminal cells. Its 220 fixed cubic expressions and 29,641 positive
terms have passed exact verification and separate symbolic expansion.

If the hull has four vertices, name the cap points E,G in cyclic
order D,E,G,F. The complete theorem in
[SIX_BOUNDARY_TWO_TOP_CONVEX.md](SIX_BOUNDARY_TWO_TOP_CONVEX.md)
gives the sharp bound and the stated equality classification. Its
94-word cover uses 100 fixed cubics with 17,619 positive terms,
followed by the continuous E/F sharp-chamber theorem. Both its finite
cover and its sharp map have passed independent exact and geometric
audits. At equality E lies on the right square side and G on the top
side, in addition to the six prescribed contacts.

The remaining anchor-interior point can be below or above HC in
both theorems. A point on HC, or a degenerate transition between
the two cap hulls, gives an actual collinearity and has already been
handled. These two hull alternatives therefore exhaust the occupancy
and prove the theorem. \(\square\)

Transposition preserves this entire occupancy. Each component theorem
may consequently impose its own normalization \(f\le d\) without
restricting the result stated here.
