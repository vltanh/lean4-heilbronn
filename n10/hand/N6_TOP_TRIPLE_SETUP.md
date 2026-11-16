# Geometry and exact inequalities for the two six-contact top-triple counts

This note supplies the continuous hypotheses, geometric inference rules,
coordinate bounds, and factor definitions for a fixed-table proof of the
two counts BTTT and ITTT. The separate assembly must supply a complete
closed tree before either count is declared excluded.

Put s=93/1000 and use the six distinct actual contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

The remaining actual points are

    P=(p,q), Q=(u,v), R=(r,w), S=(j,k).

Every unsigned actual doubled triangle area is at least s. The point P
is inside HABC in BTTT and inside HCEF in ITTT. The points Q,R,S are in
the top cap EF(1,1), on the side of EF facing the virtual corner (1,1).
Square-side positions are allowed; actual anchor chords cannot contain
another actual point. These are the two exhaustive top-triple counts
in N6_PLACEMENTS.md. No candidate configuration is used in this note.

Write [XYZ]=det(Y-X,Z-X), and set

    K=149/20 < 4+2sqrt(3),
    J=4427/500 < (11+3sqrt(5))/2,
    G=1457/250 < 3+2sqrt(2),
    alpha=1037/10000.

The last square-root comparison follows from sqrt(2)>707/500.
All decimals and all displayed table entries are exact rationals.

## 1. An exhaustive top-hull catalogue

Order Q,R,S by their rays from E, so EQR,EQS,ERS>0. These rays are
distinct because all triples are actual and s>0. Let the four-letter
word record the signs of FQR,FQS,FRS,QRS, in this order. All sixteen
words are initially allowed; no further symmetry is imposed.

Eight words are inconsistent with the five-point determinant identity

    [abc][ade]-[abd][ace]+[abe][acd]=0.

The following displayed witness abcde gives three nonzero summands of
the same sign, using only the top-cap tests and the three E-ray signs.

| Word | Witness abcde |
|---|---|
| --++ | REFQS |
| -+-- | FEQRS |
| -+-+ | FEQRS |
| -+++ | QEFRS |
| +--- | QEFRS |
| +-+- | FEQRS |
| +-++ | FEQRS |
| ++-- | REFQS |

The remaining eight words have the following hulls and positions.
Every assertion is given by all three or four oriented edge tests.

| Word | Actual top hull | Other point or points |
|---|---|---|
| ---- | EQF | R,S inside |
| ---+ | EQF | R,S inside |
| --+- | EQF | R,S inside |
| -++- | EQSF | R inside EQS only of the two contact ears |
| +--+ | EQRF | S in neither EQR nor FQR |
| ++-+ | EQRF | S inside FQR only of the two contact ears |
| +++- | EQSF | R inside both EQS and FQS |
| ++++ | EQRSF | all five points extreme |

Here an interior point of a contact quadrilateral lies in one or both
contact ears precisely when the corresponding edge signs say so.
The endpoint support construction keeps the prescribed endpoints E,F
and gives a support triangle inside the original top container. Its
other two contacts are the other two actual hull vertices.

For the word +++-, both opposite actual contact ears contain R, so
each has area at least 3s. Cauchy--Schwarz in the support normalization
gives support area at least 12s>1, impossible. For ++++, the convex
five-point endpoint theorem gives support area >11s>1, also impossible.
Thus precisely the first six rows require metric contradictions.

In each triangular row the top container contains an actual triangle
with two interior points, and so has area at least K s. In either
single-ear quadrilateral row, one opposite contact ear has area at
least 3s and the other at least s. The same support Cauchy inequality
gives the stronger exact cost (1+sqrt(3))^2 s>K s. Only the central
quadrilateral row +--+ needs the ordinary five-point endpoint cost:

    (1-e)(1-f) >= G s.

Consequently the top cost is K s in five rows and G s in the central
row. The weaker legacy value (29/5)s may be retained in a printed
identity, because 29/5<G.

## 2. Lower costs and the initial coordinate boxes

The actual ABC and ABH areas are a(c-b) and b(h-a). If
m=min(a,b), at least one is at most m(1-m). Since

    alpha(1-alpha)=9294631/100000000 < s,

both a,b exceed alpha; the projection conditions give e,f>=alpha too.
The same two anchor areas and Cauchy--Schwarz give hc>=4s.

