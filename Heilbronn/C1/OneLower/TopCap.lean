module

public import Heilbronn.C1.Setting

/-! # The one-lower C1 hexagon with a single top-cap point (`hand/C1_ONE_LOWER_TOP_CAP.md`)

**Role.** A component of the one-lower C1 class: `C1_ONE_LOWER_MIXED_CAPS:Theorem2` uses the
Theorem for the occupancy with exactly one exterior point, in the top cap. The note also supplies
shared tools of the one-lower group: the cap identities (3), the capacity-one bounds (6)–(7), the
coordinate bounds (8)–(10), and the radial words of Section 3 with the ray-order rule (14) and
the upper-pair rule (15), reused by `C1_ONE_LOWER_SIDE_CAP.md` and
`C1_ONE_LOWER_TOP_TRIANGLE.md`.

**Setting.** The C1 anchors `O, C, D, F, H` (`Heilbronn.C1.ptO`, …) with `0 < d ≤ h < 1`,
`0 < f ≤ c < 1` (`C1Anchors`), minimum triangle area at least `A₀`, and the four free points
`L ∈ OHC`, `P, Q ∈ HCDF`, `X = (g, k)` in the top cap `DF(1,1) \ DF`; the configuration is
`c1Config h c d f L P Q X`. Thresholds `s = 8/73 < 2A₀` and `ρ = 49/60 < (4 + 2√3)s` are written
as the local notations `s`, `ρ`. The proof first transposes the square to get `f ≤ d` (1); the
claims that use this carry the hypothesis `f ≤ d`.

