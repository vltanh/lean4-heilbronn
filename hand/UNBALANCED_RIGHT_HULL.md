# Outer right-hull cells in the unbalanced upper cut

## Results and scope

Use the unbalanced Type-II count \((1,2,3)\) from
[TYPE_II.md](TYPE_II.md), with anchors

\[
D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad B=(b,0),
\qquad0<b\le\tfrac12,\quad0<\lambda<1.
\]

The two central points P,Q lie in DBC. The three right points lie in
the right container \(\operatorname{conv}\{B,C,(1,0)\}\).
Write

\[
s=\frac7{64},\qquad q=1-\lambda,\qquad w=1-b,
\qquad K=4+2\sqrt3.
\]

The minimum-area hypothesis throughout this note is that every actual
doubled triangle area is at least s.

**Theorem 1.** If the five-point right subset has nontriangular hull,
that hull is a quadrilateral, with the fifth point strictly inside it.
In the support normalization of `TYPE_II.md`, Section 1, only cells
I, II, and III can occur. This assertion applies to either remaining
central-point cut relative to CE.

**Theorem 2.** If P and Q are both above CE, cells I and III are
impossible as well. Thus the entire nontriangular right-hull branch of
this two-point upper cut reduces to cell II.

These are complete continuous-cell exclusions. They do **not** close
cell II, the one-point upper cut, or the whole unbalanced Type-II row.

**Theorem 3.** In the two-point upper cut, the line PQ cannot isolate C
from D,E,B when the right hull is nontriangular. This excludes the entire
C-isolated alternative, including the remaining right support cell II.

**Theorem 4.** Under the same hypotheses, PQ cannot isolate D either.
Thus in the remaining upper-cut cell II, the line PQ must put D,C on
the same side and E,B on the other side.

## 1. The right support cells and their geometric meaning

Apply the support-triangle normalization from `TYPE_II.md`, Section 1,
to the five right points with prescribed base endpoints B,C. It gives
four actual anchors A,E,H,F and a fifth point X in a half-square.
Its area factor is at most w: if \(\sigma\) is the normalized doubled
minimum area, then \(\sigma\ge s/w>s\).

The four anchors are vertices of their convex quadrilateral. In the
notation of that proof, \(N(X)<0\) means X is inside this quadrilateral;
\(N(X)>0\) means X is a fifth hull vertex. Thus only cell V could give
a pentagonal hull. But that cell has \(\sigma<1/10<s\).
Cell IV has \(\sigma\le1/12<s\) and is also impossible.
This proves Theorem 1.

Return to physical coordinates and label the quadrilateral cyclically
as B,R,S,C, with T its interior point. The three surviving cells have
the following exact containments:

| Support cell | Triangles containing T |
|---|---|
| I | BRS and BCR |
| II | BCR and BCS |
| III | CRS and BCS |

The endpoint-triangle proof also gives, in cells I and III,

\[
\frac{s}{w}\le\frac1K,\qquad
w\ge Ks>\frac{13}{16},\qquad b<\frac3{16}.                \tag{1}
\]

Here \(K>52/7\) follows from \(\sqrt3>12/7\).
The extra factor in (1), stronger than the general five-point bound,
will be used in the comparison between the two outer cells.

## 2. A stronger lower-vertex inequality from an occupied outer ear

Normalize the right container by

\[
(X,Y)\longmapsto\left(\frac{X-b}{w},Y\right).
\]

Its base endpoints become \(B_0=(0,0)\), \(C_0=(1,1)\).
Write \(R_0=(x,y)\), \(S_0=(z,t)\), and \(a=s/w\).
The positive doubled areas of \(B_0R_0S_0\) and \(C_0R_0S_0\) are

\[
U=xt-yz,\qquad V=xt-yz+z-t-x+y.
\]

The strict quadrilateral order gives \(x>y\ge0\), \(x<1\), and
\(z\le1\). If \(U\ge ma\), \(V\ge na\), elimination of t gives

