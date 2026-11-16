module

public import Heilbronn.Nine.Assembly.SixContacts
public import Heilbronn.Nine.Assembly.FamilyC1
public import Heilbronn.Nine.EightBoundary.Theorem13
public import Heilbronn.Nine.SevenBoundary.MixedAboveCompletion

/-!
# Assembly: the family N

`docs/proof/nine/UNRESTRICTED.md`, Section 4. A configuration `nConfig a h b c d f X Y Z` of family N with
least area at least `A₀` is optimal. The six anchors are on the boundary of the square; split on
the free points.

* A free point at a corner: at `(0,0)`, `(0,1)` it is collinear with `A, H`, at `(1,0)` with
  `B, C`, so the least area is `0`. At `(1,1)` the configuration is, after the half-turn
  `(x, y) ↦ (1 - x, 1 - y)` and a relabelling, a C1 configuration (corner `(0,0)`, anchors
  `F, H, C, D` with parameters `(1-d, 1-f, 1-h, 1-c)`, free points the images of `A, B` and of the
  two other free points), excluded by `c1_exclusion` (`n_corner11_false`). The manuscript's
  normalization puts such a configuration in C1 from the start; the family predicate `IsN` of
  `GlobalStructure.theorem3` does not exclude it, so the assembly does it here.
* No free point at a corner, at least two on a side: at least eight boundary points,
  `EightBoundary.theorem13`.
* Exactly one on a side: exactly seven contacts, none at a corner,
  `SevenBoundaryMixedAboveCompletion.theorem2_nConfig` (least area below `A₀`).
* None: exactly six contacts, `six_contacts`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.Assembly

open EightBoundary (OnSquareBoundary)

section

variable {a h b c d f : ℝ}

/-- The six anchors of family N lie on the boundary of the square. -/
theorem nAnchors_onBoundary (hN : NAnchors a h b c d f) :
    OnSquareBoundary (0, a) ∧ OnSquareBoundary (0, h) ∧ OnSquareBoundary (b, 0) ∧
      OnSquareBoundary (c, 0) ∧ OnSquareBoundary (1, d) ∧ OnSquareBoundary (f, 1) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  refine ⟨⟨⟨le_rfl, zero_le_one, ha.le, by linarith⟩, Or.inl rfl⟩,
    ⟨⟨le_rfl, zero_le_one, by linarith, hh.le⟩, Or.inl rfl⟩,
    ⟨⟨hb.le, by linarith, le_rfl, zero_le_one⟩, Or.inr (Or.inr (Or.inl rfl))⟩,
    ⟨⟨by linarith, hc.le, le_rfl, zero_le_one⟩, Or.inr (Or.inr (Or.inl rfl))⟩,
    ⟨⟨zero_le_one, le_rfl, by linarith, by linarith⟩, Or.inr (Or.inl rfl)⟩,
    ⟨⟨by linarith, by linarith, zero_le_one, le_rfl⟩, Or.inr (Or.inr (Or.inr rfl))⟩⟩

