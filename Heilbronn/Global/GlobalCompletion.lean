module

public import Heilbronn.Local.HandProof
public import Heilbronn.Global.MovingFCert

/-! # Exterior caps and the moving-F chamber (`hand/GLOBAL_COMPLETION.md`)

**Role.** Theorems 2 and 3 are on the primary route.
* **Theorem 1** (convex nonagon) is **not formalized any more**: case N6-05, its only use on the
  primary route, is closed directly by `Heilbronn/Six/ThreeCaps.lean` (nine triangles, a
  certificate). Theorem 1, `claim_7` (the polygon affine isoperimetric inequality, external
  input), `eq8`, `eq9`, `claim_area_le_one`, `claim_strictly_convex` and the nonagon-only
  definitions (`ConvexPosition`, `StrictConvexCCW`, `ear`, `polygonArea`) were deleted.
  `IsHullVertex` is kept: `Hulls/ThreeInteriorTriangles.lean` and
  `Hulls/FourInteriorQuadrilaterals.lean` count hull vertices with it. Note that
  `FourInteriorQuadrilaterals.claim_hullcount` (an off-route hull count, used by nothing) cites
  `GLOBAL_COMPLETION:Theorem1` in its proof for "at most eight hull vertices".
* **Theorem 2** (lower exterior caps, seven boundary points). Used by `SEVEN_BOUNDARY_CAPS.md`
  (lines 974-977) and `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` (line 405, uncited there).
* **Theorem 3** (the sharp chamber with `F` moved inward). Used by
  `SEVEN_BOUNDARY_TOP_CAP_RADIAL.md` (lines 99-104).

**Setting of Theorem 2** (10). `A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1)`
with `0<a<h<1, 0<b<c<1, 0<d<e<1, 0<f<1`, and two further points `P, Q` anywhere in the square
(`sevenConfig`, in this order). No overlap or hull hypothesis is made (the square membership of
`P, Q` is not even used). The proof follows the manuscript, with the three AM-GM steps of (14)
done on squares (`left_cap_core`, `cap_scalar`); the right cap is the left cap of the reflected
configuration.

**Setting of Theorem 3** (15). The chamber of `HAND_PROOF.md` Part I with `F = (f, k)`,
`0 ≤ k ≤ 1` (`movingFConfig`, order `A, B, C, D, E, F, G, H, O`). The chamber is positivity of
the eleven oriented doubled areas of `HandProof.chamberTriangles`. `GHF` and `GEF` now depend
on `k` (`eq15`).

**The proof of Theorem 3 (changed).** §5.1 (`x < c`, `Hyps3.x_lt_c`, with the AM-GM step done as
a discriminant) and the eliminations of §5.2 ((17), (18), (22), (23), (25), (27):
`Hyps3.basic`, `Hyps3.step18`, …, `Hyps3.step27`) follow the manuscript. The case analysis of
§§5.3-5.5 (the halves `u ≥ v` and `u < v`, with 32 + 886 Bernstein coefficients) is replaced by
one certificate (`Heilbronn/Global/MovingFCert.lean`): the polynomial
`T = u v² (1-v)(Δ - Φ B_*(1-g))`, the hand's `Δ` (33) corrected by `-Φ B_*(1-g) ≥ 0`, is positive
on the whole region `1/8 ≤ u`, `0.1469 ≤ v`, `u + v ≤ 0.3469`, `0 ≤ z ≤ 1/4`, `s` near `s₀`
(`Hyps3.region`), in both halves. Hence `C_* ≤ 0` (`claim_cstar`): if `C_* > 0`, (25) times
`B_*(1-g)` and (27) would give `T ≤ 0`. Then (25) gives `Φ ≥ 0`, (26) gives `u = v = p₀`, and
equality in (18) gives `w = 0`, i.e. `k = 1` (`Hyps3.k_eq_one`); `HandProof.claim_equality`
finishes.

**Results.**
* `theorem2` (with `cap_scalar`, `left_cap_core`).
* `eq15`, `claim_5_1`, `eq19`, `eq20`, `claim_25`, `claim_26`, `claim_27`, `claim_cstar`,
  `theorem3`. `claim_5_3`, `claim_5_4`, `claim_5_5` (§§5.3-5.5) were deleted: `claim_cstar`
  replaces them.

**Implicit in the manuscript.**
* Theorem 3: the claims inside the proof (§§5.2-5.5) are stated under the proof's standing
  assumption (line 447) that all eleven doubled areas are at least `s = s₀ = 2A₀`, which implies
  the chamber. `claim_26` is the scalar statement it is: its proof uses only (18) and
  `0 < u, v < 1/2`.
* Theorem 3's upper-bound part follows through the equality argument with `s = s₀` fixed
  (§5.6). The "extension by continuity to the closure" (lines 882-885) is a remark and is not
  stated.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.GlobalCompletion

open HandProof

/-! ### Hull vertices -/

/-- `P m` is a vertex of the convex hull of the configuration: some linear functional is strictly
larger at `P m` than at every other point. (Kept for `Hulls/ThreeInteriorTriangles.lean` and
`Hulls/FourInteriorQuadrilaterals.lean`, which count hull vertices with it.) -/
def IsHullVertex {n : ℕ} (P : Fin n → Point) (m : Fin n) : Prop :=
  ∃ u v : ℝ, ∀ l, l ≠ m → u * (P l).1 + v * (P l).2 < u * (P m).1 + v * (P m).2

/-! ### §4. The lower exterior caps with seven boundary contacts -/

/-- The seven-boundary configuration (10) with two further points, in the order
`A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1), P, Q`. -/
def sevenConfig (a h b c d e f : ℝ) (P Q : Point) : Fin 9 → Point :=
  ![(0, a), (0, h), (b, 0), (c, 0), (1, d), (1, e), (f, 1), P, Q]

/-- `X` lies in the closed lower-left cap `conv{(0,0), (0,a), (b,0)}`:
`x, y ≥ 0` and `x/b + y/a ≤ 1`. -/
def InLowerLeftCap (a b : ℝ) (X : Point) : Prop :=
  0 ≤ X.1 ∧ 0 ≤ X.2 ∧ a * X.1 + b * X.2 ≤ a * b

/-- `X` lies in the closed lower-right cap `conv{(1,0), (c,0), (1,d)}`:
`x ≤ 1`, `y ≥ 0` and `(1-x)/(1-c) + y/d ≤ 1`. -/
def InLowerRightCap (c d : ℝ) (X : Point) : Prop :=
  X.1 ≤ 1 ∧ 0 ≤ X.2 ∧ d * (1 - X.1) + (1 - c) * X.2 ≤ d * (1 - c)

/-- The scalar end of the proof of Theorem 2, at `s = 7/64`: no positive `P₁, P₂, X₁, X₂, X₃`
satisfy `s(P₁ + P₂) ≤ P₁P₂`, `X₁² ≥ 3P₁ + s`, `X₂² ≥ 3P₂`, `X₃² ≥ s` and
`X₁ + X₂ + X₃ ≤ 2 - s/4`: indeed `X₁X₂ > 6s`, so `(X₁ + X₂)² > 25s`, and
`(X₁ + X₂ + X₃)² > 36s > (2 - s/4)²` (the three AM-GM steps of (14)). -/
theorem cap_scalar {P₁ P₂ X₁ X₂ X₃ : ℝ} (hP1 : 0 < P₁) (hP2 : 0 < P₂)
    (hP : 7 / 64 * (P₁ + P₂) ≤ P₁ * P₂) (hX1 : 3 * P₁ + 7 / 64 ≤ X₁ ^ 2)
    (hX2 : 3 * P₂ ≤ X₂ ^ 2) (hX3 : 7 / 64 ≤ X₃ ^ 2) (hX₁ : 0 < X₁) (hX₂ : 0 < X₂)
    (hX₃ : 0 < X₃) (hsum : X₁ + X₂ + X₃ ≤ 2 - 7 / 256) : False := by
  have hP1s : 7 / 64 < P₁ := by
    by_contra hc; push Not at hc
    nlinarith [mul_nonneg hP2.le (sub_nonneg.2 hc)]
  have hP12 : 4 * (7 / 64) ≤ P₁ + P₂ := by nlinarith [sq_nonneg (P₁ - P₂)]
  have hprod : 36 * (7 / 64) ^ 2 < (3 * P₁ + 7 / 64) * (3 * P₂) := by
    have h1 : (3 * P₁ + 7 / 64) * (3 * (7 / 64) * P₁) ≤
        (3 * P₁ + 7 / 64) * (3 * (P₂ * (P₁ - 7 / 64))) :=
      mul_le_mul_of_nonneg_left (by linarith) (by positivity)
    have h2 : 0 < (P₁ - 7 / 64) * ((3 * P₁ + 7 / 64) * (3 * P₂) - 36 * (7 / 64) ^ 2) := by
      nlinarith [sq_nonneg (P₁ - 11 / 64)]
    by_contra hc; push Not at hc
    nlinarith [mul_nonneg (sub_pos.2 hP1s).le (sub_nonneg.2 hc)]
  have h12 : 6 * (7 / 64) < X₁ * X₂ := by
    have : (6 * (7 / 64)) ^ 2 < (X₁ * X₂) ^ 2 := by
      rw [mul_pow]
      nlinarith [mul_le_mul hX1 hX2 (by positivity) (by positivity)]
    nlinarith [mul_pos hX₁ hX₂]
  have hY : 25 * (7 / 64) < (X₁ + X₂) ^ 2 := by nlinarith
  have hY3 : 5 * (7 / 64) < (X₁ + X₂) * X₃ := by
    have : (5 * (7 / 64)) ^ 2 < ((X₁ + X₂) * X₃) ^ 2 := by
      rw [mul_pow]
      nlinarith [mul_le_mul hY.le hX3 (by positivity) (by positivity)]
    nlinarith [mul_pos (add_pos hX₁ hX₂) hX₃]
  nlinarith

