module

public import Heilbronn.Normalization.BoundaryReduction

/-! # The global boundary normalization (`hand/GLOBAL_STRUCTURE.md`)

**Role.** Primary route. `UNRESTRICTED.md` §2 (lines 56-60) uses Lemma 1, Corollary 2 and
Theorem 3 to bring a maximizer into one of the five families N, C1, C2, Type II, Type III, and §5
(line 212) uses Lemma 4 to transfer the equality case back through the normalizing shears.
`THREE_INTERIOR_TRIANGLES.md` Corollary 5 reruns the same normalization.

**Setting.** A maximizer `P` of nine points with positive least area. From
`BOUNDARY_REDUCTION.md` it has every side contacted and the projection-overlap property
(`BoundaryReduction.claim_side_contact`, `BoundaryReduction.claim_overlap`). Positive least area
gives at most two points on each side (`claim_two_per_side`).

**Definitions.**
* `Side`: the four sides of the square. `Side.Contains S p` means `p` lies on side `S`.
* `incidences P`: the boundary incidences, the pairs `(i, S)` with `P i` on side `S`. A corner
  point has two (lines 67-69).
* `TwoContacts P S`: side `S` carries two distinct points of `P`.

**Results.**
* `claim_two_per_side`: at most two points on each side (line 27).
* `lemma1`: with exactly one point on each of the left and right sides (respectively bottom and
  top), a feasible determinant-one shear keeps every incidence and creates a new left or right
  (respectively bottom or top) incidence.
* `corollary2`: after at most two such shears, each pair of opposite sides has a side with two
  contacts.
* `claim_N_selection`, `claim_C1_selection`, `claim_C2_selection`: with no, one or two opposite
  occupied corners, a square symmetry and a relabelling put the configuration in family N, C1 or
  C2 (`Common/Families.lean`).
* `lemma4` (equality transfer): if a maximizer normalizes to an optimal configuration, it is
  itself optimal.
* `theorem3`: every positive-area maximizer normalizes to a maximizer `Q` with the same least area,
  the overlap property, and `Q` in N, C1, C2, Type II or Type III; moreover `Q` optimal implies `P`
  optimal.

**Not formalized.** The parameter count and the seven incidence patterns (lines 180-202) are a
remark that nothing relies on. The closing remarks of §4 (lines 230-248) describe the assembly.

**Implicit in the manuscript.**
* The selection claims (§2) are proved for the maximizer of Corollary 2, but their proofs use only
  the overlap property, positive least area (distinct points, at most two per side) and, for N,
  the two-contact sides. They are stated under exactly these hypotheses. That is also how
  `THREE_INTERIOR_TRIANGLES.md` Corollary 5 uses them for non-maximizers.
* Theorem 3 is phrased as "an upper bound proved on the five families holds for all
  configurations". It is stated as the existence of the normalized maximizer `Q` that this
  sentence means, with the normalization recorded (`Normalizes P Q`). The equality transfer
  (`IsOptimal Q → IsOptimal P`) is the content of Lemma 4, which uses `HAND_PROOF.md` Theorem 2.
  It is included so that the assembly can use Theorem 3 directly. `ContactOverlap Q` is included
  for all five families (it holds for every positive-area maximizer). The family theorems need it
  for N: the seven-boundary row of `UNRESTRICTED.md` (lines 132-137) rotates the singleton side to
  the top and uses the overlap order.
* Lemma 4's argument uses only that `P` is in the square and that the least area of the
  normalized configuration is `A₀`. The hypothesis `IsMaximizer P` is the manuscript's.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.GlobalStructure

open BoundaryReduction

/-! ### Sides and incidences -/

/-- The four sides of the unit square. -/
inductive Side
  | left
  | bottom
  | right
  | top

/-- `S.Contains p`: the point `p` lies on the line of side `S` (`x = 0`, `y = 0`, `x = 1` or
`y = 1`; for points of the square, on the side itself). -/
def Side.Contains : Side → Point → Prop
  | .left, p => p.1 = 0
  | .bottom, p => p.2 = 0
  | .right, p => p.1 = 1
  | .top, p => p.2 = 1

/-- The boundary incidences of `P` (`GLOBAL_STRUCTURE:def-incidence`, lines 67-69): the pairs
`(i, S)` with `P i` on side `S`. A corner point gives two incidences, so there are at most eight
for a configuration of positive least area. -/
def incidences (P : Fin 9 → Point) : Set (Fin 9 × Side) := {x | x.2.Contains (P x.1)}

/-- Side `S` carries two distinct points of `P`. -/
def TwoContacts (P : Fin 9 → Point) (S : Side) : Prop :=
  ∃ i j, i ≠ j ∧ S.Contains (P i) ∧ S.Contains (P j)

