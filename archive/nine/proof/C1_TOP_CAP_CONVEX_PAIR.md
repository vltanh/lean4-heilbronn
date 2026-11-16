# Two C1 top-cap points cannot form a convex quadrilateral with the cap base

Use the C1 anchors

\[
O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
D=(1,d),\quad F=(f,1),
\qquad 0<d\le h\le1,\quad0<f\le c\le1.
\]

Assume a competitive nine-point configuration: its minimum actual
triangle area is at least \(A_0\). In particular every unsigned doubled
actual triangle area is at least

\[
s=\frac8{73}<2A_0.
\]

Suppose two actual points are inside \(OHC\), and the remaining two,
\(X,Y\), lie beyond \(DF\) in its upper cap
\(\operatorname{conv}\{D,F,(1,1)\}\). Write

\[
K=4+2\sqrt3,\qquad \rho=\frac{49}{60}<Ks.
\]

The two-interior-point triangle theorem gives \(hc\ge Ks>\rho\).
The rational comparisons are recorded in
[C1_TWO_LOWER_SIDE_CAP.md](C1_TWO_LOWER_SIDE_CAP.md).

**Theorem.** The line \(XY\) separates \(D,F\). Equivalently, the
complete placement in which \(D,F,X,Y\) form a convex quadrilateral
is impossible. Thus, if both remaining points are in the top cap, one
must be inside the triangle formed by the other and \(D,F\).

The lower points enter this proof only through \(hc\ge Ks\). We
prove the stronger scalar statement with the relaxed hypothesis
\(hc\ge\rho\).

## 1. The three cap areas

For signed doubled areas \([ABC]=\det(B-A,C-A)\), put

\[
\begin{aligned}
A&=[CDF]=1-c+d(c-f),\\
U&=[HDF]=1-h+f(h-d),\\
\Delta&=df-(1-h)(1-c),\\
W&=A+U+\Delta=1-(h-d)(c-f).
\end{aligned}                                                    \tag{1}
\]

The actual anchor triangles give \(A,U,hf,cd\ge s\).
We also have

\[
\boxed{\Delta>0.}                                               \tag{2}
\]

Indeed, put \(p=hc\) and \(r=\sqrt p\ge\sqrt\rho>9/10\).
The arithmetic-geometric mean inequality gives

\[
p(1-h)(1-c)\le r^2(1-r)^2
\le\frac{81}{10000}<s^2\le hc\,df.
\]

Here \(r(1-r)\) decreases for \(r\ge9/10\); division by
\(hc>0\) proves (2).

For any top-cap point \(Z=(x,y)\), the three positive signed costs are

\[
\begin{aligned}
a_Z&=-[HFZ]=(1-h)x-f(y-h),\\
b_Z&=[CDZ]=(1-c)y+d(c-x),\\
r_Z&=-[DFZ]=(1-d)x+(1-f)y-1+df.
\end{aligned}
\]

They are all at least \(s\). The first two signs follow by testing
the three cap vertices against the lines \(HF,CD\); the third is
the assumed side of \(DF\). An exact affine identity is

\[
\boxed{A a_Z+U b_Z+\Delta r_Z=AU.}                              \tag{3}
\]

Because the three coefficients in (3) are positive, the halfplanes
\(a_Z,b_Z,r_Z\ge0\) bound a triangle. Its vertices on \(r_Z=0\)
are precisely \(D,F\); the third vertex \(Z_0\) is the intersection
of \(HF,CD\). Its doubled area is

\[
S=[DFZ_0]_{\rm unsigned}=\frac{AU}{\Delta}.                       \tag{4}
\]

One can use an area-preserving affine map, with a possible orientation
reversal, to write \(D=(0,0),F=(1,0),Z_0=(0,S)\). Then for a point
\((q,t)\), equation (3) is exactly its barycentric decomposition:

\[
\frac{a_Z}{U}=1-q-\frac tS,\qquad
\frac{b_Z}{A}=q,\qquad r_Z=t.
\]

The constraints \(a_Z,b_Z\ge s\) therefore give

