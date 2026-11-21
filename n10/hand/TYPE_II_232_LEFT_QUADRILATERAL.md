# Central triple with a quadrilateral left hull: complete exclusion

Let D=(0,1), C=(1,1), E=(0,lambda), B=(b,0), where
`0<b<=1/2` and `0<lambda<1`. Suppose the additional left point P
makes D,E,P,B a strictly convex quadrilateral, in that order, and
suppose three other actual points lie strictly inside DBC. Then these
eight points already have an unsigned doubled triangle area less than
s=93/1000. The two further right points in Type-II count (2,3,2)
are unrestricted and are not used.

The proof has sixteen exhaustive sign leaves. Five are immediate
geometric contradictions. The other eleven are excluded by the 410
fixed positive-integer products printed below. All their signed-area,
containment, coordinate and scalar premises are included in the note;
no optimization or numerical search is a premise.

For actual points write `[UVW]=det(V-U,W-U)`, and assume every
unsigned actual triangle area is at least s. Put

    K=933/125<4+2sqrt(3), J=4427/500<(11+3sqrt(5))/2.

We use the triangle bounds 3s,Ks,Js for one,two,three interior points,
the exclusion of four interior points, and the exclusion of a clustered
triple. For an actual convex quadrilateral with one interior point we
use the bound `2(1+sqrt(2))s>449/1000`, proved in
U3_FOUR_ONE_SIDE.md Section 3. With two interior points we use 8s;
with three, capacity two when its doubled area is at most one follows
from QUADRILATERAL_THREE.md. All of these concern actual points and
hold in the present unit square.

## 1. The lower left point and three capacity cuts

Write P=(p,y), q=1-lambda. The actual left-hull triangles give

    qp>=s, lambda(b-p)-by>=s.                           (1)

Here 0<p<b and y>=0. Consequently

    b>=s/q+s/lambda=s/[lambda(1-lambda)]>=4s.

Since b<=1/2, `lambda(1-lambda)>=2s`. The endpoint value
`(247/1000)(753/1000)=185991/1000000<2s` gives

    247/1000<lambda<753/1000,
    123/1000<p<377/1000.                               (2)

The last bounds use `p>=s/q` and `p<=b-s/lambda`.
Eliminating lambda from (1), with 1-p/b>0, gives

    y<=1-p/b-s/p<=1-2sqrt(s/b)<138/1000.                (3)

For the strict rational comparison use b<=1/2 and
`(431/1000)^2<2s`.

The five actual points form the convex pentagon D,E,P,B,C. Its
quadrilateral EPBC has doubled area

    W=[EPB]+[EBC]=b+lambda(1-p)-by
      <=1+b+s-p-s/p
      <=3/2+s-2sqrt(s)<993/1000<1.                     (4)

The last strict inequality uses sqrt(s)>3/10. Therefore EPBC holds
at most two central points. Any central point on the negative side of
EC lies in EBC and hence in EPBC. Thus at least one central point is
on the positive side of EC.

The actual triangle DEC has doubled area q<753/1000<Js, so it too
holds at most two central points. Finally,

    [BCP]=b+(1-b)y-p<446/1000<Ks,                      (5)

by (2)-(3), maximizing first in y, then in b. Thus BCP holds at most
one central point.

Choose the central point Y of greatest ordinate. Its fan CDY is empty,
so distribution labels the other points Z in DBY and X in BCY. The
thirteen positive distributed-mesh areas are

    DBZ, BCX, CDY, DZY, BXZ, CYX, ZXY,
    DZX, BXY, CYZ, DXY, BYZ, CZX.                       (6)

In particular the rays CY,CZ,CX occur in that order from CD toward CB.
The first two capacity cuts therefore force

    ECY>0, ECX<0, ECZ of either sign.                   (7)

The convex quadrilateral DPBC contains DBC, and CP partitions it into
DCP and BCP. By (5), at least two central points lie in DCP. The same
ray order gives

    CPY<0, CPZ<0, CPX of either sign.                   (8)

These conclusions exhaust all central placements; no third right point
or symmetry is assumed.

## 2. The complete finite sign catalogue

