# Type II: the mixed right-support pair I+II is excluded

This note excludes the entire I+II support-cell alternative of the
nontriangular right hull in Type-II count (1,2,4). The proof uses only
the eight actual points D,C,E,B,H,F,P,Q; the other two actual points
in DCB are not needed. The reflected support-cell pair II+III is a
distinct physical alternative and is not claimed closed here.

All areas are DOUBLED. Write

    s=93/1000,       t0=31/299,       K=4+2sqrt(3),
    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0).

As in TYPE_II_R4_NONTRIANGULAR.md, a virtual supporting apex
R=(r,rho) gives area Omega=r-b-(1-b)rho, with

    b>103/1000,       Omega<897/1000,
    t=s/Omega>t0.

Normalize B,C,R to A=(0,0), J=(1,1), O=(0,1). The actual contacts
are H=(0,h), F=(f,1), and beta=1-f. The remaining right points are
P=(x,x+z) in cell I and Q in cell II. Thus both are inside AJH,
P is inside AHF, and Q is inside AJF.

The map back to the physical square has determinant -Omega. In
particular it reverses oriented signs while multiplying unsigned
doubled areas by Omega. Explicitly, (x,x+z) maps to
(b+(1-b)x+(r-b)z, x+rho z).

## 1. Only the third mixed-pair line orientation remains

Orient P to Q and put e_V=det(P,Q,V). The segment PQ crosses AF,
so e_A<0<e_F. Since Q is inside AJH, e_H,e_J cannot both be negative.
The exact remaining alternatives are

| Case | Signs | Containment |
|---|---|---|
| 1 | e_H>0>e_J | Q is inside JFP |
| 2 | e_H<0<e_J | P is inside HFQ |
| 3 | e_H>0,e_J>0 | P is inside AHQ and Q is inside AJP |

Every stated containment is the three oriented edge tests, with no
zero signs because every actual triangle has positive area.

Case 1 is impossible at t>t0. The three triangles at Q inside JFP
give beta(1-y_P)>=3t, where y_P=x+z. The AHP and AFP clearances give

    y_P>=t(1+h)/(hf)>2t/f.

Consequently 1>t(2/f+3/beta). But f+beta=1 and

    2/f+3/beta-49/5
      =[49(f-22/49)^2+6/49]/(5f beta)>0,
    (49/5)t0-1=24/1495>0.

This is a contradiction.

For case 2 use the fixed threshold t0. The triangle AJH contains
both points, so h>=Kt0>3/4; also hf>=3t0>1/4. Therefore h>beta.
The containment P inside HFQ, together with Q's central inequalities,
gives exactly

    t0<=h beta(1-beta)/(2h+2beta-h beta).

For completeness, if Q=(u,u+v), the inequalities used are

    3t0<=h(1-beta)-(h-beta)u-(1-beta)v,
    u>=t0(2-beta)/beta,       v>=t0.

The anchor (1-h)beta>=t0 gives h<=1-t0/beta. The rational expression
above increases with h, so substitution and clearing positive
denominators would require

    F(beta):=beta^3-beta^2+(3t0+t0^2)beta-2t0^2<=0.

On the other hand beta>=t0/(1-h)>4t0>2/5. On beta>=2/5, F''>0,
and the exact values

    F'(2/5)=3992/2235025>0,
    F(2/5)=125338/11175125>0

show F(beta)>0. Thus case 2 is impossible as well.

We are in case 3. Its useful consequences are

    P is inside AHQ,       Q is inside AJP,
    h t<=K(P)(z-t),
    K(P)=h(1-x)-z>0.                                    (1)

The last inequality follows from the exact identity

    z e_H+(h-z)e_J=K(P)(z-v_Q),

where v_Q is Q's height above AJ, and z,h-z are positive. Both
e_H,e_J are at least t, and v_Q>=t.

## 2. Rational bounds for the physical contacts

The occupied triangles give h>=Kt, hf>=3t, and (1-h)beta>=t. Hence

    t<=h(1-h)/(3-2h),
    h^2-(1+2t)h+3t<=0.                                 (2)

The quadratic at the smaller threshold t0 is increasing for h>=3/4
and has value 1411/11960000>0 at h=167/200. Thus

    h<167/200=835/1000.                                 (3)

