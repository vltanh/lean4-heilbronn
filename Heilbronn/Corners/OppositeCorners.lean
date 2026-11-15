module

public import Heilbronn.Common.Families

/-! # A complete hand exclusion for the opposite-corner family C2 (`hand/OPPOSITE_CORNERS.md`)

**Role.** On the primary route: it closes family C2 (`UNRESTRICTED.md` lines 78–79). Its
Theorem 1 (six points in a half-square) is also used by `CORNER_FAMILIES.md` §6 (support
triangle), `QUADRILATERAL_HULL.md` and `TYPE_II_COMPLETION.md`; its determinant identities and
inequalities are reused *at a general threshold* by `ONE_CORNER_COMPLETION.md` and `TYPE_II.md`,
so they are stated here with an arbitrary positive doubled threshold `σ`.

**Setting** (lines 5–22, 53–129). `A = (0,0)`, `E = (1,1)`, `H = (0,h)`, `F = (f,1)` with
`0 < h, f < 1`, and two points `P, Q` of the closed half-square `T = {0 ≤ x ≤ y ≤ 1}`
(`halfSquare`); `halfSquareConfig h f P Q = ![A, E, H, F, P, Q]`. Put `α = 1 - h`, `β = 1 - f`.
For a point `X = (x, x + w)`:

* `L(X) = det(F - A, X - A) = sarea A F X` (`lineL`), `K(X) = det(H - E, X - E) = sarea E H X`
  (`lineK`), `N(X) = det(F - H, X - H) = sarea H F X` (`lineN`) (4);
* the pair-line sign of `V` is `d_V = det(Q - P, V - P) = sarea P Q V`;
* the five sign cells `CellI`, …, `CellV` of the table at lines 143–149, by the signs of
  `(L, K, N)`;
* the reflection `ρ(x, y) = (1 - y, 1 - x)` (`rho`), which swaps `A ↔ E`, `H ↔ F`,
  `h ↔ β` and cells I ↔ III, and fixes cell II.

"Every doubled triangle area is at least `σ`" is written `σ / 2 ≤ minTriangleArea (…)`.
The proof of Theorem 1 assumes all areas `> 7/128` and works mostly with the doubled threshold
`s = 6/55 < 7/64` (written `3/55 ≤ minTriangleArea …`), and in §6 with `σ = 7/64` strictly
(written `7/128 < minTriangleArea …`).

**Results.**

* `theorem1` (Theorem 1): some triangle of the six points has area `≤ 7/128`.
* `corollary2`, `corollary2_lt_A₀` (Corollary 2): every member of C2 (`c2Config`) has minimum
  area `≤ 7/128 < A₀`.
* `eq4`, `claim_anchor_areas` (2)–(5), `eq13`; `claim_CS`, `claim_CS_consequence` (6);
* `eq7`, `claim_cell_containments`, `claim_cells_classification`, `claim_cellIV_bound`,
  `eq8`, `claim_cells` (§2), `claim_reflection`;
* `claim_pair_exclusions` (§3), `claim_one_var` (9);
* `eq10`, `claim_weighted_identity` (10)–(12) (general threshold);
* §5 (pair I–II): `eq14`, `claim_pair_I_II_51` (general form of 5.1), `eq15_16` (general form
  of (15)–(16)), `claim_pair_I_II_53`, `claim_pair_I_II`;
* §6: `eq21_22` (general threshold, before and after maximizing), `claim_II_II_same_sign`;
* §7: `eq23`, `claim_sign_implication` (general sign consequence of (23)), `eq24_25` (general
  threshold), `claim_II_II_opposite_sign`.

**Implicit in the manuscript.**

* The cells are used only for points of `T` with all their areas positive; the containment
  equivalences (`claim_cell_containments`) need `X` strictly inside `T`.
* In §5 the sign `d_F > 0` (line 277) uses that `P, Q` lie in the convex quadrilateral `AEFH`,
  which holds because both are in `AEH` (inventory 02, minor gap). The statement `eq14` carries
  this through the cell hypotheses.
* (24)–(25) (§7.2) use only `d_H, d_E > 0`, `P` in cell II, `Q ∈ T` and the area bounds; the
  hypothesis `d_F > 0` of §7.2 is not needed for them, and `eq24_25` omits it.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.OppositeCorners

/-! ### The half-square setting -/

