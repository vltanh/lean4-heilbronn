# N7 central: the actual ABEF quadrilateral has capacity two

Use the ten actual points, minimum doubled triangle area s=93/1000,
strictly convex actual heptagon ABCDEFH and contact orders of
[N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md). In particular

    A=(0,a), B=(b,0), E=(1,e), F=(f,1),
    a<=e, b<=f,

and G,O,P are distinct actual interior points of that heptagon.
The quadrilateral ABEF is strictly convex in the displayed cyclic
order: each of its four cyclic vertex triples has positive actual
orientation, inherited from the strict actual heptagon.

**Lemma.** Actual ABEF contains at most two of G,O,P. If two of
these points are strictly inside ABEF, and three inward edge tests
at the remaining point are positive, its fourth inward edge test
is negative.

The actual doubled quadrilateral area, computed by diagonal AE, is

    [ABEF]=[ABE]+[AEF]=1-(f-b)(e-a)<=1.             (1)

Both factors in the remainder are nonnegative by the stated contact
orders. Three additional actual interior points in a convex actual
quadrilateral cost at least 93/91>1, by the quadrilateral theorem
used in the common setup. Therefore ABEF has capacity two.

For a point X outside {A,B,E,F}, its four inward edge tests are

    ABX, BEX, EFX, FAX.                            (2)

If all four were positive, X would be strictly inside the actual
convex ABEF. Thus two existing occupants and three positive tests
at a third point force the remaining test to be nonpositive. It
cannot vanish: its two edge vertices and X are three distinct
actual points, whose unsigned doubled area is at least s>0.
The remaining test is consequently negative.

Literal trace rows using this implication have the form

    ["quad-cap","ABEF",[U,V],X,["central-ABEF-cap2"]]

with U,V,X a permutation of G,O,P. Such a row must explicitly
verify U,V inside ABEF and the three positive tests from (2).
It uses no scalar bound from an earlier stage. A direct terminal
with all three strict actual placements uses the same fixed source.

The source-complete reader
[N7_CENTRAL_COMPLETION_QUAD_CAP_check.py](N7_CENTRAL_COMPLETION_QUAD_CAP_check.py)
independently expands (1) from the actual coordinates and checks
the strict rational cost gap 93/91-1=2/91. Independent mathematical
review accepts the identity, strict convexity, capacity cost and
four-edge sign implication. The separate
[audit_n7_box_caps.py](audit_n7_box_caps.py) independently reconstructs
the actual area identity and strict cost gap with fresh arithmetic.
Both exact readers pass. This local lemma does not close either
central root or an upper-pair word.