Set epsilon=sign(ECZ), eta=sign(CPX). The other free signs will be
xi and delta, where

    xi=sign(EXZ) if epsilon=-1,
    xi=sign(EYZ) if epsilon=+1,
    delta=sign(PYZ).

Every one of these actual determinants is nonzero. All remaining
signs are fixed by the following tables and rules.

Every triple of the anchors in the cyclic order D,E,P,B,C has positive
sign. For T equal to X,Y,Z,

    DET,DBT,DPT,EBT,EPT,BCT are positive;
    DCT,BPT are negative.

These follow from the convex pentagon, central membership in DBC and
left/central separation by DB. In particular EBT is positive throughout
DBC because it is positive at D,C and zero at B. The EC and CP signs
are those in (7)-(8), together with epsilon and eta.

The remaining central-pair signs are

| Initial vertex | XY | XZ | YZ |
|---|---|---|---|
| D | + | - | - |
| E, epsilon=-1 | + | xi | - |
| E, epsilon=+1 | + | + | xi |
| B | + | + | + |
| C | - | - | + |
| P | + | + | delta |

Also XYZ is positive. The rows at D,B,C follow from (6). At E, the
opposite EC memberships give EXY>0; if epsilon=+1 they give EXZ>0,
whereas if epsilon=-1 they give EYZ<0. These assertions follow by
putting the point on the other side of EC inside DEC or EBC and
checking the signs at its three vertices.

For completeness, the two signs PXY,PXZ follow from the determinant
identities

    [XDB][XPY]-[XDP][XBY]+[XDY][XBP]=0,
    [ZDC][ZPX]-[ZDP][ZCX]+[ZDX][ZCP]=0.                 (9)

In each identity the last two displayed summands are positive. The
first factors XDB and ZDC are respectively positive and negative, so
XPY<0 and ZPX>0, equivalently PXY>0 and PXZ>0. This proves every
sign in the table without a geometric inference left unstated.

There are four roots R1--R4:

| Root | epsilon | eta |
|---|---|---|
| R1 | - | - |
| R2 | - | + |
| R3 | + | - |
| R4 | + | + |

Append m or p for the negative or positive choice of xi, and then
m or p for delta. This defines all sixteen leaves.

If eta=-1 and delta=-1, DPC contains X,Y,Z and its fan PCY contains
both X,Z. Indeed CPX,CPY,CPZ are all negative, while PCX,PCZ,CYX,
CYZ,YPX,YPZ are all positive. This is the excluded clustered pattern.
It removes R1mm,R1pm,R3mm,R3pm.

The leaf R4pm is also impossible. With EYZ>0 and PYZ<0, all three
summands of

    [YDE][YPZ]-[YDP][YEZ]+[YDZ][YEP]=0                  (10)

are positive, by the sign table. This removes the fifth leaf. Exactly
the following eleven remain:

    R1mp,R1pp,R2mm,R2mp,R2pm,R2pp,
    R3mp,R3pp,R4mm,R4mp,R4pp.                           (11)

## 3. Uniform mesh bounds and the two rational boxes

Write X=(x,v), Y=(u,t), Z=(z,w). The three outer ears of the mesh (6)
are each at most `1-(3927/500)s`, its three connectors have sum at
least `(2427/500)s`, and its central face k=[ZXY] is less than 8s/5.
Here is the threshold-specific arithmetic behind these useful bounds.
The distributed-mesh calculation in TRIANGLE_OCCUPANCY.md, before its
last estimate, gives for

    K0=k/s-1>=0, T=([DZY]+[BXZ]+[CYX])/s-3>=0

that `T^2/3+T>=3+6K0`. In particular the connector sum is at least
`3(1+sqrt(5))s/2>(2427/500)s`. In the seven-face sum, retaining an
individual ear and bounding the other ears and k below by s proves
the ear cap. If kappa=k/s>=8/5, the same face sum gives
`T<=442/93-kappa`, and hence

    0<=((442/93-kappa)^2)/3+(442/93-kappa)-6kappa+3.

The right side decreases for `8/5<=kappa<=442/93` and at 8/5 is
`-87029/648675<0`. This proves the central-face cap.

The mesh also gives

    [CDX],[CDZ],[DBX],[BCZ],[DBY],[BCY]>=3s,
    [BCX],[DBZ],[CDY]>=s,
    t-v>=2s, t-w>=2s.                                 (12)

