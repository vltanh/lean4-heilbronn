# A simultaneous D/F sharp chamber under rational bounds

Use
\[
p_0=\frac{15-\sqrt{65}}{40},\qquad
A_0=\frac{9\sqrt{65}-55}{320},\qquad s=2A_0,\qquad
\lambda=\frac{8-39p_0}{6-10p_0}.
\]
Thus \(7/64<s<11/100\) and \(1/4<\lambda<1/3\).
The two moving contacts are
\[
D=(1-r,d),\qquad F=(f,k),
\]
and the other points are
\[
A=(0,a),\ B=(b,0),\ C=(c,0),\ E=(1,e),\ G=(g,1),
\quad H=(0,h),\quad O=(x,y)\in[0,1]^2.
\]
Assume
\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\quad0<g<f<1,
\quad0\le r\le1-f,\quad h\le k\le1,                       \tag{1}
\]
and the following rational bounds:
\[
\frac{11}{20}\le h-a\le\frac23,\qquad
f-g\ge\frac{11}{20},\qquad g\le\frac14,\qquad c\ge\frac23. \tag{2}
\]
The chamber is specified by these eleven positive oriented doubled areas.

| Area | Formula |
|---|---|
| ABH | \(b(h-a)\) |
| ABC | \(a(c-b)\) |
| AGH | \(g(h-a)\) |
| DEF | \((1-f)(e-d)+r(k-e)\) |
| GHF | \((f-g)(1-h)+g(1-k)\) |
| GEF | \((f-g)(1-e)-(1-g)(1-k)\) |
| ADO | \((1-r)(y-a)-(d-a)x\) |
| DHO | \((1-r)(h-y)-(h-d)x\) |
| BOE | \(e(x-b)-(1-b)y\) |
| GCO | \(x-c+(c-g)y\) |
| OCF | \(k(c-x)+(f-c)y\) |

**Theorem 1.** The minimum of these eleven ordinary areas is at most
\(A_0\). If all eleven are at least \(A_0\), then \(r=0\), \(k=1\),
and the configuration is exactly the equality configuration of
[HAND_PROOF.md](HAND_PROOF.md). The closed inequalities (1)--(2)
are included.

This theorem covers the whole stated continuous chamber. The rational
bounds are hypotheses; applying the theorem to a larger family requires
a separate proof that its other configurations are excluded.

## 1. Consequences of the anchor costs

Suppose all eleven displayed doubled areas are at least s. Put
\[
L=h-a,\quad M=f-g,\quad u=s/L,\quad v=s/M,\quad
w=(1-k)/M,\quad z=g-u,
\]
\[
\alpha=1-v-L,\qquad B=1-f,\qquad
\beta=1-u-M=B+z,\qquad A_*=\alpha+gw.
\]
The ABH, AGH, GHF, GEF costs give
\[
b,g\ge u,\quad
h\le1-v+gw,\quad e\le1-v-(1-g)w,\quad a\le A_*.
                                                               \tag{3}
\]
In particular \(z\ge0\). Also \(a>s\), since \(a(c-b)\ge s\)
and \(c-b<1\); hence \(A_*>s\).

The GEF expression can also be written \(M(k-e)-B(1-k)\).
Its positivity implies \(k>e\). Using \(r\le B\) in DEF gives
\[
s\le B(e-d)+r(k-e)\le B(k-d)<B.                         \tag{4}
\]

The rational bounds (2) now imply
\[
u,v<\frac15,\qquad u>\frac{21}{128},\qquad
\alpha>\frac{2}{15},\qquad
s<B\le1-g-\frac{11}{20}<\frac{183}{640}<\frac12.         \tag{5}
\]
Here \(u\ge3s/2>21/128\), and
\(\alpha=1-v-L>1-1/5-2/3=2/15\).
Since \(k\ge h=a+L>s+11/20\),
\[
0\le w<\frac{9/20-s}{11/20}<\frac{109}{176}.            \tag{6}
\]

Write \(X=1-x,Y=y\). The two diagonal sums are
\[
ADO+DHO=L(1-r-x),\qquad
GCO+OCF=M\{y-w(c-x)\}.
\]
Consequently
\[
X\ge2u+r,\qquad Y\ge2v+w(c-1+X).                       \tag{7}
\]
These identities require no assumed sign of \(c-x\).

## 2. Three scalar inequalities with the inward losses retained

BOE positivity implies \(x>b\) and \(e>y\).
The unchanged ABC/GCO elimination gives
\[
s(1-y)\le A_*(x-u-s).                                  \tag{8}
\]
Indeed GCO bounds
\((c-b)(1-y)\le x-u-s\), where both sides are positive.
Multiply by a, use ABC, and then \(a\le A_*\).