**Shared definitions (for the whole one-lower group).** Radial words of a point with respect to a
convex polygon `V₀, …, V_{n-1}` (Section 3): `HullWord`, `hullSign` (the checkers' `sign`),
`hullInside` (`inside`), `HasHullWord` (geometric meaning (12)), `HullAntisymm` (13),
`ConvexPolygon`, `interiorWords`; `hullTriples`, `insideCount`; `AtMostInside` (capacity); the
upper-pair rule `sameSector`, `upperPairSign`, `upperPairConflict` (15).

**Results.**
* `mainTheorem` (`C1_ONE_LOWER_TOP_CAP:Theorem`): the placement is impossible.
* `eq1` (transposition), `eq2`, `eq3`, `eq4`, `eq5`, `eq6` (capacity one), `eq7`, `eq8`, `eq9`,
  `eq10`, `eq11` (`W ≥ 8s`): the bounds of Sections 1–2.
* `eq12_13` (words of `L, P, Q` in the tables), `claim_prelim` (the three preliminary
  exclusions), `eq14` (ray order, general), `eq15` (upper-pair signs), `eq17_19` (the certificate
  package: every remaining cell is impossible).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLowerTopCap

open Heilbronn.C1

/-- `s = 8/73 < 2A₀`, the doubled-area threshold of the note. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`, the doubled-area bound of a triangle with two further points. -/
local notation "ρ" => (49 / 60 : ℝ)

/-! ### Radial words of a convex polygon (Section 3; shared by the one-lower group) -/

/-- A radial word `r = (r₀, …, r_{n-1})` of a point with respect to a polygon `V₀, …, V_{n-1}`. -/
abbrev HullWord (n : ℕ) := Fin n → ℕ

/-- The checkers' `sign(word, i, j)`: `(j - i) mod n ≤ rᵢ`. For a point with word `r` this is the
truth value of `[VᵢVⱼR] > 0` (`HasHullWord`). -/
def hullSign {n : ℕ} (r : HullWord n) (i j : Fin n) : Bool := decide ((j - i : Fin n).val ≤ r i)

/-- The checkers' `inside(word, (a, b, c))`: the three edge tests of the triangle `V_a V_b V_c`
(given in counterclockwise cyclic order) are positive, i.e. the point is strictly inside it. -/
def hullInside {n : ℕ} (r : HullWord n) (a b c : Fin n) : Bool :=
  hullSign r a b && hullSign r b c && hullSign r c a

/-- `R` has the radial word `r` with respect to the polygon `V` ((12) of the note): for all
vertices `i ≠ j`, `[VᵢVⱼR] > 0` exactly when `(j - i) mod n ≤ rᵢ`. -/
def HasHullWord {n : ℕ} (V : Fin n → Point) (R : Point) (r : HullWord n) : Prop :=
  ∀ i j : Fin n, i ≠ j → (0 < sarea (V i) (V j) R ↔ hullSign r i j = true)

/-- The complement relation (13): `(j ≤ rᵢ) ↔ (n - j > r_{i+j})` for `j = 1, …, n - 1`, indices
mod `n` (reversing a directed diagonal). -/
def HullAntisymm {n : ℕ} (r : HullWord n) : Prop :=
  ∀ i j : Fin n, (j : ℕ) ≠ 0 → ((j : ℕ) ≤ r i ↔ r (i + j) < n - (j : ℕ))

instance {n : ℕ} (r : HullWord n) : Decidable (HullAntisymm r) := by
  unfold HullAntisymm; infer_instance

/-- `V₀, …, V_{n-1}` is a convex polygon in counterclockwise order: every increasing triple of
vertices is counterclockwise. -/
def ConvexPolygon {n : ℕ} (V : Fin n → Point) : Prop :=
  ∀ i j k : Fin n, i < j → j < k → 0 < sarea (V i) (V j) (V k)

/-- The words of interior points: entries in `{1, …, n - 2}` (the two neighbouring hull-edge
tests) satisfying (13). For `n = 6` there are 26 (`interiorWords_card_six`). -/
def interiorWords (n : ℕ) : Finset (Fin n → Fin (n - 1)) :=
  Finset.univ.filter fun r => (∀ i, 1 ≤ (r i : ℕ)) ∧ HullAntisymm fun i => (r i : ℕ)

/-- The increasing index triples `a < b < c` of `Fin n`, in lexicographic order (the checkers'
`combinations(range(n), 3)`). -/
def hullTriples (n : ℕ) : List (Fin n × Fin n × Fin n) :=
  (List.finRange n).flatMap fun a => (List.finRange n).flatMap fun b =>
    ((List.finRange n).filter fun c => decide (a < b) && decide (b < c)).map fun c => (a, b, c)

/-- The number of the words in `ws` that place their point inside the triangle `t`. -/
def insideCount {n : ℕ} (ws : List (HullWord n)) (t : Fin n × Fin n × Fin n) : ℕ :=
  ws.countP fun r => hullInside r t.1 t.2.1 t.2.2

/-- Capacity: at most `k` of the points `Ps i` lie strictly inside the counterclockwise triangle
`ABC`. "Capacity one" is `AtMostInside 1`. -/
def AtMostInside {m : ℕ} (k : ℕ) (A B C : Point) (Ps : Fin m → Point) : Prop :=
  ∀ S : Finset (Fin m), (∀ i ∈ S, InTriangle (Ps i) A B C) → S.card ≤ k

/-- Two upper points with words `p, q` are in the same sector of both diagonals `HD`, `CF` of the
quadrilateral `HCDF`, whose vertices have indices `iH, iC, iD, iF` in the polygon. -/
def sameSector {n : ℕ} (iH iC iD iF : Fin n) (p q : HullWord n) : Bool :=
  (hullSign p iH iD == hullSign q iH iD) && (hullSign p iC iF == hullSign q iC iF)

/-- The upper-pair rule ((15) and the isolated-vertex table of Section 3; the checkers'
`upper_pair_signs`): for two points of `HCDF` with words `p, q`, not in the same sector, the forced
sign of `[V_v P Q]` at each vertex `v ∈ {H, C, D, F}` (`true` = positive).

* Both diagonals separate the pair: `sgn[PQA] = -sgn[ABP]`, `sgn[PQB] = sgn[ABP]` for `A → B`
  equal to `H → D` and to `C → F`.
* Only `CF` separates (common triangle `HDF` or `HCD`): the line `PQ` isolates `F`, resp. `C`;
  only `HD` separates (common triangle `HCF` or `CDF`): it isolates `H`, resp. `D`. The sign of
  the isolated vertex is the one given by (15) for the separating diagonal, and the other three
  signs are its negatives.

The value is `none` for other vertices and for a pair in the same sector. -/
def upperPairSign {n : ℕ} (iH iC iD iF : Fin n) (p q : HullWord n) (v : Fin n) : Option Bool :=
  let pHD := hullSign p iH iD
  let qHD := hullSign q iH iD
  let pCF := hullSign p iC iF
  let qCF := hullSign q iC iF
  if pHD = qHD ∧ pCF = qCF then none
  else if v ≠ iH ∧ v ≠ iC ∧ v ≠ iD ∧ v ≠ iF then none
  else if pHD ≠ qHD ∧ pCF ≠ qCF then
    some (if v = iH then !pHD else if v = iD then pHD else if v = iC then !pCF else pCF)
  else if pHD = qHD then
    -- only `CF` separates: common triangle `HDF` (`pHD`) or `HCD`, isolated vertex `F` or `C`
    let iso := if pHD then iF else iC
    let side := if pHD then pCF else !pCF
    some (if v = iso then side else !side)
  else
    -- only `HD` separates: common triangle `HCF` (`pCF`) or `CDF`, isolated vertex `H` or `D`
    let iso := if pCF then iH else iD
    let side := if pCF then !pHD else pHD
    some (if v = iso then side else !side)

/-- A sign conflict between the upper-pair rule and the ray-order rule (14): at some vertex where
the words differ, the forced sign of `[V_v P Q]` is not `sgn(q_v - p_v)`. -/
def upperPairConflict {n : ℕ} (iH iC iD iF : Fin n) (p q : HullWord n) : Bool :=
  (List.finRange n).any fun v =>
    (p v != q v) &&
      match upperPairSign iH iC iD iF p q v with
      | some b => b != decide (p v < q v)
      | none => false

/-- Helper: for a point with word `r`, `hullInside r a b c` (with `a < b < c`) says exactly that it
is strictly inside the triangle `V_a V_b V_c` ("containment is determined by its three edge
signs"). -/
theorem hasHullWord_inside_iff {n : ℕ} {V : Fin n → Point} {R : Point} {r : HullWord n}
    (hr : HasHullWord V R r) {a b e : Fin n} (hab : a < b) (hbe : b < e) :
    hullInside r a b e = true ↔ InTriangle R (V a) (V b) (V e) := by
  sorry

/-- Helper (the general form of (12)–(13)): a point strictly inside a convex polygon, with no zero
area against two vertices, has a radial word with entries in `{1, …, n - 2}` satisfying (13).
"Convexity makes the positive signs consecutive, and the two neighboring hull-edge tests give
`1 ≤ rᵢ ≤ n - 2`." `hand/C1_ONE_LOWER_TOP_CAP.md`, lines 211-227. -/
theorem exists_hullWord {n : ℕ} [NeZero n] {V : Fin n → Point} (hV : ConvexPolygon V)
    {R : Point} (hin : ∀ i : Fin n, 0 < sarea (V i) (V (i + 1)) R)
    (hne : ∀ i j : Fin n, i ≠ j → sarea (V i) (V j) R ≠ 0) :
    ∃ r : HullWord n, HasHullWord V R r ∧ (∀ i, 1 ≤ r i ∧ r i ≤ n - 2) ∧ HullAntisymm r := by
  sorry

/-- Helper: the 26 words of (13) for a hexagon ("The finite list of all words satisfying (13) has
26 members"). `hand/C1_ONE_LOWER_TOP_CAP.md`, line 229. -/
theorem interiorWords_card_six : (interiorWords 6).card = 26 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(14)`). The ray-order rule, for any convex polygon: at a
vertex `Vᵢ` all rays towards the other vertices and the interior points lie in the convex angle
at `Vᵢ`, of size less than `π`, and `rᵢ(R)` locates the ray `VᵢR` between the rays to
`V_{i+rᵢ}` and `V_{i+rᵢ+1}`. Hence if two interior words differ at `i`,
`sgn[VᵢRS] = sgn(rᵢ(S) - rᵢ(R))`. The same rule is (8) of `C1_ONE_LOWER_SIDE_CAP.md`, (11) of
`C1_ONE_LOWER_TOP_TRIANGLE.md`, (10) of `C1_ONE_LOWER_CONVEX_TOP.md` and (11) of
`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`. `hand/C1_ONE_LOWER_TOP_CAP.md`, lines 270-281. -/
theorem eq14 {n : ℕ} {V : Fin n → Point} (hV : ConvexPolygon V) {R S : Point}
    {r r' : HullWord n} (hR : HasHullWord V R r) (hS : HasHullWord V S r')
    (hr : ∀ i, 1 ≤ r i ∧ r i ≤ n - 2) (hr' : ∀ i, 1 ≤ r' i ∧ r' i ≤ n - 2) {i : Fin n}
    (hlt : r i < r' i) : 0 < sarea (V i) R S := by
  sorry

/-! ### The placement of the Theorem -/

/-- The hull hexagon `V₀, …, V₅ = O, C, D, X, F, H` (Section 3). -/
def hexagon (h c d f : ℝ) (X : Point) : Fin 6 → Point := ![ptO, ptC c, ptD d, X, ptF f, ptH h]

/-- The four lower words (inside `OCH`, indices `(0, 1, 5)`), indexed from zero as in the table
of Section 3. -/
def lowerWord : Fin 4 → HullWord 6 :=
  ![![1, 4, 4, 3, 2, 1], ![2, 4, 3, 3, 2, 1], ![3, 4, 3, 2, 2, 1], ![4, 4, 3, 2, 1, 1]]

/-- The 18 upper words (the four strict edge tests of `HCDF`: `(5,1), (1,2), (2,4), (4,5)`),
indexed from zero as in the table of Section 3. -/
def upperWord : Fin 18 → HullWord 6 :=
  ![![1, 1, 4, 4, 3, 2], ![1, 2, 4, 3, 3, 2], ![1, 3, 4, 3, 2, 2], ![2, 1, 2, 4, 3, 3],
    ![2, 1, 3, 4, 3, 2], ![2, 2, 2, 3, 3, 3], ![2, 2, 3, 3, 3, 2], ![2, 3, 2, 3, 2, 3],
    ![2, 3, 3, 3, 2, 2], ![3, 2, 2, 1, 3, 4], ![3, 2, 2, 2, 3, 3], ![3, 2, 3, 2, 3, 2],
    ![3, 3, 2, 1, 2, 4], ![3, 3, 2, 2, 2, 3], ![3, 3, 3, 2, 2, 2], ![4, 3, 2, 1, 1, 4],
    ![4, 3, 2, 2, 1, 3], ![4, 3, 3, 2, 1, 2]]

/-- The placement of the Theorem: C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`; minimum triangle
area of the nine points at least `A₀`; `L` strictly inside `OHC`; `P, Q` strictly inside `HCDF`;
`X = (g, k)` in the top cap (beyond `DF`, inside the virtual triangle `DF(1,1)`; it may lie on a
side of the square). The configuration is `c1Config h c d f L P Q X`. -/
structure Placement (h c d f : ℝ) (L P Q X : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)
  lower : InLower h c L
  upperP : InUpperQuad h c d f P
  upperQ : InUpperQuad h c d f Q
  top : InTopCap d f X
  topSq : X ∈ unitSquare

/-- **Theorem** (`C1_ONE_LOWER_TOP_CAP:Theorem`). There is no competitive C1 configuration whose
four free points are `L ∈ OHC`, `P, Q ∈ HCDF` and `X` in the exterior cap beyond `DF` (all
containments strict, `X` possibly on a side of the square). No order `f ≤ d` is assumed: the
proof transposes first.
`hand/C1_ONE_LOWER_TOP_CAP.md`, lines 19-34 and 433-435.
Uses: C1_ONE_LOWER_TOP_CAP:(1), C1_ONE_LOWER_TOP_CAP:(12)-(13),
C1_ONE_LOWER_TOP_CAP:claim-prelim, C1_ONE_LOWER_TOP_CAP:(14), C1_ONE_LOWER_TOP_CAP:(15),
C1_ONE_LOWER_TOP_CAP:(17)-(19). -/
theorem mainTheorem {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) : False := by
  sorry

/-! ### Section 1: common bounds and four small anchor triangles -/

section

variable {h c d f : ℝ} {L P Q X : Point}

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(1)`). Transposing the square, `(x, y) ↦ (y, x)`, maps the
placement with parameters `(h, c, d, f)` to the placement with `(c, h, f, d)`: it interchanges
`h, c` and `d, f`, preserves the lower/upper occupancy and the top cap. So `f ≤ d` may be
assumed. `hand/C1_ONE_LOWER_TOP_CAP.md`, lines 45-52. -/
theorem eq1 (hS : Placement h c d f L P Q X) :
    Placement c h f d L.swap P.swap Q.swap X.swap := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(2)`). The subdivision of `OHC` at `L` and the anchor areas
`OHF`, `OCD` give `hc ≥ 3s`, `hf ≥ s`, `cd ≥ s`, hence `h, c ≥ 3s` and `d, f ≥ s`.
`hand/C1_ONE_LOWER_TOP_CAP.md`, lines 52-64. -/
theorem eq2 (hS : Placement h c d f L P Q X) :
    3 * s ≤ h * c ∧ s ≤ h * f ∧ s ≤ c * d ∧ 3 * s ≤ h ∧ 3 * s ≤ c ∧ s ≤ d ∧ s ≤ f := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(3)`). The cap area `r := -[DFX]` of a point `X = (g, k)` has
