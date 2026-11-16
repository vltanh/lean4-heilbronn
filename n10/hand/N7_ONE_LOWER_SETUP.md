# Seven boundary points: setup for one lower and two upper points

This note proves the common reduction, rational bounds, and factor rules
for the four lower-cell children. Completion of any child is asserted only
in its own exhaustive proof manuscript; this setup note does not assert
completion of the parent N7 family.

All areas are doubled; s=93/1000, K=149/20, J=4427/500.
Use actual contacts A=(0,a),B=(b,0),C=(c,0),D=(1,d),E=(1,e),
F=(f,1),H=(0,h), with 0<a<h<1,0<b<c<1,0<d<e<1,
a<=e<=h and b<=f<=c. Let G=(g,z) lie inside HABC and
O=(x,y),P=(u,v) lie inside HCEF. All three are inside ABCDEFH.
Permute O,P so HOP<0. This is a free-point permutation, not a new
square reflection.

## Four complete lower alternatives

ONE_LOWER_POINT.md gives these four exhaustive roots:

| Root | Actual signs | Weak contact order |
|---|---|---|
| ABC | ACG<0,HBG>0 | none |
| ABH | ACG>0,HBG<0 | none |
| CA | ACG>0,HBG>0 | ac>=bh |
| CB | ACG>0,HBG>0 | bh>=ac |

The last two roots overlap on equality. Both negative signs are excluded
by the two occupied opposite ears. In each central root the corresponding
ordered endpoint inequality, the common central-strip inequalities, and
the coordinate consequences in that note are available.

## Common coarse bounds and capacity triangles

Put eta=93/790, ell=7347/69700, Fmax=1-ell,
h0=4s/Fmax, B=1-4s/(1-s), Cmax=883/1000.
The common all-interior heptagon box is proved in
N7_HEPTAGON_ONE_EAR.md. In particular a,d and all free ordinates
are at least eta, b,c,f and every free abscissa are at least ell,
e<=1-s, c,f<=Fmax, b<=B, e,h>=h0.

Endpoint five applied to H,C,A,B,G inside the virtual triangle
(0,0),H,C gives hc>=(3+2sqrt(2))s. We may use either
hc>=(29/5)s or the stronger hc>=(2911/500)s, because
(1411/1000)^2<2.

The actual CDE clearance and e<=1-s,d>=eta imply c<Cmax; f<=c.
The ABC,BCD and free BC clearances now give a,d,z,y,v>=119/1000,
since Cmax-ell is an upper bound for the bottom contact span.
The ABH clearance and b<=B give a<=843/1000. The coarse endpoint-five
bound gives c>=2697/5000,h>=301/500; CDE then gives d<=353/500.
These are the earlier coarse T-box bounds, which remain valid when a
sum retains weaker coordinate factors.

There are three fixed capacity-one actual triangles:

* HEF: its area is at most 1-e<=1-h0<Ks.
* BCE: N7_BOTTOM_SPAN_CAP.md proves its area is less than Ks.
* DEF: N7_RIGHT_SPAN_CAP.md proves its area is less than Ks.

Each has capacity one because the two-interior-point triangle cost
is (4+2sqrt(3))s>Ks.

In particular HOP<0 forces EHP>0, and hence P lies in HCE. Here is the
explicit argument. Write f_X=[HEX], a_X=-[HFX]>0 for X=O,P.
Both points have positive FH and EF edge tests. Pluecker gives

    a_O f_P-a_P f_O=[HEF][HOP]<0.

If f_P>0 then f_O>0, putting both points in HEF. That contradicts
its capacity one, so f_P<0, equivalently EHP>0.

## Four refined rational boxes

The coordinate order is a,b,c,d,e,f,g,h,z,x,y,u,v. Each box below
is valid throughout its indicated root. Weak endpoints are retained.

