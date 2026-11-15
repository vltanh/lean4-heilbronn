# Type II: an endpoint-triangle bound and two residual count classes

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
the already defined Type-III family as a separate alternative, only two
Type-II count classes remain in this note; Section 7 additionally excludes
every configuration with three central points.

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


## 6. A further local exclusion useful in the central-triple cases

This section proves an additional six-point exclusion. It does not yet
classify all orientations in the four residual count classes of Section 5.

**Two-point chamber lemma.** In the notation (5), assume \(b\le1/2\).
Suppose two further points P,Q lie strictly inside both DCB and DCE, and
satisfy the oriented-area signs

\[
             [BPQ]>0,\qquad [EPQ]<0,                       \tag{13}
\]

where brackets denote signed ordinary area. Then some triangle determined
by D,C,B,E,P,Q has area less than \(7/128\).

Assume the contrary and set \(\sigma=7/64\), so every absolute doubled
area is at least \(\sigma\). Put

\[
 z=1-\lambda,\quad a=bz+\lambda,
 \quad P=(p_x,p_y),\quad Q=(q_x,q),\quad
 D_Q=b(q-\lambda)+\lambda q_x.
\]

The triangle DCE contains two actual interior points P,Q. The
 two-interior-point lemma therefore gives

\[
 z\ge(4+2\sqrt3)\sigma>7\sigma=\frac{49}{64}>\frac34.      \tag{14}
\]

The triangles DCP, DBQ, and ECQ give, respectively,

\[
 p_y\le1-\sigma,\qquad
 q_x\ge\sigma+b(1-q),\qquad
 q\ge\lambda+zq_x+\sigma.
\]

Consequently

\[
 q\ge q_0:=\lambda+
       \frac{(1+z)\sigma+bz^2}{1+bz},\qquad
 D_Q\le\frac{a(q-\lambda)-\lambda\sigma}{z}.              \tag{15}
\]

Also \(D_Q\) is the absolute doubled area of EBQ, so it is positive.
Write \(U\) and \(V\) for the positive doubled areas BPQ and −EPQ.
A direct determinant expansion gives the weighted identity

\[
                  (q-\lambda)U+qV=D_Q(p_y-q).              \tag{16}
\]

Both weights are positive, because Q is strictly above EC. Therefore
\(p_y>q\), and (15)–(16) yield

\[
\begin{aligned}
0\le F(q):={}&(1-\sigma-q)
                    [a(q-\lambda)-\lambda\sigma]
                     -z\sigma(2q-\lambda).                \tag{17}
\end{aligned}
\]

Indeed first use \(U,V\ge\sigma\), then \(p_y\le1-\sigma\), and
finally the upper bound for \(D_Q\), multiplying only positive quantities.
We show that (17) is impossible on \(q\ge q_0\).

First \(F''(q)=-2a<0\), and exact substitution gives

\[
64(1+bz)F'(q_0)=
 -b^2z^2(64z+7)+bz(64z^2-28z-21)
                         -(50z^2-50z+14).                 \tag{18}
\]

On \(3/4\le z\le1\), the right side is at most

\[
 -\frac{495}{16}b^2+15b-\frac{37}{8}
 \le\frac{20}{11}-\frac{37}{8}<0.                          \tag{19}
\]

For the three coefficient bounds, use
\(z^2(64z+7)\ge495/16\),
\(z(64z^2-28z-21)\le15\), and
\(50z^2-50z+14\ge37/8\). The middle expression is increasing on
\([3/4,1]\), as its derivative \(192z^2-56z-21\) is positive there.
The second inequality in (19) is completion of a square in b.
Thus \(F\) is strictly decreasing on \([q_0,\infty)\).

Second, another exact substitution gives

\[
 F(q_0)=-\frac{zG(b,z)}{4096(1+bz)^2},                    \tag{20}
\]

where

