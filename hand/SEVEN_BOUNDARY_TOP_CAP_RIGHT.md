# The final side quadrilateral beside a seven-boundary exterior point

Use the notation and hypotheses of
[SEVEN_BOUNDARY_TOP_CAP.md](SEVEN_BOUNDARY_TOP_CAP.md):
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\
D=(1,d),\ E=(1,e),\ F=(f,1),\ X=(g,k),
\]
where \(X\) is beyond \(EF\), \(b\le f\le c\), and \(f\le1/2\).
Every actual triangle has unsigned doubled area at least
\(s=7/64\). In particular \(f<g<1\), \(e<k\le1\).
The companion point \(P\) is inside the original boundary heptagon.

**Theorem.** The doubled area of the convex quadrilateral \(CDEX\)
is strictly below \(21/40\). Consequently \(P\) cannot lie in
\(CDEX\).

The last assertion follows from the five-point quadrilateral lemma:
an actual point inside an actual quadrilateral requires doubled area
at least \(2(1+\sqrt2)s>24s/5=21/40\). An edge or diagonal
position gives a zero triangle. The proof below uses only the eight
displayed points to bound the quadrilateral's area.

## 1. The bottom contact is to the right of 3/20

Write
\[
M=c-b,\quad T=g-f,\quad \delta=1-k,\quad
w=\min(1-c,1-g).
\]
The anchor inequalities imply
\[
h\ge\frac{s}{M}+\frac{s}{b},\qquad
e\ge\frac{s}{M}+\frac{s}{w},\qquad
M\le1-w-b,\quad T\le1-w-f.                              \tag{1}
\]
The two positive upper areas are
\[
[HFX]_{\rm abs}=T(1-h)+f\delta\ge s,\qquad
[EFX]_{\rm abs}=T(1-e)-(1-f)\delta\ge s.
\]
Multiplying these by \(1-f,f\), respectively, cancels \(\delta\).
Using (1) gives the necessary inequality
\[
\Phi(b,f,w):=\frac{1-f}{b}+\frac{f}{w}
 +\frac1{1-w-b}+\frac1{1-w-f}\le\frac1s.                 \tag{2}
\]

