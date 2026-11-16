# Geometry of the exact-pentagon one-corner child

This note gives the geometric reductions used in the exact-pentagon child
of C1. It does not, by itself, exclude the child: the remaining finite
orientation cases require the polynomial inequalities in the companion
completion note. All statements below are necessary consequences of an
actual configuration in the unit square. No numerical optimization is a
premise.

Write

\[
 s=\frac{93}{1000},\qquad
 G=4+2\sqrt3,\qquad J=\frac{11+3\sqrt5}{2},\qquad
 K_0=\frac{3927}{500}.
\]

All areas in this note are doubled. For actual points, put
\(D(A,B,C)=\det(B-A,C-A)\), and suppose every unsigned actual triangle
area is at least \(s\). We use the already proved triangle bounds
\(G s\) and \(J s\) for two and three interior points, the exclusion of
four interior points, and the exclusion of a clustered triple. We also
use the following quadrilateral bounds:

| Number of actual interior points | Necessary doubled area |
|---|---|
| One | At least \(2(1+\sqrt2)s>449/1000\) |
| Two | At least \(8s\) |
| Three | Greater than \(93/91\) |

The last row is the unit-square theorem in
[SQUARE_QUADRILATERAL_THREE.md](SQUARE_QUADRILATERAL_THREE.md).
The other bounds are recorded in the earlier triangle and quadrilateral
lemmas. In particular,

\[
 Gs>\frac{694}{1000},\qquad Js>\frac{823}{1000}.
 \tag{1}
\]

These rational comparisons follow from
\(\sqrt3>433/250\), \(\sqrt5>559/250\), and
\(\sqrt2>707/500\).

## 1. Exactly three lower points and two upper points

The five selected C1 anchors are

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),
 \qquad 0<d\le h\le1,\quad0<f\le c\le1.
 \tag{2}
\]

Assume that the actual convex hull is exactly the pentagon
\(O,C,D,F,H\). Thus all five remaining actual points are strictly
inside that pentagon. A point on one of its edges, or on the actual
diagonal \(HC\), would give an actual collinear triple and is already
excluded.

The diagonal \(HC\) divides this pentagon into \(OHC\) and \(HCDF\).
The latter quadrilateral has doubled area

\[
 1-(h-d)(c-f)\le1.
 \tag{3}
\]

It contains at most two actual interior points. The actual triangle
\(OHC\) contains at most three. Consequently the five points split
exactly as three in \(OHC\) and two in \(HCDF\). Denote the upper pair
by \(P=(p,q)\), \(Q=(\ell,m)\).

The lower triple is distributed, since the triangle \(OHC\) has doubled
area at most one and a clustered triple is impossible in the original
square. Choose its point \(Y=(u,v)\) with smallest barycentric
coordinate at \(O\). Name the other two \(Z=(z,w)\), \(X=(x,a)\) so
that the full distributed mesh is

\[
\begin{array}{lll}
 Z\in OHY,&X\in OCY,&Y\in HCZ,\\
 X\in OCZ,&Y\in HCX,&Z\in OHX.
\end{array}
 \tag{4}
\]

All six containments are strict. The central face has
\(D(Y,Z,X)>0\). The rays at \(O\) occur in the strict order

\[
 OX<OY<OZ
 \tag{5}
\]

when read counterclockwise from the positive horizontal axis. This is
the seven-face mesh from TRIANGLE_OCCUPANCY.md, in its unsigned-area
or orientation-adjusted form: the fixed outer order \(O,H,C\) is
clockwise.

Transpose the square, if necessary, to arrange

\[
 u\ge v.
 \tag{6}
\]

This transpose exchanges \(H,C\), \(D,F\), and \(X,Z\), and preserves
the choice of the smallest \(O\)-barycentric coordinate. It therefore
does not impose an additional restriction on the family. Independently
interchange \(P,Q\) to arrange \(D(H,P,Q)<0\).

## 2. Uniform rational bounds and mesh inequalities

The triangular-hull bound and (3) give

\[
 hc>\frac{823}{1000},\qquad
 1-(h-d)(c-f)\ge8s.
 \tag{7}
\]

