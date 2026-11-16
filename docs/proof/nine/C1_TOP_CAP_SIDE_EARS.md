# The two side ears of a C1 top-cap extension are empty

Use the C1 anchors and threshold

\[
O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\quad 0<d\le h\le1,\quad0<f\le c\le1,
\quad s=\frac8{73}<2A_0.
\]

Assume a competitive nine-point configuration, with two actual points
inside \(OHC\), and an actual top-cap point \(X\) beyond \(DF\).
Put \(\rho=49/60\). As in the earlier C1 companions,
\(hc\ge(4+2\sqrt3)s>\rho\).

**Theorem.** Neither \(HFX\) nor \(CDX\) contains a further
actual point. In fact both triangles have doubled area less than
\(3s\). This excludes the entire one-top-cap placement in which
the remaining point is in either of those two side ears.

## 1. A necessary scalar inequality for a nonempty ear

Retain the expressions

\[
A=1-c+d(c-f),\qquad U=1-h+f(h-d),\qquad
\Delta=df-(1-h)(1-c)>0.
\]

For the cap point \(X=(x,y)\), set

\[
\alpha=-[HFX],\qquad\beta=[CDX],\qquad r=-[DFX].
\]

All three are at least \(s\). The positivity of \(\Delta\)
and the identity

\[
A\alpha+U\beta+\Delta r=AU                            \tag{1}
\]

are proved in Section 1 of
[C1_TOP_CAP_CONVEX_PAIR.md](C1_TOP_CAP_CONVEX_PAIR.md).
If \(\alpha\ge3s\), equation (1) gives

\[
\boxed{J:=AU-s(3A+U+\Delta)\ge0.}                     \tag{2}
\]

We exclude (2); reflection then excludes \(\beta\ge3s\).
It is convenient to reflect first, and prove the equivalent inequality

\[
\boxed{J_*:=AU-s(A+3U+\Delta)<0}                      \tag{3}
\]

uniformly under the relaxed anchor conditions \(hc\ge\rho\),
\(hf,cd,A,U\ge s\). Reflection exchanges \(A,U\) and preserves
\(\Delta\), so (3) indeed implies the failure of (2).

## 2. The same monotone reduction applies

Suppose \(J_*\ge0\). It implies the positive bracket
\(AU-s(A+U)>0\), since \(\Delta>0\). The product exclusions
and decreasing path of Section 3 of the convex-pair companion therefore
apply: keep \(d,f\) fixed and decrease \(h,c\), preserving
\(hf,cd\ge s\), until \(hc=\rho\).

This path increases \(A,U\) and decreases \(\Delta>0\).
It preserves \(J_*\ge0\). Indeed

\[
J_*=U(A-3s)-s(A+\Delta)\ge0
\]

implies \(A>3s\); also \(U\ge s\). Increasing \(A\) has
derivative \(U-s\ge0\), increasing \(U\) has derivative
\(A-3s>0\), and decreasing \(\Delta\) increases \(J_*\).

At the endpoint put \(u=hf\), \(v=cd\). The necessary parameters
then lie in

\[
\rho\le h\le1,\qquad s\le u,v\le\rho,
\]

and

\[
\begin{aligned}
A&=1-\rho/h+v-uv/\rho,\\
U&=1-h+u-uv/\rho,\\
\Delta&=uv/\rho-1+h+\rho/h-\rho.
\end{aligned}                                                   \tag{4}
\]

## 3. An exact two-box certificate

The expression \(hJ_*\) in (4) is a polynomial. Split only the
\(v\) interval at its midpoint. On either half, indexed by
\(e=0,1\), use unit-cube coordinates

\[
h=\rho+(1-\rho)H,\qquad
u=s+(\rho-s)V_1,\qquad
v=s+(\rho-s)(V_2+e)/2.
\]

The polynomial has tensor degree \((2,2,2)\). Applying the exact
power-to-Bernstein coefficient formula from the convex-pair companion
gives the following largest coefficients:

| Half of the \(v\) interval | Largest Bernstein coefficient of \(hJ_*\) |
|---|---|
| Lower half | \(-4376159983/274490395200\) |
| Upper half | \(-1816566733/112036896000\) |

Both are strictly negative. Since the Bernstein basis is nonnegative
and sums to one, \(hJ_*<0\) on both closed boxes. Division by
\(h>0\) contradicts \(J_*\ge0\), proving (3). The companion
checker verifies all 27 coefficients on each half with exact rational
arithmetic, as well as the cap-area identity and the displayed
derivatives.

Thus \(\alpha,\beta<3s\). An actual point inside either triangle
would divide it into three actual triangles of doubled area at least
\(s\), an impossibility. An actual point on an edge is excluded by
positive minimum area. This proves the theorem.

## 4. Consequence for the remaining one-top-cap placement

The side-cap theorem and the two-top-cap theorem leave, for this lower
occupancy, exactly one cap point \(X\) and one upper point \(P\)
inside the original anchor pentagon. Its six-vertex extension
\(O,C,D,X,F,H\) is the union of the quadrilateral \(O,C,X,H\)
and the two side ears just excluded. Therefore \(P\) lies strictly
inside \(O,C,X,H\).

The theorem in
[C1_TOP_CAP_RADIAL_SPLIT.md](C1_TOP_CAP_RADIAL_SPLIT.md) places one
lower point on each side of \(OX\).
Each lower point belongs to the corresponding triangle \(OHX\) or
\(OCX\). The point \(P\) belongs to one of these triangles too,
so that triangle contains two further actual points. Reflection lets
us assume it is \(OCX\). Writing \(X=(x,y)\), the remaining
placement consequently has the genuine containing-area bounds

\[
hc\ge(4+2\sqrt3)s,\qquad cy\ge(4+2\sqrt3)s.           \tag{5}
\]

The theorem above closes both adjacent-ear placements without imposing
an additional condition on the two lower points. The reduced placement
with (5) is fully excluded by the subsequent ray and pair-line arguments
assembled in [C1_TWO_LOWER_COMPLETION.md](C1_TWO_LOWER_COMPLETION.md).