/-- **Claim** (`GLOBAL_STRUCTURE:claim-two-per-side`, made up). Positive least area implies that
no three points lie on one side: three such points would be collinear.
`hand/GLOBAL_STRUCTURE.md`, line 27; `hand/UNRESTRICTED.md`, line 53. -/
theorem claim_two_per_side {P : Fin 9 → Point} (hpos : 0 < minTriangleArea P) (S : Side)
    {i j k : Fin 9} (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) :
    ¬ (S.Contains (P i) ∧ S.Contains (P j) ∧ S.Contains (P k)) := by
  sorry

/-! ### §1. The contact-increasing shear -/

/-- **Lemma 1** (`GLOBAL_STRUCTURE:Lemma1`). Let `P` be a positive-area maximizer.
* If `P` has exactly one point `L = (0, ℓ)` on the left side and exactly one point `R = (1, r)` on
  the right side (so `r = ℓ` by overlap), the shear `F_t(x, y) = (x + t(y - ℓ), y)` at the finite
  positive endpoint `t₊` of its feasible interval keeps every point in the square and every
  boundary incidence, creates a new left or right incidence, and gives a maximizer.
* The analogous assertion holds for the bottom and top sides, with the transposed shear
  `(x, y) ↦ (x, y + t(x - ℓ))`.
`hand/GLOBAL_STRUCTURE.md`, lines 31-65.
Uses: BOUNDARY_REDUCTION:claim-overlap -/
theorem lemma1 {P : Fin 9 → Point} (hP : IsMaximizer P) (hpos : 0 < minTriangleArea P) :
    ((∃! i, (P i).1 = 0) → (∃! i, (P i).1 = 1) →
      ∃ t ℓ : ℝ, (∀ i, shearX t ℓ (P i) ∈ unitSquare) ∧ IsMaximizer (shearX t ℓ ∘ P) ∧
        incidences P ⊆ incidences (shearX t ℓ ∘ P) ∧
        ∃ i, (P i).1 ≠ 0 ∧ (P i).1 ≠ 1 ∧
          ((shearX t ℓ (P i)).1 = 0 ∨ (shearX t ℓ (P i)).1 = 1)) ∧
    ((∃! i, (P i).2 = 0) → (∃! i, (P i).2 = 1) →
      ∃ t ℓ : ℝ, (∀ i, shearY t ℓ (P i) ∈ unitSquare) ∧ IsMaximizer (shearY t ℓ ∘ P) ∧
        incidences P ⊆ incidences (shearY t ℓ ∘ P) ∧
        ∃ i, (P i).2 ≠ 0 ∧ (P i).2 ≠ 1 ∧
          ((shearY t ℓ (P i)).2 = 0 ∨ (shearY t ℓ (P i)).2 = 1)) := by
  sorry

