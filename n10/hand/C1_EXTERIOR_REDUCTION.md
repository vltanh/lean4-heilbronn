# One corner: an exhaustive exterior-placement reduction

Use the actual C1 contacts

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),\qquad
 0<d\le h\le1,\quad0<f\le c\le1.
\]

There are five other actual points. Assume every unsigned actual doubled
triangle area is at least \(s=93/1000\). Write

\[
 G=4+2\sqrt3,\qquad J=(11+3\sqrt5)/2,
 \qquad Gs>347/500,\quad Js>823/1000.
 \tag{1}
\]

This note proves whole count exclusions and an exhaustive remaining
catalogue. It does not assert that the remaining catalogue is empty.
The actual five-anchor pentagon is \(O,C,D,F,H\). Its complement in
the square consists of the three corner caps

\[
 \mathcal R=\operatorname{conv}\{C,D,(1,0)\}\setminus CD,
 \quad\mathcal T=\operatorname{conv}\{D,F,(1,1)\}\setminus DF,
 \quad\mathcal L=\operatorname{conv}\{F,H,(0,1)\}\setminus FH.
 \tag{2}
\]

The indicated corners are virtual container vertices. Square-side
positions of an actual point are allowed. Membership on an actual
anchor chord would give an actual collinear triple and is impossible.

## 1. Basic placements and anchor bounds

Let \(k\) count free points in \(OHC\), let \(j\) count those in
\(HCDF\), and let \(r,t,l\) count those in the three caps in (2).
All cap interiors lie above \(HC\), so the placements are exhaustive
and disjoint. The actual triangle and quadrilateral bounds give

\[
 0\le k\le3,\qquad 0\le j\le2,
 \qquad k+j+r+t+l=5.
 \tag{3}
\]

For the quadrilateral, use
\(A(HCDF)=1-(h-d)(c-f)\le1\) and the capacity-two theorem.
The actual anchor triangles give

\[
 hf,cd\ge s,\qquad s\le d,f\le1-s.
 \tag{4}
\]

The upper bounds follow from
\(A(CDF)=1-c+d(c-f)\le1-f\) and
\(A(HDF)=1-h+f(h-d)\le1-d\).
Every other actual point \(R=(x,y)\) satisfies \(hx,cy\ge s\),
by the actual triangles \(OHR,OCR\).

A point \(R=(x,y)\in\mathcal R\) has

\[
 -D(C,D,R)=d(x-c)-(1-c)y\ge s,
 \qquad cy\ge s.
\]

Multiply the first inequality by \(c\), and the second by \(1-c\).
Their sum gives the useful support restriction

\[
 cd(x-c)\ge s,\qquad dc(1-c)\ge s,
 \qquad d\ge4s.
 \tag{5}
\]

Transposition gives \(fh(1-h)\ge s\) and \(f\ge4s\) for an
occupied left cap. These facts use no lower-point count assumption.

## 2. Two points in a side cap have a triangular outer hull

Suppose \(R_1,R_2\in\mathcal R\). For either point \((x,y)\),
the line to \(D\) meets the bottom side at

\[
 b_R=\frac{dx-y}{d-y},\qquad c<b_R\le1.
\]

The inequalities follow from the strict cap condition, \(0<y<d\),
and \(x\le1\). Equality \(b_R=1\) allows an actual cap point
on the right side and causes no degeneracy in the support construction.

Choose \(X\) with the larger intercept \(b\). Equal intercepts
would make \(D,R_1,R_2\) collinear. The virtual triangle with vertices
\(O,D,(b,0)\) contains both points and \(C\). Its two actual
support contacts are \(C\) on the bottom leg and \(X\) on the
other leg; both are in the relative interiors of those legs. Its
positive doubled area is \(\Omega=bd\le d\le1\).

Affinely normalize this support triangle to the half-square of
[THREE_CORNERS.md](THREE_CORNERS.md), Section 2, with anchors
\(A,E,H_0,F_0\) corresponding to \(O,D,C,X\), respectively.
The normalized minimum is at least \(s/\Omega\ge s>1/11\).
The other cap point, denoted \(Y\), is outside \(OCD\), hence
outside \(AEH_0\). In the complete five-cell table it is in cell
III, IV, or V. Cells IV and V are impossible above \(1/11\).
Cell III therefore gives both strict containments

\[
 Y\in CDX\cap ODX.
 \tag{6}
\]

For completeness, cell III also gives the cost
\(\Omega\ge Gs\). In normalized coordinates the two opposite
anchor triangle areas are \(h_0f_0\) and
\((1-h_0)(1-f_0)\). The latter contains \(Y\), so is at least
\(3s/\Omega\), while the former is at least \(s/\Omega\).
The Cauchy inequality

\[
 \sqrt{h_0f_0}+\sqrt{(1-h_0)(1-f_0)}\le1
\]

therefore gives \((1+\sqrt3)^2s\le\Omega\). In the original
coordinates, (6) also gives

\[
 d\ge Gs>347/500,
 \qquad A(CDX)\ge3s,
 \qquad d(1-c)\ge3s.
 \tag{7}
\]

Transposition proves the corresponding statements for a left-cap pair.

## 3. No side cap contains three points

If three cap points are present, choose \(X\) with the largest bottom
intercept as above. The same support normalization puts both remaining
points strictly inside \(CDX\). Hence \(A(CDX)\ge Gs>347/500\).
On the other hand, \(cy_X\ge s\), \(x_X\le1\), and (4) give

