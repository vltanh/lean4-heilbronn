module

public import Heilbronn.Common.Cover

/-! # The certificate model of the zero-lower C1 package (`docs/proof/nine/C1_ZERO_LOWER.md` §§5–6)

Computable mirror of `docs/proof/nine/check_c1_zero_lower_certificates.py`, for the kernel check of the
cover (`Heilbronn.Common.Cover`). Everything is indexed by natural numbers:

* points `0, …, 8` are `O, C, D, F, H, X₀, …, X₃`; the twelve variables `0, …, 11` are
  `h, c, d, f, x₀, y₀, …, x₃, y₃` (`pt`);
* a *case* `ks` is the list of the four word indices of `X₀, …, X₃` (indices into `words`, the
  eleven zero-lower words of the §5 table), with regions `cat` (`0` = `HCDF`, `1` = `𝓡`,
  `2` = `𝓣`, `3` = `𝓛`) and region counts `cnt ks r`;
* `baseSigns ks`: the initial signed triangles of the case (checker `base_signs`, same order):
  anchor triples, two anchors and a free point (from the word), an anchor and two free points
  (`pairSign`: the radial rule (14), the equal-word rules, the upper pair rule `upperPair`);
* `seedRaw ks i`, `seed ks i`: the seeds (17) of the three-top-cap cases with inner point `i`
  (checker `top_three_seed`);
* `factors ks` (checker `factors`), `qcosts ks` and the strengthened triangle costs (checker
  `costs`), `cubics ks` (checker `cubic_costs`); `atoms ks fs` is their concatenation for the
  extra signed triangles `fs` (the path of the case in its sign tree);
* `spec ks`: the cover package of the case; its splits are `Split.tri a b c` (the orientation of
  the triangle `abc`) and `Split.three` (the inner point of a three-top-cap case).

The certificate weights are exported by `scripts/nine/c1_zero_lower/export.py` into
`data/nine/c1_zero_lower/`; the trees and their kernel checks are in `Heilbronn.Nine.C1.ZeroLowerTrees*`.
-/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Model

open Cert Cert.Expr Cover

/-- The eleven zero-lower words of `C1_ZERO_LOWER.md` §5, in the order of its table. -/
def words : List (List ℕ) :=
  [[1, 0, 4, 3, 2], [1, 1, 3, 3, 2], [1, 2, 3, 2, 2], [2, 1, 0, 4, 3], [2, 1, 1, 3, 3],
    [2, 1, 2, 3, 2], [2, 2, 1, 2, 3], [2, 2, 2, 2, 2], [3, 2, 1, 0, 4], [3, 2, 1, 1, 3],
    [3, 2, 2, 1, 2]]

/-- The region of a word: `0` upper quadrilateral `HCDF`, `1` right cap, `2` top cap, `3` left
cap (the checker's `CATS`, with `-1 ↦ 0`). -/
def cat (w : ℕ) : ℕ := if w = 0 then 1 else if w = 3 then 2 else if w = 8 then 3 else 0

/-- The entry `i` of the word `w`. -/
def wordAt (w i : ℕ) : ℕ := (words.getD w []).getD i 0

/-- The checker's `sign(word, i, j)`: `(j - i) mod 5 ≤ word[i]`, i.e. `[VᵢVⱼX] > 0`. -/
def wsign (w i j : ℕ) : Bool := ((j + 5 - i) % 5).ble (wordAt w i)

/-- The word index of the free point `a` (`0, …, 3`) of the case. -/
def kw (ks : List ℕ) (a : ℕ) : ℕ := ks.getD a 0

/-- The number of free points of the case in the region `r`. -/
def cnt (ks : List ℕ) (r : ℕ) : ℕ := (ks.filter fun w => cat w == r).length

/-! ### Points and atoms -/

/-- The nine points as expressions: `O, C, D, F, H` and `Xᵢ = (x_i, y_i)`, in the variables
`h, c, d, f, x₀, y₀, …, x₃, y₃`. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, 0)
  | 1 => (v 1, 0)
  | 2 => (1, v 2)
  | 3 => (v 3, 1)
  | 4 => (0, v 0)
  | 5 => (v 4, v 5)
  | 6 => (v 6, v 7)
  | 7 => (v 8, v 9)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- `s = 8/73`. -/
def sQ : ℚ := 8 / 73