the three expressions `(1-d)g + (1-f)k - 1 + df = (1-d)(g-f) - (1-f)(1-k) = (1-f)(k-d) - (1-d)(1-g)`
(an identity). `hand/C1_ONE_LOWER_TOP_CAP.md`, lines 66-75. -/
theorem eq3 (d f : ℝ) (X : Point) :
    -sarea (ptD d) (ptF f) X = (1 - d) * X.1 + (1 - f) * X.2 - 1 + d * f ∧
      -sarea (ptD d) (ptF f) X = (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) ∧
      -sarea (ptD d) (ptF f) X = (1 - f) * (X.2 - d) - (1 - d) * (1 - X.1) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(4)`). Since `r ≥ s`: `g - f ≥ s`, `k - d ≥ s` and
`(1-d)(1-f) ≥ s`. `hand/C1_ONE_LOWER_TOP_CAP.md`, lines 77-82.
Uses: C1_ONE_LOWER_TOP_CAP:(3). -/
theorem eq4 (hS : Placement h c d f L P Q X) :
    s ≤ X.1 - f ∧ s ≤ X.2 - d ∧ s ≤ (1 - d) * (1 - f) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(5)`). Under `f ≤ d`: `f < 67/100` and `d ≤ 57/65` (from (4)
with `f ≥ s`, and `(1-f)² ≥ s > (33/100)²`). `hand/C1_ONE_LOWER_TOP_CAP.md`, lines 84-93.
Uses: C1_ONE_LOWER_TOP_CAP:(2), C1_ONE_LOWER_TOP_CAP:(4). -/
theorem eq5 (hS : Placement h c d f L P Q X) (hfd : f ≤ d) : f < 67 / 100 ∧ d ≤ 57 / 65 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(6)`). Under `f ≤ d`, the four actual triangles `CDX`, `XFH`,
`OFH`, `DFH` have capacity at most one: none of them contains two of the free points. (`[OFH] =
hf < 67/100 < ρ`, `[DFH] < ρ` (else `[DFH] ≤ 411/803`), `[XFH], [CDX] < 1 - 7s/3 < ρ` by (7), and
the two-interior-point theorem: two further points force doubled area `≥ (4 + 2√3)s > ρ`.)
`hand/C1_ONE_LOWER_TOP_CAP.md`, lines 95-148.
Uses: C1_ONE_LOWER_TOP_CAP:(5), C1_ONE_LOWER_TOP_CAP:(7), CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq6 (hS : Placement h c d f L P Q X) (hfd : f ≤ d) :
    AtMostInside 1 (ptC c) (ptD d) X (freePt L P Q X) ∧
      AtMostInside 1 X (ptF f) (ptH h) (freePt L P Q X) ∧
      AtMostInside 1 ptO (ptF f) (ptH h) (freePt L P Q X) ∧
      AtMostInside 1 (ptD d) (ptF f) (ptH h) (freePt L P Q X) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(7)`). The positive area `α = [XFH] = (1-h)g + f(h-k)` is
