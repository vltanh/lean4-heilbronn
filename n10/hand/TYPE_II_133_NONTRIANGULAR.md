# The nontriangular right hull in the final Type-II count

This note gives a complete geometric and rational-box model for the
nontriangular right-hull child of Type-II (1,3,3). Its three exhaustive
support cells are I,II,III. Each cell is excluded by its own fixed finite
appendix when that appendix is provided; the common reduction alone is
not an exclusion of the child.

All points are in the closed unit square. Write [UVW]=det(V-U,W-U),
and assume every actual unsigned doubled triangle area is at least
s=93/1000. Put K=933/125 and J=4427/500, rational lower bounds for
the two- and three-interior-point triangle constants. Finite decimals
are exact rationals.

## 1. The complete support-cell catalogue

The actual anchors are D=(0,1), E=(0,lambda), B=(b,0), C=(1,1), with
0<b<=1/2 and 0<lambda<1. There are three actual points X,Y,Z inside
DBC and three to the right of BC. The endpoint support construction
in THREE_CORNERS.md gives a virtual triangle BCO, O=(r0,rho),
containing the five right-side points including B,C. Its two actual
contacts H=(a,k), F=(c,d) are in the relative interiors of BO,CO.
Its doubled area and the physical contact formulas are

    Omega=r0-b-(1-b)rho<=1-b,
    H=(b+eta(r0-b), eta*rho),
    F=(r0+f(1-r0), rho+f(1-rho)),
    0<eta,f<1, beta=1-f.                               (1)

The fifth actual point is R=(r,j). In the normalized support triangle,
B,C,O become (0,0),(1,1),(0,1), with contacts (0,eta),(f,1). The
normalized threshold t=s/Omega exceeds s/(1-s)>1/11, since the actual
DEB clearance gives b>=s. The complete five-cell calculation in
THREE_CORNERS.md Section 2 excludes cells IV,V at this threshold.
Thus R is inside the actual quadrilateral B,H,F,C, and the complete
remaining possibilities are

| Cell | Actual triangles containing R | mB | mC | p | q |
|---|---|---:|---:|---:|---:|
| I | BHF and BHC | 3 | 1 | 3 | 1 |
| II | BHC and BFC | 1 | 1 | 3 | 3 |
| III | HFC and BFC | 1 | 3 | 1 | 3 |

The last four columns mean

    [BHF]>=mB*s, [HFC]>=mC*s,
    [BHC]>=p*s, [BFC]>=q*s.                            (2)

For instance a triangle containing R has area at least 3s by its three
fan clearances. No pentagonal right hull survives: it would place R
outside the side HF, in the excluded cell V. The six actual anchors
D,E,B,H,F,C are a strictly convex hexagon, in that order; in particular
b<a<c<=1 and 0<=k<d<1, with endpoint inequalities weakened to closed
ones when taking bounds. For completeness, the support formulas give
a<c and k<d. Since B is above the positive-slope line HF, that line
has negative intercept, and D,E are above it too. Both D,E are also on
the interior sides of BH and FC. Joining the left triangle DBE and
the right quadrilateral BHFC to DBC therefore gives precisely this
convex hexagon.

The anchor identities are

    [BHF]=eta*f*Omega, [HFC]=(1-eta)*beta*Omega,
    [BHC]=eta*Omega, [BFC]=beta*Omega.                  (3)

Cauchy--Schwarz gives sqrt(eta*f)+sqrt((1-eta)*beta)<=1.
In I or III, (2) therefore forces Omega>=Gamma2*s>K*s.
In II, the endpoint-five theorem in TYPE_II.md gives
Omega>=s/(3-2sqrt(2))>.542. The latter rational comparison follows
from sqrt(2)>141421/100000, hence 3-2sqrt(2)<8579/50000 and
(.542)(8579/50000)<s. Define

    omega0=K*s in I,III; omega0=.542 in II,
    A=1-mC*s/omega0.                                  (4)