\[
\begin{aligned}
G(b,z)={}&448b^3z^3+b^2z^2(1890-3648z)\\
 &+bz(3648z^2-5293z+2135)+399z^2-847z+644.
\end{aligned}
\]

This polynomial is positive for \(0\le b\le1/2\),
\(3/4\le z\le1\). Its second derivative in b satisfies

\[
 G_{bb}=z^2[2688bz+3780-7296z]
 \le z^2(3780-5952z)<0,
\]

so it is enough to check the two endpoint values in b. At b=0,
\(G(0,z)=399z^2-847z+644\ge196>0\), because that quadratic is decreasing
on the stated z interval. At \(b=1/2\), set \(w=1-z\in[0,1/4]\). Then

\[
 G(1/2,z)=\frac{115}{2}+\frac{851}{2}w+1129w^2-968w^3
 \ge\frac{115}{2}+\frac{851}{2}w+887w^2>0.
\]

Equations (18)–(20) give \(F(q)\le F(q_0)<0\), contradicting (17).
This proves the chamber lemma. Every scalar polynomial used in the
argument is printed above; the optional checker verifies only its exact
transcription.


## 7. Complete exclusion of three central points

**Central-triple theorem.** Suppose (5) holds with \(b\le1/2\), and three
further points lie in the interior of DCB. Then among these seven points
some triangle has area less than \(7/128\). Consequently both residual
rows \((1,3,2)\) and \((2,3,1)\) in Section 5 are excluded.

Assume the contrary and fix \(s=7/64\), a lower bound for every doubled
triangle area. Use the determinant-one affine coordinates

\[
 (u,v)\longmapsto(1-v,\ u-b(1-v)).
\]

The three central-triangle vertices and the left contact become

\[
 A=(0,0),\quad B=(1,0),\quad C=(0,1),\quad
 E=(q,-p),\quad q=1-\lambda,\quad p=bq.
\]

Thus

\[
 0<q\le1,\qquad s\le p\le q/2\le1/2,\qquad
 \alpha:=\langle EBC\rangle=1+p-q.                         \tag{21}
\]

Throughout this section \(\langle UVW\rangle\) denotes **signed doubled**
area. In particular \(\langle ABC\rangle=1\). The area convention is
explicitly different from the ordinary-area brackets in (13).

### The distributed central mesh and two quantitative consequences

The three interior points have the distributed configuration of Section 8
of `CORNER_FAMILIES.md`. Otherwise two would lie in the same fan triangle
of the third, giving

\[
 1\ge(6+2\sqrt3)s>\frac{28}{3}\frac7{64}=\frac{49}{48},
\]

a contradiction; here \(\sqrt3>5/3\). Therefore label them X,Y,Z as in
that section, with the seven positive mesh areas

\[
\begin{array}{lll}
 x=\langle ABZ\rangle,&y=\langle BCX\rangle,&z=\langle CAY\rangle,\\
 a=\langle AZY\rangle,&b_*=\langle BXZ\rangle,&c_*=\langle CYX\rangle,\\
 k_* =\langle ZXY\rangle.
\end{array}
\]

The six positive cross areas are

\[
\begin{array}{lll}
 u_A=\langle AZX\rangle,&u_B=\langle BXY\rangle,&u_C=\langle CYZ\rangle,\\
 v_A=\langle AXY\rangle,&v_B=\langle BYZ\rangle,&v_C=\langle CZX\rangle.
\end{array}
\]

All thirteen quantities are at least s, and

\[
 1=x+y+z+a+b_*+c_*+k_*.
\]

Write \(K=k_*/s-1\ge0\), and
\(T=(a+b_*+c_*)/s-3\ge0\). The exact Pluecker calculation proving the
six-point triangular-hull theorem gives the stronger intermediate facts

\[
 \frac{T^2}{3}+T\ge3+6K,\qquad
                         1\ge s(7+T+K).                  \tag{22}
\]

These are equation (20) and the seven-face sum in `CORNER_FAMILIES.md`,
with the nonnegative cross-products discarded but K retained.

