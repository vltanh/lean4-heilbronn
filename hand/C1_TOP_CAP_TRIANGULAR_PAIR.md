# Complete exclusion of two C1 points beyond the top edge

Use the same C1 anchors and threshold as in
[C1_TOP_CAP_CONVEX_PAIR.md](C1_TOP_CAP_CONVEX_PAIR.md):

\[
O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\qquad 0<d\le h\le1,\quad0<f\le c\le1,
\]

\[
s=\frac8{73}<2A_0,\qquad \rho=\frac{49}{60}<(4+2\sqrt3)s.
\]

Assume a competitive nine-point configuration, with two actual points
inside \(OHC\). The two-interior-point triangle theorem gives
\(hc>(49/60)=\rho\).

**Theorem.** The two remaining points cannot both lie beyond \(DF\)
in the cap \(\operatorname{conv}\{D,F,(1,1)\}\).

The companion already excludes the convex-quadrilateral hull of
\(D,F\) and the two upper points. This note excludes the complementary
triangular hull. Thus the theorem concerns the entire two-point top-cap
placement, including either order of the two points and every sign of
the area they form with \(O\).

## 1. Eliminate the inner point using its area with O

If the four upper points have a triangular hull, name the cap points
\(X,Y\) so that \(X\) is strictly inside \(DFY\). The vertices
\(D,F\) must both be hull vertices because \(X,Y\) are on the
same strict side of their line. No equality on a hull edge is possible
under the positive minimum-area hypothesis.

Put \(Y=(x,y)\), and define

\[
T=1-df,\qquad a=y-dx>0,\qquad b=x-fy>0,
\qquad r=-[DFY]=a+b-T>0.                               \tag{1}
\]

Both \(a,b\) are positive because \(x>f\), \(y>d\) and
\(x,y\le1\). Write the barycentric coordinates of \(X\) in
\(DFY\) as \(\lambda_D,\lambda_F,\lambda_Y\). Its three actual
subtriangles give

\[
\lambda_D,\lambda_F,\lambda_Y\ge s/r,\qquad r\ge3s.   \tag{2}
\]

Moreover

\[
[OXY]=\lambda_D a-\lambda_F b.
\]

Reflection in the square diagonal exchanges \(D,F\), exchanges
\(a,b\), and reverses this signed determinant. It preserves every
hypothesis, so we may assume \([OXY]\ge s\). Since
\(\lambda_D\le1-2s/r\), (2) yields

\[
s\le a(1-2s/r)-bs/r,
\qquad
\boxed{a(r-s)\ge s(2r+T).}                            \tag{3}
\]

Here the second inequality uses \(b=r+T-a\). In particular its
factor \(r-s\) is positive.

## 2. Four necessary scalar inequalities

Retain the anchor expressions

\[
A=1-c+d(c-f),\quad U=1-h+f(h-d),\quad
\Delta=df-(1-h)(1-c)>0.                               \tag{4}
\]

Section 1 of the companion proves the last sign from
\(hc\ge\rho\), \(hf,cd\ge s\). For the point \(Y\), put
\(\alpha=-[HFY]\ge s\), \(\beta=[CDY]\ge s\).
The same three-area identity gives

\[
A\alpha+U\beta+\Delta r=AU,
\]

so

\[
\boxed{F_0:=AU-s(A+U)-\Delta r\ge0.}                  \tag{5}
\]

The exact identity

\[
fr+(1-f)\alpha=U(x-f)
\]

and \(x\le1\) give a second necessary inequality:

\[
\boxed{F_1:=(1-f)(U-s)-fr\ge0.}                       \tag{6}
\]

Next, \(a+db=Ty\le T\), so

\[
(1-d)a\le T(1-d)-dr.
\]

Multiply by the positive number \(r-s\) and use (3). As
\(d<1\), this proves

\[
\boxed{F_2:=\{T(1-d)-dr\}(r-s)
-s(1-d)(2r+T)\ge0.}                                  \tag{7}
\]

Finally, \(\alpha=b-h(x-f)\) and
\(Tx=b+fa\). Substituting \(b=r+T-a\) gives

\[
T\alpha=U(T-a)+(T-h)r.
\]

Since \(\alpha\ge s\) and \(U>0\),

\[
Ua\le T(U-s)+(T-h)r.
\]

Combine this with (3) to obtain

\[
\boxed{F_3:=\{T(U-s)+(T-h)r\}(r-s)
-sU(2r+T)\ge0.}                                      \tag{8}
\]

These four inequalities retain the two square-side bounds as well as
the three actual cap-area costs and the actual \(OXY\) cost. No
condition on the location of the inner point remains in them.

## 3. Reduce to four variables in a rational box

Equation (5), \(\Delta>0\), and \(r\ge3s\) imply

\[
AU-s(A+U)>0.
\]

Consequently the argument in Section 3 of the companion applies:
\(s^2/\rho<df<\rho\), and at fixed \(d,f\) we can decrease
\(h,c\), preserving \(hf,cd\ge s\), until \(hc=\rho\).
The proof of these product restrictions and the existence of the path
uses only this positive bracket, rather than its later discriminant.

This path preserves all the conditions used here. Keep \(D,F,X,Y,O\)
fixed. For either cap point \(Z=(x_Z,y_Z)\),