Then b<1-omega0. All affine changes used to derive these bounds are
only for the five-point support theorem; the subsequent geometry and
polynomials use the original actual square coordinates.

## 2. Contact bounds and a bottom-coordinate bootstrap

The ordered physical contacts give

    [HFC]=(c-a)(1-k)-(d-k)(1-a)<=1-a,
    [BHF]=(a-b)(d-k)-k(c-a)<=(a-b)(d-k).

Thus a<=1-mC*s. We will improve this to a<.893 in cell II below.
The same identities imply

    c-a>=mC*s, d-k>=mB*s/(a-b).                        (5)

From (1),(3), eta<=1-mC*s/Omega and
rho<=1-Omega/(1-b). The product
(1-mC*s/Omega)(1-Omega/(1-b)) decreases with Omega on the present
range: its derivative is mC*s/Omega^2-1/(1-b)<0. It follows that

    k <= A(1-omega0/(1-b)),
    (1-b)k <= A(1-b-omega0).                           (6)

The derivative sign follows already from omega0^2>mC*s*(1-s), in
all three cells.

In particular

    bk <= A(1-sqrt(omega0))^2 < M,
    M=A(.167)^2 in I,III; M=A(.264)^2 in II.             (7)

Here .833^2<K*s and .736^2<.542. The maximum in (7) follows by
AM--GM, or by differentiating b-omega0*b/(1-b).
The actual EBH clearance gives

    s<=bk+lambda(a-b), lambda>(s-M)/(amax-b),
    b>=s/(1-lambda),                                  (8)

where initially amax=1-mC*s.

The following explicit bootstrap uses only positive denominators:

* In I, substituting b>=s in (8) gives lambda>.084, whence b>.101.
  Substituting this new b bound gives lambda>.085.
* In III, the same steps give lambda>.121, then b>.105, then
  lambda>.1238, then b>.106, then lambda>.124.
* In II, initially amax=.907. Equation (8) gives lambda>.043 and
  b>.097.

To improve a in II, recall the central endpoint-five inequality

    t<=G(min(eta,beta)), G(z)=z(1-z)/(2-z).              (9)

It follows directly from the central cell's two strips and HF
clearance, as proved in TYPE_II.md Section 1. Suppose a>=.893 and
put epsilon=.107, w0=1-b. Then (1),(3) give

    eta>=1-epsilon/w0, beta>=s/epsilon.

Both lower bounds exceed 3/4, since w0>=omega0=.542. The function G
decreases on [3/4,1]. If beta<=eta, (9) contradicts

    s/.903 > G(s/.107),

using b>.097. If eta<=beta, (9) instead implies

    s/w0 <= G(1-epsilon/w0)
      =epsilon(w0-epsilon)/(w0(w0+epsilon)),
    w0 >= epsilon(epsilon+s)/(epsilon-s)>1,

again impossible. Hence a<.893. Inserting this in (8) gives
lambda>.044.

The resulting global lower bounds and uniform a upper bounds are

| Cell | b0 | lambda lower | amax |
|---|---:|---:|---:|
| I | .101 | .085 | .907 |
| II | .097 | .044 | .893 |
| III | .106 | .124 | .721 |

Since b<1-omega0 and b(1-lambda)>=s, lambda<.696 in I,III and
lambda<.797 in II.

The physical c coordinate has a useful affine lower bound. By (3),
f>=mB*s/Omega>=mB*s/(r0-b), so

    c >= r0+mB*s(1-r0)/(r0-b)
      >= b+omega0+mB*s(1-b-omega0)/omega0.              (10)

The second replacement is valid because its first expression increases
with r0 on r0-b>=omega0: the derivative is
1-mB*s*(1-b)/(r0-b)^2>0. The sufficient rational comparison is
omega0^2>mB*s*(1-s), valid in each cell.

## 3. The central mesh, CE cases, and empty contact triangle

