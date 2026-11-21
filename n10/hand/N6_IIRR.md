# Six contacts: two central points and a side pair

This note excludes the complete N6 placement
\((k,j,r,t,l)=(0,2,2,0,0)\), and its transpose
\((0,2,0,0,2)\). All areas below are doubled areas.

**Theorem.** Let ten actual points in the unit square have the six contacts
\[
 A=(0,a),\quad B=(b,0),\quad C=(c,0),\quad
 E=(1,e),\quad F=(f,1),\quad H=(0,h),
\]
with
\[
 0<a<h<1,\quad0<b<c<1,\quad a\le e\le h,\quad b\le f\le c.
 \tag{1}
\]
Suppose two further points lie in the central quadrilateral \(HCEF\), and
the other two lie in the right cap \(CE(1,0)\). Then some actual triangle
has doubled area less than
\[
 s=\frac{93}{1000}.
\]
The reflected left-cap placement has the same conclusion. In particular,
neither placement attains the target \(A^*>93/2000\).

The proof uses a fixed, exhaustive determinant tree and explicit rational
area inequalities. Its complete tables are
[N6_IIRR_GEOMETRY.md](N6_IIRR_GEOMETRY.md) and
[N6_IIRR_AREA_CHAINS.md](N6_IIRR_AREA_CHAINS.md). They contain 127
binary splits, 45 geometric terminal leaves, and 83 area terminal leaves.
There are 3,281 geometric deductions and 13,957 retained rational updates.
Every initial bound, identity, occupant, cap and source reference is printed.
No unprinted search catalogue or numerical optimization is a premise.

## 1. Labeling and the fixed continuous domain

Assume, for contradiction, that every actual unsigned determinant is at
least \(s\). Write \(D(X,Y,Z)=\det(Y-X,Z-X)\), and write
\(A_{XYZ}=|D(X,Y,Z)|\). An ordered sign such as \(HPQ-\) refers to
\(D(H,P,Q)<0\), regardless of alphabetical order.

Name the central points \(P=(p,q)\), \(Q=(u,v)\). Independently interchange
them so that \(HPQ-\). This is exhaustive because their actual determinant
with \(H\) is nonzero.

By [N6_SIDE_PAIR_REDUCTION.md](N6_SIDE_PAIR_REDUCTION.md), name the
right-cap points \(R=(r,w)\), \(S=(j,k)\) so that \(S\) lies strictly inside
both \(CER\) and \(BER\). The construction selects the larger bottom
intercept of the two lines from \(E\); their intercepts cannot be equal.
It gives
\[
 U=A_{CER}=e(r-c)-(1-c)w\ge3s,\qquad
 e(1-b)\ge(4+2\sqrt3)s>\rho,\qquad \rho=\frac{347}{500}.
 \tag{2}
\]
The actual signs are \(ERS-,CRS+,BRS+\). The right-cap test also gives
\(c<r\le1\), \(0<w<e\), and the analogous inequalities for \(S\).

We use the no-top bounds proved in
[N6_SIDE_PAIR_BOUNDS.md](N6_SIDE_PAIR_BOUNDS.md):
\[
 a,b>\epsilon=\frac{1037}{10000},\quad
 e\le\frac{907}{1000},\quad c<\frac{77}{125},\quad
 r>\frac{183}{200},\quad U<\frac{11}{3}s.
 \tag{3}
\]
The last inequality and the three fan floors \(s\) show that every
barycentric weight of \(S\) in \(CER\) is strictly between \(3/11\)
and \(5/11\). Each fan area \(A_{CES},A_{CRS},A_{ERS}\) is below \(5s/3\).

The two side-cap points occupy both negative-\(BE\) slots in
[N6_CORNER_CONTAINERS.md](N6_CORNER_CONTAINERS.md). Consequently
\(BEP,BEQ>0\).
Also
\[
 e\ge e_0:=\frac{\rho}{1-\epsilon}>\frac{774}{1000},
 \qquad A_{HEF}=1-h+f(h-e)\le1-e<3s.
\]
Thus \(HEF\) contains no actual further point. The diagonal \(HE\)
partitions \(HCEF\), so both \(P,Q\) are in the actual triangle \(HCE\).
In particular \(HEP,HEQ<0\). This uses a geometric emptiness theorem,
not a guessed orientation.