/-- The region row of §4 for the free point `i` with word `w`, after `x - s, y - s`. -/
def pointFactors (w i : ℕ) : List Expr :=
  let x := v (4 + 2 * i)
  let y := v (5 + 2 * i)
  [x - k sQ, y - k sQ] ++
    (if cat w = 1 then [1 - x, v 2 - y - k sQ, x - v 1 - k sQ]
    else if cat w = 2 then [1 - x, 1 - y, x - v 3 - k sQ, y - v 2 - k sQ]
    else if cat w = 3 then [v 3 - x - k (8 / 41), 1 - y, y - v 0 - k (8 / 65), x - k (28 / 219)]
    else [k (65 / 73) - x, k (65 / 73) - y])

/-- The affine factors of §6 (checker `factors`). -/
def factors (ks : List ℕ) : List Expr :=
  [v 0 - k sQ, v 1 - k sQ, 1 - v 0, 1 - v 1, v 2 - k sQ, k (65 / 73) - v 2, v 3 - k sQ,
    k (65 / 73) - v 3, v 0 - v 2, v 1 - v 3, v 2 - v 3] ++
  (if 1 ≤ cnt ks 2 then [k (67 / 100) - v 3, k (57 / 65) - v 2] else []) ++
  (if 2 ≤ cnt ks 2 then [k (3 / 7) - v 3, k (41 / 65) - v 2] else []) ++
  (if 3 ≤ cnt ks 2 then [k (13 / 64) - v 3, k (204 / 715) - v 2] else []) ++
  (if 1 ≤ cnt ks 1 then [v 2 - k (32 / 73), v 1 - k (1 / 7), k (6 / 7) - v 1] else []) ++
  (if cnt ks 1 = 2 then [v 2 - k (49 / 60), k (49 / 73) - v 1] else []) ++
  (if 1 ≤ cnt ks 3 then [v 3 - k (32 / 73), v 0 - k (1 / 7), k (6 / 7) - v 0] else []) ++
  (pointFactors (kw ks 0) 0 ++ pointFactors (kw ks 1) 1 ++ pointFactors (kw ks 2) 2 ++
    pointFactors (kw ks 3) 3)

/-- The quadratic costs (19), placed before the triangle costs. -/
def qcosts (ks : List ℕ) : List Expr :=
  (if cnt ks 0 = 2 then [1 - (v 0 - v 2) * (v 1 - v 3) - k (64 / 73)] else []) ++
  (if cnt ks 1 = 2 then [v 2 * (1 - v 1) - k (24 / 73)] else []) ++
  (if cnt ks 2 = 2 then [(1 - v 2) * (1 - v 3) - k (24 / 73)]
    else if 3 ≤ cnt ks 2 then [(1 - v 2) * (1 - v 3) - k (7 / 11)] else [])

/-- The cubic costs (20). -/
def cubics (ks : List ℕ) : List Expr :=
  (if 1 ≤ cnt ks 1 then [v 2 * v 1 * (1 - v 1) - k sQ] else []) ++
  (if 1 ≤ cnt ks 3 then [v 3 * v 0 * (1 - v 0) - k sQ] else [])

/-- The occupancy bounds (18): `s, 3s, ρ` for `0, 1, ≥ 2` certified inside points. -/
def bnd (n : ℕ) : ℚ := if n = 0 then 8 / 73 else if n = 1 then 24 / 73 else 49 / 60

/-! ### Initial signs -/

/-- The increasing index triples of `0, …, 8`, in lexicographic order. -/
def lexTriples : List (ℕ × ℕ × ℕ) :=
  (List.range 9).flatMap fun a => (List.range 9).flatMap fun b => (List.range 9).filterMap
    fun c => if a < b ∧ b < c then some (a, b, c) else none

/-- The sign of an increasing triple with at least two anchors (checker `base_signs`, first
loop). -/
def anchorSign (ks : List ℕ) (t : ℕ × ℕ × ℕ) : Option Bool :=
  if t.2.2 < 5 then some true
  else if t.2.1 < 5 then some (wsign (kw ks (t.2.2 - 5)) t.1 t.2.1)
  else none

/-- The checker's `upper_pair_signs(P, Q)` for two points of `HCDF` with words `p, q` in
different diagonal sectors: the sign of `[V_v P Q]` at `v ∈ {1, 2, 3, 4}`. -/
def upperPair (p q v : ℕ) : Option Bool :=
  let pHD := wsign p 4 2
  let qHD := wsign q 4 2
  let pCF := wsign p 1 3
  let qCF := wsign q 1 3
  if v = 0 then none
  else if pHD ≠ qHD ∧ pCF ≠ qCF then
    some (if v = 4 then !pHD else if v = 2 then pHD else if v = 1 then !pCF else pCF)
  else if pHD = qHD then
    let iso := if pHD then 3 else 1
    let side := if iso = 3 then pCF else !pCF
    some (if v = iso then side else !side)
  else
    let iso := if pCF then 4 else 2
    let side := if iso = 4 then !pHD else pHD
    some (if v = iso then side else !side)

