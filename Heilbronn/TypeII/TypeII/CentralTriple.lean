module

public import Heilbronn.TypeII.TypeII.Chamber
public import Heilbronn.TypeII.TypeII.Normalization

/-! # Type II: three central points and its affine versions (`hand/TYPE_II.md`, §§7, 9, 10)

`TYPE_II.md` lines 538–814 and 831–1090.

* `centralTripleTheorem` (**Central-triple theorem**, §7): with `b ≤ 1/2`, three points
  strictly inside `DCB` force a triangle of area `< 7/128` among the seven points `D, C, E, B`
  and these three; `claim_exclude_central_three`: hence the rows `(1,3,2)` and `(2,3,1)` are
  excluded at least area `A₀`.
* `claim_mesh_kstar` ((23)–(25)): the bounds on the distributed central mesh, for a doubled
  threshold `s ≥ 7/64` (§10 notes that their proofs only need `s ≥ 7/64`).
* `claim_chamber_extension` (§9): the chamber lemma of §6 for `b ≤ 11/20` and `0 ≤ λ < 1`.
* `affineCorollary` (**Affine corollary**, §9): an actual triangle `ABC` containing three
  further points and an actual point `E` with barycentric coordinates `(α, q, -p)`,
  `0 < q ≤ 1`, `0 < p ≤ 11q/20`, force a triangle of area `< (7/64) S`.
* `coupledAffineCorollary` (**Coupled affine corollary**, §10) for `q ≤ 30/29` at a normalized
  doubled threshold `s ≥ s₀ max(1, q)`, `s₀ = 2A₀`, and its geometric form
  `coupledAffineCorollary_geometric`.

Barycentric coordinates: `bary A B C α β γ` is the affine combination `αA + βB + γC`
(with `α + β + γ = 1`). The off-route remark of lines 920–934 (a maximum-area triangle with three
interior points) is not stated.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeII

/-- The affine combination `αA + βB + γC`; with `α + β + γ = 1` these are the barycentric
coordinates `(α, β, γ)` in the triangle `ABC`. -/
def bary (A B C : Point) (α β γ : ℝ) : Point :=
  (α * A.1 + β * B.1 + γ * C.1, α * A.2 + β * B.2 + γ * C.2)


