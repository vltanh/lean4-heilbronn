# Completion of all four exterior adjacent-cap words

Continue the sharp octagon labels of
[SEVEN_BOUNDARY_ADJACENT_CAPS.md](SEVEN_BOUNDARY_ADJACENT_CAPS.md).
Put

\[
s=7/64,\qquad L=h-a,\quad B=c-b,\quad R=e-d,\quad T=f-g.
\]

All side orders are strict. The interior point \(O=(x,y)\) is
outside the four side quadrilaterals and inside both actual triangles
\(BDE,DEG\). Consequently \(d<y<e\), including when D moves
horizontally as below. Every actual unsigned doubled area is at least s.

**Theorem 1.** Each of the following two coordinate families is
impossible:

1. H moves horizontally: \(H=(t,h)\), while the other seven vertices
   have their usual side coordinates, with \(0\le t\le b\) and
   \(a\le1/2\).
2. D moves horizontally: \(D=(1-t,d)\), while the other seven vertices
   have their usual side coordinates, with \(t\ge0\) and \(e\ge1/2\).

Here the cyclic hull order is \(A,B,C,D,E,F,G,H\).
There is no assumption of small displacement.

## 1. A bound using the sum of the two horizontal gaps

Both proofs below give, with \(u=s/L\),

\[
R+\frac{s}{B}+\frac{s}{T}\le1,\qquad
B+T\le2K_0,\quad K_0=1-u-s/R.                         \tag{1}
\]

Since \(B,T>0\), one has \(K_0>0\). The harmonic-mean inequality
and \(L<1\) imply

\[
2s\le(1-R)K_0\le(1-R)(1-s-s/R).
\]

For \(R\ge5/7\), the expression on the far right decreases:
its derivative is \(-(1-s)+s/R^2<0\). Its value at \(5/7\)
minus \(2s\) is \(-9/1120\). Thus

\[
\boxed{R<5/7.}                                        \tag{2}
\]

The final numerical contradiction in both cases will be

\[
s\left(2+\frac4R+\frac1{R^2}\right)
>s\frac{239}{25}=\frac{1673}{1600}>1.                 \tag{3}
\]

## 2. H moves inward

The four unchanged bottom and top costs give

\[
a,d\ge s/B,\qquad h,e\le1-s/T.
\]

In particular the first inequality in (1) holds. The right-side costs
also give \(c,f\le1-s/R\). The two left-side costs now read

\[
[ABH]=bL+at\ge s,\qquad [AGH]=gL-(1-a)t\ge s.
\]

Consequently

\[
b+g\ge2u+\frac{(1-2a)t}{L}\ge2u,
\]

where the last sign uses \(a\le1/2\). Therefore

\[
B+T=c+f-b-g\le2(1-u-s/R),
\]

proving the rest of (1) and hence (2).

There is also a useful separate bound on each left horizontal
coordinate. Since \(t\le b\),

\[
s\le bL+at\le bh\le b,\qquad g\ge u>s.
\]

Thus \(b,g\ge s\). The two internal costs BOE and DOG are
unchanged. Their sum, using \(d<y<e\), gives

\[
(1+R)x\ge1+b(e-y)+g(y-d)+2s\ge1+sR+2s.                \tag{4}
\]

The inner side test for the unchanged segment CF is

\[
x\le c(1-y)+fy-s\le1-s/R-s.                           \tag{5}
\]

Substituting (5) into (4) and dividing by \(R>0\) yields

\[
1\ge s\left(2+\frac4R+\frac1{R^2}\right),
\]

contrary to (3). This closes the entire H-moving family.

## 3. D moves inward

The unchanged left, bottom, and top costs give

\[
b,g\ge u,\quad a,d\ge s/B,\quad e,h\le1-s/T.
\]

In particular the first inequality in (1) holds. The two right-side
costs are now

\[
[CDE]=(1-c)R-et\ge s,\qquad
[DEF]=(1-f)R+(1-e)t\ge s.
\]

Adding their upper bounds for c and f, and using \(e\ge1/2\),
gives

\[
B+T\le2(1-u-s/R)+\frac{(1-2e)t}{R}
\le2(1-u-s/R).
\]

Thus (1)--(2) hold again.

Put \(X=1-x\) and \(z=e-y>0\). The inner CF side test,
with the two preceding bounds for c and f, gives

\[
X\ge s(1+1/R)+\frac{tz}{R}.                           \tag{6}
\]

The actual BOE cost is

\[
(1-b)z-eX\ge s.
\]

Using \(b\ge u>s\), (6), and \(e>R\), we get

\[
(1-u)z\ge s+eX\ge s\{1+e(1+1/R)\}>s(2+R).           \tag{7}
\]

The displacement coefficient has a fixed favorable sign:

\[
\boxed{z/R>1-e.}                                      \tag{8}
\]

Indeed

\[
s(2+R)-(1-s)R(1-R)
=(1-s)R^2+(2s-1)R+2s>0,
\]

because this quadratic has positive leading coefficient and
negative discriminant \(-173/1024\). Since \(e>R\) and
\(u>s\), (7) implies
\((1-u)z>(1-u)R(1-e)\), proving (8).

The other internal area changes by a known amount:

\[
[DOG]=(1-g)(y-d)-(1-d)(1-x)+t(1-y)\ge s.
\]

Add it to BOE and use \(b,g\ge u\). In the new variables this is

\[
(1+R)X\le(1-u)R-2s+t(1-e+z).
\]

Combining with (6) gives

\[
R\ge uR+2s+s(1+R)(1+1/R)
       +t\{z/R-(1-e)\}.
\]

By (8), the last term is nonnegative. After division by R,

\[
1\ge s\left(1+\frac4R+\frac1{R^2}+\frac1L\right)
>s\left(2+\frac4R+\frac1{R^2}\right)>1,
\]

where \(L<1\) and (3) give the last comparisons. This proves
Theorem 1. \(\square\)

## 4. All four exterior R1 words are closed

Return to the original seven-boundary octagon

\[
A,B,C,D,E,X,F,H,
\]

where \(X=(g,k)\) is in the far upper cap, \(k>h,e\), and
\(b\le f\le c,\ f\le1/2\). The finite word cover is proved
in [SEVEN_BOUNDARY_TOP_CAP_RADIAL.md](SEVEN_BOUNDARY_TOP_CAP_RADIAL.md).

The preceding adjacent-cap note closes the two R1 words centered on
the right and left paired contacts. Theorem 1 closes the other two:

| Original word | Square map | Moved sharp vertex | Required bound |
|---|---|---|---|
| \((3,2,5,4,5,4,3,2)\) | \((x,y)\mapsto(1-y,x)\) | \(H'=(1-k,g)\) | \(a'=f\le1/2\), \(t=1-k<b'=1-h\) |
| \((5,4,3,2,3,2,5,4)\) | \((x,y)\mapsto(y,1-x)\) | \(D'=(k,1-g)\) | \(e'=1-f\ge1/2\) |

The new cyclic labels are, respectively, old labels \(V_{i+6}\)
and \(V_{i+2}\), with indices modulo eight. Each word becomes
\((3,2,3,2,5,4,5,4)\), so the two required containments are
exactly \(B'D'E'\) and \(D'E'G'\). Square rotations preserve
all triangle areas. Thus all four R1 words are excluded below
ordinary area \(7/128<A_0\).

The diagnostic
[check_seven_boundary_adjacent_caps_completion.py](check_seven_boundary_adjacent_caps_completion.py)
checks the changed determinant formulas, the scalar comparisons,
the displacement sign, and both word transformations.
