module

public import Heilbronn.Nine.TypeII.TypeII.Chamber
public import Heilbronn.Nine.TypeII.TypeII.Normalization

/-! # Type II: three central points and its affine versions (`docs/proof/nine/TYPE_II.md`, §§7, 9, 10)

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

Proof structure. The §7 argument is proved once, in the generality of §9: `centralTriple_core`
and `centralTriple_gen` take `0 < b ≤ 11/20`, `0 ≤ λ < 1` (`centralTripleTheorem` is the case
`b ≤ 1/2`, `λ > 0`); `central_cut_gen` is the `CE` cut for any `λ < 1` with `[EBC] > 0`.
`affine_frame` is the affine map `A, B, C ↦ D, (p/q, 0), C` (so `E ↦ (0, 1-q)`), and
`affine_physical` the physical form; together they give `affineCorollary`. For `1 < q ≤ 30/29`
(`λ ∈ [-1/29, 0)`) the core is `coupled_core` at a general threshold `s`: `EBC` cannot hold two
points, the three-point cut fails by (24) (`coupled_three_scalar`), and the two-point cut by
(29) (`ct_K_contra_gen`) or by the chamber case below the bottom edge, (33)–(34)
(`chamber_neg`, `chamber_neg_core`, `chamber_neg_scalar`); `mesh_dispatch` runs the mesh
labelling for any permutation-invariant property and `coupled_physical` assembles the case.
Only `s > (79/720) q` (from `s ≥ 2A₀ q`) and `s ≥ 7/64` are used.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.TypeII

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
(25). `docs/proof/nine/TYPE_II.md`, lines 570–641 (the restriction `s ≥ 7/64`: lines 963–964).

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
`q = 1`, included). `docs/proof/nine/TYPE_II.md`, lines 855–877 and 915–917.

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

/-! ### The central triple in the physical frame `A = D`, `B = B`, `C = C` (`⟨DBC⟩ = 1`) -/

section CentralTripleProof

variable {l b : ℝ} {X Y Z : Point}

/-- A central point is inside `DCE` when above `CE` and inside `EBC` when below it, for any
`λ < 1` with `[EBC] = b + λ(1-b) > 0` (`λ ≤ 0` allowed, as in §§9–10). -/
theorem central_cut_gen {l b : ℝ} {X : Point} (hb : 0 < b) (hq : 0 < 1 - l)
    (hα : 0 < b + l * (1 - b)) (hX : IsCentral b X) :
    (0 < sarea (ptE l) ptC X → InTriangle X ptD (ptE l) ptC) ∧
      (sarea (ptE l) ptC X < 0 → InTriangle X (ptE l) (ptB b) ptC) := by
  obtain ⟨h1, h2, h3⟩ := hX
  have hx : 0 < X.1 := by
    simp only [sarea, ptD, ptB, ptC] at h1 h3
    nlinarith [mul_pos hb (show 0 < 1 - X.2 by linarith)]
  have i1 : sarea (ptE l) (ptB b) X = sarea (ptB b) ptC X * (b * (1 - l)) +
      sarea ptD (ptB b) X * (b + l * (1 - b)) := by simp only [sarea, ptE, ptB, ptC, ptD]; ring
  have hEB : 0 < sarea (ptE l) (ptB b) X := by
    rw [i1]; have := mul_pos hb hq; positivity
  have hDE : 0 < sarea ptD (ptE l) X := by
    rw [show sarea ptD (ptE l) X = (1 - l) * X.1 by simp only [sarea, ptD, ptE]; ring]
    positivity
  refine ⟨fun h => ⟨hDE, h, h3⟩, fun h => ⟨hEB, h2, ?_⟩⟩
  rw [show sarea ptC (ptE l) X = -sarea (ptE l) ptC X by unfold sarea; ring]; linarith

/-- The scalar end of the two-point and one-point cuts: (29)/(30) give
`k(1+p) ≥ s(1 + p + 2s)`, impossible with `k < 9s/8`, `p ≤ 11/20`, `s = 7/64`. -/
theorem ct_K_contra {k p : ℝ} (hk : k < 9 / 8 * (7 / 64)) (hp0 : 0 ≤ p) (hp : p ≤ 11 / 20)
    (h : 7 / 64 * (1 + p + 2 * (7 / 64)) ≤ k * (1 + p)) : False := by
  nlinarith [mul_le_mul_of_nonneg_right hk.le (by linarith : (0:ℝ) ≤ 1 + p)]

/-- The case of no central point above `CE`: the six-point theorem on `EBC` gives
`α ≥ Γs`, while `α ≤ 1 - 9p/11 ≤ 1 - 9s/11` (`b ≤ 11/20`). -/
theorem ct_none (_hb : 0 < b) (hb2 : b ≤ 11 / 20) (hl1 : l < 1)
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
theorem centralTriple_core (hb : 0 < b) (hb2 : b ≤ 11 / 20) (hl : 0 ≤ l) (hl1 : l < 1)
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
  obtain ⟨hk98, hex, hey, -, -⟩ := claim_mesh_kstar le_rfl hABC hx hy hz ha hb' hc hk huA huB
    huC hvA hvB hvC
  -- `p = bq ≥ s` from `DEB`
  have hp : 7 / 64 ≤ b * (1 - l) := by
    have this : 7 / 64 ≤ |sarea ptD (ptE l) (ptB b)| := le_abs_sarea_of_le_min hm 0 2 3
    have e : sarea ptD (ptE l) (ptB b) = b * (1 - l) := by simp [sarea, ptD, ptE, ptB]; ring
    rwa [e, abs_of_pos (by nlinarith)] at this
  have hq : 0 < 1 - l := by linarith
  have hpq : b * (1 - l) ≤ 11 / 20 * (1 - l) := by nlinarith
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
    central_cut_gen hb hq (by nlinarith) hP
  have hp' : 0 < b * (1 - l) := by linarith
  have hp2 : b * (1 - l) ≤ 11 / 20 := by linarith
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
      have hq48 : 1 - l < 95 / 216 := by linarith only [h2, hpq, h3]
      have hZA : 21 / 64 ≤ sarea (ptB b) ptC Z := by linarith only [F7, hy, hb', hvC]
      have hx39 : sarea ptD (ptB b) Z < 39 / 256 := by
        have h5 : (13 : ℝ) / 6 < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
        unfold Γsix at hex
        linarith only [hex, h5]
      rw [F4] at hu
      have m1 := mul_le_mul_of_nonneg_right hpq zB.le
      have m2 := mul_le_mul_of_nonneg_right hq48.le
        (by linarith only [zC, zB] :
          (0:ℝ) ≤ sarea ptD (ptB b) Z + 11 / 20 * sarea ptC ptD Z)
      linarith only [hu, m1, m2, sZ1, hZA, hx39]
  · linarith only [G2, mul_pos sX zA, mul_neg_of_neg_of_pos sZ xA, mul_pos hα pvC]
  · -- `Y, Z` above `CE`
    rcases lt_or_gt_of_ne (nz eYZ) with sYZ | sYZ
    · have hsub : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, Y, Z] :=
        hmin.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 2, 3, 5, 6] (by decide)
          (by funext m; fin_cases m <;> rfl))
      have := claim_chamber_extension hb hb2 hl hl1 ⟨yC, yA, yB⟩ ((cut ⟨yC, yA, yB⟩).1 sY)
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
    have m2 := mul_nonneg hl (by linarith only [xA, xB] :
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

set_option linter.unusedTactic false in
set_option linter.unreachableTactic false in
/-- The central triple for a labelling `X', Y', Z'` of the three central points: the mesh
containments give the thirteen positive areas, then `centralTriple_core`. -/
theorem centralTriple_labelled {l b : ℝ} {X Y Z : Point} (hb : 0 < b) (hb2 : b ≤ 11 / 20)
    (hl : 0 ≤ l) (hl1 : l < 1) (hX : IsCentral b X) (hY : IsCentral b Y) (hZ : IsCentral b Z)
    (hd : CornerFamilies.Distributed ptD (ptB b) ptC X Y Z)
    (hgp : 0 < minTriangleArea ![ptD, ptB b, ptC, X, Y, Z])
    (h1 : CornerFamilies.InsideTriangle Z ptD (ptB b) Y)
    (h2 : CornerFamilies.InsideTriangle X (ptB b) ptC Y)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z]) : False := by
  have hABC : sarea ptD (ptB b) ptC = 1 := by simp [sarea, ptD, ptB, ptC]
  have hm : CornerFamilies.MeshLabelled ptD (ptB b) ptC X Y Z := by
    first
      | exact CornerFamilies.eq15 _ _ _ _ _ _ hd hgp h1 h2
      | exact CornerFamilies.eq15 _ _ _ _ _ _ (by rw [hABC]; norm_num) hd hgp h1 h2
  have h17 := CornerFamilies.eq16_17 ptD (ptB b) ptC X Y Z hm
  rw [hABC] at h17
  simp only [one_mul] at h17
  obtain ⟨px, py, pz, pa, pb, pc, pk, puA, puB, puC, pvA, pvB, pvC, -⟩ := h17
  exact centralTriple_core hb hb2 hl hl1 hX hY hZ hmin px py pz pa pb pc pk puA puB puC pvA pvB
    pvC