below `1 - 7s/3 < ρ` (for `k ≥ h`, `α ≤ 1 - h ≤ 1 - 3s`; for `k < h`, `(1-f)k ≥ s` and AM-GM give
`α ≤ 1 + s - 2√(hs) ≤ 1 + s - 2√3 s < 1 - 7s/3`, using `√3 > 5/3`). The proof does not use
`f ≤ d`, so transposition gives the same bound for `[CDX]`.
`hand/C1_ONE_LOWER_TOP_CAP.md`, lines 125-148.
Uses: C1_ONE_LOWER_TOP_CAP:(2), C1_ONE_LOWER_TOP_CAP:(3). -/
theorem eq7 (hS : Placement h c d f L P Q X) :
    0 < sarea X (ptF f) (ptH h) ∧ sarea X (ptF f) (ptH h) < 1 - 7 * s / 3 ∧
      0 < sarea (ptC c) (ptD d) X ∧ sarea (ptC c) (ptD d) X < 1 - 7 * s / 3 ∧
      1 - 7 * s / 3 < ρ := by
  sorry

/-! ### Section 2: affine bounds for the three interior points -/

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(8)`). The areas `OHL`, `OCL`, `HCL` give `ℓ_x, ℓ_y ≥ s`,
`c - ℓ_x ≥ 2s`, `h - ℓ_y ≥ 2s` and `ℓ_x + ℓ_y ≤ 1 - s`. `hand/C1_ONE_LOWER_TOP_CAP.md`, lines
152-165. -/
theorem eq8 (hS : Placement h c d f L P Q X) :
    s ≤ L.1 ∧ s ≤ L.2 ∧ 2 * s ≤ c - L.1 ∧ 2 * s ≤ h - L.2 ∧ L.1 + L.2 ≤ 1 - s := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(9)`). The two projection identities
