# Two central points and a top pair in the six-contact family

Let the six normalized contacts be
\[
 A=(0,a),\quad B=(b,0),\quad C=(c,0),\quad E=(1,e),\quad
 F=(f,1),\quad H=(0,h),
\]
where \(0<a<h<1,\ 0<b<c<1,\ a\le e\le h,\ b\le f\le c\).
In the count \((0,2,0,2,0)\), the actual points \(P=(p,q),Q=(u,v)\)
lie in \(HCEF\), and \(R=(r,w),S=(j,k)\) lie beyond \(EF\) in the
top cap. The four free points are strictly inside the square. Write
\(m\) for the least ordinary triangle area and put \(s=93/1000\).
Assume \(m\ge A^*\), so every actual unsigned doubled area is at least \(s\).
[Placement reduction](N6_PLACEMENTS.md) and
[threshold comparison](FOUR_CORNERS.md)

An initial area row marked `iitt_competitive` uses the stronger
floor \(9307/100000=.09307\). Indeed the attainment polynomial
at \(g_0=31561/100000\) is \(-1860840557/250000000000000<0\),
so \(g>g_0\). The function \(5x^2/4-x^3\) increases on
the isolating interval, and its value at \(g_0\) exceeds .09307
by \(4281513519/10^{15}\). Thus every actual doubled area
is above this extra rational floor under the same maximizing
hypothesis. [Attainment parameter](ATTAINMENT.md)

## The two hulls and their closed intervals

Transposition preserves both regions and permits \(e\le f\).
Then order the two central labels to satisfy \([APQ]>0\),
and the two top labels to satisfy \([ERS]>0\). These two label
choices are independent. The three actual edge tests put \(S\)
inside \(ERF\) when \([FRS]<0\). Otherwise \(E,R,S,F\) is a
convex quadrilateral with \(r>j>f\) and \(e<w<k\), by the two
positive top turns. This is the same two-ray calculation as
for the one-corner top pair. The two new turns where the top
hull meets the contact hexagon are
\[
 [CER]=(1-c)(w-e)+e(1-r)>0,\qquad
 [TFH]=(x-f)(1-h)+f(1-y)>0,
\]
with \(T=R\) or \(S\) as appropriate. Thus the actual hull is
\(A,B,C,E,R,F,H\) or \(A,B,C,E,R,S,F,H\), respectively.
The printed initial signs are its cyclic triples, the inward
tests of \(P,Q\) in the hull and in \(HCEF\), the contact edge
tests \(ABX,BCX,FHX,CEX,HCX>0\) for every free point \(X\),
and the two signs of \(EFX\) for the central and top labels.
The triangular case also uses the inward tests at \(S\) in
\(ERF\) and in the actual hull. [Two-ray calculation](C1_BIITT.md)

Set \(\alpha=1037/10000,\ M=1-\alpha,\ \theta=s/M\),
and use \(n=3\) in the triangular case and \(n=4\) in the
convex case. The actual areas \(a(c-b),b(h-a)\) are at least
\(s\). If \(z=\min(a,b)\le\alpha\), its corresponding area
is at most \(z(1-z)\le\alpha(1-\alpha)<s\), a contradiction.
The same two areas imply
\(\sqrt{s}+\sqrt{s}\le\sqrt{hc}\) by Cauchy–Schwarz, after
writing the two products in the ratios \(a/h,b/c\).
Consequently \(h,c\ge4s\) and \(a,b\ge\theta\).
The triangle \(EF(1,1)\) has doubled area \((1-e)(1-f)\ge ns\).
Use the subdivision at \(S\) in the triangular case and
the four-point endpoint theorem in the convex case.
It follows that \(\alpha\le e,f\le L_n=1-ns/M\). This gives
\(a,b\le L_n\) also. In particular \(L_n<.69\).
[Endpoint theorem, §1](TYPE_II.md)

The actual triangles on \(AH,BC\) give all free coordinates
at least \(s/(1-\theta)\). The central upper bounds \(1-s\)
follow from the identities
\[
\begin{aligned}
 (1-f)[CEX]+(1-c)[EFX]&=[CEF](1-x),\\
 (1-e)[FHX]+(1-h)[EFX]&=[HEF](1-y).
\end{aligned}
\]
Both left sides use positive inward tests, and the bounding
areas satisfy \([CEF]\le1-f,\ [HEF]\le1-e\).
Keeping both left terms gives the multiaffine coordinate factors
\[
 (1-x)[CEF]-s(2-c-f)\ge0,\qquad
 (1-y)[HEF]-s(2-h-e)\ge0.
\]
These are `central_px` and `central_py` at \(P\), and
`central_qx` and `central_qy` at \(Q\).
For each top point \(T=(x,y)\), let \(N=3\) for the outer
point \(R\) in the triangular case, and \(N=1\) otherwise.
The area \([ETF]\ge Ns\) gives
\((1-e)(x-f),(1-f)(y-e)\ge Ns\).
Consequently each top coordinate is at least
\(\alpha+Ns/M\). The order of all printed coordinates is
\(a,b,c,e,f,h,p,q,u,v,r,w,j,k\). The original strict interior
condition remains available for sharp projection at a terminal.

