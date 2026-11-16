module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.EightBoundary.RadialCatalogue
public import Heilbronn.Nine.EightBoundary.Basic
public import Heilbronn.Nine.EightBoundary.CertR6

/-! # The radial class `R6`

The eight-boundary normal form (`EightBoundary.EightAnchors`, `O` in the open square) with the
radial word of `O` with respect to the octagon `A, …, H` in class `R6`: the representative
`(3,3,3,4,4,4,4,3)` or any square-symmetry image of it. Every such configuration has a triangle of
area `< 7/128 < A₀` (`minTriangleArea_lt_of_inClass_R6`); this is the class `R6` of `EightBoundary.minTriangleArea_le_A₀_of_eight_boundary`.

## Proof

A word of the class is carried to the representative by a square symmetry
(`RadialCatalogue.exists_wordAct_eq`, `RadialCatalogue.transfer`). For the representative
(`r6_core`) seven orientations are read off the word: `[OAD], [ODH], [OGC], [OCF] > 0` and
`[OEA], [OFB], [OBE] > 0`. With the budgets of the boundary triangles, the gap bounds of
`EightBoundary.two_mul_minTriangleArea_le_maxGap` and the overlaps of `EightBoundary.opposite_contacts_overlap`, they are incompatible at
doubled area `7/64`, by the polynomial certificate `CertModel.certR6`
(`Heilbronn/Nine/EightBoundary/CertR6.lean`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.R6Bound

open RadialCatalogue EightBoundary

/-- The representative `(3,3,3,4,4,4,4,3)` of `R6`: not every triangle has area `≥ 7/128`. Seven
orientations are read off the word, and the certificate `CertModel.certR6` concludes. -/
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

/-- Every eight-boundary configuration whose radial word lies in class `R6` (the representative
`(3,3,3,4,4,4,4,3)` or any of its square-symmetry images) has a triangle of area strictly less
than `7/128 < A₀`. -/
theorem minTriangleArea_lt_of_inClass_R6 {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
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
