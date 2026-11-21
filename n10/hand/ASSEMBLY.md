# The ten-point Heilbronn theorem

For a ten-point configuration \(X\) in the unit square, let \(m(X)\)
be its least ordinary unsigned triangle area. Define \(g\) by
\(12g^3-27g^2+20g-4=0\), with \(63/200<g<79/250\), and set
\[
 A^*=5g^2/8-g^3/2.
\]
The [attainment proof](ATTAINMENT.md) gives a specific configuration
\(X^*\) with \(m(X^*)=A^*\).

**Theorem.** \(H_{10}=A^*\), and every maximizing
configuration is a square-symmetry image of \(X^*\), up to relabeling.

Continuity of \(m\) on the compact space of ordered ten-tuples
gives a maximizer \(Y\). Since
\(m(Y)\ge A^*>0\), the points are distinct, every triangle is
nondegenerate, and each side has at most two points. Apply the
[finite normalization](NORMALIZATION.md), Sections 1–6, by square
symmetry, relabeling and determinant-one shears. Its result \(Y'\)
has the same minimum area and belongs to one of the following cases.

| Normalized case | Hand argument |
| --- | --- |
| At least three corners | [Three- and four-corner exclusion](THREE_CORNERS_COMPLETE.md) |
| Two adjacent corners | [Type-II exclusion](TYPE_II_COMPLETE.md) |
| Two opposite corners | [Opposite-corner exclusion, §10](OPPOSITE_CORNERS.md) |
| Exactly one corner | [One-corner exclusion](C1_COMPLETE.md) |
| Corner-free with six boundary points | [Six-contact exclusion](N6_ASSEMBLY.md) |
| Corner-free with seven boundary points | [Seven-contact exclusion](N7_CENTRAL_COMPLETION_PARENT.md) |
| Corner-free with eight boundary points | [Sharp eight-contact theorem](N8_COMPLETE.md) |

The first six rows give \(m(Y')<A^*\), contradicting maximality.
The last gives \(m(Y')\le A^*\), with equality only at \(X^*\) up
to square symmetry and relabeling. Hence
\(m(Y)=m(Y')=m(X^*)=A^*\).

To transfer the equality classification to \(Y\), use the
[strict local rigidity theorem](LOCAL_RIGIDITY.md) and
[normalization reversal](NORMALIZATION.md#8-conditional-reversal-of-normalization-hp13).
If there were a last nonconstant shear, the feasible shear segment
leading to its endpoint would have the same triangle areas throughout.
Subsequent symmetries and relabeling would then give distinct
maximizers arbitrarily close to \(X^*\), contradicting strict local
rigidity. Thus \(Y\) differs from \(X^*\) only by square symmetry
and relabeling.
