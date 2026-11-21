# Six contacts with adjacent occupied caps

Use the normalized six contacts
\[
 A=(0,a),\quad B=(b,0),\quad C=(c,0),\quad
 E=(1,e),\quad F=(f,1),\quad H=(0,h)
\]
with \(0<a<h<1\), \(0<b<c<1\), \(a\le e\le h\) and
\(b\le f\le c\). Let \(R=(r,d)\) be in the right cap beyond
\(CE\) and \(S=(t,z)\) in the top cap beyond \(EF\).
In IIRT the two other points \(P,Q\) lie in \(HCEF\).
In BIRT, \(P\) lies in \(HABC\) and \(Q\) lies in \(HCEF\).
Write \([XYZ]\) for signed doubled area and suppose every actual
unsigned doubled area is at least \(s=93/1000\).
[Placement reduction](N6_PLACEMENTS.md)

**Lemma.** The line \(PQ\) cuts the hull in open edges. Each arc of
vertices contains at least three vertices. In BIRT the lower
point \(P\) also lies outside \(HAB\). The complete
[IIRT proof](N6_IIRT.md) and [BIRT proof](N6_BIRT.md) list
the crossings and apply the exclusions below.

## 1. Actual hull and the one-vertex arcs

The square supports make all six contacts extreme. The cap bases
expose \(R,S\) separately, since each base separates its own cap
from the rest of the contact hexagon and from the other cap.
Thus the eight extreme points are in strict cyclic order
\(A,B,C,R,E,S,F,H\). The cap tests and the square bounds give
\(c<r\le 1\), \(0<d<e\), \(f<t\le 1\), and \(e<z\le 1\).
Both \(P,Q\) are strictly interior to the contact hexagon and hence
to the octagon. The two endpoints of its chord on \(PQ\) belong to
open edges because no three actual points are collinear.

Every octagon ear has area less than \(57/100\). Indeed the other
seven contribute more than \(7(453/1000)\) to the sum of the cube
roots of the consecutive areas. The ear in question therefore
contributes less than \(829/1000\), whose cube is below \(57/100\).
A one-vertex arc would put the whole chord inside the ear at that
vertex, forcing the ear to contain both \(P,Q\). Its area would then
be at least \((4+2\sqrt3)s>347/500\). The final comparison follows
from \((433/250)^2<3\). Each arc is nonempty since the line meets the
interior of the hull. [Octagon inequality](NINE_CONVEX_POINTS.md)
and [two-point triangle cost](TRIANGLE_OCCUPANCY.md)

The same octagon inequality forbids two ears with area at least
\(3s\), since their cube roots and those of the other six would
sum to more than \(2(653/1000)+6(453/1000)>4\).
Now \([FHA]=f(h-a)\ge b(h-a)=[HAB]\). Thus \([HAB]<3s\)
and \(HAB\) cannot contain even one further actual point.

## 2. Two bounds for the right and top turns

Put \(J=c-b\), \(L=1-b\), \(D=e-d\), \(U=1-t\),
\(V=1-z\), \(\delta=1-r\), and \(T=1-f\).
The clearances \([ABC],[HAB]\ge s\) give \(b(1-b)\ge s\).
Indeed \(a\ge s/(1-b)\), and substitution into
\(b(h-a)\ge s\) with \(h\le1\) gives the claim.
Since \((103/1000)(897/1000)<s\), this implies \(b>103/1000\).
The following are actual ear bounds:
\[
 Jd\ge s,\qquad (1-c)D-e\delta\ge s,\qquad
 DU+(z-e)\delta\ge s,\qquad
 (1-e)(t-f)-TV\ge s,\qquad
 (1-h)(t-f)+fV\ge s .
\]
These are respectively \([BCR],[CRE],[RES],[ESF],[SFH]\).
Two weighted sums of these ears give
\[
\begin{aligned}
 D(eU+(1-e)(1-c))-e\delta V
   &=e[RES]+(1-e)[CRE]\ge s,\\
 (t-f)(1-h+f(h-e))
   &=f[ESF]+(1-f)[SFH]\ge s.
\end{aligned}
\]
These identities also give affine-coordinate bounds with fixed
endpoints. If \(K_F\) is an established positive ceiling on
\([EFH]=1-h+f(h-e)\), and \(\ell_T,\ell_L\) are established
lower bounds on \([ESF],[SFH]\), then
\[
 K_F(t-f)-f\ell_T-(1-f)\ell_L\ge0.
\]
For the first identity let \(K_D>0\) be an upper bound for
\(D\), and let \(\ell_M,\ell_R\) bound \([RES],[CRE]\) below.
Then
\[
 K_D(1-c+ec-et)-e\ell_M-(1-e)\ell_R\ge0.
\]
Indeed \(1-c+ec-et=e(1-t)+(1-e)(1-c)>0\), and
\(e\delta V\ge0\). Each ceiling and lower bound is fixed from
a previously proved box or completed scalar stage.
In particular
\[
 e\ge \frac{s}{J}+\frac{s}{1-c}
   =\frac{sL}{J(L-J)},\qquad
 U\le T-\frac{s}{1-e},\qquad
 \delta\le \frac{(1-c)D-s}{e}.                  \tag{1}
\]
All divisions have positive denominators. Using \(z-e\le 1-e\),
the third ear inequality gives
\[
 s\le D\left(T-\frac{s}{1-e}\right)
          +(1-e)\frac{(1-c)D-s}{e}.
\]
Multiplying by \(e\) and collecting terms gives
\[
 s\le D\left(1-((1-e)c+ef)-\frac{es}{1-e}\right).       \tag{2}
\]
In particular \(s\le D(T-es/(1-e))\), since \(c\ge f\).
The positive actual area \([HCF]=c(1-h)+hf\) is at most
\((1-e)c+ef\), since \(h\ge e\). Also \(d\ge s\), and the
reciprocal arithmetic mean inequality on \(e-s,1-e\) gives
\[
 f\le [HCF]\le 1-\frac{s}{e-s}-\frac{es}{1-e}
             \le 1+s-\frac{4s}{1-s}<347/500.
\]
In particular the adjacent-cap coordinates satisfy
\[
 r>71/100,\qquad d<5/8,\qquad c<881/1000.
\]
The first follows from
[the right-cap abscissa bound](N6_RIGHT_CAP_TRIANGLES.md).
For the second, recall \(L=1-b<.897\) and
\(s\le (e-d)(T-es/(1-e))\), with \(T\le L\).
Set \(L_0=.897\) and \(w=L_0-(L_0+s)e>0\). Then
\[
 d\le e-\frac{s(1-e)}{L_0-(L_0+s)e}
   =\frac{L_0-s-w-s^2/w}{L_0+s}
   \le\frac{L_0-3s}{L_0+s}<5/8.
\]
For the third, the top-cap budget and \(f\ge b\ge.1037\)
give \(e\le1-s/(1-.1037)<.8963\).
Since \((1-c)(e-d)\ge s\) and \(d\ge s\), this implies
\(c<.885\). Now \(d\ge s/(c-b)>s/(.885-.1037)\), and the
same inequality yields
\[
 c<1-s/\bigl(.8963-s/(.885-.1037)\bigr)<.881 .
\]

