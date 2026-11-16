# Eight boundary points: the side-line class inside either diagonal quadrilateral

This closes the complete same-side-edge 4/4 line subclass in which both
interior points belong to ABEF or both belong to CDGH. It does not yet
close the side-line class outside both of those quadrilaterals.

The proof has four explicit orientation rows. Each row is contradicted
by a printed finite sum of nonnegative polynomials of degree at most
three. The integer tables, factor definitions, and coefficient bounds
below are the whole arithmetic proof. No solver, numerical search,
coordinate cover, or external certificate file is a premise.

## 1. Domain, common signs, and the four-row coverage

All areas are doubled. Put s=93/1000 and use

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), G=(g,1), H=(0,h),
    O=(x,y), P=(u,v), U=u-x, V=v-y.

Assume every actual triangle area is at least s. For a boundary point W
write d_W=det(P-O,W-O). The side-line representative has

    d_A,d_B,d_C,d_D<0,       d_E,d_F,d_G,d_H>0.

Thus U>0. Both O,P are strictly inside the boundary octagon by
N8_OP_LINE_CAPS.md. They lie above AD and below EH, because the two
convex caps ABCD and EFGH lie strictly on opposite sides of OP.

Suppose first that both points are in ABEF. The four triangles
ABE,AEF,ABF,BEF have capacity one by N8_TRIANGLE_CAPS.md. Therefore both
diagonals AE and BF separate O,P. For any chord IJ,

    D_IJP-D_IJO=d_I-d_J,

where D_XYZ=det(Y-X,Z-X). This identity fixes their signs as

    AEO+, AEP-, BFO+, BFP-.

The ABEF edge tests also give AFO-,AFP-,BEO+,BEP+.

The universal corner-triangle capacities give CHP- and DGO+.
For example, CHP>0 would put P in the lower-left virtual triangle;
the decreasing chord expression along OP would put O there too.
The argument for DGO is its half-turn image. The left and right side
quadrilaterals each have capacity one by N8_OP_LINE_CAPS.md Section 2.
The line enters the left quadrilateral ABGH through AH and leaves
through BG, so BGP<0. It enters the right quadrilateral CDEF through
CF and leaves through DE, so CFO>0.

Some useful consequences, valid for any interior point X=(x_X,y_X), are

    AGX=(g/f)AFX-(1-g/f)(1-a)x_X,
    CEX=((1-c)/(1-b))BEX
          +((c-b)/(1-b))*e*(1-x_X),
    BHX=h*BGX-y_X*[hg+b(1-h)],
    DFX=(1-d)*CFX
          +(1-y_X)*[(1-d)(1-c)+(1-f)d].

All coefficients displayed as positive are positive in this domain.
Consequently AGO-,AGP-,CEO+,CEP+,BHP-,DFO+ always hold. If BGO<0 then
BHO<0; if CFP>0 then DFP>0. All signed expressions in this proof are
actual triangle areas, so a strict sign means that its magnitude is
at least s.

Here is a complete four-row case tree.

| Row | Additional signs |
|---|---|
| C | BGO-, CFP+ (and hence BHO-, DFP+) |
| E | BGO+, BHO+ |
| R- | BGO+, BHO-, DFP+, CFP- |
| R+ | BGO+, BHO-, DFP+, CFP+ |

Indeed, if BGO<0 and CFP>0, use C. Otherwise, either BGO>0 already or
CFP<0; a half-turn, followed by interchanging O,P, turns the latter
into BGO>0. The ABEF quadrilateral and all domain hypotheses are
preserved. Now BHO>0 is row E. If BHO<0 but DFP<0, the same half-turn
gives BGO>0,BHO>0: the last displayed identity first forces CFP<0.
This again reduces to E. The remaining case has BHO<0,DFP>0, and
splitting the nonzero triangle CFP gives R- or R+.

In row E, O is inside the actual ear ABH. Thus DHO>0 as well: A,B,H
are on the nonnegative side of DH, with A,B strictly positive, and O
is strictly inside their triangle. This is the only extra containment
sign needed for the row-E arithmetic.

## 2. Every factor in the four tables is nonnegative

The fixed coordinate order is

    z=(a,b,c,d,e,f,g,h,x,y,u,v).

Put ell=31/251, c0=31657/55000, kappa=1-2ell=189/251. The lower and
upper coordinate bounds from N8_BOUNDARY_RANGES.md are

    lo=(ell,ell,1-c0,ell,1-c0,1-c0,ell,1-c0,ell,ell,ell,ell),
    hi=(c0,c0,1-ell,c0,1-ell,1-ell,c0,1-ell,
        1-ell,1-ell,1-ell,1-ell).

Define forty nonnegative affine factors. Indices start at zero:

    L_(2i)=z_i-lo_i,       L_(2i+1)=hi_i-z_i,  0<=i<12.

For j=0,1,2,3, let Z_j respectively be h-a,c-b,e-d,f-g, and set

    L_(24+2j)=Z_j-5115/31657,
    L_(25+2j)=753/1000-Z_j.

