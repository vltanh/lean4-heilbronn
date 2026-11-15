module

public import Heilbronn.Common.Families

/-! # The boundary reduction of a maximizer (`hand/BOUNDARY_REDUCTION.md`)

**Role.** Primary route, normalization step of `UNRESTRICTED.md` §2. The consequences of the
minimum-area enclosing parallelogram (every side is contacted, opposite contact intervals overlap
in projection) are the two standing facts of `GLOBAL_STRUCTURE.md` (lines 22-27) and of
`UNRESTRICTED.md` (lines 49-54). The adjacent-corner shear produces Type II or Type III in
`GLOBAL_STRUCTURE.md` Theorem 3 (line 174) and in `THREE_INTERIOR_TRIANGLES.md` Corollary 5
(lines 493-494).

**Setting.** A maximizer `P` of nine points in the square (`IsMaximizer`,
`Common/Families.lean`) with positive least area. The manuscript allows any `n ≥ 5` points
(line 7); only `n = 9` is used, so everything is stated for nine points.

**Normalization moves** (shared with `GLOBAL_STRUCTURE.md`).
* `shearX t ℓ` is the determinant-one shear `(x, y) ↦ (x + t(y - ℓ), y)` and `shearY t ℓ` its
  transpose `(x, y) ↦ (x, y + t(x - ℓ))`. The contact-increasing shears of `GLOBAL_STRUCTURE.md`
  Lemma 1 are of this form, so is the adjacent-corner shear `ψ(x, y) = (x - s(1 - y), y)`
  (`= shearX s 1`), and so is the Type-II shear `(x, y) ↦ (x + τ(1 - y), y)` of `TYPE_II.md` §2
  (`= shearX (-τ) 1`).
* `NormStep P Q`: `Q` comes from `P` by one feasible shear (`P` and its image both in the square),
  one square symmetry, or one relabelling. `Normalizes` is its reflexive-transitive closure: "finitely
  many square symmetries, relabelings, and feasible shears", the hypothesis of
  `GLOBAL_STRUCTURE.md` Lemma 4 (equality transfer).
* `Occupied P c`: some point of `P` is `c` (used for the corners).

**Results.**
* `claim_min_parallelogram`: an affine map that sends every point of `P` into the square has
  absolute determinant at most one (the square is a minimum-area parallelogram containing
  `conv P`).
* `claim_side_contact`: every side of the square contains a point of `P`.
* `claim_overlap`: the projection-overlap property `ContactOverlap P`.
* `claim_adjacent_shear`: if the corners `(0,1)` and `(1,1)` are occupied, feasible shears,
  square symmetries and relabellings give a maximizer of Type II or Type III.

**Not formalized (superseded, off the primary route).** "Some side has two contacts"
(lines 22-42) is superseded by `GLOBAL_STRUCTURE.md` Corollary 2, which does not use it. "No
adjacent occupied corners" and the five-point Type-I form (lines 54-79) are superseded by
`GLOBAL_STRUCTURE.md` §2 (families N, C1, C2).

**Implicit in the manuscript.**
* "Each side holds at most two points" (`UNRESTRICTED.md` line 53) follows from positive least area
  alone. It is stated in `GlobalStructure.lean` (`claim_two_per_side`).
* Adjacent-corner shear (lines 81-98). The manuscript says "if the left and bottom contacts are
  distinct, this is Type II", but Type II also needs `0 < b < 1` (`TYPE_II.md` (5), line 196).
  When the only bottom contact is the corner `(1,0)` (three occupied corners), or the existing
  left contact is `(0,0)`, the configuration is Type III, but only after a square symmetry and a
  relabelling into the order `(0,0), (0,1), (1,1)` of `typeIIIConfig`. The conclusion therefore
  allows symmetries and relabellings (`Normalizes`), not only the shear `ψ`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.BoundaryReduction

/-! ### Normalization moves -/

/-- The determinant-one shear `(x, y) ↦ (x + t(y - ℓ), y)`. It fixes every point of the line
`y = ℓ`, keeps every `y`-coordinate, and preserves every triangle area. -/
def shearX (t ℓ : ℝ) (p : Point) : Point := (p.1 + t * (p.2 - ℓ), p.2)

/-- The transposed determinant-one shear `(x, y) ↦ (x, y + t(x - ℓ))`. -/
def shearY (t ℓ : ℝ) (p : Point) : Point := (p.1, p.2 + t * (p.1 - ℓ))

/-- One move of the normalization: a feasible shear (the configuration and its image both lie
in the square), a square symmetry, or a relabelling. -/
inductive NormStep : (Fin 9 → Point) → (Fin 9 → Point) → Prop
  /-- A feasible shear `shearX t ℓ`. -/
  | xShear {P : Fin 9 → Point} (t ℓ : ℝ) (hP : ∀ i, P i ∈ unitSquare)
      (hQ : ∀ i, shearX t ℓ (P i) ∈ unitSquare) : NormStep P (shearX t ℓ ∘ P)
  /-- A feasible shear `shearY t ℓ`. -/
  | yShear {P : Fin 9 → Point} (t ℓ : ℝ) (hP : ∀ i, P i ∈ unitSquare)
      (hQ : ∀ i, shearY t ℓ (P i) ∈ unitSquare) : NormStep P (shearY t ℓ ∘ P)
  /-- A symmetry of the square. -/
  | symmetry (P : Fin 9 → Point) (g : SquareSymmetry) : NormStep P (g.apply ∘ P)
  /-- A relabelling of the nine points. -/
  | relabel (P : Fin 9 → Point) (σ : Equiv.Perm (Fin 9)) : NormStep P (P ∘ σ)

