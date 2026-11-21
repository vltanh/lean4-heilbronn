# One lower point, one upper point and both side caps

Use the six contacts and coordinates of the [two-upper-point
setup](N6_IIRL_SETUP.md). Now \(P\) is inside \(HABC\), \(Q\) is inside
\(HCEF\), \(R\) is in the right cap and \(S\) is in the left cap.
Transposition still permits \(e\le f\). The same closed box and the
same two cap costs apply. Throughout the argument suppose that the
least ordinary triangle area \(m\) is at least \(A_*\). Then all
actual doubled areas are at least \(s=93/1000\).

The [chord tables](N6_BIRL_TABLES/INDEX.md) list the pairs already
excluded under these hypotheses.

## Lower and upper coordinate sums

The virtual triangle with vertices \((0,0),H,C\) contains five
actual points \(H,C,A,B,P\), including its two actual endpoints
\(H,C\). The five-point endpoint bound gives
\(hc\ge (3+2\sqrt2)s>(1457/250)s\).
[Five-point endpoint bound](TYPE_II.md)

Set \(M=\max(\operatorname{hi}(h),\operatorname{hi}(c))\), where the
endpoints are from the current box. The clearance of \(P\) below
\(HC\) gives \(p/c+q/h\le1-s/(hc)\), so
\[
 p+q\le M-s/M.
\]
The clearance of \(Q\) above \(HC\) gives
\(u/c+v/h\ge 1+s/(hc)\), so
\[
 u+v\ge \min(c,h)(1+s/(hc))
       =\frac{hc+s}{\max(c,h)}
       \ge\frac{(1457/250+1)s}{M}.
\]
All denominators are positive. The factors \(\mathtt{side\_lower\_cost}\),
\(\mathtt{side\_lower\_sum}\), and \(\mathtt{side\_upper\_sum}\)
subtract the displayed lower bound from the larger expression in
each inequality.

## Nine possible directed chords

The line through \(P,Q\) crosses one lower edge and one upper edge
of the octagon \(A,B,C,R,E,F,S,H\). Direct it from the lower edge
towards the upper edge. Its crossing \(X\) of \(HC\) satisfies the
strict order lower edge, \(P,X,Q\), upper edge along that line.
The hull vertices encountered counterclockwise after the lower
crossing and before the upper crossing are on the right of the
directed line, giving \([VPQ]<0\) at each such \(V\). All remaining
hull vertices give \([VPQ]>0\).

Each endpoint is on its crossed edge. Thus the four endpoints of the
two crossed edges span a quadrilateral containing both \(P,Q\).
The portion of the segment below \(HC\) is in the convex hull of
\(HC\) and the crossed lower edge. Above \(HC\) the analogous
convex hull uses the upper edge. The three containers, all in positive
cyclic order, are listed together. No actual point lies on any of
their boundary chords.

| Lower edge | Upper edge | Both points | Additional container of \(P\) | Additional container of \(Q\) |
| --- | --- | --- | --- | --- |
| \(AB\) | \(RE\) | \(ABRE\) | \(HABC\) | \(HCRE\) |
| \(AB\) | \(EF\) | \(ABEF\) | \(HABC\) | \(HCEF\) |
| \(AB\) | \(FS\) | \(ABFS\) | \(HABC\) | \(HCFS\) |
| \(BC\) | \(EF\) | \(BCEF\) | \(HBC\) | \(HCEF\) |
| \(BC\) | \(FS\) | \(BCFS\) | \(HBC\) | \(HCFS\) |
| \(BC\) | \(SH\) | \(BCSH\) | \(HBC\) | \(HCS\) |
| \(HA\) | \(CR\) | \(CRHA\) | \(HAC\) | \(HCR\) |
| \(HA\) | \(RE\) | \(REHA\) | \(HAC\) | \(HCRE\) |
| \(HA\) | \(EF\) | \(EFHA\) | \(HAC\) | \(HCEF\) |

The [two-side-cap theorem](N6_BOTH_SIDE_CAPS.md) proves that these
nine unordered pairs are exhaustive. The signs at \(P,Q,R,S\) of
\(AB,BC,FH,CE,EF,HC\) are the same as in the two-upper-point setup
except for \([HCP]<0\). The eight long-triangle capacities and all
eight four-consecutive-vertex capacities also apply.

## Sharp terminal for the \(AB,EF\) crossing

Write \(P=(p,q)\), \(Q=(u,v)\). The four line signs forced in this row
are
\[
 [APQ]>0,\quad [BPQ]<0,\quad [EPQ]<0,\quad [FPQ]>0 .
\]
The two increasing-coordinate differences follow from these actual
signs and contact overlap via the two opposite-side differences in
the [sharp projection theorem](N6_PROJECTED_COUNT_TERMINALS.md).
If also
\[
 [ARP]>0,\qquad [BSP]<0,\qquad [CFQ]>0,\qquad [EHQ]>0,
 \qquad p\ge b,\quad q\ge a ,
\]
that theorem applies to the actual doubled minimum \(2m\) and gives
\(m<A_*\). It is a contradiction throughout this sign and coordinate
chamber.

The three closed alternatives used to track the two weak coordinate
conditions are \(p\ge b,\ q\ge a\), then \(p\le b\), then
\(p\ge b,\ q\le a\). Together they cover every \(p,q\), including
both equality faces. The first alternative admits the sharp terminal;
the coordinate differences with the indicated signs are nonnegative
in all three alternatives.
