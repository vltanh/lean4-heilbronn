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

## 6. The diagonal triangle ACF also has capacity one

The following bound uses only five boundary-triangle inequalities. It is
independent of the locations of the two free points.

**Theorem 5.** Under (1)--(2), if every triangle has doubled area at least
\(s=7/64\), then

\[
                 [ACF]<\frac{13}{16}<Ks.                  \tag{19}
\]

Here \([ACF]=c(1-a)+af\) is the positive doubled area. Consequently
\(ACF\) cannot contain both free points at minimum area at least
\(7/128\).

**Proof.** Put

\[
\alpha=\frac{s}{c-b},\qquad u=b,\qquad v=1-c,
\qquad u+v=1-\frac{s}{\alpha}.
\]

The triangles \(ABC,BCD,ABH,CDE\) give

\[
a,d\ge\alpha,\qquad
h\ge\alpha+\frac{s}{u},\qquad
e\ge\alpha+\frac{s}{v}.                                  \tag{20}
\]

The triangle \(HEF\) gives
\((1-f)h+fe\le1-s\). Combining it with (20), and using
\(e\le1\), yields

\[
\alpha+(1-f)\frac{s}{u}+f\frac{s}{v}\le1-s,
\qquad v\ge\frac{s}{1-\alpha}.                            \tag{21}
\]

All denominators are positive: \(u,v,c-b>0\), and
\(\alpha<1\) follows from (20). Since \(c\ge f\),

\[
[ACF]\le G:=1-v-\alpha(1-v-f).
\]

Suppose that \(G\ge13/16\). The inequalities \(f\le1/2\)
and (21) imply

\[
G\le1-\frac\alpha2-(1-\alpha)v
\le1-\frac\alpha2-s.
\]

Therefore

\[
0<\alpha\le\frac5{32},\qquad
\frac{s}{1-\alpha}\le v\le
v_1:=\frac{3/16-\alpha/2}{1-\alpha}.                       \tag{22}
\]

We distinguish the two possible orders of the side gaps \(u,v\).

### The case \(v\ge u\)

Because \(f\le1/2\),

\[
\frac{1-f}{u}+\frac f v
\ge\frac12\left(\frac1u+\frac1v\right)
\ge\frac2{u+v}.
\]

Also \(v\ge(u+v)/2\) implies

\[
G\le1-\frac\alpha2-\frac{1-\alpha}{2}
                \left(1-\frac{s}{\alpha}\right)
=\frac{1+s/\alpha-s}{2}.
\]

The assumed lower bound for \(G\) forces
\(\alpha\le7/47<3/20\). On the other hand, (21) and the
reciprocal bound require

\[
\alpha+\frac{2s\alpha}{\alpha-s}\le1-s,
\qquad
p(\alpha):=\alpha^2-(1-2s)\alpha+s(1-s)\le0.               \tag{23}
\]

Here \(\alpha-s>0\), since \(u+v=1-s/\alpha>0\).
But \(p\) decreases on \([0,3/20]\), and

\[
p(3/20)=\frac{279}{102400}>0.
\]

This contradicts (23).

### The case \(v<u\)

The bound for \(G\) now gives

\[
f\ge f_0:=1-\frac{3}{16\alpha}
                    +\frac{1-\alpha}{\alpha}v.
\]

The left side of (21) increases with \(f\), because \(v<u\).
It follows that

\[
N(\alpha,v):=
\left[\alpha+(1-f_0)\frac{s}{u}+f_0\frac{s}{v}-(1-s)\right]
\alpha u v\le0,\qquad u=1-\frac{s}{\alpha}-v.              \tag{24}
\]

For fixed \(\alpha\), this is a quadratic polynomial in \(v\),
with

\[
\frac{\partial^2N}{\partial v^2}
=-\frac{64\alpha^2-71\alpha+14}{32}<0
\quad(0<\alpha\le5/32).
\]

