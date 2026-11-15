# The eight-boundary-point gate

This note removes the boundary-multiplicity part of the eight-boundary gate
and excludes every configuration whose ninth point is outside the boundary
octagon or in any of the four quadrilaterals adjacent to a square side.
It does **not** yet remove all orientation assumptions of Theorem 1 in
[`HAND_PROOF.md`](HAND_PROOF.md).

## 1. Boundary incidences force the multiplicities

**Lemma 1.** Let nine distinct points lie in the unit square, with no three
collinear. If at least eight of the points lie on its boundary, then exactly
eight do; none occupies a corner; and each open side contains exactly two
points. The ninth point is in the open square.

**Proof.** A side contains at most two of the points, since otherwise three
are collinear. Thus there are at most eight point-side incidences. If there
are \(m\) boundary points and \(k\) occupied corners, the number of incidences
is exactly \(m+k\): a noncorner boundary point belongs to one side, and a
corner point belongs to two. Hence

\[
8\le m\le m+k\le8.
\]

Therefore \(m=8\), \(k=0\), and all four side-incidence capacities are
saturated. This proves every assertion. \(\square\)

The lemma applies whenever the minimum triangle area is positive. Repeated
points or collinear triples already have minimum area zero and satisfy the
desired upper bound.

Consequently, after fixing the counterclockwise labels, every nondegenerate
eight-boundary configuration has exactly the coordinate form

\[
\begin{array}{llll}
A=(0,a),&B=(b,0),&C=(c,0),&D=(1,d),\\
E=(1,e),&F=(f,1),&G=(g,1),&H=(0,h),
\end{array}
\]

with

\[
0<a<h<1,\quad 0<b<c<1,\quad 0<d<e<1,\quad 0<g<f<1,
\]

and \(O=(x,y)\in(0,1)^2\). There is no additional corner or side-multiplicity
case to classify under the eight-boundary hypothesis.

## 2. The ninth point must lie inside the boundary octagon

**Theorem 2.** Suppose the eight boundary points have the form in Lemma 1.
If \(O\) is outside their convex hull, the minimum triangle area is at most

\[
\frac{5-2\sqrt6}{2}<A_0.
\]

The same strict upper bound holds when \(O\) lies on the hull boundary,
because then three points are collinear.

**Proof.** Let \(s>0\) be twice the minimum triangle area and put

\[
L=h-a,\quad B=c-b,\quad R=e-d,\quad T=f-g.
\]

The convex hull of the boundary points is precisely the octagon
\(ABCDEFGH\). Its complement in the square consists of the four corner
triangles. By a square symmetry, assume
\(O\in\triangle((0,0),A,B)\); then

\[
\frac{x}{b}+\frac{y}{a}\le1.
\]

The triangles \(AHO\) and \(BCO\) give \(xL\ge s\), \(yB\ge s\).
Consequently

\[
\frac{s}{bL}+\frac{s}{aB}\le1.                         \tag{1}
\]

Set \(\lambda=s/(aB)\). Equation (1) gives \(0<\lambda<1\) and

\[
aB=\frac{s}{\lambda},\qquad
bL\ge\frac{s}{1-\lambda}.                              \tag{2}
\]

The other six consecutive boundary triangles give

\[
dB\ge s,\quad (1-c)R\ge s,\quad (1-f)R\ge s,
\quad (1-e)T\ge s,\quad (1-h)T\ge s,\quad gL\ge s.
\]

Writing each side as its central gap plus its two corner offsets now gives
the four inequalities

\[
\begin{aligned}
1&\ge L+\frac{s}{\lambda B}+\frac{s}{T},\\
1&\ge B+\frac{s}{(1-\lambda)L}+\frac{s}{R},\\
1&\ge R+\frac{s}{B}+\frac{s}{T},\\
1&\ge T+\frac{s}{R}+\frac{s}{L}.
\end{aligned}                                               \tag{3}
\]

Add (3), group each gap with its reciprocal, and apply
\(z+q/z\ge2\sqrt q\). This yields

\[
4\ge2\sqrt s\left(
\sqrt{1+\frac1\lambda}
+\sqrt{1+\frac1{1-\lambda}}+2\sqrt2\right).              \tag{4}
\]

The first two radicals sum to at least \(2\sqrt3\).
Indeed, with \(q=\lambda(1-\lambda)\le1/4\), their squared sum is

\[
2+\frac1q+2\sqrt{1+\frac2q}\ge12.
\]

Thus (4) gives \(1\ge\sqrt s(\sqrt3+\sqrt2)\), so

\[
s\le\frac1{(\sqrt3+\sqrt2)^2}=5-2\sqrt6.
\]

