# A complete lower-ray exclusion in the remaining C1 top-cap case

Use the C1 anchors

\[
O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\qquad0<d\le h\le1,\quad0<f\le c\le1,
\]

and a competitive nine-point configuration, with every unsigned actual
doubled triangle area at least

\[
s=\frac8{73}<2A_0,\qquad
K=4+2\sqrt3,\qquad \rho=\frac{49}{60}<Ks.
\]

There are two lower points \(L,M\) inside \(OHC\), exactly one
top-cap point \(X=(x,Y)\) beyond \(DF\), and one point \(P\)
inside the original anchor pentagon. The preceding side-ear and radial
theorems allow us to reflect and label the points so that \(P,M\)
are in \(OCX\), while \(L\) is in \(OHX\). In particular,

\[
hc\ge Ks>\rho,\qquad cY\ge Ks>\rho.                   \tag{1}
\]

**Theorem.** The point \(L\) cannot be on the \(H\)-side of
\(OF\). Thus the complete placement in which the lower pair
straddles \(OF\) is excluded. Both lower points must instead lie
on its \(C\)-side.

The conclusion is relative to the displayed reflection, which chooses
\(P\in OCX\). The reflected theorem applies when \(P\in OHX\).

## 1. The lower pair gives a parameter inequality

Suppose for a contradiction that \(L\) is on the \(H\)-side of
\(OF\). The other lower point \(M\) is on its \(C\)-side:
it is already on the \(C\)-side of \(OX\), and \(x/Y>f\)
for a top-cap point. Consequently

\[
L\in OHC\cap OHF,\qquad M\in OHC\cap OCF.
\]

Put

\[
p=hc,\qquad u=hf,\qquad
Z(p)=\frac{p+\sqrt{p^2-8sp+4s^2}}2.
\]

The six actual points \(O,H,C,F,L,M\) imply

\[
\boxed{uZ(p)\ge sc(h+1).}                              \tag{2}
\]

Here is the exact transfer of the universal parameter calculation in
Section 7 of [TYPE_II_COMPLETION.md](TYPE_II_COMPLETION.md).
The independent cap argument at the start of Section 2 uses only (1)
and the actual anchor--cap areas, and gives \(f<x<c\). Thus the
parameter \(f/c\) below is strictly between zero and one, as required.
Apply \((a,b)\mapsto(a/c,1-b)\). The images of \(O,C,H,F\)
are, respectively,

\[
D_0=(0,1),\quad C_0=(1,1),\quad E_0=(0,1-h),\quad
B_0=(f/c,0).
\]

The two free points are in the two triangles \(D_0B_0E_0\),
\(D_0C_0B_0\), and both are inside \(D_0C_0E_0\).
The new doubled threshold is \(\sigma=s/c\). Retaining a general
positive threshold in that parameter calculation gives, with
\(q=h\), \(b_0=f/c\), and \(z=L_y\),

\[
\frac{\sigma(q+1)}{b_0q}\le z
\le\frac{q+\sqrt{q^2-8\sigma q+4\sigma^2}}2.             \tag{3}
\]

For clarity, the proof of this version does not use the specialization
\(\sigma=7/64\). The two actual lower-area inequalities give
\(b_0z\ge\sigma+\ell\), \(q\ell\ge\sigma\), proving the
left side. The three pair-line signs in that calculation give either

\[
z^2-qz+2\sigma q-\sigma^2\le0,
\]

or \(z\le q-4\sigma\). In the latter case, if \(q\le8\sigma\)
then \(q-4\sigma\le q/2\), below the larger root. If
\(q\ge8\sigma\), the quadratic at \(q-4\sigma\) is
\(\sigma(15\sigma-2q)<0\), so again it is below that root.
The root is real because the two-containing-point triangle bound gives
\(q\ge K\sigma\). These are all the steps used in (3).
Multiplication by \(c\) now gives (2).

We use the rational upper tangent

\[
\boxed{Z(p)\le\frac{48p-266s}{23}.}                    \tag{4}
\]

Indeed \(73p-532s\ge73\rho-532s=5761/4380>0\), and

\[
\left(\frac{73p-532s}{23}\right)^2
-(p^2-8sp+4s^2)
=\frac{12(20p-153s)^2}{529}\ge0.
\]

This proves (4) by taking positive square roots. Since
\(48p-266s\ge48\rho-266s=3668/365>0\), equations (2)--(4)
give the useful explicit lower bound

\[
\boxed{
f\ge f_0(h,c):=
\frac{23sc(h+1)}{h(48hc-266s)}.}                        \tag{5}
\]

## 2. Eliminate the cap height and the right anchor

We first record \(x<c\). If \(x\ge c\), the actual triangle
\(CDX\) gives

\[
s\le(1-c)Y+d(c-x)\le1-c.
\]

Thus \(c\le1-s\), and (1), together with
\(\rho>(1-s)^2\), gives \(h,Y>1-s\). But

\[
|[HFX]|=(1-h)x+f(h-Y)\le1-\min(h,Y)<s.
\]

For \(Y\ge h\), discard the second term; for \(Y<h\), use
\(f<x\le1\). This is a contradiction, so \(f<x<c\).

The actual \(CFX\) cost also gives