/-- The initial sign of `[V_v X_a X_b]` (`a < b`): the radial rule (14), the equal-word rules
(`[O X_a X_b] > 0`; for a right-cap pair also (15)), the upper pair rule. -/
def pairSign (ks : List ℕ) (a b v : ℕ) : Option Bool :=
  let wa := kw ks a
  let wb := kw ks b
  if wordAt wa v ≠ wordAt wb v then some (decide (wordAt wa v < wordAt wb v))
  else if wa = wb then
    if v = 0 then some true
    else if cat wa = 1 ∧ v = 1 then some true
    else if cat wa = 1 ∧ v = 2 then some false
    else none
  else if cat wa = 0 ∧ cat wb = 0 then upperPair wa wb v
  else none

/-- The free index pairs `a < b`, in lexicographic order. -/
def freePairs : List (ℕ × ℕ) := [(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3)]

/-- The initial signed triangles of the case (checker `base_signs`, in its order). -/
def baseSigns (ks : List ℕ) : List SFact :=
  lexTriples.filterMap (fun t => (anchorSign ks t).map fun sg => (t, sg)) ++
  freePairs.flatMap fun p => (List.range 5).filterMap fun v =>
    (pairSign ks p.1 p.2 v).map fun sg => ((v, p.1 + 5, p.2 + 5), sg)

/-- The signed triangle of the ordered triple `(a, b, c)` with orientation `sg`, stored on the
sorted triple (flipped for an odd permutation). -/
def orient (a b c : ℕ) (sg : Bool) : SFact :=
  if a < b ∧ b < c then ((a, b, c), sg)
  else if b < c ∧ c < a then ((b, c, a), sg)
  else if c < a ∧ a < b then ((c, a, b), sg)
  else if b < a ∧ a < c then ((b, a, c), !sg)
  else if a < c ∧ c < b then ((a, c, b), !sg)
  else ((c, b, a), !sg)

/-- The three top-cap free points of the case (as point indices `5, …, 8`). -/
def caps (ks : List ℕ) : List ℕ :=
  ((List.range 4).filter fun i => cat (kw ks i) = 2).map (· + 5)

/-- The seeds (17) of a three-top-cap case with inner cap point `T = caps[i]` and outer points
`R, U` (checker `top_three_seed`, before removing the triangles already in `baseSigns`). -/
def seedRaw (ks : List ℕ) (i : ℕ) : List SFact :=
  let T := (caps ks).getD i 0
  let RU := (caps ks).filter (· ≠ T)
  let R := RU.getD 0 0
  let U := RU.getD 1 0
  ((List.range 5).map fun w => orient w R U true) ++
  (((List.range 4).map (· + 5)).filter (fun w => w ≠ R ∧ w ≠ U)).map (fun w => orient R U w true) ++
  [orient 2 R T true, orient 3 R T false, orient 2 U T true, orient 3 U T false]

/-- The seeds not already in the initial signs (checker `top_three_seed`). -/
def seed (ks : List ℕ) (i : ℕ) : List SFact :=
  (seedRaw ks i).filter fun f => (lookup (baseSigns ks) f.1).isNone

/-- The four three-top-cap cases (16). -/
def topThreeCases : List (List ℕ) := [[3, 3, 3, 4], [3, 3, 3, 5], [3, 3, 3, 6], [3, 3, 3, 7]]

/-- All the atoms of the case `ks` with the extra signed triangles `fs`: factors, quadratic
costs, triangle costs (strengthened by the certified inside counts), cubic costs. -/
def atoms (ks : List ℕ) (fs : List SFact) : List Expr :=
  let tb := baseSigns ks ++ fs
  factors ks ++ qcosts ks ++
    tb.map (fun f => costAtom pt bnd f (insideList tb [5, 6, 7, 8] f).length) ++ cubics ks

/-! ### The cover package -/

/-- The split labels: the orientation of the triangle `abc`, or the choice of the inner point of
a three-top-cap case. -/
inductive Split where
  | tri (a b c : ℕ)
  | three

/-- The children of a split. An invalid split has one child with no new fact. -/
def branches (ks : List ℕ) : List SFact → Split → List (List SFact)
  | _, .tri a b c => if a < b ∧ b < c ∧ c < 9 then signBranches (a, b, c) else [[]]
  | _, .three => if ks ∈ topThreeCases then [seed ks 0, seed ks 1, seed ks 2] else [[]]

/-- The cover package of the case `ks`. -/
def spec (ks : List ℕ) : Spec SFact Split where
  atoms := atoms ks
  branches := branches ks

end Heilbronn.Nine.C1ZeroLower.Model