For the last two identities use `t-v=[CYX]+[DXY]` and
`t-w=[DZY]+[CYZ]`. Thus `4s<=v,w<=1-3s`, and the ear CDY gives
t>(3927/500)s>73/100. Also t<=1-s.

If epsilon=-1, EBC contains X,Z. Its area bound gives

    lambda>=(Ks-b)/(1-b)>=2Ks-1,
    p>=s/(1-lambda)>=s/(2-2Ks)>152/1000.                (13)

If epsilon=+1, DEC contains Y,Z, so lambda<=Lm:=1-Ks=38231/125000.
Since Lm<1/2, (1) gives

    b>=s/[Lm(1-Lm)]>438/1000,
    p<=1/2-s/Lm<196/1000,
    y<=Lm(1-2p)-2s
      <=Lm(1-246/1000)-2s<45/1000.                     (14)

The y estimate maximizes `lambda(1-p/b)-s/b` first in b<=1/2,
then in lambda<=Lm, and uses p>123/1000. All coefficients have the
indicated positive or negative signs on the stated ranges.

The complete closed boxes are the following. Each fraction is rational;
strict inequalities above have only been weakened to closed endpoints.

| Variable | Lower, epsilon=-1 | Upper, epsilon=-1 | Lower, epsilon=+1 | Upper, epsilon=+1 |
|---|---:|---:|---:|---:|
| b | 372/1000 | 1/2 | 438/1000 | 1/2 |
| lambda | 24269/62500 | 753/1000 | 247/1000 | 38231/125000 |
| p | 152/1000 | 377/1000 | 123/1000 | 196/1000 |
| y | 0 | 138/1000 | 0 | 45/1000 |
| x | 382/1000 | 768/1000 | 401/1000 | 768/1000 |
| v | 372/1000 | 721/1000 | 372/1000 | 721/1000 |
| u | 313/1000 | 675/1000 | 319/1000 | 675/1000 |
| t | 730/1000 | 907/1000 | 730/1000 | 907/1000 |
| z | 196/1000 | 582/1000 | 215/1000 | 582/1000 |
| w | 372/1000 | 721/1000 | 372/1000 | 721/1000 |

The remaining coordinate bounds follow directly from (12):

    x>=3s+3bs, x<=1-4s+3bs;
    z>=s+3bs, z<=1-6s+3bs;
    u>=3s+bs, u<=1-4s+bs.

Use the relevant lower b for the lower endpoints, and b<=1/2 for
the upper endpoints. No coordinate subdivision is used.

## 4. All factors and their geometric eligibility

In each row use its box, in the order b,lambda,p,y,x,v,u,t,z,w.
For coordinate a_i with endpoints l_i,u_i define

    L_(2i)=a_i-l_i, L_(2i+1)=u_i-a_i, 0<=i<10,
    L20=t-v-2s, L21=t-w-2s.

All 22 affine factors are nonnegative. The notation `+UVW` means
`[UVW]-s`, while `-UVW` means `-[UVW]-s`; the complete sign table
in Section 2 verifies each such factor. A suffix `o3` replaces s by
3s, and `o933/125` replaces it by Ks, using respectively one and two
actual interior witnesses.

For a convex quad A-B-C-D with indicated interior points I, the factor
`quad_ABCD_I` means

    [ABC]+[ACD]-c,
    c=449/1000 for one indicated point, c=8s for two.

Its cyclic convexity and the four strict edge tests for every indicated
point follow from the same complete sign table. The one-point constant
uses sqrt(2)>707/500; `2(1+707/500)s>449/1000` is an exact rational
comparison.

There are three additional mesh factors, all nonnegative by Section 3:

    ear_DBC_DBZ = 1-[DBZ]-(3927/500)s,
    connect_DBC_XYZ = [DZY]+[BXZ]+[CYX]-(2427/500)s,
    center_ZXY = 8s/5-[ZXY].

Here is the complete list of strengthened factors actually used, with
their actual interior witnesses and their row usage. All containment
claims can also be read directly as three or four edge signs in the
fixed table of Section 2.

