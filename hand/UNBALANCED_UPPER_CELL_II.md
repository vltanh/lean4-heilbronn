# Complete exclusion of the unbalanced upper cut in support cell II

## Scope and result

Use the Type-II anchors

\[
D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad B=(b,0),
\qquad 0<b\le\frac12,\quad0<\lambda<1,
\quad q=1-\lambda,\quad w=1-b.
\]

The two central points \(P,Q\) are above \(CE\). The right hull is
the quadrilateral \(B,R,S,C\), in cyclic order, with its fifth point
in support cell II:

\[
T\in\operatorname{int}(BCR)\cap\operatorname{int}(BCS).
\]

Assume the original minimum triangle area is at least
\(A_0=(9\sqrt{65}-55)/320\). We use the two rational doubled
thresholds

\[
s_0=\frac7{64},\qquad s=\frac8{73}<2A_0,
\qquad K=4+2\sqrt3.
\]

The last comparison is exact: it is equivalent to
\(219\sqrt{65}>1765\), and
\(219^2\cdot65-1765^2=2240>0\).
Thus every actual doubled area is at least \(s>s_0\).
Write \([XYZ]=\det(Y-X,Z-X)\), with the stated orders whenever
the sign matters.

**Theorem 1.** This configuration does not exist. Together with
[UNBALANCED_RIGHT_HULL.md](UNBALANCED_RIGHT_HULL.md), this excludes
the entire two-point upper cut in the nontriangular unbalanced Type-II
branch. The one-point upper cut in support cell II is a separate case
and is not claimed excluded here.

The proof retains actual cross-triangles involving the central and right
points. A positive weighted area identity first eliminates the three
right points. Monotone endpoint replacements then leave one polynomial
in \(b,q,z\); Section 7 gives its complete rational coefficient
certificate.

## 1. The geometric and parameter bounds

Theorems 3--4 of UNBALANCED_RIGHT_HULL.md and Theorem 1 of
[UNBALANCED_RADIAL_SPLIT.md](UNBALANCED_RADIAL_SPLIT.md) give the
following facts. The line \(PQ\) puts \(D,C\) on one side and
\(E,B\) on the other. We can label the points so that \(Q\) is
below \(DR\), while \(P,T\) are above \(DR\). Also

\[
q>\frac{67}{80},\qquad
P,T\in\operatorname{int}(DCR),\qquad
1-R_y\ge Ks>\frac{13}{16}.                              \tag{1}
\]

Write

\[
\begin{aligned}
R&=(r,1-v_R),&S&=(k,1-v_S),&T&=(X,1-v),\\
Q&=(l,1-z),&P&=(p,1-y).
\end{aligned}
\]

The convex order gives \(b<r<k\le1\) and
\(0<v_S<v_R\le1\). In particular

\[
a:=k-r>0,\qquad \beta:=v_R-v_S>0,\qquad
J_D:=[DRS]=kv_R-rv_S.                                  \tag{2}
\]

We need one additional upper bound:

\[
\boxed{q<\frac{119}{128}=\frac{17s_0}{2}<\frac{17s}{2}.} \tag{3}
\]

Indeed the generic right-quadrilateral ear inequality, equation (9) of
UNBALANCED_RIGHT_HULL.md, says that for
\(c=1-wq\) and every \(C_*\ge c\),

\[
\mathcal N_b(C_*):=4C_*bs_0-w(C_*-s_0)^2\le0.
\]

If \(q\ge119/128\), take \(C_*=1-119w/128\). Expansion gives

\[
16384\mathcal N_b(C_*)
=14161b^3-8687b^2+1719b-25=:P_0(b)>0
\quad(s_0\le b\le1/2),                                 \tag{4}
\]

a contradiction. Here is a direct check of the asserted sign. For
\(b=1/4+t\), \(t\ge0\), the polynomial is

\[
14161t^3+\frac{7735}{4}t^2+\frac{491}{16}t+\frac{5317}{64}>0.
\]

For \(b=1/4-t\), \(0\le t\le9/64\), discard its positive
quadratic term to obtain the strictly positive lower bound

