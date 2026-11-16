# Seven boundary points: the complete single-exterior placement

**Theorem.** A normalized seven-contact configuration with exactly one
other point outside its contact heptagon has minimum ordinary
triangle area strictly less than A*.

This note assembles the proved local statements into the complete
single-exterior N7 exclusion. It does not claim to exclude the remaining
all-interior placements. All areas in the proof are doubled, and
s=93/1000.

## 1. The actual octagon

Assume the minimum ordinary triangle area is at least A*.
In particular every actual unsigned triangle has doubled area at least
2A*>s.
Use the contact labels and normalized domain of N7_PLACEMENTS.md.
That note excludes both lower exterior caps. Reflect across the
vertical midline if needed so that the unique exterior point lies in
the upper-left cap. The contacts and that point are

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), G=(g,z), H=(0,h),

where G lies strictly above HF and the two remaining points O,P lie
strictly inside the contact heptagon ABCDEFH. The insertion lemma in
N7_OP_LINE_CAPS.md Section 1 proves that A,B,C,D,E,F,G,H are the vertices
of a strictly convex actual octagon in that cyclic order.

The line OP avoids all eight actual vertices, since every actual
triangle has positive area. Both O,P are inside the octagon, so the
line cuts its boundary in exactly two open edges. The boundary vertices
on its two sides form two nonempty consecutive arcs. Reverse the labels
O,P, if necessary, to make the shorter arc positive. Its length is
one, two, three or four. These alternatives are exhaustive and use no
symmetry that moves the missing top contact to another position.

## 2. Every arc length is excluded

N7_OP_LINE_CAPS.md excludes all eight one-vertex arcs and all eight
two-vertex arcs.

For a three-vertex positive arc, its cyclic starting point gives exactly
eight literal possibilities. All height alternatives are covered as
follows.

| Positive arc | Complete exclusion |
|---|---|
| F,G,H | N7_THREE_FIVE_TOP.md, for every h,e |
| A,B,C; B,C,D; C,D,E; D,E,F; E,F,G; G,H,A; H,A,B | N7_THREE_FIVE_UPPER_HEIGHT.md when h>=e; N7_THREE_FIVE_LOWER_HEIGHT.md when h<=e |

The weak height alternatives overlap at h=e, so there is no unassigned
boundary case.

For two four-vertex arcs, disregard their order. Choosing the two cut
edges in the cyclic octagon gives exactly four possibilities. The two
ends of each cut are separated by four edges, and reversing OP merely
interchanges the two arcs. Their complete exclusions are:

| Crossed actual hull edges | Complete exclusion |
|---|---|
| AB and EF | N7_CORNER_LINE.md |
| BC and FG | N7_SIDE_BC_FG.md |
| CD and GH | N7_CDGH_LINE.md |
| AH and DE | N7_SIDE_AH_DE.md |

The BC/FG, CD/GH and AH/DE theorems give an actual triangle with
doubled area below s. In the AB/EF class, N7_CORNER_LINE.md excludes
every bad oblique word at that same threshold; its remaining good word
uses the strict projected-chamber bound m<A*. That terminal argument
contradicts the present competitive hypothesis even when all doubled
areas exceed s.

Each cited theorem treats its literal edge pair at every height. Thus
no rotation or relabeling of the seven-contact normalization is needed
to identify distinct classes.

Every possible line OP is excluded under m>=A*. This proves m<A*
and the theorem. The AB/EF terminal chamber does not assert the
stronger uniform gap m<93/2000.

Together with N7_UPPER_OCCUPANCY.md, N7_OPPOSITE_UPPER_CAPS.md and
N7_SAME_UPPER_CAP.md, this leaves only configurations whose three
noncontact points all lie strictly inside the contact heptagon. Their
complete count catalogue is in N7_HEPTAGON_ONE_EAR.md; the still-open
counts are separate obligations.
