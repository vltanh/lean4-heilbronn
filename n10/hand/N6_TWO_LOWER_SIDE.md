# Six contacts: two lower points, an upper point and a side-cap point

**Theorem.** Use the six actual contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

Suppose P,Q lie strictly inside HABC below HC, R lies strictly inside
HCEF, and S lies in either the right or left exterior cap of the
contact hexagon. Then some actual triangle has unsigned doubled area
below s=93/1000. The exterior point S may lie on a closed outer square
edge. The theorem includes both side-cap locations after the lower
normalization, without a further physical reflection.

The proof and N6_TWO_LOWER_SIDE_TABLES.md give all sixteen roots,
107 nodes, 654 explicit geometric deductions, 56 cubic contradictions,
26 geometric contradictions and 5,741 positive integer terms. Every
factor and hypothesis is printed. No numerical search, coordinate
sample, optimization or external certificate is a premise.

Write [XYZ]=det(Y-X,Z-X), with all areas doubled, and suppose for a
contradiction that every actual unsigned triangle has area at least s.
Put K=149/20 and J=4427/500, as in N6_EXACT_HULL.md.

## 1. Complete lower catalogue and both side locations

N6_TWO_LOWER_CAPS.md Section 1 proves that the entire lower reduction
transfers whenever P,Q lie in HABC and the other points lie above HC.
That proof uses only the six contacts, the two lower points and weak
square bounds for the upper points. It gives hc>9s, the three rational
boxes printed below, and the eight lower-line roots. In particular,
for L=P,Q and U=R,S,

    [HLU]>0, [CLU]<0,
    x_U+y_U>=rho+s, x_L+y_L<=(1-s)/rho.                 (1)

Use upper coordinate maxima 1 for both R and S. This weakens the
available bounds for R and includes every outer square face for S.
The lower catalogue makes its one physical transposition before
choosing the upper labels. Name the interior upper point R and the
side-cap point S. Both resulting models are retained:

| Model | R | S |
|---|---|---|
| IR | inside HCEF | right cap |
| IL | inside HCEF | left cap |

No interchange of R,S or subsequent physical symmetry is used. For
a column V, the signs below are those of VPQ.

| Root | Case | A | B | C | H | E | F |
|---|---|---|---|---|---|---|---|
| CS-- | central | + | + | - | - | - | - |
| CO-- | central | + | + | + | - | - | - |
| CO+- | central | + | + | + | - | + | - |
| CO++ | central | + | + | + | - | + | + |
| MH-- | mixed | - | - | - | + | - | - |
| MH-+ | mixed | - | - | - | + | - | + |
| MH++ | mixed | - | - | - | + | + | + |
| MHC++ | mixed | - | - | + | + | + | + |

## 2. Starting signs and printed geometric deductions

Every cyclic triple of the contact hexagon ABCEFH is positive.
Every hexagon-edge test is positive at P,Q,R. Moreover HCP,HCQ<0,
HCR,HCS>0, ACP,ACQ,HBQ>0, and HBP is positive in the central case
and negative in the mixed case. The fixed actual containing regions
are HABC for P,Q and HCEF for R. For the side point S, the complete
initial cap tests are

| Model | ABS | BCS | CES | EFS | FHS | HAS | HES | CFS |
|---|---|---|---|---|---|---|---|---|
| IR | + | + | - | + | + | + | - | - |
| IL | + | + | + | + | - | + | + | + |

These tests are the direct affine cap tests proved in
N6_TWO_LOWER_CAPS.md Section 2. HER and CFR receive no initial sign.
Include (1) and the six lower-line signs from the selected root.

The `n6x-trace` rules are exactly the explicitly qualified rules in
N6_TWO_LOWER_CAPS.md Section 2, with this extension to the fixed
containing hulls: `hullvia` may use P,Q in HABC or ABCEFH, and R in
HCEF or ABCEFH. It never uses S as an interior point of an actual
contact hull. Every `via` step still requires all three actual edge
tests of its containing triangle.

For a line through two free points, signs around a convex actual
polygon have zero or two changes. If at least one named point is
inside the polygon, there are exactly two. For this theorem every
pair of free points includes at least one of P,Q,R, so its line cuts
the contact hexagon in two places. A `chord` containment is applied
only to a named point actually inside the original polygon; it is
never applied to S inside ABCEFH. The lower pair may additionally
use HABC, and RS may use HCEF because R is strictly inside it.

All other deductions use the printed Pluecker identity

    [ABC][ADE]-[ABD][ACE]+[ABE][ACD]=0.                 (2)

Its three nonzero summands cannot all have the same sign. A `plu`
step names its five points and forced determinant; `plubad` gives a
same-sign contradiction. A `given` or `stepbad` leaf has two opposite
signs for one actual determinant. The `four` and `cluster` rules are
the actual-triangle occupancy and clustered-triple theorems, with
all occupants stated. A `smallquad` exclusion is used only for four
vertices among H,A,B,C,P,Q, lying in HABC of doubled area at most one.
These are precisely the rules used in the printed appendix.

