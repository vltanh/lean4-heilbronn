module

public import Heilbronn.Common.Cover

/-! # The certificate model of the seven-boundary interior case

Computable model, for the kernel check of the cover (`Heilbronn.Common.Cover`), of the case of
`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` §5 in which both free points lie strictly inside the
anchor heptagon. It replaces the hand case analysis (left pair, right pair, mixed placements,
`docs/proof/nine/seven_boundary_mixed_{lower,above}_certificates.json`) by one cover over pairs of ray words,
found by linear programming (`scripts/nine/seven_b/`). Everything is indexed by natural numbers:

* points `0, …, 6` are the anchors `A, B, C, D, E, F, H` in counterclockwise heptagon order,
  `7, 8` the free points `P, Q`; the eleven variables `0, …, 10` are
  `a, h, b, c, d, e, f, p_x, p_y, q_x, q_y` (`pt`);
* `words`: the 57 ray words (`SEVEN_BOUNDARY_MIXED_LOWER.md` §2): `wsign w i j` is the truth of
  `[V_i V_j X] > 0` for a point `X` with word `w` (`j - i mod 7 ≤ r_i`);
* a *case* `ks` is the list of the word indices of its free points (`[p]` for one point, `[p, q]`
  for two); `baseSigns ks` are its known signed triangles (all anchor triples positive, and the
  anchor–anchor–free triples from the words); `factors` the box and order factors;
* `atoms ks fs`: the factors, the strengthened cost `±[abc] - bnd n` of every signed triangle of
  the table (`n` the number of free points certified inside), and the cut atoms of `fs`;
* facts are signed triangles (`Sum.inl`) or cut atoms (`Sum.inr e`, meaning `e ≥ 0`); the splits
  are `Split.tri a b c` (the orientation of `abc`) and `Split.cut i q` (`v_i ≤ q` or `v_i ≥ q`).

`badKind w` classifies the words excluded for a single point (the ears `ABH`, `ABC`, `CDE`, the
overlap `AHF ∩ HCF`, the upper triangle `HEF`) and `capPair p q` the pairs excluded by a
capacity-one triangle (`BCF`, `HCF`, `HBF`, `ACF`, `CDF`, `DEF`).
-/

@[expose] public section

namespace Heilbronn.Nine.SevenInterior.Model

open Cert Cert.Expr Cover

/-- The 57 ray words of a point inside the anchor heptagon, in lexicographic order. -/
def words : List (List ℕ) :=
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

/-- The entry `i` of the word `w`. -/
def wordAt (w i : ℕ) : ℕ := (words.getD w []).getD i 0

/-- The sign of `[V_i V_j X] > 0` for a point `X` with the word `w`: `(j - i) mod 7 ≤ r_i`. -/
def wsign (w i j : ℕ) : Bool := ((j + 7 - i) % 7).ble (wordAt w i)

/-- The word `w` puts its point strictly inside the counterclockwise triangle `abc`. -/
def winside (w : ℕ) (t : ℕ × ℕ × ℕ) : Bool :=
  wsign w t.1 t.2.1 && wsign w t.2.1 t.2.2 && wsign w t.2.2 t.1

/-- The single-point exclusion of a word: `1` the ear `ABH`, `2` the ear `ABC`, `3` the ear
`CDE`, `4` the overlap `AHF ∩ HCF`, `5` the upper triangle `HEF`, `0` none. -/
def badKind (w : ℕ) : ℕ :=
  if winside w (0, 1, 6) then 1 else if winside w (0, 1, 2) then 2
  else if winside w (2, 3, 4) then 3
  else if winside w (0, 5, 6) && winside w (2, 5, 6) then 4
  else if winside w (4, 5, 6) then 5 else 0

/-- The capacity-one triangles `BCF, HCF, HBF, ACF, CDF, DEF` (counterclockwise). -/
def capTris : List (ℕ × ℕ × ℕ) := [(1, 2, 5), (2, 5, 6), (1, 5, 6), (0, 2, 5), (2, 3, 5), (3, 4, 5)]

/-- Both words put their points inside one capacity-one triangle. -/
def capPair (p q : ℕ) : Bool := capTris.any fun t => winside p t && winside q t

/-! ### Points and atoms -/