/-- The left-cap exclusion as real inequalities (the proof of Theorem 2), at `s = 7/64`. With
`P₁ = a(c-b)` and `P₂ = b(h-a)` the cap condition and `AHP`, `BCP` give `s(P₁ + P₂) ≤ P₁P₂`;
`BCD`, `CDE`, `HFE` and AM-GM give `X₁ = M + (3a+d)/4`, `X₂ = 3L/4 + b`, `X₃ = R/4 + (1-c)` with
`X₁² ≥ 3P₁ + s`, `X₂² ≥ 3P₂`, `X₃² ≥ s` and `X₁ + X₂ + X₃ = 1 + (3h+e)/4 ≤ 2 - s/4`
(`cap_scalar`). -/
theorem left_cap_core {a h b c d e f x y : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1)
    (hb : 0 < b) (hbc : b < c) (hc : c < 1) (hd : 0 < d) (hde : d < e) (he : e < 1)
    (hf : 0 < f) (hf1 : f < 1) (hcap : a * x + b * y ≤ a * b)
    (hAHP : 7 / 64 ≤ (h - a) * x) (hBCP : 7 / 64 ≤ (c - b) * y)
    (hBCD : 7 / 64 ≤ (c - b) * d) (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hHFE : 7 / 64 ≤ (1 - f) * (1 - h) + f * (1 - e)) : False := by
  have hL : 0 < h - a := sub_pos.2 hah
  have hM : 0 < c - b := sub_pos.2 hbc
  have hR : 0 < e - d := sub_pos.2 hde
  have hP1 : 0 < a * (c - b) := mul_pos ha hM
  have hP2 : 0 < b * (h - a) := mul_pos hb hL
  have hP : 7 / 64 * (a * (c - b) + b * (h - a)) ≤ a * (c - b) * (b * (h - a)) := by
    have h1 := mul_le_mul_of_nonneg_left hcap (mul_pos hL hM).le
    have h2 := mul_le_mul_of_nonneg_left hAHP hP1.le
    have h3 := mul_le_mul_of_nonneg_left hBCP hP2.le
    linarith
  have h3he : 3 * h + e ≤ 4 - 7 / 64 := by
    nlinarith [mul_pos hf (sub_pos.2 hh), mul_pos (sub_pos.2 hf1) (sub_pos.2 he)]
  refine cap_scalar hP1 hP2 hP (X₁ := (c - b) + (3 * a + d) / 4) (X₂ := 3 * (h - a) / 4 + b)
    (X₃ := (e - d) / 4 + (1 - c)) ?_ ?_ ?_ (by positivity) (by positivity) (by linarith)
    (by linarith)
  · nlinarith [sq_nonneg ((c - b) - (3 * a + d) / 4)]
  · nlinarith [sq_nonneg (3 * (h - a) / 4 - b)]
  · nlinarith [sq_nonneg ((e - d) / 4 - (1 - c))]

/-- **Theorem 2** (`GLOBAL_COMPLETION:Theorem2`). In the seven-boundary form (10), with the two
further points anywhere in the square, if either of them lies in either closed lower exterior cap
`conv{(0,0),A,B}` or `conv{(1,0),C,D}`, then some triangle has area strictly less than `7/128`.
For the left cap only `AHP, BCP, BCD, CDE, HFE` are used, and the horizontal reflection gives the
right cap.
`hand/GLOBAL_COMPLETION.md`, lines 205-320. -/
theorem theorem2 {a h b c d e f : ℝ} {P Q : Point} (ha : 0 < a) (hah : a < h) (hh : h < 1)
    (hb : 0 < b) (hbc : b < c) (hc : c < 1) (hd : 0 < d) (hde : d < e) (he : e < 1)
    (hf : 0 < f) (hf1 : f < 1) (_hP : P ∈ unitSquare) (_hQ : Q ∈ unitSquare)
    (hcap : InLowerLeftCap a b P ∨ InLowerRightCap c d P ∨ InLowerLeftCap a b Q ∨
      InLowerRightCap c d Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  by_contra hlt
  push Not at hlt
  have ht : (0 : ℝ) < 7 / 128 := by norm_num
  -- the left cap, for a free point `X = (x, y)` at index `i`
  have left : ∀ (i : Fin 9) (X : Point), 7 ≤ i.val → sevenConfig a h b c d e f P Q i = X →
      InLowerLeftCap a b X → False := by
    intro i X hi hXi hX
    obtain ⟨x, y⟩ := X
    obtain ⟨hx, hy, hcap⟩ := hX
    have hAHX := area_of_le_min hlt 0 1 i (by decide) (by intro h; subst h; simp at hi)
      (by intro h; subst h; simp at hi)
    have hBCX := area_of_le_min hlt 2 3 i (by decide) (by intro h; subst h; simp at hi)
      (by intro h; subst h; simp at hi)
    have hBCD := area_of_le_min hlt 2 3 4
    have hCDE := area_of_le_min hlt 3 4 5
    have hHFE := area_of_le_min hlt 1 6 5
    rw [hXi] at hAHX hBCX
    simp only [sevenConfig, Matrix.cons_val] at hAHX hBCX hBCD hCDE hHFE
    have e1 := sarea_le_of_nonpos ht (by simp only [sarea]; nlinarith) hAHX
    have e2 := two_mul_le_sarea_of_nonneg ht (by simp only [sarea]; nlinarith) hBCX
    have e3 := two_mul_le_sarea_of_nonneg ht (by simp only [sarea]; nlinarith) hBCD
    have e4 := two_mul_le_sarea_of_nonneg ht (by simp only [sarea]; nlinarith) hCDE
    have e5 := sarea_le_of_nonpos ht (by simp only [sarea]; nlinarith) hHFE
    simp only [sarea] at e1 e2 e3 e4 e5
    exact left_cap_core ha hah hh hb hbc hc hd hde he hf hf1 hcap (by linarith)
      (by linarith) (by linarith) (by linarith) (by linarith)
  -- the right cap, by the reflection `x ↦ 1 - x`
  have right : ∀ (i : Fin 9) (X : Point), 7 ≤ i.val → sevenConfig a h b c d e f P Q i = X →
      InLowerRightCap c d X → False := by
    intro i X hi hXi hX
    obtain ⟨x, y⟩ := X
    obtain ⟨hx, hy, hcap⟩ := hX
    have hDEX := area_of_le_min hlt 4 5 i (by decide) (by intro h; subst h; simp at hi)
      (by intro h; subst h; simp at hi)
    have hBCX := area_of_le_min hlt 2 3 i (by decide) (by intro h; subst h; simp at hi)
      (by intro h; subst h; simp at hi)
    have hABC := area_of_le_min hlt 0 2 3
    have hABH := area_of_le_min hlt 0 2 1
    have hEFH := area_of_le_min hlt 5 6 1
    rw [hXi] at hDEX hBCX
    simp only [sevenConfig, Matrix.cons_val] at hDEX hBCX hABC hABH hEFH
    have e1 := two_mul_le_sarea_of_nonneg ht (by simp only [sarea]; nlinarith) hDEX
    have e2 := two_mul_le_sarea_of_nonneg ht (by simp only [sarea]; nlinarith) hBCX
    have e3 := two_mul_le_sarea_of_nonneg ht (by simp only [sarea]; nlinarith) hABC
    have e4 := two_mul_le_sarea_of_nonneg ht (by simp only [sarea]; nlinarith) hABH
    have e5 := two_mul_le_sarea_of_nonneg ht (by simp only [sarea]; nlinarith) hEFH
    simp only [sarea] at e1 e2 e3 e4 e5
    exact left_cap_core (a := d) (h := e) (b := 1 - c) (c := 1 - b) (d := a) (e := h)
      (f := 1 - f) (x := 1 - x) (y := y) hd hde he (by linarith) (by linarith) (by linarith)
      ha hah hh (by linarith) (by linarith) (by linarith) (by linarith)
      (by linarith) (by linarith) (by linarith) (by linarith)
  rcases hcap with h1 | h1 | h1 | h1
  · exact left 7 P le_rfl rfl h1
  · exact right 7 P le_rfl rfl h1
  · exact left 8 Q (by decide) rfl h1
  · exact right 8 Q (by decide) rfl h1

/-! ### §5. The sharp chamber with `F` moving inward -/

/-- The F-moving configuration (15), in the order `A, B, C, D, E, F, G, H, O`:
`A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,k), G=(g,1), H=(0,h), O=(x,y)`. -/
def movingFConfig (a b c d e f g h k x y : ℝ) : Fin 9 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, k), (g, 1), (0, h), (x, y)]

