# The interior-point line with both side caps occupied

Suppose the six normalized contacts are
\[
 A=(0,a),\quad B=(b,0),\quad C=(c,0),\quad E=(1,e),\quad
 F=(f,1),\quad H=(0,h)
\]
with \(0<a\le e\le h<1\), \(a<h\), \(0<b\le f\le c<1\) and \(b<c\).
Let \(D=(r,d)\) lie strictly in the cap \(CE(1,0)\) and
\(G=(g,z)\) strictly in the cap \(FH(0,1)\).
Let \(O,P\) be any two points inside the contact hexagon.
Write \(s=93/1000\) and assume all actual unsigned doubled triangle
areas are at least \(s\).

**The line \(OP\) has at least three vertices of \(ABCDEFGH\) on either
side.** Each of the eight quadrilaterals of four consecutive vertices
contains at most one of \(O,P\). Both statements apply to the entire
counts IIRL and BIRL, including all positions in either of the two
quadrilaterals \(HABC,HCEF\).
[Six-contact placements](N6_PLACEMENTS.md)

## The eight projected ears

Each side cap is precisely the portion of the square strictly beyond
its base chord. Thus \(D,G\) each replace their own base by two edges
of the contact hull. More explicitly, each base has its own cap
point alone on its outer side, and the six contacts are extreme as
endpoints of their square-side supporting faces. All eight vertices
are extreme, in cyclic order \(A,B,C,D,E,F,G,H\). In particular,
\(c<r<1, 0<d<e, 0<g<f, h<z<1\). Both remaining points are
inside this strict octagon.

