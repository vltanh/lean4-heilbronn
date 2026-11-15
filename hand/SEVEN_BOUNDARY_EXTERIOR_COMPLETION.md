# Completion of the seven-boundary exterior case

Use the seven anchors and the far exterior point

\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\
D=(1,d),\ E=(1,e),\ F=(f,1),\ X=(g,k),
\]

with the normalization of
[SEVEN_BOUNDARY_TOP_CAP_RADIAL.md](SEVEN_BOUNDARY_TOP_CAP_RADIAL.md).
The companion point is \(P=(x,y)\). In a competitive configuration,
the preceding exterior-cap and side-quadrilateral theorems give

\[
b\le f\le c,\quad f\le1/2,\quad b>3/20,\quad
f<g<1,\quad k>e,h,
\]

and the hull is the convex octagon \(A,B,C,D,E,X,F,H\).
The point P is inside the original heptagon and outside all four
side quadrilaterals \(ABCD,CDEX,EXFH,FHAB\).

**Theorem 1.** Every configuration in the entire seven-boundary
exterior case has minimum ordinary triangle area at most
\(A_0=(9\sqrt{65}-55)/320\). Equality forces \(k=1\) and the
known eight-boundary configuration, up to square symmetry and relabeling.
Every non-R3 radial word has the stronger bound strictly below \(7/128\).

The four R3 words, with their equality cases, were proved in
[SEVEN_BOUNDARY_TOP_CAP_RADIAL.md](SEVEN_BOUNDARY_TOP_CAP_RADIAL.md).
All four R1 words were excluded in
[SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md](SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md)
and its preceding note. This note closes the other 28 words by fixed
rational cubic inequalities. Their complete positive integer coefficients
are supplied in
[seven_boundary_exterior_certificates.json](seven_boundary_exterior_certificates.json).
The proof of their applicability, their interpretation as nonnegative
expressions, and the finite word coverage are given below.

## 1. Common bounds for every remaining exterior word

Assume every actual unsigned doubled area is at least
\(s=7/64\). Put

\[
L=h-a,\quad B_0=c-b,\quad R=e-d,\quad T=g-f,\quad u=s/L.
\]

The actual triangles ABH, AFH, CDE, DEX give

\[
b,f\ge u,\qquad c,g\le1-s/R.
\]

Thus both \(B_0,T\le K_0:=1-u-s/R\). In particular \(K_0>0\).
The lower BCD cost and the upper EFX cost give

\[
d\ge s/B_0,\qquad
s\le T(1-e)-(1-f)(1-k)\le T(1-e).
\]

Consequently

\[
R+s/B_0+s/T\le1,\qquad
2s\le(1-R)K_0\le(1-R)(1-s-s/R).                       \tag{1}
\]

The last expression decreases for \(R\ge5/7\), since its derivative
is \(-(1-s)+s/R^2<0\). At \(5/7\), its value minus \(2s\)
is \(-9/1120\). Therefore

\[
R<5/7,\qquad c,g<271/320<17/20.                       \tag{2}
\]

Since \(b>3/20\) and \(f\ge b\), (2) gives
\(B_0,T<7/10\). The ABC, BCD and EFX costs then imply

\[
a,d>5/32,\qquad e<27/32.                              \tag{3}
\]

The other upper cost is

\[
s\le |[HFX]|=g(1-h)-f(k-h)<g(1-h).
\]

Using \(k>h\) and (2), we get

\[
h<1-\frac{s}{17/20}=\frac{237}{272}<7/8.               \tag{4}
\]

Equations (3)--(4) imply \(R<11/16\), hence

\[
c,g<1-\frac{s}{11/16}=37/44<27/32,\qquad
L<23/32,\quad b>7/46.                                 \tag{5}
\]

The lower anchor costs and the two-term Cauchy inequality give

\[
h\ge\frac{s}{c-b}+\frac{s}{b}\ge\frac{4s}{c}
>\frac{14}{27}>\frac{33}{64},
\]

