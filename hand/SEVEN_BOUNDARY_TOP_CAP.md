# The remaining upper exterior cap with seven boundary contacts

Use the seven boundary contacts
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\
D=(1,d),\ E=(1,e),\ F=(f,1)
\]
with the order and projection assumptions of
[SEVEN_BOUNDARY_CAPS.md](SEVEN_BOUNDARY_CAPS.md), in particular
\(b\le f\le c,\ f\le1/2\).
At doubled minimum area \(s=7/64\), that note and
[GLOBAL_COMPLETION.md](GLOBAL_COMPLETION.md) exclude the three other
exterior caps, and show that the cap \(EF(1,1)\) contains at most one
free point.

Consider that remaining case. Write its point as \(X=(g,k)\), where
\(f<g<1,\ e<k\le1\), and write \(P\) for the other free point.
The latter is inside the original boundary heptagon.
This note excludes the full upper-quadrilateral placement of \(P\);
it does not yet classify all of its remaining orientations.

## 1. The upper quadrilateral is empty

**Theorem 1.** No further actual point \(P\) lies in the quadrilateral
\(HEX F\).

The four vertices occur in the indicated cyclic order. Their doubled
area is
\[
Q=(1-f)(k-h)+g(1-e)
\le(1-f)(1-h)+g(1-e).                                   \tag{1}
\]
Put
\[
L=h-a,\qquad R=e-d,\qquad M=c-b,\qquad
Z=\frac1L+\frac1R,\qquad T=L+R,\qquad \alpha=\frac{s}{M}.
\]
The actual triangles \(ABH,ABC,BCD,CDE,DEX\), together with \(f\ge b\),
give
\[
f\ge b\ge\frac{s}{L},\qquad
g,c\le1-\frac{s}{R},\qquad
M\le1-sZ,\qquad
h\ge\alpha+L,\quad e\ge\alpha+R.                        \tag{2}
\]
In particular \(sZ<1\), and \(\alpha\ge s/(1-sZ)\).
All factors in the following replacements are nonnegative:
\(1-\alpha-L\ge1-h>0\), and \(1-\alpha-R\ge1-e>0\).
Thus (1)--(2) imply
\[
\begin{aligned}
Q
&\le(1-\alpha-L)(1-s/L)+(1-\alpha-R)(1-s/R)\\
&=(1-\alpha)(2-sZ)-T+2s\\
&\le2-sZ-\frac{s(2-sZ)}{1-sZ}-T+2s.                    \tag{3}
\end{aligned}
\]

This is exactly the scalar bound used for the side quadrilateral in
Section 4 of [EIGHT_BOUNDARY.md](EIGHT_BOUNDARY.md); the inward height
of \(X\) has disappeared in the direct first inequality (1).
For clarity, the short scalar contradiction is reproduced here.

The right side of (3) decreases with \(sZ\in(0,1)\), and \(TZ\ge4\).
Set \(u=2s/T\), so \(0<u<1/2\). Substitution gives
\[
Q\le2(1-u)\left(1-\frac{s(1-u)}{u(1-2u)}\right).         \tag{4}
\]
If the actual quadrilateral contains \(P\), the five-point
quadrilateral lemma in Section 3 of EIGHT_BOUNDARY.md gives
\(Q\ge2(1+\sqrt2)s\).
Combining this with (4), and using \(\sqrt2>7/5\), requires
\[
s<
\frac{1-u}{12/5+(1-u)^2/[u(1-2u)]}.
\]
The right side is strictly below \(7/64=s\).
After multiplying positive denominators, the latter assertion is
\[
35-306u+827u^2-640u^3>0.
\]
For \(0<u\le3/10\), use the identity
\[
35-306u+827u^2-640u^3
=315(u-17/63)^2+\frac4{63}
+640(3/10-u)(u-1/4)^2.
\]
For \(3/10\le u<1/2\), use
\[
35-306u+827u^2-640u^3
=\frac7{20}+\frac{87}{5}(u-3/10)+123(u-3/10)^2
+640(1/2-u)(u-3/10)^2.
\]
Each right side is strictly positive on its stated interval.
This contradiction proves Theorem 1. A point on an edge or diagonal
already gives zero area, so no competitive boundary case is omitted.
\(\square\)

## 2. Consequence and remaining scope

The original boundary heptagon is partitioned by \(HE\) into its
lower part and the triangle \(HEF\). Since \(HEF\subset HEXF\),
the remaining free point must lie strictly below \(HE\).

The case now has exactly one exterior point \(X\) in the far upper cap,
and one point \(P\) inside the original heptagon below \(HE\).
The sharp moving-point chamber in Section 5 of GLOBAL_COMPLETION.md
covers some of these orientations. The other orientations are not
excluded by the present note.

## Verification

[check_seven_boundary_top_cap.py](check_seven_boundary_top_cap.py)
checks the doubled-area formula, scalar elimination, and both exact
positive-square identities. The supporting geometry and all monotone
inequality directions are proved in the text.

