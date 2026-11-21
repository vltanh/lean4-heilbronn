# A triangle capacity for the adjacent-cap chord \(CR,FH\)

Use the contacts and two cap points \(R=(r,d)\), \(S=(t,z)\)
in the [adjacent-cap setup](N6_ADJACENT_CAPS_LINE.md). At doubled
minimum \(s=93/1000\), the actual triangle \(CRF\) has doubled area
strictly below \(347/500\). It therefore has capacity one for the
other actual points. In IIRT this forces the line \(CF\) to separate
the two upper points when their line crosses \(CR,FH\).

## Contact inequalities and the area expression

Put \(D=e-d>0\), \(U=1-t\ge0\), \(\delta=1-r\ge0\), and
\[
 Z=(1-f)(1-h)+f(1-e)>0.
\]
The actual tests at \(CRE,RES,ESF,SFH\) give
\[
 \begin{aligned}
 s&\le (1-c)D-e\delta,\\
 s&\le DU+(z-e)\delta\le DU+(1-e)\delta,\\
 s&\le f[ESF]+(1-f)[SFH]=(t-f)Z .
 \end{aligned}
\]
In the last line both triangle areas are at least \(s\), and the
weights are positive and sum to one. The expanded expression
follows by canceling the terms with \(1-z\). Adding the first
inequality with weight \(1-e\) to the second with weight \(e\)
gives
\[
 s\le D\{eU+(1-e)(1-c)\}.
\]
The area to be bounded is
\[
 [CRF]=r-c+(c-f)d
       =1-c+(c-f)e-\bigl((c-f)D+\delta\bigr).
\]

The bounds \(4s\le c,e\le1-s\) and \(f<347/500\) follow
from Sections 2 and 5 of the adjacent-cap setup. We also have
\(f\ge b>\alpha=1037/10000\). In fact the actual lower ears give
\(a\ge s/(c-b)\ge s/(1-b)\) and \(b(1-a)\ge s\), so
\(b(1-b)\ge s\), whereas \(\alpha(1-\alpha)=9294631/10^8<s\).

## Bounds on one closed rectangle

Let \([c_0,c_1]\times[e_0,e_1]\times[f_0,f_1]\) be a rectangle
in \([4s,1-s]^2\times[\alpha,347/500]\).
Define
\[
 h_0=\max\left(e_0,\,
 \begin{cases}
 s/f_1+s/(c_1-f_1),&2f_1\le c_0,\\
 4s/c_1,&2f_1>c_0 .
 \end{cases}\right)
\]
Indeed \([ABC],[HAB]\ge s\) give \(h\ge s/(c-b)+s/b\).
If \(2f_1\le c_0\), the right side decreases with \(b\) up to
\(c/2\), and \(b\le f\le f_1\le c/2\). It decreases with \(c\)
at fixed \(b\). Otherwise its reciprocal arithmetic mean bound
is \(4s/c\ge4s/c_1\). The other term \(e_0\) is justified by \(h\ge e\).

Consequently \(Z\le Z_0=1-h_0+f_1(h_0-e_0)\). The function
\(1-h+f(h-e)\) decreases with \(h\) and \(e\) at fixed \(f\),
and \(h_0-e_0\ge0\). In a feasible rectangle \(Z_0>0\).
Put
\[
 L=1-f_0-s/Z_0.
\]
The third contact inequality gives \(0\le U\le L\). A negative
\(L\) is already contradictory. Otherwise set
\[
 \begin{aligned}
 B&=\max_{x\in\{e_0,e_1\}}\{x L+(1-x)(1-c_0)\},\\
 D_-&=\max\{s/B,\ s/(1-c_0)\},\\
 D_+&=e_1-s/(c_1-\alpha).
 \end{aligned}
\]
A feasible rectangle has \(B>0\). The upper bound \(B\)
follows by substituting \(U\le L,c\ge c_0\) and maximizing the
resulting affine function of \(e\) at an endpoint. The combined
right-cap inequality gives \(D\ge s/B\), and the first contact
inequality gives \(D\ge s/(1-c_0)\). Also \([BCR]=(c-b)d\ge s\)
gives \(D\le D_+\). Thus \(D_->D_+\) is contradictory.

Set \(\lambda=\max(0,c_0-f_1)\), \(c_*=\max(c_0,f_0)\), and
\[
 G(x)=\lambda x+\max\{0,(s-Lx)/(1-e_0)\}.
\]
From the \(RES\) inequality and \(\delta\ge0\) we get
\((c-f)D+\delta\ge G(D)\).
On \(x\ge D_-\) the function \(G\) has its minimum at \(D_-\)
or at the kink \(s/L\) if \(L>0\) and the kink belongs to that
interval. The piece after the kink has nonnegative slope.
Finally \(1-c+(c-f)e\le1-c_*+(c_*-f_0)e_1\), since \(c-f\ge0\)
and the expression with \(e=e_1,f=f_0\) decreases in \(c\).
With \(M\) the stated minimum of \(G\), the area ceiling is
\[
                       [CRF]\le 1-c_*+(c_*-f_0)e_1-M .
\]

## The finite inequalities and the diagonal cut

The [interval table](N6_ADJACENT_CAPS_CRF_TABLE.md) starts at the
displayed full rectangle. Its 302 binary cuts have 303 leaves.
Fourteen have \(L<0\), seven have \(D_--D_+>0\), and the 282
remaining area ceilings are strictly below \(347/500\).
All endpoints are rational and each closed cut face is covered
by both child rectangles. The optional arithmetic check is

    python n10/hand/check_n6_adjacent_crf.py

For IIRT with line crossings \(CR,FH\), both upper points lie
inside the quadrilateral \(CRFH\) of its four endpoints. The two
triangles on \(CF\) are \(CRF\) and \(CFH\). The bound above and
Section 2 of the adjacent-cap setup make each triangle smaller
than \((4+2\sqrt3)s\). Neither contains both upper points, so
\(CF\) strictly separates them. If \(P\) precedes \(Q\) from
\(CR\) to \(FH\), then \([CFP]<0<[CFQ]\).