/-- `Q` is obtained from `P` by finitely many feasible shears, square symmetries and
relabellings. -/
def Normalizes : (Fin 9 → Point) → (Fin 9 → Point) → Prop := Relation.ReflTransGen NormStep

/-- The point `c` (in practice a corner of the square) is a point of the configuration. -/
def Occupied (P : Fin 9 → Point) (c : Point) : Prop := ∃ i, P i = c

/-! ### The minimum-area enclosing parallelogram -/

/-- **Claim** (`BOUNDARY_REDUCTION:claim-min-parallelogram`). The square is a minimum-area
parallelogram containing `conv P`. If the affine map `(x, y) ↦ (ax + by + e, cx + dy + f)` sends
every point of a maximizer `P` of positive least area into the square, then `|ad - bc| ≤ 1`.
The preimage of the square is an enclosing parallelogram of area `1/|ad - bc|`, and a larger
determinant would multiply every triangle area by more than one (an affine map multiplies the
least area by `|det|`, `minTriangleArea_affineMap`).
`hand/BOUNDARY_REDUCTION.md`, lines 12-18. -/
theorem claim_min_parallelogram {P : Fin 9 → Point} (hP : IsMaximizer P)
    (hpos : 0 < minTriangleArea P) {a b c d e f : ℝ}
    (hT : ∀ i, affineMap a b c d e f (P i) ∈ unitSquare) : |a * d - b * c| ≤ 1 := by
  sorry

/-- **Claim** (`BOUNDARY_REDUCTION:claim-side-contact`). Every side of the square meets the
configuration: some point has `x = 0`, some `y = 0`, some `x = 1` and some `y = 1`. A side
without contact could be moved inward.
`hand/BOUNDARY_REDUCTION.md`, lines 19-20.
Uses: BOUNDARY_REDUCTION:claim-min-parallelogram -/
theorem claim_side_contact {P : Fin 9 → Point} (hP : IsMaximizer P)
    (hpos : 0 < minTriangleArea P) :
    (∃ i, (P i).1 = 0) ∧ (∃ i, (P i).2 = 0) ∧ (∃ i, (P i).1 = 1) ∧ (∃ i, (P i).2 = 1) := by
  sorry

/-- **Claim** (`BOUNDARY_REDUCTION:claim-overlap`). Opposite contact intervals overlap in
projection. The `x`-ranges of the bottom and top contacts meet, and so do the `y`-ranges of the
left and right contacts (`ContactOverlap`). If, say, the bottom interval lay strictly left of
the top one, the tilt `v = y - αx` with small `α > 0` would give an enclosing parallelogram of
area `1 + α(b₊ - t₋) < 1`.
`hand/BOUNDARY_REDUCTION.md`, lines 44-52.
Uses: BOUNDARY_REDUCTION:claim-min-parallelogram, BOUNDARY_REDUCTION:claim-side-contact -/
theorem claim_overlap {P : Fin 9 → Point} (hP : IsMaximizer P)
    (hpos : 0 < minTriangleArea P) : ContactOverlap P := by
  sorry

/-! ### Adjacent occupied corners -/

/-- **Claim** (`BOUNDARY_REDUCTION:claim-adjacent-shear`). Let `P` be a maximizer of positive
least area whose adjacent corners `D = (0,1)` and `C = (1,1)` are occupied. If no left contact
`(0, λ)` with `λ < 1` exists, put `s = min_{y_p < 1} x_p/(1 - y_p)` (so `0 < s ≤ b ≤ 1` for a
bottom contact `(b, 0)`). The shear `ψ(x, y) = (x - s(1 - y), y)` (`shearX s 1`) keeps every
point in the square, fixes `C` and `D`, keeps a bottom contact and creates a left contact below
`D`. The result, after a square symmetry and a relabelling if needed, is a maximizer of Type II
or of Type III with the same least area.
`hand/BOUNDARY_REDUCTION.md`, lines 81-98.
Uses: BOUNDARY_REDUCTION:claim-side-contact -/
theorem claim_adjacent_shear {P : Fin 9 → Point} (hP : IsMaximizer P)
    (hpos : 0 < minTriangleArea P) (hD : Occupied P (0, 1)) (hC : Occupied P (1, 1)) :
    ∃ Q : Fin 9 → Point, Normalizes P Q ∧ IsMaximizer Q ∧
      minTriangleArea Q = minTriangleArea P ∧ (IsTypeII Q ∨ IsTypeIII Q) := by
  sorry

end Heilbronn.BoundaryReduction