/-- The central-triple theorem in the generality of §9: `0 < b ≤ 11/20`, `0 ≤ λ < 1`
(`TYPE_II.md` lines 849–918). -/
theorem centralTriple_gen {l b : ℝ} {X Y Z : Point} (hb : 0 < b) (hb2 : b ≤ 11 / 20)
    (hl : 0 ≤ l) (hl1 : l < 1) (hX : IsCentral b X) (hY : IsCentral b Y) (hZ : IsCentral b Z) :
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

/-- **Central-triple theorem** (`TYPE_II:CentralTripleTheorem`). Suppose (5) holds with
`b ≤ 1/2` and three further points lie in the interior of `DCB`. Then among these seven points
some triangle has area less than `7/128`. `docs/proof/nine/TYPE_II.md`, lines 538–814.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma (non-distributed case `(6+2√3)s > 1`),
CORNER_FAMILIES:SixPointTriangularHullTheorem (§8, mesh and (20)), TYPE_II:claim-mesh-kstar,
TYPE_II:claim-central-cut, CORNER_FAMILIES:TwoInteriorPointLemma, TYPE_II:TwoPointChamberLemma. -/
theorem centralTripleTheorem {l b : ℝ} {X Y Z : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2)
    (hl : 0 < l) (hl1 : l < 1) (hX : IsCentral b X) (hY : IsCentral b Y) (hZ : IsCentral b Z) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z] < 7 / 128 :=
  centralTriple_gen hb (hb2.trans (by norm_num)) hl.le hl1 hX hY hZ

/-- **Claim** (`TYPE_II:claim-exclude-central-three`, made up). Consequently the rows `(1,3,2)`
and `(2,3,1)` of §5 are excluded: at least area `A₀` with `b ≤ 1/2`, the central count is not
three. `docs/proof/nine/TYPE_II.md`, lines 542–543.

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

/-- The physical form of the affine corollary (§9): `0 < b ≤ 11/20`, `0 ≤ λ < 1`, and three points
of the closed triangle `DBC` force a triangle of area `< 7/128` (points on an edge of `DBC` give
a zero-area triangle). -/
theorem affine_physical {l b : ℝ} {X Y Z : Point} (hb : 0 < b) (hb2 : b ≤ 11 / 20) (hl : 0 ≤ l)
    (hl1 : l < 1) (hX : X ∈ convexHull ℝ ({ptD, ptB b, ptC} : Set Point))
    (hY : Y ∈ convexHull ℝ ({ptD, ptB b, ptC} : Set Point))
    (hZ : Z ∈ convexHull ℝ ({ptD, ptB b, ptC} : Set Point)) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z] < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z] := by linarith
  have hDBC : (0:ℝ) ≤ sarea ptD (ptB b) ptC := by simp [sarea, ptD, ptB, ptC]
  have cen : ∀ P : Point, P ∈ convexHull ℝ ({ptD, ptB b, ptC} : Set Point) →
      sarea (ptB b) ptC P ≠ 0 → sarea ptC ptD P ≠ 0 → sarea ptD (ptB b) P ≠ 0 →
      IsCentral b P := by
    intro P hP n1 n2 n3
    obtain ⟨h1, h2, h3, -⟩ := sarea_nonneg_of_mem_convexHull hDBC hP
    exact ⟨lt_of_le_of_ne h3 (Ne.symm n3), lt_of_le_of_ne h1 (Ne.symm n1),
      lt_of_le_of_ne h2 (Ne.symm n2)⟩
  have cX := cen X hX (sarea_ne_zero_of_min_pos hpos 3 1 4) (sarea_ne_zero_of_min_pos hpos 1 0 4)
    (sarea_ne_zero_of_min_pos hpos 0 3 4)
  have cY := cen Y hY (sarea_ne_zero_of_min_pos hpos 3 1 5) (sarea_ne_zero_of_min_pos hpos 1 0 5)
    (sarea_ne_zero_of_min_pos hpos 0 3 5)
  have cZ := cen Z hZ (sarea_ne_zero_of_min_pos hpos 3 1 6) (sarea_ne_zero_of_min_pos hpos 1 0 6)
    (sarea_ne_zero_of_min_pos hpos 0 3 6)
  exact absurd (centralTriple_gen hb hb2 hl hl1 cX cY cZ) (not_lt.2 hcon)