| Coordinate | ABC lower | ABC upper | ABH lower | ABH upper |
|---|---|---|---|---|
| a | 353/1000 | 843/1000 | 170/1000 | 685/1000 |
| b | 143/1000 | B | 336/1000 | B |
| c | 692/1000 | 883/1000 | 692/1000 | 883/1000 |
| d | 125/1000 | 606/1000 | 170/1000 | 606/1000 |
| e | 426/1000 | 907/1000 | 471/1000 | 907/1000 |
| f | 143/1000 | 883/1000 | 336/1000 | 883/1000 |
| g | 143/1000 | 642/1000 | 112/1000 | 397/1000 |
| h | 784/1000 | 1 | 784/1000 | 1 |
| z | 125/1000 | 602/1000 | 170/1000 | 653/1000 |
| x,u | 143/1000 | 883/1000 | 112/1000 | 883/1000 |
| y,v | 125/1000 | 907/1000 | 170/1000 | 907/1000 |

| Coordinate | CA lower | CA upper | CB lower | CB upper |
|---|---|---|---|---|
| a | 139/1000 | 685/1000 | 122/1000 | 685/1000 |
| b | 108/1000 | B | 123/1000 | B |
| c | 541/1000 | 883/1000 | 541/1000 | 883/1000 |
| d | 120/1000 | 705/1000 | 122/1000 | 705/1000 |
| e | h0 | 907/1000 | h0 | 907/1000 |
| f | 108/1000 | 883/1000 | 123/1000 | 883/1000 |
| g | 118/1000 | 685/1000 | 123/1000 | 685/1000 |
| h | 613/1000 | 1 | 613/1000 | 1 |
| z | 139/1000 | 773/1000 | 134/1000 | 775/1000 |
| x,u | 108/1000 | 883/1000 | ell | 883/1000 |
| y,v | 120/1000 | 907/1000 | 122/1000 | 907/1000 |

Here is a complete derivation of the refinements. In either ear,
ONE_LOWER_POINT gives hc>=Ks; hence c>=.692 and h>=.784, using
c<=.883. CDE gives e-d>=s/(1-.692), and hence d<=.606.

In ABC, the actual fan gives a(c-b)>=3s, so a>=3eta>.353.
The AH and ABH clearances give every free abscissa and b at least
s/(1-.353)>.143, and f>=b. The bottom span is at most .883-.143,
so d and all free ordinates are at least s/(.883-.143)>.125.
CDE then gives e>.426. Finally ACG<=-s gives

    ag+cz<=ac-s.

Together with a<=.843,c<=.883,g>=.143,z>=.125 it gives

    g<=.883-(.883*.125+s)/.843<.642,
    z<=.843-(.843*.143+s)/.883<.602.

The substitutions have the correct direction: each upper expression
increases with its two positive upper-bound coordinates and decreases
with the other coordinate's positive lower bound.

In ABH, b(h-a)>=3s and a(c-b)>=s imply

    b(.883-b-s)-3s(.883-b)>=0.

Its left side is -b^2+1.069b-.246357. It increases on [0,.336]
and is negative at .336. Thus b>.336. The bottom span is at most
.547, giving a,d and all free ordinates greater than .170. The
AH clearance gives all free abscissas greater than .112.
Because G is also inside ACH, c(h-a)>=3s, whence a<.685.
CDE gives e>.471. Finally the positive BHG fan clearance is

    hg+bz<=bh-s.

It gives g<=B(1-.170)-s<.397 and
z<=1-(.112+s)/B<.653.

For either central root, the stronger common endpoint-five bound
hc>=(2911/500)s gives c>.541,h>.613. Again G lies in ACH, so
c(h-a)>=3s gives a<.685; CDE gives d<.705. Every lower point
satisfies the common estimates

    g<=c(1-z)-s<=.883(1-.119)-s<.685,
    z<=h-s(2h-a)/[c(h-a)]
       <=1-s(2-.119)/[.883(1-.119)]<.776.

The second follows from the AH clearance g>=s/(h-a) and the HC gap;
its upper expression increases with h and c and decreases with a.

For CA, the ordered endpoint inequality ca(h-a)>=s(h+a), after
using h<=1 and c<=.883 in the ratio (h-a)/(h+a), gives
.883a(1-a)>=s(1+a). The quadratic difference increases up to .139
and is negative there, so a>.139. Then b and all free abscissas
exceed s/(1-.139)>.108. The bottom span gives d and all free
ordinates at least s/(.883-.108)=.120. The central-coordinate
bounds in ONE_LOWER_POINT Section 4 give g>.118 and z>.139.
Its same upper-coordinate formula, now with a>=.139, gives z<.773.

