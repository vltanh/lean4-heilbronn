# Adjacent corners: endpoint counts and side-hull exclusions

This note normalizes the adjacent-corner family II, proves the endpoint
bounds used in its count reduction, and closes complete side-hull
alternatives within the counts (2,2,3) and (2,3,2). Section 9 links the
complete count proofs and the full family assembly TYPE_II_COMPLETE.md.

Write

    sigma=93/1000 < 2A*,
    k=3-2sqrt(2),
    Gamma2=4+2sqrt(3),
    Gamma3=(11+3sqrt(5))/2.

Every actual unsigned doubled triangle area is at least sigma. The
strict threshold comparison is proved in FOUR_CORNERS.md. All arguments
below are analytic; numerical optimization is not a premise.

## 1. Four, five, and six points with two prescribed triangle vertices

The support-triangle construction in THREE_CORNERS.md, Section 1 works
for any number of points: if their hull is not triangular, it encloses
them in a triangle of no larger area, with the two prescribed actual
vertices as base endpoints and one distinct actual contact on each
other leg. An affine map sends that support triangle to the half-square
with actual anchors

    A=(0,0), E=(1,1), H=(0,h), F=(f,1), 0<h,f<1.

If t is the normalized doubled minimum, then the original minimum is
t times the support triangle's area. Thus bounds on t are bounds on
the ratio of minimum area to original container area.

### Four points

Four points in a triangle of area S, including two vertices, have minimum
area at most S/3. If their hull is triangular, its interior point gives
this by subdivision. Otherwise the support normalization has only the
four displayed anchors. Put alpha=1-h and beta=1-f. Their actual areas
give hf,alpha beta>=t, whereas Cauchy--Schwarz gives

    sqrt(hf)+sqrt(alpha beta)<=1.

Hence t<=1/4. In particular a nontriangular four-point hull has the
stronger bound S/4.

### Five points

Five points in such a triangle have minimum area at most kS.
For triangular hull this follows from the two-interior-point theorem,
since 1/Gamma2<1/6<k. The comparisons use sqrt(3)>1 and
sqrt(2)<17/12, respectively.

Otherwise support-normalize the fifth point as X=(x,x+w). Use

    L=(1-beta)w-beta x,
    K=h(1-x)-w,
    N=(1-beta)w+(h-beta)x-h(1-beta).

The determinant inequalities and identities in THREE_CORNERS.md,
Section 2 apply with the general threshold t. In its five-cell table,
cell I has hf>=3t and alpha beta>=t, so t<=1/Gamma2<k;
cell III is its reflection. Cell IV gives t<=1/12<k. Cell V gives

    t<1/10<k

by the explicitly differentiated scalar maximum in that section.

In cell II, reflect in x+y=1 so h>=beta. From L<=-t and w>=t,

    x>=t(2/beta-1).

Using this in N<=-t gives

    h(1-beta)
      >=t+(1-beta)w+(h-beta)x
      >=t h(2/beta-1).

Thus t<=beta(1-beta)/(2-beta)<=k. The last inequality is the exact
square identity

    k(2-beta)-beta(1-beta)
      =[beta-(2-sqrt(2))]^2>=0.

The five cells exhaust the possibilities, proving the five-point bound.

### Six points

The stronger endpoint-six theorem in
[SIX_POINT_ENDPOINT.md](SIX_POINT_ENDPOINT.md) proves that six points
in such a triangle have minimum area at most

    S/Gamma3.                                            (1a)

For a nontriangular actual hull it proves the strict bound S/9.
We retain the following shorter elementary estimate because it already
suffices for the count exclusion below:

    S/(Gamma2+1).                                      (1)

If the hull is triangular, there are three interior points and the
Gamma3 theorem proves this, since Gamma3>Gamma2+1. For example this
comparison follows from sqrt(5)>2 and sqrt(3)<7/4.

For a nontriangular hull, support-normalize to the four anchors and
two other points. If t<=1/11, (1) follows because Gamma2+1<9<11.
If t>1/11, the five-cell calculation in THREE_CORNERS.md, Section 2
excludes IV,V and simultaneous occupancy of I and III. Both other
points therefore lie in AEH or both lie in AEF. In the first case the
two-interior-point theorem gives h>=Gamma2 t, while alpha beta>=t
gives h<=1-t. Adding yields (Gamma2+1)t<=1. The second case is its
reflection. This proves (1) without a stronger six-point theorem.