## Top-coordinate factors

The factor `top_cost` is \((1-e)(1-f)-ns\). In the triangular
case the identity
\[
 (r-f)(w-e)=[ERF]+(1-r)(1-w)
\]
gives `top_actual` equal to \((r-f)(w-e)-3s\).
The three barycentric weights of \(S\) in \(ERF\) are at least
\(\lambda=s/M^2\). Reserve \(\lambda\) at each vertex and use
the coordinate extrema of \(E,R,F\) for the remaining mass.
This gives
\[
 f+\lambda(1+r-2f)\le j\le1-\lambda(2-f-r),\qquad
 e+\lambda(1+w-2e)\le k\le1-\lambda(2-e-w).
\]
The four corresponding nonnegative differences are the
`top_bary_j_lo`, `top_bary_j_hi`, `top_bary_k_lo` and
`top_bary_k_hi` factors.

In the convex case the two positive turns give
\[
 (w-e)(r-j)\ge s,\qquad (k-w)(j-f)\ge s
\]
by dropping the nonnegative endpoint products \((1-r)(k-w)\)
and \((r-j)(1-k)\), respectively. These give `top_ear_r`
and `top_ear_s`. Cauchy–Schwarz gives
\((r-f)(k-e)\ge4s\), the basis of `top_actual` here.
Set \(A_0=1-e,\ B_0=1-f,\ \Omega=A_0B_0\). The two-turn
inequality of the same top-pair lemma gives
\[
 \frac{1-r}{B_0}+\frac{1-k}{A_0}+2\sqrt{s/\Omega}\le1 .
\]
It follows that \(r+k\ge2-M+2\sqrt s>1.7136\),
giving `top_extreme_sum`. Since \(4s\le\Omega\le M^2<9s\),
\(100s\Omega-(2\Omega+12s)^2=4(\Omega-4s)(9s-\Omega)\ge0\).
Thus \(10\sqrt{s\Omega}\ge2\Omega+12s\) and the same
inequality times \(5\Omega\) gives `top_deficits`:
\[
 3(1-e)(1-f)-5(1-e)(1-r)-5(1-f)(1-k)-12s\ge0 .
\]
[Two-turn inequality](C1_BIITT.md)

## Contact caps and short arcs of the line \(PQ\)

The actual triangles \(ACE,BCE,BFH,AFH\) have doubled areas
at most .69. In fact the first two are at most \(e\), the
last two at most \(f\), by their determinant formulas and
\(a\le e,\ b\le f\). For the contact triangle \(CEF\), use
\(c\ge b+s/a\ge\alpha+s/e\) and \(e\le f\) to get
\[
 [CEF]\le 1+s-\alpha+\alpha e-s/e-e^2 .
\]
By the arithmetic–geometric mean inequality,
\(s/e+e^2\ge3(s/2)^{2/3}>.387\), using
\(27s^2/4>(.387)^3\). Together with \(e<.69\) this gives
\([CEF]<.674\).

The actual area \([ETF]\) also gives
\((1-r)\le1-f-Ns/(1-e)\) for \(T=R\), where \(N=3\)
in the triangular case and \(N=1\) in the convex case. Hence
\[
 [CER]\le 1-c+(c-f)e-\frac{Ns\,e}{1-e}
       \le .628+(.372-\alpha)e-\frac{Ns\,e}{1-e}.
\]
If \(N=3\), the last two terms have sum at most zero,
since \(.372-\alpha<3s\). If \(N=1\), set \(K=.372-\alpha\).
The sum of those terms is at most \((\sqrt K-\sqrt s)^2\)
by the arithmetic–geometric mean inequality applied to
\(K(1-e)+s/(1-e)\). Here \(\sqrt K<.518,\ \sqrt s>.304\),
and \(.628+(.518-.304)^2<.675\).
The same argument with \(h,f\) in place of \(c,e\) uses
the upper bound \(1-y\le1-e-Ns/(1-f)\) at \(T\).
It gives \([RFH]\le.628\) for the triangular hull and
\([RFH],[SFH]<.675\) for the convex hull. The convex top
deficit inequality and the lower contact product bounds also
give \([HEF]<.694\) on the convex domain.
These area caps are used by the source `iitt_cap`.
[Convex \(HEF\) bound](N6_IITT_CONVEX_HEF.md)