`(1-f)[CDR] + (1-c)[DFR] = [CDF](1-x)` and `(1-d)[FHR] + (1-h)[DFR] = [DFH](1-y)` for
`R = (x, y)`. `hand/C1_ONE_LOWER_TOP_CAP.md`, lines 167-176. -/
theorem eq9 (h c d f : ℝ) (R : Point) :
    (1 - f) * sarea (ptC c) (ptD d) R + (1 - c) * sarea (ptD d) (ptF f) R =
        sarea (ptC c) (ptD d) (ptF f) * (1 - R.1) ∧
      (1 - d) * sarea (ptF f) (ptH h) R + (1 - h) * sarea (ptD d) (ptF f) R =
        sarea (ptD d) (ptF f) (ptH h) * (1 - R.2) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(10)`). The areas `OHR`, `OCR` and the identities (9), with
`[CDF] ≤ 1 - f` and `[DFH] ≤ 1 - d`, give `s ≤ p_x, p_y, q_x, q_y ≤ 1 - s`.
`hand/C1_ONE_LOWER_TOP_CAP.md`, lines 167-187.
Uses: C1_ONE_LOWER_TOP_CAP:(9). -/
theorem eq10 (hS : Placement h c d f L P Q X) :
    (s ≤ P.1 ∧ s ≤ P.2 ∧ P.1 ≤ 1 - s ∧ P.2 ≤ 1 - s) ∧
      (s ≤ Q.1 ∧ s ≤ Q.2 ∧ Q.1 ≤ 1 - s ∧ Q.2 ≤ 1 - s) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(11)`). The six-point quadrilateral theorem applied to
