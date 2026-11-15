# A complete hand exclusion for the opposite-corner family C2

## The result

**Theorem 1 (six points in a half-square).** Let

\[
 A=(0,0),\quad E=(1,1),\quad H=(0,h),\quad F=(f,1),
 \qquad 0<h,f<1,
\]

and let P and Q be any two points of

\[
                  T=\{(x,y):0\le x\le y\le1\}.
\]

Some triangle determined by these six points has area at most

\[
                         \frac7{128}.
\]

**Corollary 2 (the complete C2 family).** A nine-point maximizing
configuration with two opposite occupied corners and no adjacent occupied
corners has minimum triangle area at most \(7/128<A_0\). Consequently this
case cannot occur in a maximizing configuration whose value is at least
the known candidate value.

**Proof of the corollary from Theorem 1.** Use the C2 normalization in
`GLOBAL_STRUCTURE.md`: the occupied corners are A and E, with one additional
point on each side. Three points remain. A point on the diagonal AE gives a
zero-area triangle, so assume none is on it. At least two of the remaining
three points lie in the same open half-square. If they lie above AE, use
the left and top contacts for H and F in Theorem 1. If they lie below AE,
reflect across AE and use the bottom and right contacts. This covers the
entire C2 family, not a prescribed orientation pattern of its three free
points. Finally,

\[
 A_0-\frac7{128}=\frac{18\sqrt{65}-145}{640}>0,
 \qquad 65\cdot18^2-145^2=35>0.
\]

The same argument bounds every positive-area configuration having two
opposite corners and one further point on each side, whether or not it is
maximizing. \(\square\)

The remainder is a self-contained proof of Theorem 1. The only polynomial
checks are the two one-variable inequalities printed in full below. No
coordinate-grid enumeration or numerical optimization is a premise.

## 1. Coordinates, thresholds, and elementary area identities

Assume, for contradiction, that every triangle has area greater than
\(7/128\). In most of the argument use the smaller doubled-area threshold

\[
                 s=\frac6{55}<\frac7{64}.
                                                               \tag{1}
\]

Thus every doubled triangle area is at least s. The one case requiring the
larger threshold will explicitly use \(\sigma=7/64\).

Put

\[
 \alpha=1-h,\quad \beta=1-f,\quad
 D=h+\beta-h\beta.
\]

For a variable point X, write

\[
                     X=(x,x+w).
\]

The change from (x,y) to (x,w=y-x) has determinant one. Areas can be
calculated in either coordinate system. Three of the area conditions are

\[
 w\ge s,\qquad hx\ge s,\qquad
 \beta(1-x-w)\ge s.                                         \tag{2}
\]

They come from AEX, AHX, and EFX, respectively. In particular X is strictly
inside T. The remaining anchor-pair conditions are

\[
 |L(X)|\ge s,\quad |K(X)|\ge s,\quad |N(X)|\ge s,
                                                               \tag{3}
\]

where

\[
 \begin{aligned}
 L(X)&=fw-\beta x=\det(F-A,X-A),\\
 K(X)&=h(1-x)-w=\det(H-E,X-E),\\
 N(X)&=fw+(h-\beta)x-fh=\det(F-H,X-H).
 \end{aligned}                                               \tag{4}
\]

The four triangles of the anchors give, among other conditions,

\[
                     hf\ge s,\qquad \alpha\beta\ge s.
                                                               \tag{5}
\]

We repeatedly use the elementary inequality

\[
             \sqrt{hf}+\sqrt{\alpha\beta}\le1.               \tag{6}
\]

Indeed it is Cauchy--Schwarz applied to
\((\sqrt h,\sqrt\alpha)\) and \((\sqrt f,\sqrt\beta)\),
both of which have Euclidean norm one.

For a directed line PQ write

\[
                  d_V=\det(Q-P,V-P).
\]

Every \(|d_V|\), for \(V\in\{A,E,H,F\}\), is at least s.
All signs below are therefore strict, and no collinearity case is omitted.

