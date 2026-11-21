# Complete exclusion of the adjacent-corner count (2,3,2)

Use the determinant-one normalization in TYPE_II.md, with

    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    0<b<=1/2, 0<lambda<1,

and every unsigned actual doubled triangle area at least 93/1000.
The count (2,3,2) has one further left point P, three central points
strictly inside DBC, and two right points. The three central points
must be distributed by CLUSTERED_TRIANGLE.md.

There are exactly two hull alternatives for the four actual left
points D,E,P,B. If their hull is triangular, it is DBE and P is
strictly inside it. Indeed D,E are distinct on the left square edge,
while B is on the bottom and P lies in the open side of DB; no other
one of these four points can be interior to the triangle of the other
three. A point on an actual hull edge would give a zero-area triangle.
The complete eight-point theorem in TYPE_II_232_LEFT_TRIANGLE.md
excludes this alternative. Its two final signs are covered by the
analytic TYPE_II_CENTRAL_CHAMBER.md and one printed 16-term cubic.

If their hull is quadrilateral, its cyclic order is D,E,P,B.
TYPE_II_232_LEFT_QUADRILATERAL.md excludes this alternative by a
complete geometric reduction to sixteen leaves, five direct geometric
contradictions, and eleven printed fixed cubic sums with 410 terms.

Both theorems use only D,E,P,B,C and the three central points.
Consequently both right points are unrestricted throughout: all their
side-hull alternatives and all their boundary placements are covered.
No reflection of a triangular right hull, which could violate b<=1/2,
is needed.

Thus the whole count (2,3,2) is impossible. Along with the previously
completed (1,2,4) and (2,2,3) counts, the only remaining Type-II count
is (1,3,3). This assembly does not check off the full Type-II parent.