/-- A configuration of family N lies in the square. -/
theorem nConfig_mem (hN : NAnchors a h b c d f) {X Y Z : Point} (hX : X ∈ unitSquare)
    (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    ∀ i, nConfig a h b c d f X Y Z i ∈ unitSquare := by
  obtain ⟨h0, h1, h2, h3, h4, h5⟩ := nAnchors_onBoundary hN
  intro i
  fin_cases i
  exacts [h0.1, h1.1, h2.1, h3.1, h4.1, h5.1, hX, hY, hZ]

/-- Eight boundary points, from an explicit set of eight indices. -/
theorem eight_le_ncard {P : Fin 9 → Point} (s : Finset (Fin 9)) (hs : s.card = 8)
    (h : ∀ i ∈ s, OnSquareBoundary (P i)) :
    8 ≤ {i | OnSquareBoundary (P i)}.ncard := by
  rw [← hs, ← Set.ncard_coe_finset]
  exact Set.ncard_le_ncard (fun i hi => h i hi) (Set.toFinite _)

/-- A free point at the corner `(1,1)`: the half-turn of the configuration is a C1
configuration, which `c1_exclusion` excludes. -/
theorem n_corner11_false (hN : NAnchors a h b c d f) {Y Z : Point} (hY : Y ∈ unitSquare)
    (hZ : Z ∈ unitSquare) (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f (1, 1) Y Z)) :
    False := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  let g : SquareSymmetry := ⟨false, true, true⟩
  have hg : ∀ p : Point, g.apply p = (1 - p.1, 1 - p.2) := fun p => rfl
  -- the relabelling: `O, C, D, F, H, W, X, Y, Z` of C1 are the images of `X, F, H, C, D, A, B`
  -- and the two other free points
  let σ : Fin 9 → Fin 9 := ![6, 5, 1, 3, 4, 0, 2, 7, 8]
  have hσ : Function.Injective σ := by decide
  have heq : c1Config (1 - d) (1 - f) (1 - h) (1 - c) (1, 1 - a) (1 - b, 1) (g.apply Y)
      (g.apply Z) = (g.apply ∘ nConfig a h b c d f (1, 1) Y Z) ∘ σ := by
    funext i
    fin_cases i <;> simp [σ, hg, nConfig, c1Config]
  refine c1_exclusion (h := 1 - d) (c := 1 - f) (d := 1 - h) (f := 1 - c) (W := (1, 1 - a))
    (X := (1 - b, 1)) (Y := g.apply Y) (Z := g.apply Z) ?_ ?_ ?_ (g.apply_mem hY)
    (g.apply_mem hZ) ?_
  · exact ⟨by linarith, by linarith, by linarith, by linarith, by linarith, by linarith⟩
  · exact ⟨zero_le_one, le_rfl, by linarith, by linarith⟩
  · exact ⟨by linarith, by linarith, zero_le_one, le_rfl⟩
  · rw [heq]
    calc A₀ ≤ minTriangleArea (nConfig a h b c d f (1, 1) Y Z) := hmin
      _ = minTriangleArea (g.apply ∘ nConfig a h b c d f (1, 1) Y Z) :=
        (g.minTriangleArea_comp _).symm
      _ ≤ _ := le_min_comp (by norm_num) _ hσ

/-- No free point of a competitive configuration of family N is at a corner of the square (the
first free point; the others by `min_nConfig_swap12`, `min_nConfig_swap13`). -/
theorem n_corner_false (hN : NAnchors a h b c d f) {W Y Z : Point} (hY : Y ∈ unitSquare)
    (hZ : Z ∈ unitSquare) (hW : (W.1 = 0 ∨ W.1 = 1) ∧ (W.2 = 0 ∨ W.2 = 1))
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f W Y Z)) : False := by
  obtain ⟨x, y⟩ := W
  obtain ⟨hx | hx, hy | hy⟩ := hW <;> simp only at hx hy <;> subst hx hy
  · -- `(0,0)` on the line `AH`
    have hz : A₀ ≤ triangleArea (0, a) (0, h) (0, 0) := area_of_le_min hmin 0 1 6
    simp [triangleArea_eq, sarea] at hz
    linarith [A₀_pos]
  · -- `(0,1)` on the line `AH`
    have hz : A₀ ≤ triangleArea (0, a) (0, h) (0, 1) := area_of_le_min hmin 0 1 6
    simp [triangleArea_eq, sarea] at hz
    linarith [A₀_pos]
  · -- `(1,0)` on the line `BC`
    have hz : A₀ ≤ triangleArea (b, 0) (c, 0) (1, 0) := area_of_le_min hmin 2 3 6
    simp [triangleArea_eq, sarea] at hz
    linarith [A₀_pos]
  · exact n_corner11_false hN hY hZ hmin

/-- A point of the square that is not a corner is in the open square or on a side. -/
theorem open_or_side {W : Point} (hW : W ∈ unitSquare)
    (hc : ¬ ((W.1 = 0 ∨ W.1 = 1) ∧ (W.2 = 0 ∨ W.2 = 1))) :
    SixBoundary.InOpenSquare W ∨ SevenBoundaryMixedAboveCompletion.OnSideNotCorner W := by
  by_cases ho : 0 < W.1 ∧ W.1 < 1 ∧ 0 < W.2 ∧ W.2 < 1
  · exact Or.inl ho
  · right
    refine ⟨hW, ?_, hc⟩
    obtain ⟨h1, h2, h3, h4⟩ := hW
    by_contra hne
    push Not at hne
    exact ho ⟨lt_of_le_of_ne h1 (Ne.symm hne.1), lt_of_le_of_ne h2 hne.2.1,
      lt_of_le_of_ne h3 (Ne.symm hne.2.2.1), lt_of_le_of_ne h4 hne.2.2.2⟩

