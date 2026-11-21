# The normalized BTTT top word ---- is impossible

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
   \operatorname{sgn}FRS,\operatorname{sgn}QRS)=(-,-,-,-).
 \tag{1}
\]

**Theorem.** These hypotheses are inconsistent.

This closes exactly the normalized BTTT word (1). The other BTTT
words and the ITTT count require their separate closures. The
top-word catalogue and its role in the six-contact decomposition
are in [N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md). No candidate
configuration or neighborhood hypothesis occurs here.

The complete fixed argument is printed in
[the proof index](n6_bttt_top_word_mmmm_tables/INDEX.md),
[the geometric contexts](n6_bttt_top_word_mmmm_tables/contexts.md),
and the two stage-table files linked from that index. The tables
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

There are seven additional capacity deductions. An already proved
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
5. The top-container factor \((1-e)(1-f)-Ks\), justified by (4).
6. An earlier proved bound for that same absolute actual determinant.

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

## 5. Scalar relations and immutable references

Write \(A_{XYZ}=|[XYZ]|\). Initial lower bounds are witnessed
triangle-occupancy costs. An initial upper bound is the exact
multiaffine endpoint maximum on that stage's completed coordinate
box, or the universal unit-square ceiling one. A previously proved
bound may also be inherited from a strictly earlier stage in the
same case.

The retained scalar relations are actual fan identities, unsigned
five-label identities \(XY=UV+WZ\), occupied-quadrilateral sums,
and endpoint-support inequalities \(XY\ge\kappa(X-Z)\).
Every actual point, convex hull, interior witness, and diagonal
is specified in the tables.

There are four quadrilateral sum occurrences. The three at stage 9
use the actual convex quadrilaterals \(ABEQ,ACEQ,CEQA\), each
containing \(P,R,S\), and doubled-area floor \(93/91\).
This is the unit-square theorem
[SQUARE_QUADRILATERAL_THREE.md](SQUARE_QUADRILATERAL_THREE.md).
The occurrence at stage 22 uses \(BRQA\), with \(P\) inside, and
the weaker floor \(24s/5=279/625\).

There are three support occurrences. The convex actual pentagons
\(PFHAB,FPCER\) use rate \(11\). For a positive pentagon \(ABCDE\)
the corresponding variables are

\[
 X=A_{ABE},\qquad Y=A_{ADE},\qquad Z=A_{ABD},\qquad
 \kappa=11s.
\]

The quadrilateral \(SBRQ\), containing \(P\), uses rate \(29/5\).
For a positive quadrilateral \(ABCD\) the variables are

\[
 X=A_{ABD},\qquad Y=A_{ABC},\qquad Z=A_{ACD},\qquad
 \kappa=(29/5)s.
\]

These are the witnessed endpoint constructions of
[QUADRILATERAL_SUPPORT.md](QUADRILATERAL_SUPPORT.md).
When \(X-Z\le0\), actual positivity already proves the inequality.
When \(X-Z>0\), the endpoint-triangle theorem gives the displayed
rate.

Each scalar update isolates its target quantity and substitutes
bounds in the correct direction. The exact result and its outward
rounding to \(10^{-6}\) are printed. Every divisor is positive.
For example,

\[
 X\ge\frac{\ell_U\ell_V+\ell_W\ell_Z}{u_Y},\qquad
 Y\ge\kappa\left(1-\frac{u_Z}{\ell_X}\right),\qquad
 X\le\frac{\kappa u_Z}{\kappa-u_Y}\quad(u_Y<\kappa).
\]

The complete rules are in
[SCALAR_AREA_INTERVALS.md](SCALAR_AREA_INTERVALS.md).
A nonpositive lower expression is harmless; a negative upper
product numerator already contradicts positivity and may be
weakened to the upper bound zero.

Identifiers of the form stage:row name immutable bound versions.
A physical factor can use only a completed earlier scalar bound.
A coordinate-box area maximum is introduced only after the box
has been proved. Case assumptions are inherited down the printed
tree; a sibling branch is never a source.

## 6. The exact affine contradiction at stage 32

The final case uses a finite nonnegative linear combination of
79 affine functions of actual unsigned areas. Its entire coefficient
table and every endpoint source are printed at stage 32.
All sources are initial area bounds from that stage's completed
coordinate box; this terminal uses no scalar-update ancestry.