Each bound is below the area \((4+2\sqrt3)s>.694\)
required for two actual points strictly inside an actual triangle.
The line \(PQ\) hits two open hull edges and cannot pass
through a hull vertex. If only one vertex is on one side,
its ear contains both \(P,Q\). For the convex hull the
octagon inequality forbids this. In the triangular hull,
ears \(ABC,HAB\) lie in the lower quadrilateral and \(ERF\)
lies in the top cap. The other four ears \(BCE,CER,RFH,FHA\)
have just been bounded below the required two-point area.
This eliminates every one-vertex arc in both hulls.
[Octagon consequence](NINE_CONVEX_POINTS.md) and
[two-point triangle cost](TRIANGLE_OCCUPANCY.md)

A two-vertex arc would put both points in the quadrilateral of
its four neighboring vertices, including its two endpoints.
Neither point can be on an actual diagonal. In \(ABCE\)
the diagonal \(AC\) puts both points in \(ACE\), and in \(FHAB\)
the diagonal \(HB\) puts them in \(BFH\), because the other
triangles belong to the lower quadrilateral. Both caps
are impossible by the .69 bounds. In the convex top hull
the cap \(CERS\) splits into \(CES,ERS\). Both central
points would have to be in \(CES\), but
\[
 [CES]=[CEF]-(1-c)(1-k)-e(j-f)\le[CEF]<.674 .
\]
The analogous cap \(CERF\) in the triangular hull puts both
in \(CEF\). In the convex hull the entire cap \(ERSF\) is
above \(EF\). The convex cap \(RSFH\) splits along \(RF\) into
\(RSF,RFH\). Both central points would have to be in \(RFH\),
contrary to its area cap. Both hulls have the lower cap \(HABC\),
also empty of \(P,Q\).

In the convex hull the three-vertex arcs with caps \(CERSF\)
and \(ERSFH\) are excluded as well. The actual diagonal \(EF\)
separates the top quadrilateral from \(CEF\) or \(HEF\),
respectively. Both central points would lie in the latter
triangle, contradicting its established area cap.

At a finite branch the source `iitt_short_arc` uses this list
with the signs \([PQX]\) already established for hull vertices
\(X\). To check it, start the positive arc at each hull vertex
in cyclic order and let its length vary from two through two
less than the hull size. The remaining vertices are the negative
arc. If either arc has length two or three and its containing cap
is one of the exclusions above, discard it. Each remaining pair of arcs
must disagree with a known sign for the source to give a contradiction.

The source `iitt_central_pair` applies directly when both central
points satisfy \([CFP],[CFQ]<0\), placing them in \(CEF\).
In the convex top hull it also applies when
\([HEP],[HEQ]>0\), placing them in \(HEF\). Each assertion uses
the indicated diagonal of \(HCEF\) and the requisite area cap.

