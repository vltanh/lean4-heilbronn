module

public import Heilbronn.Common.Families

/-! # The C1 setting: anchors, lower triangle, caps and anchor-ray words

Shared definitions for the C1 notes (`hand/C1_ZERO_LOWER.md`, `hand/C1_MIXED_PENTAGON.md`, the
two-lower chain `hand/C1_TWO_LOWER_*.md`, `hand/C1_TOP_CAP_*.md`, and the one-lower notes
`hand/C1_ONE_LOWER_*.md`), on top of `c1Config` and `C1Anchors` (`Heilbronn.Common.Families`).

The C1 configuration is `c1Config h c d f W X Y Z = ![O, C, D, F, H, W, X, Y, Z]` with the
anchors `O = (0,0)`, `C = (c,0)`, `D = (1,d)`, `F = (f,1)`, `H = (0,h)` (here `ptO`, `ptC c`,
`ptD d`, `ptF f`, `ptH h`) and the four free points `W, X, Y, Z` (the checker's `X0, …, X3`,
indices `5, …, 8`). All brackets `[PQR]` of the manuscripts are `sarea P Q R`, the signed doubled
area, positive for counterclockwise `P, Q, R`.

* `C1AnchorsWeak`: the weak anchor conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1` used by every
  C1 note except `C1_ZERO_LOWER.md` (which uses `C1Anchors`, with `h, c < 1`).
* `anchor`: the anchor pentagon `V₀, …, V₄ = O, C, D, F, H`, convex and counterclockwise.
* `InsideTri`: strictly inside a triangle given in either orientation; `SameSide`, `OppSide`,
  `Isolates`: pair-line sign patterns; `countFree`: the number of free points with a property.
* `InLower` and `lowerCount`: a free point strictly inside the lower anchor triangle `OHC`, and
  the number `n₀` of such free points (`hand/UNRESTRICTED.md` §3 splits on `n₀`).
* `InUpperQuad`: the open upper quadrilateral `HCDF` (`Q₀`); `InPentagon`: the open pentagon.
* `InRightCap`, `InTopCap`, `InLeftCap`: the exterior caps `𝓡`, `𝓣`, `𝓛` of the pentagon
  (`C1_ZERO_LOWER.md` §1), written as one negative pentagon-edge sign.
* `BelowOD`, `AboveOF`: the two fans of `C1_ZERO_LOWER.md` (4).
* `Region`, `InRegion`, `regionCount`: the five regions `OHC, HCDF, 𝓡, 𝓣, 𝓛` and occupancies.
* `upperQuadArea` (`W = 1 - (h-d)(c-f)`) and `topCapArea` (`Ω₀ = (1-d)(1-f)`).
* Anchor-ray words (`C1_ZERO_LOWER.md` §5 and `hand/check_c1_zero_lower_certificates.py`):
  `Word`, `wordSign` (`sign`), `WordAntisymm` ((12)), `allWords` (`ALL_WORDS`, 16 words),
  `zeroLowerWords` (`WORDS`, 11 words) with `zeroLowerWordRegion` (`CATS`), `lowerWords` (the
  three words inside `OCH`), `wordInside` (`inside`), `upperSector` (`upper_sector`), and their
  geometric meaning `HasWord` ((11)).
* Sign tables (`signs` of the checkers), on the indices `0, …, 8` = `O, C, D, F, H, X₀, …, X₃`
  (`anchorIdx`, `freeIdx`): `SignTable`, `orientedSign` (`oriented_sign`),
  `SignTable.Holds` (geometric meaning), `certifiedInside` (the strengthened occupancy rule),
  `occupancyBound` (the costs `s, 3s, ρ` of (18)).

The two facts `wordSign`/`HasWord` and `orientedSign`/`SignTable.Holds` are related by the
helper lemmas `hasWord_inside_iff` and `SignTable.Holds.orientedSign` at the end (statements
only).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1

/-! ### Anchors -/

/-- The corner anchor `O = (0, 0)`. -/
def ptO : Point := (0, 0)

/-- The bottom anchor `C = (c, 0)`. -/
def ptC (c : ℝ) : Point := (c, 0)

/-- The right anchor `D = (1, d)`. -/
def ptD (d : ℝ) : Point := (1, d)

/-- The top anchor `F = (f, 1)`. -/
def ptF (f : ℝ) : Point := (f, 1)

/-- The left anchor `H = (0, h)`. -/
def ptH (h : ℝ) : Point := (0, h)

/-- The C1 configuration with its anchors named. -/
theorem c1Config_eq (h c d f : ℝ) (W X Y Z : Point) :
    c1Config h c d f W X Y Z = ![ptO, ptC c, ptD d, ptF f, ptH h, W, X, Y, Z] := rfl

/-- The weak C1 anchor conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1` (stated by every C1 note
except `C1_ZERO_LOWER.md`, which has `h, c < 1` as in `C1Anchors`). -/
def C1AnchorsWeak (h c d f : ℝ) : Prop :=
  0 < d ∧ d ≤ h ∧ h ≤ 1 ∧ 0 < f ∧ f ≤ c ∧ c ≤ 1

