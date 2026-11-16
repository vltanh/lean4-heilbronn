module

public import Heilbronn.Nine.C1.OneLower.CoverCommon

/-! # The certificate model of the eight-vertex one-lower hulls (`docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`)

Computable mirror of `docs/proof/nine/check_c1_one_lower_eight_hull.py`. The nine points are the octagon
`V₀, …, V₇` of the mode and `V₈ = L`, in the variables `h, c, d, f, r_x, r_y, x_x, x_y, y_x, y_y,
ℓ_x, ℓ_y` (`0, …, 11`):
* mode `false` (`one_each`): `O, C, R, D, X, F, Y, H, L` (`ptOne`);
* mode `true` (`two_top`): `O, C, R, D, X, Y, F, H, L` (`ptTwo`).

The atoms of a mode and word are the ordered affine factors (8) or (16) (`factorsOne`,
`factorsTwo`) and the 84 costs (19): the table `table w` of all lexicographic triples (hull
triples positive, `(i, j, L)` by the word) with its strengthened costs (`L` the only free point).
The certificates are exported by `scripts/nine/c1_one_lower/eight_hull.py` into
`data/nine/c1_one_lower_eight_hull/` and checked in `Heilbronn.Nine.C1.OneLower.EightHullCerts`.
-/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerEightHull.Model

open Cert Cert.Expr Cover C1ZeroLower.Model C1OneLower

/-- Mode `one_each`: `O, C, R, D, X, F, Y, H, L`. -/
def ptOne : ℕ → Expr × Expr
  | 0 => (0, 0)
  | 1 => (v 1, 0)
  | 2 => (v 4, v 5)
  | 3 => (1, v 2)
  | 4 => (v 6, v 7)
  | 5 => (v 3, 1)
  | 6 => (v 8, v 9)
  | 7 => (0, v 0)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- Mode `two_top`: `O, C, R, D, X, Y, F, H, L`. -/
def ptTwo : ℕ → Expr × Expr
  | 0 => (0, 0)
  | 1 => (v 1, 0)
  | 2 => (v 4, v 5)
  | 3 => (1, v 2)
  | 4 => (v 6, v 7)
  | 5 => (v 8, v 9)
  | 6 => (v 3, 1)
  | 7 => (0, v 0)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- The ordered affine factors (8) of `one_each`. -/
def factorsOne : List Expr :=
  [v 0 - k (32 / 73), k (6 / 7) - v 0, v 1 - k (32 / 73), k (6 / 7) - v 1, v 2 - k (32 / 73),
    v 0 - v 2, v 3 - k (32 / 73), v 1 - v 3, v 2 - v 3,
    v 4 - v 1 - k (28 / 219), 1 - v 4, v 5 - k (28 / 219), v 2 - v 5 - k (8 / 41),
    v 6 - v 3 - k (8 / 41), v 7 - v 2 - k (8 / 41), 1 - v 6, 1 - v 7,
    v 8 - k (28 / 219), v 3 - v 8 - k (8 / 41), v 9 - v 0 - k (28 / 219), 1 - v 9,
    v 10 - k (28 / 219), v 11 - k (28 / 219), v 1 - v 10 - k (56 / 219),
    v 0 - v 11 - k (56 / 219), 1 - v 10 - v 11 - k (8 / 73)]

/-- The ordered affine factors (16) of `two_top`. -/
def factorsTwo : List Expr :=
  [v 0 - k (384 / 803), 1 - v 0, v 1 - k (24 / 73), k (11 / 16) - v 1, v 2 - k (32 / 73),
    k (33 / 65) - v 2, v 3 - k (8 / 73), k (17 / 50) - v 3, v 0 - v 2, v 1 - v 3,
    v 4 - v 1 - k (520 / 2409), 1 - v 4, v 5 - k (128 / 803), v 2 - v 5 - k (8 / 49),
    v 6 - v 3 - k (8 / 41), 1 - v 6, v 7 - v 2 - k (8 / 65), 1 - v 7,
    v 8 - v 3 - k (8 / 41), 1 - v 8, v 9 - v 2 - k (8 / 65), 1 - v 9,
    v 6 - v 8 - k (8 / 73), v 9 - v 7 - k (8 / 73), v 10 - k (8 / 73), v 11 - k (128 / 803),
    v 1 - v 10 - k (16 / 73), v 0 - v 11 - k (256 / 803), 1 - v 10 - v 11 - k (8 / 73)]

/-- The six octagon words (18). -/
def octWords : List (List ℕ) :=
  [[1, 6, 6, 5, 4, 3, 2, 1], [2, 6, 5, 5, 4, 3, 2, 1], [3, 6, 5, 4, 4, 3, 2, 1],
    [4, 6, 5, 4, 3, 3, 2, 1], [5, 6, 5, 4, 3, 2, 2, 1], [6, 6, 5, 4, 3, 2, 1, 1]]

/-- The checker's `positive(word, i, j)`: `(j - i) mod 8 ≤ wᵢ`. -/
def positive (w : List ℕ) (i j : ℕ) : Bool := ((j + 8 - i) % 8).ble (w.getD i 0)

/-- The table of a word: every lexicographic triple, hull triples positive, `(i, j, L)` by the
word. -/
def table (w : List ℕ) : List SFact :=
  lexTriples.map fun t => (t, if t.2.2 < 8 then true else positive w t.1 t.2.1)

/-- The points of a mode. -/
def pt (m : Bool) : ℕ → Expr × Expr := if m then ptTwo else ptOne

/-- The factors of a mode. -/
def factors (m : Bool) : List Expr := if m then factorsTwo else factorsOne

/-- The cover package of a mode and word (no splits). -/
def spec (m : Bool) (w : List ℕ) : Spec SFact Split := tableSpec (factors m) [] (pt m) [8] (table w)

end Heilbronn.Nine.C1OneLowerEightHull.Model
