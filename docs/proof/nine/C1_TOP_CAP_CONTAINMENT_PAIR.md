# The containment pair-line case is impossible in the C1 top cap

Use the remaining common-cell placement of
[C1_TOP_CAP_COMMON_CELL.md](C1_TOP_CAP_COMMON_CELL.md):

\[
O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\quad0<d\le h\le1,\quad0<f<c\le1,
\]

with two lower points \(L,M\in OHC\cap OCF\), a top-cap
point \(X=(x,Y)\) beyond \(DF\), and the ninth point in
\(OCX\). The configuration is competitive, and we use

\[
s=\frac8{73}<2A_0,\qquad \rho=\frac{49}{60},\qquad
p=hc\ge\rho,\quad cY\ge\rho,
\quad z=\frac{hf}{c}\ge s.
\]

The preceding complete reductions give \(f<x<c\), with \(L\)
on the \(H\)-side of \(OX\) and \(M\) on its \(C\)-side.
Every unsigned actual doubled triangle area is at least \(s\).

Orient the line from \(L\) to \(M\), and write
\(d_V=[LMV]\).

**Theorem.** The line-sign placement

\[
d_O,d_H<0<d_C,d_F                                      \tag{1}
\]

is impossible. This is the complete middle, or containment, alternative
for two points in the common sector of the quadrilateral \(OCFH\).
Together with the isolated-endpoint exclusions in the common-cell
note, only the case in which \(O,C\) are on the same side of
\(LM\) remains after these reductions. That final case is fully
excluded in [C1_TWO_LOWER_COMPLETION.md](C1_TWO_LOWER_COMPLETION.md),
which assembles the complete two-lower theorem.

## 1. The cap forces \(z<1/2\)

We first prove a cap bound independent of the pair-line signs. The
actual \(CFX\) cost gives

\[
s\le x-fY-c(1-Y)\le x-f<c-f,
\qquad f\le c-s.                                      \tag{2}
\]

We use precisely the cap elimination from Section 2 of
[C1_TOP_CAP_OF_SPLIT.md](C1_TOP_CAP_OF_SPLIT.md), which does not
use the lower-pair hypothesis of that note. Put \(v_0=1-x\),
\(\omega=5/64\), and

\[
\begin{aligned}
Z_0&=c(1-h)+hf>0,\\
B&=(c-f)(1-h+hf-s)-f(c-1),\\
E_0&=c(1-h+hf-s)-f\rho,\qquad E_1=c(1-h)\ge0.
\end{aligned}
\]

Eliminating \(d\) between the actual \(DFX,CDX\) costs,
and then using the \(HFX\) cost and \(cY\ge\rho\), gives

\[
Q(v_0)=-Z_0v_0^2+Bv_0-sf(c-f)\ge0,
\qquad E_0-E_1v_0\ge0.
\]

The maximum of their positive combination
\(Q(v_0)+\omega(E_0-E_1v_0)\) over all real \(v_0\)
therefore gives the necessary condition

\[
R(h,c,f):=(B-\omega E_1)^2
       -4Z_0\{sf(c-f)-\omega E_0\}\ge0.                \tag{3}
\]

We show that (3) is impossible if \(z\ge1/2\). In that case,

\[
\frac{c^2}{2p}\le f\le c-s,
\qquad \rho\le p\le c\le1,\quad h=p/c.                \tag{4}
\]

The following single-rectangle exact certificate proves \(R<0\)
throughout (4). Write

\[
c^2R(p/c,c,f)=\sum_{i=0}^4r_i(p,c)f^i,
\qquad D_0=2p,\quad \ell=c^2,\quad W_0=(c-s)D_0-\ell.
\]

The interval in (4) is nonempty only if \(W_0\ge0\), and then
\(f=(\ell+W_0\theta)/D_0\) for some \(0\le\theta\le1\).
Define its five scaled quartic Bernstein coefficients by

\[
N_k(p,c)=\sum_{i=0}^4r_i(p,c)D_0^{4-i}
 \sum_{j=0}^{\min(i,k)}
 \frac{\binom ij\binom kj}{\binom4j}
 \ell^{i-j}W_0^j,
\qquad 0\le k\le4.                                    \tag{5}
\]

The exact polynomial identity is

\[
c^2D_0^4R(p/c,c,f)
=\sum_{k=0}^4N_k(p,c)\binom4k\theta^k(1-\theta)^{4-k}.
\]

Map the triangular parameter domain to one unit square by

\[
c=\rho+(1-\rho)C_0,\qquad
p=\rho+(c-\rho)H_0,\qquad 0\le H_0,C_0\le1.
\]

Each resulting \(N_k\) has degree at most six in \(H_0\)
and ten in \(C_0\). If its power coefficients are \(a_{ij}\),
the tensor Bernstein coefficient at index \((a,b)\) is exactly

\[
\sum_{i\le a,\,j\le b}
a_{ij}\frac{\binom ai}{\binom6i}
       \frac{\binom bj}{\binom{10}j}.
\]

For all five polynomials, every one of these \(5\cdot7\cdot11=385\)
rational coefficients is strictly less than \(-1/250\). The
standalone diagnostic below verifies this fixed coefficient assertion
directly from (3)--(5), without subdivision or search. Nonnegativity
and the unit sum of each Bernstein basis imply \(N_k<0\), hence
\(R<0\), contradicting (3). We have proved