We prove \(b>3/20\). Theorem 9 of
[SEVEN_BOUNDARY_CAPS.md](SEVEN_BOUNDARY_CAPS.md) already gives
\[
\frac18<b\le\frac12,\qquad
c\ge\frac{b^2}{b-s},\qquad M\ge\frac{sb}{b-s}.
\]
Suppose \(b\le3/20\). On \((1/8,3/20]\), the last two lower
bounds decrease with \(b\). Therefore
\[
c\ge\frac{36}{65},\qquad M\ge\frac{21}{52},\qquad
s<w<\frac12,
\quad\frac18<f\le\frac12.                              \tag{3}
\]
Raise \(b\) in (2) to \(\beta=3/20\), keeping \(f,w\) fixed.
Along this replacement,
\[
1-w-b'\ge M-(\beta-b)>\frac{21}{52}-\frac1{40}>\frac38,
\]
and hence
\[
\frac{\partial\Phi}{\partial b'}
=\frac1{(1-w-b')^2}-\frac{1-f}{(b')^2}
<\frac{64}{9}-\frac{200}{9}<0.
\]
Thus (2) would imply \(\Phi(3/20,f,w)\le64/7\).

Here is a small explicit polynomial certificate for the opposite
strict inequality on the whole rectangle in (3). Put
\[
\begin{split}
\mathcal P(f,w)
={}&\left[\frac{20}{3}(1-f)-\frac{64}{7}\right]
 w(17/20-w)(1-f-w)\\
&+f(17/20-w)(1-f-w)+w(1-f-w)+w(17/20-w).
\end{split}                                             \tag{4}
\]
This is \((\Phi(3/20,f,w)-64/7)w(17/20-w)(1-f-w)\),
with positive denominators at every point under consideration.
Its polynomial expansion is
\[
\begin{split}
420\mathcal P={}&-2800f^2w^2+2800f^2w-357f^2
-2800fw^3+4560fw^2-2693fw+357f\\
&-1040w^3+1084w^2-107w.
\end{split}                                             \tag{5}
\]
Map the rectangle to \([0,1]^2\) by
\(f=1/8+3x/8\), \(w=7/64+25y/64\). On each row below,
map the indicated half-intervals affinely to \([0,1]\) and express
\(\mathcal P\) in Bernstein degree \((2,3)\).

| Range of \(x\) | Range of \(y\) | Lower bound for all 12 coefficients |
|---|---|---:|
| \([0,1/2]\) | \([0,1/2]\) | \(719723/47185920\) |
| \([0,1/2]\) | \([1/2,1]\) | \(30369499/587202560\) |
| \([1/2,1]\) | \([0,1/2]\) | \(3304757/132120576\) |
| \([1/2,1]\) | \([1/2,1]\) | \(486691/8388608\) |

For a polynomial \(\sum a_{ij}x^iy^j\) of degrees \((n,m)\),
the coefficient with indices \((p,q)\) is
\[
\sum_{i\le p,\ j\le q}a_{ij}
\frac{\binom pi}{\binom ni}\frac{\binom qj}{\binom mj}.
                                                               \tag{6}
\]
Thus the table is a finite rational identity check, with its complete
polynomial and conversion rule displayed. Every coefficient is positive;
the Bernstein basis is nonnegative and sums to one. Hence
\(\mathcal P>0\), contradicting (2). We have proved
\[
\boxed{b>3/20.}                                         \tag{7}
\]

## 2. The exterior point is higher than H

We next prove \(k>h\). Suppose \(k\le h\). Then
\(\delta\ge1-h\), so the first upper-area inequality gives
\(s\le g\delta\). The other upper area and \(T\le g-b\) yield
\[
e\le1-\frac{s}{g}-\frac{s}{gT}
\le1-\frac{s}{g}-\frac{s}{g(g-b)}.
\]
Together with the lower bound for \(e\) in (1), this requires
\[
\frac1g+\frac1{g(g-b)}+\frac1{c-b}
 +\frac1{\min(1-c,1-g)}\le\frac{64}{7}.                 \tag{8}
\]
Decrease \(b\) to \(\beta=3/20\). Both affected terms decrease.
For fixed \(g\), minimizing the last two terms over \(c\) gives
\[
\min_c\left\{\frac1{c-\beta}
 +\frac1{\min(1-c,1-g)}\right\}
=\begin{cases}
4/(1-\beta),&g\le(1+\beta)/2,\\
1/(g-\beta)+1/(1-g),&g\ge(1+\beta)/2.
\end{cases}                                             \tag{9}
\]
Indeed, on \(c\le g\) the expression decreases with \(c\), and
on \(c\ge g\) the reciprocal sum is minimized at
\(c=(1+\beta)/2\) whenever that point is available.

If \(g\le23/40\), the two remaining terms decrease with \(g\).
Their endpoint value together with (9) exceeds \(64/7\) by
\(3816/2737>0\).
If \(g\ge23/40\), the required strict inequality, after
multiplying by \(140g(g-3/20)(1-g)>0\), is
\[
N(g):=1280g^3-1612g^2+332g+119>0.
\]
With \(t=g-23/32\ge-23/160\),
\[
N(g)=1280t^3+1148t^2-\frac32t+\frac{35}{256}
\ge964t^2-\frac32t+\frac{35}{256}>0.
\]
The last quadratic has positive leading coefficient and discriminant
\(-8399/16<0\). Both alternatives contradict (8), proving
\[
\boxed{k>h.}                                            \tag{10}
\]

## 3. Reduce the area bound to three scalar parameters

Let \(Q\) be the doubled area of \(CDEX\):
\[
Q=(1-c)(k-d)+(1-g)e.
\]
The following replacements are only scalar upper bounds for this area;
the companion point \(P\) is not moved or used in them.

First decrease \(f\) to \(b\). The two upper-area expressions have
derivatives \(h-k<0\) and \(e-k<0\) with respect to \(f\), so
both inequalities are preserved. The expression \(Q\) is unchanged.
Now write \(T=g-b\), and set
\[
a_*=s/M,\qquad h_*=s/M+s/b,\qquad \eta=1-h_*>0.
\]
Decrease \(d\) to \(a_*\) and \(h\) to \(h_*\); these
replacements increase \(Q\) or preserve it and weaken the upper
constraints. Increase \(e\) to
\[
e_*=1-\frac{s}{T}-\frac{(1-b)\delta}{T}.
\]
This increases \(Q\). The first upper-area inequality now requires
\[
\delta\ge\delta_*:=\max\left(0,\frac{s-T\eta}{b}\right).
\]
After substituting \(e_*\), the coefficient of \(\delta\) in
\(Q\) is
\[
-\left[(1-c)+\frac{(1-g)(1-b)}T\right]<0.
\]
We may therefore decrease \(\delta\) to \(\delta_*\), obtaining
an upper bound. All denominators and the stated coefficients are positive.

If \(\delta_*=0\), put \(U=1-s/M-s/T\). The first upper
constraint gives \(s/b\le U\), and direct substitution yields
\[
\begin{split}
Q&\le(1-b-M)(1-s/M)+(1-b-T)(1-s/T)\\
&\le(1-s/U)(1+U)-(M+T)+2s<21/40.                         \tag{11}
\end{split}
\]
The middle inequality decreases \(b\) to \(s/U\).
For the last, set \(Z=1/M+1/T\), so \(U=1-sZ\), and use
\((M+T)Z\ge4\). This is exactly the scalar bound (3)--(4) in
SEVEN_BOUNDARY_TOP_CAP.md; the two positive-square identities there
prove the strict bound \(24s/5=21/40\) without any point-containment
assumption.

It remains to treat \(\delta_*>0\). Introduce
\[
u=s/b,\qquad v=s/M,\qquad w=s/T,\qquad V=v+w.
\]
Then
\[
\frac7{32}\le u<\frac{35}{48},\qquad
\eta=1-u-v>0,\qquad w>\eta,\quad V>1-u.                 \tag{12}
\]
Substitution of the three endpoint values gives the exact expression
\[
Q\le C(u)-(u/s-1)(v+w)
 -s(1-u)\left(\frac1v+\frac1w+\frac{u}{vw}\right),
\qquad
C(u)=s-\frac{s}{u}+2u+\frac{u(1-u)}s.                    \tag{13}
\]
Since \(vw\le V^2/4\) and \(1-u>0\),
\[
Q\le C(u)-(u/s-1)V-\frac{4s(1-u)(V+u)}{V^2}.           \tag{14}
\]

## 4. A short scalar certificate for the inward case

We show that (14) is strictly below \(q=21/40\) throughout (12).
Write \(z=V-(1-u)\ge0\), and define
\[
\begin{split}
\mathcal R(u,z)
&=u\{[q-C(u)]V^2+(u/s-1)V^3+4s(1-u)(V+u)\}\\
&=C_0(u)+C_1(u)z+C_2(u)z^2+C_3(u)z^3.
\end{split}
\]
The four coefficients are
\[
\begin{aligned}
C_0&=\frac{(1-u)(320u^3-133u^2-82u+35)}{320},\\
C_1&=\frac{(u-1)(10240u^3-9120u^2+1939u-245)}{1120},\\
C_2&=-\frac{40960u^3-43200u^2+5789u-245}{2240},\\
C_3&=\frac{u(64u-7)}7.
\end{aligned}                                             \tag{15}
\]
Clearly \(C_3>0\). To prove \(C_0>0\), set \(t=u-1/2\).
Since \(t\ge-9/32\),
\[
320u^3-133u^2-82u+35
=320t^3+347t^2+25t+3/4
\ge257t^2+25t+3/4>0,
\]
whose last discriminant is \(-146<0\).

The remaining scalar checks are listed below. In each row, map the
printed interval affinely to \([0,1]\) and use the one-variable
version of (6).

| Polynomial | Interval | Degree | Bound for every Bernstein coefficient |
|---|---|---:|---:|
| \(C_1\) | \([7/32,13/20]\) | 4 | \(\ge2569/320000>0\) |
| \(C_2\) | \([7/32,35/48]\) | 3 | \(\ge2821/10240>0\) |
| \(D=C_1^2-4C_0C_2\) | \([13/20,35/48]\) | 8 | \(\le-582865829/6400000000<0\) |

For direct reproduction, the last polynomial is
\[
D=\frac{u(u-1)}{7840}
\left(655360u^6-2396160u^5+2778528u^4-1205910u^3
 +123249u^2+28126u-3430\right).                            \tag{16}
\]
Thus when \(u\le13/20\), every coefficient in (15) is positive.
When \(u\ge13/20\), the quadratic
\(C_0+C_1z+C_2z^2\) is positive for every real \(z\), since
\(C_2>0\) and \(D<0\). In either range, adding \(C_3z^3\ge0\)
gives \(\mathcal R(u,z)>0\).
As \(u,V^2>0\), this proves the required strict bound in (14).
Together with (11), it proves the theorem. \(\square\)

## Consequence and verification

The three side-quadrilateral exclusions in SEVEN_BOUNDARY_TOP_CAP.md
and the present theorem put \(P\) strictly inside both
\[
\operatorname{conv}(A,D,E,H)
\quad\text{and}\quad
\operatorname{conv}(B,C,X,F).
\]
This is the central-region conclusion needed before classifying the
remaining radial orientations. It is not yet a proof that the whole
exterior-cap case belongs to the already solved sharp chamber.

[check_seven_boundary_top_cap_right.py](check_seven_boundary_top_cap_right.py)
checks the scalar eliminations, determinant formulas, all 48 coefficients
in (4), all 18 coefficients in the final table, and the two quadratic
discriminants. The geometric replacements and their inequality directions
are proved above.