/-- **Corollary 2** (`GLOBAL_STRUCTURE:Corollary2`). From a positive-area maximizer `P`, at most
two applications of Lemma 1 (first left/right, then bottom/top; the second shear keeps every
`x`-coordinate and so the first pair's incidences) give a maximizer `Q` with the same least area in
which each pair of opposite sides has a side with two contacts.
`hand/GLOBAL_STRUCTURE.md`, lines 71-82.
Uses: GLOBAL_STRUCTURE:Lemma1, BOUNDARY_REDUCTION:claim-side-contact,
GLOBAL_STRUCTURE:claim-two-per-side -/
theorem corollary2 {P : Fin 9 → Point} (hP : IsMaximizer P) (hpos : 0 < minTriangleArea P) :
    ∃ Q : Fin 9 → Point, Normalizes P Q ∧ IsMaximizer Q ∧
      minTriangleArea Q = minTriangleArea P ∧
      (TwoContacts Q .left ∨ TwoContacts Q .right) ∧
      (TwoContacts Q .bottom ∨ TwoContacts Q .top) := by
  sorry

/-! ### §2. The three forms without adjacent occupied corners -/

/-- **Claim** (`GLOBAL_STRUCTURE:claim-N-selection`). No occupied corner. If the configuration has
positive least area and the overlap property, and each pair of opposite sides has a side with two
contacts, then after a square symmetry (the reflections putting the double sides on the left and
at the bottom) and a relabelling it is in family N: `A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d),
F=(f,1)` with `0<a<h<1, 0<b<c<1, a≤d≤h, b≤f≤c` and three arbitrary points.
`hand/GLOBAL_STRUCTURE.md`, lines 91-122.
Uses: GLOBAL_STRUCTURE:Corollary2, BOUNDARY_REDUCTION:claim-overlap,
GLOBAL_STRUCTURE:claim-two-per-side -/
theorem claim_N_selection {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hpos : 0 < minTriangleArea P) (hov : ContactOverlap P)
    (hcorner : ¬ Occupied P (0, 0) ∧ ¬ Occupied P (1, 0) ∧ ¬ Occupied P (0, 1) ∧
      ¬ Occupied P (1, 1))
    (hLR : TwoContacts P .left ∨ TwoContacts P .right)
    (hBT : TwoContacts P .bottom ∨ TwoContacts P .top) :
    ∃ (g : SquareSymmetry) (σ : Equiv.Perm (Fin 9)), IsN (g.apply ∘ P ∘ σ) := by
  sorry

/-- **Claim** (`GLOBAL_STRUCTURE:claim-C1-selection`). Exactly one occupied corner, `(0,0)`.
By overlap both incident sides carry a second contact `C = (c,0)`, `H = (0,h)`. With `f` the least
top `x`-coordinate and `d` the least right `y`-coordinate, a relabelling puts the configuration in
family C1: `O=(0,0), C, D=(1,d), F=(f,1), H` with `0<d≤h<1, 0<f≤c<1` and four arbitrary points.
`hand/GLOBAL_STRUCTURE.md`, lines 124-146.
Uses: BOUNDARY_REDUCTION:claim-overlap, GLOBAL_STRUCTURE:claim-two-per-side -/
theorem claim_C1_selection {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hpos : 0 < minTriangleArea P) (hov : ContactOverlap P) (h00 : Occupied P (0, 0))
    (hcorner : ¬ Occupied P (1, 0) ∧ ¬ Occupied P (0, 1) ∧ ¬ Occupied P (1, 1)) :
    ∃ σ : Equiv.Perm (Fin 9), IsC1 (P ∘ σ) := by
  sorry

/-- **Claim** (`GLOBAL_STRUCTURE:claim-C2-selection`). Exactly the two opposite corners `(0,0)` and
`(1,1)` are occupied. By overlap every side carries a second contact, and intersecting the
intervals `[0,h], [d,1]` and `[0,c], [f,1]` gives `0<d≤h<1, 0<f≤c<1`. A relabelling puts the
configuration in family C2: `A=(0,0), E=(1,1), H=(0,h), C=(c,0), D=(1,d), F=(f,1)` and three
arbitrary points.
`hand/GLOBAL_STRUCTURE.md`, lines 148-161.
Uses: BOUNDARY_REDUCTION:claim-overlap, GLOBAL_STRUCTURE:claim-two-per-side -/
theorem claim_C2_selection {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hpos : 0 < minTriangleArea P) (hov : ContactOverlap P) (h00 : Occupied P (0, 0))
    (h11 : Occupied P (1, 1)) (hcorner : ¬ Occupied P (1, 0) ∧ ¬ Occupied P (0, 1)) :
    ∃ σ : Equiv.Perm (Fin 9), IsC2 (P ∘ σ) := by
  sorry

/-! ### §4. Equality transfer -/

/-- **Lemma 4** (`GLOBAL_STRUCTURE:Lemma4`). Equality transfer. If a maximizer `P` is transformed
into an optimal configuration (a relabelled symmetric image of the construction) by finitely many
square symmetries, relabellings and feasible shears, then `P` is itself optimal. For the last shear
`F_T` that moves a point, the configurations `F_t(P')`, `t` between `0` and `T`, stay in the square
(the feasible parameters form an interval), keep every triangle area, and tend to the optimal
configuration; this contradicts the strict local optimality of `HAND_PROOF.md` Theorem 2.
`hand/GLOBAL_STRUCTURE.md`, lines 212-228; `hand/UNRESTRICTED.md`, lines 204-226.
Uses: HAND_PROOF:Theorem2 -/
theorem lemma4 {P Q : Fin 9 → Point} (hP : IsMaximizer P) (hPQ : Normalizes P Q)
    (hQ : IsOptimal Q) : IsOptimal P := by
  sorry

/-! ### §3. Exhaustiveness -/

/-- **Theorem 3** (`GLOBAL_STRUCTURE:Theorem3`). Every positive-area maximizer `P` normalizes (by
feasible shears, square symmetries and relabellings) to a maximizer `Q` with the same least area
and the overlap property, lying in one of the five families N, C1, C2, Type II, Type III. Moreover
`Q` optimal implies `P` optimal (Lemma 4). Hence an upper bound proved on the five families holds
for all configurations.
`hand/GLOBAL_STRUCTURE.md`, lines 163-178.
Uses: GLOBAL_STRUCTURE:Corollary2, BOUNDARY_REDUCTION:claim-adjacent-shear,
GLOBAL_STRUCTURE:claim-N-selection, GLOBAL_STRUCTURE:claim-C1-selection,
GLOBAL_STRUCTURE:claim-C2-selection, BOUNDARY_REDUCTION:claim-overlap, GLOBAL_STRUCTURE:Lemma4 -/
theorem theorem3 {P : Fin 9 → Point} (hP : IsMaximizer P) (hpos : 0 < minTriangleArea P) :
    ∃ Q : Fin 9 → Point, Normalizes P Q ∧ (∀ i, Q i ∈ unitSquare) ∧ IsMaximizer Q ∧
      minTriangleArea Q = minTriangleArea P ∧ (IsOptimal Q → IsOptimal P) ∧
      ContactOverlap Q ∧
      (IsN Q ∨ IsC1 Q ∨ IsC2 Q ∨ IsTypeII Q ∨ IsTypeIII Q) := by
  sorry

end Heilbronn.GlobalStructure
