# N7 central: complete CEF exclusion

The fixed finite argument below excludes the CEF upper-pair word in
both central contact roots CA and CB. Its complete literal rational
tables are in
[N7_CENTRAL_COMPLETION_CEF_TABLES/INDEX.md](N7_CENTRAL_COMPLETION_CEF_TABLES/INDEX.md).
Author verification and independent review are recorded in Section 7.
The C, CE and EF words and the two central parent roots remain open.

## 1. Actual points and statement

Use the actual contacts and free points

    A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e),
    F=(f,1), H=(0,h), G=(g,z), O=(x,y), P=(u,v).

All ten points lie in the closed unit square. The actual heptagon
ABCDEFH is strictly convex. Every unsigned doubled triangle area of
three distinct actual points is at least s=93/1000. The contact orders
and cell placements are

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    a<=e<=h, b<=f<=c,
    G strictly inside HABC, ACG>0,HBG>0,
    O,P strictly inside HCEF.

Use the normalization HOP<0. The actual upper-ear separation theorem
[UPPER_EAR_SEPARATION.md](UPPER_EAR_SEPARATION.md) makes HEF empty.
Since EFP,FHP>0, P outside HEF gives HEP<0 and EHP>0.
The [central pair cut](N7_CENTRAL_PAIR_CUT.md) gives DGO<0.
The [central area-orientation lemma](N7_CENTRAL_AREA_ORIENTATION.md)
excludes AGT>0,DGT>0 for T=O,P.

The weak roots CA: ac>=bh and CB: ac<=bh, with their proved boxes
from [N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md), cover equality
and both strict alternatives. No further reflection is used.

**Proposition.** No such configuration has

    COP>0, EOP>0, FOP>0.                            (1)

Here and in the tables XYZ denotes a signed determinant when used in
a sign test; unsigned scalar area variables are explicitly positive.
For T=O and T=P the actual determinant identity is

    (-HOP) CFT = FHT COP + HCT FOP.                 (2)

The HCEF inward tests give FHT,HCT>0, so (1),(2) force CFO,CFP>0.
Consequently O,P are strictly inside actual HCF. Its two-occupant
lower cost gives HCF>=T0=13857/20000. Since

    c-HCF=h(c-f)>=0,

we may impose c>=T0. The accepted occupied-HCF theorem
[N7_CENTRAL_COMPLETION_UPPER_FAN_CAP.md](N7_CENTRAL_COMPLETION_UPPER_FAN_CAP.md)
also gives f>617/1000 and the following actual area caps:

| Root | AEF upper bound | BEF upper bound |
| --- | --- | --- |
| CA | 153747149/223000000 | 151579/223000 |
| CB | 303248649/438500000 | 585361/877000 |

All four bounds are below T0; hence both actual AEF and BEF have
capacity one. Weak f>=617/1000 suffices for all arithmetic.
Conditional HCE occupancy similarly gives h>=T0 through
h-HCE=c(h-e)>=0. Every such conditional use is checked from its
three actual inward tests at each named point.

## 2. Exact initial boxes and exhaustive sign splits

Put ell=7347/69700 and h0=4s/(1-ell). The coordinate indices in
every printed table are

    a b c d e f g h z x y u v.

The initial proved root bounds, before the preceding conditional
floors are imposed, are as follows. The root upper bounds agree
except where a cell is explicitly shown.

| Coordinate | CA lower | CB lower | Upper |
| --- | --- | --- | --- |
| a | 139/1000 | 122/1000 | 685/1000 |
| b | 108/1000 | 123/1000 | 535/907 |
| c | 541/1000 | 541/1000 | 883/1000 |
| d | 120/1000 | 122/1000 | 705/1000 |
| e | h0 | h0 | 907/1000 |
| f | 108/1000 | 123/1000 | 883/1000 |
| g | 118/1000 | 123/1000 | 685/1000 |
| h | 613/1000 | 613/1000 | 1 |
| z | 139/1000 | 134/1000 | CA:773/1000; CB:775/1000 |
| x | 108/1000 | ell | 883/1000 |
| y | 120/1000 | 122/1000 | 907/1000 |
| u | 108/1000 | ell | 883/1000 |
| v | 120/1000 | 122/1000 | 907/1000 |

DGO<0 leaves AGO free. Excluding AGP>0,DGP>0 leaves exactly
these six words of (AGO,AGP,DGP):

    ---, --+, -+-, +--, +-+, ++-.                   (3)

For each root and each word, the linked index prints all further
sign paths. Every internal node splits one distinct actual triangle
into its positive and negative cases. Its determinant cannot vanish
by clearance. Both children are present; each terminal path appears
exactly once and no terminal path extends another. Thus the 31
printed leaves cover (1) in both weak roots. No coordinate split is
used.

A stage's `assumptions` records which path signs were used in that
stage. All are among that leaf's stated signs. Sign deductions are
replayed before any scalar or coordinate data are used. Numeric
capacity deductions refer to a printed immutable upper bound in a
strictly earlier stage.

