# Eight boundary points: eight remaining orientation classes

## Scope and hypotheses

This is an exhaustive **orientation** reduction for the eight-boundary-point
gate. It is not a reduction of an arbitrary nine-point optimizer to eight
boundary points, and an orientation class retains continuous coordinate
parameters.

Use the labels and notation of [`EIGHT_BOUNDARY.md`](EIGHT_BOUNDARY.md):

\[
V_0=A,\ V_1=B,\ V_2=C,\ V_3=D,\ V_4=E,\ V_5=F,\ V_6=G,\ V_7=H.
\]

Assume every triangle has area at least \(A_0>0\). The incidence lemma gives
exactly two points on each open side. The exterior and side-quadrilateral
exclusions put the ninth point \(O\) strictly inside the boundary octagon
and outside each of \(ABCD,CDEF,EFGH,GHAB\).

No three of the nine points are collinear. Consequently none of the rays
\(OV_i\) are parallel or antiparallel to another ray.

## 1. Encoding the directions by eight small integers

The rays \(OV_i\) occur in the same counterclockwise order as the octagon
vertices. For each index \(i\), let \(k_i\) be the number of subsequent rays
strictly before the opposite direction \(-OV_i\). Equivalently,

\[
\det(V_i-O,V_{i+j}-O)>0
\quad\Longleftrightarrow\quad 1\le j\le k_i,
\qquad 1\le j\le7,                                      \tag{1}
\]

where vertex indices are read modulo eight. Opposite signs of the two orders
of a determinant give the complementary relation

\[
j\le k_i\quad\Longleftrightarrow\quad
8-j>k_{i+j}.                                               \tag{2}
\]

The excluded side quadrilaterals contain all eight triangles of three
consecutive vertices. Since \(O\) is outside every such ear triangle,
every angular gap from \(V_i\) to \(V_{i+2}\) is less than \(\pi\).
Thus

\[
2\le k_i\le5.                                              \tag{3}
\]

For example, the ear cut off by \(V_iV_{i+2}\) lies on the opposite side
of that chord from the other five vertices. Its exclusion puts \(O\) on
the latter side, precisely the positive determinant in (1) for \(j=2\).
The upper bound in (3) follows from (2).

Similarly, exclusion of the four side quadrilaterals gives

\[
k_0,k_2,k_4,k_6\ge3,\qquad
k_1,k_3,k_5,k_7\le4.                                       \tag{4}
\]

For instance, \(O\) is on the inner side of \(AD\), so \(k_0\ge3\);
relation (2) gives \(k_3\le4\). Rotation gives the other six inequalities.

## 2. A six-by-six finite list, derived directly

Consider a block of four entries

\[
(a,b,c,d)=(k_{2i},k_{2i+1},k_{2i+4},k_{2i+5}).
\]

By (3)-(4), \(a,c\in\{3,4,5\}\) and \(b,d\in\{2,3,4\}\).
The opposite-ray pairs and the two unfixed length-three chords give

\[
\begin{aligned}
a\ge4&\ \Longleftrightarrow\ c=3,&
b=4&\ \Longleftrightarrow\ d\le3,\\
b=2&\ \Longleftrightarrow\ c=5,&
d=2&\ \Longleftrightarrow\ a=5.
\end{aligned}                                              \tag{5}
\]

These implications leave exactly the following six possibilities:

| Block | \((a,b,c,d)\) |
|---|---|
| \(T_1\) | \((3,2,5,4)\) |
| \(T_2\) | \((3,3,4,4)\) |
| \(T_3\) | \((3,4,4,3)\) |
| \(T_4\) | \((4,3,3,4)\) |
| \(T_5\) | \((4,4,3,3)\) |
| \(T_6\) | \((5,4,3,2)\) |

To check completeness without an enumeration program, one of \(a,c\) is
three and the other is four or five. If the other is five, the last two
conditions of (5) force the remaining two entries. If the other is four,
the remaining entries are three and four in either order. These give
\(2(1+2)=6\) possibilities.