For CB, hb(c-b)>=s(c+b), h<=1 and c<=.883 give
b(.883-b)>=s(.883+b). The quadratic difference increases on
[0,.123] and is negative there, so b>.123. The bottom span gives
a,d and all free ordinates greater than .122. The central-coordinate
bounds give g>.123,z>.134. The preceding upper formula with
a>=.122 gives z<.775. These deductions establish all four boxes.

Every displayed decimal in these derivations is a terminating rational
number exactly equal to the corresponding table entry.

## Additional nonnegative affine factors

In addition to the original side-order factors, every root has

    Gsum=790/883-g-z>=0.

This is ONE_LOWER_POINT Section 4 with hc<=.883. Let B0=Ks in an
ear root and B0=(2911/500)s in a central root. The positive HC
clearance at O,P and h<=1,c<=.883 give

    UHC_O=x+.883y-B0-s>=0,
    UHC_P=u+.883v-B0-s>=0.

Also EHP>=s, u<=1, h<=1 and e<=1-s give

    PHE_cap=1-s-v-su>=0.

Weaker versions of these and of coordinate bounds may be retained
in a printed sum. Each such atom is checked against its root's box
or its displayed weaker cost; all its rational constants are printed.

## Uniform rational triangle upper bounds

Cauchy on the two actual opposite ears in the virtual triangles
(0,0),H,C and B,(1,0),E gives

    sqrt(ABC)+sqrt(ABH)<=sqrt(hc),
    sqrt(BCD)+sqrt(CDE)<=sqrt(e(1-b)).

The container upper bounds hc<=.883 and e(1-b)<=(1-s)Fmax,
combined with every ear area at least s, give

    ABC,ABH<403/1000,
    BCD,CDE<357/1000.

If G occupies ABC, the other ear ABH is less than 17/100; if G
occupies ABH, then ABC is less than 17/100. For each comparison,
if C denotes the container upper bound and t the other ear lower
bound, the proposed upper B satisfies (C-B-t)^2<4Bt, so the
Cauchy inequality forbids an ear area at least B. Exact differences
are -147/1000000 for C=.883,B=.403,t=s;
-341/250000 for C=.883,B=.17,t=3s; and
-10679448692759/4858090000000000 for
C=(1-s)Fmax,B=.357,t=s.

These caps, HEF<=1-h0, and BCE,DEF<Ks also bound any actual
triangle whose three vertices lie in the corresponding closed
actual cap. Such containment is witnessed by actual edge signs.

## Exact geometric inference rules

Besides the ordinary Pluecker rule, strict triangle interpolation,
and convex-region chord rule, the final trace may use the following
capacity-one ray rule. Let I,J,K be a positive actual triangle of
capacity one and let U,V have both JK and KI edge tests positive.
Put f_X=[IJX], a_X=-[IKX]>0. Pluecker gives

    a_U*f_V-a_V*f_U=[IJK][IUV].

If IUV<0 then f_V<0; otherwise f_V>0 would force f_U>0 and put
both U,V inside the capacity-one triangle. If IUV>0 then f_U<0
by the same reasoning. All zero cases are excluded by the positive
minimum. The allowed fixed capacity triangles are HEF,BCE,DEF.

Every pair-line has either zero or two sign changes around a convex
polygon. If at least one named point lies strictly inside it, exactly
two changes occur. A completed two-change word confines any named
point known to be inside the polygon to the convex hull of the four
endpoints of the two crossed edges. This containment is never applied
to a point not already proved inside the parent polygon.

The distributed-triple rule is also available. If three actual points
lie inside a positive actual triangle ABC, CLUSTERED_TRIANGLE.md
excludes a clustered fan at the present threshold. The complete
six-labeling argument of TYPE_II_133_TRIANGULAR_RIGHT.md Section 2
therefore gives some permutation X,Y,Z for which these thirteen
actual determinants are positive:

    ABZ BCX CAY AZY BXZ CYX ZXY AZX BXY CYZ AXY BYZ CZX.

