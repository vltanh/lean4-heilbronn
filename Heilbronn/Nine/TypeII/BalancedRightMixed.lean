module

public import Heilbronn.Nine.TypeII.TypeIICompletion.Balanced

/-! # Excluding the right mixed cell in balanced Type II (`docs/proof/nine/BALANCED_RIGHT_MIXED.md`)

Closes the "below `ES`, on the `C` side of `LR`" cell of the final balanced placement of
`TYPE_II_COMPLETION.md` §§5–8 (`FinalPlacement l b L P Q R S`: `L` at `DE`, `P` at `CD`, `Q` at
`ER`, `S` at `RC` in the quadrilateral `D, E, R, C`), cited by `TYPE_II_COMPLETION.md` §9.3 and
Theorem 11. Doubled threshold `s = 7/64`, `K = 4 + 2√3`, `Ks > 13/16`.

Notation of the note: `R = (r,u)`, `q = 1 - λ`, `v = 1 - u`, `L = (l,h)`, `S = (x,z)`,
`Q = (a,y)` (here `L.1, L.2`, `S.1, S.2`, `Q.1, Q.2`). The cell is
`sarea (ptE l) S Q < 0` (`Q` below `ES`) and `0 < sarea L R Q` (`Q` on the `C` side of `LR`).

Results:

* `claim_containments` ((1)): `Q ∈ int(EBS)` with `A = [EBS] ≥ 3s`; `S, Q ∈ int(CLR)`;
  `L, Q ∈ int(DER)`; hence `qr ≥ Ks` and `v(1-l) - (1-r)(1-h) ≥ Ks`;
* `claim_anchor_bounds` ((2)): `s < λ < 3/16`, `v > 1 - s`, `q < 57/64`, `r > 52/57`,
  `l > 7/57`, `h > 3s`;
* `claim_height_bound` ((3), (7)): `x ≤ 1 - s`, `z ≤ 1 - 2s/(1-b)`, `z - u ≥ 2s`, `y < 47/160`;
* `mainTheorem` (**Theorem**): the right mixed cell is impossible (`ΔLRQ < 10597/97280 < s`).

The point `P` enters only through the placement hypotheses.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.BalancedRightMixed

open Heilbronn.Nine.TypeII Heilbronn.Nine.TypeIICompletion

/-! ### Helpers -/

theorem ge_of_abs_pos' {s t : ℝ} (hp : 0 < t) (h : s ≤ |t|) : s ≤ t := by
  rwa [abs_of_pos hp] at h

/-- The sign facts of the final placement used in this note, read off from the sectors: the
quadrilateral `D, E, R, C` is convex at `R` (`[ERC] > 0`) and `[CLR] > 0`. -/
theorem placement_signs {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S) :
    0 < Q.1 ∧ 0 < Q.2 ∧ b < R.1 ∧ R.2 < 1 ∧ 0 < sarea (ptE l) R ptC ∧
      0 < (1 - R.2) * (1 - L.1) - (1 - R.1) * (1 - L.2) := by
  obtain ⟨⟨⟨hb, hb1, hl, hl1, -, -, -, hRs, -⟩, -, -, hECL, -, -, hQc, hECQ, hR, -⟩, -,
    ⟨L1, L2, L3⟩, -, ⟨Q1, -, -⟩, -⟩ := hfp
  obtain ⟨-, Rx1, Ry0, -⟩ := hRs
  obtain ⟨qc1, qc2, qc3⟩ := hQc
  unfold IsRight at hR
  simp only [sarea, ptD, ptB, ptC] at qc1 qc2 qc3 hR
  have hQ2 : 0 < Q.2 := by linarith
  have hQ1 : 0 < Q.1 := by nlinarith [mul_pos hb (show 0 < 1 - Q.2 by linarith)]
  have hRb : b < R.1 := by nlinarith
  have hRy : R.2 < 1 := by nlinarith
  have T1 : sarea (ptE l) R ptC * Q.1 = sarea (ptE l) R Q - R.1 * sarea (ptE l) ptC Q := by
    simp only [sarea, ptE, ptC]; ring
  have hERC : 0 < sarea (ptE l) R ptC :=
    pos_of_mul_pos_left (by rw [T1]; nlinarith [mul_neg_of_pos_of_neg (by linarith : 0 < R.1) hECQ])
      hQ1.le
  have T3 : ((1 - R.2) * (1 - L.1) - (1 - R.1) * (1 - L.2)) * (R.1 * (1 - l) ^ 2) =
      sarea (ptE l) R ptC * (1 - l) * sarea R ptD L +
        R.1 * (1 - l) * (1 - R.2) * sarea (ptE l) ptC L +
        (1 - R.2) * sarea (ptE l) R ptC * sarea ptD (ptE l) L := by
    simp only [sarea, ptE, ptC, ptD]; ring
  have hq : 0 < 1 - l := by linarith
  have hr : 0 < R.1 := by linarith
  have hv : 0 < 1 - R.2 := by linarith
  have hCLR : 0 < (1 - R.2) * (1 - L.1) - (1 - R.1) * (1 - L.2) :=
    pos_of_mul_pos_left (by rw [T3]; positivity) (by positivity)
  exact ⟨hQ1, hQ2, hRb, hRy, hERC, hCLR⟩

