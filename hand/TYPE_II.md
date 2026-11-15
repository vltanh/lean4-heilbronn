# Type II: an endpoint-triangle bound and four residual count classes

## Scope

Write

\[
 A_0=\frac{9\sqrt{65}-55}{320},\qquad
 k=3-2\sqrt2,\qquad
 \Gamma=\frac{11+3\sqrt5}{2}.
\]

This note proves a five-point triangle lemma, an additional area-preserving
normalization for Type II, and a complete exclusion of one resulting
occupancy class. It does **not** claim that Type II is closed. After allowing
the already defined Type-III family as a separate alternative, only four
Type-II count classes remain in this note.

All small-point bounds used below are proved in this hand-proof directory.
No numerical search or published triangle-container bound is a premise.

## 1. Five points in a triangle with two prescribed vertices

**Endpoint-triangle theorem.** Suppose five points lie in a triangle of
area S, and two vertices of the triangle are among the five points. Some
triangle spanned by the five points has area at most

\[
                         kS=(3-2\sqrt2)S.                 \tag{1}
\]

If their minimum triangle area is zero, the assertion is immediate. Assume
it is positive, so the five points are distinct and no three are collinear.

### Triangular hull

If the five-point hull is a triangle, its two other points are strictly
interior. The two-interior-point lemma in Section 7 of
[CORNER_FAMILIES.md](CORNER_FAMILIES.md) gives

\[
 t\le\frac{S}{4+2\sqrt3}<\frac S6<kS.
\]

Here \(\sqrt3>1\) gives the first strict comparison, while
\(\sqrt2<17/12\), checked by squaring, gives \(k>1/6\).

### Nontriangular hull and its support triangle

