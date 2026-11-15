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
This note excludes the upper, lower, and left side-quadrilateral
placements of \(P\). It does not yet classify all remaining orientations.

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

## 2. The lower quadrilateral is empty

**Theorem 2.** The point \(P\) cannot lie in \(ABCD\).

Here write
\[
L=h-a,\quad R=e-d,\quad M=c-b,\quad T=g-f,\quad
\delta=1-k,\quad Z=1/L+1/R,\quad V=1-sZ.
\]
The anchor inequalities give
\[
b,f\ge s/L,\quad c,g\le1-s/R,\quad M,T\le V,
\quad a,d\ge s/M.                                      \tag{5}
\]
In particular \(L,R<1-s/V\). The two upper triangles give
\[
h\le1-s/T+f\delta/T,\qquad
e\le1-s/T-(1-f)\delta/T.                                \tag{6}
\]
The doubled area of \(ABCD\) is
\(Q=a(1-b)+cd\). Substitution of (6) yields
\[
Q\le(1-s/T-L)(1-b)+(1-s/T-R)c
 +\frac{\delta}{T}\{f(1-b)-c(1-f)\}.                    \tag{7}
\]

If the expression in braces is nonpositive, discard its term and
increase \(T\) to \(V\). Both new factors \(1-s/V-L\) and
\(1-s/V-R\) are positive by (5). We may therefore decrease \(b\)
to \(s/L\) and increase \(c\) to \(1-s/R\). This gives exactly
the bound (3), and the same scalar contradiction excludes \(P\).

Suppose instead that the expression in braces is positive. Use both
upper bounds \(h\le1\) and the first inequality in (6). As a function
of \(\delta\), the resulting upper bound for \(Q\) increases up to
\(\delta=s/f\) and decreases thereafter. Indeed, before that value
its slope is the positive coefficient in (7); afterwards its slope
is \(-c(1-f)/T<0\). Evaluating at that value gives
\[
Q\le(1-L)(1-b)+c\left(1-R-\frac{s}{fT}\right).           \tag{8}
\]
Since \(fT=f(g-f)\le g^2/4\) and \(g\le1-s/R\),
\[
fT(1-R)\le\frac14(1-s/R)^2(1-R)<s.                      \tag{9}
\]
For completeness, the strict scalar estimate follows from
\[
(1-s/R)(1-R)\le(1-\sqrt s)^2,\qquad
1-s/R\le1-s,
\]
and
\[
\sqrt s>5/16,\qquad
4s-(1-s)(11/16)^2=271/16384>0.
\]
Thus the second summand in (8) is negative. Also \(bL\ge s\), so
\[
Q<(1-L)(1-b)\le(1-\sqrt s)^2<(11/16)^2
 <\frac{24}{5}s<2(1+\sqrt2)s.
\]
Lemma 3 of EIGHT_BOUNDARY.md again excludes an actual point in this
quadrilateral. Both signs in (7) have been covered. \(\square\)

## 3. The left quadrilateral is empty

**Theorem 3.** The point \(P\) cannot lie in \(FHAB\).

Retain \(L,R,M,T,\delta\) from Section 2, and set
\[
U=1-s/M-s/T,\qquad k_R=1-s/R.
\]
The right-side budget from (5)--(6) gives
\[
0<R\le U-(1-f)\delta/T\le U<1.                          \tag{10}
\]
Moreover
\[
b\le k_R-M,\qquad f\le k_R-T.
\]
The doubled area \(Q=b(1-a)+fh\) therefore satisfies
\[
\begin{aligned}
Q&\le b(1-s/M)+f(1-s/T)+f^2\delta/T\\
 &\le (1-s/R)(1+U)-(M+T)+2s+f^2\delta/T.                \tag{11}
\end{aligned}
All replaced coefficients are positive: \(M>s\) follows from
\(aM\ge s\), and \(T>s\) from the second upper triangle in (6).

We first prove the elementary estimate
\[
\frac{f^2}{1-f}<\frac{s(1+U)}{U^2}.                     \tag{12}
\]
The projection convention gives \(f\le1/2\). If \(U\le7/12\),
this and
\[
s(1+7/12)-\frac12(7/12)^2=7/2304>0
\]
prove (12), because \(U^2/(1+U)\) increases with \(U>0\).

For the remaining range, let
\[
k(u)=1-s/u,\quad D(u)=1-u-s/k(u),\quad
F(u)=k(u)-s/D(u).
\]
As \(R\le U\), we have \(M\le k(U)\) and \(T\le k(U)-f\).
The identity \(s/T=1-U-s/M\) then gives
\[
D(U)>0,\qquad f\le F(U),\qquad
U^2-(1-s)U+s\le0.
\]
The last polynomial is increasing above \(3/4\) and has value
\(1/256>0\) there, so \(U<3/4\).
For \(u\ge7/12\) with \(D(u)>0\),
\[
D(u)\le5/12,\qquad
D'(u)=-1+\frac{s^2}{(u-s)^2}\le-160/169,
\]
and consequently
\[
F'(u)=\frac{s}{u^2}+\frac{sD'(u)}{D(u)^2}
\le s\left(\frac{144}{49}-\frac{160}{169}\frac{144}{25}\right)
=-6507/23660<0.
\]
The interval down to \(7/12\) stays in \(D>0\), since \(D\) is
decreasing there. The exact values
\[
F(7/12)=299/704<7/16,\qquad
F(2/3)=2461/8320<1/3
\]
now finish (12). For \(7/12\le U\le2/3\), use
\[
s(1-f)(1+U)-U^2f^2
>s\frac9{16}\frac{19}{12}-\left(\frac7{24}\right)^2
=455/36864>0.
\]
For \(2/3\le U<3/4\), use
\[
s(1-f)(1+U)-U^2f^2
>s\frac23\frac53-\frac1{16}=17/288>0.
\]

By (10), \(\delta/T\le(U-R)/(1-f)\). Integrating the derivative
\(s(1+U)/r^2\) of the first term in (11), or simply subtracting its
endpoint values, gives
\[
\begin{aligned}
Q
&\le(1-s/R)(1+U)-(M+T)+2s
       +\frac{f^2}{1-f}(U-R)\\
&\le(1-s/U)(1+U)-(M+T)+2s.                              \tag{13}
\end{aligned}
Indeed, for \(R\le r\le U\), (12) bounds the added slope strictly
below \(s(1+U)/r^2\). With \(Z=1/M+1/T\), the last expression
is exactly (3), now with \(M,T\) as the two gaps. The scalar
contradiction in Section 1 proves the theorem. \(\square\)

## 4. Consequence and remaining scope

The original boundary heptagon is partitioned by \(HE\) into its
lower part and the triangle \(HEF\). Since \(HEF\subset HEXF\),
the remaining free point must lie strictly below \(HE\).

The lower and left exclusions additionally put \(P\) above \(AD\)
and on the interior side of \(BF\).
The case now has exactly one exterior point \(X\) in the far upper cap,
and one point \(P\) inside the original heptagon below \(HE\), above
\(AD\), and outside \(FHAB\).
The sharp moving-point chamber in Section 5 of GLOBAL_COMPLETION.md
covers some of these orientations. The other orientations are not
excluded by the present note.

## Verification

[check_seven_boundary_top_cap.py](check_seven_boundary_top_cap.py)
checks the doubled-area formulas, scalar eliminations, slope bounds,
and both exact positive-square identities. The supporting geometry
and all monotone inequality directions are proved in the text.

