# Nine points in convex position in a square

Let a strictly convex polygon have vertices in a rectangle of width
\(W\) and height \(H\). Write its edge vectors in counterclockwise order
as \(e_1,\ldots,e_k\), with indices taken cyclically. Its consecutive
triangles have doubled areas \(D_i=\det(e_i,e_{i+1})>0\). We prove
\[
                 \sum_{i=1}^k D_i^{1/3}\le 4(WH)^{1/3}.                 \tag{1}
\]
In particular, among nine points in convex position in the unit square
there is a triangle of doubled area at most \(64/729\). Since
\(93\cdot729-64\cdot1000=3797>0\), a configuration with all doubled
areas at least \(93/1000\) has at most eight points in convex position.

## An inequality in one quadrant

For successive edges interpolate the vectors linearly by
\(v(t)=(1-t)e_i+t e_{i+1}\), \(0\le t\le1\). Their directions turn
through a positive angle less than \(\pi\), so the interpolation stays
away from zero and its direction increases strictly. Indeed
\(\det(v(t),v(t'))=(t'-t)D_i>0\) for \(t<t'\).
Continuing cyclically around the boundary turns through precisely
\(2\pi\), by the exterior angle sum of a convex polygon. Cut each
interpolation at every intermediate axis direction. Discard intervals
of zero length. Each resulting piece belongs to one of the four closed
quadrants.

Fix one quadrant and rotate it by a multiple of \(\pi/2\) to the first
quadrant. On one piece write \(u,v\) for the initial and final vectors,
\(\delta\) for the length of the parameter interval, and \(D=D_i\).
Then \(\det(u,v)=\delta D\).
For \(a,b>0\) put \(L(w)=a w_x+b w_y\), which is positive on these
nonzero vectors. The following identity is just cross multiplication:
\[
 \frac{v_y}{L(v)}-\frac{u_y}{L(u)}
   =\frac{a\delta D}{L(u)L(v)}.
\]
Within the quadrant the endpoint of each piece starts the next one.
The first vector points along the positive horizontal axis and the
last along the positive vertical axis. Telescoping gives
\[
                \sum \frac{\delta D}{L(u)L(v)}=\frac1{ab}.           \tag{2}
\]
Let \(X,Y\) be the sums of \(\delta(u_x+v_x)/2\) and
\(\delta(u_y+v_y)/2\) over these pieces, respectively. Both are positive.
Factor each summand as
\[
 \delta D^{1/3}
 =\left(\delta\sqrt{L(u)L(v)}\right)^{2/3}
  \left(\frac{\delta D}{L(u)L(v)}\right)^{1/3}.
\]
Hölder's inequality for finite sums, followed by the arithmetic and
geometric mean inequality and (2), yields
\[
 \sum\delta D^{1/3}\le (aX+bY)^{2/3}(ab)^{-1/3}.
\]
Taking \(a=1/X,\ b=1/Y\) bounds the sum in this quadrant by
\((4XY)^{1/3}\).

## Adding the four quadrants

In the original axes, let \(X_j,Y_j\) be the corresponding two sums
of absolute coordinate magnitudes for quadrant \(j\). A quarter-turn
can interchange them, leaving their product unchanged. For each original
edge pair, the sums of the horizontal trapezoids over its pieces are
at most \((|(e_i)_x|+|(e_{i+1})_x|)/2\). Indeed the absolute value of
the interpolated component is affine on each piece and lies below the
chord joining the absolute values at the original endpoints. Summing
the trapezoids of that chord gives its endpoint average. Thus
\[
 \sum_j X_j\le\sum_i |(e_i)_x|\le2W,\qquad
 \sum_j Y_j\le\sum_i |(e_i)_y|\le2H .
\]
The final inequalities follow by traversing the two monotone boundary
chains between the extreme support lines of a convex polygon in each
coordinate. For each \(i\), the lengths \(\delta\) of its pieces sum
to one. A second use of finite Hölder now proves (1):
\[
 \sum_i D_i^{1/3}
 \le 4^{1/3}\sum_{j=1}^4 (X_jY_j)^{1/3}
 \le 4^{1/3}\left(4\sum_j X_j\sum_j Y_j\right)^{1/3}
 \le 4(WH)^{1/3}.
\]
In particular \(k^3\min_i D_i\le64WH\). The argument includes
axis-parallel edges. A zero area triple already meets the desired
upper bound.

## Two consequences for an octagon

An ear of a strictly convex octagon is the triangle of three consecutive
vertices. Suppose the actual doubled areas are at least \(s=93/1000\).
An ear containing an actual point has doubled area at least \(3s\) by
subdivision. An ear containing two actual points has doubled area at
least \((4+2\sqrt3)s>347/500\) by the two-interior-point bound.
[Triangle occupancy](TRIANGLE_OCCUPANCY.md)

At most one ear can contain an actual point, and that ear can contain
at most one. Indeed \(.453^3<s\), \(.653^3<3s\), and \(.885^3<347/500\).
Two occupied ears give a sum in (1) greater than
\(6(.453)+2(.653)=4.024\). One ear with two occupants gives a sum
greater than \(7(.453)+.885=4.056\). Both exceed four. These counts
apply also when the same point belongs to two ears.

## Application to the six-boundary count IRTL

Use the six contacts \(A,B,C,E,F,H\) of the normalized N6 hexagon in
cyclic order. In count \((k,j,r,t,l)=(0,1,1,1,1)\) there is one point
in the central quadrilateral and one point in each of the three
exterior caps. The cap bases are \(CE,EF,FH\), respectively.
[N6 placements](N6_PLACEMENTS.md)

Each of the six contacts is an extreme point of the actual
configuration. It belongs to a supporting line of the square, and
positive clearance allows at most two actual points on that line.
Each cap point is also extreme. The line of its base strictly
separates it from both other cap points and from every point of the
contact hexagon apart from the two endpoints on the line. To see this
directly, extend the base line to the square boundary. Its segment in
the square is exactly that base, since its endpoints are on adjacent
sides and strictly between the corners. The exterior half of the
square cut by the line is precisely the corresponding corner triangle.
Distinct such caps have disjoint interiors. This proves extremality
even if a cap point is on an outer square side.

The six contacts and three cap points therefore form a strictly
convex nonagon. The nine-point bound contradicts the assumed clearance.
This excludes the entire IRTL count. The same reasoning also applies
when the remaining point is in the lower quadrilateral.
