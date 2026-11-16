module

public import Heilbronn.Common.SignTable

/-! # The certificate model of the exact six-anchor hull

Computable model, for the kernel check of the cover (`Heilbronn.Common.Cover`, sign tables from
`Heilbronn.Common.SignTable`), of the case with
all three free points strictly inside the anchor hexagon `A, B, C, D, F, H` (used by
`SixBoundaryHull.false_of_all_inHexagon`): one cover over the radial words of the three free points, found by
linear programming. Everything is indexed by natural numbers:

* points `0, …, 5` are the anchors `A, B, C, D, F, H` in counterclockwise hexagon order, `6` is
  the free point `Q` below `HC`, `7, 8` the free points `P, R` above `HC`; the twelve variables
  `0, …, 11` are `a, h, b, c, d, f, q_x, q_y, p_x, p_y, r_x, r_y` (`pt`);
* `factors`: the box factors `v_i, 1 - v_i`, the N orders, `W - 7/8` with
  `W = 1 - (h-d)(c-f)` (from `QuadrilateralHull.inNHexagon_one_below_HC`) and `13/16 - [ear]` for the six
  anchor ears (`SixBoundaryHull.ears_sarea_lt_atMostOne`);
* the facts are signed triangles; `base` holds the twenty hexagon triangles, the edge signs of the
  three free points, `Q` below `HC` and `P, R` above it, `[A C Q] > 0` (the ear `ABC` is empty,
  after `QuadrilateralHull.lower_ears_not_both_occupied` and transposition) and `[H P R] > 0` (the labels of `P, R`);
* `atoms fs`: the factors, then for each of the 84 increasing triples (lexicographic) its cost
  `±[abc] - bnd n` strengthened by the number `n` of free points certified inside (`s`, `3s`,
  `102/125 ≤ (4+2√3)s`; an unknown sign gives the atom `0`);
* the splits: `vertex p i` (the radial word entry of the free point `p` at `V_i`, values
  `1, …, 4` consistent with the known facts), `pair i p q` (the sign of `[V_i p q]`, forced by a
  separating ray `V_i V_{i+j}` when the two words differ at `V_i`), `tri a b c` (the sign of
  `[abc]`).
-/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryHull.Model

open Cert Cert.Expr Cover

/-- The nine points as expressions in `a, h, b, c, d, f, q_x, q_y, p_x, p_y, r_x, r_y`. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, v 0)
  | 1 => (v 2, 0)
  | 2 => (v 3, 0)
  | 3 => (1, v 4)
  | 4 => (v 5, 1)
  | 5 => (0, v 1)
  | 6 => (v 6, v 7)
  | 7 => (v 8, v 9)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- The six anchor ears `HAB, ABC, BCD, CDF, DFH, FHA` (counterclockwise). -/
def ears : List (ℕ × ℕ × ℕ) := [(5, 0, 1), (0, 1, 2), (1, 2, 3), (2, 3, 4), (3, 4, 5), (4, 5, 0)]

/-- The box factors, the N orders `h - a, c - b, d - a, h - d, f - b, c - f`, the bound
`1 - (h-d)(c-f) ≥ 7/8` and the six ear bounds `13/16 - [ear] ≥ 0`. -/
def factors : List Expr :=
  [v 0, 1 - v 0, v 1, 1 - v 1, v 2, 1 - v 2, v 3, 1 - v 3, v 4, 1 - v 4, v 5, 1 - v 5,
    v 6, 1 - v 6, v 7, 1 - v 7, v 8, 1 - v 8, v 9, 1 - v 9, v 10, 1 - v 10, v 11, 1 - v 11,
    v 1 - v 0, v 3 - v 2, v 4 - v 0, v 1 - v 4, v 5 - v 2, v 3 - v 5,
    1 - (v 1 - v 4) * (v 3 - v 5) - k (7 / 8)] ++
  ears.map fun t => k (13 / 16) - esarea (pt t.1) (pt t.2.1) (pt t.2.2)

/-- The occupancy bounds: `s = 7/64`, `3s`, and `102/125 ≤ (4 + 2√3)s` for `0, 1, ≥ 2` certified
inside points. -/
def bnd (n : ℕ) : ℚ := if n = 0 then 7 / 64 else if n = 1 then 21 / 64 else 102 / 125

/-- The free points. -/
def free : List ℕ := [6, 7, 8]

/-- The initial facts: the hexagon triangles, the edge signs `[V_i V_{i+1} X] > 0` of the free
points, `[H C Q] < 0`, `[H C P] > 0`, `[H C R] > 0`, `[A C Q] > 0` and `[H P R] > 0`. -/
def base : List SFact :=
  (lexTriples 9).filterMap (fun t => if t.2.2 < 6 then some (t, true) else none) ++
    free.flatMap (fun p => (List.range 6).map fun i => orient i ((i + 1) % 6) p true) ++
    [orient 5 2 6 false, orient 5 2 7 true, orient 5 2 8 true, orient 0 2 6 true,
      orient 5 7 8 true]

/-- The atoms of the case with the extra facts `fs`: the factors and the strengthened costs of the
84 triples (`lookupCosts`; the atom `0` for an unknown sign). -/
def atoms (fs : List SFact) : List Expr :=
  factors ++ lookupCosts 9 pt bnd free (base ++ fs)

/-- The sign of `[V_i p q]` forced by a separating ray: the first `j ∈ {1, …, 4}` for which the
table knows `[V_i V_{i+j} p]` and `[V_i V_{i+j} q]` with different signs; then the sign is the
one of `q`. -/
def pairSign (tb : List SFact) (i p q : ℕ) : Option Bool :=
  ([1, 2, 3, 4] : List ℕ).findSome? fun j =>
    match orientedLookup tb i ((i + j) % 6) p, orientedLookup tb i ((i + j) % 6) q with
    | some sp, some sq => if sp = sq then none else some sq
    | _, _ => none

/-- The split labels. -/
inductive Split where
  | vertex (p i : ℕ)
  | pair (i p q : ℕ)
  | tri (a b c : ℕ)

/-- The one-fact branches `[f sg]` for the candidate signs, kept when consistent. -/
def signed (tb : List SFact) (f : Bool → SFact) (cands : List Bool) : List (List SFact) :=
  cands.filterMap fun sg => if consistent tb [f sg] then some [f sg] else none

/-- The branches of a split (an invalid split has one branch with no new fact). -/
def branches (fs : List SFact) : Split → List (List SFact)
  | .vertex p i => if i < 6 ∧ 6 ≤ p ∧ p < 9 then
      ((List.range 4).map (· + 1)).filterMap fun val =>
        if consistent (base ++ fs) (branchFacts 6 p i val) then some (branchFacts 6 p i val)
        else none
    else [[]]
  | .pair i p q => if i < 6 ∧ 6 ≤ p ∧ p < q ∧ q < 9 then
      match pairSign (base ++ fs) i p q with
      | some sg => signed (base ++ fs) (orient i p q) [sg]
      | none => signed (base ++ fs) (orient i p q) [false, true]
    else [[]]
  | .tri a b c => if a < b ∧ b < c ∧ c < 9 then
      signed (base ++ fs) (fun sg => ((a, b, c), sg)) [false, true]
    else [[]]

/-- The cover package. -/
def spec : Spec SFact Split where
  atoms := atoms
  branches := branches

end Heilbronn.Nine.SixBoundaryHull.Model
