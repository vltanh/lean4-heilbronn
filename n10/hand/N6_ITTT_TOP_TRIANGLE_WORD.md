# The normalized ITTT top word --+- is impossible

## 1. Statement and complete setup

Let \(s=93/1000\), and use the six distinct actual contacts

\[
 A=(0,a),\quad B=(b,0),\quad C=(c,0),\quad
 E=(1,e),\quad F=(f,1),\quad H=(0,h)
\]

with \(0<a<h\le1,\ 0<b<c\le1,\ a\le e\le h,\ b\le f\le c\),
and the stated normalization \(e\le f\).
Let \(P=(p,q)\) be strictly inside the actual quadrilateral \(HCEF\).
Let \(Q=(u,v),R=(r,w),S=(j,k)\) lie in the closed virtual top triangle
\(EF(1,1)\), strictly on the corner side of \(EF\).
Every point is in the unit square, the ten actual points are distinct,
and every actual unsigned doubled triangle area is at least \(s\).

Write \([XYZ]=\det(Y-X,Z-X)\). The top labels satisfy
\(EQR,EQS,ERS>0\), and their four-letter word is

\[
 FQR<0,\quad FQS<0,\quad FRS>0,\quad QRS<0. \tag{1}
\]

**Theorem.** No configuration satisfies these hypotheses.

This is the whole normalized ITTT word (1), with no additional
actual-sign or coordinate case assumed. The remaining top words
are separate children of the top-triple catalogue in
[N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md).

The literal proof is printed in
[the case index](n6_ittt_top_triangle_word_tables/INDEX.md),
[the geometric contexts](n6_ittt_top_triangle_word_tables/contexts.md),
and four stage-table files linked from the index.
Every rational polynomial coefficient, endpoint affine line,
scalar relation, source reference, and terminal is explicit there.
Those tables form part of the argument.

## 2. Initial signs and boxes

Use

\[
 \alpha=\frac{1037}{10000},\qquad K=\frac{149}{20},\qquad
 J=\frac{4427}{500}.
\]

The actual triangle costs for zero, one, two, or three interior
actual points are \(s,3s,Ks,Js\), respectively.

The anchor hexagon is positively convex in cyclic order \(ABCEFH\).
The point \(P\) has its inward anchor-edge signs and \(HCP>0\).
For each top point \(T\), the initial signs are \(EFT<0\), the other
five inward anchor-edge signs, \(HCT>0,HET>0,CFT<0\), and

\[
 EPT<0,\qquad FPT>0. \tag{2}
\]

The latter follow, including on closed square sides, from

\[
\begin{aligned}
 (1-f)[EPT]&=(1-p)[EFT]-(1-x_T)[EFP],\\
 (1-e)[FPT]&=(1-y_T)[EFP]-(1-q)[EFT].
\end{aligned}
\]

Here \(P\) is strictly inside \(HCEF\), so \(EFP>0\), \(p,q<1\),
and \(EFT<0\). There is no initially prescribed \(HPT\) or \(CPT\)
order in this ITTT argument; any such sign is individually proved
or explicitly split in the printed tree.

The top signs put \(R,S\) inside \(EQF\), whence

\[
 (1-e)(1-f)\ge Ks. \tag{3}
\]

As in the anchor calculation of the setup, \(a,b>\alpha\), because
\(s-\alpha(1-\alpha)=5369/10^8>0\).
Thus \(e,f>\alpha\). Define

\[
 \delta=\frac{s}{1-\alpha},\qquad
 t=1-\frac{Ks}{1-\alpha}=\frac{4069}{17926}.
\]

Then \(a,b,e,f\le t\).
The normalization \(e\le f\) and (3) give \(a,e<21/125\), since

\[
 Ks-(1-21/125)^2=\frac{313}{500000}>0.
\]

The actual triangles \(ABC,ABE,ACE,BCE,ABF,ABH,AFH,BFH\) have
respective affine ceilings \(a,e,e,e,f,b,f,f\).
They are all empty of other actual points, as

\[
 3s-t=\frac{466177}{8963000}>0. \tag{4}
\]