\[
\frac sA\le q\le1-\frac sU-\frac tS.                            \tag{5}
\]

## 2. A necessary discriminant for the same-side pair line

Suppose \(D,F\) are on the same side of \(XY\). In the coordinates
above, write \(X=(p,y),Y=(q,t)\), with \(y\ge t>0\), and abbreviate
\(\ell=s/A\), \(m=1-s/U\). Both points satisfy (5).

The doubled determinants with the base endpoints are

\[
d_D=pt-yq,\qquad d_F=d_D+y-t.
\]

If both are positive, \(d_D\ge s\), and

\[
d_D\le t(m-y/S)-y\ell
\le t(m-\ell-t/S).
\]

If both are negative, \(-d_F\ge s\), and

\[
-d_F\le y(m-t/S-1)+t(1-\ell)
\le t(m-\ell-t/S).
\]

In the first inequality we used \(y\ge t\) and \(\ell>0\);
in the second we also used \(m<1\). Thus either sign forces

\[
t\left(1-\frac sA-\frac sU-\frac tS\right)\ge s.
\]

The coefficient of \(t\) is positive, and the quadratic discriminant
is nonnegative. Substituting (4), these two necessary conditions are

\[
\boxed{B:=AU-s(A+U)>0,\qquad
G:=B^2-4sAU\Delta\ge0.}                                         \tag{6}
\]

We exclude (6) using only the anchor constraints and \(hc\ge\rho\).

## 3. Decreasing \(h,c\) reduces the problem to \(hc=\rho\)

First, (6) forces

\[
A+U>4s,                                                        \tag{7}
\]

because \(s(A+U)<AU\le(A+U)^2/4\).
This excludes two ranges of the fixed product \(df\):

\[
\boxed{\frac{s^2}{\rho}<df<\rho.}                              \tag{8}
\]

For the upper range, \(A\le1-f\), \(U\le1-d\), so if
\(df\ge\rho\) then

\[
A+U\le2-d-f\le2-2\sqrt\rho<\frac15<4s,
\]

contradicting (7).

For the lower range put \(p=hc\), \(u=hf\), \(v=cd\).
Since \(u,v\ge s\), the inequality \((u-s)(v-s)\ge0\) gives
\(u+v\le p df/s+s\). Consequently, if \(df\le s^2/\rho\),

\[
\begin{aligned}
A+U
&\le2-2\sqrt p+s+df(p/s-2)\\
&\le2-2\sqrt p+s+sp/\rho-2s^2/\rho\\
&\le2-2\sqrt\rho+2s-2s^2/\rho
<\frac15+2s<4s.
\end{aligned}
\]

The second line uses \(p/s-2>0\). Its expression decreases for
\(p\in[\rho,1]\), since its derivative is
\(-1/\sqrt p+s/\rho<0\). This proves (8).

Keep \(d,f\) fixed and decrease \(h,c\), preserving

\[
h\ge h_{\min}:=\max(d,s/f),\qquad
c\ge c_{\min}:=\max(f,s/d),\qquad hc\ge\rho.
\]

The product of the lower endpoints is

\[
h_{\min}c_{\min}=
\begin{cases}df,&df\ge s,\\s^2/(df),&df\le s,\end{cases}
\]

which is strictly less than \(\rho\) by (8). A continuous decreasing
path from \((h,c)\) toward these endpoints therefore reaches
\(hc=\rho\). Throughout that path, \(A,U\) increase and
\(\Delta\) decreases. Also \(\Delta>0\) continues to follow
from Section 1, since \(hf,cd\ge s\) and \(hc\ge\rho\).

These changes preserve (6). Decreasing \(\Delta\) plainly preserves
it. To see the assertion for increasing \(A\), note that \(B>0\)
implies \(U>s\). At fixed \(U,\Delta>0\), the polynomial \(G\)
in \(A\) has positive leading coefficient \((U-s)^2\), and is
negative at \(A=sU/(U-s)\), where \(B=0\). Thus a point with
\(B>0,G\ge0\) lies beyond its larger root, and increasing \(A\)
preserves both inequalities. The argument for increasing \(U\) is
identical. This establishes the reduction.