/-- The scalar core of `claim_mesh_kstar`: from the seven-face sum, the identities (18), the
summed Plücker identities (19) and all thirteen areas at least `s ≥ 7/64`. With
`σ = a + b + c`, (22) reads `σ²/3 - sσ + 3s² ≥ 6sk` and `1 ≥ 3s + σ + k`. -/
theorem mesh_alg {x y z a b c k uA uB uC vA vB vC s : ℝ} (hs : 7 / 64 ≤ s)
    (h7 : x + y + z + a + b + c + k = 1)
    (h18 : uA + vA + uB + vB + uC + vC = a + b + c + 3 * k)
    (h19 : k * (x + y + z) = a * b + b * c + c * a - (uA * vB + uB * vC + uC * vA))
    (hx : s ≤ x) (hy : s ≤ y) (hz : s ≤ z) (ha : s ≤ a) (hb : s ≤ b) (hc : s ≤ c)
    (hk : s ≤ k) (huA : s ≤ uA) (huB : s ≤ uB) (huC : s ≤ uC) (hvA : s ≤ vA) (hvB : s ≤ vB)
    (hvC : s ≤ vC) :
    k < 9 / 8 * s ∧ Γsix * s + (x - s) ≤ 1 ∧ Γsix * s + (y - s) ≤ 1 ∧
      Γsix * s + (z - s) ≤ 1 := by
  have hs0 : 0 < s := by linarith
  -- (22): `σ²/3 - sσ + 3s² ≥ 6sk`
  have e1 : s * (uA + vB) - s ^ 2 ≤ uA * vB := by
    nlinarith [mul_nonneg (sub_nonneg.2 huA) (sub_nonneg.2 hvB)]
  have e2 : s * (uB + vC) - s ^ 2 ≤ uB * vC := by
    nlinarith [mul_nonneg (sub_nonneg.2 huB) (sub_nonneg.2 hvC)]
  have e3 : s * (uC + vA) - s ^ 2 ≤ uC * vA := by
    nlinarith [mul_nonneg (sub_nonneg.2 huC) (sub_nonneg.2 hvA)]
  have e4 : 3 * s * k ≤ k * (x + y + z) := by nlinarith
  have hsq : 3 * (a * b + b * c + c * a) ≤ (a + b + c) ^ 2 := by
    nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a)]
  have h22 : 6 * s * k + s * (a + b + c) - 3 * s ^ 2 ≤ (a + b + c) ^ 2 / 3 := by nlinarith
  have h22b : 3 * s + (a + b + c) + k ≤ 1 := by linarith
  have hσ3 : 3 * s ≤ a + b + c := by linarith
  have hsk : s * s ≤ s * k := mul_le_mul_of_nonneg_left hk hs0.le
  have hs2 : 0 < s * s := mul_pos hs0 hs0
  have hears : 2 * s ≤ x + y + z - x ∧ 2 * s ≤ x + y + z - y ∧ 2 * s ≤ x + y + z - z := by
    refine ⟨?_, ?_, ?_⟩ <;> linarith
  clear e1 e2 e3 e4 hsq h19 h18 huA huB huC hvA hvB hvC
  generalize hσdef : a + b + c = σ at h22 h22b hσ3
  have h5 : Real.sqrt 5 ^ 2 = 5 := Real.sq_sqrt (by norm_num)
  have h5g : 2 < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  -- `σ ≥ 3s(1+√5)/2`
  have hσ : 3 * s * (1 + Real.sqrt 5) / 2 ≤ σ := by
    by_contra hcon
    push Not at hcon
    have hid : σ ^ 2 / 3 - s * σ - 3 * s ^ 2 =
        (σ - 3 * s * (1 + Real.sqrt 5) / 2) * (σ - 3 * s * (1 - Real.sqrt 5) / 2) / 3 := by
      linear_combination ((3 : ℝ) / 4 * s ^ 2) * h5
    have hp : 0 < (3 * s * (1 + Real.sqrt 5) / 2 - σ) * (σ - 3 * s * (1 - Real.sqrt 5) / 2) :=
      mul_pos (by linarith) (by nlinarith)
    nlinarith only [hid, hp, h22, hsk]
  refine ⟨?_, ?_, ?_, ?_⟩
  · by_contra hcon
    push Not at hcon
    have hT : σ ≤ 281 / 56 * s := by linarith
    have hk' : 9 / 8 * (s * s) ≤ s * k := by nlinarith only [hcon, hs0]
    nlinarith only [mul_nonneg (sub_nonneg.2 hσ3) (sub_nonneg.2 hT), h22, hk', hs2]
  all_goals unfold Γsix; linarith [hears.1, hears.2.1, hears.2.2]

/-- **Claim** (`TYPE_II:claim-mesh-kstar`). The distributed central mesh: in a triangle `ABC` of
signed doubled area `1`, three points `X, Y, Z` whose seven mesh areas `x = ⟨ABZ⟩`,
`y = ⟨BCX⟩`, `z = ⟨CAY⟩`, `a = ⟨AZY⟩`, `b* = ⟨BXZ⟩`, `c* = ⟨CYX⟩`, `k* = ⟨ZXY⟩` and six cross
areas `u_A = ⟨AZX⟩`, `u_B = ⟨BXY⟩`, `u_C = ⟨CYZ⟩`, `v_A = ⟨AXY⟩`, `v_B = ⟨BYZ⟩`,
`v_C = ⟨CZX⟩` (signed doubled areas) are all at least `s ≥ 7/64` satisfy `k* < 9s/8` (23) and,
for each ear `e ∈ {x, y, z}`, `1 ≥ Γs + (e - s)` (24); at `s = 7/64` moreover `x < 23/128`
(25). `hand/TYPE_II.md`, lines 570–641 (the restriction `s ≥ 7/64`: lines 963–964).

Uses: CORNER_FAMILIES:eq20 (the Plücker inequalities (22)), the seven-face sum. -/
theorem claim_mesh_kstar {A B C X Y Z : Point} {s : ℝ} (hs : 7 / 64 ≤ s)
    (hABC : sarea A B C = 1)
    (hx : s ≤ sarea A B Z) (hy : s ≤ sarea B C X) (hz : s ≤ sarea C A Y)
    (ha : s ≤ sarea A Z Y) (hb : s ≤ sarea B X Z) (hc : s ≤ sarea C Y X) (hk : s ≤ sarea Z X Y)
    (huA : s ≤ sarea A Z X) (huB : s ≤ sarea B X Y) (huC : s ≤ sarea C Y Z)
    (hvA : s ≤ sarea A X Y) (hvB : s ≤ sarea B Y Z) (hvC : s ≤ sarea C Z X) :
    sarea Z X Y < 9 / 8 * s ∧
      Γsix * s + (sarea A B Z - s) ≤ 1 ∧ Γsix * s + (sarea B C X - s) ≤ 1 ∧
      Γsix * s + (sarea C A Y - s) ≤ 1 ∧
      (s = 7 / 64 → sarea A B Z < 23 / 128) := by
  have h7 : sarea A B Z + sarea B C X + sarea C A Y + sarea A Z Y + sarea B X Z + sarea C Y X +
      sarea Z X Y = 1 := by rw [← hABC]; unfold sarea; ring
  have h18 : sarea A Z X + sarea A X Y + sarea B X Y + sarea B Y Z + sarea C Y Z + sarea C Z X =
      sarea A Z Y + sarea B X Z + sarea C Y X + 3 * sarea Z X Y := by unfold sarea; ring
  have h19 : sarea Z X Y * (sarea A B Z + sarea B C X + sarea C A Y) =
      sarea A Z Y * sarea B X Z + sarea B X Z * sarea C Y X + sarea C Y X * sarea A Z Y -
        (sarea A Z X * sarea B Y Z + sarea B X Y * sarea C Z X + sarea C Y Z * sarea A X Y) := by
    unfold sarea; ring
  obtain ⟨h1, h2, h3, h4⟩ := mesh_alg hs h7 h18 h19 hx hy hz ha hb hc hk huA huB huC hvA hvB hvC
  refine ⟨h1, h2, h3, h4, fun hs7 => ?_⟩
  subst hs7
  have h5 : (11 : ℝ) / 5 < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  unfold Γsix at h2
  nlinarith

/-! ### The central triple in the physical frame `A = D`, `B = B`, `C = C` (`⟨DBC⟩ = 1`) -/

section CentralTripleProof

variable {l b : ℝ} {X Y Z : Point}

/-- The scalar end of the two-point and one-point cuts: (29)/(30) give
`k(1+p) ≥ s(1 + p + 2s)`, impossible with `k < 9s/8`, `p ≤ 1/2`, `s = 7/64`. -/
theorem ct_K_contra {k p : ℝ} (hk : k < 9 / 8 * (7 / 64)) (hp0 : 0 ≤ p) (hp : p ≤ 1 / 2)
    (h : 7 / 64 * (1 + p + 2 * (7 / 64)) ≤ k * (1 + p)) : False := by
  nlinarith [mul_le_mul_of_nonneg_right hk.le (by linarith : (0:ℝ) ≤ 1 + p)]

/-- The case of no central point above `CE`: the six-point theorem on `EBC` gives
`α ≥ Γs`, while `α ≤ 1 - p ≤ 1 - s`. -/
theorem ct_none (_hb : 0 < b) (hb2 : b ≤ 1 / 2) (hl1 : l < 1)
    (hX : InTriangle X (ptE l) (ptB b) ptC) (hY : InTriangle Y (ptE l) (ptB b) ptC)
    (hZ : InTriangle Z (ptE l) (ptB b) ptC)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z])
    (hp : 7 / 64 ≤ b * (1 - l)) : False := by
  have hsub : 7 / 128 ≤ minTriangleArea ![ptE l, ptB b, ptC, X, Y, Z] :=
    hmin.trans (min_le_min_reindex (by norm_num) _ _ ![2, 3, 1, 4, 5, 6] (by decide)
      (by funext m; fin_cases m <;> rfl))
  have h6 := CornerFamilies.sixPointTriangularHullTheorem (ptE l) (ptB b) ptC X Y Z (Or.inl hX)
    (Or.inl hY) (Or.inl hZ) _ hsub
  have hEBC : sarea (ptE l) (ptB b) ptC = 1 + b * (1 - l) - (1 - l) := by
    simp only [sarea, ptE, ptB, ptC]; ring
  have hpos : 0 < sarea (ptE l) (ptB b) ptC := by
    have := sarea_add_sarea_add_sarea (ptE l) (ptB b) ptC X
    obtain ⟨a1, a2, a3⟩ := hX
    linarith
  rw [triangleArea_eq, abs_of_pos hpos, hEBC] at h6
  have h5 : 2 < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  nlinarith [mul_le_mul_of_nonneg_right hb2 (by linarith : (0:ℝ) ≤ 1 - l)]

