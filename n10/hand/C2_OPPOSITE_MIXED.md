# Opposite corners: complete exclusion of the opposite-corner mixed family

This note excludes the complete C2 family with a noncentral point toward
each occupied corner. It proves a common horizontal-coordinate interval,
fixes the signs at the left and right contacts, and gives two exhaustive
orientations at the bottom and top contacts. Sections 4--5 exclude the
first orientation. Section 6 establishes the geometric hypotheses for
the explicit scalar contradiction in
[C2_OPPOSITE_REVERSE.md](C2_OPPOSITE_REVERSE.md), which excludes the
second. Every mixed-half line orientation is covered.

Use the anchors from [OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md):

    A=(0,0), E=(1,1), H=(0,h), B=(b,0), D=(1,d), F=(f,1),
    sigma=93/1000,       c=89/100,
    alpha=1-h, beta=1-f, gamma=1-b, delta=1-d,
    0<d<=h<c,           0<f<=b<c.

The upper half has P in cell I and Q in cell II. The lower half has R in
cell II and S in cell III, so S is its noncentral point toward E. Write

    Q=(x,y),       R=(u,v).

The two points in the upper half both lie inside AEH, while the two in
the lower half both lie inside AED. The triangular-hull bound and the
noncentral fan areas therefore give

    h,delta>=Gamma2 sigma>69/100,
    hf>=3sigma,       gamma delta>=3sigma,
    beta,b<69/100,       Gamma2=4+2sqrt(3).               (1)

For example beta<1-3sigma/c<69/100; the bound on b is its half-turn
image. We use the exact comparison
Gamma2 sigma>34689/50000>69/100 from C2_MIXED.md.

## 1. Both corner triangles have their unique noncentral occupant

The universal containment theorem in
[C2_MIXED_CORNER.md](C2_MIXED_CORNER.md) puts P strictly inside AHB and S
strictly inside EFD. Their doubled areas satisfy

    hb,delta beta < (89/100)(69/100)=6141/10000
       <Gamma2 sigma.

Consequently neither corner triangle can contain two further points.
Its noncentral occupant is therefore its only free point, and Q,R both
lie strictly outside AHB and EFD.

The mixed-half orientation catalogue and case-(2) exclusion in
C2_MIXED.md, Sections 1--2, show that P lies strictly inside AHQ. Indeed
the remaining upper pair-line orientations both have positive sign at H
and negative sign at A. The half-turn gives S strictly inside EDR.

There are also the cross-half containments

    P in AHR,       S in EDQ.                            (2)

Here is an explicit verification of the first one. Temporarily write
P=(p,q), R=(u,v), and define

    C=hb-hp-bq>0,       T=hu+bv-hb>0,       w=u-v>0.

The first two signs express the already proved inside/outside locations,
and the last is the lower-half condition. For the line P to R,

    d_H=h(u-p)+pv-uq,
    (h+b)d_H=(h+w)C+(h-q+p)T>0.                         (3)

The last coefficient is positive because P lies inside AHB, hence q<h.
The sign at A is negative since P is above AE and R below it. Together
with p>0, these are the three strict edge tests for P inside AHR. The
half-turn proves the other containment in (2).

Subdividing the four containing triangles at their noncentral points
now gives, for each central point T=(t_x,t_y),

    3sigma/h <= t_x <= 1-3sigma/delta.                   (4)

Both inequalities concern the horizontal coordinate. The right-hand
one is the area of EDT, namely delta(1-t_x).

## 2. The central-pair line has negative H sign and positive D sign

Orient the central-pair line from Q to R and put

    d_V=det(R-Q,V-Q).

The upper/lower locations give

    d_A<0<d_E.

We claim

    d_H<0<d_D.                                         (5)

If d_H>0, the edge tests put Q strictly inside AHR. Since P is inside
AHQ, the actual triangle AHR then contains both P and Q, so

    h u>=Gamma2 sigma.

