# Bounds for a side pair and a top point

Let \(s=93/1000\). Use the C1 contacts

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),\qquad d\le h\le1,\ f\le c\le1,
\]

and suppose every unsigned actual doubled triangle is at least \(s\).
There are two right-cap points and an actual top-cap point. Choose
the outer right point \(P=(p,q)\) by the intercept construction in
C1_EXTERIOR_REDUCTION.md. The other right point \(Q=(l,m)\) lies
strictly inside both \(CDP\) and \(ODP\). These facts give

\[
 d>\rho:=347/500,\qquad
 U:=-[CDP]=d(p-c)-(1-c)q\ge3s,\qquad cq\ge s.
 \tag{1}
\]

This note proves uniform bounds, including four affine barycentric
inequalities for \(Q\). It does not by itself exclude a C1 count.
Section 5 records the precise hypotheses that transfer to N6.

## 1. A top point forces both opposite contact heights below .897

The top cap with actual endpoints \(D,F\) has doubled area
\((1-d)(1-f)\), so its actual point gives

\[
 (1-d)(1-f)\ge s.
\]

The actual anchor areas \(-[OHF]=hf\) and
\([HDF]=1-h+f(h-d)\) give the exact nonnegative combination

\[
 f([HDF]-s)+(1-f)(-[OHF]-s)=f-df^2-s\ge0.
 \tag{2}
\]

Put \(a=897/1000\). If \(d\ge a\), the top cap would imply
\(f\le1-s/(1-a)=10/103\). The polynomial \(x-ax^2\) increases
for \(0\le x\le10/103\), since its derivative there is at least
\(4253/5150>0\). Therefore

\[
 f-df^2-s\le\frac{10}{103}
 -\frac{897}{1000}\left(\frac{10}{103}\right)^2-s
 =-\frac{46337}{10609000}<0,
\]

contradicting (2). Hence \(d<a\). Transposition gives \(f<a\).
This argument only needs the one occupied top cap, not a side pair.

## 2. The side pair gives a narrow bottom-contact interval

Multiply the \(U\) inequality in (1) by \(c\), and use \(cq\ge s\).
Since \(p\le1\), this gives

\[
 dc(1-c)\ge s(1+2c).
 \tag{3}
\]

Thus \(g(c)\ge0\), where

\[
 g(x)=a x(1-x)-s(1+2x).
\]

At the two rational endpoints,

\[
\begin{array}{c|cc}
 x&g(x)&g'(x)\\ \hline
 .165&-4233/40000000&.41499\\
 .628&-15903/62500000&-.415632
\end{array}
\]

The derivative is decreasing. Consequently \(g\) is increasing
up to .165 and decreasing from .628 onward, and is negative on
both excluded intervals. We conclude

\[
 \boxed{\quad .694<d\le h\le1,\qquad .165<c<.628,
             \qquad s\le f\le c.\quad}
 \tag{4}
\]

If the actual triangle \(OHC\) contains a point, subdivision gives
\(hc\ge3s\), hence the stronger \(c\ge3s=.279\).
Any other proved lower bound \(c\ge\kappa\) may be used below.

## 3. The outer side point and top point

Before using \(p\le1\) in (3), the same calculation gives

\[
 p\ge c+\frac{2s}{d}+\frac{s}{dc}
 >c+\frac{2s}{a}+\frac{s}{ac}
 \ge2\sqrt{s/a}+\frac{2s}{a}>.851.
 \tag{5}
\]

The final strict comparison follows by squaring: \(.851-2s/a>0\)
and \(a(.851-2s/a)^2<4s\). Also, for any valid lower bound
\(c\ge\kappa\),

\[
 \frac{s}{.628}<q\le d-\frac{3s}{1-c}
 <a-\frac{3s}{1-\kappa}.
 \tag{6}
\]

For a top point \(T=(x,y)\), its positive cap area gives

\[
 (1-d)(x-f)\ge s,\qquad(1-f)(y-d)\ge s.
\]

In particular

\[
 x\ge s+\frac{s}{1-\rho},\qquad
 y\ge\rho+\frac{s}{1-s},\qquad x,y\le1.
 \tag{7}
\]

These closed lower bounds include square-side contacts.

## 4. The inner side point has three barycentric weights above 2/9

The actual outer triangle has the uniform upper bound