/-- The affine frame of §9: for a nondegenerate triangle `ABC` and `E = (α, q, -p)` with `q > 0`,
the affine map `T` sending `A, B, C` to `D, (p/q, 0), C` sends `E` to `(0, 1-q)`, the closed
triangle `ABC` into the closed triangle `D (p/q,0) C`, and divides every doubled area by `[ABC]`;
so the least area of the seven points is at most `|[ABC]|` times that of the image
configuration, in the order of `typeIIConfig`. -/
theorem affine_frame {A B C : Point} {α q p : ℝ} (hS : 0 < triangleArea A B C) (hq : 0 < q)
    (hp : 0 < p) (hsum : α + q - p = 1) :
    ∃ (T : Point → Point) (k : ℝ), k = |sarea A B C| ∧ T A = ptD ∧ T B = ptB (p / q) ∧
      T C = ptC ∧ T (bary A B C α q (-p)) = ptE (1 - q) ∧
      (∀ P ∈ convexHull ℝ ({A, B, C} : Set Point),
        T P ∈ convexHull ℝ ({ptD, ptB (p / q), ptC} : Set Point)) ∧
      ∀ X Y Z : Point, minTriangleArea ![A, B, C, X, Y, Z, bary A B C α q (-p)] ≤
        k * minTriangleArea ![ptD, ptC, ptE (1 - q), ptB (p / q), T X, T Y, T Z] := by
  have hΔ : sarea A B C ≠ 0 := by
    intro h0; rw [triangleArea_eq, h0] at hS; simp at hS
  set β := p / q with hβ
  have hβq : β * q = p := by rw [hβ]; field_simp
  obtain ⟨a, b, c, d, e, g, hdet, hmap⟩ := hsMap_affine A B C hΔ
  set T : Point → Point := fun P => affineMap (β - 1) 1 (-1) 0 0 1 (hsMap A B C P) with hT
  have TA : T A = ptD := by
    simp only [hT, hsMap_U hΔ, hsA, affineMap, ptD]; ext <;> simp
  have TB : T B = ptB β := by
    simp only [hT, hsMap_V hΔ, hsE, affineMap, ptB]; ext <;> simp
  have TC : T C = ptC := by
    simp only [hT, hsMap_W hΔ, affineMap, ptC]; ext <;> simp
  have TE : T (bary A B C α q (-p)) = ptE (1 - q) := by
    simp only [hT, bary]
    rw [hsMap_bary hΔ (by linarith : α + q + -p = 1)]
    simp only [affineMap, ptE]
    ext <;> simp <;> linarith
  have Tmem : ∀ P ∈ convexHull ℝ ({A, B, C} : Set Point),
      T P ∈ convexHull ℝ ({ptD, ptB β, ptC} : Set Point) := by
    intro P hP
    obtain ⟨a', b', c', ha', hb', hc', habc, rfl⟩ := exists_bary_of_mem_convexHull hP
    have key := mem_convexHull_of_bary (A := ptD) (B := ptB β) (C := ptC) ha' hb' hc' habc
    convert key using 1
    simp only [hT]
    rw [hsMap_bary hΔ habc]
    simp only [affineMap, ptD, ptB, ptC]
    ext <;> simp <;> linarith
  refine ⟨T, |sarea A B C|, rfl, TA, TB, TC, TE, Tmem, fun X Y Z => ?_⟩
  set cfg : Fin 7 → Point := ![A, B, C, X, Y, Z, bary A B C α q (-p)] with hcfg
  have hcomp : T ∘ cfg = affineMap (β - 1) 1 (-1) 0 0 1 ∘ (affineMap a b c d e g ∘ cfg) := by
    funext m; simp only [Function.comp, hT, hmap]
  have hmT : minTriangleArea (T ∘ cfg) = |1 / sarea A B C| * minTriangleArea cfg := by
    rw [hcomp, minTriangleArea_affineMap, minTriangleArea_affineMap, hdet]; norm_num
  have hle : minTriangleArea (T ∘ cfg) ≤
      minTriangleArea ![ptD, ptC, ptE (1 - q), ptB β, T X, T Y, T Z] := by
    refine min_le_min_reindex (by norm_num) _ _ ![0, 2, 6, 1, 3, 4, 5] (by decide) ?_
    funext m
    fin_cases m <;> simp [hcfg, TA, TB, TC, TE]
  rw [hmT, abs_div, abs_one] at hle
  have hpos : 0 < |sarea A B C| := abs_pos.2 hΔ
  rw [div_mul_eq_mul_div, one_mul, div_le_iff₀ hpos] at hle
  linarith

/-- **Affine corollary** (`TYPE_II:AffineCorollary`). Let an actual triangle `ABC` of area
`S > 0` contain three further actual points `X, Y, Z`, and let another actual point `E` have
barycentric coordinates `(α, q, -p)`, `0 < q ≤ 1`, `0 < p ≤ (11/20) q`, `α + q - p = 1`. Then
among the seven points some triangle has area less than `(7/64) S`. `docs/proof/nine/TYPE_II.md`,
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
  obtain ⟨T, k, hk, TA, TB, TC, TE, Tmem, hmin⟩ := affine_frame hS hq hp hsum
  have hb0 : 0 < p / q := div_pos hp hq
  have hb2 : p / q ≤ 11 / 20 := by rw [div_le_iff₀ hq]; linarith
  have key := affine_physical (l := 1 - q) hb0 hb2 (by linarith) (by linarith) (Tmem X hX)
    (Tmem Y hY) (Tmem Z hZ)
  have hle := hmin X Y Z
  have hk0 : 0 < k := by
    rw [hk]; exact abs_pos.2 (by intro h0; rw [triangleArea_eq, h0] at hS; simp at hS)
  rw [triangleArea_eq, ← hk]
  nlinarith [mul_lt_mul_of_pos_left key hk0]

/-! ### The coupled corollary past `q = 1` (§10) -/

