module

public import Heilbronn.Nine.Setup.Package

/-! # The certificate model of the zero-lower C1 package

Computable model of the zero-lower cover, for its kernel check (`Heilbronn.Common.Cover`); the
soundness is in `Heilbronn.Nine.C1.ZeroLowerCover`. Everything is indexed by natural numbers:

* points `0, …, 8` are `O, C, D, F, H, X₀, …, X₃`; the twelve variables `0, …, 11` are
  `h, c, d, f, x₀, y₀, …, x₃, y₃` (`pt`);
* a *case* `ks` is the list of the four word indices of `X₀, …, X₃` (indices into `words`, the
  eleven zero-lower words), with regions `cat` (`0` = `HCDF`, `1` = `𝓡`, `2` = `𝓣`, `3` = `𝓛`)
  and region counts `cnt ks r`;
* `baseSigns ks`: the initial signed triangles of the case: anchor triples, two anchors and a
  free point (from the word), an anchor and two free points (`pairSign`: the radial rule, the
  equal-word rules, the upper pair rule `upperPair`);
* `seedRaw ks i`, `seed ks i`: the seeds of the three-top-cap cases with inner point `i`;
* `factors ks`, `qcosts ks` and `cubics ks`, the affine factors, quadratic and cubic costs;
* `spec ks`: the cover package of the case (`Cover.tableSpec`): its atoms with the extra signed
  triangles `fs` (the path of the case in its sign tree) are `factors ks ++ qcosts ks`, the
  strengthened triangle costs of `baseSigns ks ++ fs` (`Package.bnd`) and `cubics ks`; its
  splits are `Split.tri a b c` (the orientation of the triangle `abc`) and `Split.three` (the
  inner point of a three-top-cap case); `triBranches` keeps the triangle splits alone.

The certificate weights are read from `Heilbronn/Nine/Data/c1_zero_lower/`; the trees and their
kernel checks are in `Heilbronn.Nine.C1.ZeroLowerTrees*`.
-/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Model

open Cert Cert.Expr Cover

/-- The eleven zero-lower words. The entry `r` of a point `X` at the anchor `V_v` (`O, C, D, F, H`)
records that `[V_v V_{v+j} X] > 0` exactly for `1 ≤ j ≤ r` (indices mod 5; see `wsign`). -/
def words : List (List ℕ) :=
  [[1, 0, 4, 3, 2], [1, 1, 3, 3, 2], [1, 2, 3, 2, 2], [2, 1, 0, 4, 3], [2, 1, 1, 3, 3],
    [2, 1, 2, 3, 2], [2, 2, 1, 2, 3], [2, 2, 2, 2, 2], [3, 2, 1, 0, 4], [3, 2, 1, 1, 3],
    [3, 2, 2, 1, 2]]

/-- The region of a word: `0` upper quadrilateral `HCDF`, `1` right cap, `2` top cap, `3` left
cap. -/
def cat (w : ℕ) : ℕ := if w = 0 then 1 else if w = 3 then 2 else if w = 8 then 3 else 0

/-- The entry `i` of the word `w`. -/
def wordAt (w i : ℕ) : ℕ := (words.getD w []).getD i 0

/-- The sign of `[VᵢVⱼX]` for a point `X` with word `w`: `[VᵢVⱼX] > 0` iff
`(j - i) mod 5 ≤ wᵢ`. -/
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

/-- The region row (`Comp.upper_row`, `Comp.right_row`, `Comp.top_row`, `Comp.left_row`) of the
free point `i` with word `w`, after `x - s, y - s`. -/
def pointFactors (w i : ℕ) : List Expr :=
  let x := v (4 + 2 * i)
  let y := v (5 + 2 * i)
  [x - k sQ, y - k sQ] ++
    (if cat w = 1 then [1 - x, v 2 - y - k sQ, x - v 1 - k sQ]
    else if cat w = 2 then [1 - x, 1 - y, x - v 3 - k sQ, y - v 2 - k sQ]
    else if cat w = 3 then [v 3 - x - k (8 / 41), 1 - y, y - v 0 - k (8 / 65), x - k (28 / 219)]
    else [k (65 / 73) - x, k (65 / 73) - y])

/-- The affine factors: the anchor bounds, the bounds on `f, d` forced by the top-cap count, the
right- and left-cap consequences, and the region rows of the free points. -/
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