/-- **Claim** (`BALANCED_RIGHT_MIXED:claim-containments`). In the right mixed cell, at doubled
threshold `s = 7/64`: `Q` is strictly inside `EBS`, so `A = [EBS] = bz + λ(x - b) ≥ 3s`; `S` and
`Q` are strictly inside `CLR` (counterclockwise `C, L, R`); `L` and `Q` are strictly inside `DER`;
and the two-interior bounds give `qr ≥ Ks` and `v(1-l) - (1-r)(1-h) ≥ Ks` (1).
`docs/proof/nine/BALANCED_RIGHT_MIXED.md`, lines 46–95.

Proof note: the manuscript's diagonal affine coordinates are replaced by explicit signed-area
identities expressing each edge test as a positive combination of the sector tests.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_containments {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : sarea (ptE l) S Q < 0 ∧ 0 < sarea L R Q)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    InTriangle Q (ptE l) (ptB b) S ∧ 3 * (7 / 64) ≤ sarea (ptE l) (ptB b) S ∧
      InTriangle S ptC L R ∧ InTriangle Q ptC L R ∧
      InTriangle L ptD (ptE l) R ∧ InTriangle Q ptD (ptE l) R ∧
      Ktwo * (7 / 64) ≤ (1 - l) * R.1 ∧
      Ktwo * (7 / 64) ≤ (1 - R.2) * (1 - L.1) - (1 - R.1) * (1 - L.2) := by
  obtain ⟨hQ1, hQ2, hRb, hRy, hERC, hCLR⟩ := placement_signs hfp
  obtain ⟨⟨⟨hb, hb1, hl, hl1, -, -, -, -, hSs⟩, -, -, hECL, -, -, hQc, -, -, hS⟩, -,
    ⟨L1, L2, L3⟩, -, ⟨Q1, Q2, Q3⟩, ⟨S1, S2, S3⟩⟩ := hfp
  obtain ⟨hSQ, hLRQ⟩ := hcell
  obtain ⟨-, -, Sy0, -⟩ := hSs
  obtain ⟨qc1, qc2, -⟩ := hQc
  have hmin' := hmin
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] := by
    linarith
  have hq : 0 < 1 - l := by linarith
  have hr : 0 < R.1 := by linarith
  have hv : 0 < 1 - R.2 := by linarith
  -- `Q ∈ EBS`
  have i1 : sarea (ptE l) (ptB b) Q = l * sarea ptD (ptB b) Q + b * (1 - l) * Q.2 := by
    simp only [sarea, ptE, ptB, ptD]; ring
  have i2 : sarea (ptB b) S Q = -sarea (ptB b) ptC S * Q.2 + S.2 * sarea (ptB b) ptC Q := by
    simp only [sarea, ptB, ptC]; ring
  have i3 : sarea S (ptE l) Q = -sarea (ptE l) S Q := by unfold sarea; ring
  unfold IsRight at hS
  have a1 : 0 < sarea (ptE l) (ptB b) Q := by rw [i1]; positivity
  have a2 : 0 < sarea (ptB b) S Q := by
    rw [i2]; nlinarith [mul_pos (neg_pos.2 hS) hQ2, mul_nonneg Sy0 qc2.le]
  have a3 : 0 < sarea S (ptE l) Q := by rw [i3]; linarith
  have e1 := ge_of_abs_pos' a1 (le_abs_sarea_of_le_min hm 2 3 6)
  have e2 := ge_of_abs_pos' a2 (le_abs_sarea_of_le_min hm 3 8 6)
  have e3 := ge_of_abs_pos' a3 (le_abs_sarea_of_le_min hm 8 2 6)
  have hA : 3 * (7 / 64) ≤ sarea (ptE l) (ptB b) S := by
    have := sarea_add_sarea_add_sarea (ptE l) (ptB b) S Q; linarith
  -- `S ∈ CLR`
  have T4 : sarea ptC L S * sarea (ptE l) R ptC = sarea (ptE l) ptC L * sarea R ptC S +
      ((1 - R.2) * (1 - L.1) - (1 - R.1) * (1 - L.2)) * sarea ptC (ptE l) S := by
    simp only [sarea, ptE, ptC]; ring
  have T5 : sarea L R S * (1 - R.2) = sarea R ptD L * sarea R ptC S +
      ((1 - R.2) * (1 - L.1) - (1 - R.1) * (1 - L.2)) * sarea ptD R S := by
    simp only [sarea, ptC, ptD]; ring
  have hCLS : 0 < sarea ptC L S := pos_of_mul_pos_left (by rw [T4]; positivity) hERC.le
  have hLRS : 0 < sarea L R S := pos_of_mul_pos_left (by rw [T5]; positivity) hv.le
  -- `Q ∈ CLR`
  have T6 : sarea ptC L Q * (R.1 * (1 - l) * sarea (ptE l) R ptC) =
      (1 - R.2) * sarea (ptE l) ptC L * sarea (ptE l) R Q +
        sarea (ptE l) ptC L * sarea (ptE l) R ptC * sarea R ptD Q +
        R.1 * (1 - l) * ((1 - R.2) * (1 - L.1) - (1 - R.1) * (1 - L.2)) * sarea ptC (ptE l) Q := by
    simp only [sarea, ptE, ptC, ptD]; ring
  have T7 : sarea R ptC Q * (R.1 * (1 - l)) =
      (1 - R.2) * sarea (ptE l) R Q + sarea (ptE l) R ptC * sarea R ptD Q := by
    simp only [sarea, ptE, ptC, ptD]; ring
  have hCLQ : 0 < sarea ptC L Q := pos_of_mul_pos_left (by rw [T6]; positivity) (by positivity)
  have hRCQ : 0 < sarea R ptC Q := pos_of_mul_pos_left (by rw [T7]; positivity) (by positivity)
  -- `L, Q ∈ DER`
  have T2 : sarea (ptE l) R L * (1 - l) = sarea (ptE l) R ptC * sarea ptD (ptE l) L +
      R.1 * (1 - l) * sarea (ptE l) ptC L := by
    simp only [sarea, ptE, ptC, ptD]; ring
  have hERL : 0 < sarea (ptE l) R L := pos_of_mul_pos_left (by rw [T2]; positivity) hq.le
  have hDEQ : 0 < sarea ptD (ptE l) Q := by
    rw [show sarea ptD (ptE l) Q = (1 - l) * Q.1 by simp only [sarea, ptD, ptE]; ring]
    positivity
  have hLDER : InTriangle L ptD (ptE l) R := ⟨L1, hERL, L3⟩
  have hQDER : InTriangle Q ptD (ptE l) R := ⟨hDEQ, Q1, Q2⟩
  have hSCLR : InTriangle S ptC L R := ⟨hCLS, hLRS, S1⟩
  have hQCLR : InTriangle Q ptC L R := ⟨hCLQ, hLRQ, hRCQ⟩
  have k1 := TypeIIBalanced.two_interior_sarea hLDER hQDER
    (TypeIIBalanced.row_sub (by norm_num) hmin' ![0, 2, 7, 4, 6] (by decide) _
      (by funext m; fin_cases m <;> rfl))
  have k2 := TypeIIBalanced.two_interior_sarea hSCLR hQCLR
    (TypeIIBalanced.row_sub (by norm_num) hmin' ![1, 4, 7, 8, 6] (by decide) _
      (by funext m; fin_cases m <;> rfl))
  rw [show sarea ptD (ptE l) R = (1 - l) * R.1 by simp only [sarea, ptD, ptE]; ring] at k1
  rw [show sarea ptC L R = (1 - R.2) * (1 - L.1) - (1 - R.1) * (1 - L.2) by
    simp only [sarea, ptC]; ring] at k2
  exact ⟨⟨a1, a2, a3⟩, hA, hSCLR, hQCLR, hLDER, hQDER, k1, k2⟩

