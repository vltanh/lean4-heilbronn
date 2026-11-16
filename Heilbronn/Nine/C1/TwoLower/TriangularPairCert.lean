module

public import Heilbronn.Nine.C1.TwoLower.ConvexPairCert

/-! # The Bernstein certificate of the C1 top-cap triangular pair

In the reduced parameters `(h, u, v, r)` = `var 0, 1, 2, 3` (`hc = ρ`, `u = hf`,
`v = cd`, `r = -[DFY]`), with `T = 1 - uv/ρ`, `d = vh/ρ` and the expressions `hA`, `U`, `hΔ`
of `ConvexPairCert`: the four polynomials `P₀ = hF₀`, `P₁ = hF₁`, `P₂ = F₂`, `P₃ = F₃`.
On the box `ρ ≤ h ≤ 1`, `s ≤ u, v ≤ ρ`, `3s ≤ r ≤ 4225/5329` a labelled subdivision tree
(51 leaves, depth 18, fixed bisection order `r, v, u, h`) shows that some `-Pᵢ` is positive at
every point.
Used by `C1TopCapTriangularPair.box_some_poly_neg`. -/

@[expose] public section

namespace Heilbronn.Nine.C1TwoLower.TriangularPairCert

open Heilbronn.Cert Heilbronn.Cert.Expr ConvexPairCert

/-- `T = 1 - uv/ρ`. -/
def eT : Expr := 1 - v 1 * v 2 * k (60 / 49)
/-- `d = vh/ρ`. -/
def ed : Expr := v 2 * v 0 * k (60 / 49)
/-- `P₀ = hF₀ = hA·U - s(hA + hU) - hΔ·r`. -/
def eP0 : Expr := ehA * eU - k (8 / 73) * (ehA + v 0 * eU) - ehD * v 3
/-- `P₁ = hF₁ = (h - u)(U - s) - ur`. -/
def eP1 : Expr := (v 0 - v 1) * (eU - k (8 / 73)) - v 1 * v 3
/-- `P₂ = F₂ = {T(1 - d) - dr}(r - s) - s(1 - d)(2r + T)`. -/
def eP2 : Expr := (eT * (1 - ed) - ed * v 3) * (v 3 - k (8 / 73)) -
  k (8 / 73) * (1 - ed) * (k 2 * v 3 + eT)
/-- `P₃ = F₃ = {T(U - s) + (T - h)r}(r - s) - sU(2r + T)`. -/
def eP3 : Expr := (eT * (eU - k (8 / 73)) + (eT - v 0) * v 3) * (v 3 - k (8 / 73)) -
  k (8 / 73) * eU * (k 2 * v 3 + eT)

def es : List (Expr × List ℕ) :=
  [(0 - eP0, [2, 2, 2, 1]), (0 - eP1, [2, 2, 1, 1]), (0 - eP2, [1, 1, 2, 2]),
    (0 - eP3, [1, 2, 2, 2])]

def box : List (ℚ × ℚ) :=
  [(49 / 60, 1), (8 / 73, 49 / 60), (8 / 73, 49 / 60), (24 / 73, 4225 / 5329)]

def t0 : LTree :=
  .split 3 (9481/21316) (.split 2 (5017/17520) (.split 1 (5017/17520) (.split 0 (69/80) (.leaf 0 573) (.leaf 0 404)) (.leaf 0 179)) (.split 1 (5017/17520) (.split 0 (69/80) (.split 3 (16489/42632) (.split 2 (4377/11680) (.split 1 (6937/35040) (.split 0 (403/480) (.split 3 (30505/85264) (.split 2 (4633/14016) (.leaf 0 938) (.leaf 3 4513)) (.leaf 0 1105)) (.leaf 0 2747)) (.leaf 0 164)) (.split 1 (6937/35040) (.split 0 (403/480) (.split 3 (30505/85264) (.leaf 3 904) (.split 2 (29359/70080) (.split 1 (10777/70080) (.split 0 (53/64) (.split 3 (63483/170528) (.split 2 (55621/140160) (.leaf 0 2057) (.leaf 2 1673)) (.leaf 0 1609)) (.leaf 0 3056)) (.leaf 0 217)) (.leaf 2 443))) (.leaf 3 1438)) (.leaf 0 156))) (.leaf 0 1668)) (.leaf 0 624)) (.leaf 0 101))) (.split 2 (5017/17520) (.leaf 0 384) (.leaf 0 414))

