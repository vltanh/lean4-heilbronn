# Continuous cap exclusions with seven boundary contacts

## Scope and normalization

Consider seven distinct boundary points

\[
\begin{array}{lll}
A=(0,a),&H=(0,h),&0<a<h<1,\\
B=(b,0),&C=(c,0),&0<b<c<1,\\
D=(1,d),&E=(1,e),&0<d<e<1,\\
F=(f,1),&&b\le f\le c.
\end{array}                                                  \tag{1}
\]

The other two configuration points are arbitrary points of the square.
The condition \(b\le f\le c\) is the opposite-contact projection
condition for the single top contact and the two bottom contacts. A
horizontal reflection allows us to assume

\[
                            f\le\frac12.                   \tag{2}
\]

This note excludes several complete continuous placement classes at the
strict bound \(7/128<A_0\). It does not prove the full seven-boundary
theorem. In particular, the surviving placements in the right portion
of the boundary heptagon, mixed placements, and exterior corner caps
are not silently discarded.

For all the contradictions below, assume that every triangle has area
at least \(7/128\), and fix the doubled threshold

\[
s=\frac7{64},\qquad L=h-a,\quad M=c-b,\quad R=e-d.
\]

Some boundary triangles give

\[
bL\ge s,\quad aM\ge s,\quad dM\ge s,\quad
(1-c)R\ge s,\quad (1-f)R\ge s.                            \tag{3}
\]

In particular \(b\ge s\), \(c\le1-s\), and \(M\le1-2s\).
We also use \(K=4+2\sqrt3\), the two-interior-point triangular-hull
constant proved in [CORNER_FAMILIES.md](CORNER_FAMILIES.md).

## 1. No free point in the near-side lower ear

**Theorem 1.** Under (1)-(2), if either free point is in
\(\triangle ABH\), some triangle has area less than \(7/128\).

**Proof.** A point on an edge of this triangle gives a zero-area
triangle, so suppose the free point is strictly inside. The three
triangles in its subdivision of \(ABH\) all have area at least
\(s/2\). Thus

\[
                              bL\ge3s.                    \tag{4}
\]

Since \(b\le f\le1/2\), (4) implies \(L\ge6s\). Also
\(a\ge s/M\), and

\[
M=c-b\le1-s-\frac{3s}{L}.
\]

This last upper bound is positive because \(M>0\). Therefore

\[
h=a+L\ge L+\frac{sL}{(1-s)L-3s}.
\]

The function on the right increases for \(L\ge6s\): its derivative
is

\[
1-\frac{3s^2}{((1-s)L-3s)^2}
\ge1-\frac{1}{3(1-2s)^2}
=\frac{851}{1875}>0.
\]

Consequently

\[
h\ge6s+\frac{2s}{1-2s}=\frac{749}{800}.                    \tag{5}
\]

Put \(\alpha=1-h\) and \(\beta=1-e\). Equation (5) gives
\(0\le\alpha\le51/800<s\). The triangle \(HFE\) has doubled
area

\[
(1-f)\alpha+f\beta\ge s.
\]

Since \(0<f\le1/2\), it follows that

\[
\beta\ge\alpha+\frac{s-\alpha}{f}\ge2s-\alpha,
\qquad \alpha+\beta\ge2s.                                \tag{6}
\]

The horizontal bottom budget and the sum of the two vertical budgets
now give, using (3)-(4),

\[
M+\frac{3s}{L}+\frac{s}{R}\le1,
\qquad
L+R+\frac{2s}{M}\le2-2s.                                 \tag{7}
\]

For the second inequality, explicitly
\(L+R=2-\alpha-\beta-a-d\), and both \(a,d\ge s/M\).
Add the first inequality of (7) to half the second and apply
\(z+q/z\ge2\sqrt q\) to its three pairs. This yields

\[
\begin{aligned}
2-s
&\ge M+\frac{s}{M}
       +\frac L2+\frac{3s}{L}
       +\frac R2+\frac{s}{R}\\
&\ge2\sqrt s\left(1+\sqrt{\frac32}+\sqrt{\frac12}\right).
\end{aligned}                                               \tag{8}
\]

At \(s=7/64\), this is impossible. Indeed
\(\sqrt7>21/8\), \(\sqrt6>12/5\), and \(\sqrt2>7/5\), each
checked by squaring positive rationals, imply

