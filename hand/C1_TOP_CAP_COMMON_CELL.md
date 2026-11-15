# Pair-line exclusions in the remaining C1 common-cell placement

Use the actual anchors

\[
O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
D=(1,d),\quad F=(f,1),
\qquad 0<d\le h\le1,\quad 0<f\le c\le1,
\]

in a competitive nine-point configuration. Thus every unsigned actual
doubled triangle area is at least

\[
s=\frac8{73}<2A_0,\qquad
K=4+2\sqrt3,\qquad \rho=\frac{49}{60}<Ks.
\]

There are two lower points \(L,M\) inside \(OHC\), one top-cap
point \(X=(x,Y)\) beyond \(DF\), and one other point \(P\)
inside the original anchor pentagon. The previous
[side-ear](C1_TOP_CAP_SIDE_EARS.md),
[radial](C1_TOP_CAP_RADIAL_SPLIT.md), and
[\(OF\)-split](C1_TOP_CAP_OF_SPLIT.md) exclusions allow us to reflect
and label this remaining placement so that

\[
P,M\in OCX,\qquad L\in OHX,\qquad
L,M\in OHC\cap OCF.
\]

All containments here and below are strict. In particular,

\[
hc\ge Ks>\rho,\qquad cY\ge Ks>\rho,
\qquad f<x<c.                                           \tag{1}
\]

The last inequality is the independent cap argument in Section 2 of
the \(OF\)-split note. The point \(P\) will not otherwise be used.

**Theorems.** In this entire placement, the line \(LM\) cannot isolate
\(C\) from \(O,H,F\), and it cannot isolate \(O\) from
\(C,H,F\).

These are complete exclusions of the two indicated pair-line cases. The
other pair-line cases in the common-cell placement remain separate.

## 1. The isolated-endpoint inequality

Put

\[
p=hc,\qquad z=\frac{hf}{c},\qquad W=c+hf=c(1+z).
\]

The two lower points lie in both containing triangles of the convex
quadrilateral \(O,C,F,H\). Their doubled areas are \(p,c\),
and its total doubled area is \(W\). Its canonical overlap is

\[
p+c-W=h(c-f)>0.
\]

Suppose \(LM\) isolates \(C\). The general weighted endpoint
calculation in Section 1 of
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md), before its
specialization of the threshold, gives

\[
[pc-s(W+c)]^2\ge4sWpc,\qquad pc-s(W+c)>0.                \tag{2}
\]

To specify the labels and scaling, use that note's cyclic vertices
\((A,B,C',D')=(O,C,F,H)\), so its containing areas are
\(a=p\), \(b=c\). Isolating \(B\) uses the version with
\(W+b\). Dividing all doubled areas by \(W\), applying the
weighted identity at threshold \(s/W\), and clearing \(W^4\)
gives (2). This use needs the algebraic weighted identity, not the
numerical conclusion of that theorem.

Divide (2) by \(c^2>0\). We obtain

\[
G(p,z):=[p-2s-sz]^2-4sp(1+z)\ge0,
\qquad p-2s-sz>0.                                      \tag{3}
\]

The actual triangle \(OHF\) gives \(hf\ge s\), and \(c\le1\),
so \(z\ge s\). At every positive-bracket point,

\[
\frac{\partial G}{\partial z}
=-2s(p-2s-sz)-4sp<0.
\]

Thus decreasing \(\!z\) to \(s\) preserves (3). The resulting
upward quadratic in \(p\) is negative at the positive zero of
its bracket. Hence a feasible positive-bracket point lies at or beyond
its larger root. With \(p_0=71/80\),

\[
p_0-2s-s^2>0,\qquad
G(p_0,s)=-\frac{169041839}{181748742400}<0.
\]

Consequently

\[
\boxed{p>p_0=\frac{71}{80}.}                            \tag{4}
\]

We also have the useful linear upper bound

\[
\boxed{z<2p-\frac53.}                                   \tag{5}
\]

Indeed the bracket at \(z_0=2p-5/3\) is
\(p(1-2s)-s/3>0\) for \(p\ge p_0\). Directly,

\[
G(p,z_0)=-\frac{12807p^2-11280p-64}{47961}.
\]

At \(p_0\) this is \(-80087/306950400<0\), its derivative
is \(-152699/639480<0\), and its second derivative is
\(-2846/5329<0\). It is therefore negative for every
\(p\ge p_0\). If \(z\ge z_0\), both endpoint brackets
are positive, and the negative \(z\)-derivative in the intervening
interval gives \(G(p,z)\le G(p,z_0)<0\), contradicting (3).

## 2. The cap gives an incompatible upper bound

The two actual cap-area costs are

