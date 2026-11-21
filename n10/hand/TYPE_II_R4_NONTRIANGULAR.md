# Type II: the remaining nontriangular right hull

This note gives the exact right-hull catalogue for the
nontriangular alternative of the Type-II count (1,2,4). In the pair
of central support cells it proves that both middle fans DHF and EHF
are empty, leaving only two outer fan counts. It does not exclude the
whole nontriangular branch or mark the parent count closed.

The subsequent TYPE_II_R4_CENTRAL.md excludes the entire II+II pair,
including both fan counts left here. The later TYPE_II_R4_MIXED_I.md
and TYPE_II_R4_MIXED_III.md close the two mixed pairs, and
TYPE_II_R4_COMPLETE.md assembles the complete count (1,2,4).

All areas are DOUBLED. Put

    s=93/1000, K=4+2sqrt(3), G=(11+3sqrt(5))/2,
    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    q=1-lambda,       w=1-b.

There are two central points inside DCB, and four right points inside
conv{B,C,(1,0)}. The minimum absolute actual triangle area is at least s.

## 1. The actual right hull is a quadrilateral

The supporting-triangle construction in SIX_POINT_ENDPOINT.md gives
a triangle BCR with R=(r,v) virtual, two distinct actual contacts H,F
on BR,CR, and two further actual points U,V. Its doubled area is

    Omega=r-b-wv<=w.

Because the actual six-point hull is nontriangular, that theorem gives

    Omega>9s,       b<1-9s=163/1000.                   (1)

Map B,C,R affinely to A=(0,0), J=(1,1), O=(0,1). Write the actual
contacts as H=(0,h), F=(f,1), with alpha=1-h and beta=1-f. The actual
DBE area b(1-lambda)>=s gives b>=s. Hence the normalized doubled
threshold is

    t=s/Omega>=s/(1-s)>1/11.

The five-cell catalogue of SIX_POINT_ENDPOINT.md, Section 2 applies
to each of U,V. Cell IV and simultaneous occupancy of I and III would
give t<=1/12 by the anchor Cauchy inequality. Cell V gives t<1/11 by
the explicit scalar maximum in that proof. Thus only I,II,III remain.
All three lie strictly inside the actual quadrilateral AJFH.

Two I points are impossible as well. The triangle AHF would contain
both, giving hf>=Kt, while alpha beta>=t. The anchor inequality
sqrt(hf)+sqrt(alpha beta)<=1 would imply

    t<=1/(1+sqrt(K))^2<1/12,

contrary to t>1/11. Here sqrt(K)=1+sqrt(3)>5/2, so the denominator
exceeds 49/4>12. The reflected argument excludes two III points.

Consequently the actual right hull is exactly B-H-F-C, with U,V
strictly interior, and the complete remaining cell-pair catalogue is

| Pair | Actual triangles containing both U,V |
|---|---|
| I+II | BCH |
| II+II | BCH and BCF |
| II+III | BCF |

The pair I+III, and every other pair of cells, has been excluded above.
The physical contact coordinates are

    H=(b+h(r-b), hv),
    F=(r+f(1-r), v+f(1-v)).                            (2)

In particular x_H<x_F and y_H<y_F.

## 2. A uniform bottom bound b>103/1000

Let delta=area2(EBR)=lambda(r-b)+bv. Since H is actual and lies on BR,

    area2(EBH)=h delta>=s.

The actual normalized CHF anchor gives alpha beta>=t, whence
h<=1-t<=1-s. Also bq>=s, r<=1, and (1) give

    lambda<=1-s/b,
    v<1-9s/(1-b),
    delta<=1-s(1-b)/b-9bs/(1-b)=:D0(b).

If b<=103/1000, the last expression increases with b, since

    D0'(b)=s/b^2-9s/(1-b)^2>0

throughout b<1/4. Hence

    s<=h delta
      <=(1-s)D0(103/1000)
       =262504847/3079700000<s.

The final gap is 23907253/3079700000. This contradiction proves

    b>103/1000,
    Omega<897/1000,
    t>31/299>1/10.                                   (3)

The lower bound applies to all three remaining cell pairs.

## 3. The central-pair quadratic is valid at this threshold

Assume for the rest of the note that U,V are both in II. They lie
inside both AJH and AJF, so

    h,beta>=Kt>2/3.

For clarity we state the parameter version of the central-pair argument
used in SIX_POINT_ENDPOINT.md. It gives, at every t>1/11 with the
displayed central containments,

    a0=1-t(1/h+1/beta)>0,
    a0^2>=4t c0,       c0=1/h+1/beta-1.               (4)

Here is the exhaustive sign argument, so no threshold-specific
conclusion is imported without checking its hypotheses. Write
U=(p,p+a), V=(z,z+d), and orient their line from U toward V. Central
anchor clearances give a,d>=t and the two strips

    (t+(1-beta)a)/beta<=p<=1-(t+a)/h,
    (t+(1-beta)d)/beta<=z<=1-(t+d)/h.

If A,J have the same negative sign, substitution of these strip
endpoints, according to a>=d or a<=d, gives

    min(-det(A,U,V),-det(J,U,V))
       <=xi(a0-c0 xi),       xi=min(a,d)>0.

The left side is at least t, proving (4). Reversing U,V handles the
case in which both signs are positive.