\[
\boxed{s\le z<\frac12.}                               \tag{6}
\]

## 2. The containment signs give two incompatible point inequalities

Write \(L=(\ell,y)\), \(M=(m,t)\). Subtracting \(d_O<0\)
from \(d_C>0\) gives \(y>t\). By (1), the actual pair-area
costs are

\[
-d_H\ge s,\qquad d_F\ge s.
\]

The positive weighted identity

\[
(1-y)(-d_H)+(h-y)d_F
=(y-t)\{hf+(1-h)\ell-fy\}
\]

therefore implies

\[
(y-t)\{hf+(1-h)\ell-fy\}\ge s(1+h-2y).               \tag{7}
\]

Here \(y<h\le1\), so the multipliers are positive. The actual
\(OCM,HCL,OFL\) costs give, respectively,

\[
ct\ge s,\qquad h\ell+cy\le p-s,\qquad \ell-fy\ge s.
\]

Put \(v=cy>s\). The second inequality bounds the brace in (7):

\[
h\{hf+(1-h)\ell-fy\}
\le(1-h+z)(p-v)-s(1-h).
\]

Since \(y-t\le(v-s)/c\), equation (7) and the last two
actual costs imply the necessary inequalities

\[
\begin{aligned}
\mathcal F(h,p,z,v)
&:=(v-s)\{(1-h+z)(p-v)-s(1-h)\}\\
&\hspace{12mm}-ps(1+h)+2hsv\ge0,\\
(1+z)v&\le p-s(1+h).                                  \tag{8}
\end{aligned}
\]

### Decrease \(h\) to \(p\)

Keep \(p,z,v\) fixed. The upper bound in (8) only becomes
weaker when \(h\) decreases to \(p\), since \(h=p/c\ge p\).
The derivative of the other expression is

\[
\frac{\partial\mathcal F}{\partial h}
=v^2-(p-2s)v-s^2.                                     \tag{9}
\]

The last inequality in (8), together with \(h\ge p\), \(z\ge s\),
gives

\[
0<v\le b(p):=\frac{p-s(1+p)}{1+s}.
\]

The quadratic in (9) is convex in \(v\). At zero it is
\(-s^2<0\); at \(b(p)\) it equals

\[
-\frac{8(692770p^2-507569p+104464)}{34963569}<0.
\]

The numerator quadratic is positive for all real \(p\): its leading
coefficient is positive and its discriminant is
\(-31851811359<0\). Thus (9) is negative throughout the relevant
interval. Decreasing \(h\) to \(p\) preserves both inequalities
in (8), by a scalar relaxation independent of any point motion.

Set \(F(p,z,v)=\mathcal F(p,p,z,v)\). A necessary system is now

\[
F(p,z,v)\ge0,\qquad
s<v\le V(p,z):=\frac{p-s(1+p)}{1+z},
\qquad \rho\le p\le1,\quad s\le z\le\frac12.           \tag{10}
\]

## 3. The entire scalar system is impossible

For fixed \(p,z\), the polynomial \(F\) is concave in \(v\).
Its derivative at the upper endpoint satisfies

\[
73(1+z)\,F_v(p,z,V)=E(p,z),
\]

where

\[
E=-73p^2z+57p^2+73pz^2+32pz-57p+8z^2+24z+16.
\]

We have \(E>0\) on the whole rectangle in (10). Indeed

\[
E_z=-73p^2+146pz+32p+16z+24
\]

increases with \(z\). At \(z=s\) it is concave in \(p\),
and its endpoint values at \(p=\rho,1\) are respectively
\(4274831/262800\), \(55/73\), both positive. Thus \(E\)
increases with \(z\). Its value at \(s\) is

\[
E(p,s)=\frac{261121p^2-280393p+99792}{5329}>0,
\]

since the numerator has positive leading coefficient and discriminant
\(-25610912879<0\). Therefore \(F\) increases with \(v\)
up to \(V\), and \(F(p,z,v)\le F(p,z,V)\).

The exact endpoint identity is

\[
(1+z)^2F(p,z,V)=-\frac{p}{5329}\,T(p,z),                \tag{11}
\]

where

\[
\begin{aligned}
T={}&4745p^2z+520p^2-4745pz^2-6889pz-1104p\\
   &+584z^3+2464z^2+2784z+840.
\end{aligned}
\]

This polynomial is positive throughout the required rectangle. It is
concave in \(z\), because

\[
T_{zz}=3504z-9490p+4928
\le-\frac{6421}{6}<0.
\]

Its minimum on \(s\le z\le1/2\) is therefore at an endpoint.
Those endpoint values are

\[
T(p,s)=\frac{8}{5329}
          (692770p^2-1276259p+783001),
\]

\[
T(p,1/2)=\frac14(11570p^2-22939p+11684).
\]

Both quadratics are positive for all real \(p\), with positive
leading coefficients and discriminants \(-540921375999\) and
\(-14537799\), respectively. Thus (11) is strictly negative,
contradicting (10). This proves the complete containment-case theorem.

## Verification

Run `python docs/proof/nine/check_c1_top_cap_containment_pair.py`.
The checker verifies the weighted determinant identity, all scalar
derivatives and substitutions, all rational discriminants, and the
fixed 385-coefficient cap certificate. No optimization or sampled
configuration is an input to the proof.
