# Global hull, exterior caps, and a moving-point chamber

## Scope

This note closes three families: configurations whose nine points are all
hull vertices, both lower exterior caps with seven boundary contacts, and
the complete sharp orientation chamber when one upper boundary point is
allowed to move into the square. The last result is Theorem 3 below; it
does not assume that an arbitrary configuration belongs to that chamber.
These results are components of the completed unrestricted assembly in
[UNRESTRICTED.md](UNRESTRICTED.md).

For the first family no square-boundary incidence assumption, normal form,
or coordinate subdivision is needed.

**Theorem 1.** If nine points in the unit square are in convex position,
their minimum triangle area satisfies

\[
\boxed{t<\frac1{19}<\frac7{128}<A_0.}
\]

More generally, if their convex hull has area S, then

\[
t\le\frac{4\pi^2}{729+3\pi^2}S
 <\frac{1936}{37173}S<\frac S{19}.                 \tag{1}
\]

This is a hand argument using the classical planar affine isoperimetric
inequality. That analytic theorem is the one external mathematical input;
its statement and a primary proof reference are given below. The argument
does not use the sharper, computer-assisted nonagon inequality.

For the unrestricted nine-point problem, Theorem 1 means that every
configuration with minimum triangle area at least A0 has at least one
point strictly inside its convex hull. It does **not** prove that there is
exactly one such point or that hull vertices lie on the square boundary.

## 1. The analytic input

For a positively oriented, convex closed curve enclosing area B, its
affine perimeter is