## 3. Every split is exhaustive

An `upper` split is the line RS around the convex quadrilateral
H,C,E,F. Since R is inside it, exactly two signs change. The complete
twelve-word list is

    ---+, --+-, --++, -+--, -++-, -+++,
    +---, +--+, +-++, ++--, ++-+, +++-.                (3)

No sign of HRS was normalized. All twelve children are printed even
when a child immediately conflicts with inherited geometry.

For `cross UV`, where U=P,Q and V=R,S, equation (1) gives HUV>0 and
CUV<0. Around H,A,B,C,E,F, the possible signs at A,B,E,F are exactly

    ----, ---+, --++, +---, +--+, +-++, ++--, ++-+, ++++.
                                                               (4)

The two-change rule proves this list directly. The appendix includes
every word compatible with inherited signs, and may also include
incompatible words that have immediate contradictions.

Each other split is `sign XYZ`: its two children are the strict
negative and positive signs of the stated actual triangle. Zero is
excluded by the positive area hypothesis. Thus the following sixteen
root trees cover every placement in the theorem.

| Root | Initial node | Nodes | Polynomial leaves | Geometric leaves | Terms | Deductions |
|---|---|---:|---:|---:|---:|---:|
| IR/CS-- | X0000 | 1 | 1 | 0 | 6 | 20 |
| IR/CO-- | X0001 | 1 | 1 | 0 | 5 | 18 |
| IR/CO+- | X0002 | 1 | 1 | 0 | 5 | 27 |
| IR/CO++ | X0003 | 1 | 1 | 0 | 19 | 31 |
| IR/MH-- | X0004 | 1 | 1 | 0 | 54 | 32 |
| IR/MH-+ | X0005 | 1 | 1 | 0 | 40 | 29 |
| IR/MH++ | X0006 | 33 | 11 | 11 | 778 | 92 |
| IR/MHC++ | X0039 | 1 | 1 | 0 | 3 | 24 |
| IL/CO-- | X0040 | 1 | 1 | 0 | 5 | 19 |
| IL/CS-- | X0041 | 1 | 1 | 0 | 5 | 20 |
| IL/CO++ | X0042 | 1 | 1 | 0 | 44 | 26 |
| IL/CO+- | X0043 | 1 | 1 | 0 | 3 | 23 |
| IL/MH-- | X0044 | 1 | 1 | 0 | 25 | 28 |
| IL/MH-+ | X0045 | 1 | 1 | 0 | 144 | 26 |
| IL/MH++ | X0046 | 60 | 31 | 15 | 4602 | 215 |
| IL/MHC++ | X0106 | 1 | 1 | 0 | 3 | 24 |

## 4. Rational boxes and nonnegative factors

The transferred boxes use coordinate order
(a,b,c,e,f,h,p,q,u,v,r,w,j,k), with R=(r,w), S=(j,k).

### Box C

Floor rho: `897/1000`.

| Coordinate | Lower | Upper |
|---|---|---|
| a | 1037/10000 | 6143/20000 |
| b | 1037/10000 | 6143/20000 |
| c | 897/1000 | 1 |
| e | 1037/10000 | 907/1000 |
| f | 1037/10000 | 907/1000 |
| h | 897/1000 | 1 |
| p | 1026441/8963000 | 407/500 |
| q | 1026441/8963000 | 407/500 |
| u | 1026441/8963000 | 407/500 |
| v | 1026441/8963000 | 407/500 |
| r | 930/8963 | 1 |
| w | 930/8963 | 1 |
| j | 930/8963 | 1 |
| k | 930/8963 | 1 |

### Box M1

Floor rho: `1510413/1780000`.

| Coordinate | Lower | Upper |
|---|---|---|
| a | 93/721 | 6143/20000 |
| b | 279/1000 | 4283/6143 |
| c | 1510413/1780000 | 1 |
| e | 93/721 | 907/1000 |
| f | 279/1000 | 907/1000 |
| h | 1510413/1780000 | 1 |
| p | 67053/628000 | 1570201/3071500 |
| q | 93/500 | 1570201/2141500 |
| u | 118947/721000 | 407/500 |
| v | 37851/314000 | 407/500 |
| r | 67053/628000 | 1 |
| w | 93/721 | 1 |
| j | 67053/628000 | 1 |
| k | 93/721 | 1 |

### Box M2

Floor rho: `91977/100000`.

| Coordinate | Lower | Upper |
|---|---|---|
| a | 3/23 | 6143/20000 |
| b | 287/1000 | 297/500 |
| c | 91977/100000 | 1 |
| e | 3/23 | 907/1000 |
| f | 287/1000 | 907/1000 |
| h | 91977/100000 | 1 |
| p | 2139/20000 | 51/125 |
| q | 9/23 | 68/99 |
| u | 3861/23000 | 407/500 |
| v | 1209/10000 | 407/500 |
| r | 2139/20000 | 1 |
| w | 3/23 | 1 |
| j | 2139/20000 | 1 |
| k | 3/23 | 1 |