The remaining eight factors are

    L32=e-a-21/250,       L33=h-d-21/250,
    L34=f-b-21/250,       L35=c-g-21/250,
    L36=U-62/251,         L37=kappa-U,
    L38=kappa*U-V-2s,     L39=kappa*U+V-2s.

The first thirty-eight are the established ranges and overlaps, or
their immediate coordinate differences. For the last two, the OP
triangle sums give

    (e-a)U-V>=2s,       (h-d)U+V>=2s.

Both e-a,h-d are at most kappa and U>0. This proves L38,L39>=0
without any assumption on the sign of V.

For a signed triangle name XYZ+ or XYZ-, define its table factor to be

    XYZ+ : D_XYZ-s,       XYZ- : -D_XYZ-s.

The order of the three letters is part of the definition. Boundary
triangles listed in cyclic order have positive sign. Every pair in
the arc A,B,C,D, and every pair in E,F,G,H, has positive determinant
with either interior point in that pair's cyclic order; the two points
are outside the corresponding arc cap and inside the octagon. The
common and row-specific additional signs were proved in Section 1.
These rules cover every triangle factor appearing below.

For a cyclic boundary polygon W=V1...Vr, write area2(W) for the sum
of the r-2 triangle areas D_(V1,Vj,V(j+1)), 2<=j<r. Define the
occupancy factors by

    H_W_1 = area2(W)-3s          if r=3,
    H_W_2 = area2(W)-(149/20)s   if r=3,
    H_W_1 = area2(W)-(24/5)s     if r=4,
    H_W_2 = area2(W)-8s          if r=4.

They are used only with the following containments, all of which follow
from the oriented edge tests and the signs already proved:

| Polygon | Contained points | Rows using it |
|---|---|---|
| ABEH | O,P | E |
| ABGH | O | E |
| ABH | O | E |
| ADEH | O,P | E |
| ADE | P | E |
| ADH | O | E |
| ADF | O,P | R- |
| BEH | O,P | R-,R+ |

The triangular constants follow from a three-triangle fan and
TRIANGLE_OCCUPANCY.md, since Gamma2=4+2sqrt(3)>149/20. The
quadrilateral constants are 2(1+sqrt(2))>24/5 for one interior point
and 8 for two; their full proofs appear in N8_OP_LINE_CAPS.md and
the quadrilateral-fan argument in U3_FOUR_ONE_SIDE.md. Equivalently,
the one-point bound follows by writing the four positive fan areas
A,B,C,D: |AC-BD|>=s^2 gives A+B+C+D>=2(1+sqrt(2))s.

Finally define two further nonnegative quadratic factors:

    K=69/100-D_AEF,
    S=1-(e-a)(f-b)-6s-[U-(f-b)V].

The first is N8_TRIANGLE_CAPS.md. The second is the quantitative spread
lemma in QUADRILATERAL_SPREAD.md: both points are in ABEF, both its
diagonals separate them, and its area Q=1-(e-a)(f-b) is below one.
Thus the normalized minimum s/Q exceeds 1/11, as required there.

Products in the tables are ordinary products of these nonnegative
factors. Every printed weight is a positive integer. Thus the
polynomial W_j specified by each row's table is nonnegative throughout
that row's entire geometric case.

## 3. The exact coefficient bound used in every row

If expansion gives W_j=sum_e c_e*z^e, define

    B(W_j)=sum_(c_e>0) c_e*product_i hi_i^(e_i)
             +sum_(c_e<0) c_e*product_i lo_i^(e_i).

Every coordinate is nonnegative and lies between its printed lo and hi.
Term by term, therefore, W_j<=B(W_j). The constant monomial has value
one in either product. Expansion of the four fixed tables gives the
following exact rational values; in particular all are below -1/10.

| Row | Nonzero terms | Exact B(W_j) |
|---|---:|---|
| C | 262 | -1535421220910426706439431568761/20905122204247183375000000000 |
| E | 140 | -914245223366471619658997/7601862619726248500000000 |
| R- | 182 | -23680080250211548124480417611618061/330896726809926542051187500000000 |
| R+ | 283 | -1110516269338517190535722568061998709/16611015685858312410969612500000000 |

Each displayed equality is a finite rational arithmetic calculation
from the factors and table immediately below. The optional checker
check_n8_side_contained.py independently reconstructs every factor,
checks its signed-area or occupancy admissibility, expands the same
fixed sums using only Fraction arithmetic, and reproduces these exact
bounds. The tables themselves, not a search procedure, specify the
polynomials.

Thus each row gives 0<=W_j<=B(W_j)<0, a contradiction.

## 4. The four fixed integer tables

In each table an entry ('factor',weight) means weight times that factor.
An asterisk denotes multiplication. These are literal finite sums;
no omitted entries or generated families are understood.

### Row C

