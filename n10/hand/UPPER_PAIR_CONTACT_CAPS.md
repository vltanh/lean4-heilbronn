# Contact triangle caps forced by two upper points

Put s=93/1000 and T=(149/20)s. Consider the actual square contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e),
    F=(f,1), H=(0,h),

with 0<a<h<=1, 0<b<c<1, 0<e<=1, 0<f<1, and

    a<=e<=h,       b<=f<=c.

Assume every actual unsigned doubled triangle area is at least s.
All areas below are doubled.

If [CEF]>=T, the following two assertions hold:

* If an additional actual point lies in ACH, then
  [ABE]<=167879/245720.
* If an additional actual point lies in BCH, then
  [ABF]<=167879/245720.

The upper bound is strictly below T, since

    T-167879/245720 = 1184051/122860000 > 0.          (1)

Thus each indicated triangle has capacity one. In particular, in either
central N7 lower root, two actual points in CEF make both ABE and ABF
capacity-one triangles: the central lower point G lies in both ACH
and BCH. The argument also applies to any N6 placement satisfying
these same hypotheses; it uses no actual right-side secondary point.

This note is a reusable metric lemma. It does not assert that either
remaining N7 or N6 parent is closed.

## 1. Contact quadrilateral ceilings

All indicated contact triangles and quadrilaterals have their positive
cyclic orientations. Direct coordinate expansion gives

    [ABE]+[AEF]
      = area(ABEF)
      = 1-(e-a)(f-b) <= 1,                          (2)

    [ABF]+[BEF] = area(ABEF) <= 1,                 (3)

    [CEF]+[CFH]
      = area(HCEF)
      = 1-(h-e)(c-f) <= 1.                         (4)

The remainders in (2) and (4) are nonnegative by the two contact-overlap
orders. Put

    R=1-T=6143/20000 > 0.

The assumed CEF bound and (4) give

    0<[CFH]<=R.                                    (5)

## 2. The ABE bound

Suppose an actual point G lies in ACH. Then G is inside the actual
convex quadrilateral ACFH. The occupied-quadrilateral bound in
[AREA_RELATIONS.md](AREA_RELATIONS.md) implies

    [ACF]+[AFH] >= (24/5)s.                         (6)

This is a weaker version of its one-occupant bound; at the present s,
the proved rational cost .449 exceeds (24/5)s=.4464.

The exact Pluecker identity for these five actual contacts is

    [AEF][CFH] = [ACF][EFH]+[AFH][CEF].             (7)

Since EFH,AFH>=s and CEF>=T>s, (6) gives

    [AEF][CFH]
      >= s[ACF]+T[AFH]
       = s([ACF]+[AFH])+(T-s)[AFH]
      >= (24/5)s^2+(T-s)s
       = (45/4)s^2
       = 77841/800000.                             (8)

Divide by the positive CFH in (5). Then

    [AEF] >= (45/4)s^2/R = 77841/245720.

Combining this with (2) proves

    [ABE] <= 1-77841/245720 = 167879/245720.        (9)

## 3. The ABF bound

Suppose instead that an actual point G lies in BCH. It then lies in
the actual convex quadrilateral BCFH, so

    [BCF]+[BFH] >= (24/5)s.

Use the corresponding exact identity

    [BEF][CFH] = [BCF][EFH]+[BFH][CEF].             (10)

The same calculation as (8) gives BEF>=77841/245720. Equation (3)
therefore proves the stated ABF bound.

## 4. Capacity and scope

The two-interior-point actual-triangle theorem in
[TRIANGLE_OCCUPANCY.md](TRIANGLE_OCCUPANCY.md) requires area at least
(4+2sqrt(3))s, which is strictly larger than T. The comparison (1)
therefore excludes two additional actual points in either indicated
triangle.

For a central lower point G, the actual edge tests put G in both ACH
and BCH, so both conclusions apply simultaneously. If two actual
upper points lie in CEF, the same two-interior-point theorem gives
CEF>T, in particular the weak premise used above.

The optional standalone checker
[check_upper_pair_contact_caps.js](check_upper_pair_contact_caps.js)
expands (2)--(4), (7), and (10), and verifies the exact rational
constants. It imports no discovery table or numerical result.

## 5. With one lower point, ABF is empty

Suppose in addition that

    hc >= L := (2911/500)s = 270723/500000.          (11)

This is the weakened endpoint-five lower-container bound proved in
[N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md): the five actual
points H,A,B,C and the lower point lie in the endpoint triangle
H(0,0)C.
In particular c>=L>27/50, since h<=1. Retain the hypothesis CEF>=T.

We prove f<3s. It then follows that

    [ABF]=a f+b(1-a)<=f<3s,                         (12)

using b<=f and 0<a<=1. An actual point inside ABF would split it into
three actual triangles of area at least s, contradicting (12).
Thus ABF has capacity zero.

Here is a short rational proof of f<3s. The actual HEF clearance and
h>=e imply e<=E0:=1-s=907/1000. Since c>=f,

    [CEF]=1-c+e(c-f)<=1-s c-E0 f.                   (13)

Using c>27/50 in (13) first proves f<71/250=.284: the exact contrary
gap is

    s(27/50)+E0(71/250)-(1-T)=329/500000>0.

Assume now f>=3s=.279. Equation (13) forces c<291/500=.582,
because

    s(291/500)+E0(3s)-(1-T)=29/1000000>0.

Together with (11) this gives h>93/100=.93, since

    L-(93/100)(291/500)=93/500000>0.

If e>=17/20=.85, the identity HEF=1-h+f(h-e) contradicts its
clearance. First replace f by 71/250 using h-e>=0. The resulting
expression decreases with h and e, so then replace h by 93/100 and
e by 17/20. The upper bound is

    [HEF]<1-93/100+(71/250)(93/100-17/20)
         =2318/25000<s,

with exact gap 7/25000. Therefore e<17/20.

Finally CEF increases with e and decreases with c and f when their
other coordinates are fixed in this substitution. Since c>=f, first
replace e by 17/20, then use c>27/50 and f>=3s. This gives

    [CEF]<1-27/50+(17/20)(27/50-3s)
         =13637/20000<T,

with exact gap 11/1000. This final contradiction proves f<3s and
the empty-triangle conclusion.

## 6. Independent verification

The standalone exact reader passes sixteen checks. A separate rational
polynomial implementation also expands all eight physical identities
used above and verifies the capacity comparison and all five strict
comparison gaps in Section 5. The geometric review checks both actual
quadrilateral containments, the positive divisor CFH, and the stated
order of every monotone substitution. These checks certify the written
inequalities; the containing placement cases retain their own open status.