For a separate bound, the actual triangle \(REF\) has area
\[
 W=[REF]=(1-f)(e-d)+(1-e)(1-r).
\]
Since \(r\ge f\), this is at most \((1-f)(1-d)\).
Using \(f\ge b\), \(d\ge s/J\), and the bound for \(\delta\)
in (1) also gives
\[
 W\le L\left(e-\frac{s}{J}\right)
       +(1-e)\left((L-J)-\frac{sL}{eJ}\right)
     =L-(1-e)J-\frac{sL}{eJ}.                    \tag{3}
\]
If \(f\ge 1/4\), the first estimate gives \(W\le (3/4)(1-s)<347/500\).
If \(e\le 4/5\), the right side of (3) increases with \(e\).
At \(e=4/5\) the two subtracted terms sum to at least \(\sqrt{sL}\).
Therefore \(W\le L-\sqrt{sL}\le (1-\sqrt{s})(1-s)<347/500\),
where \(b\ge s\) follows from \([HAB]\ge s\).

In the remaining case \(f<1/4\) and \(e>4/5\). The fourth ear
bound gives \(V\le 1-e-s/(1-f)\le 107/1000\). The fifth then
gives \(s\le 1-h+(107/1000)/4\), so \(h\le 747/800\).
Now \(a\ge s\) by \([ABC]=aJ\ge s\), and \([HAB]\ge s\)
gives \(b\ge s/(747/800-s)=124/1121>11/100\).
The fourth ear bound also gives \(e\le 1-s/(1-f)\le 1-s/L\).
Use this upper bound in (3) and set \(x=J/L\in(0,1)\).
We obtain
\[
 W\le L-s\left(x+\frac{L}{(L-s)x}\right)
    \le L-s\left(1+\frac{L}{L-s}\right).
\]
For the second inequality, subtract the value at \(x=1\) inside
the parentheses. The difference is
\((1-x)(L/((L-s)x)-1)\ge0\).
The last upper bound increases with \(L>s\) and \(L<89/100\).
At \(89/100\) it is \(552439/797000<347/500\).
This proves \([REF]<347/500\) throughout.

## 3. The cap along the bottom side

The quadrilateral \(ABCR\) has doubled area
\(W_0=a(r-b)+cd\le a(1-b)+cd\). We bound the two terms
by scalar inequalities. The last two ear bounds of Section 2 give
\[
 1-h\ge s+(e+2s-1)w+s w^2,qquad w=\frac{f}{1-f}.
\]
Indeed \(V\le 1-e-s/(1-f)\) and
\(s\le (1-h)(1-f)+fV\), so
\(1-h\ge s/(1-f)^2-f(1-e)/(1-f)\).
Completing the square for \(w\ge0\) gives
\[
 h\le 1-s+\frac{\max(1-2s-e,0)^2}{4s}.                 \tag{4}
\]
If \(h\le K\), then \([HAB]\ge s\) gives
\[
 a(1-b)\le (K-s/b)(1-b)
       =K+s-Kb-s/b\le K+s-2\sqrt{Ks}.                 \tag{5}
\]
When \(b\le\beta\) and \(K\beta^2\le s\), the middle expression
increases up to \(\beta\), so it can be bounded by
\((K-s/\beta)(1-\beta)\).

The right-cap clearance gives \(d\le e-s/(1-c)\). If \(e\le M\), then
\[
 cd\le c\left(M-\frac{s}{1-c}\right)
     \le M+s-2\sqrt{Ms}.                               \tag{6}
\]
The last step follows by writing the middle expression as
\(M+s-M(1-c)-s/(1-c)\).
For some rows we also use
\[
 d\le e-\frac{s}{L-es/(1-e)}.
\]
This follows from \(s\le (e-d)(T-es/(1-e))\) in Section 2
and \(T\le L\). The denominator is positive. For \(e\ge83/100\)
and \(L\le897/1000\) this upper bound decreases with \(e\).
Its derivative is \(1-s^2/[L-(L+s)e]^2<0\), since
\[
 0<L-(L+s)e\le (897/1000)(17/100)-(83/100)s<s.
\]
It increases with \(L\), so when \(e\ge E_0\ge83/100\)
and \(b\ge\beta_0\), one may use
\[
 D_0=E_0-\frac{s}{1-\beta_0-E_0s/(1-E_0)}
\]
as the upper bound for \(d\). In a row with a ceiling \(d\le D\),
split at the displayed \(c_0\). For \(c\le c_0\) use \(c_0D\).
For \(c\ge c_0\) use \(c_0(M-s/(1-c_0))\), because the middle
expression of (6) decreases there if \(M(1-c_0)^2<s\).
That condition holds at both \(c_0=0.74\) and \(c_0=0.8\) for every
listed \(M\).

The table uses exact terminating decimals. In the \(K\) column
we use (4), or \(h\le1\) in the first row. A dash under \(\beta\)
means use the square-root estimate in (5). A dash under \(c_0\)
means use the square-root estimate in (6) with \(M\) the right
endpoint of the \(e\) interval. The other rows use the displayed
ceiling \(D>D_0\) with the left endpoints of the \(e,b\)
intervals. All of the two final column bounds are strict.