set_option maxHeartbeats 800000 in
/-- The core of the central-triple theorem, for a labelled mesh `X, Y, Z` of `DBC` (the thirteen
mesh and cross areas positive). -/
theorem centralTriple_core (hb : 0 < b) (hb2 : b ≤ 1 / 2) (hl : 0 < l) (hl1 : l < 1)
    (hX : IsCentral b X) (hY : IsCentral b Y) (hZ : IsCentral b Z)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z])
    (px : 0 < sarea ptD (ptB b) Z) (py : 0 < sarea (ptB b) ptC X) (pz : 0 < sarea ptC ptD Y)
    (pa : 0 < sarea ptD Z Y) (pb : 0 < sarea (ptB b) X Z) (pc : 0 < sarea ptC Y X)
    (pk : 0 < sarea Z X Y) (puA : 0 < sarea ptD Z X) (puB : 0 < sarea (ptB b) X Y)
    (puC : 0 < sarea ptC Y Z) (pvA : 0 < sarea ptD X Y) (pvB : 0 < sarea (ptB b) Y Z)
    (pvC : 0 < sarea ptC Z X) : False := by
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z] := by linarith
  have ge : ∀ {t : ℝ}, 0 < t → 7 / 64 ≤ |t| → 7 / 64 ≤ t := fun h1 h2 => by
    rwa [abs_of_pos h1] at h2
  have hx := ge px (le_abs_sarea_of_le_min hm 0 3 6)
  have hy := ge py (le_abs_sarea_of_le_min hm 3 1 4)
  have hz := ge pz (le_abs_sarea_of_le_min hm 1 0 5)
  have ha := ge pa (le_abs_sarea_of_le_min hm 0 6 5)
  have hb' := ge pb (le_abs_sarea_of_le_min hm 3 4 6)
  have hc := ge pc (le_abs_sarea_of_le_min hm 1 5 4)
  have hk := ge pk (le_abs_sarea_of_le_min hm 6 4 5)
  have huA := ge puA (le_abs_sarea_of_le_min hm 0 6 4)
  have huB := ge puB (le_abs_sarea_of_le_min hm 3 4 5)
  have huC := ge puC (le_abs_sarea_of_le_min hm 1 5 6)
  have hvA := ge pvA (le_abs_sarea_of_le_min hm 0 4 5)
  have hvB := ge pvB (le_abs_sarea_of_le_min hm 3 5 6)
  have hvC := ge pvC (le_abs_sarea_of_le_min hm 1 6 4)
  have hABC : sarea ptD (ptB b) ptC = 1 := by simp [sarea, ptD, ptB, ptC]
  obtain ⟨hk98, -, hey, -, hx23⟩ := claim_mesh_kstar le_rfl hABC hx hy hz ha hb' hc hk huA huB
    huC hvA hvB hvC
  have hx23 := hx23 rfl
  -- `p = bq ≥ s` from `DEB`
  have hp : 7 / 64 ≤ b * (1 - l) := by
    have this : 7 / 64 ≤ |sarea ptD (ptE l) (ptB b)| := le_abs_sarea_of_le_min hm 0 2 3
    have e : sarea ptD (ptE l) (ptB b) = b * (1 - l) := by simp [sarea, ptD, ptE, ptB]; ring
    rwa [e, abs_of_pos (by nlinarith)] at this
  have hq : 0 < 1 - l := by linarith
  have hpq : b * (1 - l) ≤ (1 - l) / 2 := by nlinarith
  -- the identities
  have F1 : ∀ P : Point, sarea (ptE l) ptC P =
      (1 - l) * sarea (ptB b) ptC P - (1 + b * (1 - l) - (1 - l)) * sarea ptC ptD P := by
    intro P; simp [sarea, ptE, ptC, ptB, ptD]; ring
  have Fsum : ∀ P : Point, sarea (ptB b) ptC P + sarea ptC ptD P + sarea ptD (ptB b) P = 1 := by
    intro P; simp [sarea, ptC, ptB, ptD]; ring
  have F2 : sarea (ptE l) Y Z = (1 - l) * (sarea ptD Z Y + sarea (ptB b) Y Z) - sarea ptD Z Y -
      b * (1 - l) * (sarea ptD Z Y + sarea ptC Y Z) := by simp [sarea, ptE, ptC, ptB, ptD]; ring
  have F3 : sarea (ptE l) X Z = (1 - l) * (sarea ptD Z X + sarea (ptB b) X Z) -
      (1 + b * (1 - l)) * sarea ptD Z X + b * (1 - l) * sarea ptC Z X := by
    simp [sarea, ptE, ptC, ptB, ptD]; ring
  have F4 : ∀ P : Point, sarea ptD (ptE l) P =
      (1 - l) * sarea ptD (ptB b) P + b * (1 - l) * sarea ptC ptD P := by
    intro P; simp [sarea, ptE, ptC, ptB, ptD]; ring
  have F5 : sarea ptD (ptE l) Z * sarea Z X Y =
      sarea ptD Z Y * sarea (ptE l) X Z - sarea ptD Z X * sarea (ptE l) Y Z := by
    simp [sarea, ptE, ptD]; ring
  have F6 : sarea ptC ptD X = sarea ptC ptD Y + sarea ptC Y X + sarea ptD X Y := by
    simp [sarea, ptC, ptD]; ring
  have F7 : sarea (ptB b) ptC Z = sarea (ptB b) ptC X + sarea (ptB b) X Z + sarea ptC Z X := by
    simp [sarea, ptC, ptB]; ring
  have G1 : sarea (ptE l) ptC Z * sarea (ptB b) ptC Y = sarea (ptE l) ptC Y * sarea (ptB b) ptC Z -
      (1 + b * (1 - l) - (1 - l)) * sarea ptC Y Z := by
    simp [sarea, ptE, ptC, ptB]; ring
  have G2 : sarea (ptE l) ptC X * sarea (ptB b) ptC Z = sarea (ptE l) ptC Z * sarea (ptB b) ptC X -
      (1 + b * (1 - l) - (1 - l)) * sarea ptC Z X := by
    simp [sarea, ptE, ptC, ptB]; ring
  have Hc : sarea ptD (ptE l) Y * sarea (ptE l) ptC Z =
      sarea (ptE l) Y Z * (1 - l) + sarea ptD (ptE l) Z * sarea (ptE l) ptC Y := by
    simp [sarea, ptE, ptC, ptD]; ring
  obtain ⟨xC, xA, xB⟩ := hX
  obtain ⟨yC, yA, yB⟩ := hY
  obtain ⟨zC, zA, zB⟩ := hZ
  have hα : 0 < 1 + b * (1 - l) - (1 - l) := by nlinarith
  -- signs of `⟨ECP⟩`
  have eX : 7 / 64 ≤ |sarea (ptE l) ptC X| := le_abs_sarea_of_le_min hm 2 1 4
  have eY : 7 / 64 ≤ |sarea (ptE l) ptC Y| := le_abs_sarea_of_le_min hm 2 1 5
  have eZ : 7 / 64 ≤ |sarea (ptE l) ptC Z| := le_abs_sarea_of_le_min hm 2 1 6
  have eYZ : 7 / 64 ≤ |sarea (ptE l) Y Z| := le_abs_sarea_of_le_min hm 2 5 6
  have eXZ : 7 / 64 ≤ |sarea (ptE l) X Z| := le_abs_sarea_of_le_min hm 2 4 6
  have nz : ∀ {t : ℝ}, 7 / 64 ≤ |t| → t ≠ 0 := fun h h0 => by rw [h0, abs_zero] at h; linarith
  have cut : ∀ {P : Point}, IsCentral b P → (0 < sarea (ptE l) ptC P → InTriangle P ptD (ptE l) ptC)
      ∧ (sarea (ptE l) ptC P < 0 → InTriangle P (ptE l) (ptB b) ptC) := fun hP =>
    ⟨(claim_central_cut hb (by linarith) hl hl1 hP).1.2,
      (claim_central_cut hb (by linarith) hl hl1 hP).2.2⟩
  have hp' : 0 < b * (1 - l) := by linarith
  have hp2 : b * (1 - l) ≤ 1 / 2 := by linarith
  have FY := F1 Y
  have FX := F1 X
  have sY1 := Fsum Y
  have sX1 := Fsum X
  have sZ1 := Fsum Z
  rcases lt_or_gt_of_ne (nz eY) with sY | sY <;> rcases lt_or_gt_of_ne (nz eZ) with sZ | sZ <;>
    rcases lt_or_gt_of_ne (nz eX) with sX | sX
  · -- no point above `CE`
    exact ct_none hb hb2 hl1 ((cut ⟨xC, xA, xB⟩).2 sX) ((cut ⟨yC, yA, yB⟩).2 sY)
      ((cut ⟨zC, zA, zB⟩).2 sZ) hmin hp
  · linarith only [G2, mul_pos sX zA, mul_neg_of_neg_of_pos sZ xA, mul_pos hα pvC]
  · linarith only [G1, mul_pos sZ yA, mul_neg_of_neg_of_pos sY zA, mul_pos hα puC]
  · linarith only [G1, mul_pos sZ yA, mul_neg_of_neg_of_pos sY zA, mul_pos hα puC]
  · -- only `Y` above `CE`
    rw [abs_of_pos sY] at eY
    have sYZ : sarea (ptE l) Y Z < 0 := by
      rcases lt_or_gt_of_ne (nz eYZ) with h | h
      · exact h
      · exfalso
        have h1 : 0 < sarea ptD (ptE l) Y := by
          rw [F4]; linarith only [mul_pos hq yC, mul_pos hp' yB]
        have h2 : 0 < sarea ptD (ptE l) Z := by
          rw [F4]; linarith only [mul_pos hq zC, mul_pos hp' zB]
        linarith only [Hc, mul_pos h1 (neg_pos.2 sZ), mul_pos h2 sY, mul_pos h hq]
    rw [abs_of_neg sYZ] at eYZ
    rcases lt_or_gt_of_ne (nz eXZ) with sXZ | sXZ
    · rw [abs_of_neg sXZ] at eXZ
      have hqY : (1 - l) * (1 - sarea ptD (ptB b) Y) =
          (1 - l) * (sarea (ptB b) ptC Y + sarea ptC ptD Y) := by rw [← sY1]; ring
      have e1 : 0 ≤ ((1 + b * (1 - l)) * sarea ptD Z X - b * (1 - l) * sarea ptC Z X - 7 / 64 -
          (1 - l) * (sarea ptD Z X + sarea (ptB b) X Z)) * (1 - sarea ptD (ptB b) Y) :=
        mul_nonneg (by linarith only [eXZ, F3]) (by linarith only [sY1, yA, yB])
      have e2 : 0 ≤ ((1 - l) * (1 - sarea ptD (ptB b) Y) - (7 / 64 + (1 + b * (1 - l)) *
          sarea ptC ptD Y)) * (sarea ptD Z X + sarea (ptB b) X Z) :=
        mul_nonneg (by linarith only [eY, FY, hqY]) (by linarith only [huA, hb'])
      have e3 : 0 ≤ (sarea ptC Z X - 7 / 64) * (b * (1 - l) + sarea ptD (ptB b) Y) :=
        mul_nonneg (by linarith only [hvC]) (by linarith only [hp', yC])
      have F9 : ((1 + b * (1 - l)) * sarea ptD Z X - b * (1 - l) * sarea ptC Z X - 7 / 64) *
          (1 - sarea ptD (ptB b) Y) - (7 / 64 + (1 + b * (1 - l)) * sarea ptC ptD Y) *
          (sarea ptD Z X + sarea (ptB b) X Z) = sarea Z X Y * (1 + b * (1 - l)) -
          sarea ptC Z X * (b * (1 - l) + sarea ptD (ptB b) Y) -
          7 / 64 * (1 - sarea ptD (ptB b) Y + sarea ptD Z X + sarea (ptB b) X Z) := by
        simp only [sarea, ptC, ptB, ptD]; ring
      exact ct_K_contra hk98 hp'.le hp2 (by linarith only [e1, e2, e3, F9, huA, hb'])
    · rw [abs_of_pos sXZ] at eXZ
      -- the Plücker identity at `Z`: `u k* ≥ 2s²`, so `u > 7/36`
      have hu : 7 / 36 < sarea ptD (ptE l) Z := by
        have h2s : 2 * (7 / 64) ^ 2 ≤ sarea ptD (ptE l) Z * sarea Z X Y := by
          have m1 := mul_le_mul ha eXZ (by norm_num) pa.le
          have m2 := mul_le_mul huA eYZ (by norm_num) puA.le
          linarith only [F5, m1, m2]
        by_contra hcon; push Not at hcon
        nlinarith only [h2s, hk98, mul_le_mul_of_nonneg_right hcon pk.le]
      -- two interior points `X, Z` of `EBC`: `q < 19/48`
      have hsub : 7 / 128 ≤ minTriangleArea ![ptE l, ptB b, ptC, X, Z] :=
        hmin.trans (min_le_min_reindex (by norm_num) _ _ ![2, 3, 1, 4, 6] (by decide)
          (by funext m; fin_cases m <;> rfl))
      have h2 := CornerFamilies.twoInteriorPointLemma (ptE l) (ptB b) ptC X Z
        (Or.inl ((cut ⟨xC, xA, xB⟩).2 sX)) (Or.inl ((cut ⟨zC, zA, zB⟩).2 sZ)) (7 / 128)
        (by norm_num) hsub
      have hEBC : sarea (ptE l) (ptB b) ptC = 1 + b * (1 - l) - (1 - l) := by
        simp only [sarea, ptE, ptB, ptC]; ring
      rw [triangleArea_eq, hEBC, abs_of_pos hα] at h2
      have h3 : 5 / 3 < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
      have hq48 : 1 - l < 19 / 48 := by linarith only [h2, hpq, h3]
      have hZA : 21 / 64 ≤ sarea (ptB b) ptC Z := by linarith only [F7, hy, hb', hvC]
      rw [F4] at hu
      have m1 := mul_le_mul_of_nonneg_right hpq zB.le
      have m2 := mul_le_mul_of_nonneg_right hq48.le
        (by linarith only [zC, zB] : (0:ℝ) ≤ sarea ptD (ptB b) Z + sarea ptC ptD Z / 2)
      linarith only [hu, m1, m2, sZ1, hZA, hx23]
  · linarith only [G2, mul_pos sX zA, mul_neg_of_neg_of_pos sZ xA, mul_pos hα pvC]
  · -- `Y, Z` above `CE`
    rcases lt_or_gt_of_ne (nz eYZ) with sYZ | sYZ
    · have hsub : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, Y, Z] :=
        hmin.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 2, 3, 5, 6] (by decide)
          (by funext m; fin_cases m <;> rfl))
      have := twoPointChamberLemma hb hb2 hl hl1 ⟨yC, yA, yB⟩ ((cut ⟨yC, yA, yB⟩).1 sY)
        ⟨zC, zA, zB⟩ ((cut ⟨zC, zA, zB⟩).1 sZ) pvB sYZ
      linarith only [this, hsub]
    · rw [abs_of_pos sYZ] at eYZ
      rw [abs_of_neg sX] at eX
      have e1 : 0 ≤ ((1 + b * (1 - l)) * sarea ptC ptD X - 7 / 64 -
          (1 - l) * (sarea (ptB b) ptC X + sarea ptC ptD X)) *
          (sarea ptD Z Y + sarea (ptB b) Y Z) :=
        mul_nonneg (by linarith only [eX, FX]) (by linarith only [ha, hvB])
      have e2 : 0 ≤ ((1 - l) * (sarea ptD Z Y + sarea (ptB b) Y Z) -
          (sarea ptD Z Y + 7 / 64 + b * (1 - l) * (sarea ptD Z Y + sarea ptC Y Z))) *
          (sarea (ptB b) ptC X + sarea ptC ptD X) :=
        mul_nonneg (by linarith only [eYZ, F2]) (by linarith only [xA, xB])
      have e3 : 0 ≤ (sarea ptC Y Z - 7 / 64) * (b * (1 - l) + sarea ptD (ptB b) X) :=
        mul_nonneg (by linarith only [huC]) (by linarith only [hp', xC])
      have F8 : ((1 + b * (1 - l)) * sarea ptC ptD X - 7 / 64) *
          (sarea ptD Z Y + sarea (ptB b) Y Z) -
          (sarea ptD Z Y + 7 / 64 + b * (1 - l) * (sarea ptD Z Y + sarea ptC Y Z)) *
          (sarea (ptB b) ptC X + sarea ptC ptD X) = sarea Z X Y * (1 + b * (1 - l)) -
          sarea ptC Y Z * (b * (1 - l) + sarea ptD (ptB b) X) -
          7 / 64 * (1 - sarea ptD (ptB b) X + sarea ptD Z Y + sarea (ptB b) Y Z) := by
        simp only [sarea, ptC, ptB, ptD]; ring
      exact ct_K_contra hk98 hp'.le hp2 (by linarith only [e1, e2, e3, F8, ha, hvB, sX1])
  · -- all three above `CE`
    rw [abs_of_pos sX] at eX
    rw [FX] at eX
    have hXB : 3 * (7 / 64) ≤ sarea ptC ptD X := by linarith only [F6, hz, hc, hvA]
    have h5 : (495 : ℝ) / 224 < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
    unfold Γsix at hey
    have m1 := mul_le_mul hp hXB (by norm_num) hp'.le
    have m2 := mul_nonneg hl.le (by linarith only [xA, xB] :
      (0:ℝ) ≤ sarea (ptB b) ptC X + sarea ptC ptD X)
    nlinarith only [eX, hey, m1, m2, h5]

end CentralTripleProof

/-- `FanSplit` is symmetric in its last two points. -/
theorem fanSplit_comm {A B C P Q R : Point} (h : CornerFamilies.FanSplit A B C P Q R) :
    CornerFamilies.FanSplit A B C P R Q := by
  obtain ⟨h1, h2, h3⟩ := h
  exact ⟨fun h => h1 ⟨h.2, h.1⟩, fun h => h2 ⟨h.2, h.1⟩, fun h => h3 ⟨h.2, h.1⟩⟩

theorem distributed_swap {A B C P Q R : Point} (h : CornerFamilies.Distributed A B C P Q R) :
    CornerFamilies.Distributed A B C Q P R := by
  obtain ⟨hP, hQ, hR, f1, f2, f3⟩ := h
  exact ⟨hQ, hP, hR, fanSplit_comm f2, fanSplit_comm f1, fanSplit_comm f3⟩

theorem distributed_cycle {A B C P Q R : Point} (h : CornerFamilies.Distributed A B C P Q R) :
    CornerFamilies.Distributed A B C Q R P := by
  obtain ⟨hP, hQ, hR, f1, f2, f3⟩ := h
  exact ⟨hQ, hR, hP, f2, f3, f1⟩

theorem perm3_cases (σ : Equiv.Perm (Fin 3)) :
    (σ 0 = 0 ∧ σ 1 = 1 ∧ σ 2 = 2) ∨ (σ 0 = 0 ∧ σ 1 = 2 ∧ σ 2 = 1) ∨
      (σ 0 = 1 ∧ σ 1 = 0 ∧ σ 2 = 2) ∨ (σ 0 = 1 ∧ σ 1 = 2 ∧ σ 2 = 0) ∨
      (σ 0 = 2 ∧ σ 1 = 0 ∧ σ 2 = 1) ∨ (σ 0 = 2 ∧ σ 1 = 1 ∧ σ 2 = 0) := by
  revert σ; decide

/-- The central triple for a labelling `X', Y', Z'` of the three central points: the mesh
containments give the thirteen positive areas, then `centralTriple_core`. -/
theorem centralTriple_labelled {l b : ℝ} {X Y Z : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2)
    (hl : 0 < l) (hl1 : l < 1) (hX : IsCentral b X) (hY : IsCentral b Y) (hZ : IsCentral b Z)
    (hd : CornerFamilies.Distributed ptD (ptB b) ptC X Y Z)
    (hgp : 0 < minTriangleArea ![ptD, ptB b, ptC, X, Y, Z])
    (h1 : CornerFamilies.InsideTriangle Z ptD (ptB b) Y)
    (h2 : CornerFamilies.InsideTriangle X (ptB b) ptC Y)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z]) : False := by
  have hm := CornerFamilies.eq15 ptD (ptB b) ptC X Y Z hd hgp h1 h2
  have h17 := CornerFamilies.eq16_17 ptD (ptB b) ptC X Y Z hm
  have hABC : sarea ptD (ptB b) ptC = 1 := by simp [sarea, ptD, ptB, ptC]
  rw [hABC] at h17
  simp only [one_mul] at h17
  obtain ⟨px, py, pz, pa, pb, pc, pk, puA, puB, puC, pvA, pvB, pvC, -⟩ := h17
  exact centralTriple_core hb hb2 hl hl1 hX hY hZ hmin px py pz pa pb pc pk puA puB puC pvA pvB
    pvC

/-- **Central-triple theorem** (`TYPE_II:CentralTripleTheorem`). Suppose (5) holds with
`b ≤ 1/2` and three further points lie in the interior of `DCB`. Then among these seven points
some triangle has area less than `7/128`. `hand/TYPE_II.md`, lines 538–814.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma (non-distributed case `(6+2√3)s > 1`),
CORNER_FAMILIES:SixPointTriangularHullTheorem (§8, mesh and (20)), TYPE_II:claim-mesh-kstar,
TYPE_II:claim-central-cut, CORNER_FAMILIES:TwoInteriorPointLemma, TYPE_II:TwoPointChamberLemma. -/
theorem centralTripleTheorem {l b : ℝ} {X Y Z : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2)
    (hl : 0 < l) (hl1 : l < 1) (hX : IsCentral b X) (hY : IsCentral b Y) (hZ : IsCentral b Z) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z] < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have sub6 : ∀ (P Q R : Point) (f : Fin 6 → Fin 7), Function.Injective f →
      ![ptD, ptB b, ptC, P, Q, R] = ![ptD, ptC, ptE l, ptB b, X, Y, Z] ∘ f →
      7 / 128 ≤ minTriangleArea ![ptD, ptB b, ptC, P, Q, R] := fun P Q R f hf hQ =>
    hcon.trans (min_le_min_reindex (by norm_num) _ _ f hf hQ)
  have sub7 : ∀ (P Q R : Point) (f : Fin 7 → Fin 7), Function.Injective f →
      ![ptD, ptC, ptE l, ptB b, P, Q, R] = ![ptD, ptC, ptE l, ptB b, X, Y, Z] ∘ f →
      7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R] := fun P Q R f hf hQ =>
    hcon.trans (min_le_min_reindex (by norm_num) _ _ f hf hQ)
  have hmin6 := sub6 X Y Z ![0, 3, 1, 4, 5, 6] (by decide) (by funext m; fin_cases m <;> rfl)
  have hd : CornerFamilies.Distributed ptD (ptB b) ptC X Y Z := by
    by_contra hnd
    have := CornerFamilies.claim_nondistributed_bound ptD (ptB b) ptC X Y Z (Or.inl hX)
      (Or.inl hY) (Or.inl hZ) (7 / 128) (by norm_num) hmin6 hnd
    rw [triangleArea_eq] at this
    simp [sarea, ptD, ptB, ptC] at this
    nlinarith [sqrt_three_gt]
  have hgp : 0 < minTriangleArea ![ptD, ptB b, ptC, X, Y, Z] := by linarith
  obtain ⟨σ, h1, h2⟩ := CornerFamilies.claim_mesh_labelling ptD (ptB b) ptC X Y Z hd hgp
  rcases perm3_cases σ with ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ |
      ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ <;>
    simp only [e0, e1, e2, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
      Matrix.head_cons, Matrix.tail_cons] at h1 h2
  · exact centralTriple_labelled hb hb2 hl hl1 hX hY hZ hd hgp h1 h2 hcon
  · exact centralTriple_labelled (X := X) (Y := Z) (Z := Y) hb hb2 hl hl1 hX hZ hY
      (distributed_cycle (distributed_swap hd))
      (by have := sub6 X Z Y ![0, 3, 1, 4, 6, 5] (by decide)
            (by funext m; fin_cases m <;> rfl); linarith) h1 h2
      (sub7 X Z Y ![0, 1, 2, 3, 4, 6, 5] (by decide) (by funext m; fin_cases m <;> rfl))
  · exact centralTriple_labelled (X := Y) (Y := X) (Z := Z) hb hb2 hl hl1 hY hX hZ
      (distributed_swap hd)
      (by have := sub6 Y X Z ![0, 3, 1, 5, 4, 6] (by decide)
            (by funext m; fin_cases m <;> rfl); linarith) h1 h2
      (sub7 Y X Z ![0, 1, 2, 3, 5, 4, 6] (by decide) (by funext m; fin_cases m <;> rfl))
  · exact centralTriple_labelled (X := Y) (Y := Z) (Z := X) hb hb2 hl hl1 hY hZ hX
      (distributed_cycle hd)
      (by have := sub6 Y Z X ![0, 3, 1, 5, 6, 4] (by decide)
            (by funext m; fin_cases m <;> rfl); linarith) h1 h2
      (sub7 Y Z X ![0, 1, 2, 3, 5, 6, 4] (by decide) (by funext m; fin_cases m <;> rfl))
  · exact centralTriple_labelled (X := Z) (Y := X) (Z := Y) hb hb2 hl hl1 hZ hX hY
      (distributed_cycle (distributed_cycle hd))
      (by have := sub6 Z X Y ![0, 3, 1, 6, 4, 5] (by decide)
            (by funext m; fin_cases m <;> rfl); linarith) h1 h2
      (sub7 Z X Y ![0, 1, 2, 3, 6, 4, 5] (by decide) (by funext m; fin_cases m <;> rfl))
  · exact centralTriple_labelled (X := Z) (Y := Y) (Z := X) hb hb2 hl hl1 hZ hY hX
      (distributed_swap (distributed_cycle hd))
      (by have := sub6 Z Y X ![0, 3, 1, 6, 5, 4] (by decide)
            (by funext m; fin_cases m <;> rfl); linarith) h1 h2
      (sub7 Z Y X ![0, 1, 2, 3, 6, 5, 4] (by decide) (by funext m; fin_cases m <;> rfl))

