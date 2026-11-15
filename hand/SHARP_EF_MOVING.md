# A simultaneous E/F sharp chamber under rational bounds

Use the sharp constants
\[
p_0=\frac{15-\sqrt{65}}{40},\qquad
A_0=\frac{9\sqrt{65}-55}{320},\qquad s=2A_0,
\qquad\lambda=\frac{8-39p_0}{6-10p_0}.
\]
Thus \(7/64<s<11/100\) and \(1/4<\lambda<1/3\), as proved
in [SHARP_BC_MOVING.md](SHARP_BC_MOVING.md).

The two moving contacts are \(E=(1-r,e)\), \(F=(f,k)\).
The other points are
\[
A=(0,a),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ G=(g,1),\ H=(0,h),
\qquad O=(x,y)\in[0,1]^2.
\]
Assume
\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\quad0<g<f<1,
\quad b\le g,\quad0\le r\le1-f,\quad h\le k\le1,       \tag{1}
\]
and the rational bounds
\[
\frac{11}{20}\le h-a\le\frac23,\qquad
f-g\ge\frac{11}{20},\qquad g\le\frac14,\qquad c\ge\frac23.\tag{2}
\]
The eleven positive oriented doubled areas defining the chamber are:

| Area | Formula |
|---|---|
| ABH | \(b(h-a)\) |
| ABC | \(a(c-b)\) |
| AGH | \(g(h-a)\) |
| DEF | \((1-f)(e-d)-r(k-d)\) |
| GHF | \((f-g)(1-h)+g(1-k)\) |
| GEF | \((f-g)(1-e)-(1-r-g)(1-k)\) |
| ADO | \(y-a-(d-a)x\) |
| DHO | \(h-y-(h-d)x\) |
| BOE | \(e(x-b)-(1-r-b)y\) |
| GCO | \(x-c+(c-g)y\) |
| OCF | \(k(c-x)+(f-c)y\) |

**Theorem.** The minimum of these eleven ordinary triangle areas is at
most \(A_0\). If all eleven are at least \(A_0\), then \(r=0,k=1\),
and the configuration is exactly the equality configuration of
[HAND_PROOF.md](HAND_PROOF.md).

This is a complete theorem under the stated continuous chamber and
rational bounds. Applying it to a larger family requires a separate
exclusion of that family's other configurations.

## 1. Bounds and two positive gaps

Suppose all eleven doubled areas are at least \(s\). Put
\[
L=h-a,\quad M=f-g,\quad u=s/L,\quad v=s/M,\quad
w=(1-k)/M,\quad z=g-u,
\]
\[
\alpha=1-v-L,\quad B=1-f,\quad\beta=1-u-M=B+z,
\qquad A_*=\alpha+gw.
\]
The four side costs give
\[
b,g\ge u,\quad h\le1-v+gw,\quad
e\le1-v-(1-r-g)w,\quad a\le A_*.                       \tag{3}
\]
Since \(a(c-b)\ge s\) and \(c-b<1\), \(a>s\) and \(A_*>s\).

The assumption \(r\le B\) and the identities
\[
GEF=M(k-e)-(B-r)(1-k),\qquad
DEF=(B-r)(e-d)-r(k-e)
\]
first give \(k>e\), then
\[
\boxed{B-r>s.}                                         \tag{4}
\]
Indeed \(s\le DEF\le(B-r)(e-d)<B-r\).
In particular \(B>s\), and the horizontal contact gap is stronger
than the initially assumed nonnegative gap.

Exactly as in Section 1 of
[SHARP_DF_MOVING.md](SHARP_DF_MOVING.md), (2)--(3) imply
\[
u,v<1/5,\quad u>21/128,\quad\alpha>2/15,\quad
s<B<183/640,\quad0\le z<11/128,\quad0\le w<109/176<5/8.\tag{5}
\]
For example, \(u\ge3s/2\), \(B=1-g-M\le1-u-11/20\), and
\(k\ge h=a+L>s+11/20\) proves the bound on \(w\).

Let \(X=1-x,Y=y\). The unchanged first diagonal sum and the moving
second one are
\[
ADO+DHO=L(1-x),\qquad GCO+OCF=M\{y-w(c-x)\}.
\]
Hence
\[
X\ge2u,\qquad Y\ge2v+w(c-1+X).                         \tag{6}
\]
In particular \(x\le1-2u\). From (4),
\[
E_x=1-r>f+s=g+M+s\ge u+11/20+s>x,
\]
because \(3u+s>77/128>9/20\). Also \(E_x>f>g\ge b\).
The positive BOE area therefore forces \(x>b\), and its expression
\[
BOE=(e-y)(x-b)-y(E_x-x)
\]
forces \(e>y\). These signs justify every substitution below.

## 2. Eliminate the actual areas without dropping the E loss

The unchanged ABC/GCO elimination gives
\[
E_1:=A_*(x-u-s)-s(1-y)\ge0.                            \tag{7}
\]
Indeed \((c-b)(1-y)\le x-u-s\), with both sides positive;
multiply by \(a\), use ABC, and then \(a\le A_*\).

Set
\[
T=1-v-y+w(g-x)-s.
\]
The DHO/DEF elimination gives the exact useful inequality
\[
E_2:=(B-r)T-(s+rv)x\ge0.                              \tag{8}
\]
To verify it, multiply DEF by \(x\ge0\) and use
\(dx\ge s+y-h(1-x)\) from DHO. This yields
\[
sx\le Bex-rkx+(B-r)\{h(1-x)-y-s\}.
\]
The coefficients of \(e,h\) are nonnegative, by (4). Substitute
(3) and \(k=1-Mw\), with \(M=1-g-B\). The resulting right
side is exactly \((B-r)T-rvx\), proving (8).

