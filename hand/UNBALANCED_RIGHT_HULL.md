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

## Verification and the remaining interaction

[check_unbalanced_right_hull.py](check_unbalanced_right_hull.py) verifies
the normalized determinants, generalized lower-vertex elimination,
the rational quadratic value, both exact polynomial expansions and their
positive coefficient bounds. No sampled coordinates enter the proof.

In the two-point upper cut the only nontriangular right-hull possibility
left is cell II, where T lies in both BCR and BCS and neither outer ear
BRS or CRS contains it. Thus the factor three that drives (2)--(5) is
unavailable in that cell. The scalar central-pair inequalities alone do
not supply an analogous occupied outer ear. The present argument does
not control the cross-triangles joining P or Q to the right subset; a
stronger interaction involving their actual positions is still needed.
In the one-point upper
cut, the bound (7) is not available, so this note does not exclude cells
I or III there.
