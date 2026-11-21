# Six-contact BIIT with the upper line crossing \(CE\) and \(FH\)

Use the [BIIT arc notation](N6_BIIT_ARCS.md). The six contacts
are \(A=(0,a),B=(b,0),C=(c,0),E=(1,e),F=(f,1),H=(0,h)\).
The lower point is \(P=(p,q)\), the two central points are
\(Q=(u,v),R=(r,w)\), and the top point is \(S=(j,k)\). The
actual hull is \(ABCESFH\). A square transposition preserves
the two crossings, so take \(e\le f\), and then label the
central points by \([AQR]>0\). Write \(s=.093\) and suppose
the least ordinary area is \(m\ge A^*\). In particular each
actual doubled area is at least \(s\). A row marked
\(\texttt{esf\_competitive}\) uses the stronger floor .09307
by the rational comparison with \(2A^*\) in the
[IITT setup](N6_IITT.md).

The arc \(ESF\) is on the negative side of the line \(QR\).
The remaining vertices \(A,B,C,H\) are on the positive side.
Both points belong to \(CEFH\) by the upper-region tests.
The [BIIT common domain](N6_BIIT_ARCS.md#the-es-arc-when-ele-f)
gives the starting box and the basic polynomial factors.
The actual area of \(HCEF\) is \(1-(h-e)(c-f)\le1\). The
actual area of \(ABEF\) is \(1-(e-a)(f-b)\le1\).
[Three-point cut](N6_CORNER_CONTAINERS.md)

## Area ceilings

Let \(\alpha=.1037\). The lower ears give \(c,h\ge4s\)
and \(a,b\ge\alpha\). The top budget and \(e\le f\) give
\(s\le(1-e)(1-f)\le(1-e)^2\), so \(e<.696\), since
\(.304^2<s\). The same top budget gives \(f<.897\), using
\(e\ge\alpha\). The contact inequality \(a(c-b)\ge s\)
implies \(c\ge \alpha+s/e\). Thus
\[
\begin{aligned}
 [CEF]&=1-(1-e)c-ef\\
      &\le1+s-\alpha+\alpha e-s/e-e^2\\
      &<1+s-\alpha+.696\alpha-.3879<.674 .
\end{aligned}
\]
Here \(s/e+e^2\ge3(s/2)^{2/3}>.3879\), with
\((.3879)^3<27s^2/4\).

The top area \([ESF]=(1-e)(j-f)-(1-f)(1-k)\ge s\)
implies \(1-j\le1-f-s/(1-e)\). Hence
\[
 \begin{aligned}
 [CES]&=(1-c)(k-e)+e(1-j)\\
      &\le .628+(.372-\alpha)e-\frac{se}{1-e}\\
      &\le .628+(\sqrt{.372-\alpha}-\sqrt s)^2<.675.
 \end{aligned}
\]
The second inequality follows by applying the arithmetic–geometric
mean inequality to \((.372-\alpha)(1-e)+s/(1-e)\).
The last follows from \(\sqrt{.372-\alpha}<.518\) and
\(\sqrt s>.304\). The same argument after transposition gives
\([FHS]<.675\). This transposed calculation uses the common
bounds \(c,h\ge4s\) and \(e,f\ge\alpha\).
The three ceilings are the \(\texttt{esf\_area\_cap}\) rows.

The lower point gives the sharper ordinate bound \(e<.684\).
Suppose instead \(e\ge.684\) and write \(X=1-e,\ Y=1-f\),
\(\delta=1-j,\ \epsilon=1-k\). Then \(X,Y\le .316\) and
\(XY\ge s\), so \(f\le1-s/.316<.707\). Use \(k\le1,j\le1\)
in the formulas for the two outer top ears. Together with
the top area identity this gives
\[
 \begin{aligned}
 s&\le [CES]\le(1-c)X+e\delta,\\
 s&\le [SFH]\le(1-h)Y+f\epsilon,\\
 X\delta+Y\epsilon&\le XY-s\le .316^2-s.
 \end{aligned}
\]
As \(X,Y>.293\) and \(e,f<.707\), these imply
\[
 c+h\ \le\
 2-\frac{2s}{.316}
 +\frac{.707}{.293^2}(.316^2-s)
 =\frac{2488772917}{1695517750}<1.469 .
\]
But \(hc\ge(1457/250)s\) and \(1.469^2<4(1457/250)s\).
Therefore \([ACE]\le e<.684\), and
\([BCE]=e(c-b)<.684(1-\alpha)<.614\).
These are two more \(\texttt{esf\_area\_cap}\) ceilings.
The bound \(e\le.684\) is also the coordinate factor
\(\texttt{esf\_e\_ceiling}\).

If \(P\) lies in \(ABC\) or \(HAB\), one lower ear has
area at least \(3s\) and the other at least \(s\).
Cauchy--Schwarz applied to the two ear expressions in
the ratios \(a/h,b/c\) gives \(hc\ge(4+2\sqrt3)s>(149/20)s\).
In the same top-ear argument replace .684 by .661, .316
by .339 and .707 by .726. It gives
\[
 c+h\le
 2-\frac{2s}{.339}+
 \frac{.726}{.274^2}(.339^2-s)
 =\frac{7055409499}{4241794000}<1.664 ,
\]
inconsistent with \(1.664^2<4(149/20)s\).
The corresponding factor \(\texttt{esf\_e\_ear\_ceiling}\)
uses \([ACP]<0\) or \([BHP]>0\), the two lower-ear tests.

## Ordered upper coordinates and forced orientations

Set \(D=u-r\), \(G=w-v\) and \(d_X=[XQR]\).
Direct subtraction gives
\[
 \begin{aligned}
 D-(c-f)G&=d_C-d_F\ge 2s,\\
 G-(h-e)D&=d_H-d_E\ge 2s.
 \end{aligned}
\]
Because \(0\le c-f,h-e<1\), adding the first inequality
to \(c-f\) times the second gives \(D\ge 2s\).
Adding the second to \(h-e\) times the first gives \(G\ge2s\).
The same identities apply with the established lower bounds
of the two unsigned determinants in place of each \(2s\).
These are the \(\texttt{esf\_dx}\) and \(\texttt{esf\_dy}\)
coordinate factors.
If the box supplies nonnegative lower bounds \(\lambda,\mu\)
for \(c-f,h-e\), and the right-hand sides have lower endpoints
\(J,K\), the same additions give
\[
 D\ge (J+\lambda K)/(1-\lambda\mu),\qquad
 G\ge (K+\mu J)/(1-\lambda\mu).
\]
These are \(\texttt{esf\_x\_order}\) and
\(\texttt{esf\_y\_order}\).

Subtracting the signed determinants on \(CF\) gives
\([CFR]-[CFQ]=D-(c-f)G\ge2s\). If \([CFR]<0\),
both \(Q,R\) are in \(CEF\), whose area is below the two-point
triangle cost \((4+2\sqrt 3)s>.694\). Thus \([CFR]>0\).

On any directed edge \(XY\) with both coordinate differences
nonnegative, at least one positive, one has
\[
 [XYR]-[XYQ]=(x_Y-x_X)G+(y_Y-y_X)D>0.
\]
This applies to \(AE,AF,AH,AS,BC,BE,BF,BS,CE,HF\).
For \(AS,BS\) the cap gives \(j>f\), \(k>e\); for the other
eight segments use the contact order. A positive sign at \(Q\)
forces a positive sign at \(R\), and a negative sign at \(R\)
forces a negative sign at \(Q\). A positive sign at \(Q\)
together with a negative sign at \(R\) is impossible.
These are the \(\texttt{esf\_monotone}\) rows.

If \([BER]<0\), both central points are in \(BCE\).
The line \(QR\) isolates \(E\) in that triangle, with
\(d_B,d_C\ge s\) and \(d_B-d_C=(c-b)G\). The
[two-point triangle spread bound](N6_IIRL_SETUP.md#two-occupants-of-an-actual-triangle)
then gives
\[
 e(c-b)=[BCE]\ \ge\ d_B+d_C+(2+2\sqrt3)s
            \ \ge\ (4+2\sqrt3)s+(c-b)G.
\]
But \((e-G)(c-b)\le(.897-.186)(1-\alpha)<.694\),
a contradiction. Thus \([BER]>0\). Likewise, if \([AFQ]>0\),
both central points are in \(AFH\). The line \(QR\) isolates \(F\),
with \(d_A-d_H=(h-a)D\). The same spread bound gives
\((f-D)(h-a)\ge(4+2\sqrt3)s\), again impossible by the same
rational ceiling. Thus \([AFQ]<0\). The three forced signs
are the \(\texttt{esf\_forced}\) rows.

## The two lower-to-upper lines

For \(X=Q\) and \(X=R\), direct \(PX\) from \(P\) toward \(X\).
The line hits \(HC\) once between them. Its entry into the
actual hull is one of \(HA,AB,BC\), and its exit is one of
\(CE,ES,SF,FH\). The open edges exhaust the possibilities
because every actual determinant is nonzero. The vertices
met in the positive cyclic hull order between entry and exit
are on the negative side of the directed line. In each row,
both points are in the convex hull of the endpoints of entry
and exit. A shared endpoint is kept once. If the entry is
\(HA\) or \(BC\), the lower segment puts \(P\) in \(HAC\)
or \(HBC\) respectively. If the exit is \(CE\) or \(FH\), the
upper segment puts \(X\) in \(HCE\) or \(HCF\) respectively.
All the corresponding inward tests are strict, because the
edges use actual vertices.

| Entry | Exit | Negative vertices | Container of both points |
| --- | --- | --- | --- |
| \(HA\) | \(CE\) | \(ABC\) | \(HACE\) |
| \(HA\) | \(ES\) | \(ABCE\) | \(HAES\) |
| \(HA\) | \(SF\) | \(ABCES\) | \(HASF\) |
| \(HA\) | \(FH\) | \(ABCESF\) | \(HAF\) |
| \(AB\) | \(CE\) | \(BC\) | \(ABCE\) |
| \(AB\) | \(ES\) | \(BCE\) | \(ABES\) |
| \(AB\) | \(SF\) | \(BCES\) | \(ABSF\) |
| \(AB\) | \(FH\) | \(BCESF\) | \(ABFH\) |
| \(BC\) | \(CE\) | \(C\) | \(BCE\) |
| \(BC\) | \(ES\) | \(CE\) | \(BCES\) |
| \(BC\) | \(SF\) | \(CES\) | \(BCSF\) |
| \(BC\) | \(FH\) | \(CESF\) | \(BCFH\) |

The \(\texttt{esf\_chord}\) deductions use signs common to
the rows still compatible with the established signs for
the selected pair \(PX\). An empty set of compatible rows
gives a contradiction.
The \(\texttt{esf\_tight\_chord}\) rows also omit \(BC,CE\),
whose container \(BCE\) has area less than .614 and so cannot
hold two actual points. In the \(AB,CE\) row, the diagonal
\(AC\) divides \(ABCE\) into \(ABC\) and \(ACE\). The upper
point is in \(ACE\) because \(ABC\) lies below \(HC\).
The lower point must then be in \(ABC\), since \(ACE\)
has insufficient area for two actual points. Thus this row
adds \([ACP]<0\).

## Area factors

If an actual convex pentagon contains \(Q,R\), its doubled
area is at least \(9s\), and each finite endpoint support has
doubled area above \(1137s/100\). The witness records the
pentagon order and its inward edge signs at both points.
The two factors are \(\texttt{esf\_pent\_area}\) and
\(\texttt{esf\_pent\_support}\).
[Occupied pentagon](PENTAGON_EAR_SUPPORT.md#two-actual-points-inside-the-pentagon)

The \(\texttt{esf\_tri\_spread}\) relation applies to any
pair from \(P,Q,R\) in an actual triangle. It uses the same
two-point triangle spread proof as above, with the lower
constant \(109s/20\) and the stated isolated triangle vertex.
For a pair contained in a convex actual quadrilateral and
separated by both of its diagonals, use the quadrilateral
spread factor with constant \(29s/5\), increased to \(6s\)
for \(HCEF\) and \(ABEF\) whose doubled areas are at most
one. The \(\texttt{esf\_quad\_spread}\) row gives the
quadrilateral, the diagonal and the two points used.
[Triangle and quadrilateral spread](N6_IIRL_SETUP.md#separation-by-both-diagonals-of-an-actual-quadrilateral)

## Remaining coordinate factors

Write \(L_T,H_T\) for established unsigned doubled-area
endpoints at the indicated actual triangle. The identity
\[
 (k-e)[CEF]=e[ESF]+(1-e)[CES]
\]
gives the lower bound \(H_{CEF}(k-e)-eL_{ESF}-(1-e)L_{CES}\ge0\)
used by \(\texttt{esf\_top\_vertical\_gap}\).
The analogous horizontal gap is in the
[BIIT common factors](N6_BIIT_ARCS.md).

If \(M\) is the greater of the current upper endpoints of
\(c,h\), then the lower and upper region tests respectively give
\[
 p+q\le M-L_{HCP}/M,\qquad
 x+y\ge\frac{(1457/250)s+L_{HCX}}M
 \quad(X=Q,R).
\]
For the first inequality, \(p/c+q/h\le1-L_{HCP}/(hc)\);
multiply by \(M\) and use \(hc\le M^2\). For the second,
\(x/c+y/h\ge 1+L_{HCX}/(hc)\). Multiply by \(\min(c,h)\),
then use \(hc\ge(1457/250)s\). The factors are
\(\texttt{esf\_lower\_sum}\) and
\(\texttt{esf\_upper\_sum\_X}\).
[Lower virtual triangle](N6_BIRL_SETUP.md#lower-and-upper-coordinate-sums)

For \(X=(x,y)\) equal to either upper point, the inward
identities give
\[
\begin{aligned}
 (1-x)[CEF]&\ge (1-f)L_{CEX}+(1-c)L_{EFX},\\
 (1-y)[HEF]&\ge (1-e)L_{FHX}+(1-h)L_{EFX}.
\end{aligned}
\]
Keep the actual contact determinant in the left side for
\(\texttt{esf\_actual}\). Replace it by its established upper
endpoint for \(\texttt{esf\_box}\). The differences are
nonnegative by \(x,y\le1\) and the inward edge tests.
[Inward identities](N6_IITT.md#the-two-hulls-and-their-closed-intervals)

The affine function \(d_X=D(v-y_X)+G(u-x_X)\)
decreases by \(G\) times a rightward displacement and by \(D\)
times an upward displacement. Project \(P\) horizontally or
vertically to the segment \(HC\), reaching it along a positive
displacement. These displacements are \(|[HCP]|/h\) and
\(|[HCP]|/c\), respectively. The projected point has \(d_X\)
at least \(\min(L_{HQR},L_{CQR})\) by affinity along \(HC\).
Similarly project \(S\) horizontally left or vertically down
to \(EF\), with displacement \([ESF]/(1-e)\) or
\([ESF]/(1-f)\). The resulting \(-d_X\) is at least
\(\min(L_{EQR},L_{FQR})\). The four factors
\(\texttt{esf\_under\_x},\texttt{esf\_under\_y},
\texttt{esf\_over\_x},\texttt{esf\_over\_y}\)
subtract those endpoint floors and the appropriate displacement
times \(G\) or \(D\) from \(d_P\) or \(-d_S\). Each displacement
uses its numerator's area lower bound and denominator's upper
coordinate bound, because \(D,G>0\).
The initial area witness \(\texttt{esf\_shift\_floor}\)
uses these two projection bounds with all triangle floors
equal to \(s\) and the displayed box floors for \(D,G\).
At \(A,B\) use
\[
 d_A=d_H+(h-a)D,\qquad d_B=d_C+(c-b)G .
\]
The lower ears give \(h-a\ge s/b\) and \(c-b\ge s/a\).
The witness uses these rational consequences and the looser
generic box differences \(h-a\ge h_0-a_1,\ c-b\ge c_0-b_1\),
taking the greater lower bound at each edge.
At \(CER,FHQ\) the same witness uses
\([CER]-[CEQ]=d_C-d_E\ge 2s\) and
\([FHQ]-[FHR]=d_H-d_F\ge 2s\). The inward tests at
\(Q,R\) give \([CER],[FHQ]\ge3s\).

## The complete \(ESF\) tree

Start with the [domain](N6_BIIT_TABLES/ESF/domain.md).
The [case tree](N6_BIIT_TABLES/ESF/tree.md) has 110
determinant splits, each taking both strict signs. Every
split uses an actual triangle, so the positive minimum
area excludes its equality case. The 111 leaves give
56 scalar, 40 weighted, nine coordinate and six geometric
contradictions. The weighted sums contain 7,275 positive
integer multipliers. Each contradiction uses its printed
inherited box and area endpoints. The
[literal table notation](C1_IIRTT_TABLES/INDEX.md)
gives the scalar and coordinate operations.

Thus the \(CE,FH\) crossing is impossible at \(m\ge A^*\).
Transposition covers the other order of \(e,f\).
[Exact manuscript reader](audit_n6_biit_esf.py)
