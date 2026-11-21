# Six contacts: one lower point, one upper point and a side pair

**Theorem.** Consider ten actual points in the unit square with the
six normalized contacts and placements of
[N6_BIRR_SETUP.md](N6_BIRR_SETUP.md): P is in HABC, Q is in HCEF,
and R,S are in the right exterior cap CE(1,0). Then some actual
triangle has unsigned doubled area less than s=93/1000. The same
holds with the side pair in the left cap. Thus the entire N6 count
(k,j,r,t,l)=(1,1,2,0,0), and its transpose, has ordinary minimum
area below s/2<A*.

The proof has 60 binary actual-determinant splits and 61 terminal
cases: 23 geometric contradictions and 38 exact scalar-area
contradictions. All 1,771 geometric deductions, 68 caps, 1,272 box
corner differences and 7,948 retained rational updates are printed
in the following parts of this manuscript:

* [Complete geometry and cap tables](N6_BIRR_GEOMETRY.md).
* [Every scalar-area chain](N6_BIRR_AREA_CHAINS.md).
* [The 38 scalar contradictions and their positive gaps](N6_BIRR_LEAF_REGISTER.md).

There is no numerical search, external solver, omitted enumeration
or unprinted discovery packet among the premises.

## 1. The actual configuration and its full setup

Assume every actual unsigned doubled triangle area is at least s.
Use the six actual contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c,
    P=(p,q), Q=(u,v), R=(r,w), S=(j,k).

For actual points write D(X,Y,Z)=[XYZ]=det(Y-X,Z-X) and let
A_XYZ=|[XYZ]|. All sign tests are nonzero under the hypothesis.

The setup proves each fact needed before branching. It names the
side pair so S is strictly inside both CER and BER, and gives
U=-CER>=3s with U<(11/3)s. It proves P is in the lower central
cell ACP,HBP>0: either lower ear would require hc>.694 while
c<.616. It proves HEF is empty and hence Q is in HCE. It also
proves HPQ>0 and CPQ<0 from the actual lower/upper separation.
P and Q are never permuted to choose an upper-point order.

Every exact endpoint of the fixed closed 14-coordinate box, and
all 77 initial signs, are proved and printed in that setup. The
geometry tables repeat the entire fixed domain before the tree.
No extra contact order, coordinate chamber or actual hull type
is selected by the finite proof.

## 2. Actual occupancy costs and continuous cap bounds

For an actual triangle with n named actual interior points, use
the following weak lower bounds:

| n | Lower bound |
| --- | --- |
| 0 | s=93/1000 |
| 1 | 3s=279/1000 |
| 2 | rho=347/500 |
| 3 | 823/1000 |

The first two are the hypothesis and the three-fan identity. The
last two follow from [TRIANGLE_OCCUPANCY.md](TRIANGLE_OCCUPANCY.md):
Gamma2=4+2sqrt(3) and Gamma3=(11+3sqrt(5))/2. Indeed
(433/250)^2<3 and (559/250)^2<5 imply
Gamma2*s>.694152>rho and Gamma3*s>.823422>.823.

The three-interior-point clustered placement is excluded by
[CLUSTERED_TRIANGLE.md](CLUSTERED_TRIANGLE.md). Its use below
always names the outer actual triangle, its actual interior
pivot, one fan triangle and the two actual points inside that fan.
The outer triangle lies in the unit square.

A convex actual quadrilateral with one, two or three named
interior actual points has area at least .449, 8s or 93/91,
respectively. The two-point bound is proved in
[N8_OP_LINE_CAPS.md](N8_OP_LINE_CAPS.md); the three-point bound is
[SQUARE_QUADRILATERAL_THREE.md](SQUARE_QUADRILATERAL_THREE.md).
For the one-point bound, its four fan areas alpha,beta,gamma,delta
satisfy |alpha*gamma-beta*delta|>=s^2 by the two actual diagonal
clearances. All four fan areas are at least s. Thus one opposite
product is at least 2s^2; summing its pair and the other pair gives
(2+2sqrt(2))s>.449. The last rational weakening follows from
2*186^2-263^2=23>0.

Every cap in the literal catalogue is one of these three kinds:

1. The maximum of the indicated signed determinant on the entire
   fixed box. The determinant is affine in each coordinate
   separately, so its value is a convex combination of its
   corner values. The table prints every cap-minus-corner
   difference, all nonnegative. This proves a continuous bound.
