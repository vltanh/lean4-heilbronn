# Separating the two actual upper ears

Let \(s=93/1000\). Use the six actual normalized contacts
\[
 A=(0,a),\quad B=(b,0),\quad C=(c,0),\quad
 E=(1,e),\quad F=(f,1),\quad H=(0,h),
\]
where
\[
 0<a<h\le1,\quad0<b<c\le1,\quad
 a\le e\le h,\quad b\le f\le c.
 \tag{1}
\]
All actual points lie in the closed unit square, and every actual
distinct-point triangle has unsigned doubled area at least \(s\).
Suppose there is a further actual point \(G\) in the lower
quadrilateral HABC. There may be other actual points.

**Theorem.** If the actual triangle CEF contains two further actual
points, the actual triangle HEF contains no further actual point.

The theorem requires no order of the two upper points and no choice
between the lower ear or central placements of \(G\). It applies in
both N6 and N7 when the stated actual contacts and lower point exist.
It is a local exclusion, not a closure of either whole family.

## 1. The necessary contact inequalities

The endpoint-five theorem applies to the actual points H,C,A,B,G in
the virtual triangle \((0,0),H,C\), whose doubled area is \(hc\).
Its two prescribed endpoints H,C are actual. Thus
\[
 hc\ge(3+2\sqrt2)s>L,\qquad
 L=\frac{2911}{500}s=\frac{270723}{500000}.
 \tag{2}
\]
The rational weakening follows from
\[
 2-\left(\frac{1411}{1000}\right)^2
 =\frac{9079}{1000000}>0.
\]
The two actual lower-anchor clearances are
\[
 a(c-b)\ge s,\qquad b(h-a)\ge s.
 \tag{3}
\]

Suppose, to obtain a contradiction, that CEF contains two actual
points and HEF contains one. The established two-interior triangle
bound and the three-fan identity give
\[
\begin{aligned}
 [CEF]&=1-c+e(c-f)\ge T,
 &T&=\frac{149}{20}s=\frac{13857}{20000},\\
 [HEF]&=1-h+f(h-e)\ge3s.
\end{aligned}
 \tag{4}
\]
Here \(149/20<4+2\sqrt3\); for example
\(3-(69/40)^2=39/1600>0\).
Put
\[
 R=1-T=\frac{6143}{20000},\qquad
 W=1-3s=\frac{721}{1000},\qquad
 H_0=\frac{37}{50}.
 \tag{5}
\]
The second area in (4) is at most \(1-e\), since
\((1-e)-[HEF]=(1-f)(h-e)\ge0\). Therefore \(e\le W\).
The first inequality in (4) is
\[
 c(1-e)+ef\le R.
 \tag{6}
\]
We split at the rational height \(h=H_0\). Both weak cases cover
the equality face.

## 2. Heights at most \(37/50\)

Assume \(h\le H_0\). Since \(c-b\le1\), (3) gives \(a\ge s\).
Its other inequality and \(f\ge b\) give
\[
 f\ge b\ge\frac{s}{h-a}\ge\frac{s}{H_0-s}.
\]
All denominators are positive: \(b(h-a)\ge s>0\), and \(H_0>s\).
Equation (2) also gives \(c\ge L/H_0\).

Because \(c\ge f\) and \(e\le W\),
\[
\begin{aligned}
 c(1-e)+ef
 &=c-e(c-f)\\
 &\ge c-W(c-f)\\
 &\ge (1-W)\frac{L}{H_0}
       +W\frac{s}{H_0-s}>R.
\end{aligned}
 \tag{7}
\]
The exact gap in the last comparison is
\[
 (1-W)\frac{L}{H_0}
       +W\frac{s}{H_0-s}-R
 =\frac{149992399}{239390000000}>0.
 \tag{8}
\]
This contradicts (6).

## 3. Heights at least \(37/50\)

Assume \(h\ge H_0\). As \(hc\ge L\) and \(h\le1\), we have
\(c\ge L>R\); also \(h\ge H_0>W\). Equation (4) now says
\[
 e(c-f)\ge c-R>0,\qquad f(h-e)\ge h-W>0.
 \tag{9}
\]
Let
\[
 X=e(c-f),\quad Y=f(h-e),\quad
 U=ef,\quad V=(c-f)(h-e).
\]
These quantities are positive. Their exact identities are
\[
 X+Y+U+V=hc,\qquad XY=UV.
 \tag{10}
\]
Subtract (9), then apply arithmetic-geometric mean to \(U,V\):
\[
\begin{aligned}
 (1-h)(1-c)+R+W-1
 &=hc-c-h+R+W\\
 &\ge hc-X-Y=U+V\\
 &\ge2\sqrt{UV}=2\sqrt{XY}\\
 &\ge2\sqrt{(c-R)(h-W)}.
\end{aligned}
 \tag{11}
\]

On the other hand \(c\ge L/h\), so the left side in (11) is at most
\[
 (1-h)(1-L/h)+R+W-1.
\]
For \(h\ge H_0\), the exact difference
\[
 (1-H_0)(1-L/H_0)-(1-h)(1-L/h)
 =(h-H_0)\left(1-\frac{L}{H_0h}\right)
 \tag{12}
\]
is nonnegative, because
\[
 H_0^2-L=\frac{3077}{500000}>0.
\]
Thus that left side is at most
\[
 M=(1-H_0)(1-L/H_0)+R+W-1
   =\frac{113211}{1156250}>0.
 \tag{13}
\]
But \(c\ge L,\ h\ge H_0\), and
\[
 4(L-R)(H_0-W)-M^2
 =\frac{43956097541}{5347656250000}>0.
 \tag{14}
\]
Equations (11)--(14) imply
\(M\ge2\sqrt{(L-R)(H_0-W)}>M\), a contradiction.
The two height cases prove the theorem.

## 4. The complete E-only upper-pair cut

In the all-interior N7 count \((1,2,0)\), let the two upper points
\(O,P\) lie in the actual convex quadrilateral HCEF. Choose the
already permitted ordering \([HOP]<0\).
For the complete pair-line word
\[
 [HOP]<0,\quad[COP]<0,\quad[EOP]>0,\quad[FOP]<0,
 \tag{15}
\]
the line OP crosses the sides CE and EF of HCEF. The portion of
this line inside HCEF lies in the actual triangle CEF: its two
boundary intersections lie on CE and EF, and CEF is convex.
Consequently both O and P are strictly inside CEF. Strictness
follows from the positive minimum for all actual triangle areas.

The theorem makes HEF empty. Each upper point already has the
positive EF and FH edge tests of the heptagon. Thus a negative
\([EHO]\), or respectively \([EHP]\), would put that point strictly
inside HEF. Zero is an actual collinear triple. Therefore the
whole word (15) forces
\[
 \boxed{[EHO]>0,\qquad[EHP]>0.}
 \tag{16}
\]
This excludes every EHO-negative subbranch of (15) in both central
lower contact orders, and proves the same conclusion for either
upper-point label. It does not exclude the E-only word with both
positive EH tests.

The statement before the ordering is more general: whenever two
actual upper points lie in CEF, both have the positive EH tests.
The same actual-contact argument applies to the corresponding N6
one-lower placement.

## 5. Independent exact checks

check_upper_ear_separation.js expands the actual area formulas,
both identities in (10), and the cleared rational identity (12).
It checks the five strictly positive rational comparison gaps and
all displayed rational constants. The written
proof supplies all sign and positivity hypotheses. Independent
mathematical review checked both height cases, the endpoint-five
application, and the complete pair-line-to-ear containment argument.