But (4) and h,delta<c give

    h u<=h(1-3sigma/delta)<c-3sigma=611/1000
       <69/100<Gamma2 sigma.

This contradiction excludes d_H>0. The half-turn, with the transformed
upper point named first, excludes d_D<0. The actual area lower bounds
exclude zero signs, proving (5).

In particular P and S have definite signs for this central-pair line:
P is inside AHQ with d_A,d_H<0 and d_Q=0, while S is inside EDR with
d_E,d_D>0 and d_R=0. Therefore

    d_P<0<d_S.                                         (6)

## 3. Exactly two bottom/top sign alternatives remain

Both central points lie inside the convex quadrilateral ABEF. Its
diagonal BF partitions it into ABF and EFB, whose doubled areas are b
and beta. By (1), both are smaller than Gamma2 sigma, so neither can
contain both Q and R. Thus one central point is in each triangle, and
their joining segment crosses the open segment BF. Exactly two strict
sign patterns are possible:

    (N) d_B<0<d_F:       Q in ABF, R in EFB;
    (R) d_F<0<d_B:       Q in EFB, R in ABF.             (7)

The labels (N),(R) distinguish the displayed alternatives only; no
orientation is omitted by a generic-position assumption. All relevant
line values are actual triangle areas and hence nonzero.

## 4. Alternative (N) forces both mixed halves into case (3)

Suppose alternative (N) holds. We first exclude upper mixed-half case
(1), where the line P to Q has positive sign at F and negative sign at E.
Denote those two values by e_F,e_E. Their difference is

    e_F-e_E=beta(y-y_P)>=2sigma.

The noncentral point satisfies hx_P>=sigma and fy_P-x_P>=sigma.
Consequently

    y>=y_P+2sigma/beta
       >=sigma(1+1/h)/f+2sigma/beta
       >2sigma(1/f+1/beta),                            (8)

where the strict inequality uses h<1.

On the other hand Q lies in ABF. Its central AF clearance and its BF
clearance give

    x-fy>=sigma,       b-x-(b-f)y>=sigma.

Adding yields b(1-y)>=2sigma, or y<=1-2sigma/b. Combined with (8), this
would require

    1>2sigma(1/f+1/beta+1/b)
       >2sigma(4+100/69)=1+39/2875.

The middle bound uses f+beta=1 and b<69/100. This is impossible.
The half-turn preserves alternative (N), and excludes case (1) in the
lower mixed half in exactly the same way. Case (2) was already excluded
for every mixed half. Thus both halves are in case (3).

## 5. Case-(3) mate products give incompatible central coordinates

For the upper half put

    K=h-y+(1-h)x>0,       w=y-x>0.

Since P is inside AHQ, write its barycentric coordinates there as

    P=a A+b H+c_1 Q,       a+b+c_1=1,
    a,b,c_1>=tau:=sigma/(hx).

Each lower bound is one of the three actual fan areas divided by hx.
The line P to Q has E-value

    e_E=b K-a w.

In case (3), e_E>=sigma. Its largest possible value under the displayed
barycentric bounds is K-tau(2K+w). Therefore

    hx K>=sigma(hx+2K+w)=sigma(h+K),
    (hx-sigma)K>=h sigma.                               (9)

The identity in the first line uses K=h-w-hx. Applying the half-turn to
the lower mixed half, and putting r=1-u, gives

    L=v-d u>0,       (delta r-sigma)L>=delta sigma.      (10)

Set a0=sigma/c=93/890. Equations (9)--(10), with h,delta<c, imply

    K>=sigma/(x-a0),       L>=sigma/(r-a0),
    x,r>a0.                                            (11)

For the central-pair line let M=-d_H>=sigma and N=d_D>=sigma. Direct
expansion gives the exact identity

    M+N=delta x+h r-K-L.

Writing W=x+r, equations (11) and h,delta<c give

    2sigma<=c W-sigma[1/(x-a0)+1/(r-a0)],
    W>=2a0+a0[1/(x-a0)+1/(r-a0)]
       >=2a0+4a0/(W-2a0).