Use the distributed central mesh of TYPE_II_133_TRIANGULAR_RIGHT.md
Section 2: Y=(u,tY) has greatest ordinate; X=(x,v) is inside BCY and
Z=(z,w) inside DBY. Its thirteen positive areas, connector and ear
bounds, central-face bound, and coordinate consequences all remain
valid. In particular

    tY-v>=2s, tY-w>=2s,
    4s<=v,w<=1-3s, .730<tY<=1-s,
    3s+3bs<=x<=1-4s+3bs,
    3s+bs<=u<=1-4s+bs,
    s+3bs<=z<=1-6s+3bs.                                (11)

The C-rays occur in order CY,CZ,CX. Let E_i mean that the positive
EC signs are exactly the first i rays in this list. The four values
0,1,2,3 are exhaustive. In I,III, however,

    [EBC]=b+lambda(1-b)<.306+.694*.696<Js,

so E_0 is impossible. The complete conditional bounds are:

| Cell and CE case | b0 | lambda lower | lambda upper |
|---|---:|---:|---:|
| I or III, E1 | .21 | .559 | .696 |
| I, E2 | .101 | .085 | 1-Ks |
| I, E3 | .101 | .085 | 1-Js |
| III, E2 | .106 | .124 | 1-Ks |
| III, E3 | .106 | .124 | 1-Js |
| II, E0 | .344 | .674 | .797 |
| II, E1 | .164 | .435 | .797 |
| II, E2 | .097 | .044 | 1-Ks |
| II, E3 | .097 | .044 | 1-Js |

In E1, EBC contains X,Z; thus lambda>=(Ks-b)/(1-b). Replacing b by
1-omega0 gives lambda>.559 in I,III and lambda>.435 in II. Equation
(8) then gives b>.21 and b>.164, respectively. In E2, DEC contains
Y,Z and gives lambda<=1-Ks; in E3 it contains X,Y,Z and gives
lambda<=1-Js. In E0, available only in II, EBC contains X,Y,Z.
Combining its lower area Js with b(1-lambda)>=s gives

    b>=s/(1+s-Js)>.344,
    lambda>=(Js-.458)/.542>.674.

There are three useful exact capacity consequences. The actual convex
quadrilateral DEBH has doubled area

    W=a+b(k-lambda)<amax+M.

In I and II this is less than one, so DEBH has capacity two by
QUADRILATERAL_THREE.md. In III it is less than 8s, so DEBH has
capacity one by the two-interior-point quadrilateral bound. In I,
(5) gives d>3s/(.907-.101)>.346; the triangle DFC therefore has
area below .654<Ks, so it too has capacity one.

Finally EBH is empty in I,E2/E3, III,E2/E3, and II,E3. Indeed

    [EBH] < M+lambda_upper*(amax-b0)<3s                (12)

in each of those stated cases; the listed rational bounds verify the
strict comparisons directly. Every T in X,Y,Z,R is on the positive
sides of EB and BH. If EHT were negative, its three edge signs would
put T in EBH. Thus

    EHT>0 for T=X,Y,Z,R in the cases covered by (12).   (13)

## 4. Complete rational boxes for the actual coordinates

The following formulas give every bound, including the rounded table
below. Use the conditional b0 from Section 3, and put W0=1-b0,
P0=amax-b0. Define

    amin=b0+p*s, kmax=A(1-omega0/W0),
    cmin=b0+omega0+mB*s*(W0-omega0)/omega0,
    dmin=mB*s/P0, dmax=1-q*s/W0,
    jmin=s/P0, rmin0=b0+W0*jmin+s,
    rmax=1-s/(1-dmin).                                (14)

The contact bounds follow from (2),(5),(6),(10). In particular
[BFC]=c-b-(1-b)d>=q*s and c<=1 give d<=dmax. The actual BHR and
CBR clearances give j>=jmin and r>=rmin0; the latter bound increases
with b, since the derivative of b+(1-b)s/(amax-b)+s is positive.
The FCR clearance gives r<=rmax.