The lower endpoint container \(H(0,0)C\) contains the four actual
contacts \(H,A,B,C\). Its contact Cauchy bound is \(hc\ge4s\).
Indeed, put x=a/h and y=b/c. The actual clearances give
hc*x*(1-y)>=s and hc*y*(1-x)>=s. If x<=y, then
x*(1-y)<=y*(1-y)<=1/4; if y<=x, use the other product.
Thus hc>=4s. This is the lower floor used here; \(P\) is in the upper actual
quadrilateral. The anchor clearances sharpen the coordinate floors
to

\[
 c\ge\max(4s,\alpha+s/a_{\max}),\qquad
 h\ge\max(4s,\alpha+s/b_{\max}). \tag{5}
\]

All free coordinates are at least \(\delta\). For the upper
central point \(P\), both coordinates are at most \(1-s\).
For completeness, the exact identities are

\[
\begin{aligned}
 (1-f)[CEP]+(1-c)[EFP]&=[CEF](1-p),\\
 (1-e)(-[HFP])+(1-h)[EFP]&=[HEF](1-q).
\end{aligned}
\tag{6}
\]

The two left sides are at least \((1-f)s\) and \((1-e)s\).
The corresponding actual anchor areas are at most \(1-f\)
and \(1-e\), so (6) proves the claimed upper bounds.

For a top point \(T\), if \(n=0,1,2\) of the other top points
are already known inside \(EFT\), put \(c_n=1,3,K\). Its actual
area gives

\[
 x_T,y_T\ge\alpha+c_ns/(1-\alpha). \tag{7}
\]

If \(U\) lies inside an actual \(EFT\), write
\(U=\lambda_EE+\lambda_FF+\lambda_TT\), and let \(D=|[EFT]|\).
Then \(\lambda_F\ge s/D\) and \(\lambda_E\ge s/D\), whence

\[
\begin{aligned}
 1-x_U&\ge s(1-f)/D\ge s/(1-e)\ge\delta,\\
 1-y_U&\ge s(1-e)/D\ge s/(1-f)\ge\delta.
\end{aligned}
\tag{8}
\]

These facts specify the entire initial box in each sign context.
The displayed later boxes intersect it with previously proved
boxes from the same case.

## 3. Exact inference rules used in the tables

The geometric and interval rules are the general rules proved in
[N6_BTTT_TOP_TRIANGLE_WORD.md](N6_BTTT_TOP_TRIANGLE_WORD.md),
Sections 3–5, applied to the present initial domain.
The BTTT lower-point assumptions are not part of these rules.

Geometric rows use the five-label determinant identity, the empty
anchor triangles (4), affinity over a proved container, or the
distributed three-interior-point mesh. The six mesh labelings have
the thirteen positive determinants

\[
 ABZ,\ BCX,\ CAY,\ AZY,\ BXZ,\ CYX,\ ZXY,\ AZX,\ BXY,\ CYZ,\
 AXY,\ BYZ,\ CZX.
\]

The outer triangle and its three actual interior points are printed.
A deduction is allowed only when every surviving labeling gives
the same sign.

A coordinate factor is a signed actual determinant minus its
witnessed occupancy floor, a contact order, \(hc-4s\), a weighted
top-fan bound from
[N6_TOP_WEIGHTED_BARYCENTRICS.md](N6_TOP_WEIGHTED_BARYCENTRICS.md),
or an earlier proved area bound.
Each factor's complete physical polynomial is printed.
For a target coordinate, every endpoint substitution of the other
coordinates gives a printed affine line \(Ax+B\). The factor is
a convex combination of those lines. The new target interval is
the hull where at least one line can be nonnegative, rounded
outwards to multiples of \(10^{-6}\).
An empty hull is a displayed contradiction.

Scalar rows use actual fan identities, signed five-label identities,
occupied-quadrilateral floors, or the endpoint-support inequality

\[
 XY\ge \kappa(X-Z). \tag{9}
\]

Each exact substitution and outward rounding is printed.
Every reference names a particular earlier version of its bound.
An area cap from a box is used only after that box is proved;
a later physical factor can use a completed earlier area stage.
No circular or sibling-branch source is permitted.