There are 18 signed fan identities, 36 signed four-point identities,
and 25 consequences of the five-label product identity. The
four-point identity is

\[
 [ABC]+[ACD]-[ABD]-[BCD]=0. \tag{10}
\]

All relevant actual signs are already fixed, so (10) is an affine
equality in the positive variables \(A_{XYZ}\). Either sign of the
equality is a valid nonnegative factor. The analogous statement
holds for a fan identity.

For the product factors, let
\(\ell_X\le X\le u_X\) and \(\ell_Y\le Y\le u_Y\).
The four elementary affine envelopes of \(XY\) are

\[
\begin{aligned}
 L_0&=\ell_XY+\ell_YX-\ell_X\ell_Y\le XY,\\
 L_1&=u_XY+u_YX-u_Xu_Y\le XY,\\
 U_0&=u_XY+\ell_YX-u_X\ell_Y\ge XY,\\
 U_1&=\ell_XY+u_YX-\ell_Xu_Y\ge XY.
\end{aligned}
\tag{11}
\]

The first two inequalities are the nonnegativity of
\((X-\ell_X)(Y-\ell_Y)\) and \((u_X-X)(u_Y-Y)\).
The other two follow from
\((u_X-X)(Y-\ell_Y)\) and \((X-\ell_X)(u_Y-Y)\).
Every endpoint in (11) is a particular proved bound, named by its
immutable reference.

Orient a proved unsigned identity \(XY-UV-WZ=0\) either way.
Replace each positive product by one of its upper envelopes,
and each negative product by minus one of its lower envelopes.
The resulting affine function is nonnegative. Each printed row
records the identity, orientation, envelope choice, and all six
endpoint references. Its expanded affine coefficients are also
written explicitly.

Let the 79 resulting functions be \(F_i\ge0\), and let \(n_i\)
be the printed positive integers. The table prints the exact sum

\[
 L=\sum_i n_iF_i=C+\sum_T c_T A_T\ge0.
\]

Its maximum on the proved area box is obtained by using an upper
endpoint for \(c_T>0\) and a lower endpoint for \(c_T<0\).
The literal sum gives

\[
 L\le
 -\frac{782488434999557390570039}
        {500000000000000000000000}<0, \tag{12}
\]

a contradiction. The argument consists of (10), (11), the displayed
positive integer weights, and one exact rational comparison.
No numerical optimum is a premise.

## 7. Exhaustive case coverage

All actual determinants are nonzero. The fifteen binary
actual-sign splits have the sixteen leaves listed below.
There is no coordinate case cut. Capacity-forced signs are proved
facts and add no cases. Each suffix indicates the sign of the
named actual determinant.

| Actual-sign assumptions | Terminal stage |
| --- | --- |
| APQ- AQR+ | 4 |
| APQ+ AQR+ | 6 |
| APQ- AQR- AQS- | 7 |
| APQ+ AQR- AQS- | 10 |
| APQ- AQR- AQS+ BQR+ | 13 |
| APQ+ AQR- AQS+ CQR- | 14 |
| APQ- AQR- AQS+ BQR- HQS- | 17 |
| APQ- AQR- AQS+ BQR- HQS+ | 18 |
| APQ+ AQR- AQS+ CQR+ HQS+ | 20 |
| APQ+ AQR- AQS+ CQR+ HQS- BPQ- | 22 |
| APQ+ AQR- AQS+ CQR+ HQS- BPQ+ BQR+ | 25 |
| APQ+ AQR- AQS+ CQR+ HQS- BPQ+ BQR- PQR+ | 27 |
| APQ+ AQR- AQS+ CQR+ HQS- BPQ+ BQR- PQR- APR- | 28 |
| APQ+ AQR- AQS+ CQR+ HQS- BPQ+ BQR- PQR- APR+ BPR- | 30 |
| APQ+ AQR- AQS+ CQR+ HQS- BPQ+ BQR- PQR- APR+ BPR+ HRS- | 32 |
| APQ+ AQR- AQS+ CQR+ HQS- BPQ+ BQR- PQR- APR+ BPR+ HRS+ | 33 |

