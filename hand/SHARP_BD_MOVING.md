# A sharp chamber with B and D moving inward simultaneously

Use the sharp constants
\[
p_0=\frac{15-\sqrt{65}}{40},\qquad
A_0=\frac{9\sqrt{65}-55}{320},\qquad s=2A_0,
\qquad\lambda=\frac{8-39p_0}{6-10p_0}.
\]
Thus \(7/64<s<11/100\) and \(1/4<\lambda<1/3\), as proved
in [SHARP_BC_MOVING.md](SHARP_BC_MOVING.md).

Allow the two contacts
\[
B=(b,t),\qquad D=(1-r,d)
\]
to move inward. The other seven points are
\[
A=(0,a),\ C=(c,0),\ E=(1,e),\ F=(f,1),\ G=(g,1),
\quad H=(0,h),\quad O=(x,y)\in[0,1]^2.
\]
Assume the strict coordinate orders
\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\quad0<g<f<1,
\qquad 0\le t\le d,\quad0\le r\le1-f.                 \tag{1}
\]
The following eleven positive oriented doubled areas define the chamber.

| Area | Formula |
|---|---|
| ABH | \(b(h-a)\) |
| ABC | \(a(c-b)-ct\) |
| AGH | \(g(h-a)\) |
| DEF | \((1-f)(e-d)+r(1-e)\) |
| GHF | \((f-g)(1-h)\) |
| GEF | \((f-g)(1-e)\) |
| ADO | \((1-r)(y-a)-(d-a)x\) |
| DHO | \((1-r)(h-y)-(h-d)x\) |
| BOE | \(e(x-b)-(1-b)y+t(1-x)\) |
| GCO | \(x-c(1-y)-gy\) |
| OCF | \(c(1-y)+fy-x\) |

**Theorem 1.** The minimum of these eleven ordinary triangle areas is
at most \(A_0\). If all eleven are at least \(A_0\), then
\(t=r=0\), and the configuration is exactly the equality configuration
of [HAND_PROOF.md](HAND_PROOF.md). Both closed height conditions in
(1) are included.

## 1. The anchor bounds and the B-moving budget

Suppose all eleven displayed expressions are at least \(s\). Put
\[
L=h-a,\quad M=f-g,\quad u=s/L,\quad v=s/M,
\quad\alpha=1-v-s/u,\quad\beta=1-u-s/v.
\]
The four unchanged side costs give
\[
b,g\ge u,\quad e,h\le1-v,\quad a\le\alpha,
\quad1-f\le\beta.                                    \tag{2}
\]
Also
\[
ABC=(a-t)(c-b)-bt\ge s
\quad\Longrightarrow\quad a>t,\quad\alpha-t>s.
\]
By \(r\le1-f\),
\[
s\le DEF\le(1-f)(1-d)<1-f\le\beta.
\]
In particular
\[
\boxed{\alpha-t>s,\quad\beta>s,\quad r\le\beta.}       \tag{3}
\]

The diagonal sums give
\[
X:=1-x\ge2u+r,\qquad Y:=y\ge2v.                       \tag{4}
\]
Thus \(x<1-r\) and \(u,v<1/2\). Since \(a>t\) and \(d\ge t\),
the ADO inequality implies
\[
(1-r)y>a(1-r-x)+dx\ge t(1-r),
\]
so \(y>t\). Now
\(BOE=(e-t)(x-b)-(1-b)(y-t)>0\), with \(e>d\ge t\),
implies \(x>b\) and \(e>y\). Its monotone substitutions in (2)
therefore yield
\[
(1-v-t)X+(1-u)Y\le(1-v)(1-u)-s.                       \tag{5}
\]
Here \(1-v-t\ge e-t>0\).

Write \(g_0=1-3u-3v+5uv\). Inserting (4) into (5) gives
\[
s\le g_0+2ut-r(1-v-t)\le g_0+2ut.                    \tag{6}
\]
The ABC inequality also gives exactly the B-moving budget
\[
\boxed{t\le\alpha(1-u)-s.}                            \tag{7}
\]
Indeed \((a-t)(c-b)\ge s+bt\), \(c-b\le1-u\), and
\(a-t\le\alpha-t\) imply \((\alpha-t)(1-u)\ge s+ut\).

Equations (3), (6), and (7) are precisely the hypotheses used in
Section 3 of SHARP_BC_MOVING.md to prove
\[
\boxed{u,v<1/4,\qquad t<1/2.}                          \tag{8}
\]
For completeness, substituting (7) in (6) yields
\[
3s\le1-u-2u^2-v(3-3u-2u^2).
\]
If \(v\ge1/4\), the right side is less than \(1/4<3s\).
If \(u\ge1/4\), inserting \(v>s/(1-u-s)\) from \(\beta>s\)
requires the polynomial \(N(u,s)\ge0\) displayed in that section;
its explicit negative bound there applies on
\([1/4,1/2]\times[7/64,11/100]\). Finally
\(t<\alpha-s<1-5s<1/2\).
We shall also use
\[
u,v>s,\qquad
v>\frac{s}{1-u-s}>\frac{s}{1-2s}>\frac7{50}.           \tag{9}
\]

