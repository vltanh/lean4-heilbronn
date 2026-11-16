# Seven boundary points: an exhaustive first placement catalogue

All areas in this note are doubled. Put s=93/1000. Consider a normalized
corner-free configuration with seven boundary contacts

    A=(0,a), H=(0,h), B=(b,0), C=(c,0),
    D=(1,d), E=(1,e), F=(f,1),

where 0<a<h<1, 0<b<c<1, 0<d<e<1, and the opposite-contact overlap
gives b<=f<=c. Its three remaining points are strictly inside the square.
Assume all actual unsigned triangle areas are at least s. This includes
every putative N7 maximizer, since 2A*>s.

Write K=conv(A,B,C,D,E,F,H) for the boundary heptagon. The only possible
exterior locations of a free point will be the two open upper corner caps

    T_L=int conv{H,(0,1),F},
    T_R=int conv{F,(1,1),E}.

## 1. The two lower exterior caps are empty

Suppose X=(x,y) lies outside K through its edge AB. Its negative actual
ABX determinant and its actual AHX,BCX areas imply

    ab-a*x-b*y>=s,
    x>=s/(h-a)>=s/(1-a),
    y>=s/(c-b)>=s/(1-b).

Consequently

    s[1+a/(1-a)+b/(1-b)]<=ab,
    s<=ab(1-a)(1-b)/(1-ab).                            (1)

Put r=sqrt(ab). Since (1-a)(1-b)<= (1-r)^2, the last quantity is at
most r^2(1-r)/(1+r). Its maximum on [0,1] is

    (5sqrt(5)-11)/2 < 1/11 < s.

For completeness, differentiation gives the interior maximizing root
r=(sqrt(5)-1)/2, and the stated value follows by r^2+r=1. The radical
comparison follows from sqrt(5)<123/55, checked by squaring positive
rationals. This contradicts (1). This is also the lower-corner argument
in N8_OP_LINE_CAPS.md; it uses only the two incident double sides.

Reflection across the vertical midline applies the same argument to
the other lower exterior cap, beyond CD. Thus no free point lies in
either lower corner cap. The square outside the boundary heptagon is
the union of its four open corner caps, up to their boundary segments.
A free point on AB,CD,EF, or FH would give an actual zero-area triangle.
Every free point therefore belongs strictly either to K, to T_L, or to T_R.

## 2. Neither upper cap contains all three free points

Let M=c-b and L=h-a. The actual triangles ABC and ABH give

    a*M>=s, b*L>=s.

Thus

    h>=s/M+s/b,
    hc>=s*c^2/[b(c-b)]>=4s,                            (2)

because b+(c-b)=c. The actual CDE area gives
(1-c)(e-d)>=s, hence c<=1-s. Since f<=c,

    area2(T_L)=f(1-h)<=c(1-h)<=c-4s<=1-5s.           (3)

Suppose all three free points lie in T_L. Along with the actual endpoints
H,F, they are five points in its containing triangle. The five-point
endpoint theorem in TYPE_II.md Section 1 gives

    area2(T_L)>=(3+2sqrt(2))*s>(29/5)*s.

This contradicts (3), since

    (5+29/5)*s-1=11/2500>0.

The comparison 3+2sqrt(2)>29/5 follows from sqrt(2)>7/5. The reflected
argument gives the same bound and exclusion for T_R. This application
uses the established endpoint theorem with precisely two actual container
vertices, H,F or F,E; it does not assume the third, virtual corner is an
actual configuration point.

## 3. The remaining five counts

Let k,l be the numbers of free points in T_L,T_R, respectively. Section 1
puts all remaining free points inside K. Section 2 gives 0<=k,l<=2,
and k+l<=3. Reflection across the vertical midline exchanges the caps
and preserves the normalized domain. Therefore the following five rows
are exhaustive, up to that reflection:

| Free points in T_L | Free points in T_R | Free points in K |
|---:|---:|---:|
| 0 | 0 | 3 |
| 1 | 0 | 2 |
| 2 | 0 | 1 |
| 1 | 1 | 1 |
| 2 | 1 | 0 |

No row is declared excluded by this catalogue. It closes the lower-cap
alternatives and the three-in-one-upper-cap alternatives, and identifies
the remaining finite placement counts for a global N7 argument. The
strict projected chamber in N7_PROJECTED_CHAMBER.md applies when an upper
cap point can be assigned the missing secondary label and the two other
points have its stated signs.

The subsequent N7_UPPER_OCCUPANCY.md excludes the entire (2,1,0)
row. Thus at least one free point is inside K, and only the first four
rows remain for global coverage. That note also proves strict chord
placements for the unique interior point in the two-exterior rows.
N7_OPPOSITE_UPPER_CAPS.md then excludes (1,1,1) as well, so only
(0,0,3), (1,0,2), and (2,0,1) remain.
N7_SAME_UPPER_CAP.md subsequently excludes (2,0,1), leaving just
(0,0,3) and (1,0,2).

## 4. A rational box available in every remaining row

The same boundary inequalities give a useful uniform box without a
second top contact. The areas ABC and BCD imply a,d>=s/M. Hence

    L=h-a<=1-s/M, R=e-d<=1-s/M.

The ABH and CDE areas then give

    1-M=b+(1-c)>=s/L+s/R>=2sM/(M-s).

The denominator is positive because a,d<1. Clearing it yields

    M^2-(1-s)M+s<=0.                                  (4)

At M=79/100 this polynomial equals 57/100000>0; its derivative is
positive for M>=79/100. Therefore M<79/100. Its two roots sum to
1-s=907/1000, so (4) also gives M>117/1000. In particular

    a,d>93/790,
    L,R<697/790,
    b,1-c>7347/69700,
    7347/69700 < f < 1-7347/69700.

For every strictly interior configuration point X=(x_X,y_X), the actual
AHX,DEX,BCX areas give

    7347/69700 < x_X < 1-7347/69700,
    y_X>93/790.

There is no asserted uniform upper bound below one for y_X: an inward
secondary top contact may approach the candidate's top side. These
inequalities use only actual areas and the contact overlap, and remain
valid in each of the five placement rows.
