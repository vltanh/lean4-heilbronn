module

public import Heilbronn.C1.Setting

/-! # Two C1 top-cap points cannot form a convex quadrilateral with the cap base
(`hand/C1_TOP_CAP_CONVEX_PAIR.md`)

Role: a component on the primary route: `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 3
(lines 249-254), together with `hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`. Its §§1, 3, 4 are reused
by `hand/C1_TOP_CAP_SIDE_EARS.md` and `hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`.

Setting (lines 3-38): the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`,
a competitive nine-point configuration (least area at least `A₀`, so every doubled area is at
least `s = 8/73`), two free points `L, M` inside `OHC`, and the other two `X, Y` in the closed
top cap `conv{D, F, (1,1)}`. The lower points enter only through `hc ≥ Ks > ρ = 49/60`; the
scalar part is proved under the relaxed `hc ≥ ρ`.

Definitions: the anchor expressions `areaA = [CDF]`, `areaU = [HDF]`, `areaΔ` (1); the bracket
`bracketB` and discriminant `discrG` of (6); the reduced parametrization (9) at `hc = ρ`
(`reducedHCDF`).

Results:
* `eq1_2`: `W = A + U + Δ`, and `Δ > 0` when `hc ≥ ρ`, `hf, cd ≥ s`;
* `eq3_5`: the cap costs `a_Z, b_Z, r_Z ≥ s`, the identity `A a_Z + U b_Z + Δ r_Z = AU` (3) and the
  barycentric bounds (5);
* `eq6`: if `D, F` are on one side of `XY` then `B > 0` and `G ≥ 0`;
* `claim_reduction`: (7), (8), and the reduction of (6) to the box (10) at `hc = ρ`;
* `claim_certificate`: (6) has no solution in the box (10) (36 Bernstein leaves);
* `theorem_main` (**Theorem**): the line `XY` separates `D, F`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1TopCapConvexPair

open Heilbronn.C1

/-- `A = [CDF] = 1 - c + d(c - f)` (1). -/
def areaA (c d f : ℝ) : ℝ := 1 - c + d * (c - f)

/-- `U = [HDF] = 1 - h + f(h - d)` (1). -/
def areaU (h d f : ℝ) : ℝ := 1 - h + f * (h - d)

/-- `Δ = df - (1 - h)(1 - c)` (1). -/
def areaΔ (h c d f : ℝ) : ℝ := d * f - (1 - h) * (1 - c)

/-- `B = AU - s(A + U)` of (6), `s = 8/73`. -/
def bracketB (h c d f : ℝ) : ℝ :=
  areaA c d f * areaU h d f - 8 / 73 * (areaA c d f + areaU h d f)

/-- `G = B² - 4sAUΔ` of (6), `s = 8/73`. -/
def discrG (h c d f : ℝ) : ℝ :=
  bracketB h c d f ^ 2 - 4 * (8 / 73) * areaA c d f * areaU h d f * areaΔ h c d f

/-- The reduced parameters (9) at `hc = ρ = 49/60`: with `u = hf`, `v = cd`, the anchors are
`(h, c, d, f) = (h, ρ/h, vh/ρ, u/h)`; then `A = 1 - ρ/h + v - uv/ρ`, `U = 1 - h + u - uv/ρ`,
`Δ = uv/ρ - 1 + h + ρ/h - ρ`. -/
def reducedHCDF (h u v : ℝ) : ℝ × ℝ × ℝ × ℝ := (h, 49 / 60 / h, v * h / (49 / 60), u / h)

/-- **Claim** (`C1_TOP_CAP_CONVEX_PAIR:eq1-2`). For the weak anchor conditions,
`W = A + U + Δ = 1 - (h - d)(c - f)`; and if `hc ≥ ρ = 49/60` and `hf, cd ≥ s = 8/73`, then
`Δ > 0` (2). `hand/C1_TOP_CAP_CONVEX_PAIR.md`, lines 40-69. -/
theorem eq1_2 {h c d f : ℝ} (hA : C1AnchorsWeak h c d f) :
    areaA c d f + areaU h d f + areaΔ h c d f = 1 - (h - d) * (c - f) ∧
      (49 / 60 ≤ h * c → 8 / 73 ≤ h * f → 8 / 73 ≤ c * d → 0 < areaΔ h c d f) := by
  sorry

