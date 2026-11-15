module

public import Heilbronn.TypeII.TypeII

/-! # A universal six-point parameter inequality (`hand/TYPE_II_COMPLETION.md`, §7)

`TYPE_II_COMPLETION.md` lines 706–790. Six points `D, C, E, B, L, P` with `L` inside `DBE` and
above `CE`, `P` central and above `CE` (the positions of §6.3), `0 < b < 1` (no `b ≤ 1/2`).

* `Zroot s q = (q + √(q² - 8sq + 4s²))/2`, the larger root of `z² - qz + 2sq - s²`;
* `lemma7` (**Lemma 7**) at a general positive doubled threshold `s` (the manuscript states it at
  `s = 7/64`; `C1_TOP_CAP_OF_SPLIT.md` lines 60–99 uses it at the threshold `s/c`, and every step
  of the proof is valid for a general `s > 0`): `q ≥ Ks` and `s(q+1)/(bq) ≤ z ≤ Z(q)`,
  `z = 1 - L_y`, (24);
* `eq25` ((25)): its three consequences at `s = 7/64`.

The steps of §§6.3–6.4 that the proof of Lemma 7 reuses ("the positions used in Section 6.3",
"the derivation (18)–(19)", "the weighted identity in Section 6.3") are stated first, at a general
threshold: `claim_LP_identities` (the weighted identity and `d_C - d_E = h_L - h_P`), `eq15` (the
three possible line signs of `LP`) and `eq19`. Here `L = (l, v)`, `P = (p, t)`, and
`d_X = det(L - X, P - X) = sarea X L P`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeIICompletion

open Heilbronn.TypeII

/-- `Z(q) = (q + √(q² - 8sq + 4s²))/2`, `TYPE_II_COMPLETION.md` §6.4 and (24). -/
def Zroot (s q : ℝ) : ℝ := (q + Real.sqrt (q ^ 2 - 8 * s * q + 4 * s ^ 2)) / 2

/-- **Claim** (`TYPE_II_COMPLETION:claim-LP-identities`, made up; §6.3). For all points
`L = (l,v)`, `P = (p,t)` and `E = (0,λ)`, `q = 1 - λ`, with `d_X = [XLP]`,
`h_L = [ECL] = v - λ - ql`, `h_P = [ECP] = t - λ - qp`:
`d_D = p(1-v) - l(1-t)`, the weighted identity `(1-v) d_E + (v-λ) d_D = ql(t-v)`, and
`d_C - d_E = h_L - h_P`. `hand/TYPE_II_COMPLETION.md`, lines 510–567. -/
theorem claim_LP_identities (l : ℝ) (L P : Point) :
    sarea ptD L P = P.1 * (1 - L.2) - L.1 * (1 - P.2) ∧
      (1 - L.2) * sarea (ptE l) L P + (L.2 - l) * sarea ptD L P =
        (1 - l) * L.1 * (P.2 - L.2) ∧
      sarea ptC L P - sarea (ptE l) L P = sarea (ptE l) ptC L - sarea (ptE l) ptC P := by
  sorry

/-- **Equation (15)** (`TYPE_II_COMPLETION:eq15`, made up). In the positions of §6.3 (`L`
strictly inside `DBE` and above `CE`, `P` central and above `CE`, `0 < b < 1`, `0 < λ < 1`) with
positive least area of `D, C, E, B, L, P`: `d_D > 0`, and the signs `(d_E, d_C)` of the line `LP`
are one of `(+,-)`, `(-,+)`, `(-,-)` (the three vertices of `DCE` are not on one side of `LP`).
`hand/TYPE_II_COMPLETION.md`, lines 510–525. -/
theorem eq15 {l b : ℝ} {L P : Point} (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l) (hl1 : l < 1)
    (hL : InTriangle L ptD (ptE l) (ptB b)) (hLce : 0 < sarea (ptE l) ptC L)
    (hP : IsCentral b P) (hPce : 0 < sarea (ptE l) ptC P)
    (hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P]) :
    0 < sarea ptD L P ∧
      ((0 < sarea (ptE l) L P ∧ sarea ptC L P < 0) ∨ (sarea (ptE l) L P < 0 ∧ 0 < sarea ptC L P) ∨
        (sarea (ptE l) L P < 0 ∧ sarea ptC L P < 0)) := by
  sorry