\[
2\sqrt s\left(1+\sqrt{\frac32}+\sqrt{\frac12}\right)
=\frac{\sqrt7}{4}\left(1+\frac{\sqrt6+\sqrt2}{2}\right)
>\frac{609}{320}>\frac{605}{320}=2-s.
\]

This contradicts (8). No location or property of the other free point
has been used. \(\square\)

Reflecting horizontally gives the corresponding exclusion of
\(\triangle CDE\) when the top point has \(f\ge1/2\).

## 2. Three triangles cannot contain both free points

**Theorem 2.** Under (1)-(2), neither \(\triangle BCF\),
\(\triangle HCF\), nor \(\triangle HBF\) can contain both free
points at minimum area at least \(7/128\).

**Proof.** Two free points in any of these actual triangles would be
strictly interior and would force its doubled area to be at least
\(Ks\).

For \(BCF\), its doubled area is \(M\le1-2s\). However

\[
(K+2)s=(6+2\sqrt3)\frac7{64}
>\frac{28}{3}\frac7{64}=\frac{49}{48}>1,                  \tag{9}
\]

using \(\sqrt3>5/3\). Thus \(M<Ks\).

For \(HCF\), (3) gives

\[
h=a+L\ge\frac{s}{c-b}+\frac{s}{b},
\qquad hc\ge\frac{s c^2}{b(c-b)}\ge4s.                   \tag{10}
\]

Its doubled area is

\[
U=c-h(c-f).
\]

If \(c\le1/2\), then \(f\le c\) gives \(U\le c\le1/2\).
If \(1/2\le c\le1\), (2) and (10) give

\[
U\le c-\frac{4s}{c}\left(c-\frac12\right)
=c-4s+\frac{2s}{c}.
\]

The last expression is convex on \([1/2,1]\), so it is no larger
than the larger of its endpoint values \(1/2\) and \(1-2s\).
Hence in all cases \(U\le1-2s<Ks\), by (9).

Finally, the doubled area of \(HBF\) is
\(b(1-h)+fh\le f\le1/2<Ks\). These three strict area comparisons
prove the assertion. \(\square\)

The proof for \(HCF\) uses only the two left and the two bottom
contacts together with \(b\le f\le\min(c,1/2)\). Thus that
part also applies to the six-contact form N with an arbitrary right
contact.

## 3. The smaller side quadrilateral cannot contain both free points

**Theorem 3.** Under (1)-(2), the quadrilateral \(ABFH\) cannot
contain both free points at minimum area at least \(7/128\).

**Proof.** Its doubled area is

\[
J=b(1-a)+fh.
\]

By (3), \(c\le1-s\) and
\(a\ge s/(c-b)\ge s/(1-s-b)\). Because \(b\le f\le1/2\)
and \(h\le1\),

\[
J\le b-\frac{bs}{1-s-b}+\frac12.
\]

The right side increases with b on \(0\le b\le1/2\), since its
derivative is

\[
1-\frac{s(1-s)}{(1-s-b)^2}
\ge1-\frac{399}{625}>0.
\]

At \(b=1/2\), this proves

\[
J\le1-\frac{s}{1-2s}=\frac{43}{50}<\frac78=8s.            \tag{11}
\]

If two actual points lay strictly inside \(ABFH\), its four vertices
and those points would have a quadrilateral hull. Theorem 1 of
[QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md) would require
\(J/2\ge8(s/2)\), or \(J\ge8s\), contradicting (11).
Points on hull edges already give zero area. \(\square\)

## 4. A conditional description of the left-hand pair

Suppose in addition that both free points lie inside the boundary
heptagon \(A,B,C,D,E,F,H\), and that both lie on the side of the
line \(CF\) containing \(A,B,H\). They are then inside the pentagon
\(A,B,C,F,H\). Theorem 1 excludes its ear \(ABH\), so both lie in
the quadrilateral \(HBCF\).

The two points must lie on opposite sides of **each** diagonal of
\(HBCF\). For \(BF\), the two triangles are \(HBF\) and
\(BCF\), each of capacity one by Theorem 2. For \(HC\), the upper
triangle \(HCF\) has capacity one by Theorem 2; the lower triangle
\(HBC\) is contained in the virtual-corner triangle
\(\operatorname{conv}\{(0,0),H,C\}\), whose capacity is one by
Theorem 4 of [QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md).

This proves a two-diagonal separation condition for that entire
continuous placement class. It does not exclude the class: the
quadrilateral analysis and the remaining seven-point constraints
still have to be combined. Other placements, including one free point
in the left quadrilateral and one in the central triangle, cannot be
discarded merely from the individual capacity bounds.

