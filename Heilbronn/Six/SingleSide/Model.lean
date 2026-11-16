module

public import Heilbronn.Common.Cover

/-! # The certificate model of the single-side package (`hand/SIX_BOUNDARY_SINGLE_SIDE.md` §§3–4)

Computable mirror of `hand/check_six_boundary_single_side.py`, for the kernel check of the cover
(`Heilbronn.Common.Cover`). Everything is indexed by natural numbers:

* points `0, …, 8` are `A, B, C, X, D, F, H, P, Q` (the heptagon `V₀, …, V₆` of (2) and the two
  interior points); the twelve variables `0, …, 11` are `a, h, b, c, d, f, x, y, p_x, p_y, q_x,
  q_y` (`pt`);
* `allWords`: the 57 heptagon words (15), lexicographic; `words`: the 43 with `r₂ ≥ 2` and
  `2 ≤ r₁ ≤ 4` (16); `wsign w i j` is the sign of `[VᵢVⱼR]` for a point `R` with word `w` (14);
* a *case* is a pair `(p, q)` of word indices (`cases`, the 536 pairs passing the filters
  `filterOK` of §3: `q` above `HC`; `p` below `HC` (mixed) or `p ≤ q` above `HC` (upper); not both
  in an anchor ear; for two upper words not in a common diagonal sector and no conflict between
  (17) and the forced signs `forced`);
* `baseSigns p q`: the known signs of the case (checker `known_signs`, lexicographic): hull
  triples positive, two hull vertices and an interior point from the word, and `[V_v P Q]` from
  (17) or, for two upper words, (18) and `ONE_CORNER_COMPLETION` Theorem 3 (`pairSign`);
* the facts of a cell are signed triangles (the actual-area splits of the five split cases);
  `atoms p q fs` is the factor list of §4 (`factors`), the strengthened triangle costs
  (`costAtom`, thresholds `s, 3s, ρ` by certified inside count) and the appended costs of §4
  (`extra`: `W`, `hc`, `3s - [ABH]`, `3s - [BCX]`, the six ears);
* `spec p q`: the cover package of the case; its splits are `Split.tri a b c` (the orientation
  of the triangle `abc`).

The certificate weights are exported by `scripts/six_single_side/export.py` into
`data/six_single_side/`; the trees and their kernel checks are in
`Heilbronn.Six.SingleSide.Trees*`.
-/

@[expose] public section

namespace Heilbronn.SixBoundarySingleSide.Model

open Cert Cert.Expr Cover

/-! ### Words -/

/-- The 57 heptagon words (15), lexicographic. -/
def allWords : List (List ℕ) :=
  [[1, 1, 5, 5, 4, 3, 2], [1, 2, 5, 4, 4, 3, 2], [1, 3, 5, 4, 3, 3, 2], [1, 4, 5, 4, 3, 2, 2],
    [1, 5, 5, 4, 3, 2, 1], [2, 1, 1, 5, 5, 4, 3], [2, 1, 2, 5, 4, 4, 3], [2, 1, 3, 5, 4, 3, 3],
    [2, 1, 4, 5, 4, 3, 2], [2, 2, 1, 4, 5, 4, 3], [2, 2, 2, 4, 4, 4, 3], [2, 2, 3, 4, 4, 3, 3],
    [2, 2, 4, 4, 4, 3, 2], [2, 3, 2, 4, 3, 4, 3], [2, 3, 3, 4, 3, 3, 3], [2, 3, 4, 4, 3, 3, 2],
    [2, 4, 3, 4, 3, 2, 3], [2, 4, 4, 4, 3, 2, 2], [2, 5, 4, 4, 3, 2, 1], [3, 2, 1, 1, 5, 5, 4],
    [3, 2, 1, 2, 5, 4, 4], [3, 2, 1, 3, 5, 4, 3], [3, 2, 2, 1, 4, 5, 4], [3, 2, 2, 2, 4, 4, 4],
    [3, 2, 2, 3, 4, 4, 3], [3, 2, 3, 2, 4, 3, 4], [3, 2, 3, 3, 4, 3, 3], [3, 2, 4, 3, 4, 3, 2],
    [3, 3, 2, 1, 3, 5, 4], [3, 3, 2, 2, 3, 4, 4], [3, 3, 2, 3, 3, 4, 3], [3, 3, 3, 2, 3, 3, 4],
    [3, 3, 3, 3, 3, 3, 3], [3, 3, 4, 3, 3, 3, 2], [3, 4, 3, 2, 3, 2, 4], [3, 4, 3, 3, 3, 2, 3],
    [3, 4, 4, 3, 3, 2, 2], [3, 5, 4, 3, 3, 2, 1], [4, 3, 2, 1, 1, 5, 5], [4, 3, 2, 1, 2, 5, 4],
    [4, 3, 2, 2, 1, 4, 5], [4, 3, 2, 2, 2, 4, 4], [4, 3, 2, 3, 2, 4, 3], [4, 3, 3, 2, 1, 3, 5],
    [4, 3, 3, 2, 2, 3, 4], [4, 3, 3, 3, 2, 3, 3], [4, 3, 4, 3, 2, 3, 2], [4, 4, 3, 2, 1, 2, 5],
    [4, 4, 3, 2, 2, 2, 4], [4, 4, 3, 3, 2, 2, 3], [4, 4, 4, 3, 2, 2, 2], [4, 5, 4, 3, 2, 2, 1],
    [5, 4, 3, 2, 1, 1, 5], [5, 4, 3, 2, 2, 1, 4], [5, 4, 3, 3, 2, 1, 3], [5, 4, 4, 3, 2, 1, 2],
    [5, 5, 4, 3, 2, 1, 1]]