theorem c1Anchors_weak {h c d f : ℝ} (hA : C1Anchors h c d f) : C1AnchorsWeak h c d f :=
  ⟨hA.1, hA.2.1, hA.2.2.1.le, hA.2.2.2.1, hA.2.2.2.2.1, hA.2.2.2.2.2.le⟩

/-- The five anchors in counterclockwise cyclic order `V₀, …, V₄ = O, C, D, F, H`
(`C1_ZERO_LOWER.md` §5). Under the anchor conditions every triple `Vᵢ, Vⱼ, Vₖ` with `i < j < k`
is counterclockwise: the anchor pentagon `OCDFH` is convex. -/
def anchor (h c d f : ℝ) : Fin 5 → Point := ![ptO, ptC c, ptD d, ptF f, ptH h]

/-- The four free points `X₀, …, X₃ = W, X, Y, Z` of `c1Config h c d f W X Y Z`. -/
def freePt (W X Y Z : Point) : Fin 4 → Point := ![W, X, Y, Z]

/-! ### Regions -/

/-- `X` lies strictly inside the triangle with vertices `A, B, C`, in either orientation. -/
def InsideTri (X A B C : Point) : Prop := InTriangle X A B C ∨ InTriangle X A C B

/-- `A` and `B` lie strictly on the same side of the line `PQ`. -/
def SameSide (P Q A B : Point) : Prop := 0 < sarea P Q A * sarea P Q B

/-- `A` and `B` lie strictly on opposite sides of the line `PQ`. -/
def OppSide (P Q A B : Point) : Prop := sarea P Q A * sarea P Q B < 0

/-- The line `PQ` isolates `V` from `A, B, E`: `V` strictly on one side, `A, B, E` strictly on
the other. -/
def Isolates (P Q V A B E : Point) : Prop :=
  OppSide P Q V A ∧ SameSide P Q A B ∧ SameSide P Q A E

/-- `X` lies strictly inside the actual lower anchor triangle `OHC` (counterclockwise `O, C, H`).
For a point of the square with `x, y > 0` this is `[HCX] < 0`; points on `OH`, `OC` or `HC`
give a zero area. -/
def InLower (h c : ℝ) (X : Point) : Prop := InTriangle X ptO (ptC c) (ptH h)

open Classical in
/-- The number of free points `W, X, Y, Z` satisfying `p`. -/
def countFree (p : Point → Prop) (W X Y Z : Point) : ℕ :=
  (Finset.univ.filter fun i : Fin 4 => p (freePt W X Y Z i)).card

/-- `n₀`: the number of free points strictly inside the lower anchor triangle `OHC`. -/
def lowerCount (h c : ℝ) (W X Y Z : Point) : ℕ := countFree (InLower h c) W X Y Z