For an elementary strict comparison with the target, \(\sqrt6>71/29\)
follows from \(5046>5041\). Therefore

\[
\frac{5-2\sqrt6}{2}<\frac3{58}<\frac{17}{320}<A_0,
\]

where the last inequality follows from
\(p_0<7/40\) and \(A_0=(2-9p_0)/8\). \(\square\)

## 3. A five-point inequality inside a quadrilateral

**Lemma 3.** Let \(V_1V_2V_3V_4\) be a convex quadrilateral and let \(O\)
be inside it. Suppose every triangle on these five points has doubled area
at least \(s>0\). Then the doubled area \(Q\) of the quadrilateral satisfies

\[
Q\ge2(1+\sqrt2)s.                                           \tag{5}
\]

**Proof.** Set \(r_i=V_i-O\) in counterclockwise order, and write

\[
a=\det(r_1,r_2),\quad b=\det(r_2,r_3),\quad
c=\det(r_3,r_4),\quad d=\det(r_4,r_1).
\]

All four numbers are at least \(s\), and \(Q=a+b+c+d\).
The determinant identity

\[
ac-bd=\det(r_1,r_3)\det(r_2,r_4)
\]

gives \(|ac-bd|\ge s^2\). Interchange the two products if necessary to
assume \(ac\ge bd+s^2\). Since \(bd\ge s^2\), AM--GM gives

\[
Q\ge2\sqrt{ac}+2\sqrt{bd}
\ge2\sqrt{2s^2}+2\sqrt{s^2}=2(1+\sqrt2)s.
\]

If \(O\) were on an edge of the quadrilateral, a triangle would have area
zero, contrary to the hypothesis. Thus every use of positive fan areas is
legitimate. \(\square\)

## 4. Excluding all four side quadrilaterals

**Theorem 4.** Suppose the eight boundary points have the form in Lemma 1.
If \(O\) belongs to any of

\[
\operatorname{conv}(A,B,C,D),\quad
\operatorname{conv}(C,D,E,F),\quad
\operatorname{conv}(E,F,G,H),\quad
\operatorname{conv}(G,H,A,B),
\]

then the minimum triangle area is strictly less than

\[
\frac7{128}<A_0.
\]

**Proof.** By rotation it suffices to treat \(ABCD\). Let \(s>0\) be
twice the minimum triangle area, and retain the side gaps \(L,B,R,T\)
from Section 2. The doubled area of \(ABCD\) is

\[
Q=a(1-b)+cd.
\]

The boundary triangles give

\[
b,g\ge\frac{s}{L},\qquad c,f\le1-\frac{s}{R},\qquad
h,e\le1-\frac{s}{T}.
\]

Put \(k=1-s/T\). Since \(a=h-L\) and \(d=e-R\),

\[
\begin{aligned}
Q&\le(k-L)(1-s/L)+(k-R)(1-s/R)\\
 &=k(2-sZ)-X+2s,\qquad
 X=L+R,\quad Z=\frac1L+\frac1R.                             \tag{6}
\end{aligned}
\]

Both upper bounds \(k-L\), \(k-R\) are positive, since they bound
the positive numbers \(a,d\); all factors used in (6) therefore have the
correct monotonicity. Moreover

\[
0<T=f-g\le1-sZ,
\]

so \(sZ<1\) and \(k\le1-s/(1-sZ)\). Substitution in (6) gives

\[
Q\le2-sZ-\frac{s(2-sZ)}{1-sZ}-X+2s.                        \tag{7}
\]

For fixed \(s,X\), the right side is strictly decreasing as a function
of \(z=sZ\in(0,1)\): its derivative with respect to \(z\) is
\(-1-s/(1-z)^2<0\). The elementary inequality \(XZ\ge4\) now permits
the substitution \(Z=4/X\) in this upper bound.
Set \(u=2s/X\). Then \(0<2u\le sZ<1\), and (7) becomes

\[
Q\le2(1-u)\left(1-\frac{s(1-u)}{u(1-2u)}\right),
\qquad 0<u<\frac12.                                       \tag{8}
\]

Lemma 3 and (8) imply

\[
s\le
\frac{1-u}{1+\sqrt2+(1-u)^2/[u(1-2u)]}.                     \tag{9}
\]

Here is a short exact scalar bound for (9). Since \(\sqrt2>7/5\),
it is enough to prove

\[
\frac{1-u}{12/5+(1-u)^2/[u(1-2u)]}<\frac7{64}
\quad(0<u<1/2).
\]

After multiplication by the positive denominators, this is precisely