If A,J have opposite signs, orient them negative,positive. The signs
H positive and F negative would alternate around the convex anchor
quadrilateral and are impossible for a line. If H is negative and F
positive, the edge tests put U inside HFV. Reflect if necessary so
h>=beta. The central inequalities and this containment give

    3t<=h(1-beta)-(h-beta)z-(1-beta)d,
    z>=t(2-beta)/beta,       d>=t,
    t<=h beta(1-beta)/(2h+2beta-h beta)
      <=beta(1-beta)/(2+beta)<=1/12.

The last inequality holds for beta>=2/3, so this case contradicts
t>1/11. If both H,F signs are positive, the exact weighted identity

    a det(H,U,V)+(h-a)det(J,U,V)
       =[h(1-p)-a](a-d)

and the lower strip bound yield

    t<=(a-t)[1-t/beta-c0 a].

Writing z0=a-t>0 gives a positive quadratic maximum with coefficient
A0=1-t/beta-c0t. Since a0-A0=t(1/beta-1)>0, this proves (4) again.
Both H,F negative reduce to the preceding case by reflection in
x+y=1. All actual dividing signs are strict.

Put U0=h beta and R0=sqrt(U0). As in that argument, clearing (4) and
using h+beta>=2R0 gives

    R0>2t,
    Q_t(R0):=(1+4t)R0^2-12t R0+4t^2>=0.              (5)

For fixed U0, the expression before this replacement decreases with
h+beta wherever t(h+beta)<U0; its derivative is
2t[t(h+beta)-3U0]<0. This verifies the direction of the replacement.

## 4. A rational product gap

Let

    t0=31/299,       r0=843/1000.

At r0 the quadratic from (5) has the exact negative value

    Q_(t0)(r0)=-40450427/89401000000<0.

By (1),(3), t0<t<1/9. Its derivative with respect to t at r0 is
4r0^2-12r0+8t<0; for example r0<1, r0>4/5, t<1/9 bound it above
by -212/45. Hence Q_t(r0)<0. Also

    Q_t(2t)=16t^2(t-1)<0.

The quadratic is convex in its argument, so it is negative throughout
[2t,r0]. Equations (5) therefore force

    R0>r0,       U0>r0^2,
    U0+t>1-2s+98051/299000000.                        (6)

## 5. The actual middle triangles DHF and EHF are empty

Using (2), direct expansion gives the positive doubled area

    M=area2(DHF)
      =1-beta+Omega(beta-U0)+v(beta-h)
      =1-Omega U0-(1-Omega-v)beta-vU0/beta.             (7)

We bound this expression at fixed U0,Omega,v. The two actual anchor
inequalities are

    beta-U0>=t,       h-U0>=t.

Thus beta lies in the interval

    U0+t<=beta<=U0/(U0+t).                            (8)

On the whole interval from U0+t to the actual beta, the varying
quantity h=U0/beta is less than 9/10, while beta>3/4. Indeed the
lower endpoint exceeds 1-2s by (6), and
U0/(U0+t)=1-t/(U0+t)<1-t<9/10, since U0+t<1.

Moreover r<=1 gives

    v<=(w-Omega)/w<=(9/10-Omega)/(9/10).

Differentiating (7) with respect to beta on this interval gives

    M_beta=-(1-Omega)+v(1+h/beta)
      <-(1-Omega)+(11/5)(9/10-Omega)/(9/10)
       =6/5-(13/9)Omega
       <6/5-13s=-9/1000<0.                            (9)

Consequently the upper bound occurs at beta=U0+t. At that endpoint,
(8) implies beta<=h, so its v(beta-h) term is nonpositive. Using
Omega t=s in (7) therefore gives

    M<=1-U0-t+s
      <3s-98051/299000000<3s.                         (10)

Thus DHF contains no further actual point. The line HF has positive
slope. Since the convex right hull puts B above it, its intercept at
x=0 is negative, so E lies above HF too. Therefore EHF has positive
area, and

    area2(EHF)=M-q(x_F-x_H)<M<3s.

It too contains no further actual point.

## 6. Exact remaining fan counts in the II+II right pair

The convex pentagon D-B-H-F-C contains the four remaining actual
points: the two central points and U,V. Its fan from D has triangles
DBH,DHF,DFC. The middle fan is empty by (10).

The lower fan can contain at most two actual points. Indeed

    area2(DBH)=h(Omega+v).

As b>1/10, w<9/10, and Omega>9s,

    Omega+v<=1-b Omega/w<1-s.

Also h<9/10, so

    area2(DBH)<(9/10)(1-s)=8163/10000
      <(177/20)s<Gs.

The first strict gap is 27/4000. Three interior points would violate
the triangle-three bound. The upper fan DFC contains at most three
points by the triangle-four bound. With four points in total, the
only remaining counts are therefore

| Points in DBH | Points in DHF | Points in DFC |
|---:|---:|---:|
| 1 | 0 | 3 |
| 2 | 0 | 2 |

These two rows remain open, as do the mixed right-cell pairs I+II
and II+III after this reduction alone. TYPE_II_R4_CENTRAL.md now
excludes both II+II fan rows simultaneously. The mixed-pair proofs
listed at the start of this note subsequently exclude both remaining
pairs, independently of the central-point fan counts.
