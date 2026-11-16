module

public import Heilbronn.Corners.CornerFamilies.SixPoint

/-! # Corner families, §§10–11: quantitative mesh lemma and uniform signs
(`hand/CORNER_FAMILIES.md`, lines 862–1167)

Part of `CORNER_FAMILIES.md` (module `Heilbronn.Corners.CornerFamilies`). The quantitative
rigidity of a distributed six-point triangle of doubled area one (§10) and the forced signs of a
lower point with respect to the upper triple (§11).

**Parameters.** The manuscript proves §§10–12 at the doubled threshold `s = 7/64` with the lower
points in the unit square. `ONE_CORNER.md` §§2–4 reuses them for every `s ≥ 7/64` and for lower
points in a rectangle `[0, L] × [1 - M, 1]` with `L, M ≥ 1` and `L, M ≤ s/σ`, `σ = 7/64`
(its displaced base `y ≥ -δ`, `δ = M - 1`, and by reflection `x ≤ L`). These statements carry
`s`, `L`, `M` as parameters with exactly those hypotheses (`7/64 · L ≤ s`, `7/64 · M ≤ s`); the
Type-III case is `L = M = 1`, `s = 7/64`. (Inventory 02, `ONE_CORNER` gap 2: each use of the
fixed threshold in §10 was checked to remain valid for `s ≥ 7/64`.)

**Physical frame** (§11). `A = (0,0)`, `B = (0,1)`, `C = (1,1)` (clockwise), the distributed upper
triple labelled `Y = (u, v)`, `Z = (p, q)`, `X = (c, 1 - a)` with `Z ∈ ABY`, `X ∈ BCY`
(`MeshLabelled (0,0) (0,1) (1,1) X Y Z`), and `h = 1 - v`, `z = 1 - q`, `f = v - u`,
`k = h - a`, `Q = hc - au` (doubled `[BXY]`), `K` the doubled central area.
`D(P, Q, R) = det(Q - P, R - P) = sarea P Q R`.

Definitions: `rectangle L M`.

**Results.** `quantitativeMeshLemma` (26)–(27) (general triangle, `s ≥ 7/64`); `eq33`; `eq36`;
`uniformSigns` (34).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.CornerFamilies

/-- The rectangle `[0, L] × [1 - M, 1]`, the image of the unit square under the normalization of
`ONE_CORNER.md` (2); `rectangle 1 1` is the unit square. -/
def rectangle (L M : ℝ) : Set Point := {p | 0 ≤ p.1 ∧ p.1 ≤ L ∧ 1 - M ≤ p.2 ∧ p.2 ≤ 1}

/-! ### §10. Quantitative rigidity of a distributed six-point triangle

The estimates are first proved for thirteen real numbers normalized by `s` (all at least `1`,
with the identities (18)–(19) and total at most `64/7`), then transported to a labelled mesh. -/

/-- Inequality (30), normalized (lines 948–975): from the three product inequalities of (19)
with the outer ears at least one, `CAB + A(V - κ)(V + 1) + B(U - κ)(U + 1) ≥ (1 + κ)UV + κ(C + κ + 1)`
for a connector `C ≤ 6/5` with cross areas `U + V = C + κ`. -/
theorem conn_30 {A B C κ U V uA vA uB vB : ℝ} (hA : 1 ≤ A) (hB : 1 ≤ B) (hC1 : 1 ≤ C)
    (hC : C ≤ 6 / 5) (hk1 : 1 ≤ κ) (hU : 1 ≤ U) (hV : 1 ≤ V)
    (hUV : U + V = C + κ) (huA : 1 ≤ uA) (hvB : 1 ≤ vB) (hA' : A ≤ 22 / 7) (hB' : B ≤ 22 / 7)
    (hx : uA * vB ≤ A * B - κ) (hy : uB * V ≤ B * C - κ)
    (hz : U * vA ≤ C * A - κ) (h18A : A = uA + vA - κ) (h18B : B = uB + vB - κ) :
    (1 + κ) * (U * V) + κ * (C + κ + 1) ≤
      C * A * B + (V - κ) * (V + 1) * A + (U - κ) * (U + 1) * B := by
  have nB : 0 < B * (V - C) + κ * (V + 1) := by
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 22 / 7 - B) (by linarith : (0 : ℝ) ≤ V - 1),
      mul_nonneg (by linarith : (0 : ℝ) ≤ B) (by linarith : (0 : ℝ) ≤ V - 1)]
  have lA : A * (U - C) + κ * (U + 1) ≤ uA * U := by
    have e : uA * U = A * U + κ * U - U * vA := by rw [show uA = A + κ - vA by linarith]; ring
    rw [e]; linarith
  have lB : B * (V - C) + κ * (V + 1) ≤ vB * V := by
    have e : vB * V = B * V + κ * V - uB * V := by rw [show vB = B + κ - uB by linarith]; ring
    rw [e]; linarith
  have prod := mul_le_mul lA lB nB.le (by positivity)
  have hUV0 : 0 ≤ U * V := by positivity
  have hxUV := mul_le_mul_of_nonneg_right hx hUV0
  have hV' : V = C + κ - U := by linarith
  have e : (A * B - κ) * (U * V) - (A * (U - C) + κ * (U + 1)) * (B * (V - C) + κ * (V + 1)) =
      κ * (C * A * B + (V - κ) * (V + 1) * A + (U - κ) * (U + 1) * B -
        ((1 + κ) * (U * V) + κ * (C + κ + 1))) := by
    rw [hV']; ring
  have h0 : 0 ≤ κ * (C * A * B + (V - κ) * (V + 1) * A + (U - κ) * (U + 1) * B -
      ((1 + κ) * (U * V) + κ * (C + κ + 1))) := by
    rw [← e]; nlinarith
  by_contra hD
  push Not at hD
  have := mul_neg_of_pos_of_neg (by linarith : (0 : ℝ) < κ) (sub_neg.2 hD)
  linarith

/-- `4C·F(C, κ) < 0` on `[1, 6/5] × [1, 9/8]` (32). -/
theorem conn_box {C κ : ℝ} (hC1 : 1 ≤ C) (hC : C ≤ 6 / 5) (hk1 : 1 ≤ κ) (hk : κ ≤ 9 / 8) :
    708 / 49 * C ^ 2 - 356 / 7 * C * κ + 228 / 7 * C + (κ - 2) ^ 2 < 0 := by
  nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 6 / 5 - C) (by linarith : (0 : ℝ) ≤ κ - 1),
    mul_nonneg (by linarith : (0 : ℝ) ≤ 6 / 5 - C) (by linarith : (0 : ℝ) ≤ C - 1),
    mul_nonneg (by linarith : (0 : ℝ) ≤ κ - 1) (by linarith : (0 : ℝ) ≤ 9 / 8 - κ),
    mul_nonneg (by linarith : (0 : ℝ) ≤ C - 1) (by linarith : (0 : ℝ) ≤ κ - 1)]

