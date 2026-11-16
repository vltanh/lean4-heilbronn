module

public import Heilbronn.Common.SignTable
public import Heilbronn.Common.TwoInteriorPoints
public import Heilbronn.Nine.Setup.Value

/-!
# Sign-table packages of nine points

The nine-point layer of the sign-table packages (`Heilbronn.Common.SignTable`), for nine points
`P 0, …, P 8` of a configuration of least triangle area at least `A₀`:

* `bnd`: the occupancy bounds `s = 8/73`, `3s`, `ρ = 49/60` for `0`, `1`, `≥ 2` certified inside
  points (`s < 2A₀`; `rho_lt`: `ρ < 2(4 + 2√3)A₀`);
* `AreaOK P`: every triangle of three distinct points among the nine has doubled area at least
  `2A₀` (`areaOK_of_min`: from a least-area hypothesis on a relabelling), with sub-configurations
  (`AreaOK.min_sub`), reindexing (`AreaOK.comp`), oriented bounds (`AreaOK.orient_area`,
  `AreaOK.pos_ge`, `AreaOK.neg_ge`) and the two-interior-point bound (`AreaOK.two_inside`);
* `AreaOK.costHyp`: the cost premises `CostHyp 9 free bnd P`; hence `AreaOK.cost_nonneg`, the
  strengthened cost of every true signed triangle is nonnegative, and
  `AreaOK.signBranches_ok`, the orientation split of an increasing triple is exhaustive.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.Package

open Cover Cert Cert.Expr

/-- The occupancy bounds `s = 8/73`, `3s = 24/73` and `ρ = 49/60` for `0`, `1` and `≥ 2`
certified inside points. -/
def bnd (n : ℕ) : ℚ := if n = 0 then 8 / 73 else if n = 1 then 24 / 73 else 49 / 60

theorem bnd_zero : bnd 0 = 8 / 73 := by norm_num [bnd]

theorem bnd_one : bnd 1 = 24 / 73 := by norm_num [bnd]

theorem bnd_add_two (n : ℕ) : bnd (n + 2) = 49 / 60 := by
  have h1 : ¬(n + 2 = 1) := by omega
  simp [bnd, h1]

/-- `ρ = 49/60 < 2KA₀`, `K = 4 + 2√3`. -/
theorem rho_lt : 49 / 60 < 2 * ((4 + 2 * Real.sqrt 3) * A₀) := by
  have h3 : (1.732 : ℝ) < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  have := A₀_bounds
  nlinarith

variable {P : ℕ → Point}

/-- Every triangle of three distinct points among the nine points `P 0, …, P 8` has doubled area
at least `2A₀`. -/
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

/-- The nine points reindexed by an injection `ι` of `0, …, 8`. -/
theorem AreaOK.comp (H : AreaOK P) (ι : ℕ → ℕ) (hι : ∀ i, i < 9 → ι i < 9)
    (hinj : ∀ a b, a < 9 → b < 9 → ι a = ι b → a = b) : AreaOK (fun i => P (ι i)) := by
  intro a b e ha hb he hab hbe hae
  exact H (ι a) (ι b) (ι e) (hι a ha) (hι b hb) (hι e he) (fun h => hab (hinj a b ha hb h))
    (fun h => hbe (hinj b e hb he h)) (fun h => hae (hinj a e ha he h))

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

/-- An oriented area bound: a positive area is at least `2A₀`. -/
theorem AreaOK.pos_ge (H : AreaOK P) {a b e : ℕ} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hab : a ≠ b) (hbe : b ≠ e) (hae : a ≠ e) (hp : 0 < sarea (P a) (P b) (P e)) :
    2 * A₀ ≤ sarea (P a) (P b) (P e) := by
  have := H a b e ha hb he hab hbe hae
  rwa [abs_of_pos hp] at this

/-- An oriented area bound: a negative area is at most `-2A₀`. -/
theorem AreaOK.neg_ge (H : AreaOK P) {a b e : ℕ} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hab : a ≠ b) (hbe : b ≠ e) (hae : a ≠ e) (hp : sarea (P a) (P b) (P e) < 0) :
    2 * A₀ ≤ -sarea (P a) (P b) (P e) := by
  have := H a b e ha hb he hab hbe hae
  rwa [abs_of_neg hp] at this

/-- An oriented triangle of the nine points has oriented doubled area at least `2A₀`. -/
theorem AreaOK.orient_area (H : AreaOK P) {sg : Bool} {a b e : ℕ} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hs : OrientHolds sg (sarea (P a) (P b) (P e))) :
    2 * A₀ ≤ sgArea sg (sarea (P a) (P b) (P e)) := by
  obtain ⟨n1, n2, n3⟩ := orient_idx_ne hs
  rw [sgArea_eq_abs hs]
  exact H a b e ha hb he n1 n2 n3

/-- A triangle of the nine points with two further points strictly inside has doubled area at
least `2KA₀ > ρ` (the two-interior-point lemma). -/
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
  have := twoInteriorPointLemma _ _ _ _ _ h₁ h₂ A₀ A₀_pos hm
  rw [triangleArea_eq] at this
  linarith [rho_lt]

/-- The cost premises of the nine points for the bounds `bnd`, the inside points counted among
`free`. -/
theorem AreaOK.costHyp (H : AreaOK P) {free : List ℕ} (hfree : ∀ j ∈ free, j < 9)
    (hnd : free.Nodup) : CostHyp 9 free bnd P := by
  refine CostHyp.of_inside hfree hnd (fun a b e ha hb he hab hbe hae => ?_) ?_ (ρ := 49 / 60)
    (fun n => ?_)
    (fun a b e j₁ j₂ ha hb he hj₁ hj₂ hd h₁ h₂ => H.two_inside ha hb he hj₁ hj₂ hd h₁ h₂)
  · have := H a b e ha hb he hab hbe hae
    have := A₀_bounds.2.1
    rw [bnd_zero]; push_cast; linarith
  · rw [bnd_one, bnd_zero]; norm_num
  · rw [bnd_add_two]; norm_num

/-- **The strengthened costs**: the cost of every signed triangle of a true table is nonnegative:
`s` for no certified inside point, `3s` for one (subdivision), `ρ` for two or more (the
two-interior-point lemma). -/
theorem AreaOK.cost_nonneg (H : AreaOK P) {pt : ℕ → Expr × Expr} {z : ℕ → ℝ}
    (hpt : ∀ i, i < 9 → ptEval z pt i = P i) {free : List ℕ} (hfree : ∀ j ∈ free, j < 9)
    (hnd : free.Nodup) {tb : List SFact} (htb : AllHold (FHolds 9 P) tb) {g : SFact}
    (hg : g ∈ tb) : 0 ≤ (costAtom pt bnd g (insideList tb free g).length).eval z := by
  obtain ⟨g1, g2, g3, gs⟩ := htb g hg
  exact (H.costHyp hfree hnd).costAtom_nonneg (g := g) hpt (allHold_holds htb)
    ⟨(g1.trans g2).trans g3, g2.trans g3, g3⟩ gs le_rfl

/-- The orientation split of an increasing triple of the nine points is exhaustive. -/
theorem AreaOK.signBranches_ok (H : AreaOK P) {a b c : ℕ} (hv : a < b ∧ b < c ∧ c < 9) :
    ∃ br ∈ signBranches (a, b, c), AllHold (FHolds 9 P) br := by
  obtain ⟨hab, hbc, hc⟩ := hv
  exact fholds_signBranches hab hbc hc
    (H.ne_zero (by omega) (by omega) hc (by omega) (by omega) (by omega))

end Heilbronn.Nine.Package
