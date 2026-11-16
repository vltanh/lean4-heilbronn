# A side pair, the opposite side cap, and the top cap cannot coexist

Use the C1 anchors and the threshold of
[C1_EXTERIOR_REDUCTION.md](C1_EXTERIOR_REDUCTION.md):

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),\qquad
 0<d\le h\le1,\quad0<f\le c\le1,\quad s=93/1000.
\]

Assume every unsigned actual doubled triangle area is at least \(s\).
Then the right cap cannot contain two actual points while both the
left and top caps contain an actual point. Transposition gives the
same assertion with left and right exchanged. The fifth free point
is unrestricted.

This excludes the entire C1 count families

\[
 (k,j,r,t,l)=(0,1,2,1,1),\qquad (1,0,2,1,1),
\]

and their reflections. All finite decimals below are exact rationals.

## 1. The two occupied side caps give a narrow anchor box

Choose the outer right-cap point \(P=(x,y)\) by the bottom-intercept
construction in C1_EXTERIOR_REDUCTION, Section 2. The other right-cap
point is strictly inside the actual triangle \(CDP\). In particular,

\[
 d>\rho:=347/500,\qquad
 d(x-c)-(1-c)y\ge3s,\qquad cy\ge s.
\]

Multiplying the last two inequalities as in that note gives

\[
 dc(1-c)\ge s(1+2c).
 \tag{1}
\]

Let \(L=(a,b)\) be an actual left-cap point. Its support inequality,
and the anchor bounds, give

\[
 fh(1-h)\ge s,\qquad f\le c,\quad h\ge d>\rho>1/2,
 \qquad d\le1-s=.907.
 \tag{2}
\]

The function \(z(1-z)\) decreases above \(1/2\). Hence (2) implies

\[
 c\ge c_0(d):=\frac{s}{d(1-d)}
 \ge\frac{s}{\rho(1-\rho)}>.43.
 \tag{3}
\]

For fixed \(d\), put
\(g_d(c)=dc(1-c)-s(1+2c)\).
For \(c\ge.43\) and \(d\le.907\),

\[
 g_d'(c)=d(1-2c)-2s
 \le(.907)(.14)-.186<0.
\]

Thus (1) and (3) require \(g_d(c_0(d))\ge0\). The exact identity

\[
 g_d(c_0(d))
 =\frac{-93\,p(d)}{10^6d(1-d)^2},\qquad
 p(d)=1000d^3-1000d^2-186d+279
 \tag{4}
\]

therefore gives \(p(d)\le0\). But \(p''(z)=6000z-2000>0\) for
\(z\ge\rho\), and

\[
\begin{array}{c|cc}
 z&p(z)&p'(z)\\ \hline
 .71&.751&-93.7\\
 .79&.999&106.3
\end{array}
\]

Consequently \(p\) is decreasing on \([\rho,.71]\), where it is
positive, and increasing on \([.79,.907]\), where it is also
positive. Thus

\[
 .71<d<.79.
 \tag{5}
\]

If \(c\ge.56\), increasing \(d\) to \(.79\) and using the same
strict decrease in \(c\) would give

\[
 g_d(c)\le g_{.79}(.56)=-.002504<0,
\]

contrary to (1). Hence \(f\le c<.56\).
Since \((.56)(.79)(.21)=.092904<s\), (2) then forces
\(h<.79\). Finally \(h\ge d>.71\) and (2) give

\[
 f\ge\frac{s}{h(1-h)}
 >\frac{s}{(.71)(.29)}>.45.
\]

We have proved the uniform box

\[
 \boxed{\ .71<d\le h<.79,\qquad .45<f\le c<.56.\ }
 \tag{6}
\]

## 2. Both actual side points lie close to their square sides

The area of \(CDP\) and \(cy\ge s\) give

\[
 x\ge c+\frac{s(1+2c)}{cd}
   =c+\frac{2s}{d}+\frac{s}{dc}.
\]

After replacing \(d\) by \(.79\), the right side is increasing in
\(c\ge.45\), since \((.79)(.45)^2>s\). Equation (6) therefore gives

\[
 x>.45+\frac{2s}{.79}+\frac{s}{(.79)(.45)}>.947,
 \qquad y\ge s/c>s/.56>.166.
 \tag{7}
\]

The left-cap clearance and \(ha\ge s\) similarly give

\[
 b\ge h+\frac{s}{fh}.
\]

After replacing \(f\) by \(.56\), the right side is increasing in
\(h\ge.71\), since \((.56)(.71)^2>s\). Thus

\[
 b>.71+\frac{s}{(.56)(.71)}>.943,
 \qquad a\ge s/h>s/.79>.117.
 \tag{8}
\]

The ordinary cap inequalities also give \(y<d\), \(a<f\),
\(x\le1\), and \(b\le1\). Actual contacts on the square boundary
are therefore included.

## 3. The top point has insufficient area from its anchor chord

Let \(Q=(u,v)\) be an actual top-cap point. Then
\(f<u\le1\) and \(d<v\le1\). The two side-point clearances have
fixed negative orientations and satisfy

\[
\begin{aligned}
 s\le-[DPQ]
   &=(1-x)(v-d)+(d-y)(1-u)\\
   &<(.053)(.29)+(.624)(1-u),\\[2mm]
 s\le-[FQL]
   &=(1-b)(u-f)+(f-a)(1-v)\\
   &<(.057)(.55)+(.443)(1-v).
\end{aligned}
 \tag{9}
\]

The estimates follow directly from (6)--(8). In particular, if
\(u\ge.876\), the first right side is at most

\[
 (.053)(.29)+(.624)(.124)=.092746<s;
\]

if \(v\ge.861\), the second is at most

\[
 (.057)(.55)+(.443)(.139)=.092927<s.
\]

Hence

\[
 u<.876,\qquad v<.861.
 \tag{10}
\]

The positive top-cap area is

\[
 -[DFQ]=(1-d)u+(1-f)v-1+df.
\]

It increases with \(u,v\), and decreases with \(d,f\) because
\(u>f\) and \(v>d\). Replacing \(d,f\) by their lower bounds
\(.71,.45\), then \(u,v\) by the upper bounds in (10), gives

\[
 s\le-[DFQ]
 <(.29)(.876)+(.55)(.861)-1+(.71)(.45)
 =.04709<s.
\]

This contradiction excludes every configuration in the asserted count
families. The proof uses only the published side-pair hull reduction,
actual triangle clearances, and the displayed one-variable inequalities.

The companion [check_c1_side_pair_opposite_top.py](check_c1_side_pair_opposite_top.py)
checks the identities and rational endpoint comparisons with exact
arithmetic. It does not search configurations or call an optimizer.
