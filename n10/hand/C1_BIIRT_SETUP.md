# Excluding one lower point, two central points and two adjacent occupied caps

The count is \((k,j,r,t,l)=(1,2,1,1,0)\). Let
\(O=(0,0),H=(0,h),C=(c,0),D=(1,d),F=(f,1)\) be the contacts,
with \(d\le h,\ f\le c\). Write \(Y=(u,v)\) for the lower point,
\(Z=(z,w),P=(p,q)\) for the central pair, \(Q=(r,t)\) for the right
point, and \(R=(j,k)\) for the top point. All areas are doubled.
Suppose all 120 unsigned actual triangle areas are at least \(s=93/1000\).
Relabel the two central points to have \([OZP]>0\).
The choice imposes no order on \(h,c\). Coordinate transposition
covers the left-side count. [Contact model](C1_EXTERIOR_REDUCTION.md)

## Hull and signs

The right and top points are separated from the contact pentagon
by \(CD\) and \(DF\), respectively. Inserting them into its boundary
gives the strict heptagon \(O,C,Q,D,R,F,H\). Indeed \(Q\) can
first be inserted between \(C,D\), and the inward tests at \(R\) are
\[
 [CQR]=[CQD]+(r-c)(k-d)+t(1-j)>0,\qquad
 [QDR]=(1-r)(k-d)+(d-t)(1-j)>0 .
\]
In the second formula the terms are nonnegative and clearance excludes
zero. Every ordered hull triple and every inward hull-edge test at
\(Y,Z,P\) is positive. At each of these three points \(X\) we have
\([OHX]<0\) and \([OCX]>0\). The lower test is \([HCY]<0\).
At either central point \(X=Z,P\) the tests are
\([HCX]>0,[HFX]<0,[CDX]>0,[DFX]>0\).
These statements follow from the respective actual triangle and
quadrilateral containments, including when a cap point is on a square side.

## Closed initial intervals

Put \(M=1-s,\ c_0=3s,\ c_1=883/1000,\ d_0=4s,\
d_1=897/1000,\ e=s/c_1\). The top point forces \(d<d_1\).
For completeness, its cap gives \((1-d)(1-f)\ge s\).
The actual clearances at \(HDF,OHF\) give
\[
 f([HDF]-s)+(1-f)(hf-s)= f-df^2-s\ge0.
\]
If \(d\ge d_1\), then \(f\le10/103\) and the increasing function
\(x-d_1x^2\) on \([0,10/103]\) has value below \(s\) even at its
right endpoint, with gap \(46337/10609000\).
[Contact calculation](C1_SIDE_PAIR_TOP_BOUNDS.md)

The right point satisfies \(ct\ge s\) and
\(d(r-c)-(1-c)t\ge s\). Multiplying the latter by \(c\) and adding
\((1-c)ct\ge(1-c)s\) yields \(cd(r-c)\ge s\). Thus
\(dc(1-c)\ge s\), \(d\ge 4s\) and \(r\ge2\sqrt{s/d}\).
For \(c\ge c_1>1/2\) we would have \(s\le d_1c_1(1-c_1)<s\).
The right abscissa is \(r>643/1000\), since
\(d_1(643/1000)^2<4s\). The cap test also yields
\(t\le d-s/(1-c)\). Every free point satisfies \(x\ge s,\ y\ge e\)
by clearance at \(OH,OC\).

The actual lower fan gives \(hu,cv,hc-hu-cv\ge s\).
Consequently \(c\ge hc\ge c_0,\ u\le c_1-2s,\ v\le1-2e\).
For either central point \(X=(x,y)\) the two identities
\[
 (1-f)[CDX]+(1-c)[DFX]=[CDF](1-x),\qquad
 (1-d)[FHX]+(1-h)[DFX]=[HDF](1-y)
\]
give \(x,y\le M\), using
\([CDF]\le1-f,\ [HDF]\le1-d\).
Finally \(s\le f\le c_1\), since \(hf\ge s\) and \(f\le c\).
The two expressions for the actual top area are
\[
 -[DFR]=(1-d)(j-f)-(1-f)(1-k)
       =(1-f)(k-d)-(1-d)(1-j).
\]
Thus \(j\ge s+s/(1-d_0)\) and \(k\ge d_0+s/M\).
In coordinate order \(h,c,d,f,u,v,z,w,p,q,r,t,j,k\) we obtain
\[
\begin{gathered}
[d_0,1], [c_0,c_1], [d_0,d_1], [s,c_1],
[s,c_1-2s], [e,1-2e],\\
[s,M], [e,M], [s,M], [e,M],
[643/1000,1], [e,d_1-s/(1-c_0)],\\
[s+s/(1-d_0),1], [d_0+s/M,1].
\end{gathered}
\]