\[
na\le V
\le\frac{(1-x)(x-y-ma)}x,
\]

and therefore

\[
\boxed{(x-y)(1-x)\ge a\{nx+m(1-x)\}.}                  \tag{2}
\]

Indeed \(t\ge(ma+yz)/x\), and its coefficient in V is
\(-(1-x)<0\); after substitution the remaining coefficient of z is
\((x-y)/x>0\), so z may be replaced by one.

In cell I, the actual triangle BRS contains T, so \((m,n)=(3,1)\)
is valid. In cell III, CRS contains T, so \((m,n)=(1,3)\) is valid.
Equation (2) consequently gives

\[
\begin{array}{ll}
\text{cell I:}&y\le x-2a-\dfrac{a}{1-x},\\[3pt]
\text{cell III:}&y\le x+2a-\dfrac{3a}{1-x}.
\end{array}                                               \tag{3}
\]

Put \(c=b+\lambda w=1-wq\) and \(d=ba=bs/w\).
The actual triangle EBR has positive doubled area

\[
[EBR]=by+\lambda wx\ge s.
\]

Using (3) and applying arithmetic-geometric mean to
\(c(1-x)+d/(1-x)\), or to \(c(1-x)+3d/(1-x)\), gives

\[
\begin{array}{ll}
\text{cell I:}&s\le c-2d-2\sqrt{cd},\\
\text{cell III:}&s\le c+2d-2\sqrt{3cd}.
\end{array}                                               \tag{4}
\]

The first bound is a valid common relaxation of both. Indeed \(c\ge b\)
and (1) imply

\[
\frac cd\ge\frac ws\ge K=(1+\sqrt3)^2.
\]

Hence \(2(\sqrt3-1)\sqrt{cd}\ge4d\), which says precisely that
the cell-III upper bound in (4) is at most the cell-I upper bound.
Thus every case under consideration satisfies

\[
\boxed{s\le c-2d-2\sqrt{cd}.}                            \tag{5}
\]

For later upper replacements define

\[
N_b(C)=4Cbsw-\{wC-s(1+b)\}^2.                            \tag{6}
\]

If \(C\ge c\), (5) implies \(N_b(C)\le0\). To justify the
replacement before squaring, (5) first gives \(c>2d\); the function
\(C-2d-2\sqrt{Cd}\) is strictly increasing for \(C\ge c>d\).
Its value is therefore at least s, with a positive bracket before
squaring. Multiplication by \(w^2>0\) then gives the asserted sign
in (6).

## 3. Two upper central points force q above 67/80

Assume from now on that both P,Q are above CE. The actual triangle DBE
gives \(bq\ge s\). The chamber lemma and the three exhaustive
same-side alternatives in `TYPE_II.md`, Sections 6 and 12, imply the
common weaker necessary conditions

\[
A=q-s(q+1)>0,\qquad A^2\ge4sq(1+bq).
\]

The other two brackets in that table are smaller than A and positive,
so this common relaxation is valid in all three alternatives.
Since \(bq\ge s\),

\[
F(q):=\{q-s(q+1)\}^2-4sq(1+s)\ge0.                     \tag{7}
\]

This is an upward quadratic. At the positive zero \(q=s/(1-s)\)
of A its value is negative, and

\[
F(67/80)=-\frac{34599}{26214400}<0.
\]

It is therefore negative throughout the interval between those two
arguments, by convexity. Since \(A>0\), (7) proves

\[
\boxed{q>\frac{67}{80},\qquad s\le b<\frac3{16}.}        \tag{8}
\]

The lower bound for b follows from \(bq\ge s\), \(q<1\).

## 4. Two exact polynomial bounds exhaust the bottom parameter

We will contradict (6) by giving \(C\ge c\) with \(N_b(C)>0\).

### 4.1. The range b at least 13/100

By (8), use

\[
C_1=1-\frac{67}{80}(1-b)>c.
\]

Direct expansion gives

\[
102400N_b(C_1)
=-71824b^4+59496b^3+6591b^2+1126b-289.
\]

