# Seven boundary points: one upper exterior cap cannot contain two free points

This note excludes the entire N7 placement with two free points in the
same upper exterior cap. The other free point is not used. Both possible
hull types of the cap's four actual points, every height ordering of the
opposite upper contacts, and every remaining ray orientation are covered.

The proof is analytic except for five fixed cubic sums, whose 523 positive
integer terms are printed in full. Their nonnegative factors and exhaustive
geometric cases are proved before the tables. Exact monomial bounds give
a negative rational upper bound for each sum. The optional standard-library
checker `check_n7_same_upper_cap.py` reads these printed tables and rebuilds
all factors. Neither a numerical optimizer nor a generated data file is a
premise.

All areas are doubled. Put

    s=93/1000,       Gamma2=4+2sqrt(3),       K=149/20<Gamma2.

Use the normalized contacts

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), H=(0,h),

with 0<a<h<1, 0<b<c<1, 0<d<e<1 and

    b<=f<=c,       d<=h,       a<=e.

Every actual unsigned doubled triangle area is at least s. By vertical
reflection it suffices to exclude two free points in

    T_L=int conv{H,(0,1),F}.

## 1. A convex five-point endpoint lemma

We first record the precise stronger bound needed for the convex cap
alternative. Five actual points in convex position, contained in a
triangle of doubled area at most one with two actual vertices, cannot
all have unsigned doubled triangle areas at least s.

Use the supporting-triangle construction of THREE_CORNERS.md Section 1,
which applies to any number of points. It gives a triangle of doubled
area S'<=1 with the same two actual base vertices and one actual contact
on each other leg. Normalize it affinely to the half-square. Write its
four contacts and fifth point as

    A0=(0,0), E0=(1,1), U0=(0,u), V0=(v,1),
    W0=(w1,w2),       0<u,v<1.

The normalized doubled minimum tau satisfies tau>=s/S'>=s. Since all
five points are convex hull vertices, W0 is outside quadrilateral
A0,E0,V0,U0. Within the containing triangle this means that it lies
strictly beyond U0V0. Put alpha=1-u and beta=1-v. The three actual
triangle clearances at A0U0, E0V0, and U0V0 give

    u*w1>=tau,       beta*(1-w2)>=tau,
    alpha*v-alpha*w1-v*(1-w2)>=tau.

Therefore

    tau<=u*beta*(1-u)*(1-beta)/(u+beta-u*beta).       (1)

Set r=sqrt(u*beta). For fixed r, the expression on the right decreases
as u+beta increases. Using u+beta>=2r bounds (1) by

    r(1-r)^2/(2-r).

With z=1-r this is z^2(1-z)/(1+z). Its maximum, computed explicitly
in N7_OPPOSITE_UPPER_CAPS.md Section 2, is

    (5sqrt(5)-11)/2<1/11<s.

This contradicts tau>=s and proves the lemma. The argument uses only
five actual points; their container's third vertex need not be actual.

If the four points H,F and the two points in T_L had a quadrilateral
hull, adjoining A would give five convex actual points in
conv{A,(0,1),F}. The upper chain of the cap quadrilateral remains its
hull chain; A,H are distinct leftmost contacts and F is its unique
rightmost/topmost contact. This container has doubled area f(1-a)<1
and actual vertices A,F. The lemma excludes this whole hull alternative.

## 2. The triangular cap hull and its stronger support cost

The only remaining hull type has an actual triangle HFG, where

    G=(g,z),       0<g<f,       h<z<1,

and the other cap point X=(x,y) lies strictly inside FGH. Inserting G
between F,H gives the strictly convex octagon A,B,C,D,E,F,G,H.
All its cyclic-order triangle determinants are positive.

The line FG meets x=0 at height

    z0=(fz-g)/(f-g),       h<z0<1.

The smaller support triangle A,(0,z0),F contains A,H,G,F,X and has
positive doubled area

    S'=f(z0-a)<=f(1-a)<=1.