theorem t0_check : ltreeCheck es t0
    [(49/60, 109/120), (8/73, 4057/8760), (8/73, 4057/8760), (24/73, 5977/10658)] = true := by
  decide +kernel

def t1 : LTree :=
  .split 3 (9481/21316) (.split 2 (5017/17520) (.split 1 (5017/17520) (.leaf 0 6257) (.split 0 (229/240) (.leaf 0 1043) (.split 3 (16489/42632) (.split 2 (6937/35040) (.split 1 (4377/11680) (.leaf 3 563) (.split 0 (469/480) (.split 3 (30505/85264) (.leaf 3 256) (.leaf 0 1370)) (.leaf 3 500))) (.leaf 3 115)) (.leaf 0 1362)))) (.leaf 0 217)) (.split 2 (5017/17520) (.split 1 (5017/17520) (.leaf 0 291) (.leaf 0 350)) (.leaf 0 90))

theorem t1_check : ltreeCheck es t1
    [(109/120, 1), (8/73, 4057/8760), (8/73, 4057/8760), (24/73, 5977/10658)] = true := by
  decide +kernel

def t2 : LTree :=
  .leaf 0 76

theorem t2_check : ltreeCheck es t2
    [(49/60, 109/120), (4057/8760, 49/60), (8/73, 4057/8760), (24/73, 5977/10658)] = true := by
  decide +kernel

def t3 : LTree :=
  .split 3 (9481/21316) (.split 2 (5017/17520) (.split 1 (3737/5840) (.split 0 (229/240) (.leaf 0 399) (.split 3 (16489/42632) (.split 2 (6937/35040) (.split 1 (3865/7008) (.split 0 (469/480) (.split 3 (30505/85264) (.leaf 3 641) (.leaf 0 1235)) (.split 3 (30505/85264) (.leaf 3 211) (.leaf 1 241))) (.leaf 1 70)) (.leaf 1 89)) (.leaf 1 74))) (.leaf 1 20)) (.leaf 1 38)) (.leaf 1 29)

theorem t3_check : ltreeCheck es t3
    [(109/120, 1), (4057/8760, 49/60), (8/73, 4057/8760), (24/73, 5977/10658)] = true := by
  decide +kernel

def t4 : LTree :=
  .leaf 2 642

theorem t4_check : ltreeCheck es t4
    [(49/60, 1), (8/73, 49/60), (4057/8760, 49/60), (24/73, 5977/10658)] = true := by
  decide +kernel

def t5 : LTree :=
  .leaf 0 426

theorem t5_check : ltreeCheck es t5
    [(49/60, 109/120), (8/73, 4057/8760), (8/73, 4057/8760), (5977/10658, 4225/5329)] = true := by
  decide +kernel

def t6 : LTree :=
  .leaf 0 308

theorem t6_check : ltreeCheck es t6
    [(109/120, 1), (8/73, 4057/8760), (8/73, 4057/8760), (5977/10658, 4225/5329)] = true := by
  decide +kernel

def t7 : LTree :=
  .leaf 1 13

theorem t7_check : ltreeCheck es t7
    [(49/60, 1), (4057/8760, 49/60), (8/73, 4057/8760), (5977/10658, 4225/5329)] = true := by
  decide +kernel

def t8 : LTree :=
  .leaf 2 90

theorem t8_check : ltreeCheck es t8
    [(49/60, 1), (8/73, 49/60), (4057/8760, 49/60), (5977/10658, 4225/5329)] = true := by
  decide +kernel

def tree : LTree :=
  (.split 3 (5977/10658) (.split 2 (4057/8760) (.split 1 (4057/8760) (.split 0 (109/120) t0 t1) (.split 0 (109/120) t2 t3)) t4) (.split 2 (4057/8760) (.split 1 (4057/8760) (.split 0 (109/120) t5 t6) t7) t8))

theorem check : ltreeCheck es tree box = true :=
  (ltreeCheck_split (ltreeCheck_split (ltreeCheck_split (ltreeCheck_split t0_check t1_check) (ltreeCheck_split t2_check t3_check)) t4_check) (ltreeCheck_split (ltreeCheck_split (ltreeCheck_split t5_check t6_check) t7_check) t8_check))

end Heilbronn.Nine.C1TwoLower.TriangularPairCert
