# The normalized BTTT top word --+- is impossible

## 1. Statement and scope

Put \(s=93/1000\). Use the six distinct actual contacts

\[
 A=(0,a),\quad B=(b,0),\quad C=(c,0),\quad
 E=(1,e),\quad F=(f,1),\quad H=(0,h)
\]

in their cyclic order, with

\[
 0<a<h\le1,\quad 0<b<c\le1,\quad
 a\le e\le h,\quad b\le f\le c,\quad e\le f.
\]

The last inequality is the stated normalization of this child. Let
\(P=(p,q)\) lie strictly inside \(HABC\), and let
\(Q=(u,v),R=(r,w),S=(j,k)\) lie in the closed top corner triangle
\(EF(1,1)\), strictly on its corner side of \(EF\). All ten points
are distinct actual points of the unit square. Suppose every actual
unsigned doubled triangle area is at least \(s\).

Write \([XYZ]=\det(Y-X,Z-X)\). Label the top points by their rays from
\(E\), so \(EQR,EQS,ERS>0\), and assume

\[
 (\operatorname{sgn}FQR,\operatorname{sgn}FQS,
   \operatorname{sgn}FRS,\operatorname{sgn}QRS)=(-,-,+,-).
 \tag{1}
\]

**Theorem.** These hypotheses are inconsistent.

This closes exactly the normalized BTTT word (1). The other BTTT
words and the ITTT count require their separate closures. The
top-word catalogue and its role in the six-contact decomposition
are in [N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md). No candidate
configuration or neighborhood hypothesis occurs here.

The complete fixed argument is printed in
[the proof index](n6_bttt_top_triangle_word_tables/INDEX.md),
[the geometric contexts](n6_bttt_top_triangle_word_tables/contexts.md),
and the seven stage-table files linked from that index. The tables
are part of this proof. Each physical polynomial, endpoint affine
line, signed geometric deduction, scalar identity, source reference,
and contradictory leaf is written there as an explicit rational
expression.

## 2. Constants, geometry, and coarse boxes

Use the rational lower costs

\[
 K=\frac{149}{20}<4+2\sqrt3,\quad
 J=\frac{4427}{500}<\frac{11+3\sqrt5}{2},\quad
 G=\frac{1457}{250}<3+2\sqrt2,\quad
 \alpha=\frac{1037}{10000}.
 \tag{2}
\]

An actual triangle containing zero, one, two, or three further
actual points has doubled area at least \(s,3s,Ks,Js\), respectively.
These are the previously proved triangle-occupancy bounds. Four
interior points are impossible in an actual triangle of doubled
area at most one. A three-point placement in such a triangle has
the published distributed seven-face pattern; the clustered
alternative is excluded. These are the occupancy and mesh rules
of the existing top-triple setup.

The six contacts form a strictly convex actual hexagon in cyclic
order \(ABCEFH\). Its cyclic triple determinants are positive.
The containment of \(P\) gives its inward edge signs and \(HCP<0\).
For each \(T\in\{Q,R,S\}\), the top-cap signs give \(EFT<0\),
the other five inward hexagon-edge signs, \(HCT>0,HET>0,CFT<0\).
Separating the lower and top containers at \(H,C\) gives
\(HPT>0,CPT<0\).

The remaining fixed cross signs follow from the exact identities

\[
\begin{aligned}
 (1-f)[EPT]
   &=(1-p)[EFT]-(1-x_T)[EFP]<0,\\
 (1-e)[FPT]
   &=(1-y_T)[EFP]-(1-q)[EFT]>0.
\end{aligned}
\tag{3}
\]

The square factors are nonnegative, \(P\) is strictly inside the
lower container, \(EFP>0\), and \(EFT<0\). Thus the signs remain
valid when a top point is on a square side.

The signs in (1) put \(R,S\) strictly inside the actual triangle
\(EQF\). Consequently

\[
 (1-e)(1-f)\ge Ks. \tag{4}
\]

The actual \(ABC,ABH\) clearances imply \(a,b>\alpha\), since
\(s-\alpha(1-\alpha)=5369/10^8>0\). Hence \(e,f>\alpha\) too.
Put

\[
 \delta=\frac{s}{1-\alpha},\qquad
 t=1-\frac{Ks}{1-\alpha}=\frac{4069}{17926}.
\]

Equation (4) gives \(a,b,e,f\le t\). Also \(e\le f\) implies
\((1-e)^2\ge Ks\), and

\[
 Ks-\left(1-\frac{21}{125}\right)^2
   =\frac{313}{500000}>0.
\]

