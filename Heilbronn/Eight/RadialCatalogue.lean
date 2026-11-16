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

**Proof tools added here.** The angular order (the hardest general fact) is proved once for any
`n`: `sarea_pos_trans` (orientation is transitive inside a cone, by the identity
`[PAC]ψ(B) = [PAB]ψ(C) + [PBC]ψ(A)`), `IsConvexPolygon.cyc_pos` (cyclic convexity),
`radial_down` (the positive signs from an interior point form an initial segment) and
`iff_le_card_filter` (counting); `complementary_of_isRadialWord` derives (2) from (1). For the
octagon: `IsRadialWord.pos_of`/`nonpos_of` read signs off a word; `pos_of_not_quad` (outside a
side quadrilateral means beyond its chord); `symOf` (the symmetry inducing each relabelling),
`relabel_spec`, `extLabel`, `transfer` (a normal form carried by a symmetry, with the same least
area) and `isRadialWord_transfer`; `catalogue_class` and `exists_wordAct_eq` (finite checks).

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

/-! ### The angular order around an interior point (general lemmas) -/

section General

theorem sarea_self₁₂ (p q : Point) : sarea p p q = 0 := by unfold sarea; ring
theorem sarea_self₂₃ (p q : Point) : sarea p q q = 0 := by unfold sarea; ring
theorem sarea_self₁₃ (p q : Point) : sarea p q p = 0 := by unfold sarea; ring

/-- **Orientation is transitive inside a cone.** Let `ψ(X) = [PQX] + [RPX]` (a linear function of
`X - P`, positive on the open cone at `P` spanned by `Q - P` and `R - P` when `[PQR]`… is a
convex corner). If `A, B, C` are on the positive side of `ψ`, `[PAB] > 0` and `[PBC] > 0`, then
`[PAC] > 0`. This is the identity `[PAC]ψ(B) = [PAB]ψ(C) + [PBC]ψ(A)`. -/
theorem sarea_pos_trans {P Q R A B C : Point} (hAB : 0 < sarea P A B) (hBC : 0 < sarea P B C)
    (hA : 0 < sarea P Q A + sarea R P A) (hB : 0 < sarea P Q B + sarea R P B)
    (hC : 0 < sarea P Q C + sarea R P C) : 0 < sarea P A C := by
  have key : sarea P A C * (sarea P Q B + sarea R P B) =
      sarea P A B * (sarea P Q C + sarea R P C) + sarea P B C * (sarea P Q A + sarea R P A) := by
    unfold sarea; ring
  have h1 : 0 < sarea P A C * (sarea P Q B + sarea R P B) := by
    rw [key]; exact add_pos (mul_pos hAB hC) (mul_pos hBC hA)
  by_contra hc
  push Not at hc
  nlinarith [mul_nonpos_of_nonpos_of_nonneg hc hB.le]

variable {n : ℕ} [NeZero n]

theorem add_eq_ofNat (i j : Fin n) : i + j = Fin.ofNat n (i.val + j.val) := by
  ext; simp [Fin.val_add]

theorem ofNat_val_eq (i : Fin n) : Fin.ofNat n i.val = i := by
  ext; simp

theorem ofNat_add_self (t : ℕ) : (Fin.ofNat n (t + n) : Fin n) = Fin.ofNat n t := by
  ext; simp

theorem ofNat_add_one (t : ℕ) : (Fin.ofNat n t : Fin n) + 1 = Fin.ofNat n (t + 1) := by
  ext; simp [Fin.val_add, Nat.mod_add_mod, Nat.add_mod_mod]

theorem ofNat_of_lt {t : ℕ} (h : t < n) : (Fin.ofNat n t : Fin n) = ⟨t, h⟩ := by
  ext; simp [Nat.mod_eq_of_lt h]

theorem ofNat_of_ge {t : ℕ} (h1 : n ≤ t) (h2 : t < n + n) :
    (Fin.ofNat n t : Fin n) = ⟨t - n, by omega⟩ := by
  ext; simp [Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (show t - n < n by omega)]

/-- Cyclic form of strict convexity: `V_t, V_{t+a}, V_{t+b}` (indices mod `n`, `0 < a < b < n`)
turn counterclockwise. -/
theorem IsConvexPolygon.cyc_pos {V : Fin n → Point} (hV : IsConvexPolygon V) (t a b : ℕ)
    (ha : 0 < a) (hab : a < b) (hb : b < n) :
    0 < sarea (V (Fin.ofNat n t)) (V (Fin.ofNat n (t + a))) (V (Fin.ofNat n (t + b))) := by
  have hn := NeZero.pos n
  have hr : t % n < n := Nat.mod_lt _ hn
  have e0 : (Fin.ofNat n t : Fin n) = ⟨t % n, hr⟩ := by ext; simp
  have ec : ∀ c, (Fin.ofNat n (t + c) : Fin n) = Fin.ofNat n (t % n + c) := by
    intro c; ext; simp [Nat.mod_add_mod]
  rw [e0, ec a, ec b]
  rcases lt_or_ge (t % n + b) n with h2 | h2
  · rw [ofNat_of_lt (by omega : t % n + a < n), ofNat_of_lt h2]
    exact hV _ _ _ (Fin.mk_lt_mk.2 (by omega)) (Fin.mk_lt_mk.2 (by omega))
  rcases lt_or_ge (t % n + a) n with h1 | h1
  · rw [ofNat_of_lt h1, ofNat_of_ge h2 (by omega), sarea_cycle]
    exact hV _ _ _ (Fin.mk_lt_mk.2 (by omega)) (Fin.mk_lt_mk.2 (by omega))
  · rw [ofNat_of_ge h1 (by omega), ofNat_of_ge h2 (by omega), ← sarea_cycle]
    exact hV _ _ _ (Fin.mk_lt_mk.2 (by omega)) (Fin.mk_lt_mk.2 (by omega))

