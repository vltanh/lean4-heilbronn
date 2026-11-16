# Completion of the C1 family with two lower points

Use the C1 anchors

\[
O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\qquad 0<d\le h\le1,\quad0<f\le c\le1.
\]

The configuration is competitive: its minimum actual triangle area is
at least \(A_0\). We therefore use the smaller doubled threshold

\[
s=\frac8{73}<2A_0,\qquad
K=4+2\sqrt3,\qquad \rho=\frac{49}{60}<Ks.
\]

**Theorem 1.** The final one-cap placement with two lower points is
impossible.

**Theorem 2.** Every C1 configuration with exactly two of its four free
points inside \(OHC\) has an actual triangle of area strictly below
\(A_0\). This covers every hull size in that occupancy class.

Sections 1--3 prove the final placement exclusion. Section 4 assembles
the entire two-lower theorem. No claim about the zero- or one-lower
C1 classes is made here.

## 1. The remaining pair-line sign creates a second large triangle

The preceding complete exclusions leave only the setup of
[C1_TOP_CAP_COMMON_CELL.md](C1_TOP_CAP_COMMON_CELL.md), followed by
[C1_TOP_CAP_CONTAINMENT_PAIR.md](C1_TOP_CAP_CONTAINMENT_PAIR.md):
two lower points \(L,M\in OHC\cap OCF\), one top-cap point
\(X=(x,Y)\) beyond \(DF\), and one point \(P\) inside the
original anchor pentagon and above \(HC\). After the permitted
reflection,

\[
L\in OHX,\qquad M,P\in OCX,\qquad
hc\ge Ks>\rho,\quad cY\ge Ks>\rho,\quad f<x<c.          \tag{1}
\]

The only remaining line-sign case puts \(O,C\) on one side of
\(LM\) and \(H,F\) on the other. Orient the line from \(L\)
to \(M\). The ray order in (1) gives

\[
[LMO],[LMC]<0<[LMH],[LMF].                             \tag{2}
\]

Write \(L=(\ell,y)\). We claim that both \(M,P\) are strictly
inside the actual triangle \(CXL\).

First, \(X\) is above \(HC\), while \(L\) is below it.
For the first assertion, the whole virtual cap triangle
\(DF(1,1)\) is above \(HC\), since its three vertices are;
\(X\) is in that cap. Together with \(x<c\), \(\ell<c\),
this gives

\[
\frac{y}{c-\ell}<\frac hc<\frac{Y}{c-x},
\qquad [CXL]=(c-\ell)Y-(c-x)y>0.                      \tag{3}
\]

The points \(O,C\) are on the same side of \(LX\):
\([LXO]=\ell Y-xy<0\) by the ray order, and
\([LXC]=-[CXL]<0\) by (3). Thus all of \(OCX\) is on
this side of \(LX\), so both \(M,P\) satisfy the \(XL\)
edge test for \(CXL\). Their \(CX\) edge tests already follow
from \(M,P\in OCX\).

For the last edge, (2) gives \([LCM]=-[LMC]>0\).
The point \(P=(P_x,P_y)\) satisfies \(P_x<c\) and is above
\(HC\), whereas \(L\) is below it. Hence

\[
\frac{P_y}{c-P_x}>\frac hc>\frac{y}{c-\ell},
\qquad [LCP]>0.
\]

These are all three strict side tests for both points. The
two-interior-point triangle theorem consequently gives the new cost

\[
\boxed{[CXL]=(c-\ell)Y-(c-x)y\ge Ks>\rho.}             \tag{4}
\]

This is the step that uses the ninth point \(P\).

## 2. Eliminate the lower point and the right anchor

The three actual lower-point areas with fixed signs are

\[
\ell-fy\ge s,\qquad
hf+(1-h)\ell-fy\ge s,\qquad xy-Y\ell\ge s.              \tag{5}
\]

They are respectively the unsigned areas \(OFL,HFL,OXL\).
Put

\[
a=x-fY>0,\qquad
U=(1-h)(cY-\rho)+Y(hf-s),
\qquad T=cY+s-\rho>0.
\]

The first and third inequalities in (5) give

\[
y\ge\frac{s(1+Y)}a.                                   \tag{6}
\]

Combining the first inequality in (5) with (4) gives

\[
(c-x+fY)y\le(c-s)Y-\rho.
\]

Its coefficient on the left is positive, since \(x<c\).
Substitution of (6) and multiplication by \(a>0\) therefore
give the first necessary inequality

\[
\boxed{G_0:=aT-sc(1+Y)\ge0.}                           \tag{7}
\]

Next use the second inequality in (5). Multiplying it by \(Y>0\)
and using the upper bound for \(Y\ell\) from (4) gives

\[
\{(1-h)(c-x)+fY\}y\le U.
\]

Again the coefficient of \(y\) is positive. Thus (6) gives

\[
\boxed{G_1:=aU-s(1+Y)\{(1-h)(c-x)+fY\}\ge0.}           \tag{8}
\]

In particular \(U>0\), because both \(a\) and the subtracted
term in (8) are positive.

The actual \(CDX\) cost, with \(d\le h\) and \(x<c\), says

\[
s\le(1-c)Y+d(c-x)\le(1-c)Y+h(c-x).
\]

Consequently

\[
x\le x_*:=c+\frac{(1-c)Y-s}{h}.                        \tag{9}
\]

