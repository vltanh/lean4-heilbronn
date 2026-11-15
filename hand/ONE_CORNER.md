# One occupied corner: a complete three-interior-point exclusion

## Scope and theorem

Let nine points in the unit square include

\[
O=(0,0),\qquad H=(0,\eta),\qquad C_0=(\xi,0),
\qquad 0<\xi,\eta\le1.
\]

**Corner-triangle occupancy theorem.** If at least three other points lie
strictly inside \(OHC_0\), the configuration has minimum triangle area

\[
\boxed{t\le\frac7{128}<A_0.}                               \tag{1}
\]

This closes the entire three-inside branch of C1, including configurations
whose convex hull extends outside the five-anchor pentagon. The proof does
not require \(H\) or \(C_0\) to be close to a square corner. It extends
the quantitative packing argument in Sections 10--12 of
[CORNER_FAMILIES.md](CORNER_FAMILIES.md) to a rectangle with correlated
side lengths and area threshold.

The other C1 branches are not closed by this note. Section 6 also proves
that every actual triangle in the entire competitive C1 family contains
at most two further configuration points.

## 1. Normalize the occupied corner triangle

Assume for a contradiction that \(t>7/128\), and put \(\sigma=7/64\).
If four points lie inside \(OHC_0\), the seven-point triangular-hull
lemma in `CORNER_FAMILIES.md` already gives a stronger contradiction.
Thus exactly three of the other points are inside the triangle and the
remaining three are outside it. No point lies on a triangle edge,
because the minimum area is positive.

Apply the affine map

\[
(x,y)\longmapsto (x/\xi,\ 1-y/\eta).
\]

The three occupied vertices become

\[
A=(0,0),\quad B=(0,1),\quad C=(1,1).
\]

The unit square becomes the rectangle

\[
0\le x\le L,\qquad 1-M\le y\le1,
\qquad L=1/\xi\ge1,\quad M=1/\eta\ge1.                   \tag{2}
\]

Every doubled triangle area is at least

\[
s=\sigma LM\ge\sigma,
\qquad L,M\le\frac{s}{\sigma}.                            \tag{3}
\]

The three interior points are now above the diagonal \(AC\), and the
other three points are below it. Their upper triple is distributed in
the sense of Section 8 of `CORNER_FAMILIES.md`; otherwise the two-interior
point lemma there would bound a doubled triangle area by
\(1/(6+2\sqrt3)<\sigma\le s\).

Use the labels and notation

\[
Y=(u,v),\quad Z=(p,q),\quad X=(c,1-a),
\quad h=1-v,\quad z=1-q,\quad f=v-u,
\]

with \(Z\in ABY\), \(X\in BCY\). Also put

\[
k=h-a,\quad Q=hc-au,\quad K=|D(X,Y,Z)|,
\quad J=k-Q,
\]

where \(D(P,Q,R)=\det(Q-P,R-P)\). Thus \(Q\) is the doubled area of
\(BXY\), \(K\) is the central area, and \(J\) is the connector area
of \(CYX\).

## 2. The same mesh estimates hold for every \(s\ge\sigma\)

The proof of the quantitative mesh lemma uses \(1/s\le64/7\), rather
than equality, in its bounds for the normalized area sum. Thus every
step remains valid for the present \(s\). In particular

\[
\begin{gathered}
K/s\le109/98<9/8,\qquad
\text{each connector}>6s/5,\\
p,a,f\le E:=55/384,\\
u,h,c,z,\ 1-c-a,\ 1-p-z\ge3s.                             \tag{4}
\end{gathered}
\]

For the central estimate, the normalized variable \(Z_0\) there obeys
\(Z_0\le1/s-7\le15/7\). For the connector estimate, its bound
\(A+B\le43/7-\kappa-C\) is weakened, not strengthened, when \(s\)
increases. For the ear estimate,
\(1-(3\varphi+3)s\le1-(3\varphi+3)\sigma<E\).
These observations verify all uses of the fixed threshold in that lemma.

## 3. The uniform signs survive the rectangle extension