For the remaining R bounds, use the triangle containing R in the
cell catalogue. Each of its three barycentric coordinates is at least
s divided by that triangle's area. Thus in cell I,

    j<=d-s(2d-k)/[BHF]
      <=d-(s/P0)(2-kmax/d)
      <=jmax:=dmax-(s/P0)(2-kmax/dmax).                (15)

Here 2d-kmax>0, and the last expression increases with d: its
derivative is at least 1-s*kmax/(P0*dmin^2)>0. Each conditional box
satisfies these stated rational comparisons.

In II, using R inside BHC gives

    j<=1-s(2-k)/[BHC]<=1-2s/P0=:jmax.                 (16)

For the second comparison, write A0=a-b<=1-b; then
A0(2-k)>=2[A0-(1-b)k].

In III, R is inside HFC and the coordinate extrema of its vertices
are H on the left and C above. Its barycentric clearances give

    j<=jmax:=1-[s/(1-amin)]*[1+(1-kmax)/(1-dmin)],
    r>=rmin1:=amin+[s/(1-dmin)]*
                       [1+(cmin-amin)/(1-amin)].       (17)

For the r comparison, after bounding c from below and d from below,
the remaining function of a has derivative at least
1-s(1-cmin)/[(1-dmin)(1-amax)^2]>0. This rational inequality holds
in each of the three III boxes. Use rmin=max(rmin0,rmin1) in III and
rmin=rmin0 in the other cells.

The coordinate order in all fixed products is

    (b,lambda,a,k,c,d,x,v,u,tY,z,w,r,j).                (18)

For contact and R lower bounds in (14)--(17), round down to the nearest
multiple of .001; for upper bounds round up. For x,u,z do the same
with (11), using b0 below and 1-omega0 above. Leave b and lambda at
the exact conditional bounds; use v,w in [.372,.721], tY in [.730,.907].
These operations give exactly the following closed rational boxes:

Box I1:

```text
lo = (21/100, 559/1000, 489/1000, 0, 471/500, 2/5, 337/1000, 93/250, 149/500, 73/100, 151/1000, 93/250, 51/125, 133/1000)
hi = (38231/125000, 87/125, 907/1000, 53/500, 1, 883/1000, 357/500, 721/1000, 657/1000, 907/1000, 66/125, 721/1000, 169/200, 79/125)
```

Box I2:

```text
lo = (101/1000, 17/200, 19/50, 0, 877/1000, 173/500, 307/1000, 93/250, 36/125, 73/100, 121/1000, 93/250, 297/1000, 23/200)
hi = (38231/125000, 38231/125000, 907/1000, 99/500, 1, 897/1000, 357/500, 721/1000, 657/1000, 907/1000, 66/125, 721/1000, 429/500, 173/250)
```

Box I3:

```text
lo = (101/1000, 17/200, 19/50, 0, 877/1000, 173/500, 307/1000, 93/250, 36/125, 73/100, 121/1000, 93/250, 297/1000, 23/200)
hi = (38231/125000, 88289/500000, 907/1000, 99/500, 1, 897/1000, 357/500, 721/1000, 657/1000, 907/1000, 66/125, 721/1000, 429/500, 173/250)
```

Box II0:

```text
lo = (43/125, 337/500, 623/1000, 0, 181/200, 169/1000, 187/500, 93/250, 31/100, 73/100, 47/250, 93/250, 137/250, 169/1000)
hi = (229/500, 797/1000, 893/1000, 18/125, 1, 23/40, 189/250, 721/1000, 671/1000, 907/1000, 57/100, 721/1000, 889/1000, 331/500)
```

Box II1:

```text
lo = (41/250, 87/200, 443/1000, 0, 189/250, 127/1000, 81/250, 93/250, 147/500, 73/100, 69/500, 93/250, 363/1000, 127/1000)
hi = (229/500, 797/1000, 893/1000, 73/250, 1, 667/1000, 189/250, 721/1000, 671/1000, 907/1000, 57/100, 721/1000, 447/500, 149/200)
```

Box II2:

```text
lo = (97/1000, 11/250, 47/125, 0, 7/10, 29/250, 153/500, 93/250, 36/125, 73/100, 3/25, 93/250, 59/200, 29/250)
hi = (229/500, 38231/125000, 893/1000, 83/250, 1, 173/250, 189/250, 721/1000, 671/1000, 907/1000, 57/100, 721/1000, 179/200, 767/1000)
```

Box II3:

```text
lo = (97/1000, 11/250, 47/125, 0, 7/10, 29/250, 153/500, 93/250, 36/125, 73/100, 3/25, 93/250, 59/200, 29/250)
hi = (229/500, 88289/500000, 893/1000, 83/250, 1, 173/250, 189/250, 721/1000, 671/1000, 907/1000, 57/100, 721/1000, 179/200, 767/1000)
```

Box III1:

```text
lo = (21/100, 559/1000, 303/1000, 0, 229/250, 181/1000, 337/1000, 93/250, 149/500, 73/100, 151/1000, 93/250, 129/250, 181/1000)
hi = (38231/125000, 87/125, 721/1000, 73/1000, 1, 647/1000, 357/500, 721/1000, 657/1000, 907/1000, 66/125, 721/1000, 887/1000, 179/250)
```

Box III2:

```text
lo = (53/500, 31/250, 199/1000, 0, 413/500, 151/1000, 77/250, 93/250, 36/125, 73/100, 61/500, 93/250, 197/500, 151/1000)
hi = (38231/125000, 38231/125000, 721/1000, 67/500, 1, 86/125, 357/500, 721/1000, 657/1000, 907/1000, 66/125, 721/1000, 891/1000, 383/500)
```

Box III3:

```text
lo = (53/500, 31/250, 199/1000, 0, 413/500, 151/1000, 77/250, 93/250, 36/125, 73/100, 61/500, 93/250, 197/500, 151/1000)
hi = (38231/125000, 88289/500000, 721/1000, 67/500, 1, 86/125, 357/500, 721/1000, 657/1000, 907/1000, 66/125, 721/1000, 891/1000, 383/500)
```

All strict inequalities were only enlarged by closing these boxes.
The formulas (14)--(17) and their rounding rule are part of the proof;
no numerical optimization is involved in the boxes.

## 5. Four additional nonnegative scalar factors

Two factors use the actual right interior point R. In I or II, since
R is inside BHC,

    (a-b)(1-j)>=2s.                                   (19)

One direct proof combines (1-k)[CBR]+[HCR] to obtain
[BHC](1-j)>=(2-k)s, then uses a-b<=1-b as in (16).
In III, the barycentric height bound inside HFC gives instead

    (1-a)(1-j)>=2s.                                   (20)

Indeed `[HFC](1-j)>=(2-d-k)s`, and
`(1-a)(2-d-k)-2[HFC]=(1-a)(d-k)+2(1-c)(1-k)>=0`.

In I, the BFR and BHR clearances give

    d(r-b)>=2s:                                      (21)

here -[BFR]=d(r-b)-(c-b)j>=s and
(a-b)j>=s, while c-b>=a-b. In II or III, R inside BFC gives

    (1-d)(r-b)>=2s.                                  (22)

For this, combine (c-b)[CBR]+(1-b)[BFR] to obtain
[BFC](r-b)>=s[(c-b)+(1-b)]. Multiplying by 1-d yields (22), since
`(1-d)[(c-b)+(1-b)]-2[BFC]=(1-b-(c-b))(1+d)>=0`.

Subtract 2s from the appropriate left sides in (19)--(22) to define
factors `R_height` and `R_width`. A third nonnegative factor is

    contact_height=A(1-b-omega0)-(1-b)k,               (23)