\[
\Omega=\int \det(\gamma'(u),\gamma''(u))^{1/3}\,du.
\]

The integral can be added over finitely many smooth pieces. The classical
planar affine isoperimetric inequality states

\[
                         \Omega^3\le8\pi^2 B.             \tag{2}
\]

We use its version for general convex bodies, so a curve formed by finitely
many C2 arcs meeting with matching nonzero tangent vectors is included.
One primary analytic proof is W. Chen, R. Howard, E. Lutwak, D. Yang and
G. Zhang, *A generalized affine isoperimetric inequality* (2004),
[arXiv:math/0402083](https://arxiv.org/abs/math/0402083),
[author's PDF](https://people.math.sc.edu/howard/Reprints/affine.pdf),
Section 4, especially the concluding inequality in the proof of
Theorem 4.1. The introductory formula (1.1) gives the same cubic
normalization. Its affine perimeter is the integral of curvature to the
one-third power against Euclidean arc length; changing to a regular
parameter gives the determinant integral above.

Thus no unproved smoothness extension or limiting equality assertion is
needed here. Alternatively the finitely many curvature jumps in the
curve constructed below can be smoothed in its positive radius-of-curvature
function: the areas and affine-perimeter integrals converge, and (2)
passes to the limit. On every arc the curvature is strictly positive and
has finite positive one-sided limits at the junctions.

## 2. Round the corners by explicit parabolic arcs

Let \(V_1,\ldots,V_n\) be the cyclic vertices of a strictly convex
polygon of area S. Indices are cyclic. Write

\[
e_i=\operatorname{Area}(V_{i-1},V_i,V_{i+1})>0,
\qquad M_i=\frac{V_i+V_{i+1}}2.
\]

Replace the two boundary half-edges from \(M_{i-1}\) through \(V_i\)
to \(M_i\) by the quadratic arc

\[
\gamma_i(u)=(1-u)^2M_{i-1}+2u(1-u)V_i+u^2M_i,
\qquad0\le u\le1.                                         \tag{3}
\]

Each arc lies in the triangle \(M_{i-1}V_iM_i\), because all three
coefficients in (3) are nonnegative and sum to one. These corner triangles
have disjoint interiors: together with the convex polygon of edge
midpoints they partition the original polygon. Each arc is regular and
turns monotonically from the direction of edge \(V_{i-1}V_i\) to that
of \(V_iV_{i+1}\). Adjacent arcs have exactly the same tangent vector at
their common midpoint:

\[
\gamma_i'(1)=V_{i+1}-V_i=\gamma_{i+1}'(0).
\]

Consequently the arcs form a simple convex C1 closed curve, piecewise
quadratic with positive curvature. In particular it encloses a convex
body to which (2) applies.

Translate the vertex \(V_i\) to the origin and put
\(a=V_{i-1}-V_i\), \(b=V_{i+1}-V_i\). The positive orientation gives
\(\det(a,b)=-2e_i\), and (3) becomes

\[
\gamma_i(u)=\frac12(1-u)^2a+\frac12u^2b.
\]

Direct differentiation gives the constant identity

\[
\det(\gamma_i'(u),\gamma_i''(u))=-\det(a,b)=2e_i.           \tag{4}
\]

Thus its contribution to affine perimeter is \((2e_i)^{1/3}\).
The removed corner area is obtained by closing the arc to the vertex.
The two straight radial segments contribute zero to Green's area integral,
and

\[
\frac12\int_0^1\det(\gamma_i(u),\gamma_i'(u))\,du
 =\frac{\det(a,b)}{24}=-\frac{e_i}{12}.                    \tag{5}
\]

The negative sign records the clockwise orientation of the removed cap.
Its unsigned area is therefore \(e_i/12\). It follows that the rounded
body has precisely

\[
\boxed{\Omega=2^{1/3}\sum_{i=1}^n e_i^{1/3},
\qquad B=S-\frac1{12}\sum_{i=1}^n e_i.}                  \tag{6}
\]

Inserting (6) into (2) gives an affine-invariant inequality for every
strictly convex polygon:

\[
\left(\sum_i e_i^{1/3}\right)^3
 +\frac{\pi^2}{3}\sum_i e_i\le4\pi^2S.                  \tag{7}
\]

## 3. Apply the polygon inequality to a nonagon

If every triangle on the polygon's vertices has area at least t, every
ear does as well. Hence

\[
\sum_i e_i^{1/3}\ge n t^{1/3},\qquad
\sum_i e_i\ge nt.
\]

Equation (7) proves the general, not necessarily sharp, bound

\[
\boxed{t\le\frac{4\pi^2}{n^3+n\pi^2/3}S.}              \tag{8}
\]

For n=9 this is the first inequality of (1). The function
\(x\mapsto4x/(729+3x)\) is strictly increasing for \(x>0\).
The classical rational inequality \(\pi<22/7\) therefore gives

\[
\frac{4\pi^2}{729+3\pi^2}
 <\frac{4(484/49)}{729+3(484/49)}
 =\frac{1936}{37173}<\frac1{19}.                          \tag{9}
\]

The final comparison is the integer inequality
\(1936\cdot19=36784<37173\).
Since the convex hull lies inside the unit square, S is at most one.
Also \(1/19<7/128\) because \(128<133\), and

\[
A_0-\frac7{128}=\frac{18\sqrt{65}-145}{640}>0,
\qquad18^2\cdot65-145^2=35>0.
\]

This proves Theorem 1, including a strict margin below the target.
Degenerate configurations already have minimum triangle area zero. A
nine-vertex convex hull is strictly convex, so no other case was omitted.

## Verification and hull scope

The optional script [check_global_completion.py](check_global_completion.py)
checks the two local polynomial identities (4)--(5), their area factors,
and the rational comparisons in (9). The convex-curve construction and
the affine isoperimetric theorem are mathematical premises, not consequences
of that diagnostic.

The complete nine-vertex hull family is excluded. The hull-eight family
with one interior point is distinct from the eight-**boundary** family.
Equation (8) at n=8 alone is not strong enough to close the hull-eight
case. The complete hull-eight arguments assembled in
[UNRESTRICTED.md](UNRESTRICTED.md) also use the interior point's triangle
constraints.

## 4. Both lower exterior corner caps with seven boundary contacts

There is a second complete placement exclusion, independent of affine
isoperimetry. Use the seven-boundary notation

\[
\begin{array}{lll}
A=(0,a),&H=(0,h),&0<a<h<1,\\
B=(b,0),&C=(c,0),&0<b<c<1,\\
D=(1,d),&E=(1,e),&0<d<e<1,\\
F=(f,1),&&0<f<1.
\end{array}                                                \tag{10}
\]

The other two points may lie anywhere in the square. In particular, the
following statement does not require either free point to be inside the
boundary heptagon or to be a vertex of the full hull. It does not even
require the projection-overlap condition \(b\le f\le c\).

**Theorem 2.** If either free point lies in either lower exterior corner
cap

\[
\operatorname{conv}\{(0,0),A,B\},\qquad
\operatorname{conv}\{(1,0),C,D\},
\]

then some configuration triangle has area strictly less than \(7/128\).

**Proof.** Horizontal reflection exchanges the two caps, so consider
\(P=(x,y)\) in the first cap. Assume for a contradiction that every
triangle has doubled area at least

\[
 s=\frac7{64},\qquad L=h-a,\quad M=c-b,\quad R=e-d.
\]

A point on an actual triangle edge already makes a collinear triple;
the area inequalities below handle the full closed cap in any case.
The cap condition and the triangles AHP and BCP give

\[
\frac xb+\frac ya\le1,\qquad xL\ge s,\qquad yM\ge s.
\]

Consequently

\[
\frac{s}{bL}+\frac{s}{aM}\le1.
\]

Set \(\lambda=s/(aM)\). Positivity gives \(0<\lambda<1\),
and therefore

\[
a=\frac{s}{\lambda M},\qquad
b\ge\frac{s}{(1-\lambda)L}.                              \tag{11}
\]

Triangles BCD and CDE imply \(dM\ge s\) and \((1-c)R\ge s\).
The horizontal length identity \(M+b+(1-c)=1\) now yields

\[
1\ge M+\frac{s}{(1-\lambda)L}+\frac{s}{R}.                \tag{12}
\]

The doubled area of HFE is

\[
(1-f)(1-h)+f(1-e)\ge s.
\]

This is a convex combination of \(1-h\) and \(1-e\). Hence
at least one of h,e is at most \(1-s\); both are at most one.
With the unequal positive weights 3/4 and 1/4 this gives

\[
\frac34h+\frac14e\le1-\frac s4.
\]

Using (11), \(h=a+L\), and \(e=d+R\), we conclude that

\[
1-\frac s4\ge\frac{3L}{4}+\frac R4
          +\frac{s}{4M}\left(\frac3\lambda+1\right).     \tag{13}
\]

Add (12)--(13), and group each positive length with its reciprocal.
Three applications of the arithmetic-geometric mean inequality give

\[
2-\frac s4\ge\sqrt{s}\left(
\sqrt{1+\frac3\lambda}
+\sqrt{\frac3{1-\lambda}}+1\right)>6\sqrt{s}.             \tag{14}
\]

For the strict final comparison put \(q=\lambda(1-\lambda)\le1/4\).
The square of the sum of the first two radicals is

\[
1+\frac3q+2\sqrt{\frac{3(\lambda+3)}q}
 >1+12+12=25.
\]

Both radicals are positive, so their sum exceeds five. At \(s=7/64\),
(14) is impossible, since

\[
2-\frac s4=\frac{505}{256}
 <\frac{3\sqrt7}{4}=6\sqrt s.
\]

Squaring positive quantities reduces this last comparison to
\(7\cdot192^2-505^2=3023>0\). This contradiction proves the left-cap
exclusion; reflection proves the right-cap exclusion. No constraint
involving the other free point was used. \(\square\)

Thus a competitive seven-boundary configuration has no free point in
either exterior cap along its doubled bottom side. If exactly eight
points are hull vertices and the eighth lies outside the boundary
heptagon, it must lie in one of the two upper exterior caps. Those upper
caps contain perturbations of the known optimal configuration, and are
not claimed to have a uniform strict bound below A0.

## 5. The whole sharp chamber with F allowed to move inward

Use the notation of Part I of [HAND_PROOF.md](HAND_PROOF.md), except that
F may now be anywhere on its vertical segment in the square:

\[
\begin{array}{llll}
A=(0,a),&B=(b,0),&C=(c,0),&D=(1,d),\\
E=(1,e),&F=(f,k),&G=(g,1),&H=(0,h),
\end{array}
\]

where

\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\quad
0<g<f<1,\quad0\le k\le1.
\]

Write \(O=(x,y)\in[0,1]^2\), \(L=h-a\), \(M=f-g\), and
\(\delta=1-k\). The chamber is specified by positivity of the following
eleven oriented doubled areas:

\[
\begin{array}{c|l}
ABH&bL\\
ABC&a(c-b)\\
AGH&gL\\
DEF&(1-f)(e-d)\\
GHF&M(1-h)+g\delta\\
GEF&M(1-e)-(1-g)\delta\\
ADO&U_1=y-a-(d-a)x\\
DHO&U_2=h-y-(h-d)x\\
BOE&U_3=e(x-b)-(1-b)y\\
GCO&U_4=x-c+(c-g)y\\
OCF&U_5=k(c-x)+(f-c)y.
\end{array}                                                    \tag{15}
\]

The **plus** sign in GHF and **minus** sign in GEF are essential. There
is no supplementary assumption that \(g<c\), \(x<c\), or \(h\le e\).

**Theorem 3.** Throughout the chamber (15), the minimum of the eleven
displayed ordinary triangle areas is at most \(A_0\). If all eleven
areas are at least \(A_0\), then \(k=1\), and the configuration is exactly
the equality configuration of Part I of [HAND_PROOF.md](HAND_PROOF.md):

\[
\begin{array}{lll}
A=(0,4p_0-1/2),&B=(p_0,0),&C=(1-3p_0/2,0),\\
D=(1,3p_0/2),&E=(1,1-p_0),&F=(3/2-4p_0,1),\\
G=(p_0,1),&H=(0,1-p_0),&O=(1-2p_0,2p_0).
\end{array}                                                    \tag{16}
\]

Here \(p_0=(15-\sqrt{65})/40\), and
\(s_0=2A_0=(2-9p_0)/4\). Thus this theorem includes all inward
displacements of F that keep the displayed orientations, without
assuming a small displacement or retaining any critical-area equalities.
It is a whole chamber theorem, not a classification of all configurations
with eight hull vertices.

### 5.1. A preliminary exclusion: x cannot be at least c

Assume temporarily that all expressions in (15) are at least
\(s=7/64\), and suppose \(x\ge c\). Positivity of GEF gives \(k>e\).
Also DEF and GEF give

\[
(1-f)e\ge s,\qquad f(1-e)\ge s.
\]

Consequently \(f(1-f)\ge s\), so \(f\le7/8\) and
\(e\le1-s/f\le7/8\). From ABH, \(b\ge s\).
The inequalities \(U_3\ge s\), \(U_5\ge s\) imply
\(e>y>0\), \(f>c\), and \((f-c)y\ge s\).

Put \(q=c-b>0\), \(r=1-f>0\). Since \(k\ge e\) and \(x\ge c\),

\[
2s\le U_3+U_5\le q(e-y)-ry.
\]

Moreover \(q\le f-b-s/y\). Since \(e-y>0\), substitution yields

\[
2s\le e(f-b)+s-(1-b)y-\frac{se}{y}.
\]

The arithmetic-geometric mean inequality therefore gives

\[
f-b\ge\frac se+2\sqrt{\frac{(1-b)s}{e}}
 \ge\frac18+\sqrt{\frac{1-b}{2}}.
\]

Using \(f\le7/8\), we obtain
\(3/4-b\ge\sqrt{(1-b)/2}\). This forces \(b\le3/4\), and squaring
then gives \(b(1-b)\le1/16\). On the other hand, concavity on
\([7/64,3/4]\) gives

\[
b(1-b)\ge\min\left\{\frac{399}{4096},\frac3{16}\right\}
 =\frac{399}{4096}>\frac1{16},
\]

a contradiction. Thus \(x<c\) whenever all eleven expressions are at
least \(s_0>7/64\). The inequality \(U_4>0\) now also forces
\(g<c\) and \(x>g\): if \(g\ge c\), then \(U_4\le x-c<0\), while

\[
U_4=(x-g)-(c-g)(1-y)>0
\]

implies \(x>g\) once \(g<c\).

### 5.2. Eliminate the boundary coordinates

For the rest of the proof fix \(s=s_0\), and assume all expressions in
(15) are at least s. Define

\[
u=\frac{s}{L},\quad v=\frac{s}{M},\quad
w=\frac{\delta}{M},\quad z=g-u,\quad
\alpha=1-v-\frac su,\quad\beta=1-u-\frac sv,
\]

\[
A_* =\alpha+gw,\qquad B_* =1-g-\frac sv=1-f=\beta-z.
\]

The first six area inequalities imply

\[
b,g\ge u,\qquad
h\le1-v+gw,\qquad e\le1-v-(1-g)w,
\qquad a\le A_*.
\]

Moreover \(A_*>s\) and \(B_*>s\), since \(a(c-b)\ge s\) and
\(B_*(e-d)\ge s\), with both gaps less than one. The two sums of
interior areas give

\[
x\le1-2u,\qquad y\ge2v+w(c-x)\ge2v.                       \tag{17}
\]

As in the boundary proof, \(U_3>0\) implies \(x>b\), \(e>y\), and
the monotone chain

\[
s\le U_3\le(1-v)(x-u)-(1-u)y
 \le1-3u-3v+5uv.                                           \tag{18}
\]

In particular, \(0<u,v<1/2\), and for \(p=(u+v)/2\),

\[
s<p\le p_0<\frac{347}{2000},\qquad u+v<\frac{347}{1000}.
                                                                    \tag{19}
\]

The first inequality uses \(L,M<1\); the upper bound follows from
\(uv\le p^2\) in (18) and strict decrease of \(1-6p+5p^2\) on
\((0,1/2)\). Also \(a\le1-s/u\), \(c-b\le1-u\), and ABC give

\[
s\le(1-s/u)(1-u),\qquad u(1-u)\ge s>\frac7{64}.
\]

Since \(u<1/2\), these imply

\[
u\ge\frac18,\quad v<\frac{111}{500},\quad
a_v:=1-3v-s>\frac{28}{125}>0.                              \tag{20}
\]

For the last bound we used \(s_0<11/100\). Solving the middle bound
in (18) for x, with \(y\ge2v\), gives

\[
x\ge X_0:=\frac{u(1-3v)+s+2v}{1-v}.                       \tag{21}
\]

The same ABC--GCO elimination used in the boundary proof gives

\[
s(1-y)\le A_*(x-u-s).                                     \tag{22}
\]

Indeed \(c(1-y)\le x-gy-s\), \(c-b\ge s/a\), and \(b,g\ge u\);
all factors used here are positive because \(y<e<1\). From DHO and DEF,

\[
sx\le B_*\bigl(1-v-y-s+w(g-x)\bigr).                      \tag{23}
\]

To check the added term, the bound on \(x(e-d)\) is
\(ex+h(1-x)-y-s\); the bounds on e and h replace this by exactly
\(1-v-y-s+w(g-x)\).

Define

\[
\begin{aligned}
\Phi(u,v,s)&=6uv+(3s-4)(u+v)+2s+2
               -\frac{s(1-s)(u+v)}{uv},\\
a_u&=1-3u-s,\\
C_*&=g(a_u+B_*)-B_*X_0,\\
N&=B_*(1-v)-s.
\end{aligned}                                                \tag{24}
\]

Adding (22)--(23) and using (17) gives the central necessary inequality

\[
\boxed{0\le\Phi-z a_v+wC_*.}                              \tag{25}
\]

Here is its full elimination identity. For \(X=1-x\), \(Y=y\),
the left side before substituting (17) is
\((A_*-s)X+(B_*-s)Y\). Its coefficients are positive. Substitution
first gives

\[
0\le\Phi-z a_v+w\{g(a_u+B_*)-(B_*-s)c-sx\}.
\]

Since \(c>x\), \(B_*>s\), and \(x\ge X_0\), the braces are at most
\(C_*\), proving (25).

There is a useful independent scalar conclusion:

\[
\boxed{\Phi\le0,\quad
\Phi=0\ \Longrightarrow\ u=v=p_0.}                        \tag{26}
\]

This follows directly from the scalar argument in Part I, Sections 4--5,
of [HAND_PROOF.md](HAND_PROOF.md). Explicitly, for \(p=(u+v)/2\),
strict increase in \(uv\) gives \(\Phi\le2R(p,s_0)/p\), where
\(R(p,s)=3p^3+3p^2s-4p^2+ps+p+s^2-s\). That polynomial is strictly
increasing in p on \([0,p_0]\) at \(s=s_0\), and
\(R(p_0,s_0)=0\). Equality in both bounds forces \(p=p_0\) and
\(uv=p^2\).

Finally, DEF and GEF imply

\[
0\le w\le\frac{N}{B_*(1-g)},\qquad
g\le g_{\max}:=1-\frac{s}{v(1-v)}.                         \tag{27}
\]

All denominators are positive. In fact \(N>0\), since \(d>0\) and
\(e\ge d+s/B_*\). The following three cases finish the proof.

### 5.3. The half u at least v

Suppose \(u\ge v\). Since \(x>g\), (23), (17), and (20) imply

\[
sX_0\le sx\le B_*a_v\le\beta a_v.
\]

Thus

\[
\Psi(u,v,s):=\beta(1-3v-s)(1-v)
             -s\{u(1-3v)+s+2v\}\ge0.                     \tag{28}
\]

Here \(v\le p_0<7/40\) and \(s<11/100\), so

\[
\Psi_u=2sv-3v^2+4v-1<-\frac{523}{2000}<0.
\]

It follows that \(H(v,s):=v\Psi(v,v,s)\ge0\), where

\[
H=-2s^2v+s^2+2sv^3-4sv^2+3sv-s-3v^4+7v^3-5v^2+v.
\]

At \(s=s_0\), the relation \(20p_0^2-15p_0+2=0\) gives

\[
H(p_0,s_0)=0,\qquad
H_v(p_0,s_0)=\frac{29}{40}-\frac{331p_0}{80}
 >\frac{1143}{160000}>0.
\]

On \(0\le v\le p_0\),

\[
H_{vv}=2(6sv-4s-18v^2+21v-5)<0:
\]

indeed \(6v-4<0\) and \(21v-5<-53/40\). Hence \(H_v>0\) on
that entire interval, and \(H(v,s_0)\ge0\) forces \(v=p_0\).
By (19), also \(u=p_0\). Equality in (18) forces \(e=1-v\);
the stronger bound \(e\le1-v-(1-g)w\) then forces \(w=0\).

### 5.4. The half u less than v, away from the equality parameters

Suppose \(u<v\) and \(u+v\le8/25\). The symmetrization in (26) gives

\[
\Phi\le f(p,s):=6p^2+2p(3s-4)+2s+2-\frac{2s(1-s)}p,
\qquad p\le\frac4{25}.
\]

On \(s\le p\le4/25\), \(7/64\le s\le11/100\),

\[
f_p\ge\frac{3223}{2048}>0,\qquad f_s\le-\frac{679}{100}<0.
\]

For the first bound, use
\(12p+6s\ge18(7/64)\), \(s(1-s)\ge(7/64)(89/100)\), and
\(p^2\le16/625\). The second follows from \(p\le4/25\) and
\(1-2s\ge39/50\). The exact inequality \(s_0>79/720\) follows from
\(p_0<281/1620\), which is checked by squaring
\(\sqrt{65}>653/81\). Therefore

\[
\Phi\le f(4/25,79/720)
 =-\frac{587423}{25920000}<-\frac1{45}.                     \tag{29}
\]

We will prove the following bound on the possible correction in (25):

\[
\boxed{C_*>0\ \Longrightarrow\ wC_*<\frac1{45}.}           \tag{30}
\]

If \(C_*\le0\), the right side of (25) is already negative by (29),
\(z\ge0\), \(a_v>0\), and \(w\ge0\). If \(C_*>0\), (29)--(30)
give the same contradiction.

To prove (30), (19)--(20) and (27) give

\[
\frac7{48}<v\le\frac{39}{200},\qquad
\frac18\le g\le\frac{272}{897}<\frac13,\qquad
X_0\ge\frac{181}{328}>\frac12.                             \tag{31}
\]

For the lower v bound, \(g\ge1/8\) and (27) imply
\(v(1-v)\ge1/8\), whereas \((7/48)(41/48)=287/2304<1/8\).
The g upper bound is \(g_{\max}(39/200,7/64)\).
The function \(X_0\) is increasing in u, v, and s on this range, so
its lower bound is its value at \((1/8,7/48,7/64)\).

Put \(s_-=7/64\), \(s_+=11/100\). For an interval \(l\le v\le h\)
in the table below, define explicit rational polynomials in g by

\[
\begin{aligned}
X_l&=\frac{(1/8)(1-3l)+s_-+2l}{1-l},\\
C_l(g)&=g(1-3/8-s_-)+(1-g-s_+/l)(g-X_l),\\
B_h(g)&=1-g-s_-/h,\\
N_h(g)&=B_h(g)(1-h)-s_-,\\
G_h&=1-\frac{s_-}{h(1-h)},\\
P_{l,h}(g)&=\frac{B_h(g)(1-g)}{45}-N_h(g)C_l(g).
\end{aligned}                                                \tag{32}
\]

On \(1/8\le g\le G_h\), the number \(1-g-s_+/l\) is positive
(substitution of \(g=G_h\) verifies it in each row). Since \(g<X_l\),
the bounds on \(a_u,B_*,X_0\) give \(C_*\le C_l(g)\).
Also, for \(W=N/[B_*(1-g)]\), direct differentiation gives

\[
W_s=-\frac1{B_*^2}<0,\qquad
W_v=\frac{-1+s^2/(v^2B_*^2)}{1-g}>0.
\]

The latter sign follows from
\(vB_*\le(39/200)(7/8)-7/64=49/800<s\).
Consequently

\[
w\le\frac{N_h(g)}{B_h(g)(1-g)}.
\]

Each polynomial \(P_{l,h}\) in (32) is a cubic. Divide the interval
\([1/8,G_h]\) into n equal subintervals. On subinterval j write

\[
g=\frac18+\left(G_h-\frac18\right)\frac{j+r}{n},
\qquad0\le r\le1,\quad0\le j<n.
\]

The entries in the last column are positive integer lower bounds for
\(10^9\) times **every** degree-three Bernstein coefficient of
\(P_{l,h}\) on the corresponding subinterval. Thus all four coefficients
on each subinterval are positive.

| l | h | \(G_h\) | n | coefficient bounds, in subinterval order |
|---|---|---|---|---|
| \(7/48\) | \(4/25\) | \(143/768\) | 1 | 1510430 |
| \(4/25\) | \(43/250\) | \(33041/142416\) | 1 | 282515 |
| \(43/250\) | \(23/125\) | \(40769/150144\) | 2 | 1677106, 195230 |
| \(23/125\) | \(39/200\) | \(272/897\) | 4 | 7683587, 1938633, 169864, 221125 |

For a direct arithmetic check, if the substituted cubic is
\(\sum_{i=0}^3 a_i r^i\), its kth Bernstein coefficient is
\(\sum_{i=0}^k a_i\binom{k}{i}/\binom{3}{i}\).
Equations (32) and this formula specify every rational number bounded
in the table. A positive Bernstein basis expansion is positive on the
whole closed interval, because its basis functions are nonnegative and
sum to one. Hence \(P_{l,h}>0\). When \(C_*>0\), also \(C_l>0\), and

\[
wC_*\le\frac{N_h C_l}{B_h(1-g)}<\frac1{45},
\]

which proves (30).

### 5.5. The half u less than v, near the equality parameters

It remains to consider \(u<v\) and
\(8/25\le u+v<347/1000\). We prove the stronger correction bound

\[
\boxed{\Delta:=z a_v B_*(1-g)-NC_*>0.}                    \tag{33}
\]

If \(C_*>0\), (27) and (33) give \(wC_*<z a_v\), so (25)
contradicts (26). If \(C_*\le0\), (25) and (26) force
\(\Phi=0\), which by (26) forces \(u=v=p_0\), contradicting
\(u<v\). Thus (33) excludes this last case completely.

Here is an explicit rational polynomial certificate for (33). Define

\[
J=v(1-u)(1-v)-s,\qquad
Z=g_{\max}-u=\frac{J}{v(1-v)}.
\]

By (27), \(0\le z\le Z\). In fact \(J>0\), because
\(N>0\) and \(g\ge u\). Set

\[
\begin{aligned}
N_0&=\beta(1-v)-s, & T&=X_0-u,\\
C_0&=u a_u-\beta T, & K&=a_u+\beta+T,\\
d_0&=-N_0C_0,\\
d_1&=a_v\beta(1-u)-N_0K+(1-v)C_0,\\
d_2&=-a_v(\beta+1-u)+N_0+(1-v)K,\\
d_3&=-2v-s.
\end{aligned}                                                \tag{34}
\]

Expansion of \(B_*=\beta-z\), \(N=N_0-(1-v)z\), and
\(C_*=C_0+Kz-z^2\) gives exactly

\[
\Delta=d_0+d_1z+d_2z^2+d_3z^3.
\]

After setting \(z=Zr\), its degree-five Bernstein coefficients are

\[
b_i=d_0+\frac i5d_1Z+\frac{i(i-1)}{20}d_2Z^2
              +\frac{i(i-1)(i-2)}{60}d_3Z^3,
\qquad0\le i\le5.                                         \tag{35}
\]

The following definitions clear positive denominators and cancel the
common positive factor J:

\[
\begin{array}{lll}
P_0=\dfrac{v^2(1-v)}{J}b_0,&
P_1=\dfrac{5v^3(1-v)^2}{J}b_1,&
P_2=\dfrac{10v^3(1-v)^2}{J}b_2,\\[4pt]
P_3=\dfrac{10v^3(1-v)^3}{J}b_3,&
P_4=\dfrac{5v^3(1-v)^3}{J}b_4,&
P_5=\dfrac{v^2(1-v)^3}{J}b_5.
\end{array}                                                \tag{36}
\]

All six \(P_i\) are polynomials in u,v,s; (34)--(36) are exact
definitions by rational arithmetic, with cancellation before evaluation.
For example,

\[
\begin{aligned}
P_0={}&-s^2-suv^2+2suv-sv-u^2v^2+3u^2v
             -3uv^2-uv+2v^2,\\
P_5={}&s^2(1-3v-s).
\end{aligned}
\]

To certify positivity of all six on the required region, make the affine
substitution

\[
\begin{aligned}
S&=\frac8{25}+\frac{27}{1000}q,&
D&=\frac{97}{1000}d,\\
u&=\frac{S-D}{2},&v&=\frac{S+D}{2},&
s&=\frac7{64}+\frac{\eta}{1600},
\end{aligned}                                               \tag{37}
\]

with \((q,d,\eta)\in[0,1]^3\). This rectangular parameter region
contains every case under consideration: \(u\ge1/8\) implies
\(0<v-u\le u+v-1/4<97/1000\), and
\(7/64<s_0<11/100=7/64+1/1600\).

For each polynomial in (36) after (37), expand in the product Bernstein
basis of the degrees shown below. If the power expansion is
\(\sum a_{abc}q^a d^b\eta^c\), the coefficient at index \((j,k,l)\)
is the explicitly defined rational number

\[
\mathcal B_{jkl}=
\sum_{a\le j,\ b\le k,\ c\le l}
a_{abc}\,
\frac{\binom ja}{\binom{n_q}a}
\frac{\binom kb}{\binom{n_d}b}
\frac{\binom lc}{\binom{n_\eta}c}.                         \tag{38}
\]

For each fixed index k, the corresponding entry in the final column is
a positive integer lower bound for \(10^8\mathcal B_{jkl}\), uniformly
over all j and l. The entries are listed for \(k=0,\ldots,n_d\).

| polynomial | \((n_q,n_d,n_\eta)\) | coefficient bounds by k |
|---|---|---|
| \(P_0\) | (4,4,2) | 42608, 495578, 1060234, 1754000, 2593751 |
| \(P_1\) | (6,6,2) | 96401, 213295, 345096, 494730, 665376, 860372, 1083132 |
| \(P_2\) | (6,6,3) | 348924, 453900, 547176, 630129, 704650, 773034, 837883 |
| \(P_3\) | (7,7,3) | 436511, 451094, 448050, 418015, 367879, 302454, 222516, 128928 |
| \(P_4\) | (6,6,3) | 294942, 280045, 254818, 219391, 174027, 119091, 55028 |
| \(P_5\) | (1,1,3) | 442776, 268716 |

This is a finite algebraic certificate: the polynomials are precisely
defined in (34)--(37), and (38) reduces each table entry to rational
arithmetic. Every product Bernstein basis function is nonnegative on
the cube, and their sum is one. The table therefore proves \(P_i>0\)
throughout the cube. By (36), every \(b_i>0\) when \(J>0\).
Equations (35) and the same one-variable basis property now prove
\(\Delta>0\) for \(0\le z\le Z\), which is (33).

### 5.6. Equality, verification, and precise scope

The last two cases are impossible; Section 5.3 gives
\(u=v=p_0\) and \(w=0\). Since \(M>0\), we obtain \(\delta=0\),
so \(k=1\). The original sharp chamber theorem now applies without
modification and gives (16). This proves Theorem 3, including its unique
equality configuration in the stated strict coordinate family. The upper
bound extends by continuity to its closure, including coordinate
boundaries such as \(h=1\) or \(c=1\). If one of the eleven displayed
areas vanishes, that upper bound is immediate.

The optional exact diagnostic [check_global_completion.py](check_global_completion.py)
checks the eleven determinants, the elimination and polynomial identities,
the rational constants, and every lower bound in both coefficient tables.
It uses rational arithmetic throughout. The tables and formulas above,
rather than a program's success message, are the algebraic certificates.

Theorem 3 closes the full F-moving sharp chamber, including the case
\(h>e\) and \(u<v\). The other hull-eight chambers are handled by
their own continuous inequalities and complete sign covers in the
unrestricted assembly [UNRESTRICTED.md](UNRESTRICTED.md). The assembly
does not require every hull-eight configuration to belong to the
F-moving chamber.