2. A side fan bound |CES|,|CRS|,|ERS|<5s/3. It follows from
   U<11s/3 by subtracting the other two actual fan floors s.
3. The outer-bottom bound BCR<3s/2 from
   [SIDE_PAIR_AREA_REFINEMENTS.md](SIDE_PAIR_AREA_REFINEMENTS.md),
   Section 2. Its exact positive square gap is
   9585197519/100000000000000. This cap refers to the named outer
   point R, with S inside CER; it is not assigned to S.

Strict proved caps may be weakened to their displayed closed
upper bounds. No geometric inference is made from a numerical
point being feasible or infeasible.

## 3. Geometry at a leaf

Read each leaf's assumptions from its path in the complete binary
tree. At each split the m child is the negative sign and the p
child the positive sign of its stated actual determinant. Both
children are printed. Zero is impossible. This proves exhaustive
coverage of the continuous domain before any leaf arithmetic.

Each leaf then prints its deductions in order, using just two
rules:

* A `plu` row names five distinct actual points and its target
  determinant. The exact identity is

      [ABC][ADE]-[ABD][ACE]+[ABE][ACD]=0.

  Two summands have the same known nonzero sign. All factors
  except the target in the third summand are already signed.
  The third summand must have the opposite sign, forcing the
  displayed target sign.
* A `capacity` row names an actual triangle, its established
  occupants, a new point and a cap. The cap is below the cost
  of one more occupant. Two inward edge tests at the new point
  are already known; its third test must be outward. All three
  inward tests for every established occupant are required.

Permuting an actual determinant has its ordinary parity sign.
Triangle containment uses its three inward edge tests. Convexity
of a named actual quadrilateral uses all four positive cyclic
triple signs; each interior occupant has all four inward tests.

Here are all geometric terminals. For the 18 area-cap leaves,
the indicated occupants require a lower bound above the printed
cap, with every edge test supplied by that leaf's trace:

| Leaves | Outer triangle | Actual occupants | Upper cap | Required lower bound |
| --- | --- | --- | --- | --- |
| G001,G011 | AFH | P,Q | 322861/640375 | rho |
| G002,G012 | BFH | P,Q | 77/125 | rho |
| G003,G006,G008 | ABR | P,S | 23259798835491/40647145000000 | rho |
| G004 | FHR | Q,S | 3391848256/6163609375 | rho |
| G005,G007,G009 | EFR | Q,S | 33716509393/51230000000 | rho |
| G013,G017,G019 | ABR | P,Q,S | 23259798835491/40647145000000 | 823/1000 |
| G016,G022 | ACF | P,Q | 77/125 | rho |
| G018 | CFR | Q,S | 1052914223723/1789046875000 | rho |
| G023 | ABE | P,Q | 43477363/64397000 | rho |

The remaining five leaves have the following direct contradictions:

| Leaf | Exact geometric contradiction |
| --- | --- |
| G010 | P,Q,S are inside BHR, and P,Q are inside its fan BHS at S. |
| G014 | P,Q,S are inside BHR, and Q,S are inside its fan HRP at P. |
| G020 | P,Q,S are inside BFR, and Q,S are inside its fan FRP at P. |
| G015 | All three nonzero summands of the displayed Pluecker identity on A,B,F,P,Q have the same sign. |
| G021 | All three nonzero summands of the displayed Pluecker identity on A,B,E,P,Q have the same sign. |

The first three contradict the clustered-triangle theorem; the
last two contradict the determinant identity. Thus all 23
geometric leaves are excluded by their fully printed traces.

## 4. Every retained scalar relation

The scalar variables are positive unsigned areas A_XYZ. ZERO is
the exact-zero affine test when an actual test line contains the
point being tested. An initial lower bound cites all its named
occupants, and an initial upper bound cites its literal cap.

The retained exact relations have the following complete meanings:

* A `fan` relation T=X+Y+Z comes from a named actual point
  strictly inside an actual triangle.
* A `plu` relation XY=UV+WZ is the determinant identity in
  Section 3 after all six actual signs have been substituted.
* A `quad` relation X+Y>=c is the area bound of Section 2
  expressed using one actual diagonal, with convexity and
  every occupant witnessed.
* A `linear` witness `affine_quad` is the unconditional identity
  [ABC]+[ACD]=[ABD]+[BCD], in the printed direction after
  substituting its actual signs.