At \(hc=\rho\), retain \(u=hf,v=cd\). Then

\[
\begin{aligned}
A&=1-\rho/h+v-uv/\rho,\\
U&=1-h+u-uv/\rho,\\
\Delta&=uv/\rho-1+h+\rho/h-\rho,\\
\rho&\le h\le1,\qquad s\le u,v\le\rho.
\end{aligned}                                                   \tag{9}
\]

Reflection across the square diagonal exchanges \(h,c\), exchanges
\(u,v\), and exchanges \(A,U\), preserving \(B,G\). We may
therefore assume \(h\le c\), so

\[
\boxed{\rho\le h\le\sqrt\rho<\frac{113}{125},\qquad
s\le u,v\le\rho.}                                             \tag{10}
\]

The last strict comparison follows from
\((113/125)^2-\rho=103/187500>0\).

## 4. A finite exact polynomial certificate on the rational box

Here is an explicit rational certificate that (6) has no solution in
the larger rectangular box (10), with upper endpoint \(113/125\).
Use unit-cube variables \(H,U_0,V\):

\[
h=\rho+(113/125-\rho)H,\quad
u=s+(\rho-s)U_0,\quad v=s+(\rho-s)V.
\]

After this substitution define the polynomials

\[
P(H,U_0,V)=hB,\qquad Q(H,U_0,V)=h^2G.
\]

Their tensor degrees are respectively \((2,2,2)\) and \((4,4,4)\).
The positive factors \(h,h^2\) preserve the signs in (6).

The following binary paths partition the entire unit cube. At depth
\(0,1,2,3,\ldots\), bisect the coordinate
\(V,H,U_0,V,\ldots\). A digit 0 selects its lower half and a
digit 1 its upper half. A label P means every tensor Bernstein
coefficient of \(P\) on that box is nonpositive; a label Q means
every tensor Bernstein coefficient of \(Q\) is strictly negative.

| Path | Certificate | Path | Certificate |
|---|---|---|---|
| `000000000` | P | `000000001` | P |
| `00000001` | Q | `0000001` | Q |
| `00000100` | P | `000001010` | Q |
| `000001011` | P | `0000011` | Q |
| `00001` | Q | `0001` | Q |
| `0010000` | P | `00100010` | P |
| `00100011` | Q | `001001` | P |
| `0010100` | P | `0010101` | Q |
| `001011` | P | `001100` | Q |
| `001101` | P | `001110` | Q |
| `0011110` | P | `00111110` | P |
| `00111111` | Q | `010` | Q |
| `011000` | Q | `011001` | P |
| `01101` | Q | `0111` | Q |
| `100` | Q | `101000` | Q |
| `101001` | P | `10101` | Q |
| `101100` | Q | `101101` | P |
| `10111` | Q | `11` | Q |

For completeness, if \(p_j\) are the ordinary power coefficients of
a polynomial of tensor degree \(n=(n_1,n_2,n_3)\), its unit-cube
Bernstein coefficients are exactly

\[
b_i=\sum_{j\le i}p_j
\prod_{a=1}^3\frac{\binom{i_a}{j_a}}{\binom{n_a}{j_a}}.           \tag{11}
\]

The polynomial is a convex combination of these coefficients on the
cube. Midpoint de Casteljau subdivision gives the coefficients on each
listed box using only addition and division by two. Multiplying all
coefficients of a polynomial by a common positive denominator, and
clearing the powers of two at each subdivision, permits the entire
calculation with integers.

The companion `check_c1_top_cap_convex_pair.py` constructs \(P,Q\)
from (9), computes (11) exactly, and verifies all 36 listed leaves.
It also checks that these leaves form a complete binary partition;
there is no search or unbounded subdivision in the checker. Maximum
depth is nine. Every leaf contradicts either \(B>0\) or \(G\ge0\).
This proves the required scalar exclusion.

Sections 1--3 reduce every same-side pair line to this excluded scalar
system, proving the theorem. The case with one upper point inside
\(DF\) together with the other upper point is not excluded here.
