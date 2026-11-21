# Six-contact BIIT with the upper line crossing \(BC\) and \(SF\)

Use the [BIIT setup](N6_BIIT_ARCS.md) and coordinates
\(A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h)\),
\(P=(p,q), Q=(u,v), R=(r,w), S=(j,k)\). The point \(P\)
is lower, \(Q,R\) are central, and \(S\) is in the top cap.
The upper line \(QR\) crosses the open edges \(BC,SF\) of
the actual hull \(ABCESFH\). Use the order \([AQR]>0\).
The contact orders other than the comparison of \(e,f\)
hold throughout. This crossing allows both orders of \(e,f\).
By square transposition the same case also covers the shorter
arc \(SFH\) with crossings \(ES,HA\).

Assume the least ordinary triangle area is \(m\ge A^*\), and
write \(s=.093\). Each unsigned actual doubled area is at
least \(s\). A row marked \(\texttt{ces\_competitive}\) uses the
stronger rational floor .09307 from the
[IITT comparison](N6_IITT.md).

## Determinants across the upper line

Put \(d_X=[XQR]\). The four hull vertices \(A,B,F,H\)
have positive \(d_X\), and \(C,E,S\) have negative \(d_X\).
Choose an ordered edge \(XY\) with \(X\) in \(A,B,F,H\)
and \(Y\) in \(C,E,S\). Direct expansion gives
\[
                   [XYR]-[XYQ]=d_X-d_Y\ge 2s.
\]
Hence \([XYQ]>0\) forces \([XYR]>0\), and \([XYR]<0\)
forces \([XYQ]<0\). The combination \([XYQ]>0,[XYR]<0\)
contradicts the displayed inequality. These are the
\(\texttt{ces\_monotone}\) rows.
If both determinants are positive, \([XYR]\ge3s\).
If both are negative, \(-[XYQ]\ge3s\). These are the
\(\texttt{ces\_shift\_floor}\) rows, with the edge \(XY\)
and point \(R\) or \(Q\) specified.

For established lower endpoints \(L_T\) of unsigned doubled
areas, the two identities on \(BC\) give
\[
\begin{aligned}
 (c-b)(w-v)&=d_B-d_C\ge L_{BQR}+L_{CQR},\\
 (c-b)w&=(c-b)(w-v)+[BCQ]\ge L_{BQR}+L_{CQR}+L_{BCQ}.
\end{aligned}
\]
Use the upper box bound \(c_1-b_0>0\) for \(c-b\) in
the denominators. The two nonnegative differences are the
\(\texttt{ces\_dy}\) and \(\texttt{ces\_w}\) factors.

## Inward coordinate bounds

For either central point \(X=(x,y)\) the inward edge
identities give
\[
\begin{aligned}
 (1-x)[CEF]&\ge (1-f)L_{CEX}+(1-c)L_{EFX},\\
 (1-y)[HEF]&\ge (1-e)L_{FHX}+(1-h)L_{EFX}.
\end{aligned}
\]
The factors labeled \(\texttt{ces\_actual}\) keep the actual
positive triangle area on the left. The factors labeled
\(\texttt{ces\_abscissa}\) and \(\texttt{ces\_ordinate}\)
use its established area upper endpoint, allowed because
\(x,y\le1\). The exact expansions of the two actual
area multipliers are \(1-c+e(c-f)\) and \(1-h+f(h-e)\).
[Inward identities](N6_IITT.md#the-two-hulls-and-their-closed-intervals)

## The complete \(CES\) tree

The [initial data](N6_BIIT_TABLES/CES/domain.md) give the
common BIIT coordinate box and the \(BC,SF\) crossing signs.
Start at the root of the [tree](N6_BIIT_TABLES/CES/tree.md).
Its 172 determinant splits take both strict signs at each
split. The 173 terminal leaves consist of 89 exact area
contradictions, 49 geometric contradictions, 21 empty
coordinate intervals and 14 weighted contradictions.
The weighted sums use 2,370 integer multipliers. The
leaf rows record their inherited boxes and area
endpoints, and each weighted sum has a negative rational
upper bound. The [literal table rules](C1_IIRTT_TABLES/INDEX.md)
give the scalar and coordinate operations.

Thus the \(BC,SF\) crossing and its reflected crossing
\(ES,HA\) are excluded under \(m\ge A^*\).
[Exact manuscript reader](audit_n6_biit_ces.py)