\[
e\ge\frac{s}{c-b}+\frac{s}{1-c}
\ge\frac{4s}{1-b}
>\frac{161}{312}>\frac{33}{64}.                        \tag{6}
\]

The EFX cost can be written in two useful ways:

\[
s\le T(1-e)-(1-f)(1-k)\le T(1-e),
\]

\[
s\le(1-f)(k-e)-(1-g)(1-e)\le(1-f)(k-e).
\]

Together with (6) and \(f\ge b>3/20\), these give

\[
g-f>7/31>9/40,\qquad k-e>35/272>1/8.                  \tag{7}
\]

### Bounds for the interior point

The four excluded side quadrilaterals fix the following actual signs:

\[
\begin{aligned}
y-a-(d-a)x&\ge s,\\
h+(e-h)x-y&\ge s,\\
x-b-(f-b)y&\ge s,\\
k(c-x)+(g-c)y&\ge s.
\end{aligned}                                         \tag{8}
\]

These are the AD, HE, BF and CX side tests, respectively.
From the first two, (3)--(4), and \(k>h,e\), we obtain

\[
17/64<y<49/64,\qquad k-y>s.                            \tag{9}
\]

The BF test gives \(x-b\ge s\). Since \(0<y<k\), the
CX test is a positive convex combination of c and g:

\[
x\le c(1-y/k)+g(y/k)-s/k
<27/32-s=47/64<3/4.                                   \tag{10}
\]

All these bounds are independent of the remaining radial word.

## 2. The nonnegative factors and all signed area costs

Use the variable order

\[
z=(a,h,b,c,d,e,f,g,k,x,y)\in[0,1]^{11}.
\]

The following 23 affine factors are nonnegative by the side orders,
normalization and Section 1. Their zero-based indices are part of the
explicit coefficient format.

| Index | Factor | Index | Factor |
|---|---|---|---|
| 0 | \(a-5/32\) | 12 | \(27/32-g\) |
| 1 | \(h-a\) | 13 | \(1/2-f\) |
| 2 | \(k-h\) | 14 | \(x-b-7/64\) |
| 3 | \(1-k\) | 15 | \(3/4-x\) |
| 4 | \(d-5/32\) | 16 | \(y-17/64\) |
| 5 | \(e-d\) | 17 | \(49/64-y\) |
| 6 | \(k-e-1/8\) | 18 | \(7/8-h\) |
| 7 | \(b-3/20\) | 19 | \(27/32-e\) |
| 8 | \(f-b\) | 20 | \(h-33/64\) |
| 9 | \(c-f\) | 21 | \(e-33/64\) |
| 10 | \(27/32-c\) | 22 | \(k-y-7/64\) |
| 11 | \(g-f-9/40\) | | |

Write these factors as \(l_0,\ldots,l_{22}\).
Label the actual vertices

\[
(V_0,\ldots,V_8)=(A,B,C,D,E,X,F,H,P).
\]

List the 84 triples \((i,j,k)\), \(0\le i<j<k\le8\), in
lexicographic order, starting with \((0,1,2)\) at index zero.
For radial word \(r=(r_0,\ldots,r_7)\), define

\[
q_{ijk}(z)=\epsilon_{ijk}[V_iV_jV_k]-s,
\quad
\epsilon_{ijk}=
\begin{cases}
1,&k<8,\\
1,&k=8\text{ and }j-i\le r_i,\\
-1,&k=8\text{ and }j-i>r_i.
\end{cases}                                          \tag{11}
\]

Convexity of the hull fixes all the first signs. The definition of the
radial word fixes the signs of triangles containing P. Thus every
\(q_{ijk}\) is nonnegative. It is a polynomial of degree at most two.

## 3. A fixed rational cubic contradiction for each word

The following elementary polynomial observation explains every
certificate. A positive combination of expressions of the forms

\[
l_i,\quad l_i l_j,\quad l_i l_j l_k,\quad
q_{ijk},\quad q_{ijk}l_m                              \tag{12}
\]

is nonnegative under the preceding hypotheses. On the other hand, if
its expansion is \(C(z)=\sum_\alpha c_\alpha z^\alpha\), then
on the unit cube

