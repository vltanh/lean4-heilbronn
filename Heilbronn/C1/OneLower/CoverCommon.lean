module

public import Heilbronn.C1.ZeroLowerCover

/-! # Shared certificate soundness for the one-lower C1 packages

The four one-lower packages ported here (`hand/C1_ONE_LOWER_{TOP_CAP, SIDE_CAP, RIGHT_PAIR,
EIGHT_HULL}.md`) all exclude a cell of nine labelled points `P 0, …, P 8` by a certificate whose
atoms are, in order, some expressions known to be nonnegative (`pre`), the strengthened costs of a
table of signed triangles (`Heilbronn.Cover.costAtom` with the occupancy bounds `s, 3s, ρ` of
`Heilbronn.C1ZeroLower.Model.bnd`, the certified inside points being counted among `free`), and
some more nonnegative expressions (`post`). The table is the cell's initial table `base` followed
by the signs of the triangle splits along the path of the cover tree.

* `AreaOK P`: every actual triangle of the nine points has doubled area at least `2A₀`
  (`areaOK_of_min` derives it from a least-area hypothesis on a relabelled configuration);
* `AreaOK.cost_nonneg`: the strengthened cost of every true signed triangle is nonnegative
  (subdivision for one certified inside point, the two-interior-point lemma for two);
* `tableSpec pre post pt free base`: the cover package; its splits are
  `C1ZeroLower.Model.Split.tri a b c`;
* `tableSpec_false`: the soundness of a kernel-checked tree for it.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLower

open Heilbronn.C1 Heilbronn.C1ZeroLower Cover Cert Cert.Expr Model

variable {P : ℕ → Point}

/-- Every actual triangle of the nine points `P 0, …, P 8` has doubled area at least `2A₀`. -/
def AreaOK (P : ℕ → Point) : Prop :=
  ∀ a b e : ℕ, a < 9 → b < 9 → e < 9 → a ≠ b → b ≠ e → a ≠ e →
    2 * A₀ ≤ |sarea (P a) (P b) (P e)|

/-- `AreaOK` from a least-area hypothesis on the same nine points in another order `σ`. -/
theorem areaOK_of_min {Pc : Fin 9 → Point} (hmin : A₀ ≤ minTriangleArea Pc) (P : ℕ → Point)
    (σ : ℕ → Fin 9) (hσ : ∀ a b, a < 9 → b < 9 → σ a = σ b → a = b)
    (hP : ∀ a, a < 9 → P a = Pc (σ a)) : AreaOK P := by
  intro a b e ha hb he hab hbe hae
  have := area_of_le_min hmin (σ a) (σ b) (σ e) (fun h => hab (hσ a b ha hb h))
    (fun h => hbe (hσ b e hb he h)) (fun h => hae (hσ a e ha he h))
  rw [triangleArea_eq, ← hP a ha, ← hP b hb, ← hP e he] at this
  linarith

/-- A sub-configuration of distinct points of the nine has least area at least `A₀`. -/
theorem AreaOK.min_sub (H : AreaOK P) {m : ℕ} (hm : 3 ≤ m) (ι : Fin m → ℕ) (hι : ∀ x, ι x < 9)
    (hinj : Function.Injective ι) : A₀ ≤ minTriangleArea (fun x => P (ι x)) := by
  refine le_minTriangleArea hm _ fun x y w hxy hyw => ?_
  have := H (ι x) (ι y) (ι w) (hι x) (hι y) (hι w) (hinj.ne hxy.ne) (hinj.ne hyw.ne)
    (hinj.ne (hxy.trans hyw).ne)
  rw [triangleArea_eq]; linarith

/-- An actual triangle with two further points strictly inside has doubled area at least
`2KA₀ > ρ` (the two-interior-point lemma). -/
theorem AreaOK.two_inside (H : AreaOK P) {a b e j₁ j₂ : ℕ} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hj₁ : j₁ < 9) (hj₂ : j₂ < 9) (hd : [a, b, e, j₁, j₂].Nodup)
    (h₁ : InTriangle (P j₁) (P a) (P b) (P e) ∨ InTriangle (P j₁) (P a) (P e) (P b))
    (h₂ : InTriangle (P j₂) (P a) (P b) (P e) ∨ InTriangle (P j₂) (P a) (P e) (P b)) :
    49 / 60 ≤ |sarea (P a) (P b) (P e)| := by
  have hm := H.min_sub (by norm_num) ![a, b, e, j₁, j₂]
    (by intro x; fin_cases x <;> simpa)
    (by
      intro x y hxy
      simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or] at hd
      fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;> omega)
  have e1 : (fun x => P (![a, b, e, j₁, j₂] x)) = ![P a, P b, P e, P j₁, P j₂] := by
    funext x; fin_cases x <;> rfl
  rw [e1] at hm
  have := CornerFamilies.twoInteriorPointLemma _ _ _ _ _ h₁ h₂ A₀ A₀_pos hm
  rw [triangleArea_eq] at this
  linarith [rho_lt]