Therefore \(a,e<21/125\). The eight actual triangles

\[
 ABC,\ ABE,\ ACE,\ BCE,\ ABF,\ ABH,\ AFH,\ BFH \tag{5}
\]

have respective affine upper bounds \(a,e,e,e,f,b,f,f\).
All are at most \(t<3s\), with exact gap
\(3s-t=466177/8963000>0\), so each is empty of further actual
points. In particular \(P\) lies in neither lower contact ear:
\(ACP>0,HBP>0\).

Here is the complete coarse-box recipe. The five actual points
\(H,A,B,C,P\) lie in the endpoint triangle \(H(0,0)C\), so
\(hc\ge Gs\). A witnessed lower contact ear permits the stronger
\(hc\ge Ks\); the printed contexts here force the central alternative.
Every free coordinate is at least \(\delta\). In the lower central
cell, [ONE_LOWER_POINT.md](ONE_LOWER_POINT.md) gives

\[
 h(c-b)p\ge s(c+b),\qquad c(h-a)q\ge s(h+a),
\]

and thus \(p,q\ge s(1+\alpha)/(1-\alpha)\). The lower \(HC\)
clearance gives \(p+q\le1-s\). The anchor clearances also give
\(c\ge\alpha+s/a_{\max}\) and \(h\ge\alpha+s/b_{\max}\).

For a top point \(T\), let \(n\) count the other top points already
known inside \(EFT\), and let \(c_n=1,3,K\) for \(n=0,1,2\). Then

\[
 x_T,y_T\ge\alpha+\frac{c_ns}{1-\alpha}. \tag{6}
\]

If \(U\) is inside an actual top triangle \(EFT\), its barycentric
weights at \(F,E\) also give \(x_U,y_U\le1-\delta\).
These formulas, with the printed signs, give exactly each stage's
coarse box. A later stage may intersect it with a previously proved
box and a displayed coordinate case cut.

## 3. Geometric deductions

Every context prints its initial case signs, complete deduction
list, and final actual-sign table. Each deduction is one of:

* the fixed cross signs (3);
* an explicitly listed actual-sign case assumption;
* the five-label identity
  \([abc][ade]-[abd][ace]+[abe][acd]=0\), with two known
  nonzero terms of the same sign forcing the missing sign;
* exclusion from an empty triangle (5), after the other two edge
  tests are inward;
* affinity of \(X\mapsto[IJX]\) over a proved containing triangle,
  over \(HABC\), or over the anchor hexagon;
* the distributed three-interior-point mesh in an actual triangle.

For the last rule, orient the outer triangle \(ABC\) positively.
Its six possible labelings \(X,Y,Z\) have these thirteen positive
determinants:

\[
 ABZ,\ BCX,\ CAY,\ AZY,\ BXZ,\ CYX,\ ZXY,\ AZX,\ BXY,\ CYZ,\
 AXY,\ BYZ,\ CZX. \tag{7}
\]

Delete labelings inconsistent with already proved signs. A new sign
is used only when every remaining labeling gives it. Each row names
the actual outer triangle and all three interior points.

There are five additional capacity deductions. An already proved
upper bound for an actual triangle is smaller than the occupancy
cost that would result from adding a named point. Two inward edge
signs are known, so the third must be outward. The index prints the
outer triangle, existing occupants, excluded point, exact upper
reference, and next occupancy cost. A capacity sign becomes
available only after its source stage.

## 4. Physical inequalities and coordinate refinement

Every coordinate factor is a nonnegative physical polynomial with
one of these printed witnesses:

1. A signed actual determinant minus its witnessed occupancy cost.
2. A contact order \(h-a,e-a,h-e,f-b,c-f,f-e\).
3. The lower endpoint floor \(hc-\rho\), with the permitted \(\rho\).
4. One of the weighted top-fan bounds below.
5. An earlier proved bound for that same absolute actual determinant.

For a top point \(V=(x_V,y_V)\) inside \(EFU\), put
\(D_0=(1-\alpha)^2\) and \(M=D_0/s\). Let the actual fan costs
opposite \(E,F,U\) be \(c_Es,c_Fs,c_Us\).
The outer area is at most \(D_0\), so its barycentric weights satisfy
\(\lambda_i\ge c_i/M\). The residual weights are nonnegative and
sum to \(1-(c_E+c_F+c_U)/M\). Since \(f\le x_U\le1\) and
\(e\le y_U\le1\), this proves

