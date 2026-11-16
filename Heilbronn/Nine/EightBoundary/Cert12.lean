module

public import Heilbronn.Nine.EightBoundary.CertCommon

/-! # Theorem 12 by a polynomial certificate

`EIGHT_BOUNDARY.md` Theorem 12 (class R5): `O` in the central region, in `ADE ∩ HDE` and
`BCF ∩ CFG`, outside both corner caps `BCDE`, `DEFG`. Instead of the scalar argument of §10
(the weighted cancellation (32) and the two ranges of `R`), a degree-3 certificate on the
fourteen oriented `O`-triangles `ADO, EHO, CFO, GBO, EAO, HDO, FBO, GCO, BEO, DGO, BCO, FGO, DEO,
HAO`, the budgets, the gap bounds of Lemma 7 and the four overlaps of Lemma 10 shows that not all
of these doubled areas can be at least `7/64` (`data/nine/eight/thm12_terms.txt`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.EightBoundary.CertModel

open Heilbronn.Cert Heilbronn.Cert.Expr

/-- The oriented `O`-triangles of Theorem 12 and the overlaps `c - g`, `f - b`, `e - a`,
`h - d`. -/
def case12 : List Expr :=
  [esarea pA pD pO - s, esarea pE pH pO - s, esarea pC pF pO - s, esarea pG pB pO - s,
   esarea pE pA pO - s, esarea pH pD pO - s, esarea pF pB pO - s, esarea pG pC pO - s,
   esarea pB pE pO - s, esarea pD pG pO - s, esarea pB pC pO - s, esarea pF pG pO - s,
   esarea pD pE pO - s, esarea pH pA pO - s, v 2 - v 6, v 5 - v 1, v 4 - v 0, v 7 - v 3]

theorem check12 :
    check (orders ++ budgets ++ gaps ++ case12) (term_rows% "../../../data/nine/eight/thm12_terms.txt") =
      true := by
  decide +kernel

/-- Theorem 12, the certificate: the fourteen oriented doubled areas cannot all be `≥ 7/64`. -/
theorem cert12 {a b c d e f g h x y : ℝ} (H : Base a b c d e f g h x y)
    (oAD : 7 / 64 ≤ sarea (0, a) (1, d) (x, y)) (oEH : 7 / 64 ≤ sarea (1, e) (0, h) (x, y))
    (oCF : 7 / 64 ≤ sarea (c, 0) (f, 1) (x, y)) (_oGB : 7 / 64 ≤ sarea (g, 1) (b, 0) (x, y))
    (oEA : 7 / 64 ≤ sarea (1, e) (0, a) (x, y)) (oHD : 7 / 64 ≤ sarea (0, h) (1, d) (x, y))
    (oFB : 7 / 64 ≤ sarea (f, 1) (b, 0) (x, y)) (oGC : 7 / 64 ≤ sarea (g, 1) (c, 0) (x, y))
    (oBE : 7 / 64 ≤ sarea (b, 0) (1, e) (x, y)) (oDG : 7 / 64 ≤ sarea (1, d) (g, 1) (x, y))
    (oBC : 7 / 64 ≤ sarea (b, 0) (c, 0) (x, y)) (oFG : 7 / 64 ≤ sarea (f, 1) (g, 1) (x, y))
    (oDE : 7 / 64 ≤ sarea (1, d) (1, e) (x, y)) (oHA : 7 / 64 ≤ sarea (0, h) (0, a) (x, y))
    (hcg : g ≤ c) (hbf : b ≤ f) (hae : a ≤ e) (hdh : d ≤ h) : False := by
  refine check_sound check12 _ H.zeta_mem ?_
  intro t ht
  rw [List.mem_append] at ht
  rcases ht with ht | ht
  · exact H.atoms t ht
  · revert t
    simp only [case12, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_v, eval_minus, eval_zero, eval_one, eval_k, eval_esarea, zeta]
    simp only [Heilbronn.sarea] at oAD oEH oCF _oGB oEA oHD oFB oGC oBE oDG oBC oFG oDE oHA ⊢
    push_cast
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

end Heilbronn.Nine.EightBoundary.CertModel