Both (7) and (8) are preserved when \(x\) is increased to \(x_*\),
with all other parameters fixed. Their respective derivatives in \(x\)
are \(T>0\) and \(U+s(1+Y)(1-h)>0\). This is a scalar
replacement, and requires no actual point motion.

## 3. A positive quadratic combination is uniformly negative

Evaluate (7)--(8) at \(x=x_*\), and form

\[
W=G_1+\frac54G_0\ge0.
\]

For compact coefficients write

\[
U_0=(1-h)(cY-\rho)-sY,
\]

\[
\begin{aligned}
B&=hx_*-U_0-s(1+Y)-\frac54T,\\
C_0&=x_*\left(U_0+\frac54T\right)
 -s(1+Y)\left\{(1-h)(c-x_*)+\frac54c\right\}.
\end{aligned}
\]

The exact quadratic identity is

\[
W=-hY^2f^2+YBf+C_0.
\]

Since \(h,Y>0\), its maximum over all real \(f\) is

\[
\frac{P(h,c,Y)}{4h},\qquad P=B^2+4hC_0.                \tag{10}
\]

The apparent \(h\) denominator in \(x_*\) cancels in \(P\).
It is a rational polynomial of degree two in each of \(h,c,Y\).
Equation (1) implies the independent bounds

\[
\rho\le h,c,Y\le1.
\]

The following fixed 27-coefficient certificate shows that \(P\)
is negative on this entire cube. Substitute

\[
h=\rho+(1-\rho)H,\quad
c=\rho+(1-\rho)C,\quad
Y=\rho+(1-\rho)V,
\qquad 0\le H,C,V\le1.
\]

If the resulting power coefficients are \(a_{ijk}\), its
degree-\((2,2,2)\) tensor Bernstein coefficient at index \((a,b,c)\)
is

\[
b_{abc}=\sum_{i\le a,\,j\le b,\,k\le c}
a_{ijk}\frac{\binom ai\binom bj\binom ck}
              {\binom2i\binom2j\binom2k}.
\]

Exact rational expansion gives

\[
\boxed{\max_{0\le a,b,c\le2}b_{abc}
=-\frac{124631}{12278016}<0.}                          \tag{11}
\]

The diagnostic below verifies all 27 coefficients directly from (10).
The nonnegative Bernstein basis functions sum to one, so (11) gives
\(P<0\) throughout the cube. Equation (10) now implies \(W<0\),
contradicting (7)--(8). This proves Theorem 1.

## 4. Exhaustive assembly of the two-lower C1 family

Suppose exactly two free points are in \(OHC\), and call them
\(L,M\). The other two are above \(HC\).

1. [C1_TWO_LOWER_SIDE_CAP.md](C1_TWO_LOWER_SIDE_CAP.md) excludes
   every free point in either exterior side cap beyond \(HF\) or
   \(CD\). Hence each other point is inside the original anchor
   pentagon or in the exterior top cap beyond \(DF\).
2. If both are inside the anchor pentagon, the actual hull is that
   pentagon. The complete exact-pentagon theorem in
   [C1_MIXED_PENTAGON.md](C1_MIXED_PENTAGON.md), with its preceding
   central and mixed reductions, excludes this case.
3. If both are in the top cap,
   [C1_TOP_CAP_CONVEX_PAIR.md](C1_TOP_CAP_CONVEX_PAIR.md) excludes
   their convex four-point upper hull, and
   [C1_TOP_CAP_TRIANGULAR_PAIR.md](C1_TOP_CAP_TRIANGULAR_PAIR.md)
   excludes the complementary triangular upper hull. These are the
   exhaustive hull alternatives for the two cap points and \(D,F\).
4. If exactly one point \(X\) is in the top cap,
   [C1_TOP_CAP_SIDE_EARS.md](C1_TOP_CAP_SIDE_EARS.md) puts the other
   point \(P\) in \(OHCX\). The
   [radial-split theorem](C1_TOP_CAP_RADIAL_SPLIT.md) places \(L,M\)
   on opposite sides of \(OX\). Reflecting if needed gives (1).
   [C1_TOP_CAP_OF_SPLIT.md](C1_TOP_CAP_OF_SPLIT.md) then puts both
   lower points inside \(OCF\).
5. In this last common-cell placement the lower-pair line has exactly
   four alternatives: \(O,C\) on the same side; \(O\) isolated;
   \(C\) isolated; or the middle sign pattern (1) of the containment
   note. The canonical sign implication in Section 1 of
   [ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md) gives this
   exhaustive list. The two isolated cases are excluded in
   [C1_TOP_CAP_COMMON_CELL.md](C1_TOP_CAP_COMMON_CELL.md), and the
   middle case in
   [C1_TOP_CAP_CONTAINMENT_PAIR.md](C1_TOP_CAP_CONTAINMENT_PAIR.md).
   Theorem 1 above excludes the final same-side case.

Incidence on an actual dividing line would give a zero actual triangle.
Thus the strict alternatives exhaust all competitive configurations.
Every placement has been contradicted, proving Theorem 2.

## Verification

Run `python docs/proof/nine/check_c1_two_lower_completion.py`.
The checker verifies the two elimination identities, both monotone
coefficients, the weighted quadratic, and all 27 exact Bernstein
coefficients. The containment argument and exhaustive assembly are
stated explicitly above.
