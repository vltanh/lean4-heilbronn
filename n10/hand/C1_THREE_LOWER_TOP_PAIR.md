# Three lower C1 points: the convex two-top-cap branch is impossible

Use the C1 actual anchors
\(O=(0,0),H=(0,h),C=(c,0),D=(1,d),F=(f,1)\), with
\(d\le h\le1\), \(f\le c\le1\), and put
\(s=93/1000\), \(\rho=823/1000\).
Assume every actual unsigned doubled triangle area is at least \(s\).

**Theorem.** If three actual points are inside \(OHC\), and two further
actual points \(X,Y\) are in the exterior top cap
\(DF(1,1)\), then the line \(XY\) strictly separates \(D,F\).
Consequently the entire branch in which \(D,F,X,Y\) have convex
quadrilateral hull is impossible. In the remaining triangular-hull
branch, one cap point lies strictly inside the actual triangle formed
by the other and \(D,F\). This note does not exclude that remaining
branch.

The proof actually uses the three lower points only through
\(hc\ge Js>\rho\), where \(J=(11+3\sqrt5)/2\). It proves a scalar
statement for all anchor parameters with \(hc\ge\rho\). The exact
polynomial decompositions in Section 4 use one rational box and no
subdivision or configuration search.

## 1. A positive cap-area identity

Write all areas doubled and put

\[
\begin{aligned}
 A&=D(C,D,F)=1-c+d(c-f),\\
 U&=D(H,D,F)=1-h+f(h-d),\\
 \Delta&=df-(1-h)(1-c).
\end{aligned}
 \tag{1}
\]

The actual anchor triangles give \(A,U,hf,cd\ge s\), and
\(A\le1-f\), \(U\le1-d\). We first verify \(\Delta>0\).
For \(z=\sqrt{hc}\ge\sqrt\rho>9/10\), arithmetic-geometric mean
and monotonicity of \(z^2(1-z)^2\) on \([9/10,1]\) give

\[
 hc(1-h)(1-c)\le z^2(1-z)^2
 \le\frac{81}{10000}<s^2\le(hf)(cd)=hc\,df.
 \tag{2}
\]

Division by \(hc>0\) proves the assertion.
For a top-cap point \(Z\), put

\[
 a_Z=-D(H,F,Z),\quad b_Z=D(C,D,Z),\quad r_Z=-D(D,F,Z).
\]

All three are at least \(s\): the first two signs follow by testing
the three top-cap vertices against \(HF,CD\), and the third is the
cap condition. Expansion gives the affine identity

\[
 A a_Z+U b_Z+\Delta r_Z=AU.
 \tag{3}
\]

The three coefficients are positive. Thus the corresponding three
nonnegative half-planes form a triangle with actual vertices \(D,F\)
and a virtual third vertex \(Z_0=HF\cap CD\). Its doubled area is
\(S=AU/\Delta\). After an area-preserving affine change of coordinates,
write \(D=(0,0),F=(1,0),Z_0=(0,S)\). For a point \((q,t)\),
(3) becomes its barycentric decomposition:

\[
 a_Z/U=1-q-t/S,\qquad b_Z/A=q,\qquad r_Z=t.
\]

In particular every actual cap point satisfies

\[
 \ell:=s/A\le q\le m-t/S,\qquad m:=1-s/U<1.
 \tag{4}
\]

## 2. A same-side cap-pair line would require a nonnegative discriminant

Suppose \(D,F\) lie on the same side of \(XY\). Label the two
points in the preceding coordinates as \(X=(p,y),Y=(q,t)\), with
\(y\ge t>0\). Their signed determinants at the base endpoints are

\[
 d_D=pt-yq,\qquad d_F=pt-yq+y-t.
\]

If both are positive, (4) gives

\[
 s\le d_D\le t(m-y/S)-y\ell
 \le t(m-\ell-t/S).
\]

If both are negative, it instead gives

\[
 s\le-d_F\le y(m-t/S-1)+t(1-\ell)
 \le t(m-\ell-t/S).
\]

For the final inequalities use \(y\ge t\), \(\ell>0\), and
\(m<1\). Hence the coefficient \(1-s/A-s/U\) is positive and
the quadratic in \(t\) has nonnegative discriminant. Equivalently,

\[
 B:=AU-s(A+U)>0,\qquad
 G:=B^2-4sAU\Delta\ge0.
 \tag{5}
\]

## 3. Reduction to one rational anchor box