/-- **Claim** (`BALANCED_RIGHT_MIXED:claim-anchor-bounds`). In the right mixed cell, at doubled
threshold `s = 7/64`: `0 < λ < 3/16`, `v > 1 - s` (`u < s`), `λ > s`, `q < 57/64`, and (2)
`r > 52/57`, `l > 7/57`, `h > 3s`. `docs/proof/nine/BALANCED_RIGHT_MIXED.md`, lines 97–135.

Uses: BALANCED_RIGHT_MIXED:claim-containments. -/
theorem claim_anchor_bounds {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : sarea (ptE l) S Q < 0 ∧ 0 < sarea L R Q)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    0 < l ∧ l < 3 / 16 ∧ 1 - 7 / 64 < 1 - R.2 ∧ 7 / 64 < l ∧ 1 - l < 57 / 64 ∧
      52 / 57 < R.1 ∧ 7 / 57 < L.1 ∧ 3 * (7 / 64) < L.2 := by
  obtain ⟨-, -, -, -, -, -, k1, k2⟩ := claim_containments hfp hcell hmin
  obtain ⟨-, -, hRb, -, -, -⟩ := placement_signs hfp
  obtain ⟨⟨⟨hb, hb1, hl, hl1, hLs, -, -, hRs, -⟩, -, -, -, -, -, -, -, -, -⟩, -,
    ⟨L1, L2, -⟩, -, -, -⟩ := hfp
  obtain ⟨-, Lx1, -, Ly1⟩ := hLs
  obtain ⟨-, Rx1, Ry0, -⟩ := hRs
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] := by
    linarith
  have hK := TypeIIBalanced.Ktwo_s_gt
  have eDEL := ge_of_abs_pos' L1 (le_abs_sarea_of_le_min hm 0 2 4)
  have eECL := ge_of_abs_pos' L2 (le_abs_sarea_of_le_min hm 2 1 4)
  rw [show sarea ptD (ptE l) L = (1 - l) * L.1 by simp only [sarea, ptD, ptE]; ring] at eDEL
  rw [show sarea (ptE l) ptC L = L.2 - l - (1 - l) * L.1 by simp only [sarea, ptE, ptC]; ring]
    at eECL
  have hq : 0 < 1 - l := by linarith
  have hl3 : l < 3 / 16 := by nlinarith
  have hLx : 7 / 64 ≤ L.1 := by nlinarith
  have hv : 1 - 7 / 64 < 1 - R.2 := by
    by_contra hc
    push Not at hc
    have h1 : (1 - R.2) * (1 - L.1) ≤ (1 - 7 / 64) * (1 - 7 / 64) :=
      mul_le_mul hc (by linarith) (by linarith) (by norm_num)
    nlinarith [mul_nonneg (sub_nonneg.2 Rx1) (sub_nonneg.2 Ly1)]
  -- the ear `EBR`
  have pEBR : 0 < sarea (ptE l) (ptB b) R := by
    rw [show sarea (ptE l) (ptB b) R = b * R.2 + l * (R.1 - b) by simp only [sarea, ptE, ptB]; ring]
    nlinarith [mul_nonneg hb.le Ry0]
  have eEBR := ge_of_abs_pos' pEBR (le_abs_sarea_of_le_min hm 2 3 7)
  rw [show sarea (ptE l) (ptB b) R = b * R.2 + l * (R.1 - b) by simp only [sarea, ptE, ptB]; ring]
    at eEBR
  have hls : 7 / 64 < l := by
    by_contra hc
    push Not at hc
    nlinarith [mul_le_mul_of_nonneg_left (show R.2 ≤ 7 / 64 by linarith) hb.le,
      mul_le_mul hc (show R.1 - b ≤ 1 - b by linarith) (by linarith) (by norm_num)]
  have hq57 : 1 - l < 57 / 64 := by linarith
  have hr : 0 < R.1 := by linarith
  refine ⟨hl, hl3, hv, hls, hq57, ?_, ?_, ?_⟩
  · by_contra hc
    push Not at hc
    nlinarith [mul_le_mul hq57.le hc hr.le (by norm_num)]
  · by_contra hc
    push Not at hc
    nlinarith [mul_le_mul hq57.le hc (by linarith) (by norm_num)]
  · nlinarith [mul_pos hq (show 0 < L.1 by linarith)]