/-- The closed upper half-square `T = {(x, y) : 0 ≤ x ≤ y ≤ 1}` (line 15). -/
def halfSquare : Set Point := {p | 0 ≤ p.1 ∧ p.1 ≤ p.2 ∧ p.2 ≤ 1}

/-- The four anchors `A = (0,0)`, `E = (1,1)`, `H = (0,h)`, `F = (f,1)` and one free point `X`:
the sub-configuration used by the single-point claims of §§1–2. -/
def anchorConfig (h f : ℝ) (X : Point) : Fin 5 → Point :=
  ![(0, 0), (1, 1), (0, h), (f, 1), X]

/-- The six points `A, E, H, F, P, Q` of Theorem 1 (lines 7–16). -/
def halfSquareConfig (h f : ℝ) (P Q : Point) : Fin 6 → Point :=
  ![(0, 0), (1, 1), (0, h), (f, 1), P, Q]

/-- `L(X) = det(F - A, X - A)`, equation (4). -/
def lineL (f : ℝ) (X : Point) : ℝ := sarea (0, 0) (f, 1) X

/-- `K(X) = det(H - E, X - E)`, equation (4). -/
def lineK (h : ℝ) (X : Point) : ℝ := sarea (1, 1) (0, h) X

/-- `N(X) = det(F - H, X - H)`, equation (4). -/
def lineN (h f : ℝ) (X : Point) : ℝ := sarea (0, h) (f, 1) X

/-- Cell I, signs `(L, K, N) = (+, +, -)`: inside both `AHF` and `AEH` (table, line 145). -/
def CellI (h f : ℝ) (X : Point) : Prop := 0 < lineL f X ∧ 0 < lineK h X ∧ lineN h f X < 0

/-- Cell II, signs `(-, +, -)`: inside both `AEF` and `AEH` (line 146). -/
def CellII (h f : ℝ) (X : Point) : Prop := lineL f X < 0 ∧ 0 < lineK h X ∧ lineN h f X < 0

/-- Cell III, signs `(-, -, -)`: inside both `EHF` and `AEF` (line 147). -/
def CellIII (h f : ℝ) (X : Point) : Prop := lineL f X < 0 ∧ lineK h X < 0 ∧ lineN h f X < 0

/-- Cell IV, signs `(+, -, -)`: inside both `AHF` and `EHF` (line 148). -/
def CellIV (h f : ℝ) (X : Point) : Prop := 0 < lineL f X ∧ lineK h X < 0 ∧ lineN h f X < 0

/-- Cell V, signs `(+, -, +)`: above the line `HF` (line 149). -/
def CellV (h f : ℝ) (X : Point) : Prop := 0 < lineL f X ∧ lineK h X < 0 ∧ 0 < lineN h f X

/-- The reflection `ρ(x, y) = (1 - y, 1 - x)` across `x + y = 1` (lines 186–188). -/
def rho (p : Point) : Point := (1 - p.2, 1 - p.1)

/-! ### The theorem and its corollary -/

/-- **Theorem 1** (`OPPOSITE_CORNERS:Theorem1`). Six points in a half-square: for
`A = (0,0)`, `E = (1,1)`, `H = (0,h)`, `F = (f,1)` with `0 < h, f < 1` and any two points
`P, Q` of the closed half-square `T`, some triangle of the six points has area at most `7/128`.
`hand/OPPOSITE_CORNERS.md`, lines 5–22 (proof 49–575).

Uses: OPPOSITE_CORNERS:claim-anchor-areas, OPPOSITE_CORNERS:claim-CS, OPPOSITE_CORNERS:claim-cells,
OPPOSITE_CORNERS:claim-pair-exclusions, OPPOSITE_CORNERS:claim-one-var,
OPPOSITE_CORNERS:claim-weighted-identity, OPPOSITE_CORNERS:claim-pair-I-II,
OPPOSITE_CORNERS:claim-II-II-same-sign, OPPOSITE_CORNERS:claim-II-II-opposite-sign -/
theorem theorem1 (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare) :
    minTriangleArea (halfSquareConfig h f P Q) ≤ 7 / 128 := by
  sorry

/-- **Corollary 2** (`OPPOSITE_CORNERS:Corollary2`). The complete C2 family: a configuration
with the two opposite occupied corners `A = (0,0)`, `E = (1,1)`, one further point on each side
(the normal form `c2Config` of `GLOBAL_STRUCTURE.md` (6)) and three arbitrary free points of the
square has minimum triangle area at most `7/128`. The manuscript states it for maximizers but
notes (lines 45–47) that the argument bounds every such configuration; only `0 < h, c, d, f < 1`
is used. `hand/OPPOSITE_CORNERS.md`, lines 24–47.

