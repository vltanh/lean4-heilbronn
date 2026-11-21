# An occupied end triangle in a six-point monotone chain

Let six points of the closed unit square, in order of nondecreasing
ordinate, have four positive consecutive doubled areas \(a,b,c,d\).
If each is at least \(s=93/1000\), then \(a<462/1000\). If, in
addition, the first consecutive triangle contains an actual point
and every actual doubled area is at least \(s\), then
\[
 b<212/1000,\qquad c<257/1000,\qquad d<205/1000.               \tag{1}
\]
In particular the other three triangles are empty. Reversing the
point order and reflecting the vertical coordinate preserves the
hypotheses and reverses the list of areas. Thus the same estimates
apply when the last triangle is occupied.

## A necessary inequality for four unequal turns

Write the vertical increments as \(u,v,w,x,y\) and the horizontal
increments as \(j,k,-g,-i,-l\). As in the [seven-point chain
proof](SEVEN_POINT_MONOTONE_CHAIN.md), \(v,w,x>0\). The determinants
in order are
\[
 a=jv-uk,\quad b=kw+vg,\quad c=iw-gx,\quad d=lx-iy.
\]
Set \(L=u+v\), \(T=w+x+y\), \(A=v/L\), and \(B=w/T\).
Here \(0<A\le1\), \(0<B<1\), and \(L+T\le1\). From
\(j+k\le1\) obtain \(k\le(v-a)/L\). Substituting
\(i=(c+gx)/w\) into \(l=(d+iy)/x\) gives
\[
 g+i+l= gT/w + (dw+c(x+y))/(wx)\le1.
\]
Inserting these two bounds on \(k,g\) into \(b=kw+vg\) gives
\[
 b+wa/L+vK/x\le AB(L+T),\qquad K=dB+c(1-B).
\]
Divide by \(AB\) and use the arithmetic-geometric mean inequality
on the two terms \(aT/(AL)\) and \(LK/(Bx)\). Since
\(x\le(1-B)T\) and \(A\le1\), we obtain
\[
 1\ge b/B + 2\sqrt{a\bigl(d/(1-B)+c/B\bigr)}.                 \tag{2}
\]

## Four rational comparisons

The right side of (2) is increasing in each of \(a,b,c,d\). For a
row of proposed lower bounds, denote them by \(a_0,b_0,c_0,d_0\).
If \(B\le b_0\), the right side already exceeds one. Otherwise
squaring the necessary inequality after subtracting \(b_0/B\)
requires \(P(B)\le0\), where
\[
 P(B)=4a_0B\bigl(c_0+(d_0-c_0)B\bigr)-(B-b_0)^2(1-B).
\]
The following table gives four rows for which \(P>0\) throughout
\([b_0,1]\). The five entries before the final two columns are in
thousandths. Split at \(M\). For either interval \([l,r]\), substitute
\(B=(l+rt)/(1+t)\) and multiply by \((1+t)^3\). The last two columns
give the least of its four coefficients, multiplied by \(10^{12}\).
The substitution covers \([l,r)\) for \(t\ge0\), and its leading
coefficient is \(P(r)\).

| \(a_0\) | \(b_0\) | \(c_0\) | \(d_0\) | \(M\) | \([b_0,M]\) | \([M,1]\) |
|---:|---:|---:|---:|---:|---:|---:|
| 462 | 93 | 93 | 93 | 580 | 70140000 | 70140000 |
| 279 | 212 | 93 | 93 | 660 | 260720000 | 260720000 |
| 279 | 93 | 257 | 93 | 675 | 122490000 | 122490000 |
| 279 | 93 | 93 | 205 | 514 | 230292432 | 230292432 |

For direct expansion, the four coefficients in increasing order are
\(P(l), 3P(l)+(r-l)P'(l), 3P(r)-(r-l)P'(r), P(r)\). Their
positivity excludes each row. The first gives the ceiling for \(a\).
Subdivision at an occupant of the first triangle gives \(a\ge3s\),
so the other three rows give (1). Any further occupied triangle
would also have area at least \(3s\), larger than every bound in (1).

## Application to a top-cap pair with a right-cap point

In the [one-corner reduction](SEVEN_POINT_MONOTONE_CHAIN.md), the
outer top point is \(P\) and \(R\) lies strictly inside \(DPF\).
The six points \(O,C,Q,D,P,F\) have nondecreasing ordinates and
four positive turns. Read the four triangles in reverse order.
The estimates above give
\[
 [DPF]<.462,\qquad[QDP]<.212,\qquad[CQD]<.257,\qquad[OCQ]<.205.
\]
Thus \(QDP,CQD,OCQ\) contain no actual points in their interiors,
including the other free points of either one-corner count. The
three weights of \(R\) in \(DPF\) are ratios of actual positive fan
areas to \([DPF]\). Each exceeds \(.093/.462=31/154\). With the
six-contact labels the same conclusions apply to the chain
\(B,C,Q,E,R,F\) when \(S\) lies inside \(ERF\).