| Strengthened factor | Interior witnesses or mesh | Used in |
|---|---|---|
| `+BCPo3` | BCP contains X | R2mp, R4mp |
| `+BCYo3` | BCY contains X | R3pp |
| `+BCZo3` | BCZ contains X | R2pp |
| `+DBYo3` | DBY contains Z | R2mm, R3pp, R4pp |
| `+DECo3` | DEC contains Y | R1mp, R1pp, R2mp |
| `+ECYo3` | ECY contains Z | R3mp, R4mp |
| `+EPXo3` | EPX contains Z | R2mp |
| `-BPYo3` | BPY contains Z | R2mm, R2pm |
| `-ECPo933/125` | ECP contains XZ | R1pp |
| `-ECXo3` | ECX contains Z | R1pp |
| `center_ZXY` | mesh DBC with XYZ | R2mm, R2mp, R4pp |
| `connect_DBC_XYZ` | mesh DBC with XYZ | R3pp |
| `ear_DBC_DBZ` | mesh DBC with XYZ | R2pm |
| `quad_BCYP_XZ` | BCYP contains XZ | R2mm, R2pm |
| `quad_BCZP_X` | BCZP contains X | R1mp, R2mm |
| `quad_DBXY_Z` | DBXY contains Z | R3pp |
| `quad_DEXC_YZ` | DEXC contains YZ | R1pp |
| `quad_DEZC_Y` | DEZC contains Y | R1mp, R1pp |
| `quad_DPBY_Z` | DPBY contains Z | R3mp |
| `quad_DZXC_Y` | DZXC contains Y | R2pm, R3pp |
| `quad_EPCY_XZ` | EPCY contains XZ | R3mp |

## 5. The eleven fixed cubic sums

For each leaf in (11), sum its displayed products with their positive
integer weights to obtain W. Every factor is nonnegative by Sections
2--4, so W>=0. Each product has degree at most three.

Expand at the lower corner of that leaf's box:

    W(l+t)=c0+sum_(alpha!=0) c_alpha t^alpha,
    0<=t_i<=u_i-l_i.

Discard nonpositive nonconstant terms and bound each positive monomial
by its box endpoint. The exact resulting upper bound

    c0+sum_(c_alpha>0,alpha!=0) c_alpha (u-l)^alpha

is the negative rational number printed with the leaf. This is an
explicit polynomial contradiction for its entire box. The eleven sums
have 410 entries in total, and no additional square or unprinted factor.
The optional `check_type_ii_232_left_quadrilateral.py` reconstructs all
polynomials from these fixed products using Fraction arithmetic. It also
checks every signed and occupancy factor against the complete sign table
and verifies the five direct exclusions and all sixteen leaves. The
checker is not an optimization procedure or a premise of the proof.

### R1mp

The exact upper bound is `-26774992501/31250000000`.