\[
\frac{5317}{64}-\frac{491}{16}\frac9{64}
-14161\left(\frac9{64}\right)^3
=\frac{10323799}{262144}>0.
\]

The interval starts at \(s_0\) because \([DBE]=bq\ge s>s_0\).

## 2. A small containing triangle controls the central line

We use the line-coordinate inequality proved in Lemma 2 of
[UNBALANCED_CELL_I.md](UNBALANCED_CELL_I.md). If a triangle of
doubled area \(H\) contains two points, their line isolates one
vertex, and their three vertex-line areas are \(A,C_1,C_2\),
with \(A\) at the isolated vertex, then

\[
H\ge A+C_1+C_2+2s+
\frac{C_1C_2+s(C_1+C_2)}{A}
\ge A+4s+\frac{3s^2}{A}.                               \tag{5}
\]

If \(H<17s/2\), this has two useful consequences:

\[
C_1,C_2<\frac{3s}{2},\qquad A<4s.                      \tag{6}
\]

For example, \(C_1\ge3s/2\), \(C_2\ge s\) would make the
first expression in (5) at least
\(A+9s/2+4s^2/A\ge17s/2\). If \(A\ge4s\), the last
expression in (5) is at least \(35s/4>17s/2\).
Moreover, each interior point has opposite subtriangle area at least
\(Hs/(A+s)\), by the affine signed-height identity. Hence both
opposite subtriangle areas are greater than

\[
s+\frac{3s^2}{A}>\frac{7s}{4}.                         \tag{7}
\]

Apply this to the actual triangle \(DEC\), whose doubled area is
\(q<17s/2\), with \(E\) isolated by \(PQ\). Put

\[
\ell=p-l,\qquad d=[DQP]=zp-ly,\qquad d_C=[QPC]=d+y-z,
\qquad A_E=[EPQ]=q\ell-d.
\]

The radial ordering in (1) gives \(d>0\). The central-line signs
give \(d_C,A_E>0\), and all three are at least \(s\).
Equations (6)--(7) therefore say

\[
s\le d,d_C<\frac{3s}{2},\qquad s\le A_E<4s,
\qquad y,z>\frac{7s}{4},\qquad q\ell=A_E+d\ge2s.       \tag{8}
\]

In particular \(\ell>0\), and the physical slope of \(PQ\)
obeys

\[
\left|\frac{z-y}{\ell}\right|<\frac q4<\frac14.         \tag{9}
\]

## 3. A positive cross-triangle identity

Orient the signed affine line area as \(L(Z)=[QPZ]\). Thus
\(L(D)=d\), \(L(C)=d_C\), and \(L(E)=-A_E\).
Its value at \(R\) is

\[
L(R)=(1-r)d+rd_C-\frac{v_R}{q}(A_E+d)
<\frac{3s}{2}-\frac{13s}{8}<0.                         \tag{10}
\]

Since \(RPQ\) is an actual triangle, \(L(R)\le-s\).
We already know \(L(B)\le-s\). The three barycentric weights
of \(T\) in \(BCR\) are at least \(s/g\), where
\(g=[BRC]\le1\). Since \(L(C)<3s/2\),

\[
L(T)<\frac{3s}{2}-\frac{5s^2}{g}
\le\frac{3s}{2}-5s^2<s.                               \tag{11}
\]

The last inequality uses \(s>1/10\). The actual area \(PQT\)
has absolute value at least \(s\), so (11) forces \(L(T)\le-s\).
Consequently the three ordered areas

\[
[DQT]\ge s,\qquad [QTP]\ge s,\qquad [RST]\ge s          \tag{12}
\]

are positive. The first follows also directly from the opposite radial
positions of \(Q,T\) about \(DR\); the last follows from the
convex hull edge \(RS\).

Define

\[
L_Q=az+\beta l,\qquad L_P=ay+\beta p.
\]

Both are positive, and \(L_P-L_Q>0\). To verify the latter,
\([BRS]\ge s\) gives

\[
\frac\beta a\ge\frac{s}{(r-b)(1-r)}
\ge\frac{4s}{w^2}>\frac14,
\]

