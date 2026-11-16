module

public import Heilbronn.Common.Cover

/-! # The certificate model of the single-top package (`hand/SIX_BOUNDARY_SINGLE_TOP.md` §§2–4)

Computable mirror of `hand/check_six_boundary_single_top.py`, for the kernel check of the cover
(`Heilbronn.Common.Cover`). Everything is indexed by natural numbers:

* points `0, …, 8` are `A, B, C, D, X, F, H, P, Q` (the heptagon `V₀, …, V₆` of (3) and the two
  interior points); the twelve variables `0, …, 11` are `a, h, b, c, d, f, x_X, y_X, p_x, p_y,
  q_x, q_y` (`pt`);
* `allWords`: the 57 heptagon words (12), lexicographic; `words`: the 52 with `r₃ ≥ 2`;
  `wsign w i j` is the sign of `[VᵢVⱼR]` for a point `R` with word `w` (11);
* a *case* is a base pair `(p, q)` of word indices (`cases`, the 884 pairs `p ≤ q` passing the
  filters `filterOK` of §2: not two lower words, not both in an ear, for two upper words not in a
  common diagonal sector and no conflict between (13) and the forced signs `forced`);
* `baseSigns p q`: the known signs of the case (checker `base_signs`, lexicographic): hull
  triples positive, two hull vertices and an interior point from the word, and `[V_v P Q]` from
  (13) or, for two upper words, (14) and `ONE_CORNER_COMPLETION` Theorem 3 (`pairSign`);
* the facts of a cell are signed triangles (`Fact.sgn`, the actual-area splits) and scalar cuts
  (`Fact.cut e`: `e ≥ 0`); `atoms p q fs` is the factor list (16)–(17) (`factors`), the cut
  factors, the strengthened triangle costs (`costAtom`, thresholds `s, 3s, ρ` by certified inside
  count) and the costs (18) (`extra`);
* `spec p q`: the cover package of the case; its splits are `Split.tri a b c` (the orientation
  of the triangle `abc`) and `Split.cut i q` (`v i ≤ q` or `v i ≥ q`).

The certificate weights are exported by `scripts/six_single_top/export.py` into
`data/six_single_top/`; the trees and their kernel checks are in
`Heilbronn.Six.SingleTop.Trees*`.
-/

@[expose] public section

namespace Heilbronn.SixBoundarySingleTop.Model

open Cert Cert.Expr Cover

/-! ### Words -/

/-- The 57 heptagon words (12), lexicographic. -/
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

/-- The 52 hexagon words (`r₃ ≥ 2`), lexicographic. -/
def words : List (List ℕ) :=
  [[1, 1, 5, 5, 4, 3, 2], [1, 2, 5, 4, 4, 3, 2], [1, 3, 5, 4, 3, 3, 2], [1, 4, 5, 4, 3, 2, 2],
    [1, 5, 5, 4, 3, 2, 1], [2, 1, 1, 5, 5, 4, 3], [2, 1, 2, 5, 4, 4, 3], [2, 1, 3, 5, 4, 3, 3],
    [2, 1, 4, 5, 4, 3, 2], [2, 2, 1, 4, 5, 4, 3], [2, 2, 2, 4, 4, 4, 3], [2, 2, 3, 4, 4, 3, 3],
    [2, 2, 4, 4, 4, 3, 2], [2, 3, 2, 4, 3, 4, 3], [2, 3, 3, 4, 3, 3, 3], [2, 3, 4, 4, 3, 3, 2],
    [2, 4, 3, 4, 3, 2, 3], [2, 4, 4, 4, 3, 2, 2], [2, 5, 4, 4, 3, 2, 1], [3, 2, 1, 2, 5, 4, 4],
    [3, 2, 1, 3, 5, 4, 3], [3, 2, 2, 2, 4, 4, 4], [3, 2, 2, 3, 4, 4, 3], [3, 2, 3, 2, 4, 3, 4],
    [3, 2, 3, 3, 4, 3, 3], [3, 2, 4, 3, 4, 3, 2], [3, 3, 2, 2, 3, 4, 4], [3, 3, 2, 3, 3, 4, 3],
    [3, 3, 3, 2, 3, 3, 4], [3, 3, 3, 3, 3, 3, 3], [3, 3, 4, 3, 3, 3, 2], [3, 4, 3, 2, 3, 2, 4],
    [3, 4, 3, 3, 3, 2, 3], [3, 4, 4, 3, 3, 2, 2], [3, 5, 4, 3, 3, 2, 1], [4, 3, 2, 2, 1, 4, 5],
    [4, 3, 2, 2, 2, 4, 4], [4, 3, 2, 3, 2, 4, 3], [4, 3, 3, 2, 1, 3, 5], [4, 3, 3, 2, 2, 3, 4],
    [4, 3, 3, 3, 2, 3, 3], [4, 3, 4, 3, 2, 3, 2], [4, 4, 3, 2, 1, 2, 5], [4, 4, 3, 2, 2, 2, 4],
    [4, 4, 3, 3, 2, 2, 3], [4, 4, 4, 3, 2, 2, 2], [4, 5, 4, 3, 2, 2, 1], [5, 4, 3, 2, 1, 1, 5],
    [5, 4, 3, 2, 2, 1, 4], [5, 4, 3, 3, 2, 1, 3], [5, 4, 4, 3, 2, 1, 2], [5, 5, 4, 3, 2, 1, 1]]