| Weight | Product | Weight | Product | Weight | Product |
|---:|---|---:|---|---:|---|
| 45 | `L2*L15` | 51 | `L4*L15` | 33 | `L6*L9` |
| 30 | `L6*L11` | 45 | `L6*L21` | 1 | `L0*L1*L6` |
| 2 | `L0*L4*L15` | 31 | `L0*L11*L16` | 2 | `L0*L11*L20` |
| 2 | `L0*L16*L20` | 1 | `L1*L1*L18` | 1 | `L1*L4*L18` |
| 7 | `L1*L5*L19` | 71 | `L1*L6*L10` | 79 | `L1*L18*L19` |
| 138 | `L2*L9*L20` | 179 | `L2*L11*L16` | 8 | `L4*L5*L11` |
| 2 | `L4*L5*L15` | 8 | `L4*L6*L9` | 2 | `L4*L6*L13` |
| 22 | `L4*L9*L11` | 18 | `L4*L9*L20` | 88 | `L4*L10*L15` |
| 2 | `L4*L15*L16` | 49 | `L5*L19*L19` | 40 | `L6*L8*L9` |
| 229 | `L8*L11*L15` | 60 | `L9*L15*L18` | 229 | `L11*L11*L13` |
| 29 | `L11*L12*L18` | 30 | `L11*L13*L19` | 65 | `L13*L18*L18` |
| 65 | `L15*L17*L18` | 7 | `-DCP*L9*L15` | 172 | `-EBP*L11` |
| 3 | `-EBP*L16` | 159 | `-EBP*L19` | 2 | `-BPX*L20` |
| 35 | `+BCX*L6` | 21 | `+DEZ*L12` | 24 | `+DEZ*L16` |
| 23 | `+DEZ*L21` | 20 | `+EPZ*L15` | 35 | `-BPZ` |
| 21 | `-BPZ*L2` | 2 | `-BPZ*L4` | 9 | `-BPZ*L8` |
| 68 | `-BPZ*L10` | 2 | `-BPZ*L13` | 65 | `-BPZ*L19` |
| 49 | `-BPZ*L21` | 24 | `+BCZ*L15` | 50 | `+DBZ` |
| 1 | `+DBZ*L1` | 139 | `+DBZ*L2` | 8 | `+DBZ*L4` |
| 233 | `+DBZ*L7` | 24 | `+DBZ*L8` | 142 | `+DBZ*L11` |
| 35 | `+DBZ*L18` | 7 | `+DBZ*L20` | 45 | `-CXY*L6` |
| 80 | `+BXY*L18` | 24 | `+CYZ*L6` | 229 | `+DXY*L11` |
| 18 | `+DXY*L16` | 41 | `+BYZ*L6` | 84 | `-CXZ` |
| 23 | `-CXZ*L2` | 37 | `-CXZ*L7` | 142 | `-CXZ*L8` |
| 156 | `-CXZ*L10` | 16 | `-CXZ*L15` | 24 | `-CXZ*L16` |
| 23 | `-CXZ*L19` | 72 | `+ECY` | 199 | `+ECY*L7` |
| 46 | `+ECY*L8` | 8 | `+ECY*L10` | 38 | `+ECY*L16` |
| 128 | `+ECY*L18` | 4 | `-CPZ*L15` | 19 | `-CPX` |
| 172 | `-CPX*L2` | 8 | `-CPX*L4` | 40 | `-CPX*L8` |
| 2 | `-CPX*L10` | 27 | `-CPX*L17` | 159 | `-CPX*L19` |
| 50 | `-CPX*L21` | 178 | `-EXZ` | 33 | `-EXZ*L0` |
| 27 | `-EXZ*L5` | 172 | `-EXZ*L7` | 142 | `-EXZ*L9` |
| 18 | `-EXZ*L12` | 24 | `-EXZ*L17` | 23 | `-EXZ*L18` |
| 156 | `-EXZ*L20` | 21 | `+PYZ` | 2 | `+PYZ*L0` |
| 199 | `+PYZ*L3` | 2 | `+PYZ*L5` | 18 | `+PYZ*L8` |
| 140 | `+PYZ*L10` | 65 | `+PYZ*L18` | 158 | `+DECo3*L0*L11` |
| 33 | `+DECo3*L1*L9` | 14 | `+DECo3*L1*L10` | 30 | `+DECo3*L1*L16` |
| 27 | `+DECo3*L5*L8` | 23 | `+DECo3*L5*L17` | 159 | `+DECo3*L5*L19` |
| 179 | `+DECo3*L5*L21` | 142 | `+DECo3*L8*L9` | 63 | `+DECo3*L8*L12` |
| 118 | `+DECo3*L8*L16` | 18 | `+DECo3*L8*L20` | 8 | `+DECo3*L10*L12` |
| 71 | `+DECo3*L12*L19` | 93 | `quad_DEZC_Y*L6` | 1 | `quad_BCZP_X*L1` |

### R1pp

The exact upper bound is `-801491869419/1562500000000`.

