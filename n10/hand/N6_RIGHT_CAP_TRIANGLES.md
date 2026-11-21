# Three triangle capacities with one right-cap point

Use the normalized contacts \(A,B,C,E,F,H\) of
[the six-contact placement](N6_PLACEMENTS.md). Put
\(R=(r,d)\) in the right cap beyond \(CE\) and suppose every actual
unsigned doubled triangle area is at least \(s=93/1000\).
Then
\[
                 [BCE],\ [REF],\ [ACR]<347/500.
\]
In particular each triangle contains at most one further point.
The statement allows either a point in the top cap or an empty
top cap. Transposition gives the left-cap version.

## Contact bounds and their refinement

Write \(J=c-b\) and \(L=1-b\). The actual lower clearances give
\[
 aJ\ge s,\qquad b(h-a)\ge s.
\]
Using \(c,h\le1\) in these two inequalities gives \(b(1-b)\ge s\),
so \(b>1037/10000=:\alpha\), since \(\alpha(1-\alpha)<s\).
The right cap gives
\[
 Jd\ge s,\qquad (1-c)(e-d)-e(1-r)\ge s .
\]
Thus \(e\ge s/J+s/(1-c)\ge 4s/L\), by the reciprocal arithmetic
mean inequality. The actual triangle \(EFH\) gives
\[
 s\le[EFH]=1-e-(1-f)(h-e)\le1-e.
\]
Consequently \(e\in[E_0,1-s]\), with \(E_0=4s/(1-\alpha)\),
and
\[
 h\le e+\frac{1-e-s}{1-f}\le e+\frac{1-e-s}{1-c}.
\]
The right point also has \(r>71/100\). Indeed, its two ear
clearances give
\[
 r\ge c+\frac{s+(1-c)d}{e}
 \ge c+\frac{s(1-b)}{e(c-b)}
 \ge c+\frac{s(1-\alpha)}{(1-s)(c-\alpha)}.
\]
Here \((1-b)/(c-b)\) increases with \(b<c\) at fixed \(c<1\).
The last expression is at least
\(\alpha+2\sqrt{s(1-\alpha)/(1-s)}\) by the
arithmetic–geometric mean inequality on its positive terms
after subtracting \(\alpha\). The strict comparison with \(71/100\)
follows by squaring, with exact difference
\(1068117/362800000000\).

Consider any closed interval \([u,v]\) for \(e\) in this range.
Start with \(c_+=1-s/(v-s)\), \(b_-=\alpha\) and \(h_+=1\).
This first bound on \(c\) uses \(d\ge s\). In each of four rounds
perform the following in order, where the down and up arrows round
in the indicated direction to a multiple of \(10^{-6}\).
\[
\begin{aligned}
 h_+&\ \longleftarrow\
 \min\left(h_+,\left\lceil u+\frac{1-u-s}{1-c_+}\right\rceil_{\!6}\right),\\
 D_0&=\left\lfloor\frac{s}{c_+-b_-}\right\rfloor_{\!6},\\
 b_-&\ \longleftarrow\
 \max\left(b_-,\left\lfloor\frac{s}{h_+-D_0}\right\rfloor_{\!6}\right),\\
 c_+&\ \longleftarrow\
 \min\left(c_+,\left\lceil 1-\frac{s}{v-D_0}\right\rceil_{\!6}\right).
\end{aligned}
\]
In the first update the right side of the height bound increases
with \(c\) and decreases with \(e\). The next step bounds both
\(a,d\) from below because \(J\le c_+-b_-\). The third step uses
\([HAB]\ge s\), and the fourth uses \((1-c)(e-d)\ge s\).

## The area estimates

Put \(J_+=c_+-b_-\), \(L_+=1-b_-\), and use the proved endpoints.
Clearly \([BCE]=eJ\le vJ_+\). For the other triangle,
\[
 [REF]=(1-f)(e-d)+(1-e)(1-r).
\]
Use \(f\ge b\), \(d\ge s/J\), and the upper bound on \(1-r\)
from \([CRE]\ge s\). This yields
\[
 [REF]\le L-(1-e)J-\frac{sL}{eJ}.
\]
The right side increases with \(L\) at the actual \(e,J\), since
\(eJ=[BCE]\ge s\), and increases with \(e\) at fixed \(L,J\).
After substituting \(L_+,v\), its derivative with respect to \(J\)
is nonnegative on \(0<J\le J_+\) when
\(v(1-v)J_+^2\le sL_+\). That comparison holds in every row.
Hence the upper bound used in the last column is
\[
       L_+-(1-v)J_+-\frac{sL_+}{vJ_+}.
\]
All denominators in the four rounds and these bounds are positive
in the displayed rows. The three middle and two final columns
are in millionths. The initial height interval in the first row
starts at \(E_0=3720/8963\). The further rows include both endpoints
of each interval and reach \(1-s=.907\).

