module

public import Heilbronn.Common.Families
public import Heilbronn.Eight.EightBoundary.Basic
public import Heilbronn.Eight.R6Bound
public import Heilbronn.Local.HandProof

/-! # The eight-boundary-point gate: the complete theorem (`hand/EIGHT_BOUNDARY.md`, §11)

**Role.** Primary route: `UNRESTRICTED.md` §4 (lines 126–130) cites Theorem 13 for every
configuration with at least eight square-boundary points; `SIX_BOUNDARY_TWO_SIDE_PROJECTION` §4
uses it on the N6 projection routes. The assembly applies `theorem13` to any configuration
`P : Fin 9 → Point` of the square, in particular to `nConfig a h b c d f X Y Z` when two of the
free points lie on the boundary.

The definitions and Lemma 1 – Theorem 12 are in `Heilbronn/Eight/EightBoundary/Setting.lean` and
`Heilbronn/Eight/EightBoundary/Basic.lean`; the radial words and classes in
`Heilbronn/Eight/RadialCatalogue.lean`; the class R6 in `Heilbronn/Eight/R6Bound.lean`.

**Results.**
* `claim_class_hypotheses`: the table of §11 (lines 1026–1035): the representative word of each
  class (for R8, its rotation `ρ₁`) gives the region hypotheses of the theorem applied to it;
* `theorem13`: nine points of the square with at least eight on the boundary have minimum
  triangle area at most `A₀`, with equality only for the construction (`IsOptimal`).

FLAG (presentation, `EIGHT_BOUNDARY.md` line 1035 and `RADIAL_CATALOGUE.md` line 135): the table
attributes R8 to Theorem 9, but the R8 representative `(3,4,3,4,4,3,4,3)` does not satisfy
Theorem 9's literal hypotheses (`k₁, k₂, k₄, k₇ ≥ 4`); its rotation `ρ₁(R8) = (3,4,4,3,4,3,3,4)`
does. Theorem 9 is stated "under every square symmetry", so the proof is complete;
`claim_class_hypotheses` records the rotated word.