\[
\alpha=-[HFX]=(1-h)x+f(h-Y)\ge s,
\qquad
\beta=[CDX]=(1-c)Y+d(c-x)\ge s.
\]

Since \(x<c\) and \(d\le h\), the second inequality gives

\[
x\le c+\frac{(1-c)Y-s}{h}.
\]

Substitute this upper bound in \(\alpha\), using \(1-h\ge0\).
The coefficient of \(Y\) in the result is

\[
\frac{(1-h)(1-c)-hf}{h}<0,
\]

because \(h,c\ge\rho\), \(hf\ge s\), and
\((1-\rho)^2<s\). We may therefore replace \(Y\) by its
lower bound \(\rho/c\). In terms of \(p,z,c\), this proves

\[
s\le\alpha\le
\mathcal A(p,c,z):=
(c-p)\left(1-\frac{s}{p}
                 +\frac{\rho(1-c)}{cp}\right)
 +zc\left(1-\frac{\rho}{p}\right).                      \tag{6}
\]

By (4), \(p>p_0>\rho\). Thus the coefficient of \(z\)
in (6) is positive, and (5) permits replacing \(z\) by
\(2p-5/3>0\). For fixed \(p,z\),

\[
\frac{\partial\mathcal A}{\partial c}
=1-\frac{s+\rho}{p}+\frac{\rho}{c^2}
 +z\left(1-\frac{\rho}{p}\right)
\ge1-\frac{s+\rho}{p_0}+\rho
=\frac{80129}{103660}>0.
\]

We can therefore increase \(c\) to one, keeping \(p,z\) fixed.
It follows that

\[
\alpha\le
F(p):=(1-p)\left(1-\frac{s}{p}\right)
       +\left(2p-\frac53\right)
          \left(1-\frac{\rho}{p}\right).
\]

For \(p\le1\),

\[
F'(p)=1-\frac{5\rho/3-s}{p^2}<0,
\qquad \frac{5\rho}{3}-s=\frac{3289}{2628}>1.
\]

Finally,

\[
\alpha\le F(p_0)
=s-\frac{8711}{3731760}<s,
\]

contradicting the actual \(HFX\) cost. This proves the theorem.

## 3. The line cannot isolate the corner \(O\)

Suppose now that \(LM\) isolates \(O\), and write

\[
L=(\ell,y),\qquad M=(m,t).
\]

Orient \(LM\) from \(L\) to \(M\). Its signed determinant at
\(O\) is negative because the rays \(OL,OM\) are respectively
to the \(H\)- and \(C\)-sides of \(OX\). Thus its determinants
at \(C,H,F\) are positive. Subtracting its determinant at \(O\)
from those at \(C,H\) shows, respectively, that

\[
y>t,\qquad m>\ell.
\]

Put \(a=m-\ell>0\), \(b=y-t>0\). The actual \(CLM,HLM\)
costs give

\[
(c-\ell)b-ya\ge s,\qquad (h-y)a-\ell b\ge s.
\]

Multiply the first inequality by \(h-y>0\), the second by
\(y>0\), and add. This yields

\[
(y-t)(hc-h\ell-cy)\ge hs.                              \tag{7}
\]

The actual \(OCM\) cost gives \(ct\ge s\). On putting
\(v=cy\), we therefore have \(v>s\) and

\[
(v-s)(p-h\ell-v)\ge ps.                                \tag{8}
\]

The two opposite-edge costs for \(L\), with signs fixed by its
membership in \(OHC\cap OCF\), are

\[
\ell-fy\ge s,\qquad hf+(1-h)\ell-fy\ge s.
\]

The first gives \(h\ell\ge hs+zv\). Multiplying (8) by
\(1-h\ge0\) and using the second gives a further inequality
without dividing by \(1-h\). The two results are

\[
\begin{aligned}
F_1&=(v-s)\{p-hs-(1+z)v\}-ps\ge0,\\
F_2&=(v-s)\{(1-h+z)(p-v)-hs\}-ps(1-h)\ge0.
\end{aligned}                                          \tag{9}
\]

### A monotone reduction to \(c=1\)

Keep \(p,z,v\) fixed and decrease \(h=p/c\) to \(p\).
To justify this scalar relaxation, let

\[
F_0=(v-s)(p-v)-ps.
\]

The first inequality in (9) gives
\(F_0\ge(v-s)(hs+zv)>0\). Moreover,

\[
\frac{\partial F_1}{\partial h}=-s(v-s)<0,
\qquad
\frac{\partial F_2}{\partial h}=-F_0-s(v-s)<0.
\]

Both inequalities in (9) are therefore preserved under this decrease.
Independently, the cap bound (6) increases when \(c\) is increased
to one with \(p,z\) fixed, because throughout \(p\ge\rho\),
\(c\le1\), \(z>0\),