## 2. An area-preserving normalization with b<=1/2

The four distinct anchors are

    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    0<b<1, 0<lambda<1,

and six other points are unrestricted in the square. Values b=0 or 1,
or lambda=0, give a three-corner alternative; lambda=1 repeats D.

If b>1/2, put

    tau=min_{X=(x,y), y<1} (1-x)/(1-y).

The finite minimum exists and 0<=tau<=1-b because B is included.
The determinant-one shear

    (x,y) -> (x+tau(1-y),y)

fixes D,C, keeps every point inside the square, and creates a right
contact below C. Reflect in x=1/2. The bottom point now has coordinate
b'=1-b-tau<=1-b<1/2, and the new right contact becomes a left contact
below D. If a third corner appears, pass to family III. Otherwise these
are distinct anchors of the same Type-II form. A tied pair of new right
contacts would be collinear with C, which is impossible.

Thus an upper bound may assume

    0<b<=1/2,                                          (2)

while retaining the separate Type-III alternative. No assertion that
the original b was already small is needed.

## 3. Exactly four occupancy rows remain

The actual chords DB and BC partition the square into

    TL=conv{D,B,(0,0)},       doubled area b,
    TC=conv{D,C,B},           doubled area 1,
    TR=conv{B,C,(1,0)},       doubled area 1-b.

Let ell,c0,r count the seven points other than D,C,B in these triangles.
No such point is on DB or BC, and E belongs to TL. Points on an outside
square edge are counted in the corresponding side triangle. Hence

    ell+c0+r=7,       ell>=1.

The bounds are

    ell<=2,       c0<=3,       r<=4.                    (3)

For ell, three points together with D,B would give sigma<=k b<=k/2,
contrary to k<9/50 and sigma>9/100. The inequality k<9/50 follows
from sqrt(2)>141/100. For c0, use the four-interior-point exclusion in
TRIANGLE_OCCUPANCY.md. For r, five points together with B,C would
contradict the seven-point endpoint theorem in THREE_CORNERS.md, since
TR has doubled area at most one.

The raw bounds (3) leave five rows. One of them, (2,1,4), is impossible.
The four-point left endpoint lemma gives b>=3sigma; the six-point right
endpoint lemma gives 1-b>=(Gamma2+1)sigma. Their sum would imply

    1>=(Gamma2+4)sigma>1,

because Gamma2>149/20 and

    (149/20+4)sigma-1=1297/20000>0.

The complete surviving count list is therefore

| ell | c0 | r |
|---:|---:|---:|
| 1 | 2 | 4 |
| 1 | 3 | 3 |
| 2 | 2 | 3 |
| 2 | 3 | 2 |

In the row with r=4, the stronger endpoint-six theorem applied to TR
also gives

    b<=1-Gamma3 sigma.                                  (3a)

If that right six-point hull is nontriangular, its strict S/9 bound
further gives b<1-9sigma=163/1000. Neither bound is itself an exclusion
of the row (1,2,4).

When ell=2, write P for the additional left point besides E. In the
row (2,2,3), the endpoint bounds also give

    3sigma<=b<=1-sigma/k.                               (4)

## 4. In (2,2,3), a quadrilateral left hull is impossible

Assume that D,B,E,P have quadrilateral hull. Then P is outside DBE;
within TL this means it lies below EB. Its actual clearances give

    lambda x_P+b y_P<=b lambda-sigma,
    (1-lambda)x_P>=sigma.

Writing q=1-lambda>0, these imply

    y_P<=1-q-sigma/(bq)<=1-2sqrt(sigma/b).               (5)

In particular b>=4sigma. This also follows from the stronger four-point
endpoint lemma in Section 1.

The right five-point hull cannot be triangular: it would give
1-b>=Gamma2 sigma, while b>=4sigma, contradicting
(Gamma2+4)sigma>1. Thus use its support triangle BCR', with apex
R'=(u,v) in TR and a distinct actual contact Q on BR'. By the
five-point endpoint theorem applied inside that support triangle,

    u-b-(1-b)v>=sigma/k,
    0<=y_Q<=v<=1-sigma/[k(1-b)],
    b<=x_Q<=1.                                         (6)