\[
P(u):=35-306u+827u^2-640u^3>0.                              \tag{10}
\]

For \(0<u\le3/10\), the exact identity

\[
P(u)=315\left(u-\frac{17}{63}\right)^2+\frac4{63}
 +640\left(\frac3{10}-u\right)\left(u-\frac14\right)^2
\]

proves (10). For \(3/10\le u<1/2\), the equally elementary identity

\[
\begin{aligned}
P(u)={}&\frac7{20}+\frac{87}{5}\left(u-\frac3{10}\right)
+123\left(u-\frac3{10}\right)^2\\
&+640\left(\frac12-u\right)\left(u-\frac3{10}\right)^2
\end{aligned}
\]

does the same. Thus \(s<7/64\), proving the area bound.
Finally \((145/18)^2<65\) implies

\[
A_0=\frac{9\sqrt{65}-55}{320}>\frac7{128}.
\]

The proof covers closed quadrilaterals: if \(O\) is on a diagonal or edge,
some triangle is degenerate and the bound is immediate. \(\square\)

**Corollary 5.** Any eight-boundary configuration with minimum triangle
area at least \(A_0\) has

\[
O\in\operatorname{int}\operatorname{conv}(A,D,E,H)
\;\cap\;
\operatorname{int}\operatorname{conv}(B,C,F,G).              \tag{11}
\]

Indeed, Theorem 2 puts \(O\) in the boundary octagon, and Theorem 4
excludes the caps cut off by \(AD,CF,EH,GB\). Within the octagon, the four
remaining open half-planes are exactly the intersection in (11).
In particular, the first and fifth orientation expressions in Theorem 1 of
`HAND_PROOF.md` are automatically positive at the target threshold:

\[
y-a-(d-a)x>0,\qquad c-x+(f-c)y>0.
\]

The analogous two expressions obtained by each square rotation are positive
as well. The exclusions also contain all eight ear triangles, so no separate
ear case remains.

## 5. Excluding two adjacent double-wedge conditions

The following theorem covers a full orientation family, without a corner-cap
assumption. In particular it simultaneously excludes the two radial classes
whose opposite-side quadrilaterals both place \(O\) in an end triangle.

**Theorem 6.** Suppose the eight boundary points have the form in Lemma 1.
If

\[
O\in\triangle ADE\cap\triangle HDE
\quad\hbox{and}\quad
O\in\triangle BCF\cap\triangle BCG,
\]

then the minimum triangle area is at most

\[
\frac{5-2\sqrt6}{2}<A_0.
\]

The conclusion also holds for every square-symmetry image of these
conditions.

**Proof.** Let \(s>0\) be twice the minimum triangle area, and put
\(X=1-x\), \(Y=y\). Retain the four side gaps \(L,B,R,T\) from Section 2.
The eight consecutive boundary triangles imply

\[
a,d\ge s/B,\quad b,g\ge s/L,\quad
c,f\le1-s/R,\quad e,h\le1-s/T.                             \tag{12}
\]

The four diagonal triangle inequalities furnished by the stated
containments are

\[
\begin{aligned}
y&\ge h(1-x)+dx+s, &
y&\le a(1-x)+ex-s,\\
x&\ge b(1-y)+fy+s, &
x&\le c(1-y)+gy-s.
\end{aligned}
\]

Using \(h=a+L\), \(f=g+T\), and (12), they give

\[
\begin{aligned}
Y&\ge LX+s(1+1/B),\\
1-Y&\ge LX+s(1+1/T),\\
1-X&\ge TY+s(1+1/L),\\
X&\ge TY+s(1+1/R).                                        \tag{13}
\end{aligned}
\]

Set \(A=s(1+1/R)\), \(C=s(1+1/B)\). Since \(LT<1\), the first and last
inequalities in (13) imply

\[
X\ge\frac{A+TC}{1-LT},\qquad
Y\ge\frac{C+LA}{1-LT}.
\]

Add the other two inequalities in (13) and substitute these lower bounds.
After collecting terms, this gives

\[
\begin{aligned}
2\ge s\Bigg[2+\frac1L+\frac1T
 +\frac{(1+LT)(2+1/B+1/R)
       +2(L+T+L/R+T/B)}{1-LT}\Bigg].                       \tag{14}
\end{aligned}
\]

Let \(\ell=\sqrt{LT}\) and \(r=\sqrt{BR}\). The four AM--GM bounds

\[
\frac1L+\frac1T\ge\frac2\ell,\qquad
\frac1B+\frac1R\ge\frac2r,\qquad
L+T\ge2\ell,\qquad
\frac LR+\frac TB\ge\frac{2\ell}{r}
\]

