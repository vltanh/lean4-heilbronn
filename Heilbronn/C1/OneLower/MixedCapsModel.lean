module

public import Heilbronn.C1.OneLower.ModelB

/-! # The certificate model of `hand/C1_ONE_LOWER_MIXED_CAPS.md` (Theorem 1)

Computable mirror of `hand/check_c1_one_lower_mixed_caps.py`. The nine points are
`O, C, D, F, H, X, Y, L, Q` (the zero-lower points `C1ZeroLower.Model.pt`, variables
`h, c, d, f, x₀, y₀, …, x₃, y₃`). A case key `(kind, i, j)` has `kind = 0, 1, 2` for the classes
`RT, RL, TL`, lower word `i` and upper word `j`. The five-anchor words of the four free points are
`words key`; the initial signs are `hullTable 5 (words key)` (two anchors and a free point by its
word; an anchor and two free points by the radial rule) and `[XYL] > 0`.

The facts of a leaf are signed triangles; a fact with first index `9` records the scalar cut
`q_x ≤ 5/8` (`false`) or `q_x ≥ 5/8` (`true`). The atoms are
`factors key ++ cutAtoms fs ++ qcosts key ++ costs (baseSigns key ++ realFacts fs) ++ cubics key`.
The two `inconsistent` leaves are `.closed 0`, `.closed 1`: a line `ab` whose sign alternates on
four hull vertices `A, B, C, D` (convex by their recorded areas) is impossible (`quadTest`). The
certificates are exported by `scripts/c1_one_lower_b/mixed_caps.py` and checked in
`Heilbronn.C1.OneLower.MixedCapsTrees`.
-/

@[expose] public section

namespace Heilbronn.C1OneLowerMixedCaps.Model

open Cert Cert.Expr Cover C1OneLowerB

/-- The cap words `(1,0,4,3,2)` (right), `(2,1,0,4,3)` (top), `(3,2,1,0,4)` (left). -/
def capW : ℕ → List ℕ
  | 0 => [1, 0, 4, 3, 2]
  | 1 => [2, 1, 0, 4, 3]
  | _ => [3, 2, 1, 0, 4]

/-- The caps of `X, Y` in each class: `RT = (right, top)`, `RL = (right, left)`, `TL = (top, left)`. -/
def kindCaps : ℕ → ℕ × ℕ
  | 0 => (0, 1)
  | 1 => (0, 2)
  | _ => (1, 2)

/-- The three lower words. -/
def lowerW : List (List ℕ) := [[1, 3, 3, 2, 1], [2, 3, 2, 2, 1], [3, 3, 2, 1, 1]]

/-- The eight upper words. -/
def upperW : List (List ℕ) :=
  [[1, 1, 3, 3, 2], [1, 2, 3, 2, 2], [2, 1, 1, 3, 3], [2, 1, 2, 3, 2], [2, 2, 1, 2, 3],
    [2, 2, 2, 2, 2], [3, 2, 1, 1, 3], [3, 2, 2, 1, 2]]

/-- The words of `X, Y, L, Q`. -/
def words (key : ℕ × ℕ × ℕ) : List (List ℕ) :=
  [capW (kindCaps key.1).1, capW (kindCaps key.1).2, lowerW.getD key.2.1 [],
    upperW.getD key.2.2 []]

/-- The initial signs of the case. -/
def baseSigns (key : ℕ × ℕ × ℕ) : List SFact := hullTable 5 (words key) ++ [((5, 6, 7), true)]

/-- The class has a top-cap point. -/
def hasT (kind : ℕ) : Bool := kind != 1
/-- The class has a right-cap point. -/
def hasR (kind : ℕ) : Bool := kind != 2
/-- The class has a left-cap point. -/
def hasL (kind : ℕ) : Bool := kind != 0

/-- The affine factors of the cap point `(v x, v y)` in the cap `cat` of the class `kind`. -/
def capFactors (kind cat x y : ℕ) : List Expr :=
  [v x - k (8 / 73), v y - k (8 / 73)] ++
  (if cat = 0 then
    [1 - v x, v 2 - v y - k (if kind = 1 then 8 / 41 else 8 / 49), v x - v 1 - k (8 / 65),
      v y - k (28 / 219)]
  else if cat = 1 then
    [1 - v x, 1 - v y, v x - v 3 - k (8 / 41), v y - v 2 - k (if kind = 2 then 8 / 41 else 8 / 65)]
  else
    [v 3 - v x - k (8 / 41), 1 - v y, v y - v 0 - k (8 / 65), v x - k (28 / 219)])