A record `mesh ABC UVW DEF e` tests the six permutations of the
three named interior points U,V,W. It retains those consistent with
all preceding signs. If every retained labeling gives sign e to DEF,
that sign is forced. A terminal `nomesh ABC UVW` means that all six
labelings have an already proved opposite sign. This finite sign
argument introduces no coordinate subdivision. Every use first
checks all nine inward edge tests for U,V,W in ABC.

## Occupied upper triangles: additional affine consequences

Some rows prove that both O and P lie in one of HCF,CEF,HCE.
Its actual area is then at least Ks. Write c_- and c_+ for the
root box's lower and upper bounds on c, f_- for its lower bound
on f, h_- for its positive lower bound on h, and e_+ for its
positive upper bound on e. The following additional affine factors
are consequently nonnegative:

| Witness | Factor name | Nonnegative factor |
|---|---|---|
| O,P in HCF | HCF2_c | c-Ks |
| O,P in HCF | HCF2_f | f-[c_+-(c_+-Ks)/h_-] |
| O,P in CEF | CEF2_f | [1-Ks-(1-e_+)c_-]/e_+-f |
| O,P in CEF | CEF2_e | e-(Ks+c_--1)/(c_--f_-) |
| O,P in HCE | HCE2_e | e-[1-(1-Ks)/c_-] |

All denominators are positive in the four displayed root boxes.
For HCF use its exact area c(1-h)+hf, f<=c, c<=c_+, and h>=h_-:

    HCF<=c,  HCF<=c_+-h_-(c_+-f).

For CEF, its exact area is 1-c+e(c-f). Since f<=c and e<=1,
this expression increases with e and decreases with c and f.
Thus

    CEF<=1-(1-e_+)c_--e_+f,
    CEF<=1-c_-+e(c_--f_-).

For HCE, its area h(1-c)+ec is at most 1-c_-(1-e).
These identities establish every row of the table. The witness is
always given by the six actual edge tests putting O,P in the named
triangle; it is never inferred from an unsigned area alone.

## Scalar bounds from one Pluecker identity

This is an additional, purely algebraic source of nonnegative quadratic
factors. Suppose the signs of all six areas in one five-point Pluecker
identity are known. There is one isolated-sign summand, so in absolute
areas the identity reads

    X Y = U V + W Z.

If U>=l1*s,V>=l2*s,W>=l3*s,Z>=l4*s and Y<=M, then

    M X-(l1*l2+l3*l4)*s^2 >= 0.                 (PB)

The source costs l_i are only 1,3,K,J, witnessed respectively by
zero, one, two, or three actual free points in the corresponding actual
triangle. No recursively improved lower bound is used. The paired
upper cap M has one of the following explicitly justified sources:

* A fixed actual cap from the earlier table contains all three vertices.
* Expand the signed triangle area after substituting each coordinate
  as lower+(upper-lower)*t, with 0<=t<=1. Its constant coefficient
  plus the positive nonconstant coefficients is an upper bound.
* Alternatively, an actual triangle determinant is affine in each
  coordinate separately. On a box it is a convex combination of its
  endpoint values, so their maximum is an upper bound. A `vertices`
  record prints that maximum and the complete sorted list of distinct
  rational endpoint values. The reader reconstructs that entire list.
* One actual fan is applied to one of those bounds. If T contains
  an actual point X, its three fan areas sum to T. An upper bound M0
  on T, minus the witnessed occupancy floors of two fan areas, bounds
  the third. Only one such fan refinement is used.

A PB token records the pivot and other four labels, the isolated
triangle X, all four costs, and M. The signs identify the paired
triangle Y and the two source products unambiguously. Its scalar cap
witness is printed alongside the term when necessary. Thus every PB
factor is a direct consequence of one determinant identity and the
listed elementary bounds.

Fixed rational affine squares are another possible source of factors.
For a printed integer vector (c0,...,c13) and positive integer D,

    SQ=[(c0+sum(c_i*coordinate_i))/D]^2>=0.

Only the coefficient vectors actually used in the final fixed sums
will be retained. Their method of discovery is irrelevant to this
identity.

There are also two conditional lower-contact affine factors. If G lies
in ACH, then c(h-a)>=3s. Since hc<=883/1000, division by hc gives

    a/h<=1-3s/(hc)<=1-3s/(883/1000)=604/883.