There are fourteen capacity sign deductions. Each names an actual
triangle, its already proved upper bound, the existing occupants,
and a proposed extra point. Its two known inward edge tests and
an upper bound below the next occupancy cost force the third
test to be outward. The full witnesses and rational comparisons
are in the index.

The additional scalar costs actually needed here are as follows.

* Two one-interior quadrilateral sums use the bound \(24s/5\).
* Nine three-interior quadrilateral sums use the unit-square bound
  \(93/91\), from
  [SQUARE_QUADRILATERAL_THREE.md](SQUARE_QUADRILATERAL_THREE.md).
  Every actual outer quadrilateral is convex, and all three
  occupants are named with their inward edge signs.
* Twelve convex-five support relations use rate \(11\).
* Two support relations use the quadrilateral \(HEQF\), with both
  \(R,S\) inside its contact ear \(EQF\), and rate \(139/10\).
* One relation uses \(QFPE\) with actual interior points \(R,S\)
  and the generic two-point rate \(1142/125\).

For a positive quadrilateral \(ABCD\), the support variables are
\(X=A_{ABD},Y=A_{ABC},Z=A_{ACD}\), where \(A\) denotes absolute
doubled area. The rate \(139/10\) is justified by the two-point
ear cost \(K\) and the opposite actual ear cost one: the support
Cauchy bound is \((1+\sqrt K)^2\), and

\[
 K-(109/40)^2=\frac{39}{1600}>0
\]

proves \((1+\sqrt K)^2>139/10\).
The generic rate \(1142/125\) is exactly
[SIX_POINT_ENDPOINT_REFINED.md](SIX_POINT_ENDPOINT_REFINED.md).
The complete geometry of these support constructions is in
[QUADRILATERAL_SUPPORT.md](QUADRILATERAL_SUPPORT.md).
For a convex actual pentagon \(ABCDE\), rate \(11\) uses
\(X=A_{ABE},Y=A_{ADE},Z=A_{ABD}\).
When \(X-Z\le0\), positivity proves (9) directly; the support
container is used only when \(X-Z>0\).

## 4. Complete case tree and contradictions

All actual determinants are nonzero. The nineteen binary
actual-sign splits in the index have the following twenty leaves.
They require no coordinate case cut. A plus or minus suffix
specifies the sign of that actual determinant.

| Actual-sign assumptions | Terminal stage |
| --- | --- |
| CFP+ EHP+ | 8 |
| CFP- EHP- CPS+ | 10 |
| CFP- EHP+ APR- | 11 |
| CFP+ EHP- APQ+ | 22 |
| CFP- EHP- CPS- APS- | 24 |
| CFP- EHP+ APR+ CPS+ | 27 |
| CFP+ EHP- APQ- AQR+ | 29 |
| CFP- EHP- CPS- APS+ APR+ | 32 |
| CFP- EHP+ APR+ CPS- APQ- | 33 |
| CFP+ EHP- APQ- AQR- BQR+ | 36 |
| CFP- EHP- CPS- APS+ APR- HPR- | 37 |
| CFP- EHP+ APR+ CPS- APQ+ AQR+ | 40 |
| CFP+ EHP- APQ- AQR- BQR- CQR- | 41 |
| CFP- EHP- CPS- APS+ APR- HPR+ APQ- | 43 |
| CFP- EHP+ APR+ CPS- APQ+ AQR- AQS- | 45 |
| CFP- EHP+ APR+ CPS- APQ+ AQR- AQS+ | 49 |
| CFP+ EHP- APQ- AQR- BQR- CQR+ HQS- | 50 |
| CFP+ EHP- APQ- AQR- BQR- CQR+ HQS+ | 51 |
| CFP- EHP- CPS- APS+ APR- HPR+ APQ+ CQR- | 52 |
| CFP- EHP- CPS- APS+ APR- HPR+ APQ+ CQR+ | 53 |

Fourteen capacity signs are proved facts, not extra branches.
Every listed terminal is one of the following exact contradictions.

At stage 33, \(P,R,S\) are inside \(FAQ\), and \(R,S\) are both
inside its actual fan triangle \(QFP\).
At stage 40 the same statement holds with outer triangle \(FCQ\).
Each is the forbidden clustered-three pattern in an actual triangle
of doubled area at most one. The three outer-edge tests and each
fan containment are among the printed known signs.