Since 0<=x_P<=b, the actual triangle BPQ has doubled area

    (b-x_P)y_Q+(x_Q-b)y_P
      <=b y_Q+(1-b)y_P
      <=1-F(b),

    F(b)=b sigma/[k(1-b)]+2(1-b)sqrt(sigma/b).          (7)

We prove F(b)>1-sigma throughout 4sigma<=b<=1/2. Set
x=sqrt(sigma/b). Then 43/100<x<=1/2, since
2sigma>(43/100)^2. Also x^2-sigma>0. Since
1/k=3+2sqrt(2)>29/5,

    F(b)>(29/5)sigma^2/(x^2-sigma)+2x-2sigma/x.

After subtracting 1-sigma and multiplying by the positive
x(x^2-sigma), the right side becomes

    G(x)=2x^4-(907/1000)x^3-(93/250)x^2
            +(42036/312500)x+8649/500000.                (8)

For a direct positivity check, put z=x-19/40, so
-9/200<z<=1/40. Exact expansion gives

    G(x)=z^2[2z^2+(2893/1000)z+41721/40000]
             +(982583/40000000)z+2989777/1600000000.

The bracket is at least 22821/25000>0, and the last two terms are at
least 3052819/4000000000>0. Thus G(x)>0, proving the claim. Equations
(7)--(8) make the doubled area of BPQ less than sigma, a contradiction.

This closes the entire quadrilateral-left-hull branch of (2,2,3), without
any conditions on its two central points.

## 5. In (2,2,3), two triangular side hulls are impossible

Suppose the left four-point hull and right five-point hull are both
triangular. The left hull is necessarily DBE. Indeed D and B are its
prescribed vertices, while a triangle with third vertex P having x_P>0
could not contain E on x=0; x_P=0 would make D,E,P collinear.
Therefore P is inside DBE, and

    b(1-lambda)>=3sigma.                                (9)

Write R=(u,v) for the third actual vertex of the right hull. Its two
interior points and the Gamma2 theorem give

    u-b-(1-b)v>=Gamma2 sigma,
    1-b>=Gamma2 sigma>69/100.                            (10)

Combining (9)--(10) gives

    3sigma<=b<31/100,
    lambda<1/10,
    v<1-(69/100)/(1-3sigma)=31/721.

But the actual triangle BER has positive doubled area

    b v+lambda(u-b)
      <(31/100)(31/721)+(1/10)(1-3sigma)
      =615941/7210000<sigma,
    sigma-615941/7210000=54589/7210000>0.

This is a contradiction. It excludes the whole triangular-right-hull
alternative in (2,2,3), since Section 4 already excluded a quadrilateral
left hull.

## 6. The surviving right support point is central

In the remaining (2,2,3) branch, support-normalize the nontriangular
right five-point set to the four half-square anchors and its fifth
point X, as in Section 1. Its normalized doubled minimum is at least
sigma/(1-b). Since b>=3sigma, this is greater than 1/11. The five-cell
calculation therefore excludes IV and V.

Cells I and III are impossible as well. Either would give a normalized
minimum at most 1/Gamma2, by the Cauchy--Schwarz calculation in Section 1.
Consequently its physical support triangle BCR', with R'=(u,v), would
have doubled area at least Gamma2 sigma. The bounds in Section 5 apply
again:

    b<31/100,       lambda<1/10,       v<31/721.

Take the actual supporting contact Q on BR'. It satisfies y_Q<=v and
b<=x_Q<=1. Thus the same legitimate actual-point calculation gives

    area2(BEQ)=b y_Q+lambda(x_Q-b)
      <615941/7210000<sigma.

This contradiction excludes both noncentral cells. Hence X is in cell
II of the right support normalization. This assertion covers all possible
nontriangular right hulls and does not presume that the auxiliary apex
R' is an actual point or a square corner.

## 7. An empty lower fan in the surviving (2,2,3) branch

Let H be the actual contact on the bottom leg BR' of the right support
triangle. The left triangular hull and the right five-point endpoint
bound give

    lambda<=1-3sigma/b,
    y_H<=1-sigma/[k(1-b)],       b<=x_H<=1.

Consequently the actual triangle EBH has doubled area at most

    b y_H+lambda(x_H-b)
      <=1-sigma[b/(k(1-b))+3(1-b)/b]
      <=1-2sigma sqrt(3/k)
      <1-8sigma<3sigma.                                (9)