/-- The end of the connector estimate (lines 976–1035): (30) is impossible on the box. -/
theorem conn_final {A B C κ U V : ℝ} (hA : 1 ≤ A) (hB : 1 ≤ B) (hC1 : 1 ≤ C) (hC : C ≤ 6 / 5)
    (hk1 : 1 ≤ κ) (hk : κ ≤ 9 / 8) (hU : 1 ≤ U) (hV : 1 ≤ V) (hUV : U + V = C + κ)
    (hsum : A + B ≤ 43 / 7 - κ - C)
    (h30 : (1 + κ) * (U * V) + κ * (C + κ + 1) ≤
      C * A * B + (V - κ) * (V + 1) * A + (U - κ) * (U + 1) * B) : False := by
  have hV' : V = C + κ - U := by linarith
  have hα : 2 * (1 - κ) ≤ (V - κ) * (V + 1) := by
    have := mul_nonneg (by linarith : (0 : ℝ) ≤ V - 1) (by linarith : (0 : ℝ) ≤ V + 2 - κ)
    nlinarith
  have hβ : 2 * (1 - κ) ≤ (U - κ) * (U + 1) := by
    have := mul_nonneg (by linarith : (0 : ℝ) ≤ U - 1) (by linarith : (0 : ℝ) ≤ U + 2 - κ)
    nlinarith
  set α := (V - κ) * (V + 1) with hαdef
  set β := (U - κ) * (U + 1) with hβdef
  set M := 43 / 7 - κ - C with hMdef
  have sq : 4 * C * (C * A * B + α * A + β * B) =
      (C * (A + B) + α + β) ^ 2 - (C * (A - B) - (α - β)) ^ 2 - 4 * α * β := by ring
  have h1 : 0 ≤ C * (A + B) + α + β := by nlinarith
  have h2 : C * (A + B) + α + β ≤ C * M + α + β := by
    have := mul_le_mul_of_nonneg_left hsum (by linarith : (0 : ℝ) ≤ C)
    linarith
  have mono := pow_le_pow_left₀ h1 h2 2
  have h30' := mul_le_mul_of_nonneg_left h30 (by linarith : (0 : ℝ) ≤ 4 * C)
  have main : 4 * C * ((1 + κ) * (U * V) + κ * (C + κ + 1)) ≤
      (C * M + α + β) ^ 2 - 4 * α * β := by
    linarith [sq_nonneg (C * (A - B) - (α - β))]
  have e1 : (C * M + α + β) ^ 2 - 4 * α * β = C ^ 2 * M ^ 2 +
      2 * C * M * ((C + κ) ^ 2 - 2 * (U * V) + (1 - κ) * (C + κ) - 2 * κ) +
      ((C + κ) ^ 2 - 4 * (U * V)) * (C + 1) ^ 2 := by
    rw [hαdef, hβdef, hV']; ring
  rw [e1] at main
  have hP : C + κ - 1 ≤ U * V := by
    linarith [mul_nonneg (by linarith : (0 : ℝ) ≤ U - 1) (by linarith : (0 : ℝ) ≤ V - 1)]
  have hM : 0 ≤ M := by rw [hMdef]; linarith
  have hco := mul_nonneg (sub_nonneg.2 hP)
    (by positivity : (0 : ℝ) ≤ 4 * C * M + 4 * (C + 1) ^ 2 + 4 * C * (1 + κ))
  have hF := conn_box hC1 hC hk1 hk
  rw [hMdef] at main hco
  clear_value α β M
  linarith

/-- The connector estimate (26), normalized: a connector `C ≤ 6/5` with cross areas `U, V`
(`U + V = C + κ`) is impossible (lines 906–1035). -/
theorem conn_norm {A B C κ U V uA vA uB vB : ℝ} (hA : 1 ≤ A) (hB : 1 ≤ B) (hC1 : 1 ≤ C)
    (hC : C ≤ 6 / 5) (hk1 : 1 ≤ κ) (hk : κ ≤ 9 / 8) (hU : 1 ≤ U) (hV : 1 ≤ V)
    (hUV : U + V = C + κ) (huA : 1 ≤ uA) (hvB : 1 ≤ vB)
    (hsum : A + B ≤ 43 / 7 - κ - C) (hx : uA * vB ≤ A * B - κ) (hy : uB * V ≤ B * C - κ)
    (hz : U * vA ≤ C * A - κ) (h18A : A = uA + vA - κ) (h18B : B = uB + vB - κ) : False :=
  conn_final hA hB hC1 hC hk1 hk hU hV hUV hsum
    (conn_30 hA hB hC1 hC hk1 hU hV hUV huA hvB (by linarith) (by linarith) hx hy hz h18A h18B)

/-- The central estimate of (26), normalized: `κ ≤ 109/98` (lines 893–902). -/
theorem kappa_norm {x y z a b c k uA uB uC vA vB vC : ℝ} (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (ha : 1 ≤ a) (hb : 1 ≤ b) (hc : 1 ≤ c) (hk : 1 ≤ k)
    (huA : 1 ≤ uA) (huB : 1 ≤ uB) (huC : 1 ≤ uC) (hvA : 1 ≤ vA) (hvB : 1 ≤ vB) (hvC : 1 ≤ vC)
    (h18a : a = uA + vA - k) (h18b : b = uB + vB - k) (h18c : c = uC + vC - k)
    (h19a : x * k = a * b - uA * vB) (h19b : y * k = b * c - uB * vC)
    (h19c : z * k = c * a - uC * vA) (hsum : x + y + z + a + b + c + k ≤ 64 / 7) :
    k ≤ 109 / 98 := by
  have p1 : uA + vB - 1 ≤ uA * vB := by
    nlinarith [mul_nonneg (sub_nonneg.2 huA) (sub_nonneg.2 hvB)]
  have p2 : uB + vC - 1 ≤ uB * vC := by
    nlinarith [mul_nonneg (sub_nonneg.2 huB) (sub_nonneg.2 hvC)]
  have p3 : uC + vA - 1 ≤ uC * vA := by
    nlinarith [mul_nonneg (sub_nonneg.2 huC) (sub_nonneg.2 hvA)]
  have hxyz : 3 * k ≤ (x + y + z) * k := by nlinarith
  have hσ : 6 * k + (a + b + c) - 3 ≤ a * b + b * c + c * a := by nlinarith
  have hq : 3 * (a * b + b * c + c * a) ≤ (a + b + c) ^ 2 := by
    nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a)]
  have hσ1 : a + b + c ≤ 36 / 7 := by linarith
  have hσ0 : 3 ≤ a + b + c := by linarith
  nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 36 / 7 - (a + b + c))
    (by linarith : (0 : ℝ) ≤ (a + b + c) + 36 / 7 - 3)]