/-- **Claim** (`TYPE_II:claim-exclude-central-three`, made up). Consequently the rows `(1,3,2)`
and `(2,3,1)` of §5 are excluded: at least area `A₀` with `b ≤ 1/2`, the central count is not
three. `hand/TYPE_II.md`, lines 542–543.

Uses: TYPE_II:CentralTripleTheorem, TYPE_II:eq7. -/
theorem claim_exclude_central_three {l b : ℝ} {V W X Y Z : Point}
    (hd : TypeIIData l b V W X Y Z) (hb2 : b ≤ 1 / 2)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) :
    typeIICounts b V W X Y Z ≠ (1, 3, 2) ∧ typeIICounts b V W X Y Z ≠ (2, 3, 1) := by
  classical
  have hb := hd.1
  have hl := hd.2.2.1
  have hl1 := hd.2.2.2.1
  have key : countCentral b (freePts V W X Y Z) ≠ 3 := by
    intro h3
    obtain ⟨i, j, k, hij, hik, hjk, hc⟩ := Finset.card_eq_three.1 h3
    have cent : ∀ r ∈ ({i, j, k} : Finset (Fin 5)), IsCentral b (freePts V W X Y Z r) := by
      intro r hr
      rw [← hc] at hr
      simpa using hr
    have hinj : ∀ i j k : Fin 5, i ≠ j → j ≠ k → i ≠ k →
        Function.Injective (![0, 1, 2, 3, freeIdx i, freeIdx j, freeIdx k] : Fin 7 → Fin 9) := by
      decide
    have hsub : minTriangleArea (typeIIConfig l b V W X Y Z) ≤ minTriangleArea
        ![ptD, ptC, ptE l, ptB b, freePts V W X Y Z i, freePts V W X Y Z j,
          freePts V W X Y Z k] := by
      refine min_le_min_reindex (by norm_num) _ _ _ (hinj i j k hij hjk hik) ?_
      funext m; fin_cases m <;> simp [typeIIConfig_freeIdx] <;> rfl
    have := centralTripleTheorem hb hb2 hl hl1 (cent i (by simp)) (cent j (by simp))
      (cent k (by simp))
    have hA := A₀_bounds.1
    linarith
  constructor <;> intro h <;> simp only [typeIICounts, Prod.mk.injEq] at h <;> exact key h.2.1

