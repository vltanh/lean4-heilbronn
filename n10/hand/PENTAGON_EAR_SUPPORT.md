# Support cost from three consecutive ears of a pentagon

Let \(A,B,C,D,E\) be five actual points in strictly convex cyclic order.
Write \(A_{IJK}\) for an unsigned doubled area. Set
\[
 X=A_{ABE},\quad Y=A_{ADE},\quad Z=A_{ABD},\quad
 \Delta=X-Z=Y-A_{BDE},
\]
and let \(U=A_{ABC}, V=A_{BCD}, W=A_{CDE}\). If \(\Delta>0\),
the two endpoint support rays \(AB\) and \(ED\) meet beyond \(B,D\).
The triangle with base \(AE\) and that intersection as its third
vertex contains the pentagon and has doubled area \(\Omega=XY/\Delta\).
We prove the stronger estimate
\[
            \Omega-\Delta\ \ge\ (\sqrt U+\sqrt V+\sqrt W)^2.    \tag{1}
\]
The ray parameters are \(Y/\Delta\) at \(A\) and \(X/\Delta\) at
\(E\), both greater than one by the two expressions for \(\Delta\).
[Endpoint support construction, §6](N7_THREE_FIVE_UPPER_HEIGHT.md)

## Proof

Map the support intersection to \((0,0)\), and the endpoints \(A,E\)
to \((1,0),(0,1)\). Doubled areas in these coordinates are the
original ones divided by \(\Omega\). Write \(B=(b,0)\), \(D=(0,d)\);
then \(0<b,d<1\). Write \(C=(bu,dv)\). The support lines
\(AB\) and \(ED\) put \(C\) strictly in the positive quadrant, so
\(u,v>0\). The diagonal \(BD\) separates \(C\) from \(A,E\).
Its equation is \(x/b+y/d=1\), with \(A,E\) on the greater side.
Thus \(u+v<1\).

The three ear determinants and the two endpoint determinants give
\[
 \frac{U}{\Omega}=d(1-b)v,\qquad
 \frac{V}{\Omega}=bd(1-u-v),\qquad
 \frac{W}{\Omega}=b(1-d)u,\qquad
 X=\Omega(1-b),\quad Y=\Omega(1-d).
\]
Cauchy–Schwarz on these three square roots, using
\(v+(1-u-v)+u=1\), gives
\[
 (\sqrt U+\sqrt V+\sqrt W)^2
 \le\Omega\bigl(d(1-b)+bd+b(1-d)\bigr)
 =\Omega\bigl(1-(1-b)(1-d)\bigr)=\Omega-\Delta.
\]
This proves (1).

## Bounds usable without dividing by a signed quantity

Let \(U_0,V_0,W_0\) be established nonnegative lower bounds for the
three ears. If \(K\le(\sqrt{U_0}+\sqrt{V_0}+\sqrt{W_0})^2\)
and \(K\ge0\), then
\[
                  XY\ge (K+g)(X-Z)                                  \tag{2}
\]
for any \(g\ge0\) that bounds \(\Delta\) from below whenever
\(\Delta>0\). The choice \(g=0\) always qualifies.
In particular, with prior lower and upper endpoints denoted by
\(L,H\), one may take \(g=\max(0,L_X-H_Z,L_Y-H_{BDE})\).
For positive \(\Delta\) this follows on multiplying (1) by
\(\Delta\). For \(\Delta\le0\) the right side of (2) is nonpositive.
The ordinary convex pentagon bound \(XY\ge11s(X-Z)\) from the
endpoint proof may also be used, where every actual triangle has
doubled area at least \(s\).

If one of the three ears contains an actual point, subdivision puts
its area at least \(3s\). If two or three ears are occupied, each
ear has this floor even when the same point occupies more than one.
Thus (2) permits the following rational values of \(K\).

| Occupied ears | Lower bound for the square in (1) | Usable \(K\) |
|---:|---:|---:|
| 1 | \((7+4\sqrt3)s\) | \(139s/10\) |
| 2 | \((13+4\sqrt3)s\) | \(199s/10\) |
| 3 | \(27s\) | \(27s\) |

The strict comparisons in the first two rows both follow from
\(\sqrt3>69/40\), since \(3\cdot40^2-69^2=39>0\).
For arbitrary rational ear floors, choose a rational lower bound
for each square root by squaring it, then square their sum. Each
application uses the actual pentagon, the named three ears and
bounds established before that application.

## Two actual points inside the pentagon

Suppose the actual convex pentagon \(ABCDE\) also contains two
further actual points \(P,Q\), and all unsigned doubled triangle
areas of these seven points are at least \(s>0\). Its own doubled
area is at least \(9s\). To see this, the two ears centered at
nonadjacent vertices have disjoint interiors. For instance the
diagonal \(BE\) separates the ears \(EAB\) and \(BCD\). The other
nonadjacent pairs follow by cyclic relabeling. Any three vertices
of a five-cycle include a nonadjacent pair, so an interior point
belongs to at most two ears. At least one of the five ears is
therefore empty of both points. The complementary actual
quadrilateral contains both and has doubled area at least \(8s\),
by the [two-point quadrilateral bound](N8_OP_LINE_CAPS.md).
Add the empty ear, of area at least \(s\).

The support triangle defined above now obeys
\[
         \Omega > \frac{1137}{100}s
              \quad\text{whenever }\Delta>0.                   \tag{3}
\]
Use its normalized coordinates from the proof of (1). Its part
outside the pentagon is the union of the triangles \(OBC,OCD\),
where \(O\) is the support vertex. Their original areas sum to
\[
     \frac{b}{1-b}U+\frac{d}{1-d}W.
\]
Indeed their normalized areas are \(bdv,bdu\) respectively,
using the \(u,v\) of that proof. Put \(z=\sqrt{(1-b)(1-d)}\in(0,1)\).
By \(U,W\ge s\) and the arithmetic–geometric mean inequality,
the complement has doubled area at least \(s(2/z-2)\).
The actual pentagon therefore gives \(\Omega/s\ge7+2/z\).
Equation (1) also gives \(\Omega/s\ge9/(1-z^2)\), since
\(\Delta=\Omega z^2\) and \(U,V,W\ge s\). If \(z\le457/1000\)
use the first bound. If \(z\ge457/1000\) use the second. Both
values at the splitting point exceed \(1137/100\), proving (3).

Equivalently, the nonnegative expression
\[
               XY-\frac{1137}{100}s(X-Z)
\]
is available whenever both actual interior points are in the
pentagon. For \(\Delta\le0\) it is nonnegative directly. In a
3/5 line split of an actual octagon, the shorter arc and its two
neighbors form just such a pentagon, containing the full chord
and both interior points.
