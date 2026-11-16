# The lower ear is empty in the final unbalanced Type-II placement

## Scope and result

Use the anchors and remaining radial placement of
[UNBALANCED_ONE_UPPER_RADIAL.md](UNBALANCED_ONE_UPPER_RADIAL.md):

\[
D=(0,1),\ C=(1,1),\ E=(0,1-q),\ B=(b,0),
\quad 0<b\le\frac12,
\]

\[
R=(r,u),\quad S=(k,t),\quad b<r<k\le1,\quad0\le u<t<1.
\]

The right hull is \(B,R,S,C\), with
\(T\in\operatorname{int}(BCR)\cap\operatorname{int}(BCS)\).
The two central points are \(P,Q\in\operatorname{int}(DBC)\).
The point \(P\) is above \(CE\), the point \(Q\) below it,
and the preceding note forces \(P,T\) above \(DR\) and \(Q\)
below \(DR\).

Assume the minimum area is at least \(A_0\), and use the rational
doubled threshold

\[
s=\frac8{73}<2A_0.
\]

All actual doubled areas are at least \(s\). The exact comparison
with \(2A_0\) is recorded in
[UNBALANCED_UPPER_CELL_II.md](UNBALANCED_UPPER_CELL_II.md).
Write \([XYZ]=\det(Y-X,Z-X)\).

**Theorem 1.** The point \(Q\) cannot lie inside \(EBR\).
Consequently the lower ear \(EBR\) contains no further actual
point in this final placement, and \(Q\) is above \(ER\).

This completely excludes the occupied-ear subcase. The remaining
placement, with \(Q\) above \(ER\), is not excluded here.

## 1. An actual Q--T area gives a positive stress

Suppose \(Q\in\operatorname{int}(EBR)\). Put

\[
\begin{gathered}
w=1-b,\quad L=1-r,\quad \lambda=1-q,\quad c=1-wq,\\
\delta=[EBR]=bu+\lambda(r-b),\qquad
g=[BRC]=r-b-wu,\\
A=[EBT],\qquad Z=[BRT].
\end{gathered}                                          \tag{1}
\]

The containing triangle gives \(\delta\ge3s\). We also have
\(Z\ge s\). The area \([BTQ]\) is positive: \(Q\) is inside
\(EBC\), and the affine function \([BT\,\cdot]\) has values
\(A>0,0,[BTC]>0\) at \(E,B,C\), respectively.
Thus \([BTQ]\ge s\).

The three barycentric weights of \(Q\) in \(EBR\) are each at
least \(s/\delta\). The values of the same affine function at
\(E,B,R\) are \(A,0,-Z\). Therefore

\[
s\le[BTQ]\le A-\frac{s(2A+Z)}{\delta},
\]

which proves

\[
\boxed{F:=(\delta-2s)A-s(\delta+Z)\ge0.}               \tag{2}
\]

In particular \(A>s\), since \(A\le s\) would make (2)
strictly negative.

## 2. Lower q to its necessary endpoint

The actual triangles \(DEB\) and \(DCE\), the latter containing
\(P\), give

\[
bq\ge s,\qquad q\ge3s.
\]

Keep \(b,r,u,S,T\) fixed and replace \(q\) by

\[
q_0=\max(3s,s/b)
=\begin{cases}s/b,&b\le1/3,\\3s,&b\ge1/3.\end{cases}   \tag{3}
\]

This is a relaxation of necessary scalar conditions. It is not a claim
that the full configuration remains admissible after moving \(E\).
Indeed, writing \(T=(x,y)\), both \(\delta\) and
\(A=\lambda(x-b)+by\) increase as \(q\) decreases, and

\[
\frac{\partial F}{\partial q}
=-(r-b)(A-s)-(x-b)(\delta-2s)<0.                        \tag{4}
\]

Here \(r>b\), \(x>b\), \(A>s\), and \(\delta\ge3s\).
These signs persist along the decreasing path. Thus (2) and
\(\delta\ge3s\) remain true at (3). All conditions involving
only the right points and \(D,B,C\) are unchanged. From now on,
\(q\) means the endpoint (3).

The five-point endpoint-triangle theorem gives \(b<4/11\), exactly
as in Section 11 of [TYPE_II.md](TYPE_II.md). Also \(b>s\).
Finally, \(P,T\in DCR\) gives