Uses: GLOBAL_STRUCTURE:Theorem3, OPPOSITE_CORNERS:Theorem1 -/
theorem corollary2 (h c d f : ℝ) (hanch : C1Anchors h c d f) (X Y Z : Point)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    minTriangleArea (c2Config h c d f X Y Z) ≤ 7 / 128 := by
  sorry

/-- **Corollary 2** (`OPPOSITE_CORNERS:Corollary2`), the form used by the assembly: no member of
C2 has minimum area `A₀`, since `A₀ - 7/128 = (18√65 - 145)/640 > 0`.
`hand/OPPOSITE_CORNERS.md`, lines 24–43.

Uses: OPPOSITE_CORNERS:Corollary2 -/
theorem corollary2_lt_A₀ (h c d f : ℝ) (hanch : C1Anchors h c d f) (X Y Z : Point)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    minTriangleArea (c2Config h c d f X Y Z) < A₀ := by
  sorry

/-! ### §1. Coordinates, thresholds and elementary area identities -/

/-- **Claim** (`OPPOSITE_CORNERS:claim-anchor-areas`), equation (4): with `X = (x, x + w)` and
`β = 1 - f`, `L = fw - βx`, `K = h(1 - x) - w`, `N = fw + (h - β)x - fh`.
`hand/OPPOSITE_CORNERS.md`, lines 95–103. -/
theorem eq4 (h f : ℝ) (X : Point) :
    lineL f X = f * (X.2 - X.1) - (1 - f) * X.1 ∧
    lineK h X = h * (1 - X.1) - (X.2 - X.1) ∧
    lineN h f X = f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-anchor-areas`), (2), (3), (5), at a general doubled
threshold `s`: for `X ∈ T` with every doubled area among `A, E, H, F, X` at least `s > 0`,
`w ≥ s` (from `AEX`), `hx ≥ s` (`AHX`), `β(1 - x - w) ≥ s` (`EFX`), `|L|, |K|, |N| ≥ s`,
and the anchor bounds `hf ≥ s`, `αβ ≥ s`. `hand/OPPOSITE_CORNERS.md`, lines 76–110. -/
theorem claim_anchor_areas (h f s : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hs : 0 < s) (X : Point) (hX : X ∈ halfSquare)
    (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X)) :
    s ≤ X.2 - X.1 ∧ s ≤ h * X.1 ∧ s ≤ (1 - f) * (1 - X.2) ∧
    s ≤ |lineL f X| ∧ s ≤ |lineK h X| ∧ s ≤ |lineN h f X| ∧
    s ≤ h * f ∧ s ≤ (1 - h) * (1 - f) := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-weighted-identity`), equation (13) in general form: the
anchor bound `αβ ≥ s` with `β < 1` gives `h < 1 - s` (at `s = 6/55`, `h < 49/55`).
`hand/OPPOSITE_CORNERS.md`, lines 260–264. -/
theorem eq13 (h f s : ℝ) (hh1 : h < 1) (hf : 0 < f) (hs : s ≤ (1 - h) * (1 - f)) :
    h < 1 - s := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-CS`), equation (6): `√(hf) + √(αβ) ≤ 1`
(Cauchy–Schwarz for `(√h, √α)` and `(√f, √β)`). `hand/OPPOSITE_CORNERS.md`, lines 112–120. -/
theorem claim_CS (h f : ℝ) (hh : 0 ≤ h) (hh1 : h ≤ 1) (hf : 0 ≤ f) (hf1 : f ≤ 1) :
    Real.sqrt (h * f) + Real.sqrt ((1 - h) * (1 - f)) ≤ 1 := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-CS`), the form in which (6) is used throughout: if
