# A sharp chamber with C and D moving inward simultaneously

Use the labels and sharp constants of
[HAND_PROOF.md](HAND_PROOF.md), but allow both adjacent contacts
\[
C=(c,t),\qquad D=(1-r,d)
\]
to move inward. The other seven points are
\[
A=(0,a),\ B=(b,0),\ E=(1,e),\ F=(f,1),\ G=(g,1),
\quad H=(0,h),\quad O=(x,y)\in[0,1]^2.
\]
Assume
\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\quad0<g<f<1,
\qquad 0\le t\le a,\quad0\le r\le1-f.                 \tag{1}
\]
The chamber is specified by the eleven positive oriented doubled areas
below; these formulas also fix all signs.

| Area | Formula |
|---|---|
| ABH | \(b(h-a)\) |
| ABC | \(a(c-b)+bt\) |
| AGH | \(g(h-a)\) |
| DEF | \((1-f)(e-d)+r(1-e)\) |
| GHF | \((f-g)(1-h)\) |
| GEF | \((f-g)(1-e)\) |
| ADO | \((1-r)(y-a)-(d-a)x\) |
| DHO | \((1-r)(h-y)-(h-d)x\) |
| BOE | \(e(x-b)-(1-b)y\) |
| GCO | \((1-t)x-c(1-y)-g(y-t)\) |
| OCF | \(c(1-y)+f(y-t)-(1-t)x\) |

**Theorem 1.** The minimum of these eleven ordinary triangle areas is
at most
\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]
If all eleven are at least \(A_0\), then \(t=r=0\) and the
configuration is exactly the equality configuration in HAND_PROOF.md.
The closed height conditions in (1) are included.

## 1. The unchanged sharp scalar inequality

Set
\[
p_0=\frac{15-\sqrt{65}}{40},\qquad s=2A_0,
\qquad \lambda=\frac{8-39p_0}{6-10p_0}.
\]
The proved bounds give
\[
\frac7{64}<s<\frac{11}{100},\qquad\frac14<\lambda<\frac13.
\]
Suppose every displayed doubled area is at least s. Put
\[
L=h-a,\quad M=f-g,\quad u=s/L,\quad v=s/M,
\quad\alpha=1-v-s/u,\quad\beta=1-u-s/v.
\]
We use Lemma 1 of [SHARP_BC_MOVING.md](SHARP_BC_MOVING.md): with
\[
\begin{aligned}
g_0&=1-3u-3v+5uv,\\
H_0&=\alpha(1-3u-s)+\beta(1-3v-s)+2s(u+v-1),
\end{aligned}
\]
one has
\[
H_0+\lambda(g_0-s)\le0
\quad\text{if }0<(u+v)/2<1/4.                         \tag{2}
\]
That lemma proves the inequality by a symmetric product replacement
and strict one-variable concavity, with equality only at \(u=v=p_0\).

The four unchanged side costs give
\[
b,g\ge u,\quad e,h\le1-v,\quad a\le\alpha,
\quad 1-f\le\beta.                                   \tag{3}
\]
The two moving anchor areas give a useful strict strengthening:
\[
s\le ABC\le ac<a\le\alpha,
\qquad
s\le DEF\le(1-f)(1-d)<1-f\le\beta.                   \tag{4}
\]
Here (1) justifies both upper bounds. In particular
\(t\le\alpha\), \(r\le\beta\), and \(\alpha,\beta>s\).

## 2. Both effective parameters are below one fifth

Adding ADO and DHO, and adding GCO and OCF, gives
\[
X:=1-x\ge2u+r,\qquad Y:=y\ge2v+t.                    \tag{5}
\]
The positive BOE area gives \(x>b\) and \(e>y\).
Its monotone substitutions from (3) therefore imply
\[
(1-v)X+(1-u)Y\le(1-v)(1-u)-s.
\]
Together with (5), this is
\[
s\le g_0-(1-v)r-(1-u)t\le g_0.                       \tag{6}
\]
First \(u,v<1/2\) by (5). If \(u\ge1/3\), then
\(g_0=1-3u-(3-5u)v<0\), contrary to (6); the same argument
applies to v. Replacing \(uv\le((u+v)/2)^2\) in (6), and
using \(1-6p_0+5p_0^2=s\), now gives
\[
(u+v)/2\le p_0<1/4.                                   \tag{7}
\]