/-- The hypotheses of Theorem 3 other than the chamber: the strict orders, `0 ≤ k ≤ 1`, and `O`
in the square. -/
def MovingFHyp (a b c d e f g h k x y : ℝ) : Prop :=
  SharpOrders a b c d e f g h ∧ 0 ≤ k ∧ k ≤ 1 ∧ ((x, y) : Point) ∈ unitSquare

/-- `X₀ = (u(1-3v) + s + 2v)/(1-v)`, the lower bound (21) for `x`. -/
def X0 (s u v : ℝ) : ℝ := (u * (1 - 3 * v) + s + 2 * v) / (1 - v)

/-- `C_* = g(a_u + B_*) - B_* X₀` with `a_u = 1 - 3u - s`, (24). -/
def cStar (s u v g Bs : ℝ) : ℝ := g * ((1 - 3 * u - s) + Bs) - Bs * X0 s u v

/-- `N = B_*(1-v) - s`, (24). -/
def nStar (s v Bs : ℝ) : ℝ := Bs * (1 - v) - s

/-- **Claim** (`GLOBAL_COMPLETION:eq15`). The eleven oriented doubled areas of the F-moving
chamber: `ABH = bL`, `ABC = a(c-b)`, `AGH = gL`, `DEF = (1-f)(e-d)`, `GHF = M(1-h) + gδ`,
`GEF = M(1-e) - (1-g)δ`, `U₁, …, U₄` as in Part I and `OCF = U₅ = k(c-x) + (f-c)y` (with
`L = h-a`, `M = f-g`, `δ = 1-k`).
`hand/GLOBAL_COMPLETION.md`, lines 348-369. -/
theorem eq15 (a b c d e f g h k x y : ℝ) :
    chamberSarea (movingFConfig a b c d e f g h k x y) =
      ![b * (h - a), a * (c - b), g * (h - a), (1 - f) * (e - d),
        (f - g) * (1 - h) + g * (1 - k), (f - g) * (1 - e) - (1 - g) * (1 - k),
        y - a - (d - a) * x, h - y - (h - d) * x, e * (x - b) - (1 - b) * y,
        x - c + (c - g) * y, k * (c - x) + (f - c) * y] := by
  funext i
  fin_cases i <;> simp [chamberSarea, chamberTriangles, movingFConfig, sarea] <;> ring

/-- The hypotheses of Theorem 3 with all eleven doubled areas at least `s`, as plain real
inequalities (the doubled areas of `eq15`). -/
structure Hyps3 (s a b c d e f g h k x y : ℝ) : Prop where
  hs : 0 < s
  ha : 0 < a
  hah : a < h
  hh : h < 1
  hb : 0 < b
  hbc : b < c
  hc : c < 1
  hd : 0 < d
  hde : d < e
  he : e < 1
  hg : 0 < g
  hgf : g < f
  hf : f < 1
  hk0 : 0 ≤ k
  hk1 : k ≤ 1
  hx0 : 0 ≤ x
  hx1 : x ≤ 1
  hy0 : 0 ≤ y
  hy1 : y ≤ 1
  t1 : s ≤ b * (h - a)
  t2 : s ≤ a * (c - b)
  t3 : s ≤ g * (h - a)
  t4 : s ≤ (1 - f) * (e - d)
  t5 : s ≤ (f - g) * (1 - h) + g * (1 - k)
  t6 : s ≤ (f - g) * (1 - e) - (1 - g) * (1 - k)
  t7 : s ≤ y - a - (d - a) * x
  t8 : s ≤ h - y - (h - d) * x
  t9 : s ≤ e * (x - b) - (1 - b) * y
  t10 : s ≤ x - c + (c - g) * y
  t11 : s ≤ k * (c - x) + (f - c) * y

theorem Hyps3.of_all {s a b c d e f g h k x y : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : 0 < s) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i) :
    Hyps3 s a b c d e f g h k x y := by
  rw [eq15] at hall
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩, hk0, hk1, hx0, hx1, hy0, hy1⟩ :=
    hyp
  exact ⟨hs, ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf, hk0, hk1, hx0, hx1, hy0, hy1,
    by simpa using hall 0, by simpa using hall 1, by simpa using hall 2, by simpa using hall 3,
    by simpa using hall 4, by simpa using hall 5, by simpa using hall 6, by simpa using hall 7,
    by simpa using hall 8, by simpa using hall 9, by simpa using hall 10⟩

/-! #### §5.1: `x < c` -/

