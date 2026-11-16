# Side-pair bounds without an occupied top cap

Let \(s=93/1000\). Use the actual N6 contacts

\[
 A=(0,\alpha),\quad B=(\beta,0),\quad
 H=(0,h),\quad C=(c,0),\quad E=(1,e),\quad F=(f,1),
\]

with \(0\le\alpha<h\le1\), \(0\le\beta<c\le1\),
\(e\le h\), and \(f\le c\). All points lie in the closed unit square, and all unsigned actual
doubled triangle areas are at least \(s\). Suppose the right side pair has the
established outer/inner labeling

\[
 P=(p,q),\qquad Q=(l,m)\in\operatorname{int}(CEP),\qquad
 U:=-[CEP]=e(p-c)-(1-c)q\ge3s.
 \tag{1}
\]

The side-pair reduction supplies this labeling. This note uses no
occupied top cap and excludes no count by itself.

Put

\[
 \epsilon=\frac{1037}{10000},\qquad
 a=1-s=\frac{907}{1000},\qquad \eta=1-\epsilon.
\]

Then

\[
 \boxed{\quad
 p>\frac{183}{200},\qquad c<\frac{77}{125},\qquad
 q>\frac{930}{5123},\qquad U<\frac{50}{13}s.
 \quad}
 \tag{2}
\]

In particular, every barycentric weight of the inner point \(Q\)
in \(CEP\) exceeds \(13/50\). This gives the four affine bounds

\[
\begin{aligned}
 50l&\ge24c+13+13p,&
 50l&\le13c+13p+24,\\
 50m&\ge13e+13q,&
 50m&\le24e+13q.
\end{aligned}
 \tag{3}
\]

Square-side contacts are allowed.

## 1. The actual lower contacts and the right-contact ceiling

The actual anchor clearances give

\[
 \alpha(c-\beta)\ge s,\qquad
 \beta(h-\alpha)\ge s.
 \tag{4}
\]

If \(z=\min(\alpha,\beta)\), one of the left sides in (4) is at
most \(z(1-z)\). For \(z\le\epsilon<1/2\), this would imply

\[
 s\le z(1-z)\le\epsilon(1-\epsilon)<s,
 \qquad s-\epsilon(1-\epsilon)=\frac{5369}{10^8}>0.
\]

Consequently \(\alpha,\beta>\epsilon\).

The actual triangle \(HEF\) satisfies

\[
 s\le[HEF]=1-h+f(h-e)\le1-e,
 \tag{5}
\]

because \(0\le f\le1\) and \(h\ge e\). Thus \(e\le a\).
This is a weak inequality; no strict ceiling below \(a\) is used.

The actual triangle \(BCP\) gives

\[
 (c-\beta)q\ge s.
 \tag{6}
\]

In particular \(q>0\). From (1) and \(p\le1\),

\[
 0<U\le(1-c)(e-q).
\]

Hence \(c<1\), \(q<e\), and (1) also gives \(c<p\le1\).
These inequalities justify all denominators and the coordinate
extrema used below.

For reference, using \(p\le1\) retains the following complete
nonnegative identity:

\[
\begin{aligned}
 &e(c-\beta)(1-c)
       -s\{3(c-\beta)+1-c\}\\
 &\quad=(c-\beta)(U-3s)
 +(1-c)\bigl((c-\beta)q-s\bigr)
 +e(c-\beta)(1-p)\ge0.
\end{aligned}
 \tag{7}
\]

The last term is part of the identity, including when \(p=1\).

## 2. The outer point lies beyond .915

Before using \(p\le1\), combine (1) and (6) to obtain

\[
 p\ge c+\frac{3s}{e}+\frac{s(1-c)}{e(c-\beta)}
   =c+\frac{2s}{e}
      +\frac{s(1-\beta)}{e(c-\beta)}.
 \tag{8}
\]

At fixed \(c<1\), the function
\((1-\beta)/(c-\beta)\) increases with \(\beta<c\):
its derivative is \((1-c)/(c-\beta)^2>0\).
Using \(\beta>\epsilon\) and \(e\le a\) in (8) therefore gives

\[
 p>c+\frac{2s}{a}
      +\frac{s(1-\epsilon)}{a(c-\epsilon)}.
\]

Set \(x=c-\epsilon>0\). The arithmetic-geometric mean inequality
now yields