set_option linter.unusedTactic false in
set_option linter.unreachableTactic false in
/-- Generic dispatch over the mesh labelling of `CORNER_FAMILIES.md` §8: if a property `Qp` of
three central points, symmetric under their permutations, contradicts every labelled mesh, then it
fails for any distributed triple. -/
theorem mesh_dispatch {b : ℝ} {X Y Z : Point} (Qp : Point → Point → Point → Prop)
    (hQ1 : ∀ {X Y Z : Point}, Qp X Y Z → Qp Y X Z) (hQ2 : ∀ {X Y Z : Point}, Qp X Y Z → Qp Y Z X)
    (hcore : ∀ {X Y Z : Point}, Qp X Y Z →
      0 < sarea ptD (ptB b) Z → 0 < sarea (ptB b) ptC X → 0 < sarea ptC ptD Y →
      0 < sarea ptD Z Y → 0 < sarea (ptB b) X Z → 0 < sarea ptC Y X → 0 < sarea Z X Y →
      0 < sarea ptD Z X → 0 < sarea (ptB b) X Y → 0 < sarea ptC Y Z → 0 < sarea ptD X Y →
      0 < sarea (ptB b) Y Z → 0 < sarea ptC Z X → False)
    (hd : CornerFamilies.Distributed ptD (ptB b) ptC X Y Z)
    (hgp : 0 < minTriangleArea ![ptD, ptB b, ptC, X, Y, Z]) (h : Qp X Y Z) : False := by
  have hABC : sarea ptD (ptB b) ptC = 1 := by simp [sarea, ptD, ptB, ptC]
  have lab : ∀ {X Y Z : Point}, Qp X Y Z → CornerFamilies.Distributed ptD (ptB b) ptC X Y Z →
      0 < minTriangleArea ![ptD, ptB b, ptC, X, Y, Z] →
      CornerFamilies.InsideTriangle Z ptD (ptB b) Y →
      CornerFamilies.InsideTriangle X (ptB b) ptC Y → False := by
    intro X Y Z hq hd hgp h1 h2
    have hm : CornerFamilies.MeshLabelled ptD (ptB b) ptC X Y Z := by
      first
        | exact CornerFamilies.eq15 _ _ _ _ _ _ hd hgp h1 h2
        | exact CornerFamilies.eq15 _ _ _ _ _ _ (by rw [hABC]; norm_num) hd hgp h1 h2
    have h17 := CornerFamilies.eq16_17 ptD (ptB b) ptC X Y Z hm
    rw [hABC] at h17
    simp only [one_mul] at h17
    obtain ⟨px, py, pz, pa, pb, pc, pk, puA, puB, puC, pvA, pvB, pvC, -⟩ := h17
    exact hcore hq px py pz pa pb pc pk puA puB puC pvA pvB pvC
  have g6 : ∀ (P Q R : Point) (f : Fin 6 → Fin 6), Function.Injective f →
      ![ptD, ptB b, ptC, P, Q, R] = ![ptD, ptB b, ptC, X, Y, Z] ∘ f →
      0 < minTriangleArea ![ptD, ptB b, ptC, P, Q, R] := fun P Q R f hf hPQR =>
    lt_of_lt_of_le hgp (min_le_min_reindex (by norm_num) _ _ f hf hPQR)
  obtain ⟨σ, h1, h2⟩ := CornerFamilies.claim_mesh_labelling ptD (ptB b) ptC X Y Z hd hgp
  rcases perm3_cases σ with ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ |
      ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ <;>
    simp only [e0, e1, e2, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
      Matrix.head_cons, Matrix.tail_cons] at h1 h2
  · exact lab h hd hgp h1 h2
  · exact lab (hQ2 (hQ1 h)) (distributed_cycle (distributed_swap hd))
      (g6 X Z Y ![0, 1, 2, 3, 5, 4] (by decide) (by funext m; fin_cases m <;> rfl)) h1 h2
  · exact lab (hQ1 h) (distributed_swap hd)
      (g6 Y X Z ![0, 1, 2, 4, 3, 5] (by decide) (by funext m; fin_cases m <;> rfl)) h1 h2
  · exact lab (hQ2 h) (distributed_cycle hd)
      (g6 Y Z X ![0, 1, 2, 4, 5, 3] (by decide) (by funext m; fin_cases m <;> rfl)) h1 h2
  · exact lab (hQ2 (hQ2 h)) (distributed_cycle (distributed_cycle hd))
      (g6 Z X Y ![0, 1, 2, 5, 3, 4] (by decide) (by funext m; fin_cases m <;> rfl)) h1 h2
  · exact lab (hQ1 (hQ2 h)) (distributed_swap (distributed_cycle hd))
      (g6 Z Y X ![0, 1, 2, 5, 4, 3] (by decide) (by funext m; fin_cases m <;> rfl)) h1 h2

/-- The scalar end of (29) at a general threshold: `k(1+p) ≥ s(1 + p + 2s)` is impossible with
`k < 9s/8`, `s ≥ 7/64` and `p ≤ 33/58` (`TYPE_II.md` lines 1036–1044). -/
theorem ct_K_contra_gen {k p s : ℝ} (hs : 7 / 64 ≤ s) (hk : k < 9 / 8 * s) (hp0 : 0 ≤ p)
    (hp : p ≤ 33 / 58) (h : s * (1 + p + 2 * s) ≤ k * (1 + p)) : False := by
  have h1 := mul_lt_mul_of_pos_right hk (by linarith : (0:ℝ) < 1 + p)
  nlinarith [mul_pos (by linarith : (0:ℝ) < s) (by linarith : (0:ℝ) < 2 * s - (1 + p) / 8)]

/-- The scalar end of (34): `s(2 + 4β + β² + qβ) ≤ βq` is impossible for `1 ≤ q ≤ 30/29`,
`0 < β ≤ 11q/20` and `s > (79/720) q` (the endpoint value `1914/17453 < 79/720`). -/
theorem chamber_neg_scalar {q β s : ℝ} (hq1 : 1 ≤ q) (hq2 : q ≤ 30 / 29) (hβ0 : 0 < β)
    (hβ : β ≤ 11 / 20 * q) (hsq : 79 / 720 * q < s)
    (h : s * (2 + 4 * β + β ^ 2 + q * β) ≤ β * q) : False := by
  have hpos : 0 < 2 + 4 * β + β ^ 2 + q * β := by positivity
  have h1 := mul_lt_mul_of_pos_right hsq hpos
  have h2 : 79 / 720 * (2 + 4 * β + β ^ 2 + q * β) < β := by
    have : 79 / 720 * q * (2 + 4 * β + β ^ 2 + q * β) < β * q := by linarith
    nlinarith
  have h3 : 0 ≤ (11 / 20 * q - β) * (1 - 79 / 720 * (4 + q + β + 11 / 20 * q)) :=
    mul_nonneg (by linarith) (by nlinarith)
  nlinarith [sq_nonneg (q - 30 / 29), mul_nonneg (sub_nonneg.2 hq2) (sub_nonneg.2 hq1)]

