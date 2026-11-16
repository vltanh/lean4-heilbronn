module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.EightBoundary.RadialCatalogue
public import Heilbronn.Nine.EightBoundary.Basic
public import Heilbronn.Nine.EightBoundary.CertR6

/-! # A complete hand exclusion of radial class R6 (`docs/proof/nine/R6_BOUND.md`)

**Role.** Primary-route component: the R6 row of `EIGHT_BOUNDARY:Theorem13` (`EIGHT_BOUNDARY.md`
line 1033) and of the class table of `RADIAL_CATALOGUE.md`.

**Setting.** The eight-boundary normal form (`EightBoundary.EightAnchors`, `O` in the open square)
with the radial word of `O` with respect to the octagon `A, …, H` in class R6, representative
`(3,3,3,4,4,4,4,3)`, or any square-symmetry image of it (any word of the R6 orbit). The proof
fixes `s = 7/64`, `m = 7/50`, `q = 43/192 = 1/3 - s`, and uses only the boundary triangles
`ABH, AGH, GHF, GFE, ABC, DEF` and the radial signs `ADO, DHO, GOC, OCF > 0`, `AE, BF < 0`,
`BE > 0` of the representative; it bounds a four-variable domain `𝒟` (8) by monotonicity and
shows `max_𝒟 Φ = G(q,q) = s - 605/36864 < s`.

**Results.**
* `mainTheorem` (`R6_BOUND:Theorem`): every configuration in R6 has a triangle of area
  `< 7/128 < A₀`.

FLAG: the manuscript states the bound as "at most `7/128`" (line 15); its proof (lines 27–345)
assumes every area is at least `7/128` and derives a contradiction, which is the strict bound
stated here.

**Proof.** A word of the class is carried to the representative by a square symmetry
(`RadialCatalogue.exists_wordAct_eq`, `RadialCatalogue.transfer`); for the representative
(`r6_core`) the seven orientations of `R6_BOUND.md` are read off the word and the
four-variable monotonicity argument of §§2–5 is replaced by a polynomial certificate
(`Heilbronn/Nine/EightBoundary/CertR6.lean`): at doubled area `7/64` these orientations, the
budgets, the gap bounds of Lemma 7 and the overlaps of Lemma 10 are incompatible.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.R6Bound

open RadialCatalogue EightBoundary

/-- The representative `(3,3,3,4,4,4,4,3)` of R6: not every triangle has area `≥ 7/128`. The
seven orientations of `R6_BOUND.md` are read off the word, and the certificate
`CertModel.certR6` replaces the monotonicity argument of §§2–5. -/
theorem r6_core {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O) (hk : IsRadialWord (octagon a b c d e f g h) O (rep .R6))
    (hm : 7 / 128 ≤ minTriangleArea (eightConfig a b c d e f g h O)) : False := by
  obtain ⟨x, y⟩ := O
  obtain ⟨H, hcg, hbf, hae, hdh⟩ := base_of_min hA hO hm
  exact CertModel.certR6 H (le_sarea_of_min hm 8 0 3 (hk.pos_of 0 3 (by decide) (by decide)).le)
    (le_sarea_of_min hm 8 3 7 (hk.pos_of 3 7 (by decide) (by decide)).le)
    (le_sarea_of_min hm 8 6 2 (hk.pos_of 6 2 (by decide) (by decide)).le)
    (le_sarea_of_min hm 8 2 5 (hk.pos_of 2 5 (by decide) (by decide)).le)
    (le_sarea_of_min hm 8 4 0 (hk.pos_of 4 0 (by decide) (by decide)).le)
    (le_sarea_of_min hm 8 5 1 (hk.pos_of 5 1 (by decide) (by decide)).le)
    (le_sarea_of_min hm 8 1 4 (hk.pos_of 1 4 (by decide) (by decide)).le)
    hcg.le hbf.le hae.le hdh.le

/-- **Theorem** (`R6_BOUND:Theorem`). Every eight-boundary configuration whose radial word lies in
class R6 (the representative `(3,3,3,4,4,4,4,3)` or any of its square-symmetry images) has a
triangle of area strictly less than `7/128 < A₀`.
`docs/proof/nine/R6_BOUND.md`, lines 14–345.
Uses: RADIAL_CATALOGUE:claim-symmetry-action, RADIAL_CATALOGUE:claim-symmetry-relabel. -/
theorem mainTheorem {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O) {w : Word} (hw : IsRadialWord (octagon a b c d e f g h) O w)
    (hc : InClass .R6 w) :
    minTriangleArea (eightConfig a b c d e f g h O) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have hpos : 0 < minTriangleArea (eightConfig a b c d e f g h O) :=
    lt_of_lt_of_le (by norm_num) hcon
  have hnd := raysNondegenerate_of_min_pos hpos
  obtain ⟨refl, r, hwr⟩ := exists_wordAct_eq .R6 w (rep .R6) hc ⟨false, 0, by decide⟩
  obtain ⟨a', b', c', d', e', f', g', h', hA', hO', hoct, -, hmin⟩ := transfer refl r hA hO
  have hk' := isRadialWord_transfer hoct hnd hw
  rw [hwr] at hk'
  rw [← hmin] at hcon
  exact r6_core hA' hO' hk' hcon

end Heilbronn.Nine.R6Bound