**Proof of Theorem 13.** After the normal form and Corollary 5, the radial word of `O` is
admissible, hence in the catalogue and in one class (`RadialCatalogue.catalogue_class`). A square
symmetry carries the configuration to one whose word is the chosen element of the class
(`transfer_to`), with the same least area; `claim_class_hypotheses` then gives the hypotheses of
the theorem for that class. For R3, `HandProof.theorem1` gives the bound and, at equality, the
construction; `IsOptimal` follows by composing with the inverse symmetry (`symm_inv`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.EightBoundary

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


/-- **Claim** (`EIGHT_BOUNDARY:claim-class-hypotheses`, named here). The table of the proof of
Theorem 13: in the normal form, if the radial word of `O` (no degenerate rays) is
* the R1 representative, `O` is in both closed corner caps `BCDE`, `DEFG` (Theorem 8);
* the R2 representative, `O ∈ ADE ∩ HDE`, `O ∈ BCDE`, `O ∉ DEFG` (Theorem 11);
* the R4 or R7 representative, `O ∈ ADE ∩ HDE ∩ BCF ∩ BCG` (Theorem 6);
* the R5 representative, `O ∈ ADE ∩ HDE ∩ BCF ∩ CFG`, `O ∉ BCDE`, `O ∉ DEFG` (Theorem 12);
* the rotation `ρ₁(R8) = (3,4,4,3,4,3,3,4)` of the R8 representative,
  `O ∈ ADE ∩ HDE ∩ BFG ∩ BCG` (Theorem 9).
(R3 is `RADIAL_CATALOGUE:claim-R3-chamber`; R6 is `R6_BOUND:Theorem`, stated with the word.)
`hand/EIGHT_BOUNDARY.md`, lines 1026–1035.
Uses: RADIAL_CATALOGUE:claim-encoding. -/
theorem claim_class_hypotheses {a b c d e f g h : ℝ} {O : Point}
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

/-- **Theorem 13** (`EIGHT_BOUNDARY:Theorem13`). For nine points in the unit square with at least
eight of them on its boundary, the minimum triangle area is at most `A₀ = (9√65 - 55)/320`, and
equality holds only for the construction of `HAND_PROOF.md` Theorem 1 up to a square symmetry
and relabelling (`IsOptimal`).
`hand/EIGHT_BOUNDARY.md`, lines 1007–1039.
Uses: EIGHT_BOUNDARY:Lemma1, EIGHT_BOUNDARY:claim-normal-form, EIGHT_BOUNDARY:Theorem2,
EIGHT_BOUNDARY:Theorem4, EIGHT_BOUNDARY:Corollary5, RADIAL_CATALOGUE:claim-encoding,
RADIAL_CATALOGUE:claim-ear-bounds, RADIAL_CATALOGUE:claim-side-quad-bounds,
RADIAL_CATALOGUE:claim-36-cover, RADIAL_CATALOGUE:claim-symmetry-action,
RADIAL_CATALOGUE:claim-symmetry-relabel, RADIAL_CATALOGUE:claim-eight-classes,
RADIAL_CATALOGUE:claim-R3-chamber, EIGHT_BOUNDARY:claim-class-hypotheses,
EIGHT_BOUNDARY:Theorem8, EIGHT_BOUNDARY:Theorem11, HAND_PROOF:Theorem1, EIGHT_BOUNDARY:Theorem6,
EIGHT_BOUNDARY:Theorem12, R6_BOUND:Theorem, EIGHT_BOUNDARY:Theorem9,
EIGHT_BOUNDARY:claim-thresholds. -/
theorem theorem13 (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (h8 : 8 ≤ {i : Fin 9 | OnSquareBoundary (P i)}.ncard) :
    minTriangleArea P ≤ A₀ ∧ (minTriangleArea P = A₀ → IsOptimal P) := by
  suffices key : A₀ ≤ minTriangleArea P → minTriangleArea P ≤ A₀ ∧ IsOptimal P by
    refine ⟨?_, fun h => (key h.symm.le).2⟩
    by_contra hc
    push Not at hc
    exact absurd (key hc.le).1 (not_le.2 hc)
  intro hmin
  have hpos : 0 < minTriangleArea P := lt_of_lt_of_le A₀_pos hmin
  obtain ⟨a, b, c, d, e, f, g, h, O, σ, hA, hO, hσ⟩ := claim_normal_form P hP hpos h8
  have hmeq : minTriangleArea (eightConfig a b c d e f g h O) = minTriangleArea P := by
    rw [← hσ, minTriangleArea_comp_perm]
  rw [← hmeq] at hmin ⊢
  have hpos' : 0 < minTriangleArea (eightConfig a b c d e f g h O) := lt_of_lt_of_le A₀_pos hmin
  have hnd := raysNondegenerate_of_min_pos hpos'
  have hc5 := corollary5 hA hO hmin
  have hconv := octagon_convex hA
  obtain ⟨hk, hcomp⟩ := claim_encoding _ O hconv hc5.1 hnd
  have hadm : Admissible (radialWord (octagon a b c d e f g h) O) :=
    ⟨hcomp, claim_ear_bounds _ O hconv hc5.1 hnd hc5.2.1 hk,
      claim_side_quad_bounds _ O hconv hc5.1 hnd hc5.2.1 hk⟩
  obtain ⟨cl, hcl⟩ := catalogue_class _ (claim_36_cover _ hadm)
  have thr := claim_thresholds
  have hA0 := A₀_bounds
  -- the classes other than R3 contradict `A₀ ≤ min`
  cases cl with
  | R1 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', -, hm⟩ :=
      transfer_to (w := rep .R1) hA hO hnd hk hcl ⟨false, 0, by decide⟩
    rw [← hm] at hmin
    have h5 := corollary5 hA' hO' hmin
    have hnd' := raysNondegenerate_of_min_pos (lt_of_lt_of_le A₀_pos hmin)
    obtain ⟨h1, h2⟩ := (claim_class_hypotheses hA' hO' hnd').1 hk'
    have := theorem8 hA' hO' h5.2.2 h1 h2
    exfalso; linarith
  | R2 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', -, hm⟩ :=
      transfer_to (w := rep .R2) hA hO hnd hk hcl ⟨false, 0, by decide⟩
    rw [← hm] at hmin
    have h5 := corollary5 hA' hO' hmin
    have hnd' := raysNondegenerate_of_min_pos (lt_of_lt_of_le A₀_pos hmin)
    obtain ⟨h1, h2, h3, h4⟩ := (claim_class_hypotheses hA' hO' hnd').2.1 hk'
    have := theorem11 hA' hO' h5.2.2 h1 h2 h3 h4
    exfalso; linarith
  | R3 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', hcfg, hm⟩ :=
      transfer_to (w := rep .R3) hA hO hnd hk hcl ⟨false, 0, by decide⟩
    rw [← hm] at hmin
    generalize hOdef : (symOf refl r).apply O = O' at hO' hk' hcfg hmin hm
    obtain ⟨x', y'⟩ := O'
    obtain ⟨u1, u2, u3, u4, u5⟩ := claim_R3_chamber _ _ hk'
    change 0 < sarea (0, a') (1, d') (x', y') at u1
    change 0 < sarea (1, d') (0, h') (x', y') at u2
    change 0 < sarea (b', 0) (x', y') (1, e') at u3
    change 0 < sarea (g', 1) (c', 0) (x', y') at u4
    change 0 < sarea (x', y') (c', 0) (f', 1) at u5
    simp only [sarea] at u1 u2 u3 u4 u5
    obtain ⟨o1, o2, o3, o4⟩ := hO'
    have hord : HandProof.SharpOrders a' b' c' d' e' f' g' h' := hA'
    have hsq : ((x', y') : Point) ∈ unitSquare := ⟨o1.le, o2.le, o3.le, o4.le⟩
    obtain ⟨-, hle, heq⟩ := HandProof.theorem1 hord hsq (by linarith) (by linarith)
      (by linarith) (by linarith) (by linarith)
    have hbase : HandProof.baseConfig a' b' c' d' e' f' g' h' x' y' =
        eightConfig a' b' c' d' e' f' g' h' (x', y') := rfl
    rw [hbase] at hle heq
    refine ⟨by rw [← hm]; exact hle, ?_⟩
    have hall : ∀ i, A₀ ≤ HandProof.chamberArea (eightConfig a' b' c' d' e' f' g' h' (x', y')) i := by
      intro i
      fin_cases i <;> simp only [HandProof.chamberArea, HandProof.chamberTriangles] <;>
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
    obtain ⟨h1, h2, h3, h4⟩ := (claim_class_hypotheses hA' hO' hnd').2.2.1 (Or.inl hk')
    have := theorem6 hA' hO' h1 h2 h3 h4
    exfalso; linarith
  | R5 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', -, hm⟩ :=
      transfer_to (w := rep .R5) hA hO hnd hk hcl ⟨false, 0, by decide⟩
    rw [← hm] at hmin
    have h5 := corollary5 hA' hO' hmin
    have hnd' := raysNondegenerate_of_min_pos (lt_of_lt_of_le A₀_pos hmin)
    obtain ⟨h1, h2, h3, h4, h6, h7⟩ := (claim_class_hypotheses hA' hO' hnd').2.2.2.1 hk'
    have := theorem12 hA' hO' h5.2.2 h1 h2 h3 h4 h6 h7
    exfalso; linarith
  | R6 =>
    have := R6Bound.mainTheorem hA hO hk hcl
    exfalso; linarith
  | R7 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', -, hm⟩ :=
      transfer_to (w := rep .R7) hA hO hnd hk hcl ⟨false, 0, by decide⟩
    rw [← hm] at hmin
    have hnd' := raysNondegenerate_of_min_pos (lt_of_lt_of_le A₀_pos hmin)
    obtain ⟨h1, h2, h3, h4⟩ := (claim_class_hypotheses hA' hO' hnd').2.2.1 (Or.inr hk')
    have := theorem6 hA' hO' h1 h2 h3 h4
    exfalso; linarith
  | R8 =>
    obtain ⟨refl, r, a', b', c', d', e', f', g', h', hA', hO', hk', -, hm⟩ :=
      transfer_to (w := wordAct false 1 (rep .R8)) hA hO hnd hk hcl ⟨false, 1, rfl⟩
    rw [← hm] at hmin
    have hnd' := raysNondegenerate_of_min_pos (lt_of_lt_of_le A₀_pos hmin)
    obtain ⟨h1, h2, h3, h4⟩ := (claim_class_hypotheses hA' hO' hnd').2.2.2.2 hk'
    have := theorem9 hA' hO' h1 h2 h3 h4
    exfalso; linarith

end Heilbronn.EightBoundary
