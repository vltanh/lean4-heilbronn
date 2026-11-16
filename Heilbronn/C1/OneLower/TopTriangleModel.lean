module

public import Heilbronn.C1.OneLower.ModelB

/-! # The certificate model of `hand/C1_ONE_LOWER_TOP_TRIANGLE.md`

Computable mirror of `hand/check_c1_one_lower_top_triangle.py`. The nine points are the hexagon
`O, C, D, X, F, H` (indices `0, …, 5`) and the interior points `L, P, Q` (`6, 7, 8`), in the
variables `h, c, d, f, g, k, ℓ_x, ℓ_y, p_x, p_y, q_x, q_y` (`v 0, …, v 11`). The atoms of the
cell `(i, j, ℓ)` (lower word `i`, cap word `j`, upper word `ℓ`) are the 28 affine factors of
Section 3 and the strengthened costs of `hullTable 6 [lowerW i, capW j, upperW ℓ]` and the split
signs. The certificates are exported by `scripts/c1_one_lower_b/top_triangle.py` and checked in
`Heilbronn.C1.OneLower.TopTriangleTrees`.
-/

@[expose] public section

namespace Heilbronn.C1OneLowerTopTriangle.Model

open Cert Cert.Expr Cover C1OneLowerB

/-- The nine points `O, C, D, X, F, H, L, P, Q` as expressions. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, 0)
  | 1 => (v 1, 0)
  | 2 => (1, v 2)
  | 3 => (v 4, v 5)
  | 4 => (v 3, 1)
  | 5 => (0, v 0)
  | 6 => (v 6, v 7)
  | 7 => (v 8, v 9)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- The 28 affine factors of Section 3, in order. -/
def factors : List Expr :=
  [v 0 - k (24 / 73), v 1 - k (24 / 73), 1 - v 0, 1 - v 1, v 2 - k (8 / 73), k (41 / 65) - v 2,
    v 3 - k (8 / 73), k (3 / 7) - v 3, v 0 - v 2, v 1 - v 3, v 2 - v 3, v 4 - v 3 - k (24 / 73),
    v 5 - v 2 - k (24 / 73), 1 - v 4, 1 - v 5, v 6 - k (8 / 73), v 7 - k (8 / 73),
    v 1 - v 6 - k (16 / 73), v 0 - v 7 - k (16 / 73), 1 - v 6 - v 7 - k (8 / 73),
    v 8 - v 3 - k (8 / 65), k (65 / 73) - v 8, v 9 - v 2 - k (8 / 65), k (65 / 73) - v 9,
    v 10 - k (8 / 73), k (65 / 73) - v 10, v 11 - k (8 / 73), k (65 / 73) - v 11]

/-- The four lower words of the hexagon (inside `OCH`). -/
def lowerW : List (List ℕ) :=
  [[1, 4, 4, 3, 2, 1], [2, 4, 3, 3, 2, 1], [3, 4, 3, 2, 2, 1], [4, 4, 3, 2, 1, 1]]

/-- The four cap words of `P ∈ DXF`. -/
def capW : List (List ℕ) :=
  [[2, 1, 1, 4, 4, 3], [2, 2, 1, 3, 4, 3], [3, 2, 1, 1, 4, 4], [3, 2, 1, 2, 4, 3]]

/-- The 18 upper words (inside `HCDF`). -/
def upperW : List (List ℕ) :=
  [[1, 1, 4, 4, 3, 2], [1, 2, 4, 3, 3, 2], [1, 3, 4, 3, 2, 2], [2, 1, 2, 4, 3, 3],
    [2, 1, 3, 4, 3, 2], [2, 2, 2, 3, 3, 3], [2, 2, 3, 3, 3, 2], [2, 3, 2, 3, 2, 3],
    [2, 3, 3, 3, 2, 2], [3, 2, 2, 1, 3, 4], [3, 2, 2, 2, 3, 3], [3, 2, 3, 2, 3, 2],
    [3, 3, 2, 1, 2, 4], [3, 3, 2, 2, 2, 3], [3, 3, 3, 2, 2, 2], [4, 3, 2, 1, 1, 4],
    [4, 3, 2, 2, 1, 3], [4, 3, 3, 2, 1, 2]]

/-- The cover package of the cell `(i, j, ℓ)`. -/
def spec (i j l : ℕ) : Spec SFact C1ZeroLower.Model.Split :=
  tableSpec factors [] pt [6, 7, 8]
    (hullTable 6 [lowerW.getD i [], capW.getD j [], upperW.getD l []])

end Heilbronn.C1OneLowerTopTriangle.Model