/-- The quantitative mesh estimates (26), normalized: `κ ≤ 109/98` and every connector exceeds
`6/5`. -/
theorem quant_norm {x y z a b c k uA uB uC vA vB vC : ℝ} (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (ha : 1 ≤ a) (hb : 1 ≤ b) (hc : 1 ≤ c) (hk : 1 ≤ k)
    (huA : 1 ≤ uA) (huB : 1 ≤ uB) (huC : 1 ≤ uC) (hvA : 1 ≤ vA) (hvB : 1 ≤ vB) (hvC : 1 ≤ vC)
    (h18a : a = uA + vA - k) (h18b : b = uB + vB - k) (h18c : c = uC + vC - k)
    (h19a : x * k = a * b - uA * vB) (h19b : y * k = b * c - uB * vC)
    (h19c : z * k = c * a - uC * vA) (hsum : x + y + z + a + b + c + k ≤ 64 / 7) :
    k ≤ 109 / 98 ∧ 6 / 5 < a ∧ 6 / 5 < b ∧ 6 / 5 < c := by
  have hK := kappa_norm hx hy hz ha hb hc hk huA huB huC hvA hvB hvC h18a h18b h18c h19a h19b
    h19c hsum
  have hk0 : 0 < k := by linarith
  refine ⟨hK, ?_, ?_, ?_⟩
  · -- connector `a`, with `U = u_A`, `V = v_A`; the other two are `b, c`
    by_contra h; push Not at h
    exact conn_norm (A := b) (B := c) (C := a) (κ := k) (U := uA) (V := vA) (uA := uB) (vA := vB)
      (uB := uC) (vB := vC) hb hc ha h hk (by linarith) huA hvA (by linarith) huB hvC
      (by linarith) (by nlinarith) (by nlinarith) (by nlinarith) h18b h18c
  · by_contra h; push Not at h
    exact conn_norm (A := c) (B := a) (C := b) (κ := k) (U := uB) (V := vB) (uA := uC) (vA := vC)
      (uB := uA) (vB := vA) hc ha hb h hk (by linarith) huB hvB (by linarith) huC hvA
      (by linarith) (by nlinarith) (by nlinarith) (by nlinarith) h18c h18a
  · by_contra h; push Not at h
    exact conn_norm (A := a) (B := b) (C := c) (κ := k) (U := uC) (V := vC) (uA := uA) (vA := vA)
      (uB := uB) (vB := vB) ha hb hc h hk (by linarith) huC hvC (by linarith) huA hvB
      (by linarith) (by nlinarith) (by nlinarith) (by nlinarith) h18a h18b

/-- The quantitative mesh estimates for thirteen areas at least `s ≥ 7/64` with total `1`
(unnormalized form of `quant_norm`, plus the ear bound (27)). -/
theorem quant_scaled {x y z a b c k uA uB uC vA vB vC s : ℝ} (hs : 7 / 64 ≤ s)
    (hx : s ≤ x) (hy : s ≤ y) (hz : s ≤ z) (ha : s ≤ a) (hb : s ≤ b) (hc : s ≤ c) (hk : s ≤ k)
    (huA : s ≤ uA) (huB : s ≤ uB) (huC : s ≤ uC) (hvA : s ≤ vA) (hvB : s ≤ vB) (hvC : s ≤ vC)
    (h18a : a = uA + vA - k) (h18b : b = uB + vB - k) (h18c : c = uC + vC - k)
    (h19a : x * k = a * b - uA * vB) (h19b : y * k = b * c - uB * vC)
    (h19c : z * k = c * a - uC * vA) (hsum : x + y + z + a + b + c + k = 1) :
    k ≤ 109 / 98 * s ∧ 6 / 5 * s < a ∧ 6 / 5 * s < b ∧ 6 / 5 * s < c ∧
      x ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      y ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      z ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s < 55 / 384 := by
  have hs0 : 0 < s := by linarith
  have d1 : ∀ w : ℝ, s ≤ w → 1 ≤ w / s := fun w h => by rw [le_div_iff₀ hs0]; linarith
  have e18 : ∀ {a u v k : ℝ}, a = u + v - k → a / s = u / s + v / s - k / s := fun h => by
    rw [h]; ring
  have e19 : ∀ {x k a b u v : ℝ}, x * k = a * b - u * v →
      x / s * (k / s) = a / s * (b / s) - u / s * (v / s) := fun h => by
    rw [div_mul_div_comm, div_mul_div_comm, div_mul_div_comm, h, sub_div]
  have hsum' : x / s + y / s + z / s + a / s + b / s + c / s + k / s ≤ 64 / 7 := by
    have : x / s + y / s + z / s + a / s + b / s + c / s + k / s = 1 / s := by
      rw [← hsum]; ring
    rw [this, div_le_iff₀ hs0]; linarith
  obtain ⟨q1, q2, q3, q4⟩ := quant_norm (d1 x hx) (d1 y hy) (d1 z hz) (d1 a ha) (d1 b hb)
    (d1 c hc) (d1 k hk) (d1 uA huA) (d1 uB huB) (d1 uC huC) (d1 vA hvA) (d1 vB hvB) (d1 vC hvC)
    (e18 h18a) (e18 h18b) (e18 h18c) (e19 h19a) (e19 h19b) (e19 h19c) hsum'
  have hcon := mesh_ineq hs0 hx hy hz ha hb hc hk huA huB huC hvA hvB hvC h18a h18b h18c h19a
    h19b h19c
  have h5 : (2.236 : ℝ) < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  have hφ : (47 / 6 : ℝ) < 3 * ((1 + Real.sqrt 5) / 2) + 3 := by linarith
  have hφs := mul_le_mul_of_nonneg_left hs (by linarith : (0 : ℝ) ≤ 3 * ((1 + Real.sqrt 5) / 2) + 3)
  refine ⟨by rwa [div_le_iff₀ hs0] at q1, by rwa [lt_div_iff₀ hs0] at q2,
    by rwa [lt_div_iff₀ hs0] at q3, by rwa [lt_div_iff₀ hs0] at q4, by linarith, by linarith,
    by linarith, by linarith⟩

/-- The quantitative mesh lemma for a counterclockwise triangle of doubled area one. -/
theorem quant_ccw {A B C X Y Z : Point} {s : ℝ} (hs : 7 / 64 ≤ s) (hABC : sarea A B C = 1)
    (hm : MeshLabelled A B C X Y Z) (hmin : s / 2 ≤ minTriangleArea ![A, B, C, X, Y, Z]) :
    sarea Z X Y ≤ 109 / 98 * s ∧
      6 / 5 * s < sarea A Z Y ∧ 6 / 5 * s < sarea B X Z ∧ 6 / 5 * s < sarea C Y X ∧
      sarea A B Z ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      sarea B C X ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      sarea C A Y ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s < 55 / 384 := by
  obtain ⟨g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13⟩ :=
    mesh_ccw (by rw [hABC]; norm_num) hm
  have ht : 0 < s / 2 := by linarith
  have e : ∀ {p q r : Point}, 0 < sarea p q r → s / 2 ≤ triangleArea p q r → s ≤ sarea p q r :=
    fun h h' => by have := ge_of_pos ht h' h; linarith
  obtain ⟨h18a, h18b, h18c⟩ := eq18 A B C X Y Z
  obtain ⟨h19a, h19b, h19c⟩ := eq19 A B C X Y Z
  have tiling : sarea A B Z + sarea B C X + sarea C A Y + sarea A Z Y + sarea B X Z +
      sarea C Y X + sarea Z X Y = 1 := by
    rw [← hABC]; unfold sarea; ring
  obtain ⟨k1, k2, k3, k4, k5, k6, k7, k8⟩ := quant_scaled hs (e g1 (area_of_le_min hmin 0 1 5))
    (e g2 (area_of_le_min hmin 1 2 3)) (e g3 (area_of_le_min hmin 2 0 4))
    (e g4 (area_of_le_min hmin 0 5 4)) (e g5 (area_of_le_min hmin 1 3 5))
    (e g6 (area_of_le_min hmin 2 4 3)) (e g7 (area_of_le_min hmin 5 3 4))
    (e g8 (area_of_le_min hmin 0 5 3)) (e g9 (area_of_le_min hmin 1 3 4))
    (e g10 (area_of_le_min hmin 2 4 5)) (e g11 (area_of_le_min hmin 0 3 4))
    (e g12 (area_of_le_min hmin 1 4 5)) (e g13 (area_of_le_min hmin 2 5 3))
    h18a h18b h18c h19a h19b h19c tiling
  exact ⟨k1, k2, k3, k4, k5, k6, k7, k8⟩

/-- **Quantitative mesh lemma** (`CORNER_FAMILIES:QuantitativeMeshLemma`), (26)–(27): for a
triangle `ABC` of doubled area one with a labelled distributed triple `X, Y, Z` and all doubled
areas of the six points at least `s`, `s ≥ 7/64`: the doubled central area is `K ≤ (109/98)s`,
each connector exceeds `(6/5)s`, and each ear is at most `1 - (3φ + 3)s < 55/384`.
The manuscript states it at `s = 7/64`; `ONE_CORNER:claim-mesh-all-s` observes that it holds for
all `s ≥ 7/64`, the generality stated here. `hand/CORNER_FAMILIES.md`, lines 862–1035.

Uses: CORNER_FAMILIES:SixPointTriangularHullTheorem (16)–(20) -/
theorem quantitativeMeshLemma (A B C X Y Z : Point) (s : ℝ) (hs : 7 / 64 ≤ s)
    (hABC : |sarea A B C| = 1) (hm : MeshLabelled A B C X Y Z)
    (hmin : s / 2 ≤ minTriangleArea ![A, B, C, X, Y, Z]) :
    |sarea Z X Y| ≤ 109 / 98 * s ∧
      6 / 5 * s < |sarea A Z Y| ∧ 6 / 5 * s < |sarea B X Z| ∧ 6 / 5 * s < |sarea C Y X| ∧
      |sarea A B Z| ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      |sarea B C X| ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      |sarea C A Y| ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s < 55 / 384 := by
  rcases le_or_gt 0 (sarea A B C) with hp | hn
  · have h1 : sarea A B C = 1 := by rw [abs_of_nonneg hp] at hABC; exact hABC
    obtain ⟨g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13⟩ :=
      mesh_ccw (by rw [h1]; norm_num) hm
    obtain ⟨k1, k2, k3, k4, k5, k6, k7, k8⟩ := quant_ccw hs h1 hm hmin
    rw [abs_of_pos g7, abs_of_pos g4, abs_of_pos g5, abs_of_pos g6, abs_of_pos g1, abs_of_pos g2,
      abs_of_pos g3]
    exact ⟨k1, k2, k3, k4, k5, k6, k7, k8⟩
  · have h1 : sarea C B A = 1 := by
      rw [abs_of_neg hn] at hABC; linarith [sarea_swap₁₃ A B C]
    have hm' := meshLabelled_reverse hm
    obtain ⟨g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13⟩ :=
      mesh_ccw (by rw [h1]; norm_num) hm'
    obtain ⟨k1, k2, k3, k4, k5, k6, k7, k8⟩ := quant_ccw hs h1 hm'
      (min_sub hmin _ ![2, 1, 0, 5, 4, 3] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
    have r1 : |sarea Z X Y| = sarea X Z Y := by
      rw [sarea_swap₁₂ X Z Y, abs_neg, abs_of_pos g7]
    have r2 : |sarea A Z Y| = sarea A Y Z := by
      rw [sarea_swap₂₃ A Y Z, abs_neg, abs_of_pos g6]
    have r3 : |sarea B X Z| = sarea B Z X := by
      rw [sarea_swap₂₃ B Z X, abs_neg, abs_of_pos g5]
    have r4 : |sarea C Y X| = sarea C X Y := by
      rw [sarea_swap₂₃ C X Y, abs_neg, abs_of_pos g4]
    have r5 : |sarea A B Z| = sarea B A Z := by
      rw [sarea_swap₁₂ B A Z, abs_neg, abs_of_pos g2]
    have r6 : |sarea B C X| = sarea C B X := by
      rw [sarea_swap₁₂ C B X, abs_neg, abs_of_pos g1]
    have r7 : |sarea C A Y| = sarea A C Y := by
      rw [sarea_swap₁₂ A C Y, abs_neg, abs_of_pos g3]
    rw [r1, r2, r3, r4, r5, r6, r7]
    exact ⟨k1, k4, k3, k2, k6, k5, k7, k8⟩

/-! ### The labelled upper triple in the physical frame

`A = (0,0)`, `B = (0,1)`, `C = (1,1)` (clockwise), `Y = (u, v)`, `Z = (p, q)`, `X = (c, 1 - a)`.
`MeshHyps u v p q c a s` collects, as polynomial inequalities in these coordinates, the thirteen
mesh areas (at least `s`), the ear bounds `≤ E = 55/384`, the central bound `K ≤ (109/98)s` and the
connector bounds `J, [AZY] > (6/5)s` (§10). Names: `h = 1 - v`, `z = 1 - q`, `f = v - u`,
`k = h - a`, `Q = hc - au` (`[BXY]`), `J = k - Q` (`[CYX]`), `e = u(1 - a) - cv` (`[AYX]`),
`P = uz - hp` (`[BYZ]`), `W = cz - ap` (`[BXZ]`), `V = [CXZ]`, `K = Q + z(u - c) - pk` (central). -/

/-- The mesh facts of the physical frame, as polynomial inequalities. -/
structure MeshHyps (u v p q c a s : ℝ) : Prop where
  hs : 7 / 64 ≤ s
  hp : s ≤ p
  ha : s ≤ a
  hf : s ≤ v - u
  hpE : p ≤ 55 / 384
  haE : a ≤ 55 / 384
  hfE : v - u ≤ 55 / 384
  hQ : s ≤ (1 - v) * c - a * u
  he : s ≤ u * (1 - a) - c * v
  hP : s ≤ u * (1 - q) - (1 - v) * p
  hW : s ≤ c * (1 - q) - a * p
  hV : s ≤ a * p - a + c * q - c - q + 1
  hCZY : s ≤ p * v - p - q * u + q + u - v
  hAXZ : s ≤ a * p + c * q - p
  hK : s ≤ (1 - v) * c - a * u + (1 - q) * (u - c) - p * (1 - v - a)
  hK2 : (1 - v) * c - a * u + (1 - q) * (u - c) - p * (1 - v - a) ≤ 109 / 98 * s
  hJ : 6 / 5 * s < (1 - v) * (1 - c) - a * (1 - u)
  hAZY : 6 / 5 * s < u * q - v * p

/-- The mesh facts of a labelled upper triple in the physical frame (§§10–11): from the reversed
counterclockwise mesh `(C, B, A; Z, Y, X)` and the quantitative mesh lemma. -/
theorem meshHyps_of {X Y Z : Point} {s : ℝ} (hs : 7 / 64 ≤ s)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z)
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z]) :
    MeshHyps Y.1 Y.2 Z.1 Z.2 X.1 (1 - X.2) s := by
  have hm' := meshLabelled_reverse hm
  have h1 : sarea ((1 : ℝ), (1 : ℝ)) (0, 1) (0, 0) = 1 := by simp only [sarea]; norm_num
  obtain ⟨g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13⟩ :=
    mesh_ccw (by rw [h1]; norm_num) hm'
  have hmin' : s / 2 ≤ minTriangleArea ![(1, 1), (0, 1), (0, 0), Z, Y, X] :=
    min_sub hmin _ ![2, 1, 0, 5, 4, 3] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> simp)
  obtain ⟨k1, k2, k3, k4, k5, k6, k7, k8⟩ := quant_ccw hs h1 hm' hmin'
  have ht : 0 < s / 2 := by linarith
  have e : ∀ {p q r : Point}, 0 < sarea p q r → s / 2 ≤ triangleArea p q r → s ≤ sarea p q r :=
    fun h h' => by have := ge_of_pos ht h' h; linarith
  have f1 := e g1 (area_of_le_min hmin' 0 1 5)
  have f2 := e g2 (area_of_le_min hmin' 1 2 3)
  have f3 := e g3 (area_of_le_min hmin' 2 0 4)
  have f8 := e g8 (area_of_le_min hmin' 0 5 3)
  have f9 := e g9 (area_of_le_min hmin' 1 3 4)
  have f10 := e g10 (area_of_le_min hmin' 2 4 5)
  have f11 := e g11 (area_of_le_min hmin' 0 3 4)
  have f12 := e g12 (area_of_le_min hmin' 1 4 5)
  have f13 := e g13 (area_of_le_min hmin' 2 5 3)
  have f5 := e g5 (area_of_le_min hmin' 1 3 5)
  have f7 := e g7 (area_of_le_min hmin' 5 3 4)
  simp only [sarea] at f1 f2 f3 f8 f9 f10 f11 f12 f13 f5 f7 k1 k2 k3 k4 k5 k6 k7 k8
  have h5 : (2.236 : ℝ) < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  have hφs := mul_le_mul_of_nonneg_left hs
    (by linarith : (0 : ℝ) ≤ 3 * ((1 + Real.sqrt 5) / 2) + 3)
  refine ⟨hs, by linarith, by linarith, by linarith, by nlinarith, by nlinarith, by nlinarith,
    by linarith, by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith, by linarith, by linarith, by linarith⟩

/-! ### §11. Uniform signs for an additional lower point -/


/-- **Claim** (`CORNER_FAMILIES:UniformSigns`), the bounds (33) in the physical frame, for every
`s ≥ 7/64` (also `ONE_CORNER.md` (4)): with `E = 55/384`,
`s ≤ p, a, f ≤ E`, `u, h, c, z, 1 - c - a, 1 - p - z ≥ 3s`, `k ≥ 3s - E`, and `Q ≥ s`.
`hand/CORNER_FAMILIES.md`, lines 1041–1071.

Uses: CORNER_FAMILIES:QuantitativeMeshLemma -/
theorem eq33 (X Y Z : Point) (s : ℝ) (hs : 7 / 64 ≤ s)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z)
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z]) :
    let u := Y.1
    let v := Y.2
    let p := Z.1
    let q := Z.2
    let c := X.1
    let a := 1 - X.2
    let h := 1 - v
    let z := 1 - q
    let f := v - u
    let k := h - a
    let Q := h * c - a * u
    s ≤ p ∧ p ≤ 55 / 384 ∧ s ≤ a ∧ a ≤ 55 / 384 ∧ s ≤ f ∧ f ≤ 55 / 384 ∧
      3 * s ≤ u ∧ 3 * s ≤ h ∧ 3 * s ≤ c ∧ 3 * s ≤ z ∧ 3 * s ≤ 1 - c - a ∧
      3 * s ≤ 1 - p - z ∧ 3 * s - 55 / 384 ≤ k ∧ s ≤ Q := by
  have H := meshHyps_of hs hm hmin
  intro u v p q c a h z f k Q
  obtain ⟨-, hp, ha, hf, hpE, haE, hfE, hQ, he, hP, hW, hV, hCZY, hAXZ, -, -, hJ, hAZY⟩ := H
  refine ⟨hp, hpE, ha, haE, hf, hfE, by linarith, by linarith, by linarith, by linarith,
    by linarith, by linarith, by linarith, hQ⟩

/-- **Claim** (`CORNER_FAMILIES:UniformSigns`), identities (36) in the physical frame: for
`R = (x, 1 - b)`, `D(X, Y, R) = (c - u)b + kx - Q`, and the doubled central area
`K = -D(X, Y, Z)` equals `Q + z(u - c) - pk` (all points). `hand/CORNER_FAMILIES.md`,
lines 1112–1116. -/
theorem eq36 (X Y Z R : Point) :
    let u := Y.1
    let c := X.1
    let a := 1 - X.2
    let h := 1 - Y.2
    let k := h - a
    let Q := h * c - a * u
    sarea X Y R = (c - u) * (1 - R.2) + k * R.1 - Q ∧
      -sarea X Y Z = Q + (1 - Z.2) * (u - c) - Z.1 * k := by
  intro u c a h k Q
  constructor <;> simp only [sarea, u, c, a, h, k, Q] <;> ring

/-- The first sign of (34) (lines 1080–1096, `ONE_CORNER.md` lines 113–140): `D(B, Z, R) ≥ s`,
since `D(A, Z, R) < 0` gives `x ≥ (s - pδ)/q` and the opposite sign `x ≤ (pM - s)/z`, which
together need `p(q + δ) ≥ s`, while `p(q + δ) ≤ E·(43/7)s < s`. -/
theorem sign_BZ {u v p q c a s M x y : ℝ} (H : MeshHyps u v p q c a s) (hM : 1 ≤ M)
    (hsM : 7 / 64 * M ≤ s) (hyM : 1 - M ≤ y) (hyx : y < x) (hAB : s ≤ x)
    (hAZ : s ≤ |p * y - q * x|) (hBZ : s ≤ |(1 - q) * x - p * (1 - y)|) :
    s ≤ (1 - q) * x - p * (1 - y) := by
  obtain ⟨hs, hp, ha, hf, hpE, haE, hfE, hQ, he, hP, hW, hV, hCZY, hAXZ, hK, hK2, hJ, hAZY⟩ := H
  have hqp : 3 * s ≤ q - p := by linarith
  have hz : 3 * s ≤ 1 - q := by linarith
  have hneg : p * y - q * x < 0 := by
    have e : p * y - q * x = p * (y - x) - (q - p) * x := by ring
    have := mul_nonpos_of_nonneg_of_nonpos (by linarith : (0 : ℝ) ≤ p) (by linarith : y - x ≤ 0)
    have := mul_pos (by linarith : (0 : ℝ) < q - p) (by linarith : (0 : ℝ) < x)
    linarith
  rw [abs_of_neg hneg] at hAZ
  by_contra hc
  push Not at hc
  have h2 : (1 - q) * x - p * (1 - y) ≤ -s := by
    rcases le_total 0 ((1 - q) * x - p * (1 - y)) with h | h
    · rw [abs_of_nonneg h] at hBZ; linarith
    · rw [abs_of_nonpos h] at hBZ; linarith
  have m1 := mul_le_mul_of_nonneg_left h2 (by linarith : (0 : ℝ) ≤ q)
  have m2 := mul_le_mul_of_nonneg_left hAZ (by linarith : (0 : ℝ) ≤ 1 - q)
  have key : s ≤ p * (q - y) := by linarith
  have hqy : 0 ≤ q - y := by
    by_contra hh; push Not at hh
    have := mul_neg_of_pos_of_neg (by linarith : (0 : ℝ) < p) hh
    linarith
  have m3 := mul_le_mul hpE (by linarith : q - y ≤ M - 3 * s) hqy (by norm_num)
  linarith

/-- The second sign of (34): `D(B, X, R) ≤ -s` (the reflection of `sign_BZ` across `x + y = 1`,
written out: `D(C, X, R) > 0` and the opposite sign force `a(x - c) ≥ s`, while
`a(L - c) ≤ E·(43/7)s < s`). -/
theorem sign_BX {u v p q c a s L x y : ℝ} (H : MeshHyps u v p q c a s) (hL : 1 ≤ L)
    (hsL : 7 / 64 * L ≤ s) (hxL : x ≤ L) (hyx : y < x) (hBC : s ≤ 1 - y)
    (hCX : s ≤ |(1 - c) * (1 - y) - a * (1 - x)|) (hBX : s ≤ |a * x - c * (1 - y)|) :
    a * x - c * (1 - y) ≤ -s := by
  obtain ⟨hs, hp, ha, hf, hpE, haE, hfE, hQ, he, hP, hW, hV, hCZY, hAXZ, hK, hK2, hJ, hAZY⟩ := H
  have hc3 : 3 * s ≤ c := by linarith
  have hca : 3 * s ≤ 1 - c - a := by linarith
  have hpos : 0 < (1 - c) * (1 - y) - a * (1 - x) := by
    have e : (1 - c) * (1 - y) - a * (1 - x) = (1 - c - a) * (1 - y) + a * (x - y) := by ring
    have := mul_pos (by linarith : (0 : ℝ) < 1 - c - a) (by linarith : (0 : ℝ) < 1 - y)
    have := mul_nonneg (by linarith : (0 : ℝ) ≤ a) (by linarith : (0 : ℝ) ≤ x - y)
    linarith
  rw [abs_of_pos hpos] at hCX
  by_contra hc
  push Not at hc
  have h2 : s ≤ a * x - c * (1 - y) := by
    rcases le_total 0 (a * x - c * (1 - y)) with h | h
    · rw [abs_of_nonneg h] at hBX; linarith
    · rw [abs_of_nonpos h] at hBX; linarith
  have m1 := mul_le_mul_of_nonneg_left hCX (by linarith : (0 : ℝ) ≤ c)
  have m2 := mul_le_mul_of_nonneg_left h2 (by linarith : (0 : ℝ) ≤ 1 - c)
  have key : s ≤ a * (x - c) := by linarith
  have hxc : 0 ≤ x - c := by
    by_contra hh; push Not at hh
    have := mul_neg_of_pos_of_neg (by linarith : (0 : ℝ) < a) hh
    linarith
  have m3 := mul_le_mul haE (by linarith : x - c ≤ L - 3 * s) hxc (by norm_num)
  linarith

/-- `F > -s` at the vertex `b₀` (case `Q ≥ K` of lines 1129–1160). -/
theorem sign_XY_case1 {u v p q c a s x y : ℝ} (H : MeshHyps u v p q c a s)
    (hAC : s ≤ x - y) (hBZ : s ≤ (1 - q) * x - p * (1 - y))
    (hQK : (1 - v) * c - a * u + (1 - q) * (u - c) - p * (1 - v - a) ≤ (1 - v) * c - a * u) :
    -s < (c - u) * (1 - y) + (1 - v - a) * x - ((1 - v) * c - a * u) := by
  obtain ⟨hs, hp, ha, hf, hpE, haE, hfE, hQ, he, hP, hW, hV, hCZY, hAXZ, hK, hK2, hJ, hAZY⟩ := H
  set F := (c - u) * (1 - y) + (1 - v - a) * x - ((1 - v) * c - a * u) with hF
  set K := (1 - v) * c - a * u + (1 - q) * (u - c) - p * (1 - v - a) with hKdef
  set Q := (1 - v) * c - a * u with hQdef
  have id0 : (p + (1 - q)) * (F + s) = (Q - K) * (x - 1 - s + (1 - y)) +
      ((1 - v - a) - c + u) * ((1 - q) * x - p * (1 - y) - s) +
      ((p + (1 - q)) * (s - K) + s * (1 - c - a - (v - u)) + (K - Q) * (p + (1 - q) - 1 - s)) := by
    rw [hF, hKdef, hQdef]; ring
  have hca : 3 * s ≤ 1 - c - a := by
    have : 1 - c - a = (v - u) + ((1 - v) * (1 - c) - a * (1 - u)) + (u * (1 - a) - c * v) := by
      ring
    linarith
  have hpz : p + (1 - q) ≤ 1 - 3 * s := by
    have : q - p = (v - u) + (p * v - p - q * u + q + u - v) + (u * q - v * p) := by ring
    linarith
  have t1 := mul_nonneg (sub_nonneg.2 hQK) (by linarith : (0 : ℝ) ≤ x - 1 - s + (1 - y))
  have t2 := mul_nonneg (by linarith : (0 : ℝ) ≤ (1 - v - a) - c + u)
    (by linarith : (0 : ℝ) ≤ (1 - q) * x - p * (1 - y) - s)
  have t3 := mul_nonneg (sub_nonneg.2 hQK) (by linarith : (0 : ℝ) ≤ 1 + s - (p + (1 - q)))
  have t4 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - 3 * s - (p + (1 - q)))
    (by linarith : (0 : ℝ) ≤ K - s)
  have t5 := mul_le_mul_of_nonneg_left (by linarith : -(11 / 98 * s) ≤ s - K)
    (by linarith : (0 : ℝ) ≤ 1 - 3 * s)
  have t6 := mul_le_mul_of_nonneg_left (by linarith : 3 * s - 55 / 384 ≤ 1 - c - a - (v - u))
    (by linarith : (0 : ℝ) ≤ s)
  have t7 := mul_pos (by linarith : (0 : ℝ) < s) (by linarith : (0 : ℝ) < 327 / 98 * s - 11 / 98 - 55 / 384)
  have hpz0 : 0 < p + (1 - q) := by linarith
  by_contra hc; push Not at hc
  have := mul_nonpos_of_nonneg_of_nonpos hpz0.le (by linarith : F + s ≤ 0)
  linarith

/-- `F > -s` at the corner `b = M` (case `Q ≤ K`, `ONE_CORNER.md` (5)). -/
theorem sign_XY_case2 {u v p q c a s M x y : ℝ} (H : MeshHyps u v p q c a s) (hM : 1 ≤ M)
    (hsM : 7 / 64 * M ≤ s) (hyM : 1 - M ≤ y) (hBZ : s ≤ (1 - q) * x - p * (1 - y))
    (hQK : (1 - v) * c - a * u ≤ (1 - v) * c - a * u + (1 - q) * (u - c) - p * (1 - v - a)) :
    -s < (c - u) * (1 - y) + (1 - v - a) * x - ((1 - v) * c - a * u) := by
  obtain ⟨hs, hp, ha, hf, hpE, haE, hfE, hQ, he, hP, hW, hV, hCZY, hAXZ, hK, hK2, hJ, hAZY⟩ := H
  set F := (c - u) * (1 - y) + (1 - v - a) * x - ((1 - v) * c - a * u) with hF
  set K := (1 - v) * c - a * u + (1 - q) * (u - c) - p * (1 - v - a) with hKdef
  set Q := (1 - v) * c - a * u with hQdef
  have id1 : (1 - q) * (F + s) = (1 - v - a) * ((1 - q) * x - p * (1 - y) - s) +
      (K - Q) * (M - (1 - y)) + ((1 - v - a) * s - M * K + Q * (M - (1 - q)) + (1 - q) * s) := by
    rw [hF, hKdef, hQdef]; ring
  have hk : 11 / 5 * s < 1 - v - a := by
    have : 1 - v - a = Q + ((1 - v) * (1 - c) - a * (1 - u)) := by rw [hQdef]; ring
    linarith
  have hz : 3 * s ≤ 1 - q := by
    have : 1 - q = a + (c * (1 - q) - a * p) + (a * p - a + c * q - c - q + 1) := by ring
    linarith
  have t1 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - v - a)
    (by linarith : (0 : ℝ) ≤ (1 - q) * x - p * (1 - y) - s)
  have t2 := mul_nonneg (sub_nonneg.2 hQK) (by linarith : (0 : ℝ) ≤ M - (1 - y))
  have t3 := mul_le_mul_of_nonneg_right hQ (by linarith : (0 : ℝ) ≤ M - (1 - q))
  have t4 := mul_le_mul_of_nonneg_left (by linarith : K - s ≤ 11 / 98 * s)
    (by linarith : (0 : ℝ) ≤ M)
  have t5 := mul_le_mul_of_nonneg_right (by linarith : M ≤ 64 / 7 * s)
    (by linarith : (0 : ℝ) ≤ 11 / 98 * s)
  have t6 := mul_lt_mul_of_pos_right hk (by linarith : (0 : ℝ) < s)
  have t7 : 0 < s * s := by have : 0 < s := by linarith
                            positivity
  have hz0 : 0 < 1 - q := by linarith
  by_contra hc; push Not at hc
  have := mul_nonpos_of_nonneg_of_nonpos hz0.le (by linarith : F + s ≤ 0)
  linarith

/-- The third sign of (34) (lines 1098–1167, `ONE_CORNER.md` (5)): `D(X, Y, R) ≥ s`. With
`b = 1 - y`, `F = D(X, Y, R) = (c - u)b + kx - Q` is bounded below on the region
`x ≥ 1 + s - b`, `zx - pb ≥ s`, `b ≤ M` by its value at a vertex. -/
theorem sign_XY {u v p q c a s M x y : ℝ} (H : MeshHyps u v p q c a s) (hM : 1 ≤ M)
    (hsM : 7 / 64 * M ≤ s) (hyM : 1 - M ≤ y) (hAC : s ≤ x - y)
    (hBZ : s ≤ (1 - q) * x - p * (1 - y))
    (hXY : s ≤ |(c - u) * (1 - y) + (1 - v - a) * x - ((1 - v) * c - a * u)|) :
    s ≤ (c - u) * (1 - y) + (1 - v - a) * x - ((1 - v) * c - a * u) := by
  have hFs : -s < (c - u) * (1 - y) + (1 - v - a) * x - ((1 - v) * c - a * u) := by
    rcases le_total ((1 - v) * c - a * u + (1 - q) * (u - c) - p * (1 - v - a))
      ((1 - v) * c - a * u) with hQK | hQK
    · exact sign_XY_case1 H hAC hBZ hQK
    · exact sign_XY_case2 H hM hsM hyM hBZ hQK
  rcases le_total 0 ((c - u) * (1 - y) + (1 - v - a) * x - ((1 - v) * c - a * u)) with h | h
  · rwa [abs_of_nonneg h] at hXY
  · rw [abs_of_nonpos h] at hXY; linarith

/-- **Uniform signs** (`CORNER_FAMILIES:UniformSigns`), equation (34), with the rectangle
parameters of `ONE_CORNER.md` §3: a lower point `R` (`y < x`) of the rectangle
`[0, L] × [1 - M, 1]`, `L, M ≥ 1`, `7/64 · L ≤ s`, `7/64 · M ≤ s`, such that all doubled areas
of `A, B, C, X, Y, Z, R` are at least `s`, satisfies `D(B,Z,R) ≥ s`, `D(B,X,R) ≤ -s` and
`D(X,Y,R) ≥ s`. (CORNER_FAMILIES: `L = M = 1`, `s = 7/64`; ONE_CORNER (6): `s = 7LM/64`.)
`hand/CORNER_FAMILIES.md`, lines 1073–1167.

Uses: CORNER_FAMILIES:UniformSigns (33), (35)–(36), CORNER_FAMILIES:QuantitativeMeshLemma -/
theorem uniformSigns (X Y Z R : Point) (s L M : ℝ) (hL : 1 ≤ L) (hM : 1 ≤ M)
    (hsL : 7 / 64 * L ≤ s) (hsM : 7 / 64 * M ≤ s)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z) (hR : R ∈ rectangle L M)
    (hRl : R.2 < R.1)
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, R]) :
    s ≤ sarea (0, 1) Z R ∧ sarea (0, 1) X R ≤ -s ∧ s ≤ sarea X Y R := by
  have hs : 7 / 64 ≤ s := by nlinarith
  have H := meshHyps_of hs hm (min_sub hmin _ ![0, 1, 2, 3, 4, 5] (by norm_num) (by decide)
    (by intro i; fin_cases i <;> simp))
  obtain ⟨hx0, hxL, hyM, hy1⟩ := hR
  have g : ∀ {P₁ P₂ : Point} {e : ℝ}, 2 * (s / 2) ≤ |sarea P₁ P₂ R| → sarea P₁ P₂ R = e →
      s ≤ |e| := fun h he => by rw [he] at h; linarith
  have b1 := g (two_le_abs (area_of_le_min hmin 0 5 6) : 2 * (s / 2) ≤ |sarea (0, 0) Z R|)
    (show sarea (0, 0) Z R = Z.1 * R.2 - Z.2 * R.1 by simp only [sarea]; ring)
  have b2 := g (two_le_abs (area_of_le_min hmin 1 5 6) : 2 * (s / 2) ≤ |sarea (0, 1) Z R|)
    (show sarea (0, 1) Z R = (1 - Z.2) * R.1 - Z.1 * (1 - R.2) by simp only [sarea]; ring)
  have b3 := g (two_le_abs (area_of_le_min hmin 2 3 6) : 2 * (s / 2) ≤ |sarea (1, 1) X R|)
    (show sarea (1, 1) X R = (1 - X.1) * (1 - R.2) - (1 - X.2) * (1 - R.1) by
      simp only [sarea]; ring)
  have b4 := g (two_le_abs (area_of_le_min hmin 1 3 6) : 2 * (s / 2) ≤ |sarea (0, 1) X R|)
    (show sarea (0, 1) X R = (1 - X.2) * R.1 - X.1 * (1 - R.2) by simp only [sarea]; ring)
  have b5 := g (two_le_abs (area_of_le_min hmin 3 4 6) : 2 * (s / 2) ≤ |sarea X Y R|)
    (show sarea X Y R = (X.1 - Y.1) * (1 - R.2) + (1 - Y.2 - (1 - X.2)) * R.1 -
      ((1 - Y.2) * X.1 - (1 - X.2) * Y.1) by simp only [sarea]; ring)
  have b6 := g (two_le_abs (area_of_le_min hmin 0 2 6) : 2 * (s / 2) ≤ |sarea (0, 0) (1, 1) R|)
    (show sarea (0, 0) (1, 1) R = R.2 - R.1 by simp only [sarea]; ring)
  have b7 := g (two_le_abs (area_of_le_min hmin 1 2 6) : 2 * (s / 2) ≤ |sarea (0, 1) (1, 1) R|)
    (show sarea (0, 1) (1, 1) R = R.2 - 1 by simp only [sarea]; ring)
  have b8 := g (two_le_abs (area_of_le_min hmin 0 1 6) : 2 * (s / 2) ≤ |sarea (0, 0) (0, 1) R|)
    (show sarea (0, 0) (0, 1) R = -R.1 by simp only [sarea]; ring)
  rw [abs_of_neg (by linarith)] at b6
  rw [abs_of_nonpos (by linarith)] at b7
  rw [abs_neg, abs_of_nonneg hx0] at b8
  have s1 := sign_BZ H hM hsM hyM hRl b8 b1 b2
  have s2 := sign_BX H hL hsL hxL hRl (by linarith) b3 b4
  have s3 := sign_XY H hM hsM hyM (by linarith) s1 b5
  refine ⟨?_, ?_, ?_⟩
  · have : sarea (0, 1) Z R = (1 - Z.2) * R.1 - Z.1 * (1 - R.2) := by simp only [sarea]; ring
    linarith
  · have : sarea (0, 1) X R = (1 - X.2) * R.1 - X.1 * (1 - R.2) := by simp only [sarea]; ring
    linarith
  · have : sarea X Y R = (X.1 - Y.1) * (1 - R.2) + (1 - Y.2 - (1 - X.2)) * R.1 -
      ((1 - Y.2) * X.1 - (1 - X.2) * Y.1) := by simp only [sarea]; ring
    linarith

end Heilbronn.CornerFamilies