\[
\begin{aligned}
 Mx_V&\ge c_E+(M-c_E-c_U)f+c_Ux_U,\\
 Mx_V&\le M-c_F-c_U+c_Ff+c_Ux_U,\\
 My_V&\ge c_F+(M-c_F-c_U)e+c_Uy_U,\\
 My_V&\le M-c_E-c_U+c_Ee+c_Uy_U.
\end{aligned}
\tag{8}
\]

Each use names \(U,V\), the three actual fan costs, \(M\), and
the chosen line. This is
[N6_TOP_WEIGHTED_BARYCENTRICS.md](N6_TOP_WEIGHTED_BARYCENTRICS.md).

For a multiaffine factor \(F\ge0\), fix a target coordinate \(x\).
At each endpoint assignment of its other coordinates, \(F\)
becomes an affine line \(A_\nu x+B_\nu\). At fixed \(x\), its
actual value is a convex combination of these endpoint lines.
Some line must therefore be nonnegative. Every feasible \(x\)
belongs to the hull of

\[
 [\ell_x,u_x]\cap\{x:A_\nu x+B_\nu\ge0\}. \tag{9}
\]

The tables print every distinct pair \((A_\nu,B_\nu)\), the old
interval, the exact hull endpoints, and their outward rounding
to multiples of \(10^{-6}\). Identical endpoint lines may be
printed once. This is
[MULTIAFFINE_BOX_BOUNDS.md](MULTIAFFINE_BOX_BOUNDS.md).

An interval leaf occurs when all the intervals in (9) are empty.
Every printed affine line is then strictly negative throughout
the target interval. The nonnegative factor is negative, a
contradiction.

## 5. Scalar identities and immutable sources

Write \(A_{XYZ}=|[XYZ]|\). Initial lower bounds are the actual
occupancy costs. Initial upper bounds are exact multiaffine
endpoint maxima on a completed coordinate box, capped also by
the universal unit-square area ceiling one. The only other initial
source is an explicitly named earlier proved bound.

The retained scalar relations are:

* The actual fan identity
  \(A_{ABC}=A_{ABP}+A_{BCP}+A_{CAP}\) when \(P\) is inside \(ABC\).
* The unsigned five-label identity \(XY=UV+WZ\), after its six
  actual signs have been proved.
* The bound \(24s/5\) for a convex actual quadrilateral with one
  named interior point, expressed along its printed diagonal.
* An endpoint-support inequality \(XY\ge\kappa(X-Z)\), with its
  actual hull and interior-point witnesses printed.

Only three support rates occur. For a positively convex actual
pentagon \(ABCDE\), use

\[
 X=A_{ABE},\quad Y=A_{ADE},\quad Z=A_{ABD},\quad \kappa=11s. \tag{10}
\]

For a positive actual quadrilateral \(ABCD\), use

\[
 X=A_{ABD},\quad Y=A_{ABC},\quad Z=A_{ACD}. \tag{11}
\]

One named interior point permits \(\kappa=(29/5)s\). Two named
interior points, both inside \(ABC\) and \(ABD\), permit
\(\kappa=(299/31)s\), the central overlap rate of
[QUADRILATERAL_SUPPORT.md](QUADRILATERAL_SUPPORT.md).
The pentagon rate is the convex-five endpoint theorem; the
one-point rate is weaker than \(G\). If \(X-Z\le0\), positivity
already proves these inequalities. If \(X-Z>0\), they follow
from the corresponding endpoint-triangle bounds.

The retained tables use eight one-point quadrilateral sum relations,
53 pentagon support relations, one rate-\(29/5\) support relation,
and nine rate-\(299/31\) support relations.

Each scalar row isolates one quantity, substitutes earlier lower
or upper bounds in the valid direction, and prints the exact
result and outward rounding to a multiple of \(10^{-6}\).
All divisors are positive. Examples include

\[
\begin{aligned}
 X&\ge(\ell_U\ell_V+\ell_W\ell_Z)/u_Y,\\
 Y&\ge\kappa(1-u_Z/\ell_X),\\
 Z&\ge\ell_X(1-u_Y/\kappa),\\
 X&\le\kappa u_Z/(\kappa-u_Y)\quad(u_Y<\kappa).
\end{aligned}
\tag{12}
\]

A nonpositive lower expression yields no improvement over actual
positivity. A negative upper product numerator is already a
contradiction; weakening its upper bound to zero is valid.
The complete rules are in
[SCALAR_AREA_INTERVALS.md](SCALAR_AREA_INTERVALS.md).

