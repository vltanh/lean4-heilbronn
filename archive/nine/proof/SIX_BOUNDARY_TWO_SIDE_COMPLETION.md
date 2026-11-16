# Completion of the two-side-cap N family with a lower point

Use the N anchors and placements in
[SIX_BOUNDARY_TWO_SIDE_PROJECTION.md](SIX_BOUNDARY_TWO_SIDE_PROJECTION.md):

\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),
\]
\[
0<a<h<1,\quad0<b<c<1,\qquad a\le d\le h,\quad b\le f\le c,
\]
\[
X=(x,y)\in CD(1,0),\qquad Y=(z,w)\in FH(0,1),\qquad
Q=(r,t)\in (0,0)HC.
                                                               \tag{1}
\]

Here a three-vertex expression denotes the closed containing triangle.
The square corners in (1) are virtual. All other named points are actual.

**Theorem 1.** Every configuration in the entire occupancy (1) has
minimum ordinary triangle area at most

\[
                         A_0=\frac{9\sqrt{65}-55}{320}.
\]

Equality forces \(x=w=1\) and the known sharp eight-boundary
configuration, up to square symmetry and relabeling.

There are no additional height-order or joining-line assumptions.
The theorem closes the whole class with one point in each side cap
and the third point below \(HC\). It uses the complete
seven-boundary exterior theorem after proving that at least one of
the two cap points can be projected onto its adjacent square side.

Write \([UVW]=\det(V-U,W-U)\), and put

\[
s=\frac7{64},\qquad L=h-a,\qquad M=c-b.
\]

Assume the configuration is competitive, so its minimum doubled area
\(\mu\) is at least \(2A_0>s\). The placements and positive
minimum area give

\[
c<x\le1,\quad0<y<d\le h<w\le1,
\quad0<z<f\le c,\quad0<r<c,\quad0<t<h.                   \tag{2}
\]

## 1. Only two nonmonotonicity signs can obstruct projection

The projection note proves that moving \(x\) to one preserves every
triangle threshold except possibly that of \(AQX\). This assertion
uses the empty-triangle lemma \([BCX]<3s\), and includes all triangles
using \(Q\), \(Y\), or both. Its proof of the \(AQX\) step
only needs the absolute value of

\[
[AQX]=r(y-a)-x(t-a)
\]

to be nondecreasing. Since its derivative with respect to \(x\)
is \(a-t\), the precise sufficient condition is

\[
                         (t-a)[AQX]\le0.                \tag{3}
\]

Similarly, the projection \(w\mapsto1\) preserves every threshold
if

\[
                         (r-b)[BQY]\ge0,                \tag{4}
\]

because \([BQY]=(r-b)w-t(z-b)\) has derivative \(r-b\).
All the other triple checks are unchanged from Sections 2--3 of the
projection note. They apply to either single projection: for the
\(DXY\) and \(FXY\) costs, the endpoint lower bounds there are
valid even when the other cap point has not moved.

Suppose both sufficient conditions fail. Then

\[
(t-a)[AQX]>0,
\qquad (r-b)[BQY]<0.                                   \tag{5}
\]

In particular \(t\ne a\), \(r\ne b\). The first sign in (5)
implies that \(y-a\) and \(t-a\) have the same sign; the second
implies that \(z-b\) and \(r-b\) have the same sign. There are
four possible quadrants for \(Q\) relative to \((b,a)\).
The next three sections exclude all four, with transposition pairing
the two mixed quadrants.

We repeatedly use the actual anchor and cap costs

\[
aM\ge s,\qquad bL\ge s,\qquad My\ge s,\qquad Lz\ge s,
\]
\[
(1-c)(d-y)\ge s,
\qquad (1-h)(f-z)\ge s.                                \tag{6}
\]

The last two follow from the original \(CDX\) and \(HFY\)
inequalities by discarding their nonnegative inward-displacement costs.
These are scalar consequences of the original configuration.

## 2. Q cannot be above A and right of B under both bad signs

Suppose \(t>a\), \(r>b\). Then \([AQX]\ge s\) and
\(-[BQY]\ge s\), so

\[
y-a\ge s/r\ge s/c,
\qquad z-b\ge s/t\ge s/h.
\]

Combining these with (6), \(d\le h\), and \(f\le c\),
we obtain

\[
Lc(1-c)\ge s,
\qquad Mh(1-h)\ge s.                                   \tag{7}
\]

Put \(p=\sqrt{LM}\), \(q=\sqrt{hc}\). The two anchor costs
in (6) give

\[
s+LM\le hM,\qquad s+LM\le cL,
\qquad s\le p(q-p).                                    \tag{8}
\]

Multiplying (7), and using
\((1-h)(1-c)\le(1-\sqrt{hc})^2\), gives

\[
                         s\le pq(1-q).                  \tag{9}
\]

