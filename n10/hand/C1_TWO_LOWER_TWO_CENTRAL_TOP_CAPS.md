# Affine contact caps for the BBIIT top point

This is a source lemma, with no count-exclusion claim. All areas are
doubled. Use the actual points and the complete domain in
[the two-lower/two-central geometry note](C1_TWO_LOWER_TWO_CENTRAL_GEOMETRY.md).
In particular

\[
O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),\ R=(j,k),
\quad 0\le d\le h\le1,\quad0\le f\le c\le1,
\quad f\le j\le1,\quad d\le k\le1.
\]

The actual exterior cyclic order is \(O,C,D,R,F,H\). Let
\(A_{UVW}=|[UVW]|\). Every endpoint below belongs to a fixed, already
proved coordinate box: \(h_0\le h\le h_1\), and similarly for
\(c,d,f,j,k\). No endpoint is defined by a later inequality that uses
the cap.

The following affine expressions are upper bounds for the actual triangle
named in the first column. The last column is exactly \(U-A\).

| Actual triangle | Affine cap \(U\) | Nonnegative remainder |
| --- | --- | --- |
| \(OCR\) | \(c_1k\) | \((c_1-c)k\) |
| \(OHR\) | \(h_1j\) | \((h_1-h)j\) |
| \(CDR\) | \((1-c_0)k+(c_0-j_0)d\) | \(d(j-j_0)+(c-c_0)(k-d)\) |
| \(HFR\) | \((1-h_0)j+(h_0-k_0)f\) | \(f(k-k_0)+(h-h_0)(j-f)\) |
| \(DFR\) | \((1-d_0)(j-f)-(1-k_1)(1-f)\) | \((d-d_0)(j-f)+(k_1-k)(1-f)\) |
| \(DFR\) | \((1-f_0)(k-d)-(1-j_1)(1-d)\) | \((f-f_0)(k-d)+(j_1-j)(1-d)\) |
| \(CFR\) | \(j-c_0+(c_0-f_0)k\) | \((c-c_0)(1-k)+(f-f_0)k\) |
| \(HDR\) | \(k-h_0+(h_0-d_0)j\) | \((h-h_0)(1-j)+(d-d_0)j\) |

For example, \(A_{CDR}=d(1-j)+(1-c)(k-d)\) and
\(A_{HFR}=f(1-k)+(1-h)(j-f)\). The two identities for
\(A_{DFR}\) are

\[
A_{DFR}=(1-d)(j-f)-(1-k)(1-f)
       =(1-f)(k-d)-(1-j)(1-d).
\]

The exterior cyclic order fixes the signs used in these expansions:
\(A_{OCR}=[OCR]\), \(A_{OHR}=-[OHR]\),
\(A_{CDR}=[CDR]\), \(A_{HFR}=-[HFR]\),
\(A_{DFR}=-[DFR]\), \(A_{CFR}=-[CFR]\), and
\(A_{HDR}=[HDR]\). Expanding each displayed remainder proves the table.
Every factor in its last column is nonnegative by the coordinate box or
the stated actual contact and top-cap orders.

There are also useful affine range caps. Every actual triangle whose
three vertices belong to the indicated set has the listed upper bound:

| Containing vertices | Coordinate interval | Area cap |
| --- | --- | --- |
| \(O,H,F\) | \(0\le x\le f\) | \(f\) |
| \(O,H,F,C\) | \(0\le x\le c\) | \(c\) |
| \(O,H,F,R\) | \(0\le x\le j\) | \(j\) |
| \(F,C,R,D\) | \(f\le x\le1\) | \(1-f\) |
| \(O,C,D\) | \(0\le y\le d\) | \(d\) |
| \(O,C,D,H\) | \(0\le y\le h\) | \(h\) |
| \(O,C,D,R\) | \(0\le y\le k\) | \(k\) |
| \(D,H,R,F\) | \(d\le y\le1\) | \(1-d\) |

Indeed, a triangle in a rectangle of width \(a\) and height \(b\)
has doubled area at most \(ab\): after an affine rescaling, the signed
determinant is multiaffine in the six vertex coordinates, so its extrema
occur at rectangle vertices and have magnitude at most one. Here the
other coordinate interval has length at most one. The actual contact
orders above prove each printed containment, including boundary positions.

Any cap \(A_X\le U\) in this note can replace a constant upper bound in
a previously proved support inequality \(A_XA_Y\ge L\), because
\(A_Y\ge0\) and hence \(UA_Y\ge L\). This is used only with the
actual signed triangles and actual occupied quadrilaterals witnessing the
support relation. Its fixed box and cap choice must remain explicit.

## A quadratic consequence of the occupied top cap

This part uses only the actual contacts and one actual top-cap point R;
it has no lower-point or central-point occupancy assumption. Put

\[
\begin{gathered}
\eta=1-h,\quad\zeta=1-c,\quad A=h-d,\quad B=c-f,\\
a=[HCD]=h(1-c)+cd,\quad b=[HCF]=c(1-h)+hf,\\
D_0=df-(1-h)(1-c),\qquad K=11s,\quad\delta=K-1=23/1000.
\end{gathered}
\]

The actual convex pentagon \(C,D,R,F,H\) gives

\[
F_0=ab-KD_0\ge0.                                     \tag{3}
\]

Indeed the pentagon-support formula is
\(A_{C D H}A_{C F H}\ge11s(A_{C D H}-A_{C D F})\), and
\([HCD]-[CDF]=D_0\). This is one of the existing actual convex-five
support inequalities; no containing region is assigned an actual-point
clearance.

The following cubic upper envelope is therefore nonnegative:

\[
U=\eta\zeta+h\eta B+c\zeta A-\delta D_0\ge0,\qquad
U-F_0=(1-hc)AB\ge0.                                  \tag{4}
\]

For any fixed rational \(\tau_h,\tau_c\), the concave quadratic satisfies
\(h(1-h)\le(1-2\tau_h)h+\tau_h^2\), with remainder \((h-\tau_h)^2\),
and similarly for c. Consequently the multiaffine quadratic

\[
G_{\tau_h,\tau_c}=\eta\zeta+((1-2\tau_h)h+\tau_h^2)B
                 +((1-2\tau_c)c+\tau_c^2)A-\delta D_0\ge0        \tag{5}
\]

has the exact gap
\(G_{\tau_h,\tau_c}-U=(h-\tau_h)^2B+(c-\tau_c)^2A\ge0\).
The contacts satisfy \(A,B,\eta,\zeta\ge0\) and \(hc\le1\), proving
every displayed nonnegative remainder. Choosing \(\tau_h=\tau_c=1\) gives
the particularly simple source

\[
\boxed{1-hc-f(1-h)-d(1-c)
       -\frac{23}{1000}\bigl(df-(1-h)(1-c)\bigr)\ge0.} \tag{6}
\]

The midpoints of a fixed proved h,c box give another rational choice in
(5). These parameters are fixed before use. Both (5) and (6) can enter
the existing multiaffine endpoint-line rule; (4) retains repeated contact
coordinates and is used only in polynomial comparisons. This source
applies to any one-corner domain with an occupied top cap and the actual
convex pentagon just proved, including domains with one or no lower point.
