# Two further inward-moving sharp chambers

This note extends the sharp chamber in [HAND_PROOF.md](HAND_PROOF.md)
to an inward displacement of \(B\) or \(C\), under the height
conditions stated below. The two moving cases have different determinant
signs; in particular, moving \(C\) upward **increases** \(ABC\),
whereas moving \(B\) upward decreases it.

Put
\[
p_0=\frac{15-\sqrt{65}}{40},\qquad
s_0=2A_0=\frac{2-9p_0}{4},\qquad
\lambda=\frac{8-39p_0}{6-10p_0}.
\]
The bounds in HAND_PROOF.md give
\[
\frac{173}{1000}<p_0<\frac7{40},\qquad
\frac7{64}<s_0<\frac{11}{100},\qquad
\boxed{\frac14<\lambda<\frac13.}                         \tag{1}
\]
For the last comparisons, the positive denominator reduces them to
\(p_0<13/73\) and \(p_0>18/107\), respectively.

## 1. A common sharp scalar inequality

Fix \(s=s_0\). For \(u,v>0\), define
\[
\begin{aligned}
\alpha&=1-v-s/u,&\beta&=1-u-s/v,\\
g(u,v)&=1-3u-3v+5uv,\\
H(u,v)&=\alpha(1-3u-s)+\beta(1-3v-s)+2s(u+v-1).
\end{aligned}
\]

**Lemma 1.** If \(0<(u+v)/2<1/4\), then
\[
\boxed{H(u,v)+\lambda\{g(u,v)-s\}\le0.}                 \tag{2}
\]
Equality is possible only when \(u=v=p_0\).

**Proof.** Write \(S=u+v\), \(P=uv\), and \(p=S/2\).
The expansion from the original sharp proof is
\[
H=6P+(3s-4)S+2s+2-\frac{s(1-s)S}{P}.
\]
Both this expression and \(g=1-3S+5P\) increase strictly with
\(P>0\). Replacing \(P\le p^2\) therefore gives
\[
H+\lambda(g-s)\le J(p),
\]
where
\[
J(p)=6p^2+(6s-8)p+2s+2-\frac{2s(1-s)}p
 +\lambda(1-6p+5p^2-s).
\]
The exact identities \(20p_0^2-15p_0+2=0\) and
\(s=(2-9p_0)/4\) give
\[
J(p_0)=0,\qquad J'(p_0)=0.
\]
The definition of \(\lambda\) is precisely the second identity:
the derivative of the first four terms at \(p_0\) is
\(8-39p_0\), and the derivative of the last parenthesis is
\(10p_0-6\).

For \(0<p<1/4\),
\[
J''(p)=12+10\lambda-\frac{4s(1-s)}{p^3}
<\frac{46}{3}-\frac{512}{25}
=-\frac{386}{75}<0.
\]
Here \(s>1/10\), \(1-s>4/5\), and \(p^3<1/64\).
Strict concavity proves \(J(p)\le0\), with equality only at
\(p=p_0\). Equality in the product replacement also forces
\(uv=p^2\), so \(u=v=p_0\). \(\square\)

## 2. The C-moving chamber below the height of A

Use
\[
\begin{array}{llll}
A=(0,a),&B=(b,0),&C=(c,t),&D=(1,d),\\
E=(1,e),&F=(f,1),&G=(g,1),&H=(0,h),
\end{array}
\]
with the usual strict orders
\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\quad0<g<f<1,
\qquad0\le t<a.
\]
Let \(O=(x,y)\) lie in the square. The eleven positive oriented
doubled areas are
\[
\begin{array}{c|l}
ABH&b(h-a)\\
ABC&a(c-b)+bt\\
AGH&g(h-a)\\
DEF&(1-f)(e-d)\\
GHF&(f-g)(1-h)\\
GEF&(f-g)(1-e)\\
ADO&y-a-(d-a)x\\
DHO&h-y-(h-d)x\\
BOE&e(x-b)-(1-b)y\\
GCO&(1-t)x-c(1-y)-g(y-t)\\
OCF&c(1-y)+f(y-t)-(1-t)x.
\end{array}                                                   \tag{3}
\]

**Theorem 2.** The minimum of these eleven ordinary areas is at most
\(A_0\). If all are at least \(A_0\), then \(t=0\), and the
configuration is exactly the equality configuration of HAND_PROOF.md.