/-- §5.1: if all eleven doubled areas are at least `s ≥ 7/64`, then `x < c`. If `x ≥ c`, then
`k ≥ e`, `f, e ≤ 7/8`, `b ≥ s`, and `U₃ + U₅ ≥ 2s` gives the quadratic inequality
`(1-b)y² - ((f-b)e - s)y + se ≤ 0` in `y > 0`; its discriminant, with `t = s/e ≥ 1/8`, gives
`(7/8 - b - t)² ≥ (f - b - t)² ≥ 4(1-b)t`, which fails for `b ≥ 7/64`. -/
theorem Hyps3.x_lt_c {s a b c d e f g h k x y : ℝ} (H : Hyps3 s a b c d e f g h k x y)
    (hs : 7 / 64 ≤ s) : x < c := by
  have hs0 := H.hs
  have hf0 : 0 < f := H.hg.trans H.hgf
  have he0 : 0 < e := H.hd.trans H.hde
  have h1b : (0 : ℝ) ≤ 1 - b := by linarith [H.hbc, H.hc]
  by_contra hxc
  push Not at hxc
  have hke : e ≤ k := by
    by_contra hk; push Not at hk
    nlinarith [H.t6, mul_pos (by linarith [H.hgf, H.hf] : (0 : ℝ) < 1 - g) (sub_pos.2 hk),
      mul_pos (sub_pos.2 H.hf) (sub_pos.2 H.he)]
  have h1 : s ≤ (1 - f) * e := by nlinarith [H.t4, mul_pos (sub_pos.2 H.hf) H.hd]
  have h2 : s ≤ f * (1 - e) := by
    nlinarith [H.t6, mul_nonneg (by linarith [H.hgf, H.hf] : (0 : ℝ) ≤ 1 - g)
      (sub_nonneg.2 H.hk1), mul_pos H.hg (sub_pos.2 H.he)]
  have hff : s ≤ f * (1 - f) := by
    nlinarith [mul_le_mul_of_nonneg_left h1 hf0.le,
      mul_le_mul_of_nonneg_left h2 (sub_pos.2 H.hf).le]
  have hf78 : f ≤ 7 / 8 := by nlinarith
  have he78 : e ≤ 7 / 8 := by nlinarith
  have hbs : s ≤ b := by
    nlinarith [H.t1, mul_pos H.hb (by linarith [H.ha, H.hh] : (0 : ℝ) < 1 - (h - a))]
  have hfcy : s ≤ (f - c) * y := by nlinarith [H.t11, mul_nonneg H.hk0 (sub_nonneg.2 hxc)]
  have hy : 0 < y := by
    rcases H.hy0.lt_or_eq with h | h
    · exact h
    · rw [← h] at hfcy; linarith
  have hye : y < e := by
    by_contra hc'; push Not at hc'
    nlinarith [H.t9, mul_nonneg he0.le (sub_nonneg.2 H.hx1), mul_nonneg h1b (sub_nonneg.2 hc')]
  have hsum : 2 * s ≤ (c - b) * (e - y) - (1 - f) * y := by
    nlinarith [H.t9, H.t11, mul_nonpos_of_nonneg_of_nonpos (sub_nonneg.2 hke)
      (sub_nonpos.2 hxc)]
  have hq : (c - b) * y ≤ (f - b) * y - s := by nlinarith [hfcy]
  have hQ : (1 - b) * y ^ 2 - ((f - b) * e - s) * y + s * e ≤ 0 := by
    nlinarith [mul_le_mul_of_nonneg_left hsum hy.le,
      mul_le_mul_of_nonneg_right hq (sub_pos.2 hye).le]
  have hD : 0 < (f - b) * e - s := by
    by_contra hc'; push Not at hc'
    nlinarith [mul_nonneg (neg_nonneg.2 hc') hy.le, mul_pos hs0 he0,
      mul_nonneg h1b (sq_nonneg y)]
  have hdisc : 4 * (1 - b) * (s * e) ≤ ((f - b) * e - s) ^ 2 := by
    nlinarith [sq_nonneg (2 * (1 - b) * y - ((f - b) * e - s)),
      mul_nonneg h1b (neg_nonneg.2 hQ)]
  obtain ⟨t, ht⟩ : ∃ t, t * e = s := ⟨s / e, div_mul_cancel₀ s he0.ne'⟩
  have ht8 : 1 / 8 ≤ t := by nlinarith
  have hm0 : 0 < f - b - t := by nlinarith
  have hm : 4 * (1 - b) * t ≤ (f - b - t) ^ 2 := by
    have h3 : (f - b) * e - s = e * (f - b - t) := by rw [← ht]; ring
    rw [h3, ← ht] at hdisc
    have h4 : e ^ 2 * (4 * (1 - b) * t) ≤ e ^ 2 * (f - b - t) ^ 2 := by nlinarith [hdisc]
    exact le_of_mul_le_mul_left h4 (by positivity)
  have hm' : (f - b - t) ^ 2 ≤ (7 / 8 - b - t) ^ 2 :=
    pow_le_pow_left₀ hm0.le (by linarith) 2
  nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ b - 7 / 64) (by linarith : (0 : ℝ) ≤ 3 / 4 - b),
    mul_nonneg (by linarith : (0 : ℝ) ≤ t - 1 / 8) (by linarith : (0 : ℝ) ≤ 45 / 8 - 6 * b - t)]

/-! #### §5.2: the eliminations, with `u = s/L`, `v = s/M`, `w = δ/M` -/

section Steps3

variable {s a b c d e f g h k x y u v w : ℝ}

/-- The first consequences: `b, g ≥ u` (2), `h ≤ 1 - v + gw`, `e ≤ 1 - v - (1-g)w`, (17), and the
signs `x > b`, `e > y` from `U₃ > 0`. -/
theorem Hyps3.basic (H : Hyps3 s a b c d e f g h k x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    0 < u ∧ 0 < v ∧ 0 ≤ w ∧ u ≤ b ∧ u ≤ g ∧ h ≤ 1 - v + g * w ∧ e ≤ 1 - v - (1 - g) * w ∧
      x ≤ 1 - 2 * u ∧ 2 * v + w * (c - x) ≤ y ∧ b < x ∧ y < e := by
  have hL : 0 < h - a := sub_pos.2 H.hah
  have hM : 0 < f - g := sub_pos.2 H.hgf
  have hs := H.hs
  have hu0 : 0 < u := by nlinarith
  have hv0 : 0 < v := by nlinarith
  have hw0 : 0 ≤ w := by nlinarith [H.hk1]
  have hgw : g * (w * (f - g)) = g * (1 - k) := by rw [hw]
  have hgw' : (1 - g) * (w * (f - g)) = (1 - g) * (1 - k) := by rw [hw]
  have hcw : (c - x) * (w * (f - g)) = (c - x) * (1 - k) := by rw [hw]
  have hbx : b < x := by
    by_contra hc; push Not at hc
    nlinarith [H.t9, mul_nonneg (sub_nonneg.2 hc) (H.hd.trans H.hde).le,
      mul_nonneg (by linarith [H.hbc, H.hc] : (0 : ℝ) ≤ 1 - b) H.hy0]
  have hye : y < e := by
    by_contra hc; push Not at hc
    nlinarith [H.t9, mul_nonneg (H.hd.trans H.hde).le (sub_nonneg.2 H.hx1),
      mul_nonneg (by linarith [H.hbc, H.hc] : (0 : ℝ) ≤ 1 - b) (sub_nonneg.2 hc)]
  refine ⟨hu0, hv0, hw0, ?_, ?_, ?_, ?_, ?_, ?_, hbx, hye⟩
  · nlinarith [H.t1]
  · nlinarith [H.t3]
  · nlinarith [H.t5]
  · nlinarith [H.t6]
  · nlinarith [H.t7, H.t8]
  · nlinarith [H.t10, H.t11]

/-- (18) and its middle form: `s ≤ e(x-u) - (1-u)y` and `s ≤ 1 - 3u - 3v + 5uv`. -/
theorem Hyps3.step18 (H : Hyps3 s a b c d e f g h k x y) (hxc : x < c)
    (hu : u * (h - a) = s) (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    s ≤ e * (x - u) - (1 - u) * y ∧ s ≤ 1 - 3 * u - 3 * v + 5 * u * v := by
  obtain ⟨hu0, hv0, hw0, hub, hug, hhv, hev, hxu, hyv, hbx, hye⟩ := H.basic hu hv hw
  have h1 : s ≤ e * (x - u) - (1 - u) * y := by
    nlinarith [H.t9, mul_nonneg (sub_nonneg.2 hub) (sub_pos.2 hye).le]
  refine ⟨h1, ?_⟩
  have hg1 : 0 ≤ 1 - g := by linarith [H.hgf, H.hf]
  have hev' : e ≤ 1 - v := by nlinarith [mul_nonneg hg1 hw0]
  have hyv' : 2 * v ≤ y := by nlinarith [mul_nonneg hw0 (sub_pos.2 hxc).le]
  nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - v - e) (by linarith : (0 : ℝ) ≤ x - u),
    mul_nonneg (by linarith [H.hd, H.hde] : (0 : ℝ) ≤ 1 - v)
      (by linarith : (0 : ℝ) ≤ 1 - 2 * u - x),
    mul_nonneg (by linarith [H.hbc, H.hc] : (0 : ℝ) ≤ 1 - u) (by linarith : (0 : ℝ) ≤ y - 2 * v)]

/-- (22): `s(1-y) ≤ A*(x-u-s)` with `A* = 1 - v + gw - L`. -/
theorem Hyps3.step22 (H : Hyps3 s a b c d e f g h k x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    s * (1 - y) ≤ (1 - v + g * w - (h - a)) * (x - u - s) := by
  obtain ⟨hu0, hv0, hw0, hub, hug, hhv, hev, hxu, hyv, hbx, hye⟩ := H.basic hu hv hw
  have hαa : a ≤ 1 - v + g * w - (h - a) := by linarith
  have h5a : s ≤ (1 - v + g * w - (h - a)) * (c - u) := by
    nlinarith [H.t2, mul_nonneg (sub_nonneg.2 hαa) (sub_pos.2 H.hbc).le,
      mul_nonneg (H.ha.le.trans hαa) (sub_nonneg.2 hub)]
  have h5b : c * (1 - y) ≤ x - u * y - s := by
    nlinarith [H.t10, mul_nonneg (sub_nonneg.2 hug) H.hy0]
  nlinarith [mul_nonneg (sub_nonneg.2 h5a) (by linarith [H.he] : (0 : ℝ) ≤ 1 - y),
    mul_nonneg (H.ha.le.trans hαa) (sub_nonneg.2 h5b)]

/-- (23): `sx ≤ B*(1 - v - y - s + w(g-x))` with `B* = 1 - f`. -/
theorem Hyps3.step23 (H : Hyps3 s a b c d e f g h k x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    s * x ≤ (1 - f) * (1 - v - y - s + w * (g - x)) := by
  obtain ⟨hu0, hv0, hw0, hub, hug, hhv, hev, hxu, hyv, hbx, hye⟩ := H.basic hu hv hw
  have h6b : x * (e - d) ≤ 1 - v - y - s + w * (g - x) := by
    nlinarith [H.t8, mul_nonneg H.hx0 (by linarith : (0 : ℝ) ≤ 1 - v - (1 - g) * w - e),
      mul_nonneg (sub_nonneg.2 H.hx1) (by linarith : (0 : ℝ) ≤ 1 - v + g * w - h)]
  nlinarith [mul_nonneg (sub_nonneg.2 H.t4) H.hx0,
    mul_nonneg (sub_pos.2 H.hf).le (sub_nonneg.2 h6b)]

/-- (27): `w B*(1-g) < N = B*(1-v) - s`, from DEF and GEF. -/
theorem Hyps3.step27 (H : Hyps3 s a b c d e f g h k x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    w * (1 - f) * (1 - g) < (1 - f) * (1 - v) - s := by
  obtain ⟨hu0, hv0, hw0, hub, hug, hhv, hev, hxu, hyv, hbx, hye⟩ := H.basic hu hv hw
  nlinarith [H.t4, mul_pos (sub_pos.2 H.hf) H.hd,
    mul_nonneg (sub_pos.2 H.hf).le (by linarith : (0 : ℝ) ≤ 1 - v - (1 - g) * w - e)]

/-- (25) in polynomial form, multiplied by `uv(1-v)`:
`0 ≤ (1-v)·uvΦ - (1-v)uv·z a_v + uv·w·(1-v)C*`, with `z = g - u`, `B* = 1 - f` and
`(1-v)C* = g(a_u + B*)(1-v) - B*·(1-v)X₀`. -/
theorem Hyps3.step25 (H : Hyps3 s a b c d e f g h k x y) (hxc : x < c)
    (hu : u * (h - a) = s) (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    0 ≤ (1 - v) * phiNum s u v - (1 - v) * (u * v) * ((g - u) * (1 - 3 * v - s)) +
      u * v * (w * (g * ((1 - 3 * u - s) + (1 - f)) * (1 - v) -
        (1 - f) * (u * (1 - 3 * v) + s + 2 * v))) := by
  obtain ⟨hu0, hv0, hw0, hub, hug, hhv, hev, hxu, hyv, hbx, hye⟩ := H.basic hu hv hw
  obtain ⟨h18a, -⟩ := H.step18 hxc hu hv hw
  have h22 := H.step22 hu hv hw
  have h23 := H.step23 hu hv hw
  have has : s < a := by
    nlinarith [H.t2, mul_pos H.ha (by linarith [H.hb, H.hc] : (0 : ℝ) < 1 - (c - b))]
  have hfs : s < 1 - f := by
    nlinarith [H.t4, mul_pos (sub_pos.2 H.hf) (by linarith [H.hd, H.he] : (0 : ℝ) < 1 - (e - d))]
  have hg1 : 0 ≤ 1 - g := by linarith [H.hgf, H.hf]
  have hgw0 := mul_nonneg hg1 hw0
  have hv1 : 0 < 1 - v := by nlinarith [H.hd, H.hde]
  have hev' : e ≤ 1 - v := by linarith
  have hcw0 := mul_nonneg hw0 (sub_pos.2 hxc).le
  have hyv' : 2 * v ≤ y := by linarith
  -- (22) + (23) with `X = 1 - x ≥ 2u` and `Y = y ≥ 2v + w(c-x)`
  have p1 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - v + g * w - (h - a) - s)
    (by linarith : (0 : ℝ) ≤ 1 - x - 2 * u)
  have p2 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f - s)
    (by linarith : (0 : ℝ) ≤ y - 2 * v - w * (c - x))
  have p3 := mul_nonneg hw0 (mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f - s) (sub_pos.2 hxc).le)
  have hE : 0 ≤ (1 - v - (h - a)) * (1 - 3 * u - s) + (1 - u - (f - g)) * (1 - 3 * v - s) +
      2 * s * (u + v - 1) - (g - u) * (1 - 3 * v - s) +
      w * (g * (1 - 3 * u - s) + (1 - f) * (g - x)) := by
    linarith [p1, p2, p3, h22, h23]
  -- `(1-v)x ≥ (1-v)X₀`
  have p4 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - v - e) (by linarith : (0 : ℝ) ≤ x - u)
  have p5 := mul_nonneg (by linarith [H.hbc, H.hc] : (0 : ℝ) ≤ 1 - u)
    (by linarith : (0 : ℝ) ≤ y - 2 * v)
  have hX : u * (1 - 3 * v) + s + 2 * v ≤ (1 - v) * x := by linarith [p4, p5, h18a]
  have hphi : u * v * ((1 - v - (h - a)) * (1 - 3 * u - s) +
      (1 - u - (f - g)) * (1 - 3 * v - s) + 2 * s * (u + v - 1)) = phiNum s u v := by
    unfold phiNum
    linear_combination (-(v * (1 - 3 * u - s))) * hu + (-(u * (1 - 3 * v - s))) * hv
  have h1 := mul_nonneg (mul_nonneg (mul_pos hu0 hv0).le hv1.le) hE
  have h2 := mul_nonneg (mul_nonneg (mul_nonneg (mul_pos hu0 hv0).le hw0)
    (by linarith [H.hf] : (0 : ℝ) ≤ 1 - f)) (sub_nonneg.2 hX)
  have hphi' : (1 - v) * (u * v * ((1 - v - (h - a)) * (1 - 3 * u - s) +
      (1 - u - (f - g)) * (1 - 3 * v - s) + 2 * s * (u + v - 1))) = (1 - v) * phiNum s u v := by
    rw [hphi]
  linarith [h1, h2, hphi']

end Steps3

/-! #### The certificate: `C* ≤ 0` -/

/-- The identity behind the certificate: with `v B = v(1 - u - z) - s`, `v` times the right side
of (25) multiplied by `B(1-g)`, after `w B(1-g) ≤ N`, is `-T` (`MovingFCert.Treal`). -/
theorem cert_identity (u v s g B : ℝ) (hv : v ≠ 0) (hB : v * B = v * (1 - g) - s) :
    v * ((1 - v) * phiNum s u v * (B * (1 - g)) -
      (1 - v) * (u * v) * ((g - u) * (1 - 3 * v - s)) * (B * (1 - g)) +
      u * v * (g * ((1 - 3 * u - s) + B) * (1 - v) -
        B * (u * (1 - 3 * v) + s + 2 * v)) * (B * (1 - v) - s)) =
      -MovingFCert.Treal u v s (g - u) := by
  have hBe : B = (v * (1 - g) - s) / v := by field_simp; linarith
  subst hBe
  unfold MovingFCert.Treal phiNum
  field_simp
  ring

theorem two_A₀_bounds : (5487 / 50000 : ℝ) ≤ 2 * A₀ ∧ 2 * A₀ ≤ 343 / 3125 := by
  have := sqrt65_bounds
  unfold A₀; constructor <;> linarith [this.1, this.2]

theorem p₀_lt' : p₀ < 0.173445 := by
  have := sqrt65_bounds; unfold p₀; linarith [this.1]

/-- The region of the certificate, at `s = s₀`: `1/8 ≤ u` (from `u(1-u) ≥ s`, ABC),
`0.1469 ≤ v` (from `v(1-v)(1-u) > s`, i.e. `N > 0`), `u + v ≤ 2p₀ < 0.3469` (19), and
`z = g - u ≤ 1/4` (from `v(1-v)(1-g) > s`). -/
theorem Hyps3.region {a b c d e f g h k x y u v w : ℝ}
    (H : Hyps3 (2 * A₀) a b c d e f g h k x y) (hxc : x < c)
    (hu : u * (h - a) = 2 * A₀) (hv : v * (f - g) = 2 * A₀) (hw : w * (f - g) = 1 - k) :
    1 / 8 ≤ u ∧ 1469 / 10000 ≤ v ∧ u + v ≤ 3469 / 10000 ∧ g - u ≤ 1 / 4 := by
  obtain ⟨hu0, hv0, hw0, hub, hug, hhv, hev, hxu, hyv, hbx, hye⟩ := H.basic hu hv hw
  obtain ⟨-, h18⟩ := H.step18 hxc hu hv hw
  have h27 := H.step27 hu hv hw
  obtain ⟨hs0, hs1⟩ := two_A₀_bounds
  have hpl := p₀_lt'
  have hcw0 := mul_nonneg hw0 (sub_pos.2 hxc).le
  set s := 2 * A₀ with hs_def
  have hg1 : 0 < 1 - g := by linarith [H.hgf, H.hf]
  have hf1 : 0 < 1 - f := sub_pos.2 H.hf
  have hu1 : u < 1 / 2 := by linarith [H.hb]
  have hv1 : v < 1 / 2 := by linarith [H.he]
  have hu8 : 1 / 8 ≤ u := by
    have hL1 : a ≤ 1 - (h - a) := by linarith [H.hh]
    have q1 := mul_nonneg (sub_nonneg.2 hL1) (sub_pos.2 H.hbc).le
    have q2 := mul_nonneg (H.ha.le.trans hL1) (by linarith [H.hc] : (0 : ℝ) ≤ 1 - u - (c - b))
    have h1 : s ≤ (1 - (h - a)) * (1 - u) := by linarith [H.t2]
    have e1 : u * (h - a) * (1 - u) = s * (1 - u) := by rw [hu]
    have h2 : s ≤ u * (1 - u) := by linarith [mul_le_mul_of_nonneg_left h1 hu0.le]
    by_contra hc; push Not at hc
    nlinarith [mul_pos (sub_pos.2 hc) (by linarith : (0 : ℝ) < 7 / 8 - u)]
  have hN : s < (1 - f) * (1 - v) := by
    linarith [mul_nonneg (mul_nonneg hw0 hf1.le) hg1.le]
  have hvg : s < v * (1 - v) * (1 - g) := by
    have e2 : v * (1 - f) * (1 - v) = (v * (1 - g) - s) * (1 - v) := by
      rw [show v * (1 - f) = v * (1 - g) - s by linear_combination -hv]
    linarith [mul_lt_mul_of_pos_left hN hv0]
  have hvu : s < v * (1 - v) * (1 - u) := by
    linarith [mul_le_mul_of_nonneg_left (sub_le_sub_left hug 1)
      (mul_pos hv0 (by linarith : (0 : ℝ) < 1 - v)).le]
  have hv14 : 1469 / 10000 ≤ v := by
    by_contra hc; push Not at hc
    have q1 := mul_pos (sub_pos.2 hc) (by linarith : (0 : ℝ) < 1 - v - 1469 / 10000)
    have q2 := mul_le_mul_of_nonneg_left (by linarith : 1 - u ≤ 7 / 8)
      (mul_pos hv0 (by linarith : (0 : ℝ) < 1 - v)).le
    nlinarith
  have hS : u + v ≤ 3469 / 10000 := by
    have h4 : (2 - 9 * p₀) / 4 ≤ scalarG ((u + v) / 2) := by
      rw [← two_A₀]; unfold scalarG; nlinarith [sq_nonneg (u - v)]
    have := le_p₀_of_scalarG (p := (u + v) / 2) (by linarith) h4
    linarith
  have hz4 : g - u ≤ 1 / 4 := by
    have hvv : v * (1 - v) ≤ 17267 / 100000 := by
      nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 2219 / 10000 - v)
        (by linarith : (0 : ℝ) ≤ 7781 / 10000 - v)]
    nlinarith [mul_le_mul_of_nonneg_left hvv hg1.le]
  exact ⟨hu8, hv14, hS, hz4⟩

