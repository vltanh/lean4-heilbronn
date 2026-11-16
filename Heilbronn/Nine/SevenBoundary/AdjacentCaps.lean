module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.SevenBoundary.TopCapRadial

/-! # Two complete adjacent-cap orientations with seven boundary contacts

Two of the four exterior radial words of class `R1` (blocks `(1,1)` and `(6,6)`, centred on the
right and left paired contacts) reduce to a sharp octagon with one top vertex displaced inward;
the other two words are treated in `SevenBoundaryAdjacentCapsCompletion`.

**Setting of `minTriangleArea_lt_displaced_top`.** Sharp octagon labels `A, …, H` with one top vertex displaced inward:
`A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), H=(0,h)` with the strict side orders
(`EightBoundary.EightAnchors a b c d e f g h`, which also gives `0 < g < f < 1`), and either
`F = (f,k)`, `G = (g,1)` with `0 < k ≤ 1` (family 1, `displacedF`), or `F = (f,1)`, `G = (g,k)`
with `e ≤ k ≤ 1` (family 2, `displacedG`). The octagon `A, B, C, D, E, F, G, H` is strictly convex
in this order, and the ninth point `O` is inside it, outside its four closed side quadrilaterals,
and inside both triangles `BDE` and `DEG` (`AdjacentCapsHyp`). All doubled areas are at least
`s = 7/64`.

## Main results

* `gap_lt_five_sevenths`: the scalar bound `Z < 5/7`;
* `minTriangleArea_lt_displaced_top`: both displaced families are impossible (some area `< 7/128`);
* `minTriangleArea_lt_of_two_R1_words`: the exterior `R1` words `(3,2,3,2,5,4,5,4)` (`X` plays the sharp `F`,
  family 1) and `(5,4,5,4,3,2,3,2)` (after `(x,y) ↦ (1-x,y)` with labels `V_{3-i}`, `X` plays `G`
  with `k > h = e'`, family 2) give some area `< 7/128`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundaryAdjacentCaps

open SevenBoundary RadialCatalogue

/-- The sharp octagon with `F = (f,k)` displaced inward (family 1):
`A, B, C, D, E, (f,k), (g,1), H`. -/
def displacedF (a b c d e f g h k : ℝ) : Fin 8 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, k), (g, 1), (0, h)]

/-- The sharp octagon with `G = (g,k)` displaced inward (family 2):
`A, B, C, D, E, (f,1), (g,k), H`. -/
def displacedG (a b c d e f g h k : ℝ) : Fin 8 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, 1), (g, k), (0, h)]

/-- The common hypotheses on a displaced sharp octagon `V = A, …, H` and the ninth point `O`: the
octagon is strictly convex in this cyclic order, `O` is strictly inside it, outside its four
closed side quadrilaterals, and strictly inside the triangles `BDE` and `DEG`. -/
def AdjacentCapsHyp (V : Fin 8 → Point) (O : Point) : Prop :=
  IsConvexPolygon V ∧ InPolygon V O ∧ OutsideSideQuads V O ∧
    InTriangle O (V 1) (V 3) (V 4) ∧ InTriangle O (V 3) (V 4) (V 6)

/-- With `s = 7/64`: if `0 < Z < 1`, `B₀, T > 0`, `Z + s/B₀ + s/T ≤ 1` and
`B₀, T ≤ 1 - s/Z - s`, then `Z < 5/7`. -/
theorem gap_lt_five_sevenths {Z B₀ T : ℝ} (hZ : 0 < Z) (hZ1 : Z < 1) (hB : 0 < B₀) (hT : 0 < T)
    (hbud : Z + 7 / 64 / B₀ + 7 / 64 / T ≤ 1) (hB₀ : B₀ ≤ 1 - 7 / 64 / Z - 7 / 64)
    (hT₀ : T ≤ 1 - 7 / 64 / Z - 7 / 64) :
    Z < 5 / 7 := by
  set K := 1 - 7 / 64 / Z - 7 / 64 with hK
  have hK0 : 0 < K := by linarith
  have h1 : 7 / 64 / K ≤ 7 / 64 / B₀ := div_le_div_of_nonneg_left (by norm_num) hB hB₀
  have h2 : 7 / 64 / K ≤ 7 / 64 / T := div_le_div_of_nonneg_left (by norm_num) hT hT₀
  have h3 : 2 * (7 / 64) ≤ (1 - Z) * K := by
    have : 2 * (7 / 64) / K ≤ 1 - Z := by
      rw [show 2 * (7 / 64) / K = 7 / 64 / K + 7 / 64 / K by ring]; linarith
    rw [div_le_iff₀ hK0] at this; linarith
  have hKZ : K * Z = Z - 7 / 64 - 7 / 64 * Z := by rw [hK]; field_simp
  have h4 : 2 * (7 / 64) * Z ≤ (1 - Z) * (Z - 7 / 64 - 7 / 64 * Z) := by
    rw [← hKZ]; nlinarith
  by_contra hc; push Not at hc
  nlinarith