\[
\begin{aligned}
 U&\le(1-c)\left(d-\frac{s}{c}\right)\\
  &<(1-c)\left(a-\frac{s}{c}\right)
    =a+s-ac-\frac{s}{c}\\
  &\le a+s-2\sqrt{as}<\frac92s.
\end{aligned}
\tag{8}
\]

For the last comparison, \(a+s=99/100\) and

\[
 as-\left(\frac{a+s-(9/2)s}{2}\right)^2
 =\frac{28287}{16000000}>0.
\]

Each barycentric coordinate of \(Q\) in \(CDP\) equals an actual
subtriangle area divided by \(U\), so is strictly larger than
\(s/U>2/9\). Subtract \(2/9\) from each of the three weights;
the three remainders are nonnegative and sum to \(1/3\).
Since \(c\le p\le1\) and \(0\le q\le d\), coordinate-wise
minimum and maximum estimates give

\[
\begin{aligned}
 9l&\ge5c+2+2p,&
 9l&\le2c+2p+5,\\
 9m&\ge2d+2q,&
 9m&\le5d+2q.
\end{aligned}
\tag{9}
\]

Every inequality in (9) is affine in the original coordinates.
No numerical enclosure or optimizer is used in obtaining it.

## 5. Exact scope of the virtual-corner transfer

The derivation of (2)--(9) uses \(O\) only through the inequalities
\(hf\ge s\) and \(cq\ge s\). Thus it remains valid if \(O\)
is virtual, provided those two inequalities follow from actual points,
the side-pair reduction still gives (1), and \(H,D,F,C,P,Q,T\)
are actual points with the stated projection and cap conditions.

For the N6 contacts, write \(A=(0,\alpha)\), \(B=(\beta,0)\)
below \(H,C\). Then

\[
 hf\ge(h-\alpha)f=A(AHF)\ge s,
 \qquad cq\ge(c-\beta)q=A(BCP)\ge s.
\]

The N6 right-pair support theorem gives the same actual containment
\(Q\in CDP\), with \(D\) denoting its right contact, and the
stronger endpoint bound \(d(1-\beta)\ge(4+2\sqrt3)s\).
In particular \(d>\rho\), so (4)--(9) apply unchanged.
The nontriangular four actual points \(A,H,B,C\) lie in the
virtual endpoint triangle \(OHC\); the four-point endpoint theorem
additionally gives \(hc\ge4s\). Thus N6 may use
\(\kappa=4s=.372\) in (6), even without an interior point of \(OHC\).
This transfer asserts the displayed bounds only, not a transfer of
any C1 count exclusion that also uses an actual lower point.

For this N6 value of \(\kappa\), one can sharpen (5) without another
geometric assumption. Since \(a\kappa^2>s\), the function
\(x+2s/a+s/(ax)\) is increasing for \(x\ge\kappa\). Therefore

\[
 p>\kappa+\frac{2s}{a}+\frac{s}{a\kappa}
   =\frac{192421}{224250}>\frac{858}{1000},\qquad
 q<a-\frac{3s}{1-\kappa}
   =\frac{71079}{157000}<\frac{453}{1000}.
\]

These bounds can be combined directly with the four affine
inequalities (9) for the actual inner point.

There is also a stronger N6 barycentric conclusion. In (8), put
\(\phi(x)=(1-x)(a-s/x)\). For \(x\ge\kappa=4s\),

\[
 \phi'(x)=-a+s/x^2\le-a+s/\kappa^2<0,
\]

using the same exact comparison \(a\kappa^2>s\). Thus

\[
 U<\phi(c)\le\phi(\kappa)
   =(.628)(.897-.25)=.406316
   <\frac{35}{8}s=.406875.
\]

The final gap is exactly \(559/10^6\). Every barycentric weight
of \(Q\) in \(CDP\) therefore exceeds \(8/35\). Subtracting
these three lower weights leaves nonnegative remainders summing to
\(11/35\). The same coordinate extrema used in Section 4 now give
the four sharper affine inequalities

\[
\begin{aligned}
 35l&\ge19c+8+8p,&
 35l&\le8c+8p+19,\\
 35m&\ge8d+8q,&
 35m&\le19d+8q.
\end{aligned}
\tag{10}
\]

These strengthened factors use the N6 fact \(hc\ge4s\).
The more general inequalities (9) remain valid without that added
hypothesis.

The companion [check_c1_side_pair_top_bounds.py](check_c1_side_pair_top_bounds.py)
checks the displayed identities and rational comparisons exactly.