/-- The 43 words with `r₂ ≥ 2` and `2 ≤ r₁ ≤ 4` (16), lexicographic. -/
def words : List (List ℕ) :=
  [[1, 2, 5, 4, 4, 3, 2], [1, 3, 5, 4, 3, 3, 2], [1, 4, 5, 4, 3, 2, 2], [2, 2, 2, 4, 4, 4, 3],
    [2, 2, 3, 4, 4, 3, 3], [2, 2, 4, 4, 4, 3, 2], [2, 3, 2, 4, 3, 4, 3], [2, 3, 3, 4, 3, 3, 3],
    [2, 3, 4, 4, 3, 3, 2], [2, 4, 3, 4, 3, 2, 3], [2, 4, 4, 4, 3, 2, 2], [3, 2, 2, 1, 4, 5, 4],
    [3, 2, 2, 2, 4, 4, 4], [3, 2, 2, 3, 4, 4, 3], [3, 2, 3, 2, 4, 3, 4], [3, 2, 3, 3, 4, 3, 3],
    [3, 2, 4, 3, 4, 3, 2], [3, 3, 2, 1, 3, 5, 4], [3, 3, 2, 2, 3, 4, 4], [3, 3, 2, 3, 3, 4, 3],
    [3, 3, 3, 2, 3, 3, 4], [3, 3, 3, 3, 3, 3, 3], [3, 3, 4, 3, 3, 3, 2], [3, 4, 3, 2, 3, 2, 4],
    [3, 4, 3, 3, 3, 2, 3], [3, 4, 4, 3, 3, 2, 2], [4, 3, 2, 1, 1, 5, 5], [4, 3, 2, 1, 2, 5, 4],
    [4, 3, 2, 2, 1, 4, 5], [4, 3, 2, 2, 2, 4, 4], [4, 3, 2, 3, 2, 4, 3], [4, 3, 3, 2, 1, 3, 5],
    [4, 3, 3, 2, 2, 3, 4], [4, 3, 3, 3, 2, 3, 3], [4, 3, 4, 3, 2, 3, 2], [4, 4, 3, 2, 1, 2, 5],
    [4, 4, 3, 2, 2, 2, 4], [4, 4, 3, 3, 2, 2, 3], [4, 4, 4, 3, 2, 2, 2], [5, 4, 3, 2, 1, 1, 5],
    [5, 4, 3, 2, 2, 1, 4], [5, 4, 3, 3, 2, 1, 3], [5, 4, 4, 3, 2, 1, 2]]