whereas (9) bounds the slope \((z-y)/\ell\) by \(1/4\).
Thus \(L_P-L_Q=a\ell\{\beta/a-(z-y)/\ell\}>0\).

Expansion of three determinants gives the exact identity

\[
\boxed{(L_P-L_Q)[DQT]+L_Q[QTP]+d[RST]
=d(J_D-L_Q).}                                          \tag{13}
\]

All its weights are positive. By (12),

\[
d(J_D-L_Q)\ge s(d+L_P).                                \tag{14}
\]

The other two positive cross-triangles \(RDQ,RPQ\) give

\[
d(r-l)=\ell[RDQ]+l[RPQ]\ge sp.                         \tag{15}
\]

These two identities retain the interaction that the anchor-only
inequalities miss.

## 4. Eliminate R, S, and T

Put

\[
A=dz+sy>0,\qquad B_*=dl+sp>0,\qquad
K_0=d-B_*=d(1-l)-sp.
\]

Equation (15) says \(rd-B_*\ge0\), while (14) says

\[
F:=dJ_D-aA-\beta B_*-sd\ge0.                           \tag{16}
\]

Its coefficient of \(v_S\) is \(B_*-rd\le0\). The actual
area \([CRS]\ge s\) gives

\[
v_S\ge\frac{s+(1-k)v_R}{1-r}.
\]

Decrease \(v_S\) to this lower endpoint, increasing \(F\).
The resulting expression is affine in \(k\). At \(k=r\) it is
\(s(B_*-rd)/(1-r)-sd<0\), whereas at the actual \(k>r\)
it is nonnegative. Its slope is therefore positive. Increase \(k\)
to one. Writing \(Z=1-r>0\), the resulting necessary inequality is

\[
v_RK_0-ZA-\frac{s(rd-B_*)}{Z}-sd\ge0.                  \tag{17}
\]

All terms after the first are negative or nonpositive, so \(K_0>0\).
The actual ear \([EBR]=c-bv_R-\lambda Z\ge s\), where
\(c=1-wq\), gives
\(v_R\le(c-s-\lambda Z)/b\).
Increase \(v_R\) to this endpoint in (17), using \(K_0>0\).
Since \(rd-B_*=K_0-Zd\), the constant terms cancel, leaving

\[
\frac{K_0(c-s)}b
-Z\left(\frac{\lambda K_0}{b}+A\right)
-\frac{sK_0}{Z}\ge0.                                  \tag{18}
\]

Here \(c-s>0\), also directly from the ear inequality. Apply
arithmetic-geometric mean to the last two positive quantities and
square only after observing the positive left side. The result is

\[
\boxed{G:=\gamma\{d(1-l)-sp\}-4sb^2(dz+sy)\ge0,}
\qquad
\gamma=(c-s)^2-4sb(1-q)>0.                             \tag{19}
\]

Indeed (18) gives
\(K_0(c-s)^2\ge4sb\lambda K_0+4sb^2A\); because
\(A,K_0>0\), it also proves the asserted \(\gamma>0\).

## 5. Eliminate p, y, and the active lower bound for l

For this section keep \(b,q,z\) fixed. Put

\[
Z_c=\gamma(1-l)-4sb^2z.
\]

Equation (19) becomes

\[
G=dZ_c-s(\gamma p+4sb^2y)
=p(zZ_c-s\gamma)-y(lZ_c+4s^2b^2).                       \tag{20}
\]

Whenever \(G\ge0\), its positive variables force
\(Z_c>0\) and \(zZ_c-s\gamma>0\). Its partial derivatives
therefore have the signs

\[
G_l=-yZ_c-\gamma d<0,\qquad
G_p=zZ_c-s\gamma>0,\qquad
G_y=-lZ_c-4s^2b^2<0.                                   \tag{21}
\]

The positive areas \([ECP]\ge s\) and \([QPC]\ge s\) imply

\[
p\le1-\frac{s+y}{q},\qquad
y\ge Y:=\frac{s(q+z)}\kappa,
\qquad \kappa=q(1-l)-z>0.                              \tag{22}
\]

