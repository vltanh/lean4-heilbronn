# Seven contacts: the first upper point lies above DG

This note proves a complete further orientation reduction in both central
lower-cell roots of N7_ONE_LOWER_SETUP.md. It uses the accepted
N7_CENTRAL_AREA_ORIENTATION.md and a short scalar contradiction; there
is no new polynomial table or interval-search premise. The remaining
central roots are not asserted complete.

All areas are doubled. Put

    s=93/1000, K=149/20, T0=Ks=13857/20000.

Use the actual contacts A=(0,a),B=(b,0),C=(c,0),D=(1,d),E=(1,e),
F=(f,1),H=(0,h), with the normalization of N7_ONE_LOWER_SETUP.md.
The actual point G=(g,z) is central in HABC, so ACG,HBG>0.
The two other points O=(x,y),P=(u,v) lie inside HCEF.
All three free points are inside the actual heptagon ABCDEFH.
Every unsigned actual triangle area is at least s. Permute O,P so HOP<0.

**Theorem.** In this normalization,

    DGO<0.                                             (1)

Combined with N7_CENTRAL_AREA_ORIENTATION.md, this leaves six possible
words for (AGO,DGO,AGP,DGP): DGO is negative, AGO has either sign,
and (AGP,DGP) is one of (--),(-+),(+-). No additional physical
reflection is used.

## 1. Three uniform capacity-one triangles

The common upper and lower bounds of the CA and CB boxes give

    c>=541/1000, d<=705/1000,
    g>=118/1000, z<=775/1000.

The actual triangle CDG has positive orientation because CD is a
boundary edge of the contact heptagon. Its area satisfies

    [CDG]=d(c-g)+(1-c)z
         <=(705/1000)(c-118/1000)+(1-c)(775/1000)
         =69181/100000-(7/100)c
         <=32697/50000<T0.                            (2)

For the first substitution, first replace g by its lower bound;
then c-118/1000>0 justifies replacing d by its upper bound.
The factor 1-c is positive. The last expression decreases with c,
justifying the displayed lower bound for c. The exact final gap is

    T0-32697/50000=3891/100000>0.

The two-interior-point triangle cost exceeds Ks=T0, so CDG can contain
at most one further actual point.

Two further actual triangles have capacity one, irrespective of their
orientation. These bounds will also be available in the remaining
central cases. The common CA/CB bounds give

    a>=.122, a<=.685, b>=.108, d>=.120, d<=.705,
    g<=.685, z>=.134, z<=.775, 0<d<e<=h<=1.

First,

    [ADG]=z-a(1-g)-dg<=.775-.120=131/200,
    -[ADG]=a(1-g)+dg-z<=.705-.134=571/1000,

using 0<=g<=1. Thus |[ADG]|<=131/200<T0, with exact gap
757/20000.

For the other triangle, put r=d/h in (0,1). The central sign HBG>0
gives [HBG]>=s, and the exact identity is

    [BDG]=(1-r)(1-b)z+r(z-[HBG]).

Both coefficients are nonnegative and sum to one. Since

    (1-b)z<=(1-.108)*.775=6913/10000,
    z-[HBG]<=.775-s=341/500,

we obtain [BDG]<=6913/10000. In the other direction,

    -[BDG]=d(g-b)-(1-b)z
          <=d*max(0,g-b)
          <=.705*(.685-.108)=81357/200000.

Consequently |[BDG]|<=6913/10000<T0; the exact gap is
31/20000. Both ADG and BDG therefore contain at most one further
actual point. Each decimal in these calculations is an exact rational
from a proved common contact box.

Two signs are common to either upper point X=O or X=P:

    CGX<0,       HGX>0.                               (3)

Here is a direct verification. The chord AC is nonnegative on HCEF,
with a strictly positive value at H,E,F; the chord HB is likewise
nonnegative there, with a positive value at C,E,F. Thus [ACX],[HBX]>0.
The HC edge tests give
CHX<0 and CGH<0. The Pluecker identity

    [CAG][CHX]-[CAH][CGX]+[CAX][CGH]=0

has positive first and third summands and CAH<0, proving CGX<0.
Similarly

    [HBC][HGX]-[HBG][HCX]+[HBX][HCG]=0

has negative second and third summands and HBC>0, proving HGX>0.
In particular GHO<0. All zero cases are excluded by actual clearance.

## 2. Consequences of the contrary sign DGO>0