/-- **The key consequence of the certificate** (`GLOBAL_COMPLETION:claim-cstar`, new). At
`s = s₀`, with `u = s/L`, `v = s/M`, `w = δ/M`: `(1-v)C* ≤ 0`, i.e.
`g(a_u + B*)(1-v) ≤ B*(1-v)X₀`. Otherwise (25) times `B*(1-g)` and (27) would give `T ≤ 0`, against
`MovingFCert.T_pos`. -/
theorem Hyps3.cstar_nonpos {a b c d e f g h k x y u v w : ℝ}
    (H : Hyps3 (2 * A₀) a b c d e f g h k x y) (hxc : x < c)
    (hu : u * (h - a) = 2 * A₀) (hv : v * (f - g) = 2 * A₀) (hw : w * (f - g) = 1 - k) :
    g * ((1 - 3 * u - 2 * A₀) + (1 - f)) * (1 - v) -
      (1 - f) * (u * (1 - 3 * v) + 2 * A₀ + 2 * v) ≤ 0 := by
  obtain ⟨hu0, hv0, hw0, hub, hug, -⟩ := H.basic hu hv hw
  obtain ⟨hu8, hv14, hS, hz4⟩ := H.region hxc hu hv hw
  have h25 := H.step25 hxc hu hv hw
  have h27 := H.step27 hu hv hw
  obtain ⟨hs0, hs1⟩ := two_A₀_bounds
  have hg1 : 0 < 1 - g := by linarith [H.hgf, H.hf]
  have hf1 : 0 < 1 - f := sub_pos.2 H.hf
  have hB : v * (1 - f) = v * (1 - g) - 2 * A₀ := by linear_combination -hv
  have hid := cert_identity u v (2 * A₀) g (1 - f) hv0.ne' hB
  have hT := MovingFCert.T_pos hu8 (by linarith) hv14 hS hs0 hs1 (sub_nonneg.2 hug) hz4
  clear H hu hv hw hB
  set s := 2 * A₀ with hs_def
  by_contra hC
  push Not at hC
  have hBg : 0 < (1 - f) * (1 - g) := mul_pos hf1 hg1
  have h1 := mul_nonneg h25 hBg.le
  have h2 : u * v * (w * (1 - f) * (1 - g)) * (g * ((1 - 3 * u - s) + (1 - f)) * (1 - v) -
      (1 - f) * (u * (1 - 3 * v) + s + 2 * v)) ≤ u * v * ((1 - f) * (1 - v) - s) *
      (g * ((1 - 3 * u - s) + (1 - f)) * (1 - v) - (1 - f) * (u * (1 - 3 * v) + s + 2 * v)) :=
    mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left h27.le (mul_pos hu0 hv0).le) hC.le
  have h3 : 0 ≤ (1 - v) * phiNum s u v * ((1 - f) * (1 - g)) -
      (1 - v) * (u * v) * ((g - u) * (1 - 3 * v - s)) * ((1 - f) * (1 - g)) +
      u * v * (g * ((1 - 3 * u - s) + (1 - f)) * (1 - v) -
        (1 - f) * (u * (1 - 3 * v) + s + 2 * v)) * ((1 - f) * (1 - v) - s) := by
    linarith [h1, h2]
  have h4 := mul_nonneg hv0.le h3
  rw [hid] at h4
  linarith

