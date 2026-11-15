# The C1 configuration with no point in the lower anchor triangle

Use the C1 anchors

\[
O=(0,0),\quad C=(c,0),\quad D=(1,d),\quad
F=(f,1),\quad H=(0,h),
\qquad 0<d\le h<1,\quad0<f\le c<1.
\]

The minimum actual triangle area is at least
\(A_0=(9\sqrt{65}-55)/320\). All areas in brackets below are
**signed doubled areas**. Put

\[
s=\frac8{73}<2A_0,\qquad K=4+2\sqrt3,\qquad
\rho=\frac{49}{60}<Ks.
\]

Transposing the square if necessary, arrange

\[
f\le d.                                                   \tag{1}
\]

This preserves the C1 conditions and the number of points in \(OHC\).
The preliminary cap results below apply whether or not that triangle
is empty. The zero-lower hypothesis is imposed in Section 3.

## 1. General cap and fan bounds

Write

\[
\begin{aligned}
\mathcal R&=\operatorname{conv}\{C,D,(1,0)\}\setminus CD,\\
\mathcal T&=\operatorname{conv}\{D,F,(1,1)\}\setminus DF,\\
\mathcal L&=\operatorname{conv}\{F,H,(0,1)\}\setminus FH.
\end{aligned}
\]

These are the three exterior caps of the prescribed pentagon
\(OCDFH\). A free point on an actual anchor chord gives zero area,
so every relevant containment across such a chord is strict. Contacts
on the square boundary are allowed throughout.

The actual anchor areas give

\[
hf,cd\ge s,\qquad
d,f\le1-s.                                                \tag{2}
\]

Indeed \([HDF]=1-h+f(h-d)\le1-d\), while
\([CDF]=1-c+d(c-f)\le1-f\). Thus every anchor parameter is
at least \(s\), and every coordinate of every free point is at
least \(s\), by the areas with \(OH\) and \(OC\).

### A side cap with two points has a triangular outer hull

**Lemma 1.** If \(\mathcal R\) contains two free points, one,
say \(Y\), lies strictly in \(CDX\cap ODX\), where \(X\) is the other.
Moreover,

\[
d\ge Ks>\rho,\qquad d(1-c)\ge3s,\qquad c\le1-3s.       \tag{3}
\]

The transposed assertion holds for \(\mathcal L\): one point
lies in the triangle formed by \(H,F\) and the other, and
\(f\ge Ks\), \(f(1-h)\ge3s\).

**Proof.** Give the right cap argument; transposition gives the other.
For each of its two points, extend the line joining it to \(D\)
to the bottom side. The more distant intercept from \(O\) determines
a triangle with base endpoints \(O,D\), containing \(C,X,Y\),
and having one of \(X,Y\), say \(X\), as a contact on its
nonhorizontal leg. Its other leg contains \(C\). Both contacts
are in the relative interiors of the legs. Equal intercepts would
make \(D,X,Y\) collinear.

The doubled support area \(\Omega\) is at most \(d\). In the
half-square normalization of Section 1 of
[TYPE_II.md](TYPE_II.md), the remaining point \(Y\) is outside
the triangle formed by the base endpoints and the first leg contact,
because it is beyond \(CD\). Only cells III, IV, V in that note
are possible. Their normalized doubled minimum bounds are

\[
\frac1K,\qquad\frac1{12},\qquad
\frac{5\sqrt5-11}{2}<\frac1{10},
\]

respectively. Since the normalized minimum is at least
\(s/\Omega\ge s>1/10\), cells IV and V are impossible.
Cell III puts \(Y\) in \(CDX\cap ODX\), and gives
\(\Omega\ge Ks\). Subdivision of \(CDX\) at \(Y\)
then gives \([CXD]\ge3s\). The doubled cap area is
\(d(1-c)\), so all assertions in (3) follow. \(\square\)

Each side cap has at most two free points. For example,
\(\operatorname{conv}\{O,D,(1,0)\}\), of doubled area
\(d\le1\), contains \(O,D,C\) and the right cap. Three
free points there would contradict the closed two-actual-vertex
capacity theorem, Theorem 1 of
[TYPE_II_COMPLETION.md](TYPE_II_COMPLETION.md).

The same argument proves the stronger fan restrictions