/-- The rays from an interior point: if `V_{i+j'}` is strictly left of the ray `O V_i`, so is
every earlier `V_{i+j}`, `0 < j < j'`. -/
theorem radial_down {V : Fin n → Point} {O : Point} (hn : 3 ≤ n) (hV : IsConvexPolygon V)
    (hO : InPolygon V O) (i j j' : Fin n) (hj : 0 < (j : ℕ)) (hjj : (j : ℕ) < j')
    (h : 0 < sarea O (V i) (V (i + j'))) : 0 < sarea O (V i) (V (i + j)) := by
  have hj' := j'.2
  rw [add_eq_ofNat] at h ⊢
  have hP : V (Fin.ofNat n i.val) = V i := by rw [ofNat_val_eq]
  have hRP : V (Fin.ofNat n (i.val + (n - 1) + 1)) = V i := by
    rw [show i.val + (n - 1) + 1 = i.val + n by omega, ofNat_add_self, ofNat_val_eq]
  have hRc : ∀ c, V (Fin.ofNat n (i.val + (n - 1) + (c + 1))) = V (Fin.ofNat n (i.val + c)) := by
    intro c; rw [show i.val + (n - 1) + (c + 1) = i.val + c + n by omega, ofNat_add_self]
  have hψ : ∀ c, 0 < c → c < n →
      0 < sarea (V i) (V (Fin.ofNat n (i.val + 1))) (V (Fin.ofNat n (i.val + c))) +
        sarea (V (Fin.ofNat n (i.val + (n - 1)))) (V i) (V (Fin.ofNat n (i.val + c))) := by
    intro c hc hcn
    rcases Nat.lt_or_ge 1 c with h1 | h1
    · have e1 := hV.cyc_pos i.val 1 c one_pos h1 hcn
      rw [hP] at e1
      have e2 : 0 ≤ sarea (V (Fin.ofNat n (i.val + (n - 1)))) (V i) (V (Fin.ofNat n (i.val + c))) := by
        rcases Nat.lt_or_ge (c + 1) n with h3 | h3
        · have := hV.cyc_pos (i.val + (n - 1)) 1 (c + 1) one_pos (by omega) h3
          rw [hRP, hRc] at this; exact this.le
        · rw [show i.val + c = i.val + (n - 1) by omega, sarea_self₁₃]
      linarith
    · have hc1 : c = 1 := by omega
      subst hc1
      have := hV.cyc_pos (i.val + (n - 1)) 1 2 one_pos one_lt_two (by omega)
      rw [hRP, hRc] at this
      rw [sarea_self₂₃]; linarith
  have hψO : 0 < sarea (V i) (V (Fin.ofNat n (i.val + 1))) O +
      sarea (V (Fin.ofNat n (i.val + (n - 1)))) (V i) O := by
    have h1 := hO (Fin.ofNat n i.val)
    have h2 := hO (Fin.ofNat n (i.val + (n - 1)))
    rw [finRotate_apply, ofNat_add_one] at h1 h2
    rw [hRP] at h2
    rw [hP] at h1
    linarith
  have hAB := hV.cyc_pos i.val j j' hj hjj hj'
  rw [hP] at hAB
  have hBC : 0 < sarea (V i) (V (Fin.ofNat n (i.val + j'.val))) O := by
    rw [sarea_cycle]; exact h
  have := sarea_pos_trans hAB hBC (hψ j hj (by omega)) (hψ j' (by omega) hj') hψO
  rw [← sarea_cycle]; exact this

omit [NeZero n] in
/-- A predicate on `Fin n` holding only at positive indices and closed downwards (among positive
indices) holds at `j > 0` exactly when `j` is at most the number of its solutions. -/
theorem iff_le_card_filter (p : Fin n → Prop) [DecidablePred p] (hp0 : ∀ j, p j → 0 < (j : ℕ))
    (hdown : ∀ j j' : Fin n, 0 < (j : ℕ) → (j : ℕ) < j' → p j' → p j) (j : Fin n)
    (hj : 0 < (j : ℕ)) : p j ↔ (j : ℕ) ≤ (Finset.univ.filter p).card := by
  constructor
  · intro hpj
    have hsub : Finset.Ioc 0 (j : ℕ) ⊆ (Finset.univ.filter p).map Fin.valEmbedding := by
      intro t ht
      simp only [Finset.mem_Ioc] at ht
      simp only [Finset.mem_map, Finset.mem_filter, Finset.mem_univ, true_and,
        Fin.valEmbedding_apply]
      refine ⟨⟨t, by omega⟩, ?_, rfl⟩
      rcases ht.2.lt_or_eq with h | h
      · exact hdown _ j ht.1 h hpj
      · have : (⟨t, by omega⟩ : Fin n) = j := Fin.ext h
        rw [this]; exact hpj
    have := Finset.card_le_card hsub
    simpa using this
  · intro hle
    by_contra hpj
    have hsub : (Finset.univ.filter p).map Fin.valEmbedding ⊆ Finset.Ioo 0 (j : ℕ) := by
      intro t ht
      simp only [Finset.mem_map, Finset.mem_filter, Finset.mem_univ, true_and,
        Fin.valEmbedding_apply] at ht
      obtain ⟨j', hpj', rfl⟩ := ht
      simp only [Finset.mem_Ioo]
      refine ⟨hp0 _ hpj', ?_⟩
      by_contra hge
      push Not at hge
      rcases hge.lt_or_eq with h | h
      · exact hpj (hdown j j' hj h hpj')
      · exact hpj (by rwa [show j = j' from Fin.ext h])
    have := Finset.card_le_card hsub
    simp at this
    omega

end General

/-- The complementary relation (2) follows from the geometric meaning (1) when no two rays are
parallel or antiparallel. -/
theorem complementary_of_isRadialWord {n : ℕ} {V : Fin n → Point} {O : Point} {k : Fin n → ℕ}
    (hnd : RaysNondegenerate V O) (hk : IsRadialWord V O k) : Complementary k := by
  intro i j hj
  have hjn := j.2
  have : NeZero n := ⟨by omega⟩
  let j' : Fin n := ⟨n - j, by omega⟩
  have hsum : i + j + j' = i := by
    ext
    simp only [Fin.val_add, j']
    rw [Nat.mod_add_mod, show i.val + j.val + (n - j.val) = i.val + n by omega, Nat.add_mod_right,
      Nat.mod_eq_of_lt i.2]
  have h1 := hk i j hj
  have h2 := hk (i + j) j' (by simp only [j']; omega)
  rw [hsum] at h2
  have hne : sarea O (V i) (V (i + j)) ≠ 0 := by
    refine hnd i (i + j) fun h => ?_
    have : j = 0 := by simpa using h
    rw [this] at hj; simp at hj
  have hsw : sarea O (V (i + j)) (V i) = -sarea O (V i) (V (i + j)) := sarea_swap₂₃ _ _ _
  rw [hsw] at h2
  simp only [j'] at h2
  rw [← h1]
  constructor
  · intro hS
    by_contra hc
    push Not at hc
    have := h2.2 hc
    linarith
  · intro hlt
    rcases lt_or_gt_of_ne hne with h | h
    · exfalso
      have := h2.1 (by linarith)
      omega
    · exact h

/-- Reading a radial word: `[O V_p V_q] > 0` when `q - p ≤ k_p`. -/
theorem IsRadialWord.pos_of {V : Fin 8 → Point} {O : Point} {k : Word} (hk : IsRadialWord V O k)
    (p q : Fin 8) (h0 : 0 < ((q - p : Fin 8) : ℕ)) (h : ((q - p : Fin 8) : ℕ) ≤ k p) :
    0 < sarea O (V p) (V q) := by
  have := (hk p (q - p) h0).2 h
  rwa [add_sub_cancel] at this

/-- Reading a radial word: `[O V_p V_q] ≤ 0` when `q - p > k_p`. -/
theorem IsRadialWord.nonpos_of {V : Fin 8 → Point} {O : Point} {k : Word}
    (hk : IsRadialWord V O k) (p q : Fin 8) (h0 : 0 < ((q - p : Fin 8) : ℕ))
    (h : k p < ((q - p : Fin 8) : ℕ)) : sarea O (V p) (V q) ≤ 0 := by
  have := hk p (q - p) h0
  rw [add_sub_cancel] at this
  by_contra hc
  push Not at hc
  have := this.1 hc
  omega

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
  rcases Nat.lt_or_ge n 3 with hn | hn
  · interval_cases n
    · exact ⟨fun i => i.elim0, fun i => i.elim0⟩
    · exfalso
      have h := hO 0
      rw [show finRotate 1 0 = 0 from Subsingleton.elim _ _, sarea_self₁₂] at h
      exact lt_irrefl _ h
    · exfalso
      have h0 := hO 0
      have h1 := hO 1
      rw [show finRotate 2 0 = 1 by decide] at h0
      rw [show finRotate 2 1 = 0 by decide, sarea_swap₁₂] at h1
      linarith
  have : NeZero n := ⟨by omega⟩
  have hk : IsRadialWord V O (radialWord V O) := by
    intro i j hj
    unfold radialWord
    rw [← iff_le_card_filter (fun j : Fin n => 0 < (j : ℕ) ∧ 0 < sarea O (V i) (V (i + j)))
      (fun j h => h.1) (fun j j' hj hjj hp => ⟨hj, radial_down hn hV hO i j j' hj hjj hp.2⟩) j hj]
    exact ⟨fun h => ⟨hj, h⟩, fun h => h.2⟩
  exact ⟨hk, complementary_of_isRadialWord hnd hk⟩

/-- `O` strictly inside the octagon but outside the closed quadrilateral `V_p V_{p+1} V_{p+2}
V_{p+3}` is strictly beyond its chord: `[O V_p V_{p+3}] > 0`. -/
theorem pos_of_not_quad {V : Fin 8 → Point} {O : Point} (hO : InPolygon V O) (p : Fin 8)
    (hq : ¬ InClosedPolygon ![V p, V (p + 1), V (p + 2), V (p + 3)] O) :
    0 < sarea O (V p) (V (p + 3)) := by
  simp only [InClosedPolygon, not_forall, not_le] at hq
  obtain ⟨i, hi⟩ := hq
  have e : ∀ m : Fin 8, finRotate 8 m = m + 1 := fun m => finRotate_apply m
  fin_cases i
  · have := hO p
    rw [e] at this
    simp [finRotate_apply] at hi
    linarith
  · have := hO (p + 1)
    rw [e, show p + 1 + 1 = p + 2 by rw [add_assoc]; rfl] at this
    simp [finRotate_apply] at hi
    linarith
  · have := hO (p + 2)
    rw [e, show p + 2 + 1 = p + 3 by rw [add_assoc]; rfl] at this
    simp [finRotate_apply] at hi
    linarith
  · simp [finRotate_apply] at hi
    linarith [sarea_swap₂₃ O (V p) (V (p + 3)), sarea_cycle O (V (p + 3)) (V p)]

/-- **Claim** (`RADIAL_CATALOGUE:claim-side-quad-bounds`). Under the same hypotheses, (4):
`k₀, k₂, k₄, k₆ ≥ 3` and `k₁, k₃, k₅, k₇ ≤ 4` (`O` is on the inner side of the chords
`V₀V₃, V₂V₅, V₄V₇, V₆V₁`; then (2) with `j = 3`).
`hand/RADIAL_CATALOGUE.md`, lines 58–66.
Uses: RADIAL_CATALOGUE:claim-encoding. -/
theorem claim_side_quad_bounds (V : Fin 8 → Point) (O : Point) (_hV : IsConvexPolygon V)
    (hO : InPolygon V O) (hnd : RaysNondegenerate V O) (hq : OutsideSideQuads V O) {k : Word}
    (hk : IsRadialWord V O k) : SideQuadBounds k := by
  have hc := complementary_of_isRadialWord hnd hk
  obtain ⟨hq0, hq2, hq4, hq6⟩ := hq
  have q0 : 3 ≤ k 0 := by
    simpa using (hk 0 3 (by decide)).1 (pos_of_not_quad hO 0 (by simpa using hq0))
  have q2 : 3 ≤ k 2 := by
    simpa using (hk 2 3 (by decide)).1 (pos_of_not_quad hO 2 (by simpa using hq2))
  have q4 : 3 ≤ k 4 := by
    simpa using (hk 4 3 (by decide)).1 (pos_of_not_quad hO 4 (by simpa using hq4))
  have q6 : 3 ≤ k 6 := by
    simpa using (hk 6 3 (by decide)).1 (pos_of_not_quad hO 6 (by simpa using hq6))
  have c0 := hc 0 3 (by decide); have c2 := hc 2 3 (by decide)
  have c4 := hc 4 3 (by decide); have c6 := hc 6 3 (by decide)
  simp only [Fin.isValue, Fin.reduceAdd] at c0 c2 c4 c6
  simp only [Fin.isValue, show ((3 : Fin 8) : ℕ) = 3 from rfl] at c0 c2 c4 c6
  exact ⟨q0, q2, q4, q6, by omega, by omega, by omega, by omega⟩

/-- **Claim** (`RADIAL_CATALOGUE:claim-ear-bounds`). If `O` is strictly inside the convex octagon,
outside its four closed side quadrilaterals (which contain the eight ears `V_iV_{i+1}V_{i+2}`),
and no rays are degenerate, then its radial word satisfies (3): `2 ≤ k_i ≤ 5`.
`hand/RADIAL_CATALOGUE.md`, lines 44–56.
Uses: RADIAL_CATALOGUE:claim-encoding. -/
theorem claim_ear_bounds (V : Fin 8 → Point) (O : Point) (hV : IsConvexPolygon V)
    (hO : InPolygon V O) (hnd : RaysNondegenerate V O) (hq : OutsideSideQuads V O) {k : Word}
    (hk : IsRadialWord V O k) : EarBounds k := by
  have hs := claim_side_quad_bounds V O hV hO hnd hq hk
  have hc := complementary_of_isRadialWord hnd hk
  obtain ⟨s0, s2, s4, s6, s1, s3, s5, s7⟩ := hs
  have c0 := hc 0 2 (by decide); have c1 := hc 1 2 (by decide)
  have c2 := hc 2 2 (by decide); have c3 := hc 3 2 (by decide)
  have c4 := hc 4 2 (by decide); have c5 := hc 5 2 (by decide)
  have c6 := hc 6 2 (by decide); have c7 := hc 7 2 (by decide)
  simp only [Fin.isValue, Fin.reduceAdd, Fin.val_two, Nat.reduceSub] at c0 c1 c2 c3 c4 c5 c6 c7
  intro i
  fin_cases i <;> simp only [Fin.zero_eta, Fin.isValue, Fin.mk_one, Fin.reduceFinMk] <;> omega

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
  refine ⟨fun k ⟨hc, he, hs⟩ i => ?_, fun t => ?_⟩
  · obtain ⟨s0, s2, s4, s6, s1, s3, s5, s7⟩ := hs
    have e0 := he 0; have e1 := he 1; have e2 := he 2; have e3 := he 3
    have e4 := he 4; have e5 := he 5; have e6 := he 6; have e7 := he 7
    have c04 := hc 0 4 (by decide); have c14 := hc 1 4 (by decide)
    have c13 := hc 1 3 (by decide); have c53 := hc 5 3 (by decide)
    have c24 := hc 2 4 (by decide); have c34 := hc 3 4 (by decide)
    have c33 := hc 3 3 (by decide); have c73 := hc 7 3 (by decide)
    simp only [Fin.isValue, Fin.reduceAdd, show ((3 : Fin 8) : ℕ) = 3 from rfl,
      show ((4 : Fin 8) : ℕ) = 4 from rfl] at c04 c14 c13 c53 c24 c34 c33 c73
    fin_cases i
    · show (4 ≤ k 0 ↔ k 4 = 3) ∧ (k 1 = 4 ↔ k 5 ≤ 3) ∧ (k 1 = 2 ↔ k 4 = 5) ∧ (k 5 = 2 ↔ k 0 = 5)
      omega
    · show (4 ≤ k 2 ↔ k 6 = 3) ∧ (k 3 = 4 ↔ k 7 ≤ 3) ∧ (k 3 = 2 ↔ k 6 = 5) ∧ (k 7 = 2 ↔ k 2 = 5)
      omega
  · have ht : t = ![t 0, t 1, t 2, t 3] := by funext i; fin_cases i <;> rfl
    constructor
    · rintro ⟨⟨h0, h0'⟩, ⟨h1, h1'⟩, ⟨h2, h2'⟩, ⟨h3, h3'⟩, hrel⟩
      have key : ∀ a b c d : Fin 6, ((3 ≤ a.val ∧ a.val ≤ 5) ∧ (2 ≤ b.val ∧ b.val ≤ 4) ∧
          (3 ≤ c.val ∧ c.val ≤ 5) ∧ (2 ≤ d.val ∧ d.val ≤ 4) ∧
          BlockRelations ![a.val, b.val, c.val, d.val]) →
          ∃ i ∈ Finset.Icc 1 6, ![a.val, b.val, c.val, d.val] = blockT i := by decide
      obtain ⟨i, hi, hti⟩ := key ⟨t 0, by omega⟩ ⟨t 1, by omega⟩ ⟨t 2, by omega⟩ ⟨t 3, by omega⟩
        ⟨⟨h0, h0'⟩, ⟨h1, h1'⟩, ⟨h2, h2'⟩, ⟨h3, h3'⟩, by rw [← ht]; exact hrel⟩
      simp only [Finset.mem_Icc] at hi
      exact ⟨i, hi.1, hi.2, by rw [ht]; exact hti⟩
    · rintro ⟨i, h1, h6, rfl⟩
      interval_cases i <;> decide

/-- **Claim** (`RADIAL_CATALOGUE:claim-36-cover`). Every word satisfying the necessary conditions
(2)–(4) is one of the 36 block pairs. (Realizability of the 36 words is not claimed.)
`hand/RADIAL_CATALOGUE.md`, lines 105–108.
Uses: RADIAL_CATALOGUE:claim-six-blocks. -/
theorem claim_36_cover (k : Word) (hk : Admissible k) : k ∈ catalogue := by
  have hb := claim_six_blocks.1 k hk
  obtain ⟨hc, he, s0, s2, s4, s6, s1, s3, s5, s7⟩ := hk
  have e0 := he 0; have e1 := he 1; have e2 := he 2; have e3 := he 3
  have e4 := he 4; have e5 := he 5; have e6 := he 6; have e7 := he 7
  have b0 : block k 0 = ![k 0, k 1, k 4, k 5] := by funext i; fin_cases i <;> rfl
  have b1 : block k 1 = ![k 2, k 3, k 6, k 7] := by funext i; fin_cases i <;> rfl
  obtain ⟨i, hi1, hi6, hi⟩ := (claim_six_blocks.2 (block k 0)).1 ⟨by rw [b0]; simp; omega,
    by rw [b0]; simp; omega, by rw [b0]; simp; omega, by rw [b0]; simp; omega, hb 0⟩
  obtain ⟨j, hj1, hj6, hj⟩ := (claim_six_blocks.2 (block k 1)).1 ⟨by rw [b1]; simp; omega,
    by rw [b1]; simp; omega, by rw [b1]; simp; omega, by rw [b1]; simp; omega, hb 1⟩
  have hkij : k = ofBlocks i j := by
    funext m
    have e := fun t => congrFun hi t
    have e' := fun t => congrFun hj t
    fin_cases m
    · exact e 0
    · exact e 1
    · exact e' 0
    · exact e' 1
    · exact e 2
    · exact e 3
    · exact e' 2
    · exact e' 3
  rw [hkij]
  simp only [catalogue, List.mem_map]
  exact ⟨(i, j), by simp [blockPairs]; omega, rfl⟩

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
  intro i j hj
  have hj8 := j.isLt
  simp only [hφ, wordAct, labelPerm]
  cases refl
  · simp only [Bool.false_eq_true, ↓reduceIte, one_mul]
    rw [show i + j + Fin.ofNat 8 (2 * r.val) = (i + Fin.ofNat 8 (2 * r.val)) + j by abel]
    exact hk _ j hj
  · simp only [↓reduceIte, neg_one_mul]
    have hc := complementary_of_isRadialWord hnd hk
    rw [show 1 - (i + j) + Fin.ofNat 8 (2 * r.val) = (1 - i + Fin.ofNat 8 (2 * r.val)) - j by
      abel, ← sarea_swap₂₃]
    have h1 := hk (1 - i + Fin.ofNat 8 (2 * r.val) - j) j hj
    rw [sub_add_cancel] at h1
    have h2 := hc (1 - i + Fin.ofNat 8 (2 * r.val) - j) j hj
    rw [sub_add_cancel] at h2
    rw [h1, h2]
    constructor <;> intro <;> omega

/-- The square symmetry inducing the relabelling `(refl, r)` of (6): the rotations
`id, (y,1-x), (1-x,1-y), (1-y,x)` for `r = 0, …, 3`, and the reflections
`(y,x), (1-x,y), (1-y,1-x), (x,1-y)`. -/
def symOf (refl : Bool) (r : Fin 4) : SquareSymmetry :=
  if refl then ![⟨true, false, false⟩, ⟨false, true, false⟩, ⟨true, true, true⟩,
    ⟨false, false, true⟩] r
  else ![⟨false, false, false⟩, ⟨true, false, true⟩, ⟨false, true, true⟩, ⟨true, true, false⟩] r

theorem symOf_sarea (refl : Bool) (r : Fin 4) (p q t : Point) :
    sarea ((symOf refl r).apply p) ((symOf refl r).apply q) ((symOf refl r).apply t) =
      (if refl then -1 else 1) * sarea p q t := by
  cases refl <;> fin_cases r <;> simp [symOf, SquareSymmetry.apply, sarea] <;> ring

/-- The anchors of the relabelled normal form, case by case (see `symOf`). -/
theorem relabel_spec (refl : Bool) (r : Fin 4) {a b c d e f g h : ℝ}
    (hA : EightBoundary.EightAnchors a b c d e f g h) :
    ∃ a' b' c' d' e' f' g' h' : ℝ, EightBoundary.EightAnchors a' b' c' d' e' f' g' h' ∧
      ∀ i, EightBoundary.octagon a' b' c' d' e' f' g' h' i =
        (symOf refl r).apply (EightBoundary.octagon a b c d e f g h (labelPerm refl r i)) := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12⟩ := hA
  cases refl <;> fin_cases r
  · exact ⟨a, b, c, d, e, f, g, h, ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12⟩,
      fun i => by fin_cases i <;> simp [EightBoundary.octagon, labelPerm, symOf,
        SquareSymmetry.apply]⟩
  · refine ⟨1 - c, d, e, 1 - f, 1 - g, h, a, 1 - b, by
      unfold EightBoundary.EightAnchors; refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
        linarith, fun i => ?_⟩
    fin_cases i <;> simp [EightBoundary.octagon, labelPerm, symOf, SquareSymmetry.apply]
  · refine ⟨1 - e, 1 - f, 1 - g, 1 - h, 1 - a, 1 - b, 1 - c, 1 - d, by
      unfold EightBoundary.EightAnchors; refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
        linarith, fun i => ?_⟩
    fin_cases i <;> simp [EightBoundary.octagon, labelPerm, symOf, SquareSymmetry.apply]
  · refine ⟨g, 1 - h, 1 - a, b, c, 1 - d, 1 - e, f, by
      unfold EightBoundary.EightAnchors; refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
        linarith, fun i => ?_⟩
    fin_cases i <;> simp [EightBoundary.octagon, labelPerm, symOf, SquareSymmetry.apply]
  · refine ⟨b, a, h, g, f, e, d, c, by
      unfold EightBoundary.EightAnchors; refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
        linarith, fun i => ?_⟩
    fin_cases i <;> simp [EightBoundary.octagon, labelPerm, symOf, SquareSymmetry.apply]
  · refine ⟨d, 1 - c, 1 - b, a, h, 1 - g, 1 - f, e, by
      unfold EightBoundary.EightAnchors; refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
        linarith, fun i => ?_⟩
    fin_cases i <;> simp [EightBoundary.octagon, labelPerm, symOf, SquareSymmetry.apply]
  · refine ⟨1 - f, 1 - e, 1 - d, 1 - c, 1 - b, 1 - a, 1 - h, 1 - g, by
      unfold EightBoundary.EightAnchors; refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
        linarith, fun i => ?_⟩
    fin_cases i <;> simp [EightBoundary.octagon, labelPerm, symOf, SquareSymmetry.apply]
  · refine ⟨1 - h, g, f, 1 - e, 1 - d, c, b, 1 - a, by
      unfold EightBoundary.EightAnchors; refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
        linarith, fun i => ?_⟩
    fin_cases i <;> simp [EightBoundary.octagon, labelPerm, symOf, SquareSymmetry.apply]

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
  obtain ⟨refl, r, rfl⟩ : ∃ refl r, symOf refl r = φ := by
    rcases φ with ⟨_ | _, _ | _, _ | _⟩
    exacts [⟨false, 0, rfl⟩, ⟨true, 3, rfl⟩, ⟨true, 1, rfl⟩, ⟨false, 2, rfl⟩, ⟨true, 0, rfl⟩,
      ⟨false, 1, rfl⟩, ⟨false, 3, rfl⟩, ⟨true, 2, rfl⟩]
  obtain ⟨a', b', c', d', e', f', g', h', hA', hoct⟩ := relabel_spec refl r hA
  exact ⟨a', b', c', d', e', f', g', h', refl, r, hA', symOf_sarea refl r, hoct⟩

/-! ### Transfer of a normal-form configuration under a square symmetry -/

/-- The relabelling of the nine points `A, …, H, O`: the octagon labels move by `labelPerm`, the
ninth point is fixed. -/
def extLabel (refl : Bool) (r : Fin 4) (i : Fin 9) : Fin 9 :=
  if hi : (i : ℕ) < 8 then Fin.castSucc (labelPerm refl r ⟨i, hi⟩) else 8

theorem extLabel_bijective (refl : Bool) (r : Fin 4) : Function.Bijective (extLabel refl r) := by
  revert refl r; decide

theorem eightConfig_castSucc (a b c d e f g h : ℝ) (O : Point) (j : Fin 8) :
    EightBoundary.eightConfig a b c d e f g h O j.castSucc = EightBoundary.octagon a b c d e f g h j := by
  fin_cases j <;> rfl

theorem eightConfig_relabel {refl : Bool} {r : Fin 4} {φ : SquareSymmetry}
    {a b c d e f g h a' b' c' d' e' f' g' h' : ℝ} (O : Point)
    (hoct : ∀ i, EightBoundary.octagon a' b' c' d' e' f' g' h' i =
      φ.apply (EightBoundary.octagon a b c d e f g h (labelPerm refl r i))) :
    EightBoundary.eightConfig a' b' c' d' e' f' g' h' (φ.apply O) =
      φ.apply ∘ EightBoundary.eightConfig a b c d e f g h O ∘ extLabel refl r := by
  funext i
  refine Fin.lastCases ?_ (fun j => ?_) i
  · simp [extLabel]; rfl
  · have hj : ((Fin.castSucc j : Fin 9) : ℕ) < 8 := by simp
    simp only [Function.comp_apply, extLabel, hj, ↓reduceDIte, eightConfig_castSucc]
    rw [hoct j]
    rfl

theorem inOpenSquare_apply (φ : SquareSymmetry) {O : Point}
    (hO : EightBoundary.InOpenSquare O) : EightBoundary.InOpenSquare (φ.apply O) := by
  obtain ⟨x, y⟩ := O
  obtain ⟨h1, h2, h3, h4⟩ := hO
  rcases φ with ⟨_ | _, _ | _, _ | _⟩ <;>
    simp only [SquareSymmetry.apply, EightBoundary.InOpenSquare, Bool.false_eq_true,
      ↓reduceIte] <;> refine ⟨?_, ?_, ?_, ?_⟩ <;> simp only at h1 h2 h3 h4 ⊢ <;> linarith

/-- **Transfer.** For each relabelling `(refl, r)` of (6), the symmetry `symOf refl r` carries the
normal form to a normal form with labels permuted by `labelPerm refl r` and the ninth point fixed;
the least area is unchanged. -/
theorem transfer (refl : Bool) (r : Fin 4) {a b c d e f g h : ℝ} {O : Point}
    (hA : EightBoundary.EightAnchors a b c d e f g h) (hO : EightBoundary.InOpenSquare O) :
    ∃ a' b' c' d' e' f' g' h' : ℝ, EightBoundary.EightAnchors a' b' c' d' e' f' g' h' ∧
      EightBoundary.InOpenSquare ((symOf refl r).apply O) ∧
      (∀ i, EightBoundary.octagon a' b' c' d' e' f' g' h' i =
        (symOf refl r).apply (EightBoundary.octagon a b c d e f g h (labelPerm refl r i))) ∧
      EightBoundary.eightConfig a' b' c' d' e' f' g' h' ((symOf refl r).apply O) =
        (symOf refl r).apply ∘ EightBoundary.eightConfig a b c d e f g h O ∘ extLabel refl r ∧
      minTriangleArea (EightBoundary.eightConfig a' b' c' d' e' f' g' h' ((symOf refl r).apply O)) =
        minTriangleArea (EightBoundary.eightConfig a b c d e f g h O) := by
  obtain ⟨a', b', c', d', e', f', g', h', hA', hoct⟩ := relabel_spec refl r hA
  have hcfg := eightConfig_relabel (φ := symOf refl r) O hoct
  refine ⟨a', b', c', d', e', f', g', h', hA', inOpenSquare_apply (symOf refl r) hO, hoct, hcfg, ?_⟩
  rw [hcfg, SquareSymmetry.minTriangleArea_comp]
  exact minTriangleArea_comp_perm _ (Equiv.ofBijective _ (extLabel_bijective refl r))

/-- Radial words transfer along `transfer`. -/
theorem isRadialWord_transfer {refl : Bool} {r : Fin 4} {a b c d e f g h a' b' c' d' e' f' g' h' : ℝ}
    {O : Point} {k : Word}
    (hoct : ∀ i, EightBoundary.octagon a' b' c' d' e' f' g' h' i =
      (symOf refl r).apply (EightBoundary.octagon a b c d e f g h (labelPerm refl r i)))
    (hnd : RaysNondegenerate (EightBoundary.octagon a b c d e f g h) O)
    (hk : IsRadialWord (EightBoundary.octagon a b c d e f g h) O k) :
    IsRadialWord (EightBoundary.octagon a' b' c' d' e' f' g' h') ((symOf refl r).apply O)
      (wordAct refl r k) := by
  have e : EightBoundary.octagon a' b' c' d' e' f' g' h' =
      fun i => (symOf refl r).apply (EightBoundary.octagon a b c d e f g h (labelPerm refl r i)) :=
    funext hoct
  rw [e]
  exact claim_symmetry_action _ O hnd refl r _ (symOf_sarea refl r) hk

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
  refine ⟨?_, ?_, by decide, ?_⟩
  · intro i j h1 h2 h3 h4
    interval_cases i <;> interval_cases j <;> decide
  · rintro c w ⟨refl, r, rfl⟩
    revert c refl r
    decide
  · rintro c c' w ⟨r1, s1, rfl⟩ ⟨r2, s2, h⟩
    revert c c' r1 s1 r2 s2
    decide +kernel

/-- Every catalogue word lies in one of the eight classes. -/
theorem catalogue_class (w : Word) (hw : w ∈ catalogue) : ∃ c, InClass c w := by
  simp only [catalogue, List.mem_map] at hw
  obtain ⟨⟨i, j⟩, hij, rfl⟩ := hw
  simp only [blockPairs, List.mem_flatMap, List.mem_range', List.mem_map, Prod.mk.injEq] at hij
  obtain ⟨i', hi', j', hj', rfl, rfl⟩ := hij
  exact ⟨classTable i' j', claim_eight_classes.1 i' j' (by omega) (by omega) (by omega)
    (by omega)⟩

/-- Two words of one class are related by one of the relabellings (6). -/
theorem exists_wordAct_eq (c : RClass) (w w' : Word) (hw : InClass c w) (hw' : InClass c w') :
    ∃ refl r, wordAct refl r w = w' := by
  obtain ⟨r1, s1, rfl⟩ := hw
  obtain ⟨r2, s2, rfl⟩ := hw'
  revert c r1 s1 r2 s2
  decide +kernel

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
  refine ⟨?_, ?_, ?_, ?_, hk.pos_of 2 5 (by decide) (by decide)⟩
  · rw [sarea_cycle]; exact hk.pos_of 0 3 (by decide) (by decide)
  · rw [sarea_cycle]; exact hk.pos_of 3 7 (by decide) (by decide)
  · rw [← sarea_cycle]; exact hk.pos_of 4 1 (by decide) (by decide)
  · rw [sarea_cycle]; exact hk.pos_of 6 2 (by decide) (by decide)

end Heilbronn.RadialCatalogue