\[
-[HFZ]=x_Z-fy_Z-h(x_Z-f),\qquad
[CDZ]=y_Z-dx_Z-c(y_Z-d).
\]

Since \(x_Z>f\), \(y_Z>d\), decreasing \(h,c\) increases
these costs. The unchanged barycentric costs in \(DFY\), the
unchanged signed \(OXY\) cost, and the unchanged square constraints
therefore still imply (5)--(8). This is a relaxation of the necessary
conditions, not a claim that all triangles of the nine-point
configuration retain their areas along the path.

Set \(u=hf\), \(v=cd\). At \(hc=\rho\),

\[
\begin{gathered}
c=\rho/h,\qquad d=vh/\rho,\qquad f=u/h,
\qquad T=1-uv/\rho,\\
A=1-\rho/h+v-uv/\rho,
\qquad U=1-h+u-uv/\rho,\\
\Delta=uv/\rho-1+h+\rho/h-\rho.
\end{gathered}                                                   \tag{9}
\]

Since \(d,f\ge s\), the cap height also satisfies

\[
r\le(1-d)(1-f)\le(1-s)^2.
\]

Thus every putative triangular placement gives a solution of
\(F_0,F_1,F_2,F_3\ge0\) in the rational box

\[
\boxed{\rho\le h\le1,\quad s\le u,v\le\rho,
\quad3s\le r\le(1-s)^2.}                              \tag{10}
\]

We do not make a second reflection to shorten the \(h\) interval:
the reflection in Section 1 was already used to choose the sign of
\([OXY]\).

## 4. Fixed exact certificate on the four-variable box

Map the unit cube with coordinates \(H,U_0,V,R\) to (10):

\[
\begin{aligned}
h&=\rho+(1-\rho)H,\\
u&=s+(\rho-s)U_0,\qquad v=s+(\rho-s)V,\\
r&=3s+\{(1-s)^2-3s\}R.
\end{aligned}
\]

Use (9) to form the four polynomials

\[
P_0=hF_0,\qquad P_1=hF_1,\qquad P_2=F_2,\qquad P_3=F_3.
\]

The multipliers are positive. Their tensor degrees in
\((H,U_0,V,R)\) are respectively

\[
(2,2,2,1),\quad(2,2,1,1),\quad(1,1,2,2),\quad(1,2,2,2).
\]

The following fixed binary paths partition the whole unit cube. At
depths \(0,1,2,3,4,\ldots\), bisect the coordinate
\(R,V,U_0,H,R,\ldots\). A digit 0 chooses the lower half and a
digit 1 the upper half. The label \(i\) asserts that every tensor
Bernstein coefficient of \(P_i\) on the given box is strictly
negative.

| Path | Label | Path | Label |
|---|---|---|---|
| `00000000` | 0 | `00000001` | 0 |
| `0000001` | 0 | `00000100000000` | 0 |
| `00000100000001` | 3 | `0000010000001` | 0 |
| `000001000001` | 0 | `00000100001` | 0 |
| `0000010001000` | 3 | `000001000100100000` | 0 |
| `000001000100100001` | 2 | `00000100010010001` | 0 |
| `0000010001001001` | 0 | `000001000100101` | 0 |
| `00000100010011` | 2 | `000001000101` | 3 |
| `00000100011` | 0 | `000001001` | 0 |
| `00000101` | 0 | `0000011` | 0 |
| `000010` | 0 | `000011` | 0 |
| `0001000` | 0 | `00010010` | 0 |
| `00010011000` | 3 | `0001001100100` | 3 |
| `0001001100101` | 0 | `000100110011` | 3 |
| `0001001101` | 3 | `000100111` | 0 |
| `000101` | 3 | `0001100` | 0 |
| `0001101` | 0 | `000111` | 0 |
| `0010` | 0 | `00110000` | 0 |
| `0011000100000` | 3 | `0011000100001` | 0 |
| `0011000100010` | 3 | `0011000100011` | 1 |
| `00110001001` | 1 | `0011000101` | 3 |
| `001100011` | 1 | `0011001` | 1 |
| `001101` | 3 | `00111` | 0 |
| `01` | 2 | `1000` | 0 |
| `1001` | 0 | `101` | 0 |
| `11` | 0 | | |

The power-to-Bernstein formula is equation (11) of the companion,
with four coordinates in the product. The Bernstein basis is
nonnegative and sums to one, so each row proves \(P_i<0\) throughout
its box, contradicting \(F_i\ge0\).

The checker `check_c1_top_cap_triangular_pair.py` computes all
coefficients with exact rational arithmetic, clears only positive
denominators, and follows precisely these 51 fixed leaves. It checks
that they are a complete partition and that the indicated coefficients
are all negative. Its maximum depth is 18; it performs no search or
adaptive subdivision.

This excludes the triangular upper hull. Together with the convex
upper-hull exclusion, it proves the theorem. For two lower points in
\(OHC\), the larger-hull work is reduced to exactly one point
in the top cap, paired with one point inside the original anchor
pentagon. That placement is completely excluded in
[C1_TWO_LOWER_COMPLETION.md](C1_TWO_LOWER_COMPLETION.md).
The separate complete proofs for zero and one lower points are
[C1_ZERO_LOWER.md](C1_ZERO_LOWER.md) and Section 6 of
[C1_ONE_LOWER_MIXED_CAPS.md](C1_ONE_LOWER_MIXED_CAPS.md).