```text
('L0*L0*L2', 3578), ('L0*L0*L36', 4194), ('L0*L1*L5', 4760)
('L0*L2*L2', 1657), ('L0*L2*L9', 15971), ('L0*L2*L12', 793)
('L0*L2*L36', 21277), ('L0*L2*L39', 2566), ('L0*L5*L11', 1327)
('L0*L5*L15', 230), ('L0*L5*L18', 12543), ('L0*L5*L32', 1305)
('L0*L6*L10', 3220), ('L0*L6*L36', 278), ('L0*L9*L11', 16980)
('L0*L10*L12', 559), ('L0*L10*L16', 2704), ('L0*L12*L21', 2099)
('L0*L12*L22', 5008), ('L0*L12*L28', 1411), ('L0*L15*L21', 2841)
('L0*L15*L27', 4288), ('L0*L21*L36', 4604), ('L0*L25*L36', 9599)
('L0*L27*L36', 7616), ('L0*L27*L39', 12543), ('L0*L36*L39', 13398)
('L1*L5*L5', 1657), ('L1*L5*L29', 3447), ('L2*L5*L6', 1018)
('L2*L5*L38', 925), ('L2*L6*L15', 1309), ('L2*L9*L12', 1308)
('L2*L25*L38', 834), ('L2*L39*L39', 20027), ('L3*L5*L9', 581)
('L3*L5*L39', 925), ('L3*L9*L15', 3380), ('L3*L9*L21', 2695)
('L3*L15*L39', 2546), ('L5*L5*L29', 285), ('L5*L6*L21', 85)
('L5*L6*L27', 6795), ('L5*L6*L30', 1502), ('L5*L6*L36', 10589)
('L5*L6*L39', 7603), ('L5*L9*L11', 785), ('L5*L9*L16', 2090)
('L5*L9*L19', 4913), ('L5*L9*L24', 1309), ('L5*L19*L29', 17455)
('L5*L22*L25', 2543), ('L5*L22*L36', 4604), ('L5*L24*L29', 942)
('L5*L29*L29', 3662), ('L5*L30*L38', 663), ('L5*L31*L39', 663)
('L6*L9*L12', 230), ('L6*L9*L16', 2759), ('L6*L9*L31', 4016)
('L6*L10*L39', 2463), ('L6*L11*L15', 1411), ('L6*L27*L27', 4699)
('L6*L27*L29', 601), ('L8*L9*L12', 6054), ('L8*L12*L12', 1570)
('L8*L12*L25', 3553), ('L9*L9*L11', 3317), ('L9*L9*L36', 4126)
('L9*L11*L11', 1570), ('L9*L11*L36', 21476), ('L9*L11*L39', 2363)
('L9*L12*L23', 12530), ('L9*L12*L32', 152), ('L9*L15*L36', 654)
('L9*L16*L36', 4604), ('L9*L29*L36', 8916), ('L9*L31*L36', 7669)
('L9*L31*L39', 12530), ('L9*L36*L39', 13398), ('L10*L12*L39', 921)
('L11*L12*L15', 1014), ('L11*L12*L38', 921), ('L11*L29*L38', 756)
('L11*L39*L39', 20027), ('L12*L12*L25', 329), ('L12*L15*L16', 85)
('L12*L15*L26', 1504), ('L12*L15*L31', 6657), ('L12*L15*L36', 10455)
('L12*L15*L39', 7782), ('L12*L19*L29', 2460), ('L12*L19*L36', 4604)
('L12*L22*L25', 17413), ('L12*L25*L25', 3874), ('L12*L25*L28', 770)
('L12*L26*L38', 654), ('L12*L27*L39', 654), ('L15*L25*L31', 635)
('L15*L31*L31', 4848), ('L25*L29*L36', 10509), ('L25*L36*L36', 14847)
('L25*L36*L38', 19560), ('L29*L36*L36', 15050), ('L29*L36*L38', 19323)
('L34*L38*L38', 20027), ('ABC+*L1', 3681), ('ABC+*L2', 872)
('ABC+*L4', 1657), ('ABC+*L12', 1504), ('ABC+*L15', 4518)
('ABC+*L21', 333), ('ABC+*L22', 5443), ('ABC+*L32', 2384)
('AGH+', 4589), ('AGH+*L8', 2451), ('AGH+*L11', 954)
('AGH+*L20', 355), ('AGH+*L22', 17789), ('AGH+*L25', 3874)
('AGH+*L26', 1504), ('AGH+*L28', 2181), ('AGH+*L31', 329)
('AGH+*L39', 4632), ('BCD+*L5', 6545), ('BCD+*L15', 1079)
('BCD+*L17', 12331), ('BCD+*L19', 2690), ('BCD+*L20', 12331)
('BCD+*L25', 230), ('BCD+*L27', 4699), ('BCD+*L29', 601)
('BCD+*L36', 23675), ('CDE+', 4588), ('CDE+*L1', 2368)
('CDE+*L2', 983), ('CDE+*L17', 336), ('CDE+*L19', 17754)
('CDE+*L24', 2251), ('CDE+*L27', 285), ('CDE+*L29', 3662)
('CDE+*L30', 1502), ('CDE+*L39', 4614), ('EFG+*L5', 1502)
('EFG+*L6', 4246), ('EFG+*L8', 4951), ('EFG+*L11', 778)
('EFG+*L13', 1570), ('EFG+*L16', 334), ('EFG+*L19', 5545)
('EFG+*L32', 1254), ('FGH+', 12454), ('FGH+*L6', 1181)
('FGH+*L12', 6388), ('FGH+*L22', 2774), ('FGH+*L25', 635)
('FGH+*L29', 230), ('FGH+*L31', 4848), ('FGH+*L36', 36032)
('CDP+*L5', 251), ('GHO+*L9', 78), ('GHO+*L12', 269)
('AOP-*L0', 1782), ('AOP-*L6', 5146), ('AOP-*L10', 13110)
('AOP-*L25', 2368), ('AOP-*L27', 17393), ('AOP-*L29', 55)
('AOP-*L30', 6123), ('AOP-*L38', 237), ('DOP-*L3', 11218)
('DOP-*L9', 3801), ('DOP-*L15', 5067), ('DOP-*L17', 11338)
('DOP-*L20', 11338), ('DOP-*L25', 241), ('DOP-*L26', 23503)
('DOP-*L34', 1285), ('DOP-*L36', 3712), ('DOP-*L38', 19323)
('EOP+*L3', 9290), ('EOP+*L9', 3519), ('EOP+*L15', 7676)
('EOP+*L17', 203), ('EOP+*L20', 203), ('EOP+*L26', 6109)
('EOP+*L31', 17438), ('EOP+*L34', 1924), ('HOP+*L0', 4390)
('HOP+*L6', 4864), ('HOP+*L10', 11182), ('HOP+*L17', 11681)
('HOP+*L20', 11681), ('HOP+*L29', 338), ('HOP+*L30', 23561)
('HOP+*L34', 1290), ('HOP+*L36', 3166), ('HOP+*L38', 19560)
('AFO-', 4369), ('AFO-*L1', 8712), ('AFO-*L3', 785)
('AFO-*L5', 542), ('AFO-*L7', 2989), ('AFO-*L13', 2635)
('AFO-*L15', 230), ('AFO-*L32', 931), ('AFO-*L34', 793)
('AFO-*L37', 4604), ('BEP+', 4420), ('BEP+*L4', 2635)
('BEP+*L6', 230), ('BEP+*L8', 8712), ('BEP+*L10', 793)
('BEP+*L12', 516), ('BEP+*L14', 3149), ('BEP+*L32', 811)
('BEP+*L34', 785), ('BEP+*L37', 4604), ('AEO+*L3', 3822)
('AEO+*L5', 209), ('AEO+*L9', 7167), ('AEO+*L15', 3071)
('AEO+*L17', 12018), ('AEO+*L20', 12137), ('AEO+*L29', 2356)
('AEO+*L34', 39177), ('AEO+*L36', 18402), ('AEO+*L38', 5925)
('AEP-*L0', 9643), ('AEP-*L6', 5345), ('AEP-*L12', 182)
('AEP-*L17', 12474), ('AEP-*L20', 12593), ('AEP-*L34', 41088)
('AEP-*L36', 17828), ('AEP-*L38', 5925), ('BGO-', 6333)
('BGO-*L0', 4632), ('BGO-*L4', 1581), ('BGO-*L8', 9523)
('BGO-*L14', 690), ('BGO-*L26', 785), ('BGO-*L33', 2460)
('BGO-*L35', 269), ('BGO-*L37', 4604), ('CFP+', 6305)
('CFP+*L1', 9643), ('CFP+*L7', 446), ('CFP+*L9', 4614)
('CFP+*L13', 1591), ('CFP+*L30', 793), ('CFP+*L33', 2543)
('CFP+*L35', 251), ('CFP+*L37', 4604), ('S*L0', 9643)
('S*L9', 9523), ('S*L17', 6753), ('S*L20', 6753)
('S*L27', 785), ('S*L31', 793), ('S*L33', 230)
('S*L36', 58172)
```