In BTTT the five actual points H,A,B,C,P lie in the endpoint triangle
with actual endpoints H,C and virtual corner (0,0). Hence hc>=G s.
If P is in either actual contact ear ABC or ABH, ONE_LOWER_POINT.md
improves this to hc>=K s. It also proves that P cannot be in both ears.
The two ear signs are ACP and HBP: a negative sign means membership in
the corresponding ear. In the remaining central case both are positive.

In that central case ONE_LOWER_POINT.md gives, without a contact-order
choice,

    h(c-b)p >= s(c+b),
    c(h-a)q >= s(h+a),                                  (1)

and the two cubic inequalities

    h(h-a)(c-b) >= s(3hc-ac-bh-ab),
    c(h-a)(c-b) >= s(3hc-ac-bh-ab).                      (2)

The weak alternatives ac>=bh and ac<=bh are exhaustive, with equality
allowed in both. They respectively give

    ca(h-a)>=s(h+a),  or  hb(c-b)>=s(c+b).              (3)

No reflection of the larger configuration is made when using (3).

Every free point has x,y>=delta=s/(1-alpha): the actual AH and BC
clearances give (h-a)x,(c-b)y>=s, and the two spans are at most
1-alpha. For a lower P, the HC clearance gives

    p+q <= 1-s.                                       (4)

For example, hc(1-p-q)-(hc-hp-cq)=h(1-c)p+c(1-h)q>=0.
For central lower P, (1) also gives

    p,q >= delta_c=s(1+alpha)/(1-alpha).                (5)

For an upper central P, both coordinates are at most 1-s. Indeed

    (1-f)[CEP]+(1-c)[EFP]=[CEF](1-p),
    (1-e)(-[HFP])+(1-h)[EFP]=[HEF](1-q),

and [CEF]<=1-f,[HEF]<=1-e. The positive left-hand sides are at least
(1-f)s and (1-e)s respectively.

Choose printed weakened parameters rho and tau such that

    rho=4s in ITTT;
    rho in {(29/5)s,Ks} in BTTT, with Ks used only in a proved ear;
    tau in {(29/5)s,Ks}, with Ks used only in a proved stronger top row.

The legacy box, called version 1, is the following. Put
c0=1-tau/(1-s). In variable order a,b,c,e,f,h,p,q,u,v,r,w,j,k,

    a,b,e,f in [alpha,c0],  c,h in [rho,1],
    p,q in [delta,1-s],
    u,v,r,w,j,k in [alpha+s,1].                        (6)

The lower bound for each top coordinate follows from its cap clearance.
The p,q upper bound is (4) in BTTT and the central argument in ITTT.
The contact cap c0 follows from e,f>=s and (1-e)(1-f)>=tau.

Version 2 uses tau0=max(tau,Gs), c1=1-tau0/(1-alpha), and
rho0=max(rho,Gs) in BTTT or rho0=rho in ITTT. Replace (6) by

    a,b,e,f in [alpha,c1],
    c,h in [max(rho0,alpha+s/c1),1].                   (7)

The extra lower bounds follow from a(c-b),b(h-a)>=s, since
a,b<=c1 and a,b>=alpha. In BTTT retain lower bounds delta for p,q,
or use (5) when explicitly marked central; then (4) gives the upper
bound 1-s minus the other coordinate's chosen lower bound. In ITTT
retain [delta,1-s] for both coordinates.

For T among Q,R,S, let n be the number of the other top points known
inside EFT and put t_n=s,3s,Ks for n=0,1,2. The actual EFT area gives

    (1-e)(x_T-f)>=t_n, (1-f)(y_T-e)>=t_n.

Therefore both coordinates of T are at least alpha+t_n/(1-alpha).
If U is known inside some EFT, its positive barycentric weights at
F and E give

    1-x_U >= s/(1-e) >= delta,
    1-y_U >= s/(1-f) >= delta.                        (8)

For the first inequality, the weight at F is at least s/A(EFT), and
A(EFT)<=(1-e)(1-f); the second is the corresponding weight at E.
Apply (8) to every such U. These formulas specify every version-2 box.

### Exact interval refinements (version 3)

