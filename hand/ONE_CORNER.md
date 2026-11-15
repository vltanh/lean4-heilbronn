# One occupied corner: a complete three-interior-point exclusion

## Scope and theorem

Let nine points in the unit square include

\[
O=(0,0),\qquad H=(0,\eta),\qquad C_0=(\xi,0),
\qquad 0<\xi,\eta\le1.
\]

**Corner-triangle occupancy theorem.** If at least three other points lie
strictly inside \(OHC_0\), the configuration has minimum triangle area

\[
\boxed{t\le\frac7{128}<A_0.}                               \tag{1}
\]

This closes the entire three-inside branch of C1, including configurations
whose convex hull extends outside the five-anchor pentagon. The proof does
not require \(H\) or \(C_0\) to be close to a square corner. It extends
the quantitative packing argument in Sections 10--12 of
[CORNER_FAMILIES.md](CORNER_FAMILIES.md) to a rectangle with correlated
side lengths and area threshold.

The other C1 branches are not closed by this note.

## 1. Normalize the occupied corner triangle

Assume for a contradiction that \(t>7/128\), and put \(\sigma=7/64\).
If four points lie inside \(OHC_0\), the seven-point triangular-hull
lemma in `CORNER_FAMILIES.md` already gives a stronger contradiction.
Thus exactly three of the other points are inside the triangle and the
remaining three are outside it. No point lies on a triangle edge,
because the minimum area is positive.

Apply the affine map

\[
(x,y)\longmapsto (x/\xi,\ 1-y/\eta).
\]

The three occupied vertices become

\[
A=(0,0),\quad B=(0,1),\quad C=(1,1).
\]

The unit square becomes the rectangle

\[
0\le x\le L,\qquad 1-M\le y\le1,
\qquad L=1/\xi\ge1,\quad M=1/\eta\ge1.                   \tag{2}
\]

Every doubled triangle area is at least

\[
s=\sigma LM\ge\sigma,
\qquad L,M\le\frac{s}{\sigma}.                            \tag{3}
\]

The three interior points are now above the diagonal \(AC\), and the
other three points are below it. Their upper triple is distributed in
the sense of Section 8 of `CORNER_FAMILIES.md`; otherwise the two-interior
point lemma there would bound a doubled triangle area by
\(1/(6+2\sqrt3)<\sigma\le s\).

Use the labels and notation

\[
Y=(u,v),\quad Z=(p,q),\quad X=(c,1-a),
\quad h=1-v,\quad z=1-q,\quad f=v-u,
\]

with \(Z\in ABY\), \(X\in BCY\). Also put

\[
k=h-a,\quad Q=hc-au,\quad K=|D(X,Y,Z)|,
\quad J=k-Q,
\]

where \(D(P,Q,R)=\det(Q-P,R-P)\). Thus \(Q\) is the doubled area of
\(BXY\), \(K\) is the central area, and \(J\) is the connector area
of \(CYX\).

## 2. The same mesh estimates hold for every \(s\ge\sigma\)

The proof of the quantitative mesh lemma uses \(1/s\le64/7\), rather
than equality, in its bounds for the normalized area sum. Thus every
step remains valid for the present \(s\). In particular

\[
\begin{gathered}
K/s\le109/98<9/8,\qquad
\text{each connector}>6s/5,\\
p,a,f\le E:=55/384,\\
u,h,c,z,\ 1-c-a,\ 1-p-z\ge3s.                             \tag{4}
\end{gathered}
\]

For the central estimate, the normalized variable \(Z_0\) there obeys
\(Z_0\le1/s-7\le15/7\). For the connector estimate, its bound
\(A+B\le43/7-\kappa-C\) is weakened, not strengthened, when \(s\)
increases. For the ear estimate,
\(1-(3\varphi+3)s\le1-(3\varphi+3)\sigma<E\).
These observations verify all uses of the fixed threshold in that lemma.

## 3. The uniform signs survive the rectangle extension

Put \(\delta=M-1\). For a lower point \(R=(x,y)\), the rectangle now
gives \(y\ge-\delta\), while triangles with pairs of \(A,B,C\) give
\(x\ge s\), \(1-y\ge s\), and \(x-y\ge s\).

We first prove \(D(B,Z,R)\ge s\). Its opposite sign would imply

\[
x\le\frac{pM-s}{1-q}.
\]

Also \(D(A,Z,R)=py-qx<0\), so its area constraint implies

\[
x\ge\frac{s-p\delta}{q}.
\]

Compatibility of these two inequalities requires
\(p(q+\delta)\ge s\). But (3)--(4) give

\[
q+\delta\le1-3s+(s/\sigma-1)
=\frac{43}{7}s,
\qquad
p(q+\delta)\le\frac{2365}{2688}s<s.
\]

This contradiction proves the claimed sign. Reflection across \(x+y=1\)
exchanges \(L,M\), so the same proof also gives
\(D(B,X,R)\le-s\).

Next put \(b=1-y\), so \(0\le b\le M\). Exactly as in (35)--(36)
of `CORNER_FAMILIES.md`,

\[
\begin{gathered}
x\ge\max\left(1+s-b,\frac{s+pb}{z}\right),\\
D(X,Y,R)=(c-u)b+kx-Q,
\qquad K=Q+z(u-c)-pk.
\end{gathered}
\]

The two affine lower bounds on \(x\) meet at the same
\(b_0=[z(1+s)-s]/(p+z)\in(0,1)\). If \(Q\ge K\), the minimum
occurs at \(b_0\) and the argument there gives
\(D(X,Y,R)>-7s/8\), unchanged.

If \(Q\le K\), the minimum occurs at \(b=M\). Since \(M-z>0\) and
\(Q\ge s\),