In fact
\[
\boxed{u,v<1/5.}                                     \tag{8}
\]
If \(u\ge1/5\), (6) gives
\[
v\le\frac{1-3u-s}{3-5u}\le\frac15-\frac s2,
\]
since the middle expression decreases with u. But \(\beta>s\)
gives \(v>s/(1-u-s)\ge s/(4/5-s)\). These contradict
\[
\frac{7/64}{4/5-7/64}-\left(\frac15-\frac7{128}\right)
=\frac{1847}{141440}>0.
\]
The first bound increases with s and the second decreases.
Interchanging u and v and using \(\alpha>s\) proves (8).
In particular \(2uv<2/25<s\).

## 3. The two coupled moving-contact inequalities

The ABC/GCO elimination from Section 2 of SHARP_BC_MOVING.md remains
valid when D also moves, because neither area in that elimination
uses D. For clarity, before its last scalar replacement it gives
\[
\begin{split}
s(1-y)\le{}&a\{(1-t)(x-u)-s\}+ut(1-y)\\
&+(b-u)(t-a)(1-y)-a(g-u)(y-t).
\end{split}
\]
The second line is nonpositive, by (1), (3), and (5).
The bracket multiplying a is positive: it bounds the positive
quantity \((c-b)(1-y)\) in the preceding GCO elimination.
Thus replacing \(a\le\alpha\) yields
\[
(s-ut)(1-y)\le\alpha\{(1-t)(x-u)-s\}.                 \tag{9}
\]
No assertion about the sign of \(s-ut\) is needed.
Reflection in \((x,y)\mapsto(1-y,1-x)\) exchanges C and D,
\(u,v\), \(\alpha,\beta\), and \(t,r\). It gives the companion
inequality
\[
(s-vr)x\le\beta\{(1-r)(1-v-y)-s\}.                   \tag{10}
\]
The corresponding sign condition is \(r\le1-f\), already in (1).

Add (9) and (10) after rearranging in X,Y, and add \(\lambda\)
times the BOE inequality before (6). Their combined coefficients are
\[
\alpha(1-t)-s+vr+\lambda(1-v),\qquad
\beta(1-r)-s+ut+\lambda(1-u).
\]
Both are positive: all terms except \(-s\) are nonnegative and,
by (8), each last term exceeds \(1/5>s\).
We can therefore insert the lower bounds (5). Exact collection gives
\[
\begin{split}
H_0+\lambda(g_0-s)\ge{}
&tT_u+rT_v+ut^2+vr^2-(\alpha+\beta)tr,                 \tag{11}\\
T_u={}&\alpha(1-3u)+\beta-s-u(1-2v)+\lambda(1-u),\\
T_v={}&\beta(1-3v)+\alpha-s-v(1-2u)+\lambda(1-v).
\end{split}
\]

## 4. The mixed displacement term has a favorable bound

Use \(t\le\alpha\) and \(r\le\beta\) from (4):
\[
(\alpha+\beta)tr\le\alpha\beta(t+r).
\]
Consequently the right side of (11) is at least
\[
t(T_u-\alpha\beta)+r(T_v-\alpha\beta)+ut^2+vr^2.
                                                               \tag{12}
\]
Both linear coefficients are strictly positive. Indeed
\[
T_u-\alpha\beta
=\alpha(s/v-2u)+(\beta-s)-u(1-2v)+\lambda(1-u)>0.
\]
The first term is positive because \(s>2uv\), the second is
positive by (4), and the last two terms exceed
\[
-u+\frac{1-u}{4}=\frac{1-5u}{4}>0.
\]
The proof for \(T_v-\alpha\beta\) is symmetric.
Equations (2), (7), and (11)--(12) therefore force \(t=r=0\).
The original sharp chamber theorem now gives its exact equality
configuration. This proves both the sharp bound and the equality
statement. \(\square\)

## Verification

[check_sharp_cd_moving.py](check_sharp_cd_moving.py) checks all eleven
moving determinant formulas, both area sums, the exact combined identity
(11), and the two coefficient rewrites in Section 4. The scalar sharp
inequality used in (2) is the previously proved Lemma 1 of
SHARP_BC_MOVING.md. No numerical optimization is a proof premise.