Here are all endpoints of the fixed closed rational box. Put
\[
\begin{gathered}
 \bar e=\frac{907}{1000},\quad c_0=4s,\quad c_1=\frac{77}{125},
 \quad r_0=\frac{183}{200},\\
 b_1=1-\frac{\rho}{\bar e},\quad
 a_0=\frac{s}{c_1-\epsilon},\quad
 a_1=1-\frac{s}{b_1},\quad
 w_1=\bar e-\frac{3s}{1-c_0},\quad
 x_0=\frac{s}{1-a_0}.
\end{gathered} \tag{4}
\]

| Coordinate | Lower endpoint | Upper endpoint |
|---|---|---|
| \(a\) | \(a_0\) | \(a_1\) |
| \(b\) | \(\epsilon\) | \(b_1\) |
| \(c\) | \(c_0\) | \(c_1\) |
| \(e\) | \(e_0\) | \(\bar e\) |
| \(f\) | \(\epsilon\) | \(c_1\) |
| \(h\) | \(e_0\) | \(1\) |
| \(p,u\) | \(x_0\) | \(\bar e\) |
| \(q,v\) | \(a_0\) | \(\bar e\) |
| \(r\) | \(r_0\) | \(1\) |
| \(w\) | \(a_0\) | \(w_1\) |
| \(j\) | \((5c_0+3+3r_0)/11\) | \((3c_1+8)/11\) |
| \(k\) | \(3(e_0+a_0)/11\) | \((5\bar e+3w_1)/11\) |

All denominators are positive. These are necessary bounds on the whole
continuous configuration, with limiting faces deliberately included.
For completeness, the paired bottom ears give \(hc\ge4s\), hence \(c\ge c_0\).
The areas \(ABC=a(c-b)\), \(ABH=b(h-a)\), and \(BCR=(c-b)w\) give
\(a\ge a_0\), \(a\le a_1\), and \(w\ge a_0\), respectively.
Equation (2), \(r\le1\), and \(c\ge c_0\) give \(w\le w_1\).
The \(AH\) clearances give \(p,u\ge x_0\); the \(BC\) clearances give
\(q,v\ge a_0\). From \(HET\le-s\), \(y_T\le h-s\le1-s\) for
\(T=P,Q\). If \(y_T\le e\), then
\[
 CET=(1-c)y_T-e(x_T-c)\le e(1-x_T)\le1-x_T;
\]
if \(y_T\ge e\), then
\[
 EFT=(1-f)(e-y_T)+(1-e)(1-x_T)\le1-x_T.
\]
Either actual clearance gives \(x_T\le1-s\). Finally, the \(j,k\)
endpoints follow from the three barycentric weights and the extrema
of the vertices \(C,E,R\).

The full initial orientation list is the 20 positive cyclic anchor
triples in \(ABCEFH\), together with:

| Points \(T\) | Additional ordered signs |
|---|---|
| \(P,Q,R,S\) | \(ABT+,ACT+,AHT-,BCT+,BHT-,CHT-,EFT+,EHT+,FHT+\) |
| \(P,Q\) | \(CET+,BET+\) |
| \(R,S\) | \(AET-,AFT-,BET-,BFT-,CET-,CFT-\) |

Add \(HPQ-,ERS-,CRS+,BRS+\), giving 76 initial signs.
The central signs follow from \(P,Q\in HCE\). For a right-cap point,
\(x_T>c\ge f\), \(y_T<e\le h\), and \(x_T,y_T\le1\) give the displayed
side tests directly. For example \(CET<0\), and
\[
 BET=CET+(c-b)(y_T-e)<0,\qquad
 AET=y_T-ex_T-a(1-x_T)<0.
\]
The latter uses \(y_T<e(x_T-c)/(1-c)\le ex_T\).
Thus the sign list imposes no additional unproved chamber restriction.

## 2. Occupancy and exact upper bounds

For an actual triangle with \(n\) specified interior actual points, the
following weak lower bounds are used:
\[
 \kappa_0=s,\quad \kappa_1=3s,\quad
 \kappa_2=\frac{694}{1000},\quad
 \kappa_3=\frac{823}{1000}.                         \tag{5}
\]
The first two are the minimum and the fan sum. The last two follow from
\(\Gamma_2=4+2\sqrt3\) and
\(\Gamma_3=(11+3\sqrt5)/2\), as recorded in
[TRIANGLE_OCCUPANCY.md](TRIANGLE_OCCUPANCY.md).
Indeed \(\sqrt3>433/250\) gives \(\Gamma_2s>.694152>.694\), and
\(\sqrt5>559/250\) gives \(\Gamma_3s>.823422>.823\).

No actual triangle can contain four further points. A triple of interior
points cannot be clustered in one fan, by
[CLUSTERED_TRIANGLE.md](CLUSTERED_TRIANGLE.md). Every actual outer
triangle has doubled area at most one, so that global exclusion applies.

