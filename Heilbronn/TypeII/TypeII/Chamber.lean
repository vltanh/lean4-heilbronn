module

public import Heilbronn.TypeII.TypeII.Basic

/-! # Type II: the two-point chamber lemma and the central-pair line table
(`hand/TYPE_II.md`, §§6 and 12)

Two central points `P, Q` strictly inside both `DCB` and `DCE` (`TYPE_II.md` lines 406–535 and
1141–1211).

* `twoPointChamberLemma` (**Two-point chamber lemma**, §6): with `b ≤ 1/2`, the orientations
  `[BPQ] > 0`, `[EPQ] < 0` (13) force a triangle of area `< 7/128` among `D, C, B, E, P, Q`.
* `chamberG`, `claim_chamber_general`: the proof of §6 only uses `b ≤ 1/2` to show that the
  polynomial `G(b, z)` of (20) is positive at `z = 1 - λ`; the derivative bound (18)–(19) holds
  for every `b ≥ 0` (`TYPE_II.md` §9 lines 855–877 and `TYPE_II_COMPLETION.md` §8.3, lines
  890–905, use this form).
* `claim_PQ_line_table` (§12 table): when `B, E` are on the same side of `PQ`, at a general
  positive doubled threshold `s`, the three positions of `D, C` and their necessary quadratic
  inequalities `A² ≥ 4sq(1+bq)`, `A > 0`. Stated, as `TYPE_II_COMPLETION.md` §8.2 and
  `TYPE_II_BALANCED.md` §6 use it, at a general threshold, for `0 < b < 1`, with the same-side
  hypothesis on `B, E` (no `b ≤ 1/2`, no appeal to §6).
* `claim_b_le_two_sevenths` ((36)): at doubled threshold `7/64` and `b ≤ 1/2`, if `D, C` are on
  opposite sides of `PQ` then `b ≤ 2/7`.

The brackets `[BPQ]` of (13) are signed ordinary areas; only their signs are used, so they are
written `sarea`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeII

/-- **Two-point chamber lemma** (`TYPE_II:TwoPointChamberLemma`). In the notation (5) with
`b ≤ 1/2`, if two further points `P, Q` lie strictly inside both `DCB` and `DCE` and
`[BPQ] > 0`, `[EPQ] < 0` (13), then some triangle determined by `D, C, E, B, P, Q` has area less
than `7/128`. `hand/TYPE_II.md`, lines 406–535.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, TYPE_II:claim-chamber-general. -/
theorem twoPointChamberLemma {l b : ℝ} {P Q : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2)
    (hl : 0 < l) (hl1 : l < 1)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hBPQ : 0 < sarea (ptB b) P Q) (hEPQ : sarea (ptE l) P Q < 0) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] < 7 / 128 := by
  sorry

/-- The polynomial `G(b, z)` of `TYPE_II.md` (20), with `F(q₀) = -z G(b,z) / (4096 (1+bz)²)`. -/
def chamberG (b z : ℝ) : ℝ :=
  448 * b ^ 3 * z ^ 3 + b ^ 2 * z ^ 2 * (1890 - 3648 * z) +
    b * z * (3648 * z ^ 2 - 5293 * z + 2135) + 399 * z ^ 2 - 847 * z + 644

/-- **Claim** (`TYPE_II:claim-chamber-general`, made up). The proof of the chamber lemma for a
general bottom parameter: for `0 < b < 1`, `0 ≤ λ < 1`, the hypotheses of the chamber lemma and
`G(b, 1-λ) > 0` already give a triangle of area less than `7/128`. The derivative bound
(18)–(19) needs no bound on `b` (completion of the square), and `z = 1` (`λ = 0`) is included.
`hand/TYPE_II.md`, lines 422–535, with the remarks at lines 855–857, 915–917, and
`hand/TYPE_II_COMPLETION.md` lines 890–905.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_chamber_general {l b : ℝ} {P Q : Point} (hb : 0 < b) (hb1 : b < 1)
    (hl : 0 ≤ l) (hl1 : l < 1)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hBPQ : 0 < sarea (ptB b) P Q) (hEPQ : sarea (ptE l) P Q < 0)
    (hG : 0 < chamberG b (1 - l)) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] < 7 / 128 := by
  sorry