\[
1-u\ge(4+2\sqrt3)s>\frac{13}{16},\qquad
0\le u<\frac3{16}.                                    \tag{5}
\]

## 3. Three elementary parameter bounds

The generic right-quadrilateral elimination gives

\[
gL\ge sw,\qquad
\delta\le c-2\sqrt{cd},\qquad d=\frac{bs}{w}.           \tag{6}
\]

These depend only on the right-hull areas \([BRS],[CRS]\ge s\),
so they still hold after (3). They follow also from equation (2) of
UNBALANCED_RIGHT_HULL.md with \(m=n=1\).

### 3.1. The bottom parameter is greater than 1/5

We have

\[
\boxed{\frac15<b<\frac4{11}.}                          \tag{7}
\]

For the lower bound, suppose \(b\le1/5\), and put
\(C_*=1+s-s/b\ge c\). If \(b\le8/57=s/(1-2s)\), then
\(C_*\le3s\), contradicting \(3s\le\delta<c\le C_*\).
Otherwise \(8/57<b\le1/5\).

The positive bracket in (6), followed by increasing \(c\) to
\(C_*\), shows that \(\delta\ge3s\) would imply

\[
4C_*bs-w(C_*-3s)^2\le0.
\]

Multiplication by \(5329b^2>0\) gives the opposite sign, since

\[
P_b(b)=5841b^3-4417b^2+976b-64>0.                       \tag{8}
\]

For a direct check, put \(a=1/5-b\in[0,17/285]\). Then

\[
P_b=-5841a^3-\frac{4562}{5}a^2+\frac{2247}{25}a
 +\frac{156}{125}
\ge\frac{397292}{27075}a+\frac{156}{125}>0.
\]

The lower bound uses \(a^3\le(17/285)^2a\) and
\(a^2\le(17/285)a\).

### 3.2. The lower right coordinate lies between 7/10 and 9/10

We have

\[
\boxed{\frac7{10}<r<\frac9{10}.}                       \tag{9}
\]

For the upper bound, \(g<w\), and (6) gives
\(L>s\), hence \(r<1-s=65/73<9/10\).

For the lower bound, suppose \(r\le7/10\). If \(b\le1/3\),
substitute \(q=s/b\) and \(u\le3/16\). Then

\[
3s-\delta\ge2s-\frac7{10}+\frac{13b}{16}
 +\frac{7s}{10b}>0.
\]

The strict sign follows by arithmetic-geometric mean, because

\[
4\frac{91s}{160}-\left(\frac7{10}-2s\right)^2
=\frac{9659}{532900}>0.
\]

If \(b\ge1/3\), then \(q=3s\). The coefficient of \(b\)
in the bound \(\delta\le3b/16+(1-3s)(7/10-b)\) is negative.
Replacing \(b\) by \(1/3\) gives

\[
3s-\delta\ge3s-\frac1{16}-(1-3s)\frac{11}{30}
=\frac{353}{17520}>0.
\]

Both cases contradict \(\delta\ge3s\), proving (9).

### 3.3. The ear area is less than 4s

We also have

\[
\boxed{3s\le\delta<4s.}                                \tag{10}
\]

For \(b\le7/25\), use (7) to bound
\(c\le367/511\) and \(d\ge2/73\).
For \(b\ge7/25\), use
\(c\le1-3sw\le635/803\) and \(d\ge28/657\).
The upper expression in (6) increases with \(c\) when \(c>d\),
and decreases with \(d\). Its positive value at least \(3s\)
already forces \(c>4d\), so both replacements are valid.
For the two respective pairs \((C_*,d_*)\),

\[
4C_*d_*-(C_*-4s)^2
=\frac{103}{261121}>0,
\qquad
\frac{61519}{5803281}>0.
\]

In both cases \(C_*-4s>0\); hence
\(C_*-2\sqrt{C_*d_*}<4s\), which proves (10).

## 4. The right-hull margin is less than s

Define

\[
M=g-\frac{sw}{L}.
\]

We first prove

\[
\boxed{M<s.}                                           \tag{11}
\]

If \(M\ge s\), then \(gL\ge s(w+L)\). With
\(x=(r-b)/w\), this is

\[
u\le x-\frac{s}{w}-\frac{s}{w(1-x)}.
\]

The ear calculation and arithmetic-geometric mean consequently give

\[
\delta\le c-d-2\sqrt{cd},\qquad d=bs/w.
\]

