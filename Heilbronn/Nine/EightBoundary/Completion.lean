module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.EightBoundary.Basic
public import Heilbronn.Nine.EightBoundary.R6Bound
public import Heilbronn.Nine.Local.Chamber

/-! # The eight-boundary-point case: the complete theorem

`minTriangleArea_le_A₀_of_eight_boundary`: nine points of the square with at least eight on the boundary have minimum triangle
area at most `A₀`, with equality only for the construction (`IsOptimal`). It applies to any
configuration `P : Fin 9 → Point` of the square, in particular to `nConfig a h b c d f X Y Z` when
two of the free points lie on the boundary.

The definitions and the region theorems are in `Heilbronn/Nine/EightBoundary/Setting.lean` and
`Heilbronn/Nine/EightBoundary/Basic.lean`; the radial words and classes in
`Heilbronn/Nine/EightBoundary/RadialCatalogue.lean`; the class `R6` in
`Heilbronn/Nine/EightBoundary/R6Bound.lean`.

## Main results

* `regions_of_isRadialWord_rep`: the representative word of each class (for `R8`, its rotation `ρ₁`)
  gives the region hypotheses of the theorem applied to it;
* `minTriangleArea_le_A₀_of_eight_boundary`: the bound `A₀`, with equality only for `IsOptimal` configurations.

The `R8` representative `(3,4,3,4,4,3,4,3)` does not satisfy the hypotheses of `minTriangleArea_lt_of_opposite_double_wedge`
(`k₁, k₂, k₄, k₇ ≥ 4`); its rotation `ρ₁(R8) = (3,4,4,3,4,3,3,4)` does, and
`regions_of_isRadialWord_rep` records the rotated word.

## Proof

