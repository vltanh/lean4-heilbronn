# Complete exclusion of unbalanced right support cell III

## Scope and result

Use the Type-II anchors

\[
D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad B=(b,0),
\qquad0<b\le\tfrac12,\quad0<\lambda<1,
\]
\[
q=1-\lambda,\quad w=1-b,\quad s=\tfrac7{64},
\quad K=4+2\sqrt3.
\]

Suppose every actual doubled triangle area is at least \(s\).
Let the right hull be the quadrilateral \(B,R,S,C\), with its fifth
point in support cell III:

\[
T\in\operatorname{int}(CRS)\cap\operatorname{int}(BCS).
\]

The support-cell correspondence and the elementary right-hull inequalities
are proved in [UNBALANCED_RIGHT_HULL.md](UNBALANCED_RIGHT_HULL.md).

**Theorem 1.** This configuration is impossible, independently of the
positions of the two central points.

Thus **support cell III is excluded in both remaining CE cuts**.
Together with [UNBALANCED_CELL_I.md](UNBALANCED_CELL_I.md), this leaves
only support cell II in the unbalanced nontriangular right-hull branch.

Write \(R=(r,u)\), \(S=(k,t)\), and use the determinant convention
\([XYZ]=\det(Y-X,Z-X)\). Put

\[
U=[BRS],\quad V=[CRS],\quad \delta=[EBR].
\]

These are positive. In cell III, \(U\ge s\), \(V\ge3s\).
As proved at the start of UNBALANCED_CELL_I.md, the right container and
strict quadrilateral order imply \(b<r<k\le1\), \(r>u\), \(u<t<1\).

## 1. Coarse bounds for the lower right vertex

The endpoint-triangle theorem and Section 4.2 of
UNBALANCED_RIGHT_HULL.md give

\[
\frac{13}{100}<b<\frac3{16},\qquad
\frac{13}{16}<w<\frac78.                                \tag{1}
\]

The lower-bound argument in that subsection applies to cell III because
its inequality (5) was proved for both outer support cells. It uses only
\(bq\ge s\) and that ear inequality, not the two-point upper cut.

Normalize the right container by \((X,Y)\mapsto((X-b)/w,Y)\), and put

\[
x=\frac{r-b}{w},\qquad a=\frac{s}{w}.
\]

The occupied upper-ear inequality, equation (3) of that note, is

\[
0\le u\le\psi_a(x):=x+2a-\frac{3a}{1-x}.                 \tag{2}
\]

Here \(1/8<a\le1/K<1/4\). Multiplication by \(1-x>0\)
shows \(x^2-(1-2a)x+a\le0\). Replacing \(a\) by \(1/8\)
strictly decreases this polynomial, so

\[
(x-1/4)(x-1/2)<0,\qquad x<\frac12.                     \tag{3}
\]

Moreover arithmetic-geometric mean gives

\[
\psi_a(x)\le1+2a-2\sqrt{3a}.
\]

The last expression decreases for \(1/8\le a\le1/4\). Thus

\[
\boxed{u<\frac54-\sqrt{\frac32}<\frac1{32}.}             \tag{4}
\]

The final comparison follows from
\(3/2-(39/32)^2=15/1024>0\).

## 2. The bottom parameter must exceed 3/20

Put \(c=b+\lambda w\), \(d=bs/w\).
Since \(\delta=bu+\lambda wx\ge s\), (3)--(4) imply

\[
\lambda w>2s-\frac b{16},\qquad c>2s+\frac{15b}{16}.
\]

Also \(w>13/16\), so \(12d<21b/13\). Therefore

\[
c-12d>2s-\frac{141b}{208}
>2s-\frac{141}{208}\frac3{16}
=\frac{305}{3328}>0.                                   \tag{5}
\]

The estimate (2) gives

\[
\delta\le c x+2d-\frac{3d}{1-x}.
\]

The right side increases throughout \(x\le1/2\), because its derivative
is \(c-3d/(1-x)^2\ge c-12d>0\).
Let \(X\) be the larger zero of \(\psi_a\). This zero exists by
(2), and \(x\le X<1/2\). Increasing \(x\) to \(X\), where
\(\psi_a(X)=0\), gives \(\delta\le\lambda wX\).

Set \(p_*=wX\). It is the larger root of

\[
P(p)=p^2-(w-2s)p+sw.
\]

Since \(bq\ge s\), we have \(\lambda\le1-s/b\), and hence

\[
p_*\ge\frac{s}{\lambda}\ge p_0:=\frac{sb}{b-s}.           \tag{6}
\]

