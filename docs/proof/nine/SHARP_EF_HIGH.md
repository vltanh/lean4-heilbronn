# A simultaneous E/F sharp chamber under rational bounds

Put

\[
p_0=\frac{15-\sqrt{65}}{40},\qquad
s=2A_0=\frac{9\sqrt{65}-55}{160},\qquad
\lambda=\frac{8-39p_0}{6-10p_0}
       =\frac{77\sqrt{65}-615}{20}.
\]

In particular
\(7/64<s<11/100\) and \(1/4<\lambda<3/10\).
The weight bounds follow from
\(620^2<77^2\cdot65<621^2\).

Allow the adjacent right/top contacts to move inward simultaneously:

\[
A=(0,a),\ B=(b,0),\ C=(c,0),\ D=(1,d),\quad
E=(1-r,e),\ F=(f,k),\ G=(g,1),\ H=(0,h),\quad O=(x,y).
\]

The point \(O\) is in the unit square. Assume

\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\quad0<g<f<1,
\qquad0\le r\le1-f,\quad\frac67\le k\le1,              \tag{1}
\]

and the rational neighborhood bounds

\[
\frac{11}{20}\le h-a\le\frac23,\qquad
f-g\ge\frac{11}{20},\qquad
b,g\le\frac14,\qquad c\ge\frac23.                       \tag{2}
\]

The chamber is specified by positivity of the following eleven
oriented doubled areas.

| Area | Formula |
|---|---|
| ABH | \(b(h-a)\) |
| ABC | \(a(c-b)\) |
| AGH | \(g(h-a)\) |
| DEF | \((1-f)(e-d)-r(k-d)\) |
| GHF | \((f-g)(1-h)+g(1-k)\) |
| GEF | \((f-g)(1-e)-(1-g-r)(1-k)\) |
| ADO | \(y-a-(d-a)x\) |
| DHO | \(h-y-(h-d)x\) |
| BOE | \(e(x-b)-(1-r-b)y\) |
| GCO | \(x-c+(c-g)y\) |
| OCF | \(k(c-x)+(f-c)y\) |

**Theorem 1.** Throughout this complete continuous chamber, subject to
(1)--(2), the minimum of the eleven ordinary areas is at most \(A_0\).
If all eleven are at least \(A_0\), then \(r=0\), \(k=1\), and the
configuration is exactly the equality configuration in Part I of
[HAND_PROOF.md](HAND_PROOF.md).

The rational inequalities (1)--(2) are part of the theorem's hypotheses.
Using this result to close a larger family requires separate exclusions
for their complements. There is no assumed order between \(h\) and \(k\).

## 1. Elementary bounds and the two diagonal sums

Assume all eleven displayed doubled areas are at least s. Define

\[
L=h-a,\quad M=f-g,\quad u=s/L,\quad v=s/M,\quad
w=(1-k)/M,\quad z=g-u,
\]

\[
B=1-f,\qquad \alpha=1-v-L,\qquad
\beta=1-u-M=B+z,\qquad A_*=\alpha+gw.
\]

The ABH, AGH, GHF and GEF costs give

\[
b,g\ge u,\qquad
h\le1-v+gw,\qquad
e\le1-v-(1-g-r)w,\qquad a\le A_*.                      \tag{3}
\]

In particular \(z\ge0\). The ABC cost gives \(a>s\), hence
\(A_*>s\). Since \(1-g-r=M+B-r\), GEF is also

\[
M(k-e)-(B-r)(1-k).
\]

Its positivity, together with \(r\le B\), implies \(k>e\).
Consequently the DEF inequality can be written

\[
s\le(B-r)(e-d)-r(k-e)<B-r.                             \tag{4}
\]

This proves \(B-r>s>0\).
The rational assumptions give

\[
0<u,v<\frac15,\qquad u>\frac{21}{128},\qquad
\alpha>\frac{2}{15},\qquad
B<\frac{183}{640},\qquad0\le w\le\frac{20}{77}.         \tag{5}
\]

Indeed \(u\ge3s/2>21/128\),
\(B=1-g-M<1-21/128-11/20=183/640\), and
\(w\le(1/7)/(11/20)=20/77\).

Write \(X=1-x\), \(Y=y\). The exact diagonal sums are

\[
ADO+DHO=L(1-x),\qquad
GCO+OCF=M\{y-w(c-x)\}.
\]

They give

\[
X\ge2u,\qquad Y\ge2v+w(c-1+X).                         \tag{6}
\]

The second bound is valid without any sign assumption on \(c-x\).

### Monotonicity for the moved E contact

The BOE expression now uses the horizontal coordinate \(1-r\), so its
monotonic substitutions need justification. From (5)--(6),

\[
f-x\ge g+M-1+2u\ge3u+\frac{11}{20}-1
>\frac{27}{640}>0.
\]

Thus \(x<f\le1-r\). Moreover
\(1-r\ge f>21/128+11/20=457/640>1/4\ge b\).
BOE positivity therefore implies \(x>b\) and \(e>y\): if \(x\le b\)
its displayed formula is nonpositive, and otherwise

\[
e(x-b)>(1-r-b)y\ge(x-b)y.
\]

In particular \(0<y<e<1\), with \(y>0\) also forced by the other
positive areas. BOE decreases with b and increases with e. Its necessary
upper bound is therefore

\[
s\le\{1-v-(1-g-r)w\}(x-u)-(1-r-u)y.                    \tag{7}
\]