The actual triangles \(OCQ,HDF\) have the additional upper bounds
\(21/50,1-4s\). The former follows from
\(ct\le1-(1-s)(1-c)-s/(1-c)\le1-2\sqrt{s(1-s)}<21/50\).
The latter follows from \([HDF]\le1-d\). The doubled area of \(HCDF\)
is \(1-(h-d)(c-f)\le1\), so this unit ceiling applies to quadrilaterals
on \(H,C,D,F,Z,P\). [Side-cap proof](SIDE_CAP_BASE_TRIANGLES.md)

## Factors from the single lower point and the top point

The three fan tests at \(Y\) give \(u/c+v/h\le1-s/(hc)\).
Since \(h,c\le1\), this proves the factor
`lower_sum` equal to \(1-s-u-v\).
Apply the one-occupant support inequalities to the actual
quadrilaterals \(OCDH\) and \(OCFH\), each containing \(Y\).
Their factors `lower_HCD`, `lower_HCF` are
\[
 [HCD]-(149/20)s(1-c),\qquad [HCF]-(149/20)s(1-h).
\]
These are the definite-rate versions of the single selected
lower-point inequalities. They require only the actual point
\(Y\) in \(OHC\).
[Cancelled support inequalities](C1_TWO_LOWER_TWO_CENTRAL_TOP_SUPPORT.md#a-single-selected-lower-point)

For the top point \(R\), the actual clearance \([DRF]\ge s\)
and \((j-f)(k-d)=[DRF]+(1-j)(1-k)\) give the factor
`top_actual` equal to \((j-f)(k-d)-s\).
The five actual vertices \(C,D,R,F,H\) are strictly convex in that
order. The occupied-top pentagon inequality gives the factor
`top_pentagon`
\[
 1-hc-f(1-h)-d(1-c)
    -\frac{23}{1000}\bigl(df-(1-h)(1-c)\bigr)\ge0 .
\]
Its premises are the actual top point and the normalized contacts.
[Pentagon bound, equation (6)](C1_TWO_LOWER_TWO_CENTRAL_TOP_CAPS.md)

## The complete adjacent-cap exclusion

The [domain table](C1_BIIRT_TABLES/domain.md) prints the fourteen
initial intervals, the actual heptagon and placement signs, and all
120 signed determinant polynomials. The
[two global stages](C1_BIIRT_TABLES/global.md) narrow the whole
domain. Each refined branch uses its indicated global or parent
box. Coarse splits use only their named determinant.

The [tree](C1_BIIRT_TABLES/tree.md) has 634 determinant-sign splits
and both children of each split. Every triple used for a split
has distinct actual vertices, so the two strict signs cover its
full domain. The 635 terminal contradictions are as follows.

| Contradiction | Leaves |
| --- | ---: |
| Geometry | 164 |
| Area intervals | 234 |
| Coordinate intervals | 112 |
| Weighted inequalities | 125 |

Each geometric row follows from its printed containment or
signed-identity tests. The area and coordinate rows use their
preceding exact bounds. Each weighted sum has positive integer
multipliers on inequalities and a strictly negative rational
ceiling. The 125 weighted leaves print 27,575 multipliers in all.
[Exact table rules and separate replay](C1_BIIRT_TABLES/INDEX.md)

Consequently the entire count \((1,2,1,1,0)\) is excluded at
\(s=93/1000<2A^*\). Transposition gives the corresponding
left-cap count.