At stage 4, the points \(P,R,S\) are strictly inside \(FAQ\).
The distributed-three catalogue has no possible labeling.
For completeness, the following table names one conflicting
determinant for each of its six assignments. Each listed determinant
would have to be positive in the mesh (7), whereas its proved sign
is negative.

| Assignment \((X,Y,Z)\) in outer triangle \(FAQ\) | Required positive determinant with proved negative sign |
| --- | --- |
| P, R, S | FSP |
| P, S, R | FRS |
| R, P, S | FSP |
| R, S, P | FRS |
| S, P, R | FRP |
| S, R, P | QRS |

At stage 13, the points \(P,R,S\) lie inside \(FBQ\), and
\(P,S\) both lie inside its fan triangle \(FBR\).
This is the forbidden clustered-three placement. Every containment
has all three actual edge tests in the printed context.

For each remaining leaf, the following is a positive lower bound
for the contradiction gap. At an interval terminal it is the
negative of the largest endpoint value of all final affine lines.
At the scalar terminal it is the lower bound minus the upper bound
of the same actual area. Stage 32 is the exact affine contradiction
(12).

| Stage | Contradiction | Positive gap at least |
| --- | --- | --- |
| 6 | Negative factor A_CEP throughout the target interval for c | 6437/1000000 |
| 7 | Negative factor A_ABP throughout the target interval for a | 5433/500000 |
| 10 | Negative factor A_CHP throughout the target interval for c | 10359/500000 |
| 14 | Negative factor A_EFQ throughout the target interval for e | 5509/250000 |
| 17 | Negative factor A_EQR throughout the target interval for e | 117/125000 |
| 18 | Negative factor A_HQS throughout the target interval for h | 33791/500000 |
| 20 | Negative factor A_HQS throughout the target interval for h | 6917/1000000 |
| 22 | Incompatible bounds for BCF | 733/125000 |
| 25 | Negative factor A_BCE throughout the target interval for b | 1763/1000000 |
| 27 | Negative factor A_FPQ throughout the target interval for f | 6307/500000 |
| 28 | Negative factor A_BPQ throughout the target interval for b | 5623/50000 |
| 30 | Negative factor A_BQR throughout the target interval for b | 73041/1000000 |
| 32 | Negative maximum of the nonnegative weighted affine sum | 782488434999557390570039/500000000000000000000000 |
| 33 | Negative factor A_HRS throughout the target interval for h | 5531/1000000 |

Every gap is strictly positive. Both geometric leaves and all
fourteen metric leaves are impossible, so the complete stated
BTTT word is excluded.

## 8. Literal tables and exact replay

The fixed proof has 34 contexts and 1,584 geometric deductions,
34 stages, 19 proved coordinate boxes, 1,948 exact coordinate
updates, 586 physical-factor occurrences, 322 initial scalar bounds,
846 scalar updates, and 191 scalar-relation occurrences.
The scalar relations comprise 56 fans, 128 five-label identities,
four quadrilateral sums, and three support inequalities.
Seven capacity deductions use completed earlier upper bounds.
The affine terminal contains 79 factors with 79 positive integer
weights. There are 16 contradictory leaves and no coordinate cut.

[check_n6_bttt_top_word_mmmm.js](check_n6_bttt_top_word_mmmm.js)
is a separate standard-library reader of the Markdown tables.
It reconstructs the physical polynomials, all endpoint lines,
the geometric deductions and occupancy witnesses, immutable
scalar updates, the affine product envelopes and their weighted
sum, and the exhaustive case tree.
It imports no discovery implementation.

The author replay passed an exact round trip from the complete
printed tables to the fixed derivation, including every rational
literal. A second semantic implementation,
[audit_n6_bttt_top_word_mmmm.js](audit_n6_bttt_top_word_mmmm.js),
independently passed all 1,584 geometric deductions, 1,188 physical
identity expansions, 17,821 endpoint lines, 846 scalar updates,
79 affine factors and all sixteen leaves. Its only shared component
is the Markdown syntax parser; its geometry and arithmetic rules
are reconstructed independently. The optional command is:

~~~text
node n10/hand/check_n6_bttt_top_word_mmmm.js
~~~

The reader checks the displayed fixed argument. The proof itself
is supplied by the literal geometry, identities, inequalities,
source references, and exact contradictions above and in the
linked tables.