Since \(h,c\le1\), each of \(h,c\) exceeds \(823/1000\). Moreover
\(h+c>907/500\), because \((907/1000)^2<823/1000\).
The actual triangles \(OCD,OHF,HDF,CDF\) give

\[
 s\le d,f\le1-s.
 \tag{8}
\]

For the upper bounds, note that
\(A(HDF)=1-h+f(h-d)\le1-d\), and
\(A(CDF)=1-c+d(c-f)\le1-f\).

Subdivision in (4) gives

\[
\begin{gathered}
 hu,cv,hx,cw\ge3s,\qquad hz,ca\ge s,\qquad
 hc-hu-cv\ge s,\\
 h(u-z)\ge2s,\qquad c(v-a)\ge2s.
\end{gathered}
 \tag{9}
\]

It follows that \(u,v,x,w\le1-4s\), and
\(u-z\ge2s\), \(v-a\ge2s\).

Here are two further mesh estimates, including their constants. The
three connector faces have areas

\[
 b_1=-D(H,Y,Z),\quad b_2=-D(O,Z,X),\quad b_3=D(C,Y,X).
\]

The general seven-face argument gives
\(b_1+b_2+b_3\ge3\varphi s\), where
\(\varphi=(1+\sqrt5)/2\). After accounting for the other two ears
and the central face, each ear is at most
\(hc-(3\varphi+3)s\). Thus the following four quadratic expressions
are nonnegative:

\[
\begin{aligned}
 M_1&=h(c-z)-K_0s,\\
 M_2&=c(h-a)-K_0s,\\
 M_3&=hu+cv-K_0s,\\
 M_4&=b_1+b_2+b_3-\frac{2427}{500}s.
\end{aligned}
 \tag{10}
\]

Indeed \(3\varphi+3>K_0\) and \(3\varphi>2427/500\), using
\(\sqrt5>559/250\). In particular,

\[
 z,a<1-K_0s=\frac{134789}{500000}<\frac{27}{100},
 \qquad u+v\ge\frac{365211}{500000}.
 \tag{11}
\]

Let \(k=D(Y,Z,X)\), and put \(\kappa=k/s\). In the general mesh
proof, write \(Z_0=(b_1+b_2+b_3)/s-3\). Its area identities give

\[
 0\le Z_0\le\frac{442}{93}-\kappa,
 \qquad \frac{Z_0^2}{3}+Z_0\ge6\kappa-3.
 \tag{12}
\]

The expression
\[
 \frac{(442/93-\kappa)^2}{3}+\frac{442}{93}-\kappa-6\kappa+3
\]
decreases for \(0\le\kappa\le442/93\), and its value at \(8/5\) is
\(-87029/648675\). Consequently

\[
 M_5=\frac85s-D(Y,Z,X)>0.
 \tag{13}
\]

The order \(u\ge v\), together with (9), yields

\[
 v\le\frac{hc-s}{h+c}\le\frac{1-s}{2}=\frac{907}{2000}.
\]

The second expression increases separately in \(h,c\), since its two
derivatives have positive numerators \(c^2+s\) and \(h^2+s\).
Also \(u\ge365211/10^6\) by (6) and (11).
Finally the actual triangle \(OXY\) gives

\[
 xv-ua\ge s,
 \qquad x-a\ge\frac{s}{v}\ge\frac{2s}{1-s}>\frac{41}{200}.
 \tag{14}
\]

In particular \(x>149/500\). The following closed box therefore
contains every configuration under consideration:

| Coordinates | Lower bound | Upper bound |
|---|---|---|
| \(h,c\) | \(823/1000\) | \(1\) |
| \(d,f\) | \(s\) | \(1-s\) |
| \(u\) | \(365211/10^6\) | \(1-4s\) |
| \(v\) | \(3s\) | \(907/2000\) |
| \(z,a\) | \(s\) | \(27/100\) |
| \(w\) | \(3s\) | \(1-4s\) |
| \(x\) | \(149/500\) | \(1-4s\) |
| \(p,q,\ell,m\) | \(s\) | \(1\) |

Closing a strict endpoint only enlarges a later polynomial domain.

