# The sharp chamber with B and E both moving inward

Use the sharp-chamber notation of Part I of
[HAND_PROOF.md](HAND_PROOF.md), allowing the bottom contact B and the
opposite right contact E to move into the square:

\[
\begin{array}{llll}
 A=(0,a),&B=(b,\varepsilon),&C=(c,0),&D=(1,d),\\
 E=(1-\eta,e),&F=(f,1),&G=(g,1),&H=(0,h),
\end{array}
\]
\[
0<a<h<1,\quad0<b<c\le f<1,\quad
0<g<f,\quad a\le d<e<1,
\quad0\le\varepsilon\le a,\quad0\le\eta\le1-f.
                                                               \tag{1}
\]

The ninth point is \(O=(x,y)\in[0,1]^2\). Write
\([UVW]=\det(V-U,W-U)\), \(L=h-a\), and \(M=f-g\).
The chamber is specified by positivity of these eleven oriented doubled
areas:

| Triangle | Oriented doubled area |
|---|---|
| \(ABH\) | \(bL\) |
| \(ABC\) | \(a(c-b)-c\varepsilon\) |
| \(AGH\) | \(gL\) |
| \(DEF\) | \((1-f)(e-d)-\eta(1-d)\) |
| \(GHF\) | \(M(1-h)\) |
| \(GEF\) | \(M(1-e)\) |
| \(ADO\) | \(y-a-(d-a)x\) |
| \(DHO\) | \(h-y-(h-d)x\) |
| \(BOE\) | \((e-\varepsilon)(x-b)-(1-\eta-b)(y-\varepsilon)\) |
| \(GCO\) | \(x-c+(c-g)y\) |
| \(OCF\) | \(c-x+(f-c)y\) |

**Theorem 1.** Throughout (1) and this complete orientation chamber,
the minimum of the eleven displayed ordinary areas is at most

\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]

If all eleven areas are at least \(A_0\), then
\(\varepsilon=\eta=0\), and the configuration is exactly the
sharp boundary configuration in Part I of
[HAND_PROOF.md](HAND_PROOF.md). Both inward displacements are allowed
simultaneously; neither is required to be small.

The order assumptions \(a\le d\), \(c\le f\), and the two
bounds on the displacements are part of this theorem's scope.

## 1. A sharp scalar combination

Put

\[
p_0=\frac{15-\sqrt{65}}{40},\qquad
s=2A_0=\frac{9\sqrt{65}-55}{160},\qquad
\lambda=\frac{77\sqrt{65}-615}{20}.
                                                               \tag{2}
\]

In particular \(s>7/64\) and \(0<\lambda<3/10\).
The latter comparisons follow by squaring:
\(615^2<77^2\cdot65<621^2\).

For \(0<u,v<1/2\), define

\[
\begin{aligned}
F_0(u,v)&=1-3u-3v+5uv,\\
\Phi(u,v)&=6uv+(3s-4)(u+v)+2s+2
              -\frac{s(1-s)(u+v)}{uv}.
\end{aligned}
\]

Then

\[
\boxed{\Phi(u,v)+\lambda(F_0(u,v)-s)\le0.}                \tag{3}
\]

Here is a direct proof which does not assume \(F_0\ge s\).
Set \(p=(u+v)/2\) and \(q=uv\). For fixed p the left side
strictly increases with q, since its q-derivative is

\[
6+5\lambda+\frac{2sp(1-s)}{q^2}>0.
\]

Since \(q\le p^2\), it is at most its value at \(u=v=p\).
The exact factorization at that value is

\[
\begin{aligned}
p\{\Phi(p,p)+\lambda(F_0(p,p)-s)\}
  &=(6+5\lambda)(p-p_0)^2(p-q_0),\\
q_0&=\frac{16257+1889\sqrt{65}}{36104}>\frac12.
\end{aligned}                                             \tag{4}
\]