Put \(\delta=M-1\). For a lower point \(R=(x,y)\), the rectangle now
gives \(y\ge-\delta\), while triangles with pairs of \(A,B,C\) give
\(x\ge s\), \(1-y\ge s\), and \(x-y\ge s\).

We first prove \(D(B,Z,R)\ge s\). Its opposite sign would imply

\[
x\le\frac{pM-s}{1-q}.
\]

Also \(D(A,Z,R)=py-qx<0\), so its area constraint implies

\[
x\ge\frac{s-p\delta}{q}.
\]

Compatibility of these two inequalities requires
\(p(q+\delta)\ge s\). But (3)--(4) give

\[
q+\delta\le1-3s+(s/\sigma-1)
=\frac{43}{7}s,
\qquad
p(q+\delta)\le\frac{2365}{2688}s<s.
\]

This contradiction proves the claimed sign. Reflection across \(x+y=1\)
exchanges \(L,M\), so the same proof also gives
\(D(B,X,R)\le-s\).

Next put \(b=1-y\), so \(0\le b\le M\). Exactly as in (35)--(36)
of `CORNER_FAMILIES.md`,

\[
\begin{gathered}
x\ge\max\left(1+s-b,\frac{s+pb}{z}\right),\\
D(X,Y,R)=(c-u)b+kx-Q,
\qquad K=Q+z(u-c)-pk.
\end{gathered}
\]

The two affine lower bounds on \(x\) meet at the same
\(b_0=[z(1+s)-s]/(p+z)\in(0,1)\). If \(Q\ge K\), the minimum
occurs at \(b_0\) and the argument there gives
\(D(X,Y,R)>-7s/8\), unchanged.

If \(Q\le K\), the minimum occurs at \(b=M\). Since \(M-z>0\) and
\(Q\ge s\),

\[
D(X,Y,R)\ge\frac{ks-MK+Q(M-z)}z
\ge-s+\frac{sk-M(K-s)}z>-s.                               \tag{5}
\]

The last numerator is positive because

\[
k=Q+J>\frac{11}{5}s,
\qquad
M(K/s-1)\le\frac{s}{\sigma}\frac{11}{98}
=\frac{352}{343}s<\frac{11}{5}s.
\]

Thus in every case \(|D(X,Y,R)|\ge s\) forces

\[
D(B,Z,R)\ge s,\qquad D(B,X,R)\le-s,
\qquad D(X,Y,R)\ge s.                                    \tag{6}
\]

## 4. At most one lower point on either side of \(BY\)

First consider lower points satisfying
\(D(B,Y,R)\le-s\). Put

\[
d=u-c,\qquad e=Q+d.
\]

The inequalities containing these points are the same as (37) in
`CORNER_FAMILIES.md`, except for the displaced horizontal boundary:

\[
hx+uy\le u-s,
\qquad kx+dy\ge s+e,
\qquad y\ge-\delta.                                      \tag{7}
\]

They describe a feasible triangle with top vertex \((x_0,y_0)\), where

\[
y_0=v-\frac{s(k+h)}Q,
\]

and base vertices on \(y=-\delta\). Its height is
\(H_0=y_0+\delta\). If the triangle is empty or degenerate, it contains
at most one lower point. Otherwise \(H_0>0\).

The same boundary-line calculation as in (39) gives the three absolute
determinants formed by \(Z\) and pairs of its vertices:

\[
G_0=\frac{(q+\delta)QH_0}{hk},\qquad
G_1=\frac{(s+K)H_0}{k},\qquad
G_2=\frac{(P-s)H_0}{h},                                   \tag{8}
\]

where \(P=u(1-q)-hp\ge s\).

The correlation in (3) is exactly what is needed to bound these
expressions. Set \(\rho=Q/s\), \(\gamma=J/s\), \(\alpha=a/s\).
Since \(k=Q+J\), \(h=Q+J+a\), one has

\[
\frac{H_0}{s}
\le\frac1\sigma-\alpha-\rho-\gamma-2
              -\frac{\alpha+2\gamma}{\rho}.               \tag{9}
\]

This follows by writing
\(H_0=1+\delta-a-Q-J-2s-s(a+2J)/Q\) and using
\(1+\delta=M\le s/\sigma\).