/-! ### The scalar cores of `minTriangleArea_lt_displaced_top` -/

/-- The final step of `family1_core`: `(1+R)x ≥ 1 + W + 2s`, `Rx ≤ R - s - sR`, `LW ≥ sR`,
`L < 1` and `R < 5/7` are incompatible. -/
theorem fam1_final {R L W x : ℝ} (hR : 0 < R) (hR57 : R < 5 / 7) (hL1 : L < 1)
    (hW0 : 0 < W) (hWL : 7 / 64 * R ≤ L * W) (h3 : 1 + W + 2 * (7 / 64) ≤ (1 + R) * x)
    (h4 : R * x ≤ R - 7 / 64 - 7 / 64 * R) : False := by
  have hWs : 7 / 64 * R < W := by linarith [mul_pos (show (0 : ℝ) < 1 - L by linarith) hW0]
  have h5 : R * (1 + W + 2 * (7 / 64)) ≤ (1 + R) * (R - 7 / 64 - 7 / 64 * R) := by
    linarith [mul_le_mul_of_nonneg_left h3 hR.le,
      mul_le_mul_of_nonneg_left h4 (show (0 : ℝ) ≤ 1 + R by linarith)]
  linarith [mul_lt_mul_of_pos_left hWs hR, mul_pos hR (show (0 : ℝ) < 5 / 7 - R by linarith)]

/-- The final step of `family2_core`: `(R+k)x ≥ k + W + 2s`, `Rx ≤ R - s - sR`, `LW ≥ sR`,
`L < 5/7`, `R < 3/4` and `R + k > 2R + D₀` are incompatible. -/
theorem fam2_final {R L W x k : ℝ} (hR : 0 < R) (hR34 : R < 3 / 4) (hL57 : L < 5 / 7)
    (hW0 : 0 < W) (hWL : 7 / 64 * R ≤ L * W) (h8 : k + W + 2 * (7 / 64) ≤ (R + k) * x)
    (h4 : R * x ≤ R - 7 / 64 - 7 / 64 * R) (hk2 : 2 * R + 105 / 673 < R + k) : False := by
  have hWs : 7 / 5 * (7 / 64) * R < W := by
    linarith [mul_pos (show (0 : ℝ) < 5 / 7 - L by linarith) hW0]
  have h5 : R * (k + W + 2 * (7 / 64)) ≤ (R + k) * (R - 7 / 64 - 7 / 64 * R) := by
    linarith [mul_le_mul_of_nonneg_left h8 hR.le,
      mul_le_mul_of_nonneg_left h4 (show (0 : ℝ) ≤ R + k by linarith)]
  linarith [mul_lt_mul_of_pos_left hWs hR, mul_pos hR (show (0 : ℝ) < 3 / 4 - R by linarith),
    mul_lt_mul_of_pos_left hk2 (show (0 : ℝ) < 7 / 64 * (1 + R) by positivity)]