## 2. Combine the two independent eliminations

The ABC/GCO calculation in Section 3 of SHARP_BC_MOVING.md does
not involve D and gives
\[
(s+ut)(1-y)\le(\alpha-t)(x-u-s).                        \tag{10}
\]
For its signs, GCO bounds
\((c-b)(1-y)\le x-u-s\), with both sides positive; multiply
by \(a-t>0\), use \((a-t)(c-b)\ge s+bt\), and then (2).

The DHO/DEF calculation in Section 3 of
[SHARP_CD_MOVING.md](SHARP_CD_MOVING.md) does not involve B.
Under the same condition \(r\le1-f\), it gives
\[
(s-vr)x\le\beta\{(1-r)(1-v-y)-s\}.                    \tag{11}
\]
There is no need to assume \(s-vr>0\).

Add (10) and (11) after rearranging in X,Y, and add \(\lambda\)
times (5). The coefficients of X,Y are
\[
C_1=\alpha-t-s+vr+\lambda(1-v-t),\qquad
C_2=\beta(1-r)-s-ut+\lambda(1-u).
\]
The first is positive by (3) and (5). For the second, (8)--(9) give
\[
s<\beta=1-u-s/v<1-5s<1/2.
\]
Since \(r\le\beta\),
\(\beta(1-r)\ge\beta(1-\beta)\ge s(1-s)\).
Also \(ut<1/8\) and \(\lambda(1-u)>3/16\). Consequently
\[
C_2> s(1-s)-s-1/8+3/16=1/16-s^2>0.                   \tag{12}
\]
We may therefore insert (4).

Define
\[
H_0=\alpha(1-3u-s)+\beta(1-3v-s)+2s(u+v-1),
\]
and
\[
K_B=1-s-2u(1+v+\lambda),\qquad
T_v=\beta(1-3v)+\alpha-s-v(1-2u)+\lambda(1-v).
\]
Exact collection gives
\[
\boxed{H_0+\lambda(g_0-s)
\ge tK_B+rT_v+vr^2-(1+\lambda)tr.}                    \tag{13}
\]
By (8),
\[
K_B>1-\frac{11}{100}-\frac12
 \left(1+\frac14+\frac13\right)=\frac{59}{600}>0.       \tag{14}
\]

## 3. A positive bound for the mixed loss

Since \(t<\alpha-s\),
\[
\begin{split}
T_v-(1+\lambda)t
&>T_v-(1+\lambda)(\alpha-s)\\
&=\beta(1-3v)-v+2uv+\lambda s(1+1/u).                 \tag{15}
\end{split}
\]
Replace \(\lambda>1/4\) and \(\beta=1-u-s/v\) on the last
line. The resulting lower bound is
\[
E_0(u,v)=1-u-4v+5uv+\frac{13s}{4}-\frac{s}{v}
                           +\frac{s}{4u}.
\]
For \(0<u,v<1/4\),
\[
\frac{\partial E_0}{\partial u}
=-1+5v-\frac{s}{4u^2}<-\frac3{16}<0.
\]
Thus, using both rational bounds for s,
\[
\begin{split}
E_0(u,v)&>E_0(1/4,v)
=\frac34-\frac{11v}{4}+\frac{17s}{4}-\frac{s}{v}\\
&>\frac{311}{256}-\frac{11v}{4}-\frac{11}{100v}.
\end{split}                                           \tag{16}
\]
The last expression is positive throughout \(7/50\le v\le1/4\).
After multiplication by v, it is the concave quadratic
\[
Q(v)=\frac{311v}{256}-\frac{11v^2}{4}-\frac{11}{100},
\]
whose endpoint values are
\[
Q(7/50)=\frac{1977}{320000}>0,
\qquad Q(1/4)=\frac{559}{25600}>0.                     \tag{17}
\]
Equations (9) and (15)--(17) prove
\(T_v-(1+\lambda)t>0\).

By (8), the sharp scalar inequality in Lemma 1 of
SHARP_BC_MOVING.md applies:
\[
H_0+\lambda(g_0-s)\le0.
\]
But the right side of (13) equals
\[
tK_B+r\{T_v-(1+\lambda)t\}+vr^2,
\]
which is positive unless \(t=r=0\), by (14)--(17).
Therefore both displacements vanish. The original sharp chamber
theorem in HAND_PROOF.md gives the claimed bound and its exact
equality configuration. \(\square\)

## Verification and scope

[check_sharp_bd_moving.py](check_sharp_bd_moving.py) verifies all eleven
moving determinant formulas, both diagonal sums, the combined identity
(13), the coefficient rewrite (15), and every new rational endpoint
bound. The two area eliminations and the sharp scalar inequality are
proved in the linked notes and are used with their hypotheses checked
above. This is a complete continuous chamber theorem under (1); it
does not assert that every six-boundary configuration has this chamber.
