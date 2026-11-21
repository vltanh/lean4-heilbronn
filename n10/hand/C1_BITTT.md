# Completing the one-corner count with one lower point and three top points

Use the contacts, top point labels and notation of the
[IITTT proof](C1_TOP_TRIPLE_COMPLETION.md). In the count
\((1,1,0,3,0)\) the point \(Y=(u,v)\) is inside \(OHC\),
and the point \(Z=(z,w)\) is inside \(HCDF\). The five
anchors, the three top points and \(Z\) satisfy the hypotheses of
the [nine-point proposition](C1_TOP_TRIPLE_CORE.md). Thus \(D,P,Q,F\)
are in strict convex order with \(R\) inside both \(DPF\) and \(DQF\).
The word remains \((+,-,-,+)\) on transposition. Use \(h\ge c\), and
keep the lower and central labels fixed.

## Domain and factors

The two different placement regions lie strictly inside the
same actual hull \(O,C,D,P,Q,F,H\). Replace the region for
\(Y\) in the initial signs of the IITTT proof by \(OHC\), using its
three inward tests. In particular \([HCY]<0\). The two remaining
tests \([OHY]<0,[OCY]>0\) are unchanged. Both radial orders
of \(Y,Z\) are allowed. All other signs are as in the IITTT proof.

The fan of \(Y\) gives
\[
 hu\ge s,\qquad cv\ge s,\qquad hc-hu-cv\ge s .
\]
In particular \(h,c\ge3s\) and \(u,v\in[s,1-2s]\).
Since \(hu/(hc)=u/c\ge u\) and \(cv/(hc)=v/h\ge v\), the last
inequality also gives \(u+v\le1-s/(hc)\le1-s\).
Use the nonnegative factor `lower_sum` equal to \(1-s-u-v\).
All other initial bounds are those of IITTT. The closed box is
\[
 [\max(3s,s/b),1]^2\times[s,b]^2\times[s,1-2s]^2
  \times[s,1-s]^2\times[m,1]^6,
\]
where \(b=1-(1457/250)s/(1-s)\) and \(m=s+s/(1-s)\).
[Initial box, signs and determinants](C1_TOP_TRIPLE_CORE_TABLES/bittt-pmmp/domain.md)

The top factors from the IITTT proof retain the same expressions and
the same nonnegativity proofs. The remaining top factors use the
barycentric weights of \(R=(j,k)\) in either \(DXF\), for \(X=P,Q\).
Let \(T=[DXF]\), with \(X=(x,y)\). We have \(0<T\le(1-d)(1-f)\).
Each of the three barycentric weights is at least \(s/T\), since
each subtriangle has doubled area at least \(s\).
The abscissas and ordinates of the three vertices give
\[
 (1-j)T\ge s((1-f)+(1-x)),\qquad
 (1-k)T\ge s((1-d)+(1-y)).
\]
The nonnegative differences are `top_inner_bary_px` and
`top_inner_bary_py` for \(X=P\), and `top_inner_bary_qx` and
`top_inner_bary_qy` for \(X=Q\). Using the upper bound for \(T\)
and keeping just \(1-f\) and \(1-d\) on the right, respectively, gives
\[
 (1-d)(1-j)-s\ge0,\qquad (1-f)(1-k)-s\ge0 .
\]
These differences are `top_inner_dx` and `top_inner_dy`.

## The finite contradictions

The [two unconditional stages](C1_TOP_TRIPLE_CORE_TABLES/bittt-pmmp/global.md)
establish the initial contracted box used in the refined branches.
The [tree](C1_TOP_TRIPLE_CORE_TABLES/bittt-pmmp/tree.md) has 156
determinant-sign splits and the following six coordinate splits.
Each determinant split has two strict sign alternatives by clearance.
For each coordinate split the two closed subintervals both include
the cut point.

| Path | Coordinate | Cut |
| --- | --- | ---: |
| rmmppppmmmmpppmmmmmm | \(j\) | \(1282017/2000000\) |
| rmmppppmmmmpppmmmmmmL | \(c\) | \(1279841/2000000\) |
| rmmppppmmmmpppmmmmmmH | \(c\) | \(1277681/2000000\) |
| rmmppppmmmmpppmmmmmmHH | \(r\) | \(43613/62500\) |
| rmmppppmmmmpppmmmmmmLH | \(r\) | \(1396917/2000000\) |
| rmmppppmmmmpppmmmmmmHHH | \(z\) | \(621749/1000000\) |

The [table guide](C1_TOP_TRIPLE_CORE_TABLES/INDEX.md) gives the
precise rules for all sign deductions, scalar bounds, coordinate
contractions and weighted sums. Each of the 163 leaves gives a
contradiction on its full inherited box.

| Contradiction | Leaves |
| --- | ---: |
| Geometry | 39 |
| Area intervals | 70 |
| Coordinate intervals | 29 |
| Weighted inequalities | 25 |

The weighted leaves print 3,452 multipliers in all. For example,
the [20-term leaf](C1_TOP_TRIPLE_CORE_TABLES/bittt-pmmp/rmpppmmmmpppmp.md)
has exact upper bound \(-364804771063/200000000000\).
Each upper bound is strictly negative. This excludes the remaining
word and hence the whole count \((1,1,0,3,0)\) at \(s=93/1000<2A^*\).