\[
s\le x-fY-c(1-Y)
=x-f-(c-f)(1-Y)\le x-f.
\]

Consequently

\[
\boxed{f\le c-s.}                                     \tag{6}
\]

Write \(r=-[DFX]\ge s\), \(\beta=[CDX]\ge s\).
Eliminating \(d\) between these two affine areas gives

\[
(c-x)r+(x-f)\beta
=(1-x)\{(c-f)Y-(c-x)\}\ge s(c-f).                       \tag{7}
\]

Both multiplying coefficients on the left are positive. Set \(v=1-x>0\),
and abbreviate

\[
\begin{aligned}
Z_0&=c(1-h)+hf>0,\\
B&=(c-f)(1-h+hf-s)-f(c-1),\\
E_0&=c(1-h+hf-s)-f\rho,\qquad E_1=c(1-h)\ge0.
\end{aligned}
\]

The \(HFX\) inequality says

\[
fY\le1-h+hf-s-(1-h)v.
\]

Combining it with (7), and multiplying only by
\(f,v,c-f>0\), gives

\[
Q(v):=-Z_0v^2+Bv-sf(c-f)\ge0.                           \tag{8}
\]

Combining it instead with \(cY\ge\rho\) gives

\[
E(v):=E_0-E_1v\ge0.                                    \tag{9}
\]

Use the fixed positive weight \(\omega=5/64\). The maximum over
all real \(v\) of the concave quadratic \(Q(v)+\omega E(v)\)
is \(R(h,c,f)/(4Z_0)\), where

\[
\boxed{
R(h,c,f)=(B-\omega E_1)^2
-4Z_0\{sf(c-f)-\omega E_0\}.}                          \tag{10}
\]

Equations (8)--(9) therefore require \(R(h,c,f)\ge0\).
We show that it is negative throughout the entire necessary interval
\(f_0(h,c)\le f\le c-s\), with \(\rho\le hc\le c\le1\).

## 3. A quartic interval certificate with only two remaining parameters

Use the parameters \(p=hc\), \(c\), so

\[
\rho\le p\le c\le1,\qquad h=p/c.
\]

Define the positive denominator and two numerators

\[
D=p(48p-266s)>0,\qquad
\ell=23sc(p+c),\qquad W=(c-s)D-\ell.
\]

The interval (5)--(6) is nonempty only if \(W\ge0\). On such
an interval, every admissible \(f\) has the form

\[
f=\frac{\ell+W\theta}{D},\qquad0\le\theta\le1.
\]

Write the quartic in (10), after clearing its \(c\) denominator, as

\[
c^2R(p/c,c,f)=\sum_{i=0}^4 r_i(p,c)f^i.
\]

The \(r_i\) are exactly the rational polynomials defined by (10).
The five degree-four Bernstein coefficients in \(\theta\), after
multiplication by the positive \(D^4\), are

\[
\boxed{
N_k(p,c)=\sum_{i=0}^4 r_i(p,c)D^{4-i}
\sum_{j=0}^{\min(i,k)}
\frac{\binom{i}{j}\binom{k}{j}}{\binom4j}
\ell^{i-j}W^j,
\quad0\le k\le4.}                                      \tag{11}
\]

Thus

\[
c^2D^4R(p/c,c,f)
=\sum_{k=0}^4N_k(p,c)\binom4k\theta^k(1-\theta)^{4-k}.
                                                               \tag{12}
\]

Map the triangular parameter region to a unit square:

\[
c=\rho+(1-\rho)C_0,\qquad
p=\rho+(c-\rho)H_0,
\qquad0\le H_0,C_0\le1.
\]

After this substitution, the tensor degrees of the five polynomials
\(N_0,\ldots,N_4\) in \((H_0,C_0)\) are

\[
(10,12),\quad(10,13),\quad(10,14),\quad(10,14),\quad(10,14).
\]

Their tensor Bernstein coefficients are all strictly less than \(-2\)
on each of the following three fixed rectangles:

| \(H_0\) interval | \(C_0\) interval | Certificate |
|---|---|---|
| \([0,1]\) | \([0,1/2]\) | All coefficients of all five \(N_k\) are below \(-2\) |
| \([0,1/2]\) | \([1/2,1]\) | Same |
| \([1/2,1]\) | \([1/2,1]\) | Same |

The coefficient formula is the power-to-Bernstein formula (11) in
[C1_TOP_CAP_CONVEX_PAIR.md](C1_TOP_CAP_CONVEX_PAIR.md), now in two
variables. The companion checker constructs the polynomials directly
from (10)--(11), verifies the quartic conversion (12), and checks every
coefficient on these three rectangles with exact rational arithmetic.
No numerical optimization, adaptive subdivision, or sampled sign
test is used.

Each \(N_k\) is therefore negative throughout the parameter region.
Equation (12) is a convex combination of these negative numbers, so
\(R(h,c,f)<0\), contradicting (10). This proves the theorem.

After this complete exclusion, the remaining one-cap placement with
\(P\in OCX\) has both lower points in \(OHC\cap OCF\), still
on opposite sides of \(OX\). The common-cell pair-line alternatives
are excluded in the companion notes assembled in
[C1_TWO_LOWER_COMPLETION.md](C1_TWO_LOWER_COMPLETION.md).