Equation (5) forces \(A+U>4s\), since
\(s(A+U)<AU\le(A+U)^2/4\). We claim

\[
 s^2/\rho<df<\rho.
 \tag{6}
\]

The upper range \(df\ge\rho\) would imply
\(A+U\le2-d-f\le2-2\sqrt\rho<2s\). Here
\(\rho>(1-s)^2\) is an exact rational comparison.
For the lower range put \(z_0=hc\), \(u=hf\), \(v=cd\).
From \((u-s)(v-s)\ge0\) one obtains
\(u+v\le z_0df/s+s\). Consequently \(df\le s^2/\rho\) implies

\[
\begin{aligned}
 A+U&\le2-2\sqrt{z_0}+s+df(z_0/s-2)\\
 &\le2-2\sqrt{z_0}+s+sz_0/\rho-2s^2/\rho\\
 &\le2-2\sqrt\rho+2s-2s^2/\rho<4s.
\end{aligned}
\]

The expression in the second line decreases for \(\rho\le z_0\le1\),
because \(-1/\sqrt{z_0}+s/\rho<0\). This proves (6).

Keep \(d,f\) fixed, and decrease \(h,c\) while preserving

\[
 h\ge\max(d,s/f),\qquad c\ge\max(f,s/d),\qquad hc\ge\rho.
\]

The product of the two lower endpoints is \(df\) when \(df\ge s\),
and \(s^2/(df)\) when \(df\le s\). By (6) it is strictly below
\(\rho\). A continuous decreasing path therefore reaches \(hc=\rho\).
Along it \(A,U\) increase, \(\Delta\) decreases, and (2) continues
to give \(\Delta>0\).

These changes preserve (5). Decreasing \(\Delta\) preserves it
directly. For increasing \(A\), first note \(U>s\) from \(B>0\).
As a polynomial in \(A\), \(G\) has positive leading coefficient
\((U-s)^2\), and is negative at the zero \(A=sU/(U-s)\) of \(B\).
Thus a point with \(B>0,G\ge0\) lies at or beyond the larger root,
and increasing \(A\) preserves both inequalities. The argument for
increasing \(U\) is the same.

At \(hc=\rho\), retain \(u=hf,v=cd\). Then

\[
\begin{aligned}
 A&=1-\rho/h+v-uv/\rho,\\
 U&=1-h+u-uv/\rho,\\
 \Delta&=uv/\rho-1+h+\rho/h-\rho,\\
 \rho\le h\le1,&\qquad s\le u,v\le\rho.
\end{aligned}
 \tag{7}
\]

The scalar system is invariant under transposition, which interchanges
\(h,c\), \(u,v\), and \(A,U\). Thus arrange \(h\le c\), giving

\[
 \rho\le h\le\sqrt\rho<227/250,
 \qquad s\le u,v\le\rho.
 \tag{8}
\]

This symmetry is internal to the scalar statement, which has no
lower-point labels. It imposes no second ordering on a geometric case.

## 4. Two explicit positive polynomial identities

Define

\[
 E_1=2s(A+U)-AU,\qquad
 E_2=8s\Delta-AU+s(A+U).
 \tag{9}
\]

Both are strictly positive throughout (8). Here are complete fixed
rational identities proving this assertion.
Substitute

\[
 h=\frac{823}{1000}+\frac{17}{200}H,
 \quad u=\frac{93}{1000}+\frac{73}{100}V,
 \quad v=\frac{93}{1000}+\frac{73}{100}W,
 \qquad 0\le H,V,W\le1.
 \tag{10}
\]

The polynomials \(hE_1,hE_2\) have degree at most two in each of
\(H,V,W\). We express them in the tensor Bernstein bases of degrees
\((2,4,5)\) and \((3,2,4)\), respectively. Degree elevation changes
the representation, not either polynomial. Put
\(b_{i,n}(x)=\binom ni x^i(1-x)^{n-i}\). The following tables state
exactly

\[
 hE_e=\frac1{D_e}\sum_{i,j,k}N^{(e)}_{ijk}
 b_{i,n_1}(H)b_{j,n_2}(V)b_{k,n_3}(W).
 \tag{11}
\]

Every displayed integer \(N^{(e)}_{ijk}\) is positive. Each table fixes
\(i\); its rows are increasing \(j\), and columns increasing \(k\),
starting from zero. Since the Bernstein factors are nonnegative and sum
to one, these identities prove \(hE_e>0\). Division by \(h>0\)
proves the claim. There is no subdivision of the box.

### Coefficients for E1