The two blocks \((k_0,k_1,k_4,k_5)\) and \((k_2,k_3,k_6,k_7)\)
cover all eight entries, so there are at most \(6^2=36\) words. This
argument only uses necessary conditions. It is therefore a complete cover
even without asserting that every listed word is geometrically realizable.

## 3. Quotient by square symmetries

Rotation and reflection act on the words as

\[
(\rho_r k)_i=k_{i+2r},\qquad
(\sigma_r k)_i=7-k_{1-i+2r},\qquad r=0,1,2,3.               \tag{6}
\]

Reflection reverses the cyclic order, which explains the replacement of
\(k_i\) by \(7-k_i\). The odd index in the reflection formula keeps the
paired vertices on their corresponding square sides.

There are eight classes. The following table supplies one representative
of each and the size of its orbit among the 36 words.

| Class | \((k_0,k_1,k_2,k_3,k_4,k_5,k_6,k_7)\) | Orbit size | Hand bound currently available |
|---|---|---:|---|
| R1 | \((3,2,3,2,5,4,5,4)\) | 4 | Open |
| R2 | \((3,2,3,3,5,4,4,4)\) | 8 | Open |
| R3 | \((3,2,3,4,5,4,4,3)\) | 4 | Sharp theorem in `HAND_PROOF.md` |
| R4 | \((3,2,4,3,5,4,3,4)\) | 4 | Open |
| R5 | \((3,3,3,3,4,4,4,4)\) | 4 | Open |
| R6 | \((3,3,3,4,4,4,4,3)\) | 4 | Open |
| R7 | \((3,3,4,3,4,4,3,4)\) | 4 | Open |
| R8 | \((3,4,3,4,4,3,4,3)\) | 4 | Open |

Here is the complete table for the 36 block pairs. The row specifies
\((k_0,k_1,k_4,k_5)\), and the column specifies \((k_2,k_3,k_6,k_7)\).
Each entry is the class number above. The table can be checked solely by
the eight substitutions in (6).

| First block / second block | \(T_1\) | \(T_2\) | \(T_3\) | \(T_4\) | \(T_5\) | \(T_6\) |
|---|---:|---:|---:|---:|---:|---:|
| \(T_1\) | 1 | 2 | 3 | 4 | 2 | 1 |
| \(T_2\) | 2 | 5 | 6 | 7 | 5 | 2 |
| \(T_3\) | 4 | 7 | 8 | 8 | 6 | 3 |
| \(T_4\) | 3 | 6 | 8 | 8 | 7 | 4 |
| \(T_5\) | 2 | 5 | 7 | 6 | 5 | 2 |
| \(T_6\) | 1 | 2 | 4 | 3 | 2 | 1 |

The orbit sizes sum to 36, and the displayed orbits are pairwise disjoint.
Thus no unlisted orientation class survives the preceding exclusions.

## 4. Why R3 is already closed

For its displayed representative,

\[
k_0\ge3,\quad k_3\ge4,\quad k_2\ge3,\quad k_6\ge4,
\quad k_1<3.
\]

The first two conditions put \(O\) inside \(ADH\), the next two put it
inside \(CFG\), and the last puts it on the side of \(BE\) containing
the bottom-right corner. These are exactly the five orientation conditions
of Theorem 1 in `HAND_PROOF.md`. That theorem bounds the minimum area by
\(A_0\) and forces the candidate at equality.

**Remaining task.** Prove the corresponding upper bound in R1, R2, and
R4-R8. Once those seven continuous orientation classes are bounded, the
entire eight-boundary gate is closed. The separate global normalization
families in `GLOBAL_STRUCTURE.md` still require a theorem forcing the
needed boundary saturation or direct bounds.

The optional `check_radial.py` verifies the two small printed tables and
the symmetry action. It is a transcription diagnostic, not a premise
substituting for the finite derivation above.