Put \(t=b-13/100\), so \(0\le t<23/400<1/16\). The right side is

\[
\begin{aligned}
&-71824t^4+\frac{553688}{25}t^3
 +\frac{14069679}{625}t^2
 +\frac{81639342}{15625}t
 +\frac{61692937}{781250}\\
&\quad\ge\frac{441463}{25}t^3
 +\frac{14069679}{625}t^2
 +\frac{81639342}{15625}t
 +\frac{61692937}{781250}>0.
\end{aligned}
\]

This contradicts (6).

### 4.2. The range b at most 13/100

Here \(bq\ge s\) gives

\[
c\le C_2=1+s-\frac sb.
\]

Expansion now gives

\[
4096b^2N_b(C_2)
=-8072b^4+13260b^3-6329b^2+994b-49.
\]

Put \(t=13/100-b\), so
\(0\le t\le33/1600<1/48\). The numerator is

\[
-8072t^4-\frac{226564}{25}t^3-\frac{1235063}{625}t^2
 +\frac{3137171}{62500}t+\frac{1083451}{12500000}.
\]

Using \(t<1/48\) to bound the three negative powers by a multiple
of t, this is at least

\[
\frac{1083451}{12500000}
+\left\{\frac{3137171}{62500}
-\frac{1235063}{625\cdot48}
-\frac{226564}{25\cdot48^2}
-\frac{8072}{48^3}\right\}t
=\frac{1083451}{12500000}
+\frac{1084228751}{216000000}t>0.
\]

Again this contradicts (6). The two ranges exhaust (8), proving
Theorem 2.

## 5. Complete exclusion of the C-isolated central line

Continue to suppose both central points are above CE, but now allow any
nontriangular right hull. By Theorem 1 it is quadrilateral. The generic
lower-vertex inequality is (2) with \(m=n=1\), which gives
\(y\le x-a/(1-x)\). The EBR argument consequently gives

\[
s\le c-2\sqrt{\frac{cbs}{w}},\qquad c=1-wq.
\]

For any \(C\ge c\), the same monotone-root argument used after (5)
therefore gives

\[
\mathcal N_b(C):=4Cbs-w(C-s)^2\le0.                      \tag{9}
\]

Assume that PQ isolates C. The third row of `TYPE_II.md`, Section 12,
gives

\[
A_C=q-s(2+bq)>0,\qquad
F_C(q):=A_C^2-4sq(1+bq)\ge0,\qquad b\le\frac27.
\]

We first strengthen the q bound to

\[
\boxed{q>q_C(b):=\frac45+\frac{2b}{3}.}                  \tag{10}
\]

The polynomial \(F_C\) is an upward quadratic in q on
\(0<b\le2/7\), and is negative at the positive zero of \(A_C\).
At \(q=q_C(b)\), direct substitution gives

\[
230400 F_C(q_C(b))
=1225b^4-64260b^3-49766b^2+23412b-2799<0.
\]

The first two terms have nonpositive sum because \(b\le2/7\).
The remaining quadratic is strictly negative for all real b: its leading
coefficient is negative and its discriminant is

\[
23412^2-4\cdot49766\cdot2799=-9058392<0.
\]

Also \(q_C(b)>2s/(1-sb)\), the zero of \(A_C\); for example
\(q_C(b)\ge4/5\), while that zero is at most \(7/31<4/5\).
Convexity between the two negative values of \(F_C\), and \(A_C>0\),
prove (10).

### 5.1. The range b at least 123/1000

Set \(C_3=1-wq_C(b)\), so \(C_3>c\). Expansion gives

\[
\begin{aligned}
921600\mathcal N_b(C_3)=P(b):={}&409600b^5-245760b^4
+232704b^3-51712b^2+65937b-7569.
\end{aligned}
\]

This polynomial is strictly increasing on \(0\le b\le2/7\).
Indeed

\[
\begin{aligned}
P'(b)
&=2048000b^4-983040b^3+698112b^2-103424b+65937\\
&\ge2048000b^4+\frac{2920704}{7}b^2+\frac{254711}{7}>0,
\end{aligned}
\]

