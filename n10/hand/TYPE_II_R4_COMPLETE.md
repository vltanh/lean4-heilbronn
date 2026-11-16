# Complete Type-II count (1,2,4)

Every normalized configuration in the Type-II occupancy row (1,2,4)
has an ordinary unsigned triangle area strictly below A*. This note
assembles the exhaustive geometric alternatives and their written
proofs. It closes this entire count row; the other three Type-II rows
are separate obligations.

Use the four actual anchors

    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    0<b<=1/2,       0<lambda<1.

The row means that E is the only point in the left endpoint triangle,
two further actual points lie inside DCB, and four lie in the right
endpoint triangle with actual vertices B,C. The placement and count
are those of TYPE_II.md, Sections 2–3, including its shear reduction.

Suppose for contradiction that the configuration's minimum ordinary
triangle area is at least A*. In particular every actual doubled area
is at least sigma=93/1000 and also at least
tau=93073/1000000<2A*. No three actual points are collinear, no two
coincide, and no dividing actual chord contains a further point.

Consider the six actual points consisting of B,C and the four right
points. There are two exhaustive possibilities for their actual hull.

## 1. Triangular right hull

TYPE_II_R4_TRIANGLE_COMPLETE.md closes the entire triangular-hull
alternative. Its distributed-triple reduction forces one middle fan
placement. The three possible CE cuts of the central pair are then
excluded in TYPE_II_R4_LOWER_P.md, TYPE_II_R4_ONE_UPPER.md, and
TYPE_II_R4_TWO_UPPER.md. These proofs allow both positions of the
other central point when the lower-fan point is below CE, so their
three-row catalogue is exhaustive.

The single mixed-cut scalar comparison uses tau; all other arguments
may use sigma. Both thresholds follow from the competitive assumption.

## 2. Nontriangular right hull

The supporting-triangle construction gives a virtual apex R and
distinct actual contacts H,F on BR,CR. Its doubled area Omega satisfies

    Omega>9sigma,       b>103/1000,
    Omega<897/1000,     t=sigma/Omega>31/299>1/11.

TYPE_II_R4_NONTRIANGULAR.md proves these bounds without prescribing
the two central DCB points' positions. At this threshold its five-cell
catalogue excludes cells IV,V, two points in I, two in III, and any
simultaneous occupancy of I and III. Every surviving additional right
point lies strictly inside the actual quadrilateral B,H,F,C.

Consequently the actual hull has exactly those four vertices, and the
following three support-cell pairs are exhaustive.

| Pair | Complete exclusion |
|---|---|
| II+II | TYPE_II_R4_CENTRAL.md: the central endpoint-six model has minimum strictly below 31/299 |
| I+II | TYPE_II_R4_MIXED_I.md: two scalar pair-line contradictions and one physical-contact quartic, with 86 printed integer terms |
| II+III | TYPE_II_R4_MIXED_III.md: the reflected pair-line catalogue, a forced DF straddle, and two printed cubics with 28 and 33 terms |

The last two branches use their own physical D/E geometry. Reflection
of the support coordinates supplies a common pair-line catalogue; it
does not identify their different physical contact constraints. Each
branch has its own complete sign and rational-box derivations.

None of these three proofs assumes a CE side or a fan position for the
two actual points inside DCB. Thus no central placement remains after
the three support pairs are excluded.

## 3. Conclusion and boundary coverage

The actual right hull is either triangular or nontriangular. Sections
1–2 exclude both under the competitive minimum. A hull degeneracy or
an actual dividing-line equality would make an actual triangle have
zero area and was already excluded. A virtual supporting apex is
allowed to lie on a square side: the contact formulas and weak rational
boxes include those endpoints throughout. The support contacts are
distinct unless the hull is triangular, which is the separate case
in Section 1.

Every configuration in Type-II count (1,2,4) therefore has minimum
ordinary triangle area below A*. Equality is impossible in this whole
row. The proof uses the stated geometric lemmas and fully printed
integer polynomial sums; no computer-cover result or solver output
is a premise.