A version-3 box begins with its printed version-2 box and applies only
MULTIAFFINE_BOX_BOUNDS.md. Each step names a nonnegative factor F,
a target coordinate, and its old and new rational endpoints. For every
endpoint assignment to the other coordinates occurring in F, print the
affine line A*x+B obtained by exact substitution. Repeated identical
lines may be printed once. At a fixed target x, multiaffinity expresses
F as a convex combination of these lines. Therefore some line must be
nonnegative, and the possible target values lie in the hull of their
nonnegative subintervals of the old interval. The new interval contains
that hull, with all rounding directed outwards.

The transcript uses only the actual signed-area factors, the witnessed
triangle/quadrilateral costs, the side-order and endpoint factors, the
central-coordinate inequalities (1), the top cap factors below, and
the occupied-anchor affine caps below. Every factor is reconstructed
before its endpoint lines are checked. No coordinate case or numerical
feasibility result is assumed. An empty union of feasible subintervals
is itself a contradiction. Otherwise all final coefficient estimates
use a printed box containing the exact refined interval. A zero-width
coordinate may be enlarged within the initial box; this weakening is
also checked explicitly.

## 3. Exact geometric inference rules

The anchor order ABCEFH is strictly convex. The initial signs are all
positive anchor triples, the indicated region-edge tests, and the
three E-ray signs. For BTTT, every T above HC also gives HPT>0,CPT<0
by evaluating these affine determinants at the lower triangle's
vertices. For any P in the anchor hexagon and any top T,

    EPT<0, FPT>0.

For instance

    (1-f)[EPT]=(1-p)[EFT]-(1-x_T)[EFP],
    (1-e)[FPT]=(1-q)[FET]-(1-y_T)[FEP].

All displayed factors have the claimed signs, and the first positive
coefficient in each identity is strict because P lies in the hexagon's
interior. A transcript can obtain these signs from the following
ordinary incidence rules instead of introducing an extra axiom.

* `plu abcde XYZ e`: two nonzero summands in the five-point identity
  have the same sign; the remaining summand has exactly one unknown
  actual determinant. Its sign is forced to the displayed e.
* `line V1...Vm XY V e`: a line through two actual points has at most
  two changes of sign on a convex polygon. It has exactly two if one
  of the two points is known inside. Among all compatible cyclic sign
  strings, the displayed sign at V is common to all.
* `chord V1...Vm XY AB T`: the two edges crossed by XY determine the
  smaller convex hull of their endpoints. Any of X,Y known inside
  the original polygon lies inside that hull. The displayed inward
  edge sign ABT follows.
* `via T ABC IJ e`: strict containment T in ABC and weak same-side
  signs of its three vertices at IJ force e by positive barycentric
  weights. `hullvia` is the same argument for P's known anchor hull.
* `mesh ABC XYZ DEF e`: three actual interior points in an actual
  triangle cannot be clustered. The complete distributed mesh has,
  after a permutation of X,Y,Z, the thirteen positive tests

      ABZ BCX CAY AZY BXZ CYX ZXY AZX BXY CYZ AXY BYZ CZX.

  Enumerate its six possible labelings; retain those consistent with
  already known signs. A common sign is forced. No consistent
  labeling is a contradiction.

Every rule checks its actual vertices and all stated edge signs. The
geometric terminals are an inconsistent five-point identity, an
impossible cyclic line sign string, four points inside an actual
triangle, a clustered triple, or three points in an actual convex
quadrilateral contained in HABC or HCEF. The last two anchor hulls
have doubled area at most one, so QUADRILATERAL_THREE.md applies.
The exceptional top-hull and two-lower-ear terminals are exactly those
proved in Sections 1--2 above.

## 4. Local area factors

For the displayed box ell_i<=x_i<=u_i, let
L_(2i)=x_i-ell_i and L_(2i+1)=u_i-x_i. The further affine factors
ha,ea,he,fb,cf are h-a,e-a,h-e,f-b,c-f.

`T_ABC+` or `T_ABC-` is the known signed actual area minus s.
For n distinct printed actual interior witnesses, define

    C_ABC_n = A(ABC)-t_n,
    t_1=3s, t_2=Ks, t_3=Js.

For a positive convex actual quadrilateral and n interior witnesses,
`Q_ABCD_n` is its area minus the corresponding cost

    n:       1       2       3        4         5         6
    cost: (24/5)s   8s     93/91   (J+3)s    (J+K)s     2Js.

The first three are the established quadrilateral bounds. For n>=4,
an actual diagonal splits the occupants into triangles of capacity
three; the least possible sum of their costs gives the displayed
bound. Every witness lies strictly inside by all edge tests.