/-- **Equation (19)** (`TYPE_II_COMPLETION:eq19`, made up). In the positions of §6.3, at a general
doubled threshold `s > 0` for `D, C, E, B, L, P` and `0 < b < 1`: if `d_E, d_C < 0` (the line `LP`
isolates `D`), then with `q = 1 - λ`, `z = 1 - L_y`: `z² - qz + 2sq - s² ≤ 0` and
`z ≥ s(q+1)/(bq)`; the derivation (18) → `J(l, z) ≤ 0` → (19) uses only `b < 1`.
`hand/TYPE_II_COMPLETION.md`, lines 586–611 and 731–735. -/
theorem eq19 {l b s : ℝ} {L P : Point} (hs : 0 < s) (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l)
    (hl1 : l < 1) (hL : InTriangle L ptD (ptE l) (ptB b)) (hLce : 0 < sarea (ptE l) ptC L)
    (hP : IsCentral b P) (hPce : 0 < sarea (ptE l) ptC P)
    (hmin : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P])
    (hdE : sarea (ptE l) L P < 0) (hdC : sarea ptC L P < 0) :
    (1 - L.2) ^ 2 - (1 - l) * (1 - L.2) + 2 * s * (1 - l) - s ^ 2 ≤ 0 ∧
      s * ((1 - l) + 1) / (b * (1 - l)) ≤ 1 - L.2 := by
  sorry

/-- **Lemma 7** (`TYPE_II_COMPLETION:Lemma7`), at a general doubled threshold `s > 0`. Suppose
`0 < b < 1`, `0 < λ < 1`, `L` strictly inside `DBE` and above `CE`, `P` strictly inside `DCB` and
above `CE`, and every doubled triangle area of `D, C, E, B, L, P` at least `s`. With `q = 1 - λ`
and `z = 1 - L_y`: `q ≥ Ks` and `s(q+1)/(bq) ≤ z ≤ Z(q)` (24). `hand/TYPE_II_COMPLETION.md`,
lines 706–758.

The manuscript fixes `s = 7/64`; its proof uses no numerical value of `s` (the three line signs
(15) of §6.3, (18)–(19) with only `b < 1`, and `s(15s - 2q) < 0` for `q ≥ 8s`), and
`C1_TOP_CAP_OF_SPLIT.md` applies it at `s/c`; hence the threshold is a parameter here.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, TYPE_II_COMPLETION:eq15,
TYPE_II_COMPLETION:claim-LP-identities, TYPE_II_COMPLETION:eq19. -/
theorem lemma7 {l b s : ℝ} {L P : Point} (hs : 0 < s) (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l)
    (hl1 : l < 1) (hL : InTriangle L ptD (ptE l) (ptB b)) (hLce : 0 < sarea (ptE l) ptC L)
    (hP : IsCentral b P) (hPce : 0 < sarea (ptE l) ptC P)
    (hmin : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P]) :
    Ktwo * s ≤ 1 - l ∧ s * ((1 - l) + 1) / (b * (1 - l)) ≤ 1 - L.2 ∧
      1 - L.2 ≤ Zroot s (1 - l) := by
  sorry

/-- **Equation (25)** (`TYPE_II_COMPLETION:eq25`). Three consequences of Lemma 7 at `s = 7/64`:
`b ≤ 2/5 ⇒ q > 89/100`, `b ≤ 3/7 ⇒ q ≥ 7/8`, `b ≤ 9/20 ⇒ q > 27/32`, `q = 1 - λ`.
`hand/TYPE_II_COMPLETION.md`, lines 760–790.

Uses: TYPE_II_COMPLETION:Lemma7, TYPE_II_COMPLETION:Theorem6 (the root comparisons (20)–(21)). -/
theorem eq25 {l b : ℝ} {L P : Point} (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l) (hl1 : l < 1)
    (hL : InTriangle L ptD (ptE l) (ptB b)) (hLce : 0 < sarea (ptE l) ptC L)
    (hP : IsCentral b P) (hPce : 0 < sarea (ptE l) ptC P)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P]) :
    (b ≤ 2 / 5 → 89 / 100 < 1 - l) ∧ (b ≤ 3 / 7 → 7 / 8 ≤ 1 - l) ∧
      (b ≤ 9 / 20 → 27 / 32 < 1 - l) := by
  sorry

end Heilbronn.TypeIICompletion
