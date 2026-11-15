# Nine points with all four square corners

## Theorem

Suppose nine points in the unit square include all four corners. Their
minimum triangle area is at most

\[
\boxed{\frac1{19}.}                                             \tag{1}
\]

This is a direct hand proof. It uses the triangles containing a corner
to restrict the other five points, and one triangle of three noncorner
points for the final contradiction. No numerical search is a premise.

Assume for a contradiction that all triangle areas are at least \(1/19\).
Set

\[
s=\frac2{19},\qquad
A=(0,0),\quad B=(0,1),\quad C=(1,1),\quad D=(1,0).
\]

Every absolute determinant of a triangle is therefore at least \(s\).
For a corner \(O\), write

\[
D_O(P,Q)=\det(P-O,Q-O).
\]

The five other points are distinct, are strictly inside the square,
and no three of the nine points are collinear.

## 1. Four small regions and a pair in one region

The triangles involving two square corners imply, for every noncorner
point \((x,y)\),

\[
s\le x,y\le1-s,\qquad
|x-y|\ge s,\qquad |x+y-1|\ge s.                              \tag{2}
\]

Thus the five points lie in four disjoint triangles, which we call the
left, top, right and bottom regions. The left region is

\[
L=\{(x,y):s\le x\le\tfrac12-s,\quad x+s\le y\le1-s-x\};    \tag{3}
\]

the other three are its rotations about the center of the square.
In particular, the top region satisfies \(y\ge x+s\) and
\(x+y\ge1+s\), hence \(y\ge1/2+s\). The bottom region satisfies
\(y\le1/2-s\).

Two points lie in one region. Rotate the square to make that region
\(L\), and name two of its points

\[
P=(p,u),\qquad Q=(q,v),\qquad p\le q,\qquad d=q-p.
\]

**Pair separation.** One has

\[
D_A(P,Q)\le-s,\qquad D_B(P,Q)\ge s,\qquad d\ge2s.           \tag{4}
\]

Indeed, suppose \(D_A(P,Q)\ge s\). By (3),

\[
\begin{aligned}
D_A(P,Q)=pv-qu
&\le p(1-s-q)-q(p+s)\\
&=p(1-s-2q)-sq\\
&\le q(1-2s-2q)
\le\frac{(1-2s)^2}{8}
=\frac{225}{2888}<s.
\end{aligned}
\]

The coefficient \(1-s-2q\) is positive because \(q\le1/2-s\),
so the substitution \(p\le q\) is valid. This contradiction proves
\(D_A(P,Q)\le-s\). Reflecting the same argument across \(y=1/2\)
gives \(D_B(P,Q)\ge s\). Finally
\(D_B(P,Q)=D_A(P,Q)+d\), proving (4).

Since the same argument applies to every pair in a region, three points
in one region would need an \(x\)-span of at least \(4s\). The available
span in (3) is \(1/2-2s=11/38<4s\). Therefore each region contains at
most two points.

Call the larger-\(x\) member \(Q\) the inner point of the pair. Equation
(4) and (3) imply

\[
3s\le q\le\tfrac12-s,\qquad
q+s\le v\le1-s-q,
\qquad 4s\le v\le1-4s.                                    \tag{5}
\]

## 2. The line through the pair stays away from two square edges

Write the line \(PQ\) as

\[
y=\ell(x)=z+mx,
\qquad a=\frac{s}{d},\qquad w=\ell(1).
\]

Since \(D_A(P,Q)=-dz\) and \(D_B(P,Q)=d(1-z)\), (4) says
\(a\le z\le1-a\). The two right-corner determinants are
\(-dw\) and \(d(1-w)\), so their absolute-value constraints leave three
possibilities:

\[
w\le-a,
\qquad a\le w\le1-a,
\qquad w\ge1+a.
\]

Only the middle possibility can occur. If \(w\ge1+a\), linear
interpolation gives
\(v=\ell(q)\ge(1-q)a+q(1+a)=q+a\).
Together with \(v\le1-s-q\), this gives \(2q+a+s\le1\).
If \(w\le-a\), interpolation instead gives
\(v\le(1-q)(1-a)-qa=1-q-a\), and \(v\ge q+s\) gives exactly the
same inequality. Since \(q\ge d+s\), either alternative implies

\[
2d+3s+\frac{s}{d}\le1,
\qquad 2d^2-(1-3s)d+s\le0.
\]

But this quadratic has positive leading coefficient and discriminant

\[
(1-3s)^2-8s=-\frac{135}{361}<0.
\]

Consequently

\[
a\le\ell(x)\le1-a\quad(0\le x\le1),
\qquad a\ge\frac{s}{1/2-2s}=\frac4{11}.                    \tag{6}
\]

For any other noncorner point \(X=(x,y)\), the triangle \(PQX\)
has determinant \(d(y-\ell(x))\). Hence

\[
y\ge\ell(x)+a\ge2a
\quad\hbox{or}\quad
y\le\ell(x)-a\le1-2a.                                    \tag{7}
\]

## 3. Exactly one region contains a pair

Suppose a second region contains two points. By rotating (5), its inner
point \(Z\) has \(y\)-coordinate in \([3s,1-3s]\). For the left or right
region the stronger interval \([4s,1-4s]\) holds; for the top and bottom
regions the claimed wider interval follows from
\(3s\le q\le1/2-s\).

Together with (6), this bounds the determinant of \(PQZ\) by

