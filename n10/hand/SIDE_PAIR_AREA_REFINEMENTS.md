# Actual side-pair area refinements

Throughout this note, brackets denote signed doubled areas and every
triangle on three distinct actual points has unsigned doubled area at
least \(s=93/1000\). The actual points lie in the closed unit square.
These are reusable inequalities for the open C1 and N6 side-pair counts;
this note alone closes no placement count.

## 1. The common side-pair domain

Let
\[
 B=(\beta,0),\quad C=(c,0),\quad E=(1,e),\quad
 F=(f,1),\quad H=(0,h),\quad R=(r,w),
\]
where \(0\le\beta<c\le1,\ 0\le f\le c,\ e\le h\le1\).
For C1, \(B\) is its actual corner \(O=(0,0)\).
For N6, \(B\) is the actual lower contact. Suppose that \(R\) is the
outer point in the actual side-pair labeling of
N6_SIDE_PAIR_REDUCTION.md (or the corresponding C1 labeling):
\[
 U=-[CER]=e(r-c)-(1-c)w\ge3s.
 \tag{1}
\]
The other side point is strictly inside the actual triangle CER; its
three positive fan areas give (1). We do not need a top-cap point.

The actual triangle HEF gives
\[
 s\le[HEF]=1-h+f(h-e)\le1-e.
\]
Write \(a=1-s=907/1000\); thus \(e\le a\).
Because \(r\le1\), (1) gives
\[
 0<3s\le U\le(1-c)(e-w).
 \tag{2}
\]
Consequently \(c<1,\ w<e,\ r>c\). The actual bottom triangle has
\([BCR]=(c-\beta)w>0\), so \(w>0\).

## 2. A small actual bottom triangle

Suppose that \(\beta\ge\epsilon\ge0\), put
\[
 x=c-\beta>0,\qquad L=1-\epsilon,\qquad y=L-x.
\]
Here
\(y=1-c+\beta-\epsilon>0\), and \(1-c\le y\).
Equation (2) therefore implies
\[
 w\le a-\frac{3s}{1-c}\le a-\frac{3s}{y}.
\]
Multiply by \(x=L-y>0\). The arithmetic-geometric mean inequality
now gives
\[
\begin{aligned}
 [BCR]=xw
 &\le x\left(a-\frac{3s}{L-x}\right)\\
 &=aL+3s-ay-\frac{3sL}{y}\\
 &\le aL+3s-2\sqrt{3saL}.
\end{aligned}
 \tag{3}
\]
All quantities under the square root and all denominators are positive.

For N6, N6_SIDE_PAIR_BOUNDS.md proves
\(\beta>1037/10000\). Use the weaker closed bound with
\(\epsilon=1037/10000\). Then
\[
 aL=\frac{8129441}{10000000},\qquad
 aL+\frac32s=\frac{9524441}{10000000}>0,
\]
and the exact square comparison is
\[
 12saL-\left(aL+\frac32s\right)^2
 =\frac{9585197519}{100000000000000}>0.
 \tag{4}
\]
Thus the last expression in (3) is strictly less than \(3s/2\):
\[
 \boxed{[BCR]<\frac32s=\frac{279}{2000}.}
 \tag{5}
\]

For C1, take \(\beta=\epsilon=0,\ L=1\). In this case
\(a+s=1>0\), and
\[
 12sa-(a+s)^2=\frac{3053}{250000}>0.
 \tag{6}
\]
Consequently
\[
 \boxed{[OCR]<2s=\frac{93}{500}.}
 \tag{7}
\]
Equations (5) and (7) refer to the named outer point \(R\); they are
not asserted for the inner point under an unchanged label.

## 3. Four actual-area comparisons

For N6 also let \(A=(0,\alpha)\), \(0\le\alpha\le1\).
The following are exact polynomial identities:
\[
\begin{aligned}
 [EFR]-U &=1-r+(c-f)(e-w),\\
 [EHR]-U &=h(1-r)+c(e-w),\\
 -[AER]-U &=\alpha(1-r)+c(e-w),\\
 -[BER]-U &=(c-\beta)(e-w).
\end{aligned}
 \tag{8}
\]
Every term on their right sides is nonnegative, by the domain already
proved. Thus the displayed determinants have the indicated signs, and
\[
 [EFR],\ [EHR],\ |AER|,\ |BER|\ \ge U\ge3s.
 \tag{9}
\]
The first, second and fourth comparisons apply to C1 as well. If
\(A=O\), the third comparison is the same actual corner comparison;
no additional distinct-point triangle is introduced.

These comparisons also hold for any point in the right cap with
\(U=-[CER]>0\), with \(3s\) in (9) replaced by that positive \(U\).
The side-pair hypothesis is used only for the further lower bound
\(U\ge3s\).

The unconditional four-point signed-area identity additionally gives
\[
 |BER|=[BCE]+U-[BCR].
 \tag{10}
\]
For example, (5), (1) and (10) imply
\(|BER|>[BCE]+3s/2\) in N6. This retains a correlation between actual
areas, rather than replacing all of them by separate constants.

Reflection across the square diagonal gives the corresponding left-side
results, with the actual labels transposed.

## 4. Exact checking and scope

The companion check_area_relations.js expands all four identities (8)
and (10) from the actual coordinates and verifies both positive square
gaps (4) and (6) using exact rational arithmetic. The proof above supplies
the geometric domain, signs and denominator conditions. It uses neither
a numerical optimum nor an unprinted search result.