The DHO/DEF elimination, with both contacts moving, gives
\[
(s-rv)x\le
B\{(1-r)(1-v-y+w(g-x))-s\}.                            \tag{9}
\]
Here is a direct derivation, including the signs for substitution.
Multiply DEF by \(x\ge0\) and use DHO to eliminate \(dx\):
\[
sx\le(B-r)ex+B(1-r-x)h-B(1-r)y-Bs+rkx.
\]
The coefficients of e and h are nonnegative, by \(r\le B\)
and (7). Substitute their upper bounds (3) and
\(k=1-Mw\), where \(M=1-g-B\). Exact collection leaves
\[
B\{(1-r)(1-v-y+w(g-x))-s\}+rvx,
\]
which proves (9). No sign for \(s-rv\) is required.

Finally, the BOE monotone substitutions give
\[
s\le\{1-v-(1-g)w\}(x-u)-(1-u)y.                        \tag{10}
\]
The b substitution uses \(e>y\), and the e substitution uses \(x>u\).

## 3. The sharp weighted identity

Add (8), (9), and \(\lambda\) times (10), each rearranged as
a nonnegative right side minus left side. Their negative coefficients
of X,Y are
\[
\begin{aligned}
C_1&=A_*-s+rv-B(1-r)w+\lambda\{1-v-(1-g)w\},\\
C_2&=B(1-r)-s+\lambda(1-u).
\end{aligned}
\]
Both substitutions in (7) are legitimate. First,
\[
C_2>s(1-s)-s+\frac15=\frac15-s^2>0,
\]
using \(r\le B<1/2\) and (4)--(5). After substituting
\(Y\ge2v+w(c-1+X)\), the negative coefficient of X becomes
\[
C_1+wC_2
=A_*-s+rv-sw+\lambda\{1-v+zw\}
>\frac15-\frac{11}{100}\frac{109}{176}>0.               \tag{11}
\]
We can therefore insert \(X\ge2u+r\).

Define the unchanged scalar expressions
\[
g_0=1-3u-3v+5uv,\qquad
H_0=\alpha(1-3u-s)+\beta(1-3v-s)+2s(u+v-1),
\]
and
\[
\begin{aligned}
a_v&=1-3v-s,\\
T&=B(1-3v)+\alpha-s-v(1-2u)+\lambda(1-v),\\
K_0&=(B-s)(c-g)-g(1-3u)+s(1-2u)\\
   &\qquad+\lambda\{c(1-u)-g(1-3u)-2u^2\},\\
K_1&=-B(c-g)+(1+\lambda)g-\lambda u-s.
\end{aligned}
\]
The exact result of the two substitutions is
\[
\boxed{H_0+\lambda(g_0-s)
\ge za_v+rT+vr^2+w(K_0+rK_1).}                         \tag{12}
\]

## 4. Explicit positive bounds for every loss coefficient

First \(a_v>1-3/5-11/100=29/100>0\).
Since \(c\ge2/3>g\) and \(B>s\), the first term of \(K_0\)
is positive. Equations (2) and (5) give
\[
g(1-3u)<\frac{65}{512},\qquad
s(1-2u)>\frac{21}{320},
\]
and
\[
c(1-u)-g(1-3u)-2u^2
>\frac8{15}-\frac{65}{512}-\frac2{25}>0.
\]
Thus
\[
K_0>
-\frac{65}{512}+\frac{21}{320}
+\frac14\left(\frac8{15}-\frac{65}{512}-\frac2{25}\right)
=\frac{3113}{153600}>0.                               \tag{13}
\]

The same bounds give
\[
T>
\frac{2}{15}-\frac{11}{100}+\frac7{160}
-\frac{43}{320}+\frac15
=\frac{637}{4800}.                                    \tag{14}
\]
For example \(B(1-3v)>2s/5>7/160\) and
\(v(1-2u)<43/320\).

Since \(g-u=z\ge0\), \(c\le1\), and \(g>21/128\),
\[
\begin{split}
K_1&\ge-B(1-g)+g-s\\
&>-\frac{183}{640}\frac{107}{128}
+\frac{21}{128}-\frac{11}{100}
=-\frac{75761}{409600}.
\end{split}
\]
Combine this with (6) and (14):
\[
T+wK_1>
\frac{637}{4800}-\frac{109}{176}\frac{75761}{409600}
=\frac{157073}{8650752}>0.                             \tag{15}
\]

By (5), \(0<(u+v)/2<1/5<1/4\). Lemma 1 of
[SHARP_BC_MOVING.md](SHARP_BC_MOVING.md) therefore gives
\[
H_0+\lambda(g_0-s)\le0.
\]
On the other hand, the right side of (12) is
\[
za_v+wK_0+r(T+wK_1)+vr^2.
\]
All terms are nonnegative, and (13), (15) make it positive if either
\(w>0\) or \(r>0\). Therefore \(r=w=0\), hence \(k=1\).
The original sharp chamber theorem gives the asserted exact equality
configuration. This proves Theorem 1. \(\square\)

## Verification

[check_sharp_df_moving.py](check_sharp_df_moving.py) records exact checks
of all eleven moving determinants, both diagonal sums, the two-contact
elimination (9), the full weighted identity (12), and the rational
coefficient bounds (11), (13)--(15). The proof consists of those
displayed identities and bounds together with the previously proved
sharp scalar inequality; no optimization is a proof premise.