They imply

\[
                           k_*<\frac98s.                 \tag{23}
\]

Indeed if \(K\ge1/8\), then \(T\le64/7-7-1/8=113/56<21/10\).
The first inequality of (22) would give
\(T^2/3+T\ge15/4\), whereas \(T<21/10\) gives
\(T^2/3+T<357/100<15/4\).

They also retain any excess in an individual ear. For each
\(e\in\{x,y,z\}\),

\[
                         1\ge\Gamma s+(e-s).             \tag{24}
\]

To see this, (22) gives \(T\ge3(\sqrt5-1)/2\); in the seven-face sum,
keep the chosen ear e, bound the other two ears below by s, and use
\(k_*\ge s\). In particular, since \(\Gamma>17/2\),

\[
                              x<\frac{23}{128}<\frac15.   \tag{25}
\]

Let \(X_A,X_B,X_C\), and similarly for Y,Z, denote barycentric
coordinates in ABC. The area identities give

\[
\begin{gathered}
 X_A=y,\quad Y_B=z,\quad Z_C=x,\\
 X_B=z+c_*+v_A\ge3s,\qquad Z_A=y+b_*+v_C\ge3s,\\
 a+v_B=Y_C-Z_C,\quad a+u_C=Z_B-Y_B,\quad
 u_A+b_*=X_C-Z_C.                                         \tag{26}
\end{gathered}
\]

These identities are just signed-area addition. They will make each
remaining orientation calculation explicit.

### Exactly four positions of the ray CE

At C, the rays toward the three interior points occur in the order
CY,CZ,CX between CA and CB. This follows from the three positive
cross-areas \(u_C,v_C,c_*\); all the rays are in the same open half-plane,
so their order is linear rather than cyclically ambiguous. Hence the
points in ACE are exactly one of

\[
        \varnothing,\qquad \{Y\},\qquad
        \{Y,Z\},\qquad \{X,Y,Z\}.                        \tag{27}
\]

Within ABC, membership in ACE is equivalent to
\(\langle ECP\rangle>0\): the other two edge tests are automatic.
A central point with negative \(\langle ECP\rangle\) lies inside EBC.
Every sign is strict because no three actual points are collinear.
Thus (27) is exhaustive.

**No point in ACE.** All three lie in EBC, so the six-point theorem gives
\(\alpha\ge\Gamma s\). But (21) gives
\(\alpha\le1-p\le1-s\), hence
\(1\ge(\Gamma+1)s>(19/2)(7/64)>1\), a contradiction.

**All three points in ACE.** The inequality
\(\langle ECX\rangle\ge s\), expanded in barycentric coordinates, is

\[
 s\le qX_A-\alpha X_B
   =q(X_A+X_B)-(1+p)X_B\le y-pX_B.
\]

Thus (21), (26) give \(y\ge s+3s^2\). By (24),
\(1\ge\Gamma s+3s^2\), which is false at \(s=7/64\).
Indeed \(\Gamma(7/64)+3(7/64)^2>1\) is equivalent to
\(\sqrt5>495/224\), and
\(5\cdot224^2-495^2=5855>0\).

### Two points in ACE

Suppose Y,Z lie in ACE and X lies in EBC. If
\(\langle EYZ\rangle<0\), apply the two-point chamber lemma of Section 6
to P=Y,Q=Z: both are in DCB and DCE, and
\(\langle BYZ\rangle=v_B>0\). This is impossible.

It remains to consider \(\langle EYZ\rangle\ge s\), while
\(\langle ECX\rangle\le-s\). Since E has barycentric coordinates
\((\alpha,q,-p)\), these two inequalities give

\[
 \frac{a+s+p(a+u_C)}{a+v_B}
 \le q\le
 \frac{(1+p)X_B-s}{X_A+X_B}.                              \tag{28}
\]

All denominators are positive. Multiplying out (28), and using the area
identities (26) and \(c_*=u_C+v_C-k_*\), gives