| \(e\) | \(b\) | \(K\) | \(\beta\) | \(D\) | \(c_0\) | \(a(1-b)<\) | \(cd<\) |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: |
| \(e\le .72\) | all | 1 | — | — | — | .484 | .296 |
| \([.72,.8]\) | all | .931 | — | — | — | .436 | .348 |
| \([.8,.83]\) | all | .9076 | — | — | — | .4196 | .3674 |
| \([.83,.85]\) | \(b\le .24\) | .907 | .24 | — | — | .395 | .381 |
| \([.83,.85]\) | \(b\ge .27\) | .907 | — | .494 | .74 | .420 | .366 |
| \([.83,.84]\) | \([.24,.27]\) | .907 | .27 | — | — | .411 | .375 |
| \([.84,.85]\) | \([.24,.27]\) | .907 | .27 | .498 | .74 | .411 | .369 |
| \([.85,.907]\) | \(b\ge .24\) | .907 | — | .451 | .8 | .420 | .361 |
| \([.85,.866]\) | \(b\le .24\) | .907 | .24 | — | — | .395 | .392 |
| \([.866,.907]\) | \(b\le .20\) | .907 | .20 | — | — | .354 | .420 |
| \([.866,.907]\) | \([.20,.24]\) | .907 | .24 | .399 | .8 | .395 | .354 |

The square-root bounds can be verified by squaring the positive
half-difference of \(K+s\) or \(M+s\) and the proposed ceiling.
The rows are exhaustive because \([ESF]\ge s\) gives
\(e\le1-s=.907\). In every row the last two entries sum to at
most \(787/1000\). Thus \(W_0<787/1000\).

If both interior points lay in \(ABCR\), one of the two octagon
ears \(ABC,BCR\) would be empty by Section 1. Split along the
diagonal opposite the middle vertex of the empty ear. The other
triangle contains both points, which gives
\[
 W_0\ge (5+2\sqrt3)s>787/1000.
\]
The comparison uses \(\sqrt3>433/250\).
This excludes the short arc \(B,C\).

## 4. The other ruled-out two-vertex arcs

For two consecutive vertices on the shorter arc, both interior points
lie in the quadrilateral of these vertices and their immediate
neighbors. Its two outside edges contain the endpoints of the chord.
All triangle memberships below are strict because no line through
two actual points contains a third.

| Short arc | Quadrilateral | Why it cannot contain both points |
| --- | --- | --- |
| \(A,B\) | \(HABC\) | The stated counts allow at most one lower point. |
| \(C,R\) | \(BCRE\) | It lies in the endpoint triangle \(B,E,(1,0)\). The actual \(C,R\) are already there, so the six-point endpoint bound forbids two further points. |
| \(R,E\) | \(CRES\) | The diagonal \(CE\) puts both points in \(CES\), with area below \(347/500\). |
| \(E,S\) | \(RESF\) | The diagonal \(EF\) puts both points in \(REF\), with area below \(347/500\) by (3) and its cases. |
| \(S,F\) | \(ESFH\) | The diagonal \(EF\) puts both points in \(EFH\), with area at most \(1-e\le 1-4s<347/500\) by (1). |
| \(H,A\) | \(FHAB\) | The diagonal \(HB\) puts both points in \(FHB\), because \(HAB\) is empty. Its area \(b(1-h)+fh\le f\) is below \(347/500\) by (2). |

For the second row the threshold and two available slots in the
virtual triangle are exactly those in
[the right container lemma](N6_CORNER_CONTAINERS.md), Section 1.
For the third, fourth, fifth and sixth rows the two-point triangle cost
exceeds \(347/500\).

