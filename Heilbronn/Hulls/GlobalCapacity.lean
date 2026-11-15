module

public import Heilbronn.Hulls.ThreeInteriorTriangles
public import Heilbronn.Corners.OneCorner
public import Heilbronn.Corners.CornerFamilies

/-! # Global triangle capacity two (`hand/THREE_INTERIOR_TRIANGLES.md`, §§4-5)

Part of `THREE_INTERIOR_TRIANGLES.md` (module `Heilbronn.Hulls.ThreeInteriorTriangles`, same
namespace), split off because Corollaries 4 and 5 use the corner-triangle theorem and the C1
capacity of `ONE_CORNER.md` (§§1-4, §6), whose own proof uses Theorem 1 of this note: keeping
them in the module of Theorem 1 would make an import cycle once `ONE_CORNER` imports Theorem 1.

* `corollary4`: capacity two in Type II with `b ≤ 1/2`.
* `claim_min_enclosing_parallelogram`, `claim_normalization`: the affine normalization of an
  arbitrary competitive configuration.
* `corollary5`: global capacity two. It is proved here from `claim_normalization`, the family
  results (Corollary 2 for N, `ONE_CORNER` §6 for C1, Corollary 4 for Type II, the exclusions of C2
  and Type III), and the transfer of capacity through affine maps and relabellings.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.ThreeInteriorTriangles

/-! ### §4. The complete normalized Type-II family -/

/-- **Corollary 4** (`THREE_INTERIOR_TRIANGLES:Corollary4`). Type II has triangle capacity two.
For `D=(0,1), C=(1,1), E=(0,λ), B=(b,0)` with `0<λ<1`, `0<b≤1/2` and five further points anywhere
in the square, least area at least `A₀` implies that every actual triangle contains at most two
further points. Every hull ear is excluded: by the strip `P_y ≤ 1 - s`, the chains at `D` and `C`,
the corner-triangle theorem of `ONE_CORNER.md` for `DCE`, and, for `DCR`, a shear onto a corner
triangle.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 331-442.
Uses: THREE_INTERIOR_TRIANGLES:Theorem1, TYPE_II:EndpointTriangleTheorem,
CORNER_FAMILIES:TriangularHullLemma, CORNER_FAMILIES:SixPointTriangularHullTheorem,
ONE_CORNER:CornerTriangleOccupancyTheorem -/
theorem corollary4 {l b : ℝ} {V W X Y Z : Point} (hl : 0 < l) (hl1 : l < 1) (hb : 0 < b)
    (hb2 : b ≤ 1 / 2) (hV : V ∈ unitSquare) (hW : W ∈ unitSquare) (hX : X ∈ unitSquare)
    (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) :
    TriangleCapacityTwo (typeIIConfig l b V W X Y Z) := by
  sorry

/-! ### §5. Unrestricted triangle capacity two -/

/-- **Claim** (`THREE_INTERIOR_TRIANGLES:claim-min-enclosing-parallelogram`, made up). A minimum-area
enclosing parallelogram exists. For nine points in the square with positive least area, some
affine map with `|det| ≥ 1` sends them into the square so that the image square is a minimum-area
enclosing parallelogram: no affine map of absolute determinant greater than one sends the image
into the square. The proof is by compactness over pairs of unit normals, with
`𝒜(u, v) = w(u) w(v)/|det(u, v)|`.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 455-477. -/
theorem claim_min_enclosing_parallelogram {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hpos : 0 < minTriangleArea P) :
    ∃ a b c d e f : ℝ, (∀ i, affineMap a b c d e f (P i) ∈ unitSquare) ∧
      1 ≤ |a * d - b * c| ∧
      ∀ a' b' c' d' e' f' : ℝ,
        (∀ i, affineMap a' b' c' d' e' f' (affineMap a b c d e f (P i)) ∈ unitSquare) →
          |a' * d' - b' * c'| ≤ 1 := by
  sorry

