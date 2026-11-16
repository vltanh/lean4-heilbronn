module

public import Heilbronn.Nine.C1.OneLower.ModelB

/-! # The certificate model of the convex-top one-lower cells

Computable model of the cells of `Heilbronn.Nine.C1.OneLower.ConvexTop`. The nine points are the
heptagon `O, C, D, X, Y, F, H` (indices `0, …, 6`) and the interior points `L, Q` (`7, 8`), in the
variables `h, c, d, f, x_x, x_y, y_x, y_y, ℓ_x, ℓ_y, q_x, q_y` (`v 0, …, v 11`). Mode `false` is
`upper`, mode `true` is `cap`. The atoms of the cell `(m, i, j)` (lower word `i`, `Q`-word `j`)
are the 30 affine factors of the mode, the cost `(1-d)(1-f) - ω` and the strengthened costs
of `hullTable 7 [lowerW i, qW m j]` and the split signs. The certificates are read from
`Heilbronn/Nine/Data/c1_one_lower_ct/` and checked in `Heilbronn.Nine.C1.OneLower.ConvexTopTrees`.
-/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerConvexTop.Model

open Cert Cert.Expr Cover C1OneLowerB

/-- The nine points `O, C, D, X, Y, F, H, L, Q` as expressions. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, 0)
  | 1 => (v 1, 0)
  | 2 => (1, v 2)
  | 3 => (v 4, v 5)
  | 4 => (v 6, v 7)
  | 5 => (v 3, 1)
  | 6 => (0, v 0)
  | 7 => (v 8, v 9)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- The 30 affine factors of the mode, nonnegative on its cells (with the mode's bounds
`d ≤ 33/65, f ≤ 17/50` or `d ≤ 204/715, f ≤ 13/64` from `C1OneLowerConvexTop.params`). -/
def factors (m : Bool) : List Expr :=
  [v 0 - k (24 / 73), v 1 - k (24 / 73), 1 - v 0, 1 - v 1, v 2 - k (8 / 73),
    k (if m then 204 / 715 else 33 / 65) - v 2, v 3 - k (8 / 73),
    k (if m then 13 / 64 else 17 / 50) - v 3, v 0 - v 2, v 1 - v 3, v 2 - v 3,
    v 4 - v 3 - k (8 / 65), v 5 - v 2 - k (8 / 65), 1 - v 4, 1 - v 5,
    v 6 - v 3 - k (8 / 65), v 7 - v 2 - k (8 / 65), 1 - v 6, 1 - v 7,
    v 4 - v 6 - k (8 / 73), v 7 - v 5 - k (8 / 73), v 8 - k (8 / 73), v 9 - k (8 / 73),
    v 1 - v 8 - k (16 / 73), v 0 - v 9 - k (16 / 73), 1 - v 8 - v 9 - k (8 / 73)] ++
  (if m then [v 10 - v 3 - k (8 / 65), v 11 - v 2 - k (8 / 65), k (65 / 73) - v 10,
      k (65 / 73) - v 11]
    else [v 10 - k (8 / 73), v 11 - k (8 / 73), k (65 / 73) - v 10, k (65 / 73) - v 11])

/-- The cost `(1-d)(1-f) - ω` (`ω = 4s` in mode `upper`, `7/11` in mode `cap`). -/
def q0 (m : Bool) : Expr := (1 - v 2) * (1 - v 3) - k (if m then 7 / 11 else 32 / 73)

/-- The five radial words of a point inside `OCH`. -/
def lowerW : List (List ℕ) :=
  [[1, 5, 5, 4, 3, 2, 1], [2, 5, 4, 4, 3, 2, 1], [3, 5, 4, 3, 3, 2, 1], [4, 5, 4, 3, 2, 2, 1],
    [5, 5, 4, 3, 2, 1, 1]]

/-- The 33 `Q`-words of mode `upper`. -/
def upperW : List (List ℕ) :=
  [[1, 1, 5, 5, 4, 3, 2], [1, 2, 5, 4, 4, 3, 2], [1, 3, 5, 4, 3, 3, 2], [1, 4, 5, 4, 3, 2, 2],
    [2, 1, 3, 5, 4, 3, 3], [2, 1, 4, 5, 4, 3, 2], [2, 2, 3, 4, 4, 3, 3], [2, 2, 4, 4, 4, 3, 2],
    [2, 3, 3, 4, 3, 3, 3], [2, 3, 4, 4, 3, 3, 2], [2, 4, 3, 4, 3, 2, 3], [2, 4, 4, 4, 3, 2, 2],
    [3, 2, 3, 2, 4, 3, 4], [3, 2, 3, 3, 4, 3, 3], [3, 2, 4, 3, 4, 3, 2], [3, 3, 3, 2, 3, 3, 4],
    [3, 3, 3, 3, 3, 3, 3], [3, 3, 4, 3, 3, 3, 2], [3, 4, 3, 2, 3, 2, 4], [3, 4, 3, 3, 3, 2, 3],
    [3, 4, 4, 3, 3, 2, 2], [4, 3, 3, 2, 1, 3, 5], [4, 3, 3, 2, 2, 3, 4], [4, 3, 3, 3, 2, 3, 3],
    [4, 3, 4, 3, 2, 3, 2], [4, 4, 3, 2, 1, 2, 5], [4, 4, 3, 2, 2, 2, 4], [4, 4, 3, 3, 2, 2, 3],
    [4, 4, 4, 3, 2, 2, 2], [5, 4, 3, 2, 1, 1, 5], [5, 4, 3, 2, 2, 1, 4], [5, 4, 3, 3, 2, 1, 3],
    [5, 4, 4, 3, 2, 1, 2]]

/-- The 10 `Q`-words of mode `cap`. -/
def capW : List (List ℕ) :=
  [[2, 1, 2, 5, 4, 4, 3], [2, 2, 2, 4, 4, 4, 3], [2, 3, 2, 4, 3, 4, 3], [3, 2, 2, 2, 4, 4, 4],
    [3, 2, 2, 3, 4, 4, 3], [3, 3, 2, 2, 3, 4, 4], [3, 3, 2, 3, 3, 4, 3], [4, 3, 2, 2, 1, 4, 5],
    [4, 3, 2, 2, 2, 4, 4], [4, 3, 2, 3, 2, 4, 3]]

/-- The `Q`-words of the mode. -/
def qW (m : Bool) : List (List ℕ) := if m then capW else upperW

/-- The cover package of the cell `(m, i, j)`. -/
def spec (m : Bool) (i j : ℕ) : Spec SFact C1ZeroLower.Model.Split :=
  tableSpec pt Package.bnd [7, 8] (factors m ++ [q0 m]) []
    (hullTable 7 [lowerW.getD i [], (qW m).getD j []]) C1ZeroLower.Model.triBranches

end Heilbronn.Nine.C1OneLowerConvexTop.Model