Since \(\delta\ge3s\), the bracket \(c-d-3s\) is positive
before squaring, and therefore

\[
4cd-(c-d-3s)^2\le0.                                   \tag{12}
\]

For \(b\le1/3\), we have \(c=1+s-s/b\). Multiplication by
\((bw)^2>0\) turns the left side of (12) into

\[
P_-(b)=-\frac{6817b^4-11298b^3+5521b^2-1040b+64}{5329}.
\]

This is positive on \([1/5,1/3]\). To check it, put
\(a=b-7/25\in[-2/25,4/75]\). Expansion and the bounds
\(a^3\ge-(2/25)a^2\), \(a^4\le(2/25)^2a^2\) give

\[
2081640625P_-(b)
\ge166381875a^2+2711900a+182108>0.
\]

The discriminant of this upward quadratic is
\(-113843480360000<0\).

For \(b\ge1/3\), we have \(c=1-3sw\). Multiplication of (12)
by \(w^2>0\) instead gives

\[
P_+(b)=-\frac{576b^4+1200b^3-319b^2-2018b+625}{5329}.
\]

Put \(a=b-1/3\in[0,1/33]\). Then

\[
\begin{aligned}
47961P_+(b)
&=-5184a^4-17712a^3-11385a^2+15708a+284\\
&\ge\frac{20426313}{1331}a+284>0.
\end{aligned}
\]

The last bound replaces \(a^j\) by \((1/33)^{j-1}a\) in the
three negative terms. Thus both branches contradict (12), proving (11).

## 5. Eliminate the right interior point

Use its three positive subareas in \(BCR\):

\[
V=[CBT]\ge s,\qquad W=[RCT]\ge s,\qquad Z=[BRT]\ge s,
\qquad V+W+Z=g.                                       \tag{13}
\]

The first coordinate of \(T\) is
\(T_x=(bW+rV+Z)/g\). Since \(V,W\ge s\),

\[
T_x\le1-\frac{s(w+L)}g<r,
\]

where the last inequality is precisely \(M<s\).

The ordered area \([RST]\) increases with \(S_y\), because its
coefficient is \(r-T_x>0\). Use \([CRS]\ge s\) to replace
\(S_y\) by its upper bound
\(1-\{s+(1-k)(1-u)\}/L\). The resulting coefficient of
\(k\) is \([RCT]/L>0\), so increase \(k\) to one. These
two monotone replacements give

\[
s\le[RST]\le W+\frac{s(T_x-r)}L.
\]

Substitute \(1-T_x=(wW+LV)/g\) to obtain

\[
\boxed{MW\ge sV.}                                     \tag{14}
\]

In particular \(M>0\). Together with (11), it gives
\(W\ge sV/M>V\).

The stress (2) is affine in \(T\). Its values at \(B,R,C\) are

\[
F_B=-s\delta,\qquad
F_R=\delta(\delta-3s),\qquad
F_C=(\delta-2s)c-s(\delta+g),
\]

so (2) is exactly

\[
\boxed{WF_B+VF_R+ZF_C\ge0.}                            \tag{15}
\]

Equation (10) says \(F_R<-F_B\). If \(F_C\le F_B\), then
\(W>V\), \(F_B<0\), and (15) would give a strictly negative
left side. Thus \(F_C>F_B\).

For fixed \(V\), lower \(W\) to \(sV/M\), putting the removed
weight into \(Z\). This increases the left side of (15). Since
\(Z\ge s\), the remaining interval for \(V\) is

\[
s\le V\le\frac{M(g-s)}{M+s},\qquad
\boxed{M(g-2s)\ge s^2.}                               \tag{16}
\]

The expression is affine in \(V\), so it is nonnegative at one
endpoint of this interval. Clearing only the positive denominators,
every hypothetical configuration therefore satisfies at least one of

\[
\begin{aligned}
K_1&:=\{M(g-s)-s^2\}F_C+sMF_R+s^2F_B\ge0,\\
K_2&:=(g-s)(sF_B+MF_R)+s(M+s)F_C\ge0.                  \tag{17}
\end{aligned}
\]

All coordinates of \(Q,T,S\) have now been removed. Only the three
variables \(b,r,u\) and the endpoint choice (3) remain.

## 6. A fixed exact three-variable certificate

Put