/-- The affine factors (checker `factors`, with the whole-word strengthening (15) of the cases
`(kind, 1, 3)`, `(kind, 1, 5)`). -/
def factors (key : ℕ × ℕ × ℕ) : List Expr :=
  [v 0 - k (24 / 73), v 1 - k (24 / 73), 1 - v 0, 1 - v 1, v 2 - k (8 / 73), k (65 / 73) - v 2,
    v 3 - k (8 / 73), k (65 / 73) - v 3, v 0 - v 2, v 1 - v 3, v 2 - v 3, v 2 - k (32 / 73)] ++
  (if hasT key.1 then [k (67 / 100) - v 3, k (57 / 65) - v 2] else []) ++
  (if hasR key.1 then [v 1 - k (1 / 7), k (6 / 7) - v 1] else []) ++
  (if hasL key.1 then [v 3 - k (32 / 73), v 0 - k (1 / 7), k (6 / 7) - v 0] else []) ++
  capFactors key.1 (kindCaps key.1).1 4 5 ++ capFactors key.1 (kindCaps key.1).2 6 7 ++
  [v 8 - k (8 / 73), v 9 - k (8 / 73), v 1 - v 8 - k (16 / 73), v 0 - v 9 - k (16 / 73),
    1 - v 8 - v 9 - k (8 / 73), v 10 - k (8 / 73), v 11 - k (8 / 73), k (65 / 73) - v 10,
    k (65 / 73) - v 11] ++
  (if key.2.1 = 1 ∧ (key.2.2 = 3 ∨ key.2.2 = 5) then [v 0 - k (49 / 60), k (803 / 1920) - v 3]
    else [])

/-- The quadratic costs (checker `costs`, before the triangle costs). -/
def qcosts (key : ℕ × ℕ × ℕ) : List Expr :=
  [v 0 * v 1 - k (24 / 73), 1 - (v 0 - v 2) * (v 1 - v 3) - k (32 / 73),
    k (41 / 73) - esarea (pt 2) (pt 3) (pt 4),
    k (if key.1 = 1 then 36 / 49 else 67 / 100) - esarea (pt 0) (pt 3) (pt 4)] ++
  (if hasL key.1 then [k (41 / 73) - esarea (pt 1) (pt 2) (pt 3)] else []) ++
  (if hasT key.1 then
    [k (163 / 219) - esarea (pt 1) (pt 2) (pt (if key.1 = 0 then 6 else 5)),
      k (163 / 219) - esarea (pt 3) (pt 4) (pt (if key.1 = 0 then 6 else 5))] else [])
where
  /-- The zero-lower points. -/
  pt := C1ZeroLower.Model.pt

/-- The cubic costs (8). -/
def cubics (key : ℕ × ℕ × ℕ) : List Expr :=
  (if hasR key.1 then [v 2 * v 1 * (1 - v 1) - k (8 / 73)] else []) ++
  (if hasL key.1 then [v 3 * v 0 * (1 - v 0) - k (8 / 73)] else [])

/-- A fact recording the cut on `q_x`. -/
def isCut (f : SFact) : Bool := f.1.1 == 9

/-- The cut factors of the path: `q_x - 5/8` or `5/8 - q_x`. -/
def cutAtoms (fs : List SFact) : List Expr :=
  (fs.filter isCut).map fun f => if f.2 then v 10 - k (5 / 8) else k (5 / 8) - v 10

/-- The signed triangles of the path. -/
def realFacts (fs : List SFact) : List SFact := fs.filter fun f => !isCut f

/-- All the atoms of a leaf. -/
def atoms (key : ℕ × ℕ × ℕ) (fs : List SFact) : List Expr :=
  let tb := baseSigns key ++ realFacts fs
  factors key ++ cutAtoms fs ++ qcosts key ++
    tb.map (fun f => costAtom C1ZeroLower.Model.pt C1ZeroLower.Model.bnd f (insideList tb [5, 6, 7, 8] f).length) ++
    cubics key

/-- The split labels: the orientation of a triangle, or the cut `q_x = 5/8`. -/
inductive MSplit where
  | tri (a b c : ℕ)
  | cut

/-- The children of a split. -/
def branches : List SFact → MSplit → List (List SFact)
  | _, .tri a b c => if a < b ∧ b < c ∧ c < 9 then signBranches (a, b, c) else [[]]
  | _, .cut => [[((9, 0, 0), false)], [((9, 0, 0), true)]]

/-- The line `ab` has alternating signs on `A, B, C, D` (negative first), and `A, B, C, D` are in
convex position (all four triangles recorded positive). -/
def quadTest (tb : List SFact) (a b A B C D : ℕ) : Bool :=
  orientedLookup tb a b A == some false && orientedLookup tb a b B == some true &&
    orientedLookup tb a b C == some false && orientedLookup tb a b D == some true &&
    orientedLookup tb A B C == some true && orientedLookup tb A B D == some true &&
    orientedLookup tb A C D == some true && orientedLookup tb B C D == some true

/-- The two closed leaves: the line `YQ` on `O, C, X, D`, the line `LQ` on `C, X, D, Y`. -/
def closedOK (key : ℕ × ℕ × ℕ) (fs : List SFact) : ℕ → Bool
  | 0 => quadTest (baseSigns key ++ realFacts fs) 6 8 0 1 5 2
  | 1 => quadTest (baseSigns key ++ realFacts fs) 7 8 1 5 2 6
  | _ => false

/-- The cover package of the case. -/
def spec (key : ℕ × ℕ × ℕ) : Spec SFact MSplit where
  atoms := atoms key
  branches := branches
  closedOK := closedOK key

end Heilbronn.C1OneLowerMixedCaps.Model