turn (14) into

\[
1\ge s\left[1+\frac1\ell
 +\frac{(1+1/r)(1+\ell)}{1-\ell}\right]
 =s\frac{(1+\ell)(r+\ell)}{\ell r(1-\ell)}.               \tag{15}
\]

Independently, the bottom and right side budgets and (12) give

\[
1\ge B+\frac{s}{L}+\frac{s}{R},\qquad
1\ge R+\frac{s}{B}+\frac{s}{T}.
\]

Adding and applying AM--GM again yields

\[
1\ge r+s\left(\frac1\ell+\frac1r\right).                 \tag{16}
\]

Define \(t=s(1/\ell+1/r)>0\). Equations (15)--(16) imply

\[
\ell\le\frac{1-t}{1+t},\qquad r\le1-t,\qquad0<t<1.
\]

Since \(\ell r/(\ell+r)\) increases in each positive argument,

\[
s=\frac{t\ell r}{\ell+r}
\le\frac{t(1-t)}{2+t}\le5-2\sqrt6.
\]

The last inequality is exactly the nonnegative-square identity

\[
(5-2\sqrt6)(2+t)-t(1-t)
=\bigl(t-(\sqrt6-2)\bigr)^2\ge0.
\]

The comparison with \(A_0\) was proved in Section 2. Degenerate boundary
cases have area zero, so the closed triangle containments cause no exception.
\(\square\)

## 6. Excluding two neighboring corner caps

**Lemma 7.** For any nondegenerate eight-boundary configuration, let \(s\)
be twice its minimum triangle area and \(m=\max(L,B,R,T)\). Then

\[
s\le\frac{m(1-m)}2.                                      \tag{17}
\]

**Proof.** Rotate so that \(L=m\). Since \(R\le m\), the bottom and top
side budgets give

\[
B,T\le1-\frac{s}{L}-\frac{s}{R}\le1-\frac{2s}{m}.
\]

This common upper bound is positive. The left side budget therefore gives

\[
m\le1-\frac{s}{B}-\frac{s}{T}
\le1-\frac{2s}{1-2s/m}.
\]

Multiplying by the positive denominator and cancelling \(2s\) yields
\(m\le1-2s/m\), which is (17). \(\square\)

**Theorem 8.** Suppose \(O\) lies in the central region (11) and also in
both corner caps \(\operatorname{conv}(B,C,D,E)\) and
\(\operatorname{conv}(D,E,F,G)\). Then the minimum triangle area is at
most

\[
\frac{21}{400}<A_0.
\]

**Proof.** The side-cap exclusions imply that \(O\) is outside the ears
\(BCD\) and \(EFG\). Splitting each corner quadrilateral along its diagonal
therefore puts \(O\) in both \(BDE\) and \(DEG\). In particular
\(d<y<e\); equality would give a degenerate triangle.

Let \(s>0\) be twice the minimum triangle area and \(u=s/L\). The
triangles \(BEO\) and \(DGO\), with their signs fixed by these
containments, give

\[
\begin{aligned}
e(x-b)-(1-b)y&\ge s,\\
(1-g)(y-d)-(1-d)(1-x)&\ge s.
\end{aligned}
\]

Adding and using \(b,g\ge u\), with \(e-y,y-d>0\), yields

\[
(1+R)x\ge1+b(e-y)+g(y-d)+2s\ge1+uR+2s.                    \tag{18}
\]

On the other hand \(O\) is on the inner side of \(CF\), so

\[
x\le c(1-y)+fy-s\le1-\frac{s}{R}-s.                       \tag{19}
\]

Combining (18)--(19) and rearranging gives

\[
s\le\frac1{1+4/R+1/R^2+1/L}
\le\frac{m^2}{m^2+5m+1},\qquad m=\max(L,B,R,T).           \tag{20}
\]

For \(0<m\le7/10\), the last function is increasing in \(m\), and hence

\[
s\le\frac{49}{499}<\frac{21}{200}.
\]

For \(7/10\le m<1\), Lemma 7 and the decrease of \(m(1-m)\) on
\([1/2,1]\) instead give

\[
s\le\frac{(7/10)(3/10)}2=\frac{21}{200}.
\]

Thus the area is at most \(21/400<17/320<A_0\). Every inequality used
is valid for all side gaps, with no symmetry assumption on the configuration.
\(\square\)

## 7. Excluding a double wedge facing the opposite split

**Theorem 9.** Suppose

\[
O\in\triangle ADE\cap\triangle HDE
\quad\hbox{and}\quad
O\in\triangle BFG\cap\triangle BCG.
\]