**Proof.** Assume every expression in (3) is at least \(s=s_0\).
Set \(L=h-a\), \(M=f-g\), \(u=s/L\), \(v=s/M\), and use
\(\alpha,\beta,g(u,v),H(u,v)\) from Lemma 1. The anchor bounds give
\[
b,g\ge u,\quad e,h\le1-v,\quad a\le\alpha,\quad
1-f\le\beta,\qquad \alpha>t\ge0,\quad\beta>s.           \tag{4}
\]
The last inequality follows from \(DEF\ge s\) and \(e-d<1\).
Writing \(X=1-x\), \(Y=y\), the two sums of diagonal areas give
\[
X\ge2u,\qquad Y\ge2v+t.                                 \tag{5}
\]
Also \(BOE\ge s>0\) gives \(x>b\) and \(e>y\).
Its standard monotone substitutions give the stronger bound
\[
\boxed{s\le g(u,v)-(1-u)t.}                             \tag{6}
\]
In particular \(u,v<1/2\), and positivity of \(g\) forces
\(u,v<1/3\). As in the original sharp proof, replacing
\(uv\le((u+v)/2)^2\) in (6) gives
\[
p=(u+v)/2\le p_0<1/4.                                  \tag{7}
\]

We will also use \(u<1/5\). Otherwise (6) implies
\(v\le1/5-s/2\), whereas \(\beta>s\) implies
\(v>s/(4/5-s)\). These contradict
\[
\frac{7/64}{4/5-7/64}
-\left(\frac15-\frac{7}{128}\right)
=\frac{1847}{141440}>0,
\]
since the first bound increases with \(s\) and the second decreases.

### Retain the favorable sign t < a

From \(GCO\ge s\),
\[
c(1-y)\le(1-t)x-g(y-t)-s.
\]
Multiplying by \(a\), subtracting \(ab(1-y)\), and adding
\(bt(1-y)\), the \(ABC\) inequality implies
\[
\begin{split}
s(1-y)\le{}&a\{(1-t)(x-u)-s\}+ut(1-y)\\
&+(b-u)(t-a)(1-y)-a(g-u)(y-t).
\end{split}
\]
The two terms on the second line are nonpositive, because \(t<a\)
and \(y-t>0\). The bracket on the first line is positive: its
unweakened predecessor bounds the positive quantity
\((c-b)(1-y)\). Thus replacing \(a\le\alpha\) gives
\[
(s-ut)(1-y)\le\alpha\{(1-t)(x-u)-s\}.                  \tag{8}
\]
No positivity of \(s-ut\) is needed.
The unchanged \(DHO,DEF\) calculation gives
\[
sx\le\beta(1-v-y-s).                                    \tag{9}
\]
The upper bound on \(BOE\), before inserting (5), is
\[
(1-v)X+(1-u)Y\le(1-v)(1-u)-s.                           \tag{10}
\]

Add (8)--(9) after rearranging, and add \(\lambda\) times (10).
The coefficients of \(X,Y\) are respectively
\[
\alpha(1-t)-s+\lambda(1-v),\qquad
\beta-s+ut+\lambda(1-u).
\]
Both are positive. For the first, use \(\alpha>0\), \(t<1\),
\(v<1/3\), and \(\lambda>1/4\): it exceeds
\(1/6-s>0\). The second is positive by (4).
We may therefore insert (5). Exact collection gives
\[
\begin{split}
H+\lambda(g-s)\ge t\{&\alpha(1-3u)+(\beta-s)\\
&-u(1-2v-t)+\lambda(1-u)\}.                             \tag{11}
\end{split}
\]
The braces are positive. Indeed the first two terms are positive,
and the remaining terms exceed
\(-u+(1-u)/4=(1-5u)/4>0\).

Lemma 1 and (7) bound the left side of (11) by zero. Hence \(t=0\).
The original sharp chamber theorem now applies and gives its exact
equality configuration. This proves Theorem 2. \(\square\)

## 3. The B-moving chamber below the height of D

Now use \(B=(b,t)\), \(C=(c,0)\), with the other seven points
as above, and the same strict coordinate orders. Assume
\[
0\le t\le d.
\]
Of the eleven expressions in the original sharp theorem, only two change:
\[
ABC=a(c-b)-ct,
\qquad BOE=e(x-b)-(1-b)y+t(1-x).                         \tag{12}
\]
The other nine are the boundary formulas in HAND_PROOF.md.
The chamber again means that all eleven oriented expressions are positive.

**Theorem 3.** The minimum of these eleven ordinary areas is at most
\(A_0\). Equality forces \(t=0\) and exactly the original equality
configuration.

**Proof.** Assume all eleven doubled areas are at least \(s=s_0\),
and retain the same \(u,v,\alpha,\beta\). The anchor bounds now give
\[
b,g\ge u,\quad e,h\le1-v,\quad a\le\alpha,\quad
1-f\le\beta,\qquad \alpha-t>s,\quad\beta>s.              \tag{13}
\]
For \(\alpha-t>s\), write the first formula in (12) as
\((a-t)(c-b)-bt\ge s\), using \(c-b<1\).
The same formula gives \(t<a\). The \(ADO\) inequality then gives
\(y>a(1-x)+dx>t\), using \(t<a\) and \(t\le d\).
Since \(e>d\ge t\), writing
\(BOE=(e-t)(x-b)-(1-b)(y-t)>0\) yields \(x>b\) and \(e>y\).

