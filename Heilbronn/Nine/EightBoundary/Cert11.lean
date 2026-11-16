module

public import Heilbronn.Nine.EightBoundary.CertCommon

/-! # Theorem 11 by a polynomial certificate

`EIGHT_BOUNDARY.md` Theorem 11 (class R2): `O` in the central region, in `ADE ∩ HDE`, in the corner
cap `BCDE` and outside the cap `DEFG`. Instead of the scalar argument of §9 (upper and lower
bounds for `1 - x`, four ranges of `R`), a degree-3 certificate on the eleven oriented
`O`-triangles `HDO, EAO, EBO, CDO, CFO, DGO, ADO, EHO, GBO, BCO, FGO`, the budgets, the gap
bounds of Lemma 7 and the overlaps `g ≤ c`, `b ≤ f` of Lemma 10 shows that not all of these
doubled areas can be at least `7/64` (540 terms, `data/nine/eight/thm11_terms.txt`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.EightBoundary.CertModel

open Heilbronn.Cert Heilbronn.Cert.Expr

/-- The oriented `O`-triangles of Theorem 11 and the overlaps `c - g`, `f - b`. -/
def case11 : List Expr :=
  [esarea pH pD pO - s, esarea pE pA pO - s, esarea pE pB pO - s, esarea pC pD pO - s,
   esarea pC pF pO - s, esarea pD pG pO - s, esarea pA pD pO - s, esarea pE pH pO - s,
   esarea pG pB pO - s, esarea pB pC pO - s, esarea pF pG pO - s, v 2 - v 6, v 5 - v 1]

theorem check11 :
    check (orders ++ budgets ++ gaps ++ case11) (term_rows% "../Data/eight/thm11_terms.txt") =
      true := by
  decide +kernel

/-- Theorem 11, the certificate: the eleven oriented doubled areas cannot all be `≥ 7/64`. -/
theorem cert11 {a b c d e f g h x y : ℝ} (H : Base a b c d e f g h x y)
    (oHD : 7 / 64 ≤ sarea (0, h) (1, d) (x, y)) (oEA : 7 / 64 ≤ sarea (1, e) (0, a) (x, y))
    (oEB : 7 / 64 ≤ sarea (1, e) (b, 0) (x, y)) (oCD : 7 / 64 ≤ sarea (c, 0) (1, d) (x, y))
    (oCF : 7 / 64 ≤ sarea (c, 0) (f, 1) (x, y)) (oDG : 7 / 64 ≤ sarea (1, d) (g, 1) (x, y))
    (oAD : 7 / 64 ≤ sarea (0, a) (1, d) (x, y)) (oEH : 7 / 64 ≤ sarea (1, e) (0, h) (x, y))
    (oGB : 7 / 64 ≤ sarea (g, 1) (b, 0) (x, y)) (oBC : 7 / 64 ≤ sarea (b, 0) (c, 0) (x, y))
    (oFG : 7 / 64 ≤ sarea (f, 1) (g, 1) (x, y)) (hcg : g ≤ c) (hbf : b ≤ f) : False := by
  refine check_sound check11 _ H.zeta_mem ?_
  intro t ht
  rw [List.mem_append] at ht
  rcases ht with ht | ht
  · exact H.atoms t ht
  · revert t
    simp only [case11, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_v, eval_minus, eval_zero, eval_one, eval_k, eval_esarea, zeta]
    simp only [Heilbronn.sarea] at oHD oEA oEB oCD oCF oDG oAD oEH oGB oBC oFG ⊢
    push_cast
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

end Heilbronn.Nine.EightBoundary.CertModel