For \(G_1\), apply \(\alpha\ge1\), \(\gamma>6/5\), and
\(K/s<9/8\) exactly as in (41). It gives

\[
\frac{G_1}{s}
\le\frac{17}{8}
 \frac{1/\sigma-21/5-\rho-17/(5\rho)}{\rho+6/5}<1.
\]

The strict inequality is the same positive quadratic
\(875\rho^2-2605\rho+2023\) proved there.

For \(G_0\), the mesh identity (42), followed by (3), gives

\[
q+\delta
\le1+\delta-2s-\frac{s(s+Q)}J
\le s\left(\frac1\sigma-2-\frac{1+\rho}{\gamma}\right).
\]

Its right side is positive because \(q+\delta>0\). Decrease
\(\alpha\) to one in (9) and in the denominator of \(G_0\). Then

\[
\frac{G_0}{s}\le
\frac{\left(1/\sigma-2-\frac{1+\rho}{\gamma}\right)\rho
 \left(1/\sigma-\rho-\gamma-3-\frac{2\gamma+1}{\rho}\right)}
 { (\rho+\gamma)(\rho+\gamma+1)}<1.                        \tag{10}
\]

The same area sum as in (43) gives
\(1\le\rho<1/s-32/5\le96/35\), and \(\gamma>6/5\).
At \(\sigma=7/64\), one minus the right side of (10) is exactly

\[
\frac{N(\gamma,\rho)}
 {49\gamma(\gamma+\rho)(\gamma+\rho+1)},
\]

where the polynomial \(N\) is displayed and proved positive over this
entire range in (45). Thus no new polynomial estimate is needed.

Finally \(q\ge4s\) and
\(y_0<1-(26/5)s<4s\), as before. The identity

\[
G_1-G_2=(\hbox{base width})(q-y_0)\ge0
\]

therefore gives \(G_2\le G_1<s\). All three vertex-pair determinants
are less than \(s\). Since a determinant is affine separately in the
two varying points, every pair of points in the feasible triangle has
absolute determinant less than \(s\) with \(Z\). Consequently there
is at most one lower point on this side of \(BY\).

Reflect across \(x+y=1\). This exchanges \(L,M\), exchanges \(X,Z\),
preserves \(s=\sigma LM\), and changes the other side of \(BY\) into
the side just considered. The entire argument applies without change.
There is at most one lower point on each side of \(BY\), contradicting
the three lower points. This proves (1).

## 5. Consequences and remaining C1 scope

For the C1 normal form

\[
O=(0,0),\quad H=(0,\eta),\quad C_0=(\xi,0),\quad
D=(1,d),\ F=(f,1),
\qquad d\le\eta,\ f\le\xi,
\]

any configuration of minimum area at least \(A_0\) has at most two of
its four free points inside \(OHC_0\). This conclusion applies even
when other free points are outside the five-anchor pentagon.

If the convex hull is exactly that pentagon, the quadrilateral-occupancy
theorem in [QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md) allows at most
two free points above \(HC_0\) as well. Hence the only surviving count
for this hull is exactly two free points on each side. The present note
does not exclude that \(2+2\) case or configurations with larger hulls.

## 6. Every competitive C1 triangle has capacity two

**Global C1 occupancy corollary.** In any configuration from the complete
C1 family with minimum triangle area at least \(A_0\), every triangle
spanned by actual points contains at most two further actual points.
This includes configurations with additional hull vertices or square
boundary contacts among the four free points.

Write the five prescribed anchors as

\[
O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
D=(1,d),\quad F=(f,1),
\qquad 0<d\le h<1,\quad0<f\le c<1,
\]

and put \(s=2t\ge2A_0>7/64\). The actual triangles \(OHF\) and
\(OCD\) imply

\[
hf\ge s,\qquad cd\ge s,
\qquad h,c,d,f\ge s.
\]

The other two anchor triangles give

\[
\begin{aligned}
2\operatorname{area}(HDF)
 &=1-h+f(h-d)\le1-d,\\
2\operatorname{area}(CDF)
 &=1-c+d(c-f)\le1-f,
\end{aligned}
\]