Then the minimum triangle area is strictly less than \(1/20<A_0\).
The same holds under every square symmetry.

**Proof.** Let \(s>0\) be twice the minimum area. The two right-base
containments imply

\[
Rx\ge L(1-x)+2s.                                         \tag{21}
\]

The other two containments give the three diagonal inequalities

\[
\begin{aligned}
x&\le b(1-y)+fy-s,\\
x&\le c(1-y)+gy-s,\\
x&\ge b(1-y)+gy+s.
\end{aligned}
\]

Consequently \(Ty\ge2s\) and \(B(1-y)\ge2s\).
Since \(c,f\le1-s/R\), the two upper bounds for \(x\) yield

\[
x\le1-\frac{s}{R}-s-\max\{B(1-y),Ty\}
\le1-\frac{s}{R}-3s.
\]

Substitution in (21) gives

\[
R\ge s\left[2+\frac{L+R}{R}+3(L+R)\right].               \tag{22}
\]

The adjacent side budgets give \(B,T\le K:=1-s/L-s/R\), where
\(K>0\). The right side budget \(R+s/B+s/T\le1\) therefore implies

\[
1-\frac{s}{L}-\frac{s}{R}\ge\frac{2s}{1-R}.               \tag{23}
\]

Suppose for contradiction that \(s\ge1/10\). Equation (23) shows that

\[
D:=1-\frac1{10R}-\frac1{5(1-R)}>0,
\qquad L\ge\frac{1}{10D}.
\]

Equation (22) meanwhile gives

\[
7R-3\ge L(1/R+3)>0,
\]

so \(R>3/7\). Combine these two bounds and multiply by the positive
quantity \(10R(1-R)D\). The resulting necessary inequality is

\[
(7R-3)(-10R^2+9R-1)\ge(1+3R)(1-R),
\]

or equivalently

\[
F(R):=35R^3-48R^2+18R-1\le0.
\]

But for \(R\ge3/7\), the identity

\[
F(R)=\frac{41}{3}\left(R-\frac{79}{123}\right)^2
+\frac{32}{1107}
+35\left(R-\frac37\right)\left(R-\frac23\right)^2
\]

is strictly positive. This contradiction proves \(s<1/10\), and hence
the minimum area is less than \(1/20\). The target comparison follows
already from \(A_0>17/320\). \(\square\)

## 8. Opposite side-contact intervals overlap at the target

**Lemma 10.** If two opposite side-contact intervals have disjoint interiors,
then the minimum triangle area is at most

\[
\frac{3-2\sqrt2}{4}<A_0.
\]

Consequently every configuration at the target threshold satisfies
\(b<f\), \(g<c\), \(a<e\), and \(d<h\).

**Proof.** By a square symmetry suppose \(b\ge f\). Put
\(S=B+T\), \(Z=L+R\), and let \(s>0\) be twice the minimum area.
Since

\[
S=(c-b)+(f-g)\le c-g
\le1-\frac{s}{R}-\frac{s}{L}\le1-\frac{4s}{Z},
\]

we have \(S+4s/Z\le1\). The left and right side budgets give

\[
Z\le2-2s/B-2s/T\le2-8s/S.
\]

Thus \(Z/2+4s/S\le1\). Adding and applying AM--GM separately to
\(S+4s/S\) and \(Z/2+4s/Z\),

\[
2\ge4\sqrt{s}+2\sqrt{2s}.
\]

Therefore \(s\le1/(2+\sqrt2)^2=(3-2\sqrt2)/2\), as claimed.
For the strict target comparison, \(\sqrt2>7/5\) gives
\((3-2\sqrt2)/4<1/20<A_0\). \(\square\)

## 9. Excluding a single corner cap beside a double wedge

**Theorem 11.** Suppose \(O\) lies in the central region (11), in both
\(ADE\) and \(HDE\), in the corner cap \(BCDE\), and outside the corner
cap \(DEFG\). Then the minimum triangle area is strictly less than
\(7/128<A_0\).

**Proof.** Suppose to the contrary that the minimum doubled area satisfies
\(s\ge c_0:=7/64\). Lemma 7 implies

\[
L,B,R,T<m_0:=11/16,
\]

because \((11/16)(5/16)/2=55/512<c_0\) and \(m(1-m)\) decreases
for \(m\ge1/2\). Write

\[
X=1-x,\qquad a_0=\frac{c_0}{m_0}=\frac7{44},
\qquad\delta=\frac3{64}.
\]

The right double wedge gives \(Rx\ge L(1-x)+2s\). The central-region
inequality for \(CF\) gives \(X\ge s/R+s\). Consequently

