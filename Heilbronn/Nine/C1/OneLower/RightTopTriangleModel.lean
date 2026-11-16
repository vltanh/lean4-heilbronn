module

public import Heilbronn.Nine.C1.OneLower.ModelB

/-! # The certificate model of the right top triangle

Computable definitions for the certificate package of `C1OneLowerRightTopTriangle.rightTopTriangle_cell_false`. The nine
points are the heptagon `O, C, R, D, X, F, H` (indices `0, …, 6`) and the interior points `L, P`
(`7, 8`), in the variables `h, c, d, f, r_x, r_y, x_x, x_y, ℓ_x, ℓ_y, p_x, p_y`
(`v 0, …, v 11`). The atoms of the cell `(i, j)` (lower word `i`, cap word `j`) are the 28 affine
factors, the cost `(1-d)(1-f) - 3s`, and the strengthened costs of
`hullTable 7 [lowerW i, capW j]`. The certificates are checked in
`Heilbronn.Nine.C1.OneLower.RightTopTriangleTrees`.
-/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerRightTopTriangle.Model

open Cert Cert.Expr Cover C1OneLowerB

/-- The nine points `O, C, R, D, X, F, H, L, P` as expressions. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, 0)
  | 1 => (v 1, 0)
  | 2 => (v 4, v 5)
  | 3 => (1, v 2)
  | 4 => (v 6, v 7)
  | 5 => (v 3, 1)
  | 6 => (0, v 0)
  | 7 => (v 8, v 9)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- The 28 affine factors, from the region bounds
`C1OneLowerRightTopTriangle.params`–`inner_bounds`. -/
def factors : List Expr :=
  [v 0 - k (216 / 511), 1 - v 0, v 1 - k (24 / 73), k (7 / 9) - v 1, v 2 - k (32 / 73),
    k (41 / 65) - v 2, v 3 - k (8 / 73), k (17 / 41) - v 3, v 0 - v 2, v 1 - v 3, v 2 - v 3,
    v 4 - v 1 - k (520 / 2993), 1 - v 4, v 5 - k (72 / 511), v 2 - v 5 - k (8 / 49),
    v 6 - v 3 - k (24 / 41), v 7 - v 2 - k (24 / 65), 1 - v 6, 1 - v 7, v 8 - k (8 / 73),
    v 9 - k (72 / 511), v 1 - v 8 - k (16 / 73), v 0 - v 9 - k (144 / 511),
    1 - v 8 - v 9 - k (8 / 73), v 10 - v 3 - k (8 / 41), v 11 - v 2 - k (8 / 65),
    k (65 / 73) - v 10, k (65 / 73) - v 11]

/-- The cost `(1-d)(1-f) - 3s`. -/
def q0 : Expr := (1 - v 2) * (1 - v 3) - k (24 / 73)

/-- The five lower words of the heptagon (radial words of a point inside `OCH`). -/
def lowerW : List (List ℕ) :=
  [[1, 5, 5, 4, 3, 2, 1], [2, 5, 4, 4, 3, 2, 1], [3, 5, 4, 3, 3, 2, 1], [4, 5, 4, 3, 2, 2, 1],
    [5, 5, 4, 3, 2, 1, 1]]

/-- The five cap words of `P ∈ DXF`. -/
def capW : List (List ℕ) :=
  [[3, 2, 1, 1, 5, 5, 4], [3, 2, 2, 1, 4, 5, 4], [3, 3, 2, 1, 3, 5, 4], [4, 3, 2, 1, 1, 5, 5],
    [4, 3, 2, 1, 2, 5, 4]]

/-- The cover package of the cell `(i, j)`. -/
def spec (i j : ℕ) : Spec SFact C1ZeroLower.Model.Split :=
  tableSpec pt Package.bnd [7, 8] (factors ++ [q0]) []
    (hullTable 7 [lowerW.getD i [], capW.getD j []]) C1ZeroLower.Model.triBranches

end Heilbronn.Nine.C1OneLowerRightTopTriangle.Model