Equation (8) implies \(q^2\ge4s>1/4\), hence \(q>1/2\).
If \(p\le q^2\), (9) gives \(s\le q^3(1-q)\).
If \(p\ge q^2\), the function \(p(q-p)\) decreases for
\(p\ge q^2\ge q/2\), and (8) gives the same conclusion.
But

\[
q^3(1-q)\le\frac{27}{256}<\frac7{64}=s,
\]

as is seen from the exact identity

\[
\frac{27}{256}-q^3(1-q)
=\frac{(4q-3)^2(16q^2+8q+3)}{256}\ge0.
\]

This excludes the first quadrant.

## 3. The two mixed quadrants are impossible

Suppose \(t>a\) and \(r<b\). Set

\[
m=M=c-b,\qquad \alpha=1-c,\qquad \delta=b-r>0,
\quad c=m+r+\delta.
\]

Here both \([AQX]\) and \([BQY]\) are positive. The first
one, together with (6), gives

\[
h\ge d\ge y+s/\alpha
\ge a+s/r+s/\alpha
\ge s/m+s/r+s/\alpha.
\]

Consequently

\[
                  1\ge\frac{s}{m}+\frac{s}{r}
                            +\frac{s}{\alpha}.           \tag{10}
\]

For the other positive area, use \(z\ge s/L\), \(w\ge h\):

\[
s\le[BQY]=t(b-z)-w\delta
\le t(b-s/L)-h\delta.
\]

The coefficient \(b-s/L\) is positive because the left side is
positive. The actual lower-triangle cost \(-[HCQ]\ge s\)
gives \(t\le\{h(c-r)-s\}/c\). Also \(a\ge s/m\), so
\(L\le h-s/m\), with positive denominators. Replacing t and
then L by these upper bounds therefore gives

\[
s\le R(h):=
\frac{hrm-sb}{c}
-\frac{s\{h(c-r)-s\}}{c(h-s/m)}.                       \tag{11}
\]

This expression increases with h:

\[
R'(h)=\frac{rm}{c}
 +\frac{s^2\delta}{cm(h-s/m)^2}>0.
\]

Increasing h to one is thus a scalar relaxation. Since \(m>s\),
exact simplification yields

\[
s\le R(1)=\frac{rm}{c}-s
                  -\frac{sm\delta}{c(m-s)},
\]

and hence

\[
rm\ge2sc+\frac{sm\delta}{m-s}>2s(m+r).
\]

The inequality \(rm\le(m+r)^2/4\) implies
\(m+r>8s=7/8\). Therefore
\(\alpha=1-m-r-\delta<1/8\). Equation (10) is now impossible:

\[
\frac{s}{m}+\frac{s}{r}+\frac{s}{\alpha}
\ge\frac{4s}{m+r}+\frac{s}{\alpha}
>4s+8s=\frac{21}{16}>1.
\]

Transposition exchanges the coordinates, the two caps, and the two
mixed quadrants. It excludes \(t<a,r>b\) by the identical argument.

## 4. The lower-left quadrant is also impossible

Suppose \(t<a\), \(r<b\). The two positive bad magnitudes are

\[
-[AQX]=r(a-y)-x(a-t)\ge s,
\qquad [BQY]=t(b-z)-w(b-r)\ge s.
\]

Using \(r<b\), \(t<a\), and (6), they imply

\[
a\ge\frac{s}{M}+\frac{s}{b},
\qquad b\ge\frac{s}{L}+\frac{s}{a}.                     \tag{12}
\]

Put

\[
p=\sqrt{ab},\qquad q=\sqrt{hc},\qquad
g=\sqrt{LM},\qquad \lambda=p/q\in(0,1).
\]

Equation (12) gives \(ab\ge sc/M\) and \(ab\ge sh/L\).
Multiplication and Cauchy--Schwarz give

\[
s\le\frac{p^2g}{q},
\qquad p+g\le q,
\qquad
\boxed{s\le\lambda^2q^2(1-\lambda).}                   \tag{13}
\]

Independently, (6) implies

\[
h\ge\frac{s}{M}+\frac{s}{1-c},
\qquad c\ge\frac{s}{L}+\frac{s}{1-h}.
\]

Write \(u=a/h\), \(v=b/c\), so \(\sqrt{uv}=\lambda\).
After rearranging, the last two inequalities are

\[
q^2\ge s\left(\frac1{1-c}+\frac{v}{1-v}\right),
\qquad
q^2\ge s\left(\frac1{1-h}+\frac{u}{1-u}\right).
\]

Take their average. Convexity and monotonicity of \(1/(1-z)\),
together with \((h+c)/2\ge q\) and \((u+v)/2\ge\lambda\),
give

\[
q^2\ge s\left(\frac1{1-q}+\frac{\lambda}{1-\lambda}\right).
\]

All denominators are positive, so this is

\[
\boxed{s\le
\frac{q^2(1-\lambda)(1-q)}{1-\lambda q}.}               \tag{14}
\]