Consequently LOWER_ACH_ratio=(604/883)h-a is nonnegative. Likewise,
if G lies in BCH, LOWER_BCH_ratio=(604/883)c-b is nonnegative.
The required containments hold respectively in ABH and both central
roots, and in ABC and both central roots.

## Remaining factor definitions and exact evaluation

For each source box, L_0,...,L_25 are, in coordinate order,
coordinate-minus-lower and upper-minus-coordinate. The next ten factors
are h-a-s, 697/790-h+a, e-d-s, 697/790-e+d, c-b-117/1000,
79/100-c+b, f-b, c-f, h-e, e-a. Their nonnegativity follows from
the side-span bounds in N7_PLACEMENTS.md and the stated normalization.
Additional affine names are the proved factors listed above, in the
order printed by each row's affine configuration. A source box may be
weaker than its root's refined box; entrywise containment is explicitly
checked. Every final polynomial-sum upper bound uses the refined root
box; scalar-cap witnesses use the row's stated source box.

A signed token XYZ+ or XYZ- means respectively [XYZ]-s or -[XYZ]-s.
Every such sign is a common starting fact, a path sign, or an explicitly
printed deduction. The common endpoint factors are

    EL=hc-(29/5)s,          ER=e(1-b)-4s.

EL is the endpoint-five bound already proved above. ER follows from the
two actual ears BCD,CDE inside B,(1,0),E by Cauchy: each costs at least
s, so the container costs at least 4s. In an occupied lower ear,

    ELK=hc-Ks, ELK_c=c-Ks, ELK_h=h-Ks/Fmax.

ABC_a=a-3eta requires G in ABC; ABH_b=b-3s/(1-eta) requires G in
ABH. The first uses a(c-b)>=3s and c-b<=79/100; the second uses
b(h-a)>=3s and h-a<=1-eta. The Central_order, Central_endpoint,
Central_strip_cap, Central_strip_h and Central_strip_c factors are
exactly the ordered and shared inequalities of ONE_LOWER_POINT.md;
the cap multiplier is M=883/1000.

The paired-ear factors are

    PAIR_BL=hc-[ABC]-[ABH]-2s,
    PAIR_BR=e(1-b)-[BCD]-[CDE]-2s.

They follow from the same Cauchy inequalities since each ear is at
least s. If either lower ear contains G, replace 2s in PAIR_BL by
(17/5)s to obtain PAIR_BL3: 2sqrt(3)>17/5. A token UXYZ_B means
B-[XYZ], with the upper bound supplied by the earlier fixed-cap table.

For an actual positively oriented triangle XYZ, the factor CXYZ_n
means its area minus 3s,Ks,Js for n=1,2,3 respectively. Its n named
actual occupants are printed. The fan identity and
TRIANGLE_OCCUPANCY.md give these costs; K<4+2sqrt(3) and
J<(11+3sqrt(5))/2. For a positively oriented convex quadrilateral W,
QW_n means its doubled area minus (24/5)s,8s,93/91 for n=1,2,3.
The one- and two-point bounds are proved in N8_OP_LINE_CAPS.md, and
the three-point bound is SQUARE_QUADRILATERAL_THREE.md. All named
occupants have the four positive actual edge tests.

For a convex actual quadrilateral W=IJKL with two named interior points
U,V, each diagonal must separate U,V before a spread factor is used.
For either diagonal AB and epsilon=sign(ABU), write

    RW_UV_AB_c = area(W)-c*s-epsilon*([ABU]-[ABV]).

QUADRILATERAL_SPREAD.md proves this nonnegative with c=29/5. If W
is contained in HABC,HCEF,or ABEF, its area is at most one and the
stronger c=6 applies. These three container areas are respectively
hc-ab, 1-(h-e)(c-f), and 1-(e-a)(f-b), all at most one. The constant
c is explicit in every printed spread token.

For an actual strictly convex cyclic pentagon ABCDE, put
X=[ABE],Y=[ADE],Z=[ABD]. The support-ray argument in
N7_THREE_FIVE_UPPER_HEIGHT.md gives XY>=11s(X-Z), including the
automatic case X-Z<=0. Every actual triangle in the square has area
at most one. Consequently the following quadratic factors are valid:

    F5_ABCDE=Y-11s(X-Z),
    F5_ABCDE_XB=B*Y-11s(X-Z)       if X<=B,
    F5_ABCDE_YB=11s*Z-(11s-B)*X   if Y<=B.

