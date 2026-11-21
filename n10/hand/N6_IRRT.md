# N6: one central point, a side pair and a top point

## 1. The whole count and its hypotheses

Put \(s=93/1000\). All areas in this note are doubled areas.
Use the six distinct actual contacts
\[
 A=(0,a),\ B=(b,0),\ C=(c,0),\
 E=(1,e),\ F=(f,1),\ H=(0,h)
\]
in their positive cyclic order, with
\[
 0<a<h\le1,\quad 0<b<c\le1,\qquad
 a\le e\le h,\quad b\le f\le c.
\]
Let \(P=(p,q)\) be strictly inside \(HCEF\), let \(Q=(u,v)\)
be in the closed top corner triangle \(EF(1,1)\) on the outer
side of \(EF\), and let two further actual points occupy the
right corner triangle \(CE(1,0)\), on the outer side of \(CE\).
All ten points are distinct and in the closed unit square.
Assume that every actual unsigned triangle area is at least \(s\).

**Theorem.** These hypotheses are inconsistent.

This excludes the entire N6 count
\[
 (k,j,r,t,l)=(0,1,2,1,0).
\]
Transposition of the square excludes its left-side reflection.
There is no ordering assumption on \(P,Q\), no candidate-neighborhood
condition, and no additional contact normalization.

[N6_SIDE_PAIR_REDUCTION.md](N6_SIDE_PAIR_REDUCTION.md) proves that
the two right points have a triangular actual cap hull. Label the
outer one \(R=(r,w)\) and the inner one \(S=(j,k)\), so
\(S\) lies strictly inside \(CER\). This choice covers both original
labels. The same reduction gives the endpoint support cost
\[
 e(1-b)\ge (4+2\sqrt3)s>\rho,\qquad \rho=\frac{347}{500}.
 \tag{1}
\]
Here and below a virtual endpoint container is used only through
its proved theorem for the named actual points.

The full fixed argument is in
[the index](n6_irrt_tables/INDEX.md) and its thirteen linked case
tables. Those tables are part of this proof: every geometric
deduction, physical polynomial, endpoint affine line, scalar
substitution, positive integer multiplier and terminal value is
printed. No discovery output or numerical solver result is a premise.

## 2. The common coordinate domain

Write
\[
 \alpha=\frac{1037}{10000},\quad E_0=\frac{897}{1000},\quad
 c_0=4s=\frac{93}{250},\quad c_1=\frac{609}{1000},\quad
 r_0=\frac{23}{25}.
\]
The actual \(ABC,ABH\) clearances give \(a,b>\alpha\).
Indeed, if \(a\le\alpha\), then
\(b\ge s/(1-a)>\alpha\ge a\), while
\(a(1-b)\le a(1-a)\le\alpha(1-\alpha)<s\), a contradiction.
Interchange \(a,b\) for the other conclusion. The exact gap is
\(s-\alpha(1-\alpha)=5369/10^8\).

Section 6 of
[C1_SIDE_PAIR_TOP_BOUNDS.md](C1_SIDE_PAIR_TOP_BOUNDS.md) explicitly
transfers its top-point inequalities to the actual N6 contacts.
It gives
\[
 e<E_0,\qquad c<c_1,\qquad r>r_0.
 \tag{2}
\]
No C1 lower-point hypothesis is imported. The four actual contacts
\(H,A,B,C\) also give \(hc\ge4s\): with \(x=a/h,\ y=b/c\), the two
clearances are \(hc\,x(1-y)\ge s\) and \(hc\,y(1-x)\ge s\);
the smaller of the two products is at most \(1/4\).
In particular \(c,h\ge c_0\).

