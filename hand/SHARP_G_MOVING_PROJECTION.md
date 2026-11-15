# The projection-restricted G-moving sharp chamber is strictly suboptimal

Use the cyclic labels of [HAND_PROOF.md](HAND_PROOF.md), with only G
allowed to move inward:

\[
A=(0,a),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ E=(1,e),
\quad F=(f,1),\ G=(g,1-t),\ H=(0,h),\ O=(x,y),
\]

where the usual side orders are strict, \(0\le t<1\), and
\(O\in[0,1]^2\). Impose the two additional conditions

\[
                         f\le c,\qquad e\le1-t.       \tag{1}
\]

The sharp chamber means that the following oriented doubled areas are
positive. Their formulas also specify the complete sign convention:

| Area | Formula |
|---|---|
| ABH | \(b(h-a)\) |
| ABC | \(a(c-b)\) |
| AGH | \(g(h-a)\) |
| DEF | \((1-f)(e-d)\) |
| GHF | \((f-g)(1-h)-ft\) |
| GEF | \((f-g)(1-e)+(1-f)t\) |
| ADO | \(y-a-(d-a)x\) |
| DHO | \(h-y-(h-d)x\) |
| BOE | \(e(x-b)-(1-b)y\) |
| GCO | \((1-t)(x-c)+(c-g)y\) |
| OCF | \(c-x+(f-c)y\) |

**Theorem 1.** Under (1), the minimum of these eleven ordinary areas
is strictly less than \(7/128<A_0\).

In particular, this chamber has no equality configuration at the sharp
target. The hypothesis (1) is essential to the stated scope; the theorem
does not claim to close every G-moving sharp chamber. In fact DEF is
not needed in the proof.

## 1. Three bounds for the interior height

Suppose all eleven doubled areas are at least \(s=7/64\). Put

\[
L=h-a,\quad M=f-g,\quad u=s/L,\quad v=s/M,
\]
\[
\alpha=1-v-s/u,\quad \beta=1-u-s/v,\quad
\eta=1+uv/s,\quad A=\alpha-\eta t.
\]

ABH and AGH give \(b,g\ge u\), so \(f\ge u+M\), and
\(\beta>0\). The two upper areas give

\[
h\le1-v-ft/M,\qquad
e\le E:=1-v+\beta vt/s.
\]

Consequently

\[
a\le A,\qquad
A\ge a\ge\frac{s}{c-b}>\frac{s}{1-u}>0.               \tag{2}
\]

ADO and DHO give \(x\le1-2u\). BOE implies \(x>b\) and
\(y<e\), so (1) gives \(y<1-t\). Its monotone bounds
\(b\ge u\), \(e\le E\) therefore give

\[
y\le\frac{E(x-u)-s}{1-u}.                             \tag{3}
\]

The GCO inequality can be written as

\[
(c-b)(1-t-y)
\le(1-t)(x-u)-s
 -(b-u)(1-t-y)-(g-u)y.
\]

The two subtracted terms are nonnegative. Combine this with ABC and
(2). The remaining bracket is positive because it bounds
\((c-b)(1-t-y)>0\). Hence

\[
y\ge(1-t)+A-\frac{A(1-t)(x-u)}s.                       \tag{4}
\]

Independently, \(c\ge f\) and \(y<1-t\) imply

\[
s\le[GCO]\le(1-t)(x-u)-M(1-t-y),
\]
and thus
\[
y\ge(1-t)+v-\frac{v(1-t)(x-u)}s.                       \tag{5}
\]

Both lower bounds decrease with x, while the upper bound (3) increases.
Replacing x by \(1-2u\) is therefore a relaxation of all three
necessary inequalities. This changes no actual configuration.

## 2. Two scalar inequalities and a short interval

Write \(z=1-3u\), and define

\[
D_c=(1-u)z-2su,\qquad D_j=(1-u)z-2s(1-2u).
\]

After the preceding replacement, comparison of (5) with (3), and of
(4) with (3), gives respectively

\[
J_t:=vD_j-s(2u+s)+2sut\ge0,                            \tag{6}
\]
\[
\begin{split}
C_t:={}&A(1-u)\{(1-t)z-s\}+s(1-v)z+\beta vtz\\
       &-s^2-s(1-u)+s(1-u)t\ge0.                       \tag{7}
\end{split}
\]

We first prove

\[
\boxed{\frac18<u<\frac{15}{64},\qquad v+t<\frac9{16}.} \tag{8}
\]

Since \(x>b\ge u\) and \(x\le1-2u\), we have \(u<1/3\).
Equation (2) and \(h=a+s/u<1\) give
\(u(1-u)>s\), whence \(u>1/8\).
Also