## 2. Retaining both inward losses in the elimination

The ABC/GCO elimination is unchanged:

\[
s(1-y)\le A_*(x-u-s).                                   \tag{8}
\]

To see the signs explicitly, GCO and \(b,g\ge u\) give
\((c-b)(1-y)\le x-u-s\). Its left side is positive. Multiply by
\(a>0\), use ABC, and then substitute \(a\le A_*\).

The DHO/DEF elimination gives the stronger inequality

\[
\boxed{(s+rv)x\le(B-r)\{1-v-y-s+w(g-x)\}.}             \tag{9}
\]

Indeed DHO implies \(dx\ge y+s-h(1-x)\). Multiply DEF by
\(x\ge0\), and use \(B-r>0\) to obtain

\[
sx\le Bex-(B-r)\{y+s-h(1-x)\}-rkx.
\]

The coefficients of e and h are nonnegative. Substitute (3) and
\(k=1-Mw\), using \(M=1-g-B\). Exact collection leaves

\[
(B-r)\{1-v-y-s+w(g-x)\}-rvx,
\]

which proves (9). This calculation never drops a loss with an unproved sign.

## 3. The sharp weighted scalar identity

Add the nonnegative right-minus-left expressions from (8), (9), and
\(\lambda\) times (7). Their negative coefficients of \(X,Y\) are

\[
\begin{aligned}
C_1&=A_*-s-rv-(B-r)w
       +\lambda\{1-v-(1-g-r)w\},\\
C_2&=B-r-s+\lambda(1-r-u).
\end{aligned}
\]

By (4) and \(1-r-u\ge f-u=M+z\ge11/20\),
\(C_2>11/80>0\). After inserting the second inequality in (6),
the negative X coefficient becomes

\[
\begin{aligned}
C_1+wC_2
 &=A_*-s-rv-sw+\lambda\{1-v+zw\}\\
 &>\frac15-\frac{183}{3200}
       -\frac{11}{100}\frac{20}{77}>0.                  \tag{10}
\end{aligned}
\]

Thus both monotone substitutions in (6) are justified, first Y and then X.
Define the original sharp scalar functions

\[
g_0=1-3u-3v+5uv,\qquad
H_0=\alpha(1-3u-s)+\beta(1-3v-s)+2s(u+v-1),
\]

and

\[
\begin{aligned}
a_v&=1-3v-s,\\
K_0&=(B-s)(c-g)-g(1-3u)+s(1-2u)\\
   &\qquad+\lambda\{c(1-u)-g(1-3u)-2u^2\},\\
T&=1-s-2v(1+u+\lambda),\\
K_1&=g+\lambda u-(1+\lambda)c.
\end{aligned}
\]

The exact result of substituting
\(Y=2v+w(c-1+X)\), then \(X=2u\), into that weighted sum is

\[
\boxed{H_0+\lambda(g_0-s)
\ge za_v+wK_0+r(T+wK_1).}                               \tag{11}
\]

This identity holds with all asymmetric parameters and both displacements
retained. It does not assume equality in any original area inequality.

## 4. Every nonzero displacement has a positive cost

The first coefficient satisfies \(a_v>29/100\).
For \(K_0\), its first term is positive because \(B>s\) and
\(c\ge2/3>g\). Equations (2), (5) give

\[
g(1-3u)<\frac{65}{512},\qquad
s(1-2u)>\frac{21}{320},
\]

and

\[
c(1-u)-g(1-3u)-2u^2
>\frac8{15}-\frac{65}{512}-\frac2{25}>0.
\]

Since \(\lambda>1/4\), it follows that

\[
K_0>
-\frac{65}{512}+\frac{21}{320}
+\frac14\left(\frac8{15}-\frac{65}{512}-\frac2{25}\right)
=\frac{3113}{153600}>0.                                 \tag{12}
\]

The other two coefficients have the uniform bounds

\[
T>1-\frac{11}{100}-\frac25\left(1+\frac15+\frac3{10}\right)
=\frac{29}{100},
\]

\[
K_1>\frac{105}{512}-\frac{13}{10}
=-\frac{2803}{2560}.
\]

Here \(g\ge u>21/128\), \(\lambda>1/4\), \(\lambda<3/10\), and
\(c\le1\) justify the second line. Using \(w\le20/77\),

\[
T+wK_1>
\frac{29}{100}-\frac{20}{77}\frac{2803}{2560}
=\frac{1381}{246400}>0.                                 \tag{13}
\]

Finally \(0<(u+v)/2<1/5<1/4\), so Lemma 1 of
[SHARP_BC_MOVING.md](SHARP_BC_MOVING.md) applies with the same s and
\(\lambda\):

\[
H_0+\lambda(g_0-s)\le0.
\]

The right side of (11) is nonnegative, and (12)--(13) make it positive
if either \(w>0\) or \(r>0\). Consequently \(r=w=0\), hence
\(k=1\). The original sharp chamber theorem now gives the complete
exact equality configuration. This proves Theorem 1. \(\square\)

## Verification

[check_sharp_ef_high.py](check_sharp_ef_high.py) checks every moving
determinant, both diagonal sums, the elimination (9), the coefficient
identity (10), the complete sharp weighted identity (11), and every
rational comparison in (5), (10), (12)--(13). The proof uses those printed
identities and inequalities and the existing sharp scalar lemma. Numerical
optimization and a small-displacement limiting argument are not premises.