The function h(1-h)/(3-2h) decreases on h>=3/4. Use K>149/20 in
(2), substitute h>=(149/20)t, and cancel t>0. This gives

    t<=1780/16241,
    Omega>=1510413/1780000>848/1000,
    b<152/1000.                                        (4)

The last strict gap is
152/1000-[1-1510413/1780000]=973/1780000>0.

Write the physical coordinates as

    H=(a,k),       F=(c,d),       P=(p,y).

Since rho<=1-Omega/(1-b), the supporting construction and (3)--(4)
give

    rho<49/897,
    0<=k=h rho<8183/179400<46/1000,
    a=b+h(r-b)<10751/12500<861/1000,
    a>=b+h Omega>b+Ks>795/1000.                         (5)

The case-3 inequality (1), followed by AM--GM, gives

    hx<=h-t-2sqrt(ht),
    x<=1-t/h-2sqrt(t/h)<18/100.                         (6)

Indeed h<21/25 and

    t/h>775/6279>49/400>3/25.

The physical ordinate is y=x+rho z, with z<h, so (5)--(6) give

    y<18/100+k<226/1000.                               (7)

## 3. The noncentral point lies inside DEH

First the actual triangle EBH is empty. Its positive doubled area is
h delta, where delta=lambda(r-b)+b rho. The DBE clearance gives
lambda<=1-s/b. Maximizing first over r<=1 and then over
rho<=1-Omega/(1-b) yields

    delta<=1-s(1-b)/b-b Omega/(1-b)
          <=D0(b):=1-s(1-b)/b-(848/1000)b/(1-b).

D0 increases for b<1/5: its derivative exceeds
s/(1/5)^2-(848/1000)/(4/5)^2=1. Thus (3)--(4) imply

    area2(EBH)<(167/200)D0(152/1000)
              =522209/1900000
              =3s-7891/1900000<3s.                    (8)

P is on the positive sides of EB and BH, as p>b and P is inside
BCH. If EHP were negative, P would lie inside EBH, contrary to (8).
Thus its actual clearance is

    det(E,H,P)=ay-kp-lambda(a-p)>=s.                    (9)

We next prove det(D,H,P)<0. In normalized coordinates D is

    D'=(d1,-k0),
    d1=1+rho/Omega>=1,
    0<k0=(1-rho)/Omega-1<1/5.

The positivity of k0 follows from Omega<1-rho. Also P's normalized
ordinate is below h: the central CH clearance gives
x+z<=h-t+(1-h)x<h, using h>3/4, t>1/10, and x<18/100.
Therefore

    det(D,H,P)/Omega
      =(h+k0)x-d1(h-x-z)
      <=(h+c0)x+z-h,       c0=1+k0<6/5.

Substitute hx<=h-z-ht/(z-t) from (1), set u=z-t>0, and apply
AM--GM. The last expression is at most

    c0(1-t/h)-(c0/h)u-(h+c0)t/u
      <=c0(1-t/h)-2sqrt(c0(h+c0)t/h)<0.                 (10)

Here is an exact check of the final strict sign. Put xi=t/h, so
3/25<xi<1. After squaring the two positive sides, the desired
inequality is equivalent to

    c0[(1-xi)^2-4xi]<4t.

If the bracket is nonpositive this is immediate. Otherwise it is
at most 184/625, since 1-6xi+xi^2 decreases on xi<1. Hence the left
side is less than 1104/3125<2/5<4t. This proves (10).

The actual DHP clearance is consequently

    a(1-y)-(1-k)p>=s.                                  (11)

Together with the positive DEP sign, (9),(11) put P strictly inside
DEH. Adding (9) and (11) cancels k and y:

    (1-lambda)(a-p)>=2s.                               (12)

In particular p<a. The positive BHP clearance also gives

    y>=s/(a-b)>12/100.                                 (13)

For (13), p>b and k>=0 imply
(a-b)y>=s+k(p-b)>=s, while a-b<758/1000.

## 4. Two monotone eliminations of the support contacts

Put

    T=p-b-(1-b)y=area2(BCP),       W=a-b,
    U=a-p+(1-a)y.

Because Q lies inside BCP, T>=3s. The physical version of (1) is

    area2(BCH)s<=area2(CHP)(T-s).