## 2. Five possible point cells reduce to three

The identities

\[
 N=-fK-\alpha\beta x,
 \qquad N=\alpha L-hf(1-x-w)                                \tag{7}
\]

show that \(N>0\) forces \(L>0\) and \(K<0\). Thus a free point has
one of the following five sign patterns:

| Cell | L | K | N | Geometric description needed below |
|---|---:|---:|---:|---|
| I | + | + | - | Inside both AHF and AEH |
| II | - | + | - | Inside both AEF and AEH |
| III | - | - | - | Inside both EHF and AEF |
| IV | + | - | - | Inside both AHF and EHF |
| V | + | - | + | Above the line HF |

The containment statements follow directly from the three oriented edge
tests for the named triangle, using (2) and (4). For example, membership in
AHF is exactly \(x>0,L>0,N<0\), and membership in EHF is exactly
\(1-x-w>0,K<0,N<0\), within T.

Cell IV is impossible. A point in it subdivides each of AHF and EHF into
three triangles of doubled area at least s. Hence

\[
                       hf\ge3s,\qquad\alpha\beta\ge3s.
\]

Equation (6) would give \(s\le1/12\), contrary to (1).

Cell V is also impossible. From (2), (4), and \(N\ge s\),

\[
 \alpha f\ge s+\alpha x+f(1-x-w)
 \ge s\left(1+\frac\alpha h+\frac f\beta\right)
 =\frac{sD}{h\beta}.
\]

Let \(r=\sqrt{h\beta}\). Since \(h+\beta\ge2r\),

\[
 s\le\frac{h\beta(1-h)(1-\beta)}{h+\beta-h\beta}
 \le\frac{r(1-r)^2}{2-r}
 \le\frac{5\sqrt5-11}{2}<\frac1{10}<s.                      \tag{8}
\]

For the last maximum, differentiate: the derivative has the sign of
\((1-r)(r^2-3r+1)\), so the maximum on [0,1] is at
\(r=(3-\sqrt5)/2\). The final strict comparison follows from
\(\sqrt5<56/25\), verified by squaring. Thus only cells I--III remain.

The reflection \((x,y)\mapsto(1-y,1-x)\) interchanges A with E, H with F,
h with \(\beta\), and cells I with III; it preserves cell II. We use this
symmetry without further comment when explicitly indicated.

## 3. Only pairs I--II and II--II remain

If one point is in I and one in III, the former is inside AHF and the
latter inside EHF. Again \(hf\ge3s\) and \(\alpha\beta\ge3s\),
contradicting (6).

If both points are in I, insert them successively into the triangle AHF.
The first divides it into three triangles. The second lies strictly inside
one of those triangles, because all triples of the six points are
noncollinear, and subdivides that triangle into three. There are therefore
five triangles, each using the original five points and each of doubled
area at least s. Thus \(hf\ge5s\). Combining this with
\(\alpha\beta\ge s\) and (6) gives

\[
             s\le\frac1{(\sqrt5+1)^2}<\frac1{10},
\]

a contradiction. The two-III case follows by reflection. Hence, up to
reflection and swapping P,Q, the only cases are I--II and II--II.

We will use the elementary one-variable bounds

\[
 \max_{0<b<1}\frac{b(1-b)}{3-b}
 =\max_{0<b<1}\frac{b(1-b)}{2+b}
 =5-2\sqrt6<\frac6{55}.                                    \tag{9}
\]

The derivative zeros are \(3-\sqrt6\) and \(\sqrt6-2\), respectively.
For the strict comparison in (9), square
\(\sqrt6>269/110\); it reduces to \(72600>72361\).

## 4. A weighted area identity

Write

\[
                   P=(p,p+w),\qquad Q=(q,q+v).
\]

Direct expansion gives

\[
 \begin{aligned}
 d_H&=(h-w)q+pv-hp,\\
 d_E&=w(1-q)+(p-1)v,\\
 w d_H+(h-w)d_E&=K(P)(w-v).                                 \tag{10}
 \end{aligned}
\]