/-- The scalar core of the chamber case below the bottom edge ((33)–(34)): `P = (·, p_y)`,
`Q = (q_x, t)`, `D_Q = [EBQ] = b(t - λ) + λq_x > 0`. -/
theorem chamber_neg_core {b l s py qx qy : ℝ} (hb : 0 < b) (hb2 : b ≤ 11 / 20)
    (hl : -(1 / 29) ≤ l) (hl0 : l < 0) (hs : 0 < s) (hsq : 79 / 720 * (1 - l) < s)
    (h1 : s ≤ 1 - py) (h2 : s ≤ qx - b * (1 - qy)) (h3 : s ≤ qy - l - (1 - l) * qx)
    (hDQ : 0 < b * (qy - l) + l * qx) (hqy : 0 < qy)
    (hk1 : s * (2 * qy - l) ≤ (b * (qy - l) + l * qx) * (py - qy)) : False := by
  have hq : 0 < 1 - l := by linarith
  have hPQ : 0 < py - qy := by
    by_contra hc; push Not at hc
    nlinarith [mul_nonpos_of_nonneg_of_nonpos hDQ.le hc]
  -- `D_Q ≤ bqt + λs`, from the lower bound on `q_x` and `λ < 0`
  have k2 : b * (qy - l) + l * qx ≤ b * (1 - l) * qy + l * s := by
    nlinarith [mul_le_mul_of_nonpos_left (show s + b * (1 - qy) ≤ qx by linarith) hl0.le]
  have hpos : 0 ≤ 1 - s - qy := by linarith
  have k3 : 2 * s ≤ b * (1 - l) * (1 - s - qy) := by
    have e1 : (b * (qy - l) + l * qx) * (py - qy) ≤
        (b * (1 - l) * qy + l * s) * (1 - s - qy) := by
      have : py - qy ≤ 1 - s - qy := by linarith
      nlinarith [mul_le_mul_of_nonneg_left this hDQ.le, mul_le_mul_of_nonneg_right k2 hpos]
    have e2 : l * s * (1 - s - qy) ≤ 0 :=
      mul_nonpos_of_nonpos_of_nonneg (mul_nonpos_of_nonpos_of_nonneg hl0.le hs.le) hpos
    have e3 : 2 * s * qy ≤ b * (1 - l) * (1 - s - qy) * qy := by nlinarith
    exact le_of_mul_le_mul_right e3 hqy
  -- (33)
  have k4 : l + b * (1 - l) + (2 - l) * s ≤ qy * (1 + b * (1 - l)) := by
    nlinarith [mul_le_mul_of_nonneg_left (show s + b * (1 - qy) ≤ qx by linarith) hq.le]
  have hβ : 0 ≤ b * (1 - l) := (mul_pos hb hq).le
  have k5 : s * (2 + 4 * (b * (1 - l)) + (b * (1 - l)) ^ 2 + (1 - l) * (b * (1 - l))) ≤
      b * (1 - l) * (1 - l) := by
    nlinarith [mul_le_mul_of_nonneg_left k4 hβ, mul_le_mul_of_nonneg_right k3
      (by linarith : (0:ℝ) ≤ 1 + b * (1 - l))]
  exact chamber_neg_scalar (q := 1 - l) (by linarith) (by linarith) (mul_pos hb hq)
    (by nlinarith) hsq k5

/-- The chamber case of §10 below the bottom edge: `λ = 1 - q ∈ [-1/29, 0)`, `b ≤ 11/20`, two
points inside `DCB ∩ DCE` with `[BPQ] > 0 > [EPQ]` and every doubled area at least
`s > (79/720) q` is impossible ((33)–(34), `TYPE_II.md` lines 1046–1071). -/
theorem chamber_neg {l b s : ℝ} {P Q : Point} (hb : 0 < b) (hb2 : b ≤ 11 / 20)
    (hl : -(1 / 29) ≤ l) (hl0 : l < 0) (hs : 0 < s) (hsq : 79 / 720 * (1 - l) < s)
    (hPB : InTriangle P ptD (ptB b) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hBPQ : 0 < sarea (ptB b) P Q) (hEPQ : sarea (ptE l) P Q < 0)
    (hmin : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q]) : False := by
  have eDCP : s ≤ |sarea ptD ptC P| := le_abs_sarea_of_le_min hmin 0 1 4
  have eDBQ : s ≤ |sarea ptD (ptB b) Q| := le_abs_sarea_of_le_min hmin 0 3 5
  have eECQ : s ≤ |sarea (ptE l) ptC Q| := le_abs_sarea_of_le_min hmin 2 1 5
  have eBPQ : s ≤ |sarea (ptB b) P Q| := le_abs_sarea_of_le_min hmin 3 4 5
  have eEPQ : s ≤ |sarea (ptE l) P Q| := le_abs_sarea_of_le_min hmin 2 4 5
  have eDEB : s ≤ |sarea ptD (ptE l) (ptB b)| := le_abs_sarea_of_le_min hmin 0 2 3
  have hq : 0 < 1 - l := by linarith
  rw [show sarea ptD (ptE l) (ptB b) = b * (1 - l) by simp only [sarea, ptD, ptE, ptB]; ring,
    abs_of_pos (mul_pos hb hq)] at eDEB
  have hid : (Q.2 - l) * sarea (ptB b) P Q + Q.2 * (-sarea (ptE l) P Q) =
      (b * (Q.2 - l) + l * Q.1) * (P.2 - Q.2) := by
    simp only [sarea, ptB, ptE]; ring
  have iEBQ : b * (Q.2 - l) + l * Q.1 = sarea (ptB b) ptC Q * (b * (1 - l)) +
      sarea ptD (ptB b) Q * (b + l * (1 - b)) := by simp only [sarea, ptB, ptC, ptD]; ring
  obtain ⟨-, -, p3⟩ := hPB
  obtain ⟨q1, q2', -⟩ := hQB
  obtain ⟨-, q2, -⟩ := hQE
  have hb30 : 1 / 30 < b := by nlinarith
  have hα : 0 < b + l * (1 - b) := by nlinarith
  have hDQ : 0 < b * (Q.2 - l) + l * Q.1 := by
    rw [iEBQ]; have := mul_pos hb hq; positivity
  rw [abs_of_neg (by rw [show sarea ptD ptC P = -sarea ptC ptD P by unfold sarea; ring]; linarith)]
    at eDCP
  rw [abs_of_pos q1] at eDBQ
  rw [abs_of_pos q2] at eECQ
  rw [abs_of_pos hBPQ] at eBPQ
  rw [abs_of_neg hEPQ] at eEPQ
  have hQ2 : 0 < Q.2 := by
    have := sarea_add_sarea_add_sarea ptD (ptB b) ptC Q
    simp only [sarea, ptD, ptB, ptC] at this q1 q2' ⊢; nlinarith
  have hk1 : s * (2 * Q.2 - l) ≤ (b * (Q.2 - l) + l * Q.1) * (P.2 - Q.2) := by
    rw [← hid]
    nlinarith [mul_le_mul_of_nonneg_left eBPQ (by linarith : (0:ℝ) ≤ Q.2 - l),
      mul_le_mul_of_nonneg_left eEPQ hQ2.le]
  clear hid iEBQ hmin eBPQ eEPQ hBPQ hEPQ
  have h1 : s ≤ 1 - P.2 := by
    have : -sarea ptD ptC P = 1 - P.2 := by simp only [sarea, ptD, ptC]; ring
    linarith
  have h2 : s ≤ Q.1 - b * (1 - Q.2) := by
    have : sarea ptD (ptB b) Q = Q.1 - b * (1 - Q.2) := by simp only [sarea, ptD, ptB]; ring
    linarith
  have h3 : s ≤ Q.2 - l - (1 - l) * Q.1 := by
    have : sarea (ptE l) ptC Q = Q.2 - l - (1 - l) * Q.1 := by simp only [sarea, ptE, ptC]; ring
    linarith
  exact chamber_neg_core hb hb2 hl hl0 hs hsq h1 h2 h3 hDQ hQ2 hk1

