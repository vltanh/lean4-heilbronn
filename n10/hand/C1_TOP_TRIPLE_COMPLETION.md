# Completing the one-corner count with two central points and three top points

Let \(O=(0,0),H=(0,h),C=(c,0),D=(1,d),F=(f,1)\) be actual
contacts with \(d\le h,\ f\le c\). Assume all unsigned doubled
triangle areas are at least \(s=93/1000\). The count \((0,2,0,3,0)\)
has two points \(Y=(u,v),Z=(z,w)\) in \(HCDF\) and three points
\(P=(p,q),Q=(r,t),R=(j,k)\) beyond \(DF\) in the top cap.
[Placement reduction](C1_EXTERIOR_REDUCTION.md)

The [nine-point proposition](C1_TOP_TRIPLE_CORE.md) reduces the top
configuration to a single word, \((+,-,-,+)\). Name the points as
in that proposition, so \(D,P,Q,F\) are in strict convex order and
\(R\) is strictly inside both \(DPF\) and \(DQF\). Transposition
preserves the word by taking the new \(P,Q,R\) to the transposes of
the old \(Q,P,R\), respectively. Thus take \(h\ge c\), allowing
equality. Interchange the two central points if necessary to get
\([OYZ]>0\). This relabeling is independent of the choice of the top
labels. Both choices are possible since all actual determinants are
nonzero.

## Domain of the remaining word

Put \(M=1-s\), \(\tau=(1457/250)s\), \(b=1-\tau/M\) and
\(m=s+s/M\). The two prescribed actual endpoints \(D,F\) of the
five-point top cap give \((1-d)(1-f)\ge(3+2\sqrt2)s>\tau\).
The anchor tests \(cd,hf\ge s\) give \(d,f\ge s\). These bounds
give \(d,f\le b\) and \(h,c\ge s/b\). The central coordinate
bounds \([s,M]\) and the top bounds \([m,1]\) follow from the
same two inward edge identities and the same top-cap area test as
in the nine-point proposition. Consequently the initial closed box in
the order \(h,c,d,f,u,v,z,w,p,q,r,t,j,k\) is
\[
 [s/b,1]^2\times[s,b]^2\times[s,M]^4\times[m,1]^6 .
\]
[Five-point endpoint theorem, §1](TYPE_II.md) and
[central and top coordinates](C1_TOP_TRIPLE_CORE.md)

The actual hull is \(O,C,D,P,Q,F,H\). The contact pentagon and
top quadrilateral meet along \(DF\). Their union is convex by the
strict turns \(CDP\) and \(QFH\), which follow from \(p,r>f\),
\(q,t>d\) and the square bounds as in the nine-point proposition.
Both central points are strictly inside the contact quadrilateral.
The three top-cap tests \([DFX]<0\) for \(X=P,Q,R\), the three
positive ray tests at \(D\), and the four signs of the word hold
throughout. The remaining initial signs are the positive cyclic hull
triples, positive inward edge tests at \(Y,Z,R\) in the actual hull,
the inward edge tests of \(HCDF\) at \(Y,Z\) and \(DPQF\) at \(R\),
\([OHX]<0,[OCX]>0,[HCX]>0\) for \(X=Y,Z\), and \([OYZ]>0\).
An endpoint on a square side preserves these strict signs, since
the corresponding determinants are all on distinct actual labels.
[Initial box, signs and determinants](C1_TOP_TRIPLE_CORE_TABLES/iittt-pmmp/domain.md)

## Polynomial factors from the top pair

For any top point \(X=(x,y)\),
\[
 (x-f)(y-d)=[DXF]+(1-x)(1-y).
\]
Hence the three factors `top_p_budget`, `top_q_budget`,
`top_r_budget` are \((x-f)(y-d)-ns\) for \(X=P,Q,R\) and
\(n=3,3,1\), respectively. For \(P,Q\), subdivision at \(R\)
gives the area floor \(3s\). For \(R\), use its positive area
on \(DF\).