Whenever \(K(P)\ge s\), one has \(0<w<h\). If also
\(d_H,d_E\ge s\), equations (2) and (10) imply

\[
 \begin{aligned}
 hs&\le K(P)(w-v)\le K(P)(w-s)\\
   &\le(h-s-w)(w-s).
 \end{aligned}                                               \tag{11}
\]

The last step uses \(hp\ge s\). In particular,

\[
 hs\le\frac{(h-2s)^2}{4},\qquad
 h\ge(4+2\sqrt3)s>\frac45.                                 \tag{12}
\]

Here (11) first gives \(h>2s\), selecting the larger root of the quadratic.
The final comparison at \(s=6/55\) follows from \(\sqrt3>5/3\).
Also (5), with \(\beta<1\), always gives

\[
                           h<1-s=\frac{49}{55}.             \tag{13}
\]

## 5. Pair I--II: all three possible line orientations

Take P in I and Q in II. Both points are in AEH, while P is in AHF and Q
is in AEF. In particular

\[
                         d_A<0,\qquad d_F>0.                \tag{14}
\]

For the first sign, \(L(P)>0>L(Q)\) means the ray AP is strictly above
AF and AQ strictly below AF, so \(\det(P-A,Q-A)<0\). For the second,
P and Q are on opposite sides of the diagonal AF of the convex quadrilateral
AEFH; their joining segment crosses the interior of AF. Since A lies
strictly on the negative side of PQ, F lies strictly on the positive side.

E and H cannot both have negative sign: along with A that would put the
whole triangle AEH strictly on the negative side of PQ, although P and Q
belong to that triangle. Thus the following three cases are exhaustive.

### 5.1. \(d_H>0>d_E\)

The oriented edge tests put Q inside EFP: the three signs are
\(\det(E,F,Q)>0\), \(d_F>0\), and \(-d_E>0\).
Consequently

\[
                       \beta(1-y_P)\ge3s.
\]

Since \(hp\ge s\) and \(f y_P-p=L(P)\ge s\),

\[
 f\left(1-\frac{3s}{\beta}\right)-\frac{s}{h}\ge s.
\]

Using \(h\le1\), this yields

\[
 s\le\frac{\beta(1-\beta)}{3-\beta},
\]

contrary to (9).

### 5.2. \(d_H<0<d_E\)

Now P lies inside HFQ: its three oriented edge tests, relative to the
negative orientation of HFQ, are \(N(P)<0\), \(-d_F<0\), and
\(d_H<0\). Thus

\[
                         -N(Q)\ge3s.                        \tag{15}
\]

P is also inside AHF, so \(hf\ge3s\). If \(h\le\beta\), then
\(\alpha\beta\ge hf\ge3s\), already impossible by (6). Hence
\(h>\beta\).

For Q in II, \(-L(Q)=\beta q-fv\ge s\) and \(v\ge s\).
Consequently (15) gives

\[
 \begin{aligned}
 3s&\le hf-(h-\beta)q-fv\\
   &\le hf-\frac{s(h-\beta)(1+f)}{\beta}-fs.
 \end{aligned}
\]

After rearrangement,

\[
 s\le\frac{h\beta(1-\beta)}{2h+2\beta-h\beta}
 \le\frac{\beta(1-\beta)}{2+\beta},                         \tag{16}
\]

because the first expression is increasing in h and \(h\le1\).
This again contradicts (9).

### 5.3. \(d_H>0,\ d_E>0\)

Apply (11)-(13). The condition \(L(P)\ge s\), together with
\(p\ge s/h\), gives

\[
 w\ge\frac{s(h+\beta)}{h(1-\beta)}.
\]

By \(\alpha\beta\ge s\), one has \(\beta\ge s/(1-h)\).
The preceding lower bound increases with \(\beta\), so

\[
 w\ge W:=\frac{s\,[h(1-h)+s]}{h(1-h-s)}.                    \tag{17}
\]

