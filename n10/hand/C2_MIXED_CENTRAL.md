# A complete exclusion of the mixed/central C2 family

This note excludes the entire mixed/central C2 family. By reflection and
interchanging the diagonal halves, take the upper half to be I+II toward
A, with points P in I and Q in II, and the lower half to have two central
points S,T. Use

    A=(0,0), E=(1,1), H=(0,h), B=(b,0), D=(1,d), F=(f,1),
    sigma=93/1000, a=69/100, c=89/100.

Every actual unsigned doubled triangle area is at least sigma. The
preceding C2 notes prove

    a<h,b<c,
    (1-h)(1-f)>=sigma,
    P lies strictly inside AHB.

We first prove that P is the only free point in AHB. This places all three
central points in a convex quadrilateral that splits into two actual
triangles, each too small to contain two free points. All the inequalities
below are analytic; no numerical optimization is a premise.

## 1. The upper central mate cannot share AHB with P

Write P=(p,u), Q=(q,v), and orient the pair line from P to Q. The mixed
half classification in C2_MIXED.md excludes its second orientation, so
the actual H-side determinant always satisfies

    e_H=h(q-p)+pv-qu>=sigma.                            (1)

Suppose Q is also inside AHB. Its corner clearance and its upper-half
diagonal clearance give

    hq+bv<=hb-sigma,       v>=q+sigma,
    q <= R(h,b):=[hb-(b+1)sigma]/(h+b).                  (2)

The noncentral condition on P and the triangle AHP give

    u>=(p+sigma)/f,       p>=sigma/h.

Substituting these bounds and the first inequality of (2) into (1),
with their displayed signs, yields

    sigma <= e_H
      <= q[h-sigma/f-p(1/f+h/b)]-p sigma/b
      <= q M(h,b,f)-sigma^2/(hb),

    M(h,b,f)=h-sigma(h+1)/(hf)-sigma/b.                  (3)

In particular M>0. Also R>0, since q>0 and q<=R. Equations (2)--(3)
therefore imply

    sigma <= R(h,b)M(h,b,f)-sigma^2/(hb).               (4)

For fixed h, the right side increases with b and f throughout the
relevant positive range. Indeed R increases with b, since its derivative
has positive numerator h^2-h sigma+sigma; M increases with both b and f;
and -sigma^2/(hb) increases with b. The anchor area bounds f by

    f<=f0(h):=1-sigma/(1-h),       f0(h)>0.

Thus (4) remains necessary after replacing b by c and f by f0(h).
Define the resulting right side by

    W(h)=R(h,c)[h-sigma(h+1)/(h f0(h))-sigma/c]
           -sigma^2/(hc).

Direct rational simplification gives

    sigma-W(h)
      =N(h)/[10000h(100h+89)(907-1000h)],

    N(h)=890000000h^4-1251770000h^3+270351000h^2
           +141348747h-8501967.                         (5)

The denominator is positive for a<h<c. To check the numerator, put
z=h-4/5, so -11/100<z<9/100. Exact expansion gives

    N(h)=890000000z^4+1596230000z^3+683703000z^2
           -6768053z+6197153/5.

Since z>=-11/100, this is at least

    508117700z^2-6768053z+6197153/5.

The last quadratic is positive for every real z: its leading coefficient
is positive and its discriminant is

    -2473299961715671<0.

Equivalently, its minimum is
2473299961715671/2032470800>0. Hence W(h)<sigma, contradicting (4).
This proves that Q lies outside AHB.

## 2. The corner has exactly one free occupant

C2_MIXED_CROSS.md excludes either lower central point S or T from AHB.
Section 1 excludes Q. The noncentral point P is inside AHB by
C2_MIXED.md. Consequently P is its unique free occupant.

No free point lies on the line HB, since H,B and that point would form
a zero-area actual triangle. Thus all three central points lie strictly
on the E-side of HB. Their cell conditions also put them inside the
actual triangle EHB.

## 3. Both lower central points lie inside EBP

Let X=(u,v) be either lower central point and write

    D=yu-xv>0,
    d_H=h(u-x)-D,       d_B=b(y-v)-D,

where P=(x,y). Section 1 of C2_MIXED_CROSS.md proves d_H>0 without any
corner assumption on X. We claim d_B<0.