\[
R(1-s)>3s,\qquad R>7/19.
\]

Since \(e\le1-s/T<1-a_0\), it follows that

\[
0<d=e-R<1-\frac7{44}-\frac7{19}<\frac12.                  \tag{24}
\]

### An upper bound for \(X\)

The signs of \(BEO\) and \(DHO\) give

\[
e(x-b)-(1-b)y\ge s,\qquad y\ge hX+d(1-X)+s.
\]

Eliminate \(y\), and use \(h\ge L+s/B\), \(d\ge s/B\). This gives

\[
X\le\frac{(1-b)(R-s)-s}{R+(1-b)L+s/B}.
\]

The fraction increases as a function of \(1-b\): its derivative has
positive numerator \((R-s)(R+s/B)+Ls\). Here \(R\ge3s>s\) because
\(O\in ADE\). Since \(b\ge s/L\),

\[
X\le\frac{R-2s-s(R-s)/L}{R+L-s+s/B}.                      \tag{25}
\]

Also \(s/B-s>c_0(16/11-1)=35/704>\delta\).
The function \(s(R-s)\) increases on \([c_0,R/3]\), so (25) and
AM--GM imply

\[
X(R+\delta)+2\sqrt{Xc_0(R-c_0)}\le R-2c_0.               \tag{26}
\]

The following four exact consequences of (26) will be used:

| If \(R\le U\) | Then \(X<\kappa c_0\) | Auxiliary \(q\) |
|---|---:|---:|
| \(11/20\) | \(\kappa=2\) | \(15/16\) |
| \(3/5\) | \(\kappa=9/4\) | \(21/20\) |
| \(13/20\) | \(\kappa=12/5\) | \(91/80\) |
| \(11/16\) | \(\kappa=13/5\) | \(49/40\) |

Here is a direct verification of the entire table. If
\(X\ge\kappa c_0\), (26) would require

\[
H(R):=R-2c_0-\kappa c_0(R+\delta)
-2c_0\sqrt{\kappa(R-c_0)}\ge0.
\]

This function is convex on \([c_0,U]\), and \(H(c_0)<0\). For the four
rows, respectively, exact rational arithmetic gives

\[
\begin{array}{c|cccc}
&1&2&3&4\\\hline
\kappa(U-c_0)-q^2
&3/1280&9/6400&23/6400&1/400\\
\kappa c_0(U+\delta)+2c_0q-U+2c_0
&9/2048&125/16384&13/25600&33/4096.
\end{array}
\]

Thus \(H(U)<0\); convexity makes \(H<0\) throughout the interval, a
contradiction. This proves the table without an optimization oracle.

### Lower bounds for \(X\)

Put \(p=1-g\), \(q=1-c\). Lemma 10 gives \(p>q>0\).
The signs of \(CDO\) and \(DGO\) yield

\[
q(y-d)+dX\ge s,\qquad
(1-d)X-p(y-d)\ge s.
\]

Multiply these by \(p\) and \(q\), respectively, and add:

\[
X\ge s\frac{p+q}{q+d(p-q)}.                               \tag{27}
\]

By (24) this is strictly greater than \(2s\). Together with the first
upper-bound row, it excludes \(R\le11/20\).

For the remaining ranges, use the following three bounds:

| If \(R\ge r_0\) | Lower bound from (27) | \(h=1-r_0\) | \(D\) |
|---|---:|---:|---:|
| \(11/20\) | \(X>(9/4)s\) | \(9/20\) | \(3/10\) |
| \(3/5\) | \(X>(12/5)s\) | \(2/5\) | \(1/4\) |
| \(13/20\) | \(X>(13/5)s\) | \(7/20\) | \(1/5\) |

For completeness, these are proved by three short cubic identities. The
boundary budgets give

\[
p\ge a_0+\frac{c_0}{h-d},\qquad
q\le1-a_0-\frac{c_0}{d},\qquad
0<d<h-a_0<D.                                               \tag{28}
\]

Indeed, \(p=1-g\ge T+s/R\), \(T\ge s/(1-e)=s/(1-R-d)\),
and \(q=1-c\le1-b-B\le1-s/L-s/d\). Also
\(d=e-R<1-a_0-R\le h-a_0\).

For the three displayed values of \(\kappa\),
\(1-\kappa d>0\) and \(1-\kappa+\kappa d<0\).
Thus (28) gives

\[
\begin{aligned}
&(p+q)-\kappa\bigl(q+d(p-q)\bigr)\\
&\quad\ge
\left(a_0+\frac{c_0}{h-d}\right)(1-\kappa d)
+\left(1-a_0-\frac{c_0}{d}\right)(1-\kappa+\kappa d).
\end{aligned}                                             \tag{29}
\]

