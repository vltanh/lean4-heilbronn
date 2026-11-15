# All sharp radial orientations of the seven-boundary exterior case

Use the normalization of [SEVEN_BOUNDARY_CAPS.md](SEVEN_BOUNDARY_CAPS.md):

\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\ D=(1,d),\ E=(1,e),
\quad F=(f,1),\quad b\le f\le c,\quad f\le1/2.
\]

The side orders are strict. Suppose the free point \(X=(g,k)\)
belongs to the far upper exterior cap, and name the other free point P.
In a configuration whose minimum area is at least \(A_0\), the preceding
cap results give

\[
f<g<1,\quad e<k\le1,\quad k>h,
\]

and P lies inside the original boundary heptagon. The full hull is the
convex octagon

\[
                         A,B,C,D,E,X,F,H.               \tag{1}
\]

The two notes [SEVEN_BOUNDARY_TOP_CAP.md](SEVEN_BOUNDARY_TOP_CAP.md) and
[SEVEN_BOUNDARY_TOP_CAP_RIGHT.md](SEVEN_BOUNDARY_TOP_CAP_RIGHT.md) exclude
P from all four side quadrilaterals

\[
ABCD,\quad CDEX,\quad EXFH,\quad FHAB.                  \tag{2}
\]

In particular \(P\in ADEH\cap BCXF\), with strict side tests.

**Theorem 1.** Every configuration in this exterior case whose radial
word belongs to class R3 has minimum area at most \(A_0\). Equality
forces \(k=1\) and the known eight-boundary construction, up to square
symmetry and relabeling. One of the four R3 words has the stronger bound
strictly below \(7/128\).

The other seven classes are closed in the later
[complete exterior theorem](SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md).

## 1. The same finite word cover applies to this octagon

Label the vertices in (1) as \(V_0,\ldots,V_7\), and let \(r_i\)
count the subsequent rays \(PV_j\) before the opposite ray to \(PV_i\).
There are no collinear triples. Convexity gives their cyclic order, and

\[
j\le r_i\quad\Longleftrightarrow\quad8-j>r_{i+j}.
\]

The four excluded quadrilaterals (2) contain all consecutive ears.
They therefore imply

\[
2\le r_i\le5,\qquad
r_0,r_2,r_4,r_6\ge3,\qquad r_1,r_3,r_5,r_7\le4.
\]

These are exactly the hypotheses used in Sections 1--3 of
[RADIAL_CATALOGUE.md](RADIAL_CATALOGUE.md). Its six-block derivation
therefore gives the same complete cover by 36 words. This inference uses
the convex octagon and (2); it does not require X to be a square-boundary
point. The square symmetries still act on these labels by rotations
through an even index shift and reflections through an odd index shift.
Their action gives the same eight classes as a finite list of sign words.

## 2. Four explicit coordinate transformations

The four R3 words, and a transformation sending each to the representative
\((3,2,3,4,5,4,4,3)\), are as follows. In the last column the letters
refer to the transformed sharp-chamber coordinates, with cyclic order
\(A',B',C',D',E',F',G',H'\).

| Original radial word | Square transformation | Displaced sharp vertex |
|---|---|---|
| \((3,2,3,4,5,4,4,3)\) | Identity | \(F'=X\) |
| \((3,4,5,4,4,3,3,2)\) | \((x,y)\mapsto(1-x,y)\) | \(G'\) |
| \((4,3,3,2,3,4,5,4)\) | \((x,y)\mapsto(x,1-y)\) | \(C'\) |
| \((5,4,4,3,3,2,3,4)\) | \((x,y)\mapsto(1-x,1-y)\) | \(B'\) |

For example, the three nontrivial permutations of the old labels are
\(V_{3-i}\), \(V_{7-i}\), and \(V_{i+4}\), respectively.
A reflection replaces each corresponding r entry by \(7-r\);
the half-turn only permutes the entries. These substitutions verify every
row directly and list the whole R3 orbit.

The representative puts P inside \(A'D'H'\) and \(C'F'G'\),
and on the \(B'E'\) side containing the lower right corner.
Thus all five interior oriented areas in the sharp-chamber theorem are
positive. The other six selected triangles are hull triangles with their
stated cyclic orientations. Every selected unsigned area is at least the
minimum area of the original configuration.

### Identity: F moves inward

Here \(F'=(g,k)\), \(G'=(f,1)\), and the other six labels
are unchanged. Section 5 of
[GLOBAL_COMPLETION.md](GLOBAL_COMPLETION.md) applies to the entire
F-moving sharp chamber. It gives the sharp bound, and equality forces
\(k=1\) and the candidate.

### Vertical reflection: the projection-restricted G chamber

The reflected top and bottom coordinates satisfy

\[
G'=(1-g,k),\quad F'=(1-f,1),\quad C'=(1-b,0),
\quad E'=(1,h).
\]

Hence \(f'=1-f\le1-b=c'\) by \(b\le f\), and
\(G'_y=k>h=e'\). These are precisely the two extra hypotheses of
[SHARP_G_MOVING_PROJECTION.md](SHARP_G_MOVING_PROJECTION.md).
Its strict bound below \(7/128\) contradicts a minimum area at least
\(A_0\), excluding this entire word.

### Horizontal reflection: C moves inward

Now \(C'=(g,1-k)\) and \(A'=(0,1-h)\).
The upward displacement \(t'=1-k\) satisfies

\[
                         0\le t'<1-h=a'
\]

because \(k>h\). The C-moving theorem in
[SHARP_BC_MOVING.md](SHARP_BC_MOVING.md) therefore applies. It gives
the sharp bound and forces \(t'=0\), hence \(k=1\), at equality.

### Half-turn: B moves inward

Here \(B'=(1-g,1-k)\) and \(D'=(1,1-h)\). Thus

\[
                         0\le t'=1-k<1-h=d'.
\]

This implies the B-moving theorem's required \(t'\le d'\).
The same note gives the sharp bound and again forces \(k=1\)
and the candidate at equality.

Every transformation preserves unsigned triangle areas. The four rows
therefore prove Theorem 1, including the equality statement. \(\square\)

## Completion of the exterior case and verification

The present theorem completes the entire sharp class R3.
[SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md](SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md)
closes R1, and
[SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md](SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md)
closes all remaining 28 words by explicit rational cubic inequalities.
That later theorem assembles the complete exterior result, including
this note's equality classification.

[check_seven_boundary_top_cap_radial.py](check_seven_boundary_top_cap_radial.py)
checks the four-word orbit, each sign permutation, the exact coordinate
maps, and all extra height/projection hypotheses used above.