/-- **Family N** (`docs/proof/nine/UNRESTRICTED.md`, Section 4): a configuration of family N in the square
with least area at least `A₀` is optimal. -/
theorem n_family (hN : NAnchors a h b c d f) {X Y Z : Point} (hX : X ∈ unitSquare)
    (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    IsOptimal (nConfig a h b c d f X Y Z) := by
  -- no free point at a corner
  have cX := fun hc => n_corner_false hN hY hZ hc hmin
  have cY := fun hc => n_corner_false hN hX hZ hc (by rwa [min_nConfig_swap12])
  have cZ := fun hc => n_corner_false hN hY hX hc (by rwa [min_nConfig_swap13])
  obtain ⟨h0, h1, h2, h3, h4, h5⟩ := nAnchors_onBoundary hN
  -- at least eight boundary points
  have eight : 8 ≤ {i | OnSquareBoundary (nConfig a h b c d f X Y Z i)}.ncard →
      IsOptimal (nConfig a h b c d f X Y Z) := fun h8 => by
    have h := EightBoundary.theorem13 _ (nConfig_mem hN hX hY hZ) h8
    exact h.2 (le_antisymm h.1 hmin)
  -- exactly seven contacts
  have seven : SevenBoundaryMixedAboveCompletion.ExactlySevenContacts X Y Z → False :=
    fun h7 => absurd hmin (not_le.2 (SevenBoundaryMixedAboveCompletion.theorem2_nConfig hN h7))
  rcases open_or_side hX cX with oX | sX <;> rcases open_or_side hY cY with oY | sY <;>
    rcases open_or_side hZ cZ with oZ | sZ
  · exact six_contacts hN hX hY hZ ⟨oX, oY, oZ⟩ hmin
  · exact (seven (Or.inr (Or.inr ⟨oX, oY, sZ⟩))).elim
  · exact (seven (Or.inr (Or.inl ⟨oX, sY, oZ⟩))).elim
  · refine eight (eight_le_ncard {0, 1, 2, 3, 4, 5, 7, 8} (by decide) ?_)
    intro i hi
    simp only [Finset.mem_insert, Finset.mem_singleton] at hi
    rcases hi with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [h0, h1, h2, h3, h4, h5, ⟨sY.1, sY.2.1⟩, ⟨sZ.1, sZ.2.1⟩]
  · exact (seven (Or.inl ⟨sX, oY, oZ⟩)).elim
  · refine eight (eight_le_ncard {0, 1, 2, 3, 4, 5, 6, 8} (by decide) ?_)
    intro i hi
    simp only [Finset.mem_insert, Finset.mem_singleton] at hi
    rcases hi with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [h0, h1, h2, h3, h4, h5, ⟨sX.1, sX.2.1⟩, ⟨sZ.1, sZ.2.1⟩]
  all_goals
    refine eight (eight_le_ncard {0, 1, 2, 3, 4, 5, 6, 7} (by decide) ?_)
    intro i hi
    simp only [Finset.mem_insert, Finset.mem_singleton] at hi
    rcases hi with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [h0, h1, h2, h3, h4, h5, ⟨sX.1, sX.2.1⟩, ⟨sY.1, sY.2.1⟩]

end

/-- **Family N**, for the family predicate `IsN`. -/
theorem isN_isOptimal {P : Fin 9 → Point} (hP : IsN P) (hmin : A₀ ≤ minTriangleArea P) :
    IsOptimal P := by
  obtain ⟨a, h, b, c, d, f, X, Y, Z, hN, hX, hY, hZ, rfl⟩ := hP
  exact n_family hN hX hY hZ hmin

end Heilbronn.Nine.Assembly