/-- The entry `i` of the word `w`. -/
def wordAt (w i : ℕ) : ℕ := (words.getD w []).getD i 0

/-- The checker's `sign(word, i, j)`: `(j - i) mod 7 ≤ word[i]`, i.e. `[VᵢVⱼR] > 0` (14). -/
def wsign (w i j : ℕ) : Bool := ((j + 7 - i) % 7).ble (wordAt w i)

/-- The word lies above `HC` (`[HCR] > 0`, i.e. `r₆ ≥ 3`). -/
def upper (w : ℕ) : Bool := wsign w 6 2

/-- The word lies inside the hull triangle `t` (its three edge signs are positive). -/
def inside (w : ℕ) (t : ℕ × ℕ × ℕ) : Bool :=
  wsign w t.1 t.2.1 && wsign w t.2.1 t.2.2 && wsign w t.2.2 t.1

/-- The six anchor ears `ABH, ABC, BCD, CDF, DFH, AFH` (12). -/
def ears : List (ℕ × ℕ × ℕ) := [(0, 1, 6), (0, 1, 2), (1, 2, 4), (2, 4, 5), (4, 5, 6), (0, 5, 6)]

/-- Two words in a common diagonal sector of `HCDF` (the same signs at `HD` and `CF`). -/
def sameSector (p q : ℕ) : Bool := wsign p 6 4 == wsign q 6 4 && wsign p 2 5 == wsign q 2 5

/-- The checker's `upper_pair_signs(P, Q)`: for two upper words in different diagonal sectors,
the sign of `[V_v P Q]` at `v ∈ {H, C, D, F} = {6, 2, 4, 5}` fixed by (18) and Theorem 3 of
`ONE_CORNER_COMPLETION`. -/
def forced (p q v : ℕ) : Option Bool :=
  let pHD := wsign p 6 4
  let qHD := wsign q 6 4
  let pCF := wsign p 2 5
  let qCF := wsign q 2 5
  if pHD == qHD && pCF == qCF then none
  else if pHD != qHD && pCF != qCF then
    if v = 6 then some (!pHD) else if v = 4 then some pHD else if v = 2 then some (!pCF)
    else if v = 5 then some pCF else none
  else if pHD == qHD then
    let iso := if pHD then 5 else 2
    let side := if iso = 5 then pCF else !pCF
    if v = iso then some side else if v = 6 ∨ v = 2 ∨ v = 4 ∨ v = 5 then some (!side) else none
  else
    let iso := if pCF then 6 else 4
    let side := if iso = 6 then !pHD else pHD
    if v = iso then some side else if v = 6 ∨ v = 2 ∨ v = 4 ∨ v = 5 then some (!side) else none

/-- The known sign of `[V_v P Q]`: (17) when the entries differ, else the forced sign. -/
def pairSign (p q v : ℕ) : Option Bool :=
  if wordAt p v < wordAt q v then some true
  else if wordAt q v < wordAt p v then some false
  else if upper p && upper q then forced p q v else none

/-- A conflict between (17) and the forced signs. -/
def conflict (p q : ℕ) : Bool := (List.range 7).any fun v =>
  wordAt p v != wordAt q v &&
    match forced p q v with
    | some sg => sg != decide (wordAt p v < wordAt q v)
    | none => false

/-- The filters of §3 (`p` is the lower point of a mixed pair, or the first of an upper pair). -/
def filterOK (p q : ℕ) : Bool :=
  upper q && (!upper p || decide (p ≤ q)) && !(ears.any fun t => inside p t && inside q t) &&
    !(upper p && sameSector p q) && !(upper p && conflict p q)

/-- The 536 base cases, lexicographic. -/
def cases : List (ℕ × ℕ) :=
  (List.range 43).flatMap fun i => ((List.range 43).filter fun j => filterOK i j).map (i, ·)

/-! ### Points, factors and costs -/

/-- The nine points as expressions in `a, h, b, c, d, f, x, y, p_x, p_y, q_x, q_y`. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, v 0)
  | 1 => (v 2, 0)
  | 2 => (v 3, 0)
  | 3 => (v 6, v 7)
  | 4 => (1, v 4)
  | 5 => (v 5, 1)
  | 6 => (0, v 1)
  | 7 => (v 8, v 9)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- `s = 7/64`. -/