The strict sign follows already from
\(14-71(5/32)=93/32>0\). Thus \(N\) is concave, and
its minimum on the interval (22) occurs at an endpoint. Both endpoint
values are strictly positive. To make this last algebraic claim explicit,
set \(t=5/32-\alpha\ge0\). Direct expansion gives

\[
N\left(\alpha,\frac{s}{1-\alpha}\right)
=\frac{
 5376t^3+4851t^2+\frac{10773}{16}t+\frac{875}{1024}}
 {262144\alpha(1-\alpha)^2}>0,
\]

\[
N(\alpha,v_1)
=\frac{
 16384t^4+37120t^3+19928t^2+\frac{4243}{4}t+\frac{175}{128}}
 {65536(1-\alpha)^2}>0.
\]

Every coefficient and both denominators are positive. Concavity now
contradicts (24). Both orders of \(u,v\) are impossible, so
\([ACF]\le G<13/16\).

Finally, \(\sqrt3>12/7\), because \(147>144\), gives
\(Ks=(4+2\sqrt3)7/64>13/16\). If both free points were
strictly inside \(ACF\), the two-interior-point triangle theorem
would instead give \([ACF]\ge Ks\). A point on one of its edges
already gives zero area. This proves the capacity assertion. \(\square\)

**Consequence for the left pair.** Under the placement hypothesis of
Section 4, both points lie in the quadrilateral \(ACFH\), by
Theorem 4. Its diagonal \(AF\) separates the pair: both cannot lie
in \(ACF\), by Theorem 5. If both lay in \(AHF\), both would
be on the \(H\)-side of \(BF\); since they also lie in
\(HBCF\), both would then be inside \(HBF\), contrary to
Theorem 2.
Thus the diagonals \(HC,BF,AF\) each separate the pair. Section 7
below excludes one of the two surviving diagonal-sector assignments.

## 7. The upper left overlap is empty

**Theorem 6.** Under (1)--(2), no further configuration point can lie
inside both \(AHF\) and \(HCF\) if every triangle has doubled
area at least \(s=7/64\).

**Proof.** Suppose that \(Q\) lies in this intersection, and put

\[
L=h-a,\qquad Z=[HCF]=c(1-h)+fh>0.
\]

The positive areas \([AFQ],[FHQ],[HCQ]\) satisfy the exact
weighted identity

\[
Z[AFQ]+(Z+cL)[FHQ]+fL[HCQ]=fLZ.
\]

All three weights are positive, so

\[
\Psi(a,h,c,f):=fLZ-s\{2Z+L(c+f)\}\ge0.                  \tag{25}
\]

We will derive a negative upper bound for \(\Psi\). First the
boundary triangles \(ABH,ABC,CDE\) imply

\[
bL\ge s,\qquad a(c-b)\ge s,\qquad c\le1-s,
\]

and hence

\[
c\ge\frac{s}{a}+\frac{s}{L},\qquad
1-s\ge\frac{s}{a}+\frac{s}{1-a}.
\]

The second inequality uses \(L\le1-a\). Thus
\(a(1-a)\ge s/(1-s)=7/57\), which forces

\[
                         a>\frac17:                      \tag{26}
\]

if \(a\le1/7\), then \(a(1-a)\le6/49<7/57\), since
\(342<343\).

### Increase the top contact to its allowed endpoint

Since \(Q\) is inside \(AHF\), subdivision gives \(fL\ge3s\).
For all larger \(f\), keeping \(a,h,c\) fixed,

\[
\frac{\partial\Psi}{\partial f}
=Lc(1-h)+2fhL-s(2h+L)
\ge4hs-sL\ge3hs>0.
\]

Therefore replacing \(f\) by \(1/2\) increases \(\Psi\).
This is a scalar upper bound; it does not move an actual point or
assert that the new coordinates remain a configuration.

At \(f=1/2\), the coefficient of \(c\) in \(\Psi\) is

\[
C=L\left(\frac{1-h}{2}-s\right)-2s(1-h)<0.                \tag{27}
\]

Indeed, if the expression in parentheses is nonpositive, the sign is
immediate, including \(h=1\). Otherwise use \(L\le h\) to bound
\(C\) above by