where both negative terms were bounded using \(b\le2/7\).
At the lower endpoint,

\[
P(123/1000)=\frac{1437613843347}{9765625000}>0.
\]

Thus \(\mathcal N_b(C_3)>0\), contradicting (9).

### 5.2. The range b at most 123/1000

Use \(bq\ge s\) and \(C_4=1+s-s/b\ge c\). Then

\[
4096b^2\mathcal N_b(C_4)
=6084b^3-5188b^2+945b-49.
\]

Put \(t=123/1000-b\). Since \(b\ge s\),
\(0\le t\le109/8000<1/64\). The last polynomial becomes

\[
-6084t^3-\frac{735751}{250}t^2
+\frac{13778373}{250000}t+\frac{16815707}{250000000}.
\]

It is at least

\[
\begin{aligned}
\frac{16815707}{250000000}
&+\left(\frac{13778373}{250000}
-\frac{735751}{250\cdot64}-\frac{6084}{64^2}\right)t\\
&=\frac{16815707}{250000000}
+\frac{122299247}{16000000}t>0.
\end{aligned}
\]

Again (9) is contradicted. The two ranges exhaust the C-isolated case,
proving Theorem 3.

## 6. Complete exclusion of the D-isolated central line

The generic right-quadrilateral condition (9) remains available.
Suppose PQ isolates D. The second row of `TYPE_II.md`, Section 12,
gives

\[
A_D=q-s\{1+(1+b)q\}>0,\qquad
F_D(q):=A_D^2-4sq(1+bq)\ge0,\qquad b\le\frac27.
                                                               \tag{11}
\]

We need one additional inequality that retains the actual EBP area.

### 6.1. A stronger weighted inequality for an isolated D

Reflect the vertical coordinate for this calculation, so

\[
D=(0,0),\quad C=(1,0),\quad E=(0,q),\quad B=(b,1).
\]

Write \(P=(p,u)\), \(Q=(r,v)\), and choose their order so that
\(d_D<0<d_C,d_E,d_B\), where
\(d_X=\det(Q-P,X-P)\). Every \(|d_X|\ge s\).
Both points are inside DCE, so \(0<u<q\), and direct expansion gives

\[
u d_E+(q-u)d_C=\{q(1-p)-u\}(u-v).                       \tag{12}
\]

The bracket is the positive doubled area of ECP. Hence the positive
left side forces \(u>v\ge s\), and (12) implies

\[
qs\le\{q(1-p)-u\}(u-s).
\]

On the other hand, EBP has positive unsigned doubled area
\(b(q-u)+(1-q)p\ge s\). Put \(c=1-(1-b)q\) as before.
Then

\[
p\ge\frac{s-b(q-u)}{1-q},\qquad
q(1-p)-u\le\frac{qc-qs-cu}{1-q}.
\]

Setting \(z=u-s>0\), we conclude that

\[
qs(1-q)\le z\{qc-s(q+c)-cz\}.
\]

The linear coefficient in braces must be positive. Maximizing the
concave quadratic in z therefore proves the additional necessary
conditions

\[
\boxed{
A_*:=qc-s(q+c)>0,\qquad
F_*(q,c):=A_*^2-4sq(1-q)c\ge0.}                          \tag{13}
\]

All divisions and multiplications used positive quantities, and the
positivity of \(A_*\) was established before squaring.

### 6.2. Two effective lower bounds for q

First, (11) implies

\[
q>q_D(b):=\frac34+\frac{5b}{6}.                          \tag{14}
\]

Indeed direct substitution gives the useful factorization

\[
F_D(q_D(b))=
\frac{(70b^2-3547b-3165)(70b^2-27b+3)}{589824}<0.
\]

The first factor is negative for \(0\le b\le2/7\).
The second is positive for every real b, since its discriminant is
\(27^2-4\cdot70\cdot3=-111<0\). As before, \(F_D\) is an upward
quadratic in q, negative at the positive zero of \(A_D\). That zero
is at most \(7/55<3/4\le q_D(b)\). Convexity and \(A_D>0\)
give (14).