\[
C(z)\le c_0+\sum_{\alpha\ne0}\max(c_\alpha,0),         \tag{13}
\]

because every nonconstant monomial lies between zero and one.
A negative right side proves a contradiction.

The supplied coefficient file gives one expression \(C_r\) for each
of the 28 words left after R1 and R3. Every coefficient multiplying a
term of (12) is a positive integer divided by **4096**. The entire
finite integer list is part of the certificate; no coefficient must be
inferred from an optimization run.

The format of each term is as follows:

- `["f", [i,j,...], w]` contributes \((w/4096)l_i l_j\cdots\),
  with one, two or three listed factors.
- `["q", t, m, w]` contributes \((w/4096)q_t l_m\). When
  \(m=-1\), it contributes \((w/4096)q_t\) instead.
  Here t is the zero-based lexicographic triple index from (11).

Each certificate stores its complete radial word and its two block
indices in the six-block catalogue. The exact rational expansion of
every one satisfies

\[
\boxed{c_0+\sum_{\alpha\ne0}\max(c_\alpha,0)\le-3/4.} \tag{14}
\]

Here is the complete finite list. The block notation is exactly that
of Section 2 of [RADIAL_CATALOGUE.md](RADIAL_CATALOGUE.md).

| Blocks | Positive terms | Blocks | Positive terms |
|---|---:|---|---:|
| (1,2) | 143 | (4,2) | 112 |
| (1,4) | 51 | (4,3) | 177 |
| (1,5) | 98 | (4,4) | 127 |
| (2,1) | 148 | (4,5) | 176 |
| (2,2) | 186 | (4,6) | 154 |
| (2,3) | 155 | (5,1) | 121 |
| (2,4) | 132 | (5,2) | 197 |
| (2,5) | 173 | (5,3) | 196 |
| (2,6) | 190 | (5,4) | 192 |
| (3,1) | 68 | (5,5) | 208 |
| (3,2) | 163 | (5,6) | 79 |
| (3,3) | 135 | (6,2) | 202 |
| (3,4) | 57 | (6,3) | 139 |
| (3,5) | 182 | (6,5) | 152 |

There are **4,113 positive terms** in total. The largest right side
in (13), computed as an exact rational number, is

\[
-\frac{2655020453}{2684354560}<-\frac34.
\]

Every row is therefore impossible: (12) gives \(C_r\ge0\), while
(13)--(14) give \(C_r\le-3/4\).

These are fixed algebraic identities on the entire continuous parameter
family. There is no spatial subdivision, sampled configuration, floating
comparison, or numerical optimizer in the verification of (14).

## 4. Exhaustive assembly and equality

The geometric argument in
[SEVEN_BOUNDARY_TOP_CAP_RADIAL.md](SEVEN_BOUNDARY_TOP_CAP_RADIAL.md)
proves that every exterior configuration has one of exactly 36 radial
words. Its argument uses the convex octagon and the four excluded side
quadrilaterals, and so remains valid when X is off the square boundary.

The four R1 words are excluded by the adjacent-cap completion theorem.
The 28 words listed above are exactly the complement of the R1 and R3
orbits in that 36-word catalogue, and have just been excluded. The four
R3 words obey the sharp theorem, including its equality classification.
The disjoint counts are \(4+28+4=36\), so no exterior orientation
remains.

Consequently every exterior configuration has minimum area at most
\(A_0\). If equality holds, it must occur in R3. The R3 theorem forces
\(k=1\) and the original eight-boundary extremizer. This proves
Theorem 1. \(\square\)

## Verification

Run

```sh
python hand/check_seven_boundary_exterior_certificates.py
```

The verifier uses only Python's standard library and exact fractions.
It reads the supplied integers, independently expands every polynomial,
checks positivity of the term weights and the complete 28-word coverage,
and recomputes the bound (13). The explicit scope and geometric
reductions are proved in Sections 1--2; the verifier does not assume or
attempt a numerical geometric search. The earlier R1 and R3 diagnostics
verify the two cited completed classes separately.