/-- `G(b, z) > 0` for `0 ≤ b ≤ 11/20`, `3/4 ≤ z ≤ 1` (`TYPE_II.md` lines 860–874): `G` lies above
its chord in `b` on `[0, 11/20]`, `G(0,z) > 0` and `G(11/20,z) > 0`. -/
theorem chamberG_pos_ext {b z : ℝ} (hb : 0 ≤ b) (hb2 : b ≤ 11 / 20) (hz : 3 / 4 ≤ z)
    (hz1 : z ≤ 1) : 0 < chamberG b z := by
  have hG0 : 0 < 399 * z ^ 2 - 847 * z + 644 := by nlinarith [sq_nonneg (z - 847 / 798)]
  have hGm : 0 < 8241 / 1000 + 77669 / 125 * (1 - z) + 991823 / 1000 * (1 - z) ^ 2 -
      122177 / 125 * (1 - z) ^ 3 := by
    nlinarith [mul_nonneg (mul_nonneg (sub_nonneg.2 hz1) (sub_nonneg.2 hz1))
      (by linarith : (0:ℝ) ≤ 1 / 4 - (1 - z))]
  have hchord : chamberG b z = (1 - 20 / 11 * b) * (399 * z ^ 2 - 847 * z + 644) +
      20 / 11 * b * (8241 / 1000 + 77669 / 125 * (1 - z) + 991823 / 1000 * (1 - z) ^ 2 -
        122177 / 125 * (1 - z) ^ 3) +
      b * (11 / 20 - b) * z ^ 2 * (17008 / 5 * z - 1890 - 448 * z * b) := by
    unfold chamberG; ring
  rw [hchord]
  have e1 : 0 ≤ b * (11 / 20 - b) * z ^ 2 * (17008 / 5 * z - 1890 - 448 * z * b) := by
    apply mul_nonneg (mul_nonneg (mul_nonneg hb (by linarith)) (sq_nonneg z))
    nlinarith
  rcases eq_or_lt_of_le hb with h0 | h0
  · subst h0; nlinarith
  · nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - 20 / 11 * b) hG0.le, mul_pos h0 hGm]