After the normal form (`exists_perm_eq_eightConfig`) and `inCentralRegion_of_A₀_le`, the radial word of `O` is
admissible, hence in the catalogue and in one class (`RadialCatalogue.catalogue_class`). A square
symmetry carries the configuration to one whose word is the chosen element of the class
(`transfer_to`), with the same least area; `regions_of_isRadialWord_rep` then gives the hypotheses of
the region theorem for that class. For `R3`, `Chamber.chamber_le` gives the bound and, at
equality, the construction; `IsOptimal` follows by composing with the inverse symmetry
(`symm_inv`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.EightBoundary

open RadialCatalogue

/-! ### Reading edges off a radial word; inverse symmetries; transfer to a chosen word -/

/-- An edge `V_p → V_q` with `O` weakly to its left, read off the word. -/
theorem edge_of_word {a b c d e f g h : ℝ} {O : Point} {k : Word}
    (hk : IsRadialWord (octagon a b c d e f g h) O k) (p q : Fin 8)
    (h0 : 0 < ((q - p : Fin 8) : ℕ)) (hle : ((q - p : Fin 8) : ℕ) ≤ k p) :
    0 ≤ sarea (octagon a b c d e f g h p) (octagon a b c d e f g h q) O := by
  rw [sarea_cycle]; exact (hk.pos_of p q h0 hle).le

/-- An edge `V_p → V_q` with `O` strictly to its right, read off the word at `q`. -/
theorem edge_neg_of_word {a b c d e f g h : ℝ} {O : Point} {k : Word}
    (hk : IsRadialWord (octagon a b c d e f g h) O k) (p q : Fin 8)
    (h0 : 0 < ((p - q : Fin 8) : ℕ)) (hle : ((p - q : Fin 8) : ℕ) ≤ k q) :
    sarea (octagon a b c d e f g h p) (octagon a b c d e f g h q) O < 0 := by
  have h1 := hk.pos_of q p h0 hle
  have e1 := sarea_cycle O (octagon a b c d e f g h p) (octagon a b c d e f g h q)
  have e2 := sarea_swap₂₃ O (octagon a b c d e f g h q) (octagon a b c d e f g h p)
  linarith

/-- Every symmetry of the square has an inverse symmetry. -/
theorem symm_inv (φ : SquareSymmetry) : ∃ ψ : SquareSymmetry, ∀ p, ψ.apply (φ.apply p) = p := by
  rcases φ with ⟨_ | _, _ | _, _ | _⟩
  exacts [⟨⟨false, false, false⟩, fun p => by simp [SquareSymmetry.apply]⟩,
    ⟨⟨false, false, true⟩, fun p => by simp [SquareSymmetry.apply]⟩,
    ⟨⟨false, true, false⟩, fun p => by simp [SquareSymmetry.apply]⟩,
    ⟨⟨false, true, true⟩, fun p => by simp [SquareSymmetry.apply]⟩,
    ⟨⟨true, false, false⟩, fun p => by simp [SquareSymmetry.apply]⟩,
    ⟨⟨true, true, false⟩, fun p => by simp [SquareSymmetry.apply]⟩,
    ⟨⟨true, false, true⟩, fun p => by simp [SquareSymmetry.apply]⟩,
    ⟨⟨true, true, true⟩, fun p => by simp [SquareSymmetry.apply]⟩]

/-- The normal form carried by a square symmetry to a chosen word `w` of the class of its radial
word `k`, with the same least area. -/
theorem transfer_to {a b c d e f g h : ℝ} {O : Point} {k w : Word} {cl : RClass}
    (hA : EightAnchors a b c d e f g h) (hO : InOpenSquare O)
    (hnd : RaysNondegenerate (octagon a b c d e f g h) O)
    (hk : IsRadialWord (octagon a b c d e f g h) O k) (hck : InClass cl k) (hw : InClass cl w) :
    ∃ (refl : Bool) (r : Fin 4) (a' b' c' d' e' f' g' h' : ℝ),
      EightAnchors a' b' c' d' e' f' g' h' ∧ InOpenSquare ((symOf refl r).apply O) ∧
      IsRadialWord (octagon a' b' c' d' e' f' g' h') ((symOf refl r).apply O) w ∧
      eightConfig a' b' c' d' e' f' g' h' ((symOf refl r).apply O) =
        (symOf refl r).apply ∘ eightConfig a b c d e f g h O ∘ extLabel refl r ∧
      minTriangleArea (eightConfig a' b' c' d' e' f' g' h' ((symOf refl r).apply O)) =
        minTriangleArea (eightConfig a b c d e f g h O) := by
  obtain ⟨refl, r, hwr⟩ := exists_wordAct_eq cl k w hck hw
  obtain ⟨a', b', c', d', e', f', g', h', hA', hO', hoct, hcfg, hmin⟩ := transfer refl r hA hO
  have hk' := isRadialWord_transfer hoct hnd hk
  rw [hwr] at hk'
  exact ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', hcfg, hmin⟩

/-- The region hypotheses of the radial classes: in the normal form, if the radial word of `O`
(no degenerate rays) is
* the `R1` representative, `O` is in both closed corner caps `BCDE`, `DEFG` (as in `minTriangleArea_le_of_two_corner_caps`);
* the `R2` representative, `O ∈ ADE ∩ HDE`, `O ∈ BCDE`, `O ∉ DEFG` (as in `minTriangleArea_lt_of_single_corner_cap`);
* the `R4` or `R7` representative, `O ∈ ADE ∩ HDE ∩ BCF ∩ BCG` (as in `minTriangleArea_le_of_adjacent_double_wedges`);
* the `R5` representative, `O ∈ ADE ∩ HDE ∩ BCF ∩ CFG`, `O ∉ BCDE`, `O ∉ DEFG` (as in
  `minTriangleArea_lt_of_no_corner_cap`);
* the rotation `ρ₁(R8) = (3,4,4,3,4,3,3,4)` of the `R8` representative,
  `O ∈ ADE ∩ HDE ∩ BFG ∩ BCG` (as in `minTriangleArea_lt_of_opposite_double_wedge`).
The class `R3` is `RadialCatalogue.sarea_pos_of_isRadialWord_rep_R3`; the class `R6` is `R6Bound.minTriangleArea_lt_of_inClass_R6`. -/
theorem regions_of_isRadialWord_rep {a b c d e f g h : ℝ} {O : Point}
    (_hA : EightAnchors a b c d e f g h) (_hO : InOpenSquare O)
    (_hnd : RaysNondegenerate (octagon a b c d e f g h) O) :
    (IsRadialWord (octagon a b c d e f g h) O (rep .R1) →
      InClosedPolygon ![(b, 0), (c, 0), (1, d), (1, e)] O ∧
        InClosedPolygon ![(1, d), (1, e), (f, 1), (g, 1)] O) ∧
    (IsRadialWord (octagon a b c d e f g h) O (rep .R2) →
      InClosedPolygon ![(0, a), (1, d), (1, e)] O ∧ InClosedPolygon ![(0, h), (1, d), (1, e)] O ∧
        InClosedPolygon ![(b, 0), (c, 0), (1, d), (1, e)] O ∧
        ¬ InClosedPolygon ![(1, d), (1, e), (f, 1), (g, 1)] O) ∧
    (IsRadialWord (octagon a b c d e f g h) O (rep .R4) ∨
        IsRadialWord (octagon a b c d e f g h) O (rep .R7) →
      InClosedPolygon ![(0, a), (1, d), (1, e)] O ∧ InClosedPolygon ![(0, h), (1, d), (1, e)] O ∧
        InClosedPolygon ![(b, 0), (c, 0), (f, 1)] O ∧ InClosedPolygon ![(b, 0), (c, 0), (g, 1)] O) ∧
    (IsRadialWord (octagon a b c d e f g h) O (rep .R5) →
      InClosedPolygon ![(0, a), (1, d), (1, e)] O ∧ InClosedPolygon ![(0, h), (1, d), (1, e)] O ∧
        InClosedPolygon ![(b, 0), (c, 0), (f, 1)] O ∧ InClosedPolygon ![(c, 0), (f, 1), (g, 1)] O ∧
        ¬ InClosedPolygon ![(b, 0), (c, 0), (1, d), (1, e)] O ∧
        ¬ InClosedPolygon ![(1, d), (1, e), (f, 1), (g, 1)] O) ∧
    (IsRadialWord (octagon a b c d e f g h) O (wordAct false 1 (rep .R8)) →
      InClosedPolygon ![(0, a), (1, d), (1, e)] O ∧ InClosedPolygon ![(0, h), (1, d), (1, e)] O ∧
        InClosedPolygon ![(b, 0), (f, 1), (g, 1)] O ∧
        InClosedPolygon ![(b, 0), (c, 0), (g, 1)] O) := by
  refine ⟨fun hk => ⟨fun i => ?_, fun i => ?_⟩, fun hk => ⟨fun i => ?_, fun i => ?_,
    fun i => ?_, fun hin => ?_⟩, fun hk => ?_, fun hk => ⟨fun i => ?_, fun i => ?_, fun i => ?_,
    fun i => ?_, fun hin => ?_, fun hin => ?_⟩, fun hk => ⟨fun i => ?_, fun i => ?_,
    fun i => ?_, fun i => ?_⟩⟩
  -- R1
  · fin_cases i
    exacts [edge_of_word hk 1 2 (by decide) (by decide), edge_of_word hk 2 3 (by decide) (by decide),
      edge_of_word hk 3 4 (by decide) (by decide), edge_of_word hk 4 1 (by decide) (by decide)]
  · fin_cases i
    exacts [edge_of_word hk 3 4 (by decide) (by decide), edge_of_word hk 4 5 (by decide) (by decide),
      edge_of_word hk 5 6 (by decide) (by decide), edge_of_word hk 6 3 (by decide) (by decide)]
  -- R2
  · fin_cases i
    exacts [edge_of_word hk 0 3 (by decide) (by decide), edge_of_word hk 3 4 (by decide) (by decide),
      edge_of_word hk 4 0 (by decide) (by decide)]
  · fin_cases i
    exacts [edge_of_word hk 7 3 (by decide) (by decide), edge_of_word hk 3 4 (by decide) (by decide),
      edge_of_word hk 4 7 (by decide) (by decide)]
  · fin_cases i
    exacts [edge_of_word hk 1 2 (by decide) (by decide), edge_of_word hk 2 3 (by decide) (by decide),
      edge_of_word hk 3 4 (by decide) (by decide), edge_of_word hk 4 1 (by decide) (by decide)]
  · exact absurd (hin 3) (not_le.2 (edge_neg_of_word hk 6 3 (by decide) (by decide)))
  -- R4, R7
  · rcases hk with hk | hk
    · refine ⟨fun i => ?_, fun i => ?_, fun i => ?_, fun i => ?_⟩ <;> fin_cases i
      exacts [edge_of_word hk 0 3 (by decide) (by decide),
        edge_of_word hk 3 4 (by decide) (by decide), edge_of_word hk 4 0 (by decide) (by decide),
        edge_of_word hk 7 3 (by decide) (by decide), edge_of_word hk 3 4 (by decide) (by decide),
        edge_of_word hk 4 7 (by decide) (by decide), edge_of_word hk 1 2 (by decide) (by decide),
        edge_of_word hk 2 5 (by decide) (by decide), edge_of_word hk 5 1 (by decide) (by decide),
        edge_of_word hk 1 2 (by decide) (by decide), edge_of_word hk 2 6 (by decide) (by decide),
        edge_of_word hk 6 1 (by decide) (by decide)]
    · refine ⟨fun i => ?_, fun i => ?_, fun i => ?_, fun i => ?_⟩ <;> fin_cases i
      exacts [edge_of_word hk 0 3 (by decide) (by decide),
        edge_of_word hk 3 4 (by decide) (by decide), edge_of_word hk 4 0 (by decide) (by decide),
        edge_of_word hk 7 3 (by decide) (by decide), edge_of_word hk 3 4 (by decide) (by decide),
        edge_of_word hk 4 7 (by decide) (by decide), edge_of_word hk 1 2 (by decide) (by decide),
        edge_of_word hk 2 5 (by decide) (by decide), edge_of_word hk 5 1 (by decide) (by decide),
        edge_of_word hk 1 2 (by decide) (by decide), edge_of_word hk 2 6 (by decide) (by decide),
        edge_of_word hk 6 1 (by decide) (by decide)]
  -- R5
  · fin_cases i
    exacts [edge_of_word hk 0 3 (by decide) (by decide), edge_of_word hk 3 4 (by decide) (by decide),
      edge_of_word hk 4 0 (by decide) (by decide)]
  · fin_cases i
    exacts [edge_of_word hk 7 3 (by decide) (by decide), edge_of_word hk 3 4 (by decide) (by decide),
      edge_of_word hk 4 7 (by decide) (by decide)]
  · fin_cases i
    exacts [edge_of_word hk 1 2 (by decide) (by decide), edge_of_word hk 2 5 (by decide) (by decide),
      edge_of_word hk 5 1 (by decide) (by decide)]
  · fin_cases i
    exacts [edge_of_word hk 2 5 (by decide) (by decide), edge_of_word hk 5 6 (by decide) (by decide),
      edge_of_word hk 6 2 (by decide) (by decide)]
  · exact absurd (hin 3) (not_le.2 (edge_neg_of_word hk 4 1 (by decide) (by decide)))
  · exact absurd (hin 3) (not_le.2 (edge_neg_of_word hk 6 3 (by decide) (by decide)))
  -- ρ₁(R8)
  · fin_cases i
    exacts [edge_of_word hk 0 3 (by decide) (by decide), edge_of_word hk 3 4 (by decide) (by decide),
      edge_of_word hk 4 0 (by decide) (by decide)]
  · fin_cases i
    exacts [edge_of_word hk 7 3 (by decide) (by decide), edge_of_word hk 3 4 (by decide) (by decide),
      edge_of_word hk 4 7 (by decide) (by decide)]
  · fin_cases i
    exacts [edge_of_word hk 1 5 (by decide) (by decide), edge_of_word hk 5 6 (by decide) (by decide),
      edge_of_word hk 6 1 (by decide) (by decide)]
  · fin_cases i
    exacts [edge_of_word hk 1 2 (by decide) (by decide), edge_of_word hk 2 6 (by decide) (by decide),
      edge_of_word hk 6 1 (by decide) (by decide)]

/-- For nine points in the unit square with at least eight of them on its boundary, the minimum
triangle area is at most `A₀ = (9√65 - 55)/320`, and equality holds only for the construction of
`Chamber.chamber_le` up to a square symmetry and relabelling (`IsOptimal`). -/
theorem minTriangleArea_le_A₀_of_eight_boundary (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (h8 : 8 ≤ {i : Fin 9 | OnSquareBoundary (P i)}.ncard) :
    minTriangleArea P ≤ A₀ ∧ (minTriangleArea P = A₀ → IsOptimal P) := by
  suffices key : A₀ ≤ minTriangleArea P → minTriangleArea P ≤ A₀ ∧ IsOptimal P by
    refine ⟨?_, fun h => (key h.symm.le).2⟩
    by_contra hc
    push Not at hc
    exact absurd (key hc.le).1 (not_le.2 hc)
  intro hmin
  have hpos : 0 < minTriangleArea P := lt_of_lt_of_le A₀_pos hmin
  obtain ⟨a, b, c, d, e, f, g, h, O, σ, hA, hO, hσ⟩ := exists_perm_eq_eightConfig P hP hpos h8
  have hmeq : minTriangleArea (eightConfig a b c d e f g h O) = minTriangleArea P := by
    rw [← hσ, minTriangleArea_comp_perm]
  rw [← hmeq] at hmin ⊢
  have hpos' : 0 < minTriangleArea (eightConfig a b c d e f g h O) := lt_of_lt_of_le A₀_pos hmin
  have hnd := raysNondegenerate_of_min_pos hpos'
  have hc5 := inCentralRegion_of_A₀_le hA hO hmin
  have hconv := octagon_convex hA
  obtain ⟨hk, hcomp⟩ := radialWord_spec _ O hconv hc5.1 hnd
  have hadm : Admissible (radialWord (octagon a b c d e f g h) O) :=
    ⟨hcomp, earBounds_of_outsideSideQuads _ O hconv hc5.1 hnd hc5.2.1 hk,
      sideQuadBounds_of_outsideSideQuads _ O hconv hc5.1 hnd hc5.2.1 hk⟩
  obtain ⟨cl, hcl⟩ := catalogue_class _ (mem_catalogue_of_admissible _ hadm)
  have thr := threshold_comparisons
  have hA0 := A₀_bounds
  -- the classes other than R3 contradict `A₀ ≤ min`
  cases cl with
  | R1 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', -, hm⟩ :=
      transfer_to (w := rep .R1) hA hO hnd hk hcl ⟨false, 0, by decide⟩
    rw [← hm] at hmin
    have h5 := inCentralRegion_of_A₀_le hA' hO' hmin
    have hnd' := raysNondegenerate_of_min_pos (lt_of_lt_of_le A₀_pos hmin)
    obtain ⟨h1, h2⟩ := (regions_of_isRadialWord_rep hA' hO' hnd').1 hk'
    have := minTriangleArea_le_of_two_corner_caps hA' hO' h5.2.2 h1 h2
    exfalso; linarith
  | R2 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', -, hm⟩ :=
      transfer_to (w := rep .R2) hA hO hnd hk hcl ⟨false, 0, by decide⟩
    rw [← hm] at hmin
    have h5 := inCentralRegion_of_A₀_le hA' hO' hmin
    have hnd' := raysNondegenerate_of_min_pos (lt_of_lt_of_le A₀_pos hmin)
    obtain ⟨h1, h2, h3, h4⟩ := (regions_of_isRadialWord_rep hA' hO' hnd').2.1 hk'
    have := minTriangleArea_lt_of_single_corner_cap hA' hO' h5.2.2 h1 h2 h3 h4
    exfalso; linarith
  | R3 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', hcfg, hm⟩ :=
      transfer_to (w := rep .R3) hA hO hnd hk hcl ⟨false, 0, by decide⟩
    rw [← hm] at hmin
    generalize hOdef : (symOf refl r).apply O = O' at hO' hk' hcfg hmin hm
    obtain ⟨x', y'⟩ := O'
    obtain ⟨u1, u2, u3, u4, u5⟩ := sarea_pos_of_isRadialWord_rep_R3 _ _ hk'
    change 0 < sarea (0, a') (1, d') (x', y') at u1
    change 0 < sarea (1, d') (0, h') (x', y') at u2
    change 0 < sarea (b', 0) (x', y') (1, e') at u3
    change 0 < sarea (g', 1) (c', 0) (x', y') at u4
    change 0 < sarea (x', y') (c', 0) (f', 1) at u5
    simp only [sarea] at u1 u2 u3 u4 u5
    obtain ⟨o1, o2, o3, o4⟩ := hO'
    have hord : Chamber.SharpOrders a' b' c' d' e' f' g' h' := hA'
    have hsq : ((x', y') : Point) ∈ unitSquare := ⟨o1.le, o2.le, o3.le, o4.le⟩
    obtain ⟨-, hle, heq⟩ := Chamber.chamber_le hord hsq (by linarith) (by linarith)
      (by linarith) (by linarith) (by linarith)
    have hbase : Chamber.baseConfig a' b' c' d' e' f' g' h' x' y' =
        eightConfig a' b' c' d' e' f' g' h' (x', y') := rfl
    rw [hbase] at hle heq
    refine ⟨by rw [← hm]; exact hle, ?_⟩
    have hall : ∀ i, A₀ ≤ Chamber.chamberArea (eightConfig a' b' c' d' e' f' g' h' (x', y')) i := by
      intro i
      fin_cases i <;> simp only [Chamber.chamberArea, Chamber.chamberTriangles] <;>
        exact le_trans hmin (minTriangleArea_le _ (by decide) (by decide) (by decide))
    have hopt := heq hall
    obtain ⟨ψ, hψ⟩ := symm_inv (symOf refl r)
    refine ⟨ψ, (Equiv.ofBijective (extLabel refl r) (extLabel_bijective refl r)).trans σ,
      fun i => ?_⟩
    have h1 := congrFun hcfg i
    rw [hopt] at h1
    simp only [Equiv.trans_apply, Equiv.ofBijective_apply]
    rw [h1]
    simp only [Function.comp_apply, hψ, ← hσ]
  | R4 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', -, hm⟩ :=
      transfer_to (w := rep .R4) hA hO hnd hk hcl ⟨false, 0, by decide⟩
    rw [← hm] at hmin
    have hnd' := raysNondegenerate_of_min_pos (lt_of_lt_of_le A₀_pos hmin)
    obtain ⟨h1, h2, h3, h4⟩ := (regions_of_isRadialWord_rep hA' hO' hnd').2.2.1 (Or.inl hk')
    have := minTriangleArea_le_of_adjacent_double_wedges hA' hO' h1 h2 h3 h4
    exfalso; linarith
  | R5 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', -, hm⟩ :=
      transfer_to (w := rep .R5) hA hO hnd hk hcl ⟨false, 0, by decide⟩
    rw [← hm] at hmin
    have h5 := inCentralRegion_of_A₀_le hA' hO' hmin
    have hnd' := raysNondegenerate_of_min_pos (lt_of_lt_of_le A₀_pos hmin)
    obtain ⟨h1, h2, h3, h4, h6, h7⟩ := (regions_of_isRadialWord_rep hA' hO' hnd').2.2.2.1 hk'
    have := minTriangleArea_lt_of_no_corner_cap hA' hO' h5.2.2 h1 h2 h3 h4 h6 h7
    exfalso; linarith
  | R6 =>
    have := R6Bound.minTriangleArea_lt_of_inClass_R6 hA hO hk hcl
    exfalso; linarith
  | R7 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', -, hm⟩ :=
      transfer_to (w := rep .R7) hA hO hnd hk hcl ⟨false, 0, by decide⟩
    rw [← hm] at hmin
    have hnd' := raysNondegenerate_of_min_pos (lt_of_lt_of_le A₀_pos hmin)
    obtain ⟨h1, h2, h3, h4⟩ := (regions_of_isRadialWord_rep hA' hO' hnd').2.2.1 (Or.inr hk')
    have := minTriangleArea_le_of_adjacent_double_wedges hA' hO' h1 h2 h3 h4
    exfalso; linarith
  | R8 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', -, hm⟩ :=
      transfer_to (w := wordAct false 1 (rep .R8)) hA hO hnd hk hcl ⟨false, 1, rfl⟩
    rw [← hm] at hmin
    have hnd' := raysNondegenerate_of_min_pos (lt_of_lt_of_le A₀_pos hmin)
    obtain ⟨h1, h2, h3, h4⟩ := (regions_of_isRadialWord_rep hA' hO' hnd').2.2.2.2 hk'
    have := minTriangleArea_lt_of_opposite_double_wedge hA' hO' h1 h2 h3 h4
    exfalso; linarith

end Heilbronn.Nine.EightBoundary