Set u=(h-a)/(z0-a) and v=g/f. The two actual corner triangles satisfy

    AGH/S'=uv,       FGH/S'=(1-u)(1-v),
    sqrt(AGH)+sqrt(FGH)<=sqrt(S').                    (2)

Here 0<u,v<1, and the last line is Cauchy--Schwarz. Since X is inside
FGH, its three actual fan triangles give FGH>=3s. Also AGH>=s. Hence

    S'>=Gamma2*s>K*s,
    f(1-a)>=K*s.                                     (3)

There is one more forced containment. If X were outside AFG, the AG
diagonal of the convex quadrilateral AFGH would put it inside AGH.
Both AGH and FGH would then contain X, giving AGH,FGH>=3s. Equation
(2) would imply S'>=12s>1. This is impossible. Therefore

    X lies strictly inside both FGH and AFG.          (4)

Clearing the positive denominator f-g in the stronger support cost
S'>=K*s also gives the cubic inequality

    SUP:=f^2(z-a)-fg(1-a)-K*s(f-g)>=0.                (5)

## 3. The entire h>=e alternative is impossible

Project G to G'=(g,1) only for the following boundary-product estimates.
Let L=h-a, J=c-b, R=e-d, T=f-g. The projected top-left ear is

    FG'H=T(1-h)=FGH+f(1-z)>=3s.

If h>=e, the other projected top ear obeys T(1-e)>=T(1-h)>=3s.
All six remaining projected ears are unchanged actual triangle areas,
and each is at least s. The four side decompositions therefore give

    4>=L+J+R+T+2s/L+2s/J+2s/R+6s/T
      >=2sqrt(s)*(3sqrt(2)+sqrt(6)).                 (6)

The second inequality is the elementary bound t+c/t>=2sqrt(c), applied
to each positive span. Since sqrt(2)>7/5 and sqrt(6)>12/5, (6) would
imply s<100/1089. But

    s-100/1089=1277/1089000>0.

Thus only h<e remains. We weaken this strict inequality to h<=e in
the subsequent nonnegative factors.

## 4. Exactly five radial sign cases remain

All triangle signs involving X are determined by the two containments
(4), except the four actual determinants

    BGX, CGX, DGX, EGX.

Here is an explicit check of that statement. For a chord IJ between
any two octagon vertices, if the vertices of FGH or AFG lie on one
closed side of IJ, the containment of X in that triangle fixes the
strict side of X as well. The three edge tests of each containing
triangle are already known. Applying this rule to all vertex pairs
leaves exactly the four listed chords through G; all other signs are
fixed. The checker repeats this finite chord test directly from the
cyclic octagon orientations.

The line directed from G through the interior point X has H,A on its
negative side and F on its positive side. For H use GHX>0, and for A
use AGX<0; the line-side determinant at a vertex I is IGX. Its second
intersection with the strictly convex octagon lies on exactly one edge
of the chain A,B,C,D,E,F. It cannot hit an actual vertex because that
would give a collinear actual triple. Along this chain the signs must
therefore change once from negative to positive. This proves the
following exhaustive five-row table:

| Row | Exit edge | BGX | CGX | DGX | EGX |
|---|---|---:|---:|---:|---:|
| R1 | AB | + | + | + | + |
| R2 | BC | - | + | + | + |
| R3 | CD | - | - | + | + |
| R4 | DE | - | - | - | + |
| R5 | EF | - | - | - | - |

No unlisted sign pattern is possible for a line through a hull vertex
and an interior point of a convex polygon.

## 5. A proved rational box

Use the coordinates in the exact order

    (a,b,c,d,e,f,g,h,z,x,y).

Put

    ell=7347/69700,       eta=93/790,
    f0=K*s/(1-eta),       e0=eta+s/(1-f0),
    h1=1-3s,             x0=s/(h1-eta),
    h0=4s/(1-ell),       g1=1-ell-3s/(1-h0).

All these constants are rational, and every denominator is positive.
The closed box used in all five rows is:

| Coordinate | lower | upper |
|---|---|---|
| a | eta | 1-K*s |
| b | x0 | 1-ell |
| c | f0 | 1-ell |
| d | eta | 1 |
| e | e0 | 1 |
| f | f0 | 1-ell |
| g | x0 | g1 |
| h | h0 | h1 |
| z | h0+3s | 1 |
| x | x0 | 1-ell |
| y | h0+s | 1 |

We verify the strengthened bounds rather than assuming a numerical
range. N7_PLACEMENTS.md supplies the original bounds eta<=a,d,
ell<=b,g,x, c,f<=1-ell, together with its side-span bounds. Equation
(3) gives f>=f0, a<=1-K*s, and c>=f0. The actual CDE area then gives
e>=d+s/(1-c)>=e0.

Since FGH>=3s and z<=1, f(1-h)>=3s, so h<=h1. The actual areas
ABH,AGH,AHX consequently give b,g,x>=s/(h-a)>=x0. The two left ear
products a(c-b),b(h-a)>=s imply

    hc=(a+(h-a))(b+(c-b))
       >=[sqrt(a(c-b))+sqrt(b(h-a))]^2>=4s.          (7)

Thus h>=h0 because c<=1-ell. The analogous two right ears give

    e(1-b)>=4s.                                      (8)

Again from FGH>=3s,

    g<=(f-3s/(1-h))<=1-ell-3s/(1-h0)=g1.

The identity FGH=f(z-h)-g(1-h)>=3s gives z>=h+3s.
The actual HFX clearance is f(y-h)-(1-h)x>=s and gives y>=h+s.
These prove the two lower ordinate bounds. All upper abscissa bounds
come from N7_PLACEMENTS.md; the remaining upper bounds are the square
bounds. Every row of the displayed box is therefore justified.

## 6. Nonnegative factors and exact upper-bound rule

For coordinate i=0,...,10, define the 22 box factors

    L_(2i)=coordinate_i-lower_i,
    L_(2i+1)=upper_i-coordinate_i.

The additional affine factors are:

| Factor | Expression |
|---|---|
| L22 | h-a-s |
| L23 | 697/790-h+a |
| L24 | e-d-s |
| L25 | 697/790-e+d |
| L26 | c-b-117/1000 |
| L27 | 79/100-c+b |
| L28 | f-b |
| L29 | c-f |
| L30 | f-g |
| L31 | h-d |
| L32 | e-a |
| L33 | z-h-3s |
| L34 | y-h-s |
| L35 | e-h |

All are nonnegative by the preceding proofs and N7_PLACEMENTS.md.
For a signed triangle label IJK+ use the factor IJK-s, and for IJK-
use -IJK-s. Every such sign in a row follows from the convex octagon,
the containments (4), or that row's radial signs. The special factors
are

    C_FGH=FGH-3s,
    EP=f(1-a)-K*s,
    EL=hc-4s,       ER=e(1-b)-4s,
    SUP=f^2(z-a)-fg(1-a)-K*s(f-g).

Their nonnegativity was proved in (3), (5), (7), and (8). An asterisk
in a table denotes multiplication. Each table defines W as the sum
of its positive integer coefficient times its indicated product.
Consequently W>=0.

Every W has degree at most three. Expand it into monomials. For each
monomial with positive coefficient, replace its coordinates by their
box upper endpoints; for each monomial with negative coefficient,
replace them by their box lower endpoints. All coordinates are
nonnegative, so the resulting exact rational number B(W) is an upper
bound for W. The five displayed sums have B(W)<0. Their fixed integer
weights and this finite expansion prove their contradictions without
any search or subdivision premise.

## 7. The five printed cubic sums

### Row R1

This row has 113 terms and exact bound

    B(W)=-3081578886642228300860477435923145380886144825141935276939/5664174093772833712565257577149419862248531987320000000000<0.

| i | coefficient | factors |
|---:|---:|---|
| 1 | 27 | L17 |
| 2 | 108 | L2*L17 |
| 3 | 1 | L5*L6 |
| 4 | 43 | L5*L25 |
| 5 | 2 | L11*L25 |
| 6 | 64 | L13*L14 |
| 7 | 81 | L17*L18 |
| 8 | 2 | L17*L24 |
| 9 | 10 | L17*L30 |
| 10 | 8 | L20*L29 |
| 11 | 18 | L29*L34 |
| 12 | 10 | L0*L2*L11 |
| 13 | 15 | L0*L2*L18 |
| 14 | 1 | L0*L2*L27 |
| 15 | 1 | L0*L6*L13 |
| 16 | 35 | L0*L13*L27 |
| 17 | 161 | L0*L18*L27 |
| 18 | 54 | L0*L18*L30 |
| 19 | 6 | L0*L27*L27 |
| 20 | 43 | L1*L13*L26 |
| 21 | 6 | L1*L26*L26 |
| 22 | 37 | L2*L3*L17 |
| 23 | 67 | L2*L11*L34 |
| 24 | 25 | L2*L13*L17 |
| 25 | 85 | L2*L14*L19 |
| 26 | 11 | L2*L14*L30 |
| 27 | 53 | L2*L17*L18 |
| 28 | 19 | L2*L17*L26 |
| 29 | 22 | L2*L17*L30 |
| 30 | 22 | L3*L9*L11 |
| 31 | 34 | L3*L20*L29 |
| 32 | 6 | L4*L13*L17 |
| 33 | 4 | L5*L6*L30 |
| 34 | 3 | L5*L15*L25 |
| 35 | 56 | L5*L21*L26 |
| 36 | 2 | L5*L21*L28 |
| 37 | 19 | L5*L25*L28 |
| 38 | 8 | L6*L27*L27 |
| 39 | 1 | L7*L13*L14 |
| 40 | 3 | L9*L11*L12 |
| 41 | 1 | L9*L11*L23 |
| 42 | 4 | L9*L11*L26 |
| 43 | 7 | L9*L12*L12 |
| 44 | 8 | L9*L19*L29 |
| 45 | 2 | L10*L14*L27 |
| 46 | 1 | L10*L17*L23 |
| 47 | 7 | L11*L12*L15 |
| 48 | 85 | L11*L12*L34 |
| 49 | 5 | L11*L23*L25 |
| 50 | 95 | L11*L25*L26 |
| 51 | 22 | L11*L25*L33 |
| 52 | 29 | L11*L27*L34 |
| 53 | 30 | L12*L12*L18 |
| 54 | 45 | L12*L12*L34 |
| 55 | 43 | L12*L17*L18 |
| 56 | 27 | L12*L23*L29 |
| 57 | 48 | L12*L27*L34 |
| 58 | 3 | L13*L13*L14 |
| 59 | 30 | L13*L13*L19 |
| 60 | 37 | L13*L14*L18 |
| 61 | 12 | L13*L14*L27 |
| 62 | 57 | L13*L14*L30 |
| 63 | 42 | L17*L18*L27 |
| 64 | 2 | L17*L19*L30 |
| 65 | 56 | L21*L26*L26 |
| 66 | 48 | ABC+ |
| 67 | 1 | ABC+*L2 |
| 68 | 161 | ABC+*L18 |
| 69 | 108 | ABC+*L30 |
| 70 | 4 | AEG+*L29 |
| 71 | 45 | AGH+*L2 |
| 72 | 1 | AGH+*L7 |
| 73 | 137 | AGH+*L19 |
| 74 | 1 | AGH+*L24 |
| 75 | 19 | BCD+ |
| 76 | 8 | BCD+*L27 |
| 77 | 44 | CDE+ |
| 78 | 19 | CDE+*L28 |
| 79 | 4 | CDE+*L30 |
| 80 | 5 | DEF+ |
| 81 | 5 | DEF+*L23 |
| 82 | 95 | DEF+*L26 |
| 83 | 22 | DEF+*L33 |
| 84 | 8 | EFG+ |
| 85 | 25 | EFG+*L3 |
| 86 | 7 | EFG+*L12 |
| 87 | 1 | EFG+*L23 |
| 88 | 7 | FGX+*L13 |
| 89 | 64 | GHX+ |
| 90 | 2 | GHX+*L2 |
| 91 | 23 | GHX+*L27 |
| 92 | 15 | GHX+*L30 |
| 93 | 68 | FHX- |
| 94 | 78 | FHX-*L2 |
| 95 | 76 | FHX-*L12 |
| 96 | 31 | FHX-*L27 |
| 97 | 167 | AGX- |
| 98 | 15 | AGX-*L2 |
| 99 | 31 | AGX-*L10 |
| 100 | 16 | AHX- |
| 101 | 23 | AHX-*L10 |
| 102 | 83 | AHX-*L12 |
| 103 | 8 | EHX-*L29 |
| 104 | 87 | BGX+ |
| 105 | 37 | BGX+*L3 |
| 106 | 19 | BGX+*L26 |
| 107 | 48 | BGX+*L30 |
| 108 | 6 | CGX+*L13 |
| 109 | 11 | EP*L3 |
| 110 | 108 | EP*L26 |
| 111 | 9 | EL*L13 |
| 112 | 3 | EL*L24 |
| 113 | 25 | ER*L13 |

### Row R2

This row has 98 terms and exact bound

    B(W)=-306785441981606083642994757080526258301842683359/729728756233089787755085604295138311265500000000<0.

| i | coefficient | factors |
|---:|---:|---|
| 1 | 6 | L17 |
| 2 | 141 | L0*L2 |
| 3 | 31 | L0*L12 |
| 4 | 9 | L0*L33 |
| 5 | 9 | L2*L6 |
| 6 | 107 | L5*L25 |
| 7 | 7 | L6*L27 |
| 8 | 5 | L9*L11 |
| 9 | 21 | L11*L25 |
| 10 | 64 | L17*L18 |
| 11 | 9 | L17*L20 |
| 12 | 23 | L17*L28 |
| 13 | 16 | L20*L29 |
| 14 | 105 | L29*L34 |
| 15 | 335 | L0*L2*L21 |
| 16 | 2 | L0*L2*L23 |
| 17 | 54 | L0*L12*L15 |
| 18 | 56 | L0*L12*L23 |
| 19 | 6 | L0*L15*L19 |
| 20 | 14 | L0*L15*L27 |
| 21 | 48 | L0*L21*L27 |
| 22 | 11 | L0*L23*L27 |
| 23 | 317 | L2*L15*L21 |
| 24 | 12 | L2*L15*L23 |
| 25 | 13 | L2*L15*L33 |
| 26 | 74 | L2*L21*L33 |
| 27 | 6 | L2*L23*L33 |
| 28 | 33 | L5*L23*L25 |
| 29 | 4 | L6*L23*L27 |
| 30 | 8 | L9*L11*L23 |
| 31 | 26 | L9*L12*L23 |
| 32 | 35 | L11*L14*L34 |
| 33 | 10 | L11*L18*L32 |
| 34 | 2 | L11*L21*L33 |
| 35 | 2 | L12*L15*L23 |
| 36 | 85 | L12*L15*L27 |
| 37 | 84 | L12*L15*L34 |
| 38 | 91 | L12*L23*L34 |
| 39 | 147 | L13*L14*L26 |
| 40 | 71 | L14*L14*L19 |
| 41 | 6 | L14*L14*L26 |
| 42 | 30 | L14*L14*L30 |
| 43 | 13 | L14*L17*L19 |
| 44 | 16 | L14*L20*L29 |
| 45 | 13 | L14*L29*L34 |
| 46 | 74 | L16*L29*L34 |
| 47 | 69 | L17*L26*L27 |
| 48 | 10 | L19*L29*L31 |
| 49 | 71 | L20*L22*L29 |
| 50 | 69 | L21*L27*L27 |
| 51 | 6 | L23*L29*L33 |
| 52 | 47 | ABC+ |
| 53 | 107 | ABC+*L12 |
| 54 | 45 | ABC+*L19 |
| 55 | 11 | ABC+*L23 |
| 56 | 8 | ABC+*L34 |
| 57 | 75 | ABH+ |
| 58 | 45 | ABH+*L18 |
| 59 | 406 | ABH+*L21 |
| 60 | 2 | ABH+*L23 |
| 61 | 22 | ABH+*L33 |
| 62 | 2 | ACF+*L17 |
| 63 | 8 | ACH+*L17 |
| 64 | 73 | AGH+ |
| 65 | 35 | AGH+*L3 |
| 66 | 18 | AGH+*L9 |
| 67 | 56 | AGH+*L23 |
| 68 | 72 | AGH+*L26 |
| 69 | 91 | AGH+*L34 |
| 70 | 16 | BCD+ |
| 71 | 4 | BCD+*L23 |
| 72 | 172 | BCF+*L17 |
| 73 | 13 | BCH+*L17 |
| 74 | 107 | CDE+ |
| 75 | 33 | CDE+*L23 |
| 76 | 12 | DEF+ |
| 77 | 16 | EFG+ |
| 78 | 8 | EFG+*L23 |
| 79 | 35 | GHX+*L2 |
| 80 | 10 | GHX+*L27 |
| 81 | 141 | FHX- |
| 82 | 71 | FHX-*L16 |
| 83 | 71 | FHX-*L22 |
| 84 | 66 | AFX+*L14 |
| 85 | 35 | AGX-*L5 |
| 86 | 10 | ADX+*L29 |
| 87 | 74 | BCX+*L17 |
| 88 | 10 | EHX-*L11 |
| 89 | 335 | BGX- |
| 90 | 45 | BGX-*L2 |
| 91 | 16 | BGX-*L22 |
| 92 | 25 | BGX-*L27 |
| 93 | 227 | CGX+ |
| 94 | 45 | CGX+*L2 |
| 95 | 84 | CGX+*L14 |
| 96 | 16 | CGX+*L22 |
| 97 | 69 | CGX+*L27 |
| 98 | 12 | EP*L14 |

### Row R3

This row has 99 terms and exact bound

    B(W)=-938013619624565492922278536615662619399213/775263674328877845809229230862542000000000<0.

| i | coefficient | factors |
|---:|---:|---|
| 1 | 9 | L17 |
| 2 | 6 | L0*L15 |
| 3 | 7 | L0*L27 |
| 4 | 1 | L0*L34 |
| 5 | 7 | L4*L10 |
| 6 | 11 | L4*L24 |
| 7 | 4 | L9*L11 |
| 8 | 9 | L9*L12 |
| 9 | 11 | L10*L24 |
| 10 | 23 | L16*L29 |
| 11 | 1 | L17*L21 |
| 12 | 1 | L17*L24 |
| 13 | 32 | L21*L31 |
| 14 | 1 | L22*L29 |
| 15 | 12 | L29*L33 |
| 16 | 10 | L0*L12*L21 |
| 17 | 1 | L0*L19*L27 |
| 18 | 9 | L0*L23*L27 |
| 19 | 2 | L2*L23*L23 |
| 20 | 100 | L4*L7*L21 |
| 21 | 96 | L4*L16*L21 |
| 22 | 17 | L4*L18*L31 |
| 23 | 3 | L4*L21*L32 |
| 24 | 11 | L4*L21*L33 |
| 25 | 78 | L4*L24*L30 |
| 26 | 6 | L4*L30*L31 |
| 27 | 1 | L4*L33*L33 |
| 28 | 1 | L5*L7*L17 |
| 29 | 8 | L5*L12*L25 |
| 30 | 1 | L5*L17*L35 |
| 31 | 33 | L6*L11*L34 |
| 32 | 97 | L6*L12*L21 |
| 33 | 33 | L6*L14*L19 |
| 34 | 5 | L6*L20*L29 |
| 35 | 20 | L7*L16*L29 |
| 36 | 15 | L7*L21*L29 |
| 37 | 1 | L8*L17*L30 |
| 38 | 15 | L10*L16*L21 |
| 39 | 13 | L10*L18*L31 |
| 40 | 25 | L10*L19*L35 |
| 41 | 1 | L10*L23*L24 |
| 42 | 41 | L11*L14*L34 |
| 43 | 9 | L12*L15*L20 |
| 44 | 9 | L12*L15*L34 |
| 45 | 3 | L12*L21*L25 |
| 46 | 41 | L12*L23*L23 |
| 47 | 3 | L12*L23*L25 |
| 48 | 1 | L12*L25*L33 |
| 49 | 52 | L14*L14*L19 |
| 50 | 9 | L14*L14*L30 |
| 51 | 2 | L14*L17*L19 |
| 52 | 1 | L14*L29*L34 |
| 53 | 7 | L16*L29*L34 |
| 54 | 2 | L16*L29*L35 |
| 55 | 7 | ABC+ |
| 56 | 1 | ABC+*L19 |
| 57 | 9 | ABC+*L23 |
| 58 | 1 | ABH+ |
| 59 | 2 | ABH+*L23 |
| 60 | 37 | AGH+ |
| 61 | 10 | AGH+*L21 |
| 62 | 41 | AGH+*L23 |
| 63 | 3 | AGH+*L25 |
| 64 | 36 | CDE+ |
| 65 | 84 | CDE+*L30 |
| 66 | 24 | DEF+ |
| 67 | 12 | DEF+*L18 |
| 68 | 8 | DEG+*L4 |
| 69 | 34 | EFG+ |
| 70 | 6 | EFG+*L5 |
| 71 | 4 | EFG+*L21 |
| 72 | 6 | C_FGH*L4 |
| 73 | 2 | C_FGH*L24 |
| 74 | 2 | FGX+*L24 |
| 75 | 16 | FGX+*L31 |
| 76 | 32 | FHX- |
| 77 | 33 | FHX-*L6 |
| 78 | 45 | FHX-*L14 |
| 79 | 25 | FHX-*L16 |
| 80 | 7 | FHX-*L22 |
| 81 | 2 | FHX-*L25 |
| 82 | 7 | AFX+*L14 |
| 83 | 100 | CDX+*L17 |
| 84 | 3 | CFX+*L0 |
| 85 | 17 | DEX+*L4 |
| 86 | 1 | DEX+*L10 |
| 87 | 17 | EHX-*L5 |
| 88 | 38 | EHX-*L11 |
| 89 | 42 | CGX- |
| 90 | 120 | CGX-*L7 |
| 91 | 8 | CGX-*L15 |
| 92 | 1 | CGX-*L33 |
| 93 | 3 | CGX-*L35 |
| 94 | 142 | DGX+ |
| 95 | 1 | DGX+*L33 |
| 96 | 2 | DGX+*L35 |
| 97 | 2 | EGX+*L31 |
| 98 | 4 | EP*L21 |
| 99 | 1 | EP*L24 |

### Row R4

This row has 128 terms and exact bound

    B(W)=-10467150078529364701488268370754402674385895388309126069/17472450204343605936458708488697760891746428280000000000<0.

| i | coefficient | factors |
|---:|---:|---|
| 1 | 55 | L0*L21 |
| 2 | 20 | L0*L27 |
| 3 | 1 | L2*L17 |
| 4 | 1 | L5*L6 |
| 5 | 79 | L6*L17 |
| 6 | 5 | L6*L27 |
| 7 | 26 | L8*L17 |
| 8 | 20 | L14*L17 |
| 9 | 3 | L17*L17 |
| 10 | 3 | L17*L30 |
| 11 | 3 | L22*L29 |
| 12 | 3 | L0*L2*L15 |
| 13 | 29 | L0*L2*L23 |
| 14 | 2 | L0*L2*L30 |
| 15 | 1 | L0*L2*L35 |
| 16 | 1 | L0*L6*L19 |
| 17 | 14 | L0*L9*L12 |
| 18 | 4 | L0*L9*L18 |
| 19 | 347 | L0*L12*L15 |
| 20 | 395 | L0*L12*L21 |
| 21 | 191 | L0*L12*L23 |
| 22 | 29 | L0*L12*L33 |
| 23 | 4 | L0*L15*L19 |
| 24 | 74 | L0*L15*L27 |
| 25 | 1 | L0*L17*L19 |
| 26 | 43 | L0*L23*L27 |
| 27 | 5 | L0*L27*L33 |
| 28 | 3 | L2*L15*L15 |
| 29 | 31 | L2*L15*L23 |
| 30 | 1 | L2*L33*L35 |
| 31 | 2 | L4*L17*L20 |
| 32 | 2 | L5*L6*L30 |
| 33 | 133 | L5*L17*L21 |
| 34 | 11 | L5*L23*L25 |
| 35 | 9 | L5*L25*L25 |
| 36 | 9 | L6*L6*L18 |
| 37 | 19 | L6*L7*L27 |
| 38 | 166 | L6*L13*L21 |
| 39 | 106 | L6*L13*L25 |
| 40 | 29 | L6*L13*L33 |
| 41 | 11 | L6*L15*L30 |
| 42 | 97 | L6*L18*L25 |
| 43 | 7 | L6*L24*L27 |
| 44 | 19 | L6*L27*L30 |
| 45 | 21 | L9*L9*L11 |
| 46 | 11 | L9*L9*L12 |
| 47 | 21 | L9*L11*L21 |
| 48 | 4 | L9*L11*L23 |
| 49 | 9 | L9*L11*L33 |
| 50 | 108 | L10*L14*L14 |
| 51 | 2 | L10*L17*L27 |
| 52 | 11 | L11*L14*L21 |
| 53 | 142 | L11*L16*L25 |
| 54 | 95 | L11*L20*L33 |
| 55 | 28 | L11*L21*L25 |
| 56 | 60 | L11*L25*L25 |
| 57 | 96 | L11*L25*L33 |
| 58 | 416 | L12*L15*L15 |
| 59 | 21 | L12*L15*L23 |
| 60 | 15 | L12*L20*L25 |
| 61 | 266 | L12*L21*L35 |
| 62 | 32 | L12*L25*L34 |
| 63 | 29 | L12*L33*L34 |
| 64 | 182 | L14*L14*L19 |
| 65 | 4 | L14*L14*L26 |
| 66 | 69 | L14*L14*L30 |
| 67 | 56 | L14*L17*L19 |
| 68 | 4 | L14*L23*L29 |
| 69 | 29 | L17*L17*L19 |
| 70 | 101 | L17*L19*L31 |
| 71 | 26 | ABC+ |
| 72 | 78 | ABC+*L15 |
| 73 | 43 | ABC+*L23 |
| 74 | 5 | ABC+*L33 |
| 75 | 7 | ABH+ |
| 76 | 29 | ABH+*L23 |
| 77 | 2 | ABH+*L30 |
| 78 | 1 | ABH+*L35 |
| 79 | 116 | AGH+ |
| 80 | 1 | AGH+*L7 |
| 81 | 14 | AGH+*L9 |
| 82 | 176 | AGH+*L15 |
| 83 | 394 | AGH+*L21 |
| 84 | 191 | AGH+*L23 |
| 85 | 29 | AGH+*L33 |
| 86 | 8 | BCD+ |
| 87 | 19 | BCD+*L7 |
| 88 | 7 | BCD+*L24 |
| 89 | 19 | BCD+*L30 |
| 90 | 1 | BEH+*L17 |
| 91 | 9 | CDE+ |
| 92 | 11 | CDE+*L23 |
| 93 | 9 | CDE+*L25 |
| 94 | 2 | CDE+*L30 |
| 95 | 9 | DEF+*L9 |
| 96 | 135 | DEF+*L20 |
| 97 | 60 | DEF+*L25 |
| 98 | 92 | DEF+*L34 |
| 99 | 2 | EFG+*L5 |
| 100 | 219 | EFG+*L18 |
| 101 | 11 | EFG+*L25 |
| 102 | 2 | C_FGH*L2 |
| 103 | 132 | C_FGH*L6 |
| 104 | 89 | FGX+*L6 |
| 105 | 6 | FGX+*L25 |
| 106 | 59 | FHX- |
| 107 | 127 | FHX-*L8 |
| 108 | 182 | FHX-*L14 |
| 109 | 139 | FHX-*L24 |
| 110 | 4 | FHX-*L32 |
| 111 | 135 | CFX+*L17 |
| 112 | 83 | DEX+*L17 |
| 113 | 21 | EFX+ |
| 114 | 21 | EFX+*L7 |
| 115 | 219 | EFX+*L13 |
| 116 | 53 | EFX+*L15 |
| 117 | 4 | EFX+*L23 |
| 118 | 230 | EFX+*L33 |
| 119 | 132 | DGX- |
| 120 | 1 | DGX-*L1 |
| 121 | 213 | DGX-*L9 |
| 122 | 110 | DGX-*L15 |
| 123 | 106 | DGX-*L25 |
| 124 | 29 | DGX-*L33 |
| 125 | 224 | EGX+ |
| 126 | 185 | EGX+*L7 |
| 127 | 219 | EGX+*L10 |
| 128 | 17 | EGX+*L31 |

### Row R5

This row has 85 terms and exact bound

    B(W)=-2366085227912799585274761149912137080934401068706713/22117025575118488527162922137592102394615732000000000<0.

| i | coefficient | factors |
|---:|---:|---|
| 1 | 1 | L29 |
| 2 | 1 | L0*L2 |
| 3 | 7 | L0*L15 |
| 4 | 8 | L0*L23 |
| 5 | 8 | L0*L27 |
| 6 | 4 | L5*L6 |
| 7 | 32 | L6*L11 |
| 8 | 33 | L6*L13 |
| 9 | 73 | L8*L10 |
| 10 | 52 | L10*L17 |
| 11 | 34 | L11*L21 |
| 12 | 10 | L11*L33 |
| 13 | 25 | L12*L21 |
| 14 | 1 | L14*L14 |
| 15 | 1 | L29*L33 |
| 16 | 1 | L0*L7*L27 |
| 17 | 6 | L0*L12*L31 |
| 18 | 7 | L0*L21*L30 |
| 19 | 1 | L2*L17*L34 |
| 20 | 1 | L2*L23*L23 |
| 21 | 1 | L4*L17*L31 |
| 22 | 1 | L5*L6*L20 |
| 23 | 1 | L6*L7*L11 |
| 24 | 2 | L7*L8*L10 |
| 25 | 12 | L7*L11*L21 |
| 26 | 7 | L7*L12*L15 |
| 27 | 77 | L7*L12*L21 |
| 28 | 14 | L8*L16*L29 |
| 29 | 4 | L10*L24*L24 |
| 30 | 1 | L10*L35*L35 |
| 31 | 13 | L11*L16*L21 |
| 32 | 72 | L11*L21*L33 |
| 33 | 12 | L11*L25*L25 |
| 34 | 1 | L11*L25*L33 |
| 35 | 11 | L12*L15*L23 |
| 36 | 51 | L12*L23*L23 |
| 37 | 4 | L13*L14*L22 |
| 38 | 8 | L14*L14*L19 |
| 39 | 1 | L14*L14*L28 |
| 40 | 6 | L14*L14*L30 |
| 41 | 1 | L15*L27*L33 |
| 42 | 18 | L16*L21*L29 |
| 43 | 1 | L17*L19*L31 |
| 44 | 1 | L21*L29*L32 |
| 45 | 8 | ABC+ |
| 46 | 1 | ABC+*L7 |
| 47 | 2 | ABH+ |
| 48 | 1 | ABH+*L23 |
| 49 | 45 | AGH+ |
| 50 | 6 | AGH+*L7 |
| 51 | 1 | AGH+*L21 |
| 52 | 51 | AGH+*L23 |
| 53 | 5 | CDE+ |
| 54 | 14 | CEF+*L21 |
| 55 | 58 | DEF+ |
| 56 | 84 | DEF+*L16 |
| 57 | 85 | DEF+*L21 |
| 58 | 7 | DEF+*L25 |
| 59 | 2 | DEF+*L33 |
| 60 | 15 | C_FGH*L18 |
| 61 | 100 | FGX+ |
| 62 | 69 | FGX+*L7 |
| 63 | 91 | FGX+*L24 |
| 64 | 8 | FGX+*L32 |
| 65 | 15 | GHX+*L11 |
| 66 | 16 | FHX- |
| 67 | 57 | FHX-*L7 |
| 68 | 15 | FHX-*L13 |
| 69 | 1 | FHX-*L22 |
| 70 | 6 | FHX-*L31 |
| 71 | 1 | AFX+*L14 |
| 72 | 8 | AFX+*L17 |
| 73 | 1 | BFX+*L17 |
| 74 | 1 | CFX+*L0 |
| 75 | 18 | CFX+*L17 |
| 76 | 62 | DFX+*L14 |
| 77 | 75 | DFX+*L17 |
| 78 | 1 | CGX-*L6 |
| 79 | 15 | CGX-*L8 |
| 80 | 83 | DGX-*L8 |
| 81 | 1 | DGX-*L35 |
| 82 | 15 | EGX- |
| 83 | 84 | EGX-*L7 |
| 84 | 1 | EL*L8 |
| 85 | 1 | EL*L14 |

### Complete consequence

Section 1 excludes the quadrilateral cap hull. For the triangular cap
hull, Section 3 excludes h>=e, while the five exhaustive ray cases of
Section 4 are contradicted by Section 7 when h<=e. Thus no upper
exterior cap can contain two free points at threshold s=93/1000.

Together with N7_OPPOSITE_UPPER_CAPS.md, at most one free point can
lie outside the seven-contact boundary heptagon. The exhaustive N7
placement catalogue has only two remaining rows, up to reflection:

| Upper exterior free points | Heptagon-interior free points |
|---:|---:|
| 0 | 3 |
| 1 | 2 |

Neither of these two rows is declared excluded here. The strict
candidate-sign chamber within the second row is handled separately
by N7_PROJECTED_SIGNS.md. The remaining global sign and placement
coverage is still an explicit obligation.