/-- **Claim** (`TYPE_II:claim-PQ-line-table`). Let `P, Q` be strictly inside both `DCB` and
`DCE`, every doubled area of `D, C, E, B, P, Q` at least `s > 0`, `0 < b < 1`, `0 < λ < 1`,
`q = 1 - λ`, and let `B, E` be on the same side of the line `PQ`. Writing `σ_X = [PQX]`, exactly
one of three positions occurs:

* `D, C` on the same side (opposite to `B, E`): `A = q - s(q+1) > 0` and `A² ≥ 4sq(1+bq)`;
* `D` isolated from `B, C, E`: `A = q - s[1 + (1+b)q] > 0` and `A² ≥ 4sq(1+bq)`;
* `C` isolated from `B, D, E`: `A = q - s(2 + bq) > 0` and `A² ≥ 4sq(1+bq)`.

The calculation is the one of `OPPOSITE_CORNERS.md` (21)–(22), (24)–(25), after the map
`(x,y) ↦ (x, x + (1-b)(1-y))` (`h = (1-b)q`, `β = 1-b`, `f = b`, `σ = (1-b)s`), valid at a general
positive threshold. `hand/TYPE_II.md`, lines 1141–1187.

Implicit in the manuscript: in §12 the same-side position of `B, E` comes from §6 (at `7/64` and
`b ≤ 1/2`); here it is a hypothesis, as `TYPE_II_COMPLETION.md` §8.2 and `TYPE_II_BALANCED.md`
§6 use the table. -/
theorem claim_PQ_line_table {l b s : ℝ} {P Q : Point} (hs : 0 < s) (hb : 0 < b) (hb1 : b < 1)
    (hl : 0 < l) (hl1 : l < 1)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hmin : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q])
    (hBE : 0 < sarea P Q (ptB b) * sarea P Q (ptE l)) :
    let q := 1 - l
    let σD := sarea P Q ptD
    let σC := sarea P Q ptC
    let σB := sarea P Q (ptB b)
    ((0 < σD * σC ∧ σD * σB < 0) ∨ (σD * σB < 0 ∧ 0 < σC * σB) ∨
        (σC * σB < 0 ∧ 0 < σD * σB)) ∧
      (0 < σD * σC ∧ σD * σB < 0 →
        0 < q - s * (q + 1) ∧ 4 * s * q * (1 + b * q) ≤ (q - s * (q + 1)) ^ 2) ∧
      (σD * σB < 0 ∧ 0 < σC * σB →
        0 < q - s * (1 + (1 + b) * q) ∧
          4 * s * q * (1 + b * q) ≤ (q - s * (1 + (1 + b) * q)) ^ 2) ∧
      (σC * σB < 0 ∧ 0 < σD * σB →
        0 < q - s * (2 + b * q) ∧ 4 * s * q * (1 + b * q) ≤ (q - s * (2 + b * q)) ^ 2) := by
  sorry

/-- **Equation (36)** (`TYPE_II:claim-b-le-2/7`). At doubled threshold `7/64`, with
`0 < b ≤ 1/2` and `P, Q` strictly inside both `DCB` and `DCE`: if `D, C` lie on opposite sides
of `PQ`, then `b ≤ 2/7` (`F(1) = (7b-2)(7b-354)/4096 ≥ 0`). `hand/TYPE_II.md`, lines 1189–1211.

Uses: TYPE_II:TwoPointChamberLemma (both orientations, so `B, E` are on the same side),
TYPE_II:claim-PQ-line-table. -/
theorem claim_b_le_two_sevenths {l b : ℝ} {P Q : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2)
    (hl : 0 < l) (hl1 : l < 1)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q])
    (hDC : sarea P Q ptD * sarea P Q ptC < 0) :
    b ≤ 2 / 7 := by
  sorry

end Heilbronn.TypeII