For a convex actual quadrilateral with one, two, or at least three
specified interior actual points, use respectively
\[
 \frac{449}{1000},\qquad8s,\qquad\frac{93}{91}.       \tag{6}
\]
The last two are the earlier quadrilateral bounds, including
[SQUARE_QUADRILATERAL_THREE.md](SQUARE_QUADRILATERAL_THREE.md).
Here is the one-point bound explicitly. For a convex quadrilateral
\(WXYZ\) and its interior point \(T\), let the four cyclic fan areas be
\(\alpha,\beta,\gamma,\delta\). Each is at least \(s\), and
\[
 \alpha\gamma-\beta\delta=D(W,Y,T)D(X,Z,T).
\]
The two actual diagonal tests have magnitude at least \(s\). Thus one
of \(\alpha\gamma,\beta\delta\) is at least \(2s^2\); its pair sums to at least \(2\sqrt2s\),
and the other pair sums to at least \(2s\). Hence the quadrilateral area
is at least \((2+2\sqrt2)s>.449\), because \(2\cdot186^2-263^2=23>0\).

The cap catalogue prints 65 exact signed-determinant bounds: 61 box caps,
one outer-cap bound, two fan bounds, and one outer-bottom bound. A cap is
one of:

- the exact maximum over the vertices of the rational box (4);
- \(U<11s/3\), or one of its three fan caps \(5s/3\);
- the stronger outer-bottom cap \(A_{BCR}<3s/2\).

The stronger cap is proved in
[SIDE_PAIR_AREA_REFINEMENTS.md](SIDE_PAIR_AREA_REFINEMENTS.md):
with \(x=c-b\), \(L=1-\epsilon\),
\[
 A_{BCR}=xw\le x\left(\bar e-\frac{3s}{L-x}\right)
 \le\bar eL+3s-2\sqrt{3s\bar eL}<\frac32s.
\]
The strict square gap for the last comparison is
\[
 12s\bar eL-(\bar eL+3s/2)^2
 =\frac{9585197519}{10^{14}}>0.                    \tag{7}
\]

Each signed determinant is multiaffine in the 14 box coordinates.
Consequently its maximum over the entire box is attained at a vertex.
The geometry tables print all 1,000 corner differences for the used box
caps. Each difference is nonnegative and is the exact claimed cap minus
the determinant at the indicated corner. This proves a continuous bound;
the vertices are not samples offered as evidence about the interior.

## 3. All sign deductions and geometric terminal rules

A strict triangle containment is established by its three oriented edge
tests. A strict convex quadrilateral is established by its four positive
cyclic triple signs, and an interior point by its four inward edge tests.

The finite geometry records use only the following operations:

1. **Capacity.** If an actual triangle already contains the listed \(n\)
   points and its upper cap is below \(\kappa_{n+1}\), a new point cannot
   be inside. Two inward edge tests therefore force its remaining test
   outward. With three known occupants, the four-point exclusion supplies
   the same conclusion without a numerical cap.
2. **Signed Plücker.** For five distinct actual labels,
   \[
   D_{abc}D_{ade}-D_{abd}D_{ace}+D_{abe}D_{acd}=0.   \tag{8}
   \]
   If two products have the same nonzero sign, the third has the opposite
   sign. This determines a remaining factor sign when its partner is known.

The 45 geometric terminals display 23 area caps below their occupied-triangle
costs, 18 instances of three same-sign nonzero terms in (8), and four
forbidden clusters. Every hull, occupant and ordered determinant is printed.
The complete deduction list has 270 capacity steps and 3,011 signed
Plücker steps.

## 4. Every scalar relation is an exact necessary inequality

The scalar variables are the positive actual areas \(A_{XYZ}\).
There is also a separately named exact-zero affine test, ZERO, when a
test line contains the point being tested.

Initial lower bounds have the occupant witnesses of (5). Initial upper
bounds cite the cap catalogue. The relations are:

- **Actual fans:** \(T=X+Y+Z\), with an actual interior point.
- **Plücker products:** after the signs in (8) are fixed,
  \(XY=UV+WZ\), with every factor a positive actual area.
- **Quadrilaterals:** either diagonal pair sums to at least its cost (6),
  with all convexity and occupant witnesses.
- **Signed four-point identities:**
  \(D_{ABC}+D_{ACD}=D_{ABD}+D_{BCD}\), included in both directions
  after substituting the actual known signs. This identity requires no
  convexity hypothesis.