\[
\boxed{\#\{\text{free points below }OD\}\le2,
\qquad
\#\{\text{free points above }OF\}\le2.}                 \tag{4}
\]

The two containers contain all square points in the indicated fans;
their additional anchor contacts are \(C\) and \(H\), respectively.

### A side cap with one point

For \(X=(x,y)\in\mathcal R\), multiply
\(-[CDX]\ge s\) by \(c\), and \([OCX]\ge s\) by
\(1-c\). Their sum is

\[
cd(x-c)\ge s,
\qquad\text{hence}\qquad dc(1-c)\ge s.                 \tag{5}
\]

Transposition gives, for \(X\in\mathcal L\),

\[
fh(1-h)\ge s.                                            \tag{6}
\]

Consequently a right-cap point forces
\(d\ge4s\) and \(1/7<c<6/7\); a left-cap point forces
\(f\ge4s\) and \(1/7<h<6/7\). For the strict coordinate
intervals use (2) and
\(s/(1-s)=8/65>6/49\).

### Top-cap counts

Let

\[
\Omega_0=(1-d)(1-f)
\]

be the doubled area of \(\mathcal T\). If it contains one,
two, or three free points, respectively, then

\[
\Omega_0\ge s,\qquad
\Omega_0\ge3s,\qquad
\Omega_0\ge\frac{s}{3-2\sqrt2}>\frac7{11}.              \tag{7}
\]

The two- and three-point assertions are the four- and five-point
endpoint-triangle theorems in Section 1 of `TYPE_II.md`, applied
with prescribed vertices \(D,F\). Four free points are impossible
by the two-actual-vertex capacity theorem.

Under (1), (7) gives the convenient rational bounds

| Number in \(\mathcal T\) | Bound on \(f\) | Bound on \(d\) |
|---|---|---|
| at least one | \(f<67/100\) | \(d\le57/65\) |
| at least two | \(f<3/7\) | \(d\le41/65\) |
| three | \(f<13/64\) | \(d\le204/715\) |

For the first column use \(f\le d\), hence
\(\Omega_0\le(1-f)^2\). For the second use
\(f\ge s\), hence \(\Omega_0\le(1-s)(1-d)\).
All endpoint comparisons in the table are rational after squaring.

## 2. Complete exclusions for several multiple-cap occupancies

**Theorem 2.** Under (1), the following hold for every competitive C1
configuration:

1. The left cap contains at most one free point.
2. If the right cap contains two, the left cap is empty and the top
   cap contains at most one.
3. If the left cap is occupied, the top cap contains at most one.
4. If the right cap is occupied, the top cap contains at most two.

**Proof.** Two left-cap points would give
\(f\ge\rho\) and \(f(1-h)\ge3s\) by Lemma 1. But
\(f\le d\le h\) and \(f\le1\) give

\[
\rho\le f\le h\le1-3s<\rho,
\]

a contradiction.

For two right-cap points, (3) gives \(d,h\ge\rho\) and
\(c,f\le1-3s\). A left-cap point would also give (6), whereas

\[
fh(1-h)\le(1-3s)\rho(1-\rho)
=s-\frac{2389}{262800}<s.
\]

Here \(h(1-h)\) decreases for \(h\ge\rho>1/2\).
Two top-cap points would give \(\Omega_0\ge3s\), but
\(\Omega_0\le1-d\le1-\rho<3s\).

If the left cap is occupied, (6) gives \(f\ge4s\). As
\(d\ge f\),

\[
\Omega_0\le(1-4s)^2=3s-\frac{71}{5329}<3s,
\]

excluding two top-cap points. Finally a right-cap point gives
\(d\ge4s\), so \(\Omega_0\le1-4s<7/11\), excluding
three top-cap points by (7). \(\square\)

**Lemma 3 (the complete three-top-cap hull).** If the top cap contains
three free points, exactly two, say \(R,S\), are vertices of their
joint hull with \(D,F\). Its cyclic order is \(D,R,S,F\),
and the third point \(T\) satisfies

\[
T\in DFR\cap DFS.                                        \tag{8}
\]

**Proof.** By (2),
\(\Omega_0\le(1-s)^2<\rho<Ks\). A triangular hull for
the five points \(D,F,R,S,T\) has two interior points and is
impossible by the two-interior triangle theorem. In their support
normalization, cells I and III of `TYPE_II.md` likewise require
\(\Omega_0\ge Ks\). Cells IV and V require a normalized
doubled minimum at most \(1/12\) or below \(1/10\), which
is impossible since \(s/\Omega_0\ge s>1/10\). The only
remaining cell is II. Its stated containments are exactly (8),
with the two leg contacts as \(R,S\). \(\square\)

## 3. The complete zero-lower occupancy list

Now suppose none of the four free points is in \(OHC\). Each
lies either in the upper quadrilateral \(HCDF\) or in one of
the three exterior caps. The doubled quadrilateral area is

\[
W=1-(h-d)(c-f)\le1.
\]

It contains at most two free points: three would give
\(W\ge10s>1\), by the seven-point quadrilateral theorem in
[QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md).

Let \((n_U,n_R,n_T,n_L)\) denote the four occupancies in
\(HCDF,\mathcal R,\mathcal T,\mathcal L\). They sum to four.
The preceding results leave exactly these nine possibilities:

\[
\begin{gathered}
(2,2,0,0),\ (2,1,1,0),\ (2,1,0,1),\ (2,0,2,0),\ (2,0,1,1),\\
(1,2,1,0),\ (1,1,2,0),\ (1,1,1,1),\ (1,0,3,0).
\end{gathered}                                             \tag{9}
\]

In particular, at least one free point is in the upper quadrilateral,
and at least two are outside the prescribed pentagon. This is an
occupancy reduction; by itself it does not exclude all nine rows.

## Verification

[check_c1_zero_lower.py](check_c1_zero_lower.py) checks the rational
comparisons and the complete occupancy list.
The support-cell geometry uses the existing endpoint-triangle proofs
quoted explicitly above.
