module

public import Heilbronn.Corners.CornerFamilies.NearSquare
public import Heilbronn.Corners.CornerFamilies.ThreeThree

/-! # Corner families: a hand exclusion from triangulation stars (`hand/CORNER_FAMILIES.md`)

**Role.** On the primary route: it closes Type III (`UNRESTRICTED.md` lines 79–81: every
configuration containing three corners of the square has minimum area `≤ 7/128 < A₀`). The
Type-II assembly also uses it for its Type-III alternative. Its general lemmas are reused by
about fifteen other notes: the two-interior-point lemma (13), the six-point triangular-hull
theorem (14) with the seven-face mesh identities (16)–(20), the seven-point triangular-hull
lemma (5), the support-triangle (nontriangular-hull) lemma at `7S/64`, the projective transfer
of §9, and §§10–12 with variable threshold and displaced base (`ONE_CORNER.md`).

**Setting.** Type III: `typeIIIConfig U V W X Y Z = ![A, B, C, U, V, W, X, Y, Z]`,
`A = (0,0)`, `B = (0,1)`, `C = (1,1)`, six free points of the closed square; "upper" means
`y > x` (`upperCount`), "lower" `y < x`; a free point on `y = x` gives a zero area with `A, C`.

**The note is split into parts** (each its own module, all in the namespace
`Heilbronn.CornerFamilies`):

* `CornerFamilies/Stars.lean` (§§1–5): star lemma (2), triangular-hull lemma (5), Type-III
  exclusion (1) for `≥ 4` upper points, global occupancy corollary, residual regions (7)–(8);
* `CornerFamilies/SupportTriangle.lean` (§6): nontriangular-hull (support-triangle) lemma and its
  affine form `7S/64`, endpoint lemma, exclusion (9) for `≤ 1` upper point;
* `CornerFamilies/SixPoint.lean` (§§7–8): two-interior-point lemma (13), upper-triple
  restriction, `2+4` hull, six-point theorem (14), mesh (15)–(20), sharpness, (21);
* `CornerFamilies/NearSquare.lean` (§9): projective transfer (23)–(25), near-square
  quadrilateral lemma (22), exclusion of the `2+4` class;
* `CornerFamilies/Mesh.lean` (§§10–11): quantitative mesh lemma (26)–(27), (33), (36), uniform
  signs (34), with threshold `s` and rectangle `[0, L] × [1 - M, 1]` as parameters;
* `CornerFamilies/ThreeThree.lean` (§12): capacity one on each side of `BY`, (41), (45),
  exclusion of the `3+3` class;
* this module: the complete Type-III exclusion (`typeIII_complete`, `typeIII_lt_A₀`).

**Flags** (details in the parts): the triangulation claim of §2 is stated in star form
(`claim_deg4or5`); the gap at lines 161–165 concerns only a proof step
(`claim_empty_convex_quad` is stated, true); the mesh labelling in fixed coordinates
(`claim_mesh_labelling`, Gap 3) is an unstated step of the manuscript.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.CornerFamilies

/-- **Type-III exclusion** (`CORNER_FAMILIES:TypeIII-complete`): every Type-III configuration (the
corners `A = (0,0)`, `B = (0,1)`, `C = (1,1)` and six free points of the square) has minimum
triangle area at most `7/128`. The upper count is `0, …, 6`: counts `0, 1` by (9), `2` by the
`2+4` class, `3` by the `3+3` class, `4–6` by (1). `hand/CORNER_FAMILIES.md`, lines 5–9,
294–302, 1457–1459.

Uses: CORNER_FAMILIES:TypeIII-ge4upper, CORNER_FAMILIES:TypeIII-le1upper,
CORNER_FAMILIES:TypeIII-2+4, CORNER_FAMILIES:TypeIII-3+3 -/
theorem typeIII_complete (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    minTriangleArea (typeIIIConfig U V W X Y Z) ≤ 7 / 128 := by
  sorry

/-- **Type-III exclusion** (`CORNER_FAMILIES:TypeIII-complete`), the form used by the assembly:
no Type-III configuration has minimum area `A₀`, since `7/128 < A₀`.
`hand/CORNER_FAMILIES.md`, lines 5–9, 406–412.

Uses: CORNER_FAMILIES:TypeIII-complete -/
theorem typeIII_lt_A₀ (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    minTriangleArea (typeIIIConfig U V W X Y Z) < A₀ := by
  sorry

end Heilbronn.CornerFamilies