\[
 p>\epsilon+\frac{2s}{a}
          +x+\frac{s\eta}{ax}
 \ge\epsilon+\frac{2s}{a}+2\sqrt{\frac{s\eta}{a}}.
 \tag{9}
\]

The final expression exceeds \(183/200=.915\). An exact check is

\[
 D:=\frac{183}{200}-\epsilon-\frac{2s}{a}
    =\frac{5498491}{9070000}>0,\qquad
 4s\eta-aD^2
    =\frac{8117242919}{90700000000000}>0.
 \tag{10}
\]

Thus \(2\sqrt{s\eta/a}>D\), proving the first bound in (2).
The strictness comes from \(\beta>\epsilon\), not from a strict
version of \(e\le a\).

## 3. The bottom contact lies below .616

Equation (6) and \(\beta>\epsilon\) imply
\(q>s/(c-\epsilon)\). Therefore

\[
 3s\le U\le(1-c)(e-q)
        <(1-c)\left(a-\frac{s}{c-\epsilon}\right).
 \tag{11}
\]

Multiplication by the positive number \(c-\epsilon\) gives
\(g(c)>0\), where

\[
 g(x)=a(x-\epsilon)(1-x)
            -s\{3(x-\epsilon)+1-x\}.
\]

Its derivative is

\[
 g'(x)=a(1+\epsilon-2x)-2s,
\]

which is strictly decreasing. At \(b=77/125=.616\),

\[
 g(b)=-\frac{269697}{1250000000}<0,\qquad
 g'(b)=-\frac{3023681}{10000000}<0.
 \tag{12}
\]

Hence \(g\) remains negative for every \(x\ge b\), contradicting
\(g(c)>0\) if \(c\ge b\). Thus \(c<77/125\), and then

\[
 q>\frac{s}{c-\epsilon}>
    \frac{s}{77/125-\epsilon}
    =\frac{930}{5123}.
 \tag{13}
\]

## 4. The outer triangle and the inner barycentric weights

Use (11) without its lower bound, and again write
\(x=c-\epsilon>0\). Since \(1-c=\eta-x\),

\[
\begin{aligned}
 U&<(1-c)\left(a-\frac{s}{c-\epsilon}\right)\\
  &=(\eta-x)\left(a-\frac{s}{x}\right)
    =a\eta+s-ax-\frac{s\eta}{x}\\
  &\le a\eta+s-2\sqrt{as\eta}.
\end{aligned}
 \tag{14}
\]

This upper bound is strictly below
\((50/13)s=93/260\). The exact comparison is

\[
 T:=a\eta+s-\frac{93}{260}
   =\frac{71272733}{130000000}>0,\qquad
 4as\eta-T^2
   =\frac{31014498590711}{16900000000000000}>0.
 \tag{15}
\]

Every barycentric weight of \(Q\) in the actual triangle \(CEP\)
is an actual subtriangle area divided by \(U\). Equations (1) and
(14)--(15) therefore make each weight greater than \(13/50\).
Write these three weights as

\[
 \lambda_C=13/50+r_C,\qquad
 \lambda_E=13/50+r_E,\qquad
 \lambda_P=13/50+r_P,
\]

where \(r_C,r_E,r_P\ge0\) and
\(r_C+r_E+r_P=11/50\). Since
\(c\le p\le1\) and \(0\le q\le e\), the four exact remainder
identities are

\[
\begin{aligned}
 50l-24c-13-13p
   &=50r_E(1-c)+50r_P(p-c),\\
 13c+13p+24-50l
   &=50r_C(1-c)+50r_P(1-p),\\
 50m-13e-13q
   &=50r_Ee+50r_Pq,\\
 24e+13q-50m
   &=50r_Ce+50r_P(e-q).
\end{aligned}
 \tag{16}
\]

All four right sides are nonnegative, proving (3).

## 5. Retaining both lower-anchor clearances gives weights above 3/11

The two inequalities in (4) give a stronger outer-area bound than
(14). This improvement uses no occupied top cap. In this section put
\(x=c-\beta>0\). The exact nonnegative combination is

\[
\begin{aligned}
 \beta x-sc
 &=\beta(\alpha x-s)
   +x\{\beta(h-\alpha)-s\}
   +\beta x(1-h)\ge0.
\end{aligned}
 \tag{17}
\]