## 3. Additional endpoint and quadrilateral inequalities

For \(R=(r,t)\in\{D,F,P,Q\}\), the actual quadrilateral
\(O,H,R,C\) is convex and contains all three lower points. Its
doubled area is \(hr+ct\). The square quadrilateral theorem gives

\[
 hr+ct>\frac{93}{91}.
 \tag{15}
\]

The endpoint-seven theorem supplies a separate useful inequality.
The triangle with vertices \(O,H,(1/h,0)\) has doubled area one,
has two actual vertices, and contains the six actual points
\(O,H,C,X,Y,Z\). An additional actual point \(R=(r,t)\) in the
positive quadrant cannot lie inside it. Therefore

\[
 t+h^2r-h>0.
 \tag{16}
\]

Interchanging the axes gives \(r+c^2t-c>0\). The nontrivial anchor
instances are \(d+h^2-h>0\) and \(f+c^2-c>0\); both versions are
used for each of \(P,Q\).

## 4. Fixed cross signs and a small triangle with base ZX

Every upper point \(R\) lies above \(HC\). The line \(HR\) has
\(O,C\) strictly on the same side, and the line \(CR\) has \(O,H\)
strictly on the same side. Positive barycentric interpolation in
\(OHC\) consequently gives, for \(L\in\{X,Y,Z\}\),

\[
 D(H,L,R)>0,\qquad D(C,L,R)<0.
 \tag{17}
\]

These are actual triangle signs, so their unsigned areas are at least
\(s\). The box also gives \(x>z\), \(w>a\). The line \(ZX\) has
negative slope and cuts the positive axes strictly between \(O,C\)
and \(O,H\), respectively: the signs at \(O\) and at \(H,C\)
are opposite by (4). Hence every upper point has

\[
 D(Z,X,R)>0.
 \tag{18}
\]

There is a uniform quantitative bound. The determinant in (18)
increases with both coordinates of \(R\), so replace \(R\) by
\((1,1)\). The result is
\(x+w-z-a+za-xw\), which increases with \(x,w\) and decreases
with \(z,a\) throughout the box. Replacing \(x,w\) by \(1-4s\)
and \(z,a\) by \(s\) gives

\[
 A(ZXR)\le1-2s-15s^2=\frac{684265}{10^6}<Gs.
 \tag{19}
\]

Thus each actual triangle \(ZXP\), \(ZXQ\) has capacity one.

Two more signs follow by following a ray from \(O\). The segment
of the line \(YZ\) between \(OY\) and \(OH\) lies inside \(OHC\).
A ray above \(OY\) meets it before reaching the upper region.
The analogous statement holds for the line \(YX\) below \(OY\).
Consequently

\[
 D(O,Y,R)>0\Longrightarrow D(Y,Z,R)<0,
 \qquad
 D(O,Y,R)<0\Longrightarrow D(Y,X,R)>0.
 \tag{20}
\]

The simpler ray-order consequences are
\(OYR>0\Rightarrow OXR>0\) and
\(OYR<0\Rightarrow OZR<0\). Also \(ODZ>0\), \(OFX<0\),
\(OFY<0\), directly from (6) and the rational box.

## 5. The three actual Y-fan triangles each have capacity one

For \(CDY\), use (8)--(9):

\[
\begin{aligned}
 A(CDY)&=d(c-u)+(1-c)v\\
 &\le(1-s)(c-3s)+(1-c)(1-4s)\\
 &\le1-4s+3s^2=\frac{653947}{10^6}<Gs.
\end{aligned}
 \tag{21}
\]

Here \(c-3s>0\), so replacing \(d\) by its upper bound is valid.
The transposed calculation gives the same bound for \(HFY\).
For the middle triangle,

\[
 A(DFY)=1-df-(1-d)u-(1-f)v
 \le1-df-3s(2-d-f).
\]

The last expression is bilinear in \(d,f\in[s,1-s]\), so its
maximum occurs at a box vertex. The three distinct values are
\(1-6s+5s^2\), \(1-4s+s^2\), and \(2s-7s^2\).
The middle is the largest because their relevant differences are
\(2s(1-2s)\) and \((1-2s)(1-4s)\). Therefore