Define the following positive rational constants:
\[
\begin{aligned}
 b_1&=1-\rho/E_0,&
 a_0&=s/(c_1-\alpha),&
 a_1&=1-s/b_1,\\
 e_0&=\rho/(1-\alpha),&
 w_1&=E_0-3s/(1-c_0),&
 x_0&=s/(1-a_0),\\
 f_1&=\min\{c_1,1-s/(1-e_0)\},&
 u_0&=\alpha+s/(1-e_0),&
 v_0&=e_0+s/(1-\alpha).
\end{aligned}
\tag{3}
\]
The original coordinate box is
\[
\begin{array}{c|cc}
 &\text{lower}&\text{upper}\\ \hline
 a&a_0&a_1\\
 b&\alpha&b_1\\
 c&c_0&c_1\\
 e&e_0&E_0\\
 f&\alpha&f_1\\
 h&e_0&1\\
 p&x_0&1-s\\
 q&a_0&1-s\\
 u&u_0&1\\
 v&v_0&1\\
 r&r_0&1\\
 w&a_0&w_1\\
 j&(5c_0+3+3r_0)/11&(3c_1+8)/11\\
 k&3(e_0+a_0)/11&(5E_0+3w_1)/11
\end{array}
\tag{4}
\]
Every endpoint is written as a literal fraction in the index.

Here is the derivation of all entries not already in (1)--(2).
Equation (1) gives \(b\le b_1,\ e\ge e_0\), and \(h\ge e\).
The actual \(ABC\) clearance gives \(a\ge a_0\), while \(ABH\)
gives \(a\le a_1\). Every free ordinate \(y_T\) satisfies
\((c-b)y_T\ge s\), so \(y_T\ge a_0\).
The actual \(AHP\) clearance gives \(p\ge x_0\).
A point in the central quadrilateral \(HCEF\) has both coordinates
at most \(1-s\), by the two actual-area identities in Section 2 of
[N6_ITTT_TOP_TRIANGLE_WORD.md](N6_ITTT_TOP_TRIANGLE_WORD.md);
those identities do not require a top triple.

The actual top area is bounded above by
\((1-e)(1-f)\), by \((1-e)(u-f)\), and by \((1-f)(v-e)\).
These give \(f\le f_1,\ u\ge u_0,\ v\ge v_0\).
Since \(S\in CER\), the actual outer area
\[
 U=-[CER]=e(r-c)-(1-c)w
\]
is at least \(3s\), whence \(w\le w_1\).

[N6_SIDE_PAIR_BOUNDS.md](N6_SIDE_PAIR_BOUNDS.md) proves
\(U<(11/3)s\). Thus all three barycentric weights of \(S\) in
\(CER\) exceed \(3/11\); their individual upper bounds are \(5/11\).
Since \(c\le r\le1\) and \(0\le w\le e\), the resulting four
nonnegative affine expressions are
\[
\begin{aligned}
11j-5c-3-3r&\ge0,& 3c+5+3r-11j&\ge0,\\
11k-3e-3w&\ge0,& 5e+3w-11k&\ge0.
\end{aligned}
\tag{5}
\]
Substitution of the earlier bounds gives the final two rows of (4).
All strict inequalities have been weakened to closed bounds, so
outer-square boundary cases are included.

## 3. The initial actual signs

All twenty cyclic anchor triples are positive. The inward tests
for \(P\in HCEF\), the top cap and the two right-cap points give
the usual contact-side tests. The index prints the complete list
of 81 initial signs. Three strengthened tests deserve explanation.

First, \(HEF\le1-e\le1-e_0<3s\), so \(P\) cannot be inside \(HEF\).
The diagonal \(HE\) of \(HCEF\) therefore puts \(P\) inside \(HCE\).
In particular \(CEP,EHP>0\). The relevant exact gap is
\[
 3s-(1-e_0)=\frac{477677}{8963000}>0.
\]

Second, if \(BEP<0\), then the six actual points \(B,C,E,R,S,P\)
all lie in the endpoint triangle \(BE(1,0)\). Its doubled area
is at most \(E_0(1-\alpha)\), whereas the endpoint-six theorem
requires at least \(\Gamma_3s\), with
\(\Gamma_3=(11+3\sqrt5)/2\). This is impossible because
\[
 \Gamma_3s>\frac{823}{1000},\qquad
 \frac{823}{1000}-E_0(1-\alpha)
   =\frac{190189}{10000000}>0.
\]
Thus \(BEP>0\).

