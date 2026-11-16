module

public import Heilbronn.Nine.SixBoundary.RadialCover

/-! # The certificate model of the triangular two-top cover

The triangular two-top certificates in the generic form `Heilbronn.Nine.SixRadial` (generated
from the certificate data):

* points `0, …, 8` are `A, B, C, D, X, F, H, P, Q` (the hull heptagon, the inner cap point `P`
  and the hexagon point `Q`); variables `0, …, 11` are `a, h, b, c, d, f, x_x, x_y, p_x, p_y, q_x, q_y`;
* `factors`: the 27 common affine factors; `lowerF`: the five factors of a lower `Q`;
  `c230F`: the four factors of the cell of the words `case230P`, `case230Q`;
* `base`: the 35 hull triangles, `P ∈ DXF` and `[DFQ] > 0`; `extra`: the costs
  (`hc - 4σ`, `W - 2σ`, `δ - 3σ` always, then `W - 4σ` for an upper and `hc - 7/11` for a lower
  `Q`, then the ears); the occupancy bounds `σ, 3σ, ρ = 49/60`;
* `cellFacts ip iq`: the signs of the words `wordsP[ip]`, `wordsQ[iq]` and their pair-line
  signs, with the extra factors of the cell;
* the enumerations of the words of `P` and `Q` are in
  `Heilbronn.Nine.SixBoundary.TwoTopTriangularEnum*`, the certificates (one per cell) in
  `Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees*`.
-/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- The nine points as expressions. -/
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

/-- The 27 common affine factors. -/
def factors : List Expr :=
  [v 0 - k (1 / 8),
    v 2 - k (1 / 8),
    v 1 - k (32 / 73),
    v 3 - k (32 / 73),
    1 - v 1,
    1 - v 3,
    v 4 - v 0,
    v 1 - v 4,
    v 5 - v 2,
    v 3 - v 5,
    v 4 - v 5,
    v 1 - v 0 - k (8 / 73),
    v 3 - v 2 - k (8 / 73),
    k (319 / 511) - v 4,
    k (3 / 7) - v 5,
    v 6 - v 5 - k (192 / 511),
    v 7 - v 4 - k (192 / 511),
    1 - v 6,
    1 - v 7,
    v 8 - v 5 - k (64 / 511),
    v 9 - v 4 - k (64 / 511),
    k (65 / 73) - v 8,
    k (65 / 73) - v 9,
    v 10 - k (8 / 73),
    v 11 - k (8 / 73),
    k (65 / 73) - v 10,
    k (65 / 73) - v 11]

/-- The five factors of a lower `Q`. -/
def lowerF : List Expr :=
  [v 1 - k (7 / 11),
    v 3 - k (7 / 11),
    v 3 - v 10 - k (16 / 73),
    v 1 - v 11 - k (16 / 73),
    k (65 / 73) - v 10 - v 11]

/-- The four factors of the cell of the words `case230P`, `case230Q` (`wordsP[4]`,
`wordsQ[22]`). -/
def c230F : List Expr :=
  [k (11 / 60) - v 5,
    v 6 - v 5 - k (49 / 60),
    v 7 - k (2234 / 2745),
    v 1 - v 0 - k (480 / 803)]

/-- The hull triangles of the heptagon. -/
def hull : List SFact := (lexTriples 7).map (fun t => (t, true))

/-- The initial signs: the hull, `P ∈ DXF` and `[DFQ] > 0`. -/
def base : List SFact :=
  hull ++ [((3, 4, 7), true), ((4, 5, 7), true), ((3, 5, 7), false), ((3, 5, 8), true)]

/-- The initial signs of the enumeration of the words of `P`. -/
def baseP : List SFact := hull ++ [((3, 4, 7), true), ((4, 5, 7), true), ((3, 5, 7), false)]

/-- The initial signs of the enumeration of the words of `Q`. -/
def baseQ : List SFact := hull ++ [((3, 5, 8), true)]

/-- The occupancy bounds `σ`, `3σ`, `ρ`. -/
def bnd (m : ℕ) : ℚ := if m = 0 then 8 / 73 else if m = 1 then 24 / 73 else 49 / 60

/-- `W = [HCDF] = 1 - (h-d)(c-f)`. -/
def eW : Expr := 1 - (v 1 - v 4) * (v 3 - v 5)

/-- `hc`. -/
def eHC : Expr := v 1 * v 3

/-- `δ = (1-d)(1-f)`. -/
def eDelta : Expr := (1 - v 4) * (1 - v 5)

/-- The doubled area of the triangle `t`. -/
def tri (t : ℕ × ℕ × ℕ) : Expr := esarea (pt t.1) (pt t.2.1) (pt t.2.2)

/-- The appended costs: `hc - 4σ`, `W - 2σ`, `δ - 3σ`, then `W - 4σ` for an upper and
`hc - 7/11` for a lower `Q`, then the six ears. -/
def extra (tb : List SFact) : List Expr :=
  [eHC - k (32 / 73), eW - k (16 / 73), eDelta - k (24 / 73)] ++
  (match lookup tb (2, 6, 8) with
    | some false => [eW - k (32 / 73)]
    | some true => [eHC - k (7 / 11)]
    | none => [k 0]) ++
  [(0, 1, 6), (0, 1, 2), (1, 2, 3), (2, 3, 5), (3, 5, 6), (0, 5, 6)].map fun t => k (13 / 16) - tri t

