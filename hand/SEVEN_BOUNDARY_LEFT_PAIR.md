# Complete left-pair exclusion with seven boundary contacts

## Scope

Use the seven-boundary normalization of
[SEVEN_BOUNDARY_CAPS.md](SEVEN_BOUNDARY_CAPS.md):

\[
\begin{gathered}
A=(0,a),\quad H=(0,h),\quad 0<a<h<1,\\
B=(b,0),\quad C=(c,0),\quad 0<b<c<1,\\
D=(1,d),\quad E=(1,e),\quad 0<d<e<1,\\
F=(f,1),\qquad b\le f\le c,\qquad f\le\tfrac12.
\end{gathered}                                             \tag{1}
\]

The two further points are \(P,Q\). Write
\([XYZ]=\det(Y-X,Z-X)\) for signed doubled area, and put

\[
s=\frac7{64},\qquad L=h-a,\quad M=c-b,\quad
R=e-d,\quad \alpha=\frac{s}{M}.
\]

**Theorem 1.** Suppose \(P\) occupies the sector at \(CF\), and
\(Q\) the sector at \(HB\), cut out by the diagonals of the
quadrilateral \(HBCF\). Suppose also that \(Q\) is above the
line \(AF\). Then some actual triangle has area strictly less than
\(7/128\).

Theorem 2 at the end combines this with the cap exclusions to close the
entire placement in which both free points lie in the left pentagon
\(A,B,C,F,H\). No numerical optimization is an input to either theorem.

Assume for a contradiction that every unsigned doubled triangle area
is at least \(s\). All incidences with actual dividing lines are then
strict. The stated sectors put

\[
Q\in HBC\cap AHF,\qquad P\in HCF\cap BCF.                 \tag{2}
\]

For \(Q\in AHF\), the only additional observation is that the
sector at \(HB\) lies below \(HF\); being above \(AF\) then
puts \(Q\) inside \(AHF\).

## 1. Four areas at \(Q\) give a coupled inequality

Write \(Q=(x,y)\). The four positive actual areas
\([AFQ],[ABQ],[HBQ],[QCH]\) are at least \(s\). The sign of
\([ABQ]\) follows because the whole triangle \(AHF\) is above
\(AB\). Explicitly,

\[
\begin{aligned}
[AFQ]&=f(y-a)-(1-a)x,\\
[ABQ]&=b(y-a)+ax,\\
[HBQ]&=hx+by-bh,\\
[QCH]&=ch-hx-cy.
\end{aligned}
\]

Adding the last two gives

\[
y\le Y:=h-2\alpha.
\]

Let \(T=Y-a\). Since \(Q\) is above \(AF\), one has
\(y>a\), so \(T>0\). The weighted sums

\[
\begin{aligned}
a[AFQ]+(1-a)[ABQ]&=[b(1-a)+af](y-a),\\
h[AFQ]+(1-a)[HBQ]
&=[hf+(1-a)b]y-hfa-bh(1-a)
\end{aligned}
\]

and the upper bound on \(y\) yield

\[
[b(1-a)+af]T\ge s,                                      \tag{3}
\]

\[
hfT-2\alpha b(1-a)\ge s(h+1-a).                         \tag{4}
\]

Equation (3) gives \(b(1-a)\ge s/T-af\). Substitute this lower
bound into (4), multiply by \(T\), and use

\[
hT+2\alpha a=(h-a)Y,\qquad
(h+1-a)T+2\alpha=(h-a)(1+T).
\]

After canceling \(h-a>0\), the result is

\[
\boxed{T(fY-s)\ge s.}                                  \tag{5}
\]

Both factors on the left are positive. In particular, because
\(a\ge\alpha\) and \(f\le1/2\),

\[
\boxed{(h-3\alpha)\left(\frac{h-2\alpha}{2}-s\right)
\ge s.}                                                  \tag{6}
\]

## 2. Exact coarse bounds for the boundary contacts

We prove the following rational bounds. Their deliberately coarse
endpoints will suffice to exclude both signs of \([HDP]\):

\[
\begin{gathered}
\frac{33}{200}<\alpha<\frac{17}{100},\qquad
h>\frac{99}{100},\qquad f>\frac{97}{200},\qquad
a<\frac3{16},\\
e<\frac{633}{800},\qquad
\frac4{25}<b<\frac3{16},\qquad
\frac45<c<\frac{53}{64},\qquad
d<\frac{391}{1600}.                                      \tag{7}
\end{gathered}
\]

