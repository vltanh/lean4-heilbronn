# A hand proof for the two exits adjacent to C

In the six-contact IRTT case, the ray from the outer top point through
the inner top point cannot leave through either edge incident to the
bottom contact \(C\).

Write \([XYZ]=\det(Y-X,Z-X)\). Suppose every actual triangle has
unsigned doubled area at least \(s=93/1000\). The six contacts are
\[
 A=(0,a),\quad B=(b,0),\quad C=(c,0),\quad
 E=(1,e),\quad F=(f,1),\quad H=(0,h),
\]
with \(0<a<h<1,\ 0<b<c<1,\ a\le e\le h,\ b\le f\le c\).
The point \(Q=(u,v)\) lies in the right cap between \(CE\) and the
corner \((1,0)\). The outer point \(R=(r,w)\) lies in the top cap
between \(EF\) and \((1,1)\). The inner point \(S=(j,k)\) lies in
the interior of \(ERF\). In particular \(f<r\le1\) and \(e<w\le1\).
The [octagon argument](N6_IRTT_CORE_GAPS.md) gives the cyclic hull
order \(A,B,C,Q,E,R,F,H\).

## How much width the right-cap point leaves

Put \(p=c-b,\ t=1-c,\ D=p+t=1-b\). First \(D<9/10\).
Indeed \(a(c-b)\ge s\) and \(b(h-a)\ge s\) by the \(ABC\) and
\(ABH\) clearances. For \(z=\min(a,b)\), the former inequality if
\(z=a\), and the latter if \(z=b\), give \(s\le z(1-z)\).
Thus \(z>1/10\), since \((1/10)(9/10)<s\).

Now \([BCQ]=pv\ge s\). The right-cap test and \(u\le1\) give
\[
 s\le-[CEQ]=e(u-c)-tv\le t(e-v).
\]
Adding the two height requirements gives \(e\ge s/p+s/t\).
In particular \(eD\ge4s\), since \(pt\le D^2/4\). Also
\[
 p(1-e)\le p-\frac{sD}{t}
            =D-\left(t+\frac{sD}{t}\right)\le D-2\sqrt{sD}.
\]
Interchanging \(p,t\) gives the same upper bound for \(t(1-e)\).
Here \(D\ge4s\) because \(e\le1\), and \(D-2\sqrt{sD}=
(\sqrt D-\sqrt s)^2-s\) is increasing for \(D\ge s\).
Since \((9/10)s=837/10000>4/49\), we obtain
\[
 \max(p,t)(1-e)<\frac9{10}-\frac47=\frac{23}{70}<\frac13.       \tag{1}
\]

## Why the inner top point is southwest of the outer one

Let \(T=[ERF]\) and \(G=(1-e)(1-f)\). Each barycentric weight of
\(S\) in \(ERF\) is at least \(\lambda=s/T\), since its numerator
is an actual fan triangle. Also \(G\le D(1-e)<9/10-4s\).

Put \(x=(1-r)/(1-f)\) and \(y=(1-w)/(1-e)\). Then
\(T=G(1-x-y)\). If the weights at \(E,F\) are \(\alpha,\beta\),
respectively, then
\[
 \frac{j-r}{1-f}=\alpha x-\beta(1-x)
      \le (1-2\lambda)x-\lambda(1-x)=x-(1+x)\lambda.
\]
Thus \(j\ge r\) would give
\[
 \frac{s}{G}\le\frac{x(1-x)}{1+x}
   =3-(1+x)-\frac{2}{1+x}\le 3-2\sqrt2.
\]
This would require \(G\ge(3+2\sqrt2)s\). But
\(G<9/10-4s<(29/5)s<(3+2\sqrt2)s\), using
\(\sqrt2>7/5\). Hence \(j<r\). Exchanging the coordinates and the
roles of \(E,F\) gives \(k<w\).

## How far the ray falls

The chain \(B,C,Q,E,R,F\) lies in a rectangle of width \(D\) and
height one. Its ordinates are nondecreasing. The positive turns are
\([BCQ],[CQE],[QER],[ERF]\), where
\([QER]=(1-u)(w-e)+(e-v)(1-r)\ge0\) and clearance excludes equality.
Rescale its width to one, reverse its order and reflect the vertical
coordinate. The first turn becomes \(m=T/D\), and the other three
are at least \(\sigma=s/D>31/300\).
The [six-point chain inequality, equation (2)](SIX_POINT_MONOTONE_CHAIN.md)
gives a number \(0<z<1\) with
\[
 1\ge \frac{\sigma}{z}
       +2\sqrt{\frac{m\sigma}{z(1-z)}}.
\]
In particular \(z>\sigma\). Subtract the first term and square to get
\[
 \frac{T}{s}=\frac{m}{\sigma}
 \le \frac{(z-\sigma)(1-z)(1-\sigma/z)}{4\sigma^2}
 \le \frac{(1-\sigma)^3}{16\sigma^2}<\frac92 .
\]
The second inequality uses \((z-\sigma)(1-z)\le(1-\sigma)^2/4\)
and \(1-\sigma/z\le1-\sigma\). The last follows from
\((9/10)^3<72(31/300)^2\). Thus \(\lambda>2/9\).
Taking vertical coordinates in the barycentric formula now gives
\[
 0<w-k=\alpha(w-e)-\beta(1-w)
     \le(1-2\lambda)(1-e)<\frac59(1-e).                         \tag{2}
\]

## The two exits

If the ray \(RS\) exits through \(BC\), then \([BRS]\le-s\) and
\([CRS]\ge s\). Subtracting and applying (1) and (2) gives
\[
 2s\le[CRS]-[BRS]=p(w-k)<\frac5{27}<2s .
\]
If it exits through \(CQ\), then \([CRS]\le-s\) and \([QRS]\ge s\).
Since \(r>j,\ v>0\) and \(u-c\le t\), subtraction gives
\[
 2s\le[QRS]-[CRS]=(u-c)(w-k)-v(r-j)
      \le t(w-k)<\frac5{27}<2s .
\]
The final comparison is \(5000<27\cdot186=5022\). This excludes both
edges incident to \(C\).
