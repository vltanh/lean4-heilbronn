# Eight boundary points: the interior-point line cannot cut off one or two vertices

This note proves that both interior points lie inside the boundary octagon
and excludes the complete 1/7 and 2/6 boundary sign patterns of their line.
The proof uses actual boundary ears,
the triangular occupancy bound proved in TRIANGLE_OCCUPANCY.md, and the
short six-point argument reproduced below. It does not assume the
candidate's signs or symmetries. The 3/5 pattern is subsequently excluded
in N8_THREE_FIVE.md. N8_COMPLETE.md assembles the separate proofs closing
both 4/4 alternatives and the sharp equality theorem.

Every area in this note is a DOUBLED area. Put

    sigma=93/1000,       Gamma2=4+2sqrt(3).

As in ASYMMETRIC_SIGN_CHAMBER.md, write the eight boundary points in
cyclic order as

    A=(0,a1),       B=(a2,0),       C=(1-b1,0),     D=(1,b2),
    E=(1,1-a3),     F=(1-a4,1),     G=(b3,1),       H=(0,1-b4).

The other points O,P are strictly interior. Assume every actual doubled
triangle area is at least sigma. In particular, no three actual points
are collinear, and all four same-side spans are positive. None of the
boundary points is on the line OP.

## 1. Octagon containment, boundary ears, and the cap reduction

First, every actual interior point lies strictly inside the convex hull
of the eight boundary points. Its complement in the square consists of
the four empty-corner triangles. By a square symmetry, suppose a point
X=(x,y) were in the lower-left one, with A=(0,a), B=(b,0). Let L be the
span between the two actual left-side points and J the span between the
two actual bottom-side points. Then L<=1-a and J<=1-b. Triangles formed
by X and those side pairs give

    x>=sigma/L>=sigma/(1-a),
    y>=sigma/J>=sigma/(1-b).

The triangle ABX, with its corner-side orientation, gives

    ab-a*x-b*y>=sigma.

Thus, for r=sqrt(ab),

    sigma <= ab*(1-a)*(1-b)/(1-ab)
          <= r^2*(1-r)/(1+r)
          <= (5sqrt(5)-11)/2 <1/11<sigma,              (0)

a contradiction. The middle inequality uses a+b>=2r. The derivative
of r^2*(1-r)/(1+r) is -2r*(r^2+r-1)/(1+r)^2, giving the maximum
at r=(sqrt(5)-1)/2. The strict bound by 1/11 follows from
sqrt(5)<123/55, because 5*55^2=15125<15129=123^2. If X lies on the
octagon boundary, an actual triple is collinear, which is already
excluded. This proves the required strict containment of both O and P.

The eight consecutive boundary-ear inequalities are

    a1*(1-a2-b1)>=sigma,    b2*(1-a2-b1)>=sigma,
    b1*(1-a3-b2)>=sigma,    a4*(1-a3-b2)>=sigma,
    a3*(1-a4-b3)>=sigma,    b4*(1-a4-b3)>=sigma,
    b3*(1-a1-b4)>=sigma,    a2*(1-a1-b4)>=sigma.       (1)

They imply every a_i,b_i is at least sigma, because each same-side span
is at most one. They also imply

    a_i,b_i <= 1-4sigma=157/250.                    (2)

For example, the two ears involving b2 and b1 give

    1-a2 >= b1+sigma/b2
          >= sigma/(1-b2)+sigma/b2
           = sigma/[b2*(1-b2)] >= 4sigma.

Here b1*(1-a3-b2)>=sigma gives b1>=sigma/(1-b2). The other seven
instances of (2) follow by square rotations and reflections.

The line OP cuts the convex boundary octagon in a segment whose interior
contains O and P. On each side of the line, the boundary vertices form a
single consecutive arc. If one arc consists of k vertices, the whole
line segment in the octagon lies in the convex hull of those k vertices
and their two neighboring vertices: its endpoints lie on the two edges
joining that arc to its neighbors. Thus, for k=1, O,P lie strictly inside
an actual boundary-ear triangle. For k=2 they lie strictly inside an
actual four-vertex cap. Strictness follows because O,P are interior to
the octagon and no actual triple is collinear.