## 3. Scalar premises and geometric sources

The literal sign, occupancy, scalar and polynomial conventions are
those proved in Sections 3--6 of
[N7_CENTRAL_COMPLETION_E_ONLY_EXCLUSION.md](N7_CENTRAL_COMPLETION_E_ONLY_EXCLUSION.md)
and in [N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md). Those general
arithmetic rules do not require the E-only word. In particular,
positive signed determinants are expanded from the actual coordinates;
all occupancy, fan, convexity, containment and diagonal-straddling
hypotheses are checked as actual edge signs.

For zero, one, two and three named actual interior points, the weak
triangle lower costs used are s,3s,(149/20)s,(4427/500)s. Initial
upper bounds are a named proved cap, an actual containing triangle,
the unit-square bound one, or a complete printed endpoint evaluation
of the separately affine actual determinant on the current box.
All scalar updates cite immutable earlier bound versions and use the
isolation rules of [SCALAR_AREA_INTERVALS.md](SCALAR_AREA_INTERVALS.md).
All product and four-product equalities are independently expanded.

The new HCF2-AEF-cap1 and HCF2-BEF-cap1 sources are precisely the
occupied-HCF consequences in Section 1. A CEF2 source requires both
O,P strictly inside actual CEF. The broader AE-transfer implication,
when present, additionally requires AEG<0,COP<0,EOP>0 and is proved
in [N7_CENTRAL_COMPLETION_CEF2_TRANSFER.md](N7_CENTRAL_COMPLETION_CEF2_TRANSFER.md).
Any other implication specific to the E-only word is rejected here.

A retained distributed-triple row checks all thirteen positive tests
of the template in Section 6 below, with A,B,C replaced by its actual
outer vertices and X,Y,Z by its stated ordering of G,O,P. It uses
exactly the proved common-setup inequalities

    ABC-ABZ >= (3927/500)s,
    ABC-ACX >= (3927/500)s,
    ABC-BCY >= (3927/500)s,
    BYZ+AZX+CYX >= (2427/500)s,
    YZX <= (8/5)s.

These are the distributed-mesh calculation of
[TYPE_II_133_TRIANGULAR_RIGHT.md](TYPE_II_133_TRIANGULAR_RIGHT.md),
Section 2, also stated in N7_ONE_LOWER_SETUP.md.

## 4. Natural contact caps and support factors

Every additional natural cap is the following literal identity
K-XYZ=R>=0. Contact orders make every displayed remainder
nonnegative. The reader expands all 27 identities.

| XYZ | K | R |
| --- | --- | --- |
| ABC | a | a(1+b-c) |
| ABH | b | b(1+a-h) |
| ACH | h-a | (h-a)(1-c) |
| BCH | c-b | (c-b)(1-h) |
| ABE | e | (e-a)(1-b) |
| ABF | f | (f-b)(1-a) |
| ACE | e | (e-a)(1-c) |
| ACF | c | a(c-f) |
| BCF | c-b | 0 |
| BCD | d | d(1+b-c) |
| CDE | 1-c | (1-c)(1+d-e) |
| CDH | h | c(h-d) |
| DEF | 1-f | (1-f)(1+d-e) |
| CEH | h | c(h-e) |
| CFH | c | h(c-f) |
| CEF | 1-f | (1-e)(c-f) |
| EFH | 1-e | (h-e)(1-f) |
| AEF | 1-a | f(e-a) |
| BEF | 1-b | e(f-b) |
| CDF | 1-f | (c-f)(1-d) |
| BEH | h | b(h-e) |
| AFH | f | f(1+a-h) |
| BFH | f | (1-h)(f-b) |
| ADH | h-a | 0 |
| AEH | h-a | 0 |
| BDE | e-d | b(e-d) |
| DEH | e-d | 0 |

A support relation supplies X Y>=q(X-Z), with positive actual
unsigned areas X,Y,Z and the stated rational q. If a displayed
paired factor X has natural cap K, then

    K Y-q(X-Z)>=0.                                (4)

Interchanging X,Y is permitted when the chosen paired area has
its own displayed cap. These are the SUPPORT sources.

For a QAREA source, the convex actual quadrilateral ABCD has

    X=ABD, Y=ABC, Z=ACD, V=BCD,
    Q=X+V=Y+Z,
    XY-ZV=(X-Z)Q.                                 (5)

Let the four printed immutable area floors be lX,lY,lZ,lV. Put

    L=min(lX*lY,lZ*lV),
    q0=0,449/1000,8s,93/91
       for respectively zero,one,two,three named occupants,
    q1=max(q0,lY+lZ,lX+lV).

The actual occupied-quadrilateral cost gives Q>=q0. Hence, when
X-Z>0, (5) gives XY>=L+q1(X-Z). When X-Z<=0, XY>=L and q1>=0
give the same inequality. Replacing the chosen paired area by its
natural cap gives K Y-L-q1(X-Z)>=0. Every floor, occupancy and
polynomial in this source is printed and checked.