/-- (25) and the certificate give `Φ ≥ 0` at `s = s₀`. -/
theorem Hyps3.phi_nonneg {a b c d e f g h k x y u v w : ℝ}
    (H : Hyps3 (2 * A₀) a b c d e f g h k x y) (hxc : x < c)
    (hu : u * (h - a) = 2 * A₀) (hv : v * (f - g) = 2 * A₀) (hw : w * (f - g) = 1 - k) :
    0 ≤ phiNum (2 * A₀) u v := by
  obtain ⟨hu0, hv0, hw0, hub, hug, -⟩ := H.basic hu hv hw
  obtain ⟨hu8, hv14, hS, hz4⟩ := H.region hxc hu hv hw
  have h25 := H.step25 hxc hu hv hw
  have hC := H.cstar_nonpos hxc hu hv hw
  have hA := A₀_bounds.2.2.2
  have hav : 0 < 1 - 3 * v - 2 * A₀ := by linarith
  have hv1 : 0 < 1 - v := by linarith
  have h1 : 0 ≤ (1 - v) * (u * v) * ((g - u) * (1 - 3 * v - 2 * A₀)) :=
    mul_nonneg (mul_nonneg hv1.le (mul_pos hu0 hv0).le) (mul_nonneg (sub_nonneg.2 hug) hav.le)
  have h2 : u * v * (w * (g * ((1 - 3 * u - 2 * A₀) + (1 - f)) * (1 - v) -
      (1 - f) * (u * (1 - 3 * v) + 2 * A₀ + 2 * v))) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (mul_pos hu0 hv0).le (mul_nonpos_of_nonneg_of_nonpos hw0 hC)
  have h3 : 0 ≤ (1 - v) * phiNum (2 * A₀) u v := by linarith
  exact nonneg_of_mul_nonneg_right (by linarith) hv1

/-! #### §5.6: `k = 1`, and Theorem 3 -/

