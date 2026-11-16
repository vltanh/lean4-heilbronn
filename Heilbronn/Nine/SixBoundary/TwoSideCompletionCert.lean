module

public import Heilbronn.Common.CertNotation
public import Heilbronn.Common.DataReader

/-! # Certificates for the four bad quadrants of `SIX_BOUNDARY_TWO_SIDE_COMPLETION.md` (5)

In the variables `a, h, b, c, d, f, x, y, z, w, r, t` (`0, …, 11`; `X = (x, y)` in the cap
`CD(1,0)`, `Y = (z, w)` in the cap `FH(0,1)`, `Q = (r, t)` in `T₀ = (0,0)HC`), each quadrant of
`Q` relative to `(b, a)` in which both projection conditions (3), (4) fail is excluded by a cubic
certificate (found by linear programming, `scripts/nine/six_two_side_completion/search.py`) on the
atoms: the 22 affine factors of the setting, the two quadrant signs, and fourteen doubled-area
costs `±[T] - 7/64` (`ABC, ABH, BCX, AHY, CDX, FHY, HDF, CDF, AHQ, BCQ, HCQ, AQX, BQY, ABQ`, with
`AQX` and `BQY` signed by the quadrant). They replace the scalar arguments of Sections 2-4 and
Lemma 3 of the manuscript. The weights are in `data/nine/six_two_side_completion/`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundaryTwoSideCompletion.QuadCert

open Cert Cert.Expr

/-- The atoms of the quadrant `t > a`, `r > b`. -/
def qIAtoms : List Expr :=
  [v 0,
  v 1 - v 0,
  1 - v 1,
  v 2,
  v 3 - v 2,
  1 - v 3,
  v 4 - v 0,
  v 1 - v 4,
  v 5 - v 2,
  v 3 - v 5,
  1 - v 6,
  v 6 - v 3,
  v 7,
  v 4 - v 7,
  1 - v 9,
  v 9 - v 1,
  v 8,
  v 5 - v 8,
  v 10,
  v 11,
  v 3 - v 10,
  v 1 - v 11,
  v 11 - v 0,
  v 10 - v 2,
  v 0 * (v 3 - v 2) - k (7 / 64),
  v 2 * (v 1 - v 0) - k (7 / 64),
  (v 3 - v 2) * v 7 - k (7 / 64),
  (v 1 - v 0) * v 8 - k (7 / 64),
  k (-1) * ((1 - v 3) * (v 7 - 0) - (v 4 - 0) * (v 6 - v 3)) - k (7 / 64),
  k (-1) * ((0 - v 5) * (v 9 - 1) - (v 1 - 1) * (v 8 - v 5)) - k (7 / 64),
  1 * (1 - v 1) - (v 4 - v 1) * (v 5 - 0) - k (7 / 64),
  (1 - v 3) * 1 - (v 4 - 0) * (v 5 - v 3) - k (7 / 64),
  (v 1 - v 0) * v 10 - k (7 / 64),
  (v 3 - v 2) * v 11 - k (7 / 64),
  k (-1) * ((v 3 - 0) * (v 11 - v 1) - (0 - v 1) * (v 10 - 0)) - k (7 / 64),
  (v 10 - 0) * (v 7 - v 0) - (v 11 - v 0) * (v 6 - 0) - k (7 / 64),
  k (-1) * ((v 10 - v 2) * (v 9 - 0) - (v 11 - 0) * (v 8 - v 2)) - k (7 / 64),
  (v 2 - 0) * (v 11 - v 0) - (0 - v 0) * (v 10 - 0) - k (7 / 64)]

/-- The atoms of the quadrant `t > a`, `r < b`. -/
def qM1Atoms : List Expr :=
  [v 0,
  v 1 - v 0,
  1 - v 1,
  v 2,
  v 3 - v 2,
  1 - v 3,
  v 4 - v 0,
  v 1 - v 4,
  v 5 - v 2,
  v 3 - v 5,
  1 - v 6,
  v 6 - v 3,
  v 7,
  v 4 - v 7,
  1 - v 9,
  v 9 - v 1,
  v 8,
  v 5 - v 8,
  v 10,
  v 11,
  v 3 - v 10,
  v 1 - v 11,
  v 11 - v 0,
  v 2 - v 10,
  v 0 * (v 3 - v 2) - k (7 / 64),
  v 2 * (v 1 - v 0) - k (7 / 64),
  (v 3 - v 2) * v 7 - k (7 / 64),
  (v 1 - v 0) * v 8 - k (7 / 64),
  k (-1) * ((1 - v 3) * (v 7 - 0) - (v 4 - 0) * (v 6 - v 3)) - k (7 / 64),
  k (-1) * ((0 - v 5) * (v 9 - 1) - (v 1 - 1) * (v 8 - v 5)) - k (7 / 64),
  1 * (1 - v 1) - (v 4 - v 1) * (v 5 - 0) - k (7 / 64),
  (1 - v 3) * 1 - (v 4 - 0) * (v 5 - v 3) - k (7 / 64),
  (v 1 - v 0) * v 10 - k (7 / 64),
  (v 3 - v 2) * v 11 - k (7 / 64),
  k (-1) * ((v 3 - 0) * (v 11 - v 1) - (0 - v 1) * (v 10 - 0)) - k (7 / 64),
  (v 10 - 0) * (v 7 - v 0) - (v 11 - v 0) * (v 6 - 0) - k (7 / 64),
  (v 10 - v 2) * (v 9 - 0) - (v 11 - 0) * (v 8 - v 2) - k (7 / 64),
  (v 2 - 0) * (v 11 - v 0) - (0 - v 0) * (v 10 - 0) - k (7 / 64)]