\[
-\frac{h^2}{2}+\left(\frac12+s\right)h-2s<0.
\]

This downward quadratic is negative for all real \(h\), because
its discriminant is
\((1/2+s)^2-4s=-271/4096<0\).

By (27), replacing \(c\) by its lower bound
\(s/a+s/L\) also increases \(\Psi\). Define the resulting
rational function by

\[
R(a,h)=\Psi\left(a,h,\frac{s}{a}+\frac{s}{h-a},\frac12\right).
\]

We have proved

\[
                         0\le\Psi\le R(a,h).             \tag{28}
\]

### The remaining height replacement has a positive remainder

The following exact identity permits increasing \(h\) to one:

\[
R(a,1)-R(a,h)=\frac{(1-h)D(a,L)}{4aL},
\]

\[
D(a,L)=\left(a-\frac7{32}\right)L^2
 +\left(\frac a8+\frac{49}{1024}\right)L
 +\frac{49a}{512}.                                      \tag{29}
\]

We claim \(D>0\) throughout the required range
\(a>1/7\), \(0<L\le1-a\). If \(a\ge7/32\), all
coefficients in (29) are nonnegative and the constant is positive.
If \(1/7\le a\le7/32\), the polynomial is concave in \(L\),
so its minimum on \([0,1-a]\) occurs at an endpoint. At zero
its value is positive, and at the other endpoint

\[
1024D(a,1-a)=1024a^3-2400a^2+1649a-175.
\]

This polynomial increases on \([1/7,7/32]\), since its derivative
is at least \(1649-4800(7/32)=599>0\). Its value at \(1/7\)
is \(5000/343>0\). Both endpoint values are therefore positive,
proving the claim. Equation (29) now gives \(R(a,h)\le R(a,1)\).

Finally, direct simplification gives

\[
R(a,1)
=-\frac{(1-2s)a^2+(6s-1)a+4s^2}{4a}<0.                   \tag{30}
\]

The numerator is an upward quadratic whose discriminant is
\(-257/8192<0\). Its denominator is positive. Equations
(28)--(30) contradict one another, proving the theorem. \(\square\)

**Corollary 7 (one complete left-pair assignment is excluded).** In the
placement of Section 4, the free points cannot occupy the sectors at
\(BC\) and \(FH\) of the quadrilateral \(HBCF\).

Indeed the point in the \(BC\) sector is on the \(C\)-side of
\(BF\), and therefore below \(AF\). Theorem 5 and the subsequent
separation consequence force the other point above \(AF\). A point
in the \(FH\) sector is also above \(HC\) and below \(HF\),
so it would lie in both \(AHF\) and \(HCF\), contrary to
Theorem 6. The comparison between \(BF\) and \(AF\) is strict
away from \(F\): at every height \(y<1\), their first-coordinate
difference is

\[
\left[b+(f-b)y\right]-\frac{f(y-a)}{1-a}
=\frac{(1-y)\{b(1-a)+af\}}{1-a}>0.
\]

Thus the only remaining left-pair assignment has one point in the
\(HB\) sector, above \(AF\), and one in the \(CF\) sector.
That last assignment is subsequently excluded in
[SEVEN_BOUNDARY_LEFT_PAIR.md](SEVEN_BOUNDARY_LEFT_PAIR.md), which
therefore completes the entire smaller-left pair class.

## 8. The bottom-right ear is empty as well

**Theorem 8.** Under (1)--(2), if every actual doubled triangle area is
at least \(s=7/64\), then

\[
                         [CDE]<3s.                       \tag{31}
\]

Consequently neither free point can lie inside \(CDE\).

**Proof.** Suppose instead that \([CDE]=(1-c)(e-d)\ge3s\).
Put \(w=1-c\) and \(M=c-b\), so \(b+M+w=1\). The
boundary triangles \(ABC,BCD,ABH\) imply

\[
h\ge\frac{s}{M}+\frac{s}{b},\qquad
e\ge\frac{s}{M}+\frac{3s}{w}.                            \tag{32}
\]

