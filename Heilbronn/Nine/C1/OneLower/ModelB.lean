module

public import Heilbronn.Nine.C1.ZeroLowerCover

/-! # Shared certificate model for the one-lower packages of group B

Shared by the packages of `docs/proof/nine/C1_ONE_LOWER_{TOP_TRIANGLE, RIGHT_TOP_TRIANGLE, CONVEX_TOP,
MIXED_CAPS}.md`. Computable, kernel-friendly definitions and their soundness:

* `AreaOK P` (every actual triangle of the nine points `P 0, …, P 8` has doubled area at least
  `2A₀`), `areaOK_of_min`, `AreaOK.cost_nonneg` (the strengthened occupancy costs `s, 3s, ρ`);
* `tableSpec pre post pt free base`: a cover package whose atoms are `pre`, the strengthened costs
  of the signed triangles of the table `base ++ path` and `post`; `tableSpec_false`;
* radial words as lists: `hsign n w i j` (`(j - i) mod n ≤ wᵢ`), `hullTable n ws` (the signs of
  every triple with at most one interior point, and the ray-order signs of interior pairs);
* `enumW`: a pruned enumeration of radial words, with `enumW_sound`.

(The first group is a copy, under this namespace, of the shared module of the other one-lower
packages, so that the two groups compile independently.)
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerB

open Heilbronn.Nine.C1 Heilbronn.Nine.C1ZeroLower Cover Cert Cert.Expr Model

variable {P : ℕ → Point}

/-! ### Areas of the nine points -/

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

/-- A nonzero area: the three indices are distinct points of the nine. -/
theorem AreaOK.ne_zero (H : AreaOK P) {a b e : ℕ} (ha : a < 9) (hb : b < 9) (he : e < 9)
    (hab : a ≠ b) (hbe : b ≠ e) (hae : a ≠ e) : sarea (P a) (P b) (P e) ≠ 0 := by
  intro h0
  have := H a b e ha hb he hab hbe hae
  rw [h0, abs_zero] at this; linarith [A₀_pos]

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
      have hne : sarea (P a) (P b) (P e) ≠ 0 :=
        H.ne_zero (by omega) (by omega) he9 (by omega) (by omega) (by omega)
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
    {base : List SFact} {T : Cover.Tree Split}
    (hT : checkTree (tableSpec pre post pt free base) [] T = true)
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

/-! ### Radial words as lists -/

/-- The checkers' `sign(word, i, j)` for an `n`-gon: `(j - i) mod n ≤ wᵢ`. -/
def hsign (n : ℕ) (w : List ℕ) (i j : ℕ) : Bool := ((j + n - i) % n).ble (w.getD i 0)

/-- The checkers' `inside(word, (a, b, c))`. -/
def hinside (n : ℕ) (w : List ℕ) (a b c : ℕ) : Bool :=
  hsign n w a b && hsign n w b c && hsign n w c a

/-- The ray-order signs of the interior pair `(a, b)` (point indices `n + a`, `n + b`): at each
vertex `v` where the words differ, `sgn[V_v A B] = sgn(r_v(B) - r_v(A))`. -/
def raySigns (n : ℕ) (ws : List (List ℕ)) (a b : ℕ) : List SFact :=
  (List.range n).filterMap fun v =>
    let x := (ws.getD a []).getD v 0
    let y := (ws.getD b []).getD v 0
    if x = y then none else some ((v, n + a, n + b), decide (x < y))

/-- The sign of an increasing triple with at most one interior point (hull triples positive; two
hull vertices and an interior point from its word). -/
def hullTripleSign (n : ℕ) (ws : List (List ℕ)) (t : ℕ × ℕ × ℕ) : Option Bool :=
  if t.2.2 < n then some true
  else if t.2.1 < n then some (hsign n (ws.getD (t.2.2 - n) []) t.1 t.2.1)
  else none

/-- The interior index pairs `a < b` below `m`, in lexicographic order. -/
def idxPairs (m : ℕ) : List (ℕ × ℕ) :=
  (List.range m).flatMap fun a => ((List.range m).filter fun b => a < b).map fun b => (a, b)

/-- The initially known signs of a hull cell: every lexicographic triple of the nine points with
at most one interior point, then the ray-order signs of the interior pairs. -/
def hullTable (n : ℕ) (ws : List (List ℕ)) : List SFact :=
  lexTriples.filterMap (fun t => (hullTripleSign n ws t).map fun sg => (t, sg)) ++
    (idxPairs ws.length).flatMap fun p => raySigns n ws p.1 p.2

/-! ### A pruned enumeration of radial words -/

/-- The complement relation (13) for the pair of positions `a < b` of an `n`-word. -/
def pairOK (n : ℕ) (w : List ℕ) (a b : ℕ) : Bool :=
  decide (b - a ≤ w.getD a 0) == decide (w.getD b 0 < n - (b - a))

/-- The complement relation between the last position of `w` and every earlier one. -/
def lastOK (n : ℕ) (w : List ℕ) : Bool :=
  (List.range (w.length - 1)).all fun a => pairOK n w a (w.length - 1)

/-- Every extension of `w` by `k` entries in `{1, …, m}` that satisfies `lastOK` at each step
satisfies `p` (a pruned enumeration). -/
def enumW (n m : ℕ) (p : List ℕ → Bool) : ℕ → List ℕ → Bool
  | 0, w => p w
  | k + 1, w => (List.range m).all fun a => !(lastOK n (w ++ [a + 1])) || enumW n m p k (w ++ [a + 1])

theorem enumW_sound (n m : ℕ) (p : List ℕ → Bool) :
    ∀ (k : ℕ) (w u : List ℕ), enumW n m p k w = true → u.length = k →
      (∀ x ∈ u, 1 ≤ x ∧ x ≤ m) → (∀ i, i < k → lastOK n (w ++ u.take (i + 1)) = true) →
      p (w ++ u) = true := by
  intro k
  induction k with
  | zero =>
    intro w u h hu _ _
    rw [List.length_eq_zero_iff] at hu; subst hu
    simpa [enumW] using h
  | succ k ih =>
    intro w u h hu hx hl
    obtain ⟨x, u', rfl⟩ : ∃ x u', u = x :: u' := by
      rcases u with _ | ⟨x, u'⟩
      · simp at hu
      · exact ⟨x, u', rfl⟩
    simp only [List.length_cons, add_left_inj] at hu
    have hx1 := hx x (List.mem_cons_self ..)
    simp only [enumW, List.all_eq_true, List.mem_range] at h
    have h1 := h (x - 1) (by omega)
    rw [show x - 1 + 1 = x by omega] at h1
    have l0 := hl 0 (by omega)
    simp only [zero_add, List.take_succ_cons, List.take_zero] at l0
    rw [l0, Bool.not_true, Bool.false_or] at h1
    have := ih (w ++ [x]) u' h1 hu (fun y hy => hx y (List.mem_cons_of_mem _ hy)) (by
      intro i hi
      have := hl (i + 1) (by omega)
      simpa [List.take_succ_cons] using this)
    simpa using this

end Heilbronn.Nine.C1OneLowerB
