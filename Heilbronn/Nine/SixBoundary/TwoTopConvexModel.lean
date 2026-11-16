module

public import Heilbronn.Nine.SixBoundary.RadialCover

/-! # The certificate model of the convex two-top cover

The convex two-top certificates in the generic form `Heilbronn.Nine.SixRadial` (generated from
the certificate data):

* points `0, …, 8` are `A, B, C, D, E, G, F, H, O` (the hull octagon and `O`); variables
  `0, …, 11` are `a, h, b, c, d, f, e_x, e_y, g_x, g_y, x, y`;
* `factors`: the 31 affine factors; `base`: the 56 hull triangles and `[DFO] > 0` (`w₃ ≥ 3`);
  `extra`: the nine costs `δ - 4σ`, `hc - 4σ | 7/11`, `W - 4σ | 2σ` (by the sign of `[CHO]`)
  and `13/16 - [ear]`;
* `Heilbronn.Nine.SixBoundary.TwoTopConvexEnum`: the enumeration of the 94 radial words of `O`;
* the certificates (one per theorem) are in `Heilbronn.Nine.SixBoundary.TwoTopConvexTrees*`.
-/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- The nine points as expressions. -/
def pt : ℕ → Expr × Expr
  | 0 => (0, v 0)
  | 1 => (v 2, 0)
  | 2 => (v 3, 0)
  | 3 => (1, v 4)
  | 4 => (v 6, v 7)
  | 5 => (v 8, v 9)
  | 6 => (v 5, 1)
  | 7 => (0, v 1)
  | 8 => (v 10, v 11)
  | _ => (0, 0)

/-- The 31 affine factors. -/
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
    v 4 - k (1 / 8),
    v 5 - k (1 / 8),
    k (255 / 511) - v 4,
    k (17 / 50) - v 5,
    v 1 - v 0 - k (400 / 1241),
    v 3 - v 2 - k (56 / 255),
    v 6 - v 5 - k (64 / 511),
    v 7 - v 4 - k (64 / 511),
    1 - v 6,
    1 - v 7,
    v 8 - v 5 - k (64 / 511),
    v 9 - v 4 - k (64 / 511),
    1 - v 8,
    1 - v 9,
    v 6 - v 8 - k (8 / 73),
    v 9 - v 7 - k (8 / 73),
    v 10 - k (8 / 73),
    k (65 / 73) - v 10,
    v 11 - k (8 / 73),
    k (65 / 73) - v 11]

/-- The hull triangles (positive) and `[DFO] > 0`. -/
def base : List SFact := (lexTriples 8).map (fun t => (t, true)) ++ [((3, 6, 8), true)]

/-- The occupancy bounds `σ`, `3σ`. -/
def bnd (m : ℕ) : ℚ := if m = 0 then 8 / 73 else 24 / 73

/-- `W = [HCDF] = 1 - (h-d)(c-f)`. -/
def eW : Expr := 1 - (v 1 - v 4) * (v 3 - v 5)

/-- `hc`. -/
def eHC : Expr := v 1 * v 3

/-- `δ = (1-d)(1-f)`. -/
def eDelta : Expr := (1 - v 4) * (1 - v 5)

/-- The doubled area of the triangle `t`. -/
def tri (t : ℕ × ℕ × ℕ) : Expr := esarea (pt t.1) (pt t.2.1) (pt t.2.2)

/-- The nine costs: `δ - 4σ`, `hc - 4σ | 7/11`, `W - 4σ | 2σ` (by the sign of `[CHO]`),
`13/16 - [ear]`. -/
def extra (tb : List SFact) : List Expr :=
  [eDelta - k (32 / 73)] ++
  (match lookup tb (2, 7, 8) with
    | some false => [eHC - k (32 / 73), eW - k (32 / 73)]
    | some true => [eHC - k (7 / 11), eW - k (16 / 73)]
    | none => [k 0, k 0]) ++
  [(0, 1, 7), (0, 1, 2), (1, 2, 3), (2, 3, 6), (3, 6, 7), (0, 6, 7)].map fun t => k (13 / 16) - tri t

/-- The package. -/
def pkg : Pkg := ⟨8, 9, pt, factors, base, bnd, [8], extra⟩

