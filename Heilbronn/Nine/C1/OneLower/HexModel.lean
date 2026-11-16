module

public import Heilbronn.Nine.C1.OneLower.CoverCommon

/-! # The certificate model of the one-lower single-cap hexagons

Computable cover packages for a hexagonal hull with one cap point: the top cap (`side = false`)
and the left cap (`side = true`). The nine points are the hull hexagon and
the interior points `L, P, Q` (indices `6, 7, 8`), in the variables `h, c, d, f, g, k, ℓ_x, ℓ_y,
p_x, p_y, q_x, q_y` (`0, …, 11`, `X = (g, k)` the cap point):
* top cap: `O, C, D, X, F, H, L, P, Q` (`ptTop`);
* left cap: `O, C, D, F, X, H, L, P, Q` (`ptSide`).

A case is a triple `(i, j, ℓ)` of word indices of `L, P, Q` (a lower word and two upper words of
the hexagon). Its initial table `baseSigns` (the signs known from the words): hull triples positive,
two hull vertices and an interior point from the word (`hsign`), and an interior pair at a hull
vertex from the ray order (`C1OneLowerTopCap.sarea_pos_of_hullWord_lt`) or, for `P, Q`, the upper-pair rule
(`C1OneLowerTopCap.upperPairSign_sound`; `upperPair`, equal to
`C1OneLowerTopCap.upperPairSign` on the words). The atoms (`spec`): the 28 affine factors, the
cost `W - 8s` (`wCost`), and the strengthened triangle costs of the table (and of the split signs
along the tree path).
-/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerHex.Model

open Cert Cert.Expr Cover C1ZeroLower.Model C1OneLower

/-- Top cap: `O, C, D, X, F, H, L, P, Q`. -/
def ptTop : ℕ → Expr × Expr
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

/-- Left cap: `O, C, D, F, X, H, L, P, Q`. -/
def ptSide : ℕ → Expr × Expr
  | 0 => (0, 0)
  | 1 => (v 1, 0)
  | 2 => (1, v 2)
  | 3 => (v 3, 1)
  | 4 => (v 4, v 5)
  | 5 => (0, v 0)
  | 6 => (v 6, v 7)
  | 7 => (v 8, v 9)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- The points of a package. -/
def pt (side : Bool) : ℕ → Expr × Expr := if side then ptSide else ptTop

/-- The hexagon index of `F`. -/
def iF (side : Bool) : ℕ := if side then 3 else 4

/-- The four lower words. -/
def lowerW : List (List ℕ) :=
  [[1, 4, 4, 3, 2, 1], [2, 4, 3, 3, 2, 1], [3, 4, 3, 2, 2, 1], [4, 4, 3, 2, 1, 1]]

/-- The 18 upper words of the top-cap hexagon. -/
def upperTop : List (List ℕ) :=
  [[1, 1, 4, 4, 3, 2], [1, 2, 4, 3, 3, 2], [1, 3, 4, 3, 2, 2], [2, 1, 2, 4, 3, 3],
    [2, 1, 3, 4, 3, 2], [2, 2, 2, 3, 3, 3], [2, 2, 3, 3, 3, 2], [2, 3, 2, 3, 2, 3],
    [2, 3, 3, 3, 2, 2], [3, 2, 2, 1, 3, 4], [3, 2, 2, 2, 3, 3], [3, 2, 3, 2, 3, 2],
    [3, 3, 2, 1, 2, 4], [3, 3, 2, 2, 2, 3], [3, 3, 3, 2, 2, 2], [4, 3, 2, 1, 1, 4],
    [4, 3, 2, 2, 1, 3], [4, 3, 3, 2, 1, 2]]

/-- The 18 upper words of the side-cap hexagon. -/
def upperSide : List (List ℕ) :=
  [[1, 1, 4, 4, 3, 2], [1, 2, 4, 3, 3, 2], [1, 3, 4, 3, 2, 2], [2, 1, 1, 4, 4, 3],
    [2, 1, 2, 4, 3, 3], [2, 1, 3, 4, 3, 2], [2, 2, 1, 3, 4, 3], [2, 2, 2, 3, 3, 3],
    [2, 2, 3, 3, 3, 2], [2, 3, 2, 3, 2, 3], [2, 3, 3, 3, 2, 2], [3, 2, 1, 2, 4, 3],
    [3, 2, 2, 2, 3, 3], [3, 2, 3, 2, 3, 2], [3, 3, 2, 2, 2, 3], [3, 3, 3, 2, 2, 2],
    [4, 3, 2, 2, 1, 3], [4, 3, 3, 2, 1, 2]]

/-- The upper words of a package. -/
def upperW (side : Bool) : List (List ℕ) := if side then upperSide else upperTop

/-- The sign of `[V_i V_j Z]` read off the radial word `w` of `Z`: `(j - i) mod 6 ≤ w[i]`. -/
def hsign (w : List ℕ) (i j : ℕ) : Bool := ((j + 6 - i) % 6).ble (w.getD i 0)

/-- The words of `L, P, Q` in the case `(i, j, ℓ)`. -/
def caseWords (side : Bool) (i j l : ℕ) : List (List ℕ) :=
  [lowerW.getD i [], (upperW side).getD j [], (upperW side).getD l []]

