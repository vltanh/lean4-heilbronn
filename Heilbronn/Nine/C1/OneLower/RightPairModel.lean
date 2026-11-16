module

public import Heilbronn.Nine.C1.OneLower.CoverCommon

/-! # The certificate model of the one-lower right pair

Computable definitions for the certificate package of `C1OneLowerRightPair.rightPairCase_false`. The nine
points are those of the zero-lower model (`C1ZeroLower.Model.pt`: `O, C, D, F, H` and the free
points `X, Y, L, Q` with indices `5, …, 8`, variables `h, c, d, f, x, y` of `X, Y, L, Q`). A case
is `(top, li, qi)`: `L` has the lower word `wordL li`, `Q` the upper word `wordU qi`
(`top = false`, upper row) or the top word (`top = true`); `X, Y` have the right word.

* `baseSigns ws`: the initial signed triangles: anchor triples, two anchors and a free point
  (from its word), an anchor and two free points (the radial rule, and for the equal-word pair
  `X, Y` the signs of `C1OneLowerRightPair.XY_anchor_signs`);
* the atoms (`spec`): the affine factors (`factors`), the quadratic costs (`qcosts`), the
  strengthened triangle costs, and the cubic cost `dc(1-c) - s` (`cubic`).
-/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerRightPair.Model

open Cert Cert.Expr Cover C1ZeroLower.Model C1OneLower

/-- The right word `(1, 0, 4, 3, 2)`. -/
def wR : List ℕ := [1, 0, 4, 3, 2]

/-- The top word `(2, 1, 0, 4, 3)`. -/
def wT : List ℕ := [2, 1, 0, 4, 3]

/-- The two lower words above `OD`. -/
def wL : List (List ℕ) := [[2, 3, 2, 2, 1], [3, 3, 2, 1, 1]]

/-- The three upper words in `HCD` above `OD`. -/
def wU : List (List ℕ) := [[2, 1, 2, 3, 2], [2, 2, 2, 2, 2], [3, 2, 2, 1, 2]]

/-- The words of `X, Y, L, Q` in the case `(top, li, qi)`. -/
def caseWords (top : Bool) (li qi : ℕ) : List (List ℕ) :=
  [wR, wR, wL.getD li [], if top then wT else wU.getD qi []]

/-- The sign of `[VᵢVⱼZ]` for a point `Z` with five-anchor word `w`: `(j - i) mod 5 ≤ w[i]`. -/
def lsign (w : List ℕ) (i j : ℕ) : Bool := ((j + 5 - i) % 5).ble (w.getD i 0)

/-- The sign of an increasing triple with at least two anchors. -/
def anchorSign (ws : List (List ℕ)) (t : ℕ × ℕ × ℕ) : Option Bool :=
  if t.2.2 < 5 then some true
  else if t.2.1 < 5 then some (lsign (ws.getD (t.2.2 - 5) []) t.1 t.2.1)
  else none

/-- The initial sign of `[V_v Z_a Z_b]` (`a < b`): the radial rule, or for `X, Y` the signs
`[OXY] > 0`, `[CXY] > 0`, `[DXY] < 0`. -/
def pairSign (ws : List (List ℕ)) (a b v : ℕ) : Option Bool :=
  let wa := ws.getD a []
  let wb := ws.getD b []
  if wa.getD v 0 ≠ wb.getD v 0 then some (decide (wa.getD v 0 < wb.getD v 0))
  else if a = 0 ∧ b = 1 then
    (if v = 0 then some true else if v = 1 then some true else if v = 2 then some false else none)
  else none

/-- The initial signed triangles of a case with words `ws`. -/
def baseSigns (ws : List (List ℕ)) : List SFact :=
  (lexTriples 9).filterMap (fun t => (anchorSign ws t).map fun sg => (t, sg)) ++
  freePairs.flatMap fun p => (List.range 5).filterMap fun v =>
    (pairSign ws p.1 p.2 v).map fun sg => ((v, p.1 + 5, p.2 + 5), sg)

/-- The affine factors: the parameter, lower-point and free-point bounds of the case (with the
top-row bounds `f ≤ 323/803`, `d ≤ 57/65` when `top`). -/
def factors (top : Bool) : List Expr :=
  [v 0 - k (49 / 60), v 1 - k (24 / 73), 1 - v 0, k (49 / 73) - v 1, v 2 - k (49 / 60),
    k (65 / 73) - v 2, v 3 - k (8 / 73), k (49 / 73) - v 3, v 0 - v 2, v 1 - v 3, v 2 - v 3] ++
  (if top then [k (323 / 803) - v 3, k (57 / 65) - v 2] else []) ++
  [v 4 - k (8 / 73), v 5 - k (8 / 73), 1 - v 4, v 2 - v 5 - k (8 / 73), v 4 - v 1 - k (8 / 73),
    v 6 - k (8 / 73), v 7 - k (8 / 73), 1 - v 6, v 2 - v 7 - k (8 / 73), v 6 - v 1 - k (8 / 73),
    v 8 - k (8 / 73), v 9 - k (8 / 73), v 1 - v 8 - k (16 / 73), v 0 - v 9 - k (16 / 73),
    1 - v 8 - v 9 - k (8 / 73), v 10 - k (8 / 73), v 11 - k (8 / 73)] ++
  (if top then [1 - v 10, 1 - v 11, v 10 - v 3 - k (8 / 73), v 11 - v 2 - k (8 / 73)]
    else [k (65 / 73) - v 10, k (65 / 73) - v 11])

/-- The quadratic costs placed before the triangle costs: `hc - 3s`, `d(1-c) - 3s`,
`3s - [DFH]`, `ρ - [OFH]`, and in the upper row `1 - (h - d)(c - f) - 4s`. -/
def qcosts (top : Bool) : List Expr :=
  [v 0 * v 1 - k (24 / 73), v 2 * (1 - v 1) - k (24 / 73),
    k (24 / 73) - esarea (pt 2) (pt 3) (pt 4), k (49 / 60) - esarea (pt 0) (pt 3) (pt 4)] ++
  (if top then [] else [1 - (v 0 - v 2) * (v 1 - v 3) - k (32 / 73)])

/-- The cubic cost `dc(1-c) - s`. -/
def cubic : List Expr := [v 2 * v 1 * (1 - v 1) - k (8 / 73)]

/-- The cover package of a case. -/
def spec (top : Bool) (li qi : ℕ) : Spec SFact Split :=
  tableSpec pt Package.bnd [5, 6, 7, 8] (factors top ++ qcosts top) cubic
    (baseSigns (caseWords top li qi)) triBranches

end Heilbronn.Nine.C1OneLowerRightPair.Model