| Weight | Product | Weight | Product | Weight | Product |
|---:|---|---:|---|---:|---|
| 3 | `L1*L2` | 1 | `L1*L10` | 1 | `L6*L9` |
| 1 | `L1*L2*L10` | 3 | `L1*L10*L18` | 3 | `L2*L2*L17` |
| 4 | `-EBP` | 3 | `-BPX` | 1 | `+BCX*L3` |
| 7 | `+DEZ*L9` | 4 | `+DEZ*L10` | 3 | `+DBZ*L10` |
| 10 | `-DXZ` | 7 | `-DXZ*L2` | 1 | `-ECZ` |
| 2 | `-ECZ*L3` | 11 | `-ECZ*L8` | 2 | `-ECZ*L10` |
| 6 | `-ECZ*L17` | 6 | `-CPX` | 2 | `-CPX*L3` |
| 21 | `+EXZ` | 1 | `+EXZ*L2` | 2 | `+DECo3*L5*L11` |
| 1 | `-ECPo933/125*L2` | 9 | `-ECPo933/125*L8` | 5 | `-ECXo3*L17` |
| 9 | `quad_DEXC_YZ*L5` | 6 | `quad_DEZC_Y*L16` |  |  |

### R2mm

The exact upper bound is `-38527458167/125000000000`.

| Weight | Product | Weight | Product | Weight | Product |
|---:|---|---:|---|---:|---|
| 10 | `L2*L9` | 8 | `L4*L20` | 4 | `L2*L4*L19` |
| 1 | `L6*L6*L13` | 7 | `L6*L7*L12` | 2 | `L7*L12*L16` |
| 29 | `+DEP` | 1 | `+DEC*L1` | 6 | `-DCP*L1` |
| 4 | `-DCP*L1*L3` | 5 | `-DCP*L1*L19` | 2 | `-DCP*L2*L9` |
| 17 | `+BCP*L15` | 12 | `+BCX` | 18 | `+BCX*L7` |
| 6 | `-DCX*L1*L7` | 12 | `-BPZ*L15` | 7 | `-DCZ*L1*L3` |
| 2 | `-DCZ*L1*L13` | 10 | `+DBZ` | 7 | `+DBZ*L2` |
| 1 | `+DBZ*L7` | 2 | `+DBZ*L12` | 1 | `+DBZ*L15` |
| 2 | `+BXY*L6` | 1 | `+CYZ*L4` | 6 | `+DXY*L7` |
| 26 | `+BYZ` | 15 | `+BYZ*L7` | 14 | `-CPZ*L11` |
| 2 | `-CPZ*L12` | 1 | `-CPZ*L20` | 9 | `+CPX` |
| 2 | `+CPX*L19` | 11 | `-EXZ` | 2 | `-EXZ*L7` |
| 30 | `-PYZ` | 13 | `+PXZ` | 4 | `center_ZXY*L7` |
| 2 | `+DBYo3*L7` | 11 | `-BPYo3*L7` | 11 | `-BPYo3*L18` |
| 20 | `quad_BCYP_XZ*L6` | 4 | `quad_BCZP_X*L3` | 13 | `quad_BCZP_X*L10` |

### R2mp

The exact upper bound is `-586428795483/1562500000000`.

| Weight | Product | Weight | Product | Weight | Product |
|---:|---|---:|---|---:|---|
| 3 | `L1*L18` | 2 | `L2*L13` | 10 | `L4*L11` |
| 10 | `L7*L9` | 3 | `L10*L15` | 7 | `L1*L2*L11` |
| 1 | `L2*L2*L11` | 1 | `L2*L2*L13` | 3 | `+DEP` |
| 4 | `+DEP*L2` | 15 | `+DEP*L18` | 8 | `-EBP*L19` |
| 8 | `+BCX` | 8 | `+BCX*L2` | 7 | `+BCX*L7` |
| 3 | `-DCX*L1` | 3 | `-DCX*L2*L13` | 3 | `-DCZ*L1*L3` |
| 3 | `+DBZ` | 12 | `+DBZ*L2` | 11 | `+DBZ*L7` |
| 1 | `+CYZ*L7` | 4 | `+ECY` | 12 | `+ECY*L5` |
| 12 | `+ECY*L8` | 3 | `+ECY*L10` | 1 | `+ECY*L18` |
| 12 | `+CPX` | 12 | `+CPX*L12` | 12 | `-EXZ` |
| 12 | `+PYZ` | 1 | `+PYZ*L3` | 1 | `-EYZ*L7` |
| 1 | `+DECo3*L1*L10` | 1 | `+DECo3*L3*L10` | 1 | `+DECo3*L3*L12` |
| 6 | `+DECo3*L10*L12` | 12 | `center_ZXY` | 12 | `+EPXo3*L13` |
| 7 | `+BCPo3*L10` |  |  |  |  |