For the second assertion, substitute the first bound into
\(d+y-z=zp+(1-l)y-z\ge s\); this yields
\(\kappa y\ge s(q+z)>0\).

Increase \(p\) to the first endpoint, then decrease \(y\) to
\(Y\), increasing \(p\) with it along that endpoint. By (21),
both changes increase \(G\). The final coordinates are

\[
y_*=\frac{Y_*}\kappa,\quad
p_*=\frac{P_*}\kappa,\quad
d_*=\frac{D_*}\kappa,
\qquad
\begin{cases}
Y_*=s(q+z),\\
P_*=\kappa-s(2-l),\\
D_*=(z+s)\kappa-s(q+z).
\end{cases}                                            \tag{23}
\]

The actual \(d\ge s\) also increases during these changes. Thus
every hypothetical configuration satisfies

\[
\begin{aligned}
N(b,q,z,l)&:=\gamma\{D_*(1-l)-sP_*\}
             -4sb^2(D_*z+sY_*)\ge0,\\
F_0(b,q,z,l)&:=z\kappa-s(q+z)\ge0.                      \tag{24}
\end{aligned}
\]

These are polynomials; in particular \(N=\kappa G(p_*,y_*,l)\).

We will lower \(l\), and need the corresponding monotonicity of
\(N\), not just that of \(G\). At an endpoint (23) with
\(N\ge0\), lowering \(l\) increases \(\kappa\), decreases
\(y_*\), and increases \(p_*\). All three signs in (21) therefore
increase the endpoint value of \(G\); multiplying by the increased
positive \(\kappa\) increases \(N\) as well. This remains true
throughout the lower interval, since the endpoint values stay positive
and \(G\) cannot cross from nonnegative to negative while increasing.

The two positive areas \([DBQ],[EBQ]\ge s\) imply

\[
l\ge l_0:=s+bz,\qquad
l\ge\frac{s-b(q-z)}{1-q}.
\]

Write

\[
S_0=b(1-z)-s,\quad
N_0=N(b,q,z,l_0),\quad
F_{00}=q\{z(1-s-bz)-s\}-z(z+s).
\]

The difference between the second lower bound and \(l_0\) is
\(-qS_0/(1-q)\). If \(\Delta=l-l_0\), then

\[
\Delta\ge\max\left(0,-\frac{qS_0}{1-q}\right),\quad
N(b,q,z,l)\le N_0,\quad
F_0(b,q,z,l)=F_{00}-qz\Delta.                           \tag{25}
\]

## 6. One rational dual handles both lower-bound branches

Set

\[
\alpha=\frac9{512},\qquad \eta=\frac7{2048},\qquad
\boxed{H(b,q,z)=N_0+\alpha F_{00}+\eta S_0.}             \tag{26}
\]

The original geometric bounds put the variables in the box

\[
\boxed{\quad
\frac8{73}\le b\le\frac12,\qquad
\frac{67}{80}\le q\le\frac{119}{128},\qquad
\frac{14}{73}\le z\le\frac34.\quad}                    \tag{27}
\]

For the last upper endpoint, \([DEQ]=ql\ge s\) and
\([ECQ]=q(1-l)-z\ge s\) give
\(z\le q-2s<3/4\). The lower endpoint is (8).
On (27),

\[
\frac{\alpha q^2z}{1-q}
\ge\frac9{512}\left(\frac{67}{80}\right)^2
\frac{14}{73}\frac{80}{13}
>\eta.                                                \tag{28}
\]

Equations (24)--(25) now prove the single necessary condition

\[
\boxed{H(b,q,z)\ge0.}                                 \tag{29}
\]

If \(S_0\ge0\), then
\(0\le N+\alpha F_0\le N_0+\alpha F_{00}\le H\).
If \(S_0<0\), use the stronger lower bound for \(\Delta\)
in (25), followed by (28):

\[
0\le N+\alpha F_0
\le N_0+\alpha F_{00}
 +\frac{\alpha q^2z}{1-q}S_0
\le H.
\]

This argument includes both possible active lower bounds for \(l\);
neither sign of \(S_0\) is omitted.

## 7. Exact negative coefficient certificate on the entire box