The ten positive cyclic triple signs witness strict convexity. A scalar
cap record supplies B for each strengthened factor. Such a record is
either a fixed containing triangle, an exact shifted-box coefficient
bound, an exact endpoint maximum, or (for PB factors only) the
single-fan bound described above.
All stated cap values and their comparison with B are checked exactly.

The E5/E6 support factors are exactly QUADRILATERAL_SUPPORT.md,
applied respectively to HABC with occupant G and HCEF with occupants
O,P. For a cyclic rotation ABCD, set X=[ABC],Y=[ABD],Z=[ACD],
delta=Y-Z. If X<=Lx,Y<=Ly, the two factors are

    Lx*Y-q*s*delta,             Ly*X-q*s*delta.

The word, choice X/Y, and rational q are explicit in the token. The
upper caps are ABC<=a, ABH<=b, ACH<=h-a, BCH<=c-b in the lower
quad, and HCE<=h,HCF<=c,CEF<=1-f,HEF<=1-e in the upper quad.
The generic q values are 29/5 and 9. For one occupant, the sorted
counts in ACD,BCD permit q=29/5,149/20,12 for counts (0,0),(0,1),
(1,1). For two occupants, counts (0,0),(0,1),(0,2),(1,1),(1,2),
(2,2) permit q=9,9,139/10,12,199/10,149/5. If both upper occupants
also lie in both ABC and ABD, q=299/31 is permitted by the proved
central endpoint-six bound. Every conditional count is an actual
edge-sign containment. No denominator sign assumption is omitted:
when delta<=0 the displayed factors are already nonnegative.

A distributed-triple mesh factor MESH_ABCYZX_j requires all three
free points Y,Z,X inside actual ABC, with the six containments
Z in ABY, X in ACY, Y in BCZ, X in ACZ, Y in BCX, Z in ABX.
Triangles are read in their positive orientation. Its first three
factors, j=0,1,2, are

    [ABC]-|ABZ|-(3927/500)s,
    [ABC]-|ACX|-(3927/500)s,
    [ABC]-|BCY|-(3927/500)s.

The remaining two are

    |BYZ|+|AZX|+|CYX|-(2427/500)s,
    (8/5)s-|YZX|.

The generic distributed-mesh calculation is proved in
TYPE_II_133_TRIANGULAR_RIGHT.md Section 2. It uses only the seven
faces and outer area at most one, and so applies here. A factor whose
last orientation has not been inferred may retain just its positive
constant; that weaker factor is harmless.

Every printed polynomial sum has positive integer weights. Its factors
are individual nonnegative factors above or their displayed products;
the total degree is at most three. Expand it as sum c_alpha x^alpha.
All root-box coordinates are positive. The exact upper bound is

    sum over c_alpha>0 of c_alpha*upper^alpha
      + sum over c_alpha<0 of c_alpha*lower^alpha.

A printed negative value contradicts the sum's nonnegativity. The
arithmetic checker reads the literal manuscript rows and reconstructs
every factor, product, and coefficient over the rational numbers. It
uses no optimizer, numerical tolerance, or external discovery record.

A direct box-triangle leaf uses the same shifted-box coefficient bound
on a positively oriented actual triangle, and compares it with its
printed occupancy floor. A `vboxtri` leaf instead uses the exact
endpoint maximum on the stated lower-cell root box. With n distinct
named actual interior points, the required cost is s,3s,Ks,Js for
n=0,1,2,3 respectively. A strictly smaller endpoint maximum is a
contradiction. All n inward containments and the actual orientation
are checked before that comparison.

A clustered leaf is exactly the forbidden
fan pattern of CLUSTERED_TRIANGLE.md. The other geometric leaves
are a failed Pluecker sign identity, no admissible zero-or-two-change
word, two occupants in a capacity-one triangle, three occupants in a
proved area-at-most-one quadrilateral, or a forced sign opposite to an
already established nonzero sign. Each terminal witness is printed.