/-- `X` lies in the open upper quadrilateral `Q₀ = HCDF`: all four edge signs positive. -/
def InUpperQuad (h c d f : ℝ) (X : Point) : Prop :=
  0 < sarea (ptH h) (ptC c) X ∧ 0 < sarea (ptC c) (ptD d) X ∧
    0 < sarea (ptD d) (ptF f) X ∧ 0 < sarea (ptF f) (ptH h) X

/-- `X` lies in the open anchor pentagon `OCDFH`: all five edge signs positive. -/
def InPentagon (h c d f : ℝ) (X : Point) : Prop :=
  0 < sarea ptO (ptC c) X ∧ 0 < sarea (ptC c) (ptD d) X ∧ 0 < sarea (ptD d) (ptF f) X ∧
    0 < sarea (ptF f) (ptH h) X ∧ 0 < sarea (ptH h) ptO X

/-- The right cap `𝓡 = conv{C, D, (1,0)} \ CD` (`C1_ZERO_LOWER.md` §1): for a point of the
square, `[CDX] < 0`. -/
def InRightCap (c d : ℝ) (X : Point) : Prop := sarea (ptC c) (ptD d) X < 0

/-- The top cap `𝓣 = conv{D, F, (1,1)} \ DF` ("beyond `DF`"): for a point of the square,
`[DFX] < 0`. -/
def InTopCap (d f : ℝ) (X : Point) : Prop := sarea (ptD d) (ptF f) X < 0

/-- The left cap `𝓛 = conv{F, H, (0,1)} \ FH`: for a point of the square, `[FHX] < 0`. -/
def InLeftCap (f h : ℝ) (X : Point) : Prop := sarea (ptF f) (ptH h) X < 0

/-- The fan below `OD` (`C1_ZERO_LOWER.md` (4)): `[ODX] < 0`. -/
def BelowOD (d : ℝ) (X : Point) : Prop := sarea ptO (ptD d) X < 0

/-- The fan above `OF` (`C1_ZERO_LOWER.md` (4)): `[OFX] > 0`. -/
def AboveOF (f : ℝ) (X : Point) : Prop := 0 < sarea ptO (ptF f) X

/-- The five regions of a C1 configuration in which a free point with no zero actual area can
lie: the lower triangle `OHC`, the upper quadrilateral `HCDF`, and the three caps. -/
inductive Region
  | lower
  | upper
  | right
  | top
  | left
  deriving DecidableEq

/-- Membership in a region, as sign conditions. -/
def InRegion (h c d f : ℝ) : Region → Point → Prop
  | .lower, X => InLower h c X
  | .upper, X => InUpperQuad h c d f X
  | .right, X => InRightCap c d X
  | .top, X => InTopCap d f X
  | .left, X => InLeftCap f h X

/-- The number of free points in a region (`n_U, n_R, n_T, n_L` of `C1_ZERO_LOWER.md` §3, and
`n₀` for `Region.lower`). -/
def regionCount (h c d f : ℝ) (r : Region) (W X Y Z : Point) : ℕ :=
  countFree (InRegion h c d f r) W X Y Z

/-- `W = [HCDF] = 1 - (h - d)(c - f)`, the doubled area of the upper quadrilateral. -/
def upperQuadArea (h c d f : ℝ) : ℝ := 1 - (h - d) * (c - f)

/-- `Ω₀ = (1 - d)(1 - f)`, the doubled area of the top cap. -/
def topCapArea (d f : ℝ) : ℝ := (1 - d) * (1 - f)

/-! ### Anchor-ray words (`C1_ZERO_LOWER.md` §5) -/

/-- A five-anchor word `r = (r₀, …, r₄)`, entries in `{0, …, 4}`. -/
abbrev Word := Fin 5 → Fin 5

/-- The checker's `sign(word, i, j)`: `(j - i) mod 5 ≤ wᵢ`. For a point with word `w` and anchors
`i ≠ j` this is the truth value of `[VᵢVⱼX] > 0` (`HasWord`). -/
def wordSign (w : Word) (i j : Fin 5) : Bool := decide ((j - i : Fin 5) ≤ w i)