## 5. No free point in the adjacent bottom ear

**Theorem 4.** Under (1)--(2), the triangle \(ABC\) cannot contain
either free point at minimum area at least \(7/128\).

**Proof.** A point on an edge gives a zero-area triangle. If a free
point is strictly inside \(ABC\), subdivision into three actual
triangles gives

\[
                         aM\ge3s.                         \tag{12}
\]

Together with \(bL\ge s\), the identity

\[
hc=(a+L)(b+M)
  \ge\bigl(\sqrt{aM}+\sqrt{bL}\bigr)^2
\]

therefore gives \(hc\ge Ks\), where \(K=4+2\sqrt3\).
Since \(c\le1-s\), this forces

\[
h\ge\frac{Ks}{1-s}>1-s.                                  \tag{13}
\]

For the strict comparison, \(K>22/3\) follows from
\(\sqrt3>5/3\), and at \(s=7/64\)

\[
\frac{22}{3}s-(1-s)^2
=\frac{77}{96}-\frac{3249}{4096}
=\frac{109}{12288}>0.
\]

Set \(\alpha=1-h\) and \(\beta=1-e\). Equation (13)
gives \(0\le\alpha<s\). The doubled area of \(HFE\) is
\((1-f)\alpha+f\beta\ge s\). Because \(f\le1/2\),
the same rearrangement as in (6) gives

\[
                         \alpha+\beta\ge2s.              \tag{14}
\]

The horizontal and vertical length budgets now imply

\[
\begin{aligned}
M+\frac{s}{L}+\frac{s}{R}&\le1,\\
L+R+\frac{4s}{M}&\le2-2s,\\
L&\le1-\frac{3s}{M}.                                    \tag{15}
\end{aligned}
\]

The first follows from \(M+b+(1-c)=1\), \(b\ge s/L\),
and \(1-c\ge s/R\). For the second,
\(L+R=2-\alpha-\beta-a-d\), while (12) and \(dM\ge s\)
give \(a+d\ge4s/M\). The last is \(h=a+L\le1\)
combined with (12).

Put

\[
U=1-\frac{3s}{M},\qquad
V=2-2s-\frac{4s}{M}.
\]

The last inequality in (15) gives \(0<L\le U\), so
\(M>3s\) and \(U>0\). Also \(M<1\) and

\[
U-\frac V2=s\left(1-\frac1M\right)<0.                   \tag{16}
\]

Thus \(U<V/2\), and \(V-U>0\). The second inequality of
(15) gives \(0<R\le V-L\). The function
\(z\mapsto1/z+1/(V-z)\) decreases on \((0,V/2)\), as
its derivative is \(-1/z^2+1/(V-z)^2<0\). Consequently

\[
\frac1L+\frac1R
\ge\frac1L+\frac1{V-L}
\ge\frac1U+\frac1{V-U}.
\]

Substituting this in the first inequality of (15) yields

\[
M+\frac{sM}{M-3s}
 +\frac{sM}{(1-2s)M-s}\le1.                              \tag{17}
\]

Both denominators are positive by the preceding arguments. At the
fixed value \(s=7/64\), the left side of (17) minus one is

\[
\frac{N(M)}{(M-3s)((1-2s)M-s)},
\quad
N(M)=\frac{3200M^3-3900M^2+1449M-147}{4096}.             \tag{18}
\]

This numerator is strictly positive throughout the required range
\(M>3s=21/64\). Indeed

\[
N'(M)=\frac{3(40M-21)(80M-23)}{4096}.
\]

The root \(23/80\) lies below \(21/64\). Hence on this
range N decreases to \(M=21/40\), then increases, and its
minimum is

\[
                         N(21/40)=\frac{147}{327680}>0.
\]

Equation (18) contradicts (17), proving the theorem. \(\square\)

In particular, when both free points lie in the left pentagon
\(A,B,C,F,H\), both of its lower ears \(ABH\) and \(ABC\)
are empty of free points. The two points therefore lie in the
intersection of the quadrilaterals \(HBCF\) and \(ACFH\).
This additional containment still does not by itself exclude the
pair; the two-point interaction remains a separate obligation.

## Verification

The optional [check_seven_boundary_caps.py](check_seven_boundary_caps.py)
checks the displayed determinant identities and exact rational bounds.
It does not replace any of the geometric containments in this note.