The final step is the elementary reciprocal AM--GM inequality. Since
W>2a0, it follows that

    W>=2a0+2sqrt(a0).                                   (12)

Alternative (N) contradicts this. Put

    k=u-x,       l=y-v,       t=b-f>=0,       j=h-d>=0.

The opposite actual signs at B,F and H,D give respectively

    k-tl=d_F-d_B>=2sigma,
    l-jk=d_D-d_H>=2sigma.

As jt<1, substitution yields
k(1-jt)>=2sigma(1+t)>0, hence k>0, l>0, and k>=2sigma.
Consequently

    W=x+1-u=1-k<=1-2sigma.                              (13)

The exact constants make (12)--(13) incompatible:

    1-2sigma-2a0=26923/44500>0,
    4a0-(1-2sigma-2a0)^2
       =102852071/1980250000>0.

Thus 2a0+2sqrt(a0)>1-2sigma. This proves the complete exclusion of
alternative (N), including both mixed-half case-(1) alternatives and all
case-(3) configurations. It is a complete pair-line orientation theorem,
not a numerical exclusion of a sampled chamber.

## 6. The reverse alternative reduces to two strict fan containments

It remains to exclude alternative (R):

    d_A,d_H,d_F,d_P<0,
    d_E,d_D,d_B,d_S>0,
    Q in EFB,       R in ABF.                           (14)

Each mixed half may be in case (1) or case (3); Section 4 did not exclude
case (1) in this alternative. The argument below applies to all four
ordered choices of these two half-pair orientations.

There is a useful additional actual hull in (14). The upper mixed pair
has positive H sign and P is inside AHB while Q is outside it, so its
B sign is negative. For the triangle BPQ, the edge signs of R are

    det(P-B,R-B)<0,       d_P<0,       -d_B<0.

The first sign follows from the cross-half geometry in Section 1: the
line P to R crosses HB, and its H sign is positive by (3), so its B sign
is negative. These three signs put R strictly inside BPQ. The half-turn
puts Q strictly inside FSR.

It follows that Q,R are both strictly inside the convex quadrilateral
B-P-F-S. For its convexity, P and S are on opposite sides of BF, while
their joining segment meets BF at a height strictly between 0 and 1, so
B and F are on opposite sides of PS. For an algebraic justification of
the central containments, write the two strict convex
combinations R in BPQ and Q in FSR, substitute one into the other, and
divide by 1 minus the product of their two interior coefficients. This
expresses Q and R as strict convex combinations of B,P,F,S.

The quadrilateral-hull bound from OPPOSITE_CORNERS.md therefore gives
the necessary inequality

    x_S-x_P+(b-f)(y_S-y_P)>=8sigma.                     (15)

The left side is the doubled area of B-P-F-S. The full reverse-orientation
contradiction does not need this additional quadrilateral estimate:
[C2_OPPOSITE_REVERSE.md](C2_OPPOSITE_REVERSE.md) uses the already proved
strict containments R in BPQ and Q in FSR directly. It derives two opposed
scalar inequalities F(f,b)>=0 and F(1-b,1-f)>=0, and proves with an exact
positive cubic that they cannot both hold throughout 3/10<f<=b<7/10.
That domain follows from (1), so alternative (R) is excluded completely.

## 7. Complete opposite-corner mixed/mixed exclusion

Section 3 gives an exhaustive pair of central-pair sign alternatives.
Sections 4--5 exclude alternative (N), including its case-(1) and
case-(3) mixed-half possibilities. Section 6 and the complete scalar
argument in C2_OPPOSITE_REVERSE.md exclude alternative (R), with no
additional choice of mixed-half orientation. Thus neither alternative
can occur.

No C2 configuration with noncentral points toward opposite occupied
corners can therefore have minimum ordinary triangle area at least A*.
Together with the central/central, mixed/central, and same-corner mixed
theorems, this closes the full C2 family.