/-- The cubic of (6): `94016w³ - 135291w² + 60417w - 7840 > 0` on `1/2 ≤ w ≤ 1`. -/
theorem cubic_pos {w : ℝ} (hw : 1 / 2 ≤ w) (_hw1 : w ≤ 1) :
    0 < 94016 * w ^ 3 - 135291 * w ^ 2 + 60417 * w - 7840 := by
  nlinarith [mul_nonneg (sub_nonneg.2 hw) (sq_nonneg (w - 3 / 5)),
    sq_nonneg (w - 3 / 5)]

/-- The scalar core of §3: from `A y ≤ A z - s(2z - λ)` ((4), `A = bz + λ(x-b) ≥ 3s`), the
monotone replacement of `λ, x, z` by `3/16, 1 - s, 1 - 2s/(1-b)` ((5)) and the cubic (6) give
`y < 47/160` (7). -/
theorem height_scalar {b lam x z y : ℝ} (hb : 0 < b) (hb2 : b ≤ 1 / 2) (hl0 : 0 < lam)
    (hl3 : lam < 3 / 16) (hxb : b ≤ x) (hx : x ≤ 1 - 7 / 64) (_hz2 : 2 * (7 / 64) ≤ z)
    (hzw : (1 - b) * z ≤ 1 - b - 2 * (7 / 64)) (hA : 3 * (7 / 64) ≤ b * z + lam * (x - b))
    (hy : (b * z + lam * (x - b)) * y ≤ (b * z + lam * (x - b)) * z - 7 / 64 * (2 * z - lam)) :
    y < 47 / 160 := by
  by_contra hcon
  push Not at hcon
  have hApos : 0 < b * z + lam * (x - b) := by linarith
  rcases lt_or_ge z (47 / 160) with hz | hz
  · nlinarith [mul_le_mul_of_nonneg_left hcon hApos.le]
  -- `G = A(z - 47/160) - s(2z - λ) ≥ 0`
  have hG : 0 ≤ (b * z + lam * (x - b)) * (z - 47 / 160) - 7 / 64 * (2 * z - lam) := by
    nlinarith [mul_le_mul_of_nonneg_left hcon hApos.le]
  have hz0 : 0 ≤ z - 47 / 160 := by linarith
  -- `λ → 3/16`, `x → 1 - s`
  have hG2 : 0 ≤ (b * z + 3 / 16 * (1 - 7 / 64 - b)) * (z - 47 / 160) -
      7 / 64 * (2 * z - 3 / 16) := by
    nlinarith [mul_nonneg (mul_nonneg (sub_nonneg.2 hl3.le) (sub_nonneg.2 hxb)) hz0,
      mul_nonneg (sub_nonneg.2 hx) hz0, sub_nonneg.2 hl3.le]
  -- `z → z* = 1 - 2s/(1-b)`
  set zs : ℝ := 1 - 2 * (7 / 64) / (1 - b) with hzs_def
  have hw : 0 < 1 - b := by linarith
  have hzs : zs * (1 - b) = 1 - b - 2 * (7 / 64) := by
    rw [hzs_def]; field_simp
  have hzzs : z ≤ zs := by
    by_contra hc; push Not at hc
    nlinarith [mul_lt_mul_of_pos_left hc hw]
  have hA2 : 3 * (7 / 64) ≤ b * z + 3 / 16 * (1 - 7 / 64 - b) := by
    nlinarith [mul_nonneg (sub_nonneg.2 hl3.le) (sub_nonneg.2 hxb)]
  have hG3 : 0 ≤ (b * zs + 3 / 16 * (1 - 7 / 64 - b)) * (zs - 47 / 160) -
      7 / 64 * (2 * zs - 3 / 16) := by
    nlinarith [mul_nonneg (sub_nonneg.2 hzzs)
      (show 0 ≤ b * (zs + z) + 3 / 16 * (1 - 7 / 64 - b) - 47 / 160 * b - 2 * (7 / 64) by
        nlinarith [mul_nonneg hb.le (sub_nonneg.2 hzzs)])]
  have hN : (1 - b) ^ 2 * ((b * zs + 3 / 16 * (1 - 7 / 64 - b)) * (zs - 47 / 160) -
      7 / 64 * (2 * zs - 3 / 16)) = -(94016 * (1 - b) ^ 3 - 135291 * (1 - b) ^ 2 +
        60417 * (1 - b) - 7840) / 163840 := by
    linear_combination (-(5120 * b ^ 2 * zs + 2656 * b ^ 2 - 5120 * b * zs - 1801 * b + 265) /
      5120) * hzs
  have hc := cubic_pos (w := 1 - b) (by linarith) (by linarith)
  nlinarith [mul_nonneg (sq_nonneg (1 - b)) hG3]