For coordinate i define L_(2i)=coordinate_i-lower_i and
L_(2i+1)=upper_i-coordinate_i. Use the definitions and proofs of
ha,ea,he,fb,cf,Vlow,Qlow,up_R,up_S,low_P,low_Q,Px,Py,Ratio_lo,
Ratio_hi,Product,DX_UV and DY_UV in N6_EXACT_HULL.md Section 5.
All derive from contacts, the lower support pair, HC clearance or
the two actual opposite-contact signs, so their proofs transfer as
specified above. M2 is used only in the MHC++ root, as required by
its stronger mixed-ratio theorem.

Here R lies strictly inside the actual upper quadrilateral HCEF.
The one-interior quadrilateral theorem therefore gives

    Qup=1-(h-e)(c-f)-(24/5)s.                          (5)

No second free point is assumed inside this quadrilateral.

The conditional actual-triangle factors T_XYZ+/- and C_XYZ_n,
quadrilateral factors Q_ABCD_n, and distributed-mesh factors
M_ABC_XYZ_part retain exactly their definitions in
N6_EXACT_HULL.md Section 6. Each conditional factor has its actual
occupants or all its mesh edge tests printed in the table. The
quadrilateral costs are (24/5)s,8s,93/91,(J+3)s,(J+K)s,2Js for
one through six occupants. They are universal original-square
theorems, so exterior cap vertices cause no change.

For S_ABCD_UV_i+/- use the same two-diagonal definition, with
coefficient 6 only when every vertex is among H,A,B,C,P,Q, and
coefficient 29/5 otherwise. Both actual diagonal separations and
both point containments must be proved. This preserves the exact
hypothesis for the stronger spread bound.


## 5. Side-cap factors

Use the exterior-clearance identities and endpoint-support proofs in
N6_TWO_LOWER_CAPS.md Section 5. They apply on closed outer faces and
require no second exterior point. Here the only cap point is S.
If its actual triangle CES (right) or FHS (left) contains n printed
actual occupants, put t_0=s, t_1=3s, t_2=Ks, t_3=Js. The factors are

| Prefix | x | y | px | py |
|---|---|---|---|---|
| right | x_S-c-t_n | e-y_S-t_n | e(x_S-c)-t_n | (1-c)(e-y_S)-t_n |
| left | f-x_S-t_n | y_S-h-t_n | (1-h)(f-x_S)-t_n | f(y_S-h)-t_n |

The printed occupants prove the chosen t_n. The unsigned actual cap
area is at most each of the displayed coordinate differences and
products before subtracting t_n, by the two determinant expansions
for its cap. Thus all four factors are nonnegative. The support
factors are

    Right_support=e(1-b)-4s   in IR,
    Left_support=f(1-a)-4s    in IL.                   (6)

The four actual points B,C,E,S in IR have nontriangular hull inside
the endpoint triangle B,(1,0),E; the nontriangular four-point theorem
gives the first inequality. The reflected proof gives the second.
No top-cap factor or two-top cost occurs in this appendix.

## 6. Exact contradiction and the seven-contact boundary application

For every leaf, its `n6x-sum` is a positive integer combination W of
products of the stated nonnegative factors. Thus W>=0. Expand in
t_i=coordinate_i-lower_i. Each t_i lies between zero and its printed
box width. Dropping negative nonconstant monomials and replacing
positive monomials by their upper endpoints gives the exact upper
bound of N6_EXACT_HULL.md (16). All 56 printed bounds are negative.
Their largest is

    -3433623018549568978622940532691405035828837/
     50194093738762603402042373967637200000000000.

All 5,741 weights are positive integers, at most 41,353. Every sum
has degree at most three; no square factor is used. The other 26
leaves have explicit geometric contradictions. Exhaustiveness from
Section 3 therefore proves the theorem.

All boxes are closed. Strict cap and region tests exclude only actual
collinearities, already impossible under the competitive hypothesis.
In particular S may lie on the outer square edge of its virtual
cap, namely the square side through its contact E or H. Consequently
the theorem also applies to the all-interior seven-contact heptagon
with contacts A,B,C,D,E,F,H, with h>=e, if its free-point counts in
HABC,HCEF,CDE are (2,1,0): take S=D, lying on the right square side,
and R to be the unique point in HCEF. The lower catalogue might
transpose this picture, which is why both IR and IL were retained.
This excludes that entire seven-contact count.

The optional standard-library `check_n6_two_lower_side.py` reads only
this method and the printed appendix, verifies every geometric step,
and expands each fixed sum with exact rational arithmetic.