Since \(c=\beta+x\), (17) says
\(\beta(x-s)\ge sx>0\). Consequently

\[
 x>s,\qquad
 \beta\ge\frac{sx}{x-s},\qquad
 c\ge\frac{x^2}{x-s}.
 \tag{18}
\]

The clearance (6), \(p\le1\), and \(e\le a\) give

\[
 0<U\le(1-c)\left(a-\frac{s}{x}\right).
 \tag{19}
\]

Because \(c<1\), its second factor is positive. Thus
\(x>s/a>1/10\); the last comparison follows from
\(s-a/10=23/10000>0\). Also \(x=c-\beta<1\).
The factor \(a-s/x\) is positive, so (18) may be substituted into
(19) with the stated direction:

\[
 U\le
 \frac{(x-x^2-s)(ax-s)}{x(x-s)}.
 \tag{20}
\]

Both factors in the denominator are positive. Define the exact cubic

\[
\begin{aligned}
 R(x)&=\frac{11}{3}s\,x(x-s)-(x-x^2-s)(ax-s)\\
 &=\frac{907}{1000}x^3-\frac{659}{1000}x^2
       +\frac{72819}{500000}x-\frac{8649}{1000000}.
\end{aligned}
 \tag{21}
\]

Here is a complete positive-coefficient proof that \(R(x)>0\) on
\([1/10,1]\). For each interval \([L,H]\) in the table, set
\(x=L+(H-L)t\), \(0\le t\le1\). The displayed entries satisfy
the exact polynomial identity

\[
 R(L+(H-L)t)
 =b_0(1-t)^3+3b_1t(1-t)^2+3b_2t^2(1-t)+b_3t^3.
 \tag{22}
\]

| \(L\) | \(H\) | \(b_0\) | \(b_1\) | \(b_2\) | \(b_3\) |
|---|---|---|---|---|---|
| \(1/10\) | \(3/10\) | \(1159/5000000\) | \(1781/600000\) | \(2731/5000000\) | \(1107/5000000\) |
| \(3/10\) | \(2/5\) | \(1107/5000000\) | \(59/1000000\) | \(3157/7500000\) | \(11071/5000000\) |
| \(2/5\) | \(1\) | \(11071/5000000\) | \(64869/5000000\) | \(376307/5000000\) | \(384989/1000000\) |

All twelve coefficients are strictly positive. The four Bernstein
weights in (22) are nonnegative and sum to one, including at both
endpoints. The three intervals cover every admissible \(x\).
Equations (20)--(22) therefore prove

\[
 \boxed{\quad U<\frac{11}{3}s=\frac{341}{1000}.\quad}
 \tag{23}
\]

Every barycentric weight of \(Q\) in \(CEP\) is consequently
strictly greater than \(3/11\). Subtract \(3/11\) from the three
weights to obtain nonnegative remainders \(r_C,r_E,r_P\) with sum
\(2/11\). The same coordinate extrema as in (16) give

\[
\begin{aligned}
 11l&\ge5c+3+3p,&
 11l&\le3c+3p+5,\\
 11m&\ge3e+3q,&
 11m&\le5e+3q.
\end{aligned}
 \tag{24}
\]

The four differences in (24) are exactly
\(11\{r_E(1-c)+r_P(p-c)\}\),
\(11\{r_C(1-c)+r_P(1-p)\}\),
\(11(r_Ee+r_Pq)\), and
\(11\{r_Ce+r_P(e-q)\}\), respectively.
All are nonnegative. These stronger inequalities have their own
constants; no previously defined factor is reinterpreted.

There is also a useful upper bound on each actual fan triangle.
Its area is \(U\) minus the other two positive fan areas, each at
least \(s\). Thus all three fan triangles satisfy

\[
 |CEQ|,\ |CPQ|,\ |EPQ|<\frac53s=\frac{31}{200}.
 \tag{25}
\]

These bounds use actual triangles throughout. Reflection in the
square diagonal gives the corresponding left-side statement.

The companion [check_n6_side_pair_bounds.py](check_n6_side_pair_bounds.py)
contains exact rational checks of (7), (10), (12), (13), (15),
the derivative of \(g\), all eight barycentric remainder identities,
the contact combination (17), and the cubic and Bernstein identities
(21)--(22).
The proof above is independent of a numerical search or a feasibility
solver.