Suppose \(b\le3/20\). Then \(p_0\ge21/52\), whereas the vertex
of \(P\) is at most \((1-3s)/2=43/128<21/52\).
Together with (6), this would imply \(P(p_0)\le0\). But exact
substitution gives

\[
\frac{(b-s)^2}{s}P(p_0)
=\frac7{4096}(256b^2-85b+7)>0.                          \tag{7}
\]

Indeed, with \(v=3/20-b\ge0\), its right side is

\[
\frac7{409600}(25600v^2+820v+1)>0.
\]

This contradiction proves

\[
\boxed{b>\frac3{20},\qquad w<\frac{17}{20}.}             \tag{8}
\]

## 3. Both top triangle areas are below 3/4

The lower-ear area and (4) give

\[
s\le\delta<\frac b{32}+
 \left(1-\frac sb\right)(r-b),
\]

so

\[
r>R_0(b):=b+\frac{s-b/32}{1-s/b}.
\]

On \(s<b<3/16<2s\), this function decreases:

\[
R_0'(b)=\frac{31}{32}
 \left(1-\frac{s^2}{(b-s)^2}\right)<0.
\]

Consequently

\[
\boxed{r>R_0(3/16)=\frac{279}{640}>\frac{16}{37}.}        \tag{9}
\]

Put \(v_R=1-u\), \(v_S=1-t\), and \(J_D=[DRS]\).
These positive quantities satisfy

\[
J_D=kv_R-rv_S,\qquad V=J_D+v_S-v_R.                     \tag{10}
\]

By (3), \(r-b=wx<w/2<7/16\). Since
\(U=(r-b)t-u(k-b)\ge s\), we obtain
\(t\ge s/(r-b)>1/4\), or \(v_S<3/4\).

On the other hand, the actual upper-ear area gives
\(V=(1-r)v_S-v_R(1-k)\ge3s\).
Thus \(rv_S\ge3sr/(1-r)>1/4\), using (9).
Equation (10) and \(kv_R\le1\) then give \(J_D<3/4\).
Together with (4),

\[
\boxed{v_S<\frac34,\qquad J_D<\frac34,\qquad
v_R>\frac{31}{32}.}                                    \tag{11}
\]

## 4. A uniform upper bound for the occupied ear

The right support normalization, with area scale \(\Omega\le w\),
gives \(\sqrt U+\sqrt V\le\sqrt\Omega\le\sqrt w\).
Since \(U\ge s\), (8) gives

\[
\sqrt V<\frac{461}{500}-\frac{21}{64}
=\frac{4751}{8000}.
\]

The comparisons used here are exact:

\[
(461/500)^2-\frac{17}{20}=\frac{21}{250000}>0,\qquad
s-(21/64)^2=\frac7{4096}>0.
\]

Therefore

\[
\boxed{V<V_0:=\frac{22572001}{64000000}.}                \tag{12}
\]

## 5. The actual triangle DST is too small in either orientation

The barycentric weights of \(T\) in \(CRS\) are each at least \(s/V\).
The affine signed determinant \([DSX]\) has values \(v_S,-J_D,0\)
at \(C,R,S\), respectively. Its positive and negative values at
\(T\) are consequently bounded by

\[
[DST]\le v_S-\frac{s(2v_S+J_D)}V,\qquad
-[DST]\le J_D-\frac{s(2J_D+v_S)}V.
\]

Let \(M=\max(v_S,J_D)\), \(m=\min(v_S,J_D)\). These inequalities
and (10) imply

\[
\begin{aligned}
|[DST]|
&\le M-\frac{s(2M+m)}V\\
&=M\left(1-\frac sV\right)-s-\frac{sv_R}{V}.
\end{aligned}
\]

The coefficient of \(M\) is positive, because \(V\ge3s\).
Use (11), and then (12), to conclude

\[
\begin{aligned}
|[DST]|
&<\frac34-s-\frac{55s}{32V_0}\\
&=\frac{155452041}{1444608064}\\
&=s-\frac{1275983}{722304032}<s.
\end{aligned}                                           \tag{13}
\]

This contradicts the assumed lower bound on every actual doubled area.
It proves Theorem 1 without using either central point. \(\square\)

## Verification

[check_unbalanced_cell_iii.py](check_unbalanced_cell_iii.py) verifies
the determinant identities, the increasing lower-ear envelope,
the exact quadratic obstruction (7), the monotone bound (9), and
all constants in the final barycentric contradiction.