\[
\begin{aligned}
|\det(Q-P,Z-P)|
&=d\,|y_Z-\ell(x_Z)|\\
&\le d(1-3s-a)
=d(1-3s)-s\\
&\le(\tfrac12-2s)(1-3s)-s
=\frac{67}{722}<s=\frac{76}{722}.
\end{aligned}                                             \tag{8}
\]

This is impossible. Each region has at most two points, exactly one
region has two, and there are five noncorner points in total. Thus the
four region counts are exactly \(2,1,1,1\). Besides \(P,Q\in L\),
there is a point \(X\) in the top region and a point \(Y\) in the bottom
region. The point in the right region will not be needed again.

## 4. The corner signs for the top and bottom points

Write \(X=(x,y)\). Since \(y\ge1/2+s\), it cannot be in the lower
alternative of (7), which gives \(y\le1-2a\le3/11\). Therefore

\[
y\ge2a\ge\frac8{11},\qquad y>v.
\]

We claim the three signs

\[
D_A(Q,X)\ge s,\qquad D_B(Q,X)\ge s,
\qquad D_C(Q,X)\le-s.                                    \tag{9}
\]

First,

\[
D_B(Q,X)=(1-v)x-q(1-y)>\frac1{25}-\frac2{15}
=-\frac7{75}>-s.
\]

Here (2), (5), and \(y\ge8/11\) give
\(x>1/10\), \(1-v>2/5\), \(q<2/5\), and \(1-y<1/3\).
Since \(|D_B(Q,X)|\ge s\), its sign must be positive.

Next the top-region constraint \(x\le y-s\) implies

\[
\begin{aligned}
D_C(Q,X)
&=(1-v)x-(1-q)y+v-q\\
&\le(v-q)(1-y)-s(1-v)\\
&\le(1-7s)(\tfrac12-s)-4s^2
=\frac{43}{722}<s.
\end{aligned}
\]

The last bound uses (5), \(q\ge3s\), and \(y\ge1/2+s\).
Thus \(D_C(Q,X)\le-s\).

Finally put \(h=y-v>0\) and \(\xi=x-q\). If \(D_A(Q,X)\le-s\),
the two inequalities for \(A\) and \(C\) would give

\[
\xi\ge\frac{qh+s}{v},\qquad
\xi\le\frac{(1-q)h-s}{1-v}.
\]

Compatibility requires \(s\le(v-q)h\). However,

\[
(v-q)h\le(v-q)(1-s-v)
\le\frac{(1-s-q)^2}{4}
\le\frac{(1-4s)^2}{4}
=\frac{121}{1444}<s.
\]

This contradiction proves all of (9).

Reflecting across \(y=1/2\) gives the corresponding signs for \(Y\).
In particular, write

\[
X=(q+\xi,v+h),\qquad Y=(q+\eta,v-k),\qquad h,k>0.
\]

The positive \(A\)- and \(B\)-determinants in (9), and their reflected
versions for \(Y\), give the four bounds

\[
\begin{aligned}
\frac{s-qh}{1-v}\le\xi\le\frac{qh-s}{v},\\
\frac{s-qk}{v}\le\eta\le\frac{qk-s}{1-v}.
\end{aligned}                                             \tag{10}
\]

The first interval is nonempty only if \(qh\ge s\), and the second only
if \(qk\ge s\). Also (2) implies

\[
h\le1-s-v,\qquad k\le v-s.                                \tag{11}
\]

## 5. The final triangle is too small

The absolute determinant of \(QXY\) is \(|\xi k+\eta h|\).
By (10), it is at most the larger of

\[
\begin{aligned}
F_1(h,k)&=\frac{qhk}{v(1-v)}
             -s\left(\frac{k}{1-v}+\frac{h}{v}\right),\\
F_2(h,k)&=\frac{qhk}{v(1-v)}
             -s\left(\frac{k}{v}+\frac{h}{1-v}\right).
\end{aligned}                                             \tag{12}
\]

Both functions increase with each of \(h,k\) throughout the feasible
range \(qh,qk\ge s\). For example,

\[
\frac{\partial F_2}{\partial h}
=\frac{qk-sv}{v(1-v)}>0,
\qquad
\frac{\partial F_2}{\partial k}
=\frac{qh-s(1-v)}{v(1-v)}>0;
\]

the two derivatives for \(F_1\) merely interchange \(v\) and \(1-v\).
We may therefore use (11) to substitute \(h=1-s-v\), \(k=v-s\).
At these values,

\[
F_1=F_2-\frac{s(2v-1)^2}{v(1-v)}\le F_2,
\qquad
F_2=q-2s-\frac{qs(1-s)-s^2}{v(1-v)}.
\]

The numerator \(qs(1-s)-s^2\) is positive because \(q\ge3s\).
Since \(v(1-v)\le1/4\), followed by \(q\le1/2-s\), we obtain

\[
\begin{aligned}
|\det(X-Q,Y-Q)|
&\le q(1-2s)^2-2s(1-2s)\\
&\le(1-2s)\left(\frac{(1-2s)^2}{2}-2s\right)\\
&=\frac{1095}{13718}
<\frac{1444}{13718}=s.
\end{aligned}
\]

This contradicts the area constraint for \(QXY\), and proves (1).

The optional script [check_four_corners.py](check_four_corners.py) checks
the determinant identities and exact rational comparisons in this proof.
It is a transcription aid, not a substitute for the region and sign
arguments above.