Third, [SIDE_PAIR_AREA_REFINEMENTS.md](SIDE_PAIR_AREA_REFINEMENTS.md)
gives the actual bound \(BCR<(3/2)s\).
If \(BRS<0\), the inward tests \(BCS>0,CRS>0\) would put \(S\)
inside \(BCR\), requiring \(BCR\ge3s\).
Hence \(BRS>0\). The remaining side-pair tests
\(ERS<0,CRS>0\) express \(S\in CER\).

For clarity, \(EQR,EQS>0\) hold because a top point has coordinates
\(u\le1,v\ge e\), and a right-cap point has \(r\le1,w\le e\):
\[
 [EQR]=(1-u)(e-w)+(v-e)(1-r)\ge0.
\]
The actual minimum excludes zero. The same identity applies to \(S\).
Both right points satisfy \(x_T>c\) and \(0<y_T<e\) by (4).
The cap condition gives \([CET]<0\). The remaining signs follow
from the following explicit expressions and bounds:
\[
\begin{aligned}
 [ABT]&=a(x_T-b)+by_T>0,&
 [ACT]&=a(x_T-c)+cy_T>0,\\
 [BHT]&=h(b-x_T)-by_T<0,&
 [CHT]&=h(c-x_T)-cy_T<0,\\
 [AHT]&=-(h-a)x_T<0,&[BCT]&=(c-b)y_T>0,\\
 [EFT]&=(1-f)(e-y_T)+(1-e)(1-x_T)>0,\\
 [EHT]&=e-y_T+(h-e)(1-x_T)>0,\\
 [FHT]&=f(1-y_T)+(1-h)(x_T-f)>0.
\end{aligned}
\]
The CE cap implies \(y_T<e(x_T-c)/(1-c)\le e x_T\),
so \([AET]=y_T-e x_T-a(1-x_T)<0\).
Also \(-[BET]=(c-b)(e-y_T)-[CET]>0\),
\([AFT]\le(1-a)(f-x_T)<0\),
\([BFT]\le f-x_T<0\), and \([CFT]<0\).
For the top point, evaluate each actual anchor line at the three
vertices \(E,F,(1,1)\); the appropriate weak signs are preserved by
affinity, and the actual minimum makes each named test strict.
For \(P\), the same vertex test uses its proved container \(HCE\),
with the separate \(BEP>0\) argument above. These give all
remaining initial signs in the index.
No sign of \(HPQ\) or \(PRS\) is imposed by labeling.

## 4. Geometric and physical inferences

Write \(A_{XYZ}=|[XYZ]|\). The actual triangle lower costs for
zero through three interior actual points are
\[
 s,\quad3s,\quad\rho,\quad823/1000.
 \tag{6}
\]
The last two are weaker than the established sharp occupancy costs.
For instance,
\(12-(\rho/s-4)^2=104/8649>0\), and
\(45-(2(823/1000)/s-11)^2=1076/8649>0\).
The convex actual quadrilateral floors are
\(449/1000,\ 8s,\ 93/91\) for one, two, or three occupants.
See [AREA_RELATIONS.md](AREA_RELATIONS.md),
[SQUARE_QUADRILATERAL_THREE.md](SQUARE_QUADRILATERAL_THREE.md),
and the common occupancy rules in [N6_IIRR.md](N6_IIRR.md).

Every one of the 512 printed geometric deductions is either a
five-label sign deduction from
\[
 [abc][ade]-[abd][ace]+[abe][acd]=0,
 \tag{7}
\]
or a capacity deduction. In the latter, two inward edge signs
would put a named extra point inside an actual triangle if the
remaining edge were inward. A proved upper bound below the next
cost in (6) forces that last sign outward. All actual determinants
are nonzero. There is no mesh assumption in this fixed proof.

Upper-bound witnesses are explicit. A box witness lists all
coordinates occurring in the signed determinant, in increasing
coordinate-index order, and every exact difference between its
printed upper value and its endpoint values. Endpoint assignments
are indexed by binary digits, with digit zero selecting the lower
endpoint and digit one the upper. Multiaffinity proves the cap on
the entire box. The other retained side-pair caps are the proved
outer cap \((11/3)s\), fan cap \((5/3)s\), and bottom cap \((3/2)s\).

The physical factors have three sources:

