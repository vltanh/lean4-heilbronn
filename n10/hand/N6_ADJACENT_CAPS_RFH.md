# The opposite diagonal of the adjacent-cap quadrilateral

Use the contacts and the side points \(R=(r,d)\), \(S=(t,z)\) of
the [adjacent-cap setup](N6_ADJACENT_CAPS_LINE.md). With doubled
minimum \(s=93/1000\), the actual triangle \(RFH\) has doubled
area below \(347/500\).

Write \(D=e-d\), \(U=1-t\), and \(\delta=1-r\). Use the actual
ear bounds of Section 2 and \(\alpha=1037/10000<b\), as in
the [CRF bound](N6_ADJACENT_CAPS_CRF.md). Take a rectangle
\([c_0,c_1]\times[e_0,e_1]\times[f_0,f_1]\) in the initial
closed box \([4s,1-s]^2\times[\alpha,1-s]\).
Set
\[
 b_0=\max\left(\alpha,\frac{s}{1-s/(c_1-\alpha)}\right),
 \qquad d_0=\frac{s}{c_1-b_0}.
\]
The first bound uses \(a\ge s/(c-b)\ge s/(c_1-\alpha)\) and
\(b(1-a)\ge s\). The second uses \((c-b)d\ge s\). The
denominators are positive on the initial box and its
subrectangles. The test *order* is
\(\max(b_0-f_1,f_0-c_1)>0\), contrary to \(b\le f\le c\).

Next use
\[
 h_0=\max\left(e_0,\frac{4s}{c_1},
                   \frac{s}{c_1-f_1}+\frac{s}{f_1}\right),
\]
where the last term is included only if \(2f_1\le c_0\).
The lower bound \(h\ge h_0\) follows from \(h\ge e\) and
\(h\ge s/(c-b)+s/b\), using the reciprocal arithmetic mean
inequality. The last term improves it for \(b\le f\le f_1\le c/2\)
because the sum decreases with \(b\) there and decreases with \(c\).
As in the CRF bound, the weighted top ears give
\[
 U\le L=1-f_0-\frac{s}{1-h_0+f_1(h_0-e_0)} .
\]
The denominator is positive and \(L\ge0\) at all rows using this
bound. The denominator bounds \(1-h+f(h-e)\) from above, since
this expression decreases in \(h,e\) at fixed \(f\) and increases
in \(f\) at the substituted \(h_0,e_0\).

The weighted right ears give \(D_0\le D\le D_1\), where
\[
 B=\max_{x\in\{e_0,e_1\}}\{xL+(1-x)(1-c_0)\},\qquad
 D_0=\frac{s}{\min(B,1-c_0)},\qquad D_1=e_1-d_0.
\]
The first inequality uses \(s\le D(eU+(1-e)(1-c))\) and
\(s\le D(1-c)\). The second uses \(d\ge d_0\).
The test *cost* gives \(D_1-D_0<0\).

For the remaining rows, \([RES]\ge s\) gives
\[
 \delta\ge \delta_0=\max\left(0,\frac{s-LD_1}{1-e_0}\right).
\]
At fixed \(r,f,d\) the doubled area \(r(1-h)+f(h-d)\) decreases
in \(h\), since \(r\ge c\ge f\). Substitute \(h=h_0\), bound \(r\)
above by \(1-\delta_0\), and bound \(f(h_0-d)\) above using
\(0\le f\le\min(f_1,c_1)\) and \(d\ge d_0\). The *area* test is
\[
 [RFH]\le (1-\delta_0)(1-h_0)+\min(f_1,c_1)\max(0,h_0-d_0)
        <347/500.
\]
The [arithmetic table](N6_ADJACENT_CAPS_RFH_TABLE.md) gives 411
closed cuts and 412 leaves, with two order, 203 cost and 207
strict area tests. It can be replayed with

    python3 n10/hand/check_n6_adjacent_rfh.py

For the \(CR,FH\) crossing in IIRT, the two upper points lie in
\(CRFH\). Its diagonal \(RH\) divides it into \(CRH\) and \(RFH\),
each of capacity one by this bound and Section 9 of the adjacent-cap
proof. Thus \(RH\) separates the pair. If \(P\) precedes \(Q\) on
the chord from \(CR\) to \(FH\), then \([RHP]>0>[RHQ]\).
The [CRF bound](N6_ADJACENT_CAPS_CRF.md) forces separation by
the other diagonal \(CF\).
