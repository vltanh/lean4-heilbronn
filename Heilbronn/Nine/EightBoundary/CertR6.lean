module

public import Heilbronn.Nine.EightBoundary.CertCommon

/-! # The class `R6` by a polynomial certificate

The representative `(3,3,3,4,4,4,4,3)` of class `R6`: a degree-3 certificate on seven
orientations read off the word (`[OAD], [ODH], [OGC], [OCF], [OEA], [OFB], [OBE] > 0`), the
budgets, the gap bounds of `EightBoundary.two_mul_minTriangleArea_le_maxGap` and the four overlaps of `EightBoundary.opposite_contacts_overlap`
shows that these doubled areas cannot all be at least `7/64`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.EightBoundary.CertModel

open Heilbronn.Cert Heilbronn.Cert.Expr

/-- The seven oriented `O`-triangles of the `R6` representative and the four overlaps. -/
def caseR6 : List Expr :=
  [esarea pO pA pD - s, esarea pO pD pH - s, esarea pO pG pC - s, esarea pO pC pF - s,
   esarea pO pE pA - s, esarea pO pF pB - s, esarea pO pB pE - s, v 2 - v 6, v 5 - v 1,
   v 4 - v 0, v 7 - v 3]

theorem checkR6 :
    check (orders ++ budgets ++ gaps ++ caseR6) (term_rows% "../Data/eight/r6_terms.txt") =
      true := by
  decide +kernel

/-- The certificate for class `R6`: the seven oriented doubled areas cannot all be `≥ 7/64`. -/
theorem certR6 {a b c d e f g h x y : ℝ} (H : Base a b c d e f g h x y)
    (oAD : 7 / 64 ≤ sarea (x, y) (0, a) (1, d)) (oDH : 7 / 64 ≤ sarea (x, y) (1, d) (0, h))
    (oGC : 7 / 64 ≤ sarea (x, y) (g, 1) (c, 0)) (oCF : 7 / 64 ≤ sarea (x, y) (c, 0) (f, 1))
    (oEA : 7 / 64 ≤ sarea (x, y) (1, e) (0, a)) (oFB : 7 / 64 ≤ sarea (x, y) (f, 1) (b, 0))
    (oBE : 7 / 64 ≤ sarea (x, y) (b, 0) (1, e))
    (hcg : g ≤ c) (hbf : b ≤ f) (hae : a ≤ e) (hdh : d ≤ h) : False := by
  refine check_sound checkR6 _ H.zeta_mem ?_
  intro t ht
  rw [List.mem_append] at ht
  rcases ht with ht | ht
  · exact H.atoms t ht
  · revert t
    simp only [caseR6, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_v, eval_minus, eval_zero, eval_one, eval_k, eval_esarea, zeta]
    simp only [Heilbronn.sarea] at oAD oDH oGC oCF oEA oFB oBE ⊢
    push_cast
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

end Heilbronn.Nine.EightBoundary.CertModel
