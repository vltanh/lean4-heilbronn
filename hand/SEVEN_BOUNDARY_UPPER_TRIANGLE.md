# The upper triangle is empty with seven boundary contacts

Use the seven actual anchors
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\
D=(1,d),\ E=(1,e),\ F=(f,1),
\]
with
\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\qquad
b\le f\le c,\quad f\le\tfrac12.
\]
Write \([XYZ]=\det(Y-X,Z-X)\), and put
\[
s=\frac7{64},\quad M=c-b,\quad w=1-c,\quad
L=h-a,\quad R=e-d,\quad \alpha=s/M.
\]
Assume every unsigned actual doubled triangle area is at least \(s\).

**Theorem 1.** No further actual configuration point belongs to
the triangle \(HEF\).

The assertion uses only the seven anchors and the point being excluded.
It does not require a location for the ninth point. In particular, in
the mixed placement of
[SEVEN_BOUNDARY_MIXED_PAIR.md](SEVEN_BOUNDARY_MIXED_PAIR.md), both free
points are below \(HE\).

The anchor costs give
\[
a,d\ge\alpha,\quad L\ge s/b,\quad R\ge s/w,\quad
h\ge\alpha+s/b,\quad e\ge\alpha+s/w,\quad
M+b+w=1.                                                \tag{1}
\]
They imply \(b>1/8\), as in SEVEN_BOUNDARY_MIXED_PAIR.md, and
\(c<1-s\), since \(wR\ge s\) and \(R<1\).
Put
\[
\tau=[HEF]=1-(1-f)h-fe,\quad
V_b=[HBE]=(1-b)h+be,\quad
V_c=[HCE]=wh+ce.
\]
A point inside an actual triangle forces that triangle's doubled area
to be at least \(3s\), by subdivision into three actual triangles.
All edge incidences are excluded by the positive minimum-area
hypothesis.

The fan from \(F\) partitions the anchor heptagon into
\[
AHF,\quad ABF,\quad BCF,\quad CDF,\quad DEF.
\]
We exclude a point of \(HEF\) in each of these five triangles.

## 1. The two outer fan sectors are empty

We first prove an assertion that needs only \(b\le f\le c\), without
the condition \(f\le1/2\):

> There is no actual point in \(HEF\cap DEF\).

Let \(Y\) be such a point, and put
\[
U=[HDF]=1-(1-f)h-fd,\qquad T=[DEF]=(1-f)R.
\]
The diagonal-sector inequality for the quadrilateral \(HDEF\) gives
\[
\tau T\ge s(R+2\tau+T).                                 \tag{2}
\]
For example, use barycentric coordinates in \(DEF\). The affine
area \([HEY]\) has values \(-R,0,\tau\) at \(D,E,F\);
combining its lower bound with the lower bounds for \(FDY\) and
\(EFY\) gives (2). Equivalently it is the usual three-area
inequality for the sector at \(EF\).

Since \(\tau=U-fR\), (2) says that the concave quadratic
\[
-f(1-f)R^2+
\{(1-f)U+s(3f-2)\}R-2sU
\]
is nonnegative. Its linear coefficient must be positive, and its
discriminant must be nonnegative. The larger-root comparison gives
\[
\boxed{
U\ge \frac{s}{1-f}
       \{2+f+\sqrt{8f(2-f)}\}.}                         \tag{3}
\]
Indeed, with \(x=(1-f)U\), the discriminant condition is
\[
x^2-2s(f+2)x+s^2(3f-2)^2\ge0.
\]
The two containing triangles give \(\tau,T\ge3s\).
Thus \(U=\tau+fR>3s\) and
\(1/8<f<1-3s<7/8\). At \(x_0=3s(1-f)\), the polynomial
equals \(s^2\{1-24f(1-f)\}<0\), since \(f(1-f)>7/64\).
As \(x>x_0\), its nonnegative value must lie beyond the larger
root. This proves (3). Its right side increases with \(f\).

On the other hand, (1) and Cauchy--Schwarz give
\[
U\le1-s\left\{\frac1M+\frac{1-f}{b}\right\}
<1-s(1+\sqrt{1-f})^2\le1.                               \tag{4}
\]
These bounds already force \(f<2/7\).
If \(f\ge1/2\), (3) gives
\(U\ge s(5+2\sqrt6)>1\), using \(\sqrt6>12/5\).
If \(1/3\le f\le1/2\), (3) gives \(U>13s/2=91/128\),
whereas (4), with \(\sqrt{1-f}\ge1/\sqrt2>7/10\), gives
\(U<4377/6400<91/128\).
For \(2/7\le f\le1/3\), (3) and \(\sqrt3>12/7\) give
\(U>13/20\), whereas (4) and
\(\sqrt{1-f}\ge\sqrt{2/3}>4/5\) give
\(U<1033/1600<13/20\).