/-- Shared by both families: `LW ≥ sR` and `W > 0` for `W = b(e-y) + g(y-d)`. -/
theorem w_bounds {a b d e g h y : ℝ} (hah : a < h) (hdy : d < y) (hye : y < e)
    (hABH : 7 / 64 ≤ b * (h - a)) (hAGH : 7 / 64 ≤ g * (h - a)) :
    7 / 64 * (e - d) ≤ (h - a) * (b * (e - y) + g * (y - d)) ∧
      0 < b * (e - y) + g * (y - d) := by
  have hWL : 7 / 64 * (e - d) ≤ (h - a) * (b * (e - y) + g * (y - d)) := by
    linarith [mul_le_mul_of_nonneg_right hABH (show (0 : ℝ) ≤ e - y by linarith),
      mul_le_mul_of_nonneg_right hAGH (show (0 : ℝ) ≤ y - d by linarith)]
  refine ⟨hWL, ?_⟩
  by_contra hc'; push Not at hc'
  linarith [mul_nonpos_of_nonneg_of_nonpos (show (0 : ℝ) ≤ h - a by linarith) hc']

/-- Family 1: `e < k` and `R < 5/7` (by `gap_lt_five_sevenths`). -/
theorem fam1_front {a b c d e f g h k : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (hk1 : k ≤ 1)
    (hABH : 7 / 64 ≤ b * (h - a)) (hAGH : 7 / 64 ≤ g * (h - a))
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hDEF : 7 / 64 ≤ (1 - f) * (e - d))
    (hGEF : 7 / 64 ≤ (f - g) * (1 - e) - (1 - g) * (1 - k)) : e < k ∧ e - d < 5 / 7 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA
  have hL : 0 < h - a := by linarith
  have hB : 0 < c - b := by linarith
  have hR : 0 < e - d := by linarith
  have hT : 0 < f - g := by linarith
  have hek : e < k := by
    by_contra hc'; push Not at hc'
    linarith [mul_nonneg (show (0 : ℝ) ≤ 1 - g by linarith) (sub_nonneg.2 hc'),
      mul_nonneg (show (0 : ℝ) ≤ 1 - f by linarith) (show (0 : ℝ) ≤ 1 - e by linarith)]
  have hδ : 0 ≤ (1 - g) * (1 - k) := mul_nonneg (by linarith) (by linarith)
  have hL1 : 0 < 1 - (h - a) := by linarith
  have hbs : 7 / 64 < b := by linarith [mul_pos hb hL1]
  have hgs : 7 / 64 < g := by linarith [mul_pos hg hL1]
  have e1 : 7 / 64 / (c - b) ≤ d := by rw [div_le_iff₀ hB]; linarith
  have e2 : 7 / 64 / (f - g) ≤ 1 - e := by rw [div_le_iff₀ hT]; linarith
  have e3 : 7 / 64 / (e - d) ≤ 1 - c := by rw [div_le_iff₀ hR]; linarith
  have e4 : 7 / 64 / (e - d) ≤ 1 - f := by rw [div_le_iff₀ hR]; linarith
  exact ⟨hek, gap_lt_five_sevenths hR (by linarith) hB hT (by linarith) (by linarith) (by linarith)⟩

/-- The scalar part of family 1 (`F = (f,k)` moves inward), with the costs as signed doubled
areas: `ABH, AGH, ABC, BCD, CDE, DEF, GEF`, the internal `BOE, DOG` and the side test `CF`. -/
theorem family1_core {a b c d e f g h k x y : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (hk1 : k ≤ 1) (hdy : d < y) (hye : y < e)
    (hABH : 7 / 64 ≤ b * (h - a)) (hAGH : 7 / 64 ≤ g * (h - a))
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hDEF : 7 / 64 ≤ (1 - f) * (e - d))
    (hGEF : 7 / 64 ≤ (f - g) * (1 - e) - (1 - g) * (1 - k))
    (hBOE : 7 / 64 ≤ e * (x - b) - (1 - b) * y)
    (hDOG : 7 / 64 ≤ (1 - g) * (y - d) - (1 - d) * (1 - x))
    (hCF : 7 / 64 ≤ k * (c - x) + (f - c) * y) : False := by
  obtain ⟨hek, hR57⟩ := fam1_front hA hk1 hABH hAGH hBCD hCDE hDEF hGEF
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA
  have hR : 0 < e - d := by linarith
  have hk0 : 0 < k := by linarith
  obtain ⟨hWL, hW0⟩ := w_bounds hah hdy hye hABH hAGH
  have hcR : c * (e - d) ≤ (e - d) - 7 / 64 := by linarith
  have hfR : f * (e - d) ≤ (e - d) - 7 / 64 := by linarith
  have h4k : k * ((e - d) * x) ≤ k * ((e - d) - 7 / 64) - 7 / 64 * (e - d) := by
    linarith [mul_le_mul_of_nonneg_left hCF hR.le,
      mul_le_mul_of_nonneg_right hcR (show (0 : ℝ) ≤ k - y by linarith),
      mul_le_mul_of_nonneg_right hfR (show (0 : ℝ) ≤ y by linarith)]
  have h4 : (e - d) * x ≤ (e - d) - 7 / 64 - 7 / 64 * (e - d) := by
    have : k * ((e - d) * x) ≤ k * ((e - d) - 7 / 64 - 7 / 64 * (e - d)) := by
      linarith [mul_le_mul_of_nonneg_right hk1 (show (0 : ℝ) ≤ 7 / 64 * (e - d) by positivity)]
    exact le_of_mul_le_mul_left this hk0
  exact fam1_final hR hR57 (show h - a < 1 by linarith) hW0 hWL (by linarith) h4

/-- Family 2: `L < 5/7`, `R < 3/4` and `d > D₀ = 105/673`. -/
theorem fam2_front {a b c d e f g h k : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (hek : e ≤ k) (hk1 : k ≤ 1)
    (hABH : 7 / 64 ≤ b * (h - a)) (hAGH : 7 / 64 ≤ g * (h - a)) (hABC : 7 / 64 ≤ a * (c - b))
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hDEF : 7 / 64 ≤ (1 - f) * (e - d))
    (hGHF : 7 / 64 ≤ (f - g) * (1 - h) - f * (1 - k))
    (hGEF : 7 / 64 ≤ (f - g) * (1 - e) + (1 - f) * (1 - k)) :
    h - a < 5 / 7 ∧ e - d < 3 / 4 ∧ 105 / 673 < d := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA
  have hL : 0 < h - a := by linarith
  have hB : 0 < c - b := by linarith
  have hR : 0 < e - d := by linarith
  have hT : 0 < f - g := by linarith
  have hfk : 0 ≤ f * (1 - k) := mul_nonneg (by linarith) (by linarith)
  have hL1 : 0 < 1 - (h - a) := by linarith
  have hR1 : 0 < 1 - (e - d) := by linarith
  have hbs : 7 / 64 < b := by linarith [mul_pos hb hL1]
  have hgs : 7 / 64 < g := by linarith [mul_pos hg hL1]
  have hcs : c < 1 - 7 / 64 := by linarith [mul_pos (show (0 : ℝ) < 1 - c by linarith) hR1]
  have hfs : f < 1 - 7 / 64 := by linarith [mul_pos (show (0 : ℝ) < 1 - f by linarith) hR1]
  -- `L < 5/7`
  have e1 : 7 / 64 / (c - b) ≤ a := by rw [div_le_iff₀ hB]; linarith
  have e2 : 7 / 64 / (f - g) ≤ 1 - h := by rw [div_le_iff₀ hT]; linarith
  have e3 : 7 / 64 / (h - a) ≤ b := by rw [div_le_iff₀ hL]; linarith
  have e4 : 7 / 64 / (h - a) ≤ g := by rw [div_le_iff₀ hL]; linarith
  have hL57 := gap_lt_five_sevenths hL (by linarith) hB hT (by linarith) (by linarith) (by linarith)
  -- `R < 3/4`
  have hd750 : 7 / 50 < d := by
    linarith [mul_lt_mul_of_pos_left (show c - b < 1 - 2 * (7 / 64) by linarith) hd]
  have hge : 7 / 64 ≤ (1 - g) * (1 - e) := by
    linarith [mul_le_mul_of_nonneg_left (show 1 - k ≤ 1 - e by linarith)
      (show (0 : ℝ) ≤ 1 - f by linarith)]
  have he757 : 7 / 57 < 1 - e := by
    linarith [mul_lt_mul_of_pos_left (show 1 - g < 1 - 7 / 64 by linarith)
      (show (0 : ℝ) < 1 - e by linarith)]
  have hR34 : e - d < 3 / 4 := by linarith
  -- `B₀ < 673/960`, `d > D₀`
  have hc48 : 7 / 48 < 1 - c := by
    linarith [mul_lt_mul_of_pos_left hR34 (show (0 : ℝ) < 1 - c by linarith)]
  have hb320 : 49 / 320 < b := by linarith [mul_lt_mul_of_pos_left hL57 hb]
  have hD0 : 105 / 673 < d := by
    linarith [mul_lt_mul_of_pos_left (show c - b < 673 / 960 by linarith) hd]
  exact ⟨hL57, hR34, hD0⟩

/-- The scalar part of family 2 (`G = (g,k)` moves inward): costs `ABH, AGH, ABC, BCD, CDE, DEF,
GHF, GEF`, the internal `BOE, DOG` and the side test `CF`. -/
theorem family2_core {a b c d e f g h k x y : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (hek : e ≤ k) (hk1 : k ≤ 1) (hdy : d < y) (hye : y < e)
    (hABH : 7 / 64 ≤ b * (h - a)) (hAGH : 7 / 64 ≤ g * (h - a)) (hABC : 7 / 64 ≤ a * (c - b))
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hDEF : 7 / 64 ≤ (1 - f) * (e - d))
    (hGHF : 7 / 64 ≤ (f - g) * (1 - h) - f * (1 - k))
    (hGEF : 7 / 64 ≤ (f - g) * (1 - e) + (1 - f) * (1 - k))
    (hBOE : 7 / 64 ≤ e * (x - b) - (1 - b) * y)
    (hDOG : 7 / 64 ≤ (1 - g) * (y - d) - (k - d) * (1 - x))
    (hCF : 7 / 64 ≤ c * (1 - y) + f * y - x) : False := by
  obtain ⟨hL57, hR34, hD0⟩ :=
    fam2_front hA hek hk1 hABH hAGH hABC hBCD hCDE hDEF hGHF hGEF
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA
  have hR : 0 < e - d := by linarith
  obtain ⟨hWL, hW0⟩ := w_bounds hah hdy hye hABH hAGH
  have hcR : c * (e - d) ≤ (e - d) - 7 / 64 := by linarith
  have hfR : f * (e - d) ≤ (e - d) - 7 / 64 := by linarith
  have h4 : (e - d) * x ≤ (e - d) - 7 / 64 - 7 / 64 * (e - d) := by
    linarith [mul_le_mul_of_nonneg_left hCF hR.le,
      mul_le_mul_of_nonneg_right hcR (show (0 : ℝ) ≤ 1 - y by linarith),
      mul_le_mul_of_nonneg_right hfR (show (0 : ℝ) ≤ y by linarith)]
  exact fam2_final (k := k) (x := x) hR hR34 hL57 hW0 hWL (by linarith) h4 (by linarith)

/-- `d < y < e` for a point `O = (x,y)` in `BDE ∩ DEG` (`D = (1,d)`, `E = (1,e)`, `B = (b,0)`,
`G = (g,k)`): the signs of `DEO`, `EBO`, `GDO`. -/
theorem y_bounds {b d e g k x y : ℝ} (hb : b < 1) (hg : g < 1) (he : 0 < e) (hdk : d < k)
    (hDEO : 0 < (e - d) * (1 - x)) (hEBO : 0 < (1 - b) * (e - y) - e * (1 - x))
    (hGDO : 0 < (1 - g) * (y - k) + (k - d) * (x - g)) (hde : d < e) : d < y ∧ y < e := by
  have hx : x < 1 := by
    by_contra hc; push Not at hc
    linarith [mul_nonneg (show (0 : ℝ) ≤ e - d by linarith) (show (0 : ℝ) ≤ x - 1 by linarith)]
  refine ⟨?_, ?_⟩
  · by_contra hc; push Not at hc
    linarith [mul_nonneg (show (0 : ℝ) ≤ 1 - g by linarith) (show (0 : ℝ) ≤ d - y by linarith),
      mul_pos (show (0 : ℝ) < k - d by linarith) (show (0 : ℝ) < 1 - x by linarith)]
  · by_contra hc; push Not at hc
    linarith [mul_nonneg (show (0 : ℝ) ≤ 1 - b by linarith) (show (0 : ℝ) ≤ y - e by linarith),
      mul_pos he (show (0 : ℝ) < 1 - x by linarith)]

/-! ### The two displaced families -/

theorem octConfig_castSucc (V : Fin 8 → Point) (O : Point) (i : Fin 8) :
    octConfig V O (Fin.castSucc i) = V i := by
  fin_cases i <;> rfl

/-- A cost of an octagon triangle. -/
theorem oct_cost_V {V : Fin 8 → Point} {O : Point} (hmin : 7 / 128 ≤ minTriangleArea (octConfig V O))
    (i j l : Fin 8) (hp : 0 < sarea (V i) (V j) (V l))
    (hij : i ≠ j := by decide) (hjl : j ≠ l := by decide) (hil : i ≠ l := by decide) :
    7 / 64 ≤ sarea (V i) (V j) (V l) := by
  have := SevenBoundaryCaps.cost hmin i.castSucc j.castSucc l.castSucc
    (v := sarea (V i) (V j) (V l)) (by rw [octConfig_castSucc, octConfig_castSucc,
      octConfig_castSucc]) hp.le (by simpa using hij) (by simpa using hjl) (by simpa using hil)
  exact this

/-- A cost of a triangle with apex `O`. -/
theorem oct_cost_O {V : Fin 8 → Point} {O : Point} (hmin : 7 / 128 ≤ minTriangleArea (octConfig V O))
    (i j : Fin 8) (hp : 0 < sarea (V i) (V j) O) (hij : i ≠ j := by decide) :
    7 / 64 ≤ sarea (V i) (V j) O := by
  have := SevenBoundaryCaps.cost hmin i.castSucc j.castSucc 8
    (v := sarea (V i) (V j) O) (by rw [octConfig_castSucc, octConfig_castSucc]; rfl) hp.le
    (by simpa using hij) (Fin.castSucc_lt_last j).ne (Fin.castSucc_lt_last i).ne
  exact this

theorem minTriangleArea_lt_displacedF {a b c d e f g h k x y : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (hk1 : k ≤ 1) (hH : AdjacentCapsHyp (displacedF a b c d e f g h k) (x, y)) :
    minTriangleArea (octConfig (displacedF a b c d e f g h k) (x, y)) < 7 / 128 := by
  have hA' := hA
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA'
  by_contra hcon; push Not at hcon
  obtain ⟨hV, hO, hq, hT1, hT2⟩ := hH
  have pq := pos_of_not_quad hO 2 (by simpa using hq.2.1)
  rw [show (2 : Fin 8) + 3 = 5 from rfl] at pq
  have c1 := oct_cost_V hcon 0 1 7 (hV 0 1 7 (by decide) (by decide))
  have c2 := oct_cost_V hcon 0 6 7 (hV 0 6 7 (by decide) (by decide))
  have c4 := oct_cost_V hcon 1 2 3 (hV 1 2 3 (by decide) (by decide))
  have c5 := oct_cost_V hcon 2 3 4 (hV 2 3 4 (by decide) (by decide))
  have c6 := oct_cost_V hcon 3 4 5 (hV 3 4 5 (by decide) (by decide))
  have c7 := oct_cost_V hcon 4 5 6 (hV 4 5 6 (by decide) (by decide))
  have c8 := oct_cost_O hcon 4 1 hT1.2.2
  have c9 := oct_cost_O hcon 6 3 hT2.2.2
  have c10 := oct_cost_O hcon 2 5 (by rw [sarea_cycle]; exact pq)
  have t1 := hT1.2.1
  simp only [displacedF, Matrix.cons_val, sarea] at c1 c2 c4 c5 c6 c7 c8 c9 c10 t1
  obtain ⟨hdy, hye⟩ := y_bounds (b := b) (d := d) (e := e) (g := g) (k := 1) (x := x) (y := y)
    (by linarith) (by linarith) (by linarith) (by linarith) (by linarith) (by linarith)
    (by linarith) hde
  exact family1_core (x := x) hA hk1 hdy hye (by linarith) (by linarith) (by linarith) (by linarith)
    (by linarith) (by linarith) (by linarith) (by linarith) (by linarith)

theorem minTriangleArea_lt_displacedG {a b c d e f g h k x y : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (hek : e ≤ k) (hk1 : k ≤ 1) (hH : AdjacentCapsHyp (displacedG a b c d e f g h k) (x, y)) :
    minTriangleArea (octConfig (displacedG a b c d e f g h k) (x, y)) < 7 / 128 := by
  have hA' := hA
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA'
  by_contra hcon; push Not at hcon
  obtain ⟨hV, hO, hq, hT1, hT2⟩ := hH
  have pq := pos_of_not_quad hO 2 (by simpa using hq.2.1)
  rw [show (2 : Fin 8) + 3 = 5 from rfl] at pq
  have c1 := oct_cost_V hcon 0 1 7 (hV 0 1 7 (by decide) (by decide))
  have c2 := oct_cost_V hcon 0 6 7 (hV 0 6 7 (by decide) (by decide))
  have c3 := oct_cost_V hcon 0 1 2 (hV 0 1 2 (by decide) (by decide))
  have c4 := oct_cost_V hcon 1 2 3 (hV 1 2 3 (by decide) (by decide))
  have c5 := oct_cost_V hcon 2 3 4 (hV 2 3 4 (by decide) (by decide))
  have c6 := oct_cost_V hcon 3 4 5 (hV 3 4 5 (by decide) (by decide))
  have c7 := oct_cost_V hcon 4 5 6 (hV 4 5 6 (by decide) (by decide))
  have c7' := oct_cost_V hcon 5 6 7 (hV 5 6 7 (by decide) (by decide))
  have c8 := oct_cost_O hcon 4 1 hT1.2.2
  have c9 := oct_cost_O hcon 6 3 hT2.2.2
  have c10 := oct_cost_O hcon 2 5 (by rw [sarea_cycle]; exact pq)
  have t1 := hT1.2.1
  simp only [displacedG, Matrix.cons_val, sarea] at c1 c2 c3 c4 c5 c6 c7 c7' c8 c9 c10 t1
  obtain ⟨hdy, hye⟩ := y_bounds (b := b) (d := d) (e := e) (g := g) (k := k) (x := x) (y := y)
    (by linarith) (by linarith) (by linarith) (by linarith) (by linarith) (by linarith)
    (by linarith) hde
  exact family2_core (x := x) hA hek hk1 hdy hye (by linarith) (by linarith) (by linarith) (by linarith)
    (by linarith) (by linarith) (by linarith) (by linarith) (by linarith) (by linarith)
    (by linarith)

/-- With the strict side orders, `O` inside the (convex) octagon, outside its four side
quadrilaterals and inside `BDE ∩ DEG`, some triangle has area less than `7/128` in each family:
`F = (f,k)`, `G = (g,1)` with `0 < k ≤ 1`; and `F = (f,1)`, `G = (g,k)` with `e ≤ k ≤ 1`. -/
theorem minTriangleArea_lt_displaced_top {a b c d e f g h k : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    {O : Point} :
    (0 < k → k ≤ 1 → AdjacentCapsHyp (displacedF a b c d e f g h k) O →
        minTriangleArea (octConfig (displacedF a b c d e f g h k) O) < 7 / 128) ∧
      (e ≤ k → k ≤ 1 → AdjacentCapsHyp (displacedG a b c d e f g h k) O →
        minTriangleArea (octConfig (displacedG a b c d e f g h k) O) < 7 / 128) := by
  obtain ⟨x, y⟩ := O
  exact ⟨fun _ hk1 hH => minTriangleArea_lt_displacedF hA hk1 hH, fun hek hk1 hH => minTriangleArea_lt_displacedG hA hek hk1 hH⟩

/-! ### The two exterior words -/

section Exterior
variable {a h b c d e f g k x y : ℝ}

/-- The cost of a triangle of the exterior configuration. -/
theorem ext_cost (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y)))
    (i j l : Fin 9) {v : ℝ} (hv : sarea (sevenConfig a h b c d e f (g, k) (x, y) i)
      (sevenConfig a h b c d e f (g, k) (x, y) j) (sevenConfig a h b c d e f (g, k) (x, y) l) = v)
    (hp : 0 < v) (hij : i ≠ j := by decide) (hjl : j ≠ l := by decide)
    (hil : i ≠ l := by decide) : 7 / 64 ≤ v :=
  SevenBoundaryCaps.cost hmin i j l hv hp.le hij hjl hil

/-- The word `(3,2,3,2,5,4,5,4)`: `X` plays the sharp `F` (family 1). -/
theorem two_R1_word1 (hN : SevenNormal a h b c d e f) (hX : FarCapPoint e f (g, k))
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) (x, y) ![3, 2, 3, 2, 5, 4, 5, 4])
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y))) : False := by
  have hkh := SevenBoundaryTopCapRight.h_lt_k hN hX (hmin.trans SevenBoundaryCaps.min₁_left)
  have H := SevenBoundaryTopCapRadial.convHyp hN hX hkh
  have f1 := SevenBoundaryTopCapRadial.cvx_ABH H
  have f2 := SevenBoundaryTopCapRadial.cvx_AFH H
  have f4 := SevenBoundaryTopCapRadial.cvx_BCD H
  have f5 := SevenBoundaryTopCapRadial.cvx_CDE H
  have f6 := SevenBoundaryTopCapRadial.cvx_DEX H
  have f8 := SevenBoundaryTopCapRadial.cvx_EXF H
  have w1 := hw.pos_of 4 1 (by decide) (by decide)
  have w2 := hw.pos_of 6 3 (by decide) (by decide)
  have w3 := hw.pos_of 2 5 (by decide) (by decide)
  have w4 := hw.pos_of 3 4 (by decide) (by decide)
  simp only [exteriorOctagon, Matrix.cons_val, sarea] at w1 w2 w3 w4 f1 f2 f4 f5 f6 f8
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  have c1 := ext_cost hmin 0 2 1 (v := b * (h - a)) (by sa_eval) (by linarith)
  have c2 := ext_cost hmin 0 6 1 (v := f * (h - a)) (by sa_eval) (by linarith)
  have c4 := ext_cost hmin 2 3 4 (v := d * (c - b)) (by sa_eval) (by linarith)
  have c5 := ext_cost hmin 3 4 5 (v := (1 - c) * (e - d)) (by sa_eval) (by linarith)
  have c6 := ext_cost hmin 4 5 7 (v := (1 - g) * (e - d)) (by sa_eval) (by linarith)
  have c8 := ext_cost hmin 6 5 7 (v := (g - f) * (1 - e) - (1 - f) * (1 - k)) (by sa_eval)
    (by linarith)
  have c9 := ext_cost hmin 2 8 5 (v := e * (x - b) - (1 - b) * y) (by sa_eval) (by linarith)
  have c10 := ext_cost hmin 4 8 6 (v := (1 - f) * (y - d) - (1 - d) * (1 - x)) (by sa_eval)
    (by linarith)
  have c11 := ext_cost hmin 3 7 8 (v := k * (c - x) + (g - c) * y) (by sa_eval) (by linarith)
  obtain ⟨hdy, hye⟩ := y_bounds (b := b) (d := d) (e := e) (g := f) (k := 1) (x := x) (y := y)
    (by linarith) (by linarith) (by linarith) (by linarith) (by linarith) (by linarith)
    (by linarith) (by linarith)
  exact family1_core (a := a) (b := b) (c := c) (d := d) (e := e) (f := g) (g := f) (h := h)
    ⟨pa, by linarith, by linarith, pb, by linarith, by linarith, pd, by linarith, by linarith,
      by linarith, by linarith, by linarith⟩ (by linarith) hdy hye
    c1 c2 c4 c5 c6 c8 c9 c10 c11

