# An exit through the opposite contact edge

Let \(A=(0,a)\), \(B=(b,0)\), \(E=(1,e)\), \(F=(f,1)\) be square
contacts with \(a\le e\) and \(b\le f\). Take a point \(R=(r,w)\)
in the top cap \(EF(1,1)\), and a point \(S=(j,k)\) inside \(ERF\).
If \(S\) also lies inside \(ABR\), then some triangle
on these six points has unsigned doubled area at most
\((5\sqrt5-11)/2\).

Write \(s\) for their least unsigned doubled area. The assertion is
immediate if \(s=0\). Put \(d_x=r-j,\ d_y=w-k\) and
\(L=[ABR]=ar+bw-ab\), where brackets denote signed doubled area.
Subdivision at \(S\) gives \(L\ge3s\). Two of its side tests
are
\[
 [BRS]=w d_x-(r-b)d_y\ge s,\qquad
 -[ARS]=r d_y-(w-a)d_x\ge s .
\]
Multiply the first inequality by \(r\) and the second by \(r-b\),
then add. A second addition with coefficients \(w-a,w\) gives
\[
 Ld_x\ge(2r-b)s,\qquad Ld_y\ge(2w-a)s.                      \tag{1}
\]
All four multipliers are nonnegative because \(r\ge f\ge b\)
and \(w\ge e\ge a\).

Put \(U=1-e,\ V=1-f\) and \(T=[ERF]=U(r-f)-V(1-w)\).
Since \(S\) is inside \(ERF\), \(T\ge3s\) and
\[
 U d_x+V d_y=T-[ESF]\le T-s .
\]
By (1),
\[
 L(T-s)\ge s\{U(2r-b)+V(2w-a)\}.                              \tag{2}
\]

Increasing \(r,w\) to \(1,1\) preserves (2). Indeed the derivative
of the left side minus the right side with respect to \(r\) is
\(a(T-s)+U(L-2s)\), and with respect to \(w\) it is
\(b(T-s)+V(L-2s)\). Both are nonnegative throughout that rectangle
because \(L,T\) increase from values at least \(3s\).
Only the two explicit polynomials in (2) are evaluated at the corner.
Writing \(K=a+b-ab\), the resulting inequality is
\[
 s\le\frac{KUV}{K+(2-b)U+(2-a)V}.
\]
The fraction increases in each of \(U,V\). We may thus replace
them by \(X=1-a,\ Y=1-b\), respectively. As \(K=1-XY\), this gives
\[
 s\le\frac{XY(1-XY)}{(1+X)(1+Y)}
   \le \frac{q^2(1-q)}{1+q},\qquad q=\sqrt{XY},
\]
where the last step uses \(X+Y\ge2q\).
The derivative of the last expression is
\(2q(1-q-q^2)/(1+q)^2\). Its maximum on \([0,1]\) is attained at
\(q=(\sqrt5-1)/2\), where its value is \(q^5=(5\sqrt5-11)/2\).

In the six-contact cases the clearance is \(93/1000\), strictly
larger than this maximum since \(125<(11+186/1000)^2\).
For IRTT an exit of the ray \(RS\) through \(AB\) would put \(S\)
inside \(ABR\), which proves the claimed exclusion.

The same restriction applies to a nested top pair in the open BITT
and IITT counts. Indeed \(j\ge f\ge b\) and \(k>0\), so
\([ABS]=a(j-b)+bk>0\). The two other inward tests
\([BRS]>0\) and \([ARS]<0\) would put \(S\) in \(ABR\).
Thus \([BRS]>0\) forces \([ARS]>0\) in both counts.