For fixed a,b,p,y, the two areas on the left and right are W-(1-b)k
and U-(1-p)k. Their ratio has derivative

    d/dk [(U-(1-p)k)/(W-(1-b)k)]
      =-(1-a)T/[W-(1-b)k]^2<0.

Replacing k by zero therefore gives the necessary inequality

    U(T-s)>=(a-b)s.                                    (14)

The CHF anchor and the fact that P is in BHF give, respectively,

    (1-a)(1-d)-(1-k)(1-c)>=s,
    d(p-b)-(c-b)y>=s.

The first bounds d from above. After substitution in the second,
the resulting expression increases with c: its derivative is

    (1-k)(p-b)/(1-a)-y>0.

To check the strict sign, use p-b>(1-b)y and
(1-b)(1-k)>1-a, the latter being equivalent to area2(BCH)>0.
Thus replacing c by its upper bound 1 gives

    [1-s/(1-a)](p-b)-(1-b)y>=s,
    (T-s)(1-a)-s(p-b)>=0.                              (15)

The second line is the first after using T=p-b-(1-b)y and clearing
the positive denominator.

## 5. Six variables and their proved nonnegative factors

The remaining actual clearances and (12),(14),(15) give

    B0=b(1-lambda)-s>=0,
    E1=lambda(p-b)+by-s>=0,
    E2=ay-lambda(a-p)-s>=0,
    D1=(1-lambda)(a-p)-2s>=0,
    F1=(T-s)(1-a)-s(p-b)>=0,
    M=[a-p+(1-a)y](T-s)-(a-b)s>=0.                     (16)

For E2 we dropped the nonnegative term kp from (9). One further
useful quadratic follows from E1,E2 with positive weights:

    (a-p)(E1+s)+(p-b)(E2+s)=py(a-b),
    PY=py-s>=0.                                       (17)

The auxiliary polynomial

    Z=T-p+b+(1-b)y

is identically zero.

In the variable order (b,lambda,a,p,y,T), the proved rational box is

| Variable | Lower bound | Upper bound |
|---|---:|---:|
| b | 103/1000 | 152/1000 |
| lambda | 11/100 | 39/100 |
| a | 795/1000 | 861/1000 |
| p | 48/100 | 861/1000 |
| y | 12/100 | 226/1000 |
| T | 279/1000 | 572/1000 |

The earlier sections prove all but the following immediate details.
From EBH>=s and (5),
lambda>(s-(152/1000)(46/1000))/(758/1000)>11/100; the last
numerator gap is 657/250000. From b(1-lambda)>=s and b<152/1000,
lambda<59/152<39/100. Next T>=3s, (13), and b>103/1000 give
p=b+(1-b)y+T>48376/100000>48/100; its upper bound follows from p<a.
Finally the three actual fan triangles at P in BCH give
T<=area2(BCH)-2s<=a-b-2s<572/1000.

Let L0,L1 be b minus its lower bound and its upper bound minus b;
let L2,L3 be the analogous lambda facets, and so on through L10,L11
for T. The final three nonnegative affine factors are

    L12=a-b-(149/20)s,
    L13=a-p-2s,
    L14=a-b-T-2s.                                      (18)

For L12 use area2(BCH)>=Ks>(149/20)s. For L13 use (12) and
1-lambda<1. The argument just given for T proves L14>=0.

## 6. A fixed quartic contradiction

Define Phi as the sum of the following 86 displayed products with
their positive integer weights. Every factor is nonnegative by
(16)--(18) and the rational box; Z and -Z are both zero. Hence
Phi>=0. The table, including every weight, is fixed; no numerical
optimizer is part of the proof.