/-- The atoms of the quadrant `t < a`, `r > b`. -/
def qM2Atoms : List Expr :=
  [v 0,
  v 1 - v 0,
  1 - v 1,
  v 2,
  v 3 - v 2,
  1 - v 3,
  v 4 - v 0,
  v 1 - v 4,
  v 5 - v 2,
  v 3 - v 5,
  1 - v 6,
  v 6 - v 3,
  v 7,
  v 4 - v 7,
  1 - v 9,
  v 9 - v 1,
  v 8,
  v 5 - v 8,
  v 10,
  v 11,
  v 3 - v 10,
  v 1 - v 11,
  v 0 - v 11,
  v 10 - v 2,
  v 0 * (v 3 - v 2) - k (7 / 64),
  v 2 * (v 1 - v 0) - k (7 / 64),
  (v 3 - v 2) * v 7 - k (7 / 64),
  (v 1 - v 0) * v 8 - k (7 / 64),
  k (-1) * ((1 - v 3) * (v 7 - 0) - (v 4 - 0) * (v 6 - v 3)) - k (7 / 64),
  k (-1) * ((0 - v 5) * (v 9 - 1) - (v 1 - 1) * (v 8 - v 5)) - k (7 / 64),
  1 * (1 - v 1) - (v 4 - v 1) * (v 5 - 0) - k (7 / 64),
  (1 - v 3) * 1 - (v 4 - 0) * (v 5 - v 3) - k (7 / 64),
  (v 1 - v 0) * v 10 - k (7 / 64),
  (v 3 - v 2) * v 11 - k (7 / 64),
  k (-1) * ((v 3 - 0) * (v 11 - v 1) - (0 - v 1) * (v 10 - 0)) - k (7 / 64),
  k (-1) * ((v 10 - 0) * (v 7 - v 0) - (v 11 - v 0) * (v 6 - 0)) - k (7 / 64),
  k (-1) * ((v 10 - v 2) * (v 9 - 0) - (v 11 - 0) * (v 8 - v 2)) - k (7 / 64),
  (v 2 - 0) * (v 11 - v 0) - (0 - v 0) * (v 10 - 0) - k (7 / 64)]

/-- The atoms of the quadrant `t < a`, `r < b`. -/
def qIIIAtoms : List Expr :=
  [v 0,
  v 1 - v 0,
  1 - v 1,
  v 2,
  v 3 - v 2,
  1 - v 3,
  v 4 - v 0,
  v 1 - v 4,
  v 5 - v 2,
  v 3 - v 5,
  1 - v 6,
  v 6 - v 3,
  v 7,
  v 4 - v 7,
  1 - v 9,
  v 9 - v 1,
  v 8,
  v 5 - v 8,
  v 10,
  v 11,
  v 3 - v 10,
  v 1 - v 11,
  v 0 - v 11,
  v 2 - v 10,
  v 0 * (v 3 - v 2) - k (7 / 64),
  v 2 * (v 1 - v 0) - k (7 / 64),
  (v 3 - v 2) * v 7 - k (7 / 64),
  (v 1 - v 0) * v 8 - k (7 / 64),
  k (-1) * ((1 - v 3) * (v 7 - 0) - (v 4 - 0) * (v 6 - v 3)) - k (7 / 64),
  k (-1) * ((0 - v 5) * (v 9 - 1) - (v 1 - 1) * (v 8 - v 5)) - k (7 / 64),
  1 * (1 - v 1) - (v 4 - v 1) * (v 5 - 0) - k (7 / 64),
  (1 - v 3) * 1 - (v 4 - 0) * (v 5 - v 3) - k (7 / 64),
  (v 1 - v 0) * v 10 - k (7 / 64),
  (v 3 - v 2) * v 11 - k (7 / 64),
  k (-1) * ((v 3 - 0) * (v 11 - v 1) - (0 - v 1) * (v 10 - 0)) - k (7 / 64),
  k (-1) * ((v 10 - 0) * (v 7 - v 0) - (v 11 - v 0) * (v 6 - 0)) - k (7 / 64),
  (v 10 - v 2) * (v 9 - 0) - (v 11 - 0) * (v 8 - v 2) - k (7 / 64),
  (v 2 - 0) * (v 11 - v 0) - (0 - v 0) * (v 10 - 0) - k (7 / 64)]

theorem qI_check : check qIAtoms (term_rows% "../Data/six_two_side_completion/qI.txt") = true := by
  decide +kernel

theorem qM1_check : check qM1Atoms (term_rows% "../Data/six_two_side_completion/qM1.txt") = true := by
  decide +kernel

theorem qM2_check : check qM2Atoms (term_rows% "../Data/six_two_side_completion/qM2.txt") = true := by
  decide +kernel

theorem qIII_check : check qIIIAtoms (term_rows% "../Data/six_two_side_completion/qIII.txt") = true := by
  decide +kernel

end Heilbronn.Nine.SixBoundaryTwoSideCompletion.QuadCert
