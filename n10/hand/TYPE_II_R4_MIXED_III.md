# Type II: the final mixed right-support pair II+III is excluded

This note excludes the final nontriangular right-support alternative
in Type-II count (1,2,4). Together with TYPE_II_R4_CENTRAL.md and
TYPE_II_R4_MIXED_I.md, it closes every nontriangular right hull.
The already established triangular-right proof then closes the whole
count (1,2,4). The other Type-II occupancy rows are separate cases.

All areas are DOUBLED. Put

    s=93/1000,       t0=31/299,
    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0).

The right supporting triangle BCR has virtual apex R=(r,rho) and
area Omega=r-b-(1-b)rho. Its actual contacts are H on BR and F on CR.
In the normalization B,C,R to A=(0,0), J=(1,1), O=(0,1), write
H=(0,h), F=(f,1), beta=1-f. Now P is in cell III and Q is in cell II.

## 1. Reflection leaves a single pair-line orientation

Reflect the normalized coordinates by (x,y)->(1-y,1-x). The new
base endpoints are C,B, its lower contact is F=(0,beta), and its
upper contact is H=(1-h,1). Thus P becomes a cell-I point and Q
remains central. The complete mixed-pair catalogue and exclusions
in TYPE_II_R4_MIXED_I.md, Section 1 apply at t=s/Omega>t0.
Only case 3 remains.

Use primed coordinates in this reflected normalization, so

    P'=(x',x'+z),       eta=beta,
    F'=(0,eta),        H'=(1-h,1).

Unlike the unreflected normalization, the affine map from these
coordinates to the physical plane has positive determinant Omega.
Consequently the case-3 line signs for P to Q in physical coordinates
are

    det(P,Q,C)<0,
    det(P,Q,B)>0, det(P,Q,H)>0, det(P,Q,F)>0.             (1)