/-- The entry `i` of the word `w`. -/
def wordAt (w i : ℕ) : ℕ := (words.getD w []).getD i 0

/-- The checker's `sign(word, i, j)`: `(j - i) mod 7 ≤ word[i]`, i.e. `[VᵢVⱼR] > 0` (11). -/
def wsign (w i j : ℕ) : Bool := ((j + 7 - i) % 7).ble (wordAt w i)

/-- The word lies above `HC` (`[HCR] > 0`, i.e. `r₆ ≥ 3`). -/
def upper (w : ℕ) : Bool := wsign w 6 2

/-- The word lies inside the hull triangle `t` (its three edge signs are positive). -/
def inside (w : ℕ) (t : ℕ × ℕ × ℕ) : Bool := wsign w t.1 t.2.1 && wsign w t.2.1 t.2.2 && wsign w t.2.2 t.1

/-- The six anchor ears `ABH, ABC, BCD, CDF, DFH, AFH` (7). -/
def ears : List (ℕ × ℕ × ℕ) := [(0, 1, 6), (0, 1, 2), (1, 2, 3), (2, 3, 5), (3, 5, 6), (0, 5, 6)]

/-- Two words in a common diagonal sector of `HCDF` (the same signs at `HD` and `CF`). -/
def sameSector (p q : ℕ) : Bool := wsign p 6 3 == wsign q 6 3 && wsign p 2 5 == wsign q 2 5

/-- The checker's `forced_upper(P, Q)`: for two upper words in different diagonal sectors, the
sign of `[V_v P Q]` at `v ∈ {H, C, D, F} = {6, 2, 3, 5}` fixed by (14) and Theorem 3 of
`ONE_CORNER_COMPLETION`. -/
def forced (p q v : ℕ) : Option Bool :=
  let pHD := wsign p 6 3
  let qHD := wsign q 6 3
  let pCF := wsign p 2 5
  let qCF := wsign q 2 5
  if pHD == qHD && pCF == qCF then none
  else if pHD != qHD && pCF != qCF then
    if v = 6 then some (!pHD) else if v = 3 then some pHD else if v = 2 then some (!pCF)
    else if v = 5 then some pCF else none
  else if pHD == qHD then
    let iso := if pHD then 5 else 2
    let side := if iso = 5 then pCF else !pCF
    if v = iso then some side else if v = 6 ∨ v = 2 ∨ v = 3 ∨ v = 5 then some (!side) else none
  else
    let iso := if pCF then 6 else 3
    let side := if iso = 6 then !pHD else pHD
    if v = iso then some side else if v = 6 ∨ v = 2 ∨ v = 3 ∨ v = 5 then some (!side) else none

/-- The known sign of `[V_v P Q]`: (13) when the entries differ, else the forced sign. -/
def pairSign (p q v : ℕ) : Option Bool :=
  if wordAt p v < wordAt q v then some true
  else if wordAt q v < wordAt p v then some false
  else if upper p && upper q then forced p q v else none

/-- A conflict between (13) and the forced signs. -/
def conflict (p q : ℕ) : Bool := (List.range 7).any fun v =>
  wordAt p v != wordAt q v &&
    match forced p q v with
    | some sg => sg != decide (wordAt p v < wordAt q v)
    | none => false

/-- The filters of §2. -/
def filterOK (p q : ℕ) : Bool :=
  (upper p || upper q) && !(ears.any fun t => inside p t && inside q t) &&
    !(upper p && upper q && sameSector p q) && !(upper p && upper q && conflict p q)

/-- The 884 base pairs, lexicographic. -/
def cases : List (ℕ × ℕ) :=
  (List.range 52).flatMap fun i => ((List.range 52).filter fun j => i ≤ j && filterOK i j).map (i, ·)

/-! ### Points, factors and costs -/

/-- The nine points as expressions in `a, h, b, c, d, f, x_X, y_X, p_x, p_y, q_x, q_y`. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, v 0)
  | 1 => (v 2, 0)
  | 2 => (v 3, 0)
  | 3 => (1, v 4)
  | 4 => (v 6, v 7)
  | 5 => (v 5, 1)
  | 6 => (0, v 1)
  | 7 => (v 8, v 9)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- `s = 8/73`. -/
def sQ : ℚ := 8 / 73