/-- The quadratic costs (two upper, two right-cap or at least two top-cap points), placed before
the triangle costs. -/
def qcosts (ks : List ℕ) : List Expr :=
  (if cnt ks 0 = 2 then [1 - (v 0 - v 2) * (v 1 - v 3) - k (64 / 73)] else []) ++
  (if cnt ks 1 = 2 then [v 2 * (1 - v 1) - k (24 / 73)] else []) ++
  (if cnt ks 2 = 2 then [(1 - v 2) * (1 - v 3) - k (24 / 73)]
    else if 3 ≤ cnt ks 2 then [(1 - v 2) * (1 - v 3) - k (7 / 11)] else [])

/-- The cubic costs `dc(1 - c) - s` (a right-cap point) and `fh(1 - h) - s` (a left-cap point). -/
def cubics (ks : List ℕ) : List Expr :=
  (if 1 ≤ cnt ks 1 then [v 2 * v 1 * (1 - v 1) - k sQ] else []) ++
  (if 1 ≤ cnt ks 3 then [v 3 * v 0 * (1 - v 0) - k sQ] else [])

/-! ### Initial signs -/

/-- The sign of an increasing triple with at least two anchors. -/
def anchorSign (ks : List ℕ) (t : ℕ × ℕ × ℕ) : Option Bool :=
  if t.2.2 < 5 then some true
  else if t.2.1 < 5 then some (wsign (kw ks (t.2.2 - 5)) t.1 t.2.1)
  else none

/-- The upper pair rule for two points `P, Q` of `HCDF` with words `p, q` in different diagonal
sectors: the sign of `[V_v P Q]` at `v ∈ {1, 2, 3, 4}`. -/
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

/-- The initial sign of `[V_v X_a X_b]` (`a < b`): the radial rule (`Comp.radial_pair`), the
equal-word rules (`[O X_a X_b] > 0`; for a right-cap pair also the signs of `Comp.right_pair_signs`), the
upper pair rule. -/
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

/-- The initial signed triangles of the case. -/
def baseSigns (ks : List ℕ) : List SFact :=
  (lexTriples 9).filterMap (fun t => (anchorSign ks t).map fun sg => (t, sg)) ++
  freePairs.flatMap fun p => (List.range 5).filterMap fun v =>
    (pairSign ks p.1 p.2 v).map fun sg => ((v, p.1 + 5, p.2 + 5), sg)

/-- The three top-cap free points of the case (as point indices `5, …, 8`). -/
def caps (ks : List ℕ) : List ℕ :=
  ((List.range 4).filter fun i => cat (kw ks i) = 2).map (· + 5)

/-- The seeds of a three-top-cap case with inner cap point `T = caps[i]` and outer points `R, U`
(before removing the triangles already in `baseSigns`): every anchor and every other free point
lies on the positive side of `RU`, and `[DRT], [DUT] > 0 > [FRT], [FUT]`. -/
def seedRaw (ks : List ℕ) (i : ℕ) : List SFact :=
  let T := (caps ks).getD i 0
  let RU := (caps ks).filter (· ≠ T)
  let R := RU.getD 0 0
  let U := RU.getD 1 0
  ((List.range 5).map fun w => orient w R U true) ++
  (((List.range 4).map (· + 5)).filter (fun w => w ≠ R ∧ w ≠ U)).map (fun w => orient R U w true) ++
  [orient 2 R T true, orient 3 R T false, orient 2 U T true, orient 3 U T false]

/-- The seeds not already in the initial signs. -/
def seed (ks : List ℕ) (i : ℕ) : List SFact :=
  (seedRaw ks i).filter fun f => (lookup (baseSigns ks) f.1).isNone

/-- The four three-top-cap cases. -/
def topThreeCases : List (List ℕ) := [[3, 3, 3, 4], [3, 3, 3, 5], [3, 3, 3, 6], [3, 3, 3, 7]]

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

/-- The triangle splits alone (the orientation of `abc`, negative first); the other labels are
invalid. -/
def triBranches : List SFact → Split → List (List SFact)
  | _, .tri a b c => if a < b ∧ b < c ∧ c < 9 then signBranches (a, b, c) else [[]]
  | _, .three => [[]]

/-- The cover package of the case `ks`: its atoms with the extra signed triangles `fs` are the
factors, the quadratic costs, the triangle costs of the table `baseSigns ks ++ fs` (strengthened by
the certified inside counts among the free points) and the cubic costs. -/
def spec (ks : List ℕ) : Spec SFact Split :=
  tableSpec pt Package.bnd [5, 6, 7, 8] (factors ks ++ qcosts ks) (cubics ks) (baseSigns ks)
    (branches ks)

end Heilbronn.Nine.C1ZeroLower.Model