### R2pm

The exact upper bound is `-29829420009/62500000000`.

| Weight | Product | Weight | Product | Weight | Product |
|---:|---|---:|---|---:|---|
| 3 | `L2*L17` | 15 | `L4*L21` | 12 | `L7*L12` |
| 4 | `L15*L16` | 3 | `L2*L12*L17` | 3 | `+DEP` |
| 8 | `+DEC*L1*L11` | 1 | `-DCP*L1` | 4 | `-DCP*L1*L21` |
| 1 | `+BCX` | 8 | `+BCX*L3` | 11 | `+BCX*L18` |
| 2 | `-BPZ*L15` | 9 | `-DCZ*L1*L7` | 2 | `-DCZ*L1*L13` |
| 9 | `+DBZ*L6` | 1 | `+DBZ*L10` | 2 | `+DBZ*L12` |
| 3 | `-DYZ*L7` | 7 | `-DXZ` | 4 | `-DXZ*L2` |
| 1 | `+CYZ*L6` | 13 | `+BYZ` | 5 | `+BYZ*L7` |
| 5 | `-CPZ*L2` | 5 | `-ECZ*L6` | 7 | `-ECZ*L10` |
| 3 | `-ECZ*L13` | 17 | `+EXZ` | 17 | `-PYZ` |
| 4 | `ear_DBC_DBZ*L2` | 2 | `-BPYo3*L18` | 3 | `quad_DZXC_Y*L2` |
| 1 | `quad_BCYP_XZ*L6` |  |  |  |  |

### R2pp

The exact upper bound is `-4342668494471/7812500000000`.

| Weight | Product | Weight | Product | Weight | Product |
|---:|---|---:|---|---:|---|
| 4 | `L1*L16` | 6 | `L1*L18` | 8 | `L2*L2*L17` |
| 10 | `L2*L9*L17` | 29 | `+DEC*L1*L11` | 3 | `+BCX` |
| 25 | `+BCX*L3` | 6 | `+BCX*L16` | 10 | `+BCX*L18` |
| 8 | `+DBZ*L3` | 10 | `+DBZ*L10` | 4 | `+BXZ*L2` |
| 19 | `-DXZ` | 3 | `-DXZ*L0` | 15 | `-DXZ*L2` |
| 3 | `-CXZ*L1` | 9 | `-ECZ` | 8 | `-ECZ*L3` |
| 10 | `-ECZ*L8` | 10 | `-ECZ*L10` | 40 | `+EXZ` |
| 1 | `+BCZo3*L2` |  |  |  |  |

### R3mp

The exact upper bound is `-6275519433853/7812500000000`.

| Weight | Product | Weight | Product | Weight | Product |
|---:|---|---:|---|---:|---|
| 8 | `L3*L12` | 10 | `L5*L19` | 1 | `L5*L21` |
| 2 | `L6*L17` | 5 | `-EBP` | 2 | `+DBZ` |
| 9 | `+DBZ*L7` | 2 | `+ECZ` | 4 | `+ECZ*L12` |
| 15 | `-EYZ` | 11 | `+PYZ` | 4 | `+ECYo3*L17` |
| 5 | `quad_DPBY_Z*L3` | 2 | `quad_EPCY_XZ` | 2 | `quad_EPCY_XZ*L2` |

### R3pp

The exact upper bound is `-8728343015229/15625000000000`.

