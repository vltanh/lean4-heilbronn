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
