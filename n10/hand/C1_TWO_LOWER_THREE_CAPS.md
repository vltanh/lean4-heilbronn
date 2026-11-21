# Two lower points and three occupied exterior caps

Use the one-corner anchors

    O=(0,0), H=(0,h), C=(c,0), D=(1,d), F=(f,1),
    0<d<=h<=1, 0<f<=c<=1,

and assume every unsigned actual doubled triangle area is at least
`s=93/1000`. Suppose OHC contains at least two further actual points.
Then the right cap, top cap and left cap cannot all be occupied.

For the C1 count catalogue this excludes the complete row

    (k,j,r,t,l)=(2,0,1,1,1).

The result covers every sign between the two lower points and the three
cap points, and every square-side placement. No choice of a ray order,
coordinate subdivision, or finite numerical search occurs in the proof.

Write `[ABC]=det(B-A,C-A)` and put `rho=347/500`. The two-interior-point
triangle theorem gives

    hc>rho.                                                   (1)

Indeed `sqrt(3)>433/250`, so
`(4+2sqrt(3))s>(933/125)s=86769/125000>347/500`.

## 1. Three cap costs and a scalar restriction

The positive actual anchor areas satisfy

    [HDF]=1-d-(h-d)(1-f)<=1-d,
    [CDF]=1-f-(c-f)(1-d)<=1-f.

Consequently `d,f<=1-s`. Let P=(x,y) be an actual point in the right
cap, Q=(u,v) one in the top cap, and R one in the left cap. The strict
cap memberships mean

    [CDP]<0, [DFQ]<0, [FHR]<0.

For P, the actual triangles OCP and CDP give

    cy>=s,
    d(x-c)-(1-c)y>=s.                                      (2)

Using x<=1 and then y>=s/c proves

    dc(1-c)>=s.

Reflection in the square diagonal gives the left-cap version. The top
point belongs to the triangle with vertices D,F,(1,1), whose doubled
area is `(1-d)(1-f)`. Thus

    dc(1-c)>=s,   fh(1-h)>=s,   (1-d)(1-f)>=s.             (3)

Equation (1) and h,c<=1 give h,c>rho>1/2. As d,f<=1-s, the first
two inequalities in (3) imply h,c<177/200: the function z(1-z)
decreases for z>1/2, and

    (1-s)(177/200)(23/200)<s.

We therefore have the preliminary interval

    rho<h,c<177/200.                                      (4)

Fix h. By (1), c>=rho/h, and both c and rho/h exceed 1/2.
Since z(1-z) decreases there, (3) gives

    f>=s/[h(1-h)],
    d>=s h^2/[rho(h-rho)].                               (5)

The denominators are positive. The lower bounds in (5) are at most
the actual f,d, which are less than one. Hence the corresponding
factors one minus those lower bounds are nonnegative. Applying (3),

    {1-s/[h(1-h)]}{1-s h^2/[rho(h-rho)]}>=s.

Multiplication by the positive product
`rho h(1-h)(h-rho)` gives `P(h)>=0`, where

    P(z)=23250000z^4-180614500z^3+268737713z^2
         -125346463z+11198037.                            (6)

The exact identity verifying the coefficients is

    P(z)/250000000
      ={z(1-z)-s}{rho(z-rho)-s z^2}
       -s rho z(1-z)(z-rho).

Interchanging h and c proves `P(c)>=0` as well.

## 2. A rational box for the four anchor parameters

We now show

    807/1000<h,c<86/100,
    597/1000<d,f<77/100.                                 (7)

The derivatives of (6) are

    P''(z)=2(139500000z^2-541843500z+268737713),
    P'''(z)=3000(186000z-361229).

On the whole interval (4), P'''<0 and
`P''(rho)=-80226908<0`. Therefore P' decreases throughout that
interval. The four exact evaluations

    P(807/1000)=-15458353653/4000000,
    P'(807/1000)=8796113899/2000,
    P(86/100)=-11263343/2500,
    P'(86/100)=-117796031/25

show that P is negative on `[rho,807/1000]` and on
`[86/100,177/200]`. For the first interval, P is increasing and its
right endpoint is negative; for the second, P is decreasing and its
left endpoint is negative. Since P(h),P(c)>=0, this proves the first
line of (7).

As z(1-z) decreases for z>1/2, (3) now gives

    d,f>s/[(807/1000)(193/1000)]>597/1000.

Using this lower bound for the other parameter in the last inequality
of (3) gives

    d,f<1-s/(403/1000)=310/403<77/100.

This completes (7).

## 3. The right and left points force the top point down

The right-cap inequalities (2) imply the more precise coordinate bounds

    y>=s/c,
    x>=c+{s+(1-c)s/c}/d=c+s/(cd).                       (8)

Put

    A=1-c-s/(cd),    B=d-s/c.

Here A>=0, because x<=1 and (8); also B>0 because y<d.
The box (7) gives the uniform upper bounds

    A<193/1000-s/[(86/100)(77/100)]<53/1000,
    B<77/100-s/(86/100)<663/1000.                       (9)

The right point has x<=1 and y<d, whereas the top point has
u<=1 and v>d. Thus the signed actual determinant DPQ is negative:

    -[DPQ]=(1-x)(v-d)+(d-y)(1-u)>=s.                    (10)

Both summands are nonnegative; their sum cannot be zero because every
actual triangle has positive area. By (8)-(9),

    s<=-[DPQ]<=A(v-d)+B(1-u)
      <(53/1000)(403/1000)+(663/1000)(1-u),              (11)

where v-d<1-d<403/1000 was also used. If u>=892/1000, the last
expression is at most

    (53/1000)(403/1000)+(663/1000)(108/1000)
      =92963/1000000
      =s-37/1000000<s.

This contradicts (11), so `u<892/1000`.

Apply exactly the same argument after reflection in the square diagonal.
It exchanges H,C and D,F, exchanges the right and left points, and
exchanges u,v. All the hypotheses and the symmetric box (7) are
preserved. Therefore

    u,v<892/1000.                                       (12)

## 4. The top triangle is too small

The doubled area of the actual top triangle is

    r=-[DFQ]=(1-d)u+(1-f)v-1+df>=s.                    (13)

Top-cap membership gives u>f and v>d. At fixed u,v the expression in
(13) decreases as either d or f increases: its two partial derivatives
are f-u and d-v. These signs remain negative while either parameter is
decreased from its actual value to 597/1000. Consequently (7) and
(12) give

    r<2(403/1000)(892/1000)-1+(597/1000)^2
      =75361/1000000
      =s-17639/1000000<s.

This contradicts (13) and proves the theorem.

All auxiliary points used above are actual points. The two interior
points of OHC are used only through (1), so no assumption on their
relative placement has entered the proof. Equations (8)-(13) use weak
square-side bounds and therefore also cover cap points lying on the
right or top side of the square.

The optional `check_c1_two_lower_three_caps.py` checks the displayed
polynomial identity, derivatives and rational comparisons exactly. It
does not optimize, subdivide a coordinate box, or generate a proof table.
The other C1 rows with at most two lower points are not closed by this
note.