/-- If all eleven doubled areas are at least `s₀ = 2A₀`, then `k = 1`: by the certificate
`C* ≤ 0`, so (25) gives `Φ ≥ 0`; by (26) `Φ = 0` and `u = v = p₀`; then equality in (18) forces
`e = 1 - v`, and `e ≤ 1 - v - (1-g)w` forces `w = 0`. -/
theorem Hyps3.k_eq_one {a b c d e f g h k x y : ℝ} (H : Hyps3 (2 * A₀) a b c d e f g h k x y) :
    k = 1 := by
  have hxc : x < c := H.x_lt_c (by linarith [A₀_bounds.1])
  have hL := sub_pos.2 H.hah
  have hM := sub_pos.2 H.hgf
  have hu : 2 * A₀ / (h - a) * (h - a) = 2 * A₀ := div_mul_cancel₀ _ hL.ne'
  have hv : 2 * A₀ / (f - g) * (f - g) = 2 * A₀ := div_mul_cancel₀ _ hM.ne'
  have hw : (1 - k) / (f - g) * (f - g) = 1 - k := div_mul_cancel₀ _ hM.ne'
  generalize 2 * A₀ / (h - a) = u at hu
  generalize 2 * A₀ / (f - g) = v at hv
  generalize (1 - k) / (f - g) = w at hw
  obtain ⟨hu0, hv0, hw0, hub, hug, hhv, hev, hxu, hyv, hbx, hye⟩ := H.basic hu hv hw
  obtain ⟨h18a, h18⟩ := H.step18 hxc hu hv hw
  have hphi := H.phi_nonneg hxc hu hv hw
  have hcw0 := mul_nonneg hw0 (sub_pos.2 hxc).le
  have hg1 : 0 < 1 - g := by linarith [H.hgf, H.hf]
  obtain ⟨hQ, heq⟩ := scalar_key hu0 hv0 (by linarith [H.hb]) (by linarith [H.he]) h18
  obtain ⟨rfl, rfl⟩ := heq (le_antisymm hQ hphi)
  -- equality in (18) forces `e = 1 - p₀`, then `w = 0`
  have hq := p₀_quad
  have h1 := p₀_lt
  have h2 := p₀_gt
  rw [two_A₀] at h18a
  have hk : 0 ≤ (1 - p₀) * (1 - 2 * p₀ - x) := mul_nonneg (by linarith) (by linarith)
  have hk' : 0 ≤ (1 - p₀) * (y - 2 * p₀) := mul_nonneg (by linarith) (by linarith)
  have he1 : 1 - p₀ ≤ e := by
    by_contra hc; push Not at hc
    nlinarith [mul_pos (sub_pos.2 hc) (by linarith : (0 : ℝ) < x - p₀)]
  have hgw := mul_nonneg hg1.le hw0
  have hw' : w = 0 := by
    have : (1 - g) * w ≤ 0 := by linarith
    have := le_antisymm this hgw
    rcases mul_eq_zero.1 this with h | h
    · linarith
    · exact h
  subst hw'
  linarith

/-! #### The claims of §5 as stated in the manuscript -/

/-- `u, v, w` of §5.2 from their defining quotients. -/
theorem uvw_of_div {s a f g h k u v : ℝ} (hah : a < h) (hgf : g < f) (hu : u = s / (h - a))
    (hv : v = s / (f - g)) :
    u * (h - a) = s ∧ v * (f - g) = s ∧ (1 - k) / (f - g) * (f - g) = 1 - k :=
  ⟨by rw [hu]; exact div_mul_cancel₀ _ (sub_pos.2 hah).ne',
    by rw [hv]; exact div_mul_cancel₀ _ (sub_pos.2 hgf).ne', div_mul_cancel₀ _ (sub_pos.2 hgf).ne'⟩

/-- **Claim** (`GLOBAL_COMPLETION:claim-5.1`). If all eleven doubled areas of the F-moving chamber
are at least `s ≥ 7/64`, then `x < c`, and then `U₄ > 0` forces `g < c` and `x > g`.
`hand/GLOBAL_COMPLETION.md`, lines 391-443. -/
theorem claim_5_1 {s a b c d e f g h k x y : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : 7 / 64 ≤ s) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i) :
    x < c ∧ g < c ∧ g < x := by
  have H := Hyps3.of_all hyp (by linarith) hall
  have hxc := H.x_lt_c hs
  have hgc : g < c := by
    by_contra hc; push Not at hc
    nlinarith [H.t10, H.hs, mul_nonneg (sub_nonneg.2 hc) H.hy0]
  exact ⟨hxc, hgc, by nlinarith [H.t10, H.hs, mul_nonneg (sub_pos.2 hgc).le (sub_nonneg.2 H.hy1)]⟩

/-- **Claim** (`GLOBAL_COMPLETION:eq19`). If all eleven doubled areas are at least `s = s₀`, then
with `u = s/L`, `v = s/M`: `s < p ≤ p₀` for `p = (u+v)/2`, and `u + v < 347/1000` (19).
`hand/GLOBAL_COMPLETION.md`, lines 476-492.
Uses: GLOBAL_COMPLETION:claim-5.1 -/
theorem eq19 {s a b c d e f g h k x y u v : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) :
    s < (u + v) / 2 ∧ (u + v) / 2 ≤ p₀ ∧ u + v < 347 / 1000 := by
  have H := Hyps3.of_all hyp (by rw [hs]; linarith [A₀_pos]) hall
  obtain ⟨hu', hv', hw'⟩ := uvw_of_div (k := k) H.hah H.hgf hu hv
  subst hs
  have hxc := H.x_lt_c (by linarith [A₀_bounds.1])
  obtain ⟨hu0, hv0, hw0, hub, hug, hhv, hev, hxu, hyv, hbx, hye⟩ := H.basic hu' hv' hw'
  obtain ⟨-, h18⟩ := H.step18 hxc hu' hv' hw'
  have hsu : 2 * A₀ < u := by
    nlinarith [mul_pos hu0 (by linarith [H.ha, H.hh] : (0 : ℝ) < 1 - (h - a))]
  have hsv : 2 * A₀ < v := by
    nlinarith [mul_pos hv0 (by linarith [H.hg, H.hf] : (0 : ℝ) < 1 - (f - g))]
  have hcw0 := mul_nonneg hw0 (sub_pos.2 hxc).le
  have h4 : (2 - 9 * p₀) / 4 ≤ scalarG ((u + v) / 2) := by
    rw [← two_A₀]; unfold scalarG; nlinarith [sq_nonneg (u - v)]
  have hpp : (u + v) / 2 ≤ p₀ := le_p₀_of_scalarG (by linarith [H.hb, H.he]) h4
  exact ⟨by linarith, hpp, by linarith [p₀_lt]⟩

/-- **Claim** (`GLOBAL_COMPLETION:eq20`). Under the same hypotheses: `u ≥ 1/8`, `v < 111/500` and
`a_v = 1 - 3v - s > 28/125` (20).
`hand/GLOBAL_COMPLETION.md`, lines 493-506.
Uses: GLOBAL_COMPLETION:eq19 -/
theorem eq20 {s a b c d e f g h k x y u v : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) :
    1 / 8 ≤ u ∧ v < 111 / 500 ∧ 28 / 125 < 1 - 3 * v - s := by
  obtain ⟨-, -, h19⟩ := eq19 hyp hs hall hu hv
  have H := Hyps3.of_all hyp (by rw [hs]; linarith [A₀_pos]) hall
  obtain ⟨hu', hv', hw'⟩ := uvw_of_div (k := k) H.hah H.hgf hu hv
  subst hs
  have hxc := H.x_lt_c (by linarith [A₀_bounds.1])
  obtain ⟨hu8, -⟩ := H.region hxc hu' hv' hw'
  have := A₀_bounds.2.2.2
  exact ⟨hu8, by linarith, by linarith⟩

/-- **Claim** (`GLOBAL_COMPLETION:claim-(25)`). The central necessary inequality. If all eleven
doubled areas are at least `s = s₀`, then with `u = s/L`, `v = s/M`, `w = δ/M`, `z = g - u`,
`B_* = 1 - f`, `a_v = 1 - 3v - s`: `0 ≤ Φ(u, v) - z a_v + w C_*`, where `Φ` is the left side of
`HAND_PROOF.md` (8) and `C_* = g(a_u + B_*) - B_* X₀`. It follows by adding (22) and (23) and
using (17) and (21).
`hand/GLOBAL_COMPLETION.md`, lines 445-558.
Uses: GLOBAL_COMPLETION:claim-5.1, GLOBAL_COMPLETION:eq19, HAND_PROOF:claim-(8) -/
theorem claim_25 {s a b c d e f g h k x y u v w z : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) (hw : w = (1 - k) / (f - g))
    (hz : z = g - u) :
    0 ≤ phi s u v - z * (1 - 3 * v - s) + w * cStar s u v g (1 - f) := by
  have H := Hyps3.of_all hyp (by rw [hs]; linarith [A₀_pos]) hall
  obtain ⟨hu', hv', hw'⟩ := uvw_of_div (k := k) H.hah H.hgf hu hv
  rw [← hw] at hw'
  have hxc := H.x_lt_c (by rw [hs]; linarith [A₀_bounds.1])
  obtain ⟨hu0, hv0, hw0, hub, hug, hhv, hev, hxu, hyv, hbx, hye⟩ := H.basic hu' hv' hw'
  have h25 := H.step25 hxc hu' hv' hw'
  have hv1 : 0 < 1 - v := by
    nlinarith [mul_nonneg (by linarith [H.hgf, H.hf] : (0 : ℝ) ≤ 1 - g) hw0, H.hd, H.hde]
  subst hz
  have key : phi s u v - (g - u) * (1 - 3 * v - s) + w * cStar s u v g (1 - f) =
      ((1 - v) * phiNum s u v - (1 - v) * (u * v) * ((g - u) * (1 - 3 * v - s)) +
        u * v * (w * (g * ((1 - 3 * u - s) + (1 - f)) * (1 - v) -
          (1 - f) * (u * (1 - 3 * v) + s + 2 * v)))) / ((1 - v) * (u * v)) := by
    rw [phi_eq s u v hu0.ne' hv0.ne']
    unfold cStar X0
    field_simp
  rw [key]
  exact div_nonneg h25 (by positivity)