Use the support-triangle construction of Section 6 of
[CORNER_FAMILIES.md](CORNER_FAMILIES.md), with the two prescribed vertices
as the base endpoints. It encloses the five points in a triangle of area
\(S'\le S\), with one distinct actual point in the relative interior of
each of its other two legs. Distinctness follows from the nontriangular
hull; a contact at the apex would also force a collinear triple. This
construction needs no sixth point.

An affine map sends this support triangle to the half-square
\(0\le x\le y\le1\). The five points become

\[
 A=(0,0),\quad E=(1,1),\quad H=(0,h),\quad F=(f,1),
 \quad X=(x,x+w),\qquad 0<h,f<1.
\]

Let s be twice their minimum area after the affine map. Since the
half-square has area \(1/2\), the original minimum area is \(sS'\).
It therefore suffices to prove \(s\le k\).

Put \(\alpha=1-h\), \(\beta=1-f\), and define

\[
 L=fw-\beta x,\quad
 K=h(1-x)-w,\quad
 N=fw+(h-\beta)x-fh.
\]

The elementary determinant identities in Sections 1–2 of
[OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md) give

\[
\begin{gathered}
 w\ge s,\qquad hx\ge s,\qquad \beta(1-x-w)\ge s,\\
 |L|,|K|,|N|\ge s,\qquad hf\ge s,\qquad\alpha\beta\ge s,\\
 \sqrt{hf}+\sqrt{\alpha\beta}\le1,\\
 N=-fK-\alpha\beta x
   =\alpha L-hf(1-x-w).                                  \tag{2}
\end{gathered}
\]

The last two identities leave exactly five possible sign cells:

| Cell | L | K | N | Containments |
|---|---:|---:|---:|---|
| I | + | + | − | \(X\in AHF\cap AEH\) |
| II | − | + | − | \(X\in AEF\cap AEH\) |
| III | − | − | − | \(X\in EHF\cap AEF\) |
| IV | + | − | − | \(X\in AHF\cap EHF\) |
| V | + | − | + | X lies above HF |

All containments are strict. The reflection
\((x,y)\mapsto(1-y,1-x)\) swaps h with \(\beta\), swaps cells I and III,
and preserves cell II.

In cell I, subdivision of AHF gives \(hf\ge3s\), whereas
\(\alpha\beta\ge s\). Thus (2) gives

\[
 s\le\frac1{(\sqrt3+1)^2}=\frac1{4+2\sqrt3}<k.
\]

Cell III is the reflected case. In cell IV, both products are at least
\(3s\), giving \(s\le1/12<k\).

In cell V, the same elementary calculation as equation (8) of
`OPPOSITE_CORNERS.md` gives, with \(r=\sqrt{h\beta}\),

\[
 s\le\frac{h\beta(1-h)(1-\beta)}{h+\beta-h\beta}
 \le\frac{r(1-r)^2}{2-r}
 \le\frac{5\sqrt5-11}{2}<\frac1{10}<k.                    \tag{3}
\]

For completeness, the first inequality follows from
\(\alpha f\ge s+\alpha x+f(1-x-w)
\ge s(1+\alpha/h+f/\beta)\). The second follows from
\(h+\beta\ge2r\); the last scalar maximum occurs at
\(r=(3-\sqrt5)/2\), as differentiation verifies. The comparison
\((5\sqrt5-11)/2<1/10\) follows from \(\sqrt5<56/25\).

It remains to handle cell II. Reflect if necessary so that \(h\ge\beta\).
The inequalities \(L\le-s\) and \(w\ge s\) imply

\[
                         x\ge s\left(\frac2\beta-1\right).
\]

The inequality \(N\le-s\) consequently gives

\[
\begin{aligned}
 h(1-\beta)
 &\ge s+(1-\beta)w+(h-\beta)x\\
 &\ge s\left[2-\beta+(h-\beta)
                       \left(\frac2\beta-1\right)\right]\\
 &=sh\left(\frac2\beta-1\right).
\end{aligned}
\]

Dividing by the positive h yields

\[
 s\le\frac{\beta(1-\beta)}{2-\beta}\le k.                  \tag{4}
\]

The final inequality is the exact square identity

\[
 k(2-\beta)-\beta(1-\beta)
              =\bigl(\beta-(2-\sqrt2)\bigr)^2\ge0.
\]

The five cells are exhaustive, so (1) follows. \(\square\)

We will also use the following simpler four-point consequence.

**Four-point endpoint lemma.** Four points in a triangle of area S,
including two vertices, have minimum area at most \(S/3\). If their hull
is nontriangular, the stronger bound \(S/4\) holds.

In the triangular-hull case, the interior point partitions the hull into
three actual triangles. In the nontriangular case, use the same support
normalization, now with just A,E,H,F. If s is twice the normalized minimum
area, then \(hf,\alpha\beta\ge s\); (2) gives \(2\sqrt s\le1\),
so \(s\le1/4\). Scaling back proves both assertions.

## 2. A smaller-bottom-parameter normalization

The Type-II anchors are

\[
 D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad B=(b,0),
 \qquad 0<b<1,\quad0<\lambda<1,                            \tag{5}
\]

with five other points anywhere in the square. A boundary value
\(b=0\), \(b=1\), or \(\lambda=0\) gives three occupied corners and is
already a Type-III alternative. The value \(\lambda=1\) would repeat D.

**Shear normalization.** For the purpose of an upper bound, every positive
Type-II configuration can be replaced, without changing any triangle area,
by either a Type-III configuration or a Type-II configuration satisfying

\[
                              b\le\frac12.                \tag{6}
\]

If (6) already holds, there is nothing to do. Otherwise put

\[
 \tau=\min_{P=(x,y):\ y<1}\frac{1-x}{1-y}.
\]

This is a minimum over a nonempty finite set, and
\(0\le\tau\le1-b\) because B is included. The shear

\[
                  (x,y)\longmapsto(x+\tau(1-y),y)
\]

has determinant one, fixes D,C, keeps every point inside the square, and
creates a right contact below C. Reflect in the vertical midline. The
bottom point is now at

\[
                    b'=1-b-\tau\le1-b<\frac12,
\]

and the created contact is a left contact below D. If either is a bottom
corner, three corners are occupied, giving Type III. Otherwise they are
distinct actual contacts of the form (5), with \(0<b'<1/2\). Ties among
minimizers cause no problem: two distinct points on the new right side
below C would already be collinear with C, contrary to positive minimum
area. This proves the normalization.

This is a value-preserving reduction to another complete family. It does
not claim that the original b was at most one half.

## 3. Five possible occupancy classes

Assume henceforth that the minimum area t is at least \(A_0\), put
\(s=2t\), and use the normalization (6). In particular

\[
 s\ge2A_0>\frac7{64}>\frac1{10}.                           \tag{7}
\]

The strict comparison follows from
\(18^2\cdot65-145^2=35>0\).

The segments DB and BC partition the square into the three triangles

\[
\begin{aligned}
 T_L&=\operatorname{conv}\{D,B,(0,0)\},
       &\operatorname{area}(T_L)&=b/2,\\
 T_C&=\operatorname{conv}\{D,C,B\},
       &\operatorname{area}(T_C)&=1/2,\\
 T_R&=\operatorname{conv}\{B,C,(1,0)\},
       &\operatorname{area}(T_R)&=(1-b)/2.
\end{aligned}
\]

Let \(\ell,c,r\) count the six points other than D,C,B in these respective
triangles. Points on DB or BC would give zero-area triangles with their
endpoints, so the assignments are unambiguous. Points on the outside square
edges are counted in their corresponding side triangle. E belongs to
\(T_L\), so \(\ell\ge1\), and

\[
                            \ell+c+r=6.                   \tag{8}
\]

We have the following bounds.

* \(c\le3\): four points inside DCB would contradict the triangular-hull
  seven-point bound in Section 2 of `CORNER_FAMILIES.md`.
* \(\ell\le2\): three points in \(T_L\), together with D,B, would give
  \(s\le kb\le k/2<1/10\) by (1), contradicting (7).
  Here \(k<1/5\) follows from \(\sqrt2>7/5\).
* \(r\le3\): choose four right points together with B,C. If their hull is
  nontriangular, the support-triangle six-point theorem of Section 6 of
  `CORNER_FAMILIES.md`, scaled to \(T_R\), gives
  \(t\le7(1-b)/128<A_0\). If their hull is triangular, its area is at
  least \(\Gamma t\), so \(1-b\ge\Gamma s\). But triangle DBE gives
  \(b(1-\lambda)\ge s\), hence \(b\ge s\). This would imply
  \(1\ge(1+\Gamma)s\), impossible because \(\Gamma>17/2\) and
  \(s>7/64\).

Together with (8), these leave exactly five triples:

| Left count \(\ell\) | Central count c | Right count r |
|---:|---:|---:|
| 1 | 2 | 3 |
| 1 | 3 | 2 |
| 2 | 1 | 3 |
| 2 | 2 | 2 |
| 2 | 3 | 1 |

The next section excludes the third row.

## 4. Exclusion of the count class \((2,1,3)\)

Suppose this class occurs. Its left set consists of D,B,E and one further
point P, while its right set consists of B,C and three further points.
The endpoint lemmas give

\[
                    b\ge3s,\qquad 1-b\ge s/k.             \tag{9}
\]

The left four-point hull cannot be a quadrilateral. Otherwise the stronger
four-point bound gives \(b\ge4s\), and adding this to the second inequality
in (9) would give

\[
 1\ge s(4+1/k)=s(7+2\sqrt2)>
 \frac7{64}\frac{49}{5}>1,
\]

where \(\sqrt2>7/5\). Thus its hull is triangular. Both D and B are hull
vertices. Its third hull vertex must be E: E is on the line x=0, so a
triangle with vertices D,B,P and \(P_x>0\) could not contain E, while
\(P_x=0\) would make D,E,P collinear. Therefore P is inside DBE, and
subdivision yields

\[
                b(1-\lambda)\ge3s,\qquad
                \lambda\le1-\frac{3s}{b}.                 \tag{10}
\]

The right five-point hull cannot be triangular either. If it were,
its two interior points would give

\[
 1-b\ge(4+2\sqrt3)s.
\]

Together with \(b\ge3s\), this would imply
\(1\ge(7+2\sqrt3)s>10s>1\), since \(\sqrt3>3/2\) and (7).

Consequently the right set has a support triangle \(BCR'\), with apex
\(R'=(u,v)\) in \(T_R\), and distinct actual contacts on its two other
legs. Let Q be the contact on BR'. Its height satisfies \(0\le y_Q\le v\).
The endpoint-triangle theorem, applied in this support triangle, gives

\[
\begin{aligned}
 u-b-(1-b)v
  &=2\operatorname{area}(BCR')\ge s/k,\\
 v&\le1-\frac{s}{k(1-b)}.                                 \tag{11}
\end{aligned}
\]

The second line uses \(u\le1\). Moreover Q is in \(T_R\), so
\(b\le x_Q\le1\). The determinant of BEQ is positive in absolute value
and equals \(by_Q+\lambda(x_Q-b)\). Equations (10)–(11) therefore imply

\[
\begin{aligned}
 s&\le by_Q+\lambda(x_Q-b)\\
  &\le b\left(1-\frac{s}{k(1-b)}\right)
         +(1-b)\left(1-\frac{3s}{b}\right)\\
  &=1-s\left(\frac{b}{k(1-b)}+\frac{3(1-b)}b\right).
\end{aligned}
\]

By the arithmetic-geometric mean inequality,

\[
 s\le\frac1{1+2\sqrt{3/k}}<\frac7{64},                    \tag{12}
\]

contradicting (7). The strict comparison is exact: it is equivalent to
\(\sqrt{3/k}>57/14\); squaring reduces it to
\(9+6\sqrt2>3249/196\). Since \(\sqrt2>7/5\), the left side is
larger than \(87/5\), which is larger than \(3249/196\).

Every contact and support point used in this argument is either an actual
configuration point or an explicitly named enclosing-triangle apex; only
actual-point triangles are constrained below by t. In particular the
inequality for BEQ is legitimate, and the support apex need not belong to
the configuration.

## 5. Exact remaining scope

The complete Type-II value problem has been reduced to the Type-III
alternative and the following four continuous count classes, with
\(0<b\le1/2\):

| \((\ell,c,r)\) | Additional necessary parameter inequalities |
|---|---|
| \((1,2,3)\) | \(s\le b\le1-s/k\) |
| \((1,3,2)\) | \(s\le b\le1/2\) |
| \((2,2,2)\) | \(3s\le b\le1/2\) |
| \((2,3,1)\) | \(3s\le b\le1/2\) |

Here \(s=2t\ge2A_0\), E is counted among the left points, and the other
five points retain all their original freedom inside their assigned
triangles. These four rows are not claimed to have been excluded. The
normalization and the eliminated occupancy class are proved geometrically;
the table is a finite count reduction, not a numerical cover of the
remaining positions.
