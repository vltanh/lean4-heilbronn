# Five consecutive turns of a monotone chain

Let seven points \(V_0,\ldots,V_6\) in the closed unit square have
nondecreasing ordinates. Suppose their five consecutive signed doubled
areas \([V_{i-1}V_iV_{i+1}]\), \(1\le i\le5\), are positive, and let
\(m\) be their minimum. Then
\[
 m\le \frac{5\sqrt5-11}{2}<\frac1{11}<\frac{93}{1000}.              \tag{1}
\]
The first constant is sharp. Reflection covers five negative turns,
and a square symmetry gives the same result for chains monotone in
either coordinate.

## Horizontal travel to either side of the middle point

Write the six successive vertical increments as \(z,u,v,w,x,y\).
They are nonnegative. The middle four are positive. Indeed, if one
of the four corresponding edges were horizontal, its incoming
positive turn would force its horizontal increment to be negative,
while its outgoing positive turn would force it to be positive.

Write the same six horizontal increments as \(c,a,b,-g,-i,-k\).
These quantities may have either sign. The five determinant bounds
read
\[
 cu-za\ge m,\quad av-ub\ge m,\quad bw+vg\ge m,\quad
 iw-gx\ge m,\quad kx-iy\ge m.                                      \tag{2}
\]
Set \(L=z+u+v\) and \(T=w+x+y\). The square gives
\[
 L+T\le1,\qquad c+a+b\le1,\qquad g+i+k\le1.
\]
From the second and first inequalities of (2), in that order,
\[
 a\ge(m+ub)/v,\qquad c\ge(m+za)/u.
\]
Substitution gives \(c+a+b\ge mL/(uv)+bL/v\). Similarly,
\(i\ge(m+gx)/w\) and \(k\ge(m+iy)/x\) give
\(g+i+k\ge mT/(wx)+gT/w\). Hence
\[
 b\le v/L-m/u,\qquad g\le w/T-m/x.                               \tag{3}
\]
The middle determinant in (2) and the bounds in (3) imply
\[
 m(1+w/u+v/x)\le vw(1/L+1/T).
\]

Put \(A=v/L\) and \(B=w/T\). Both lie strictly between zero and
one. The right side is \(AB(L+T)\le AB\). Also
\(u\le(1-A)L\) and \(x\le(1-B)T\), so the arithmetic-geometric
mean inequality gives
\[
 w/u+v/x\ge 2\sqrt{\frac{AB}{(1-A)(1-B)}}.
\]
Set \(p=\sqrt{AB}\). From \(A+B\ge2p\) we obtain
\((1-A)(1-B)\le(1-p)^2\). Consequently
\[
 m\le\frac{p^2(1-p)}{1+p}.
\]
The derivative of the last expression is
\(2p(1-p-p^2)/(1+p)^2\). Its maximum on \([0,1]\) occurs at
\(p=(\sqrt5-1)/2\), giving the first inequality of (1). The second
is equivalent to \(55\sqrt5<123\), with squared gap
\(123^2-5\cdot55^2=4\). The last follows from \(1000<11\cdot93\).

For sharpness, take this maximizing \(p\), put \(c=2p^2/(1+p)\)
and \(b=p-c\), and use the points
\[
 (0,0),\ (c,0),\ (1-b,(1-p)/2),\ (1,1/2),\
 (1-b,(1+p)/2),\ (c,1),\ (0,1).
\]
Here \(0<c<p<1\). The horizontal increments are
\(c,1-p,b,-b,-(1-p),-c\), and the vertical increments are
\(0,(1-p)/2,p/2,p/2,(1-p)/2,0\). In (2) the first and fifth
determinants are \(c(1-p)/2\), the middle is \(bp\), and the
second and fourth are \((1-p)(p-b)/2\). All five equal
\(p^2(1-p)/(1+p)\).

## Two top points and a point in the adjacent side cap

Let \(O=(0,0), C=(c,0), D=(1,d), F=(f,1)\) be the actual one-corner
contacts. Let \(Q\) be in the right cap beyond \(CD\) and \(P,R\) in
the top cap beyond \(DF\). Assume every actual unsigned doubled area
is at least \(s=93/1000\). Choose the labels so \([DPR]>0\).
We claim that **\(R\) lies strictly inside \(DPF\)**. This applies
to both one-corner counts \((0,2,1,2,0)\) and \((1,1,1,2,0)\) and
their transposes. [Placement definitions](C1_EXTERIOR_REDUCTION.md)

Suppose first that \([FPR]>0\). In top-corner coordinates
\((X,Y)=((1-x)/(1-f),(1-y)/(1-d))\), the endpoints are
\(D=(0,1),F=(1,0)\). Both denominators are positive, and this
map preserves orientation. Write \(P=(j,k),R=(l,t)\) in these
coordinates. The cap gives \(j+k<1\) and \(l+t<1\), with each
coordinate nonnegative. The two positive tests become
\[
 U=l(1-k)-j(1-t)>0,\qquad V=k(1-l)-t(1-j)>0.
\]
Since \(kU+(1-k)V=(k-t)(1-j-k)>0\), we have \(k>t\).
Thus \(P\) is strictly below \(R\) in the original square.
Also \(0<y_Q<d<y_P<y_R\le1\), by the cap tests and the
actual clearance at \(OCQ\). The points
\[
 O,\ C,\ Q,\ D,\ P,\ R,\ F
\]
therefore have nondecreasing ordinates. Their first two turns are
positive by \([OCQ]=c y_Q>0\) and the right cap test \([CQD]>0\).
The middle turn is
\[
 [QDP]=(1-x_Q)(y_P-d)+(d-y_Q)(1-x_P)\ge0.
\]
Clearance makes it positive. The last two turns are \([DPR]>0\)
and \([PRF]=[FPR]>0\). This contradicts (1).

It follows that \([FPR]<0\), since a zero determinant also violates
clearance. The triangle \(DPF\) is positive by the top cap test.
Its three inward edge tests at \(R\) are \([DPR]>0\),
\([PFR]=-[FPR]>0\), and \([FDR]=[DRF]>0\). This proves the
claimed strict containment. Exactly the same proof applies in the
six-contact normalization with its two bottom contacts \(B,C\) in
place of \(O,C\) and right contact \(E\) in place of \(D\).
The first turn becomes \([BCQ]=(c-b)y_Q>0\).