1. A signed actual triangle area minus its witnessed cost.
2. A proved occupied-quadrilateral sum or signed barycentric
   line inequality, expanded in physical coordinates.
3. A contact order or one of (1), \(hc\ge4s\), the top budget,
   and the four inequalities (5).

Every listed factor is also printed as its complete polynomial in
physical coordinates.

For any actual line \(IJ\), the barycentric identity
\[
 [IJS]=\lambda_C[IJC]+\lambda_E[IJE]+\lambda_R[IJR]
\]
is valid even when the line contains one of these points; repeated
labels then contribute exactly zero. Bounds
\(3/11\le\lambda_i\le5/11\) give the printed affine line inequalities.
For interval estimates that retain the common remainder, write
\(\lambda_i=3/11+\mu_i\), with \(\mu_i\ge0\) and
\(\sum\mu_i=2/11\), and use the minimum or maximum of the three
signed vertex bounds. This proves every retained barycentric rule.

For a multiaffine physical factor \(F\ge0\), fixing all coordinates
except a target \(x\) at box endpoints gives affine lines
\(A_\nu x+B_\nu\). At fixed \(x\), the actual factor is a convex
combination of these lines. Therefore at least one line must be
nonnegative. Each printed coordinate update takes the hull of
\[
 [l_x,u_x]\cap\{x:A_\nu x+B_\nu\ge0\}
\]
over all endpoint lines and rounds its lower endpoint down and its
upper endpoint up to a multiple of \(10^{-6}\).
[MULTIAFFINE_BOX_BOUNDS.md](MULTIAFFINE_BOX_BOUNDS.md) proves this rule.
The tables list all distinct lines, the exact hull and both rounded
endpoints. An empty hull is a contradiction. Each numeric leaf starts
from (4); no sibling case contributes a bound.

## 5. The scalar and positive-combination terminals

After a completed coordinate refinement, the actual-sign deductions
are replayed on that proved box. Any new capacity cap uses this
box and its own printed endpoint witness. This is the only source
of the additional signs in the refined contexts.

Two leaves use finite scalar chains. Their relations are actual
fan identities, (7) converted to unsigned positive products, the
unconditional four-point identity, and the signed barycentric rules
above. The four-point identity is
\[
 [ABC]+[ACD]=[ABD]+[BCD].
\]
Every row prints its target, direction, exact unrounded value,
outward-rounded value, relation and immutable earlier bound IDs.
All product divisors are positive. A nonpositive product upper
numerator is already inconsistent with positive actual areas;
weakening the resulting upper bound to zero is valid.
The finite rules are detailed in
[SCALAR_AREA_INTERVALS.md](SCALAR_AREA_INTERVALS.md).

Three leaves use positive linear combinations of 53, 55 and 74
affine area factors. Their only factor families are actual fan
equalities, signed four-point equalities, barycentric inequalities,
and affine envelopes of (7).
[LINEAR_AREA_CERTIFICATES.md](LINEAR_AREA_CERTIFICATES.md) proves
the four envelope remainders. For example,
\[
 (u_XY+l_YX-u_Xl_Y)-XY=(u_X-X)(Y-l_Y)\ge0.
\]
Replace positive products in an oriented equality by upper envelopes
and negative products by lower envelopes. The resulting affine
factor is nonnegative. Each use prints both immutable endpoint
records and its envelope choice.

Every multiplier is a positive integer. The tables expand their
sum as \(W=c_0+\sum c_TA_T\), then print the complete upper-endpoint
calculation
\[
 W\le c_0+\sum_{c_T>0}c_Tu_T+\sum_{c_T<0}c_Tl_T<0.
 \tag{8}
\]
This contradicts \(W\ge0\). All three combinations use only initial
bounds from their own proved refined boxes. No propagated scalar
bound or numerical coefficient is hidden in them.

## 6. Exhaustive coverage and literal gaps

The index contains the full twelve-split binary tree. Each split is
the two strict signs of a nonzero actual determinant. The following
thirteen leaves are exactly its terminal cases. The value shown is
the exact positive contradiction gap. For an interval leaf it is
the negative of the largest value of any final affine line on its
target interval; for a scalar or capacity leaf it is the lower
bound minus the upper bound; for (8) it is the negative exact upper
bound of the weighted sum.