We have \(0<p<1/2\), proving (3). Equality in (3) forces
\(u=v=p_0\). The identity (4) can also be checked by expanding
and using \(20p_0^2-15p_0+2=0\).

## 2. The two necessary inequalities with inward losses

Assume all eleven displayed doubled areas are at least s. Define

\[
u=\frac{s}{L},\qquad v=\frac{s}{M},\qquad
\alpha=1-v-\frac{s}{u},\qquad
\beta=1-u-\frac{s}{v}.
\]

The six boundary-type costs give

\[
b,g\ge u,\qquad e,h\le1-v,\qquad
 a\le\alpha,\quad1-f\le\beta.
                                                               \tag{5}
\]

Moreover \(a>s\) and \(1-f>s\), because \(c-b<1\)
and \(e-d<1\). Thus \(\alpha,\beta>s\).
Adding the ADO and DHO inequalities, and separately GCO and OCF,
gives

\[
                    x\le1-2u,\qquad y\ge2v.             \tag{6}
\]

In particular \(0<u,v<1/2\), since the remaining positive areas
force \(0<x,y<1\).

We first justify the monotonicity for BOE. The ADO inequality and
\(d\ge a\) give \(y>a\ge\varepsilon\). The GCO and
OCF inequalities give

\[
c(1-y)+gy+s\le x\le c(1-y)+fy-s<f\le1-\eta,
\]

where the strict upper bound uses \(c\le f\) and \(y\le1\).
Since \(e>d\ge a\ge\varepsilon\) and \(1-\eta>b\),
positivity of BOE now forces \(x>b\) and \(e>y\).
Consequently BOE decreases with b and increases with e, so (5) yields

\[
\begin{aligned}
s
&\le[BOE]\\
&\le(1-v)(x-u)-(1-u)y+\eta y
                     +\varepsilon(1-\eta-x)\\
&\le F_0(u,v)+2u\varepsilon+2v\eta-\varepsilon\eta.
\end{aligned}                                             \tag{7}
\]

The last line uses (6). Its x-coefficient is
\(1-v-\varepsilon>0\), because \(1-v\ge e>\varepsilon\),
and its y-coefficient is \(-(1-\eta-u)<0\), because
\(1-\eta>b\ge u\).

The strengthened ABC inequality and GCO give

\[
s(1-y)+\varepsilon c(1-y)
\le a(c-b)(1-y)
\le\alpha(x-u-s).                                       \tag{8}
\]

Indeed \(c(1-y)\le x-gy-s\), and \(b,g\ge u\).
The final factor \(x-u-s\) is positive by the preceding inequality,
so replacing a by \(\alpha\) is legitimate.
Similarly, DEF and DHO give

\[
sx+\eta x(1-d)
\le(1-f)x(e-d)
\le\beta(1-v-y-s).                                      \tag{9}
\]

For the last step, use
\(x(e-d)\le ex+h(1-x)-y-s\le1-v-y-s\);
this positive quantity can be multiplied by the upper bound
\(1-f\le\beta\).
Adding (8)--(9), and then using (6) and
\(\alpha-s,\beta-s>0\), gives

\[
\boxed{\Phi(u,v)\ge
 \varepsilon c(1-y)+\eta x(1-d).}                       \tag{10}
\]

In detail, the upper bound on the sum after subtracting
\(s(1-y+x)\) is

\[
(\alpha-s)x-(\beta-s)y
 -\alpha(u+s)+\beta(1-v-s)-s,
\]

which increases with x and decreases with y. Substituting
\(x=1-2u\), \(y=2v\) simplifies it to \(\Phi(u,v)\).
Thus (10) retains both losses caused by the inward contacts.

## 3. Each loss has a uniformly positive coefficient

We prove

\[
             c(1-y)>\frac35u,
\qquad       x(1-d)>\frac35v.                            \tag{11}
\]

Write \(X=1-y\). Dropping the nonnegative displacement terms in
ABC and DEF, and using (5), gives

\[
c\ge u+\frac{s}{\alpha},\qquad
1-d\ge v+\frac{s}{\beta}.                               \tag{12}
\]