def sS : ℚ := 7 / 64

/-- The 27 affine factors `l₀, …, l₂₆` of §4. -/
def factors : List Expr :=
  [v 0 - k (1 / 7), v 2 - k (1 / 8), v 1 - k (1 / 2), v 3 - k (4 * sS), v 4 - k (1 / 2), 1 - v 1,
    k (1 - sS) - v 3, k (1 - sS) - v 4, k (1 - sS) - v 5, v 4 - v 0, v 1 - v 4, v 5 - v 2,
    v 3 - v 5, v 1 - v 0 - k sS, v 3 - v 2 - k sS, 1 - v 6, v 6 - v 3 - k sS, v 7 - k (1 / 7),
    v 4 - v 7 - k (7 / 36), v 8 - k sS, k (1 - sS) - v 8, v 9 - k sS, k (1 - sS) - v 9,
    v 10 - k sS, k (1 - sS) - v 10, v 11 - k sS, k (1 - sS) - v 11]

/-- The case is mixed (its first word below `HC`). -/
def mixed (p _q : ℕ) : Bool := !upper p

/-- The occupancy bounds: `s, 3s, ρ` for `0, 1, ≥ 2` certified inside points. -/
def bnd (n : ℕ) : ℚ := if n = 0 then 7 / 64 else if n = 1 then 21 / 64 else 13 / 16

/-- The appended costs of §4: `W - 4s | 8s`, `hc - 7/11 | 4s`, `3s - [ABH]`, `3s - [BCX]`, and
`ρ - [T]` for the six ears. -/
def extra (p q : ℕ) : List Expr :=
  [1 - (v 1 - v 4) * (v 3 - v 5) - k (if mixed p q then 4 * sS else 8 * sS),
    v 1 * v 3 - k (if mixed p q then 7 / 11 else 4 * sS),
    k (3 * sS) - esarea (pt 0) (pt 1) (pt 6), k (3 * sS) - esarea (pt 1) (pt 2) (pt 3)] ++
  ears.map fun t => k (13 / 16) - esarea (pt t.1) (pt t.2.1) (pt t.2.2)

/-! ### Initial signs -/

/-- The increasing index triples of `0, …, 8`, in lexicographic order. -/
def lexTriples : List (ℕ × ℕ × ℕ) :=
  (List.range 9).flatMap fun a => (List.range 9).flatMap fun b => (List.range 9).filterMap
    fun c => if a < b ∧ b < c then some (a, b, c) else none

/-- The known sign of an increasing triple in the case `(p, q)` (checker `known_signs`). -/
def baseSign (p q : ℕ) (t : ℕ × ℕ × ℕ) : Option Bool :=
  if t.2.2 < 7 then some true
  else if t.2.1 < 7 then some (wsign (if t.2.2 = 7 then p else q) t.1 t.2.1)
  else pairSign p q t.1

/-- The initial signed triangles of the case. -/
def baseSigns (p q : ℕ) : List SFact :=
  lexTriples.filterMap fun t => (baseSign p q t).map fun sg => (t, sg)

/-! ### The cover package -/

/-- All the atoms of the case `(p, q)` with the extra signed triangles `fs`: factors, triangle
costs (strengthened by the certified inside counts), the appended costs. -/
def atoms (p q : ℕ) (fs : List SFact) : List Expr :=
  let tb := baseSigns p q ++ fs
  factors ++ tb.map (fun g => costAtom pt bnd g (insideList tb [7, 8] g).length) ++ extra p q

/-- The split labels: the orientation of the triangle `abc`. -/
inductive Split where
  | tri (a b c : ℕ)

/-- The children of a split. An invalid split has one child with no new fact. -/
def branches : List SFact → Split → List (List SFact)
  | _, .tri a b c => if a < b ∧ b < c ∧ c < 9 then signBranches (a, b, c) else [[]]

/-- The cover package of the case `(p, q)`. -/
def spec (p q : ℕ) : Spec SFact Split where
  atoms := atoms p q
  branches := branches

end Heilbronn.SixBoundarySingleSide.Model