The boundary triangles give

\[
bL\ge s,\quad aM\ge s,\quad dM\ge s,\quad
(1-c)R\ge s,
\quad (1-f)h+fe\le1-s.                                  \tag{8}
\]

In particular \(a,d\ge\alpha\), \(b\ge s\), and
\(1-c\ge s\). Consequently

\[
\alpha\ge\frac{s}{1-2s}=\frac7{50}.
\]

### 2.1. First bounds on \(\alpha\) and the two upper contacts

Equation (6) implies \(\alpha<1/3\). Increasing \(h\) to one
in that inequality gives

\[
192\alpha^2-139\alpha+18\ge0.
\]

The polynomial decreases for \(0<\alpha<1/3\), and its value at
\(17/100\) is \(-203/2500\). Hence
\(\alpha<17/100\).

Also \(h>1-s\). Otherwise (6), \(\alpha\ge7/50\), and
the positivity of its two factors would give

\[
s\le\left(1-s-\frac{21}{50}\right)
       \left(\frac{1-s-7/25}{2}-s\right)
=s-\frac{87869}{5120000}<s.
\]

The top budget in (8) now forces \(e<h\), and because \(f\le1/2\)
it gives

\[
h+e\le2(1-s).                                           \tag{9}
\]

### 2.2. A scalar height replacement forces \(\alpha>33/200\)

Put \(A_*=1-2s=25/32\). From \(e\ge\alpha+s/(1-c)\)
and (9),

\[
b\le1-\frac{s}{\alpha}
       -\frac{s}{2(1-s)-h-\alpha}.
\]

Use this in (3), and increase \(f\) to \(1/2\). For a scalar
variable \(t\in[h,1]\), define

\[
\begin{aligned}
D_t&=2(1-s)-t-\alpha,\qquad T_t=t-a-2\alpha,\\
B_t&=1-\frac{s}{\alpha}-\frac{s}{D_t},\\
\Psi(t)&=(1-a)B_t+\frac a2-\frac{s}{T_t}.
\end{aligned}
\]

All denominators are positive on this interval. Indeed \(T_t\ge T>0\),
and

\[
D_t-T_t=2(1-s-t)+a+\alpha
\ge a+\alpha-2s>0,
\]

because \(a\ge\alpha>s\). We have \(\Psi(h)\ge0\), and

\[
\Psi'(t)=\frac{s}{T_t^2}-\frac{s(1-a)}{D_t^2}>0.
\]

Thus \(\Psi(1)\ge0\). Write

\[
B_1(\alpha)=1-\frac{s}{\alpha}-\frac{s}{A_*-\alpha}.
\]

First, \(\alpha>5/32\). On the range \(7/50\le\alpha\le5/32\),
the function \(B_1\) increases, and \(B_1(5/32)=1/8\).
Therefore \(\Psi(1)\ge0\) would imply

\[
\begin{aligned}
s&\le\left[(1-a)B_1+\frac a2\right](1-a-2\alpha)\\
 &\le\frac{1+3a}{8}\left(\frac{18}{25}-a\right)\\
 &=\frac{6241}{60000}-\frac38\left(a-\frac{29}{150}\right)^2
 <s,
\end{aligned}
\]

a contradiction.

For \(\alpha>5/32\), \(B_1\ge1/8\), and

\[
\frac{\partial}{\partial a}\Psi(1)
=\frac12-B_1-\frac{s}{(1-a-2\alpha)^2}
<\frac38-\frac{112}{289}=-\frac{29}{2312}<0.
\]

Thus decreasing \(a\) to \(\alpha\) gives the necessary condition

\[
\psi(\alpha):=(1-\alpha)B_1(\alpha)+\frac\alpha2
                    -\frac{s}{1-3\alpha}\ge0.             \tag{10}
\]

The function \(\psi\) increases on \([5/32,1/6]\).
To check this with rational bounds, note that
\(B_1\le B_1(1/6)=313/1888<1/2\), and

\[
B_1'(\alpha)
\ge36s-\frac{s}{(25/32-1/6)^2}
=\frac{63}{16}-\frac{1008}{3481}>\frac72.
\]

Consequently

\[
\psi'(\alpha)
=\frac12-B_1+(1-\alpha)B_1'
       -\frac{3s}{(1-3\alpha)^2}
>\frac56\frac72-12s=\frac{77}{48}>0.
\]