For \(b\le1/6\), (13) improves this to

\[
\boxed{q>\frac89\qquad(b\le1/6).}                       \tag{15}
\]

To prove it, suppose \(q\le8/9\). The proof of the q bound in
Section 3 used only the common central-pair quadratic and \(bq\ge s\),
so its conclusion \(q>67/80\) applies here as well.
Also \(c\le C_*(q):=1-5q/6\).
For fixed q, (13) is an upward quadratic in c, negative at the positive
zero of \(A_*=c(q-s)-sq\). Thus, with \(A_*>0\), increasing c to
\(C_*\) preserves the asserted nonnegativity. It would follow that

\[
0\le F_*(q,C_*)
=\frac{102400q^4-295040q^3+287281q^2-96180q+1764}{147456}.
\]

Put \(t=8/9-q\), so \(0\le t<37/720<1/16\). The last expression
is exactly

\[
\frac{25}{36}t^4-\frac{4855}{10368}t^3
-\frac{379093}{3981312}t^2
-\frac{521759}{26873856}t
-\frac{49343}{241864704}<0.
\]

The cubic and quartic together are nonpositive, because
\((25/36)t-4855/10368\le-4405/10368<0\).
All other coefficients are negative. This contradiction proves (15).

### 6.3. Both parameter ranges contradict the right ear

For \(s\le b\le1/6\), use \(C_5=1-8w/9>c\). The generic
necessary sign (9) contradicts

\[
331776\mathcal N_b(C_5)
=P_5(b):=262144b^3-132096b^2+15105b-1>0.
\]

To check the last sign, the upward quadratic \(P_5'(b)\) has values

\[
P_5'(7/64)=-4383,\qquad P_5'(1/6)=-\frac{21245}{3}.
\]

It is therefore negative throughout the interval, by convexity.
Thus \(P_5\) decreases there, and
\(P_5(b)\ge P_5(1/6)=3283/54>0\).

For \(1/6\le b\le2/7\), use
\(C_6=1-wq_D(b)>c\). Now

\[
\begin{aligned}
36864\mathcal N_b(C_6)
={}&25600b^5-30720b^4+27456b^3\\
&\hspace{10mm}-11104b^2+5625b-729.
\end{aligned}
\]

With \(t=b-1/6\in[0,5/42]\), this numerator becomes

\[
25600t^5-\frac{28160}{3}t^4+\frac{126784}{9}t^3
-\frac{35392}{27}t^2+\frac{303065}{81}t+\frac{3283}{486}.
\]

Bounding the negative fourth power by \((5/42)t^3\), and the negative
second power by \((5/42)t\), gives the positive lower bound

\[
25600t^5+\frac{817088}{63}t^3
+\frac{290425}{81}t+\frac{3283}{486}>0.
\]

This again contradicts (9). The two ranges exhaust (11), proving
Theorem 4.

## Verification and the remaining interaction

[check_unbalanced_right_hull.py](check_unbalanced_right_hull.py) verifies
the normalized determinants, generalized lower-vertex elimination,
the rational quadratic values, all exact polynomial expansions and their
positive coefficient bounds. No sampled coordinates enter the proof.

In the two-point upper cut the only nontriangular right-hull possibility
left is cell II, where T lies in both BCR and BCS and neither outer ear
BRS or CRS contains it. Thus the factor three that drives (2)--(5) is
unavailable in that cell. Theorems 3 and 4 additionally exclude both
isolated-endpoint central-line alternatives. Hence PQ must put D,C
together and E,B together on its two sides. The scalar central-pair
inequalities alone do
not supply an analogous occupied outer ear. The present argument does
not control the cross-triangles joining P or Q to the right subset; a
stronger interaction involving their actual positions is still needed.
In the one-point upper cut, the bound (7) is not available, so this note does not exclude cells
I or III there.