Denominator E1: `4063974000000000`.

Tensor degree: `2 4 5`.

For \(i=0\):

```c1-top-E1-0
141154210846944 103610790396792 83932353244440 82118899389888 98170428833136 132086941574184
202265511355359 90218347700667 26627550033825 11493118354833 44815052663691 126593352960399
293151784026774 147389387420942 57302987150010 22892583213978 44158175612846 121099764346614
413813028861189 275123909557617 175958664592995 116317293967323 96199797680601 115606175732829
564249245858604 473421914110692 382594582362780 291767250614868 200939918866956 110112587119044
```

For \(i=1\):

```c1-top-E1-1
121036620296124 102812371640052 103375660097280 122726485667808 160864848351636 217790748148764
154412993083614 58827360544077 14200397217765 20532103104678 77822478204816 186071522518179
219101927726604 89049754103502 17548704208050 4598778040248 50199975600096 154352296887594
315103424225094 193479552318327 113420581068135 74926510474518 77997340537476 122633071257009
442417482579084 372116755188552 301816027798020 231515300407488 161214573016956 90913845626424
```

For \(i=2\):

```c1-top-E1-2
127241985359904 132139368486912 156746842542720 201064407527328 265092063440736 348829810282944
132277901695344 56005645262712 33194361268680 63844049713248 147954710596416 285526343918184
170163969578784 57723248932912 6708779407440 17120561002368 88958593717696 222222877553424
240900189010224 137292179497512 77290096959000 60893941394688 88103712804576 158919411188664
344486559989664 294712436956512 244938313923360 195164190890208 145390067857056 95615944823904
```

The smallest coefficient is `191615751677/169332250000000>0`.

### Coefficients for E2

Denominator E2: `12191922000000000`.

Tensor degree: `3 2 4`.

For \(i=0\):

```c1-top-E2-0
182793031563618 64146436263063 34824757451508 94827995128953 244156149295398
593743297389138 671603623983783 1144702693967928 2013040507341573 3276617064104718
1540643062148658 2732751791340003 3924860520531348 5116969249722693 6309077978914038
```

For \(i=1\):

```c1-top-E2-1
83096080594758 13509668593878 36323352466998 151537132214118 359151007835238
384631143165528 523265565766473 1070745573874418 2027071167489363 3392242346611308
1240566780980298 2536758507082068 3832950233183838 5129141959285608 6425333685387378
```

For \(i=2\):

```c1-top-E2-2
34298256810048 18525103095093 98227224639138 273404621442183 544057293504228
225207058663818 426992114764188 1051229598489058 2097919509838428 3567061848812298
988967512071588 2389242235083783 3789516958095978 5189791681108173 6590066404120368
```

For \(i=3\):

```c1-top-E2-3
36399560209488 79192739766708 220536373967928 460430462813148 798875006302368
115471043884008 382783270976928 1086154767811848 2225585534388768 3801075570707688
785845255422528 2290202975345148 3794560695267768 5298918415190388 6803276135113008
```

The smallest coefficient is `2251611432313/2031987000000000>0`.


To check the identities directly, expand the left sides of (11) after
(10). If their ordinary power coefficients are \(a_{rst}\), the
coefficient for the stated tensor degree is exactly

\[
 \frac{N_{ijk}^{(e)}}{D_e}=
 \sum_{r\le i,\,s_0\le j,\,t\le k}
 a_{r s_0 t}
 \frac{\binom ir\binom j{s_0}\binom kt}
 {\binom{n_1}r\binom{n_2}{s_0}\binom{n_3}t}.
 \tag{12}
\]

This finite rational formula verifies every printed integer. The
optional companion `check_c1_three_lower_top_pair.py` performs exactly
this arithmetic from the formulas and printed tables, using `Fraction`
only. It has no optimizer, coordinate cover, or discovery input.

## 5. The discriminant contradiction

From \(E_1>0\),
\(B=AU-s(A+U)<AU/2\). From \(E_2>0\), \(B<8s\Delta\).
Under (5), all these quantities are positive. Multiplying the two
strict upper bounds for \(B\) therefore gives

\[
 B^2<\frac{AU}{2}\,8s\Delta=4sAU\Delta,
\]

contradicting \(G\ge0\). Thus the cap-pair line cannot put \(D,F\)
on the same side. They are on opposite sides, and because both cap
points lie strictly on the same side of \(DF\), exactly one is inside
the triangle formed by the other and \(D,F\). This proves the theorem
and closes the whole convex two-top-cap branch.