Here the two sums of diagonal areas give
\[
X=1-x\ge2u,\qquad Y=y\ge2v,
\]
so \(u,v<1/2\). The \(BOE\) bound becomes
\[
\boxed{s\le g(u,v)+2ut.}                               \tag{14}
\]
We also have the useful budget
\[
\boxed{t\le\alpha(1-u)-s.}                             \tag{15}
\]
Indeed \((a-t)(c-b)\ge s+bt\), \(c-b\le1-u\), and
\(a-t\le\alpha-t\) imply
\((\alpha-t)(1-u)\ge s+ut\).

### Both effective parameters are below 1/4

Insert (15) in (14). It gives
\[
3s\le1-u-2u^2-v(3-3u-2u^2).                            \tag{16}
\]
The coefficient of \(v\) is positive for \(u<1/2\).
If \(v\ge1/4\), the right side is at most
\(1/4-u/4-3u^2/2<1/4<3s\), a contradiction.

If \(u\ge1/4\), use \(\beta>s\) to insert
\(v>s/(1-u-s)\) in (16). The denominator is positive, and the
result requires
\[
N(u,s):=3s^2+4su^2+7su-7s+2u^3-u^2-2u+1\ge0.
\]
On \(1/4\le u\le1/2\), \(7/64\le s\le11/100\),
\[
N_s=6s+4u^2+7u-7\le-46/25<0.
\]
Put \(z=u-1/4\in[0,1/4]\). Then
\[
N(u,s)\le N(u,7/64)
=2z^3+\frac{15}{16}z^2-\frac{73}{64}z-\frac{173}{4096}
\le-\frac{25}{32}z-\frac{173}{4096}<0.
\]
The last comparison uses \(2z^3\le z^2/2\) and
\((23/16)z^2\le(23/64)z\). Thus
\[
\boxed{u,v<1/4.}                                        \tag{17}
\]
In particular \(p=(u+v)/2<1/4\), as needed for Lemma 1.
Also (13) gives \(t<\alpha-s<1-5s<1/2\).

### The same sharp weight absorbs the inward change

The \(ABC,GCO\) calculation now gives
\[
(s+ut)(1-y)\le(\alpha-t)(x-u-s).                        \tag{18}
\]
To check all signs, \(GCO\ge s\) bounds
\((c-b)(1-y)\le x-u-s\); both sides are positive.
Multiply by \(a-t>0\), use
\((a-t)(c-b)\ge s+bt\), and then use (13).
As before,
\[
sx\le\beta(1-v-y-s).
\]
Before substituting \(X,Y\), the upper bound on \(BOE\) is
\[
(1-v-t)X+(1-u)Y\le(1-v)(1-u)-s.                         \tag{19}
\]
Its first coefficient is positive because \(1-v\ge e>t\).

Add (18) and the unchanged inequality after rearranging, and then add
\(\lambda\) times (19). The coefficients of \(X,Y\) are
\[
\alpha-t-s+\lambda(1-v-t),\qquad
\beta-s-ut+\lambda(1-u).
\]
The first is positive by (13), (19). For the second,
\(ut<1/8\) and \(\lambda(1-u)>3/16\), by (1), (17), and
\(t<1/2\); it too is positive.
Insert \(X\ge2u,Y\ge2v\). Direct collection now gives
\[
\boxed{H+\lambda(g-s)
\ge t\{1-s-2u(1+v+\lambda)\}.}                         \tag{20}
\]
The braces exceed
\[
1-\frac{11}{100}-\frac12\left(1+\frac14+\frac13\right)
=\frac{59}{600}>0.
\]
Lemma 1 bounds the left side of (20) by zero, forcing \(t=0\).
The original sharp theorem supplies the equality classification.
This proves Theorem 3. \(\square\)

## Symmetry and precise scope

Reflection in \((x,y)\mapsto(1-y,1-x)\) preserves the sharp chamber,
exchanging \(A,F\), \(B,E\), \(C,D\), and \(G,H\).
Thus Theorems 2--3 also cover the corresponding inward-moving
\(D,E\) chambers with the reflected height conditions.
The condition in Theorem 2 becomes an inward horizontal displacement
of \(D\) smaller than \(1-f\).

Theorems 2--3 do not by themselves prove that every seven-boundary
exterior configuration has one of these orientations. They are sharp
continuous inequalities available for that remaining classification.

## Verification

[check_sharp_bc_moving.py](check_sharp_bc_moving.py) checks the moving
determinants, exact tangent weight, two weighted scalar identities,
and every printed rational gap. The proof uses no subdivision or
numerical optimization. The original sharp theorem is used only after
the moving coordinate has been proved to be zero.