/-- The 27 common affine factors (16). -/
def commonFactors : List Expr :=
  [v 0 - k (1 / 8), v 2 - k (1 / 8), v 1 - k (32 / 73), v 3 - k (32 / 73), 1 - v 1, 1 - v 3,
    v 4 - v 0, v 1 - v 4, v 5 - v 2, v 3 - v 5, v 4 - v 5, v 1 - v 0 - k sQ, v 3 - v 2 - k sQ,
    k (7 / 8) - v 4, k (67 / 100) - v 5, v 6 - v 5 - k sQ, v 7 - v 4 - k sQ, 1 - v 6, 1 - v 7,
    v 8 - k sQ, k (65 / 73) - v 8, v 9 - k sQ, k (65 / 73) - v 9, v 10 - k sQ, k (65 / 73) - v 10,
    v 11 - k sQ, k (65 / 73) - v 11]

/-- The five mixed factors (17) of the lower point `(v lx, v ly)`. -/
def mixedFactors (lx ly : ℕ) : List Expr :=
  [v 1 - k (7 / 11), v 3 - k (7 / 11), v 3 - v lx - k (16 / 73), v 1 - v ly - k (16 / 73),
    k (65 / 73) - v lx - v ly]

/-- The case is mixed (one of the two words below `HC`). -/
def mixed (p q : ℕ) : Bool := !(upper p && upper q)

/-- The affine factors (16)–(17) of the case. -/
def factors (p q : ℕ) : List Expr :=
  commonFactors ++
    (if mixed p q then (if upper p then mixedFactors 10 11 else mixedFactors 8 9) else [])

/-- The occupancy bounds: `s, 3s, ρ` for `0, 1, ≥ 2` certified inside points. -/
def bnd (n : ℕ) : ℚ := if n = 0 then 8 / 73 else if n = 1 then 24 / 73 else 49 / 60

/-- The costs (18): `hc`, `W`, `δ`, and the six ears. -/
def extra (p q : ℕ) : List Expr :=
  [v 1 * v 3 - k (if mixed p q then 7 / 11 else 32 / 73),
    1 - (v 1 - v 4) * (v 3 - v 5) - k (if mixed p q then 32 / 73 else 64 / 73),
    (1 - v 4) * (1 - v 5) - k sQ] ++
  ears.map fun t => k (13 / 16) - esarea (pt t.1) (pt t.2.1) (pt t.2.2)

/-! ### Initial signs -/

/-- The increasing index triples of `0, …, 8`, in lexicographic order. -/
def lexTriples : List (ℕ × ℕ × ℕ) :=
  (List.range 9).flatMap fun a => (List.range 9).flatMap fun b => (List.range 9).filterMap
    fun c => if a < b ∧ b < c then some (a, b, c) else none

/-- The known sign of an increasing triple in the case `(p, q)` (checker `base_signs`). -/
def baseSign (p q : ℕ) (t : ℕ × ℕ × ℕ) : Option Bool :=
  if t.2.2 < 7 then some true
  else if t.2.1 < 7 then some (wsign (if t.2.2 = 7 then p else q) t.1 t.2.1)
  else pairSign p q t.1

/-- The initial signed triangles of the case. -/
def baseSigns (p q : ℕ) : List SFact :=
  lexTriples.filterMap fun t => (baseSign p q t).map fun sg => (t, sg)

/-! ### Facts and the cover package -/

/-- A fact of a cell: a signed triangle, or a scalar cut `e ≥ 0`. -/
inductive Fact where
  | sgn (f : SFact)
  | cut (e : Expr)

/-- The signed triangles among the facts. -/
def sgns : List Fact → List SFact
  | [] => []
  | .sgn f :: fs => f :: sgns fs
  | .cut _ :: fs => sgns fs

/-- The cut factors among the facts. -/
def cuts : List Fact → List Expr
  | [] => []
  | .sgn _ :: fs => cuts fs
  | .cut e :: fs => e :: cuts fs

/-- All the atoms of the case `(p, q)` with the extra facts `fs`: factors, cut factors, triangle
costs (strengthened by the certified inside counts), the costs (18). -/
def atoms (p q : ℕ) (fs : List Fact) : List Expr :=
  let tb := baseSigns p q ++ sgns fs
  factors p q ++ cuts fs ++
    tb.map (fun g => costAtom pt bnd g (insideList tb [7, 8] g).length) ++ extra p q

/-- The split labels: the orientation of the triangle `abc`, or the scalar cut `v i ≤ q`,
`v i ≥ q`. -/
inductive Split where
  | tri (a b c : ℕ)
  | cut (i : ℕ) (q : ℚ)

/-- The children of a split. An invalid split has one child with no new fact. -/
def branches : List Fact → Split → List (List Fact)
  | _, .tri a b c =>
    if a < b ∧ b < c ∧ c < 9 then (signBranches (a, b, c)).map (·.map Fact.sgn) else [[]]
  | _, .cut i q => (cutBranches (v i) q).map (·.map Fact.cut)

/-- The cover package of the case `(p, q)`. -/
def spec (p q : ℕ) : Spec Fact Split where
  atoms := atoms p q
  branches := branches

end Heilbronn.SixBoundarySingleTop.Model
