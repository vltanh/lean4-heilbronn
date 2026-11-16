module

public import Heilbronn.Common.CertNotation
public import Heilbronn.Common.DataReader
public import Heilbronn.Nine.EightBoundary.RadialCatalogue

/-! # The 28 exterior certificates (`docs/proof/nine/seven_boundary_exterior_certificates.json`)

The certificate package of `SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md` §§2–3 as kernel-checked
`Cert.check` instances. Variables `z = (a, h, b, c, d, e, f, g, k, x, y)` (`var 0, …, var 10`).
The atoms of a word `w` are the 23 affine factors `l₀, …, l₂₂` (`factors`), then the 84 oriented
costs `q_t = ε_t [V_i V_j V_l] - s` over the triples `i < j < l` of `{0, …, 8}` in lexicographic
order (`triples`), with vertices `A, B, C, D, E, X, F, H, P` and the sign `ε = +1` when `l < 8` or
`j - i ≤ w i`, else `-1` (`qAtom`). The weights are those of the JSON file (`w/4096`), rescaled
to Lean's integer polynomials by `scripts/nine/seven_a/export_exterior.py` (data in
`data/nine/seven_exterior/`). `atoms_false` is the soundness statement used by
`SevenBoundaryExteriorCompletion.claim_certificates`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundaryExteriorCerts

open Cert Cert.Expr RadialCatalogue

/-- The doubled threshold `s = 7/64`. -/
abbrev s : Cert.Expr := k (7 / 64)

/-- The 23 affine factors `l₀, …, l₂₂` (§2, table). -/
def factors : List Cert.Expr :=
  [v 0 - k (5 / 32), v 1 - v 0, v 8 - v 1, 1 - v 8, v 4 - k (5 / 32), v 5 - v 4,
    v 8 - v 5 - k (1 / 8), v 2 - k (3 / 20), v 6 - v 2, v 3 - v 6, k (27 / 32) - v 3,
    v 7 - v 6 - k (9 / 40), k (27 / 32) - v 7, k (1 / 2) - v 6, v 9 - v 2 - k (7 / 64),
    k (3 / 4) - v 9, v 10 - k (17 / 64), k (49 / 64) - v 10, k (7 / 8) - v 1, k (27 / 32) - v 5,
    v 1 - k (33 / 64), v 5 - k (33 / 64), v 8 - v 10 - k (7 / 64)]

/-- The vertices `A, B, C, D, E, X, F, H, P` as expressions. -/
def pt : Fin 9 → Cert.Expr × Cert.Expr :=
  ![(0, v 0), (v 2, 0), (v 3, 0), (1, v 4), (1, v 5), (v 7, v 8), (v 6, 1), (0, v 1), (v 9, v 10)]

/-- The 84 triples `i < j < l` in lexicographic order. -/
def triples : List (Fin 9 × Fin 9 × Fin 9) :=
  (List.finRange 9).flatMap fun i => (List.finRange 9).flatMap fun j =>
    (List.finRange 9).filterMap fun l => if i < j ∧ j < l then some (i, j, l) else none

/-- The sign rule (11): positive unless the triangle contains `P` and `j - i > w i`. -/
def sgn (w : Word) (t : Fin 9 × Fin 9 × Fin 9) : Bool :=
  decide ((t.2.2 : ℕ) < 8) || decide ((t.2.1 : ℕ) - t.1 ≤ w (Fin.ofNat 8 t.1))

/-- The oriented cost `q_t = ε_t [V_i V_j V_l] - s`. -/
def qAtom (w : Word) (t : Fin 9 × Fin 9 × Fin 9) : Cert.Expr :=
  if sgn w t then esarea (pt t.1) (pt t.2.1) (pt t.2.2) - s
  else k (-1) * esarea (pt t.1) (pt t.2.1) (pt t.2.2) - s

/-- The atoms of the certificate for the word `w`. -/
def atoms (w : Word) : List Cert.Expr := factors ++ triples.map (qAtom w)

theorem mem_triples {t : Fin 9 × Fin 9 × Fin 9} (ht : t ∈ triples) :
    t.1 < t.2.1 ∧ t.2.1 < t.2.2 := by
  simp only [triples, List.mem_flatMap, List.mem_finRange, List.mem_filterMap, true_and] at ht
  obtain ⟨i, j, l, hl⟩ := ht
  split_ifs at hl with h
  · cases hl; exact h

/-- The value of an oriented cost. -/
theorem qAtom_eval (w : Word) (t : Fin 9 × Fin 9 × Fin 9) (z : ℕ → ℝ) :
    (qAtom w t).eval z = (if sgn w t then 1 else -1) *
      sarea ((pt t.1).1.eval z, (pt t.1).2.eval z) ((pt t.2.1).1.eval z, (pt t.2.1).2.eval z)
        ((pt t.2.2).1.eval z, (pt t.2.2).2.eval z) - 7 / 64 := by
  unfold qAtom
  split_ifs <;> simp [eval_esarea]

/-- **Soundness.** A successful check excludes every point of the cube at which the factors and
the oriented costs are nonnegative. -/
theorem atoms_false {w : Word} {ts : List (ℤ × List ℕ)} (hc : check (atoms w) ts = true)
    (z : ℕ → ℝ) (hz : ∀ i, 0 ≤ z i ∧ z i ≤ 1) (hf : ∀ e ∈ factors, 0 ≤ e.eval z)
    (hq : ∀ t ∈ triples, 0 ≤ (qAtom w t).eval z) : False := by
  refine check_sound hc z hz fun e he => ?_
  simp only [atoms, List.mem_append, List.mem_map] at he
  rcases he with he | ⟨t, ht, rfl⟩
  · exact hf e he
  · exact hq t ht