Multiply the right side by \(d(h-d)>0\) and put \(v=D-d\ge0\).
The result is \(N(v)/K\), with the following **positive-coefficient**
polynomials:

| \(\kappa\) | \(K\) | \(N(v)\) |
|---:|---:|---|
| \(9/4\) | \(11264\) | \(17280v^3+2272v^2+(241/5)v+15/2\) |
| \(12/5\) | \(8800\) | \(14400v^3+3920v^2+233v+43/4\) |
| \(13/5\) | \(70400\) | \(124800v^3+52320v^2+4955v+1149/5\) |

Every term is explicitly nonnegative, and the constant terms are positive.
Equations (27)--(29) prove the lower-bound table.

Finally divide \(0<R<m_0\) at \(11/20,3/5,13/20\). On each of the four
intervals the lower table gives \(X\ge\kappa s\ge\kappa c_0\), while the
matching upper row gives \(X<\kappa c_0\). This contradiction proves
\(s<7/64\), hence the asserted area bound. \(\square\)

## 10. Excluding the double wedge with no neighboring corner cap

**Theorem 12.** Suppose \(O\) lies in the central region (11), in
\(ADE\cap HDE\) and \(BCF\cap CFG\), and outside both corner caps
\(BCDE\) and \(DEFG\). Then the minimum triangle area is strictly less
than \(7/128<A_0\).

**Proof.** Suppose \(s\ge c_0:=7/64\), where \(s\) is twice the minimum
area. As in Theorem 11, Lemma 7 gives \(L,B,R,T<m_0:=11/16\).
The right double wedge and the central-region inequality for \(CF\) give

\[
Rx\ge L(1-x)+2s,\qquad1-x\ge s/R+s,
\]

and hence \(R>7/19\). Thus

\[
\frac7{19}<R<\frac{11}{16}.                               \tag{30}
\]

Put \(u=s/L\), \(W=b(1-y)+gy\), and \(Z=x-W\).
The signs of the three triangles \(BFO,CGO,CFO\) imply

\[
Z\ge Ty+s,\qquad Z\ge B(1-y)+s,
\qquad Z\le Ty+B(1-y)-s.
\]

It follows that \(Ty\ge2s\), \(B(1-y)\ge2s\), and \(Z\ge3s\).
The boundary inequalities \(b,g\ge u\) also give \(W\ge u\).

The two excluded corner caps fix the signs of \(BEO\) and \(DGO\).
Adding their inequalities gives

\[
1\ge(1+R)x-P+2s,\qquad
P=b(e-y)+g(y-d).                                          \tag{31}
\]

Here a weighted cancellation controls asymmetry. Write
\(b=u+\beta\), \(g=u+\gamma\), with \(\beta,\gamma\ge0\), and set
\(a_0=1/7\). Since

\[
d\ge s/B>7/44>a_0,
\qquad1-e\ge s/T>7/44>a_0,
\]

the exact identity

\[
\begin{aligned}
(1+R)W-P
&=u+\beta(1-d-Ry)+\gamma(d+Ry)\\
&\ge u+(R+a_0)\bigl(\beta(1-y)+\gamma y\bigr)\\
&=(R+a_0)W+(1-R-a_0)u
\end{aligned}
\]

is valid. Indeed,
\(1-d-Ry=R(1-y)+(1-e)\ge(R+a_0)(1-y)\), and
\(d+Ry\ge(R+a_0)y\). Substitute this in (31), use \(x=W+Z\),
and then \(Z\ge3s\). We obtain

\[
1\ge(R+a_0)x+(1-R-a_0)u+s(5-3a_0).                       \tag{32}
\]

The right double wedge supplies

\[
x\ge\frac{L+2s}{L+R}=\frac{s(1+2u)}{s+Ru}.
\]

The adjacent side budgets give \(B,T\le1-u-s/R\); using the right
side budget then gives

\[
u\le1-\frac{s}{R}-\frac{2s}{1-R}
\le D(R):=1-\frac{c_0}{R}-\frac{2c_0}{1-R}.               \tag{33}
\]

For fixed positive \(u,R\), the right side of (32), after substituting
the lower bound for \(x\), increases with \(s\). Therefore (32) implies

\[
1\ge f(u,R):=
(R+a_0)\frac{c_0(1+2u)}{c_0+Ru}
+(1-R-a_0)u+c_0(5-3a_0).                                 \tag{34}
\]

We prove that (30), (33), and \(u>0\) instead force \(f(u,R)>1\).

### Range \(7/19<R\le5/8\)