`hf ≥ m₁ s` and `αβ ≥ m₂ s` then `(√m₁ + √m₂)² s ≤ 1` (e.g. `m₁ = m₂ = 3` gives `s ≤ 1/12`).
`hand/OPPOSITE_CORNERS.md`, lines 112–120, 156–163, 192–207. -/
theorem claim_CS_consequence (h f s m₁ m₂ : ℝ) (hh : 0 ≤ h) (hh1 : h ≤ 1) (hf : 0 ≤ f)
    (hf1 : f ≤ 1) (hs : 0 ≤ s) (hm₁ : 0 ≤ m₁) (hm₂ : 0 ≤ m₂) (h₁ : m₁ * s ≤ h * f)
    (h₂ : m₂ * s ≤ (1 - h) * (1 - f)) :
    (Real.sqrt m₁ + Real.sqrt m₂) ^ 2 * s ≤ 1 := by
  sorry

/-! ### §2. Five possible point cells reduce to three -/

/-- **Claim** (`OPPOSITE_CORNERS:claim-cells`), identities (7): `N = -fK - αβx` and
`N = αL - hf(1 - x - w)`. They hold for every point. `hand/OPPOSITE_CORNERS.md`, lines 133–138. -/
theorem eq7 (h f : ℝ) (X : Point) :
    lineN h f X = -f * lineK h X - (1 - h) * (1 - f) * X.1 ∧
    lineN h f X = (1 - h) * lineL f X - h * f * (1 - X.2) := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-cells`), the containment column of the table: for `X`
strictly inside `T`, the cells are the stated intersections of open triangles (written with
counterclockwise vertex orders: `AFH`, `AEH`, `AEF`, `EFH`), and cell V is `N > 0`.
`hand/OPPOSITE_CORNERS.md`, lines 143–154. -/
theorem claim_cell_containments (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f)
    (hf1 : f < 1) (X : Point) (hx : 0 < X.1) (hxy : X.1 < X.2) (hy : X.2 < 1) :
    (CellI h f X ↔ InTriangle X (0, 0) (f, 1) (0, h) ∧ InTriangle X (0, 0) (1, 1) (0, h)) ∧
    (CellII h f X ↔ InTriangle X (0, 0) (1, 1) (f, 1) ∧ InTriangle X (0, 0) (1, 1) (0, h)) ∧
    (CellIII h f X ↔ InTriangle X (1, 1) (f, 1) (0, h) ∧ InTriangle X (0, 0) (1, 1) (f, 1)) ∧
    (CellIV h f X ↔ InTriangle X (0, 0) (f, 1) (0, h) ∧ InTriangle X (1, 1) (f, 1) (0, h)) ∧
    (CellV h f X ↔ 0 < lineN h f X) := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-cells`), the five-cell classification at a general
threshold: by (7), `N > 0` forces `L > 0` and `K < 0`, so a point of `T` all of whose doubled
areas with the anchors are at least `s > 0` lies in one of the cells I–V.
`hand/OPPOSITE_CORNERS.md`, lines 133–149.

Uses: OPPOSITE_CORNERS:claim-anchor-areas -/
theorem claim_cells_classification (h f s : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f)
    (hf1 : f < 1) (hs : 0 < s) (X : Point) (hX : X ∈ halfSquare)
    (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X)) :
    CellI h f X ∨ CellII h f X ∨ CellIII h f X ∨ CellIV h f X ∨ CellV h f X := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-cells`), cell IV at a general threshold: a point of
cell IV subdivides both `AHF` and `EHF`, so `hf ≥ 3s` and `αβ ≥ 3s`.
`hand/OPPOSITE_CORNERS.md`, lines 156–163. -/
theorem claim_cellIV_bound (h f s : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hs : 0 < s) (X : Point) (hX : X ∈ halfSquare)
    (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X)) (hIV : CellIV h f X) :
    3 * s ≤ h * f ∧ 3 * s ≤ (1 - h) * (1 - f) := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-cells`), equation (8): for a point of cell V at a general