| Weight | Product |
|---:|---|
| 21 | `L0*L0*L2*L11` |
| 78 | `L0*L2*L2*L11` |
| 5 | `L0*L2*L2*L14` |
| 105 | `L0*L9*L11*L13` |
| 4 | `L2*L2*L2*L13` |
| 20 | `L2*L2*L4*L5` |
| 575 | `L2*L2*L13*L13` |
| 1187 | `L2*L8*L12*L13` |
| 319 | `L3*L5*L5*L8` |
| 186 | `L5*L5*L7*L8` |
| 169 | `B0` |
| 15 | `B0*L2` |
| 63 | `B0*L4` |
| 534 | `B0*L13` |
| 8 | `B0*L14` |
| 22 | `B0*L2*L7` |
| 79 | `B0*L2*L11` |
| 21 | `B0*L6*L7` |
| 630 | `B0*L6*L8` |
| 17 | `B0*L6*L11` |
| 258 | `B0*L7*L9` |
| 186 | `B0*L9*L14` |
| 22 | `E1*L3` |
| 394 | `E1*L7` |
| 239 | `E1*L11` |
| 172 | `E1*L13` |
| 137 | `E1*L14` |
| 26 | `E1*L1*L10` |
| 8 | `E1*L2*L14` |
| 13 | `E1*L3*L7` |
| 12 | `E1*L7*L7` |
| 2180 | `E1*L7*L13` |
| 658 | `E1*L11*L13` |
| 11 | `E1*L13*L13` |
| 628 | `E2*L1` |
| 274 | `E2*L3` |
| 104 | `E2*L6` |
| 286 | `E2*L10` |
| 347 | `E2*L12` |
| 657 | `E2*L1*L11` |
| 382 | `E2*L3*L7` |
| 20 | `E2*L3*L11` |
| 864 | `E2*L3*L13` |
| 21 | `E2*L4*L6` |
| 716 | `E2*L6*L10` |
| 178 | `D1*L2` |
| 1884 | `D1*L5` |
| 2558 | `D1*L13` |
| 2180 | `D1*L0*L6` |
| 2147 | `D1*L0*L9` |
| 6 | `D1*L2*L2` |
| 418 | `D1*L2*L7` |
| 12 | `D1*L2*L11` |
| 1417 | `D1*L2*L13` |
| 2228 | `D1*L5*L6` |
| 1374 | `D1*L5*L10` |
| 2204 | `D1*L6*L13` |
| 1374 | `D1*L10*L13` |
| 622 | `F1` |
| 1039 | `F1*L7` |
| 5654 | `F1*L13` |
| 8 | `F1*L2*L3` |
| 442 | `F1*L2*L8` |
| 1842 | `F1*L5*L8` |
| 2326 | `F1*L7*L8` |
| 97 | `F1*L9*L12` |
| 396 | `PY*L0` |
| 893 | `PY*L11` |
| 2420 | `PY*L13` |
| 14 | `PY*L0*L14` |
| 55 | `PY*L3*L4` |
| 111 | `PY*L4*L4` |
| 525 | `PY*L10*L12` |
| 226 | `M` |
| 432 | `M*L3` |
| 6437 | `M*L4` |
| 3578 | `M*L6` |
| 270 | `NZ` |
| 357 | `NZ*L3` |
| 778 | `NZ*L4` |
| 1074 | `NZ*L13` |
| 120 | `NZ*L3*L12` |
| 958 | `NZ*L3*L13` |
| 24 | `NZ*L6*L7` |
| 2180 | `NZ*L6*L13` |
| 79 | `Z*L2*L12` |

Here `NZ` denotes -Z.

To verify its strict negative upper bound, shift each variable by
its lower bound from the table in Section 5. Write these nonnegative
shifted variables as x0,...,x5, whose respective upper bounds are

    49/1000, 28/100, 66/1000, 381/1000, 106/1000, 293/1000.

Expand Phi as a rational polynomial sum c_e x^e. Each monomial is
nonnegative. Discard each nonconstant term with negative coefficient;
for every positive nonconstant term, replace x^e by the product of
the displayed coordinate upper bounds. Exact rational addition gives

    Phi<=-1330931547/10000000000000<0.                   (19)

The shifted expansion has 99 nonzero monomials, of which 43 have
positive nonconstant coefficients.

This contradicts Phi>=0. The complete expansion and the single upper
bound are reproduced by check_type_ii_r4_mixed_i.py using only Python
integer and Fraction arithmetic. Its inputs are the explicit factors,
box, and fixed integer table printed here; it performs no search.

The contradiction closes all I+II right-support configurations. The
case catalogue in Section 1 also applies after reflection to the
remaining II+III support pair, but its physical D/E geometry requires
a separate argument and is not claimed excluded by this note.