### Row E

```text
('L5*L6', 14), ('L6*L10', 15), ('L12*L15', 29)
('L32*L34', 13), ('L34*L37', 3), ('L0*L0*L2', 5)
('L0*L2*L10', 1), ('L0*L5*L9', 4), ('L0*L5*L23', 2)
('L0*L5*L33', 2), ('L0*L10*L25', 7), ('L0*L10*L38', 3)
('L0*L16*L24', 3), ('L0*L17*L25', 2), ('L0*L18*L30', 7)
('L0*L27*L27', 72), ('L0*L34*L38', 3), ('L1*L22*L34', 3)
('L1*L26*L26', 11), ('L1*L32*L34', 61), ('L2*L5*L15', 2)
('L2*L5*L22', 1), ('L3*L3*L9', 1), ('L3*L3*L23', 1)
('L3*L15*L19', 4), ('L3*L15*L21', 1), ('L3*L18*L34', 1)
('L5*L15*L27', 2), ('L5*L15*L32', 1), ('L5*L22*L27', 1)
('L5*L25*L29', 2), ('L5*L27*L29', 1), ('L5*L29*L29', 32)
('L6*L10*L23', 1), ('L6*L20*L27', 12), ('L6*L27*L27', 7)
('L7*L15*L21', 2), ('L8*L12*L15', 6), ('L10*L16*L32', 7)
('L11*L15*L21', 1), ('L12*L15*L39', 1), ('L12*L19*L25', 4)
('L15*L15*L21', 1), ('L15*L17*L31', 2), ('L15*L21*L26', 3)
('L15*L21*L31', 1), ('L15*L26*L26', 1), ('L16*L28*L32', 1)
('L18*L24*L34', 81), ('L18*L32*L34', 10), ('L22*L24*L34', 1)
('L22*L26*L34', 1), ('L23*L28*L34', 2), ('L25*L25*L36', 1)
('L28*L34*L38', 1), ('L29*L34*L39', 4), ('L32*L32*L34', 10)
('L32*L33*L34', 11), ('L33*L34*L38', 6), ('ABC+', 56)
('ABC+*L9', 2), ('ABC+*L23', 3), ('ABC+*L27', 61)
('ABC+*L29', 4), ('ABC+*L33', 4), ('AGH+', 6)
('AGH+*L18', 11), ('BCD+', 20), ('BCD+*L20', 12)
('BCD+*L23', 1), ('BCD+*L27', 7), ('CDE+', 23)
('CDE+*L23', 1), ('CDE+*L27', 1), ('CDE+*L29', 32)
('FGH+', 36), ('FGH+*L8', 5), ('FGH+*L17', 3)
('FGH+*L18', 69), ('FGH+*L22', 1), ('ABO+*L22', 73)
('ABP+*L16', 30), ('ADP+*L16', 10), ('BCP+*L26', 2)
('EHP+*L34', 3), ('DEP+*L16', 10), ('HAO+*L34', 3)
('AOP-', 103), ('AOP-*L10', 2), ('AOP-*L34', 4)
('DOP-', 20), ('DOP-*L2', 2), ('DOP-*L11', 2)
('EOP+*L10', 2), ('CHP-*L0', 1), ('CHP-*L2', 3)
('CHP-*L6', 1), ('CHP-*L27', 3), ('CHP-*L29', 1)
('AFO-', 42), ('AFO-*L3', 1), ('AFO-*L14', 5)
('AFO-*L22', 73), ('AFO-*L24', 7), ('AFO-*L32', 5)
('BEP+*L2', 1), ('BEP+*L16', 30), ('BEP+*L25', 1)
('AEO+', 2), ('AEO+*L2', 33), ('AEO+*L10', 38)
('AEO+*L21', 47), ('AEO+*L24', 4), ('AEO+*L32', 1)
('AEO+*L33', 1), ('AEP-*L0', 1), ('AEP-*L17', 7)
('BFP-*L19', 73), ('BFP-*L26', 1), ('BFP-*L39', 3)
('BGO+*L15', 63), ('BGO+*L25', 22), ('BHO+', 106)
('BHO+*L2', 1), ('BHO+*L9', 5), ('HABH_1*L8', 11)
('HADE_1*L8', 1), ('HADE_1*L28', 4), ('HADH_1*L34', 17)
('HABEH_2*L16', 5), ('HABGH_1*L8', 1), ('HADEH_2*L34', 16)
('K*L16', 30), ('S', 30), ('S*L1', 56)
('S*L7', 5), ('S*L20', 2), ('S*L22', 3)
('S*L32', 10), ('S*L33', 6)
```