from (6). The remaining factors used in fixed sums are coordinate
bounds, signed actual clearances, occupied-triangle and quadrilateral
bounds, and the uniform distributed-mesh inequalities.

For a cyclic actual quadrilateral containing n indicated actual points,
the doubled-area costs used are

| n | Cost |
|---:|---:|
| 1 | .449 |
| 2 | 8s |
| 3 | 93/91 |
| 4 | (J+3)s |
| 5 | (K+J)s |
| 6 | 2Js |

The first three are the bounds recalled in
TYPE_II_133_TRIANGULAR_RIGHT.md Section 5. For n>=4, any actual
diagonal splits the indicated points into two triangles, each of
capacity three. For four points the possibilities are 1+3 or 2+2,
giving at least min(3+J,2K)s=(3+J)s. Five points give 2+3, and six
points give 3+3. Thus all listed costs are valid.

## 6. Exhaustive DH/DF fan roots

All four points X,Y,Z,R lie inside the actual pentagon D,B,H,F,C.
Its fan at D consists of DBH,DHF,DFC. The positive signs among
DHY,DHX,DHZ are a prefix of this order; let its length be h0.
The positive DF signs are likewise a prefix of DFY,DFX,DFZ; let its
length be f0. Since [DHF]>0, 0<=f0<=h0<=3. The possible pairs of
DHR,DFR signs are (--),(+-),(++).

In I, R inside BHF forces DFR<0, leaving (--),(+-). In III, R inside
HFC forces DHR>0, leaving (+-),(++). In II all three remain. Combine
these pairs with the CE cases of Section 3. This gives exactly sixty
roots in I, sixty in III and 120 in II. A name such as I_E2H3F1mm
records its cell, CE prefix length, DH prefix length, DF prefix length,
and the two R signs, in that order. Every actual dividing determinant
is nonzero, so the roots have no missing boundary cases.

The fixed appendices use the complete common initial signs: all twenty
anchor triples in cyclic order D,E,B,H,F,C are positive; X,Y,Z lie in
DBC, R lies in its two cell triangles, and all four lie inside the
anchor hexagon; the thirteen central mesh signs hold; BTR<0, CTR>0
for T=X,Y,Z; and (13) holds in exactly its stated cases. Further signs
are obtained by the explicit determinant and convexity rules printed
with the fixed tables. The capacity exclusions from Section 3 are
available at every leaf.

This finishes the common model. A cell's complete fixed-table
exclusion is a separate theorem; the reduction itself retains all
three cells until those exclusions are supplied.

## 7. Fixed-table conventions and exact verification

The cell appendices print all initial root assumptions and every
subsequent signed-area deduction. Their common initial signs are exactly
those specified in Section 6. The rules are elementary and finite:

* `plu abcde UVW sign` uses
  `[abc][ade]-[abd][ace]+[abe][acd]=0`. If two summands have the same
  nonzero sign and the third has exactly one unknown determinant, its
  sign is forced so that the sum vanishes.
* `mesh ABC XYZ UVW sign` lists three known interior points of positive
  ABC. Enumerate their six possible distributed-mesh labelings, retain
  those consistent with the known signs, and infer a sign only if all
  retained labelings agree. The thirteen mesh signs are those in
  TYPE_II_133_TRIANGULAR_RIGHT.md, with the corresponding substitution.
* `line HULL PQ V sign` uses that a line through two interior points
  P,Q of a convex hull crosses its boundary twice. Thus its vertex
  signs have exactly two cyclic changes. Retain the finite sign strings
  consistent with known signs and infer an entry only if all agree.
  The allowed hull is the actual hexagon, or DBC for a central pair.
* `chord HULL PQ UV T` takes the endpoints of the two crossed hull
  edges in cyclic order. Their triangle or quadrilateral contains the
  chord and hence T=P or Q. Therefore its indicated edge UV has T on
  its positive side. All relevant signs and the two cut edges have
  already been determined.