\[
 k_*(1+p)\ge u_C(p+X_C)
                  +s(1-X_C+a+v_B)
 \ge s(1+p+a+v_B).                                       \tag{29}
\]

For clarity, the exact identity behind the first inequality is

\[
\begin{aligned}
 &[(1+p)X_B-s](a+v_B)
       -[a+s+p(a+u_C)](X_A+X_B)\\
 &\qquad=k_*(1+p)-u_C(p+X_C)-s(1-X_C+a+v_B).
\end{aligned}
\]

Since \(a,v_B\ge s\) and \(p\le1/2\), (29) implies

\[
 K=\frac{k_*}{s}-1\ge\frac{2s}{1+p}
                  \ge\frac43s=\frac7{48}>\frac18,
\]

contradicting (23). This exhausts the two-point case.

### Exactly one point in ACE

Now Y is in ACE and X,Z are in EBC. Necessarily
\(\langle EYZ\rangle<0\). Otherwise the three positive edge tests put
Z inside AEY, which is a subtriangle of ACE, contradicting Z's location.

First suppose \(\langle EXZ\rangle<0\). Its doubled magnitude is at
least s, while \(\langle ECY\rangle\ge s\). Expanding these two
inequalities gives

\[
 \frac{s+(1+p)Y_B}{1-Y_C}
 \le q\le
 \frac{(1+p)u_A-pv_C-s}{u_A+b_*}.                          \tag{30}
\]

As in (28), all denominators are positive. The exact identity

\[
\begin{aligned}
 &[(1+p)u_A-pv_C-s](1-Y_C)
       -[s+(1+p)Y_B](u_A+b_*)\\
 &\qquad=k_*(1+p)-v_C(p+Y_C)-s(1-Y_C+u_A+b_*)
\end{aligned}
\]

then gives \(K\ge2s/(1+p)\ge7/48\), contradicting (23).

Finally suppose \(\langle EXZ\rangle>0\). Set

\[
 f_1=\langle EXZ\rangle\ge s,\qquad
 f_2=-\langle EYZ\rangle\ge s,\qquad
 u=\langle AEZ\rangle>0.
\]

The Pluecker identity at Z is

\[
                         uk_*=af_1+u_Af_2\ge2s^2.
\]

By (23),

\[
                              u>\frac{16}{9}s=\frac7{36}. \tag{31}
\]

On the other hand, EBC contains the two interior points X,Z. The
 two-interior-point bound gives
\(\alpha\ge(4+2\sqrt3)s>(22/3)s\). Since
\(\alpha=1+p-q\le1-q/2\),

\[
                              q<2-\frac{44}{3}s=\frac{19}{48}.
\]

The barycentric formula for u, (21), and (25)–(26) yield

\[
\begin{aligned}
 u&=qx+pZ_B\le q(x+Z_B/2),\\
 x+Z_B/2&=\frac{1-Z_A+x}{2}
       <\frac{1-1/4+1/5}{2}=\frac{19}{40}.
\end{aligned}
\]

Consequently \(u<361/1920<7/36\), contradicting (31). The last rational
comparison is \(361\cdot36=12996<13440=7\cdot1920\).

All four possibilities in (27), and both possible remaining interior-pair
signs within them, have now been excluded. This proves the central-triple
theorem by hand.

## 8. Two residual Type-II count classes

Combining Sections 3–7, every Type-II configuration of minimum area at
least \(A_0\) is area-equivalent to a Type-III configuration or belongs
to one of precisely these two remaining continuous count classes:

| \((\ell,c,r)\) | Necessary range of the normalized bottom parameter |
|---|---|
| \((1,2,3)\) | \(s\le b\le1-s/(3-2\sqrt2)\) |
| \((2,2,2)\) | \(3s\le b\le1/2\) |

In this final table \(s=2t\) is again the actual doubled minimum area.
Neither row is claimed to be excluded by the present note. Each central
count is exactly two; the left count includes the prescribed point E.