Write \(A=1-d,B=1-f,\Omega=AB\). The quadrilateral has \(p>r\)
and \(t>q\), by the two-turn argument for a convex top pair.
The positive turns give the factors
\[
 (q-d)(p-r)-s\ge0,\qquad (t-q)(r-f)-s\ge0
\]
named `top_ear_p` and `top_ear_q`. For example
\([DPQ]=(q-d)(p-r)-(1-p)(t-q)\). For the second use
\([PQF]=(t-q)(r-f)-(p-r)(1-t)\). Cauchy–Schwarz gives
\((p-f)(t-d)\ge4s\), giving `top_extreme_budget`.

For the last two factors, put \(x=(p-r)/B,\ y=(t-q)/A,\)
\(\alpha=(1-p)/B,\ \beta=(1-t)/A\). The same two ear inequalities
give
\[
 s/\Omega\le\min(x,y)-xy-\alpha y-\beta x
       \le z(1-\alpha-\beta-z),\qquad z=\min(x,y).
\]
The second inequality follows by replacing the larger of \(x,y\) by
the smaller, which can only increase the right side. By the
arithmetic–geometric mean inequality,
\(\alpha+\beta+2\sqrt{s/\Omega}\le1\). Multiplying by \(M\ge A,B\)
and using \(M\ge\sqrt\Omega\) gives
\[
 p+t\ge 2-M+2\sqrt s>1.7029.
\]
The last comparison uses \((.30495)^2<s\). This proves
`top_extreme_sum`. Also \(4s\le\Omega\le M^2<9s\), and
\(100s\Omega-(2\Omega+12s)^2=4(\Omega-4s)(9s-\Omega)\ge0\).
Thus \(10\sqrt{s\Omega}\ge2\Omega+12s\). Multiply the bound on
\(\alpha+\beta\) by \(5\Omega\) and substitute to get the final
factor `top_deficits`,
\[
 3(1-d)(1-f)-5(1-d)(1-p)-5(1-f)(1-t)-12s\ge0.
\]
[Two-turn geometry](C1_BIITT.md)

## The finite contradictions

The [two unconditional stages](C1_TOP_TRIPLE_CORE_TABLES/iittt-pmmp/global.md)
precede the branch refinements. The [exhaustive tree](C1_TOP_TRIPLE_CORE_TABLES/iittt-pmmp/tree.md)
has 140 determinant-sign splits. Read `m` and `p` as the negative
and positive alternatives for the determinant named at the parent.
A coarse split uses the original box. A refined stage may use the
displayed global box or its parent's established box. Within a branch
each further box comes from the preceding coordinate step. The [table
guide](C1_TOP_TRIPLE_CORE_TABLES/INDEX.md) specifies all references,
sign deductions, endpoint rules and weighted-sum notation. The
coordinate factor `top_cost` uses \(\tau\) in this word. The contact
factor `order_hc` means \(h-c\). In the scalar relations this is
the same inequality, since the unsigned areas \(A_{OHD}, A_{OCF}\)
are \(h,c\).

| Contradiction | Leaves |
| --- | ---: |
| Geometry | 30 |
| Area intervals | 67 |
| Coordinate intervals | 29 |
| Weighted inequalities | 15 |

Each of the 126 geometric or interval leaves gives a geometric
violation, disjoint area endpoints or an empty coordinate interval.
The weighted leaves give 2,044 displayed multipliers of the actual
equalities and nonnegative factors, with exact strictly negative
ceilings. For instance the [33-term leaf](C1_TOP_TRIPLE_CORE_TABLES/iittt-pmmp/rmmpmmppmmmpp.md)
has upper bound \(-224000979553/250000000000\). The 141 terminal
contradictions finish the only surviving top word and exclude the
entire count \((0,2,0,3,0)\) at \(s=93/1000<2A^*\).
