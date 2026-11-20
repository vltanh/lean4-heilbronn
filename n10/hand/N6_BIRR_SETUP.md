# Actual geometry and a continuous box for N6 BIRR

**Setup.** This note supplies necessary
conditions for the entire count BIRR=(1,1,2,0,0). It does not by
itself assert that count is excluded. All areas are doubled, and
[XYZ]=det(Y-X,Z-X).

Use ten actual points in the closed unit square, with contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

Put P=(p,q) strictly in HABC, Q=(u,v) strictly in HCEF, and put
R=(r,w), S=(j,k) in the right cap CE(1,0), strictly beyond CE.
These are the regions in [N6_PLACEMENTS.md](N6_PLACEMENTS.md).
Assume every actual unsigned determinant is at least s=93/1000.
Consequently all actual determinant signs used below are nonzero.
The strict-square-interior N6 count is included; the argument also
permits a right-cap point on its outer square side.

## 1. The side pair and the two interior points

The complete [side-pair reduction](N6_SIDE_PAIR_REDUCTION.md)
names R as the outer point and S as the inner point, with

    S in int(CER) and int(BER),
    U=-[CER]=e(r-c)-(1-c)w>=3s,
    e(1-b)>=(4+2sqrt(3))s>rho,       rho=347/500.

In particular ERS<0, CRS>0 and BRS>0. This naming does not
permute P with Q. The strict comparison follows from
(433/250)^2<3 and (4+2*(433/250))s>rho.

The proved [no-top side-pair bounds](N6_SIDE_PAIR_BOUNDS.md) give

    a,b>epsilon=1037/10000, e<=E1=907/1000,
    c<C1=77/125, r>R0=183/200, U<(11/3)s.

The three barycentric weights of S in CER therefore exceed 3/11
and are below 5/11. Its three fan areas |CES|,|CRS|,|ERS| are
less than (5/3)s. These bounds use no location of P or Q.

Both negative-BE slots of the endpoint container are already
occupied by R,S. [N6_CORNER_CONTAINERS.md](N6_CORNER_CONTAINERS.md),
Sections 1 and 3, therefore forces BEP,BEQ>0.

The two occupied-ear alternatives for P from
[ONE_LOWER_POINT.md](ONE_LOWER_POINT.md), Section 1, would give
hc>rho. But hc<=c<C1<rho. Hence P is uniformly central:

    ACP>0, HBP>0.                                  (1)

No contact-order choice or physical transposition is made here.
The five actual points H,A,B,C,P lie in the virtual endpoint
triangle (0,0),H,C. Its endpoint-five theorem gives

    hc>=(3+2sqrt(2))s>M,
    M=(1457/250)s=135501/250000.                    (2)

The strict rational weakening uses (707/500)^2<2. It follows that
c>=M and h>=M/C1. The side-pair cost gives

    e>=E0=rho/(1-epsilon)=6940/8963.

Since [HEF]=1-h+f(h-e)<=1-e<=1-E0<3s, HEF contains no further
actual point. The two triangles HCE and HEF partition HCEF, so

    Q in int(HCE), HEP<0, HEQ<0.                  (3)

For P, the second sign follows directly by affinity on HABC:
the HE tests at A,B,C are negative and at H are zero.

The lower/upper cross signs used later are actual consequences,
not label normalizations. Put D=-[HCP]=hc-hp-cq>=s. Then

    [HPC]=D,
    c[HPE]=D+p(ce+h-ch),
    [CPH]=-D,
    h[CPE]=-eD-q(h-ch+ec).                         (4)

All remainder coefficients are nonnegative, and c,h,p,q>0.
The HP test at H,C,E is respectively 0, positive, positive;
the CP test is negative, 0, negative. Affinity at the strictly
interior point Q of HCE proves

    HPQ>0, CPQ<0.                                 (5)

P and Q retain these distinct roles throughout the proof.

## 2. Derivation of every box endpoint

Set

    B1=1-rho/E1=213/907,
    A0=s/(C1-epsilon)=930/5123,
    A1=1-s/B1=42883/71000,
    X0=s/(1-A0)=476439/4193000,
    W1=E1-3s/(1-M)=34100593/114499000.

The actual ABC and ABH clearances give a>=A0 and a<=A1;
the side-pair cost gives b<=B1. Every BC clearance gives the
ordinate of each free point at least A0. Every AH clearance gives
its abscissa at least X0. In particular w>=A0. The outer cap gives

    3s<=U<= (1-c)(e-w),