so \(d,f\le1-s\) as well.

Suppose an actual triangle contains three further points. Theorem 1 of
[THREE_INTERIOR_TRIANGLES.md](THREE_INTERIOR_TRIANGLES.md) says that it
is a full-hull ear: its vertices are three consecutive hull vertices,
and the full hull has at most six vertices. Each of the five prescribed
anchors is a hull vertex, since it lies on a supporting square side and
no three points are collinear. Hence there are only two hull cases.

### Five hull vertices

The hull is \(O,C,D,F,H\). The ear \(HOC\) is excluded by the
corner-triangle occupancy theorem proved above. The four other ears have
the following bounds on their doubled areas:

| Ear | Doubled area | Upper bound |
|---|---|---|
| \(OCD\) | \(cd\) | \(d\le1-s\) |
| \(CDF\) | \(1-c+d(c-f)\) | \(1-f\le1-s\) |
| \(DFH\) | \(1-h+f(h-d)\) | \(1-d\le1-s\) |
| \(FHO\) | \(fh\) | \(f\le1-s\) |

### Six hull vertices

There is precisely one additional hull vertex \(P\). The three gaps
between the anchor pentagon and the square are the corner caps

\[
\begin{aligned}
T_L&=\operatorname{conv}\{H,F,U\},&U&=(0,1),\\
T_R&=\operatorname{conv}\{C,D,V\},&V&=(1,0),\\
T_T&=\operatorname{conv}\{D,F,W\},&W&=(1,1).
\end{aligned}
\]

Thus \(P\) belongs to one of these three caps. Square-edge degeneracies
are allowed in these enclosing caps. A point on an anchor-pentagon edge
would give a zero-area actual triangle, so cannot be the additional hull
vertex under the present hypothesis.

Only the three ears adjacent to \(P\) are new. For a fixed pair of
vertices, the absolute determinant is convex and affine up to sign in
\(P\), so its maximum on a cap is attained at a cap vertex. The following
table lists all nine possibilities. The symbols \(E_{CDF}\) and
\(E_{DFH}\) denote the two doubled anchor-triangle areas bounded above.

| Location of \(P\) | New ear | Bound from the cap vertices |
|---|---|---|
| \(T_L\) | \(DFP\) | \(\max\{E_{DFH},f(1-d)\}\le1-d\) |
| \(T_L\) | \(FPH\) | \(f(1-h)\le1-h\) |
| \(T_L\) | \(PHO\) | \(hf\le f\) |
| \(T_R\) | \(OCP\) | \(cd\le d\) |
| \(T_R\) | \(CPD\) | \(d(1-c)\le1-c\) |
| \(T_R\) | \(PDF\) | \(\max\{E_{CDF},d(1-f)\}\le1-f\) |
| \(T_T\) | \(CDP\) | \(\max\{E_{CDF},(1-c)(1-d)\}\le\max(1-f,1-c)\) |
| \(T_T\) | \(DPF\) | \((1-d)(1-f)\le1-d\) |
| \(T_T\) | \(PFH\) | \(\max\{E_{DFH},(1-f)(1-h)\}\le\max(1-d,1-h)\) |

Every final bound in this table is at most \(1-s\). The remaining ears
are unchanged anchor ears and have already been handled.

### Contradiction for every possible ear

The three-interior-point triangular-hull theorem forces an ear with
three interior points to have doubled area at least \(\Gamma s\),
where \(\Gamma=(11+3\sqrt5)/2\). All the non-corner ears above have
doubled area at most \(1-s\), which is incompatible with

\[
(\Gamma+1)s>\frac{19}{2}\frac7{64}=\frac{133}{128}>1.
\]

The remaining corner ear \(HOC\) was excluded by (1). Thus no such
three-interior triangle exists in either hull case. Hulls with seven
or more vertices were already ruled out by the cited hull-ear theorem.
This proves the corollary for the entire C1 family.

## 7. A complete exclusion within the remaining pentagonal \(2+2\) case

Suppose the hull is exactly the five-anchor pentagon and two free points
lie on each side of \(HC\). Put \(\sigma=7/64\). The two-interior-point
triangle theorem gives

