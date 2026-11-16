# Seven boundary points: upper endpoint capacities and the three-exterior exclusion

This note excludes the entire N7 count with two free points in one upper
exterior cap and one in the other. Together with the earlier three-in-one-cap
exclusion, it proves that every competitive normalized N7 configuration has
at least one free point inside its boundary heptagon. It also supplies chord
placements in both remaining two-exterior counts.

All areas are doubled. Put

    s=93/1000,       K5=3+2sqrt(2),
    G=(11+3sqrt(5))/2.

Use the normalization and notation of N7_PLACEMENTS.md:

    A=(0,a), H=(0,h), B=(b,0), C=(c,0),
    D=(1,d), E=(1,e), F=(f,1),

with 0<a<h<1, 0<b<c<1, 0<d<e<1, and b<=f<=c.
Every actual unsigned doubled triangle area is at least s. Write

    T_L=int conv{H,(0,1),F},
    T_R=int conv{E,(1,1),F}

for the two upper exterior caps. No free point lies in a lower exterior
cap, by N7_PLACEMENTS.md.

## 1. Two larger endpoint triangles share a strict area budget

Consider the virtual containing triangles

    V_L=conv{A,(0,1),F},
    V_R=conv{D,(1,1),F}.

Their two base endpoints A,F and D,F are actual. The other fixed contact
H lies on the left leg of V_L, and E lies on the right leg of V_R. The
doubled areas are

    S_L=f(1-a),       S_R=(1-f)(1-d).

The actual ABC and BCD triangles give a(c-b),d(c-b)>=s. Since c-b<1,
we have a,d>s, and in particular

    S_L+S_R=1-fa-(1-f)d <=1-s.                       (1)

Every free point of T_L lies in V_L, and every free point of T_R lies
in V_R. More generally, a square-interior point lies in V_L exactly
when it is above the actual line AF; it lies in V_R exactly when it
is above DF. A point on either line would make an actual zero-area
triangle and is excluded.

We use the established endpoint bounds, with the area convention
translated to doubled areas:

* Five actual points in a containing triangle with two actual vertices
  force its doubled area to be at least K5*s (TYPE_II.md, Section 1).
* Six such points force doubled area at least G*s
  (SIX_POINT_ENDPOINT.md).
* Four such points with a nontriangular actual hull force doubled area
  at least 4s (TYPE_II.md, Section 1).

In the final statement the stronger factor four, rather than the general
factor three, is essential. For example, if X belongs to T_R, the four
actual points D,E,F,X have a quadrilateral hull: D,E are distinct points
on x=1, F is the unique topmost point, and X is outside triangle DEF
across EF. Thus none lies inside the triangle of the other three. The
four-point bound applies to their container V_R. The reflected argument
applies to A,H,F,X when X belongs to T_L.

## 2. Neither larger triangle contains all three free points

Suppose all three free points belong to V_L. With A,H,F they make six
actual points in that triangle, including the actual vertices A,F, so

    S_L>=G*s.

The actual triangle DEF lies in V_R and has doubled area at least s.
Consequently S_R>=s, and (1) would imply

    1>=(G+2)s.

This is impossible. Indeed sqrt(5)>67/30, so G>177/20, and

    (177/20+2)s-1=181/20000>0.                        (2)

Reflection excludes all three free points in V_R as well. This is a
larger-region version of the three-in-one-exterior-cap exclusion.

## 3. Two points in a larger triangle exclude a point in the opposite cap

Suppose two free points belong to V_L, and the third belongs to T_R.
The first two, together with A,H,F, give

    S_L>=K5*s.

The third, together with D,E,F, has a quadrilateral actual hull by
Section 1. Therefore

    S_R>=4s.

Combining these two bounds with (1) would give

    1>=(K5+5)s.

But sqrt(2)>7/5, so K5>29/5, and

    (29/5+5)s-1=11/2500>0.                           (3)

This contradiction excludes the entire stated placement. Reflecting in
the vertical midline gives the corresponding result for two points in
V_R and a third in T_L.

In particular, two points in T_L and one in T_R are impossible, as is
the reflected count. This argument covers every hull type, every pair-line
orientation, and every position of the two points within their cap. No
triangular/nontriangular subdivision of their own four-point subset is
needed.

## 4. The four remaining counts and their additional chord placements

Combining Sections 2-3 with N7_PLACEMENTS.md leaves, up to vertical
reflection, exactly these exterior counts:

| Free points in T_L | Free points in T_R | Free points in the boundary heptagon |
|---:|---:|---:|
| 0 | 0 | 3 |
| 1 | 0 | 2 |
| 2 | 0 | 1 |
| 1 | 1 | 1 |

The removed (2,1,0) count is completely excluded. The four rows shown
here are not declared excluded.

There are also useful complete placement consequences. In the row
(2,0,1), let X be the unique heptagon-interior free point. It is below
AF, since otherwise all three free points would belong to V_L,
contrary to Section 2. In the row (1,1,1), its unique interior free
point X is below both AF and DF. If it were above either chord,
Section 3 would apply with the exterior point on the opposite side.

These are strict chord signs: AFX<0 in both stated rows, and DFX>0 in
the row (1,1,1). The latter sign uses the direction D to F; the point
below that chord is on its positive side.

The optional checker `check_n7_upper_occupancy.py` verifies the exact
rational comparisons (2)-(3) and the area identities used in (1).