so w<=W1. These facts also verify that all displayed denominators
are positive.

For either T=P,Q, the actual HE clearance (3) implies
y_T<=h-s<=E1. To bound its abscissa, if y_T<=e then

    [CET]=(1-c)y_T-e(x_T-c)<=e(1-x_T)<=1-x_T;

if y_T>=e then

    [EFT]=(1-f)(e-y_T)+(1-e)(1-x_T)<=1-x_T.

Both triangles are positive for T in the contact hexagon. Thus
x_T<=E1 in both cases.

For the central lower point, ONE_LOWER_POINT.md, Sections 3–4,
with c<=C1,h<=1,a>=A0,b>=epsilon, gives

    p>=P0=s(C1+epsilon)/(C1-epsilon)=669321/5123000,
    q>=Q0=s(1+A0)/(C1(1-A0))=562929/2582888,
    p+q<=T0=1-s/C1.

Consequently p<=T0-Q0 and q<=T0-P0. Here P0>=X0 and Q0>=A0,
so these stronger lower endpoints may be retained in place of
the common clearance bounds.

For S, write its three CER weights as 3/11 plus nonnegative
remainders whose sum is 2/11. The x order c<=r<=1 and y order
0<=w<=e give

    (5c+3+3r)/11<=j<=(3c+3r+5)/11,
    3(e+w)/11<=k<=(5e+3w)/11.

Substituting their proved vertex endpoints gives the last two
rows below. This is a normalized barycentric calculation; no fan
area is substituted for a barycentric weight.

The exact closed box, in the coordinate order
(a,b,c,e,f,h,p,q,u,v,r,w,j,k), is:

| Coordinate | Lower | Upper |
| --- | --- | --- |
| a | 930/5123 | 42883/71000 |
| b | 1037/10000 | 213/907 |
| c | 135501/250000 | 77/125 |
| e | 6940/8963 | 907/1000 |
| f | 1037/10000 | 77/125 |
| h | 135501/154000 | 1 |
| p | 669321/5123000 | 815005/1291444 |
| q | 562929/2582888 | 35422301/49308875 |
| u | 476439/4193000 | 907/1000 |
| v | 930/5123 | 907/1000 |
| r | 183/200 | 1 |
| w | 930/5123 | 34100593/114499000 |
| j | 422751/550000 | 1231/1375 |
| k | 131667630/505091939 | 77694343/157436125 |

Only necessary weak bounds were used. Closing the rational box
enlarges the domain; it removes no equality face.

## 3. Complete initial orientation list

Every cyclic triple of A,B,C,E,F,H is positive. Add the following
ordered signs; a plus means positive, a minus means negative.

| Points T | Initial tests |
| --- | --- |
| P,Q,R,S | ABT+, ACT+, AHT-, BCT+, BHT-, EFT+, EHT+, FHT+ |
| P | CHP+ |
| Q,R,S | CHT- |
| P,Q | CET+, BET+ |
| R,S | AET-, AFT-, BET-, BFT-, CET-, CFT- |

Finally add HPQ+,CPQ-,ERS-,CRS+,BRS+. This is exactly the full
initial sign domain, before any finite split.

For P, ACT+ and BHT- are (1); all its other contact tests follow
from P in HABC and the BE container deduction. For Q, containment
in HCE and the BE deduction give the listed signs. For a right-cap
point, x_T>c>=f and y_T<e<=h. Its square bounds and negative CE
test give every listed sign directly. For example,

    [BET]=[CET]+(c-b)(y_T-e)<0,
    [AET]=y_T-ex_T-a(1-x_T)<0,

where y_T<e(x_T-c)/(1-c)<=ex_T. The remaining sign tests are
affine on the closed cap with its actual edge excluded. Thus no
initial sign imposes an unproved subchamber.

The transpose (x,y)->(y,x), with the corresponding contact relabeling,
preserves the normalized domain and turns the right pair into a
left pair. Hence an eventual complete BIRR exclusion also covers
the left-side reflection of this count.

## 4. Status

The [complete BIRR proof](N6_BIRR.md) applies these bounds in every
leaf of its sign tree. Independent review checks the geometric
hypotheses, determinant identities and every endpoint above.