/-- The upper-pair rule (`C1OneLowerTopCap.upperPairSign` with `H, C, D, F` at hexagon
indices `5, 1, 2, iF`). -/
def upperPair (side : Bool) (p q : List ℕ) (v : ℕ) : Option Bool :=
  let pHD := hsign p 5 2
  let qHD := hsign q 5 2
  let pCF := hsign p 1 (iF side)
  let qCF := hsign q 1 (iF side)
  if pHD = qHD ∧ pCF = qCF then none
  else if v ≠ 5 ∧ v ≠ 1 ∧ v ≠ 2 ∧ v ≠ iF side then none
  else if pHD ≠ qHD ∧ pCF ≠ qCF then
    some (if v = 5 then !pHD else if v = 2 then pHD else if v = 1 then !pCF else pCF)
  else if pHD = qHD then
    let iso := if pHD then iF side else 1
    let sd := if pHD then pCF else !pCF
    some (if v = iso then sd else !sd)
  else
    let iso := if pCF then 5 else 2
    let sd := if pCF then !pHD else pHD
    some (if v = iso then sd else !sd)

/-- The initial sign of `[V_v Z_a Z_b]` (`a < b` among `L, P, Q`): the ray order, or the
upper-pair rule for `P, Q`. -/
def pairSign (side : Bool) (ws : List (List ℕ)) (a b v : ℕ) : Option Bool :=
  let wa := ws.getD a []
  let wb := ws.getD b []
  if wa.getD v 0 ≠ wb.getD v 0 then some (decide (wa.getD v 0 < wb.getD v 0))
  else if a = 1 ∧ b = 2 then upperPair side wa wb v
  else none

/-- The interior pairs `(L, P), (L, Q), (P, Q)`. -/
def pairs3 : List (ℕ × ℕ) := [(0, 1), (0, 2), (1, 2)]

/-- The initial signed triangles of a case. -/
def baseSigns (side : Bool) (ws : List (List ℕ)) : List SFact :=
  (lexTriples 9).filterMap (fun t =>
    if t.2.2 < 6 then some (t, true)
    else if t.2.1 < 6 then some (t, hsign (ws.getD (t.2.2 - 6) []) t.1 t.2.1)
    else none) ++
  pairs3.flatMap fun p => (List.range 6).filterMap fun v =>
    (pairSign side ws p.1 p.2 v).map fun sg => ((v, p.1 + 6, p.2 + 6), sg)

/-- The 28 affine factors of the top-cap package: the bounds on `h, c, d, f, g, k` and on the
interior points `L, P, Q`. -/
def factorsTop : List Expr :=
  [v 0 - k (24 / 73), v 1 - k (24 / 73), 1 - v 0, 1 - v 1, v 2 - k (8 / 73), k (57 / 65) - v 2,
    v 3 - k (8 / 73), k (67 / 100) - v 3, v 0 - v 2, v 1 - v 3, v 2 - v 3,
    v 4 - v 3 - k (8 / 73), v 5 - v 2 - k (8 / 73), 1 - v 4, 1 - v 5,
    v 6 - k (8 / 73), v 7 - k (8 / 73), v 1 - v 6 - k (16 / 73), v 0 - v 7 - k (16 / 73),
    1 - v 6 - v 7 - k (8 / 73),
    v 8 - k (8 / 73), k (65 / 73) - v 8, v 9 - k (8 / 73), k (65 / 73) - v 9,
    v 10 - k (8 / 73), k (65 / 73) - v 10, v 11 - k (8 / 73), k (65 / 73) - v 11]

/-- The 28 affine factors of the side-cap package: the bounds on `h, c, d, f, g, k` and on the
interior points `L, P, Q`. -/
def factorsSide : List Expr :=
  [v 0 - k (24 / 73), v 1 - k (32 / 73), k (6 / 7) - v 0, 1 - v 1, v 2 - k (8 / 73),
    v 0 - v 2, v 3 - k (32 / 73), k (65 / 73) - v 3, v 1 - v 3, v 4 - k (28 / 219),
    v 3 - v 4 - k (8 / 49), v 5 - v 0 - k (8 / 65), 1 - v 5, k (57 / 73) - v 4,
    v 5 - k (32 / 73),
    v 6 - k (28 / 219), v 7 - k (8 / 73), v 1 - v 6 - k (56 / 219), v 0 - v 7 - k (16 / 73),
    1 - v 6 - v 7 - k (8 / 73),
    v 8 - k (28 / 219), k (65 / 73) - v 8, v 9 - k (8 / 73), k (65 / 73) - v 9,
    v 10 - k (28 / 219), k (65 / 73) - v 10, v 11 - k (8 / 73), k (65 / 73) - v 11]

/-- The factors of a package. -/
def factors (side : Bool) : List Expr := if side then factorsSide else factorsTop

/-- The cost `W - 8s` of the upper quadrilateral. -/
def wCost : Expr := 1 - (v 0 - v 2) * (v 1 - v 3) - k (64 / 73)

/-- The cover package of a case. -/
def spec (side : Bool) (i j l : ℕ) : Spec SFact Split :=
  tableSpec (pt side) Package.bnd [6, 7, 8] (factors side ++ [wCost]) []
    (baseSigns side (caseWords side i j l)) triBranches

end Heilbronn.Nine.C1OneLowerHex.Model