* `via T ABC UV sign` states that T is known to be strictly inside
  actual triangle ABC, whose three vertices are on the indicated closed
  side of UV, with at least one strict vertex. Positive barycentric
  weights put T on that strict side. `hullvia` is the same inference
  for T's stated original containing triangle or the actual hexagon.

All labels are actual configuration points. No three are collinear.
Consequently every split into two actual determinant signs is exhaustive,
and every positive sign supplies an actual clearance at least s.

The geometric terminal rules are: `four ABC WXYZ` (four indicated
interior points); `nomesh ABC XYZ` (no compatible distributed labeling);
`cap HULL POINTS k` (more than the capacity k proved in Section 3);
`cluster ABC P FAN QR` (the forbidden clustered triple); or a directly
inconsistent determinant, Pluecker identity, or cyclic line sign string.
Every indicated containment is checked by every oriented edge sign.

For a box in the coordinate order (18), write its endpoints lo_i,hi_i.
The indexed nonnegative factors are

    L_(2i)=a_i-lo_i, L_(2i+1)=hi_i-a_i, 0<=i<14,
    L28=tY-v-2s, L29=tY-w-2s,
    L30=c-a-mC*s, L31=d-k-mB*s,
    L32=c-(1-mB*s/omega0)b-omega0+mB*s-mB*s/omega0,
    L33=d-k-lo_5, L34=a-b-p*s.                         (24)

Here lo_5 is the printed lower bound for d; by (5),(14) it also bounds
d-k from below. Thus every factor in (24) follows from the proved
box or Sections 2--4. Some earlier rows do not need L33,L34.

A factor `+UVW` is `[UVW]-s`; `-UVW` is `-[UVW]-s`. A suffix `o3`,
`o933/125`, `o4427/500` replaces the cost s by 3s,Ks,Js, respectively.
Its one,two or three indicated actual interior witnesses are printed.
A factor `quad_ABCD_I` is `[ABC]+[ACD]` minus the appropriate cost
from Section 5 for the indicated interior set I. All four triple
orientations of the quad and all interior edge signs must be positive.

For a positive distributed mesh with outer labels A,B,C and interior
labels X,Y,Z, the three additional factor types are

    ear_ABC_ABZ=[ABC]-[ABZ]-(3927/500)s,
    connect_ABC_XYZ=[AZY]+[BXZ]+[CYX]-(2427/500)s,
    center_ZXY=8s/5-[ZXY].                              (25)

The ear may be any of ABZ,BCX,CAY. Each appendix prints the outer and
interior mesh order for every such factor used. All thirteen mesh signs
and all interior edge signs are checked before using its bound. The
three other factor names `R_height`, `R_width`, `contact_height` are
exactly (19)--(23) minus their stated costs.

For every polynomial leaf the complete list of positive-integer
weights and products defines P. Its degree is at most three and it is
nonnegative under that leaf's hypotheses. Translate the coordinates
by the box lower bounds, a_i=lo_i+z_i, with 0<=z_i<=hi_i-lo_i=d_i.
If the exact expansion is `P(lo+z)=sum c_alpha*z^alpha`, then

    P <= U(P):=c_0 + sum_(alpha nonzero,c_alpha>0)
                            c_alpha*product_i d_i^alpha_i. (26)

Negative nonconstant monomials can be discarded, and each positive
monomial is bounded at the box widths. Every fixed table prints its
exact rational value of U(P), which is strictly negative. Thus the
leaf gives `0<=P<=U(P)<0`.

The companion checker reads the printed tables, reconstructs every
factor from the coordinates and these definitions, checks the exhaustive
root coverage and all geometric eligibility, and expands (26) with
Fractions. It uses no floating point arithmetic, solver, search,
or discovery data. Each cell appendix states its own complete terminal
counts and conclusion.
