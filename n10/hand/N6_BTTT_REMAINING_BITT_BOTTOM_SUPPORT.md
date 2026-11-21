# An overlap bound for the lower diagonal sector of BITT

Use the [BITT placements](N6_BTTT_REMAINING_BITT_SETUP.md) with
unsigned doubled clearance \(s=93/1000\) and a lower-central point
\(P\). Suppose the upper point satisfies \([HEQ]<0\) and that
\([AEP],[AEQ]>0\). The following bound applies to the lower diagonal
sector, where one also has \([CFQ]>0\).

## Two actual triangles containing both interior points

The two points are inside \(AEH\). Their \(AE\) signs are assumed and
their \(HA\) signs follow from their positive abscissas. The sign
\([EHQ]>0\) is assumed. For \(P=(p,q)\), the sign \([HCP]<0\)
gives \(q<h-hp/c\). The height of \(HE\) at \(p\) exceeds
\(h-hp/c\) by \(p(e+h/c-h)>0\). Hence \([EHP]>0\).

The two points are also inside \(HBE\). For \(Y=P,Q\), with
abscissa \(x_Y\), the identity
\[
 [BEY]=(1-b)[AEY]+[ABE](1-x_Y)
\]
gives the inward \(BE\) sign. The lower-central hypothesis gives
\([HBP]>0\). For \(Q=(u,v)\), the inequality \([HEQ]<0\)
gives \(v<h-(h-e)u\le h\), so
\[
 [HBQ]=[HCQ]+(c-b)(h-v)>0.
\]
The \(EH\) signs were established above.

Put \(D_A=h-a=[AEH]\) and \(D_B=h(1-b)+be=[HBE]\).
Both are at least \((4+2\sqrt3)s\) by the
[two-point triangle bound](TRIANGLE_OCCUPANCY.md).
The lines \(AE,HB\) meet at \(J\), whose abscissa is
\[
 x_J=\frac{b(h-a)}{D_0},\qquad D_0=h+b(e-a).
\]
Here \(0<x_J<b<1\), since \(D_0\ge h>h-a>0\). Therefore \(J\)
lies strictly on both actual segments. The intersection of \(AEH\)
and \(HBE\) is the triangle \(EHJ\). Its doubled area is
\[
 \Omega=(1-x_J)D_A=\frac{x_J}{b}D_B
        =\frac{D_A D_B}{D_0}.
\]

## A bound using the line through the two interior points

Assume either that \(A,E\) are on the same side of \(PQ\) or that
\(H,B\) are on the same side of \(PQ\). In either case
\(\lvert[JPQ]\rvert\ge s\), since the signed determinant with \(PQ\)
is affine along each of the two segments containing \(J\).

Let \(M\ge\max(D_A,D_B)\), and put \(k=\Omega/M>0\).
For either \(Y=P,Q\), the two triangles \(JEY,JHY\) have doubled
areas at least \(ks\). Along \(AE\) the area of \(JEY\) is
\((\Omega/D_A)\lvert[AEY]\rvert\), while along \(HB\) the area
of \(JHY\) is \((\Omega/D_B)\lvert[HBY]\rvert\). The actual
triangles \(EHY\) have areas at least \(s\ge ks\).
The three vertex triangles with base \(PQ\) all have areas at least
\(s\), including the one with vertex \(J\).

Now repeat the affine two-point argument inside \(EHJ\). Write
\(\lambda,\mu>1\) for the two side extension factors from the isolated
vertex on one side of \(PQ\), and let \(\ell=\min(\lambda,\mu)>1\).
The first two endpoint clearances in that argument now use \(ks\)
and the three clearances at \(PQ\) use \(s\). Consequently
\[
 \begin{split}
 \frac{\Omega}{s}
 &\ge k(\lambda+\mu)+
   \lambda\mu\max\left(1,\frac{1}{\lambda-1},\frac{1}{\mu-1}\right)\\
 &\ge 2k\ell+\frac{\ell^2}{\ell-1}\\
 &\ge 2k+2+2\sqrt{2k+1}
   =\bigl(1+\sqrt{1+2k}\bigr)^2 .
 \end{split}
\]
The last step uses
\((2k+1)(\ell-1)+1/(\ell-1)\ge2\sqrt{2k+1}\).
For \(z=\Omega/s\) and \(m=M/s\), this gives
\(\sqrt z\ge1+\sqrt{1+2z/m}\). The right side exceeds two, so
\(m\ge z>4\). Squaring after subtracting one yields
\((1-2/m)\sqrt z\ge2\). Hence
\[
 \boxed{\Omega\ge \frac{4s M^2}{(M-2s)^2}.}
\]

For a proved fixed cap \(M\), write \(L=4sM^2/(M-2s)^2\).
The bound is \(D_A D_B\ge L D_0\). Fixed ceilings \(N_A\ge D_A\)
or \(N_B\ge D_B\) permit the respective multiaffine factors
\[
 N_A D_B-LD_0\ge0,\qquad N_B D_A-LD_0\ge0 .
\]
An application requires the two \(AE\) signs, the \(HEQ\) sign, the
lower-central hypothesis, the named pair of same-side endpoints
for \(PQ\), and the cited preceding area ceilings.

## The two actual triangles on \(EF\)

The same transfer applies in a different chamber. Suppose
\([AEY]>0\), \([AFY]<0\), and \([BFY]<0\) for each of \(Y=P,Q\).
Then both points are inside \(AEF\). They are also inside \(BEF\),
since the \(BE\) identity above gives the inward \(BE\) sign and
both have the fixed inward \(EF\) sign.

The lines \(AE,BF\) meet at \(J'\) with abscissa
\[
 x_{J'}=\frac{b+(f-b)a}{D_0'},\qquad D_0'=1-(f-b)(e-a).
\]
The denominator is positive. The numerator plus
\((f-b)(e-a)\) is \(b+(f-b)e\le f<1\), so \(0<x_{J'}<1\).
The ordinate \(a+x_{J'}(e-a)\) is strictly between zero and one.
Thus \(J'\) lies on the interiors of both actual segments.
The intersection \(AEF\cap BEF\) is \(EFJ'\), with doubled area
\[
 \Omega'=\frac{D_A'D_B'}{D_0'},\qquad
 D_A'=[AEF]=1-a-f(e-a),\qquad
 D_B'=[BEF]=1-b-e(f-b).
\]
Indeed \([EFJ']=(1-x_{J'})[EFA]\) and \(1-x_{J'}=D_B'/D_0'\).

If either \(A,E\) or \(B,F\) are on the same side of \(PQ\),
then \(\lvert[J'PQ]\rvert\ge s\) by affinity.
The four other clearances involving \(J'\) and an interior point
again scale by \(\Omega'/D_A'\) or \(\Omega'/D_B'\).
The same proof yields \(\Omega'\ge4s M^2/(M-2s)^2\) for any
proved cap \(M\ge\max(D_A',D_B')\).