\[
hc\ge(4+2\sqrt3)(2t)>(52/7)\sigma=13/16.                  \tag{11}
\]

Here \(\sqrt3>12/7\). We now exclude the whole subcase in which **both**
diagonals \(HD\) and \(CF\) of the upper quadrilateral separate its two
interior points. Thus, in any remaining competitive \(2+2\) configuration,
both upper interior points must lie in one of
\(HCD,HDF,HCF,CDF\).

Write

\[
\ell=h-d,\quad m=c-f,\quad W=1-\ell m,
\quad x=\frac{c-hm}{W},\quad y=\frac{h-c\ell}{W}.
\]

Then \(W\) is the doubled area of \(HCDF\), and \(x,y\in(0,1)\)
are the intersection parameters along \(HD\) and \(CF\). In particular

\[
h=y+\ell x,\qquad c=x+my.                                 \tag{12}
\]

If both diagonals separate the two interior points, those points lie in
opposite quadrants of their intersection. The diagonal-coordinate
argument in Theorem 1 of `QUADRILATERAL_HULL.md`, applied with normalized
doubled threshold \(\sigma/W\), gives one of the following two patterns:

\[
\begin{aligned}
\mathrm{I}:\quad&
Wx(1-y)\ge\sigma(2+x-y),\quad
Wy(1-x)\ge\sigma(2+y-x);\\
\mathrm{II}:\quad&
Wxy\ge\sigma(1+x+y),\quad
W(1-x)(1-y)\ge\sigma(3-x-y).
\end{aligned}                                             \tag{13}
\]

These are the two choices of opposite quadrants; no ordering of the two
interior points is omitted.

### Pattern I forces \(hc\le625/896\)

Fix \(x,y,W\). Subject only to \(h,c\le1\) and \(\ell m=1-W\),
the expression in (12) gives

\[
hc=xy(2-W)+\ell x^2+\frac{(1-W)y^2}{\ell}.
\]

For \(W<1\) this is convex in \(\ell>0\). Its allowed interval is

\[
\frac{(1-W)y}{1-x}\le\ell\le\frac{1-y}{x},
\]

whose endpoints correspond to \(c=1\) and \(h=1\). Dropping any further
constraints on \(d,f\) only enlarges this interval. Thus the largest
possible product occurs at one of those endpoints. The case \(W=1\)
follows directly by setting one of \(\ell,m\) to zero and increasing the
other until a side length is one. By symmetry it suffices to consider
\(h=1\). Then

\[
c=\frac{x(1-Wy)}{1-y}.                                    \tag{14}
\]

If \(y\ge x\), put \(v=1-y\), \(\delta=y-x\ge0\). The first
inequality in Pattern I and (14) give

\[
c\le F(v)+\delta\frac{\sigma(1-v)-v}{v^2},
\qquad F(v)=\frac{(1-v)(v-2\sigma)}{v^2}.
\]

The same inequality, together with \(Wx\le1\), gives
\(v\ge\sigma(2-\delta)>\sigma\). Hence the coefficient of \(\delta\)
is nonpositive, and \(c\le F(v)\).

If \(y\le x\), put \(w=1-x\), \(\delta=x-y\ge0\). The second
inequality in Pattern I gives \(w>\sigma\) and

\[
w(1-w)-2\sigma\ge\delta(w-\sigma)\ge0.
\]

Thus \(w>1/4>2\sigma/(1-\sigma)=14/57\): for \(w\le1/4\), the
left product \(w(1-w)\) is at most \(3/16<2\sigma\). Equation (14)
now gives

\[
\begin{aligned}
c&\le\frac{(1-w)(w-2\sigma+\sigma\delta)}{w(w+\delta)}\\
 &=F(w)+\frac{\delta(1-w)[2\sigma-(1-\sigma)w]}
                  {w^2(w+\delta)}
\le F(w).
\end{aligned}
\]

Finally, completing the square in \(1/v\) yields

\[
F(v)=-1+\frac{1+2\sigma}{v}-\frac{2\sigma}{v^2}
\le\frac{(1-2\sigma)^2}{8\sigma}
=\frac{625}{896}<\frac{13}{16}.
\]