/-- The package. -/
def pkg : Pkg := ⟨7, 9, pt, factors, base, bnd, [7, 8], extra⟩

/-- The enumeration package of `P`. -/
def pkgP : Pkg := ⟨7, 8, pt, [], baseP, bnd, [7], fun _ => []⟩

/-- The enumeration package of `Q`. -/
def pkgQ : Pkg := ⟨7, 9, pt, [], baseQ, bnd, [8], fun _ => []⟩

/-- The five possible words of `P`. -/
def wordsP : List (List ℕ) :=
  [[3, 2, 1, 1, 5, 5, 4],
    [3, 2, 2, 1, 4, 5, 4],
    [3, 3, 2, 1, 3, 5, 4],
    [4, 3, 2, 1, 1, 5, 5],
    [4, 3, 2, 1, 2, 5, 4]]

/-- The 52 hexagon words of `Q`. -/
def wordsQ : List (List ℕ) :=
  [[1, 1, 5, 5, 4, 3, 2],
    [1, 2, 5, 4, 4, 3, 2],
    [1, 3, 5, 4, 3, 3, 2],
    [1, 4, 5, 4, 3, 2, 2],
    [1, 5, 5, 4, 3, 2, 1],
    [2, 1, 1, 5, 5, 4, 3],
    [2, 1, 2, 5, 4, 4, 3],
    [2, 1, 3, 5, 4, 3, 3],
    [2, 1, 4, 5, 4, 3, 2],
    [2, 2, 1, 4, 5, 4, 3],
    [2, 2, 2, 4, 4, 4, 3],
    [2, 2, 3, 4, 4, 3, 3],
    [2, 2, 4, 4, 4, 3, 2],
    [2, 3, 2, 4, 3, 4, 3],
    [2, 3, 3, 4, 3, 3, 3],
    [2, 3, 4, 4, 3, 3, 2],
    [2, 4, 3, 4, 3, 2, 3],
    [2, 4, 4, 4, 3, 2, 2],
    [2, 5, 4, 4, 3, 2, 1],
    [3, 2, 1, 2, 5, 4, 4],
    [3, 2, 1, 3, 5, 4, 3],
    [3, 2, 2, 2, 4, 4, 4],
    [3, 2, 2, 3, 4, 4, 3],
    [3, 2, 3, 2, 4, 3, 4],
    [3, 2, 3, 3, 4, 3, 3],
    [3, 2, 4, 3, 4, 3, 2],
    [3, 3, 2, 2, 3, 4, 4],
    [3, 3, 2, 3, 3, 4, 3],
    [3, 3, 3, 2, 3, 3, 4],
    [3, 3, 3, 3, 3, 3, 3],
    [3, 3, 4, 3, 3, 3, 2],
    [3, 4, 3, 2, 3, 2, 4],
    [3, 4, 3, 3, 3, 2, 3],
    [3, 4, 4, 3, 3, 2, 2],
    [3, 5, 4, 3, 3, 2, 1],
    [4, 3, 2, 2, 1, 4, 5],
    [4, 3, 2, 2, 2, 4, 4],
    [4, 3, 2, 3, 2, 4, 3],
    [4, 3, 3, 2, 1, 3, 5],
    [4, 3, 3, 2, 2, 3, 4],
    [4, 3, 3, 3, 2, 3, 3],
    [4, 3, 4, 3, 2, 3, 2],
    [4, 4, 3, 2, 1, 2, 5],
    [4, 4, 3, 2, 2, 2, 4],
    [4, 4, 3, 3, 2, 2, 3],
    [4, 4, 4, 3, 2, 2, 2],
    [4, 5, 4, 3, 2, 2, 1],
    [5, 4, 3, 2, 1, 1, 5],
    [5, 4, 3, 2, 2, 1, 4],
    [5, 4, 3, 3, 2, 1, 3],
    [5, 4, 4, 3, 2, 1, 2],
    [5, 5, 4, 3, 2, 1, 1]]

/-- The pair-line signs (`sarea_sign_of_radialWord`): `[V_v P Q]` has the sign of `q_v - p_v`. -/
def pairFacts (wp wq : List ℕ) : List SFact :=
  (List.range 7).filterMap fun v =>
    if wp.getD v 0 = wq.getD v 0 then none else some ((v, 7, 8), decide (wp.getD v 0 < wq.getD v 0))

/-- The initial facts of the cell of the words `wordsP[ip]`, `wordsQ[iq]`. -/
def cellFacts (ip iq : ℕ) : List SignOrCut :=
  (wordFacts 7 7 (wordsP.getD ip []) ++ wordFacts 7 8 (wordsQ.getD iq []) ++
      pairFacts (wordsP.getD ip []) (wordsQ.getD iq [])).map Sum.inl ++
    (if (wordsQ.getD iq []).getD 6 0 < 3 then lowerF.map Sum.inr else []) ++
    (if ip = 4 ∧ iq = 22 then c230F.map Sum.inr else [])

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
