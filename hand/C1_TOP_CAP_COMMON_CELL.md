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

**Theorem.** In this entire placement, the line \(LM\) cannot put
\(C\) on one side and all three of \(O,H,F\) on the other.

This is a complete exclusion of the indicated pair-line case. The
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

## 3. Exact diagnostic

Run

```
python hand/check_c1_top_cap_common_cell.py
```

The checker verifies the isolated-endpoint scaling, cap substitution,
both derivative identities, and every displayed rational comparison.
It uses no floating-point search or numerical premise.