\[
h=a+L\ge\frac{s}{c-b}+\frac sb
\ge\frac{4s}{c}>4s.
\]

GHF gives \(v+(f/M)t\le1-h\), and \(f/M>1\).
This proves \(v+t<1-4s=9/16\).

If \(u\ge1/4\), then \(u<1/3\), the function
\(D_j=1-4u+3u^2-2s+4su\) decreases, and

\[
D_j\le5/64,\qquad 2su<7/96<5/64.
\]

It follows from (8)'s already proved height bound that

\[
J_t<\frac9{16}\frac5{64}-s(1/2+s)
   =-\frac{93}{4096}<0,
\]
contrary to (6). Thus \(u<1/4\). On this range

\[
D_j-2su=(1-u)(z-2s)>0.
\]

If \(u\ge15/64\), (6) consequently gives

\[
0\le J_t<\frac9{16}D_j-s(2u+s)
\le\left.\left(\frac9{16}D_j-s(2u+s)\right)\right|_{u=15/64}
=-\frac{49}{65536}<0.
\]

The last replacement is valid because the expression decreases with u.
This proves (8).

## 3. A positive weight controls the inward displacement

Throughout (8), \(D_j>455/4096>0\), and we may use

\[
\mu=\frac{D_c}{D_j}=1+\frac{2sz}{D_j}>0.
\]

We will need the rational upper bound

\[
                         \mu\le\frac85.               \tag{9}
\]

Indeed \(3D_j-10sz\) decreases on the interval in (8): its
derivative is \(18u-12+42s\le-51/16\). Its value at
\(u=15/64\) is \(35/4096>0\). This proves (9).

Let \(C_0,J_0\) denote (6)--(7) at \(t=0\). Expanding (7),
and then using \(\eta t\le\alpha-s/(1-u)\) from (2), gives

\[
C_t-C_0
\le t\left[(1-u)\{vB(u)-z+2s\}-2sz\right],           \tag{10}
\]
where
\[
B(u)=1-2u-uz/s.
\]

For completeness, before the replacement the exact difference is

\[
t\{\beta vz-(1-u)[\alpha z+\eta(z-s)]+s(1-u)\}
       +t^2(1-u)\eta z.
\]

All factors multiplying the bound on \(\eta t\) are positive.
The resulting expression simplifies to (10).

The quadratic \(B(u)\) is convex, and its endpoint values on
\([1/8,15/64]\) are \(1/28\) and \(-47/448\).
Thus \(B(u)\le1/28\), and \(0<v<9/16\) implies
\(vB(u)\le9/448\), also when B is negative.
Use this, (8), (9), and \(z\ge19/64\) in (10) and (6):

\[
\begin{split}
(C_t+\mu J_t)-(C_0+\mu J_0)
&\le t\{(1-u)[vB(u)-z+2s]-2sz+2su\mu\}\\
&\le t\left\{-\frac{49}{64}\frac{13}{224}
              -\frac{133}{2048}+\frac{21}{256}\right\}\\
&=-\frac7{256}t\le0.                                  \tag{11}
\end{split}
\]

In the middle line, the bracket multiplying \(1-u\) is at most
\(9/448-19/64+14/64=-13/224<0\), so its replacement has the
stated direction.

## 4. One negative cubic closes the chamber

The chosen weight cancels v from \(C_0+\mu J_0\). Exact
expansion gives

\[
C_0+\mu J_0=
\frac{3(u-1)(64u-19)N(u)}{131072\,uD_j},
\]
\[
N(u)=6144u^3-8864u^2+2349u-175.                         \tag{12}
\]

The denominator is positive, and the two linear factors in the
numerator are both negative on (8). The cubic is strictly negative.
To see this, put \(w=u-1/6<1/12\). Then

\[
N=6144w^3-5792w^2-\frac{281}{3}w-\frac{23}{18}
\le-5280w^2-\frac{281}{3}w-\frac{23}{18}<0.             \tag{13}
\]

The first inequality uses \(w^3\le w^2/12\), valid even for
negative w. The final quadratic has negative leading coefficient and
discriminant \(-163919/9<0\).

Equations (11)--(13) now give \(C_t+\mu J_t<0\), whereas
(6)--(7) and \(\mu>0\) require it to be nonnegative. This
contradiction proves Theorem 1. The comparison \(7/128<A_0\)
is recorded in [GLOBAL_COMPLETION.md](GLOBAL_COMPLETION.md). \(\square\)

## Verification

[check_sharp_g_moving_projection.py](check_sharp_g_moving_projection.py)
checks every area sign formula, both scalar eliminations, the exact
displacement identity, all interval and weight constants, and the final
cubic identity. The proof uses no sampled bounds, optimization premise,
or coordinate subdivision.