| Case | Actual-sign assumptions | Contradiction | Exact positive gap |
| --- | --- | --- | --- |
| rmmm | PRS- APQ- ARS- | physical lo_ARS on a | 4919881629/1000000000000 |
| rmmpmm | PRS- APQ- ARS+ CFP- FPR- | positive combination of 53 factors | 190142775897150017274303/12500000000000000000000 |
| rmmpmp | PRS- APQ- ARS+ CFP- FPR+ | physical lower_contacts on c | 1190233/250000000 |
| rmmpp | PRS- APQ- ARS+ CFP+ | physical lo_ARS on a | 11596985051/250000000000 |
| rmpm | PRS- APQ+ ARS- | physical lo_ARS on a | 4919881629/1000000000000 |
| rmpp | PRS- APQ+ ARS+ | incompatible APR bounds | 1937/250000 |
| rpmm | PRS+ APQ- CFP- | physical lo_APQ on a | 10021319367/1000000000000 |
| rpmp | PRS+ APQ- CFP+ | positive combination of 55 factors | 10630660305590951945936803/1000000000000000000000000 |
| rppm | PRS+ APQ+ ARS- | occupancy of ABR | 18975668021/159355000000 |
| rpppmm | PRS+ APQ+ ARS+ CFP- AEP- | positive combination of 74 factors | 5300546386418469431726469/250000000000000000000000 |
| rpppmp | PRS+ APQ+ ARS+ CFP- AEP+ | physical lo_BCR on b | 70178919/500000000000 |
| rppppm | PRS+ APQ+ ARS+ CFP+ AEP- | incompatible CPR bounds | 15859/1000000 |
| rppppp | PRS+ APQ+ ARS+ CFP+ AEP+ | physical lo_APQ on a | 18119657381/1000000000000 |

Every gap is strictly positive. The thirteen cases exhaust the
hypotheses of Section 1, proving the theorem and its transposed count.

## 7. Printed notation and independent acceptance

The tables use the coordinate order printed in the index.
Triple names without brackets in scalar rows mean unsigned actual
areas. A string of point labels in an occupancy witness lists its
distinct occupants. JSON-style arrays in witness columns are literal
ordered mathematical data, not executable code or references to an
external certificate. For example, a `plu` witness lists the five
actual labels, the target triple and its forced sign; a capacity
witness lists the outer triangle, occupants, excluded point, target,
sign, upper value and complete source witness. The relation column
`fan` means its first area equals the sum of the next three;
`plu` means the first two-area product equals the sum of the
next two products; `linear` gives its complete coefficient dictionary
and right side. Barycentric data give the signed target, all three
signed vertex tests, denominator 11 and three weights 3.

The complete written argument has 25 tree nodes, 18 geometric
contexts, 430 sign-identity deductions, 82 capacity deductions,
373 physical factors, 3,278 interval updates and 30,608 endpoint
lines. It has 144 scalar updates and 182 positive-combination
factor occurrences. The source-cap checks use 226 box witnesses
and 4,732 endpoint values.

[check_n6_irrt.js](check_n6_irrt.js) reads the Markdown tables directly
and independently rebuilds the physical determinants, sign deductions,
source caps, coordinate steps, scalar updates and weighted sums.
Its semantic implementation derives from the separately written
IIRR audit, with no import of a discovery generator.
[audit_n6_irrt_independent.js](audit_n6_irrt_independent.js) supplies
a second, freshly written semantic replay and uses the first module
only for Markdown syntax.

Both implementations pass the complete fixed proof. The separate
geometric review also checks the continuous domain, the three
strengthened initial signs, every actual occupant and every source
box. Deliberately missing branches, forged boxes, foreign bound
references and incorrect endpoint lines are rejected.
The optional commands are

~~~text
node n10/hand/check_n6_irrt.js
node n10/hand/audit_n6_irrt_independent.js
~~~

These exact replays check the printed finite proof. The mathematical
obligations are the explicit inequalities, identities and exhaustive
case ledger above and in its companion tables.
