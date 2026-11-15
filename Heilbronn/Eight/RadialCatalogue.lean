module

public import Heilbronn.Common.Families
public import Heilbronn.Eight.EightBoundary.Setting

/-! # Eight boundary points: complete orientation classification (`hand/RADIAL_CATALOGUE.md`)

**Role.** Primary-route component of `EIGHT_BOUNDARY:Theorem13` (`hand/EIGHT_BOUNDARY.md`,
lines 1022–1024): the finite cover of the central region of the eight-boundary octagon by 36
radial words in eight square-symmetry classes `R1, …, R8`. Its §§1–3 are reused verbatim for the
exterior octagon `A, B, C, D, E, X, F, H` of the seven-boundary exterior case
(`SEVEN_BOUNDARY_TOP_CAP_RADIAL:claim-octagon-cover`, `SEVEN_BOUNDARY_EXTERIOR_COMPLETION`), whose
certificate records are indexed by the block pairs of §2.

**General notions** (any `n`, reusable): a strictly convex counterclockwise polygon
(`IsConvexPolygon`), a point strictly inside it (`InPolygon`) or in its closure
(`InClosedPolygon`), and the radial word of a point `O` with respect to a polygon `V`:
`radialWord V O i` counts the `j ∈ {1, …, n-1}` with `det(V i - O, V (i+j) - O) > 0`, and
`IsRadialWord V O k` is the geometric meaning (1): `det(V i - O, V (i+j) - O) > 0 ↔ j ≤ k i`
for `1 ≤ j ≤ n - 1` (indices mod `n`; `det(V i - O, V j - O) = sarea O (V i) (V j)`).

**Octagon data** (decidable): words `Word = Fin 8 → ℕ`; the relations (2)–(4)
(`Complementary`, `EarBounds`, `SideQuadBounds`); the blocks `(k_{2i}, k_{2i+1}, k_{2i+4},
k_{2i+5})` and the six solutions `T1, …, T6` (`blockT`, 1-based as in the manuscript); the 36 block
pairs (`ofBlocks`, `catalogue`); the square-symmetry action (6) on labels and words (`labelPerm`,
`wordAct`); the eight classes (`RClass`, `rep`, `InClass`, `classTable`, `orbitSize`).

**Results** (no numbered results in the manuscript; ids named in the inventory):
* `claim_encoding` (§1, (1)–(2)): the radial word is well defined and satisfies (1) and (2);
* `claim_ear_bounds` (§1, (3)): `2 ≤ k_i ≤ 5`;
* `claim_side_quad_bounds` (§1, (4)): `k_0, k_2, k_4, k_6 ≥ 3`, `k_1, k_3, k_5, k_7 ≤ 4`;
* `claim_six_blocks` (§2, (5)): every block satisfies (5), whose solutions are `T1, …, T6`;
* `claim_36_cover` (§2): every word satisfying (2)–(4) is one of the 36 block pairs;
* `claim_symmetry_action` (§3, (6)): relabelling by a square symmetry acts on words by (6);
* `claim_symmetry_relabel` (§3): each symmetry of the square maps the eight-boundary normal form
  to a normal form, with the labels permuted by `labelPerm`;
* `claim_eight_classes` (§3): the 36 words split into the orbits `R1, …, R8`, with the 6×6 table;
* `claim_R3_chamber` (§4): the R3 representative gives the five orientation conditions of
  `HAND_PROOF.md` Theorem 1.

Implicit in the manuscript: the hypotheses of §1 are stated (lines 16–22) as consequences of "every
triangle has area at least `A₀`"; the claims here take exactly those consequences as hypotheses:
`O` strictly inside the strictly convex octagon, outside the four closed side quadrilaterals, and
no ray `OV_i` parallel or antiparallel to another (`RaysNondegenerate`). The cover is a cover by
necessary conditions; realizability of the 36 words is not claimed.