Combining those bounds with GCO and DHO yields the coupled inequalities

\[
x\ge u+s+\frac{s}{\alpha}X,
\qquad
X\ge v+s+\frac{s}{\beta}x.                              \tag{13}
\]

For example the first follows from
\(x\ge cX+g(1-X)+s\), with \(c\ge u+s/\alpha\)
and \(g\ge u\). For the second, use
\(h\le1-v\) and \(d\le1-v-s/\beta\) in DHO.

Since \(\alpha<1-s/u\), (12) gives

\[
                         c>\frac{u^2}{u-s}.             \tag{14}
\]

All denominators are positive: \(u>s\) follows from
\(L<1\), and \(u<1/2\) was proved above. Since \(x\ge u+s\),
the second inequality in (13) gives

\[
X\ge v+s+\frac{s(u+s)}{1-u-s/v}.
\]

Put \(q=(1-u)v-s>0\). The expression on the right equals

\[
s+\frac{q+s+s(u+s)+s^2(u+s)/q}{1-u}
\ge s+\frac{s(1+\sqrt{u+s})^2}{1-u}
>\frac{2s}{1-\sqrt u}.                                  \tag{15}
\]

The weak inequality is arithmetic-geometric mean on
\(q+s^2(u+s)/q\). The strict one uses \(s>0\) and
\(1+(1+\sqrt u)^2/(1-u)=2/(1-\sqrt u)\).
Thus (14)--(15) imply

\[
\frac{cX}{u}>
\frac{2su}{(u-s)(1-\sqrt u)}>\frac35.                   \tag{16}
\]

Here is an elementary exact proof of the final comparison.
Put \(t=\sqrt u\). After multiplication by positive denominators,
it is equivalent to

\[
3t^3+(10s-3)t^2-3st+3s>0.
\]

The coefficient \(10t^2-3t+3\) of s is positive, so it suffices
to use \(s\ge7/64\). Multiplying the resulting polynomial by 64
gives

\[
192t^3-122t^2-21t+21.
\]

With \(z=t-1/2\ge-1/2\), this equals

\[
192z^3+166z^2+z+4
\ge70z^2+z+4>0.                                         \tag{17}
\]

The last quadratic has discriminant \(-1119<0\).
This proves the first inequality in (11).
The second follows by exactly the same argument with
\((u,v,\alpha,\beta,x,X,c,1-d)\) replaced by
\((v,u,\beta,\alpha,X,x,1-d,c)\) in (12)--(13).

## 4. Finish the sharp inequality and equality case

Multiply (7), after subtracting s, by the positive \(\lambda\)
and add (10), after subtracting its right side. They imply

\[
\begin{aligned}
0\le\;&\Phi+\lambda(F_0-s)\\
 &+\varepsilon\{2\lambda u-c(1-y)\}
  +\eta\{2\lambda v-x(1-d)\}
  -\lambda\varepsilon\eta.                              \tag{18}
\end{aligned}
\]

The first line is nonpositive by (3). Both braced coefficients are
strictly negative by (11) and \(2\lambda<3/5\).
The last term is nonpositive. Hence (18) forces
\(\varepsilon=\eta=0\).

The configuration is now precisely the boundary chamber covered by
Part I, Theorem 1, of [HAND_PROOF.md](HAND_PROOF.md). That theorem
forces its stated sharp equality configuration. In particular, no
configuration in the present larger chamber can have all eleven
ordinary areas greater than \(A_0\), and equality can occur only
with both displaced contacts back on the boundary. This proves
Theorem 1. \(\square\)

## Verification

[check_sharp_b_e_moving.py](check_sharp_b_e_moving.py) checks every
oriented area, the monotone endpoint expression (7), the scalar identity
in (10), the sharp factorization (4), and the rational one-variable
certificate (17). The geometric signs and positive-denominator steps
are justified in the proof above; the diagnostic performs no numerical
optimization.