The triangle \(HEF\) also gives

\[
                         (1-f)h+fe\le1-s.                \tag{33}
\]

### If \(e\le h\)

Since \(f\le1/2\), (33) implies \(h+e\le2(1-s)\).
On the other hand, (32) and Cauchy--Schwarz give

\[
h+e\ge s\left(\frac2M+\frac1b+\frac3w\right)
\ge s(\sqrt2+1+\sqrt3)^2.
\]

The elementary comparisons \(\sqrt2>7/5\) and
\(\sqrt3>5/3\) make the last quantity greater than
\(26047/14400\), whereas
\(2(1-s)=57/32=25650/14400\). This is a contradiction.

### If \(e>h\)

Now (33) increases with \(f\). Since \(f\ge b\), (32)--(33)
imply

\[
1-s\ge(1-b)h+be
\ge s\left(\frac1M+\frac1b-1+\frac{3b}{w}\right).
\]

Thus the necessary scalar inequality is

\[
F(M,w):=\frac1M+\frac1b+\frac{3b}{w}\le\frac1s,
\qquad b=1-M-w.                                         \tag{34}
\]

From (32), \(M>s\), and the upper bounds \(h,e\le1\) give

\[
w\ge w_0:=\frac{3sM}{M-s},\qquad
b\ge\frac{sM}{M-s}.
\]

In particular \(b_0:=1-M-w_0\ge b>0\). Adding these two lower
bounds and using \(b+w=1-M\) yields

\[
M^2-(1-3s)M+s\le0.
\]

This forces \(M>1/4\): on \(0\le M\le1/4\) the polynomial
decreases, and its value at \(1/4\) is \(1/256>0\).

We next show that \(F(M,w)\) increases for \(w\ge w_0\), with
\(M\) fixed and \(b>0\). First,

\[
w_0-2b_0
=\frac{2M^2+(7s-2)M+2s}{M-s}>0.
\]

The numerator is an upward quadratic with discriminant
\(-927/4096<0\). Therefore \(w/b\ge w_0/b_0>2\) on the
whole interval from \(w_0\) to the actual \(w\). Differentiating
(34) gives

\[
\frac{\partial F}{\partial w}
=\frac1{b^2}-\frac{3(1-M)}{w^2}
>\frac{4-3(1-M)}{w^2}>0.
\]

It follows that \(F(M,w)\ge F(M,w_0)\). At the fixed rational
threshold,

\[
F(M,w_0)-\frac1s
=-\frac{P(M)}{7(64M^2-50M+7)},
\]

\[
P(M)=4096M^3-2304M^2+196M+49.                             \tag{35}
\]

The denominator is negative: indeed
\(b_0=-(64M^2-50M+7)/(64M-7)>0\), and \(M>s\).
The numerator \(P(M)\) is positive throughout \(M>1/4\).
For a direct certificate, put \(z=M-1/3>-1/12\). Then

\[
\begin{aligned}
P(M)
&=4096z^3+1792z^2+\frac{76}{3}z+\frac{271}{27}\\
&\ge\frac{4352}{3}z^2+\frac{76}{3}z+\frac{271}{27}>0.
\end{aligned}
\]

The first inequality uses \(z^3\ge-z^2/12\). The final upward
quadratic has discriminant \(-4665584/81<0\). Equation (35)
therefore gives \(F(M,w_0)>1/s\), contradicting (34).

Both orders of the upper contacts are impossible, proving (31).
A point inside \(CDE\) would subdivide it into three actual
triangles with doubled areas at least \(s\), contradicting (31);
an edge point would give zero area. This proves the occupancy
assertion. \(\square\)

In particular, if both free points lie in the right quadrilateral
\(CDEF\), then both lie strictly inside \(CEF\). This is a
necessary placement for that remaining pair class, not its exclusion.

## Verification

The optional [check_seven_boundary_caps.py](check_seven_boundary_caps.py)
checks the displayed determinant identities and exact rational bounds.
It does not replace any of the geometric containments in this note.
