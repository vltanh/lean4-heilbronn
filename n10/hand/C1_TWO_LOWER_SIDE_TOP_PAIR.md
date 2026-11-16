# A side-cap point forces a triangular top-pair hull

Use the C1 anchors

    O=(0,0), H=(0,h), C=(c,0), D=(1,d), F=(f,1),
    0<d<=h<=1, 0<f<=c<=1,

and assume every unsigned actual doubled triangle area is at least
`s=93/1000`. Suppose `hc>=rho=347/500`, the right cap is occupied,
and two further actual points X,Y lie in the top cap DF(1,1).

**Theorem.** The four actual points D,F,X,Y have triangular hull.
After naming the outer top point Y, one has

    X strictly inside DFY,
    3s<=-[DFY]<4s,   s<=-[DFX]<2s.                       (1)

Reflection proves the same conclusion when the left cap is occupied.
This excludes the entire convex-quadrilateral-hull child of the C1
two-lower, one-side, two-top placement. It does not exclude its
remaining triangular-hull child.

The argument uses `hc>=rho` only to infer c>=rho. It uses neither the
locations of the lower points nor any sign of their triangles with
X,Y. The two-interior-point theorem supplies hc>rho whenever OHC
contains two actual interior points, as in
C1_TWO_LOWER_THREE_CAPS.md.

## 1. The scalar domain

Let P=(x,y) be an actual right-cap point. As in equations (2)-(3) of
C1_TWO_LOWER_THREE_CAPS.md,

    y>=s/c,  x>=c+s/(cd),  dc(1-c)>=s.                  (2)

The anchor triangles give d,f<=1-s and hf>=s, so f>=s.
Four actual points in a triangle including two container vertices
require its doubled area to be at least 3s; this is the four-point
endpoint theorem in TYPE_II.md, Section 1. Apply it to D,F,X,Y in
the top cap to obtain

    (1-d)(1-f)>=3s.

Since c>=rho>1/2, c(1-c)<=rho(1-rho). Consequently

    d>=s/[rho(1-rho)]>437/1000,
    d<=1-3s/(1-s)<693/1000.                             (3)

Equation (2) also forces c<841/1000: otherwise decreasing z(1-z)
on z>1/2 would give

    dc(1-c)<(693/1000)(841/1000)(159/1000)<s.

Thus the following closed rectangle contains the relevant parameters:

    rho<=c<=841/1000,   437/1000<=d<=693/1000.            (4)

## 2. An endpoint triangle containing both top points

Put

    A=1-c-s/(cd),    B=d-s/c.

We have A>=0 by x<=1 and (2), and B>0 by y<d. Also

    A<306/1000-s/[(841/1000)(693/1000)]<147/1000,
    A(1-d)<(147/1000)(563/1000)<s.                       (5)

In particular `N=s-A(1-d)>0`. Define

    u0=1-N/B<1.                                        (6)

For either top point Z=(u,v), the actual determinant DPZ is negative:

    -[DPZ]=(1-x)(v-d)+(d-y)(1-u)>=s,

because x,u<=1, y<d and v>d. Using (2), (5), and v<=1 gives

    s<=(1-x)(1-d)+(d-y)(1-u)
      <=A(1-d)+B(1-u),

and therefore u<=u0. Every top point also satisfies v<=1 and lies on
the top side of DF. If u0<=f these conditions give no top point at
all, since the cap requires u>f. We may therefore assume u0>f.

Let V=(u0,1). The triangle DFV contains every point of the original
top cap whose first coordinate is at most u0. Indeed its three edges
are DF, the line v=1, and DV; for d<=v<=1 the last edge has first
coordinate

    1-(1-u0)(v-d)/(1-d)>=u0.

Hence D,F,X,Y lie in DFV. Its doubled area S0 satisfies

    S0=(1-d)(u0-f)
      <=E(c,d),                                        (7)

where we used f>=s and set

    E(c,d)=(1-d){1-s-s/(d-s/c)
                +(1-d)(1-c-s/(cd))/(d-s/c)}.

Both denominators are positive throughout (4), since cd>s there.
The next section proves `E(c,d)<4s` on the whole rectangle.

## 3. A single positive cubic proves the area bound

Differentiation gives the exact identity

    dE/dc=(1-d){s^2-c(1-d)(cd-2s)}/(cd-s)^2.

Its numerator is negative throughout (4). In fact cd-2s>0 and

    c(1-d)(cd-2s)
      >=(347/500)(307/1000){(347/500)(437/1000)-2s}
      >s^2.

Thus E decreases in c, and `E(c,d)<=E(rho,d)`. Direct expansion gives

    {4s-E(rho,d)}d(rho d-s)
      =(417094d^3-2455d^2-284067d+93000)/1000000
      =:B0(d).                                         (8)

The right side is positive throughout (3). Here is a fixed exact
identity proving this without a subdivision. Write

    d=437/1000+(32/125)t,   0<=t<=1,
    b_i(t)=binomial(4,i)t^i(1-t)^(4-i).

Then

    B0(d)=sum_(i=0)^4 N_i b_i(t)/1500000000000000,

with the following five strictly positive integers:

| i | N_i |
|---:|---:|
| 0 | 4802739945873 |
| 1 | 266106562641 |
| 2 | 4648189333265 |
| 3 | 20573116806609 |
| 4 | 50665017531537 |

The functions b_i are nonnegative and sum to one. This proves B0>0;
since d(rho d-s)>0, (8) gives E(rho,d)<4s. Together with (7),

    S0<4s.                                              (9)

## 4. The surviving top hull and its area bands

The stronger nontriangular four-point endpoint theorem in TYPE_II.md,
Section 1 states that an actual quadrilateral hull inside a triangle
with two actual container vertices requires doubled container area at
least 4s. For recall, support-normalize the container to the half-square
with actual anchors (0,0),(1,1),(0,a),(b,1). The two opposite anchor
triangles give ab and (1-a)(1-b) at least the normalized minimum t,
whereas

    sqrt(ab)+sqrt((1-a)(1-b))<=1.

Thus 4t<=1. The support-triangle construction does not increase the
original container area, so the same bound applies to DFV.

This theorem and (9) exclude the quadrilateral hull of D,F,X,Y.
The two base endpoints D,F are hull vertices of these four points:
they are endpoints of their common supporting line DF. With no three
actual points collinear, a triangular hull therefore has one of X,Y
as its third vertex and the other strictly inside. Name them as in
(1). The triangle DFY lies in DFV, so its doubled area is less than
4s. Its three actual fan triangles at X each have area at least s,
giving `-[DFY]>=3s`. The two other fan areas also give

    -[DFX]<=-[DFY]-2s<2s.

This proves every assertion in (1), including square-side placements.

The optional `check_c1_two_lower_side_top_pair.py` verifies the rational
comparisons, derivative, and five-coefficient identity. It performs no
optimization and supplies no unprinted hypothesis.