If u>=b, then

    d_B=y(b-u)-v(b-x)<0,

since x<b and v>0. Otherwise u<b. If d_B were positive, the identity

    (b-u)d_H+u d_B=(u-x)[h(b-u)-bv]

would force X into AHB: d_H>0 gives u>x, and then the positive left
side makes h(b-u)-bv>0. This contradicts Section 2. Thus d_B<0 in
every case.

The three strict edge tests now put X inside EBP. Its central condition
puts it on the P-side of EB; d_B<0 puts it on the E-side of BP; and
the fact that PX crosses the diagonal AE puts it on the B-side of PE.
This proves the claim for both S and T.

For the upper central mate Q, the same identity proves e_B<0: e_H>0,
Q is outside AHB, and e_A<0. In the third mixed orientation one also has
e_E>0, so Q lies inside EBP as well. Therefore in that orientation the
actual triangle EBP contains all three central points and must satisfy

    b+(1-b)y-x >= Gamma3 sigma,
    Gamma3=(11+3sqrt(5))/2.

In the first mixed orientation e_E<0, so Q is on the other side of PE.
The mixed-half classification puts Q strictly inside EFP in that case.

## 4. Two small actual triangles cannot hold the three central points

The four actual points E,F,P,B form a strictly convex quadrilateral, in
that cyclic order. Indeed P is below the top edge EF, above the bottom
edge containing B, and lies strictly above AF; also P lies in AHB and
f<=b. More explicitly, all four consecutive oriented edge triples are
positive in the order E,F,P,B:

    det(E,F,P)=(1-f)(1-y)>0,
    det(F,P,B)=b-x-(b-f)y>0,
    det(P,B,E)=b+(1-b)y-x>0,
    det(B,E,F)=1-f>0.

The second expression is b(1-y)+(fy-x)>0, and the third is positive
because x<y. The diagonal EP divides this quadrilateral into EFP and
EBP. Section 3 therefore puts all three central points Q,S,T strictly
inside the quadrilateral in both remaining mixed orientations.

Use its other actual diagonal BF. It divides the same quadrilateral into
the actual triangles EFB and BFP. We prove that each has doubled area
strictly less than Gamma2 sigma, where Gamma2=4+2sqrt(3).

The first triangle has doubled area beta=1-f. Since P is inside AHF,
the three triangles in that fan give hf>=3sigma. Using h<c yields

    beta < 1-3sigma/c < 69/100 < Gamma2 sigma.           (6)

For the other triangle, use x>=sigma/h, fy-x>=sigma, f<=b<c, and
f<=f0(h)=1-sigma/(1-h). Its doubled area satisfies

    b-x-(b-f)y
      <= c-x-(c-f)y
      <= c+sigma-(c/f)(x+sigma)
      <= c+sigma-c sigma(1+h)/(hf)
      <= R0(h):=c+sigma-c sigma(1+h)/(h f0(h)).          (7)

The first inequality uses y<1, and the second uses c-f>0 and
y>=(x+sigma)/f. All denominators are positive. The function R0 decreases
throughout a<=h<=c. Its exact derivative is

    R0'(h)=8277(907h^2-2000h+907)
              /[100h^2(1000h-907)^2].                  (8)

The numerator polynomial g(h)=907h^2-2000h+907 satisfies

    g(a)=-411773/10000<0,
    g'(h)=1814h-2000<=g'(c)=-19277/50<0.

Consequently (7) is bounded above by

    R0(a)=1116359/1610000
          < (373/50)sigma < Gamma2 sigma,              (9)
    (373/50)sigma-R0(a)=1567/4025000>0.

For the final strict inequality, sqrt(3)>173/100 because
(173/100)^2=29929/10000<3, so Gamma2>373/50.

No central point lies on BF, since B,F and that point would form a
zero-area actual triangle. Thus the three central points split between
the interiors of EFB and BFP. One triangle contains at least two of
them. The two-interior-point theorem in TRIANGLE_OCCUPANCY.md then
requires its doubled area to be at least Gamma2 sigma, contradicting
(6) or (9).

This excludes every mixed/central C2 configuration, including both
remaining orientations of its mixed half. The separately proved
opposite-corner mixed/mixed case completes HP11-C2; see the assembly in
OPPOSITE_CORNERS.md, Section 10.