The polynomial \(H\), defined completely by (19), (23)--(26), has
degree at most \((4,3,3)\) in \((b,q,z)\). Make the rational
affine substitutions

\[
\begin{aligned}
b&=\frac8{73}+\left(\frac12-\frac8{73}\right)u,\\
q&=\frac{67}{80}+\left(\frac{119}{128}-\frac{67}{80}\right)v,\\
z&=\frac{14}{73}+\left(\frac34-\frac{14}{73}\right)t.
\end{aligned}                                          \tag{30}
\]

Thus \((u,v,t)\in[0,1]^3\). The following twelve closed boxes
cover this cube, with disjoint interiors. Each row supplies a negative
upper bound for **all 80 tensor Bernstein coefficients** of \(H\)
on that box, at degree \((4,3,3)\).

| \(u\) interval | \(v\) interval | \(t\) interval | Upper bound for every coefficient |
|---|---|---|---:|
| \([0,1/4]\) | \([0,1]\) | \([0,1/8]\) | \(-1/201292\) |
| \([1/4,1/2]\) | \([0,1]\) | \([0,1/8]\) | \(-1/28701\) |
| \([0,1/8]\) | \([0,1/2]\) | \([1/8,3/16]\) | \(-1/673376\) |
| \([0,1/8]\) | \([1/2,1]\) | \([1/8,3/16]\) | \(-1/85605\) |
| \([1/8,1/4]\) | \([0,1/2]\) | \([1/8,3/16]\) | \(-1/264312\) |
| \([1/8,1/4]\) | \([1/2,1]\) | \([1/8,3/16]\) | \(-1/87739\) |
| \([0,1/4]\) | \([0,1/2]\) | \([3/16,1/4]\) | \(-1/141939\) |
| \([0,1/4]\) | \([1/2,1]\) | \([3/16,1/4]\) | \(-1/94199\) |
| \([1/4,1/2]\) | \([0,1]\) | \([1/8,1/4]\) | \(-1/68199\) |
| \([1/2,1]\) | \([0,1]\) | \([0,1/4]\) | \(-1/6165\) |
| \([0,1]\) | \([0,1]\) | \([1/4,1/2]\) | \(-1/29261\) |
| \([0,1]\) | \([0,1]\) | \([1/2,1]\) | \(-1/2153\) |

For completeness, the coefficient calculation in the table is the
following finite rational operation, so the table can be checked directly
from the printed polynomials. On a row, substitute
\(u=u_0+(u_1-u_0)\xi\),
\(v=v_0+(v_1-v_0)\upsilon\), and
\(t=t_0+(t_1-t_0)\tau\) into (30) and (26), and expand as

\[
\sum_{a=0}^4\sum_{b'=0}^3\sum_{c'=0}^3
A_{ab'c'}\xi^a\upsilon^{b'}\tau^{c'}.
\]

Its Bernstein coefficient with indices
\(0\le i\le4\), \(0\le j,k'\le3\) is exactly

\[
\mathcal B_{ijk'}=
\sum_{a\le i,\ b'\le j,\ c'\le k'}
A_{ab'c'}
\frac{\binom ia}{\binom4a}
\frac{\binom j{b'}}{\binom3{b'}}
\frac{\binom{k'}{c'}}{\binom3{c'}}.                     \tag{31}
\]

All 960 comparisons asserted in the table are strict rational
inequalities under this explicit formula. The tensor Bernstein basis
functions are nonnegative and sum to one on the unit cube. Therefore
the value of the polynomial on each row is at most the largest
coefficient there. The table proves

\[
H(b,q,z)<0\quad\hbox{throughout (27)},                   \tag{32}
\]

contradicting (29) and proving Theorem 1. \(\square\)

## Verification

[check_unbalanced_upper_cell_ii.py](check_unbalanced_upper_cell_ii.py)
checks the signed determinant identities, the monotone elimination
formulas, all rational endpoint comparisons, and each of the 960
coefficient bounds in (31). It also checks that the twelve boxes cover
the unit cube without overlapping interiors. The certificate uses the
displayed rational subdivisions and bounds; no numerical search or
floating-point value is a premise.