Suppose DGO>0. The three inward tests CDO,DGO,GCO are positive,
the last by (3), so O lies inside CDG.
The theorem of N7_CENTRAL_AREA_ORIENTATION.md forces AGO<0.
By (2), P cannot also lie in CDG. Since CDP,GCP>0, this gives

    DGP<0.                                           (4)

The following two Pluecker identities then force the indicated signs:

    [GCD][GOP]-[GCO][GDP]+[GCP][GDO]=0  => GOP>0,
    [OAG][OHP]-[OAH][OGP]+[OAP][OGH]=0  => AOP>0.      (5)

For the first identity, its second and third summands are negative.
For the second, AGO<0,HOP<0,AHO<0,GOP>0,GHO<0 show that the first
and second summands are negative, while OGH<0; therefore OAP<0,
equivalently AOP>0. These sign implications use no metric relaxation.

The central point G lies inside BCH: its inward tests BCG,CHG,HBG
are positive. The affine expression [DHX] is positive at B,C and
zero at H, so DHG>0. Since O is inside CDG, the same affine expression
is nonnegative at its vertices, and positive at C,G; hence DHO>0.
Finally

    [HCD][HOP]-[HCO][HDP]+[HCP][HDO]=0

has negative first and third summands. It follows that HDP<0,
equivalently DHP>0.

We have proved the two strict actual containments

    G,P lie inside HAO,
    O,P lie inside CDH.                              (6)

For HAO the HA edge tests are positive at G,P, its AO edge tests
are AOG=-AGO>0 and AOP>0, and its OH edge tests are
OHG=-GHO>0 and OHP=-HOP>0. For CDH the CD and HC edge tests are
already positive at O,P, and DHO,DHP>0 were just proved.
Both outer triangles have positive orientation.

Therefore the actual triangle-occupancy theorem gives

    (h-a)x=[HAO]>=T0,
    h(1-c)+cd=[CDH]>=T0.                             (7)

## 3. The two occupied triangles are incompatible

We prove the required scalar contradiction using only (7), the actual
clearances ABC,CDE,DEO>=s, and

    h<=1, e<=907/1000, c>=27/50, b>=s.               (8)

These bounds are weaker than the published central boxes. The last
one also follows directly from ABH=b(h-a)>=s and h-a<1.

First, d must exceed 43/100. Otherwise, using c>=27/50,

    [CDH]=h(1-c)+cd
         <=1-(1-d)c
         <=1-(57/100)(27/50)
         =3461/5000<T0.

The exact gap is T0-3461/5000=13/20000>0.

Consequently e-d<477/1000. The actual side-pair triangle DEO gives

    s<=(e-d)(1-x)<(477/1000)(1-x),

hence x<128/159. If a>=7/50, the other occupied triangle would give

    [HAO]=(h-a)x<(43/50)(128/159)<T0,

where

    T0-(43/50)(128/159)=1663/3180000>0.

Thus a<7/50.

Next c must be less than 3/4. If c>=3/4, the actual CDE clearance
implies

    e-d>=s/(1-c)>=4s,
    d<=907/1000-4s=107/200.

It would follow that

    [CDH]<=1-(1-d)c
          <=1-(93/200)(3/4)
          =521/800<T0,

with exact gap T0-521/800=26/625>0. This proves c<3/4.

Finally the actual triangle ABC contradicts these two bounds:

    s<=[ABC]=a(c-b)
       <(7/50)(3/4-s)
       =4599/50000<s,

since s-4599/50000=51/50000>0. This contradiction establishes (1).

## 4. A qualified inward-point version of the scalar step

The purely scalar argument of Section 3 also works if D=(r,d) has
r<=1 instead of r=1, provided y<=e for O=(x,y), e>d, and the
actual signed areas CDH,CDE,DEO are positive. Indeed

    [CDH]=h(r-c)+cd<=h(1-c)+cd,
    [CDE]=e(r-c)-d(1-c)<=(1-c)(e-d),
    [DEO]=(1-x)(e-d)-(1-r)(e-y)<=(1-x)(e-d).

Thus the hypotheses CDH,HAO>=T0, ABC,CDE,DEO>=s, and (8) still
imply the same contradiction. This is an optional local scalar lemma;
it does not assert the containments (6) or close an N6 family when
the point D is moved inward.

The independent [check_n7_central_pair_cut.js](check_n7_central_pair_cut.js)
checks all three physical cap formulas and their exact gaps, the
five sign-identity schemes and both occupied-triangle containments,
every scalar comparison, and the three inward-point identities.
It uses exact rational and polynomial arithmetic.