### Row R-

```text
('L34', 62), ('L27*L34', 4), ('L31*L34', 4)
('L32*L34', 1610), ('L34*L37', 46), ('L0*L0*L10', 32)
('L0*L6*L36', 27), ('L0*L8*L30', 206), ('L0*L10*L14', 56)
('L0*L10*L18', 4), ('L0*L10*L22', 137), ('L0*L10*L30', 112)
('L0*L10*L33', 32), ('L0*L14*L30', 23), ('L0*L15*L16', 78)
('L0*L18*L30', 544), ('L0*L21*L30', 27), ('L0*L27*L30', 938)
('L1*L1*L34', 11), ('L1*L9*L26', 206), ('L1*L18*L34', 34)
('L2*L30*L39', 44), ('L3*L7*L9', 56), ('L3*L7*L26', 15)
('L3*L9*L9', 32), ('L3*L9*L19', 137), ('L3*L9*L23', 4)
('L3*L9*L26', 112), ('L3*L9*L33', 32), ('L3*L19*L26', 166)
('L3*L24*L24', 4), ('L3*L26*L33', 112), ('L3*L30*L38', 44)
('L5*L6*L6', 23), ('L5*L22*L30', 88), ('L6*L9*L21', 78)
('L6*L16*L32', 6), ('L6*L18*L30', 384), ('L6*L33*L34', 4)
('L7*L9*L26', 23), ('L7*L23*L26', 113), ('L7*L27*L34', 127)
('L8*L8*L34', 11), ('L8*L23*L34', 34), ('L9*L15*L36', 27)
('L9*L16*L26', 27), ('L9*L23*L26', 544), ('L9*L26*L31', 938)
('L10*L14*L30', 15), ('L10*L22*L30', 166), ('L10*L26*L38', 44)
('L10*L28*L28', 4), ('L10*L30*L33', 112), ('L11*L26*L39', 44)
('L12*L15*L15', 23), ('L12*L19*L26', 88), ('L14*L18*L30', 113)
('L14*L31*L34', 127), ('L15*L21*L32', 6), ('L15*L23*L26', 384)
('L15*L33*L34', 4), ('L16*L30*L32', 761), ('L17*L25*L34', 7)
('L18*L24*L34', 46), ('L18*L32*L34', 540), ('L20*L29*L34', 7)
('L21*L26*L32', 761), ('L23*L28*L34', 46), ('L23*L32*L34', 540)
('L24*L29*L34', 15), ('L25*L28*L34', 15), ('L25*L34*L39', 58)
('L26*L30*L38', 39), ('L26*L31*L39', 20), ('L27*L30*L39', 20)
('L29*L34*L39', 58), ('L32*L32*L34', 186), ('L32*L34*L38', 68)
('L33*L34*L38', 337), ('ABC+*L9', 206), ('ABC+*L11', 845)
('ABC+*L13', 938), ('ABC+*L20', 362), ('ABC+*L23', 486)
('AGH+*L15', 18), ('AGH+*L21', 8), ('BCD+', 626)
('BCD+*L10', 1578), ('BCD+*L21', 257), ('BCD+*L23', 657)
('BCD+*L29', 4), ('BCD+*L37', 193), ('CDE+*L6', 18)
('CDE+*L16', 8), ('EFG+*L0', 206), ('EFG+*L2', 845)
('EFG+*L4', 938), ('EFG+*L17', 362), ('EFG+*L18', 486)
('FGH+', 626), ('FGH+*L3', 1578), ('FGH+*L16', 257)
('FGH+*L18', 657), ('FGH+*L25', 4), ('FGH+*L37', 193)
('DEP+*L26', 161), ('HAO+*L30', 161), ('AOP-', 734)
('AOP-*L9', 11), ('AOP-*L15', 19), ('AOP-*L26', 167)
('AOP-*L31', 35), ('DOP-', 124), ('DOP-*L2', 203)
('DOP-*L8', 11), ('DOP-*L11', 203), ('DOP-*L14', 20)
('DOP-*L27', 200), ('DOP-*L32', 12), ('EOP+', 734)
('EOP+*L0', 11), ('EOP+*L6', 20), ('EOP+*L14', 1)
('EOP+*L27', 34), ('EOP+*L30', 166), ('HOP+', 124)
('HOP+*L1', 11), ('HOP+*L2', 203), ('HOP+*L7', 20)
('HOP+*L11', 203), ('HOP+*L31', 200), ('HOP+*L32', 12)
('AFO-*L7', 37), ('AFO-*L9', 22), ('AFO-*L15', 74)
('AFO-*L26', 166), ('BEP+*L0', 22), ('BEP+*L6', 74)
('BEP+*L14', 37), ('BEP+*L30', 166), ('AEO+*L6', 8)
('AEO+*L13', 8), ('AEO+*L27', 1), ('AEO+*L30', 949)
('AEP-*L4', 8), ('AEP-*L7', 1), ('AEP-*L15', 10)
('AEP-*L26', 948), ('BGO+', 1333), ('BGO+*L9', 103)
('BGO+*L25', 544), ('BGO+*L26', 166), ('BGO+*L29', 384)
('BHO-*L28', 41), ('BHO-*L30', 87), ('DFP+*L24', 41)
('DFP+*L26', 87), ('CFP-', 1333), ('CFP-*L0', 103)
('CFP-*L25', 384), ('CFP-*L29', 544), ('CFP-*L30', 166)
('HADF_2*L1', 28), ('HADF_2*L9', 38), ('HADF_2*L15', 3)
('HADF_2*L16', 8), ('HADF_2*L19', 4), ('HADF_2*L23', 74)
('HADF_2*L26', 1617), ('HADF_2*L31', 112), ('HBEH_2*L0', 38)
('HBEH_2*L6', 3), ('HBEH_2*L8', 28), ('HBEH_2*L18', 74)
('HBEH_2*L21', 8), ('HBEH_2*L22', 4), ('HBEH_2*L27', 112)
('HBEH_2*L30', 1617), ('S', 2052), ('S*L6', 29)
('S*L15', 29), ('S*L32', 201)
```