/-- **Claim** (`TYPE_II:claim-chamber-extension`, made up). The needed extension of §6 in §9:
the two-point chamber lemma holds for `0 < b ≤ 11/20` and `0 ≤ λ < 1` (the endpoint `λ = 0`,
`q = 1`, included). `hand/TYPE_II.md`, lines 855–877 and 915–917.

Uses: TYPE_II:claim-chamber-general. -/
theorem claim_chamber_extension {l b : ℝ} {P Q : Point} (hb : 0 < b) (hb2 : b ≤ 11 / 20)
    (hl : 0 ≤ l) (hl1 : l < 1)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hBPQ : 0 < sarea (ptB b) P Q) (hEPQ : sarea (ptE l) P Q < 0) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have hz := chamber_z_bound hPE hQE hcon
  exact absurd (claim_chamber_general hb (by linarith) hl hl1 hPB hPE hQB hQE hBPQ hEPQ
    (chamberG_pos_ext hb.le hb2 (by linarith) (by linarith))) (not_lt.2 hcon)

/-- **Affine corollary** (`TYPE_II:AffineCorollary`). Let an actual triangle `ABC` of area
`S > 0` contain three further actual points `X, Y, Z`, and let another actual point `E` have
barycentric coordinates `(α, q, -p)`, `0 < q ≤ 1`, `0 < p ≤ (11/20) q`, `α + q - p = 1`. Then
among the seven points some triangle has area less than `(7/64) S`. `hand/TYPE_II.md`,
lines 836–918.