\[
\frac{\partial\mathcal A}{\partial c}
\ge1-\frac{s+\rho}{\rho}+\rho
=\rho-\frac{s}{\rho}
=\frac{146473}{214620}>0.
\]

Thus a necessary scalar system is obtained by setting \(h=p,c=1\)
in (9) and (6). No actual motion of the configuration is asserted.

Set

\[
a_2=1-p+z>0,\qquad
B_1=p-s(1+p+z),\qquad B_2=a_2(p-s)-ps.
\]

Writing \(w=v-s>0\), the two inequalities in (9) become

\[
w\{B_1-(1+z)w\}\ge ps,
\qquad
w(B_2-a_2w)\ge ps(1-p).
\]

Their positive brackets and quadratic maxima imply

\[
\begin{aligned}
B_1&>0,&
G_1(p,z)&:=B_1^2-4sp(1+z)\ge0,\\
B_2&>0,&
G_2(p,z)&:=B_2^2-4a_2ps(1-p)\ge0.
\end{aligned}                                          \tag{10}
\]

The second bracket is strictly positive even at \(p=1\), since
\(w>0\) and \(a_2>0\). The relaxed cap cost is

\[
s\le(1-p)\left(1-\frac{s}{p}\right)
        +z\left(1-\frac{\rho}{p}\right).               \tag{11}
\]

## 4. Two univariate quartics contradict the relaxed system

**First interval: \(\rho\le p\le89/100\).** We claim
\(z>3/20\). For fixed \(p\) in this interval, \(G_2\) is
an upward quadratic in \(a_2=1-p+z\), negative at the positive
zero of \(B_2\). Hence the two conditions involving \(B_2,G_2\)
in (10) place \(a_2\) at or beyond the larger root. Increasing
\(z\) preserves them. If \(z\le3/20\), they would remain true
at \(z=3/20\). But the quartic

\[
\begin{aligned}
P_1(p)&:=2131600\,G_2(p,3/20)\\
&=2131600p^4-5837080p^3+5365281p^2-1692432p+33856
\end{aligned}
\]

is strictly negative throughout this interval, by the exact certificate
below. Thus \(z>3/20\).

Decreasing \(z\) to \(3/20\) increases the positive bracket
\(B_1\) and decreases the subtracted term in \(G_1\), so it
preserves the first line of (10). For fixed \(z=3/20\), \(G_1\)
is an upward quadratic in \(p\), negative at the positive zero
of its bracket. The larger-root argument permits increasing \(p\)
to \(89/100\). This would give

\[
0\le G_1(89/100,3/20)
=-\frac{48147}{10658000}<0,
\]

a contradiction.

**Second interval: \(89/100\le p\le1\).** The coefficient
\(1-\rho/p\) in (11) is positive. Solving it for \(z\) gives

\[
z\ge q(p):=\frac{p^2-p+s}{p-\rho}.
\]

Decrease \(z\) to this lower bound. As before, the positive-bracket
condition and \(G_1\ge0\) are preserved. Consequently

\[
P_2(p):=102233667600(p-\rho)^2G_1(p,q(p))\ge0.
\]

After clearing the displayed denominator, the quartic is

\[
\begin{aligned}
P_2(p)={}&17515357200p^4-79495677240p^3
 +98117240305p^2\\
&-37399223344p+613850176.
\end{aligned}
\]

Its exact certificate below is again strictly negative, a contradiction.
The two intervals exhaust the parameter range and exclude the entire
\(O\)-isolated case.

### The ten exact Bernstein coefficients

For \(P_1\), substitute \(p=\rho+(11/150)\theta\); for
\(P_2\), substitute \(p=89/100+(11/100)\theta\). Write each
result as

\[
P_i(p(\theta))=\sum_{k=0}^4 b_{i,k}\binom4k
                          \theta^k(1-\theta)^{4-k}.
\]

The following integers give all five coefficients after multiplication
by a positive common denominator:

| \(k\) | \(10125000\,b_{1,k}\) | \(1500000\,b_{2,k}\) |
|---:|---:|---:|
| 0 | -10883875000 | -7879524510312 |
| 1 | -4215963750 | -101309868116010 |
| 2 | -1228984425 | -288190723895375 |
| 3 | -798761115 | -577077596272500 |
| 4 | -1176942798 | -972679354500000 |

The degree-four Bernstein basis functions are nonnegative and sum to
one on \([0,1]\). Every coefficient is strictly negative, so both
claimed interval inequalities follow.

## 5. Exact diagnostic

Run

```
python hand/check_c1_top_cap_common_cell.py
```

The checker verifies the isolated-endpoint scaling, cap substitution,
the monotone reductions, both quartic identities, all ten Bernstein
coefficients, and every displayed rational comparison.
It uses no floating-point search or numerical premise.