/-- The three-point cut of the coupled corollary ((24) with `s/q ≥ s₀`, `TYPE_II.md`
lines 1006–1031), as a scalar inequality: `y = X_A`, `X_B ≥ 3s`, `[ECX] = qX_A - αX_B ≥ s`. -/
theorem coupled_three_scalar {q p y XB s Γ : ℝ} (hq : 1 < q) (hs : 7 / 64 ≤ s)
    (hsq : 79 / 720 * q < s) (hp : s ≤ p) (hα : 0 < 1 + p - q)
    (eX : s ≤ q * y - (1 + p - q) * XB) (hXB : 3 * s ≤ XB) (hey : Γ * s + (y - s) ≤ 1)
    (hΓ : 4427 / 500 < Γ) : False := by
  have hq0 : 0 < q := by linarith
  have e1 : s + 3 * s * (1 + s - q) ≤ q * y := by
    nlinarith [mul_le_mul_of_nonneg_left hXB hα.le,
      mul_le_mul_of_nonneg_left (show 1 + s - q ≤ 1 + p - q by linarith)
        (by linarith : (0:ℝ) ≤ 3 * s)]
  have e2 : q * ((Γ - 1) * s) + q * y ≤ q := by
    nlinarith [mul_le_mul_of_nonneg_left hey hq0.le]
  have e4 : 79 / 720 * q * (4 + 3 * (7 / 64)) ≤ s * (4 + 3 * s) :=
    mul_le_mul hsq.le (by linarith) (by norm_num) (by linarith)
  have e5 : q * ((Γ - 4) * (7 / 64)) ≤ q * ((Γ - 4) * s) :=
    mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hs (by linarith)) hq0.le
  nlinarith [mul_lt_mul_of_pos_left hΓ hq0]