/-- **Claim** (`C1_TOP_CAP_CONVEX_PAIR:eq3-5`). In a C1 configuration with the weak anchor
conditions and least area at least `A₀`: `A, U, hf, cd ≥ s` (`s = 8/73`); every point `Z`
satisfies `A·a_Z + U·b_Z + Δ·r_Z = AU` (3), where `a_Z = -[HFZ]`, `b_Z = [CDZ]`, `r_Z = -[DFZ]`;
every free point `Z` in the closed top cap has `a_Z, b_Z, r_Z ≥ s`; and, when `Δ > 0`, with the
area `S = AU/Δ` (4) of the triangle `a, b, r ≥ 0` and the barycentric coordinates
`q = b_Z/A`, `t = r_Z`, `s/A ≤ q ≤ 1 - s/U - t/S` (5). `hand/C1_TOP_CAP_CONVEX_PAIR.md`,
lines 71-111. -/
theorem eq3_5 {h c d f : ℝ} {W X Y Z : Point} (hA : C1AnchorsWeak h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    8 / 73 ≤ areaA c d f ∧ 8 / 73 ≤ areaU h d f ∧ 8 / 73 ≤ h * f ∧ 8 / 73 ≤ c * d ∧
      (∀ V : Point, areaA c d f * -sarea (ptH h) (ptF f) V + areaU h d f * sarea (ptC c) (ptD d) V
          + areaΔ h c d f * -sarea (ptD d) (ptF f) V = areaA c d f * areaU h d f) ∧
      ∀ i, sarea (ptD d) (ptF f) (freePt W X Y Z i) ≤ 0 →
        8 / 73 ≤ -sarea (ptH h) (ptF f) (freePt W X Y Z i) ∧
        8 / 73 ≤ sarea (ptC c) (ptD d) (freePt W X Y Z i) ∧
        8 / 73 ≤ -sarea (ptD d) (ptF f) (freePt W X Y Z i) ∧
        (0 < areaΔ h c d f →
          8 / 73 / areaA c d f ≤ sarea (ptC c) (ptD d) (freePt W X Y Z i) / areaA c d f ∧
          sarea (ptC c) (ptD d) (freePt W X Y Z i) / areaA c d f ≤
            1 - 8 / 73 / areaU h d f - -sarea (ptD d) (ptF f) (freePt W X Y Z i) /
              (areaA c d f * areaU h d f / areaΔ h c d f)) := by
  sorry

/-- **Claim** (`C1_TOP_CAP_CONVEX_PAIR:eq6`). In a C1 configuration `c1Config h c d f L M X Y`
with the weak anchor conditions, least area at least `A₀`, `hc ≥ ρ = 49/60`, and `X, Y` in the
closed top cap: if `D, F` lie on the same side of `XY`, then `B = AU - s(A + U) > 0` and
`G = B² - 4sAUΔ ≥ 0` (6). `hand/C1_TOP_CAP_CONVEX_PAIR.md`, lines 113-154.
Uses: C1_TOP_CAP_CONVEX_PAIR:eq1-2, C1_TOP_CAP_CONVEX_PAIR:eq3-5. -/
theorem eq6 {h c d f : ℝ} {L M X Y : Point} (hA : C1AnchorsWeak h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X Y)) (hhc : 49 / 60 ≤ h * c)
    (hXc : sarea (ptD d) (ptF f) X ≤ 0) (hYc : sarea (ptD d) (ptF f) Y ≤ 0)
    (hDF : SameSide X Y (ptD d) (ptF f)) :
    0 < bracketB h c d f ∧ 0 ≤ discrG h c d f := by
  sorry