Each bound has an immutable identifier of the form stage:row.
Earlier references identify the exact versions used; no row reads
a future value. A physical factor may use a scalar bound from a
completed earlier stage. A scalar box maximum uses only its own
stage's completed coordinate refinement. Source case assumptions
and coordinate cuts must be inherited by the target stage.
Sibling-branch bounds cannot be reused.

## 6. Exhaustive finite coverage

Every actual determinant is nonzero. The seventeen leaves below
form the complete binary actual-sign tree. The index also prints
every parent and child. Capacity signs are proved facts and add
no cases. A suffix minus means a negative actual determinant;
a suffix plus means a positive one.

| Case | Actual-sign assumptions | Closure |
| --- | --- | --- |
| 1 | APQ- AQR- AQS- | Stage 3 |
| 2 | APQ- AQR- AQS+ BQR- HQS- CQR- | Stage 7 |
| 3 | APQ- AQR- AQS+ BQR- HQS- CQR+ PQS- | Stage 9 |
| 4 | APQ- AQR- AQS+ BQR- HQS- CQR+ PQS+ APS- | M0 |
| 5 | APQ- AQR- AQS+ BQR- HQS- CQR+ PQS+ APS+ | Stage 12 |
| 6 | APQ- AQR- AQS+ BQR- HQS+ | Stage 13 |
| 7 | APQ- AQR- AQS+ BQR+ | Stage 14 |
| 8 | APQ- AQR+ | Stage 15 |
| 9 | APQ+ AQR- AQS- | Stage 18 |
| 10 | APQ+ AQR- AQS+ CQR- | Stage 21 |
| 11 | APQ+ AQR- AQS+ CQR+ HQS- BPQ- | M1 |
| 12 | APQ+ AQR- AQS+ CQR+ HQS- BPQ+ BQR- PQR- APR- | Stage 30 |
| 13 | APQ+ AQR- AQS+ CQR+ HQS- BPQ+ BQR- PQR- APR+ | M2 |
| 14 | APQ+ AQR- AQS+ CQR+ HQS- BPQ+ BQR- PQR+ | Stage 33 |
| 15 | APQ+ AQR- AQS+ CQR+ HQS- BPQ+ BQR+ | Stage 34 |
| 16 | APQ+ AQR- AQS+ CQR+ HQS+ | Stage 35 |
| 17 | APQ+ AQR+ | Stage 36 |

The coordinate continuations have the following complete partitions.
The weak inequalities on both sides include every equality case.

| Continuation | Additional coordinate conditions | Terminal |
| --- | --- | --- |
| M0 | \(c\le79/100\) | 51 |
| M0 | \(c\ge79/100,\ r\le19/25\) | 57 |
| M0 | \(c\ge79/100,\ r\ge19/25,\ w\le11/20\) | 78 |
| M0 | \(c\ge79/100,\ r\ge19/25,\ w\ge11/20,\ j\le29/50\) | 91 |
| M0 | \(c\ge79/100,\ r\ge19/25,\ w\ge11/20,\ j\ge29/50\) | 92 |
| M1 | No additional coordinate cut | 94 |
| M2 | \(h\le3/4\) | 109 |
| M2 | \(h\ge3/4,\ k\le19/25\) | 112 |
| M2 | \(h\ge3/4,\ k\ge19/25,\ w\le27/50\) | 125 |
| M2 | \(h\ge3/4,\ k\ge19/25,\ w\ge27/50,\ p\ge49/100\) | 137 |
| M2 | \(h\ge3/4,\ k\ge19/25,\ w\ge27/50,\ p\le49/100,\ q\ge8/25\) | 140 |
| M2 | \(h\ge3/4,\ k\ge19/25,\ w\ge27/50,\ p\le49/100,\ q\le8/25\) | 141 |

There are 16 binary actual-sign splits and nine binary coordinate
splits. They cover the full hypothesis domain with 26 contradictory
leaves. The following positive rational gaps are weakened downwards
from the exact terminal expressions printed in the stage tables.
For an interval leaf the gap is the negative of the largest
endpoint value of all its affine lines; for a scalar leaf it is
the lower bound minus the upper bound.

