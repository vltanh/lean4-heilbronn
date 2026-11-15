module

public import Heilbronn.C1.TopCapOfSplit

/-! # The containment pair-line case is impossible in the C1 top cap
(`hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`)

Role: a component on the primary route: `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 5
(the middle, or containment, pair-line case).

Setting (lines 3-26): the common-cell placement of `hand/C1_TOP_CAP_COMMON_CELL.md`
(`CommonCellSetting`): weak C1 anchors (the note writes `0 < f < c ≤ 1`; `f < c` follows from
`f < x < c`), two lower points `L, M ∈ OHC ∩ OCF`, a top-cap point `X = (x, Y)`, the ninth point
in `OCX`, a competitive configuration, `s = 8/73`, `ρ = 49/60`, `p = hc ≥ ρ`, `cY ≥ ρ`,
`z = hf/c ≥ s`, `f < x < c`, `L` on the `H`-side and `M` on the `C`-side of `OX`. The pair-line
signs are `d_V = [LMV]`.

Results:
* `claim_certificate`: `R(h, c, f) < 0` on `c²/(2p) ≤ f ≤ c - s`, `ρ ≤ p ≤ c ≤ 1`;
* `eq6`: `s ≤ z < 1/2` (any pair-line case);
* `eq7_10`: under the signs (1), `y > t`, the inequalities (8) and the reduced system (10);
* `claim_scalar`: the system (10) has no solution;
* `theorem_main` (**Theorem**): the sign pattern `d_O, d_H < 0 < d_C, d_F` (1) is impossible.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1TopCapContainmentPair

open Heilbronn.C1 Heilbronn.C1TopCapOfSplit

/-- `𝓕(h, p, z, v) = (v - s){(1 - h + z)(p - v) - s(1 - h)} - ps(1 + h) + 2hsv` of (8),
`s = 8/73`. -/
def calF (h p z v : ℝ) : ℝ :=
  (v - 8 / 73) * ((1 - h + z) * (p - v) - 8 / 73 * (1 - h)) - p * (8 / 73) * (1 + h) +
    2 * h * (8 / 73) * v

/-- `V(p, z) = (p - s(1 + p))/(1 + z)` of (10). -/
def upperV (p z : ℝ) : ℝ := (p - 8 / 73 * (1 + p)) / (1 + z)

/-- **Claim** (`C1_TOP_CAP_CONTAINMENT_PAIR:claim-certificate`, made-up id). `R(h, c, f) < 0`
throughout (4): `c²/(2p) ≤ f ≤ c - s`, `ρ ≤ p ≤ c ≤ 1`, `h = p/c`. In the manuscript: with
`f = (c² + W₀θ)/(2p)`, all `385` tensor Bernstein coefficients of the five `N_k(p, c)` (5) are
below `-1/250` on one rectangle; checked by `hand/check_c1_top_cap_containment_pair.py`.
`hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`, lines 88-138. -/
theorem claim_certificate (p c f : ℝ) (hp : 49 / 60 ≤ p) (hpc : p ≤ c) (hc : c ≤ 1)
    (hf : c ^ 2 / (2 * p) ≤ f) (hf' : f ≤ c - 8 / 73) :
    capR (p / c) c f < 0 := by
  sorry

/-- **Claim** (`C1_TOP_CAP_CONTAINMENT_PAIR:eq6`). In the common-cell placement (any pair-line
case), `z = hf/c` satisfies `s ≤ z < 1/2` (6), `s = 8/73`. `hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`,
lines 42-142.
Uses: C1_TOP_CAP_OF_SPLIT:eq7-10, C1_TOP_CAP_OF_SPLIT:claim-x-lt-c,
C1_TOP_CAP_CONTAINMENT_PAIR:claim-certificate. -/
theorem eq6 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) :
    8 / 73 ≤ h * f / c ∧ h * f / c < 1 / 2 := by
  sorry

/-- **Claim** (`C1_TOP_CAP_CONTAINMENT_PAIR:eq7-10`). In the common-cell placement with the
signs (1) `[LMO], [LMH] < 0 < [LMC], [LMF]`, writing `L = (ℓ, y)`, `M = (m, t)`, `p = hc`,
`z = hf/c`, `v = cy`: `y > t`; `𝓕(h, p, z, v) ≥ 0` and `(1 + z)v ≤ p - s(1 + h)` (8);
and, after decreasing `h` to `p` (9), the system (10): `F(p, z, v) = 𝓕(p, p, z, v) ≥ 0`,
`s < v ≤ V(p, z)`, `ρ ≤ p ≤ 1`, `s ≤ z ≤ 1/2`. `hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`,
lines 144-229.
Uses: C1_TOP_CAP_CONTAINMENT_PAIR:eq6. -/
theorem eq7_10 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hO : sarea L M ptO < 0) (hH : sarea L M (ptH h) < 0) (hC : 0 < sarea L M (ptC c))
    (hF : 0 < sarea L M (ptF f)) :
    M.2 < L.2 ∧ 0 ≤ calF h (h * c) (h * f / c) (c * L.2) ∧
      (1 + h * f / c) * (c * L.2) ≤ h * c - 8 / 73 * (1 + h) ∧
      0 ≤ calF (h * c) (h * c) (h * f / c) (c * L.2) ∧
      8 / 73 < c * L.2 ∧ c * L.2 ≤ upperV (h * c) (h * f / c) ∧
      49 / 60 ≤ h * c ∧ h * c ≤ 1 ∧ 8 / 73 ≤ h * f / c ∧ h * f / c ≤ 1 / 2 := by
  sorry

/-- **Claim** (`C1_TOP_CAP_CONTAINMENT_PAIR:claim-scalar`, made-up id; §3). The system (10) has
no solution: for `ρ ≤ p ≤ 1`, `s ≤ z ≤ 1/2` and `s < v ≤ V(p, z)`, `F(p, z, v) < 0` (`F` is
concave in `v` and increasing up to `V`, and `(1 + z)²F(p, z, V) = -pT(p, z)/5329` with
`T > 0`). `hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`, lines 230-304. -/
theorem claim_scalar (p z v : ℝ) (hp : 49 / 60 ≤ p) (hp' : p ≤ 1) (hz : 8 / 73 ≤ z)
    (hz' : z ≤ 1 / 2) (hv : 8 / 73 < v) (hv' : v ≤ upperV p z) :
    calF p p z v < 0 := by
  sorry

/-- **Theorem** (`C1_TOP_CAP_CONTAINMENT_PAIR:Theorem`). In the common-cell placement, the
line-sign placement `d_O, d_H < 0 < d_C, d_F` (1), `d_V = [LMV]`, is impossible.
`hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`, lines 28-40 and 232-304.
Uses: C1_TOP_CAP_CONTAINMENT_PAIR:eq6, C1_TOP_CAP_CONTAINMENT_PAIR:eq7-10,
C1_TOP_CAP_CONTAINMENT_PAIR:claim-scalar. -/
theorem theorem_main {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hO : sarea L M ptO < 0) (hH : sarea L M (ptH h) < 0) (hC : 0 < sarea L M (ptC c))
    (hF : 0 < sarea L M (ptF f)) : False := by
  sorry

end Heilbronn.C1TopCapContainmentPair