Take any actual line \(IJ\), and the affine test
\(D(T)=D(I,J,T)\). Barycentricity gives
\[
 11D(S)=\sum_{V=C,E,R}(11\lambda_V)D(V),\qquad
 3\le11\lambda_V\le5,\qquad\sum 11\lambda_V=11.     \tag{9}
\]
Thus
\[
\begin{aligned}
 11D(S)&\ge3\sum_{D(V)>0}|D(V)|
               -5\sum_{D(V)<0}|D(V)|,\\
 11D(S)&\le5\sum_{D(V)>0}|D(V)|
               -3\sum_{D(V)<0}|D(V)|.
\end{aligned} \tag{10}
\]
Zero tests at a line endpoint are omitted. More strongly, signed intervals
\(l_V\le D(V)\le u_V\) give
\[
 3\sum l_V+2\min l_V\le11D(S)
 \le3\sum u_V+2\max u_V.                           \tag{11}
\]
To prove this, write \(11\lambda_V=3+\eta_V\), with
\(\eta_V\ge0\), \(\sum\eta_V=2\). If \(IJ\) contains \(S\), the middle
test in (9)--(11) is exactly zero. The witnesses in these records refer
to barycentric weights, not to area floors.

## 5. Exact interval steps and the final contradiction

Every update in the area tables has immutable earlier sources. A lower
bound is rounded down and an upper bound up to a multiple of \(10^{-6}\).
The rounding therefore preserves the necessary inequality. There is no
floating-point tolerance in the proof.

Here are the complete arithmetic rules. Write \(l_X,u_X\) for cited
positive bounds on an actual area \(X\).

For \(T=X+Y+Z\), sum the three lower or upper bounds to bound \(T\);
subtract the other two upper bounds from \(l_T\) to bound a part below,
or the other two lower bounds from \(u_T\) to bound it above.

For \(XY=UV+WZ\), bounds on either left factor use
\[
 \frac{l_Ul_V+l_Wl_Z}{u_Y}\le X
 \le\frac{u_Uu_V+u_Wu_Z}{l_Y}.
\]
For a right factor, for example \(U\),
\[
 U\ge\frac{l_Xl_Y-u_Wu_Z}{u_V}
 \quad\text{when its numerator is positive},\qquad
 U\le\max\!\left(0,\frac{u_Xu_Y-l_Wl_Z}{l_V}\right).
\]
If the numerator in the upper subtraction is nonpositive, positivity of
the product is already contradictory; the maximum with zero merely records
that terminal case. The other factor choices are identical. All denominators
are positive.

A quadrilateral relation \(X+Y\ge c\) gives \(X\ge c-u_Y\) and
\(Y\ge c-u_X\). For a general printed linear inequality
\(\sum c_iX_i\ge d\), replace every other positive-coefficient term by
its upper bound and every other negative-coefficient term by its lower
bound; isolate the target, reversing the direction for a negative target
coefficient.

The signed barycentric update is exactly (11), with a sign reversal when
the target's actual determinant is negative. It also applies to ZERO.

Each of the 83 area leaves ends with two printed valid bounds
\(L\le A\le U\) for the same variable and an exact rational inequality
\(L>U\). Each of the 45 other leaves has one of the geometric
contradictions in Section 3. The binary tree prints both signs of every
split determinant, all of which are actual and nonzero. Its 128 leaves
therefore exhaust the normalized configuration.

This contradicts the assumed doubled minimum \(s\), proving the theorem.
Transposing the square exchanges the two side caps and preserves (1), so
the left-pair count is excluded as well.

## 6. Optional transcription check

The standard-JavaScript checker
[check_n6_iirr.js](check_n6_iirr.js) reads the two printed Markdown
table files directly. Its fixed kernel reconstructs determinants, box
corners, orientations, containments and every scalar source. It contains
no search, optimization, sign-closure or interval-propagation routine.

The fixed records use only the operations stated above. The expected report is

    {"splits":127,"geometry":45,"area":83,"updates":13957,
     "open":0,"complete":true}

A separately written reader,
[audit_n6_iirr_independent.js](audit_n6_iirr_independent.js), reconstructs
the same printed tables with a different exact rational and polynomial
implementation. It imports no discovery or primary-checker code. Its
independent replay verifies all 76 initial signs, the complete binary tree,
all 3,281 geometric deductions and 13,957 rational updates, and all 65 cap
witnesses. It performs 4,321 physical determinant-identity expansions and
checks the full 1,000 box-corner differences. Both manuscript readers pass.

The mathematical proof consists of the stated lemmas, the exhaustive
printed geometry and the fixed exact area chains. The checker is an
optional guard against transcription errors.