The middle step is AM--GM. For the strict comparisons, k<9/50<3/16
gives sqrt(3/k)>4, and 11sigma>1. Thus EBH contains no further actual
point: an interior point would subdivide it into three actual triangles,
each with doubled area at least sigma.

The quadrilateral D-E-B-H is convex and contains the left triangle DBE.
Its diagonal EH divides it into DEH and EBH. Therefore P lies strictly
inside DEH. The two central points, and the right support-normalized
cell-II point, all lie in the union of DEH and DCH. Indeed they belong
to the convex hull of D,C,B,H, and the only other piece of the fan from
H in the larger hull D-E-B-H-C is the empty triangle EBH. No actual
point is on one of these actual diagonals, because every actual triangle
has positive area.

This is a placement restriction, not an exclusion of the distributed
or nonclustered possibilities in those two triangles.

## 8. In (2,3,2), the two side hulls cannot both be quadrilateral

This exclusion does not use the three central points. Suppose the left
four-point hull D,E,P,B and the right four-point hull B,Q,R,C are both
quadrilateral. Label Q as the hull vertex adjacent to B on the non-BC
chain of the right hull.

We first record the needed right-hull inequality. Normalize TR by
(x,y)->((x-b)/(1-b),y), so its endpoints are (0,0),(1,1), and write
Q=(z,t), R=(w,v). Every normalized doubled area is at least
rho=sigma/(1-b). The positive areas of the two triangles on QR are

    u=zv-tw>=rho,
    u+w-v-z+t>=rho.

Here 0<=t<z<1. Substitute v>=(rho+tw)/z in the second expression,
whose coefficient of v is negative, and then use w<=1. This gives

    rho <= (1-z)(z-t-rho)/z,
    (1-z)(z-t)>=rho.                                   (10)

Put r=1-z. In the original coordinates the lower right vertex therefore
has the form

    Q=(b+(1-b)(1-r),t),
    0<r<1,       t<=1-r-sigma/[(1-b)r].                 (11)

For the lower left vertex write P=(ba,y), with 0<a<1. The two actual
left-hull inequalities are

    (1-lambda)ba>=sigma,
    lambda b(1-a)-b y>=sigma.

Eliminating lambda, with 1-a>0, gives

    y<=1-a-sigma/(ba).                                 (12)

The actual triangle BPQ consequently satisfies

    sigma <= area2(BPQ)
      =b(1-a)t+(1-b)(1-r)y
      <=(1-a)(1-r)
          -sigma[b(1-a)/((1-b)r)+(1-b)(1-r)/(ba)].      (13)

Set z0=sqrt(ar)>0 and q0=sqrt((1-a)(1-r))>0. Cauchy--Schwarz
gives q0+z0<=1, and AM--GM bounds the bracket in (13) below by
2q0/z0. Thus

    sigma<=q0^2-2sigma q0/z0,       0<q0<=1-z0.

For fixed z0, this quadratic is convex in q0. Its maximum on
[0,1-z0] is at an endpoint; the zero endpoint has value zero. Since
sigma>0, the other endpoint must be at least sigma. Rearranging gives

    sigma <= z0(1-z0)^2/(2-z0).

The exact scalar maximum already differentiated in THREE_CORNERS.md,
Section 2 is (5sqrt(5)-11)/2<1/11. But sigma=93/1000>1/11, a
contradiction. This excludes all configurations with the two side hulls
quadrilateral, regardless of their central-point placement.

## 9. Complete exclusion

The reductions above leave four occupancy rows. Each now has a complete
hand proof, with all of its hull and central-placement alternatives:

| Count (ell,c0,r) | Complete proof |
|---|---|
| (1,2,4) | TYPE_II_R4_COMPLETE.md |
| (1,3,3) | TYPE_II_133_COMPLETE.md |
| (2,2,3) | TYPE_II_223_COMPLETE.md |
| (2,3,2) | TYPE_II_232_COMPLETE.md |

TYPE_II_COMPLETE.md assembles these proofs with the determinant-one
normalization, its separate three-corner alternative, all boundary
cases, and the competitive threshold comparison. It proves that every
ten-point configuration with two adjacent occupied corners has minimum
ordinary triangle area strictly below A*. Thus HP11-II is complete.
