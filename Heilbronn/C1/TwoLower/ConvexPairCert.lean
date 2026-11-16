module

public import Heilbronn.C1.TwoLower.Bern

/-! # The Bernstein certificate of `hand/C1_TOP_CAP_CONVEX_PAIR.md` §4

In the reduced parameters `(h, u, v)` = `var 0, 1, 2` of (9) (`hc = ρ = 49/60`, `u = hf`,
`v = cd`): `hA`, `U`, `hΔ` and the polynomials `P = hB` (degree `(2,2,2)`) and
`Q = h²G` (degree `(4,4,4)`). On the box (10) `ρ ≤ h ≤ 113/125`, `s ≤ u, v ≤ ρ`, a labelled
subdivision tree (36 leaves, depth 9, found by `scripts/c1_two_lower/convex_pair.py`) shows that
`-P > 0` or `-Q > 0` at every point. -/

@[expose] public section

namespace Heilbronn.C1TwoLower.ConvexPairCert

open Heilbronn.Cert Heilbronn.Cert.Expr

/-- `hA = h - ρ + hv - huv/ρ`. -/
def ehA : Expr := v 0 - k (49 / 60) + v 0 * v 2 - v 0 * v 1 * v 2 * k (60 / 49)
/-- `U = 1 - h + u - uv/ρ`. -/
def eU : Expr := 1 - v 0 + v 1 - v 1 * v 2 * k (60 / 49)
/-- `hΔ = huv/ρ - h + h² + ρ - ρh`. -/
def ehD : Expr := v 0 * v 1 * v 2 * k (60 / 49) - v 0 + v 0 * v 0 + k (49 / 60) - k (49 / 60) * v 0
/-- `P = hB = hA·U - s(hA + hU)`. -/
def ehB : Expr := ehA * eU - k (8 / 73) * (ehA + v 0 * eU)
/-- `Q = h²G = P² - 4s·hA·U·hΔ`. -/
def eQ : Expr := ehB * ehB - k (32 / 73) * ehA * eU * ehD

def es : List (Expr × List ℕ) := [(0 - ehB, [2, 2, 2]), (0 - eQ, [4, 4, 4])]

def box : List (ℚ × ℚ) := [(49 / 60, 113 / 125), (8 / 73, 49 / 60), (8 / 73, 49 / 60)]

def t0 : LTree :=
  .split 0 (1677/2000) (.split 1 (5017/17520) (.split 2 (6937/35040) (.split 0 (9931/12000) (.split 1 (6937/35040) (.leaf 0 10002) (.leaf 0 1992)) (.leaf 1 197462)) (.leaf 1 3006)) (.split 2 (6937/35040) (.split 0 (9931/12000) (.leaf 0 402) (.split 1 (4377/11680) (.leaf 1 23407) (.leaf 0 292))) (.leaf 1 985))) (.leaf 1 39885)

theorem t0_check : ltreeCheck es t0
    [(49/60, 2581/3000), (8/73, 4057/8760), (8/73, 5017/17520)] = true := by
  decide +kernel

def t1 : LTree :=
  .leaf 1 1660

theorem t1_check : ltreeCheck es t1
    [(49/60, 2581/3000), (8/73, 4057/8760), (5017/17520, 4057/8760)] = true := by
  decide +kernel

def t2 : LTree :=
  .split 0 (1677/2000) (.split 1 (3737/5840) (.split 2 (6937/35040) (.leaf 0 108) (.split 0 (9931/12000) (.leaf 0 609) (.leaf 1 1923))) (.leaf 0 54)) (.split 1 (3737/5840) (.split 2 (6937/35040) (.leaf 0 656) (.leaf 1 791)) (.leaf 0 110))

theorem t2_check : ltreeCheck es t2
    [(49/60, 2581/3000), (4057/8760, 49/60), (8/73, 5017/17520)] = true := by
  decide +kernel

def t3 : LTree :=
  .split 0 (1677/2000) (.split 1 (3737/5840) (.leaf 1 624) (.leaf 0 183)) (.split 1 (3737/5840) (.leaf 1 323) (.split 2 (4377/11680) (.leaf 0 321) (.split 0 (10193/12000) (.leaf 0 433) (.leaf 1 895))))

theorem t3_check : ltreeCheck es t3
    [(49/60, 2581/3000), (4057/8760, 49/60), (5017/17520, 4057/8760)] = true := by
  decide +kernel

def t4 : LTree :=
  .leaf 1 23402

theorem t4_check : ltreeCheck es t4
    [(2581/3000, 113/125), (8/73, 4057/8760), (8/73, 4057/8760)] = true := by
  decide +kernel

def t5 : LTree :=
  .split 0 (5293/6000) (.split 1 (3737/5840) (.leaf 1 1860) (.leaf 0 1576)) (.leaf 1 976)

theorem t5_check : ltreeCheck es t5
    [(2581/3000, 113/125), (4057/8760, 49/60), (8/73, 5017/17520)] = true := by
  decide +kernel

def t6 : LTree :=
  .leaf 1 632

theorem t6_check : ltreeCheck es t6
    [(2581/3000, 113/125), (4057/8760, 49/60), (5017/17520, 4057/8760)] = true := by
  decide +kernel

def t7 : LTree :=
  .leaf 1 762

theorem t7_check : ltreeCheck es t7
    [(49/60, 2581/3000), (8/73, 4057/8760), (4057/8760, 49/60)] = true := by
  decide +kernel

def t8 : LTree :=
  .split 0 (1677/2000) (.split 1 (3737/5840) (.leaf 1 211) (.leaf 0 863)) (.leaf 1 2401)

theorem t8_check : ltreeCheck es t8
    [(49/60, 2581/3000), (4057/8760, 49/60), (4057/8760, 3737/5840)] = true := by
  decide +kernel

def t9 : LTree :=
  .split 0 (1677/2000) (.split 1 (3737/5840) (.leaf 1 166) (.leaf 0 772)) (.leaf 1 1156)

theorem t9_check : ltreeCheck es t9
    [(49/60, 2581/3000), (4057/8760, 49/60), (3737/5840, 49/60)] = true := by
  decide +kernel

def t10 : LTree :=
  .leaf 1 741

theorem t10_check : ltreeCheck es t10
    [(2581/3000, 113/125), (8/73, 49/60), (4057/8760, 49/60)] = true := by
  decide +kernel

def tree : LTree :=
  (.split 2 (4057/8760) (.split 0 (2581/3000) (.split 1 (4057/8760) (.split 2 (5017/17520) t0 t1) (.split 2 (5017/17520) t2 t3)) (.split 1 (4057/8760) t4 (.split 2 (5017/17520) t5 t6))) (.split 0 (2581/3000) (.split 1 (4057/8760) t7 (.split 2 (3737/5840) t8 t9)) t10))

theorem check : ltreeCheck es tree box = true :=
  (ltreeCheck_split (ltreeCheck_split (ltreeCheck_split (ltreeCheck_split t0_check t1_check) (ltreeCheck_split t2_check t3_check)) (ltreeCheck_split t4_check (ltreeCheck_split t5_check t6_check))) (ltreeCheck_split (ltreeCheck_split t7_check (ltreeCheck_split t8_check t9_check)) t10_check))

end Heilbronn.C1TwoLower.ConvexPairCert