Some such polynomials contain one coordinate square. On [l,r],

    t^2 <= (l+r)t-lr,
    t^2 >= 2mt-m^2,  m=(l+r)/2.

A positive square coefficient uses the secant; a negative one uses
the tangent. After deleting that square, all remaining coordinate
factors are nonnegative. The resulting printed polynomial is an
upper bound on the proved nonnegative polynomial, so it too is
nonnegative. Every endpoint is the current inherited box endpoint.

The shared central-strip factors of ONE_LOWER_POINT.md also give,
with W=3hc-ac-bh-ab,

    h(h-a)(c-b)-sW>=0,
    c(c-b)(h-a)-sW>=0.

A `central_secant` source replaces h^2 or c^2 in these expressions
by its secant on the printed current interval. Its multiplier c-b
or h-a is nonnegative. Thus the result is again a nonnegative
polynomial. No optimized scalar assertion is imported.

## 5. Coordinate deductions and terminal polynomial sums

Every stage starts with its proved root box or its predecessor's
entire final box, intersected with just the conditional floors of
Section 1. All thirteen endpoints are printed. For each separately
affine physical factor p>=0 used to narrow a coordinate t, all
distinct endpoint lines A t+B obtained by placing the other variables
at their current endpoints are printed. Their maximum is an upper
bound for p. The necessary condition max(A t+B)>=0 retains exactly
the printed interval hull; hence its intersection with the old
interval is valid. An empty intersection is a terminal contradiction.
No discarded attempted coordinate refinement is used as a premise.

A scalar terminal prints a lower bound greater than an upper bound
for the same actual area. A polynomial terminal uses the printed
nonnegative physical factors and the normalized box factors

    t_i=(q_i-l_i)/(r_i-l_i),  1-t_i.

The endpoint factors used in the tables are the unnormalized
nonnegative factors q_i-l_i and r_i-q_i. Translation uses the
normalized variables t_i above. The argument gives a positive integer
combination of products of total degree
at most three. The entire translated polynomial, its rational
coefficients, and its upper bound are printed. On the normalized
cube each nonconstant monomial lies in [0,1]; therefore

    p <= constant + sum(all positive nonconstant coefficients).

The displayed value is strictly negative in each such terminal,
contradicting p>=0. The reader expands every product and compares
every rational coefficient. No solver output is a premise of this
literal argument.

## 6. Geometry terminals

For three distinct points X,Y,Z inside a positive actual triangle
ABC, the distributed-triple classification permits an ordering of
X,Y,Z with all thirteen positive tests

    ABZ, BCX, CAY, AZY, BXZ, CYX, ZXY,
    AZX, BXY, CYZ, AXY, BYZ, CZX.                    (6)

The clustered-triple exclusion of
[CLUSTERED_TRIANGLE.md](CLUSTERED_TRIANGLE.md), at the present clearance
threshold and outer area at most one, makes every such triple
distributed. The common setup then proves this six-order classification
from actual triangle containments. Each geometry terminal prints the three
points, its positive outer triangle, all nine inward tests, and one
strictly negative test from (6) for each of the six orderings. Its
six-row table excludes every ordering, giving a contradiction.
This is an exhaustive finite obstruction, not a claim about a
relaxed area model.

## 7. Verification status

The author source-complete reader is
[N7_CENTRAL_COMPLETION_CEF_check.py](N7_CENTRAL_COMPLETION_CEF_check.py).
It reads the literal Markdown tables and established hand arithmetic
modules only. It checks complete sign-split coverage, source geometry,
all immutable scalar dependencies, box inheritance, every coordinate
endpoint line, and every terminal coefficient or six-row obstruction.
The complete author replay passes all 31 leaves: 234 stages, 7,968
sign deductions, 5,287 initial scalar bounds, 14,366 initial endpoint
values, 2,986 relations, 14,313 immutable scalar updates, 2,808 physical
factors, 5,142 coordinate updates with 52,331 endpoint lines, 2,302
positive polynomial products, and 60 mesh-order obstructions.
The separate independent reader
[audit_n7_cef_completion.py](audit_n7_cef_completion.py) imports no
author or discovery code. Its fresh actual-coordinate and Fraction
arithmetic reconstructs every sign, source identity, immutable bound,
inherited box, endpoint line, translated coefficient and mesh
obstruction, and independently checks the complete binary cover.
It also expands all 27 natural-cap identities and both instances of
(2). Its complete replay agrees with every count above and the
indexed totals. The independent geometric review accepts the actual
containments, the occupied-HCF capacity premises, the support and
QAREA inequalities, and the secant/tangent directions.

[audit_n7_cef_completion_mutations.py](audit_n7_cef_completion_mutations.py)
rejects 26 deliberate corruptions, including a future capacity or
scalar premise, an out-of-scope sign, a changed natural cap or QAREA
floor, rate or constant, an omitted endpoint line, a missing mesh
permutation, a changed terminal coefficient, and an omitted or
duplicated sign leaf.

This acceptance excludes CEF in both central roots. C, CE and EF
and both central parent roots remain open.