/-! ### The 28 kernel checks -/

theorem check_1_2 :
    check (atoms (ofBlocks 1 2)) (term_rows% "../../../data/nine/seven_exterior/cert_1_2.txt") = true := by
  decide +kernel

theorem check_1_4 :
    check (atoms (ofBlocks 1 4)) (term_rows% "../../../data/nine/seven_exterior/cert_1_4.txt") = true := by
  decide +kernel

theorem check_1_5 :
    check (atoms (ofBlocks 1 5)) (term_rows% "../../../data/nine/seven_exterior/cert_1_5.txt") = true := by
  decide +kernel

theorem check_2_1 :
    check (atoms (ofBlocks 2 1)) (term_rows% "../../../data/nine/seven_exterior/cert_2_1.txt") = true := by
  decide +kernel

theorem check_2_2 :
    check (atoms (ofBlocks 2 2)) (term_rows% "../../../data/nine/seven_exterior/cert_2_2.txt") = true := by
  decide +kernel

theorem check_2_3 :
    check (atoms (ofBlocks 2 3)) (term_rows% "../../../data/nine/seven_exterior/cert_2_3.txt") = true := by
  decide +kernel

theorem check_2_4 :
    check (atoms (ofBlocks 2 4)) (term_rows% "../../../data/nine/seven_exterior/cert_2_4.txt") = true := by
  decide +kernel

theorem check_2_5 :
    check (atoms (ofBlocks 2 5)) (term_rows% "../../../data/nine/seven_exterior/cert_2_5.txt") = true := by
  decide +kernel

theorem check_2_6 :
    check (atoms (ofBlocks 2 6)) (term_rows% "../../../data/nine/seven_exterior/cert_2_6.txt") = true := by
  decide +kernel

theorem check_3_1 :
    check (atoms (ofBlocks 3 1)) (term_rows% "../../../data/nine/seven_exterior/cert_3_1.txt") = true := by
  decide +kernel

theorem check_3_2 :
    check (atoms (ofBlocks 3 2)) (term_rows% "../../../data/nine/seven_exterior/cert_3_2.txt") = true := by
  decide +kernel

theorem check_3_3 :
    check (atoms (ofBlocks 3 3)) (term_rows% "../../../data/nine/seven_exterior/cert_3_3.txt") = true := by
  decide +kernel

theorem check_3_4 :
    check (atoms (ofBlocks 3 4)) (term_rows% "../../../data/nine/seven_exterior/cert_3_4.txt") = true := by
  decide +kernel

theorem check_3_5 :
    check (atoms (ofBlocks 3 5)) (term_rows% "../../../data/nine/seven_exterior/cert_3_5.txt") = true := by
  decide +kernel

theorem check_4_2 :
    check (atoms (ofBlocks 4 2)) (term_rows% "../../../data/nine/seven_exterior/cert_4_2.txt") = true := by
  decide +kernel

theorem check_4_3 :
    check (atoms (ofBlocks 4 3)) (term_rows% "../../../data/nine/seven_exterior/cert_4_3.txt") = true := by
  decide +kernel

theorem check_4_4 :
    check (atoms (ofBlocks 4 4)) (term_rows% "../../../data/nine/seven_exterior/cert_4_4.txt") = true := by
  decide +kernel

theorem check_4_5 :
    check (atoms (ofBlocks 4 5)) (term_rows% "../../../data/nine/seven_exterior/cert_4_5.txt") = true := by
  decide +kernel

theorem check_4_6 :
    check (atoms (ofBlocks 4 6)) (term_rows% "../../../data/nine/seven_exterior/cert_4_6.txt") = true := by
  decide +kernel

theorem check_5_1 :
    check (atoms (ofBlocks 5 1)) (term_rows% "../../../data/nine/seven_exterior/cert_5_1.txt") = true := by
  decide +kernel

theorem check_5_2 :
    check (atoms (ofBlocks 5 2)) (term_rows% "../../../data/nine/seven_exterior/cert_5_2.txt") = true := by
  decide +kernel

theorem check_5_3 :
    check (atoms (ofBlocks 5 3)) (term_rows% "../../../data/nine/seven_exterior/cert_5_3.txt") = true := by
  decide +kernel

theorem check_5_4 :
    check (atoms (ofBlocks 5 4)) (term_rows% "../../../data/nine/seven_exterior/cert_5_4.txt") = true := by
  decide +kernel

theorem check_5_5 :
    check (atoms (ofBlocks 5 5)) (term_rows% "../../../data/nine/seven_exterior/cert_5_5.txt") = true := by
  decide +kernel

theorem check_5_6 :
    check (atoms (ofBlocks 5 6)) (term_rows% "../../../data/nine/seven_exterior/cert_5_6.txt") = true := by
  decide +kernel

theorem check_6_2 :
    check (atoms (ofBlocks 6 2)) (term_rows% "../../../data/nine/seven_exterior/cert_6_2.txt") = true := by
  decide +kernel

theorem check_6_3 :
    check (atoms (ofBlocks 6 3)) (term_rows% "../../../data/nine/seven_exterior/cert_6_3.txt") = true := by
  decide +kernel

theorem check_6_5 :
    check (atoms (ofBlocks 6 5)) (term_rows% "../../../data/nine/seven_exterior/cert_6_5.txt") = true := by
  decide +kernel

end Heilbronn.Nine.SevenBoundaryExteriorCerts