| Weight | Product | Weight | Product | Weight | Product |
|---:|---|---:|---|---:|---|
| 9 | `L0*L3` | 3 | `L0*L19` | 7 | `L0*L20` |
| 14 | `L0*L21` | 17 | `L3*L13` | 17 | `L3*L16` |
| 7 | `L5*L11` | 14 | `L6*L9` | 6 | `L8*L15` |
| 6 | `L15*L17` | 1 | `L6*L9*L10` | 5 | `+DEC*L0*L19` |
| 21 | `-EBP` | 5 | `-DCX*L5*L11` | 8 | `+DBZ` |
| 48 | `+DBZ*L14` | 2 | `+DBZ*L20` | 5 | `-DXZ*L2` |
| 2 | `-DXZ*L4` | 6 | `-DXZ*L12` | 18 | `+BXY*L18` |
| 27 | `+CYZ` | 2 | `+CYZ*L3` | 2 | `+DXY*L19` |
| 6 | `-CXZ*L13` | 11 | `-ECX` | 1 | `-ECX*L10` |
| 15 | `-CPX` | 1 | `-CPX*L10` | 29 | `+EYZ` |
| 8 | `+EYZ*L2` | 5 | `connect_DBC_XYZ*L2` | 32 | `+DBYo3*L19` |
| 5 | `+BCYo3*L3` | 5 | `quad_DBXY_Z*L2` | 16 | `quad_DBXY_Z*L19` |
| 2 | `quad_DZXC_Y*L5` |  |  |  |  |

### R4mm

The exact upper bound is `-1729183/1953125`.

| Weight | Product | Weight | Product | Weight | Product |
|---:|---|---:|---|---:|---|
| 5 | `L1*L21` | 5 | `L2*L17` | 18 | `L4*L21` |
| 18 | `L7*L12` | 2 | `L15*L16` | 4 | `-EBP` |
| 8 | `-DCZ*L1` | 2 | `+DBZ` | 16 | `+BYZ` |
| 5 | `+ECZ` | 18 | `-PYZ` |  |  |

### R4mp

The exact upper bound is `-5384705823/6250000000`.

| Weight | Product | Weight | Product | Weight | Product |
|---:|---|---:|---|---:|---|
| 3 | `L2*L13` | 7 | `L5*L19` | 3 | `L5*L21` |
| 1 | `L6*L17` | 3 | `-EBP` | 2 | `+DBZ` |
| 12 | `+DBZ*L7` | 3 | `+ECZ` | 6 | `+ECZ*L12` |
| 19 | `-EYZ` | 13 | `+PYZ` | 6 | `+ECYo3*L17` |
| 3 | `+BCPo3*L19` |  |  |  |  |

### R4pp

The exact upper bound is `-42303900513/125000000000`.

| Weight | Product | Weight | Product | Weight | Product |
|---:|---|---:|---|---:|---|
| 3 | `L0*L19` | 11 | `L1*L2` | 34 | `L3*L16` |
| 7 | `L4*L11` | 32 | `L12*L15` | 47 | `L15*L17` |
| 1 | `L16*L21` | 1 | `L0*L13*L21` | 2 | `L10*L13*L16` |
| 71 | `L12*L12*L19` | 29 | `L13*L13*L18` | 3 | `+DEC*L0*L19` |
| 10 | `-EBP` | 9 | `+BCX` | 2 | `+BCX*L13` |
| 1 | `+BCX*L16` | 13 | `+DBZ` | 3 | `+DBZ*L1` |
| 3 | `+DBZ*L3` | 10 | `+DBZ*L13` | 14 | `+DBZ*L14` |
| 3 | `+DBZ*L20` | 2 | `-DYZ*L19` | 4 | `-DXZ` |
| 6 | `-DXZ*L0` | 2 | `+BXY*L13` | 3 | `+BXY*L18` |
| 33 | `+CYZ` | 9 | `+CYZ*L0` | 2 | `+CYZ*L3` |
| 2 | `+CYZ*L8` | 40 | `+CYZ*L12` | 3 | `+DXY*L19` |
| 5 | `-CXZ*L1` | 2 | `+ECZ*L15` | 7 | `+CPX` |
| 36 | `+EYZ` | 2 | `+EYZ*L19` | 2 | `center_ZXY` |
| 2 | `center_ZXY*L13` | 10 | `+DBYo3*L19` |  |  |

## 6. Completion and scope

The four choices of (epsilon,eta), followed by the two independent
nonzero pair signs, exhaust all sixteen possibilities. Section 2 excludes
five; Section 5 excludes all eleven others. This proves the stated
quadrilateral-left theorem on the eight actual points.

Together with TYPE_II_232_LEFT_TRIANGLE.md, it excludes both possible
hulls of D,E,P,B and hence the entire count (2,3,2), irrespective of the
hull or placement of its two right points. The separate Type-II count
(1,3,3) is not excluded by either of these eight-point theorems.