/-- The word `(5,4,5,4,3,2,3,2)`: after `(x,y) ↦ (1-x,y)` with labels `V_{3-i}`, `X` plays `G`
with `k > h = e'` (family 2). -/
theorem two_R1_word2 (hN : SevenNormal a h b c d e f) (hX : FarCapPoint e f (g, k))
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) (x, y) ![5, 4, 5, 4, 3, 2, 3, 2])
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y))) : False := by
  have hkh := SevenBoundaryTopCapRight.h_lt_k hN hX (hmin.trans SevenBoundaryCaps.min₁_left)
  have H := SevenBoundaryTopCapRadial.convHyp hN hX hkh
  have f1 := SevenBoundaryTopCapRadial.cvx_ABH H
  have f2 := SevenBoundaryTopCapRadial.cvx_AFH H
  have f3 := SevenBoundaryTopCapRadial.cvx_ABC H
  have f4 := SevenBoundaryTopCapRadial.cvx_BCD H
  have f5 := SevenBoundaryTopCapRadial.cvx_CDE H
  have f6 := SevenBoundaryTopCapRadial.cvx_DEX H
  have f7 := SevenBoundaryTopCapRadial.cvx_XFH H
  have f8 := SevenBoundaryTopCapRadial.cvx_EXF H
  have w1 := hw.pos_of 2 7 (by decide) (by decide)
  have w2 := hw.pos_of 0 5 (by decide) (by decide)
  have w3 := hw.pos_of 6 1 (by decide) (by decide)
  have w4 := hw.pos_of 7 0 (by decide) (by decide)
  simp only [exteriorOctagon, Matrix.cons_val, sarea] at w1 w2 w3 w4 f1 f2 f3 f4 f5 f6 f7 f8
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  have c1 := ext_cost hmin 3 4 5 (v := (1 - c) * (e - d)) (by sa_eval) (by linarith)
  have c2 := ext_cost hmin 7 4 5 (v := (1 - g) * (e - d)) (by sa_eval) (by linarith)
  have c3 := ext_cost hmin 3 4 2 (v := d * ((1 - b) - (1 - c))) (by sa_eval) (by linarith)
  have c4 := ext_cost hmin 2 3 0 (v := a * ((1 - b) - (1 - c))) (by sa_eval) (by linarith)
  have c5 := ext_cost hmin 0 2 1 (v := (1 - (1 - b)) * (h - a)) (by sa_eval) (by linarith)
  have c6 := ext_cost hmin 1 0 6 (v := (1 - (1 - f)) * (h - a)) (by sa_eval) (by linarith)
  have c7 := ext_cost hmin 5 7 6
    (v := ((1 - f) - (1 - g)) * (1 - e) - (1 - f) * (1 - k)) (by sa_eval) (by linarith)
  have c8 := ext_cost hmin 1 7 6
    (v := ((1 - f) - (1 - g)) * (1 - h) + (1 - (1 - f)) * (1 - k)) (by sa_eval) (by linarith)
  have c9 := ext_cost hmin 8 3 1 (v := h * ((1 - x) - (1 - c)) - (1 - (1 - c)) * y) (by sa_eval)
    (by linarith)
  have c10 := ext_cost hmin 8 0 7
    (v := (1 - (1 - g)) * (y - a) - (k - a) * (1 - (1 - x))) (by sa_eval) (by linarith)
  have c11 := ext_cost hmin 6 2 8 (v := (1 - b) * (1 - y) + (1 - f) * y - (1 - x)) (by sa_eval)
    (by linarith)
  obtain ⟨hdy, hye⟩ := y_bounds (b := 1 - c) (d := a) (e := h) (g := 1 - g) (k := k)
    (x := 1 - x) (y := y)
    (by linarith) (by linarith) (by linarith) (by linarith) (by linarith) (by linarith)
    (by linarith) (by linarith)
  exact family2_core (a := d) (b := 1 - c) (c := 1 - b) (d := a) (e := h) (f := 1 - f)
    (g := 1 - g) (h := e) (k := k) (x := 1 - x) (y := y)
    ⟨pd, by linarith, by linarith, by linarith, by linarith, by linarith, pa, by linarith,
      by linarith, by linarith, by linarith, by linarith⟩ (by linarith) (by linarith) hdy hye
    c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11

end Exterior

/-- In the seven-boundary exterior case (octagon `A, B, C, D, E, X, F, H`), the radial words
`(3,2,3,2,5,4,5,4)` and `(5,4,5,4,3,2,3,2)` of `P` give some triangle of area less than
`7/128`. -/
theorem minTriangleArea_lt_of_two_R1_words {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P) {w : Word}
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w)
    (hw' : w = ![3, 2, 3, 2, 5, 4, 5, 4] ∨ w = ![5, 4, 5, 4, 3, 2, 3, 2]) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  by_contra hcon; push Not at hcon
  obtain ⟨x, y⟩ := P
  rcases hw' with rfl | rfl
  · exact two_R1_word1 hN hX hw hcon
  · exact two_R1_word2 hN hX hw hcon

end Heilbronn.Nine.SevenBoundaryAdjacentCaps