/-- **Claim** (`C1_TOP_CAP_CONVEX_PAIR:claim-reduction`, made-up id). Scalar reduction of §3:
if the weak anchor conditions hold with `hf, cd ≥ s`, `hc ≥ ρ`, and (6) `B > 0`, `G ≥ 0`, then
`A + U > 4s` (7) and `s²/ρ < df < ρ` (8); decreasing `h, c` at fixed `d, f` to `hc = ρ`
preserves (6), and after the transposition `h ≤ c`, (6) holds at a point of the box (10):
`ρ ≤ h ≤ √ρ < 113/125`, `s ≤ u, v ≤ ρ`, in the parametrization (9). Here `s = 8/73`,
`ρ = 49/60`. `hand/C1_TOP_CAP_CONVEX_PAIR.md`, lines 156-248.
Uses: C1_TOP_CAP_CONVEX_PAIR:eq1-2. -/
theorem claim_reduction {h c d f : ℝ} (hA : C1AnchorsWeak h c d f) (hhf : 8 / 73 ≤ h * f)
    (hcd : 8 / 73 ≤ c * d) (hhc : 49 / 60 ≤ h * c) (hB : 0 < bracketB h c d f)
    (hG : 0 ≤ discrG h c d f) :
    4 * (8 / 73) < areaA c d f + areaU h d f ∧ (8 / 73) ^ 2 / (49 / 60) < d * f ∧
      d * f < 49 / 60 ∧
      ∃ h' u v : ℝ, 49 / 60 ≤ h' ∧ h' ≤ 113 / 125 ∧ 8 / 73 ≤ u ∧ u ≤ 49 / 60 ∧
        8 / 73 ≤ v ∧ v ≤ 49 / 60 ∧
        0 < bracketB (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.1 (reducedHCDF h' u v).2.2.1
          (reducedHCDF h' u v).2.2.2 ∧
        0 ≤ discrG (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.1 (reducedHCDF h' u v).2.2.1
          (reducedHCDF h' u v).2.2.2 := by
  sorry

/-- **Claim** (`C1_TOP_CAP_CONVEX_PAIR:claim-certificate`, made-up id). The system (6) has no
solution in the box (10), `ρ ≤ h ≤ 113/125`, `s ≤ u, v ≤ ρ`, in the parametrization (9). In the
manuscript: 36 fixed dyadic boxes in the unit-cube coordinates `(H, U₀, V)`, each with all tensor
Bernstein coefficients of `P = hB` nonpositive or of `Q = h²G` negative; checked by
`hand/check_c1_top_cap_convex_pair.py`. `hand/C1_TOP_CAP_CONVEX_PAIR.md`, lines 250-319. -/
theorem claim_certificate (h u v : ℝ) (hh : 49 / 60 ≤ h) (hh' : h ≤ 113 / 125)
    (hu : 8 / 73 ≤ u) (hu' : u ≤ 49 / 60) (hv : 8 / 73 ≤ v) (hv' : v ≤ 49 / 60) :
    ¬ (0 < bracketB (reducedHCDF h u v).1 (reducedHCDF h u v).2.1 (reducedHCDF h u v).2.2.1
          (reducedHCDF h u v).2.2.2 ∧
        0 ≤ discrG (reducedHCDF h u v).1 (reducedHCDF h u v).2.1 (reducedHCDF h u v).2.2.1
          (reducedHCDF h u v).2.2.2) := by
  sorry

/-- **Theorem** (`C1_TOP_CAP_CONVEX_PAIR:Theorem`). In a competitive nine-point C1 configuration
`c1Config h c d f L M X Y` (weak anchor conditions, least area at least `A₀`) with `L, M`
strictly inside `OHC` and `X, Y` in the closed top cap `conv{D, F, (1,1)}`, the line `XY`
separates `D, F`: the four points `D, F, X, Y` are not in convex position.
`hand/C1_TOP_CAP_CONVEX_PAIR.md`, lines 31-34 and 321-323.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, C1_TOP_CAP_CONVEX_PAIR:eq6,
C1_TOP_CAP_CONVEX_PAIR:claim-reduction, C1_TOP_CAP_CONVEX_PAIR:claim-certificate. -/
theorem theorem_main {h c d f : ℝ} {L M X Y : Point} (hA : C1AnchorsWeak h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X Y))
    (hLl : InLower h c L) (hMl : InLower h c M)
    (hXc : sarea (ptD d) (ptF f) X ≤ 0) (hYc : sarea (ptD d) (ptF f) Y ≤ 0) :
    OppSide X Y (ptD d) (ptF f) := by
  sorry

end Heilbronn.C1TopCapConvexPair