/-- The 94 words of `O`, in lexicographic order. -/
def words : List (List ℕ) :=
  [[1, 1, 6, 6, 5, 4, 3, 2],
    [1, 2, 6, 5, 5, 4, 3, 2],
    [1, 3, 6, 5, 4, 4, 3, 2],
    [1, 4, 6, 5, 4, 3, 3, 2],
    [1, 5, 6, 5, 4, 3, 2, 2],
    [1, 6, 6, 5, 4, 3, 2, 1],
    [2, 1, 1, 6, 6, 5, 4, 3],
    [2, 1, 2, 6, 5, 5, 4, 3],
    [2, 1, 3, 6, 5, 4, 4, 3],
    [2, 1, 4, 6, 5, 4, 3, 3],
    [2, 1, 5, 6, 5, 4, 3, 2],
    [2, 2, 1, 5, 6, 5, 4, 3],
    [2, 2, 2, 5, 5, 5, 4, 3],
    [2, 2, 3, 5, 5, 4, 4, 3],
    [2, 2, 4, 5, 5, 4, 3, 3],
    [2, 2, 5, 5, 5, 4, 3, 2],
    [2, 3, 2, 5, 4, 5, 4, 3],
    [2, 3, 3, 5, 4, 4, 4, 3],
    [2, 3, 4, 5, 4, 4, 3, 3],
    [2, 3, 5, 5, 4, 4, 3, 2],
    [2, 4, 3, 5, 4, 3, 4, 3],
    [2, 4, 4, 5, 4, 3, 3, 3],
    [2, 4, 5, 5, 4, 3, 3, 2],
    [2, 5, 4, 5, 4, 3, 2, 3],
    [2, 5, 5, 5, 4, 3, 2, 2],
    [2, 6, 5, 5, 4, 3, 2, 1],
    [3, 2, 1, 3, 6, 5, 4, 4],
    [3, 2, 1, 4, 6, 5, 4, 3],
    [3, 2, 2, 3, 5, 5, 4, 4],
    [3, 2, 2, 4, 5, 5, 4, 3],
    [3, 2, 3, 3, 5, 4, 4, 4],
    [3, 2, 3, 4, 5, 4, 4, 3],
    [3, 2, 4, 3, 5, 4, 3, 4],
    [3, 2, 4, 4, 5, 4, 3, 3],
    [3, 2, 5, 4, 5, 4, 3, 2],
    [3, 3, 2, 3, 4, 5, 4, 4],
    [3, 3, 2, 4, 4, 5, 4, 3],
    [3, 3, 3, 3, 4, 4, 4, 4],
    [3, 3, 3, 4, 4, 4, 4, 3],
    [3, 3, 4, 3, 4, 4, 3, 4],
    [3, 3, 4, 4, 4, 4, 3, 3],
    [3, 3, 5, 4, 4, 4, 3, 2],
    [3, 4, 3, 3, 4, 3, 4, 4],
    [3, 4, 3, 4, 4, 3, 4, 3],
    [3, 4, 4, 3, 4, 3, 3, 4],
    [3, 4, 4, 4, 4, 3, 3, 3],
    [3, 4, 5, 4, 4, 3, 3, 2],
    [3, 5, 4, 3, 4, 3, 2, 4],
    [3, 5, 4, 4, 4, 3, 2, 3],
    [3, 5, 5, 4, 4, 3, 2, 2],
    [3, 6, 5, 4, 4, 3, 2, 1],
    [4, 3, 2, 3, 2, 5, 4, 5],
    [4, 3, 2, 3, 3, 5, 4, 4],
    [4, 3, 2, 4, 3, 5, 4, 3],
    [4, 3, 3, 3, 2, 4, 4, 5],
    [4, 3, 3, 3, 3, 4, 4, 4],
    [4, 3, 3, 4, 3, 4, 4, 3],
    [4, 3, 4, 3, 2, 4, 3, 5],
    [4, 3, 4, 3, 3, 4, 3, 4],
    [4, 3, 4, 4, 3, 4, 3, 3],
    [4, 3, 5, 4, 3, 4, 3, 2],
    [4, 4, 3, 3, 2, 3, 4, 5],
    [4, 4, 3, 3, 3, 3, 4, 4],
    [4, 4, 3, 4, 3, 3, 4, 3],
    [4, 4, 4, 3, 2, 3, 3, 5],
    [4, 4, 4, 3, 3, 3, 3, 4],
    [4, 4, 4, 4, 3, 3, 3, 3],
    [4, 4, 5, 4, 3, 3, 3, 2],
    [4, 5, 4, 3, 2, 3, 2, 5],
    [4, 5, 4, 3, 3, 3, 2, 4],
    [4, 5, 4, 4, 3, 3, 2, 3],
    [4, 5, 5, 4, 3, 3, 2, 2],
    [4, 6, 5, 4, 3, 3, 2, 1],
    [5, 4, 3, 3, 2, 1, 4, 6],
    [5, 4, 3, 3, 2, 2, 4, 5],
    [5, 4, 3, 3, 3, 2, 4, 4],
    [5, 4, 3, 4, 3, 2, 4, 3],
    [5, 4, 4, 3, 2, 1, 3, 6],
    [5, 4, 4, 3, 2, 2, 3, 5],
    [5, 4, 4, 3, 3, 2, 3, 4],
    [5, 4, 4, 4, 3, 2, 3, 3],
    [5, 4, 5, 4, 3, 2, 3, 2],
    [5, 5, 4, 3, 2, 1, 2, 6],
    [5, 5, 4, 3, 2, 2, 2, 5],
    [5, 5, 4, 3, 3, 2, 2, 4],
    [5, 5, 4, 4, 3, 2, 2, 3],
    [5, 5, 5, 4, 3, 2, 2, 2],
    [5, 6, 5, 4, 3, 2, 2, 1],
    [6, 5, 4, 3, 2, 1, 1, 6],
    [6, 5, 4, 3, 2, 2, 1, 5],
    [6, 5, 4, 3, 3, 2, 1, 4],
    [6, 5, 4, 4, 3, 2, 1, 3],
    [6, 5, 5, 4, 3, 2, 1, 2],
    [6, 6, 5, 4, 3, 2, 1, 1]]

/-- The initial facts of the word `words[i]`. -/
def leafFacts (i : ℕ) : List SignOrCut := (wordFacts 8 8 (words.getD i [])).map Sum.inl

/-- The excluded branches of word 31: `h-a ≤ 11/20`, `h-a ≥ 2/3`, `g_x-f ≤ 11/20`, `f ≥ 1/4`,
`c ≤ 2/3`, `g_y ≤ h` (as nonnegative expressions). -/
def res31 : List Expr :=
  [k (11 / 20) - (v 1 - v 0), v 1 - v 0 - k (2 / 3), k (11 / 20) - (v 8 - v 5), v 5 - k (1 / 4),
    k (2 / 3) - v 3, v 1 - v 9]

end Heilbronn.Nine.SixBoundaryTwoTopConvex.Model
