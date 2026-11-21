# Three top-cap points exclude both side caps

Use the actual C1 anchors

    O=(0,0), H=(0,h), C=(c,0), D=(1,d), F=(f,1),
    0<d<=h<=1, 0<f<=c<=1,

and assume every unsigned actual doubled triangle area is at least
`s=93/1000`. If three actual points lie in the top cap DF(1,1), neither
exterior side cap can contain an actual point.

This theorem imposes no condition on the number or placement of lower
points. It closes the complete C1 count rows

    (k,j,r,t,l)=(0,1,1,3,0), (1,0,1,3,0),

and their reflections. More generally it strengthens the exterior count
reduction to `t=3 implies r=l=0`.

## 1. A hypothetical right point is close to the right side

Suppose P=(x,y) lies in the right cap. The actual OCP and CDP
clearances give

    cy>=s,
    d(x-c)-(1-c)y>=s.

Consequently

    y>=s/c,
    x>=c+s/(cd),
    dc(1-c)>=s.                                         (1)

The last inequality uses x<=1. In particular d>=4s=372/1000.

Put G=1457/250. The five-point endpoint theorem in TYPE_II.md,
Section 1 says that five actual points in a triangle including two
container vertices require doubled container area at least
`(3+2sqrt(2))s`. Since `sqrt(2)>707/500`, this is greater than Gs.
Apply it to D,F and the three top points. As the actual anchor triangle
OHF gives hf>=s and h<=1, we have f>=s. Thus

    (1-d)(1-f)>=Gs,
    d<=1-Gs/(1-s)<403/1000.                             (2)

If c were outside (360/1000,640/1000), then c(1-c)<=2304/10000 and

    dc(1-c)<(403/1000)(2304/10000)<s,

contrary to (1). Therefore

    360/1000<c<640/1000.                                (3)

By arithmetic-geometric mean, (1)-(2) give

    x>=c+s/(cd)>=2sqrt(s/d)>960/1000.                   (4)

The final strict comparison follows from
`(480/1000)^2(403/1000)<s`. Equations (1)-(3) also give

    d-y<403/1000-s/(640/1000)<258/1000.                 (5)

## 2. Every top point has first coordinate below .737

Take any one of the three top points Q=(u,v). We have x,u<=1, y<d
and v>d. Thus the actual determinant DPQ is negative, and

    s<=-[DPQ]=(1-x)(v-d)+(d-y)(1-u).

Using (4)-(5) and v-d<=1-d<=628/1000,

    s< (40/1000)(628/1000)+(258/1000)(1-u).             (6)

If u>=737/1000, the right side is at most

    (40/1000)(628/1000)+(258/1000)(263/1000)
      =92974/1000000=s-26/1000000<s,

which contradicts (6). Hence all three top points satisfy

    u<737/1000.                                        (7)

## 3. A smaller endpoint triangle gives the contradiction

Every top point has u>f. If f>=737/1000, (7) is already impossible.
Otherwise let V=(737/1000,1). The triangle DFV contains the part of
the original top cap with u<=737/1000. Its third edge DV has first
coordinate

    1-(263/1000)(v-d)/(1-d)>=737/1000

for d<=v<=1; the other edges are DF and the line v=1. This verifies
the containment directly, including square-side faces.

Thus D,F and the three top points lie in this smaller triangle, with
two actual container vertices. Its doubled area is at most

    (1-d)(737/1000-f)
      <=(628/1000)(644/1000)
      =404432/1000000
      <Gs=542004/1000000.

This contradicts the same five-point endpoint theorem used in (2).
The right cap is therefore empty. Reflection in the square diagonal
exchanges the two side caps and preserves the top cap and every
hypothesis, so the left cap is empty as well.

All nine selected points in this argument are actual; any further
point is unrestricted. The optional `check_c1_three_top_no_side.py`
verifies the determinant formulas and every strict rational comparison.
No search or numerical optimum is used.