threshold `s`, with `β = 1 - f` and `D = h + β - hβ`,
`s ≤ hβ(1 - h)(1 - β)/D ≤ (5√5 - 11)/2 < 1/10`. The first inequality is the area bound
(also used by `TYPE_II.md` (3)); the others hold for all `0 < h, f < 1`.
`hand/OPPOSITE_CORNERS.md`, lines 165–184. -/
theorem eq8 (h f s : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1) (hs : 0 < s)
    (X : Point) (hX : X ∈ halfSquare) (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X))
    (hV : CellV h f X) :
    s ≤ h * (1 - f) * (1 - h) * f / (h + (1 - f) - h * (1 - f)) ∧
    h * (1 - f) * (1 - h) * f / (h + (1 - f) - h * (1 - f)) ≤ (5 * Real.sqrt 5 - 11) / 2 ∧
    (5 * Real.sqrt 5 - 11) / 2 < 1 / 10 := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-cells`). At the working threshold `s = 6/55`, cells IV and
V are empty: a point of `T` with all doubled anchor areas at least `6/55` is in cell I, II or
III. `hand/OPPOSITE_CORNERS.md`, lines 131–188.

Uses: OPPOSITE_CORNERS:claim-CS, OPPOSITE_CORNERS:claim-anchor-areas -/
theorem claim_cells (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (X : Point) (hX : X ∈ halfSquare) (hmin : 3 / 55 ≤ minTriangleArea (anchorConfig h f X)) :
    CellI h f X ∨ CellII h f X ∨ CellIII h f X := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-cells`), the reflection `ρ(x, y) = (1 - y, 1 - x)`: it
keeps `T`, maps the setting with parameters `(h, f)` to the one with `(1 - f, 1 - h)` (so
`h ↔ β`), with `L' (ρX) = -K(X)`, `K'(ρX) = -L(X)`, `N'(ρX) = N(X)`; it swaps cells I and III,
fixes cell II and keeps the minimum area of the six points.
`hand/OPPOSITE_CORNERS.md`, lines 186–188. -/
theorem claim_reflection (h f : ℝ) (X P Q : Point) :
    (rho X ∈ halfSquare ↔ X ∈ halfSquare) ∧
    lineL (1 - h) (rho X) = -lineK h X ∧ lineK (1 - f) (rho X) = -lineL f X ∧
    lineN (1 - f) (1 - h) (rho X) = lineN h f X ∧
    (CellI h f X ↔ CellIII (1 - f) (1 - h) (rho X)) ∧
    (CellIII h f X ↔ CellI (1 - f) (1 - h) (rho X)) ∧
    (CellII h f X ↔ CellII (1 - f) (1 - h) (rho X)) ∧
    minTriangleArea (halfSquareConfig (1 - f) (1 - h) (rho P) (rho Q)) =
      minTriangleArea (halfSquareConfig h f P Q) := by
  sorry

/-! ### §3. Only pairs I–II and II–II remain -/

/-- **Claim** (`OPPOSITE_CORNERS:claim-pair-exclusions`). At `s = 6/55` the pairs I–III, I–I and
III–III are impossible: I–III gives `hf, αβ ≥ 3s`, I–I gives `hf ≥ 5s`, both contradicting (6);
III–III is the reflection of I–I. `hand/OPPOSITE_CORNERS.md`, lines 190–209.

Uses: OPPOSITE_CORNERS:claim-CS, OPPOSITE_CORNERS:claim-cells -/
theorem claim_pair_exclusions (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : 3 / 55 ≤ minTriangleArea (halfSquareConfig h f P Q)) :
    ¬ (CellI h f P ∧ CellIII h f Q) ∧ ¬ (CellI h f P ∧ CellI h f Q) ∧
      ¬ (CellIII h f P ∧ CellIII h f Q) := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-one-var`), equation (9): on `0 < b < 1`,
`b(1 - b)/(3 - b) ≤ 5 - 2√6` and `b(1 - b)/(2 + b) ≤ 5 - 2√6`, and `5 - 2√6 < 6/55`.
`hand/OPPOSITE_CORNERS.md`, lines 211–221. -/
theorem claim_one_var (b : ℝ) (hb : 0 < b) (hb1 : b < 1) :
    b * (1 - b) / (3 - b) ≤ 5 - 2 * Real.sqrt 6 ∧ b * (1 - b) / (2 + b) ≤ 5 - 2 * Real.sqrt 6 ∧
      5 - 2 * Real.sqrt 6 < 6 / 55 := by
  sorry

/-! ### §4. A weighted area identity -/

/-- **Claim** (`OPPOSITE_CORNERS:claim-weighted-identity`), identities (10): with
`P = (p, p + w)` and `Q = (q, q + v)`, `d_H = (h - w)q + pv - hp`, `d_E = w(1 - q) + (p - 1)v`
and `w d_H + (h - w) d_E = K(P)(w - v)`. They hold for all points.
`hand/OPPOSITE_CORNERS.md`, lines 225–239. -/
theorem eq10 (h : ℝ) (P Q : Point) :
    sarea P Q (0, h) = (h - (P.2 - P.1)) * Q.1 + P.1 * (Q.2 - Q.1) - h * P.1 ∧
    sarea P Q (1, 1) = (P.2 - P.1) * (1 - Q.1) + (P.1 - 1) * (Q.2 - Q.1) ∧
    (P.2 - P.1) * sarea P Q (0, h) + (h - (P.2 - P.1)) * sarea P Q (1, 1) =
      lineK h P * ((P.2 - P.1) - (Q.2 - Q.1)) := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-weighted-identity`), (11)–(12) at a general positive