| Terminal stage | Contradiction | Positive gap at least |
| --- | --- | --- |
| 3 | Factor A_ABP is negative on every endpoint line for a | 5433/500000 |
| 7 | Factor sym is negative on every endpoint line for e | 887/31250 |
| 9 | Factor A_BFP is negative on every endpoint line for b | 3393/500000 |
| 12 | Lower area bound exceeds upper bound for CPS | 16981/250000 |
| 13 | Factor A_APQ is negative on every endpoint line for a | 74/3125 |
| 14 | Factor A_FRS is negative on every endpoint line for f | 3593/200000 |
| 15 | Factor A_AFQ is negative on every endpoint line for a | 7387/1000000 |
| 18 | Factor A_EQS is negative on every endpoint line for e | 7467/500000 |
| 21 | Factor sym is negative on every endpoint line for e | 887/31250 |
| 30 | Factor A_CER is negative on every endpoint line for c | 17041/1000000 |
| 33 | Factor A_FPQ is negative on every endpoint line for f | 6307/500000 |
| 34 | Factor A_BCE is negative on every endpoint line for b | 1763/1000000 |
| 35 | Factor A_ABP is negative on every endpoint line for a | 4251/1000000 |
| 36 | Factor A_CEP is negative on every endpoint line for c | 6437/1000000 |
| 51 | Factor A_FRS is negative on every endpoint line for f | 1761/250000 |
| 57 | Factor A_ERS is negative on every endpoint line for e | 24431/1000000 |
| 78 | Factor A_FRS is negative on every endpoint line for f | 42153/1000000 |
| 91 | Factor A_BFP is negative on every endpoint line for b | 37/500000 |
| 92 | Factor A_FRS is negative on every endpoint line for f | 27767/1000000 |
| 94 | Factor A_CHP is negative on every endpoint line for c | 5139/200000 |
| 109 | Lower area bound exceeds upper bound for CQS | 24981/1000000 |
| 112 | Factor A_FRS is negative on every endpoint line for f | 50351/500000 |
| 125 | Factor A_FRS is negative on every endpoint line for f | 10757/1000000 |
| 141 | Factor A_BPR is negative on every endpoint line for b | 1363/500000 |
| 140 | Factor A_FRS is negative on every endpoint line for f | 55559/1000000 |
| 137 | Lower area bound exceeds upper bound for EQS | 79/25000 |

Every gap is strictly positive. Hence all cases are impossible,
proving the theorem.

## 7. Literal tables and exact replay

The written proof contains 37 geometric contexts with 1,799
deductions, 142 stages, 6,294 coordinate refinements, 1,979 physical
factor occurrences, 3,734 initial scalar bounds, 13,039 scalar
updates, 2,176 scalar-relation occurrences, and five capacity-forced
signs. After dependency pruning, 123 stages require coordinate
boxes. These are fixed finite tables.

[check_n6_bttt_top_triangle_word.js](check_n6_bttt_top_triangle_word.js)
is a separate standard-library reader. It parses the Markdown
tables directly, rebuilds every physical polynomial and all
endpoint substitutions with BigInt rational arithmetic, checks
the geometric witnesses and scalar identities, verifies source
order and branch inheritance, and checks every terminal. It
imports no discovery code. The author replay also verified an
exact round trip from the printed tables to the fixed derivation,
including every rational literal.

The optional command is:

~~~text
node n10/hand/check_n6_bttt_top_triangle_word.js
~~~

It reads the Markdown index and its linked companion tables.
The proof obligations are the displayed identities and inequalities
themselves; the reader exactly replays that written argument.

## 8. Independent acceptance

A second implementation,
[audit_n6_bttt_top_triangle_word.js](audit_n6_bttt_top_triangle_word.js),
checks the fixed argument with a separate rational/polynomial engine,
independent geometric inference checks, and independent interval and
scalar replay. It reuses only the first reader's Markdown syntax parser;
it does not call that reader's proof-verification function or any discovery
routine. The independent execution passes all 37 contexts, 1,799 geometric
deductions, 1,979 physical factors, 4,501 polynomial-identity expansions,
6,294 coordinate updates with 60,725 endpoint lines, 3,734 initial scalar
bounds, 13,039 scalar updates, 2,176 relations, and all five capacity signs.
It also verifies the 16 sign splits, nine weak coordinate splits, inherited
source scopes, and all 26 contradictory leaves. Every positive gap in
Section 6 was separately compared against its exact terminal expression.

Deliberately deleting one sign half, changing an endpoint coefficient,
and importing a scalar bound from a sibling case are each rejected by the
second implementation. All strict rational comparisons in the coarse-box
reduction were checked separately. This acceptance closes the stated word
only; the remaining BTTT words and the ITTT parent are still separate
obligations.

The optional second replay command is:

~~~text
node n10/hand/audit_n6_bttt_top_triangle_word.js
~~~