\[
D(X,Y,R)\ge\frac{ks-MK+Q(M-z)}z
\ge-s+\frac{sk-M(K-s)}z>-s.                               \tag{5}
\]

The last numerator is positive because

\[
k=Q+J>\frac{11}{5}s,
\qquad
M(K/s-1)\le\frac{s}{\sigma}\frac{11}{98}
=\frac{352}{343}s<\frac{11}{5}s.
\]

Thus in every case \(|D(X,Y,R)|\ge s\) forces

\[
D(B,Z,R)\ge s,\qquad D(B,X,R)\le-s,
\qquad D(X,Y,R)\ge s.                                    \tag{6}
\]

## 4. At most one lower point on either side of \(BY\)

First consider lower points satisfying
\(D(B,Y,R)\le-s\). Put

\[
d=u-c,\qquad e=Q+d.
\]

The inequalities containing these points are the same as (37) in
`CORNER_FAMILIES.md`, except for the displaced horizontal boundary:

\[
hx+uy\le u-s,
\qquad kx+dy\ge s+e,
\qquad y\ge-\delta.                                      \tag{7}
\]

They describe a feasible triangle with top vertex \((x_0,y_0)\), where

\[
y_0=v-\frac{s(k+h)}Q,
\]

and base vertices on \(y=-\delta\). Its height is
\(H_0=y_0+\delta\). If the triangle is empty or degenerate, it contains
at most one lower point. Otherwise \(H_0>0\).

The same boundary-line calculation as in (39) gives the three absolute
determinants formed by \(Z\) and pairs of its vertices:

\[
G_0=\frac{(q+\delta)QH_0}{hk},\qquad
G_1=\frac{(s+K)H_0}{k},\qquad
G_2=\frac{(P-s)H_0}{h},                                   \tag{8}
\]

where \(P=u(1-q)-hp\ge s\).

The correlation in (3) is exactly what is needed to bound these
expressions. Set \(\rho=Q/s\), \(\gamma=J/s\), \(\alpha=a/s\).
Since \(k=Q+J\), \(h=Q+J+a\), one has

\[
\frac{H_0}{s}
\le\frac1\sigma-\alpha-\rho-\gamma-2
              -\frac{\alpha+2\gamma}{\rho}.               \tag{9}
\]

This follows by writing
\(H_0=1+\delta-a-Q-J-2s-s(a+2J)/Q\) and using
\(1+\delta=M\le s/\sigma\).

For \(G_1\), apply \(\alpha\ge1\), \(\gamma>6/5\), and
\(K/s<9/8\) exactly as in (41). It gives

\[
\frac{G_1}{s}
\le\frac{17}{8}
 \frac{1/\sigma-21/5-\rho-17/(5\rho)}{\rho+6/5}<1.
\]

The strict inequality is the same positive quadratic
\(875\rho^2-2605\rho+2023\) proved there.

For \(G_0\), the mesh identity (42), followed by (3), gives

\[
q+\delta
\le1+\delta-2s-\frac{s(s+Q)}J
\le s\left(\frac1\sigma-2-\frac{1+\rho}{\gamma}\right).
\]

Its right side is positive because \(q+\delta>0\). Decrease
\(\alpha\) to one in (9) and in the denominator of \(G_0\). Then

\[
\frac{G_0}{s}\le
\frac{\left(1/\sigma-2-\frac{1+\rho}{\gamma}\right)\rho
 \left(1/\sigma-\rho-\gamma-3-\frac{2\gamma+1}{\rho}\right)}
 { (\rho+\gamma)(\rho+\gamma+1)}<1.                        \tag{10}
\]

The same area sum as in (43) gives
\(1\le\rho<1/s-32/5\le96/35\), and \(\gamma>6/5\).
At \(\sigma=7/64\), one minus the right side of (10) is exactly

\[
\frac{N(\gamma,\rho)}
 {49\gamma(\gamma+\rho)(\gamma+\rho+1)},
\]

where the polynomial \(N\) is displayed and proved positive over this
entire range in (45). Thus no new polynomial estimate is needed.

Finally \(q\ge4s\) and
\(y_0<1-(26/5)s<4s\), as before. The identity

\[
G_1-G_2=(\hbox{base width})(q-y_0)\ge0
\]

therefore gives \(G_2\le G_1<s\). All three vertex-pair determinants
are less than \(s\). Since a determinant is affine separately in the
two varying points, every pair of points in the feasible triangle has
absolute determinant less than \(s\) with \(Z\). Consequently there
is at most one lower point on this side of \(BY\).

Reflect across \(x+y=1\). This exchanges \(L,M\), exchanges \(X,Z\),
preserves \(s=\sigma LM\), and changes the other side of \(BY\) into
the side just considered. The entire argument applies without change.
There is at most one lower point on each side of \(BY\), contradicting
the three lower points. This proves (1).

## 5. Consequences and remaining C1 scope

For the C1 normal form

\[
O=(0,0),\quad H=(0,\eta),\quad C_0=(\xi,0),\quad
D=(1,d),\ F=(f,1),
\qquad d\le\eta,\ f\le\xi,
\]

any configuration of minimum area at least \(A_0\) has at most two of
its four free points inside \(OHC_0\). This conclusion applies even
when other free points are outside the five-anchor pentagon.

If the convex hull is exactly that pentagon, the quadrilateral-occupancy
theorem in [QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md) allows at most
two free points above \(HC_0\) as well. Hence the only surviving count
for this hull is exactly two free points on each side. The present note
does not exclude that \(2+2\) case or configurations with larger hulls.

The optional checker [check_one_corner.py](check_one_corner.py) verifies
the displaced-triangle formulas and the normalized identities connecting
this argument to the two polynomial certificates already proved by hand.