/-- **Claim** (`BALANCED_RIGHT_MIXED:claim-height-bound`). In the right mixed cell, at doubled
threshold `s = 7/64`, with `S = (x,z)`, `Q = (a,y)`: `x ≤ 1 - s`, `z ≤ 1 - 2s/(1-b)` (3),
`z - u ≥ 2s` (so `z > λ`), and the uniform height bound `y < 47/160` (7) (from the barycentric
bound (4) and the cubic (6)). `docs/proof/nine/BALANCED_RIGHT_MIXED.md`, lines 137–239.

Uses: BALANCED_RIGHT_MIXED:claim-containments, BALANCED_RIGHT_MIXED:claim-anchor-bounds. -/
theorem claim_height_bound {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : sarea (ptE l) S Q < 0 ∧ 0 < sarea L R Q)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    S.1 ≤ 1 - 7 / 64 ∧ S.2 ≤ 1 - 2 * (7 / 64) / (1 - b) ∧ 2 * (7 / 64) ≤ S.2 - R.2 ∧
      l < S.2 ∧ Q.2 < 47 / 160 := by
  obtain ⟨⟨a1, a2, a3⟩, hA, -⟩ := claim_containments hfp hcell hmin
  obtain ⟨hl0, hl3, -, -, -⟩ := claim_anchor_bounds hfp hcell hmin
  obtain ⟨-, -, hRb, hRy, -, -⟩ := placement_signs hfp
  obtain ⟨⟨⟨hb, hb1, hl, hl1, -, -, -, hRs, hSs⟩, hb2, -, -, -, -, -, -, -, hS⟩, ⟨t1, t2, t3⟩,
    -, -, -, ⟨-, -, S3⟩⟩ := hfp
  obtain ⟨-, Rx1, Ry0, -⟩ := hRs
  obtain ⟨-, Sx1, Sy0, Sy1⟩ := hSs
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] := by
    linarith
  have eRCS := ge_of_abs_pos' t2 (le_abs_sarea_of_le_min hm 7 1 8)
  have eCBS := ge_of_abs_pos' t3 (le_abs_sarea_of_le_min hm 1 3 8)
  have eDRS := ge_of_abs_pos' S3 (le_abs_sarea_of_le_min hm 0 7 8)
  have e2 := ge_of_abs_pos' a2 (le_abs_sarea_of_le_min hm 3 8 6)
  have e3 := ge_of_abs_pos' a3 (le_abs_sarea_of_le_min hm 8 2 6)
  have dRCS : sarea R ptC S = (1 - R.2) * (1 - S.1) - (1 - R.1) * (1 - S.2) := by
    simp only [sarea, ptC]; ring
  have dCBS : sarea ptC (ptB b) S = S.1 - b - (1 - b) * S.2 := by
    simp only [sarea, ptC, ptB]; ring
  have hsum : sarea ptD R S + sarea R ptC S = S.2 - R.2 := by simp only [sarea, ptD, ptC]; ring
  rw [dRCS] at eRCS
  rw [dCBS] at eCBS
  have hw : 0 < 1 - b := by linarith
  have hx : S.1 ≤ 1 - 7 / 64 := by
    nlinarith [mul_nonneg (sub_nonneg.2 Rx1) (sub_nonneg.2 Sy1), mul_nonneg Ry0 (sub_nonneg.2 Sx1)]
  have hzw : (1 - b) * S.2 ≤ 1 - b - 2 * (7 / 64) := by linarith
  have hz : S.2 ≤ 1 - 2 * (7 / 64) / (1 - b) := by
    rw [le_sub_iff_add_le, ← le_sub_iff_add_le', div_le_iff₀ hw]; linarith
  have hzu : 2 * (7 / 64) ≤ S.2 - R.2 := by linarith
  refine ⟨hx, hz, hzu, by linarith, ?_⟩
  -- (4): the barycentric bound
  have hbary : sarea (ptE l) (ptB b) S * Q.2 =
      sarea (ptB b) S Q * l + sarea (ptE l) (ptB b) Q * S.2 := by
    simp only [sarea, ptE, ptB]; ring
  have hsub := sarea_add_sarea_add_sarea (ptE l) (ptB b) S Q
  have dEBS : sarea (ptE l) (ptB b) S = b * S.2 + l * (S.1 - b) := by
    simp only [sarea, ptE, ptB]; ring
  have hxb : b ≤ S.1 := by
    unfold IsRight at hS; simp only [sarea, ptB, ptC] at hS; nlinarith
  have hy : (b * S.2 + l * (S.1 - b)) * Q.2 ≤
      (b * S.2 + l * (S.1 - b)) * S.2 - 7 / 64 * (2 * S.2 - l) := by
    have hEBQ : sarea (ptE l) (ptB b) Q =
        sarea (ptE l) (ptB b) S - sarea (ptB b) S Q - sarea S (ptE l) Q := by linarith
    rw [← dEBS, hbary, hEBQ]
    have hzl : 0 ≤ S.2 - l := by linarith
    linarith [mul_le_mul_of_nonneg_right e2 hzl, mul_le_mul_of_nonneg_right e3 Sy0]
  rw [dEBS] at hA
  exact height_scalar hb hb2 hl0 hl3 hxb hx (by linarith) hzw hA hy

/-- **Theorem** (`BALANCED_RIGHT_MIXED:Theorem`). The right mixed cell — `Q` below `ES` and on the
`C` side of `LR` in the final balanced placement — is impossible at doubled threshold `7/64`:
some triangle has area less than `7/128` (`ΔLRQ < 10597/97280 = s - 43/97280`).
`docs/proof/nine/BALANCED_RIGHT_MIXED.md`, lines 241–289.

Uses: BALANCED_RIGHT_MIXED:claim-anchor-bounds, BALANCED_RIGHT_MIXED:claim-height-bound,
BALANCED_RIGHT_MIXED:claim-containments. -/
theorem mainTheorem {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : sarea (ptE l) S Q < 0 ∧ 0 < sarea L R Q) :
    minTriangleArea (typeIIConfig l b L P Q R S) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have hL := hfp.1.2.2.1
  obtain ⟨-, -, -, -, -, hr, hlx, hh⟩ := claim_anchor_bounds hfp hcell hcon
  obtain ⟨-, -, -, -, hy⟩ := claim_height_bound hfp hcell hcon
  obtain ⟨⟨⟨hb, hb1, hl, hl1, -, -, -, hRs, -⟩, hb2, -, -, -, -, hQc, -, -, -⟩, -, -, -, -, -⟩ :=
    hfp
  obtain ⟨-, -, Ry0, -⟩ := hRs
  obtain ⟨qc1, qc2, -⟩ := hQc
  rw [typeIIConfig_eq] at hcon
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] := by
    linarith
  have eBCQ := ge_of_abs_pos' qc2 (le_abs_sarea_of_le_min hm 3 1 6)
  have eDBQ := ge_of_abs_pos' qc1 (le_abs_sarea_of_le_min hm 0 3 6)
  have eLRQ := ge_of_abs_pos' hcell.2 (le_abs_sarea_of_le_min hm 4 7 6)
  simp only [sarea, ptB, ptC, ptD] at eBCQ eDBQ eLRQ
  have hQ2 : 0 < Q.2 := by nlinarith
  -- (8)
  have ha : Q.1 ≤ 1 / 2 + Q.2 / 2 - 7 / 64 := by
    nlinarith [mul_le_mul_of_nonneg_right hb2 (show 0 ≤ 1 - Q.2 by nlinarith)]
  -- `l ≤ b(1-h) - s`: the left point `L` is left of `DB`
  have hDBL : sarea ptD (ptB b) L ≤ -(7 / 64) := by
    obtain ⟨-, -, h3⟩ := hL
    have h3' : sarea ptD (ptB b) L < 0 := by
      rw [show sarea ptD (ptB b) L = -sarea (ptB b) ptD L by unfold sarea; ring]; linarith
    have : 7 / 64 ≤ |sarea ptD (ptB b) L| := le_abs_sarea_of_le_min hm 0 3 4
    rw [abs_of_neg h3'] at this
    linarith
  simp only [sarea, ptD, ptB] at hDBL
  have hal : 0 < Q.1 - L.1 := by nlinarith
  nlinarith [mul_nonneg (sub_nonneg.2 hr.le) (show 0 ≤ L.2 - Q.2 by linarith),
    mul_nonneg (sub_nonneg.2 hlx.le) hQ2.le, mul_nonneg (sub_nonneg.2 hh.le)
      (show 0 ≤ 52 / 57 - Q.1 by linarith), mul_nonneg Ry0 hal.le,
    mul_nonneg (show (0:ℝ) ≤ 45 / 57 + 3 * (7 / 64) / 2 by norm_num) (sub_nonneg.2 hy.le)]

end Heilbronn.Nine.BalancedRightMixed
