# Complete Type-II (1,2,4) triangular-right exclusion

Consider the normalized Type-II count (1,2,4) from TYPE_II.md, with
anchors

    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0).

There are two central points inside DCB and four further points in the
right endpoint container with actual vertices B,C. Suppose the actual
hull of those six right points is triangular. Then the ten-point
configuration has an ordinary unsigned triangle area strictly below A*.
This note assembles the exhaustive hand proof of that whole child.

Assume otherwise. Every actual doubled area is at least
tau=93073/1000000<2A*, and hence at least sigma=93/1000 as well. The
right hull can be written BCR, with actual interior points X,Y,Z.
Their triple is distributed by CLUSTERED_TRIANGLE.md; its labeling
and every possible placement of the central points are treated in
TYPE_II_R4_TRIANGLE.md. That note forces exactly

    P inside DBY,       Z inside DYX,       Q inside DXC,

with the signs D positive and B negative for the directed line PQ.
Its upper- and lower-Z alternatives have been excluded by explicit
area inequalities, so the labeling loses no central fan case.

Neither central point lies on CE, since C,E and that point would be
an actual collinear triple. Thus the following three rows are exhaustive.

| CE sides of P,Q | Complete exclusion |
|---|---|
| P below; Q on either side | TYPE_II_R4_LOWER_P.md |
| P above; Q below | TYPE_II_R4_ONE_UPPER.md |
| P above; Q above | TYPE_II_R4_TWO_UPPER.md |

The P-below proof first makes EBY empty, then treats both ER sides of
Y and P. Its only remaining arrangement would put Y,Z in the actual
convex quadrilateral EBRP. A barycentric calculation bounds its doubled
area below 721/1000, while the two-interior-point theorem requires at
least 8sigma=744/1000.

In the P-above/Q-below case, both actual triangles ECY and PCY must
contain Q,Z. Their two-interior-point lower bounds contradict explicit
opposing scalar upper bounds, split at b=327/2500. The final strict
comparison uses tau; it is valid under the competitive assumption above.

For both points above CE, TYPE_II_R4_UPPER_P.md first fixes all
central-pair anchor signs and the unique nested chamber. The second
distributed triple in ECR then supplies the last sign needed in
TYPE_II_R4_TWO_UPPER.md. One fully printed cubic with 76 positive
integer entries, maximum 46, has a strictly negative rational upper
bound on the proved box, excluding that entire chamber. All signs and
box endpoints are consequences of the written geometry. No solver or
external coefficient file is a premise.

Every triangular-right configuration is therefore excluded. Equality
cannot occur in this child, and all dividing lines are actual chords,
so no positive-minimum boundary face was omitted. The subsequent
TYPE_II_R4_COMPLETE.md combines this child with the completed
nontriangular right-hull proof to close the entire count (1,2,4).
The other three Type-II count rows remain separate obligations.