threshold `σ` (reused by `ONE_CORNER_COMPLETION.md` Theorem 1): if `w > 0`, `K(P) ≥ σ`,
`d_H, d_E ≥ σ`, `v ≥ σ` and `hp ≥ σ`, then `hσ ≤ K(P)(w - v) ≤ (h - σ - w)(w - σ)`, hence
`hσ ≤ (h - 2σ)²/4` and `h ≥ (4 + 2√3)σ`. `hand/OPPOSITE_CORNERS.md`, lines 241–259.

Uses: OPPOSITE_CORNERS:claim-weighted-identity (10) -/
theorem claim_weighted_identity (h σ : ℝ) (hσ : 0 < σ) (P Q : Point) (hw : 0 < P.2 - P.1)
    (hK : σ ≤ lineK h P) (hdH : σ ≤ sarea P Q (0, h)) (hdE : σ ≤ sarea P Q (1, 1))
    (hv : σ ≤ Q.2 - Q.1) (hp : σ ≤ h * P.1) :
    h * σ ≤ lineK h P * ((P.2 - P.1) - (Q.2 - Q.1)) ∧
    lineK h P * ((P.2 - P.1) - (Q.2 - Q.1)) ≤ (h - σ - (P.2 - P.1)) * ((P.2 - P.1) - σ) ∧
    h * σ ≤ (h - 2 * σ) ^ 2 / 4 ∧ (4 + 2 * Real.sqrt 3) * σ ≤ h := by
  sorry

/-! ### §5. Pair I–II -/

/-- **Claim** (`OPPOSITE_CORNERS:claim-pair-I-II`), (14) and the exhaustiveness remark, at a
general threshold `σ > 0`: for `P` in cell I and `Q` in cell II, `d_A < 0 < d_F`, and `E, H`
are not both on the negative side of `PQ`. `hand/OPPOSITE_CORNERS.md`, lines 266–283. -/
theorem eq14 (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1) (hσ : 0 < σ)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hPI : CellI h f P) (hQII : CellII h f Q) :
    sarea P Q (0, 0) < 0 ∧ 0 < sarea P Q (f, 1) ∧
      ¬ (sarea P Q (0, h) < 0 ∧ sarea P Q (1, 1) < 0) := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-pair-I-II`), case 5.1 in its general form (used by
`ONE_CORNER_COMPLETION.md` Theorem 3): for `P` in cell I, `Q` in cell II and
`d_H > 0 > d_E`, `Q` is inside `EFP`, so `β(1 - y_P) ≥ 3σ`, and with `hp ≥ σ`, `L(P) ≥ σ`,
`hβ(1 - β) ≥ σ(3h + β - 2hβ)` (here `β = 1 - f`, `1 - β = f`), before using `h ≤ 1`.
`hand/OPPOSITE_CORNERS.md`, lines 285–307. -/
theorem claim_pair_I_II_51 (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hσ : 0 < σ) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hPI : CellI h f P) (hQII : CellII h f Q)
    (hdH : 0 < sarea P Q (0, h)) (hdE : sarea P Q (1, 1) < 0) :
    3 * σ ≤ (1 - f) * (1 - P.2) ∧
      σ * (3 * h + (1 - f) - 2 * h * (1 - f)) ≤ h * (1 - f) * f := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-pair-I-II`), equations (15)–(16) in general form (used in
§5.2 and §7.1, and by `ONE_CORNER_COMPLETION.md` Theorem 3): if `P` is strictly inside the
triangle `HFQ` (counterclockwise order `H, Q, F`), `Q ∈ T` is in cell II, every doubled area is
at least `σ > 0`, and `h ≥ β = 1 - f`, then `-N(Q) ≥ 3σ` (15) and
`hβ(1 - β) ≥ σ(2h + 2β - hβ)` (the first inequality of (16), before using `h ≤ 1`).
`hand/OPPOSITE_CORNERS.md`, lines 309–341, 497–503. -/
theorem eq15_16 (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hσ : 0 < σ) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hQII : CellII h f Q) (hPin : InTriangle P (0, h) Q (f, 1)) (hβh : 1 - f ≤ h) :
    3 * σ ≤ -lineN h f Q ∧
      σ * (2 * h + 2 * (1 - f) - h * (1 - f)) ≤ h * (1 - f) * f := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-pair-I-II`), case 5.3 (`d_H, d_E > 0`) at `s = 6/55`:
impossible, by (11)–(13), the lower bound (17) for `w`, `W > h/2` (18) and the quintic
(19)–(20). `hand/OPPOSITE_CORNERS.md`, lines 343–399.

Uses: OPPOSITE_CORNERS:claim-weighted-identity -/
theorem claim_pair_I_II_53 (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : 3 / 55 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hPI : CellI h f P) (hQII : CellII h f Q)
    (hdH : 0 < sarea P Q (0, h)) (hdE : 0 < sarea P Q (1, 1)) : False := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-pair-I-II`). At `s = 6/55` the pair I–II is impossible