The BOE monotone substitutions, justified by \(x>b,e>y\), give
\[
E_3:=\{1-v-(1-r-g)w\}(x-u)-(1-r-u)y-s\ge0.             \tag{9}
\]

Define auxiliary expressions for the algebra with \(r=0\):
\[
F_2=BT-sx,\qquad
F_3=\{1-v-(1-g)w\}(x-u)-(1-u)y-s,
\qquad\Phi_F=E_1+F_2+\lambda F_3.
\]
No nonnegativity of \(F_2,F_3\) is asserted. Exact subtraction gives
\[
E_1+E_2+\lambda E_3=\Phi_F-rR,
\qquad R=T+vx-\lambda w(x-u)-\lambda y.                 \tag{10}
\]
Thus the actual inequalities imply \(\Phi_F\ge rR\).

## 3. The extra E loss is uniformly positive

Write
\[
D_0=1-r-u,\quad\theta=\frac{x-u}{D_0},\quad
y_0=\frac{(1-v)(x-u)-s}{D_0}.
\]
Section 1 gives \(0<\theta<1\), and (4) gives
\(D_0=M+z+B-r>M+s\). Inequality (9) says
\[
y\le y_0-(D_0-z)w\theta\le y_0.                       \tag{11}
\]
Here \(D_0-z=1-r-g>0\), so \(y_0\ge0\).
Using \(x-u\le1-3u<65/128\), \(s>7/64\), and
\(M=s/v\),
\[
y_0<\frac{v(51-65v)}{14(1+v)}<\frac12.                 \tag{12}
\]
For the last inequality, \(44v-65v^2\) is increasing on
\([0,1/5]\), with value \(31/5<7\) at \(1/5\).
The first bound follows by replacing the positive numerator and
denominator in their respective directions; positivity is ensured
by (11).

Now GCO, \(c\ge2/3\), \(g\ge u>21/128\), and \(y<1/2\)
give
\[
x\ge c(1-y)+gy+s>\frac{c+g}{2}+s
>\frac{403}{768}>\frac12.                              \tag{13}
\]
The coefficient of \(y\) in \(R\) is \(-(1+\lambda)\).
Substitute its upper bound (11) into (10). Exact simplification gives
\[
R\ge1-v-s-(1+\lambda)y_0+vx
       +wz\{1-(1+\lambda)\theta\}.                    \tag{14}
\]
Since \(0<\theta<1\), the last term is at least
\(-\lambda wz\). The other terms exceed
\[
1-\frac{11}{100}-\frac15\frac12-\frac43\frac12
=\frac{37}{300},
\]
using (5), (12), and (13). Finally \(z<11/128<3/32\),
\(w<5/8\), and \(\lambda<1/3\), so
\[
\boxed{R>\frac{37}{300}-\frac5{256}
=\frac{1993}{19200}>\frac1{10}.}                       \tag{15}
\]

## 4. Apply the sharp scalar bound

For completeness, the purely algebraic \(r=0\) calculation in
Sections 3--4 of `SHARP_DF_MOVING.md` applies to \(\Phi_F\).
Its negative coefficient of \(Y\) is
\(B-s+\lambda(1-u)>0\). After substituting the lower bound on
\(Y\) in (6), its negative coefficient of \(X\) becomes
\[
A_*-s-sw+\lambda(1-v+zw)
>\frac15-\frac{11}{100}\frac{109}{176}>0.
\]
Thus inserting both bounds (6) is legitimate. Define
\[
g_0=1-3u-3v+5uv,
\]
\[
H_0=\alpha(1-3u-s)+\beta(1-3v-s)+2s(u+v-1),
\qquad a_v=1-3v-s,
\]
\[
K_0=(B-s)(c-g)-g(1-3u)+s(1-2u)
 +\lambda\{c(1-u)-g(1-3u)-2u^2\}.
\]
Exact collection gives
\[
\Phi_F\le H_0+\lambda(g_0-s)-za_v-wK_0.                \tag{16}
\]
These expressions are auxiliary polynomials, so using this algebraic
identity imposes no extra geometric hypothesis on \(F_2,F_3\).
The same elementary bounds (5), \(c\ge2/3\), and \(g\le1/4\)
give
\[
a_v>29/100,\qquad
K_0>-\frac{65}{512}+\frac{21}{320}
+\frac14\left(\frac8{15}-\frac{65}{512}-\frac2{25}\right)
=\frac{3113}{153600}>0.                                \tag{17}
\]
The discarded term \((B-s)(c-g)\) is positive.

The sharp scalar inequality in Lemma 1 of
[SHARP_BC_MOVING.md](SHARP_BC_MOVING.md) applies since
\(u,v<1/5<1/4\), and gives \(H_0+\lambda(g_0-s)\le0\).
Combining (10), (15)--(17),
\[
0\ge H_0+\lambda(g_0-s)\ge za_v+wK_0+rR\ge0.
\]
Every coefficient is strictly positive. Hence \(r=w=z=0\), in
particular \(E\) and \(F\) return to their square sides.
The original sharp chamber theorem gives exactly the equality
configuration stated above. \(\square\)

## Verification

[check_sharp_ef_moving.py](check_sharp_ef_moving.py) independently checks
all eleven determinants, both diagonal sums, the gap identities,
the E/F elimination, both loss rewrites, the weighted identity (16),
and every new rational comparison. The proof uses no numerical search.