/-- The nine points as expressions: `A = (0,a)`, `B = (b,0)`, `C = (c,0)`, `D = (1,d)`,
`E = (1,e)`, `F = (f,1)`, `H = (0,h)`, `P = (p_x,p_y)`, `Q = (q_x,q_y)`. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, v 0)
  | 1 => (v 2, 0)
  | 2 => (v 3, 0)
  | 3 => (1, v 4)
  | 4 => (1, v 5)
  | 5 => (v 6, 1)
  | 6 => (0, v 1)
  | 7 => (v 7, v 8)
  | 8 => (v 9, v 10)
  | _ => (0, 0)

/-- The box factors `v_i, 1 - v_i` and the order factors `h - a, c - b, e - d, f - b, c - f,
1/2 - f`. -/
def factors : List Expr :=
  [v 0, 1 - v 0, v 1, 1 - v 1, v 2, 1 - v 2, v 3, 1 - v 3, v 4, 1 - v 4, v 5, 1 - v 5,
    v 6, 1 - v 6, v 7, 1 - v 7, v 8, 1 - v 8, v 9, 1 - v 9, v 10, 1 - v 10,
    v 1 - v 0, v 3 - v 2, v 5 - v 4, v 6 - v 2, v 3 - v 6, k (1 / 2) - v 6]

/-- The occupancy bounds: `s = 7/64`, `3s`, and `102/125 ≤ (4 + 2√3)s` for `0, 1, ≥ 2`
certified inside points. -/
def bnd (n : ℕ) : ℚ := if n = 0 then 7 / 64 else if n = 1 then 21 / 64 else 102 / 125

/-- The increasing index triples of `0, …, 8`, in lexicographic order. -/
def lexTriples : List (ℕ × ℕ × ℕ) :=
  (List.range 9).flatMap fun a => (List.range 9).flatMap fun b => (List.range 9).filterMap
    fun c => if a < b ∧ b < c then some (a, b, c) else none

/-- The known sign of an increasing triple: anchor triples are positive; an anchor–anchor–free
triple has the sign given by the word of its free point. -/
def anchorSign (ks : List ℕ) (t : ℕ × ℕ × ℕ) : Option Bool :=
  if t.2.2 < 7 then some true
  else if t.2.1 < 7 then (ks[t.2.2 - 7]?).map fun w => wsign w t.1 t.2.1
  else none

/-- The initial signed triangles of the case `ks`. -/
def baseSigns (ks : List ℕ) : List SFact :=
  lexTriples.filterMap fun t => (anchorSign ks t).map fun sg => (t, sg)

/-- The free points of the case `ks`. -/
def free (ks : List ℕ) : List ℕ := (List.range ks.length).map (· + 7)

/-- A fact: a signed triangle, or an expression known to be nonnegative (a cut). -/
abbrev Fact := SFact ⊕ Expr

/-- The signed triangles of the facts. -/
def sgnFacts (fs : List Fact) : List SFact := fs.filterMap Sum.getLeft?

/-- The cut atoms of the facts. -/
def cutFacts (fs : List Fact) : List Expr := fs.filterMap Sum.getRight?

/-- The sign table of the case `ks` with the extra facts `fs`. -/
def table (ks : List ℕ) (fs : List Fact) : List SFact := baseSigns ks ++ sgnFacts fs

/-- All the atoms of the case `ks` with the extra facts `fs`. -/
def atoms (ks : List ℕ) (fs : List Fact) : List Expr :=
  factors ++ (table ks fs).map (fun f => costAtom pt bnd f (insideList (table ks fs) (free ks) f).length) ++
    cutFacts fs

/-! ### The cover package -/

/-- The split labels: the orientation of the triangle `abc`, or the cut `v_i ≤ q` / `v_i ≥ q`. -/
inductive Split where
  | tri (a b c : ℕ)
  | cut (i : ℕ) (q : ℚ)

/-- The children of a split. An invalid split has one child with no new fact. -/
def branches (ks : List ℕ) : List Fact → Split → List (List Fact)
  | _, .tri a b c =>
    if a < b ∧ b < c ∧ c < 7 + ks.length then (signBranches (a, b, c)).map (List.map Sum.inl)
    else [[]]
  | _, .cut i q => (cutBranches (v i) q).map (List.map Sum.inr)

/-- The cover package of the case `ks`. -/
def spec (ks : List ℕ) : Spec Fact Split where
  atoms := atoms ks
  branches := branches ks

end Heilbronn.Nine.SevenInterior.Model