/-- The antisymmetry conditions (12): `(j ≤ rᵢ) ↔ (5 - j > r_{i+j})` for `j = 1, …, 4`. -/
def WordAntisymm (w : Word) : Prop :=
  ∀ i j : Fin 5, j ≠ 0 → ((j : ℕ) ≤ (w i : ℕ) ↔ (w (i + j) : ℕ) < 5 - (j : ℕ))

instance (w : Word) : Decidable (WordAntisymm w) := by
  unfold WordAntisymm; infer_instance

/-- `ALL_WORDS`: the 16 solutions of (12), in lexicographic order. The eleven with all entries
at least `1` are the cells of the pentagon cut by its five diagonals; the five with an entry `0`
have exactly one negative pentagon-edge sign. -/
def allWords : List Word :=
  [![0, 4, 3, 2, 1], ![1, 0, 4, 3, 2], ![1, 1, 3, 3, 2], ![1, 2, 3, 2, 2], ![1, 3, 3, 2, 1],
    ![2, 1, 0, 4, 3], ![2, 1, 1, 3, 3], ![2, 1, 2, 3, 2], ![2, 2, 1, 2, 3], ![2, 2, 2, 2, 2],
    ![2, 3, 2, 2, 1], ![3, 2, 1, 0, 4], ![3, 2, 1, 1, 3], ![3, 2, 2, 1, 2], ![3, 3, 2, 1, 1],
    ![4, 3, 2, 1, 0]]

/-- `WORDS`: the eleven zero-lower words of `C1_ZERO_LOWER.md` §5 (the words with `[HCX] > 0` and
at most one negative pentagon-edge sign, not on `OC` or `HO`), indexed `0, …, 10` as in its
table; the region of each is `zeroLowerWordRegion`. -/
def zeroLowerWords : Fin 11 → Word :=
  ![![1, 0, 4, 3, 2], ![1, 1, 3, 3, 2], ![1, 2, 3, 2, 2], ![2, 1, 0, 4, 3], ![2, 1, 1, 3, 3],
    ![2, 1, 2, 3, 2], ![2, 2, 1, 2, 3], ![2, 2, 2, 2, 2], ![3, 2, 1, 0, 4], ![3, 2, 1, 1, 3],
    ![3, 2, 2, 1, 2]]

/-- `CATS`: the region of each zero-lower word (`𝓡` for index 0, `𝓣` for 3, `𝓛` for 8, `HCDF`
otherwise). -/
def zeroLowerWordRegion : Fin 11 → Region :=
  ![.right, .upper, .upper, .top, .upper, .upper, .upper, .upper, .left, .upper, .upper]

/-- The three words of points strictly inside the lower triangle `OCH` (`inside(w, (0, 1, 4))`,
reused by the one-lower checkers). -/
def lowerWords : List Word := [![1, 3, 3, 2, 1], ![2, 3, 2, 2, 1], ![3, 3, 2, 1, 1]]

/-- The checker's `inside(word, (a, b, c))`: a point with word `w` is strictly inside the anchor
triangle `V_a V_b V_c`, given in counterclockwise (increasing) order. -/
def wordInside (w : Word) (a b c : Fin 5) : Bool :=
  wordSign w a b && wordSign w b c && wordSign w c a

/-- The checker's `upper_sector(w) = (sign(4, 2), sign(1, 3))`: the signs of `[HDX] > 0` and
`[CFX] > 0`, i.e. the sector of the diagonals `HD`, `CF` of `HCDF`. -/
def upperSector (w : Word) : Bool × Bool := (wordSign w 4 2, wordSign w 1 3)

/-- `X` has the anchor-ray word `w` (`C1_ZERO_LOWER.md` (11)): for all anchors `i ≠ j`,
`[VᵢVⱼX] > 0` exactly when `(j - i) mod 5 ≤ wᵢ`. -/
def HasWord (h c d f : ℝ) (X : Point) (w : Word) : Prop :=
  ∀ i j : Fin 5, i ≠ j →
    (0 < sarea (anchor h c d f i) (anchor h c d f j) X ↔ wordSign w i j = true)