This contradicts (11), excluding Pattern I.

### Pattern II forces an area ratio below \(1/10\)

Only the second inequality of Pattern II is needed. Put

\[
A_*=W(1-x),\qquad B_*=W(1-y).
\]

It states

\[
\frac{A_*B_*}{W+A_*+B_*}\ge\sigma.                         \tag{15}
\]

Define

\[
H_0=hc,\quad \alpha=1-h,\quad\beta=1-c,
\quad R=\frac{h-d}{h},\quad Z=\frac{c-f}{c}.
\]

Then \(0\le R,Z\le1\) and

\[
A_*=\beta+H_0Z(1-R),\quad
B_*=\alpha+H_0R(1-Z),\quad W=1-H_0RZ.                     \tag{16}
\]

By (11), \(h+c\ge2\sqrt{hc}>9/5\), so
\(\alpha+\beta<1/5\).

For nonnegative \(A,B,W\) with positive denominator, the ratio
\(AB/(W+A+B)\) increases with \(A,B\) and decreases with \(W\).
Increasing \(H_0\) to one in (16) therefore cannot decrease it. Increasing
\(\alpha+\beta\) to \(1/5\), by adding the slack to either variable,
cannot decrease it either. These are relaxations of the parameters, not
motions of configuration points. It is enough to prove

\[
\frac{AB}{W+A+B}<\frac1{10}
\quad\text{when}\quad
\begin{cases}
A=\beta+Z(1-R),\quad B=\alpha+R(1-Z),\\
W=1-RZ,\quad \alpha,\beta\ge0,
\quad\alpha+\beta=1/5.
\end{cases}                                              \tag{17}
\]

The possible endpoint \(W=0\) has \(A+B=1/5>0\), so no denominator
vanishes in this relaxed family.

By symmetry assume \(R\ge Z\), and set

\[
\delta=R-Z,\qquad v=\frac{R+Z-1}{2},\qquad
X=Z(1-R)=\frac{(1-\delta)^2}{4}-v^2.
\]

Here \(0\le\delta\le1\) and \(|v|\le(1-\delta)/2\).
For fixed \(R,Z\), the sum \(A+B\) is fixed, so it suffices to maximize
\(AB=(X+1/5-\alpha)(X+\delta+\alpha)\) over \(0\le\alpha\le1/5\).

If \(\delta\le1/5\), the maximum occurs when \(A=B\). Direct expansion
then gives

\[
\begin{aligned}
W+A+B-10AB
={}&\frac9{40}-\delta^2-\frac58\delta^4
 +(4+5\delta^2)v^2-10v^4-v\\
\ge{}&\frac{23}{125}+\frac32v^2-v
\ge\frac{13}{750}>0.
\end{aligned}
\]

The first bound uses \(\delta^2\le1/25\) and \(v^2\le1/4\); the
second completes the square in \(v\).

If \(\delta\ge1/5\), the maximum occurs at \(\alpha=0\). Write

\[
C(\delta)=\frac{13}{40}-\delta+\frac32\delta^2-
                    \frac58\delta^4.
\]

Expansion and \(v^2\le(1-\delta)^2/4\) give

\[
\begin{aligned}
W+A+B-10AB
&=C(\delta)-v+(4+5\delta^2)v^2-10v^4\\
&\ge C(\delta)-v+
       \left(\frac32+5\delta+\frac52\delta^2\right)v^2.
\end{aligned}
\]

On \([1/5,1/2]\),

\[
C(\delta)-\frac18
\ge\frac15-\delta+\frac{43}{32}\delta^2
\ge\frac3{215}>0.
\]

