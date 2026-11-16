# Six boundary points: complete exterior-count exclusions

Use the normalized N6 contacts and the five counts of
N6_PLACEMENTS.md:

    A=(0,a), H=(0,h), B=(b,0), C=(c,0), E=(1,e), F=(f,1),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

The free-point counts below HC, in HCEF, and in the right, top, left
exterior caps are k,j,r,t,l. They sum to four, and k,j<=2. All actual
unsigned doubled areas are at least s=93/1000. This note excludes whole
count alternatives; it does not claim that the surviving catalogue is
empty.

## 1. Neither side exterior cap contains three free points

The actual anchor areas give

    ABC=a(c-b)>=s,       ABH=b(h-a)>=s,

and therefore a,b>=s. The two upper anchor ears satisfy

    CEF=1-c+e(c-f)<=1-f,
    EFH=1-h+f(h-e)<=1-e,

using c>=f, h>=e, and e,f<=1. Hence e,f<=1-s.

Suppose the left exterior cap contains three free points. The virtual
triangle with vertices A,(0,1),F contains those three points and the
three actual contacts A,H,F. Two of its vertices, A and F, are actual.
Its doubled area is

    f(1-a)<=(1-s)^2=822649/1000000.

The endpoint-six theorem in SIX_POINT_ENDPOINT.md instead requires
this area to be at least Gamma3*s, where
Gamma3=(11+3sqrt(5))/2>4427/500. The strict rational gap is

    (4427/500)s-(1-s)^2=773/1000000>0.

This is a contradiction. Transposition of the square gives the same
argument for three right-cap points, using the actual endpoints B,E
and virtual triangle B,(1,0),E. Thus

    r<=2,       l<=2.                                  (1)

All points counted in these containers are actual configuration points;
only the remaining corner vertex of each container is virtual.

## 2. The two side caps cannot each contain two free points

If r=l=2, the four-point endpoint theorem in TYPE_II.md Section 1
applied to each original side cap gives

    e(1-c)>=3s,       f(1-h)>=3s.

By the normalized overlaps c>=f and h>=e, this implies

    e(1-f)>=3s,       f(1-e)>=3s.                      (2)

If e<=f, then e(1-f)<=e(1-e)<=1/4. If f<=e, the other
expression is at most 1/4. Both possibilities contradict

    3s-1/4=29/1000>0.

Consequently the entire exterior count (r,t,l)=(2,0,2), with no
remaining free points, is excluded. No hull-orientation assumption
was made about either pair of cap points.

## 3. Three top-cap points forbid a side-cap point

Suppose t=3 and r=1. The top virtual triangle E,(1,1),F contains
five actual points, including its two endpoints E,F. The five-point
endpoint theorem gives

    (1-e)(1-f)>=(3+2sqrt(2))*s>(29/5)*s.              (3)

Let X be the sole right-cap point. The four actual points B,C,X,E
have a nontriangular hull. Indeed B,C are distinct contacts on the
bottom side; E is on the right side; and X lies strictly beyond the
actual chord CE. In their cyclic order B,C,X,E all four turns are
positive: BCX>0 because X is above the bottom side, CXE>0 is the cap
condition, and EBC>0 is the anchor orientation. For the remaining turn,
write X=(x,y). The cap condition gives e*x>e*c+(1-c)y and y<e, so

    XEB=e(x-b)-(1-b)y>(c-b)(e-y)>0.

Thus their hull is a convex quadrilateral.

They lie in the virtual triangle B,(1,0),E. The nontriangular part of
the four-point endpoint theorem therefore gives

    e(1-b)>=4s.                                       (4)

But the sum of these two container areas is

    (1-e)(1-f)+e(1-b)
       =1-[be+f(1-e)]
       <=1-b<=1-s,                                   (5)

because f>=b. Equations (3)--(5) contradict

    (29/5+5)s-1=11/2500>0.

Transposition gives the same contradiction for t=3,l=1. Together
with Section 1, the complete remaining catalogue therefore satisfies

    0<=r,l<=2,       0<=t<=3,
    (r,l)!=(2,2),
    t=3 implies r=l=0 and k+j=1.                     (6)

The all-four-in-one-cap alternatives were already excluded in
N6_PLACEMENTS.md. Every strict chord boundary would be an actual
collinear triple, so these exclusions omit no positive-minimum face.
N6_SIDE_PAIR_REDUCTION.md further proves that every side pair has a
triangular actual cap hull and the stronger Gamma2 endpoint cost.
In particular (r,t,l)=(2,2,0) and its reflection are impossible.
N6_SIDE_PAIR_OPPOSITE.md then excludes every side pair together
with any opposite-side point, independently of the tenth point.
Thus r=2 forces l=0, and l=2 forces r=0.
The entire k=2 family is now closed in N6_TWO_LOWER_COMPLETE.md.
Surviving exterior placements with k=0 or k=1 remain separate
obligations in ROADMAP.md.