But direct rational evaluation gives

\[
\psi(33/200)=-\frac{2071033}{2629070400}<0.
\]

Since \(33/200<1/6\), (10) proves \(\alpha>33/200\).

### 2.3. The remaining bounds in the box

If \(h\le99/100\), (6) and \(\alpha>33/200\) would give

\[
s\le\left(\frac{99}{100}-\frac{99}{200}\right)
       \left(\frac{99/100-33/100}{2}-s\right)
=s-\frac{53}{320000}<s.
\]

Thus \(h>99/100\). We also have
\(Y<67/100\), \(T<101/200\). If \(f\le97/200\), then (5)
would give

\[
s\le\frac{101}{200}
       \left(\frac{97}{200}\frac{67}{100}-s\right)
=s-\frac{4077}{8000000}<s.
\]

Similarly, if \(a\ge3/16\), then \(T<193/400\), and (5)
would give

\[
s\le\frac{193}{400}\left(\frac{67}{200}-s\right)
=s-\frac{327}{640000}<s.
\]

These prove the stated bounds on \(f,a\). Equation (9) gives
\(e<57/32-99/100=633/800\). If \(c\ge53/64\), then
\(R\ge7/11\) by (8), and

\[
e=d+R>\frac{33}{200}+\frac7{11}
=\frac{633}{800}+\frac{89}{8800},
\]

a contradiction. Thus \(c<53/64\).

If \(b\le4/25\), equation (3) instead gives

\[
s\le\left[\frac4{25}(1-a)+\frac a2\right]
       \left(\frac{67}{100}-a\right).
\]

This quadratic decreases for \(a\ge33/200\). Its value at
\(33/200\) is \(s-489/2000000\), a contradiction. Hence
\(b>4/25\).

Finally \(\alpha<17/100\) gives \(M>175/272\), so

\[
c=b+M>\frac4{25}+\frac{175}{272}>\frac45,
\qquad
b=c-M<\frac{53}{64}-\frac{175}{272}<\frac3{16}.
\]

Since \(1-c<1/5\), equation (8) gives \(R>5s\), and therefore
\(d=e-R<633/800-5s=391/1600\). This completes the proof of (7).

## 3. The point \(P\) must be above \(AE\)

We first use only \(P\in HCF\), without choosing a sign relative
to \(HD\). Define the affine function

\[
\eta(X)=[AEX],\qquad
J_E=[ACE]=ce+(1-c)a,\qquad U=[AEF].
\]

At the vertices \(H,C,F\), its values are \(L,-J_E,U\).
The barycentric weights of \(P\) at \(H,F\) are at least
\(s/Z\), where

\[
Z=[HCF]=f+(c-f)(1-h).
\]

The rational box gives

\[
\begin{gathered}
Z<\frac12+\frac{53/64-97/200}{100}
=\frac{80549}{160000}<\frac{63}{125},\\
L>\frac{321}{400},\qquad
U=1-a-f(e-a)\ge1-\frac{a+e}{2}>\frac{817}{1600},\\
J_E<\frac{35199}{51200}.
\end{gathered}                                             \tag{11}
\]

Here \(e>a\), since \(e\ge\alpha+R>33/200+5s>3/16>a\).
Thus all monotone replacements used for \(U,J_E\) have the indicated
directions.

Both \(L,U\) exceed \(-J_E\). Barycentricity consequently gives

\[
\eta(P)\ge-J_E+\frac{s}{Z}(L+U+2J_E).
\]

Set \(k_0=s/(63/125)=875/4032<1/2\). The last expression increases
with \(s/Z\). After replacing that ratio by \(k_0\), its coefficient
of \(J_E\) is negative. The bounds (11) therefore yield

\[
\begin{aligned}
\eta(P)
&>k_0\frac{2101}{1600}
 -(1-2k_0)\frac{35199}{51200}\\
&=-\frac{1535437}{14745600}
=-s+\frac{77363}{14745600}>-s.
\end{aligned}
\]

Since the actual triangle \(AEP\) has unsigned doubled area at least
\(s\), its only remaining sign is

\[
\boxed{[AEP]\ge s.}                                     \tag{12}
\]

## 4. The positive sign of \([HDP]\) is impossible

Suppose \([HDP]>0\). The point \(P\) is inside \(BCF\).
For the affine function \(X\mapsto[HDX]\), the value at \(F\)
is

\[
U_D=1-h+(h-d)f>0,
\]

