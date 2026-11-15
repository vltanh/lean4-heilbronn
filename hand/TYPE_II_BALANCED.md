# The balanced adjacent-corner case: a complete hull-pair exclusion

## Scope

Use the Type-II normalization of [TYPE_II.md](TYPE_II.md):

\[
D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad B=(b,0),
\qquad 0<b\le\tfrac12,\quad 0<\lambda<1.
\]

Suppose the left, central, and right containers determined by \(DB,BC\)
contain respectively two, two, and two of the six points other than
\(D,C,B\). Write the left pair as \(E,L\), and the right pair as
\(Q,R\). All points are distinct, and positive minimum area excludes
points on the dividing lines. Put \(s=7/64\), and suppose every
doubled triangle area is at least \(s\).

**Theorem.** The two four-point sets \(D,B,E,L\) and \(B,C,Q,R\)
cannot both have quadrilateral convex hulls.

This is a complete continuous exclusion of one hull combination within
the balanced count \((2,2,2)\). The cases with a triangular side hull
remain open. The two central points are not used in the proof.

## 1. The lower vertex in a four-point endpoint quadrilateral

We first record an affine inequality. Suppose

\[
B_0=(0,0),\quad C_0=(1,1),\quad Q_0=(x,y),\quad R_0=(z,w)
\]

have quadrilateral hull in the cyclic order \(B_0,Q_0,R_0,C_0\),
and \(Q_0,R_0\) lie in the triangle with vertices
\((0,0),(1,0),(1,1)\). Suppose all doubled triangle areas are at least
\(a>0\). The positive doubled areas of \(B_0Q_0R_0\) and
\(C_0Q_0R_0\) are

\[
u=xw-yz\ge a,\qquad
v=xw-yz+z-w-x+y\ge a.                                  \tag{1}
\]

Here \(x>y\ge0\), since the triangle \(B_0C_0Q_0\) has positive
area, and \(x<1\): otherwise the second expression in (1) is
\((1-y)(z-1)\le0\). Thus divisions by \(x\) are legitimate.
The first inequality in (1) gives \(w\ge(a+yz)/x\). The coefficient
of \(w\) in the second expression is \(-(1-x)<0\), so

\[
\begin{aligned}
v&\le \frac{x-y}{x}z-(x-y)-\frac{(1-x)a}{x}\\
 &\le\frac{(1-x)(x-y-a)}x,
\end{aligned}
\]

where the last step uses \(z\le1\) and \(x-y>0\). Combining with
\(v\ge a\) proves

\[
\boxed{(x-y)(1-x)\ge a.}                                \tag{2}
\]

The two nonnegative factors on the left sum to \(1-y\). Hence

\[
\boxed{y\le1-2\sqrt a.}                                \tag{3}
\]

The cyclic labeling selects the vertex adjacent to \(B_0\) on the
non-diagonal hull chain. No additional coordinate-order assumption is
needed in (1)--(3).

## 2. A quadrilateral left hull forces a low point

Write \(L=(p,v)\). Since \(D,E\) are the two left-side contacts
and \(L\) is strictly to the left of \(DB\), the hull of
\(D,B,E,L\) is triangular precisely when \(L\) is inside
\(DBE\). In the quadrilateral case it is below \(EB\), and
the cyclic hull order is \(D,E,L,B\). The two positive areas next
to that lower vertex give

\[
(1-\lambda)p\ge s,
\qquad \lambda(b-p)-bv\ge s.                            \tag{4}
\]

In particular

\[
b\ge\frac{s}{1-\lambda}+\frac{s}{\lambda}
  =\frac{s}{\lambda(1-\lambda)}\ge4s,
\qquad 1-b\le\frac9{16}.                               \tag{5}
\]

Eliminating \(p\) from (4), and using \(b\le1/2\), also gives

\[
\begin{aligned}
v&\le\lambda-\frac{s}{b(1-\lambda)}\\
 &\le 1-(1-\lambda)-\frac{2s}{1-\lambda}
 \le1-2\sqrt{2s}=1-\sqrt{\frac78}<\frac1{15}.            \tag{6}
\end{aligned}
\]

The last comparison is exact: \(7\cdot225-8\cdot196=7>0\)
proves \(\sqrt{7/8}>14/15\). The area constraint in (4) also
gives \(0<p<b\).

## 3. A quadrilateral right hull gives the contradictory triangle

Apply the affine map

\[
(x,y)\longmapsto\left(\frac{x-b}{1-b},y\right)
\]

to the right container. It sends \(B,C\) to \(B_0,C_0\) and
the container to the triangle in Section 1. Label its two other hull
vertices in the cyclic order \(B_0,Q_0,R_0,C_0\). Every doubled
area in this normalization is at least

\[
a=\frac{s}{1-b}\ge\frac7{36},                            \tag{7}
\]

by (5). Equation (3) therefore gives, for the original point \(Q\),

\[
0\le Q_y\le1-\frac{\sqrt7}{3}<\frac18.                  \tag{8}
\]

Indeed \(\sqrt7>21/8\), because \(7\cdot64-21^2=7>0\).
Both coordinates of the original right point satisfy
\(b\le Q_x\le1\), \(Q_y\ge0\).

The doubled area of \(LBQ\) is thus positive and equals

\[
\begin{aligned}
D(L,B,Q)&=(b-p)Q_y+v(Q_x-b)\\
 &<\frac12\cdot\frac18+\frac1{15}\cdot\frac9{16}
   =\frac1{10}<\frac7{64}=s.                            \tag{9}
\end{aligned}
\]

This contradicts the assumed minimum and proves the theorem.

## 4. A further cut restriction in the triangular-left branch

For completeness, suppose instead that the left hull is triangular, so
\(L\) is inside \(DBE\). Subdivision into its three actual
triangles gives

\[
b(1-\lambda)\ge3s.                                     \tag{10}
\]

The two central points cannot both be in \(EBC\). If they were,
the two-interior-point triangular-hull theorem would imply

\[
\alpha:=1-(1-b)(1-\lambda)\ge(4+2\sqrt3)s.
\]

But (10) would then give

\[
1\ge(1-b)\frac{3s}{b}+(4+2\sqrt3)s
 \ge(7+2\sqrt3)s>1,
\]

where \(b\le1/2\) and \(\sqrt3>3/2\) make the last
expression larger than \(10s=70/64\).

Thus at least one central point is inside \(DCE\). If both are
there, \(L\) must be below \(CE\), because the corner-triangle
theorem in [ONE_CORNER.md](ONE_CORNER.md) forbids three other points
inside \(DCE\). In that event \(L\) is inside \(EBC\).
These cut restrictions do not themselves close the triangular-left
branch.

## Verification

The optional [check_type_ii_balanced.py](check_type_ii_balanced.py)
checks the determinant eliminations and rational comparisons. The hull
labeling and containments are justified in the text above.