\[
E_0=(g-2s)(gL-sw)-s^2L\ge0,
\qquad
H_1=Lb^2K_1+\frac3{1024}E_0,
\qquad H_2=Lb^2K_2.                                    \tag{18}
\]

The first sign is (16), multiplied by \(L>0\). Because
\(Lb^2>0\), equation (17) requires \(H_1\ge0\) or
\(H_2\ge0\). We prove instead that both are strictly negative
on the entire parameter box.

For branch \(-\), let
\(b_-=1/5,b_+=1/3,q=s/b\). For branch \(+\), let
\(b_-=1/3,b_+=4/11,q=3s\). In either branch make the substitutions

\[
b=b_-+(b_+-b_-)x,\qquad
r=\frac7{10}+\frac15y,\qquad
u=\frac3{16}z,
\qquad(x,y,z)\in[0,1]^3.                              \tag{19}
\]

The expressions in (18), with (1), (3), and (17), are polynomials after
cancellation. Their degrees in \((x,y,z)\) are

| Branch | \(H_1\) | \(H_2\) |
|---|---|---|
| \(-\) | \((5,4,3)\) | \((6,5,4)\) |
| \(+\) | \((6,4,3)\) | \((6,5,4)\) |

In the following table, \(x\) always ranges over the full interval
\([0,1]\). Each row gives a strict negative upper bound for every
tensor Bernstein coefficient of the indicated polynomial on that box,
at the degree just stated.

| Branch | Polynomial | \(y\) interval | \(z\) interval | Bound for every coefficient |
|---|---|---|---|---:|
| \(-\) | \(H_1\) | \([0,1/2]\) | \([0,1/2]\) | \(-1/3224550\) |
| \(-\) | \(H_1\) | \([0,1/2]\) | \([1/2,1]\) | \(-1/413076\) |
| \(-\) | \(H_1\) | \([1/2,5/8]\) | \([0,1/4]\) | \(-1/3614646\) |
| \(-\) | \(H_1\) | \([5/8,3/4]\) | \([0,1/4]\) | \(-1/1983267\) |
| \(-\) | \(H_1\) | \([1/2,3/4]\) | \([1/4,1/2]\) | \(-1/1439036\) |
| \(-\) | \(H_1\) | \([1/2,3/4]\) | \([1/2,1]\) | \(-1/351848\) |
| \(-\) | \(H_1\) | \([3/4,1]\) | \([0,1]\) | \(-1/486594\) |
| \(-\) | \(H_2\) | \([0,1]\) | \([0,1]\) | \(-1/177533\) |
| \(+\) | \(H_1\) | \([0,1/2]\) | \([0,1]\) | \(-1/2703813\) |
| \(+\) | \(H_1\) | \([1/2,1]\) | \([0,1]\) | \(-1/841173\) |
| \(+\) | \(H_2\) | \([0,1]\) | \([0,1]\) | \(-1/129369\) |

These are 1540 strict rational coefficient comparisons. To reproduce
them, expand the polynomial after mapping a row affinely to the unit
cube. If \(A_j\) are its power coefficients and its tensor degree
is \(n=(n_1,n_2,n_3)\), its Bernstein coefficients are exactly

\[
B_i=\sum_{j\le i}A_j
\prod_{a=1}^3\frac{\binom{i_a}{j_a}}{\binom{n_a}{j_a}}. \tag{20}
\]

The basis functions are nonnegative and sum to one. Hence each
polynomial is bounded above by its largest coefficient on each row.
For each polynomial and branch the displayed rectangles cover the
unit square in \((y,z)\), with disjoint interiors. Thus the table
proves \(H_1,H_2<0\) everywhere in (19), contradicting (17)--(18).

This excludes \(Q\in EBR\). The other two non-hull points are
above \(DR\), and hence outside \(EBR\), so the ear contains
no further actual point. As \(Q\in EBC\), the diagonal \(ER\)
of the convex quadrilateral \(EBRC\) now puts \(Q\) above it.
This proves Theorem 1. \(\square\)

## Verification

[check_unbalanced_occupied_lower_ear.py](check_unbalanced_occupied_lower_ear.py)
checks the determinant and barycentric formulas, both monotone
eliminations, the one-variable polynomial bounds, all rational
comparisons, and each of the 1540 fixed coefficient bounds. The eleven
rectangles and their negative bounds are specified in the proof and
the checker. No numerical optimization or adaptive subdivision is a
premise.