All denominators are positive by (12)-(13). In fact \(W>h/2\).
To check this without approximation, put \(z=h-4/5\ge0\). The numerator
of \(W-h/2\), after multiplying by the positive
\(2h(1-h-s)\), is

\[
 h^3-(1+s)h^2+2sh+2s^2
 =z^3+\frac{71}{55}z^2+\frac4{11}z+\frac8{15125}>0.          \tag{18}
\]

The function \((h-s-w)(w-s)\) decreases for \(w\ge h/2\). Hence
(11) and (17) require

\[
                       (h-s-W)(W-s)-hs\ge0.
\]

On substituting \(s=6/55\), this is equivalent, after multiplication by
positive denominators, to \(Q(h)\le0\), where

\[
 Q(h)=166375h^5-278300h^4+130075h^3-16386h^2+3960h+216.
                                                               \tag{19}
\]

But with \(z=h-4/5\),

\[
 Q(h)=166375z^5+387200z^4+304315z^3
       +78962z^2-1736z+\frac{536}{25}>0.                     \tag{20}
\]

The first three terms are nonnegative, and the quadratic part is positive
for every real z: its minimum is

\[
 \frac{536}{25}-\frac{1736^2}{4\cdot78962}
                   =\frac{11744016}{987025}>0.
\]

This contradiction completes I--II. Reflection also completes II--III.

## 6. Pair II--II when A and E have the same line sign

Both P and Q now satisfy the cell-II inequalities. Swap P,Q if necessary
so \(d_A,d_E<0\). In this subsection use the larger threshold
\(\sigma=7/64\); our contradiction assumption makes every doubled
triangle area strictly greater than \(\sigma\).

The two linear inequalities \(-L\ge\sigma\) and \(K\ge\sigma\)
give, for a point of height w,

\[
 \ell(w):=\frac{\sigma+fw}{\beta}\le x
 \le r(w):=1-\frac{\sigma+w}{h}.                             \tag{21}
\]

Set

\[
 a=1-\sigma\left(\frac1h+\frac1\beta\right),\qquad
 c=\frac1h+\frac1\beta-1>0.
\]

If \(w\ge v\), then \(-d_E\le-d_A\), and (21) gives

\[
 \begin{aligned}
 \min(-d_A,-d_E)
 &=wq-pv-w+v\\
 &\le v(1-\sigma/\beta)-\sigma w/h-cwv\\
 &\le av-cv^2.
 \end{aligned}
\]

If \(w\le v\), the same calculation with \(-d_A\) gives
\(\min(-d_A,-d_E)\le aw-cw^2\). Since the minimum is positive,
\(a>0\), and maximizing the quadratic yields

\[
 \sigma\le\frac{a^2}{4c}.
\]

Write \(U=h\beta\) and \(S=h+\beta\). Then

\[
 (U-\sigma S)^2-4\sigma U(S-U)\ge0,
 \qquad U-\sigma S>0.                                      \tag{22}
\]

For fixed U, the left side decreases with S throughout
\(\sigma S<U\), since its derivative is
\(2\sigma(\sigma S-3U)<0\). Put \(r=\sqrt U\). Since
\(S\ge2r\), (22) implies

\[
 (1+4\sigma)r^2-12\sigma r+4\sigma^2\ge0,
 \qquad r>2\sigma.
\]

At \(\sigma=7/64\), multiplying the first inequality by 1024 gives

\[
                    (8r-7)(184r-7)\ge0.
\]

Because \(r>7/32\), this forces \(r\ge7/8\). On the other hand,
the two anchor areas satisfy

\[
 h-U>\sigma,\qquad\beta-U>\sigma.
\]

As \(r\ge\min(h,\beta)\), they imply
\(r-r^2>7/64\), which forces \(r<7/8\). This contradiction completes
the same-sign case.

## 7. Pair II--II when A and E have opposite signs

Return to \(s=6/55\). Orient PQ so \(d_A<0<d_E\). Put