/-- The core of the coupled corollary for `1 < q ≤ 30/29` (`λ = 1 - q ∈ [-1/29, 0)`), at a doubled
threshold `s ≥ 7/64` with `s > (79/720) q`, for a labelled mesh of `DBC` (`TYPE_II.md`
lines 991–1071): `EBC` holds at most one point, the three-point cut fails by (24), and the
two-point cut by (29) or by the chamber case `chamber_neg`. -/
theorem coupled_core {l b s : ℝ} {X Y Z : Point} (hb : 0 < b) (hb2 : b ≤ 11 / 20)
    (hl : -(1 / 29) ≤ l) (hl0 : l < 0) (hs : 7 / 64 ≤ s) (hsq : 79 / 720 * (1 - l) < s)
    (hX : IsCentral b X) (hY : IsCentral b Y) (hZ : IsCentral b Z)
    (hmin : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z])
    (px : 0 < sarea ptD (ptB b) Z) (py : 0 < sarea (ptB b) ptC X) (pz : 0 < sarea ptC ptD Y)
    (pa : 0 < sarea ptD Z Y) (pb : 0 < sarea (ptB b) X Z) (pc : 0 < sarea ptC Y X)
    (pk : 0 < sarea Z X Y) (puA : 0 < sarea ptD Z X) (puB : 0 < sarea (ptB b) X Y)
    (puC : 0 < sarea ptC Y Z) (pvA : 0 < sarea ptD X Y) (pvB : 0 < sarea (ptB b) Y Z)
    (pvC : 0 < sarea ptC Z X) : False := by
  have ge : ∀ {t : ℝ}, 0 < t → s ≤ |t| → s ≤ t := fun h1 h2 => by
    rwa [abs_of_pos h1] at h2
  have hx := ge px (le_abs_sarea_of_le_min hmin 0 3 6)
  have hy := ge py (le_abs_sarea_of_le_min hmin 3 1 4)
  have hz := ge pz (le_abs_sarea_of_le_min hmin 1 0 5)
  have ha := ge pa (le_abs_sarea_of_le_min hmin 0 6 5)
  have hb' := ge pb (le_abs_sarea_of_le_min hmin 3 4 6)
  have hc := ge pc (le_abs_sarea_of_le_min hmin 1 5 4)
  have hk := ge pk (le_abs_sarea_of_le_min hmin 6 4 5)
  have huA := ge puA (le_abs_sarea_of_le_min hmin 0 6 4)
  have huB := ge puB (le_abs_sarea_of_le_min hmin 3 4 5)
  have huC := ge puC (le_abs_sarea_of_le_min hmin 1 5 6)
  have hvA := ge pvA (le_abs_sarea_of_le_min hmin 0 4 5)
  have hvB := ge pvB (le_abs_sarea_of_le_min hmin 3 5 6)
  have hvC := ge pvC (le_abs_sarea_of_le_min hmin 1 6 4)
  have hABC : sarea ptD (ptB b) ptC = 1 := by simp [sarea, ptD, ptB, ptC]
  obtain ⟨hk98, -, hey, -, -⟩ := claim_mesh_kstar hs hABC hx hy hz ha hb' hc hk huA huB
    huC hvA hvB hvC
  have hq : 0 < 1 - l := by linarith
  have hp : s ≤ b * (1 - l) := by
    have this : s ≤ |sarea ptD (ptE l) (ptB b)| := le_abs_sarea_of_le_min hmin 0 2 3
    have e : sarea ptD (ptE l) (ptB b) = b * (1 - l) := by simp [sarea, ptD, ptE, ptB]; ring
    rwa [e, abs_of_pos (mul_pos hb hq)] at this
  have hp' : 0 < b * (1 - l) := by linarith
  have hp2 : b * (1 - l) ≤ 33 / 58 := by nlinarith
  have hα : 0 < 1 + b * (1 - l) - (1 - l) := by linarith
  have F1 : ∀ P : Point, sarea (ptE l) ptC P =
      (1 - l) * sarea (ptB b) ptC P - (1 + b * (1 - l) - (1 - l)) * sarea ptC ptD P := by
    intro P; simp [sarea, ptE, ptC, ptB, ptD]; ring
  have Fsum : ∀ P : Point, sarea (ptB b) ptC P + sarea ptC ptD P + sarea ptD (ptB b) P = 1 := by
    intro P; simp [sarea, ptC, ptB, ptD]; ring
  have F2 : sarea (ptE l) Y Z = (1 - l) * (sarea ptD Z Y + sarea (ptB b) Y Z) - sarea ptD Z Y -
      b * (1 - l) * (sarea ptD Z Y + sarea ptC Y Z) := by simp [sarea, ptE, ptC, ptB, ptD]; ring
  have F6 : sarea ptC ptD X = sarea ptC ptD Y + sarea ptC Y X + sarea ptD X Y := by
    simp [sarea, ptC, ptD]; ring
  have G1 : sarea (ptE l) ptC Z * sarea (ptB b) ptC Y = sarea (ptE l) ptC Y * sarea (ptB b) ptC Z -
      (1 + b * (1 - l) - (1 - l)) * sarea ptC Y Z := by
    simp [sarea, ptE, ptC, ptB]; ring
  have G2 : sarea (ptE l) ptC X * sarea (ptB b) ptC Z = sarea (ptE l) ptC Z * sarea (ptB b) ptC X -
      (1 + b * (1 - l) - (1 - l)) * sarea ptC Z X := by
    simp [sarea, ptE, ptC, ptB]; ring
  obtain ⟨xC, xA, xB⟩ := hX
  obtain ⟨yC, yA, yB⟩ := hY
  obtain ⟨zC, zA, zB⟩ := hZ
  have hEBC : sarea (ptE l) (ptB b) ptC = 1 + b * (1 - l) - (1 - l) := by
    simp only [sarea, ptE, ptB, ptC]; ring
  have cut : ∀ {P : Point}, IsCentral b P → (0 < sarea (ptE l) ptC P → InTriangle P ptD (ptE l) ptC)
      ∧ (sarea (ptE l) ptC P < 0 → InTriangle P (ptE l) (ptB b) ptC) := fun hP =>
    central_cut_gen hb hq (by nlinarith) hP
  -- `EBC` holds at most one point: `[EBC] = α < p ≤ 33/58 < (4+2√3)s`
  have EBC2 : ∀ {U V : Point} (f : Fin 5 → Fin 7), Function.Injective f →
      ![ptE l, ptB b, ptC, U, V] = ![ptD, ptC, ptE l, ptB b, X, Y, Z] ∘ f →
      InTriangle U (ptE l) (ptB b) ptC → InTriangle V (ptE l) (ptB b) ptC → False := by
    intro U V f hf hUV hU hV
    have hsub : s / 2 ≤ minTriangleArea ![ptE l, ptB b, ptC, U, V] :=
      hmin.trans (min_le_min_reindex (by norm_num) _ _ f hf hUV)
    have h2 := CornerFamilies.twoInteriorPointLemma (ptE l) (ptB b) ptC U V (Or.inl hU)
      (Or.inl hV) (s / 2) (by linarith) hsub
    rw [triangleArea_eq, hEBC, abs_of_pos hα] at h2
    have h3 : (4 + 2 * (12 / 7)) * s ≤ (4 + 2 * Real.sqrt 3) * s :=
      mul_le_mul_of_nonneg_right (by linarith [sqrt_three_gt]) (by linarith)
    linarith only [h2, h3, hs, hp2, hl0]
  have eX : s ≤ |sarea (ptE l) ptC X| := le_abs_sarea_of_le_min hmin 2 1 4
  have eY : s ≤ |sarea (ptE l) ptC Y| := le_abs_sarea_of_le_min hmin 2 1 5
  have eZ : s ≤ |sarea (ptE l) ptC Z| := le_abs_sarea_of_le_min hmin 2 1 6
  have eYZ : s ≤ |sarea (ptE l) Y Z| := le_abs_sarea_of_le_min hmin 2 5 6
  have nz : ∀ {t : ℝ}, s ≤ |t| → t ≠ 0 := fun h h0 => by rw [h0, abs_zero] at h; linarith
  have FX := F1 X
  have sX1 := Fsum X
  rcases lt_or_gt_of_ne (nz eY) with sY | sY <;> rcases lt_or_gt_of_ne (nz eZ) with sZ | sZ <;>
    rcases lt_or_gt_of_ne (nz eX) with sX | sX
  · exact EBC2 ![2, 3, 1, 4, 5] (by decide) (by funext m; fin_cases m <;> rfl)
      ((cut ⟨xC, xA, xB⟩).2 sX) ((cut ⟨yC, yA, yB⟩).2 sY)
  · linarith only [G2, mul_pos sX zA, mul_neg_of_neg_of_pos sZ xA, mul_pos hα pvC]
  · linarith only [G1, mul_pos sZ yA, mul_neg_of_neg_of_pos sY zA, mul_pos hα puC]
  · linarith only [G1, mul_pos sZ yA, mul_neg_of_neg_of_pos sY zA, mul_pos hα puC]
  · exact EBC2 ![2, 3, 1, 4, 6] (by decide) (by funext m; fin_cases m <;> rfl)
      ((cut ⟨xC, xA, xB⟩).2 sX) ((cut ⟨zC, zA, zB⟩).2 sZ)
  · linarith only [G2, mul_pos sX zA, mul_neg_of_neg_of_pos sZ xA, mul_pos hα pvC]
  · -- `Y, Z` above `CE`
    rcases lt_or_gt_of_ne (nz eYZ) with sYZ | sYZ
    · have hsub : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, Y, Z] :=
        hmin.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 2, 3, 5, 6] (by decide)
          (by funext m; fin_cases m <;> rfl))
      exact chamber_neg hb hb2 hl hl0 (by linarith) hsq ⟨yC, yA, yB⟩ ⟨zC, zA, zB⟩
        ((cut ⟨zC, zA, zB⟩).1 sZ) pvB sYZ hsub
    · rw [abs_of_pos sYZ] at eYZ
      rw [abs_of_neg sX] at eX
      have e1 : 0 ≤ ((1 + b * (1 - l)) * sarea ptC ptD X - s -
          (1 - l) * (sarea (ptB b) ptC X + sarea ptC ptD X)) *
          (sarea ptD Z Y + sarea (ptB b) Y Z) :=
        mul_nonneg (by linarith only [eX, FX]) (by linarith only [ha, hvB, hs])
      have e2 : 0 ≤ ((1 - l) * (sarea ptD Z Y + sarea (ptB b) Y Z) -
          (sarea ptD Z Y + s + b * (1 - l) * (sarea ptD Z Y + sarea ptC Y Z))) *
          (sarea (ptB b) ptC X + sarea ptC ptD X) :=
        mul_nonneg (by linarith only [eYZ, F2]) (by linarith only [xA, xB])
      have e3 : 0 ≤ (sarea ptC Y Z - s) * (b * (1 - l) + sarea ptD (ptB b) X) :=
        mul_nonneg (by linarith only [huC]) (by linarith only [hp', xC])
      have F8 : ((1 + b * (1 - l)) * sarea ptC ptD X - s) *
          (sarea ptD Z Y + sarea (ptB b) Y Z) -
          (sarea ptD Z Y + s + b * (1 - l) * (sarea ptD Z Y + sarea ptC Y Z)) *
          (sarea (ptB b) ptC X + sarea ptC ptD X) = sarea Z X Y * (1 + b * (1 - l)) -
          sarea ptC Y Z * (b * (1 - l) + sarea ptD (ptB b) X) -
          s * (1 - sarea ptD (ptB b) X + sarea ptD Z Y + sarea (ptB b) Y Z) := by
        simp only [sarea, ptC, ptB, ptD]; ring
      have hs0 : (0:ℝ) ≤ s := by linarith
      exact ct_K_contra_gen hs hk98 hp'.le hp2
        (by linarith only [e1, e2, e3, F8, sX1, mul_le_mul_of_nonneg_left ha hs0,
          mul_le_mul_of_nonneg_left hvB hs0])
  · -- all three above `CE`: `qy ≥ s + αX_B ≥ s + 3s(1 + s - q)` against (24)
    rw [abs_of_pos sX, FX] at eX
    have hXB : 3 * s ≤ sarea ptC ptD X := by linarith only [F6, hz, hc, hvA]
    have h5 : (559 : ℝ) / 250 < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
    exact coupled_three_scalar (q := 1 - l) (by linarith) hs hsq hp hα eX hXB hey
      (by unfold Γsix; linarith)

/-- The physical form of the coupled corollary for `1 < q ≤ 30/29`: `0 < b ≤ 11/20`,
`λ ∈ [-1/29, 0)`, three points of the closed triangle `DBC`, threshold `s ≥ 7/64` with
`s > (79/720)(1 - λ)`. -/
theorem coupled_physical {l b s : ℝ} {X Y Z : Point} (hb : 0 < b) (hb2 : b ≤ 11 / 20)
    (hl : -(1 / 29) ≤ l) (hl0 : l < 0) (hs : 7 / 64 ≤ s) (hsq : 79 / 720 * (1 - l) < s)
    (hX : X ∈ convexHull ℝ ({ptD, ptB b, ptC} : Set Point))
    (hY : Y ∈ convexHull ℝ ({ptD, ptB b, ptC} : Set Point))
    (hZ : Z ∈ convexHull ℝ ({ptD, ptB b, ptC} : Set Point)) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z] < s / 2 := by
  by_contra hcon
  push Not at hcon
  have hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z] := by linarith
  have hDBC : (0:ℝ) ≤ sarea ptD (ptB b) ptC := by simp [sarea, ptD, ptB, ptC]
  have cen : ∀ P : Point, P ∈ convexHull ℝ ({ptD, ptB b, ptC} : Set Point) →
      sarea (ptB b) ptC P ≠ 0 → sarea ptC ptD P ≠ 0 → sarea ptD (ptB b) P ≠ 0 →
      IsCentral b P := by
    intro P hP n1 n2 n3
    obtain ⟨h1, h2, h3, -⟩ := sarea_nonneg_of_mem_convexHull hDBC hP
    exact ⟨lt_of_le_of_ne h3 (Ne.symm n3), lt_of_le_of_ne h1 (Ne.symm n1),
      lt_of_le_of_ne h2 (Ne.symm n2)⟩
  have cX := cen X hX (sarea_ne_zero_of_min_pos hpos 3 1 4) (sarea_ne_zero_of_min_pos hpos 1 0 4)
    (sarea_ne_zero_of_min_pos hpos 0 3 4)
  have cY := cen Y hY (sarea_ne_zero_of_min_pos hpos 3 1 5) (sarea_ne_zero_of_min_pos hpos 1 0 5)
    (sarea_ne_zero_of_min_pos hpos 0 3 5)
  have cZ := cen Z hZ (sarea_ne_zero_of_min_pos hpos 3 1 6) (sarea_ne_zero_of_min_pos hpos 1 0 6)
    (sarea_ne_zero_of_min_pos hpos 0 3 6)
  have hmin6 : s / 2 ≤ minTriangleArea ![ptD, ptB b, ptC, X, Y, Z] :=
    hcon.trans (min_le_min_reindex (by norm_num) _ _ ![0, 3, 1, 4, 5, 6] (by decide)
      (by funext m; fin_cases m <;> rfl))
  have hd : CornerFamilies.Distributed ptD (ptB b) ptC X Y Z := by
    by_contra hnd
    have := CornerFamilies.claim_nondistributed_bound ptD (ptB b) ptC X Y Z (Or.inl cX)
      (Or.inl cY) (Or.inl cZ) (s / 2) (by linarith) hmin6 hnd
    rw [triangleArea_eq] at this
    simp [sarea, ptD, ptB, ptC] at this
    nlinarith [sqrt_three_gt]
  let Qp : Point → Point → Point → Prop := fun X Y Z =>
    IsCentral b X ∧ IsCentral b Y ∧ IsCentral b Z ∧
      s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z]
  refine mesh_dispatch (b := b) Qp ?_ ?_ ?_ hd (by linarith) ⟨cX, cY, cZ, hcon⟩
  · rintro X Y Z ⟨h1, h2, h3, h4⟩
    exact ⟨h2, h1, h3, h4.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 2, 3, 5, 4, 6]
      (by decide) (by funext m; fin_cases m <;> rfl))⟩
  · rintro X Y Z ⟨h1, h2, h3, h4⟩
    exact ⟨h2, h3, h1, h4.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 2, 3, 5, 6, 4]
      (by decide) (by funext m; fin_cases m <;> rfl))⟩
  · rintro X Y Z ⟨h1, h2, h3, h4⟩
    exact coupled_core hb hb2 hl hl0 hs hsq h1 h2 h3 h4