Put \(K=1-R-a_0>0\), \(z=c_0+Ru>0\), and
\(C=(53R-4)/(64R)\). Direct rearrangement gives

\[
f(u,R)=C+
\frac{Kz+(R+a_0)c_0(R-2c_0)/z}{R}
\ge C+\frac{2\sqrt{K(R+a_0)c_0(R-2c_0)}}{R}.              \tag{35}
\]

All radicands are positive. Also \(1-C=(11R+4)/(64R)>0\), and

\[
4K(R+a_0)c_0(R-2c_0)-R^2(1-C)^2
=\frac{P(R)}{28672},
\]

where

\[
P(R)=-12544R^3+10857R^2-1040R-448.
\]

This polynomial is concave on \([7/19,5/8]\), since
\(P''(R)=-75264R+21714<0\). Its endpoint values are

\[
P(7/19)=\frac{104363}{6859}>0,
\qquad P(5/8)=\frac{5153}{64}>0.
\]

Concavity makes \(P\) positive on the entire interval. Squaring the
positive quantities in (35) therefore proves \(f(u,R)>1\).

### Range \(5/8\le R<11/16\)

The function \(D(R)\) in (33) decreases here, and
\(D(R)\le D(5/8)=29/120<1/4\). For \(0<u\le D(R)\),

\[
\frac{\partial f}{\partial u}
=K-\frac{(R+a_0)c_0(R-2c_0)}{(c_0+Ru)^2}
\le\frac{13}{56}-\frac{559}{1296}<0.
\]

For the displayed bound use \(K\le13/56\),
\((R+a_0)c_0(R-2c_0)\ge559/16384\), and
\(c_0+Ru\le9/32\). Hence \(f(u,R)\ge f(D(R),R)\).
An exact simplification gives

\[
f(D(R),R)-1
=\frac{N(R)}{448R^2(R-1)(32R-25)},
\]

where

\[
N(R)=-14336R^5+33792R^4-27712R^3+8928R^2-721R-49.
\]

The denominator is positive in the stated range. Put \(w=R-5/8\), so
\(0\le w<1/16\). Then

\[
N(R)=\frac{181}{16}+\frac{53}{2}w+1168w^2+768w^3
-11008w^4-14336w^5.
\]

Using \(w^4\le w^2/256\) and \(w^5\le w^2/4096\),

\[
N(R)\ge\frac{181}{16}+\frac{53}{2}w
+\frac{2243}{2}w^2+768w^3>0.
\]

This again proves \(f(u,R)>1\), contradicting (34). Thus
\(s<7/64\), as required. \(\square\)

## 11. The complete eight-boundary theorem

**Theorem 13.** For nine points in the unit square with at least eight
points on the boundary, the minimum triangle area is at most

\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]

Equality holds only for the construction in Theorem 1 of
[`HAND_PROOF.md`](HAND_PROOF.md), up to a square symmetry and relabeling.

**Proof.** Degenerate configurations have minimum area zero. Otherwise
Lemma 1 gives exactly two points on each open side and one point \(O\)
in the open square. Assume that the minimum area is at least \(A_0\).
Theorems 2 and 4 put \(O\) in the central region (11).

The finite hand derivation in
[`RADIAL_CATALOGUE.md`](RADIAL_CATALOGUE.md) covers this region by the eight
radial classes R1--R8, up to square symmetry. They are bounded as follows:

| Class | Applicable hand result | Consequence |
|---|---|---|
| R1 | Theorem 8 | Area at most \(21/400<A_0\) |
| R2 | Theorem 11 | Area less than \(7/128<A_0\) |
| R3 | `HAND_PROOF.md`, Theorem 1 | Area at most \(A_0\); exact equality classification |
| R4 | Theorem 6 | Area at most \((5-2\sqrt6)/2<A_0\) |
| R5 | Theorem 12 | Area less than \(7/128<A_0\) |
| R6 | [`R6_BOUND.md`](R6_BOUND.md) | Area at most \(7/128<A_0\) |
| R7 | Theorem 6 | Area at most \((5-2\sqrt6)/2<A_0\) |
| R8 | Theorem 9 | Area less than \(1/20<A_0\) |

Only R3 survives. Its orientation signs are exactly those of the sharp
chamber theorem, whose upper bound and equality statement give the conclusion.
\(\square\)

This completes the **entire eight-boundary gate**. It does not prove that
an unrestricted optimizer has eight boundary points; the unsaturated global
normalization families require their own argument. The optional
`check_eight_boundary.py` verifies the printed identities and rational
comparisons, while all inequalities and finite-case arguments are given in
the text.