For a distributed mesh with positive outer ABC and ordering XYZ, let
the ears be ABZ,BCX,CAY and connectors AZY,BXZ,CYX. The factors
`M_ABC_XYZ_ear0`, `ear1`, `ear2` are the outer area minus the named
ear minus (J-1)s. The factor `M_ABC_XYZ_con` is the connector sum
minus (J-4)s. These are the established distributed-mesh bounds;
every containing actual triangle has area at most one.

For two actual interior points U,V separated by both diagonals of a
positive convex actual quadrilateral W0W1W2W3, the factors
`S_W0W1W2W3_UV_i+` and `i-`, i=0,1, are

    A(W0W1W2W3)-r s +/-([W_i U V]-[W_(i+2) U V]).

Use r=6 when the hull is inside HABC or HCEF and r=29/5 otherwise.
These are QUADRILATERAL_SPREAD.md with its applicable hypotheses.

The factors Vlow,Qlow,Qup are respectively

    hc-rho,
    hc-ab-((24/5) if BTTT else 2)s,
    1-(h-e)(c-f)-((24/5) if ITTT else 2)s.

TopTriple,Top_pair,Top5Strong subtract tau,3s,max(tau,Gs) from
(1-e)(1-f). Lower5Strong is hc-max(rho,Gs), used only in BTTT.
The factors TopContact_x are c1-x for x=a,b,e,f.

Order_ac,Order_bh and Central_ac,Central_bh are the corresponding
weak contact-order factors and the left sides minus right sides in
(3). Central_x,Central_y and Central_strip_h,Central_strip_c are
the analogous differences in (1)--(2).

For a lower P, low_P=(1-s)/rho-p-q is weaker than (4), and
Lower_simple_sum=1-s-p-q. For any free V above HC,
up_V=x_V+y_V-rho-s follows from hx_V+cy_V>=hc+s and h,c<=1.

Opposite known signs at A,H on a line UV give

    DX_UV=sign[AUV](x_U-x_V)-2s/(h_hi-a_lo)>=0.

Opposite signs at B,C similarly give

    DY_UV=sign[BUV](y_V-y_U)-2s/(c_hi-b_lo)>=0.

Both follow by subtracting the two actual determinants and dividing
by a positive upper bound on the corresponding contact span.

For a top T, print the actual occupants of EFT and use its cost t.
The factors top_x_T,top_y_T,top_px_T,top_py_T are

    x_T-f-t, y_T-e-t, (1-e)(x_T-f)-t, (1-f)(y_T-e)-t.

The factors top_gap_x_T and top_gap_y_T subtract t/(1-alpha)
instead of t in the first two expressions. They use e,f>=alpha.

### Occupied-anchor affine caps

For each actual anchor triangle, the following affine expressions are
upper bounds on its positive doubled area:

| Triangle | Upper bounds |
|---|---|
| ABC | a, c-b |
| ABE | e |
| ABF | f |
| ABH | b, h-a |
| ACE | e |
| ACF | c |
| ACH | h-a, c |
| AEF | 1-a |
| AEH | h-a |
| AFH | f, h-a |
| BCE | e, c-b |
| BCF | c-b |
| BCH | h, c-b |
| BEF | 1-b |
| BEH | h |
| BFH | f |
| CEF | 1-f |
| CEH | h |
| CFH | c |
| EFH | 1-e |

These follow by expanding the determinants and using the displayed
contact orders. For example,

    e-[ABE]=(e-a)(1-b),   f-[ABF]=(f-b)(1-a),
    e-[ACE]=(e-a)(1-c),   f-[BFH]=(f-b)(1-h),
    (1-a)-[AEF]=f(e-a),   (1-b)-[BEF]=e(f-b),
    h-[BEH]=b(h-e),       (1-f)-[CEF]=(1-e)(c-f),
    h-[CEH]=c(h-e),       c-[CFH]=h(c-f),
    (1-e)-[EFH]=(1-f)(h-e).

The remaining rows are products of a nonnegative span and a factor at
most one; AEH=h-a and BCF=c-b hold exactly. For n=0,1,2,3 printed
actual interior witnesses, let t_n=s,3s,Ks,Js. The factor
`ACAP_ABC_n_tag` is the selected affine upper bound minus t_n.
The tag is one of a,b,c,e,f,h,ha,cb,1a,1b,1e,1f and identifies the
corresponding table entry. For n=0 the ordinary actual triangle bound
supplies s; for n>0 all n witnesses have the three strict inward edge
tests. These affine consequences are particularly useful for exact
box refinement because they retain the contact-order information.