When k=1, that ear triangle has doubled area at most 1-4sigma by (2).
But a triangle containing two other actual points has doubled area at
least Gamma2*sigma, by TRIANGLE_OCCUPANCY.md Section 1. This is impossible:

    Gamma2*sigma > 7sigma =651/1000 >157/250.

Hence the 1/7 sign pattern is excluded.

There are exactly two geometric kinds of consecutive pairs: the two
vertices lie on the same square side, or they lie on the two sides
meeting at one corner. Square symmetries reduce them to {A,H} and {H,G},
respectively. The next two sections exclude these complete 2/6 cases.

## 2. A pair on the same square side

Suppose A,H form the shorter arc. By the cap reduction, O,P are strictly
inside the quadrilateral BAHG. Its doubled area is

    W=a2*(1-a1)+b3*(1-b4).                           (3)

We first prove W<8sigma from the boundary ears alone. Put

    X=1-a2-b1,       Y=1-a4-b3,
    T=1-sigma/X-sigma/Y.

The bottom and top ears in (1) give

    a1,b2>=sigma/X,       a3,b4>=sigma/Y.

Consequently 0<1-a3-b2<=T<1. The right ears now give

    b1,a4>=sigma/T,
    a2<=1-X-sigma/T,       b3<=1-Y-sigma/T.

Both upper bounds on the last line are positive, since a2,b3>0.
Substitution in (3), with positive factors throughout, gives

    W <= (1-X-sigma/T)*(1-sigma/X)
         +(1-Y-sigma/T)*(1-sigma/Y)
       = 1+T-X-Y+sigma-sigma/T.

The reciprocal arithmetic-geometric mean inequality yields

    X+Y >= 4sigma/(1-T).

Therefore

    W <= 1+T+sigma-sigma/T-4sigma/(1-T) <8sigma.     (4)

For completeness, the strict last inequality is equivalent, after
multiplication by T*(1-T)>0, to

    p(T)=T^3-7sigma*T^2+(10sigma-1)*T+sigma >0.

Set z=T-1/2, so z>-1/2. Then

    p(T)=z^3+(849/1000)z^2+(29/1000)z+81/4000
        >=(349/1000)z^2+(29/1000)z+81/4000 >0.

The final quadratic has positive leading coefficient and discriminant
-6857/250000<0. This proves (4).

We recall why a convex quadrilateral with two other actual points inside
it has doubled area at least 8sigma. If some hull diagonal puts both
points on the same side, the occupied triangle has doubled area at least
Gamma2*sigma and the other at least sigma, giving more than 8sigma.
Otherwise both diagonals separate the two points. Apply an affine map
taking the diagonal intersection to the origin and the two diagonal
lengths to one. Write the hull vertices and the interior points as

    (a,0),(0,b),(-c,0),(0,-d),       a+c=b+d=1,
    (p,-q),(-r,w),                  p,q,r,w>0.

The normalized doubled hull area is one. If k is the normalized minimum
doubled triangle area, full-diagonal triangles give p,q,r,w>=k. The
corner triangles containing the two points give

    ad>=k+dp+aq>=k*(1+a+d),
    bc>=k+br+cw>=k*(1+b+c).

One of a+d,b+c is at most one. Denote that sum by z. Then

    k<=z^2/[4*(1+z)]<=1/8.

The final inequality is equivalent to (1-z)*(2z+1)>=0. Undoing the affine
map proves the 8sigma lower bound, which contradicts (4). Thus a same-side
pair cannot be the shorter arc.

## 3. Corner-triangle capacity and a pair across a square corner

We first prove a stronger statement that does not prescribe any OP signs:
each virtual square-corner triangle containing four consecutive boundary
anchors contains at most one of O,P. For the upper-left corner that
triangle is

    T=conv{A,(0,1),F}.

