# The six-contact count IIRL

In a corner-free normalized six-contact configuration, suppose
two further points lie inside the upper quadrilateral \(HCEF\)
and one lies in each of the two side caps \(CE(1,0)\) and
\(FH(0,1)\). Then the least ordinary triangle area is less than
\(93/2000<A_*\). In the six-contact inventory this is the count
\((k,j,r,t,l)=(0,2,1,0,1)\).

Assume for contradiction that every actual doubled triangle area
is at least \(s=93/1000\). Every triple is then noncollinear.
All point labels and contact orders, including the weak overlap
conditions, are the ones in the [IIRL setup](N6_IIRL_SETUP.md).
Transpose the square if necessary to put \(e\le f\), and then
interchange the two upper points if necessary to make \([APQ]>0\).
The equality \(e=f\) is included.

The six contacts and the two cap points form the strict octagon
\(ABCREFSH\). Its four-vertex cap inequalities force the line
\(PQ\) to have at least three octagon vertices on each side.
The upper placement of both \(P,Q\) then removes the two chord
pairs \(BC,SH\) and \(CR,HA\). The remaining ten crossed-edge
pairs are listed in the [two-side-cap theorem](N6_BOTH_SIDE_CAPS.md).
The line cannot pass through an octagon vertex, because this would
give a zero doubled area.

For each of the ten pairs, the [finite tables](N6_IIRL_TABLES/INDEX.md)
list its initial signs and closed coordinate box, then the exhaustive
determinant splits and coordinate cuts on that domain. A determinant
split takes both strict signs. A coordinate cut takes both closed
intervals and includes their common endpoint. Every child uses the
same actual points and the bounds established at its ancestors.

The 345 determinant splits and fifteen coordinate cuts have 370
leaves. There are 73 geometric contradictions, 224 scalar
contradictions, 59 coordinate contradictions and fourteen weighted
sums with strictly negative upper bounds. The determinant expansions,
inequality sources, endpoint lines, inherited boxes and terminal
arithmetic are all printed in the tables. Each is an exact deduction
on the continuous domain defined by its branch. For the optional
rational check, use

    python n10/hand/audit_n6_iirl.py

All ten crossing pairs are contradictory. This proves the claim
for either ordering of the upper contacts.