/-- **Claim** (`THREE_INTERIOR_TRIANGLES:claim-normalization`, made up). Normal form without
maximality. Every nine-point configuration in the square with least area at least `A₀` has an
affine image, by a map with `|det| ≥ 1` and a relabelling, that lies in the square and belongs to
N, C1, C2, Type II with `b ≤ 1/2`, or Type III. The proofs of `BOUNDARY_REDUCTION.md` and
`GLOBAL_STRUCTURE.md` use only the minimum-parallelogram property, which their determinant-one
shears preserve. The Type-II step is the shear normalization of `TYPE_II.md` §2.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 479-497.
Uses: THREE_INTERIOR_TRIANGLES:claim-min-enclosing-parallelogram,
BOUNDARY_REDUCTION:claim-side-contact, BOUNDARY_REDUCTION:claim-overlap,
BOUNDARY_REDUCTION:claim-adjacent-shear, GLOBAL_STRUCTURE:Lemma1, GLOBAL_STRUCTURE:Corollary2,
GLOBAL_STRUCTURE:claim-N-selection, GLOBAL_STRUCTURE:claim-C1-selection,
GLOBAL_STRUCTURE:claim-C2-selection, TYPE_II:ShearNormalization -/
theorem claim_normalization {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) :
    ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 9)), 1 ≤ |a * d - b * c| ∧
      (∀ i, affineMap a b c d e f (P (σ i)) ∈ unitSquare) ∧
      (IsN (affineMap a b c d e f ∘ P ∘ σ) ∨ IsC1 (affineMap a b c d e f ∘ P ∘ σ) ∨
        IsC2 (affineMap a b c d e f ∘ P ∘ σ) ∨ IsTypeIIHalf (affineMap a b c d e f ∘ P ∘ σ) ∨
        IsTypeIII (affineMap a b c d e f ∘ P ∘ σ)) := by
  sorry

/-- **Corollary 5** (`THREE_INTERIOR_TRIANGLES:Corollary5`). Global triangle capacity. In any
nine-point configuration in the unit square with least area at least `A₀`, every triangle spanned
by three of its points contains at most two further points. No normalization or maximizing
hypothesis is assumed.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 444-506.
Uses: THREE_INTERIOR_TRIANGLES:claim-normalization, OPPOSITE_CORNERS:Corollary2,
CORNER_FAMILIES:TypeIII-complete, THREE_INTERIOR_TRIANGLES:Corollary2,
ONE_CORNER:GlobalC1OccupancyCorollary, THREE_INTERIOR_TRIANGLES:Corollary4 -/
theorem corollary5 {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) : TriangleCapacityTwo P := by
  obtain ⟨a, b, c, d, e, f, σ, hdet, hsq, hfam⟩ := claim_normalization hP hA
  set Q := affineMap a b c d e f ∘ P ∘ σ with hQ
  have hdet0 : a * d - b * c ≠ 0 := by
    intro h; rw [h, abs_zero] at hdet; linarith
  have hQmin : A₀ ≤ minTriangleArea Q := by
    rw [hQ, minTriangleArea_affineMap, minTriangleArea_comp_perm]
    have := minTriangleArea_nonneg P
    nlinarith
  have hQsq : ∀ i, Q i ∈ unitSquare := hsq
  have capQ : TriangleCapacityTwo Q := by
    rcases hfam with ⟨a', h', b', c', d', f', X, Y, Z, hN, hX, hY, hZ, hQe⟩ |
      ⟨h', c', d', f', W, X, Y, Z, hC, hW, hX, hY, hZ, hQe⟩ |
      ⟨h', c', d', f', X, Y, Z, hC, hX, hY, hZ, hQe⟩ |
      ⟨l, b', V, W, X, Y, Z, hb, hb2, hl, hl1, hV, hW, hX, hY, hZ, hQe⟩ |
      ⟨U, V, W, X, Y, Z, hU, hV, hW, hX, hY, hZ, hQe⟩
    · rw [hQe] at hQmin ⊢
      exact corollary2 hN hX hY hZ hQmin
    · rw [hQe] at hQmin ⊢
      intro i j k _
      exact le_trans (Set.ncard_le_ncard (fun m hm => Or.inl hm))
        (OneCorner.globalC1OccupancyCorollary h' c' d' f' hC W X Y Z hW hX hY hZ hQmin i j k)
    · rw [hQe] at hQmin
      exact absurd hQmin (not_le.2 (OppositeCorners.corollary2_lt_A₀ h' c' d' f' hC X Y Z hX hY hZ))
    · rw [hQe] at hQmin ⊢
      exact corollary4 hl hl1 hb hb2 hV hW hX hY hZ hQmin
    · rw [hQe] at hQmin
      exact absurd hQmin (not_le.2 (CornerFamilies.typeIII_lt_A₀ U V W X Y Z hU hV hW hX hY hZ))
  have capPσ : TriangleCapacityTwo (P ∘ σ) := TriangleCapacityTwo.of_affine hdet0 capQ
  have := TriangleCapacityTwo.comp capPσ (f := σ.symm) σ.symm.injective
  have e : (P ∘ σ) ∘ σ.symm = P := by funext i; simp
  rwa [e] at this

end Heilbronn.ThreeInteriorTriangles