Its two containments and weighted inequality are

    P is inside CFQ,       Q is inside BCP,
    eta t<=[eta(1-x')-z](z-t).                          (2)

In particular the doubled areas CFQ and BCP are at least 3s.
The noncentral point P is also inside CHF, whose area is at least 3s.
Both P,Q lie inside BCF, whose area is at least Ks,
where K=4+2sqrt(3).

The parameter bounds from TYPE_II_R4_MIXED_I.md, Section 2 apply
with eta in place of h. They give

    3/4<eta<167/200,
    103/1000<b<152/1000,
    848/1000<Omega<897/1000,
    0<=rho<49/897<55/1000,
    x'<18/100,
    z>=3t,
    x'+z<eta.                                          (3)

The last strict inequality follows directly from the BFP
clearance eta(1-x')-z>=t, since eta>3/4, x'<18/100, and t>1/10.

## 2. The pair straddles DF in a fixed order

In reflected normalized coordinates D has the explicit location

    D'=(d1,-k0),
    d1=(1-rho)/Omega>1,
    k0=rho/Omega<1/5,
    d1+k0=1/Omega.                                     (4)

We first show det(D,F,P)>0. Its negative normalized determinant is

    -det(D',F',P')
      =(eta+k0)x'-d1(eta-x'-z)
      <=(eta+c0)x'+z-eta,       c0=1+k0<6/5.

The direction uses x'+z<eta and d1>1. Substitute (2) and apply
AM--GM, exactly as in TYPE_II_R4_MIXED_I.md, Section 3. The result is

    -det(D',F',P')
      <=c0(1-t/eta)-2sqrt(c0(eta+c0)t/eta)<0.            (5)

For an explicit sign check, t/eta>3/25 and t/eta<1; after squaring,
the desired strict inequality follows from

    c0[(1-t/eta)^2-4t/eta]
      <=(6/5)(184/625)<2/5<4t

when the bracket is positive, and is immediate otherwise. The
orientation-preserving affine map therefore gives

    det(D,F,P)>=s.                                     (6)

The central point Q has the opposite DF sign. If det(D,F,Q)>0,
then Q would lie inside DFC: its other two edge signs follow from
Q inside BCF and y_Q<1. Write Q'=(u',u'+v'). From (2), CFQ>=3s,
and the base BC clearance, we have

    eta u'>=3t,       v'>=t.

The assumed DF clearance is

    d1[eta-(u'+v')]-(eta+k0)u'>=t.

Use u'>=3t/eta and d1+k0=1/Omega. The resulting necessary inequality is

    d1 eta^2-t(d1+4)eta-3t/Omega>=0.                   (7)

Its left side increases with d1 and eta on the relevant ranges.
The d1 coefficient is eta(eta-t)>0. Its eta derivative is
d1(2eta-t)-4t>=2eta-5t>0, since eta>=Kt and d1>1.
Use d1<=1/Omega, eta<eta0=167/200, and t=s/Omega. The left side of
(7) is at most

    [eta0(eta0-4s)Omega-s(eta0+3)]/Omega^2.

The numerator increases with Omega, and at Omega=897/1000 it is

    -1974063/200000000<0.

This contradicts (7). Hence

    det(D,F,Q)<=-s.                                    (8)

By (6), P is inside DFC. Q is on the same sides of CF and CD as
that triangle but on the other side of DF. The segment PQ therefore
exits through the relative interior of DF. Its line puts D,F on
opposite sides. Since (1) puts F on its positive side, we obtain

    det(D,P,Q)<=-s.                                    (9)

This fixes every D/P/Q sign used below, without assuming a sign
at E.

## 3. A rational coordinate box

Write the physical coordinates as

    H=(a,k), F=(c,d), P=(p,y), Q=(u,v).

The following box will be used for exact polynomial bounds:

| Variable | Lower bound | Upper bound |
|---|---:|---:|
| b | 103/1000 | 152/1000 |
| lambda | 15/100 | 39/100 |
| a | 475/1000 | 685/1000 |
| k | 0 | 35/1000 |
| c | 951/1000 | 1 |
| d | 165/1000 | 296/1000 |
| p | 798/1000 | 889/1000 |
| y | 165/1000 | 6/10 |
| u | 33/100 | 666/1000 |
| v | 165/1000 | 555/1000 |

Here are complete derivations for the bounds not immediate from (3).
Because eta=1-f lies between 3/4 and 167/200,

    165/1000<f<1/4.

The anchors give hf>=t, and P inside CHF gives (1-h)eta>=3t.
Consequently

    h>4t,
    h<1-3t0/(167/200)<628/1000.

The last gap is 6231/12483250. The physical support formulas now give

    a=b+h(r-b)>b+h Omega>b+4s>475/1000,
    a<b+(628/1000)(1-b)<685/1000,
    k=h rho<(628/1000)(49/897)<35/1000,
    c=r+f(1-r)>=r>=b+Omega>951/1000,
    165/1000<d=f+eta rho<1/4+(167/200)(49/897)<296/1000.

The positive gaps in the upper bounds for a,k,d are, respectively,
57/125000, 623/897000, and 347/897000.

The actual EBH clearance is lambda(a-b)+bk>=s. Thus

    lambda>[s-(152/1000)(35/1000)]/(582/1000)>15/100.

The last numerator gap is 19/50000. The upper bound follows from
b(1-lambda)>=s, giving lambda<59/152<39/100.

To bound P, let xi=1-x'-z be its unreflected first coordinate.
The physical map gives

    p=r-(r-b)x'+(1-r)xi,
    y=1-x'-(1-rho)z.

Since xi>=0 and x'<18/100, we have
p>b+(82/100)Omega>798/1000, with gap 9/25000.
Also x'+z<eta gives y>xi>1-eta>165/1000.
The actual CFP clearance gives eta*x'>=t and hence x'>3/25; together with
z>=3t>3/10 and rho<55/1000, this yields y<6/10.

The CFP and CFQ clearances are

    (1-d)(1-p)-(1-c)(1-y)>=s,
    (1-d)(1-u)-(1-c)(1-v)>=3s.                          (10)

Since d>165/1000, they imply p<742/835<889/1000 and
u<556/835<666/1000. The respective final gaps are
63/167000 and 11/83500.

For Q, the original BH clearance gives its unreflected first coordinate
at least t/h>t0/(628/1000)>165/1000. Its physical ordinate v is at
least that coordinate. The final gap is 881/9388600.
The BCQ clearance u-b-(1-b)v>=s then gives

    u>103/1000+(848/1000)(165/1000)+s>33/100,
    v<(666/1000-103/1000-s)/(848/1000)<555/1000.

The final gaps are 37/6250 and 1/1325.

One additional affine inequality is useful. Because P is inside CFQ,
subtracting CFP from CFQ leaves the two actual triangles CPQ,FPQ.
Their total area is at least 2s. Thus

    (1-d)(p-u)-(1-c)(y-v)>=2s.

In the displayed box, 1-c<49/1000, |y-v|<435/1000, and
1-d<835/1000. Therefore

    p-u>19/100.                                        (11)

For the last comparison the exact numerator gap is
2s-(49/1000)(435/1000)-(835/1000)(19/100)=1207/200000>0.

## 4. Every polynomial factor has an established sign

For actual points X,Y,Z define the area factors

    +XYZ=det(X,Y,Z)-s,
    -XYZ=-det(X,Y,Z)-s.

The following factors are nonnegative throughout the branch:

    -BCQ, -CFP, -DFQ, -DPQ,
    +BHF, +HFP, +BPQ, +FPQ, +DFP, +DEB, +EBH.          (12)

Here -BCQ is the right-side occupancy, and -CFP,+HFP follow from
P inside CHF. The signs +BPQ,+FPQ are in (1). The D signs were proved
in (6),(8),(9). The remaining three anchor signs are positive from
the contact order, the positive b(1-lambda), and
lambda(a-b)+bk>0, respectively. Every strictly positive sign has
magnitude at least s because its triangle is actual.

One more nonnegative area factor, used below, is

    OCHF=det(C,H,F)-3s>=0,                              (13)

because P is inside CHF.

In the variable order (b,lambda,a,k,c,d,p,y,u,v), let L0,L1 be b
minus its lower box bound and its upper bound minus b. Continue in
this order through L18,L19 for v. Define the remaining affine factors
by

    L20=p-u-19/100,
    L21=1-s,
    L22=1-k-s,
    L23=1-d-s,
    L24=1-y-s,
    L25=1-v-s,
    L26=1-lambda-s.                                    (14)

L20 is nonnegative by (11). The others are the actual area clearances
-DCB,-DCH,-DCF,-DCP,-DCQ,+DEC, respectively. They are nonnegative
and agree with the coordinate formulas displayed in (14).

Only the sign of the actual triangle EPQ remains to be chosen in
the fixed polynomials. It is nonzero. The two cases below therefore
exhaust the branch.

## 5. The two fixed cubic contradictions

In each row let Phi be the sum of the displayed products with their
positive integer weights. All its factors are nonnegative by
(12)--(14), the box, and the stipulated EPQ sign. Thus Phi>=0.

### EPQ positive

| Weight | Product |
|---:|---|
| 1 | `L1*L10` |
| 5 | `L2*L5` |
| 15 | `L2*L20` |
| 2 | `L5*L10` |
| 6 | `L9*L14` |
| 7 | `L9*L19` |
| 4 | `L9*L25` |
| 20 | `L13*L18` |
| 16 | `L0*L14*L19` |
| 7 | `L0*L19*L23` |
| 1 | `-BCQ` |
| 17 | `-BCQ*L14` |
| 7 | `-BCQ*L23` |
| 1 | `-BCQ*L26` |
| 5 | `-CFP*L16` |
| 15 | `-CFP*L18` |
| 15 | `-DFQ*L15` |
| 1 | `-DPQ*L2` |
| 15 | `-DPQ*L10` |
| 1 | `+BHF` |
| 19 | `+FPQ` |
| 6 | `+DFP*L16` |
| 4 | `+DEB*L14` |
| 5 | `+DEB*L22` |
| 1 | `+DEB*L25` |
| 5 | `+EBH` |
| 17 | `+EPQ` |
| 1 | `OCHF` |

### EPQ negative

| Weight | Product |
|---:|---|
| 13 | `L1*L3` |
| 9 | `L1*L14` |
| 2 | `L5*L10` |
| 2 | `L6*L13` |
| 12 | `L13*L18` |
| 5 | `L1*L3*L22` |
| 14 | `L1*L19*L24` |
| 1 | `L1*L19*L25` |
| 1 | `L3*L20*L25` |
| 2 | `L3*L20*L26` |
| 8 | `-BCQ` |
| 15 | `-BCQ*L14` |
| 3 | `-CFP` |
| 3 | `-CFP*L1` |
| 3 | `-CFP*L4` |
| 13 | `-CFP*L18` |
| 11 | `-DPQ*L3` |
| 3 | `+BHF` |
| 3 | `+HFP` |
| 21 | `+BPQ` |
| 2 | `+BPQ*L25` |
| 13 | `+BPQ*L26` |
| 1 | `+FPQ*L18` |
| 3 | `+DFP*L1` |
| 3 | `+DFP*L4` |
| 12 | `+DFP*L18` |
| 3 | `+DEB` |
| 13 | `+DEB*L18` |
| 5 | `+DEB*L22` |
| 14 | `+DEB*L24` |
| 12 | `-EPQ` |
| 1 | `-EPQ*L25` |
| 2 | `-EPQ*L26` |

These are fixed tables, with 28 and 33 products respectively and
every weight at most 21. Shift each variable by its lower box bound.
All shifted coordinates are nonnegative and at most their box widths.
In the expanded polynomial, discard every nonconstant monomial with
negative coefficient, and bound each positive monomial by its coefficient
times the corresponding product of box widths. Exact rational addition
gives

| EPQ sign | Exact upper bound for Phi |
|---|---:|
| positive | -2041503/1000000000 |
| negative | -200391/200000000 |

Both bounds are strictly negative, contradicting Phi>=0. The standalone
check_type_ii_r4_mixed_iii.py reconstructs all actual determinants and
affine factors, expands the two fixed tables with Fraction arithmetic,
and verifies precisely these two bounds. It performs no numerical
optimization or search.

Both EPQ signs have now been excluded. Thus the entire II+III
right-support alternative is impossible. Together with the other
support-cell exclusions and the separate triangular-right proof,
this closes Type-II count (1,2,4).