\[
 A(DFY)\le1-4s+s^2=\frac{636649}{10^6}<Gs.
 \tag{22}
\]

Each of \(HFY,FDY,DCY\) has capacity one. They form the fan
triangulation of the actual convex pentagon \(Y,H,F,D,C\), which
contains \(HCDF\). Thus \(P,Q\) occupy distinct open fan sectors.
In clockwise order these sectors are

| Sector | Triangle | \(FYR\) | \(DYR\) |
|---|---|---|---|
| 0 | \(HFY\) | Negative | Negative |
| 1 | \(FDY\) | Positive | Negative |
| 2 | \(DCY\) | Positive | Positive |

The rays \(YH,YF,YD,YC\) lie in a cone of angle less than \(\pi\).
If \(YPQ<0\), the sector of \(P\) precedes that of \(Q\), giving
exactly \((0,1),(0,2),(1,2)\). If \(YPQ>0\), reverse these orders.
No point is on a dividing ray, because its three points are actual.

## 6. Ray costs and the endpoint no-cluster rule

For an upper point \(R\), every lower point above its \(O\)-ray is
inside \(OHR\), and every lower point below that ray is inside
\(OCR\). The other edge tests follow from (17). Thus

\[
 OYR<0\Longrightarrow hR_x\ge Gs,
 \qquad OYR>0\Longrightarrow cR_y\ge Gs.
 \tag{23}
\]

More generally, the full order (5) determines exactly how many lower
points lie in each endpoint triangle. Counts one, two, three cost
\(3s,Gs,Js\), respectively.

There are also forced signs at \(OD\) and \(OF\). If \(OYR>0\),
then \(X,Y\in OCR\). Were \(ODR<0\), the point \(R\) would lie
in \(OCD\), making \(X,Y,R\) a clustered triple there, with both
\(X,Y\) in the \(R\)-fan \(OCR\). If additionally \(CFR>0\),
the same argument excludes \(R\in OCF\). Hence

\[
 OYR>0\Longrightarrow ODR>0,
 \qquad OYR>0, CFR>0\Longrightarrow OFR>0.
 \tag{24}
\]

Likewise \(OYR<0\) puts \(Y,Z\) in \(OHR\). Applying the
clustered exclusion in \(OHF\), and in \(OHD\) when \(HDR<0\),
gives

\[
 OYR<0\Longrightarrow OFR<0,
 \qquad OYR<0, HDR<0\Longrightarrow ODR<0.
 \tag{25}
\]

All these are actual signed-area clearances, not merely weak
half-plane conditions.

## 7. The upper pair and repeated distributed meshes

Continue to orient \(HPQ<0\). Convexity of the anchor pentagon says
that the positive vertices of the line \(PQ\) form one nonempty
interval in the order \(O,C,D,F\); the interval consisting only of
\(O\) is impossible because \(P,Q\) are inside \(HCDF\). Thus
there are exactly nine possibilities for the upper pair's anchor-line
signs. They are the nonempty intervals among these four labels, except
the singleton \(O\).

If the line isolates one vertex of \(HCDF\), its chord in that
quadrilateral lies in the actual ear triangle at that vertex. This
puts both \(P,Q\) in \(HCD\), \(CDF\), \(HDF\), or \(HCF\),
respectively. The two-interior cost applies to the indicated triangle.

The following containments are direct edge tests:

\[
 OPQ>0\Longrightarrow Q\in OHP,
 \qquad OPQ<0, CPQ>0\Longrightarrow Q\in OCP.
 \tag{26}
\]

In the first case, both \(P,Q\) cannot be below \(OY\): that
would put \(Y,Z,Q\) in \(OHP\), with \(Y,Z\) in the same
\(Q\)-fan \(OHQ\). In the second case, both cannot be above
\(OY\), by the reflected argument with \(X,Y\) in \(OCQ\).

