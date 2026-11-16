# Complete exclusion of two adjacent occupied corners

Every ten-point configuration in the unit square with two adjacent
occupied corners has an ordinary unsigned triangle area strictly below
A*. This note assembles the complete hand proof of the adjacent-corner
family II, including the three-corner alternatives produced by its
normalizing shears. No computer-assisted global covering theorem is
used.

## 1. The normalization and its boundary alternatives

Coincident points or a collinear actual triple give minimum zero, so
assume neither occurs. If at least three square corners are occupied,
the complete independent exclusion is
[THREE_CORNERS_COMPLETE.md](THREE_CORNERS_COMPLETE.md), including its
four-corner case. Otherwise move the two adjacent corners to

    D=(0,1),       C=(1,1).

For the normalized family II of NORMALIZATION.md, the two other
selected actual anchors are

    E=(0,lambda),       B=(b,0).

The values b=0 or 1, or lambda=0, give a third corner; lambda=1 repeats
D. Thus the nondegenerate two-corner case has 0<b<1 and 0<lambda<1.
The other six points remain unrestricted square points.

For completeness, an arbitrary competitive configuration with these
two corners can be brought to this form as well. Let y0 be its least
ordinate. Since positive minimum rules out every point lying on the
top side, y0<1. The map

    (x,y) -> (x,(y-y0)/(1-y0))

keeps the two top corners fixed, puts a point on the bottom, keeps all
points in the square, and does not decrease triangle areas. If there
is no other left contact, the finite positive minimum

    c=min_{y_i<1} x_i/(1-y_i)

gives the determinant-one shear

    (x,y) -> (x-c(1-y),y).

It keeps every point in the square, fixes D,C, preserves a bottom
contact, and creates a left contact. If the left and bottom contacts
coincide, a third corner appears. Otherwise they give the distinct
anchors E,B above. This is the adjacent-corner construction in
NORMALIZATION.md, with the preliminary vertical expansion allowing
the present statement for arbitrary configurations rather than only
maximizers.

If b>1/2, the determinant-one shear and reflection in TYPE_II.md,
Section 2 produce either a third occupied corner or another Type-II
configuration satisfying

    0<b<=1/2,       0<lambda<1.

Every shear and square reflection preserves unsigned triangle areas;
the preliminary expansion can only increase them. A minimum at least
A* in the original configuration would therefore give the same lower
bound in one of the resulting configurations. The three-corner branch
is already impossible, so it remains to exclude this normalized
Type-II case. The three-corner proof is independent of the Type-II
assembly, so this use introduces no circular dependency.

## 2. Exactly four occupancy rows

Suppose the minimum ordinary area is at least A*. The exact threshold
comparison in FOUR_CORNERS.md gives

    sigma=93/1000 < tau=93073/1000000 < 2A*.

In particular every actual unsigned doubled triangle area is at least
both sigma and tau.

The actual chords DB and BC partition the remaining points among

    TL=conv{D,B,(0,0)},
    TC=conv{D,C,B},
    TR=conv{B,C,(1,0)}.

Let ell,c0,r count the seven actual points other than D,C,B in these
triangles. No such point lies on either actual chord; E belongs to TL.
Points on the outside square edges are counted in the corresponding
side triangle. Thus

    ell+c0+r=7,       ell>=1.

The endpoint and occupancy bounds of TYPE_II.md, Sections 1--3 give

    ell<=2,       c0<=3,       r<=4.

Their only fifth candidate row, (2,1,4), is excluded there by adding
the four-point left-endpoint and six-point right-endpoint bounds.
Consequently the following four rows are exhaustive, and each now has
a complete exclusion.

| Count (ell,c0,r) | Complete hand proof |
|---|---|
| (1,2,4) | [TYPE_II_R4_COMPLETE.md](TYPE_II_R4_COMPLETE.md) |
| (1,3,3) | [TYPE_II_133_COMPLETE.md](TYPE_II_133_COMPLETE.md) |
| (2,2,3) | [TYPE_II_223_COMPLETE.md](TYPE_II_223_COMPLETE.md) |
| (2,3,2) | [TYPE_II_232_COMPLETE.md](TYPE_II_232_COMPLETE.md) |

The first row uses tau in one scalar comparison and sigma elsewhere.
The other three rows are excluded already at doubled threshold sigma.
Both thresholds follow from the competitive minimum, so the four
proofs apply simultaneously without strengthening its hypothesis.

## 3. Exhaustive conclusion

The count reduction does not impose any further central placement,
support-cell symmetry, or actual side-hull type. Each count assembly
covers all of its own alternatives. In particular, the final
(1,3,3) proof treats triangular and nontriangular actual right hulls
separately and closes all three surviving nontriangular support cells.

The fixed rational tables in the component proofs are written
inequality arguments: every sign branch is exhaustive, every factor
is proved nonnegative on its stated case, and every terminal sum has
an exact negative upper bound. Their independent arithmetic replays
are transcription checks, not premises from numerical optimization.

All normalized counts are therefore impossible under the assumption
that the minimum ordinary area is at least A*. The only alternative
outcomes of normalization are the separately excluded three-corner
family or a configuration with zero minimum. Hence no configuration
with two adjacent occupied corners attains A*, and the entire
adjacent-corner family II is closed.