`H, C, D, F, P, Q` gives `W = 2 area(HCDF) = 1 - (h-d)(c-f) ≥ 8s`; also `W ≤ 1`.
`hand/C1_ONE_LOWER_TOP_CAP.md`, lines 189-201.
Uses: QUADRILATERAL_HULL:Theorem1. -/
theorem eq11 (hS : Placement h c d f L P Q X) :
    8 * s ≤ upperQuadArea h c d f ∧ upperQuadArea h c d f ≤ 1 := by
  sorry

/-! ### Section 3: finite radial words and the upper-pair signs -/

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(12)-(13)`). Every one of `L, P, Q` has a radial word for the
hexagon `O, C, D, X, F, H` ((12), with `1 ≤ rᵢ ≤ 4` and (13)); the word of `L` is one of the four
lower words and those of `P, Q` are among the 18 upper words. (Of the 26 words of (13), the three
edge tests of `OCH` leave four and the four edge tests of `HCDF` leave 18.)
`hand/C1_ONE_LOWER_TOP_CAP.md`, lines 203-254.
Uses: C1_ONE_LOWER_TOP_CAP:(1). -/
theorem eq12_13 (hS : Placement h c d f L P Q X) :
    (∃ i, HasHullWord (hexagon h c d f X) L (lowerWord i)) ∧
      (∃ j, HasHullWord (hexagon h c d f X) P (upperWord j)) ∧
      (∃ j, HasHullWord (hexagon h c d f X) Q (upperWord j)) := by
  sorry

/-- Helper (implicit in the manuscript: "the entire one-lower case with exact hexagonal hull
`O, C, D, X, F, H`", lines 31-32): the hull hexagon is convex (counterclockwise), so the radial
words and the ray-order rule (14) apply to it. -/
theorem convex_hexagon (hS : Placement h c d f L P Q X) : ConvexPolygon (hexagon h c d f X) := by
  sorry

/-- The four capacity-one triangles (6) as index triples of the hexagon: `CDX, XFH, OFH, DFH`. -/
def capacityOneTriangles : List (Fin 6 × Fin 6 × Fin 6) :=
  [(1, 2, 3), (3, 4, 5), (0, 4, 5), (2, 4, 5)]

/-- The three preliminary tests of Section 3 for a word triple `(i, j, ℓ)` of `(L, P, Q)`: the two
upper words are not in the same sector of both diagonals `HD, CF`; no hull triangle contains all
three points; none of the four triangles (6) contains two of them. -/
def prelimTest (i : Fin 4) (j l : Fin 18) : Bool :=
  let ws := [lowerWord i, upperWord j, upperWord l]
  !sameSector 5 1 2 4 (upperWord j) (upperWord l) &&
    (hullTriples 6).all (fun t => decide (insideCount ws t ≤ 2)) &&
    capacityOneTriangles.all (fun t => decide (insideCount ws t ≤ 1))

/-- The 202 word triples `(i, j, ℓ)`, `j ≤ ℓ`, that pass the preliminary tests (228 triples) and
have no conflict between the upper-pair rule (15) and the ray-order rule (14) (26 conflicts). With
the four-way split (16) of `(0, 8, 10)` by `sgn[XLP], sgn[FLP]` they give the 205 cells. -/
def topCapCases : List (Fin 4 × Fin 18 × Fin 18) :=
  (List.finRange 4).flatMap fun i => (List.finRange 18).flatMap fun j =>
    ((List.finRange 18).filter fun l =>
      decide (j ≤ l) && prelimTest i j l &&
        !upperPairConflict 5 1 2 4 (upperWord j) (upperWord l)).map
        fun l => (i, j, l)

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:claim-prelim`). Under `f ≤ d`, the word triple of `(L, P, Q)`
passes the three preliminary tests: the two upper points are not in the same sector of both
diagonals (Theorem 2 of `ONE_CORNER_COMPLETION.md`, using `W ≤ 1` and `s > 7/64`), no hull
triangle contains all of `L, P, Q` (global C1 triangle capacity two), and no triangle of (6)
contains two of them. Exactly 228 triples with `j ≤ ℓ` pass.
`hand/C1_ONE_LOWER_TOP_CAP.md`, lines 255-268.
Uses: ONE_CORNER_COMPLETION:Theorem2, ONE_CORNER:GlobalC1OccupancyCorollary,
C1_ONE_LOWER_TOP_CAP:(6), C1_ONE_LOWER_TOP_CAP:(11). -/
theorem claim_prelim (hS : Placement h c d f L P Q X) (hfd : f ≤ d) {i : Fin 4} {j l : Fin 18}
    (hL : HasHullWord (hexagon h c d f X) L (lowerWord i))
    (hP : HasHullWord (hexagon h c d f X) P (upperWord j))
    (hQ : HasHullWord (hexagon h c d f X) Q (upperWord l)) :
    prelimTest i j l = true := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(15)`). The upper-pair signs: for the two upper points, every
sign of `[V_v P Q]`, `v ∈ {H, C, D, F}`, fixed by `upperPairSign` holds. If a diagonal `A → B`
separates the pair, `sgn[PQA] = -sgn[ABP]` and `sgn[PQB] = sgn[ABP]`; if just one diagonal
separates it, Theorem 3 of `ONE_CORNER_COMPLETION.md` (with `W ≤ 1`) isolates the middle cyclic
vertex of the common triangle (`HCD → C`, `HDF → F`, `HCF → H`, `CDF → D`). With (14) this leaves
202 of the 228 triples (`topCapCases`). `hand/C1_ONE_LOWER_TOP_CAP.md`, lines 283-309.
Uses: ONE_CORNER_COMPLETION:Theorem3, C1_ONE_LOWER_TOP_CAP:(11). -/
theorem eq15 (hS : Placement h c d f L P Q X) {j l : Fin 18}
    (hP : HasHullWord (hexagon h c d f X) P (upperWord j))
    (hQ : HasHullWord (hexagon h c d f X) Q (upperWord l)) {v : Fin 6} {b : Bool}
    (hv : upperPairSign 5 1 2 4 (upperWord j) (upperWord l) v = some b) :
    (0 < sarea (hexagon h c d f X v) P Q ↔ b = true) := by
  sorry

/-! ### Sections 4–5: the certificate package -/

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(17)-(19)`). The certificate package: under `f ≤ d`, no
placement has its word triple `(i, j, ℓ)` among the 202 remaining triples (`topCapCases`; the
triple `(0, 8, 10)` split four ways by the signs (16)). For each of the 205 cells one of 98 fixed
positive combinations of the products (17) of the 28 affine factors (Section 4, nonnegative by
(1)–(5), (8), (10)) and the actual-triangle costs (`W - 8s`, and signed areas minus `s, 3s, ρ`
according to the certified occupancy) is nonnegative, while its unit-cube bound (18) is at most
`-3/4` (largest `-6141896482601/6214313164800`, (19)). Coverage is by the reuse rule.
`hand/C1_ONE_LOWER_TOP_CAP.md`, lines 311-435 (data `c1_one_lower_top_cap_certificates.json`,
checker `check_c1_one_lower_top_cap.py`).
Uses: C1_ONE_LOWER_TOP_CAP:(2), C1_ONE_LOWER_TOP_CAP:(4), C1_ONE_LOWER_TOP_CAP:(5),
C1_ONE_LOWER_TOP_CAP:(8), C1_ONE_LOWER_TOP_CAP:(10), C1_ONE_LOWER_TOP_CAP:(11),
C1_ONE_LOWER_TOP_CAP:(14), C1_ONE_LOWER_TOP_CAP:(15), ONE_CORNER:GlobalC1OccupancyCorollary,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq17_19 (hS : Placement h c d f L P Q X) (hfd : f ≤ d) {i : Fin 4} {j l : Fin 18}
    (hcase : (i, j, l) ∈ topCapCases)
    (hL : HasHullWord (hexagon h c d f X) L (lowerWord i))
    (hP : HasHullWord (hexagon h c d f X) P (upperWord j))
    (hQ : HasHullWord (hexagon h c d f X) Q (upperWord l)) : False := by
  sorry

end

end Heilbronn.C1OneLowerTopCap