Implicit in the manuscript: the triangle `ABC` is nondegenerate (`S > 0`); the containment is
closed (points on an edge give a zero-area triangle).

Uses: TYPE_II:claim-chamber-extension, TYPE_II:CentralTripleTheorem (its proof, with the
constants of lines 879–914), TYPE_II:claim-mesh-kstar. -/
theorem affineCorollary {A B C X Y Z : Point} {α q p : ℝ} (hS : 0 < triangleArea A B C)
    (hX : X ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hY : Y ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hZ : Z ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hq : 0 < q) (hq1 : q ≤ 1) (hp : 0 < p) (hp1 : p ≤ 11 / 20 * q) (hsum : α + q - p = 1) :
    minTriangleArea ![A, B, C, X, Y, Z, bary A B C α q (-p)] < 7 / 64 * triangleArea A B C := by
  sorry

/-- **Coupled affine corollary** (`TYPE_II:CoupledAffineCorollary`). Normalize the doubled area
of an actual triangle `ABC` to one; let it contain three further points, and let an additional
point `E` have barycentric coordinates `(α, q, -p)`, `0 < q ≤ 30/29`, `0 < p ≤ (11/20) q`,
`α + q - p = 1`. If `s ≥ s₀ max(1, q)` (32), `s₀ = 2A₀`, it is impossible for all triangles of
these seven points to have normalized doubled area at least `s`; that is, some triangle has area
less than `s · area(ABC)`. `hand/TYPE_II.md`, lines 937–1076.