\[
 u=-d_A>0,\quad e=d_E>0,\quad
 k=K(P),\quad l=-L(P),\quad b=\beta(1-p-w).
\]

Here k,l,b are positive. Affine-coordinate expansion gives

\[
 d_H=\frac{ku-hpe}{w},\qquad
 d_F=\frac{bu-le}{w},\qquad
 hp\,b-kl=-wN(P)>0.                                       \tag{23}
\]

Thus \(d_H>0\) forces \(u/e>hp/k>l/b\), hence \(d_F>0\).
The only sign pairs \((d_H,d_F)\) are therefore
\((+,+),(-,+),(-,-)\).

### 7.1. \(d_H<0<d_F\)

The same edge tests as in Section 5.2 put P inside HFQ, giving
\(-N(Q)\ge3s\). Reflect across \(x+y=1\), if needed, to arrange
\(h\ge\beta\). This reflection preserves cell II and the containment
P in HFQ. The calculation (15)-(16) now applies directly, including the
case \(h=\beta\), and contradicts (9).

### 7.2. \(d_H>0,\ d_F>0\)

Since also \(d_E>0\), the weighted identity gives (11)-(13), in particular

\[
                         \frac45<h<\frac{49}{55}.
\]

The cell-II condition for P is now \(\beta p-fw\ge s\). Thus

\[
 \begin{aligned}
 s&\le\frac{K(P)}h(w-s)\\
  &\le(w-s)\left[1-\frac{s}{\beta}
       -\left(\frac1h+\frac1\beta-1\right)w\right].          \tag{24}
 \end{aligned}
\]

For fixed h,w,s with \(w>s\), the expression on the second line increases
with \(\beta\): its derivative is
\((w-s)(s+w)/\beta^2>0\). The anchor condition
\(h(1-\beta)\ge s\) gives \(\beta\le1-s/h\), so replace
\(\beta\) in (24) by \(1-s/h\).

For a general positive \(\beta\), maximizing the quadratic in w on the
right side of (24) gives the necessary inequality

\[
 4sD h\beta\le
 \left[h\beta-s(\beta+2h-h\beta)\right]^2.                  \tag{25}
\]

To justify squaring in this step, write the quadratic as
\(z(A-cz)\), where \(z=w-s>0\),
\(c=1/h+1/\beta-1>0\), and
\(A=1-s/\beta-cs\). Positivity in (24) forces \(A>0\), and its
maximum is \(A^2/(4c)\). This is exactly (25).

After the safe replacement \(\beta=1-s/h\) and \(s=6/55\), (25)
requires \(R(h)\ge0\), where

\[
 R(h)=7263025h^4-8180040h^3+1597176h^2-97632h+1296.
                                                               \tag{26}
\]

But putting \(z=h-4/5\ge0\) gives

\[
 R(h)=7263025z^4+15061640z^3+9855096z^2
              +1626848z-\frac{1339312}{5}.
\]

This is strictly increasing for \(h\ge4/5\), and

\[
                         R(49/55)=-\frac{1468937}{55}<0.
\]

Thus R is negative throughout the required interval, a contradiction.

### 7.3. \(d_H<0,\ d_F<0\)

Reflect across \(x+y=1\). Because the reflection reverses orientation and
interchanges A with E and H with F, it preserves \(d_A<0<d_E\) and changes
the last two signs to positive. It therefore reduces this case exactly to
Section 7.2.

All cells, all pair types, and all relevant line orientations have now been
covered. The assumption that all twenty triangle areas exceed \(7/128\)
is impossible. This proves Theorem 1. \(\square\)

## Verification boundary

`check_opposite_corners.py` optionally checks the printed determinant and
polynomial identities with exact symbolic arithmetic. It does not enumerate
configurations and is not a premise of the hand proof. The case list is the
five-cell sign classification in Section 2 and its subsequent explicit
geometric reductions; the proof does not infer completeness from a numerical
search.
