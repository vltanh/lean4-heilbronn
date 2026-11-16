module

public import Heilbronn.Common.Cover

/-! # The certificate model of the two-side-upper package (`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_UPPER.md`)

Computable mirror of `docs/proof/nine/check_six_boundary_two_side_upper.py`, for the kernel check of the
cover (`Heilbronn.Common.Cover`):

* points `0, …, 8` are `A, B, C, X, D, F, Y, H, Q` (the hull octagon `V₀, …, V₇` and the upper
  point `Q`); the twelve variables `0, …, 11` are `a, h, b, c, d, f, x, y, z, w, r, t` (`pt`);
* `factors`: the 27 affine factors of the checker;
* the facts are signed triangles; `base` holds the 56 hull triangles (positive) and the three
  `HCDF` tests of `Q`; a split `vertex i` has one branch per value `v ∈ {1, …, 6}` of the radial
  word entry of `Q` at `V_i` consistent with the known facts (`branchFacts i v`: the signs of
  `[V_i V_{i+j} Q]`, positive iff `j ≤ v`);
* `atoms fs`: the factors, then for each of the 84 increasing triples (lexicographic) its cost
  strengthened by the certified inside count of `Q` (`3s` if `Q` is certified inside, else `s`),
  then the same costs at the plain threshold `s` (an unknown sign gives the atom `0`);
* `closedOK fs 1` (`sharpTest`): the sharp word `q* = (4,3,3,2,3,4,5,4)` is fully known.

The certificate weights are exported by `scripts/nine/six_two_side_upper/export.py` into
`data/nine/six_two_side_upper/`; the trees and their kernel checks are in
`Heilbronn.Nine.SixBoundary.TwoSideUpperTrees*`.
-/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoSideUpper.Model

open Cert Cert.Expr Cover

/-- The nine points as expressions in `a, h, b, c, d, f, x, y, z, w, r, t`. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, v 0)
  | 1 => (v 2, 0)
  | 2 => (v 3, 0)
  | 3 => (v 6, v 7)
  | 4 => (1, v 4)
  | 5 => (v 5, 1)
  | 6 => (v 8, v 9)
  | 7 => (0, v 1)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- The 27 affine factors of the checker (`FACTORS`). -/
def factors : List Expr :=
  [v 0 - k (7 / 50), v 2 - k (7 / 50), v 1 - k (1 / 2), v 3 - k (1 / 2), k (57 / 64) - v 1,
    k (57 / 64) - v 3, v 4 - v 0, v 1 - v 4, v 5 - v 2, v 3 - v 5, v 4 - v 5,
    v 1 - v 0 - k (7 / 64), v 3 - v 2 - k (7 / 64), 1 - v 6, 1 - v 9, v 6 - v 3 - k (7 / 64),
    v 9 - v 1 - k (7 / 64), v 4 - v 7 - k (7 / 64), v 5 - v 8 - k (7 / 64), v 7 - k (7 / 64),
    v 8 - k (7 / 64), v 10 - k (7 / 64), v 11 - k (7 / 64), k (57 / 64) - v 10,
    k (57 / 64) - v 11, v 4 - k (1 / 2), v 5 - k (1 / 2)]

/-- The occupancy bounds: `s` for no certified inside point, `3s` for one. -/
def bnd (n : ℕ) : ℚ := if n = 0 then 7 / 64 else 21 / 64

/-- The increasing index triples of `0, …, 8`, in lexicographic order. -/
def lexTriples : List (ℕ × ℕ × ℕ) :=
  (List.range 9).flatMap fun a => (List.range 9).flatMap fun b => (List.range 9).filterMap
    fun c => if a < b ∧ b < c then some (a, b, c) else none

/-- The initial facts: the hull triangles of the octagon and the three `HCDF` tests
`[H C Q] > 0`, `[C D Q] > 0`, `[F H Q] > 0`. -/
def base : List SFact :=
  lexTriples.filterMap (fun t => if t.2.2 < 8 then some (t, true) else none) ++
    [((2, 7, 8), false), ((2, 4, 8), true), ((5, 7, 8), true)]

/-- The cost of a signed triangle at the plain threshold `s`. -/
def plainAtom (f : SFact) : Expr :=
  (if f.2 then esarea (pt f.1.1) (pt f.1.2.1) (pt f.1.2.2)
    else k (-1) * esarea (pt f.1.1) (pt f.1.2.1) (pt f.1.2.2)) - k (7 / 64)

/-- The strengthened costs of the 84 triples (the atom `0` for an unknown sign). -/
def costs (tb : List SFact) : List Expr :=
  lexTriples.map fun t => match lookup tb t with
    | some sg => costAtom pt bnd (t, sg) (insideList tb [8] (t, sg)).length
    | none => k 0

/-- The plain costs of the 84 triples. -/
def plains (tb : List SFact) : List Expr :=
  lexTriples.map fun t => match lookup tb t with
    | some sg => plainAtom (t, sg)
    | none => k 0

/-- The atoms of the case with the extra facts `fs`. -/
def atoms (fs : List SFact) : List Expr :=
  factors ++ costs (base ++ fs) ++ plains (base ++ fs)

/-- The signed triangle of the ordered triple `(a, b, c)` with orientation `sg`, stored on the
sorted triple (flipped for an odd permutation). -/
def orient (a b c : ℕ) (sg : Bool) : SFact :=
  if a < b ∧ b < c then ((a, b, c), sg)
  else if b < c ∧ c < a then ((b, c, a), sg)
  else if c < a ∧ a < b then ((c, a, b), sg)
  else if b < a ∧ a < c then ((b, a, c), !sg)
  else if a < c ∧ c < b then ((a, c, b), !sg)
  else ((c, b, a), !sg)

/-- The signs at `V_i` of the word entry `val`: `[V_i V_{i+j} Q] > 0` iff `j ≤ val`. -/
def branchFacts (i val : ℕ) : List SFact :=
  (List.range 7).map fun j => orient i ((i + (j + 1)) % 8) 8 (decide (j + 1 ≤ val))

/-- The facts `b` agree with the table `tb` wherever both know a sign. -/
def consistent (tb b : List SFact) : Bool :=
  b.all fun f => match lookup tb f.1 with
    | some sg => sg == f.2
    | none => true

/-- The split labels: the word entry of `Q` at the vertex `V_i`. -/
inductive Split where
  | vertex (i : ℕ)

/-- The branches of a split: the word values `1, …, 6` consistent with the known facts (an
invalid vertex has one branch with no new fact). -/
def branches (fs : List SFact) : Split → List (List SFact)
  | .vertex i => if i < 8 then ((List.range 6).map (· + 1)).filterMap fun val =>
      if consistent (base ++ fs) (branchFacts i val) then some (branchFacts i val) else none
    else [[]]

/-- The sharp word `q*`. -/
def qStarL : List ℕ := [4, 3, 3, 2, 3, 4, 5, 4]

/-- All the signs of the sharp word are known. -/
def sharpTest (fs : List SFact) : Bool :=
  (List.range 8).all fun i => (branchFacts i (qStarL.getD i 0)).all fun f =>
    lookup (base ++ fs) f.1 == some f.2

/-- The cover package. -/
def spec : Spec SFact Split where
  atoms := atoms
  branches := branches
  closedOK fs tag := tag == 1 && sharpTest fs

end Heilbronn.Nine.SixBoundaryTwoSideUpper.Model