When \(OPQ>0\), \(OYP<0<OYQ\), the actual triangle \(OHP\)
contains the three points \(Y,Z,Q\). The point \(P\) must be
above \(OX\), or \(OHP\) would contain four lower/upper points.
The point \(Q\) must be below \(OZ\), or \(Y,Z\) would lie in
the same \(Q\)-fan \(OPQ\). The triple is distributed, with
central point \(Q\) and side points \(Z,Y\). Thus the complete
mesh (4), the unsigned-area form of (10), and (12)--(13) apply after
the replacement

\[
 (O,H,C;Y,Z,X)\longmapsto(O,H,P;Q,Z,Y).
 \tag{27}
\]

When \(OPQ<0\), \(CPQ>0\), and \(OYP>0>OYQ\), the analogous
replacement is

\[
 (O,H,C;Y,Z,X)\longmapsto(O,C,P;Q,X,Y),
 \tag{28}
\]

with reversed orientation. To justify the central label in these
replacements, in any distributed triple the point with least
barycentric coordinate at the vertex \(O\) has the middle \(O\)-ray:
its other two points occupy the two \(O\)-adjacent fans. The middle
ray in (27)--(28) is uniquely that of \(Q\).
Here the ear inequalities mean outer area minus the specified ear,
as in their proof; no coordinate box from Section 2 is transferred
to an affine image. Every new containing triangle is an actual square
triangle and still has doubled area at most one, as required in (12).

The same observation permits a repeated mesh whenever an actual
endpoint triangle contains all three original lower points. The
middle ray remains \(OY\); its two side labels are fixed by (5).

## 8. An inner quadrilateral in the straddling cases

Suppose first that \(CPQ<0\) and \(OYP>0>OYQ\). The upper
pair line then has \(O,H,C\), and hence all three lower points,
on its negative side. By (18), the word \(Z,P,Q,X\) is a
clockwise convex quadrilateral. Equations (20), together with
\(YPQ<0\) and the positive central face \(YZX\), put \(Y\)
strictly inside it. Therefore

\[
 A(ZPQX)>\frac{449}{1000}.
 \tag{29}
\]

For either straddling case (27) or (28), \(Y\in OPQ\), and the
two upper rays lie strictly between \(OX\) and \(OZ\). The part
of \(OPQ\) above the line \(ZX\) lies in
\(\operatorname{conv}\{Z,X,P,Q\}\): the two intersections of
that line with \(OP,OQ\) lie on the segment \(ZX\).
Consequently this convex hull contains \(Y\). If it were a
triangle, the extreme \(O\)-rays force \(X,Z\) to be two of its
vertices. It would therefore be one of \(ZXP,ZXQ\) and would contain both
\(Y\) and the unused upper point, contrary to (19).
It is therefore a convex quadrilateral containing \(Y\), and has
the bound (29) in its cyclic order. The segment \(XZ\) is strictly
below \(HC\), whereas \(PQ\) is strictly above it. These two
segments are disjoint, so \(PQ\) is an edge of the proved convex
quadrilateral. In particular \(X,Y,Z\) all lie on the same side
of \(PQ\) as \(O\).

## 9. Useful affine consequences of occupied upper ears

These relaxations are convenient when forming a fixed polynomial sum.
If both upper points are in \(CDF\), its area is greater than
\(694/1000\). Since \(A(CDF)\le1-f\), this gives
\(f\le153/500\). Also

\[
 A(CDF)\le1-c+d(c-s),
 \qquad
 d>\frac{c-306/1000}{c-s}
 \ge\frac{517}{730}>\frac{177}{250}.
\]

The last fraction increases with \(c\ge823/1000\). Thus one may
use \(d\ge177/250\), \(f\le153/500\). The transposed statement
holds for two points in \(HDF\).

If both points are in \(HCD\), then
\(A(HCD)\le1-c+cd\) gives
\(d\ge1-(306/1000)/c>157/250\). Two points in \(HCF\) similarly
give \(f\ge157/250\). A single point in \(HDF\) gives
\(d\le1-3s\), and a single point in \(CDF\) gives
\(f\le1-3s\).

Every coordinate lower bound inferred from an endpoint triangle is also
valid after dropping its factor \(h\) or \(c\), since those factors
are at most one. These are scalar relaxations of proved inequalities;
they do not assert a motion of the original configuration.
