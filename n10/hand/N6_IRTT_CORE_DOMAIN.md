# Initial intervals for the nine-point IRTT argument

Use the actual contacts \(A=(0,a),B=(b,0),C=(c,0),E=(1,e),F=(f,1),H=(0,h)\),
the right point \(Q=(u,v)\) and the two top points \(R=(r,w),S=(j,k)\).
The contact orders are \(a\le e\le h,\ b\le f\le c\). Every actual
doubled area is at least \(s=93/1000\); \(S\) is strictly inside \(ERF\).
The [width argument](N6_IRTT_CORE_CAPS.md) gives
\[
 \alpha=1037/10000<\min(a,b),\quad b<19/100,\quad
 A_{ERF}<8963/25000.
\]
All the following intervals hold before choosing a radial cut.
They use only these nine points.

Set
\[
 U=1-\frac{3s}{1-\alpha},\qquad e_0=\frac{4s}{1-\alpha},
 \qquad c_1=1-\frac{s}{U},\qquad f_1=1-\frac{3s}{1-e_0},
\]
\[
 a_0=\frac{s}{c_1-\alpha},\qquad
 r_0=\alpha+\frac{3s}{1-e_0},\qquad
 w_0=e_0+\frac{3s}{1-\alpha}.
\]
All denominators are positive on substitution of \(s,\alpha\).

The actual subdivision at S gives \(A_{ERF}\ge3s\). This triangle
lies in the top corner triangle of doubled area \((1-e)(1-f)\).
Thus \(e,f\le U\). Since \(B,C,Q,E\) form a strict quadrilateral
in the triangle \(B,E,(1,0)\) with actual endpoints \(B,E\),
the right-cap endpoint inequality gives \(e(1-b)\ge4s\).
Hence \(e\ge e_0\) and the top cost gives \(f\le f_1\).
[Endpoint proof](N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md)

The two actual lower triangles give \(a(c-b)\ge s\) and
\(b(h-a)\ge s\). Expanding \(hc\) and grouping the remaining
two nonnegative terms yields
\[
 hc \ge 2s+ab+(h-a)(c-b)
    \ge 2s+2\sqrt{a(c-b)b(h-a)}\ge4s.
\]
In particular \(c\ge4s\). The right test reads
\(e(u-c)-(1-c)v\ge s\). Since \(u\le1\) and \(v\ge0\),
\(e(1-c)\ge s\), giving \(c\le c_1\). It also gives
\(u\ge c+s/e\) and \(v\le e-s/(1-c)\). Now
\(a(c-b)\ge s\) and \((c-b)v\ge s\) give \(a,v\ge a_0\).
Finally \(b<19/100\) implies \(h-a\ge93/190\), whence
\(a\le97/190\).

The outer top clearance is \(-[EFR]\ge3s\). Its two expressions
\[
 (1-e)(r-f)-(1-f)(1-w),\qquad
 (1-f)(w-e)-(1-e)(1-r)
\]
give \(r\ge r_0,\ w\ge w_0\). Each weight of S in \(ERF\) exceeds
\(2325/8963>3/17\). Remove \(3/17\) from each weight. In the x
coordinate the remaining mass \(8/17\) is at least \(8f/17\),
and in the y coordinate at least \(8e/17\). This gives the two
lower bounds for \(j,k\) below. At the inner point the actual tests are
\[
 [ERS]=(1-j)(w-e)-(1-r)(k-e)\ge s,\qquad
 -[FRS]=(r-f)(1-k)-(1-w)(j-f)\ge s .
\]
Here \(k>e,\ j>f\) by top-cap membership. The first inequality
gives \(1-j\ge s/(1-e_0)\), and the second gives
\(1-k\ge s/(1-\alpha)\). Collecting the bounds gives the following
closed box.

| Coordinate | Lower | Upper |
|---|---:|---:|
| \(a\) | \(a_0\) | \(97/190\) |
| \(b\) | \(\alpha\) | \(19/100\) |
| \(c\) | \(4s\) | \(c_1\) |
| \(e\) | \(e_0\) | \(U\) |
| \(f\) | \(\alpha\) | \(f_1\) |
| \(h\) | \(a_0+93/190\) | \(1\) |
| \(u\) | \(4s+s/U\) | \(1\) |
| \(v\) | \(a_0\) | \(U-s/(1-4s)\) |
| \(r\) | \(r_0\) | \(1\) |
| \(w\) | \(w_0\) | \(1\) |
| \(j\) | \((11\alpha+3+3r_0)/17\) | \(1-s/(1-e_0)\) |
| \(k\) | \((11e_0+3+3w_0)/17\) | \(1-s/(1-\alpha)\) |