On \([1/2,1]\), the derivative \(C'\) first increases and then
decreases, since \(C''=3-(15/2)\delta^2\). Also \(C'(1/2)=3/16>0\),
so \(C\) has no interior minimum on this interval. Its endpoint values
are \(103/640\) and \(1/5\), both above \(1/8\). Thus \(C\ge1/8\)
throughout the present case. The coefficient of \(v^2\) is at least
\(13/5\), yielding

\[
W+A+B-10AB\ge\frac18-\frac5{52}
=\frac3{104}>0.
\]

This proves (17). Since \(1/10<\sigma\), it contradicts (15), excluding
Pattern II.

Both opposite-quadrant patterns are impossible. This proves the claimed
exclusion of the entire upper-quadrilateral subcase where both diagonals
separate its two interior points. The complementary same-side cases
specified after (11) still require further work.

## 8. Two more complete pentagonal subcase exclusions

Continue with the pentagonal \(2+2\) case. The two upper points cannot
both lie in \(HDF\), nor can they both lie in \(CDF\). Together with
Section 7, this leaves only the possibilities that both lie in \(HCD\)
or both lie in \(HCF\).

Here is an area-only proof for \(HDF\); reflection across \(x=y\)
then proves the \(CDF\) case. Put

\[
\sigma=7/64,\qquad R=13/16.
\]

If \(OHC\) and \(HDF\) each contain two further actual points, the
two-interior-point theorem gives

\[
hc\ge R,\qquad E:=1-h+f(h-d)\ge R.                        \tag{18}
\]

The same strict lower estimate as in (11) in fact gives inequalities
strictly above \(R\), but weak inequalities suffice below. The other
two actual triangles \(OCD\) and \(CDF\) give

\[
cd\ge\sigma,\qquad 1-c+d(c-f)\ge\sigma.                   \tag{19}
\]

Set \(q=cd\), \(g=f/c\), so \(q\ge\sigma\) and \(0<g\le1\).
Since \(f\le1\), the expression \(E=1-h(1-f)-fd\) cannot decrease
when \(h\) is decreased to \(R/c\). This is a scalar relaxation of
(18); it does not move any point in the configuration. After the
substitution, (18) requires

\[
1-\frac Rc\ge q+(1-g)(R-q).                               \tag{20}
\]

Necessarily \(q<R\). Otherwise the right side of (20), a convex
combination of \(q\) and \(R\), is at least \(R\), whereas its left
side is at most \(1-R<R\).

If \(c\le1-\sigma\), then (20) gives

\[
1-R/c\ge q\ge\sigma,
\qquad R\le c(1-\sigma)\le(1-\sigma)^2<R,
\]

a contradiction.

If \(c>1-\sigma\), put \(k=c+\sigma-1\in(0,\sigma]\).
The second inequality in (19) says \(q(1-g)\ge k\). Since \(q<R\),
substituting this lower bound into (20) yields

\[
c+\sigma-\frac Rc\ge q+\frac{Rk}{q}.                     \tag{21}
\]

The left side is smaller than \(\sigma+2k\), because

\[
\begin{aligned}
c+\sigma-\frac Rc
&<c+\sigma-\frac{(1-\sigma)^2}{c}\\
&=\sigma+2k-\frac{k^2}{c}\le\sigma+2k.
\end{aligned}
\]

The right side is larger than \(\sigma+2k\). To see this directly,
write its excess as

\[
\begin{aligned}
q+\frac{Rk}{q}-\sigma-2k
={}&\left(1-\frac{k}{\sigma}\right)(q-\sigma)\\
&+\frac{k}{\sigma}
 \left(q+\frac{R\sigma}{q}-3\sigma\right).
\end{aligned}
\]

The first term is nonnegative. By the arithmetic-geometric mean
inequality, the parenthesis in the second term is at least
\(2\sqrt{R\sigma}-3\sigma>0\), since \(R>9\sigma/4\).
Both numerical comparisons used here are exact:

\[
R-(1-\sigma)^2=\frac{79}{4096}>0,
\qquad R-\frac94\sigma=\frac{145}{256}>0.
\]

This contradicts (21), excluding the entire \(HDF\) subcase. The
reflected proof excludes \(CDF\) as claimed. The configurations with
both upper points in \(HCD\) or \(HCF\), and configurations with hulls
larger than the five-anchor pentagon, remain open in this note.

The optional checker [check_one_corner.py](check_one_corner.py) verifies
the displaced-triangle formulas and the normalized identities connecting
this argument to the two polynomial certificates already proved by hand.