/-- An oriented actual triangle has oriented doubled area at least `2A₀`. -/
theorem AreaOK.orient_area (H : AreaOK P) {sg : Bool} {a b e : ℕ} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hs : OrientHolds sg (sarea (P a) (P b) (P e))) :
    2 * A₀ ≤ sgArea sg (sarea (P a) (P b) (P e)) := by
  obtain ⟨n1, n2, n3⟩ := orient_idx_ne hs
  rw [sgArea_eq_abs hs]
  exact H a b e ha hb he n1 n2 n3

/-- **The strengthened costs**: the cost of every signed triangle of a true table is nonnegative:
`s` for no certified inside point, `3s` for one (subdivision), `ρ` for two or more (the
two-interior-point lemma). -/
theorem AreaOK.cost_nonneg (H : AreaOK P) {pt : ℕ → Expr × Expr} {z : ℕ → ℝ}
    (hpt : ∀ i, i < 9 → ptEval z pt i = P i) {free : List ℕ} (hfree : ∀ j ∈ free, j < 9)
    (hnd : free.Nodup) {tb : List SFact} (htb : AllHold (FHolds P) tb) {g : SFact}
    (hg : g ∈ tb) : 0 ≤ (costAtom pt bnd g (insideList tb free g).length).eval z := by
  rw [eval_costAtom]
  obtain ⟨g1, g2, g3, gs⟩ := htb g hg
  rw [hpt _ (by omega), hpt _ (by omega), hpt _ g3]
  have htb' : AllHold (SFact.Holds P) tb := fun x hx => (htb x hx).2.2.2
  have harea := H.orient_area (by omega) (by omega) g3 gs
  have hLnd : (insideList tb free g).Nodup := List.Nodup.filter _ hnd
  have hmem : ∀ j ∈ insideList tb free g, j < 9 := fun j hj =>
    hfree j (insideList_sound htb' hj).1
  have t := two_A₀
  rcases hn : (insideList tb free g).length with _ | _ | n
  · simp only [bnd, ite_true]; push_cast; linarith
  · obtain ⟨j, hj⟩ := List.exists_mem_of_length_pos (show 0 < (insideList tb free g).length
      by omega)
    obtain ⟨-, o1, o2, o3⟩ := insideList_sound htb' hj
    have hj9 := hmem j hj
    have q1 := H.orient_area (by omega) (by omega) hj9 o1
    have q2 := H.orient_area (by omega) g3 hj9 o2
    have q3 := H.orient_area g3 (by omega) hj9 o3
    rw [sgArea_eq_abs o1] at q1; rw [sgArea_eq_abs o2] at q2; rw [sgArea_eq_abs o3] at q3
    have := three_le_sgArea (e := 2 * A₀) o1 o2 o3 q1 q2 q3
    simp only [bnd]; norm_num; linarith
  · obtain ⟨j₁, j₂, rest, hL⟩ : ∃ j₁ j₂ rest, insideList tb free g = j₁ :: j₂ :: rest := by
      rcases hL : insideList tb free g with _ | ⟨j₁, _ | ⟨j₂, rest⟩⟩
      · rw [hL] at hn; simp at hn
      · rw [hL] at hn; simp at hn
      · exact ⟨j₁, j₂, rest, rfl⟩
    have hj₁ : j₁ ∈ insideList tb free g := by rw [hL]; simp
    have hj₂ : j₂ ∈ insideList tb free g := by rw [hL]; simp
    have h12 : j₁ ≠ j₂ := by
      rw [hL] at hLnd; simp only [List.nodup_cons, List.mem_cons, not_or] at hLnd
      exact hLnd.1.1
    obtain ⟨-, o1, o2, o3⟩ := insideList_sound htb' hj₁
    obtain ⟨-, p1, p2, p3⟩ := insideList_sound htb' hj₂
    obtain ⟨-, n1, n2⟩ := orient_idx_ne o1
    obtain ⟨-, n3, -⟩ := orient_idx_ne o2
    obtain ⟨-, m1, m2⟩ := orient_idx_ne p1
    obtain ⟨-, m3, -⟩ := orient_idx_ne p2
    have := H.two_inside (by omega) (by omega) g3 (hmem _ hj₁) (hmem _ hj₂)
      (by simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
        List.nodup_nil, and_true, not_false_eq_true]; omega)
      (inTriangle_of_orient o1 o2 o3) (inTriangle_of_orient p1 p2 p3)
    rw [← sgArea_eq_abs gs] at this
    simp only [bnd]; norm_num; linarith