## 5. Support factors and squares

For a positive convex actual quadrilateral ABCD with one or two
printed interior points I, put X=[ABC],Y=[ABD],Z=[ACD],delta=Y-Z.
The factor `QS_ABCD_I_X` is L_X Y-rs delta; the Y version is
L_Y X-rs delta. Here r is the printed rational rate permitted by
QUADRILATERAL_SUPPORT.md for the indicated contact-ear occupants.
The complete rate table is that theorem's one- and two-point table;
the overlap of ABC and ABD permits the central rate 299/31 for two
points. A weaker printed rate is harmless. When delta<=0 the product
is already positive; when delta>0 the support theorem gives XY>=rs delta.

The triangle upper bounds used for L_X,L_Y are

    HCE:h, HCF:c, CEF:1-f, EFH:1-e,
    ABC:a, ABH:b, ACH:h-a, BCH:c-b,

with the universal bound1 for every other actual triangle. They follow
directly from the projection conditions and the square bounds.

For five positively convex actual points ABCDE, put
X=[ABE],Y=[ADE],Z=[ABD],delta=X-Z. If delta>0, the two endpoint
support triangle with base A,E has doubled area XY/delta. The convex
five-point endpoint theorem gives XY>11s delta. If delta<=0, both
products below are already positive. Thus the following factors are
nonnegative:

    F5_ABCDE_X    = Y-11s delta,
    F5_ABCDE_Y    = X-11s delta,
    F5_ABCDE_BX   = L_X Y-11s delta,
    F5_ABCDE_BY   = L_Y X-11s delta.

For Xbox or Ybox, replace L_X or L_Y by the smaller of1 and the exact
box-vertex maximum of that actual determinant. A determinant is
multiaffine, so its value on a box is a convex combination of those
finitely many corner values. This is an exact upper bound, not a
numerical maximization assertion.

### A scalar Pluecker factor

For a five-label word ABCDE, use the three terms

    [ABC][ADE] - [ABD][ACE] + [ABE][ACD] = 0.

When all six actual signs are known, exactly one term has its sign
opposite to the other two. In absolute areas the identity is
XY=UV+WZ. Choose either isolated factor as X. If the four source
factors have witnessed lower costs l1*s,l2*s,l3*s,l4*s and the paired
factor Y has upper bound M, then

    M*X-(l1*l2+l3*l4)*s^2 >= 0.                     (9)

The token `PB_ABCDE_X_l1xl2xl3xl4_M` records these data. Every l_i
is one of 1,3,K,J and is verified from the actual occupants of that
source triangle. The order of the four source factors is the order
in the displayed identity after removing the isolated term. Fractions
in a token use d as their denominator separator.

The cap M must be at least one explicitly valid upper bound for Y:
the smaller of 1 and its exact box-vertex maximum, or the maximum on
the printed box of an affine cap for an anchor triangle containing
all three vertices of Y. The latter containment is checked by actual
edge signs, allowing a vertex on the anchor triangle's boundary.
All affine maxima and all determinant box-corner values are rational
substitutions. A printed cap rounded upwards remains valid. Thus (9)
is a direct determinant consequence with no optimized numerical premise.

Finally SOSn is the square of the printed integer affine expression
in the shifted variables x_i-ell_i. It is nonnegative everywhere.
Multiplication by any listed nonnegative affine factor preserves
nonnegativity and keeps the degree at most three.

## 6. Meaning of a fixed polynomial leaf

Each leaf prints positive integer coefficients and products of the
preceding nonnegative factors, with all conditional actual witnesses.
Let W be their sum. Then W>=0. Substitute x=ell+z, with
0<=z_i<=u_i-ell_i, and expand W=sum c_beta z^beta. Discard all
negative nonconstant terms and replace every positive monomial by
its value at the width vector. This gives the exact upper bound

    W <= c_0 + sum_(beta!=0,c_beta>0) c_beta (u-ell)^beta.

A printed strictly negative rational value is a contradiction. The
fixed transcript checker reconstructs the factors from this note,
checks the witnesses and boxes, and expands the finite sums using
rational arithmetic. Discovery code and feasibility results are not
premises of the proof.