\[
\begin{aligned}
 A(CDX)
 &=d(x_X-c)-(1-c)y_X\\
 &\le(1-c)\left(1-s-\frac{s}{c}\right)\\
 &=1-(1-s)c-\frac{s}{c}\\
 &\le1-2\sqrt{s(1-s)}<\frac{21}{50}.
\end{aligned}
 \tag{8}
\]

The last strict comparison is exact because
\(s(1-s)=84351/10^6>(29/100)^2\).
This contradicts (1). Therefore

\[
 r,l\le2.
 \tag{9}
\]

## 4. A side pair forbids two lower points and two top-cap points

Suppose \(r=2\), and retain its outer point \(X\).
Using \(A(CDX)\ge3s\) and \(cy_X\ge s\) in its signed area
formula gives

\[
 dc(1-c)\ge s(1+2c).
\]

Put \(z_0=hc\). Since \(d\le h\) and \(c\ge z_0\),

\[
 z_0(1-z_0)\ge s(1+2z_0),
 \qquad z_0^2-(1-2s)z_0+s\le0.
 \tag{10}
\]

If \(k\ge2\), the two-interior-point triangle theorem gives
\(z_0\ge Gs>347/500\). The polynomial on the left of (10)
increases for \(z_0\ge347/500\), and its value there is
\(243/25000>0\), a contradiction. Thus a side pair forces \(k\le1\).

If \(t\ge2\), the four-point endpoint theorem in TYPE_II.md,
Section 1 requires the top virtual triangle to have doubled area at
least \(3s\). But (4) and (7) give

\[
 (1-d)(1-f)<(1-347/500)(1-s)
 =\frac{138771}{500000}<\frac{279}{1000}=3s.
 \tag{11}
\]

This is also impossible. Reflection proves both conclusions for
\(l=2\). In particular,

\[
 \max(r,l)=2\quad\Longrightarrow\quad k\le1,\ t\le1.
 \tag{12}
\]

## 5. The remaining elementary cap-count exclusions

Four top-cap points, together with \(D,F\), would give six actual
points in a triangle with those two actual endpoints. Its area is at
most \((1-s)^2=822649/10^6\), whereas the six-point endpoint theorem
requires at least \(Js\). Since

\[
 J>4427/500,\qquad (4427/500)s-(1-s)^2=773/10^6>0,
\]

this is impossible. Thus \(t\le3\).

The two side caps cannot each contain a pair. Their four-point endpoint
costs and the overlaps give

\[
 d(1-f)\ge d(1-c)\ge3s,
 \qquad f(1-d)\ge f(1-h)\ge3s.
\]

If \(d\le f\), the first expression is at most
\(d(1-d)\le1/4\); if \(f\le d\), the second is at most
\(f(1-f)\le1/4\). Both contradict \(3s>1/4\).
Therefore \((r,l)\ne(2,2)\).

If all three caps are occupied and \(t=3\), (5) and its transpose
give \(d,f\ge4s\). The top-cap container area is then at most
\((1-4s)^2=394384/10^6\). Its five actual points, including the two
endpoints, instead require at least
\((3+2\sqrt2)s>5s=465/1000\). This excludes that whole count.
Thus \(t=3\) forces \(rl=0\).

Finally, if \(k=3\) and both side caps were occupied, their individual
area clearances give \(h(1-c)\ge s\) and \(c(1-h)\ge s\).
Writing \(z_0=hc>823/1000\), these imply \(h,c\ge z_0+s\), hence

\[
 z_0^2-(1-2s)z_0+s^2\le0.
\]

This polynomial increases above \(823/1000\) and equals
\(2007/125000>0\) at that endpoint. Consequently \(k=3\) also
forces \(rl=0\).

## 6. Exhaustive remaining counts

Transposition exchanges \(r,l\), so for this count catalogue arrange
\(r\ge l\). This uses the symmetry only once; no further ordering
of \(d,f\), or of lower-point coordinates, is imposed in the table.
The exact-pentagon alternative \((k,j;r,t,l)=(3,2;0,0,0)\) is
excluded by C1_PENTAGON.md. Applying (3), (9), (12), and Section 5
leaves exactly the following 32 rows, grouped by \(k\). Each listed
four-tuple is \((j,r,t,l)\).

| Lower count \(k\) | Remaining \((j,r,t,l)\) |
|---:|---|
| 0 | \((1,1,2,1),(1,1,3,0),(1,2,1,1),(2,0,3,0),(2,1,1,1),(2,1,2,0),(2,2,0,1),(2,2,1,0)\) |
| 1 | \((0,1,2,1),(0,1,3,0),(0,2,1,1),(1,0,3,0),(1,1,1,1),(1,1,2,0),(1,2,0,1),(1,2,1,0),(2,0,2,0),(2,1,0,1),(2,1,1,0),(2,2,0,0)\) |
| 2 | \((0,0,3,0),(0,1,1,1),(0,1,2,0),(1,0,2,0),(1,1,0,1),(1,1,1,0),(2,0,1,0),(2,1,0,0)\) |
| 3 | \((0,0,2,0),(0,1,1,0),(1,0,1,0),(1,1,0,0)\) |

This finite list is a placement reduction, not a configuration search.
Each exclusion above concerns an entire continuous count family.
The 32 surviving rows remain separate proof obligations; this note does
not close the one-corner parent.