(three line orientations, §§5.1–5.3), and by the reflection `ρ` so is III–II.
`hand/OPPOSITE_CORNERS.md`, lines 266–399.

Uses: OPPOSITE_CORNERS:claim-one-var, OPPOSITE_CORNERS:claim-CS,
OPPOSITE_CORNERS:claim-weighted-identity -/
theorem claim_pair_I_II (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : 3 / 55 ≤ minTriangleArea (halfSquareConfig h f P Q)) :
    ¬ (CellI h f P ∧ CellII h f Q) ∧ ¬ (CellIII h f P ∧ CellII h f Q) := by
  sorry

/-! ### §6. Pair II–II with `d_A, d_E` of the same sign -/

/-- **Claim** (`OPPOSITE_CORNERS:claim-II-II-same-sign`), (21)–(22) at a general positive
threshold `σ` (reused by `ONE_CORNER_COMPLETION.md` (9) and `TYPE_II.md` line 1179): for `P, Q ∈ T`
in cell II with `d_A, d_E < 0` and every doubled area at least `σ`, put `β = 1 - f`,
`a = 1 - σ(1/h + 1/β)`, `c = 1/h + 1/β - 1` and `v_m` the smaller of the two heights
`y - x`. Then, before maximizing, `σ ≤ a v_m - c v_m²`; hence `a > 0`, `σ ≤ a²/(4c)`, and with
`U = hβ`, `S = h + β`: `U - σS > 0` and `(U - σS)² ≥ 4σU(S - U)` (22).
`hand/OPPOSITE_CORNERS.md`, lines 401–447. -/
theorem eq21_22 (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hσ : 0 < σ) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hPII : CellII h f P) (hQII : CellII h f Q)
    (hdA : sarea P Q (0, 0) < 0) (hdE : sarea P Q (1, 1) < 0) :
    let β := 1 - f
    let a := 1 - σ * (1 / h + 1 / β)
    let c := 1 / h + 1 / β - 1
    let v := min (P.2 - P.1) (Q.2 - Q.1)
    σ ≤ a * v - c * v ^ 2 ∧ 0 < a ∧ σ ≤ a ^ 2 / (4 * c) ∧
      0 < h * β - σ * (h + β) ∧
      4 * σ * (h * β) * (h + β - h * β) ≤ (h * β - σ * (h + β)) ^ 2 := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-II-II-same-sign`). With every area greater than `7/128`
(doubled threshold `σ = 7/64`, strict), two points of cell II with `d_A, d_E < 0` are impossible:
(22) gives `(8r - 7)(184r - 7) ≥ 0`, `r = √(hβ) > 7/32`, so `r ≥ 7/8`, against `r - r² > 7/64`.
(After swapping `P, Q`, this covers `d_A, d_E` of the same sign.)
`hand/OPPOSITE_CORNERS.md`, lines 401–474.

Uses: OPPOSITE_CORNERS:claim-II-II-same-sign (21)–(22) -/
theorem claim_II_II_same_sign (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : 7 / 128 < minTriangleArea (halfSquareConfig h f P Q))
    (hPII : CellII h f P) (hQII : CellII h f Q)
    (hdA : sarea P Q (0, 0) < 0) (hdE : sarea P Q (1, 1) < 0) : False := by
  sorry

/-! ### §7. Pair II–II with `d_A, d_E` of opposite signs -/

/-- **Claim** (`OPPOSITE_CORNERS:claim-II-II-opposite-sign`), identities (23): with
`w = y_P - x_P`, `u = -d_A`, `e = d_E`, `k = K(P)`, `l = -L(P)` and `b = β(1 - p - w)`,
`w d_H = ku - hpe`, `w d_F = bu - le` and `hpb - kl = -wN(P)`. They hold for all points.
`hand/OPPOSITE_CORNERS.md`, lines 476–491. -/
theorem eq23 (h f : ℝ) (P Q : Point) :
    let w := P.2 - P.1
    let u := -sarea P Q (0, 0)
    let e := sarea P Q (1, 1)
    let k := lineK h P
    let l := -lineL f P
    let b := (1 - f) * (1 - P.2)
    w * sarea P Q (0, h) = k * u - h * P.1 * e ∧ w * sarea P Q (f, 1) = b * u - l * e ∧
      h * P.1 * b - k * l = -w * lineN h f P := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-II-II-opposite-sign`), the sign consequence of (23) (used
by `ONE_CORNER_COMPLETION.md` (5) at a general threshold): if `P` is in cell II with
`0 < w`, `y_P < 1`, and `d_A < 0 < d_E`, then `d_H > 0` forces `d_F > 0`. Hence the only sign
pairs `(d_H, d_F)` are `(+,+)`, `(-,+)`, `(-,-)`. `hand/OPPOSITE_CORNERS.md`, lines 492–495.