For \(f<2/7\), use \(M<1-s-b\) in (4).
The expression
\[
1-\frac{s}{1-s-b}-\frac{s(1-f)}b
\]
increases with \(b\le f<2/7\): its derivative is positive because
\[
\frac{1-f}{b^2}\ge\frac{35}{4}>
\left(\frac{448}{271}\right)^2
\ge\frac1{(1-s-b)^2}.
\]
Thus
\[
U\le E(f):=1+s-\frac sf-\frac{s}{1-s-f}.                 \tag{5}
\]
The function \(E\) increases for \(0<f\le2/7\).

If \(f\le1/7\), the resulting linear coefficient
\[
J(f)=(1-f)E(f)+s(3f-2)
\]
is negative. In fact \(J\) increases on this interval:
\(E<2\), \(E'>45s\), and \(1-f\ge6/7\) give
\(J'=-E+(1-f)E'+3s>0\).
Its endpoint is
\[
J(1/7)=-391/150080<0,
\]
contradicting the positive coefficient required above.

It remains that \(1/7\le f<2/7\).
Replacing \(U\) by \(E(f)\) preserves the nonnegative quadratic:
its derivative in \(U\) is \(T-2s>0\), since \(Y\in DEF\)
gives \(T\ge3s\).
But its discriminant is
\[
\frac{N(f)}{4096f^2(64f-57)^2},
\]
where
\[
\begin{split}
N(f)={}&26525696f^6-86881792f^5+108928140f^4\\
&-65584656f^3+19766916f^2-2911104f+159201.
\end{split}
\]
It is strictly negative throughout this interval.
For an explicit rational certificate, put \(f=(1+x)/7\),
\(0\le x\le1\). Its degree-six Bernstein coefficients, all with
common positive denominator \(1764735\), are
\[
\begin{split}
(&-7146392385,\ -14707888445,\ -15954597053,\\
 &-15909143025,\ -16899649597,\ -19682284345,\
 -24165919665).
\end{split}
\]
The nonnegative Bernstein basis sums to one, proving the asserted
sign. This contradiction excludes \(HEF\cap DEF\).

Horizontal reflection preserves the projection condition
\(b\le f\le c\), exchanges \(H,E\), and changes \(DEF\) into
\(AHF\). The just-proved assertion did not use \(f\le1/2\).
It therefore also excludes \(HEF\cap AHF\).

## 2. A uniform upper bound for the top area

We record
\[
\boxed{\tau<2/5.}                                       \tag{6}
\]
Indeed (1) gives
\[
1-\tau\ge
s\left\{\frac1M+\frac{1-f}{b}+\frac f w\right\}.          \tag{7}
\]
If \(1/4\le f\le1/2\), Cauchy--Schwarz bounds the braces below by
\[
(1+\sqrt{1-f}+\sqrt f)^2
\ge\left(\frac{3+\sqrt3}{2}\right)^2
>\left(\frac{33}{14}\right)^2.
\]
Here \(\sqrt f+\sqrt{1-f}\) increases on \([1/4,1/2]\).
The resulting lower bound for \(1-\tau\) is
\(1089/1792>3/5\).

If \(f\le1/4\), first combine the \(M,w\) terms in (7):
\[
\frac1M+\frac{1-f}{b}+\frac f w
\ge\frac{1-f}{b}+\frac{(1+\sqrt f)^2}{1-b}.
\]
This decreases with \(b\le f\le1/4\), since the negative derivative
term has magnitude at least \(12\), while the positive term is at
most \(4\). Replace \(b\) by \(f\).
The result
\[
\frac{1-f}{f}+\frac{(1+\sqrt f)^2}{1-f}
\]
decreases for \(1/8<f\le1/4\). Its derivative is less than
\(-16+16/3+4<0\), using \(f>1/8\) and \(\sqrt f>1/3\).
Its value at \(1/4\) is \(6\), so \(1-\tau\ge6s>3/5\).
This proves (6).

## 3. The sector in ABF is empty

Suppose \(Y\in HEF\cap ABF\), and put
\[
V=[ABF]=b(1-a)+af\le f\le1/2.
\]
In barycentric coordinates for \(ABF\), the areas \([HEY]\)
have endpoint values \(-L,-V_b,\tau\).
Each coordinate is at least \(s/V\).
Consequently \([HEY]\ge s\) requires
\[
\tau V\ge s(V+2\tau+L+V_b).                             \tag{8}
\]
Also, by (1),
\[
\begin{aligned}
L+V_b
&=(1-b)a+(2-b)L+be\\
&\ge\frac{s}{M}+\frac{s(2-b)}b\\
&>s\left\{\frac1{1-b}+\frac2b-1\right\}\ge5s.
\end{aligned}
\]
The last scalar expression decreases for \(b\le1/2\), and its
value at \(1/2\) is \(5\).

Since \(V,\tau\ge3s\), the left-minus-right expression in (8)
increases with \(V\) and \(\tau\) after replacing \(L+V_b\) by
\(5s\). Increase \(V\) to \(1/2\) and \(\tau\) to \(2/5\).
The required nonnegative value is at most
\[
\frac15-s\left(\frac{13}{10}+5s\right)
=-\frac{41}{20480}<0.
\]
Thus this sector is impossible.

## 4. The sector in BCF is empty

Suppose \(Y\in HEF\cap BCF\).
Barycentric coordinates in \(BCF\), whose doubled area is \(M\),
give
\[
\boxed{\mathcal P:=
\tau(M-2s)-s(M+V_b+V_c)\ge0.}                           \tag{9}
\]
This uses the endpoint values \(-V_b,-V_c,\tau\) of the
affine area \([HEY]\).
Both \(M,\tau\) are at least \(3s\).

The expression \(\mathcal P\) decreases with \(h,e\).
Their derivatives are respectively
\[
-(1-f)(M-2s)-s(2-b-c),\qquad
-f(M-2s)-s(b+c),
\]
both negative. Decrease them to the anchor endpoints
\[
h=\alpha+s/b,\qquad e=\alpha+s/w.
\]
This is a relaxation of (9). All following replacements concern this
scalar expression, not an actual motion of the points.

If \(b\le w\), the new \(h\) is at least the new \(e\).
Thus \(\mathcal P\) increases with \(f\); replace \(f\le1/2\)
by \(1/2\). Put \(q=b+w=1-M\).
Expanding (9), and then using \(bw\le q^2/4\), gives
\[
\mathcal P
\le\frac{57M^2-64M+21}{64(M-1)}<0.                     \tag{10}
\]
For clarity, the term depending on \(bw\) before this replacement is
\[
-\frac{s q(M/2+s q)}{bw};
\]
all its factors except the displayed minus sign are positive.
The numerator in (10) has positive leading coefficient and
discriminant \(-692\), while \(M<1\).
This contradicts (9).

If \(b\ge w\), the new \(h\) is at most the new \(e\).
Now \(\mathcal P\) decreases with \(f\), so replace \(f\ge b\)
by \(b\). The result is
\[
\mathcal P=-\frac{Q(b,w)}{4096bw},
\]
where
\[
Q=(4096b-399)w^2+(3648b^2-3200b+399)w
    -448b^3+399b^2+49b.
\]
Its leading coefficient in \(w\) is positive, since \(b>1/8\).
Its discriminant in \(w\) is
\[
20647936b^4-30599424b^3+12985092b^2-2475396b+159201.
\]
On \(1/8\le b\le1/2\), its degree-four Bernstein coefficients are
\[
-32879/16,\quad-1572235/32,\quad-494173/32,\quad
-168290,\quad-366656.
\]
Thus the discriminant is negative, \(Q>0\), and
\(\mathcal P<0\), again a contradiction.
Both height orders have been excluded.

## 5. The sector in CDF is empty

Suppose \(Y=(x,y)\in HEF\cap CDF\), and put
\[
G=[CDF]=w+d(c-f)>0.
\]
The two positive actual areas \(-[CFY]\) and \([DFY]\) obey
\[
(1-d)(-[CFY])+[DFY]=G(1-y).
\]
Therefore
\[
y\le1-\frac{s(2-d)}G
\le1-\frac{s(2-d)}{w+dM},                               \tag{11}
\]
where the second inequality uses \(f\ge b\).
We treat the two orders of \(h,e\) separately.

### 5.1. If \(e\ge h\)

The inequality \([HEY]\ge s\) gives \(y\ge h+s\).
Also \(d\le1-s/w\) by (1) and \(e\le1\).
The ratio \((2-d)/(w+dM)\) decreases with \(d\), with derivative
\(-(w+2M)/(w+dM)^2\).
Equations (1) and (11) consequently imply
\[
1\ge
\frac{s}{M}+\frac{s}{b}+s+
\frac{s(1+s/w)}{1-b-sM/w}.                              \tag{12}
\]
The final denominator is positive, since it is an upper bound for
the positive area \(G\).

Set \(q=1-b=M+w\).
Cauchy--Schwarz gives the following useful exact scalar lower bound:
\[
\frac1M+\frac{q+s-M}{q^2-(q+s)M}
\ge\frac{2\{q+s+\sqrt{s(2q+s)}\}}{q^2}.                 \tag{13}
\]
To verify it, put \(z=q^2/(q+s)-M>0\).
The left side becomes
\[
\frac1M+\frac1{q+s}
+\frac{s(2q+s)}{(q+s)^2z},
\qquad M+z=\frac{q^2}{q+s},
\]
and apply the two-term Cauchy inequality.

Here \(1/2\le q<7/8\), and
\[
\sqrt{s(2q+s)}>\frac q4+\frac7{32}.                     \tag{14}
\]
Squaring gives a concave quadratic difference whose endpoint values
are \(13/4096,49/4096>0\).
Substitution of (13)--(14) into (12) would imply
\[
1>\frac{s}{b}+s+\frac{5s}{2(1-b)}
                         +\frac{6s^2}{(1-b)^2},
\]
where replacing the strict sign by a weak one would also suffice.
In fact the expression on the right is greater than one.
After subtracting one and multiplying by \(b(1-b)^2\), put
\(z=b-1/3\le1/6\). The numerator is
\[
-\frac{57}{64}z^3+\frac{93}{128}z^2
+\frac{35}{2048}z+\frac{25}{18432}
\ge
\frac{37}{64}z^2+\frac{35}{2048}z+\frac{25}{18432}>0.
\]
The last quadratic has discriminant
\(-107375/37748736\).
This contradicts (12).

### 5.2. If \(e<h\)

Now \([HEY]\ge s\) gives \(y\ge e+s\ge d+s/w+s\).
Thus (11) requires
\[
1\ge J:=
d+\frac{s}{w}+s+\frac{s(2-d)}{w+dM}.                    \tag{15}
\]
Since \(\tau\ge3s\) and \(f\le1/2\), the top budget gives
\(h+e\le2-6s\).
Using (1), we obtain
\[
\frac2M+\frac1b+\frac1w\le\frac{86}{7}.                 \tag{16}
\]
This implies
\[
\boxed{b>19/100,\qquad w<41/100.}                       \tag{17}
\]
Indeed, using \(\sqrt2>24/17\), Cauchy--Schwarz makes the
left side of (16) strictly greater than
\[
g(b):=\frac1b+\frac{99}{17(1-b)},
\]
and also strictly below by the same expression \(g(w)\).
The function \(g\) decreases on \(0<b\le19/100\) and increases
on \(w\ge41/100\).
Its endpoint excesses above \(86/7\) are respectively
\(3398/20349\) and \(6822/287861\), both positive.
This proves (17).

If \(w\le5/18\), then \(d\le1-s/w\) and \(M<1\) give
\[
\begin{aligned}
J
&\ge d+s/w+s+\frac{s(1+s/w)}{w+d}\\
&\ge s/w+s+2\sqrt{s(1+s/w)}-w\\
&>\frac{63}{160}+\frac7{64}+\frac{39}{50}-\frac5{18}
=1+\frac{77}{14400}>1.
\end{aligned}
\]
For the radical comparison,
\(s(1+63/160)-(39/100)^2=437/1280000>0\).
This contradicts (15).

It remains that \(5/18\le w<41/100\).
By (17), \(M<81/100-w\), while \(dM\ge s\).
On this range \(J\) increases with \(d\), because
\[
\frac{\partial J}{\partial d}
=1-\frac{s(w+2M)}{(w+dM)^2}>0.
\]
Indeed the difference between the square denominator and its
subtracted numerator is at least
\[
w^2+3sw+s^2-\frac{81s}{50}>0;
\]
this expression increases with \(w>0\), and its value at \(5/18\)
is \(25561/8294400>0\).

Decrease \(d\) to \(s/M\), and then increase \(M\) to
\(81/100-w\). These replacements decrease \(J\), and give
\[
J\ge
\frac{s w}{(81/100-w)(w+s)}
+\frac{s}{w}+s+\frac{2s}{w+s}.
\]
After subtracting one, this last expression equals
\[
\frac{364800w^3-345188w^2+71645w+3969}
     {64w(64w+7)(81-100w)}>0.
\]
The denominator is positive. On
\([5/18,41/100]\), the degree-three Bernstein coefficients of
the numerator are
\[
2456459/486,\quad16921577/4860,\quad
37555729/22500,\quad57466/125,
\]
all positive.
Again \(J>1\), contradicting (15).

Both height orders, and hence the whole \(CDF\) sector, are excluded.

## 6. Assembly and verification

Every point of \(HEF\) is in one of the five fan triangles listed
at the start. Sections 1, 3, 4, and 5 exclude them all.
This proves Theorem 1.

All coefficient lists above refer to the ordinary Bernstein basis:
if \(p(a+(b-a)x)=\sum_j p_jx^j\) has degree \(n\), its \(i\)-th
coefficient is
\[
\sum_{j=0}^i p_j\frac{\binom ij}{\binom nj}.
\]
Thus the printed finite lists are exact polynomial identities, and
their signs prove the interval bounds without sampling.
The optional diagnostic
[check_seven_boundary_upper_triangle.py](check_seven_boundary_upper_triangle.py)
checks the determinant identities, monotone substitutions, all rational
gaps, and every coefficient in these lists.