/-- **Claim** (`GLOBAL_COMPLETION:claim-(26)`). At `s = s₀`: `Φ(u, v) ≤ 0`, with equality only if
`u = v = p₀`. Stated for the scalar data its proof uses (`HAND_PROOF.md` §§4-5): `0 < u, v < 1/2`
and (18), `s₀ ≤ 1 - 3u - 3v + 5uv`. This is `HandProof.scalar_key`.
`hand/GLOBAL_COMPLETION.md`, lines 560-573.
Uses: HAND_PROOF:claim-(11), HAND_PROOF:claim-scalar -/
theorem claim_26 {u v : ℝ} (hu : 0 < u) (hv : 0 < v) (hu1 : u < 1 / 2) (hv1 : v < 1 / 2)
    (h18 : 2 * A₀ ≤ 1 - 3 * u - 3 * v + 5 * u * v) :
    phi (2 * A₀) u v ≤ 0 ∧ (phi (2 * A₀) u v = 0 → u = p₀ ∧ v = p₀) := by
  obtain ⟨hQ, heq⟩ := scalar_key hu hv hu1 hv1 h18
  rw [phi_eq _ u v hu.ne' hv.ne']
  refine ⟨div_nonpos_of_nonpos_of_nonneg hQ (by positivity), fun h => heq ?_⟩
  rcases div_eq_zero_iff.1 h with h | h
  · exact h
  · exact absurd h (by positivity)

/-- **Claim** (`GLOBAL_COMPLETION:claim-(27)`). If all eleven doubled areas are at least
`s = s₀`, then `DEF` and `GEF` give `0 ≤ w ≤ N/(B_*(1-g))` with `N = B_*(1-v) - s > 0`, and
`g ≤ g_max = 1 - s/(v(1-v))`.
`hand/GLOBAL_COMPLETION.md`, lines 575-583. -/
theorem claim_27 {s a b c d e f g h k x y v w : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hv : v = s / (f - g)) (hw : w = (1 - k) / (f - g)) :
    0 ≤ w ∧ 0 < nStar s v (1 - f) ∧ w ≤ nStar s v (1 - f) / ((1 - f) * (1 - g)) ∧
      g ≤ 1 - s / (v * (1 - v)) := by
  have H := Hyps3.of_all hyp (by rw [hs]; linarith [A₀_pos]) hall
  obtain ⟨hu', hv', hw'⟩ := uvw_of_div (k := k) (u := s / (h - a)) H.hah H.hgf rfl hv
  rw [← hw] at hw'
  obtain ⟨hu0, hv0, hw0, hub, hug, hhv, hev, hxu, hyv, hbx, hye⟩ := H.basic hu' hv' hw'
  have h27 := H.step27 hu' hv' hw'
  have hg1 : 0 < 1 - g := by linarith [H.hgf, H.hf]
  have hf1 : 0 < 1 - f := sub_pos.2 H.hf
  have hv1 : 0 < 1 - v := by nlinarith [mul_nonneg hg1.le hw0, H.hd, H.hde]
  have hwB := mul_nonneg (mul_nonneg hw0 hf1.le) hg1.le
  unfold nStar
  refine ⟨hw0, by linarith, (le_div_iff₀ (mul_pos hf1 hg1)).2 (by linarith), ?_⟩
  have hN : s < (1 - f) * (1 - v) := by linarith
  have e2 : v * (1 - f) * (1 - v) = (v * (1 - g) - s) * (1 - v) := by
    rw [show v * (1 - f) = v * (1 - g) - s by linear_combination -hv']
  have hvg : s < v * (1 - v) * (1 - g) := by linarith [mul_lt_mul_of_pos_left hN hv0]
  have : s / (v * (1 - v)) ≤ 1 - g :=
    (div_le_iff₀ (mul_pos hv0 hv1)).2 (by linarith)
  linarith

/-- **Claim** (`GLOBAL_COMPLETION:claim-cstar`, new; replaces §§5.3-5.5, `claim-5.3`,
`claim-5.4`, `claim-5.5`). If all eleven doubled areas are at least `s = s₀`, then
`C_* = g(a_u + B_*) - B_* X₀ ≤ 0`. This is the polynomial certificate `MovingFCert.T_pos`:
`T = u v² (1-v)(Δ - Φ B_*(1-g)) > 0` on the whole region of the proof, with `Δ` the hand proof's
(33); if `C_* > 0`, then (25) times `B_*(1-g)` and (27) would give `T ≤ 0`. -/
theorem claim_cstar {s a b c d e f g h k x y u v : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) :
    cStar s u v g (1 - f) ≤ 0 := by
  have H := Hyps3.of_all hyp (by rw [hs]; linarith [A₀_pos]) hall
  obtain ⟨hu', hv', hw'⟩ := uvw_of_div (k := k) H.hah H.hgf hu hv
  subst hs
  have hxc := H.x_lt_c (by linarith [A₀_bounds.1])
  obtain ⟨hu0, hv0, hw0, hub, hug, hhv, hev, hxu, hyv, hbx, hye⟩ := H.basic hu' hv' hw'
  have hC := H.cstar_nonpos hxc hu' hv' hw'
  have hv1 : 0 < 1 - v := by
    nlinarith [mul_nonneg (by linarith [H.hgf, H.hf] : (0 : ℝ) ≤ 1 - g) hw0, H.hd, H.hde]
  have key : cStar (2 * A₀) u v g (1 - f) = (g * ((1 - 3 * u - 2 * A₀) + (1 - f)) * (1 - v) -
      (1 - f) * (u * (1 - 3 * v) + 2 * A₀ + 2 * v)) / (1 - v) := by
    unfold cStar X0; field_simp
  rw [key]
  exact div_nonpos_of_nonpos_of_nonneg hC hv1.le

/-- **Theorem 3** (`GLOBAL_COMPLETION:Theorem3`). Throughout the F-moving chamber (15) (strict
orders, `0 ≤ k ≤ 1`, `O` in the square, all eleven oriented doubled areas positive), the least of
the eleven chamber areas is at most `A₀`. If all eleven are at least `A₀`, then `k = 1` and the
configuration is exactly the construction (16). No assumption `g < c`, `x < c` or `h ≤ e` is made.
`hand/GLOBAL_COMPLETION.md`, lines 329-390 (proof 391-885).
Uses: GLOBAL_COMPLETION:claim-5.1, GLOBAL_COMPLETION:claim-(25), GLOBAL_COMPLETION:claim-(26),
GLOBAL_COMPLETION:claim-(27), GLOBAL_COMPLETION:claim-cstar, HAND_PROOF:Theorem1 -/
theorem theorem3 {a b c d e f g h k x y : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hch : InChamber (movingFConfig a b c d e f g h k x y)) :
    (∃ i, chamberArea (movingFConfig a b c d e f g h k x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (movingFConfig a b c d e f g h k x y) i) →
        k = 1 ∧ movingFConfig a b c d e f g h k x y = optimalConfiguration) := by
  have hsarea : ∀ i, chamberArea (movingFConfig a b c d e f g h k x y) i =
      chamberSarea (movingFConfig a b c d e f g h k x y) i / 2 := fun i => by
    rw [chamberArea_eq, abs_of_pos (hch i)]
  have heq : (∀ i, A₀ ≤ chamberArea (movingFConfig a b c d e f g h k x y) i) →
      k = 1 ∧ movingFConfig a b c d e f g h k x y = optimalConfiguration := by
    intro hall
    have hall' : ∀ i, 2 * A₀ ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i := by
      intro i; have := hall i; rw [hsarea] at this; linarith
    have hk := (Hyps3.of_all hyp (by linarith [A₀_pos]) hall').k_eq_one
    subst hk
    obtain ⟨hord, -, -, hO⟩ := hyp
    obtain ⟨ha, hb, hc, hd, he, hf, hg, hh, hx, hy⟩ := claim_equality hord hO hall'
    subst ha hb hc hd he hf hg hh hx hy
    exact ⟨rfl, rfl⟩
  refine ⟨?_, heq⟩
  by_contra hc
  push Not at hc
  obtain ⟨-, hopt⟩ := heq fun i => (hc i).le
  have := hc 1
  rw [hopt, chamberArea_optimal_one] at this
  exact lt_irrefl _ this

end Heilbronn.GlobalCompletion