Stale text (not formalized): lines 176–179 (the global normalization "still requires" a theorem;
superseded by `UNRESTRICTED.md`); the table column "Hand bound currently available" lists R6 as
"at most `7/128`", while `R6_BOUND.md` proves the strict bound (`R6Bound.mainTheorem`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.RadialCatalogue

/-! ### Polygons (any number of vertices) -/

/-- `V 0, …, V (n-1)` are the vertices of a strictly convex polygon in counterclockwise order:
every triple of vertices taken in increasing index order turns counterclockwise. -/
def IsConvexPolygon {n : ℕ} (V : Fin n → Point) : Prop :=
  ∀ i j k : Fin n, i < j → j < k → 0 < sarea (V i) (V j) (V k)

/-- `O` lies strictly inside the counterclockwise polygon `V`: strictly to the left of every
directed edge `V i → V (i+1)` (indices mod `n`). -/
def InPolygon {n : ℕ} (V : Fin n → Point) (O : Point) : Prop :=
  ∀ i : Fin n, 0 < sarea (V i) (V (finRotate n i)) O

/-- `O` lies in the closed counterclockwise polygon `V` (convex hull of the vertices of a convex
polygon): weakly to the left of every directed edge. -/
def InClosedPolygon {n : ℕ} (V : Fin n → Point) (O : Point) : Prop :=
  ∀ i : Fin n, 0 ≤ sarea (V i) (V (finRotate n i)) O

/-- No ray `O V_i` is parallel or antiparallel to another ray `O V_j`: `O, V i, V j` are never
collinear for `i ≠ j`. -/
def RaysNondegenerate {n : ℕ} (V : Fin n → Point) (O : Point) : Prop :=
  ∀ i j : Fin n, i ≠ j → sarea O (V i) (V j) ≠ 0

/-! ### Radial words (any number of vertices) -/

/-- The radial word of `O` with respect to the polygon `V`: `k i` is the number of `j ∈
{1, …, n-1}` with `det(V i - O, V (i+j) - O) > 0`, the number of subsequent rays strictly before
the direction `-OV_i` (`RADIAL_CATALOGUE.md` lines 26–28). -/
def radialWord {n : ℕ} (V : Fin n → Point) (O : Point) (i : Fin n) : ℕ :=
  (Finset.univ.filter fun j : Fin n => 0 < (j : ℕ) ∧ 0 < sarea O (V i) (V (i + j))).card

/-- The geometric meaning (1) of a radial word: for every `i` and `1 ≤ j ≤ n-1`,
`det(V i - O, V (i+j) - O) > 0 ↔ j ≤ k i` (indices mod `n`). -/
def IsRadialWord {n : ℕ} (V : Fin n → Point) (O : Point) (k : Fin n → ℕ) : Prop :=
  ∀ i j : Fin n, 0 < (j : ℕ) → (0 < sarea O (V i) (V (i + j)) ↔ (j : ℕ) ≤ k i)

/-- The complementary relation (2): `j ≤ k i ↔ n - j > k (i+j)` for `1 ≤ j ≤ n-1`. -/
def Complementary {n : ℕ} (k : Fin n → ℕ) : Prop :=
  ∀ i j : Fin n, 0 < (j : ℕ) → ((j : ℕ) ≤ k i ↔ k (i + j) < n - (j : ℕ))

/-! ### Octagons -/

/-- A radial word of an octagon: eight small integers `(k₀, …, k₇)`. -/
abbrev Word := Fin 8 → ℕ

/-- The nine points of an octagon `V 0, …, V 7` and a ninth point `O`, in this order. -/
def octConfig (V : Fin 8 → Point) (O : Point) : Fin 9 → Point :=
  ![V 0, V 1, V 2, V 3, V 4, V 5, V 6, V 7, O]

/-- `O` is outside the four closed side quadrilaterals `V₀V₁V₂V₃`, `V₂V₃V₄V₅`, `V₄V₅V₆V₇`,
`V₆V₇V₀V₁` (for the eight-boundary octagon: `ABCD, CDEF, EFGH, GHAB`). -/
def OutsideSideQuads (V : Fin 8 → Point) (O : Point) : Prop :=
  ¬ InClosedPolygon ![V 0, V 1, V 2, V 3] O ∧ ¬ InClosedPolygon ![V 2, V 3, V 4, V 5] O ∧
    ¬ InClosedPolygon ![V 4, V 5, V 6, V 7] O ∧ ¬ InClosedPolygon ![V 6, V 7, V 0, V 1] O

/-- The central region `int conv(V₀,V₃,V₄,V₇) ∩ int conv(V₁,V₂,V₅,V₆)` (for the eight-boundary
octagon: `int conv(A,D,E,H) ∩ int conv(B,C,F,G)`, `EIGHT_BOUNDARY.md` (11)). -/
def InCentralRegion (V : Fin 8 → Point) (O : Point) : Prop :=
  InPolygon ![V 0, V 3, V 4, V 7] O ∧ InPolygon ![V 1, V 2, V 5, V 6] O

/-- The ear bounds (3): `2 ≤ k_i ≤ 5` for every `i`. -/
def EarBounds (k : Word) : Prop :=
  ∀ i, 2 ≤ k i ∧ k i ≤ 5

/-- The side-quadrilateral bounds (4): `k₀, k₂, k₄, k₆ ≥ 3` and `k₁, k₃, k₅, k₇ ≤ 4`. -/
def SideQuadBounds (k : Word) : Prop :=
  3 ≤ k 0 ∧ 3 ≤ k 2 ∧ 3 ≤ k 4 ∧ 3 ≤ k 6 ∧ k 1 ≤ 4 ∧ k 3 ≤ 4 ∧ k 5 ≤ 4 ∧ k 7 ≤ 4

/-- A word satisfying the necessary conditions (2)–(4). -/
def Admissible (k : Word) : Prop :=
  Complementary k ∧ EarBounds k ∧ SideQuadBounds k

instance (k : Word) : Decidable (Admissible k) := by
  unfold Admissible Complementary EarBounds SideQuadBounds; infer_instance

/-! ### Blocks and the 36-word catalogue -/

/-- The block `(a, b, c, d) = (k_{2i}, k_{2i+1}, k_{2i+4}, k_{2i+5})`, `i = 0, 1`: the first block
is `(k₀, k₁, k₄, k₅)`, the second `(k₂, k₃, k₆, k₇)`. -/
def block (k : Word) (i : Fin 2) : Fin 4 → ℕ :=
  ![k (Fin.ofNat 8 (2 * i.val)), k (Fin.ofNat 8 (2 * i.val + 1)),
    k (Fin.ofNat 8 (2 * i.val + 4)), k (Fin.ofNat 8 (2 * i.val + 5))]

/-- The block relations (5): `a ≥ 4 ↔ c = 3`, `b = 4 ↔ d ≤ 3`, `b = 2 ↔ c = 5`,
`d = 2 ↔ a = 5`. -/
def BlockRelations (t : Fin 4 → ℕ) : Prop :=
  (4 ≤ t 0 ↔ t 2 = 3) ∧ (t 1 = 4 ↔ t 3 ≤ 3) ∧ (t 1 = 2 ↔ t 2 = 5) ∧ (t 3 = 2 ↔ t 0 = 5)

instance (t : Fin 4 → ℕ) : Decidable (BlockRelations t) := by
  unfold BlockRelations; infer_instance

/-- The six blocks `T1, …, T6` (1-based, as in the manuscript's table, lines 90–97):
`T1 = (3,2,5,4)`, `T2 = (3,3,4,4)`, `T3 = (3,4,4,3)`, `T4 = (4,3,3,4)`, `T5 = (4,4,3,3)`,
`T6 = (5,4,3,2)`; other indices give `(0,0,0,0)`. -/
def blockT : ℕ → Fin 4 → ℕ
  | 1 => ![3, 2, 5, 4]
  | 2 => ![3, 3, 4, 4]
  | 3 => ![3, 4, 4, 3]
  | 4 => ![4, 3, 3, 4]
  | 5 => ![4, 4, 3, 3]
  | 6 => ![5, 4, 3, 2]
  | _ => ![0, 0, 0, 0]

/-- The word with first block `T_i = (k₀, k₁, k₄, k₅)` and second block `T_j = (k₂, k₃, k₆, k₇)`
(1-based block indices, the row and column of the manuscript's 6×6 table). -/
def ofBlocks (i j : ℕ) : Word :=
  ![blockT i 0, blockT i 1, blockT j 0, blockT j 1, blockT i 2, blockT i 3, blockT j 2, blockT j 3]

/-- The 36 block pairs `(i, j)`, `1 ≤ i, j ≤ 6`. -/
def blockPairs : List (ℕ × ℕ) :=
  (List.range' 1 6).flatMap fun i => (List.range' 1 6).map fun j => (i, j)

/-- The 36 words of the cover (§2), in the order of `blockPairs`. -/
def catalogue : List Word :=
  blockPairs.map fun p => ofBlocks p.1 p.2

/-! ### The square-symmetry action and the eight classes -/

/-- The label permutation (6) induced by a square symmetry: a rotation `ρ_r` relabels
`V'_i = V_{i+2r}`, a reflection `σ_r` relabels `V'_i = V_{1-i+2r}` (indices mod 8). -/
def labelPerm (refl : Bool) (r : Fin 4) (i : Fin 8) : Fin 8 :=
  if refl then 1 - i + Fin.ofNat 8 (2 * r.val) else i + Fin.ofNat 8 (2 * r.val)

/-- The action (6) on words: `(ρ_r k)_i = k_{i+2r}` and `(σ_r k)_i = 7 - k_{1-i+2r}`. -/
def wordAct (refl : Bool) (r : Fin 4) (k : Word) : Word :=
  fun i => if refl then 7 - k (labelPerm refl r i) else k (labelPerm refl r i)

/-- The orbit of a word under the eight symmetries (with repetitions). -/
def orbit (k : Word) : List Word :=
  [false, true].flatMap fun refl => (List.finRange 4).map fun r => wordAct refl r k

/-- The eight radial classes of `RADIAL_CATALOGUE.md` §3. -/
inductive RClass
  | R1 | R2 | R3 | R4 | R5 | R6 | R7 | R8
  deriving DecidableEq, Repr

instance : Fintype RClass :=
  ⟨⟨{.R1, .R2, .R3, .R4, .R5, .R6, .R7, .R8}, by decide⟩, fun c => by cases c <;> decide⟩

/-- The class representatives (`RADIAL_CATALOGUE.md` lines 126–135). -/
def rep : RClass → Word
  | .R1 => ![3, 2, 3, 2, 5, 4, 5, 4]
  | .R2 => ![3, 2, 3, 3, 5, 4, 4, 4]
  | .R3 => ![3, 2, 3, 4, 5, 4, 4, 3]
  | .R4 => ![3, 2, 4, 3, 5, 4, 3, 4]
  | .R5 => ![3, 3, 3, 3, 4, 4, 4, 4]
  | .R6 => ![3, 3, 3, 4, 4, 4, 4, 3]
  | .R7 => ![3, 3, 4, 3, 4, 4, 3, 4]
  | .R8 => ![3, 4, 3, 4, 4, 3, 4, 3]

/-- The orbit sizes among the 36 words: 8 for `R2`, 4 for the others. -/
def orbitSize : RClass → ℕ
  | .R2 => 8
  | _ => 4

/-- `w` is in class `c`: the image of the representative of `c` under one of the eight
symmetries (6). -/
def InClass (c : RClass) (w : Word) : Prop :=
  ∃ refl : Bool, ∃ r : Fin 4, wordAct refl r (rep c) = w

instance (c : RClass) (w : Word) : Decidable (InClass c w) := by
  unfold InClass; infer_instance

/-- The class table of the 36 block pairs (`RADIAL_CATALOGUE.md` lines 142–149): row `i` is the
first block `(k₀,k₁,k₄,k₅) = T_i`, column `j` the second block `(k₂,k₃,k₆,k₇) = T_j`. -/
def classTable : ℕ → ℕ → RClass
  | 1, 1 => .R1 | 1, 2 => .R2 | 1, 3 => .R3 | 1, 4 => .R4 | 1, 5 => .R2 | 1, 6 => .R1
  | 2, 1 => .R2 | 2, 2 => .R5 | 2, 3 => .R6 | 2, 4 => .R7 | 2, 5 => .R5 | 2, 6 => .R2
  | 3, 1 => .R4 | 3, 2 => .R7 | 3, 3 => .R8 | 3, 4 => .R8 | 3, 5 => .R6 | 3, 6 => .R3
  | 4, 1 => .R3 | 4, 2 => .R6 | 4, 3 => .R8 | 4, 4 => .R8 | 4, 5 => .R7 | 4, 6 => .R4
  | 5, 1 => .R2 | 5, 2 => .R5 | 5, 3 => .R7 | 5, 4 => .R6 | 5, 5 => .R5 | 5, 6 => .R2
  | 6, 1 => .R1 | 6, 2 => .R2 | 6, 3 => .R4 | 6, 4 => .R3 | 6, 5 => .R2 | 6, 6 => .R1
  | _, _ => .R1

/-! ### §1. Encoding the directions -/

/-- **Claim** (`RADIAL_CATALOGUE:claim-encoding`). For `O` strictly inside a strictly convex
counterclockwise polygon, with no two rays `OV_i, OV_j` parallel or antiparallel, the rays occur
in the counterclockwise order of the vertices, so the radial word is well defined: it satisfies
the geometric meaning (1) and the complementary relation (2). (Stated for any `n`; the manuscript
uses `n = 8`.)
`hand/RADIAL_CATALOGUE.md`, lines 21–42.
Uses: standard fact (angular order of the rays from an interior point of a convex polygon). -/
theorem claim_encoding {n : ℕ} (V : Fin n → Point) (O : Point) (hV : IsConvexPolygon V)
    (hO : InPolygon V O) (hnd : RaysNondegenerate V O) :
    IsRadialWord V O (radialWord V O) ∧ Complementary (radialWord V O) := by
  sorry

/-- **Claim** (`RADIAL_CATALOGUE:claim-ear-bounds`). If `O` is strictly inside the convex octagon,
outside its four closed side quadrilaterals (which contain the eight ears `V_iV_{i+1}V_{i+2}`),
and no rays are degenerate, then its radial word satisfies (3): `2 ≤ k_i ≤ 5`.
`hand/RADIAL_CATALOGUE.md`, lines 44–56.
Uses: RADIAL_CATALOGUE:claim-encoding. -/
theorem claim_ear_bounds (V : Fin 8 → Point) (O : Point) (hV : IsConvexPolygon V)
    (hO : InPolygon V O) (hnd : RaysNondegenerate V O) (hq : OutsideSideQuads V O) {k : Word}
    (hk : IsRadialWord V O k) : EarBounds k := by
  sorry

/-- **Claim** (`RADIAL_CATALOGUE:claim-side-quad-bounds`). Under the same hypotheses, (4):
`k₀, k₂, k₄, k₆ ≥ 3` and `k₁, k₃, k₅, k₇ ≤ 4` (`O` is on the inner side of the chords
`V₀V₃, V₂V₅, V₄V₇, V₆V₁`; then (2) with `j = 3`).
`hand/RADIAL_CATALOGUE.md`, lines 58–66.
Uses: RADIAL_CATALOGUE:claim-encoding. -/
theorem claim_side_quad_bounds (V : Fin 8 → Point) (O : Point) (hV : IsConvexPolygon V)
    (hO : InPolygon V O) (hnd : RaysNondegenerate V O) (hq : OutsideSideQuads V O) {k : Word}
    (hk : IsRadialWord V O k) : SideQuadBounds k := by
  sorry

/-! ### §2. The six blocks and the 36 words -/

/-- **Claim** (`RADIAL_CATALOGUE:claim-six-blocks`). Every block of a word satisfying (2)–(4)
satisfies the relations (5); and the 4-tuples with `a, c ∈ {3,4,5}`, `b, d ∈ {2,3,4}` satisfying
(5) are exactly the six blocks `T1, …, T6`.
`hand/RADIAL_CATALOGUE.md`, lines 68–103.
Uses: RADIAL_CATALOGUE:claim-encoding (relation (2) with `j = 3, 4`). -/
theorem claim_six_blocks :
    (∀ k : Word, Admissible k → ∀ i : Fin 2, BlockRelations (block k i)) ∧
      ∀ t : Fin 4 → ℕ,
        ((3 ≤ t 0 ∧ t 0 ≤ 5) ∧ (2 ≤ t 1 ∧ t 1 ≤ 4) ∧ (3 ≤ t 2 ∧ t 2 ≤ 5) ∧ (2 ≤ t 3 ∧ t 3 ≤ 4) ∧
            BlockRelations t) ↔
          ∃ i, 1 ≤ i ∧ i ≤ 6 ∧ t = blockT i := by
  sorry

/-- **Claim** (`RADIAL_CATALOGUE:claim-36-cover`). Every word satisfying the necessary conditions
(2)–(4) is one of the 36 block pairs. (Realizability of the 36 words is not claimed.)
`hand/RADIAL_CATALOGUE.md`, lines 105–108.
Uses: RADIAL_CATALOGUE:claim-six-blocks. -/
theorem claim_36_cover (k : Word) (hk : Admissible k) : k ∈ catalogue := by
  sorry

/-! ### §3. Square symmetries -/

/-- **Claim** (`RADIAL_CATALOGUE:claim-symmetry-action`). Relabelling by a square symmetry acts on
radial words by (6). Precisely: let `φ` be a map of the plane multiplying every signed area by
`+1` (a rotation, `refl = false`) or by `-1` (a reflection, `refl = true`); if `k` is the radial
word of `O` with respect to `V` (no degenerate rays), then `wordAct refl r k` is the radial word of
`φ O` with respect to the relabelled octagon `V'_i = φ (V (labelPerm refl r i))`
(`V'_i = φ V_{i+2r}`, resp. `φ V_{1-i+2r}`). The reflection reverses the cyclic order, whence
`k ↦ 7 - k`. The concrete relabelling induced by each symmetry of the square on the eight-boundary
normal form is `EIGHT_BOUNDARY:claim-symmetry-relabel`.
`hand/RADIAL_CATALOGUE.md`, lines 110–121.
Uses: RADIAL_CATALOGUE:claim-encoding (relation (2)). -/
theorem claim_symmetry_action (V : Fin 8 → Point) (O : Point) (hnd : RaysNondegenerate V O)
    (refl : Bool) (r : Fin 4) (φ : Point → Point)
    (hφ : ∀ p q t, sarea (φ p) (φ q) (φ t) = (if refl then -1 else 1) * sarea p q t)
    {k : Word} (hk : IsRadialWord V O k) :
    IsRadialWord (fun i => φ (V (labelPerm refl r i))) (φ O) (wordAct refl r k) := by
  sorry

/-- **Claim** (`RADIAL_CATALOGUE:claim-symmetry-relabel`, named here). Each of the eight
symmetries `φ` of the square maps the eight-boundary normal form (`EightBoundary.EightAnchors`)
to a normal form whose labels are permuted by (6): there are new anchors and `(refl, r)` with
`V'_i = φ (V (labelPerm refl r i))`, where `refl` records whether `φ` reverses orientation.
"The odd index in the reflection formula keeps the paired vertices on their corresponding square
sides." Together with `claim_symmetry_action` this is the action of the square symmetries on the
words of the normal form.
`hand/RADIAL_CATALOGUE.md`, lines 110–121.
Uses: standard fact (the symmetries of the square permute its sides). -/
theorem claim_symmetry_relabel (φ : SquareSymmetry) {a b c d e f g h : ℝ}
    (hA : EightBoundary.EightAnchors a b c d e f g h) :
    ∃ (a' b' c' d' e' f' g' h' : ℝ) (refl : Bool) (r : Fin 4),
      EightBoundary.EightAnchors a' b' c' d' e' f' g' h' ∧
      (∀ p q t, sarea (φ.apply p) (φ.apply q) (φ.apply t) =
        (if refl then -1 else 1) * sarea p q t) ∧
      ∀ i, EightBoundary.octagon a' b' c' d' e' f' g' h' i =
        φ.apply (EightBoundary.octagon a b c d e f g h (labelPerm refl r i)) := by
  sorry

/-- **Claim** (`RADIAL_CATALOGUE:claim-eight-classes`). The 36 words split into the eight
disjoint orbits `R1, …, R8` of the action (6), of sizes `4, 8, 4, 4, 4, 4, 4, 4`: the block pair
`(i, j)` lies in class `classTable i j`; every orbit lies in the catalogue; the orbit sizes are
`orbitSize`; and the classes are pairwise disjoint.
`hand/RADIAL_CATALOGUE.md`, lines 123–152.
Uses: RADIAL_CATALOGUE:claim-symmetry-action (finite check of (6)). -/
theorem claim_eight_classes :
    (∀ i j, 1 ≤ i → i ≤ 6 → 1 ≤ j → j ≤ 6 → InClass (classTable i j) (ofBlocks i j)) ∧
      (∀ c w, InClass c w → w ∈ catalogue) ∧
      (∀ c, (orbit (rep c)).dedup.length = orbitSize c) ∧
      (∀ c c' w, InClass c w → InClass c' w → c = c') := by
  sorry

/-! ### §4. The class R3 -/

/-- **Claim** (`RADIAL_CATALOGUE:claim-R3-chamber`). The representative of R3 gives exactly the
five interior orientation conditions of `HAND_PROOF.md` Theorem 1: `O` inside `ADH`
(`[ADO], [DHO] > 0`), inside `CFG` (`[GCO], [OCF] > 0`), and on the side of `BE` containing the
bottom-right corner (`[BOE] > 0`), where `A, …, H = V₀, …, V₇`.
`hand/RADIAL_CATALOGUE.md`, lines 154–167.
Uses: RADIAL_CATALOGUE:claim-encoding. -/
theorem claim_R3_chamber (V : Fin 8 → Point) (O : Point) (hk : IsRadialWord V O (rep .R3)) :
    0 < sarea (V 0) (V 3) O ∧ 0 < sarea (V 3) (V 7) O ∧ 0 < sarea (V 1) O (V 4) ∧
      0 < sarea (V 6) (V 2) O ∧ 0 < sarea O (V 2) (V 5) := by
  sorry

end Heilbronn.RadialCatalogue