/-! ### The cover package of a table -/

/-- The atoms of a table cell: `pre`, the strengthened costs of the table `tb`, `post`. -/
def tableAtoms (pre post : List Expr) (pt : ℕ → Expr × Expr) (free : List ℕ) (tb : List SFact) :
    List Expr :=
  pre ++ tb.map (fun f => costAtom pt bnd f (insideList tb free f).length) ++ post

/-- The triangle splits (the orientation of `abc`, negative first); other labels are invalid. -/
def triBranches : List SFact → Split → List (List SFact)
  | _, .tri a b c => if a < b ∧ b < c ∧ c < 9 then signBranches (a, b, c) else [[]]
  | _, .three => [[]]

/-- The cover package of a table cell with initial table `base`. -/
def tableSpec (pre post : List Expr) (pt : ℕ → Expr × Expr) (free : List ℕ) (base : List SFact) :
    Spec SFact Split where
  atoms fs := tableAtoms pre post pt free (base ++ fs)
  branches := triBranches

theorem triBranches_ok (H : AreaOK P) (fs : List SFact) (s : Split) :
    ∃ b ∈ triBranches fs s, AllHold (FHolds P) b := by
  cases s with
  | tri a b e =>
    simp only [triBranches]
    split_ifs with hv
    · obtain ⟨hab, hbe, he9⟩ := hv
      have hne : sarea (P a) (P b) (P e) ≠ 0 := by
        intro h0
        have := H a b e (by omega) (by omega) he9 (by omega) (by omega) (by omega)
        rw [h0, abs_zero] at this; linarith [A₀_pos]
      obtain ⟨br, hbr, hall⟩ := signBranches_exhaustive (P := P) (t := (a, b, e)) hne
      refine ⟨br, hbr, fun x hx => ⟨?_, ?_, ?_, hall x hx⟩⟩ <;>
      · simp only [signBranches, List.mem_cons, List.not_mem_nil, or_false] at hbr
        rcases hbr with rfl | rfl <;> simp at hx <;> subst hx <;> simp <;> omega
    · exact ⟨[], by simp, by simp [AllHold]⟩
  | three => exact ⟨[], by simp [triBranches], by simp [AllHold]⟩

/-- **Soundness of a table cover.** If the tree checks, no configuration satisfies the cell: the
point `z` of the cube carries the nine points `P` (`hpt`), all actual triangles have doubled area
at least `2A₀`, the expressions `pre` and `post` are nonnegative and the initial table holds. -/
theorem tableSpec_false {pre post : List Expr} {pt : ℕ → Expr × Expr} {free : List ℕ}
    {base : List SFact} {T : Cover.Tree Split} (hT : checkTree (tableSpec pre post pt free base) [] T = true)
    {z : ℕ → ℝ} (hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1) (hpt : ∀ i, i < 9 → ptEval z pt i = P i)
    (H : AreaOK P) (hfree : ∀ j ∈ free, j < 9) (hnd : free.Nodup)
    (hpre : ∀ e ∈ pre, 0 ≤ e.eval z) (hpost : ∀ e ∈ post, 0 ≤ e.eval z)
    (hbase : AllHold (FHolds P) base) : False := by
  refine checkTree_sound (σ := tableSpec pre post pt free base) (Holds := FHolds P) hz ?_
    (fun fs s _ => triBranches_ok H fs s) (fun _ _ _ h => absurd h (by simp [tableSpec]))
    (fs := []) (fun _ h => absurd h List.not_mem_nil) hT
  intro fs hfs e he
  simp only [tableSpec, tableAtoms, List.mem_append, List.mem_map] at he
  rcases he with (he | ⟨g, hg, rfl⟩) | he
  · exact hpre e he
  · exact H.cost_nonneg hpt hfree hnd (hbase.append hfs) (List.mem_append.2 hg)
  · exact hpost e he

end Heilbronn.C1OneLower