If one central point satisfies \([BEX]<0\), it lies in \(BCE\)
by its established \(BC,CE\) tests. If the other satisfies
\([AFX']>0\), it lies in \(AFH\) by its \(FH,HA\) tests.
The source `iitt_opposite_wings` uses these two distinct
occupants. The barycentric clearance inequalities give
\((1-e)(1-f)<3s\) on 49 exact contact rectangles.
[Opposite-wing contradiction](N6_IITT_OPPOSITE_WINGS.md)

With just one occupant of \(BCE\), the same barycentric proof
gives \([HCE](e(c-b)-2s)-s(c-b)(e+h)\ge0\). On a proved input
box put \(G_0=(1-c_0)h+c_0e\), with \(c_0\) the lower endpoint
of \(c\). Since \(e\le h\), we have \(G_0\ge[HCE]\).
The factor \(e(c-b)-2s\) is positive by occupancy.
Replace \([HCE]\) by \(G_0\), and in the resulting positive
term \(c_0(c-b)e^2\) replace \(e^2\) by its secant
\((e_0+e_1)e-e_0e_1\). Its gap over \(e^2\) is
\((e-e_0)(e_1-e)\ge0\). The resulting nonnegative
multiaffine expression is `right_wing`. Transposing
gives `left_wing` from an actual \(AFH\) occupant.

A scalar relation marked `iitt_pent_area` or `iitt_pent_support`
uses a convex actual pentagon containing both \(P,Q\). Its
containment witness gives either the five inward tests at each
point or the three-vertex arc with its two neighbors. For the
arc witness both crossings hit the two indicated outer edges,
as the three middle vertices are on one side of the line
and all other hull vertices on the other. The whole segment
between \(P,Q\) belongs to that pentagon. The pentagon has
doubled area at least \(9s\), and any finite endpoint support
triangle has doubled area above \(1137s/100\). The row gives
the fan sum or the corresponding support inequality, with its
own pentagon order. [Occupied-pentagon proof](PENTAGON_EAR_SUPPORT.md)

## The sharp convex projection at a terminal

A convex terminal may use the full signs and two metric cuts of
the [sharp IITT projection](N6_PROJECTED_COUNT_TERMINALS.md#2-two-upper-points-and-two-top-cap-points).
Both central labelings are allowed. Transposition and a new
top-ray ordering preserve the hypothesis that the actual top
pair is convex. The reader checks all ten signs after the
indicated transposition and labeling.

A coordinate test follows either from the two displayed endpoints
or from a contact-area bound. For the latter, put
\(c_0'=\max(c_0,f_0)\) and
\[
 U=\min\{.674,\,1-c_0'+e_1(c_0'-f_0)\}.
\]
This bounds \([CEF]=1-c+e(c-f)\), since that expression decreases
in \(c\), decreases in \(f\) and increases in \(e\) when
\(c\ge f\). The order \(c\ge f\) also permits the lower endpoint
\(c_0'\). More explicitly, first decrease \(f\) to \(f_0\),
then decrease \(c\) to \(c_0'\), and finally increase \(e\) to
\(e_1\). If
\[
                  (1-c_0')U\le s(2-c_1-f_1),
\]
then \((1-c)[CEF]\le s(2-c-f)\). The established central
coordinate inequality gives \((1-x)[CEF]\ge (1-c)[CEF]\),
so any central \(x\) is at most \(c\). Transposition gives
the same test for \(y\le h\), using the convex cap .694 on
\([HEF]\). These are the `area` choices in the projection
terminal. The `box` choices use the original coordinate endpoint
comparisons. Both tests are weak inequalities.

Once both cuts have been checked, the sharp projection theorem
gives strict \(m<A^*\), since the two outward depths are positive.
The hypothesis \(m\ge A^*\) therefore closes the terminal.

## Excluding the entire convex top hull

For \(E,R,S,F\) convex, start from the
[initial domain](N6_IITT_TABLES/quad/domain.md) and the two
[global stages](N6_IITT_TABLES/quad/global.md).
The [tree](N6_IITT_TABLES/quad/tree.md) gives 158 determinant
splits and sixteen closed coordinate cuts. Its 175 leaves
give the following contradictions.

| Terminal | Leaves |
| --- | ---: |
| Geometric or signed determinant contradictions | 20 |
| Sharp projection | 6 |
| Incompatible exact area endpoints | 62 |
| Empty coordinate intervals | 27 |
| Nonnegative weighted sums with negative ceilings | 60 |

The weighted leaves give 11,371 integer multipliers in all.
Each determinant split has its two strict signs, and each
coordinate cut covers the cut face in both children.
The parent boxes, area bounds, individual factors and exact
negative ceilings are printed. The six sharp terminals
each use the strict inward depths of \(R,S\) and the weak
metric cuts established on their branches. Thus every
convex top hull is excluded under \(m\ge A^*\).
[Table guide](N6_IITT_TABLES/INDEX.md)

## Excluding the triangular hull and the full count

When \(S\) is inside \(ERF\), use the
[triangular domain](N6_IITT_TABLES/tri/domain.md) and the
[two global stages](N6_IITT_TABLES/tri/global.md).
The [tree](N6_IITT_TABLES/tri/tree.md) contains 323 determinant
splits and three coordinate cuts. These cut \(f,r,j\) at
\(792287/2000000,\ 358713/500000,\ 162031/250000\), respectively.
The 327 leaves comprise 93 geometric, 122 scalar, 63
coordinate and 49 weighted contradictions, with 9,767 integer
multipliers in the weighted leaves. Both signs are
included at each determinant split. The two closed children
of a coordinate cut include its equality face. Each terminal
contradiction applies on the full inherited domain, using
the displayed earlier signs and bounds.

The two hull alternatives exhaust the two strict signs of
\([FRS]\). Thus in the six-contact count \((0,2,0,2,0)\) every
configuration has \(m<A^*\). Both original upper-contact
orders are covered by transposition.
[Complete table guide](N6_IITT_TABLES/INDEX.md)
