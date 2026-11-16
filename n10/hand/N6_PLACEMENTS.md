# Six boundary points: the first exhaustive placement reduction

Use the normalized six actual contacts

    A=(0,a), H=(0,h), B=(b,0), C=(c,0), E=(1,e), F=(f,1),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

There are four further points strictly inside the square. All areas
below are doubled. Assume every actual unsigned triangle area is at
least s=93/1000, as is necessary for a putative N6 maximizer.

## 1. The lower-left empty-corner cap is impossible

The cap beyond AB has two incident double sides. The exact argument in
N7_PLACEMENTS.md Section 1 uses only the actual AH and BC pairs, so
applies unchanged here. Explicitly, a point (x,y) in that cap would give

    ab-a*x-b*y>=s, x>=s/(1-a), y>=s/(1-b),
    s<=ab(1-a)(1-b)/(1-ab)
      <=(5sqrt(5)-11)/2<1/11<s,

a contradiction. No point is on AB, because that would be an actual
zero-area triangle.

The boundary hexagon K has cyclic order A,B,C,E,F,H. Every free point
is consequently inside K or in one of its other three corner caps

    T_R=int conv{C,(1,0),E},
    T_T=int conv{E,(1,1),F},
    T_L=int conv{F,(0,1),H}.

These alternatives are disjoint and exhaustive. All their actual chord
boundaries are excluded by positive minimum area.

## 2. The lower and upper anchor regions each have capacity two

The line HC splits K into the lower quadrilateral HABC and the upper
quadrilateral HCEF. The lower one is contained in the virtual triangle
with vertices (0,0),H,C, of doubled area hc<=1. If it contained three
free points, those points together with H,C,A,B would be seven actual
points in that triangle, including its actual endpoints H,C. This
contradicts the seven-point endpoint theorem in THREE_CORNERS.md.
Thus at most two free points are in HABC.

The upper quadrilateral has doubled area

    A(HCEF)=1-(h-e)(c-f)<=1.

QUADRILATERAL_THREE.md therefore places at most two free points inside
it as well. All three exterior caps in Section 1 are above HC: their
vertices are in that closed half-plane, and their interiors are strict.
Consequently every free point below HC is in HABC, and every other
free point is in HCEF or one of the three exterior caps.

Let k be the lower count, j the upper-anchor-quadrilateral count, and
r,t,l the counts in T_R,T_T,T_L. Every configuration has

    0<=k,j<=2,       k+j+r+t+l=4.                      (1)

In particular, if the boundary hexagon is the entire actual hull, the
only possible counts are exactly

    two free points in HABC, two free points in HCEF.  (2)

This does not exclude that remaining exact-hull case.

## 3. No exterior cap contains all four free points

Put L=h-a, M=c-b. The actual areas aM>=s and bL>=s imply

    hc>=s*c^2/[b(c-b)]>=4s.

Using e<=h and f<=c gives

    A(T_R)=(1-c)e<=h-hc<=1-4s,
    A(T_L)=f(1-h)<=c-hc<=1-4s.

The opposite cap has

    A(T_T)=(1-e)(1-f)<=(1-a)(1-b)<=(1-s)^2,

because a,b>=s. Each of these three caps has its two edge endpoints
as actual points. If all four free points belonged to it, the
six-point endpoint theorem in SIX_POINT_ENDPOINT.md would require
its doubled area to be at least Gamma3*s, where
Gamma3=(11+3sqrt(5))/2. Both upper bounds are smaller:

    Gamma3*s> (4427/500)s > (1-s)^2 > 1-4s.

The middle gap is 773/1000000>0. Thus r,t,l<=3 in (1).
Transposition exchanges r and l while preserving the normalized
domain, so r>=l may be chosen if useful in a later case catalogue.

## 4. Scope of the remaining N6 task

Every surviving normalized N6 configuration satisfies (1), with all
five counts at their stated locations, and r,t,l<=3. The exact-hull
case is (2); all other cases have at least one exterior-cap point.
N6_PROJECTED_CHAMBERS.md supplies strict sharp bounds for two broad
candidate-like assignments of the four free points. A complete global
N6 proof must still force one of those assignments or exclude every
other placement. Neither this first count reduction nor the projected
chambers alone close HP12-N6.