The \(CES\) estimate uses the lower-ear bounds and the actual top
point \(S\). [Top-cap triangle bound](N6_BIIT_ARCS.md#a-bound-at-e-and-f)

Section 5 excludes the final two-vertex arc, \(F,H\). In BIRT
the chord must also cross \(HC\), because \(P,Q\) are on opposite
sides. Thus one crossed edge must lie in \(HA,AB,BC\) and the other
in \(CR,RE,ES,SF,FH\). This is an additional restriction on
the remaining 3/5 and 4/4 arcs.

## 5. The cap along the left side

The doubled area of \(SFHA\) is \(W_1=(1-a)t+f(h-z)\).
We bound it using just \(c,e\). First \(b>103/1000\) by Section 2.
Since \(a\ge s/(c-b)\) and \(b\ge s/(1-a)\), put
\[
 x=c-103/1000,\qquad j(c)=c-\frac{sx}{x-s},\qquad k(c)=\frac{s}{j(c)}.
\]
Indeed \(a\ge s/x\) and then \(b\ge s/(1-s/x)\), so
\(c-b\le j(c)\). Thus \(a,d\ge k(c)\), and \(D\le e-k(c)\).
Both \(c,e\) belong to \([4s,1-s]\). For \(c\ge 4s\), use
\[
 \sqrt{[ABC]}+\sqrt{[HAB]}\le\sqrt{hc},
\]
which is Cauchy–Schwarz after dividing the two areas by \(hc\).
For \(e\ge4s\), use (1). For \(c\le 1-s\), use \((1-c)D\ge s\),
and the upper bound on \(e\) was proved in Section 3. On this
interval \(x>s\) and \(j>0\). In fact at \(c=4s\) one has
\(x=269/1000\), \(sx/(x-s)<1/5\), and
\(j'(c)=1+s^2/(x-s)^2>0\). It follows that \(k\) is positive and
decreasing and \(-k'(c)=s j'(c)/j(c)^2\) is positive and decreasing.

The ear inequalities for \(CRE,RES\), with \(z-e\le 1-e\), give
\(s\le D(eU+(1-e)(1-c))\) by multiplying the third ear bound
by \(e\) and the second by \(1-e\), then adding. In particular
\[
 U\ge 0,\qquad
 U\ge F(c,e):=\frac{s}{e(e-k(c))}-\left(\frac1e-1\right)(1-c).   \tag{7}
\]
Here \(e-k(c)\ge D>0\).

The ears \(SFH,ESF\) also give
\[
 h-z\le\frac{tV-s}{t-f},\qquad
 V\le\frac{(1-e)(t-f)-s}{1-f}.
\]
The first inequality comes from \(s\le(1-h)(t-f)+fV\),
with \(1-h=(z-h)+V\). Since \(t-f\le t(1-f)\), substitution
and completing the square with \(w=f/(1-f)\ge0\) give
\[
 \begin{aligned}
 f(h-z)&\le w\left((1-e)t-s-\frac{s}{t-f}\right)\\
       &\le w\left((1-e)t-s-\frac{s}{t}\right)-\frac{s}{t}w^2\\
       &\le \frac{t}{4s}\max\left(0,(1-e)t-s-\frac{s}{t}\right)^2 .
 \end{aligned}                                                    \tag{8}
\]
All denominators are positive by the cap tests.

### An explicit two-variable interval bound

The [interval table](N6_ADJACENT_CAPS_SFHA_TABLE.md) uses the following
formulas on a rectangle \([c_0,c_1]\times[e_0,e_1]\). Set
\[
 k_i=k(c_i),\qquad r_i=-k'(c_i),\qquad D_1=e_1-k_1.
\]
If \(D_1\le0\) or \((1-c_0)D_1<s\), the right ear is impossible.
For every other rectangle let \(e_m\) be the median of
\(e_0,e_1,(1+k_1)/2\) and set
\[
 u_0=\frac{s-(1-c_0)(e_m-k_1)(1-e_m)}{e_1D_1}.
\]
This gives \(U\ge\max(0,u_0)\). To see the direction, use
\(D\le e-k_1\) in \(eDU\ge s-D(1-e)(1-c)\).
The quadratic \((e-k_1)(1-e)\) attains its maximum on the
interval at \(e_m\). If the numerator defining \(u_0\) is
nonpositive, use \(U\ge0\). Otherwise divide the lower bound
for the numerator by the upper bound \(eD\le e_1D_1\).

If
\[
                \frac{s(2e_1-k_1)}{D_1^2}\ge1-c_0,               \tag{9}
\]
we may also use the following lower bound \(u_1\) for \(U\):

| Test, in order | \(u_1\) |
| --- | --- |
| \(e_1>k_0\) and \(s r_0/[e_1(e_1-k_0)^2]\le 1/e_1-1\) | \(F(c_0,e_1)\) |
| Otherwise, \(s r_1/(e_1D_1^2)\ge 1/e_1-1\) | \(F(c_1,e_1)\) |
| Otherwise | \(s/(e_1D_1)-(1/e_1-1)(1-c_0)\) |

For (9), differentiate \(F\) in \(e\). Its derivative is
\(e^{-2}(1-c-s(2e-k(c))/(e-k(c))^2)\). The fraction being
subtracted decreases with \(e\) and increases with \(k(c)\) for
\(e>k(c)\), giving \(F(c,e)\ge F(c,e_1)\). The derivative of
\(F(c,e_1)\) in \(c\) equals
\[
 1/e_1-1-\frac{s(-k'(c))}{e_1(e_1-k(c))^2}.
\]
It increases with \(c\) over the portion with \(e_1>k(c)\),
since \(-k'(c)\) decreases and the positive denominator increases.
The first two tests place the minimum at the stated endpoint.
In the third row bounding the two summands of \(F\) separately
gives the displayed lower bound. This also covers rectangles where
the positive denominator is available on only part of the interval.

Let \(u=\max(0,u_0,u_1)\) if (9) holds, and \(u=\max(0,u_0)\)
otherwise. Put \(T_1=1-u\). If \(T_1\le0\) or
\((1-e_0)T_1<s\), there is no feasible top point, by \([ESF]\ge s\).
In the other cases (8) gives the exact bound
\[
 W_1\le (1-k_1)T_1
       +\frac{T_1}{4s}\max\left(0,(1-e_0)T_1-s-\frac{s}{T_1}\right)^2 .
                                                                    \tag{10}
\]
Here \(a\ge k_1\), and the right side of (8) increases with \(t>0\)
and with \(1-e\), because the expression inside the maximum does.
Every rectangle in the table either violates the right ear or gives
an upper bound strictly below \(787/1000\) in (10).
The two printed interval covers in Sections 5 and 9 can be checked
with [the rational table reader](check_n6_adjacent_caps_bounds.py).

If \(SFHA\) contained both interior points, at least one of its
octagon ears \(SFH,FHA\) would be empty. The diagonal opposite
the middle vertex of that ear would give a triangle containing
both points and an empty triangle of area at least \(s\).
Thus \(W_1\ge(5+2\sqrt3)s>787/1000\), a contradiction.
This completes the exclusion of the 2/6 class in both counts.

## 6. The crossed-edge geometry

In IIRT the crossing pair \(BC,FH\) would put both interior points
in the quadrilateral \(BCFH\). Its diagonal \(HC\) separates it
into \(HBC\) and \(HCF\). Both points are on the upper side of
\(HC\), so both would be in \(HCF\), whose area is less than
\(347/500\) by (2). This contradicts the two-point triangle cost.

Each pair denotes two open edges. For a pair at cyclic separation
three, the intervening vertices give the three-vertex arc.
At separation four both arcs have four vertices.
In BIRT the two edges must be on opposite sides of \(HC\).
At \(CR,FH\) in IIRT, both diagonals of the containing
quadrilateral separate the upper points by the
[opposite-diagonal bounds](N6_ADJACENT_CAPS_RFH.md).

For any remaining pair, the whole segment \(PQ\) is contained in
the quadrilateral of the four crossed-edge endpoints. There is an
additional sign rule from the eight four-vertex cap capacities.
Orient the chord from its entry edge to its exit edge and name the
interior points in this order. If the entry edge belongs to a
four-vertex cap, the later point lies beyond the chord joining the
first and last cap vertices. Otherwise that point and the entry
endpoint of the chord would bound a segment in the cap by convexity,
placing both interior points in it. The same argument from the exit edge puts the earlier
point beyond the chord of any cap containing that edge. Equality
at an actual chord is excluded by positive clearance.
The same rule holds for an actual capacity-one triangle
containing the crossed edge. For instance it applies to every
three vertices chosen from any of the eight four-vertex caps,
and to each of the triangles with the stated \(347/500\) ceilings.

Within \(HCEF\), the two ends of the chord are found as follows.
An octagon endpoint on \(HA,AB,BC\) corresponds to an endpoint
on \(HC\). An endpoint on \(CR,RE\) corresponds to \(CE\), and an
endpoint on \(ES,SF\) corresponds to \(EF\). An endpoint on \(FH\)
stays on \(FH\). The chords \(HC,CE,EF\) divide the octagon into
the two contact quadrilaterals and the two exterior triangles.
This proves the correspondence by convexity and shows that when
the two \(HCEF\) edges are adjacent, each upper point belongs to
the triangle of their three endpoints. Similarly, a lower point
on a chord entering \(HA\) belongs to \(HAC\), and on a chord
entering \(BC\) it belongs to \(HBC\).

## 7. A sharp terminal for the adjacent caps

Here write \(\sigma\) for the actual least unsigned doubled area.
Use strict interior cap points, as in exact N6. Let \(P=(p,q)\)
and \(Q=(u,v)\) be the two points inside the contact hexagon.
Suppose
\[
 [ARP],\ -[BFP],\ [CSQ],\ [EHQ],
 [APQ],\ -[BPQ],\ -[EPQ],\ [SPQ]>0
\]
and
\[
 q\ge a,\qquad u\le c,\qquad (t-f)(1-h)\ge \sigma .
\]
These inequalities imply \(\sigma<2A^*\), with either assignment
of the two points to the interior regions.

Set \(X=u-p,\ Y=v-q,\ \alpha=e-a,\ \beta=t-b\). Two differences of
the signed areas give
\[
 Y-\alpha X=[APQ]-[EPQ]\ge2\sigma,\qquad
 zX-\beta Y=[SPQ]-[BPQ]\ge2\sigma .
\]
As \(z>e\), \(0\le\alpha\le e\), and \(0<\beta<1\), we have
\(z-\alpha\beta>0\). Adding \(\beta\) times the first inequality
to the second gives \(X>0\), and then \(Y>0\).

Project \(R\) horizontally to \(R'=(1,d)\) and \(S\) vertically
to \(S'=(t,1)\). The strict side order in the
[twelve-expression sharp theorem](N6_PROJECTED_CHAMBERS.md) uses
the projected boundary points \(A,B,C,R',E,S',F,H\), in that order.
Its four required cap areas are
\([AFH],[BCR'],[CR'E],[S'FH]\). The first two are unchanged actual
positive areas. The third increases from \([CRE]\) by \(e(1-r)>0\).
The fourth is \((t-f)(1-h)\), which meets the stated hypothesis.
For the eight remaining expressions, precisely three change:
\[
\begin{aligned}
 [AR'P]&=[ARP]+(1-r)(q-a),\\
 [CS'Q]&=[CSQ]+(1-z)(c-u),\\
 [S'PQ]&=[SPQ]+(1-z)X.
\end{aligned}
\]
The other five are \(-[BFP],[EHQ],[APQ],-[BPQ],-[EPQ]\).
All twelve are at least \(\sigma\). The sharp theorem gives
\(\sigma\le 2A^*\), with equality requiring all four projected
cap areas to equal \(\sigma\). The strict increase in \([CR'E]\)
excludes equality.

One can allow horizontal displacement of the projected top point.
With the same eight sign hypotheses, define
\[
 T_*=\max(t,f+\sigma/(1-h)).
\]
Keep \(q\ge a\), and in place of the other two coordinate
conditions suppose
\[
 T_*<1,\qquad
 (1-z)(c-u)+(T_*-t)v\ge0,\qquad
 (T_*-t)Y\le(1-z)X.
\]
Use \(S'=(T_*,1)\). Its cap area is at least \(\sigma\) by
definition, and the changes in the last two moving expressions
are now
\[
 (1-z)(c-u)+(T_*-t)v,\qquad
 (1-z)X-(T_*-t)Y.
\]
Thus the same sharp argument applies. In particular, when
\(u\le c,\ T_*<1,\) and \((1-h)X\ge fY\), these two changes
are nonnegative. The required displacement satisfies
\((T_*-t)(1-h)\le f(1-z)\), by the actual \([SFH]\) clearance.

## 8. Two more triangle capacities

The bound on \(f\) in Section 2 gives \([ABF]=b(1-a)+af\le f<347/500\).
The same is true of \([BCE]=e(c-b)\). If \(e\le .8\), the latter
area is at most \(.8(.907-.103)<347/500\), using the contact bounds
in Sections 2 and 5. If \(e>.8\), then \(h<.9076\) by (4).
Start with \(a,d\ge s\) and \(e\le .907\). The ear bounds give
\[
 b\ge\frac{s}{h-a}>\frac{s}{.9076-s}>.114,\qquad
 c\le 1-\frac{s}{e-d}\le 1-\frac{s}{.907-s}<.886 .
\]
Thus \(J<.772\) and \(a,d\ge s/J>.1204\). Use these two improved
lower bounds in the same formulas to get
\[
 b>\frac{s}{.9076-.1204}>.118,\qquad
 c<1-\frac{s}{.907-.1204}<.882 .
\]
It follows that \([BCE]<.907(.882-.118)=.692948<347/500\).
Both triangles therefore contain at most one actual interior point.

## 9. The \(CR,HA\) crossing in IIRT

The four endpoints of these edges form the quadrilateral \(HACR\).
Its diagonal \(HC\) puts both upper points in \(HCR\). We prove
\([HCR]<347/500\), which rules out this crossing.

Use \(c,e\in[4s,1-s]\) from Section 5 and \(t\in[s,1]\) from
\([ESF]\ge s\). Consider an interval
\([c_0,c_1]\times[e_0,e_1]\times[t_0,t_1]\) in these three variables.
Write \(A_0=1-e_0>0\). The [printed table](N6_ADJACENT_CAPS_HCR_TABLE.md)
gives its successive upper bounds \(K\) for \(h\). They are justified
as follows.

Start with \(K=1,\ b_0=103/1000\). Repeat the following step at
most three times. Put \(J_1=c_1-b_0\). The test *bottom* applies if
\(J_1\le0\) or \(K\le s/J_1\), since \(a\ge s/(c-b)\) and \(h>a\).
Otherwise \([HAB]\ge s\) allows the stronger lower bound
\[
 b_0\ \longleftarrow\ \max\left(b_0,\frac{s}{K-s/J_1}\right).
\]
The actual \(f\) belongs to \(I=[b_0,\min(c_1,t_1-s/A_0)]\):
use \(b\le f\le c\) and \([ESF]\ge s\). An empty interval is the
test *top*.

The second weighted ear inequality in Section 2 gives
\[
 h\le 1+\frac{f(1-e)-s/(t-f)}{1-f}
      \le 1+\frac{A_0 f-s/(t_1-f)}{1-f}.
\]
Thus a proposed new bound \(K'\) is valid when
\[
 (K'-1)(1-f)(t_1-f)-A_0 f(t_1-f)+s\ge0             \tag{11}
\]
on \(I\). Its quadratic minimum is checked at the two endpoints
and also at the vertex if the quadratic coefficient is positive
and the vertex is in \(I\). A dash in the table retains the current
\(K\), so it does not require (11). After each improvement use
the test *height* if \(K<e_0\), contrary to \(h\ge e\).

After the three steps set \(J_1=c_1-b_0\) again. If \(J_1\le0\)
the *bottom* test applies. To bound the actual \(D=e-d\), use
\[
 D_1=e_1-s/J_1,\qquad
 B_1=1-c_0+\max\bigl(e_0(c_0-t_0),e_1(c_0-t_0)\bigr).
\]
The first comes from \(d\ge s/(c-b)\). The expression
\(e(1-t)+(1-e)(1-c)\) is at most \(B_1\), by taking \(t=t_0\),
\(c=c_0\) and then maximizing the affine expression in \(e\).
The first weighted ear inequality in Section 2, after dropping
the nonpositive term, gives \(D B_1\ge s\).
The test *gap* applies if \(B_1\le0\) or if
\[
 D_0:=\max\bigl(s/(1-c_0),s/B_1\bigr)>D_1.
\]
In the other cases \(D_0\le D\le D_1\).

Finally \([RES]\ge s\) gives
\(\delta\ge\max(0,(s-D(1-t_0))/A_0)\). With
\([HCR]=h(1-c-\delta)+c(e-D)\) we obtain
\[
 [HCR]\le
 K\left(1-c_0-\max(0,(s-D(1-t_0))/A_0)\right)+c_1(e_1-D).    \tag{12}
\]
For the actual \(D\), the parenthesis is at least \(r-c>0\).
The right side is piecewise affine in \(D\), so evaluate it at
\(D_0,D_1\) and at \(s/(1-t_0)\) if the denominator is positive
and the point lies in the interval. This gives the last column
of the table. Its 767 paths cover the closed initial box and every
feasible path has (12) strictly below \(347/500\). Thus the
\(CR,HA\) crossing is impossible in IIRT.

## 10. The \(AB,RE\) crossing in IIRT

Order the two upper points along the chord from \(AB\) to \(RE\).
The convex quadrilateral \(ABRE\) contains both. The vertices
\(B,C,R\) lie on the negative side of the directed line \(PQ\).
The other hull vertices lie on its positive side. Take the cyclic
octagon signs, the inward tests of the octagon, \(HCEF\) and \(ABRE\)
at \(P,Q\), the contact-hexagon edge tests at \(R,S\), and the six
diagonal signs from the entry and exit rule in Section 6. These
give the signs in the
[initial table](N6_ADJACENT_CAPS_TABLES/IIRT_AB_RE/domain.md).

Write \(\alpha=1037/10000\).
The contacts give \(a(1-a),b(1-b)\ge s\), as in Section 2 and its
transpose on the four lower contacts. Since \(\alpha(1-\alpha)<s\),
both \(a,b\ge\alpha\), and \(f\ge\alpha\). Define
\[
\begin{aligned}
 E_0&=4s/(1-\alpha),&
 E_1&=1-s/(1-\alpha),&
 F_1&=\min(1-s,1-s/(1-E_0)),\\
 C_1&=1-s/E_1,&
 B_0&=s/(1-\alpha),&
 A_0&=\max(\alpha,s/(C_1-\alpha)),\\
 X_0&=s/(1-A_0),&
 Y_0&=s/(C_1-B_0),&
 F_2&=\min(F_1,1+s-4s/(1-s)).
\end{aligned}
\]
The right support gives \(e\ge E_0\) by (1). The virtual top
triangle gives \((1-e)(1-f)\ge s\), hence \(e\le E_1,f\le F_1\).
The further bound \(f\le F_2\) uses (2).
The lower and right ears give \(c\in[4s,C_1]\), \(h\in[E_0,1]\).
The \(ABC,HAB\) clearances give \(a\ge A_0,b\ge B_0\).
Since \(a\le E_1\le1-\alpha\) and \(b\le F_1\le1-\alpha\),
the same clearances give \(h-a,c-b\ge B_0\). It follows that
\[
 a\le \min(E_1,1-B_0),\qquad b\le\min(F_1,C_1-B_0).
\]

The pair \(AH\) gives the lower abscissa \(X_0\) for every free
point and \(BC\) gives the lower ordinate \(Y_0\). The inward
edge identities of the contact quadrilateral give \(x,y\le 1-s\)
for each upper point. In the first identity for the abscissa,
\((1-f)[CEX]+(1-c)[EFX]=[CEF](1-x)\) and
\([CEF]\le 2-c-f\). For the ordinate use
\((1-e)[FHX]+(1-h)[EFX]=[EFH](1-y)\) and \([EFH]\le2-e-h\).
The right cap gives \(r\ge c+s/e\) and \(d\le e-s/(1-c)\).
The top cap gives \(t\ge f+s/(1-e)\) and \(z\ge e+s/(1-f)\).
Thus the four free-point coordinate pairs belong to
\[
\begin{array}{c|cc}
 &x&y\\ \hline
 P,Q &[X_0,1-s]&[Y_0,1-s]\\
 R&[\max(X_0,4s+s/E_1),1]&[Y_0,E_1-s/(1-4s)]\\
 S&[\max(X_0,\alpha+s/(1-E_0)),1]&
      [\max(Y_0,E_0+s/(1-\alpha)),1].
\end{array}
\]
In the tables the names \(w,j,k\) stand for \(d,t,z\).

The actual right support bound is \(e(r-b)\ge4s\). The
two products \(d(c-b)\) and \((e-d)(r-c)\) are each at least \(s\),
since the first equals \([BCR]\) and
\((e-d)(r-c)-[CRE]=d(1-r)\ge0\). Cauchy–Schwarz gives the
claimed bound on their containing product \(e(r-b)\).
The actual top support bound is
\((t-f)(z-e)=[ESF]+(1-t)(1-z)\ge s\).

The [case tree](N6_ADJACENT_CAPS_TABLES/IIRT_AB_RE/tree.md)
has 41 actual-sign splits and 42 contradictory leaves.
There are 33 area-interval, seven coordinate-interval and two
weighted contradictions. The
[table guide](N6_ADJACENT_CAPS_TABLES/INDEX.md) gives the row types
and branch references.

## 11. The \(CR,SF\) crossing in IIRT

Order \(P,Q\) toward the \(SF\) exit. The line puts the consecutive
vertices \(R,E,S\) on its negative side and the other hull vertices
on its positive side. Both points lie in \(CRSF\). Its crossing
pair corresponds to edges \(CE,EF\) of \(HCEF\), by Section 6.
Consequently both \(P,Q\) lie inside \(CEF\), giving its three
strict inward tests at each point.

Use the same box and common sign rules as in Section 10, with
the new crossed edges and both \(CEF\) tests. The
[initial table](N6_ADJACENT_CAPS_TABLES/IIRT_CR_SF/domain.md)
prints the resulting hypotheses and all actual determinants.
The [tree](N6_ADJACENT_CAPS_TABLES/IIRT_CR_SF/tree.md) has
72 actual-sign splits and 73 contradictory leaves.
They comprise 61 area-interval, seven coordinate-interval,
two geometric and three weighted contradictions.
The two spread inequalities in the
[table guide](N6_ADJACENT_CAPS_TABLES/INDEX.md) are available
under their printed incidence hypotheses.

## 12. The \(CR,HA\) crossing in BIRT

The line is directed from \(HA\) to \(CR\) because \(P\) is the
lower point. The vertices \(A,B,C\) lie on its negative side.
Both points lie in the crossed-edge quadrilateral \(CRHA\).
The inward tests at \(P,Q\) use their respective contact
quadrilaterals, the octagon and \(CRHA\). The six diagonal
signs follow from Section 6. In addition \([HBP]>0\), since the
ear \(HAB\) cannot contain \(P\) by Section 1.

Use the box of Section 10 with just one change. The lower
point \(P\) uses \(x\in[X_0,C_1]\), \(y\in[Y_0,1]\), since
it lies in \(HABC\). The actual points \(H,C,A,B,P\) belong to
the virtual triangle \(H,C,(0,0)\), with two actual endpoints.
The [five-point endpoint bound](TYPE_II.md) gives
\[
 hc\ge(3+2\sqrt2)s>(1457/250)s.
\]
Also \(hp+cq\le hc-s\) by the \(HC\) clearance, and
\(hp+cq\ge hc(p+q)\) by \(c,h\le1\). Hence \(p+q\le1-s\).
These are the two additional lower-point factors in the proof.

The [initial table](N6_ADJACENT_CAPS_TABLES/BIRT_CR_HA/domain.md)
prints the resulting box and signs. The
[complete tree](N6_ADJACENT_CAPS_TABLES/BIRT_CR_HA/tree.md)
has 108 determinant splits. The 109 terminal contradictions
comprise 53 area-interval, 15 coordinate-interval, three geometric
and 38 weighted contradictions. Each has the geometry and arithmetic
of the common [table guide](N6_ADJACENT_CAPS_TABLES/INDEX.md).

## 13. The \(AB,RE\) crossing in BIRT

Order the line from the lower edge \(AB\) to the upper edge \(RE\).
Its negative arc consists of \(B,C,R\). Both points lie in the
quadrilateral \(ABRE\). Inside \(HCEF\), the crossing pair becomes
\(HC,CE\), by Section 6. The upper point \(Q\) therefore belongs
to \(HCE\), giving its three inward tests. Use the BIRT contact
box and lower-point bounds from Section 12, and the other common
sign rules of Section 10.

The [initial table](N6_ADJACENT_CAPS_TABLES/BIRT_AB_RE/domain.md)
gives every starting sign and the closed box. The
[case tree](N6_ADJACENT_CAPS_TABLES/BIRT_AB_RE/tree.md) gives
63 determinant splits and 64 contradictions. They are 33
area-interval, 18 coordinate-interval, 12 weighted and one
geometric. For an actual pentagon containing both points,
the lower bound on the endpoint support area is \((1137/100)s\).
[Two-occupant pentagon support](PENTAGON_EAR_SUPPORT.md)

## 14. The \(ES,HA\) crossing in IIRT

Order the points along the chord from \(ES\) to \(HA\).
The negative arc is \(S,F,H\), and both upper points belong
to the crossed-edge quadrilateral \(ESHA\). These two facts
and the common box and sign rules of Sections 6 and 10 give the
[initial table](N6_ADJACENT_CAPS_TABLES/IIRT_ES_HA/domain.md).

The [case tree](N6_ADJACENT_CAPS_TABLES/IIRT_ES_HA/tree.md)
has 37 determinant splits and 38 contradictions. There are
29 area-interval, four coordinate-interval, two geometric
and three weighted contradictions. A convex actual pentagon
containing both points contributes both the \(9s\) doubled-area
floor and the \((1137/100)s\) endpoint support floor.
[Pentagon bounds](PENTAGON_EAR_SUPPORT.md)

## 15. The \(BC,ES\) crossing in IIRT

Order the chord from \(BC\) to \(ES\) so that \(A\) is on its
positive side. The negative vertices are \(C,R,E\), and the two
upper points belong to \(BCES\). Use the ordinary inward tests
at \(P,Q\) in the octagon, \(HCEF\) and \(BCES\), with the
capacity-one signs of Section 6 and the box in Section 10.
The [initial table](N6_ADJACENT_CAPS_TABLES/IIRT_BC_ES/domain.md)
lists all these signs and the determinant expansions.

The [tree](N6_ADJACENT_CAPS_TABLES/IIRT_BC_ES/tree.md) has
45 determinant splits and 46 terminal contradictions:
40 area-interval, five coordinate-interval and one geometric.
The area bounds and exact refinements are those specified in the
[table guide](N6_ADJACENT_CAPS_TABLES/INDEX.md).

## 16. The \(AB,SF\) crossing in IIRT

Order \(P,Q\) from \(AB\) to \(SF\). The containing quadrilateral
is \(ABSF\). The negative vertices of the directed line \(PQ\)
are \(B,C,R,E,S\), and the positive vertices are \(F,H,A\).
Use the initial box from Section 10 and the entry and exit tests
from Section 6. These give the signs and coordinates in the
[domain table](N6_ADJACENT_CAPS_TABLES/IIRT_AB_SF/domain.md).

The [case tree](N6_ADJACENT_CAPS_TABLES/IIRT_AB_SF/tree.md)
has 61 determinant splits and two closed coordinate cuts.
Its 64 contradictions comprise 52 area-interval, ten
coordinate-interval and two weighted contradictions. The
[row guide](N6_ADJACENT_CAPS_TABLES/INDEX.md) gives the
arithmetic and the references between steps.

## 17. The \(BC,FH\) crossing in BIRT

The crossing order is \(BC\) to \(FH\), and the negative vertices
are \(C,R,E,S,F\). The full segment lies in \(BCFH\).
Splitting that quadrilateral along \(HC\) puts \(P\) in \(HBC\)
and \(Q\) in \(HCF\). These give the additional inward signs in
the [domain](N6_ADJACENT_CAPS_TABLES/BIRT_BC_FH/domain.md).
The common box and lower-point factors are those of Section 12.

The [complete tree](N6_ADJACENT_CAPS_TABLES/BIRT_BC_FH/tree.md)
has 98 determinant splits and 99 contradictions. There are
51 area-interval, sixteen coordinate-interval and 32 weighted
contradictions. The printed lower compatibility, triangle arc
and spread sources use the rules in the
[table guide](N6_ADJACENT_CAPS_TABLES/INDEX.md).

## 18. The \(AB,ES\) crossing in IIRT

Order \(P,Q\) from \(AB\) to \(ES\). The containing
quadrilateral is \(ABES\), and the negative hull vertices
are \(B,C,R,E\). Use the box of Section 10 and the inward and
entry and exit tests of Section 6, as in the
[domain](N6_ADJACENT_CAPS_TABLES/IIRT_AB_ES/domain.md).

The [tree](N6_ADJACENT_CAPS_TABLES/IIRT_AB_ES/tree.md)
has 82 determinant splits and 83 contradictions. There are
66 area-interval, 15 coordinate-interval and two weighted
contradictions. The [row guide](N6_ADJACENT_CAPS_TABLES/INDEX.md)
includes the area and coordinate rules.

## 19. The \(RE,FH\) crossing in IIRT

Order \(P,Q\) from \(RE\) to \(FH\). The negative vertices
are \(E,S,F\), and both upper points belong to \(REFH\).
Use the common box in Section 10 and the signs from the
entry and exit tests of Section 6. The
[domain](N6_ADJACENT_CAPS_TABLES/IIRT_RE_FH/domain.md) gives
these initial signs and coordinate endpoints.

The [tree](N6_ADJACENT_CAPS_TABLES/IIRT_RE_FH/tree.md) has
94 determinant splits and 95 contradictions. They comprise
66 area-interval, 14 coordinate-interval, nine geometric
and six weighted contradictions.
[Arithmetic guide](N6_ADJACENT_CAPS_TABLES/INDEX.md)

## 20. The \(RE,HA\) crossing in IIRT

Order \(P,Q\) from \(RE\) to \(HA\). The negative vertices
are \(E,S,F,H\). The quadrilateral \(REHA\) contains both
points, and Section 6 places them both in \(HCE\).
These conditions and the box of Section 10 give the
[domain](N6_ADJACENT_CAPS_TABLES/IIRT_RE_HA/domain.md).

The [tree](N6_ADJACENT_CAPS_TABLES/IIRT_RE_HA/tree.md) has 167
determinant splits and one closed coordinate cut. Its 169
contradictions comprise 111 area-interval, 20 coordinate-interval,
seven geometric and 31 weighted contradictions.
[Arithmetic guide](N6_ADJACENT_CAPS_TABLES/INDEX.md)

## 21. The \(CR,FH\) crossing in IIRT

Order \(P,Q\) from \(CR\) to \(FH\). The negative vertices
are \(R,E,S,F\). Their containing quadrilateral is \(CRFH\).
The [CRF bound](N6_ADJACENT_CAPS_CRF.md) gives
\([CFP]<0<[CFQ]\). These conditions together with Sections
6 and 10 give the [domain](N6_ADJACENT_CAPS_TABLES/IIRT_CR_FH/domain.md).

The [tree](N6_ADJACENT_CAPS_TABLES/IIRT_CR_FH/tree.md) has 139
determinant splits and four closed coordinate cuts. The 144
contradictions comprise 99 area-interval, 18 coordinate-interval,
four geometric and 23 weighted contradictions.
[Arithmetic guide](N6_ADJACENT_CAPS_TABLES/INDEX.md)

## 22. The \(BC,SF\) crossing in IIRT

Order \(P,Q\) from \(BC\) to \(SF\). The negative vertices
are \(C,R,E,S\). Both points lie in \(BCSF\).
The initial box and inward tests use Sections 6 and 10.
[Domain](N6_ADJACENT_CAPS_TABLES/IIRT_BC_SF/domain.md)

The [tree](N6_ADJACENT_CAPS_TABLES/IIRT_BC_SF/tree.md) has 154
determinant splits and 155 contradictions. They comprise
120 area-interval, sixteen coordinate-interval, one geometric
and eighteen weighted contradictions.
[Arithmetic guide](N6_ADJACENT_CAPS_TABLES/INDEX.md)
