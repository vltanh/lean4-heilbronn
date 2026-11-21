# Ten points including all four square corners

## Theorem

For any ten points in the unit square that include all four corners, the
minimum ordinary triangle area m satisfies

    m <= (sqrt(33)-5)/16 < A*.

This closes the four-corner subfamily of HP11-III. It does not close the
remaining configurations with exactly three corners. The argument uses no
search, optimization certificate or external small-point Heilbronn theorem.

## 1. Four triangular regions

Write sigma=(sqrt(33)-5)/8, the positive root of

    8 sigma^2 + 10 sigma - 1 = 0.

One has 9/100<sigma<1/10. Suppose m>sigma/2 and set

    s = min(2m,1/10).

Then sigma<s<=1/10, and every absolute doubled triangle area is at least s.
In particular all points are distinct, no three are collinear, and the six
noncorner points lie strictly inside the square.

Use corner names A=(0,0), B=(0,1), C=(1,1), D=(1,0), unrelated to the
candidate's point labels. Triangles with two corners give, for every other
point (x,y),

    s <= x,y <= 1-s,
    |x-y| >= s,
    |x+y-1| >= s.

Thus the six points lie in four disjoint triangular regions. The left region is

    L = { (x,y): s<=x<=1/2-s,  x+s<=y<=1-s-x },

and the others are its rotations. For a corner V put
D_V(P,Q)=det(P-V,Q-V).

## 2. Every region contains at most two points

Take P=(p,u), Q=(q,v) in L with p<=q. If D_A(P,Q)>=s, then

    D_A(P,Q)=pv-qu
       <= p(1-s-q)-q(p+s)
        = p(1-s-2q)-sq
       <= q(1-2s-2q)
       <= (1-2s)^2/8 < s.

The substitution p<=q is valid because 1-s-2q>=s>0. The last strict
inequality holds for 9/100<=s<=1/10: its left side decreases with s and
at s=9/100 it is 1681/20000<9/100. This contradiction proves

    D_A(P,Q)<=-s.

Reflecting across y=1/2 proves D_B(P,Q)>=s. Since
D_B(P,Q)=D_A(P,Q)+(q-p), we obtain

    d=q-p>=2s.                                      (1)

Three points in L would have first-coordinate span at least 4s, whereas the
available span is 1/2-2s<4s. Hence each region has at most two points.
There are six points in four regions, so at least two regions contain a pair.

For each pair call the member farther from its region's square side the
inner point; its distance q from that side satisfies

    3s<=q<=1/2-s.                                    (2)

For a left-region inner point (q,v), its other coordinate is between q+s
and 1-s-q. Consequently an inner point from any rotated region has both
coordinates in [q,1-q].

## 3. A pair's line stays in a central horizontal strip

For a pair in L write its line as y=ell(x)=z+kx, and put

    alpha=s/d,     w=ell(1).

The left-corner inequalities and (1) give

    D_A=-dz<=-s,     D_B=d(1-z)>=s,
    alpha<=z<=1-alpha,     alpha<=1/2.

The right-corner absolute determinant inequalities imply one of

    w<=-alpha,     alpha<=w<=1-alpha,     w>=1+alpha.

The two outer possibilities are impossible. If w>=1+alpha, interpolation
gives v=ell(q)>=(1-q)alpha+q(1+alpha)=q+alpha. Comparing with
v<=1-s-q gives 2q+alpha+s<=1. If w<=-alpha, interpolation gives
v<=(1-q)(1-alpha)-q alpha=1-q-alpha; comparison with v>=q+s gives
the same inequality.

Since q=p+d>=s+d, either outer possibility would imply

    2d+3s+s/d<=1,
    2d^2-(1-3s)d+s<=0.

But the quadratic's discriminant is

    (1-3s)^2-8s = 1-14s+9s^2 < 0

throughout [9/100,1/10]. Indeed it is decreasing there and its value at
9/100 is -1871/10000. Its leading coefficient is positive. Contradiction.

Therefore

    alpha <= ell(x) <= 1-alpha  for every 0<=x<=1.    (3)

This conclusion applies after rotation to every region containing a pair.

## 4. Compare two pairs: the decisive inequality

Among the at least two pairs, choose one whose inner point has the smallest
distance q from its associated square side. Rotate this region to L, and
retain P,Q,d and alpha from above. Choose the inner point Z of any other
pair.

By minimality of q and the observation following (2), both coordinates of Z
lie in [q,1-q]. Equation (3) therefore gives

    |y_Z-ell(x_Z)| <= 1-q-alpha.

On the other hand, the triangle PQZ has absolute doubled area

    |det(Q-P,Z-P)| = d |y_Z-ell(x_Z)| >= s = d alpha.

Thus d(1-q)>=2s. Since p>=s, one also has d=q-p<=q-s. Consequently

    2s <= (q-s)(1-q).

For q<=1/2-s the expression (q-s)(1-q) increases with q, because its
derivative is 1+s-2q>=3s>0. Using (2),

    2s <= (1/2-2s)(1/2+s),
    8s^2+10s-1 <= 0.

This contradicts s>sigma, proving m<=sigma/2.

## 5. Exact comparison with the candidate value

The gap is small, so we compare exactly rather than rounding. Put

    r=31561/100000,     c=93073/1000000.

For f(x)=12x^3-27x^2+20x-4, direct rational calculations give

    f(r) = -1860840557/250000000000000 < 0,
    r^2(5/4-r)-c = 1281513519/1000000000000000 > 0,
    8c^2+10c-1 = 3833329/125000000000 > 0.

The isolated root g satisfies r<g<1/3. The function x^2(5/4-x) is
strictly increasing on (0,1/3), so

    2A* = g^2(5/4-g) > r^2(5/4-r) > c > sigma.

Hence

    (sqrt(33)-5)/16 < A*.

The bound on the left is approximately 0.04653516540862679, but that
decimal is only explanatory. All comparisons in the proof are exact.

## Scope

This is a complete hand exclusion for all ten-point configurations containing
four corners, not a numerical neighborhood or fixed orientation chamber.
The other six points were unrestricted at the start. Exactly three occupied
corners, and all other global families, retain their own proof obligations.