/-- **Coupled affine corollary** (`TYPE_II:CoupledAffineCorollary`). Normalize the doubled area
of an actual triangle `ABC` to one; let it contain three further points, and let an additional
point `E` have barycentric coordinates `(α, q, -p)`, `0 < q ≤ 30/29`, `0 < p ≤ (11/20) q`,
`α + q - p = 1`. If `s ≥ s₀ max(1, q)` (32), `s₀ = 2A₀`, it is impossible for all triangles of
these seven points to have normalized doubled area at least `s`; that is, some triangle has area
less than `s · area(ABC)`. `docs/proof/nine/TYPE_II.md`, lines 937–1076.

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
  have hA := A₀_bounds
  have h2A : 79 / 720 < 2 * A₀ := by linarith [hA.2.2.1]
  have hs1 : 2 * A₀ ≤ s :=
    le_trans (by nlinarith [le_max_left 1 q]) hs
  rcases le_or_gt q 1 with hq1' | hq1'
  · have h1 := affineCorollary hS hX hY hZ hq hq1' hp hp1 hsum
    have h7 : 7 / 64 < s := by linarith [hA.1]
    nlinarith
  · obtain ⟨T, k, hk, -, -, -, -, Tmem, hmin⟩ := affine_frame hS hq hp hsum
    have hsq : 2 * A₀ * q ≤ s := by rwa [max_eq_right hq1'.le] at hs
    have hb0 : 0 < p / q := div_pos hp hq
    have hb2 : p / q ≤ 11 / 20 := by rw [div_le_iff₀ hq]; linarith
    have key := coupled_physical (l := 1 - q) (s := s) hb0 hb2 (by linarith) (by linarith)
      (by linarith [hA.1]) (by nlinarith) (Tmem X hX) (Tmem Y hY) (Tmem Z hZ)
    have hle := hmin X Y Z
    have hk0 : 0 < k := by
      rw [hk]; exact abs_pos.2 (by intro h0; rw [triangleArea_eq, h0] at hS; simp at hS)
    rw [triangleArea_eq, ← hk]
    nlinarith [mul_lt_mul_of_pos_left key hk0]

/-- **Coupled affine corollary, geometric form** (`TYPE_II:CoupledAffineCorollary`). If the
actual triangle `ABC` has area `S ≤ 1/2` and `q ≤ min(30/29, 1/(2S))`, `0 < p ≤ (11/20) q`, then
the seven points have a triangle of area less than `A₀` (the normalized doubled minimum at the
competitive threshold is at least `A₀ / S = s₀ / (2S)`). `docs/proof/nine/TYPE_II.md`, lines 1078–1090.

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

end Heilbronn.Nine.TypeII