For each of the other eighteen leaves, the following rational
number is a positive lower bound for its contradiction gap.
For an interval terminal it is the negative of the largest endpoint
value of its final affine lines. For an area terminal it is the
proved lower bound minus the proved upper bound of one actual area.

| Stage | Contradiction | Positive gap at least |
| --- | --- | --- |
| 8 | Incompatible bounds for CEH | 929/500000 |
| 10 | Negative factor A_CES on its target interval | 183/200000 |
| 11 | Incompatible bounds for ERS | 8783/200000 |
| 22 | Incompatible bounds for EFQ | 2627/1000000 |
| 24 | Negative factor A_EFP on its target interval | 103/125000 |
| 27 | Negative factor A_EHP on its target interval | 16833/500000 |
| 29 | Negative factor A_AFQ on its target interval | 7387/1000000 |
| 32 | Negative factor A_BPR on its target interval | 681/125000 |
| 36 | Negative factor A_FRS on its target interval | 3593/200000 |
| 37 | Negative factor A_CFS on its target interval | 81/40000 |
| 41 | Negative factor A_EFQ on its target interval | 47021/1000000 |
| 43 | Incompatible bounds for AFP | 9393/1000000 |
| 45 | Negative factor A_FRS on its target interval | 3723/1000000 |
| 49 | Negative factor A_EQR on its target interval | 18901/1000000 |
| 50 | Negative factor A_CFP on its target interval | 8621/1000000 |
| 51 | Incompatible bounds for EFQ | 7541/1000000 |
| 52 | Negative factor A_EFQ on its target interval | 33/8000 |
| 53 | Incompatible bounds for CRS | 783/500000 |

Thus all twenty leaves are impossible. Their actual-sign splits
exhaust the stated ITTT word, proving the theorem.

## 5. Printed tables and replay

After deleting unused trailing stages, the fixed written argument
has 44 geometric contexts, 2,084 geometric deductions, 54 stages,
39 proved coordinate boxes, 5,275 exact coordinate updates, 1,139
physical-factor occurrences, 439 initial area bounds, 2,730 exact
scalar updates, and 312 scalar-relation occurrences.
The latter consist of 94 fans, 192 five-label identities,
11 quadrilateral sums, and 15 support relations.

[check_n6_ittt_top_triangle_word.js](check_n6_ittt_top_triangle_word.js)
is a separate standard-library reader of the Markdown tables.
It reconstructs the physical polynomials and exact endpoint lines,
checks every occupancy and support witness, validates all immutable
references and parent boxes, and verifies the nineteen-split
coverage and every terminal. The author check also passed an exact
round trip from the complete printed tables, including every rational
literal, to the fixed derivation.

The optional command is:

~~~text
node n10/hand/check_n6_ittt_top_triangle_word.js
~~~

The reader imports no discovery implementation. The displayed fixed
tables supply every arithmetic and geometric premise of the proof.

## 6. Independent acceptance

[audit_n6_ittt_top_triangle_word.js](audit_n6_ittt_top_triangle_word.js)
replays the same printed proof with a separate rational/polynomial engine
and independent semantic checks. It uses the first reader only to parse
Markdown syntax; it does not call its proof verifier or a discovery
routine. The independent run passes all 44 contexts, 2,084 geometric
deductions, 1,139 physical factors, 1,885 exact polynomial-identity
expansions, 5,275 coordinate updates with 44,780 endpoint lines,
439 initial scalar bounds, 2,730 scalar updates, 312 relations,
14 capacity signs, and all 20 leaves. It checks every inherited bound,
all 19 binary sign splits, and both clustered-triple witnesses.

Four independent physical expansions verify the central-coordinate
identities and their anchor ceilings in Section 2. The support-rate
square gap, all eighteen positive terminal-gap bounds, and the twenty
rows of the explanatory case ledger were checked separately. Changing
a clustered terminal's fan to an unrelated actual triangle is rejected.

The optional independent command is:

~~~text
node n10/hand/audit_n6_ittt_top_triangle_word.js
~~~

This acceptance closes precisely the normalized --+- word. Other
ITTT words and the entire ITTT parent remain open.
