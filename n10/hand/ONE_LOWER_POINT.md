# One point below the contact chord: four complete alternatives

Put s=93/1000 and assume every actual triangle has unsigned doubled
area at least s. Let

    H=(0,h), A=(0,a), B=(b,0), C=(c,0), G=(g,z),
    0<a<h<=1, 0<b<c<=1,

with G strictly inside the actual quadrilateral HABC. These hypotheses
are local; no position of any further configuration point is needed.
Write [XYZ]=det(Y-X,Z-X).

**Lemma.** Exactly one of the following two ear positions or the central
position occurs. In the central position, the two weak contact orders
shown in the table are exhaustive, with their common equality allowed
in both alternatives.

| Alternative | Actual signs | Additional contact inequality |
|---|---|---|
| Bottom ear | ACG<0, HBG>0 | hc>=(4+2sqrt(3))s |
| Left ear | ACG>0, HBG<0 | hc>=(4+2sqrt(3))s |
| Central, ac>=bh | ACG>0, HBG>0 | ca(h-a)>=s(h+a) |
| Central, ac<=bh | ACG>0, HBG>0 | hb(c-b)>=s(c+b) |

The two central rows may overlap; the four rows cover every possible G.
No physical reflection of a larger configuration is asserted.

## 1. The ear alternatives

The edge tests of HABC are positive at G. Consequently G lies inside
ABC exactly when ACG<0, and inside ABH exactly when HBG<0. Neither
of those determinants can vanish.

The two opposite ear areas obey

    sqrt(ABC)+sqrt(ABH)<=sqrt(hc),

by Cauchy--Schwarz after writing ABC/(hc)=(a/h)(1-b/c) and
ABH/(hc)=(b/c)(1-a/h). If an ear contains G, its three actual fan
triangles have area at least s, so that ear has area at least 3s.
The other actual ear has area at least s. This proves the displayed
(1+sqrt(3))^2*s=(4+2sqrt(3))s lower bound on hc.

Both ears cannot contain G: that would give hc>=12s>1, contrary to
h,c<=1. Therefore the fourth possible sign word ACG<0,HBG<0 is
excluded, and the two single-ear rows in the table have the other
sign positive. If neither ear contains G, both signs are positive.

## 2. The central contact inequalities

Assume ACG,HBG>0. Put

    w=1-g/c-z/h.

Since G lies below HC, the actual HC clearance gives

    hc*w>=s.                                       (1)

Suppose first that ac<=bh, and set k=bh-ac>=0. The positive HBG
clearance is

    h*g*(c-b)/c-b*h*w>=s.

Using (1) yields

    g>=s(c+b)/[h(c-b)].                             (2)

The positive ABG clearance has the exact form

    ABG=b(h-a)-(k/c)g-bh*w>=s.

Because k>=0, substitution of (1) and (2) is in the correct direction:

    b(h-a)>=s+bs/c+ks(c+b)/[ch(c-b)]
             =s(c+b)(h-a)/[h(c-b)].                (3)

All canceled factors h,c,c-b,h-a are positive. Canceling h-a in
(3) gives hb(c-b)>=s(c+b), the fourth row of the table.

For the opposite contact order ac>=bh, interchange the letters
(a,h,g) and (b,c,z) in this same local algebra. The positive ACG
clearance takes the role of HBG, while ABG and the HC clearance are
unchanged. The resulting inequality is ca(h-a)>=s(h+a), the third
row. This is an algebraic substitution within the lemma and does
not change the coordinates or labels of any other configuration point.

The equality ac=bh is covered by both derivations. Thus the four
alternatives and every displayed contact inequality are proved.

## 3. A shared central-strip inequality

In either central row, the positive actual clearances HBG,ACG and
the negative HC clearance give

    h*g+b*z-b*h>=s,
    c*z+a*g-a*c>=s,
    hc-h*g-c*z>=s.

Multiply the first inequality by c and the third by b, then add.
Multiply the second by h and the third by a, then add. This yields

    h(c-b)g>=s(c+b),
    c(h-a)z>=s(h+a).                               (4)

All four coefficients and the two differences c-b,h-a are positive.
Substitute the resulting lower bounds for hg and cz into the third
actual clearance. Clearing the positive denominator (h-a)(c-b) gives

    hc(h-a)(c-b)>=s(3hc-ac-bh-ab).                  (5)

Indeed

    (c+b)(h-a)+(h+a)(c-b)+(h-a)(c-b)
      =3hc-ac-bh-ab.