The following elementary two-variable bound contradicts (13)--(14).

**Lemma 3.** For \(0<\lambda,q<1\),

\[
\min\left\{\lambda^2q^2(1-\lambda),
\frac{q^2(1-\lambda)(1-q)}{1-\lambda q}\right\}
\le\frac{16}{147}<\frac7{64}.                          \tag{15}
\]

**Proof.** First suppose \(\lambda\le2/3\), and put

\[
q_0=\frac{1+\lambda}{1+\lambda+\lambda^2}.
\]

The two expressions in (15) agree at \(q=q_0\). The first
increases with q. The derivative of the second has the sign of

\[
N(q)=2-(3+\lambda)q+2\lambda q^2,
\]

which decreases on \([0,1]\). At \(q_0\), its numerator is

\[
\lambda^4+\lambda^3+2\lambda^2-\lambda-1
\le\frac{28}{9}\lambda^2-\lambda-1<0.
\]

The last quadratic is convex, and its endpoint values on \([0,2/3]\)
are \(-1\) and \(-23/81\). Thus the second expression decreases
for \(q\ge q_0\), and the minimum in (15) is at most

\[
J(\lambda)=
\frac{\lambda^2(1-\lambda)(1+\lambda)^2}
     {(1+\lambda+\lambda^2)^2}.                          \tag{16}
\]

On \((0,1/2]\), this function increases. Indeed

\[
J'(\lambda)=
-\frac{\lambda(1+\lambda)
 (\lambda^4+2\lambda^3+6\lambda^2-\lambda-2)}
 {(1+\lambda+\lambda^2)^3}>0.
\]

The polynomial in parentheses is at most
\((29/4)\lambda^2-\lambda-2\), whose endpoint values on
\([0,1/2]\) are \(-2\) and \(-11/16\); convexity makes it
negative throughout. Hence \(J\le J(1/2)=9/98\) there.

On \([1/2,2/3]\), the decreasing ratio
\((1+\lambda)/(1+\lambda+\lambda^2)\) is at most \(6/7\).
Also \(\lambda^2(1-\lambda)\le4/27\), so

\[
J(\lambda)\le\frac{36}{49}\frac4{27}=\frac{16}{147}.
\]

Finally, if \(\lambda\ge2/3\), the second expression in (15)
decreases with \(\lambda\), and is at most

\[
\frac{q^2(1-q)}{3-2q}<\frac1{10}.
\]

The strict comparison is equivalent to
\(10q^3-10q^2-2q+3>0\). With \(z=q-3/4\ge-3/4\),
this cubic is

\[
10z^3+\frac{25}{2}z^2-\frac z8+\frac3{32}
\ge5z^2-\frac z8+\frac3{32}>0.
\]

The last quadratic has positive leading coefficient and discriminant
\(-119/64<0\). These cases prove (15); the final target gap is
\(7/64-16/147=5/9408>0\). \(\square\)

This excludes the fourth and last simultaneous-obstruction quadrant.

## 5. Finish the complete occupancy by one boundary projection

At least one of (3)--(4) holds. Project that cap point onto its adjacent
side. Section 1 and the full triple checks in the projection note show
that the entire segment retains every original doubled-area threshold
\(\mu\). At the endpoint there are at least seven boundary points;
the other cap point is still exterior to their anchor heptagon.
The lower-left exterior-cap exclusion in Theorem 2 of
[SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md) puts Q inside
\(HABC\), so Q is inside this heptagon.

The normalization needed by the complete seven-boundary exterior
theorem is available here. For example, after projecting X the
left/right contact intervals are \([a,h]\) and \([y,d]\);
they overlap because \(y<d\), \(a\le d\le h\).
The top singleton f is in the bottom interval \([b,c]\).
A horizontal reflection makes that singleton at most \(1/2\) if
necessary. The other cap point Y remains outside the side \(HF\).
The transposed argument applies when Y is projected instead. If the
other cap point is already on its square side, the eight-boundary
theorem applies directly.

Theorem 1 of
[SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md](SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md)
therefore gives \(\mu/2\le A_0\), proving the claimed upper bound.
Its equality statement forces the other cap point onto the boundary
and identifies the endpoint as the sharp construction. If the chosen
projection were nonconstant, its final segment would contradict the
unrestricted strict local optimality theorem in Part II of
[HAND_PROOF.md](HAND_PROOF.md), exactly as in Section 4 of the
projection note. Thus both cap points were already on the boundary,
and the stated equality classification follows. \(\square\)

## Verification

The optional exact diagnostic
[check_six_boundary_two_side_completion.py](check_six_boundary_two_side_completion.py)
checks both bad-sign eliminations, the mixed-quadrant monotone formula,
the two symmetric reductions, and every scalar identity in Lemma 3.
The geometric projection argument is proved in the preceding note;
all four obstruction quadrants are eliminated explicitly above.