* A `linear` witness `right_compare` uses one of the two exact
  nonnegative remainders in SIDE_PAIR_AREA_REFINEMENTS.md,
  Section 3:

      [EFR]-U=1-r+(c-f)(e-w)>=0,
      [EHR]-U=h(1-r)+c(e-w)>=0,       U=-[CER].

  The cap domain gives w<e, c>=f and r<=1; every sign in the
  converted unsigned relation is already known. The retained
  tables use only R with EF or EH, seven times in total.

The remaining `bary` relations and `linear` witnesses
`barycentric` are actual affine tests at S. For an actual point
pair I,J, put D(T)=[IJT]. The established CER weights give

    11D(S)=sum_(V=C,E,R) (11lambda_V)D(V),
    3<=11lambda_V<=5, sum 11lambda_V=11.

Thus

    11D(S)>=3 sum_(D(V)>0)|D(V)|-5 sum_(D(V)<0)|D(V)|,
    11D(S)<=5 sum_(D(V)>0)|D(V)|-3 sum_(D(V)<0)|D(V)|.

For signed intervals l_V<=D(V)<=u_V, the stronger bound is

    3 sum l_V+2 min l_V <=11D(S)<=3 sum u_V+2 max u_V. (6)

Indeed 11lambda_V=3+eta_V with eta_V>=0 and sum eta_V=2.
Tests at line endpoints are exactly zero. If the test line
contains S, the middle test is ZERO, with both initial bounds
zero. The weights are normalized barycentric coefficients;
unscaled actual fan areas are never substituted for them.

There is no retained scalar support relation, distributed-mesh
rule or additional source family.

## 5. Rational steps and the 38 scalar contradictions

Every update cites immutable earlier bounds and the exact
relation it uses. Write l_X,u_X for such bounds on an unsigned
actual area X. For a fan T=X+Y+Z, sum the three lower or upper
bounds to bound T; subtract the other two upper bounds from
l_T for a part's lower bound, or the other two lower bounds
from u_T for a part's upper bound.

For XY=UV+WZ, either left factor is bounded using

    (l_U*l_V+l_W*l_Z)/u_Y <= X
       <= (u_U*u_V+u_W*u_Z)/l_Y.

A right factor, for example U, satisfies

    U>=(l_X*l_Y-u_W*u_Z)/u_V
       when the numerator is positive,
    U<=max(0,(u_X*u_Y-l_W*l_Z)/l_V).

All cited denominators are positive. If the upper numerator is
nonpositive, positivity of the actual product is already
contradictory; the zero upper bound records that terminal case.

A quadrilateral relation X+Y>=c gives X>=c-u_Y or Y>=c-u_X.
For a general linear inequality sum c_i X_i>=d, upper-bound
every other positive term and lower-bound every other negative
term, then isolate the target. A negative target coefficient
reverses the inequality. The `bary_lo` and `bary_hi` steps use
exactly (6), reversing the target sign when its determinant is
negative, and including exact zeros for line endpoints.

Every raw rational lower result is rounded down and every upper
result up to a multiple of 10^-6. This preserves necessity and
uses no floating tolerance. Each source remains immutable even
if a later record improves the same area bound.

All 38 scalar leaves finish with two valid cited bounds L<=A<=U
on the same unsigned area and a strict rational gap L-U>0.
Every value, source and positive gap is printed in its leaf;
the shorter register lists all 38 final pairs together.

The exhaustive tree ends only in these scalar contradictions
or the geometric contradictions of Section 3. It follows that
the initial area hypothesis is impossible. Transposing the
square exchanges the two side caps, preserves the normalized
contact orders and preserves the lower/upper placements. This
proves both whole-count conclusions of the theorem.

## 6. Transcription checks and review status

The optional [exact reader](check_n6_birr.js) reads the two
literal Markdown table files and reconstructs all actual signs,
containments, cap endpoints, scalar identities and immutable
dependencies. It imports no discovery, optimizer, closure or
propagation program. Its passing author report is

    {"splits":60,"geometry":23,"area":38,"updates":7948,
     "open":0,"complete":true}

The [independent reader](audit_n6_iirr_independent.js) accepts all 61
leaves when invoked with the argument `BIRR`. It reconstructs all
77 initial signs, 1,771 deductions, 3,065 determinant identities, 1,272
box endpoints and 7,948 scalar updates. A separate review checks the
actual contact geometry, the 14 coordinate intervals, the lower and
upper point labels and all 38 positive gaps in the register.