Uses: OPPOSITE_CORNERS:claim-II-II-opposite-sign (23) -/
theorem claim_sign_implication (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hw : 0 < P.2 - P.1) (hy : P.2 < 1) (hPII : CellII h f P)
    (hdA : sarea P Q (0, 0) < 0) (hdE : 0 < sarea P Q (1, 1)) (hdH : 0 < sarea P Q (0, h)) :
    0 < sarea P Q (f, 1) := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-II-II-opposite-sign`), (24)–(25) at a general positive
threshold `σ` (reused by `ONE_CORNER_COMPLETION.md` (6) and `TYPE_II.md`): for `P ∈ T` in
cell II, `Q ∈ T`, `d_H, d_E > 0` and every doubled area at least `σ`, with `β = 1 - f` and
`w = y_P - x_P`: `σ ≤ (w - σ)[1 - σ/β - (1/h + 1/β - 1)w]` (24), and, maximizing in `w`,
`hβ - σ(β + 2h - hβ) > 0` and `4σDhβ ≤ [hβ - σ(β + 2h - hβ)]²` with `D = h + β - hβ` (25).
`hand/OPPOSITE_CORNERS.md`, lines 505–541. -/
theorem eq24_25 (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hσ : 0 < σ) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q)) (hPII : CellII h f P)
    (hdE : 0 < sarea P Q (1, 1)) (hdH : 0 < sarea P Q (0, h)) :
    let β := 1 - f
    let w := P.2 - P.1
    σ ≤ (w - σ) * (1 - σ / β - (1 / h + 1 / β - 1) * w) ∧
      0 < h * β - σ * (β + 2 * h - h * β) ∧
      4 * σ * (h + β - h * β) * (h * β) ≤ (h * β - σ * (β + 2 * h - h * β)) ^ 2 := by
  sorry

/-- **Claim** (`OPPOSITE_CORNERS:claim-II-II-opposite-sign`). At `s = 6/55`, two points of cell II
with `d_A < 0 < d_E` are impossible: case `(d_H, d_F) = (-,+)` by (15)–(16) after reflecting to
`h ≥ β`; case `(+,+)` by (24)–(25) and the quartic (26); case `(-,-)` by reflection.
`hand/OPPOSITE_CORNERS.md`, lines 476–575.

Uses: OPPOSITE_CORNERS:claim-pair-I-II (15)–(16), OPPOSITE_CORNERS:claim-one-var,
OPPOSITE_CORNERS:claim-weighted-identity -/
theorem claim_II_II_opposite_sign (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f)
    (hf1 : f < 1) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : 3 / 55 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hPII : CellII h f P) (hQII : CellII h f Q)
    (hdA : sarea P Q (0, 0) < 0) (hdE : 0 < sarea P Q (1, 1)) : False := by
  sorry

end Heilbronn.OppositeCorners