/-! ### Sign tables (`signs`, `oriented_sign` of the checkers) -/

/-- The anchor index `0, …, 4` of an index `i < 5` of the nine-point C1 configuration. -/
def anchorIdx (i : Fin 9) : Fin 5 := ⟨i.val % 5, Nat.mod_lt _ (by norm_num)⟩

/-- The free index `0, …, 3` of an index `i ≥ 5` of the nine-point C1 configuration. -/
def freeIdx (i : Fin 9) : Fin 4 := ⟨(i.val - 5) % 4, Nat.mod_lt _ (by norm_num)⟩

/-- A partial table of orientations of actual triangles of a nine-point C1 configuration indexed
`O, C, D, F, H, X₀, …, X₃` = `0, …, 8`, keyed by increasing index triples. -/
abbrev SignTable := Fin 9 × Fin 9 × Fin 9 → Option SignType

/-- The table holds for the configuration `P`: each recorded sign is the sign of the doubled
area of its increasing triple. -/
def SignTable.Holds (σ : SignTable) (P : Fin 9 → Point) : Prop :=
  ∀ a b c : Fin 9, a < b → b < c → ∀ s : SignType, σ (a, b, c) = some s →
    SignType.sign (sarea (P a) (P b) (P c)) = s

/-- The checker's `oriented_sign(signs, t)`: the recorded sign of the sorted triple, flipped by
the parity of the sorting permutation; `none` if unknown or if two indices coincide. -/
def orientedSign (σ : SignTable) (a b c : Fin 9) : Option SignType :=
  if a < b ∧ b < c then σ (a, b, c)
  else if b < c ∧ c < a then σ (b, c, a)
  else if c < a ∧ a < b then σ (c, a, b)
  else if b < a ∧ a < c then (σ (b, a, c)).map (-·)
  else if a < c ∧ c < b then (σ (a, c, b)).map (-·)
  else if c < b ∧ b < a then (σ (c, b, a)).map (-·)
  else none

/-- Certified containment (the strengthened occupancy rule, `C1_ZERO_LOWER.md` (18)): the point
`j` is counted inside the triangle `abc` of recorded orientation `s` when all three oriented
edge signs `[a b j], [b c j], [c a j]` are known and equal to `s`. -/
def certifiedInside (σ : SignTable) (a b c j : Fin 9) (s : SignType) : Prop :=
  orientedSign σ a b j = some s ∧ orientedSign σ b c j = some s ∧ orientedSign σ c a j = some s

/-- The occupancy lower bounds `b_T` of `C1_ZERO_LOWER.md` (18) for the doubled area of an actual
triangle certified to contain `k` further free points: `s = 8/73`, `3s`, `ρ = 49/60`. -/
def occupancyBound (k : ℕ) : ℝ :=
  if k = 0 then 8 / 73 else if k = 1 then 3 * (8 / 73) else 49 / 60

/-! ### Meaning of the combinatorial data (helper statements) -/

/-- Helper: for a point with word `w`, `wordInside w a b c` (with `a < b < c`) says exactly that
it is strictly inside the anchor triangle `V_a V_b V_c`. -/
theorem hasWord_inside_iff {h c d f : ℝ} {X : Point} {w : Word} (hw : HasWord h c d f X w)
    {a b e : Fin 5} (hab : a < b) (hbe : b < e) :
    wordInside w a b e = true ↔
      InTriangle X (anchor h c d f a) (anchor h c d f b) (anchor h c d f e) := by
  sorry

/-- Helper: a sign table that holds gives the orientation of every triple of distinct indices,
in any order. -/
theorem SignTable.Holds.orientedSign {σ : SignTable} {P : Fin 9 → Point} (hσ : σ.Holds P)
    {a b c : Fin 9} {s : SignType} (h : C1.orientedSign σ a b c = some s) :
    SignType.sign (sarea (P a) (P b) (P c)) = s := by
  sorry

end Heilbronn.C1