Project \(D\) to \(D'=(1,d)\) and \(G\) to \(G'=(g,1)\).
Use brackets for signed doubled areas. The actual clearances give
\[
 [CD'E]-[CDE]=(1-r)e>0,\qquad
 [FG'H]-[FGH]=(1-z)f>0.
\]
Since \(f\le c, e\le h\), the two adjacent projected ears satisfy
\[
 [D'EF]=(1-f)(e-d)\ge(1-c)(e-d)=[CD'E],
\qquad [EFG']=(1-e)(f-g)\ge(1-h)(f-g)=[FG'H].
\]
The other four projected ear areas are the actual values
\(a(c-b),\,d(c-b),\,g(h-a),\,b(h-a)\).
All eight projected ears therefore have area at least \(s\).
The boundary-ear theorem gives
\[
 \ell<a,b,1-c,d,1-e,1-f,g,1-h\le31657/55000,\qquad
 \ell=31/251.
\]
Each projected side span \(h-a,c-b,e-d,f-g\) is below \(753/1000\).
Each projected overlap \(e-a,h-d,f-b,c-g\) exceeds \(21/250\).
These conclusions use only the eight ear products.
[Boundary-ear theorem, §§1–2](N8_BOUNDARY_RANGES.md)

## An area cost for two points in a four-vertex cap

Take four consecutive actual octagon vertices \(I,J,K,L\) in this order
and write \(W\) for the doubled area of \(IJKL\).
The two triangles \(IJK\) and \(JKL\) are distinct octagon ears.
At least one is empty of both \(O,P\), because at most one octagon
ear can contain an actual point. If \(O,P\) both lie in \(IJKL\), split
the quadrilateral along the diagonal opposite the middle vertex of
an empty ear. The other triangle contains both points strictly, since
no three actual points are collinear. Its area is at least
\((4+2\sqrt3)s\), and the empty ear has area at least \(s\). Thus
\[
                       W\ge(5+2\sqrt3)s.                 \tag{1}
\]
[Octagon ear bound](NINE_CONVEX_POINTS.md) and
[two-point triangle cost](TRIANGLE_OCCUPANCY.md)

We bound the eight actual values of \(W\) in two groups. The four caps
around the square corners all have
\[
 W\le(1-\ell)^2<(5+2\sqrt3)s .
\]
Indeed \(HABC,BCDE,FGHA\) lie in the endpoint triangles with third
vertex \((0,0),(1,0),(0,1)\) and respective bases \(HC,BE,AF\).
Their doubled areas are \(hc, (1-b)e, f(1-a)\), each bounded
by \((1-\ell)^2\). For the fourth cap use the actual area identity
\[
  W(DEFG)=(1-d)(1-g)-(r-f)(z-e)\le(1-d)(1-g).
\]
This follows by adding \([DEF]+[DFG]\). Both \(r-f\) and \(z-e\)
are positive. For the rational comparison, \(\ell>3/25\) and
\(\sqrt3>5/3\), so
\((1-\ell)^2<(22/25)^2=484/625<31/40=(5+10/3)s\).

For the four remaining caps the differences
\(W(\text{projected})-W(\text{actual})\) are
\[
\begin{array}{c|cccc}
 \text{cap} &ABCD&CDEF&EFGH&GHAB\\ \hline
 \text{difference}&a(1-r)&e(1-r)&f(1-z)&b(1-z).
\end{array}
\]
These are the four shoelace coefficients at the moving vertex.
The projected quadrilateral in each column has its middle two
vertices on the same square side. For an eight-boundary octagon
satisfying the eight boundary-ear inequalities, every such
quadrilateral has doubled area less than \(8s\). This follows from
the boundary products alone in the [same-side cap estimate,
§2](N8_OP_LINE_CAPS.md). Every actual cap in these four columns
therefore has \(W<8s<(5+2\sqrt3)s\). This proves the capacity
assertion for all eight quadrilaterals by (1).

The line through \(O,P\) meets two open hull edges, because both
points are interior and no actual hull vertex lies on that line.
The vertices on either side form consecutive arcs. If an arc consists
of just two vertices \(J,K\), the crossings are in \(IJ,KL\),
where \(I,J,K,L\) are consecutive. Their segment, including \(O,P\),
is in \(IJKL\). A one-vertex arc likewise puts the segment in one
ear, which lies in a four-vertex cap. Both alternatives contradict
the cap capacities. Thus the only arc sizes are 3/5 and 4/4.

## Further actual bounds from the same projections

The boundary-ear estimate yields a doubled area strictly below
\(69/100\) for each of the projected triangles corresponding to
\[
 AEF,\quad BEF,\quad ABE,\quad ABF,\quad CDG,\quad CGH,\quad CDH,\quad DGH.
\]
The first four determinants are unchanged. For the last four, first
increase \(r\) to one and then \(z\) to one. The coefficients of these
two increments, in the order used, are respectively
\((z,1-c),(0,c),(h,0),(z-h,1)\).
They are all nonnegative. Thus the same strict upper bounds hold
for the eight actual positive areas. Each contains at most one of
\(O,P\), because \((4+2\sqrt3)s>69/100\).
[Long-triangle estimate, §§1–2](N8_TRIANGLE_CAPS.md)

Finally, if \(X=(x,y)\) is either interior point, the actual pairs
\(AH,BC\) give \(x,y>\ell\). If \(y\le e\), the projection
\(D\mapsto D'\) increases \([DEX]\) by \((1-r)(e-y)\ge0\), so
\((e-d)(1-x)\ge s\). If \(y\ge e\), the hexagon edge \(EF\) gives
\[
 s\le[EFX]=(1-e)(1-x)-(1-f)(y-e)\le(1-e)(1-x).
\]
Both multipliers \(e-d,1-e\) are below \(753/1000\), so \(1-x>\ell\).
For \(x\le f\), \(G\mapsto G'\) increases \([FGX]\) by
\((1-z)(f-x)\ge0\), yielding \((f-g)(1-y)\ge s\).
For \(x\ge f\), use
\([EFX]=(1-f)(1-y)-(1-e)(x-f)\le(1-f)(1-y)\).
This proves \(\ell<x,y<1-\ell\) for both actual points.

## Larger arcs and the diagonal \(HC\)

In BIRL one interior point lies on each side of \(HC\). The segment
between them crosses the diagonal. Consequently the two hull-edge
crossings of their line must lie on different sides of \(HC\).
One crossed edge belongs to \(HA,AB,BC\), the other to
\(CD,DE,EF,FG,GH\). This excludes the three possibilities with
crossed edges \(CD,FG\), \(DE,GH\), or \(CD,GH\). Their arc sizes
are 3/5, 3/5 and 4/4 respectively.

In IIRL both points are on the upper side of \(HC\). A short arc
\(ABC\) would give crossed edges \(HA,CD\), so their connecting
segment lies in \(HACD\). Splitting \(HACD\) along \(HC\) puts
both upper points strictly inside \(HCD\), contrary to the capacity
of \(CDH\) above. For short arc \(HAB\) the crossed edges are
\(GH,BC\), so both upper points are in \(GHBC\). Splitting along
\(HC\) puts them strictly inside \(GHC\), again impossible.

For reference, the surviving edge pairs are as follows. Each pair
denotes the two open edges hit by the interior line. Reading around
eight cyclic vertices gives eight pairs with cyclic separation three
and four pairs with separation four before the exclusions just proved.

| Count | 3/5 edge pairs | 4/4 edge pairs |
| --- | --- | --- |
| BIRL | \(AB,DE\) · \(AB,FG\) · \(BC,EF\) · \(BC,GH\) · \(HA,CD\) · \(HA,EF\) | \(AB,EF\) · \(BC,FG\) · \(HA,DE\) |
| IIRL | \(AB,DE\) · \(AB,FG\) · \(BC,EF\) · \(CD,FG\) · \(DE,GH\) · \(HA,EF\) | \(AB,EF\) · \(BC,FG\) · \(CD,GH\) · \(HA,DE\) |

The [IIRL proof](N6_IIRL.md) covers all ten pairs in its row.
The [BIRL proof](N6_BIRL.md) covers all nine pairs in the other row.