Implicit in the manuscript: `ABC` is nondegenerate; the containment is closed.

Uses: TYPE_II:AffineCorollary, TYPE_II:claim-mesh-kstar, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem coupledAffineCorollary {A B C X Y Z : Point} {α q p s : ℝ}
    (hS : 0 < triangleArea A B C)
    (hX : X ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hY : Y ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hZ : Z ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hq : 0 < q) (hq1 : q ≤ 30 / 29) (hp : 0 < p) (hp1 : p ≤ 11 / 20 * q) (hsum : α + q - p = 1)
    (hs : 2 * A₀ * max 1 q ≤ s) :
    minTriangleArea ![A, B, C, X, Y, Z, bary A B C α q (-p)] < s * triangleArea A B C := by
  sorry

/-- **Coupled affine corollary, geometric form** (`TYPE_II:CoupledAffineCorollary`). If the
actual triangle `ABC` has area `S ≤ 1/2` and `q ≤ min(30/29, 1/(2S))`, `0 < p ≤ (11/20) q`, then
the seven points have a triangle of area less than `A₀` (the normalized doubled minimum at the
competitive threshold is at least `A₀ / S = s₀ / (2S)`). `hand/TYPE_II.md`, lines 1078–1090.

Uses: TYPE_II:CoupledAffineCorollary. -/
theorem coupledAffineCorollary_geometric {A B C X Y Z : Point} {α q p : ℝ}
    (hS : 0 < triangleArea A B C) (hS2 : triangleArea A B C ≤ 1 / 2)
    (hX : X ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hY : Y ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hZ : Z ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hq : 0 < q) (hq1 : q ≤ 30 / 29) (hq2 : q ≤ 1 / (2 * triangleArea A B C))
    (hp : 0 < p) (hp1 : p ≤ 11 / 20 * q) (hsum : α + q - p = 1) :
    minTriangleArea ![A, B, C, X, Y, Z, bary A B C α q (-p)] < A₀ := by
  have hA := A₀_pos
  have hmax : max 1 q * (2 * triangleArea A B C) ≤ 1 := by
    rcases le_total 1 q with h | h
    · rw [max_eq_right h]
      rw [le_div_iff₀ (by positivity)] at hq2
      linarith
    · rw [max_eq_left h]; linarith
  have key := coupledAffineCorollary (s := A₀ / triangleArea A B C) hS hX hY hZ hq hq1 hp hp1
    hsum (by rw [le_div_iff₀ hS]; nlinarith)
  rwa [div_mul_cancel₀ _ hS.ne'] at key

end Heilbronn.TypeII