| \(u\) | \(v\) | \(h_+\) | \(b_-\) | \(c_+\) | \(BCE\) ceiling | \(REF\) ceiling |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| \(E_0\) | .890 | 1000000 | 105710 | 879184 | 688392 | 688392 |
| .890 | .891 | 1000000 | 105707 | 879345 | 689312 | 689311 |
| .891 | .892 | 1000000 | 105704 | 879505 | 690231 | 690231 |
| .892 | .893 | 1000000 | 105701 | 879665 | 691150 | 691150 |
| .893 | .894 | 1000000 | 105698 | 879825 | 692070 | 692069 |
| .894 | .895 | 1000000 | 105695 | 879983 | 692988 | 692988 |
| .895 | .896 | 995107 | 106294 | 880127 | 693355 | 693355 |
| .896 | .897 | 987869 | 107195 | 880263 | 693442 | 693442 |
| .897 | .898 | 980613 | 108115 | 880399 | 693512 | 693511 |
| .898 | .899 | 973336 | 109053 | 880533 | 693561 | 693560 |
| .899 | .900 | 966040 | 110011 | 880666 | 693590 | 693590 |
| .900 | .901 | 958725 | 110989 | 880799 | 693599 | 693599 |
| .901 | .902 | 951392 | 111987 | 880931 | 693588 | 693587 |
| .902 | .903 | 944040 | 113007 | 881062 | 693554 | 693553 |
| .903 | .904 | 936669 | 114048 | 881192 | 693499 | 693498 |
| .904 | .905 | 929279 | 115112 | 881321 | 693420 | 693419 |
| .905 | .906 | 921871 | 116200 | 881449 | 693316 | 693316 |
| .906 | .907 | 914445 | 117311 | 881577 | 693190 | 693189 |

Both final columns are strictly below \(694000\), as required.
The [two-point triangle bound](TRIANGLE_OCCUPANCY.md) gives
\((4+2\sqrt3)s>347/500\) for any actual triangle with two inside.

## The triangle \(ACR\)

The actual \(EFH\) clearance and the orders \(f\le c\), \(e\le h\)
give
\[
 (1-c)h+ce\le 1-s.
\]
Also \(h\ge a+s/b\), \(e\ge d+s/(1-c)\), and \(a,d\ge s/J\).
For \(K=(1-c)/b+c/(1-c)\) it follows that
\[
 s/J+sK\le1-s,\qquad
 [ACR]=a(r-c)+cd\le (1-c)a+cd\le 1-s-sK.              \tag{1}
\]
Since \(b=c-J\) and \(b+(1-c)=1-J\), Cauchy–Schwarz gives
\[
 K=\frac{1-J}{c-J}+\frac1{1-c}-2
    \ge\frac1{1-J}+\frac2{\sqrt{1-J}}-1.
\]
We have \(J\ge s\) from \(aJ\ge s\), so the last bound exceeds
\(1000/907+2000/953-1>11/5\), using \((953/1000)^2>907/1000\).
If \(J\le13/100\), the first inequality of (1) would imply
\(1-s\ge 100s/13+(11/5)s>1-s\). Hence \(J>13/100\).
Now the same Cauchy–Schwarz bound gives
\[
 K>\frac{100}{87}+\frac{2000}{933}-1>\frac{71}{31},
\]
using \((933/1000)^2>87/100\). Substituting in (1) gives
\([ACR]<1-s-(71/31)s=347/500\).

## The upper-point line in BIIR

In BIIR the six contacts and the right-cap point form the heptagon
\(AB C R E F H\) in cyclic order, since the cap chord exposes
\(R\) and the contacts are extreme on square sides. The two upper
points lie in \(HCEF\). Their line meets two open hull edges,
and a one-vertex arc puts both upper points in the ear at that
vertex by convexity. The ears at \(A,B\) lie in the lower
quadrilateral. The ear at \(R\) lies in its own exterior cap.
The ear \(BCR\) at \(C\) has area \(dJ\le eJ=[BCE]<347/500\).
The ear \(REF\) at \(E\) has the other proved ceiling.
Finally \([EFH]\le1-e\le1-4s<347/500\) excludes the ear at \(F\).
Thus the only possible one-vertex arc is the one at \(H\).

A two-vertex arc \(A,B\) would put both points in \(HABC\),
below \(HC\). A two-vertex arc \(B,C\) would put both in \(ABCR\),
and then in the triangle \(ACR\) because both are above \(HC\)
and \(ABC\) is below it. The bound on \(ACR\) excludes this.
The arc \(C,R\) would put both points in \(BCRE\), within
the virtual triangle \(B,E,(1,0)\) already containing \(C,R\).
This violates the [right-container capacity](N6_CORNER_CONTAINERS.md).