It contains the four actual anchors A,H,G,F, with A,F as two of its
vertices. Its doubled area satisfies

    Omega=(1-a1)*(1-a4)<=(1-sigma)^2.                (5)

If it also contained O,P, the six-point endpoint theorem in
SIX_POINT_ENDPOINT.md would give

    Omega >= Gamma3*sigma,       Gamma3=(11+3sqrt(5))/2.

This contradicts (5). The strict rational gap is

    Gamma3*sigma-(1-sigma)^2 >773/1000000>0,

using sqrt(5)>559/250, whose square comparison is 312500>312481.
The same conclusion holds for each of the other three corners by square
symmetry. This is a capacity statement for the whole virtual triangle,
not just its four-anchor quadrilateral, and it requires no particular
orientation of the line OP.

Now suppose H,G form the shorter boundary arc of OP. The cap reduction
in Section 1 puts both O,P inside AHGF, hence inside T. The preceding
capacity statement gives a contradiction. Thus the across-corner pair
is excluded, completing the second kind of 2/6 pattern.

## Result and exhaustive sign catalogue

For any competitive eight-boundary configuration, each open side of OP
contains at least three boundary points. Thus the only remaining arc
sizes are 3/5 and 4/4. The argument above covers every shorter arc of size
one or two, including both kinds of adjacent pair, without a coordinate
orientation hypothesis on OP.

Here is the exhaustive remaining catalogue, up to square rotations and
reflections and reversal of the directed line. A plus sign denotes the
positive side of directed OP.

| Arc sizes | Representative positive vertices | Edges crossed by OP | Remaining obligation |
|---|---|---|---|
| 3/5 | H,G,F | AH and EF | Completely excluded in N8_THREE_FIVE.md |
| 4/4, corner edges | A,H,G,F | AB and EF | N8_CORNER_OBLIQUE.md closes the failures described below |
| 4/4, same-side edges | H,G,F,E | AH and DE | N8_SIDE_CONTAINED.md and N8_SIDE_OUTSIDE.md exclude the whole class |

To see completeness, the boundary edges alternate between same-side
edges AH,BC,DE,FG and corner edges AB,CD,EF,GH. An arc of three vertices
has one endpoint edge of each kind. Rotation changes its starting edge
by two places, and reflection interchanges its two ends, so all such
arcs form one square-symmetry class. An arc of four vertices has endpoint
edges of the same kind. The two possibilities in the table are exactly
these two edge-parity classes; rotation and reflection are transitive
within each. The line cannot pass through a boundary vertex because an
actual OP triangle would then have zero area.

For normalized maximizing configurations, the projection-overlap
inequalities in NORMALIZATION.md include

    a1+a3<=1,       a2+a4<=1.

Consequently every interior point of AB has both coordinates strictly
smaller than those of every interior point of EF: their coordinate
ranges are [0,a2],[0,a1] and [1-a4,1],[1-a3,1], respectively, and
the edge intersections avoid the endpoints. In the corner-edge 4/4
case, therefore, label O before P along the segment from AB to EF.
Then U=x_P-x_O>0, V=y_P-y_O>0, and the four OP signs are exactly

    AOP+, BOP-, EOP-, FOP+.

If additionally

    ADO+, BGO-, CFP+, EHP+,

the complete sharp theorem in ASYMMETRIC_SIGN_CHAMBER.md applies. Its
failure alternatives are precisely the corner-edge case with at least
one of these four oblique signs reversed. N8_THREE_FIVE.md excludes the
3/5 class. N8_SIDE_CONTAINED.md and N8_SIDE_OUTSIDE.md exclude the
same-side-edge 4/4 class, and N8_CORNER_OBLIQUE.md excludes all four
oblique sign failures in the corner-edge class. These separate arguments
are assembled with the sharp theorem in N8_COMPLETE.md.