### Row R+

```text
('L0*L0*L2', 4407), ('L0*L0*L11', 2663), ('L0*L0*L13', 2744)
('L0*L0*L21', 1011), ('L0*L0*L36', 7807), ('L0*L1*L5', 1734)
('L0*L2*L13', 550), ('L0*L5*L11', 12310), ('L0*L5*L15', 3585)
('L0*L5*L16', 8143), ('L0*L5*L22', 1881), ('L0*L5*L36', 176)
('L0*L5*L39', 16803), ('L0*L9*L11', 2249), ('L0*L11*L27', 12004)
('L0*L11*L30', 1506), ('L0*L12*L15', 724), ('L0*L13*L16', 398)
('L0*L13*L27', 323), ('L0*L13*L38', 4807), ('L0*L25*L36', 13255)
('L0*L30*L36', 15202), ('L0*L30*L39', 4807), ('L1*L5*L6', 7488)
('L2*L2*L6', 1194), ('L2*L5*L39', 194), ('L2*L6*L9', 12158)
('L2*L6*L10', 2509), ('L2*L6*L27', 1908), ('L2*L11*L38', 5875)
('L2*L15*L38', 615), ('L2*L21*L38', 1280), ('L2*L38*L39', 2822)
('L3*L3*L15', 1379), ('L3*L5*L38', 194), ('L3*L9*L39', 24186)
('L3*L11*L39', 5880), ('L3*L12*L15', 1475), ('L3*L15*L15', 144)
('L3*L15*L16', 1321), ('L3*L15*L28', 6728), ('L3*L15*L32', 797)
('L3*L15*L39', 13262), ('L3*L16*L38', 1375), ('L3*L21*L39', 1375)
('L3*L30*L38', 194), ('L5*L5*L9', 1194), ('L5*L5*L23', 10381)
('L5*L6*L6', 1893), ('L5*L6*L15', 4699), ('L5*L6*L16', 3676)
('L5*L6*L19', 12061), ('L5*L6*L29', 6368), ('L5*L6*L30', 724)
('L5*L6*L39', 5154), ('L5*L9*L11', 2509), ('L5*L9*L23', 20731)
('L5*L9*L27', 269), ('L5*L10*L39', 466), ('L5*L16*L29', 1352)
('L5*L19*L29', 26543), ('L5*L22*L25', 82), ('L5*L23*L24', 7699)
('L5*L29*L29', 10046), ('L5*L31*L38', 194), ('L6*L6*L37', 3003)
('L6*L8*L30', 1110), ('L6*L9*L11', 7488), ('L6*L10*L16', 1639)
('L6*L10*L27', 194), ('L6*L13*L38', 20121), ('L6*L16*L27', 3062)
('L6*L16*L36', 2749), ('L6*L18*L30', 2553), ('L6*L22*L30', 20121)
('L6*L27*L30', 7959), ('L6*L36*L39', 1995), ('L8*L18*L34', 14610)
('L8*L22*L34', 5864), ('L8*L30*L30', 304), ('L9*L9*L21', 1971)
('L9*L9*L36', 1648), ('L9*L11*L11', 58), ('L9*L11*L21', 1125)
('L9*L11*L38', 11859), ('L9*L15*L21', 8485), ('L9*L15*L36', 11578)
('L9*L19*L34', 1261), ('L9*L29*L36', 323), ('L9*L34*L39', 1438)
('L11*L11*L38', 461), ('L11*L15*L34', 1359), ('L11*L27*L38', 466)
('L11*L29*L38', 2553), ('L11*L34*L39', 461), ('L11*L39*L39', 913)
('L12*L12*L15', 1417), ('L12*L14*L15', 773), ('L12*L32*L34', 161)
('L13*L21*L38', 1280), ('L13*L38*L39', 3735), ('L15*L15*L16', 917)
('L15*L15*L34', 773), ('L15*L16*L28', 1104), ('L15*L29*L36', 1548)
('L15*L34*L39', 12390), ('L15*L36*L39', 1995), ('L16*L28*L34', 1639)
('L16*L29*L39', 6016), ('L16*L30*L39', 20393), ('L16*L32*L34', 14407)
('L18*L34*L34', 642), ('L21*L30*L38', 19112), ('L21*L34*L39', 1280)
('L22*L32*L34', 1645), ('L24*L34*L34', 58), ('L25*L36*L38', 16428)
('L27*L30*L39', 194), ('L30*L36*L38', 14767), ('L30*L38*L38', 3735)
('L34*L38*L38', 4648), ('ABC+*L1', 1734), ('ABC+*L11', 25635)
('ABC+*L13', 323), ('ABC+*L15', 3585), ('ABC+*L16', 11500)
('ABC+*L19', 16803), ('ABC+*L23', 509), ('AGH+*L32', 2744)
('BCD+*L1', 5595), ('BCD+*L2', 3102), ('BCD+*L10', 4166)
('BCD+*L15', 4699), ('BCD+*L17', 9137), ('BCD+*L19', 17215)
('BCD+*L20', 13839), ('BCD+*L23', 14050), ('BCD+*L30', 6496)
('BCD+*L32', 1893), ('BCD+*L35', 1463), ('BCD+*L36', 2871)
('CDE+', 7515), ('CDE+*L5', 1194), ('CDE+*L6', 8261)
('CDE+*L11', 1785), ('CDE+*L13', 724), ('CDE+*L19', 26543)
('CDE+*L20', 3389), ('CDE+*L23', 10957), ('CDE+*L27', 269)
('CDE+*L29', 10046), ('CDE+*L36', 2571), ('EFG+*L0', 2744)
('EFG+*L2', 22627), ('EFG+*L6', 1110), ('EFG+*L11', 246)
('EFG+*L13', 304), ('EFG+*L18', 2097), ('EFG+*L21', 559)
('EFG+*L27', 724), ('EFG+*L36', 559), ('FGH+', 7253)
('FGH+*L0', 3468), ('FGH+*L3', 20706), ('FGH+*L9', 1971)
('FGH+*L18', 8922), ('FGH+*L21', 737), ('FGH+*L29', 773)
('FGH+*L31', 1417), ('FGH+*L33', 773), ('FGH+*L34', 2834)
('FGH+*L37', 2456), ('HAO+*L6', 925), ('AOP-', 3862)
('AOP-*L0', 12430), ('AOP-*L5', 4764), ('AOP-*L6', 21479)
('AOP-*L8', 28316), ('AOP-*L14', 4605), ('AOP-*L17', 16214)
('AOP-*L19', 5105), ('AOP-*L23', 16428), ('AOP-*L27', 8065)
('AOP-*L30', 22442), ('AOP-*L34', 38407), ('AOP-*L36', 12370)
('DOP-', 13459), ('DOP-*L1', 14298), ('DOP-*L3', 13071)
('DOP-*L9', 6157), ('DOP-*L11', 1922), ('DOP-*L16', 5777)
('DOP-*L18', 4020), ('DOP-*L20', 1502), ('DOP-*L22', 1995)
('DOP-*L24', 7910), ('DOP-*L26', 3638), ('DOP-*L33', 3003)
('DOP-*L35', 15151), ('EOP+*L0', 14554), ('EOP+*L3', 21920)
('EOP+*L26', 5960), ('EOP+*L34', 21698), ('HOP+*L0', 17860)
('HOP+*L3', 3780), ('HOP+*L6', 12461), ('HOP+*L8', 1499)
('HOP+*L12', 3193), ('HOP+*L19', 1085), ('HOP+*L21', 8935)
('HOP+*L23', 14433), ('HOP+*L34', 6137), ('HOP+*L36', 22808)
('AFO-', 42441), ('AFO-*L3', 11760), ('AFO-*L7', 3605)
('AFO-*L26', 364), ('AFO-*L28', 3159), ('AFO-*L32', 3477)
('AFO-*L33', 724), ('AFO-*L34', 1073), ('AFO-*L35', 957)
('AFO-*L39', 15518), ('BEP+*L2', 58), ('BEP+*L6', 6563)
('BEP+*L24', 6141), ('AEO+', 212), ('AEO+*L3', 624)
('AEO+*L5', 2037), ('AEO+*L9', 1971), ('AEO+*L13', 559)
('AEO+*L18', 6016), ('AEO+*L23', 26675), ('AEO+*L25', 5154)
('AEO+*L33', 5834), ('AEO+*L34', 22614), ('AEO+*L37', 4530)
('AEP-*L0', 7621), ('AEP-*L6', 729), ('AEP-*L19', 20659)
('BFP-*L5', 12134), ('BFP-*L9', 20268), ('BFP-*L15', 1865)
('BFP-*L36', 12160), ('BFP-*L39', 9625), ('BGO+*L3', 348)
('BGO+*L6', 20577), ('BGO+*L11', 1345), ('BGO+*L15', 8922)
('BGO+*L17', 10678), ('BGO+*L20', 10678), ('BGO+*L26', 388)
('BGO+*L29', 2097), ('BGO+*L36', 30108), ('BHO-*L3', 1321)
('BHO-*L8', 14381), ('BHO-*L15', 873), ('BHO-*L25', 44)
('BHO-*L28', 2029), ('BHO-*L31', 737), ('BHO-*L37', 2749)
('BHO-*L39', 15518), ('CFP+*L1', 20026), ('CFP+*L3', 12091)
('CFP+*L5', 10381), ('CFP+*L7', 29328), ('CFP+*L9', 9774)
('CFP+*L12', 388), ('CFP+*L24', 6948), ('CFP+*L33', 833)
('CFP+*L34', 431), ('HBEH_2*L30', 22801), ('S*L0', 6141)
('S*L6', 7488), ('S*L10', 44), ('S*L14', 2744)
('S*L17', 1436), ('S*L18', 22988), ('S*L21', 5697)
('S*L22', 2154), ('S*L30', 388), ('S*L34', 58)
('S*L36', 36039)
```

## 5. Conclusion and the remaining side-line placement

The four-row tree in Section 1 is exhaustive, so the same-side-edge
4/4 class cannot put both interior points in ABEF. Reflection in a
horizontal midline and
cyclic relabeling, gives the identical exclusion for CDGH. No direction
assumption on V was made anywhere in the proof.

For the whole side-line class, the already proved corner capacities
give AFP-,CHP-,BEO+,DGO+. Therefore failure of both common-quadrilateral
containments is exactly

    (AFO+ or BEP-) and (CHO+ or DGP-).

Up to the half-turn exchanging the two points, the remaining cases are
one point in both left virtual corner triangles, or one point in each
of the two upper virtual corner triangles. N8_SIDE_OUTSIDE.md supplies
their complete quantitative exclusion. This note proves the complete
ABEF/CDGH-contained subclass; N8_COMPLETE.md assembles the full theorem.