This conclusion is common to both central contact orders; it does
not require choosing ac>=bh or ac<=bh. Since h,c<=1 and
(h-a)(c-b)>0, it immediately gives the two cubic inequalities

    c(h-a)(c-b)-s(3hc-ac-bh-ab)>=0,
    h(h-a)(c-b)-s(3hc-ac-bh-ab)>=0.                  (6)

More generally, any separately proved scalar upper bound hc<=M gives

    M(h-a)(c-b)-s(3hc-ac-bh-ab)>=0.                 (7)

For a fixed rational M this last expression is quadratic. Equations
(4)--(7) use only the same local five actual points as the lemma and
are valid in both central alternatives without any new normalization.

## 4. Coordinate bounds shared by the lower alternatives

Every lower point G=(g,z) in this note has g,z>0 and the HC clearance

    hc-hg-cz>=s.

The exact identity

    hc(1-g-z)-(hc-hg-cz)
      =h(1-c)g+c(1-h)z>=0

therefore proves

    g+z<=1-s/(hc)<=1-s.                             (8)

More generally, a separately proved upper bound hc<=M gives

    g+z<=1-s/M.                                    (9)

This statement is valid in both ears as well as the central position.
It is an affine inequality when M is a fixed constant.

For a central point, the two inequalities (4) also give explicit
coordinate lower bounds. Suppose known scalar bounds satisfy

    h<=h_hi, c<=c_hi, a>=a_lo>=0, b>=b_lo>=0,
    a_lo<h_hi, b_lo<c_hi.

Then

    g>=s(c_hi+b_lo)/[h_hi(c_hi-b_lo)],
    z>=s(h_hi+a_lo)/[c_hi(h_hi-a_lo)].               (10)

All denominators are positive. To verify the directions, the ratio
(c+b)/(c-b) decreases with c and increases with b on c>b>=0;
its derivatives are -2b/(c-b)^2 and 2c/(c-b)^2. Apply these facts
and h<=h_hi to the first inequality in (4). The second bound follows
by the same argument with the pairs (h,a) and (c,b) interchanged.

Combining (9) with either bound in (10) gives the corresponding
upper bound for the other coordinate. These deductions do not use
a contact-order choice and introduce no new configuration assumption.

## 5. Compatibility of the four lower clearances

Write \(G=(p,q)\) here. The actual tests at \(AH,BC,HC,AB\) give
\[
 p\ge p_0=\frac{s}{h-a},\qquad q\ge q_0=\frac{s}{c-b},\qquad
 hp+cq\le hc-s,\qquad ap+bq\ge ab+s.
\]
Thus the available remainder \(R=hc-s-hp_0-cq_0\) is nonnegative.
Put \(\lambda=\max(a/h,b/c)\). Applying \(a\le\lambda h\)
and \(b\le\lambda c\) to the nonnegative remainders
\(p-p_0,q-q_0\) gives
\[
        a p_0+bq_0+\lambda R\ge ab+s.                 \tag{11}
\]
In particular, if \(ac\ge bh\), then
\[
 a h(c-b)^2\ge s\bigl((h+a)(c-b)+ac-bh\bigr).
\]
This is (11) after canceling the term with \(p_0\) and clearing
the positive denominators. The weak order \(ac\le bh\)
gives the transposed inequality. Both derivations apply at
equality.

A fixed box for the contacts gives a multiaffine necessary
condition without splitting the contact order. Choose fixed
numbers \(\Lambda\ge\max(a/h,b/c)\), \(P_0\le p_0\) and
\(Q_0\le q_0\) using the already proved box. Then
\[
 \Lambda(hc-s)-ab-s
            -(\Lambda h-a)P_0-(\Lambda c-b)Q_0\ge0.    \tag{12}
\]
Indeed \(\Lambda h-a,\Lambda c-b\ge0\), and
\[
 ap+bq=\Lambda(hp+cq)-(\Lambda h-a)p-(\Lambda c-b)q
\]
is at least \(ab+s\) and at most the corresponding expression
with \(hp+cq\) replaced by \(hc-s\) and \(p,q\) by
\(P_0,Q_0\). For example the fixed source values
\[
 \Lambda=\max(a_{\max}/h_{\min},b_{\max}/c_{\min}),\quad
 P_0=\frac{s}{h_{\max}-a_{\min}},\quad
 Q_0=\frac{s}{c_{\max}-b_{\min}}
\]
are valid when the denominators are positive. These conditions
retain consequences of an actual lower point even in an
argument involving just the other nine points.