and the values at \(B,C\) are
\(-[(1-b)h+bd]\) and \(-[(1-c)h+cd]\), both negative.
The weights at \(B,C\) in \(BCF\) are at least \(s/M=\alpha\).
It follows that

\[
[HDP]\le U_D-\alpha\{2+(h-d)(2f-b-c)\}.                  \tag{13}
\]

The box (7) gives

\[
U_D\le1-\frac{h+d}{2}<\frac{169}{400}.
\]

Also \(0<h-d<1\), \(b+c<65/64\), and \(2f>97/100\).
Thus \(2f-b-c>-73/1600>-3/64\), and

\[
2+(h-d)(2f-b-c)>\frac{125}{64}.
\]

Equation (13) consequently gives

\[
[HDP]<\frac{169}{400}-\frac{33}{200}\frac{125}{64}
=\frac{1283}{12800}
=s-\frac{117}{12800}<s,
\]

a contradiction. Collinearity is also impossible, so necessarily
\([HDP]\le-s\).

## 5. The negative sign of \([HDP]\) is impossible as well

The point \(P\) is above \(HC\) and now below \(HD\).
It also has \(P_x<c\), because its sector is the triangle with
vertices \(C,F,HC\cap BF\), whose other two vertices have first
coordinate less than \(c\). Hence it is on the \(H\)-side of
\(CD\). These three strict edge tests put \(P\) inside \(HCD\).
Write

\[
J=[HCD]=(1-c)h+cd\ge3s.
\]

For the function \(\eta(X)=[AEX]\) of Section 3, the values at
\(H,C,D\) are \(L,-J_E,-R\). The weights at \(C,D\) are at
least \(s/J\). Together with (12), this gives the necessary inequality

\[
0\le JL-s(J+2L+J_E+R).                                  \tag{14}
\]

The box (7) supplies the bounds

\[
\begin{gathered}
J\le1-c(1-d)<1-\frac45\left(1-\frac{391}{1600}\right)
=\frac{791}{2000}=:J_0,\\
L<1-\frac{33}{200}=\frac{167}{200}=:L_0,\\
J_E+R=(1-c)a+cd+(c+1)R
\ge\alpha+(c+1)R
>\frac{33}{200}+9s=:T_0.
\end{gathered}                                             \tag{15}
\]

Since \(J\ge3s\) and \(L\ge6s\) (the latter follows from
\(Q\in AHF\) and \(f\le1/2\)), the expression in (14)
increases with \(J,L\) and decreases with \(J_E+R\).
Substitution of (15) gives

\[
\begin{aligned}
JL-s(J+2L+J_E+R)
&<J_0L_0-s(J_0+2L_0+T_0)\\
&=-\frac{273721}{12800000}<0,
\end{aligned}
\]

contradicting (14). Both signs of \([HDP]\) have now been excluded,
proving Theorem 1. \(\square\)

## 6. The complete smaller-left pair class is closed

**Theorem 2.** Under the seven-boundary normalization (1), the left
pentagon \(A,B,C,F,H\) cannot contain both free points at minimum
area at least \(7/128\).

**Proof.** The cap theorems in
[SEVEN_BOUNDARY_CAPS.md](SEVEN_BOUNDARY_CAPS.md) remove both lower
ears \(ABH\) and \(ABC\). Both free points therefore lie in
\(HBCF\cap ACFH\). The same note proves that they lie on opposite
sides of each diagonal of \(HBCF\), so they occupy one of the two
pairs of opposite sectors.

Its Theorem 6 and Corollary 7 exclude the pair at \(BC,FH\).
In the other pair, label the points \(P\) at \(CF\), \(Q\)
at \(HB\). Its strict area bound for \(ACF\) forces \(Q\)
above \(AF\): the sector at \(CF\) is contained in \(ACF\),
so a second point below \(AF\) would contradict that triangle's
capacity one. Theorem 1 of the present note excludes the remaining
assignment. \(\square\)

The conclusion treats this entire smaller-left placement class. It does
not infer an exclusion of the mixed or right-hand placements of the two
free points, or of configurations with a free point outside the boundary
heptagon.

## Verification

[check_seven_boundary_left_pair.py](check_seven_boundary_left_pair.py)
checks the determinant identities, the elimination leading to (5), the
scalar derivative and endpoint calculations, all rational box bounds,
and both final signed-area contradictions. The geometric containments
and the exhaustive use of the two signs of \([HDP]\) are proved above.
