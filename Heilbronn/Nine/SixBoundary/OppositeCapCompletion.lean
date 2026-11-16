module

public import Heilbronn.Nine.SixBoundary.Exterior
public import Heilbronn.Nine.SixBoundary.OppositeCapTrees
public import Heilbronn.Nine.Sharp.CDMoving

/-! # Completion when all three N free points lie in the opposite cap
(`docs/proof/nine/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`)

Role: primary route. Theorem 1 closes the occupancy N6-08 `(0,3,0;0)` of
`docs/proof/nine/UNRESTRICTED.md`, Section 4 (`n6_08`).

Setting: `nConfig a h b c d f X Y Z` with `NAnchors a h b c d f` and all three free points in
the closed opposite cap `T = DF(1,1)` (positions on the top and right sides allowed). Threshold
`s = 7/64` (doubled) for the reduction and the certificates; the sharp chamber is at `2A₀`.
By Theorem 4 of `SIX_BOUNDARY_EXTERIOR.md` the free points are named `E, G, O` so that
`A, B, C, D, E, G, F, H` is the strictly convex hull octagon, (1) `O ∈ DFE ∩ DFG`, and the
direction `E → G` points strictly left and up; transposition arranges (2) `f ≤ d`.
`CapSetting` collects these hypotheses.

Remark on (7): the manuscript derives `e_x ≥ g_x`, `e_y ≤ g_y` from the apex `K` of the support
triangle built inside the proof of `TYPE_II.md` Section 1. Theorem 4 of
`SIX_BOUNDARY_EXTERIOR.md` is proved here through that support triangle and exports the strict
bounds `g_x < e_x`, `e_y < g_y` (`SixBoundaryExterior.support_direction`); they are part of
`CapSetting`.

Certificate package (`docs/proof/nine/six_boundary_opposite_cap_certificates.json`, checker
`docs/proof/nine/check_six_boundary_opposite_cap.py`): the radial word of `O` on the octagon lies among 15
words; 14 cubic certificates exclude the 14 non-sharp words and two more (`left`, `low`) exclude
`e_x ≤ c` and `g_y ≤ h` in the sharp word 10 `(4,3,3,2,3,4,5,4)` (3,133 terms in total). The word
cover is `Trees.tree` (`Heilbronn.Nine.SixBoundary.OppositeCapModel`, kernel checks in
`Heilbronn.Nine.SixBoundary.OppositeCapTrees*`, exported by
`scripts/nine/six_opposite_cap/export.py`).

Results:
* `claim_hull_and_bounds`: the bounds (3)-(7);
* `claim_15_words`: the sharp word 10 is one of the words of Section 2, and the word of `O` is one
  of them (the count `15` is checked by the word cover, whose leaves are exactly these words);
* `claim_16_certificates`: the word of `O` is word 10, and `e_x > c`, `g_y > h` (14);
* `claim_sharp_chamber`: the eleven chamber signs (17), and `SHARP_CD_MOVING.md` Theorem 1 after
  the rotation `(x, y) ↦ (y, 1 - x)` gives the sharp bound and equality;
* `theorem1`: least area at most `A₀`, equality only at the optimal configuration, strict with
  exactly six contacts;
* `n6_08`: the assembly form for N6-08.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundaryOppositeCapCompletion

open SixBoundary SixBoundaryExterior Cert Cert.Expr Cover

/-- The standing hypotheses of Sections 1-5: the free points `E, G, O` lie in the closed opposite
cap, every doubled area is at least `7/64`, the normalization (2) `f ≤ d` holds, and (1): the
hull is the strictly convex octagon `A, B, C, D, E, G, F, H` with `O` interior and
`O ∈ DEF ∩ DGF` (written with counterclockwise triangles), the direction `E → G` pointing strictly
left and up. -/
def CapSetting (a h b c d f : ℝ) (E G O : Point) : Prop :=
  NAnchors a h b c d f ∧ f ≤ d ∧ InCapT d f E ∧ InCapT d f G ∧ InCapT d f O ∧
    7 / 128 ≤ minTriangleArea (nConfig a h b c d f E G O) ∧
    IsConvexCCW (octagonDEGF a h b c d f E G) ∧ InPolygon (octagonDEGF a h b c d f E G) O ∧
    InTriangle O (ptD d) E (ptF f) ∧ InTriangle O (ptD d) G (ptF f) ∧ G.1 < E.1 ∧ E.2 < G.2

/-- The 15 words of Section 2: radial words on the octagon `(A, B, C, D, E, G, F, H)` (relation
(8)) with the tests (9) `r₃ = 2`, `r₄ ≥ 2` forced by `O ∈ DFE ∩ DFG`. -/
def capWords : Finset (Fin 8 → Fin 8) :=
  (radialWords 8).filter fun r => (r 3 : ℕ) = 2 ∧ 2 ≤ (r 4 : ℕ)

/-- The sharp word 10, `(4, 3, 3, 2, 3, 4, 5, 4)`. -/
def word10 : Fin 8 → Fin 8 := ![4, 3, 3, 2, 3, 4, 5, 4]

/-! ### Section 1: the common bounds -/

/-- (6): a point `W` of the square with `-[DFW] ≥ s` has `w_x - f ≥ s` and `w_y - d ≥ s`. -/
theorem cap_bound6 {d f : ℝ} (hd0 : 0 ≤ d) (hd1 : d < 1) (hf0 : 0 ≤ f) (hf1 : f < 1) {W : Point}
    (hW : W ∈ unitSquare) (harea : 7 / 64 ≤ -sarea (ptD d) (ptF f) W) :
    7 / 64 ≤ W.1 - f ∧ 7 / 64 ≤ W.2 - d := by
  obtain ⟨x0, x1, y0, y1⟩ := hW
  have e1 : -sarea (ptD d) (ptF f) W = (1 - d) * (W.1 - f) - (1 - f) * (1 - W.2) := by
    simp only [sarea]; ring
  have e2 : -sarea (ptD d) (ptF f) W = (1 - f) * (W.2 - d) - (1 - d) * (1 - W.1) := by
    simp only [sarea]; ring
  have p1 := mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (by linarith : (0:ℝ) ≤ 1 - W.2)
  have p2 := mul_nonneg (by linarith : (0:ℝ) ≤ 1 - d) (by linarith : (0:ℝ) ≤ 1 - W.1)
  have hx : 0 < W.1 - f := by
    by_contra hc
    push Not at hc
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - d) (by linarith : (0:ℝ) ≤ f - W.1)]
  have hy : 0 < W.2 - d := by
    by_contra hc
    push Not at hc
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (by linarith : (0:ℝ) ≤ d - W.2)]
  constructor
  · nlinarith [mul_nonneg hd0 hx.le]
  · nlinarith [mul_nonneg hf0 hy.le]

/-- `k = 3 - 2√2 < 11/64`, from `√2 > 181/128`. -/
theorem kEnd_lt : TypeII.kEnd < 11 / 64 := by
  have : (181 / 128 : ℝ) < Real.sqrt 2 := by
    rw [Real.lt_sqrt (by norm_num)]; norm_num
  unfold TypeII.kEnd; linarith

/-- A point of the closed cap lies in the closed triangle `F, D, (1, 1)`. -/
theorem mem_cap_hull {d f : ℝ} (hd1 : d < 1) (hf1 : f < 1) {W : Point} (hW : InCapT d f W) :
    W ∈ convexHull ℝ ({ptF f, ptD d, (1, 1)} : Set Point) := by
  obtain ⟨⟨x0, x1, y0, y1⟩, hc⟩ := hW
  have hΔ : 0 < sarea (ptF f) (ptD d) (1, 1) := by
    simp only [sarea]
    nlinarith [mul_pos (by linarith : (0:ℝ) < 1 - d) (by linarith : (0:ℝ) < 1 - f)]
  refine TypeII.mem_convexHull_of_sarea hΔ ?_ ?_ ?_
  · simp only [sarea]
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - d) (by linarith : (0:ℝ) ≤ 1 - W.1)]
  · simp only [sarea]
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (by linarith : (0:ℝ) ≤ 1 - W.2)]
  · have := sarea_swap₁₂ (ptD d) (ptF f) W; linarith

/-- (4): the endpoint-triangle theorem on `F, D` and the three cap points in the virtual cap
`F D (1,1)` gives `δ = (1-d)(1-f) ≥ s/(3-2√2) > 7/11`. -/
theorem delta_bound {a h b c d f : ℝ} {E G O : Point} (hN : NAnchors a h b c d f)
    (hE : InCapT d f E) (hG : InCapT d f G) (hO : InCapT d f O)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    7 / 64 / (3 - 2 * Real.sqrt 2) ≤ (1 - d) * (1 - f) ∧ 7 / 11 < (1 - d) * (1 - f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  have k := TypeII.endpointTriangleTheorem (ptF f) (ptD d) (1, 1) E G O (mem_cap_hull hd1 hf1 hE)
    (mem_cap_hull hd1 hf1 hG) (mem_cap_hull hd1 hf1 hO)
  have hmin5 : 7 / 128 ≤ minTriangleArea ![ptF f, ptD d, E, G, O] := by
    have := le_min_comp (by norm_num) (nConfig a h b c d f E G O)
      (f := ![5, 4, 6, 7, 8]) (by decide)
    have e : nConfig a h b c d f E G O ∘ ![5, 4, 6, 7, 8] = ![ptF f, ptD d, E, G, O] := by
      funext i; fin_cases i <;> rfl
    rw [e] at this; linarith
  have hδ : 0 < (1 - d) * (1 - f) := mul_pos (by linarith) (by linarith)
  have harea : triangleArea (ptF f) (ptD d) (1, 1) = (1 - d) * (1 - f) / 2 := by
    rw [triangleArea_eq, show sarea (ptF f) (ptD d) (1, 1) = (1 - d) * (1 - f) by
      simp only [sarea]; ring, abs_of_pos hδ]
  rw [harea] at k
  have hk : 7 / 64 ≤ TypeII.kEnd * ((1 - d) * (1 - f)) := by linarith
  have hkl := kEnd_lt
  have hk0 := TypeII.kEnd_pos
  refine ⟨?_, by nlinarith⟩
  have : (3 - 2 * Real.sqrt 2) = TypeII.kEnd := rfl
  rw [this, div_le_iff₀ hk0]
  linarith

/-- (3): `aM, bL ≥ s` give `a, b, L, M ≥ s` and `hc ≥ 4s` (`ab · LM = aM · bL ≥ s²`). -/
theorem bounds3 {a h b c : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1) (hb : 0 < b) (hbc : b < c)
    (hc : c < 1) (hABC : 7 / 64 ≤ a * (c - b)) (hABH : 7 / 64 ≤ b * (h - a)) :
    7 / 64 ≤ a ∧ 7 / 64 ≤ b ∧ 7 / 64 ≤ h - a ∧ 7 / 64 ≤ c - b ∧ 4 * (7 / 64) ≤ h * c ∧
      4 * (7 / 64) ≤ h ∧ 4 * (7 / 64) ≤ c := by
  have h3a : 7 / 64 ≤ a := by
    nlinarith [mul_le_mul_of_nonneg_left (show c - b ≤ 1 by linarith) ha.le]
  have h3b : 7 / 64 ≤ b := by
    nlinarith [mul_le_mul_of_nonneg_left (show h - a ≤ 1 by linarith) hb.le]
  have h3L : 7 / 64 ≤ h - a := by
    nlinarith [mul_le_mul_of_nonneg_right (show b ≤ 1 by linarith) (by linarith : (0:ℝ) ≤ h - a)]
  have h3M : 7 / 64 ≤ c - b := by
    nlinarith [mul_le_mul_of_nonneg_right (show a ≤ 1 by linarith) (by linarith : (0:ℝ) ≤ c - b)]
  obtain ⟨P1, hP1⟩ : ∃ P1, P1 = a * b := ⟨_, rfl⟩
  obtain ⟨P2, hP2⟩ : ∃ P2, P2 = (h - a) * (c - b) := ⟨_, rfl⟩
  have p1 : 0 ≤ P1 := by rw [hP1]; positivity
  have p2 : 0 ≤ P2 := by rw [hP2]; exact mul_nonneg (by linarith) (by linarith)
  have hprod : 7 / 64 * (7 / 64) ≤ P1 * P2 := by
    have := mul_le_mul hABC hABH (by norm_num) (by positivity)
    have e : a * (c - b) * (b * (h - a)) = P1 * P2 := by rw [hP1, hP2]; ring
    linarith
  have hsum : 2 * (7 / 64) ≤ P1 + P2 := by
    by_contra hcon
    push Not at hcon
    nlinarith [sq_nonneg (P1 - P2), mul_pos (by linarith : (0:ℝ) < 2 * (7 / 64) - (P1 + P2))
      (by linarith : (0:ℝ) < 2 * (7 / 64) + (P1 + P2))]
  have hhc : 4 * (7 / 64) ≤ h * c := by
    have e : h * c = P1 + P2 + a * (c - b) + b * (h - a) := by rw [hP1, hP2]; ring
    linarith
  refine ⟨h3a, h3b, h3L, h3M, hhc, ?_, ?_⟩
  · nlinarith [mul_le_mul_of_nonneg_left hc.le (by linarith : (0:ℝ) ≤ h)]
  · nlinarith [mul_le_mul_of_nonneg_right hh.le (by linarith : (0:ℝ) ≤ c)]

/-- (5): `δ > 7/11`, `f ≤ d` and `f ≥ s` give `d ≤ 179/627` and `f < 13/64`. -/
theorem bounds5 {d f : ℝ} (hfd : f ≤ d) (hd1 : d < 1) (hf : 7 / 64 ≤ f)
    (hδ : 7 / 11 < (1 - d) * (1 - f)) : d ≤ 179 / 627 ∧ f < 13 / 64 := by
  constructor
  · nlinarith [mul_le_mul_of_nonneg_left (by linarith : 1 - f ≤ 57 / 64)
      (by linarith : (0:ℝ) ≤ 1 - d)]
  · nlinarith [mul_le_mul_of_nonneg_right (by linarith : 1 - d ≤ 1 - f)
      (by linarith : (0:ℝ) ≤ 1 - f)]

/-- (6) for the free point `k` of `nConfig`. -/
theorem bound6_of {a h b c d f : ℝ} {E G O W : Point} (hd0 : 0 ≤ d) (hd1 : d < 1) (hf0 : 0 ≤ f)
    (hf1 : f < 1) (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f E G O)) (k : Fin 9)
    (hk : 6 ≤ k.val) (hkW : nConfig a h b c d f E G O k = W) (hW : InCapT d f W) :
    7 / 64 ≤ W.1 - f ∧ 7 / 64 ≤ W.2 - d := by
  have h4k : (4 : Fin 9) ≠ k := fun e => by subst e; simp at hk
  have h5k : (5 : Fin 9) ≠ k := fun e => by subst e; simp at hk
  have := sarea_le_of_nonpos (by norm_num : (0:ℝ) < 7 / 128)
    (p := ptD d) (q := ptF f) (r := W) hW.2
    (by rw [← hkW]; exact area_of_le_min hmin 4 5 k (by decide) h5k h4k)
  exact cap_bound6 hd0 hd1 hf0 hf1 hW.1 (by linarith)

/-- **Claim** (`SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-hull-and-bounds`). In `CapSetting`
(`s = 7/64`, `L = h - a`, `M = c - b`, `δ = (1 - d)(1 - f)`):
(3) `a, b, L, M ≥ s`, `hc ≥ 4s`, `h, c ≥ 4s`; (4) `δ ≥ s/(3 - 2√2) > 7/11` (endpoint-triangle
theorem on `D, F, E, G, O` in the virtual cap); (5) `d ≤ 179/627`, `f < 13/64`; (6) for each
`Z ∈ {E, G, O}`, `z_x - f ≥ s` and `z_y - d ≥ s`; (7) `g_x < e_x`, `e_y < g_y` (strict, from
`CapSetting`).
`docs/proof/nine/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`, lines 32-102.
Uses: SIX_BOUNDARY_EXTERIOR:Theorem4, SIX_BOUNDARY_HULL:claim-transposition,
TYPE_II:EndpointTriangleTheorem -/
theorem claim_hull_and_bounds {a h b c d f : ℝ} {E G O : Point}
    (hS : CapSetting a h b c d f E G O) :
    (7 / 64 ≤ a ∧ 7 / 64 ≤ b ∧ 7 / 64 ≤ h - a ∧ 7 / 64 ≤ c - b ∧ 4 * (7 / 64) ≤ h * c ∧
      4 * (7 / 64) ≤ h ∧ 4 * (7 / 64) ≤ c) ∧
    (7 / 64 / (3 - 2 * Real.sqrt 2) ≤ (1 - d) * (1 - f) ∧ 7 / 11 < (1 - d) * (1 - f)) ∧
    (d ≤ 179 / 627 ∧ f < 13 / 64) ∧
    (∀ W ∈ ({E, G, O} : Set Point), 7 / 64 ≤ W.1 - f ∧ 7 / 64 ≤ W.2 - d) ∧
    (G.1 < E.1 ∧ E.2 < G.2) := by
  obtain ⟨hN, hfd, hE, hG, hO, hmin, -, -, -, -, h7a, h7b⟩ := hS
  obtain ⟨hABC, hABH, -, -⟩ := SixBoundaryHull.anchor_areas hN hmin
  have hδ := delta_bound hN hE hG hO hmin
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have h3 := bounds3 ha hah hh hb hbc hc hABC hABH
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  refine ⟨h3, hδ, bounds5 hfd hd1 (by linarith [h3.2.1]) hδ.2, ?_, h7a, h7b⟩
  intro W hW
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hW
  rcases hW with rfl | rfl | rfl
  · exact bound6_of (by linarith) hd1 (by linarith) hf1 hmin 6 (by decide) rfl hE
  · exact bound6_of (by linarith) hd1 (by linarith) hf1 hmin 7 (by decide) rfl hG
  · exact bound6_of (by linarith) hd1 (by linarith) hf1 hmin 8 (by decide) rfl hO

/-! ### Section 2: the certificate cover -/

/-- The coordinates `a, h, b, c, d, f, e_x, e_y, g_x, g_y, o_x, o_y` as a point of the cube (the
variables beyond the twelfth are `0`). -/
def zeta (a h b c d f ex ey gx gy ox oy : ℝ) : ℕ → ℝ
  | 0 => a | 1 => h | 2 => b | 3 => c | 4 => d | 5 => f | 6 => ex | 7 => ey
  | 8 => gx | 9 => gy | 10 => ox | 11 => oy | _ => 0

/-- The nine points `A, B, C, D, E, G, F, H, O`, indexed by `ℕ` as in the model. -/
def cfg (a h b c d f : ℝ) (E G O : Point) : ℕ → Point
  | 0 => (0, a) | 1 => (b, 0) | 2 => (c, 0) | 3 => (1, d) | 4 => E | 5 => G | 6 => (f, 1)
  | 7 => (0, h) | 8 => O | _ => (0, 0)

/-- The position in `nConfig` of the point `i` of the model. -/
def nIdx : Fin 9 → Fin 9 := ![0, 2, 3, 4, 6, 7, 5, 1, 8]

theorem nIdx_injective : Function.Injective nIdx := by decide

theorem cfg_eq (a h b c d f : ℝ) (E G O : Point) (i : Fin 9) :
    cfg a h b c d f E G O i = nConfig a h b c d f E G O (nIdx i) := by
  fin_cases i <;> rfl

theorem cfg_oct (a h b c d f : ℝ) (E G O : Point) (i : Fin 8) :
    cfg a h b c d f E G O i = octagonDEGF a h b c d f E G i := by
  fin_cases i <;> rfl

section Sound

variable {a h b c d f : ℝ} {E G O : Point}

theorem ptEval_zeta (i : ℕ) :
    ptEval (zeta a h b c d f E.1 E.2 G.1 G.2 O.1 O.2) Model.pt i = cfg a h b c d f E G O i := by
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;>
    simp [ptEval, Model.pt, zeta, cfg]

/-- Every triangle of three distinct model points has doubled area at least `7/64`. -/
theorem cfg_area (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f E G O)) {i j k : ℕ}
    (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) :
    7 / 64 ≤ |sarea (cfg a h b c d f E G O i) (cfg a h b c d f E G O j)
      (cfg a h b c d f E G O k)| := by
  have e := fun (n : ℕ) (hn : n < 9) => cfg_eq a h b c d f E G O ⟨n, hn⟩
  simp only at e
  rw [e i hi, e j hj, e k hk]
  have hne : ∀ {m n : ℕ} (hm : m < 9) (hn : n < 9), m ≠ n →
      nIdx ⟨m, hm⟩ ≠ nIdx ⟨n, hn⟩ := fun hm hn hmn h =>
    hmn (by have := nIdx_injective h; simpa using this)
  have := area_of_le_min hmin _ _ _ (hne hi hj hij) (hne hj hk hjk) (hne hi hk hik)
  rw [triangleArea_eq] at this
  linarith

theorem mem_lexTriples {t : ℕ × ℕ × ℕ} (ht : t ∈ Model.lexTriples) :
    t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧ t.2.2 < 9 := by
  simp only [Model.lexTriples, List.mem_flatMap, List.mem_range, List.mem_filterMap,
    Option.ite_none_right_eq_some, Option.some.injEq] at ht
  obtain ⟨a, _, b, _, c, hc, ⟨hab, hbc⟩, rfl⟩ := ht
  exact ⟨hab, hbc, hc⟩

theorem orient_ne_zero {sg : Bool} {x : ℝ} (h : OrientHolds sg x) : x ≠ 0 := by
  cases sg <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h <;>
    [exact h.ne; exact h.ne']

theorem orient_idx_ne {P : ℕ → Point} {sg : Bool} {i j k : ℕ}
    (hs : OrientHolds sg (sarea (P i) (P j) (P k))) : i ≠ j ∧ j ≠ k ∧ i ≠ k := by
  have hne := orient_ne_zero hs
  refine ⟨?_, ?_, ?_⟩ <;> rintro rfl <;> apply hne <;> simp only [sarea] <;> ring

/-- The strengthened cost of a known triangle is nonnegative (`s`, or `3s` with `O` certified
inside, by subdivision). -/
theorem cost_nonneg (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f E G O))
    {tb : List SFact} (htb : AllHold (SFact.Holds (cfg a h b c d f E G O)) tb)
    {t : ℕ × ℕ × ℕ} (ht : t ∈ Model.lexTriples) {sg : Bool} (hl : lookup tb t = some sg) :
    0 ≤ (costAtom Model.pt Model.bnd (t, sg) (insideList tb [8] (t, sg)).length).eval
      (zeta a h b c d f E.1 E.2 G.1 G.2 O.1 O.2) := by
  rw [eval_costAtom]
  simp only [ptEval_zeta]
  obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
  have hs := lookup_sound htb hl
  have harea := cfg_area hmin (i := t.1) (j := t.2.1) (k := t.2.2) (by omega) (by omega) h3
    (by omega) (by omega) (by omega)
  rw [← sgArea_eq_abs hs] at harea
  rcases hn : (insideList tb [8] (t, sg)).length with _ | n
  · simp only [Model.bnd, ite_true]; push_cast; linarith
  · obtain ⟨j, hj⟩ := List.exists_mem_of_length_pos (show 0 < (insideList tb [8] (t, sg)).length
      by omega)
    obtain ⟨hj8, o1, o2, o3⟩ := insideList_sound htb hj
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hj8
    subst hj8
    obtain ⟨-, n1, n2⟩ := orient_idx_ne o1
    obtain ⟨-, n3, -⟩ := orient_idx_ne o2
    have q1 := cfg_area hmin (i := t.1) (j := t.2.1) (k := 8) (by omega) (by omega) (by omega)
      (by omega) n1 n2
    have q2 := cfg_area hmin (i := t.2.1) (j := t.2.2) (k := 8) (by omega) h3 (by omega)
      (by omega) n3 (by omega)
    have q3 := cfg_area hmin (i := t.2.2) (j := t.1) (k := 8) h3 (by omega) (by omega)
      (by omega) (by omega) (by omega)
    have := three_le_sgArea (e := 7 / 64) o1 o2 o3 q1 q2 q3
    have hn0 : n + 1 ≠ 0 := by omega
    simp only [Model.bnd, hn0, ite_false]; push_cast; linarith

set_option linter.unusedVariables false in
/-- The facts of the radial word entry hold. -/
theorem holds_orient {P : ℕ → Point} {i j k : ℕ} {sg : Bool} (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) :
    SFact.Holds P (Model.orient i j k sg) ↔ OrientHolds sg (sarea (P i) (P j) (P k)) := by
  unfold Model.orient
  have c1 := sarea_cycle (P i) (P j) (P k)
  have c2 := sarea_cycle (P j) (P k) (P i)
  have s1 := sarea_swap₁₂ (P i) (P j) (P k)
  have s2 := sarea_swap₂₃ (P i) (P j) (P k)
  have s3 := sarea_swap₁₃ (P i) (P j) (P k)
  split_ifs <;> simp only [SFact.Holds] <;>
    first
    | rw [c1]
    | rw [c2, c1]
    | rw [s1, orientHolds_not]
    | rw [s2, orientHolds_not]
    | rw [s3, orientHolds_not]

theorem consistent_of_holds {P : ℕ → Point} {tb b : List SFact} (htb : AllHold (SFact.Holds P) tb)
    (hb : AllHold (SFact.Holds P) b) : Model.consistent tb b = true := by
  unfold Model.consistent
  rw [List.all_eq_true]
  intro f hf
  rcases hl : lookup tb f.1 with _ | sg
  · rfl
  · have h1 := lookup_sound htb hl
    have h2 := hb f hf
    simp only [SFact.Holds] at h2
    cases sg <;> cases hsg : f.2 <;> rw [hsg] at h2 <;>
      simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h1 h2 <;>
      first | rfl | (exfalso; linarith)

end Sound

section Word

variable {a h b c d f : ℝ} {E G O : Point}

/-- The facts of the word entry `q_i` of `O` hold. -/
theorem branch_holds {q : Fin 8 → ℕ} (hq : HasRadialWord (octagonDEGF a h b c d f E G) O q)
    (hne : ∀ i j : Fin 8, i ≠ j →
      sarea (octagonDEGF a h b c d f E G i) (octagonDEGF a h b c d f E G j) O ≠ 0)
    (i : ℕ) (hi : i < 8) :
    AllHold (SFact.Holds (cfg a h b c d f E G O)) (Model.branchFacts i (q ⟨i, hi⟩)) := by
  intro f hf
  simp only [Model.branchFacts, List.mem_map, List.mem_range] at hf
  obtain ⟨j, hj, rfl⟩ := hf
  have hm : (i + (j + 1)) % 8 < 8 := Nat.mod_lt _ (by norm_num)
  have him : i ≠ (i + (j + 1)) % 8 := by omega
  rw [holds_orient him (by omega) (by omega)]
  have e1 := cfg_oct a h b c d f E G O ⟨i, hi⟩
  have e2 := cfg_oct a h b c d f E G O (cyc ⟨i, hi⟩ (j + 1))
  simp only [cyc_val] at e1 e2
  rw [e1, e2, show cfg a h b c d f E G O 8 = O from rfl]
  have k := hq ⟨i, hi⟩ (j + 1) (by omega) (by omega)
  have hne' := hne ⟨i, hi⟩ (cyc ⟨i, hi⟩ (j + 1)) (fun e => by
    have := congrArg Fin.val e; simp only [cyc_val] at this; omega)
  by_cases hjq : j + 1 ≤ q ⟨i, hi⟩
  · simp only [hjq, decide_true, OrientHolds, ite_true]
    exact k.2 hjq
  · simp only [hjq, decide_false, OrientHolds, Bool.false_eq_true, ite_false]
    exact lt_of_le_of_ne (not_lt.1 fun h => hjq (k.1 h)) hne'

/-- The facts of a word entry `val` determine the entry. -/
theorem word_of_branch {q : Fin 8 → ℕ} (hq : HasRadialWord (octagonDEGF a h b c d f E G) O q)
    (i : ℕ) (hi : i < 8) {val : ℕ} (hv1 : 1 ≤ val) (hv6 : val ≤ 6)
    (hb : AllHold (SFact.Holds (cfg a h b c d f E G O)) (Model.branchFacts i val)) :
    q ⟨i, hi⟩ = val := by
  have get : ∀ j : ℕ, j < 7 → OrientHolds (decide (j + 1 ≤ val))
      (sarea (octagonDEGF a h b c d f E G ⟨i, hi⟩)
        (octagonDEGF a h b c d f E G (cyc ⟨i, hi⟩ (j + 1))) O) := by
    intro j hj
    have hm : (i + (j + 1)) % 8 < 8 := Nat.mod_lt _ (by norm_num)
    have := hb _ (List.mem_map.2 ⟨j, List.mem_range.2 hj, rfl⟩)
    rw [holds_orient (by omega) (by omega) (by omega)] at this
    have e1 := cfg_oct a h b c d f E G O ⟨i, hi⟩
    have e2 := cfg_oct a h b c d f E G O (cyc ⟨i, hi⟩ (j + 1))
    simp only [cyc_val] at e1 e2
    rwa [e1, e2] at this
  have g1 := get (val - 1) (by omega)
  have g2 := get val (by omega)
  rw [show val - 1 + 1 = val by omega] at g1
  simp only [le_refl, decide_true, OrientHolds, ite_true, show ¬ (val + 1 ≤ val) by omega,
    decide_false, Bool.false_eq_true, ite_false] at g1 g2
  have k1 := (hq ⟨i, hi⟩ val hv1 (by omega)).1 g1
  have k2 : ¬ val + 1 ≤ q ⟨i, hi⟩ := fun h => by
    have := (hq ⟨i, hi⟩ (val + 1) (by omega) (by omega)).2 h; linarith
  omega

/-- The radial word of `O` takes its values in `1, …, 6`. -/
theorem word_range {q : Fin 8 → ℕ} (hpoly : InPolygon (octagonDEGF a h b c d f E G) O)
    (hq : HasRadialWord (octagonDEGF a h b c d f E G) O q) (i : Fin 8) : 1 ≤ q i ∧ q i ≤ 6 := by
  constructor
  · exact (hq i 1 le_rfl (by norm_num)).1 (hpoly i)
  · by_contra hc
    push Not at hc
    have h1 := (hq i 7 (by norm_num) (by norm_num)).2 (by omega)
    have h2 := neg_pred hpoly i (by norm_num)
    have := sarea_swap₂₃ (octagonDEGF a h b c d f E G i) O
      (octagonDEGF a h b c d f E G (cyc i (8 - 1)))
    simp only [show (8 - 1 : ℕ) = 7 by norm_num] at h2 this
    linarith

/-- No two octagon vertices are collinear with `O`. -/
theorem oct_gen (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    ∀ i j : Fin 8, i ≠ j →
      sarea (octagonDEGF a h b c d f E G i) (octagonDEGF a h b c d f E G j) O ≠ 0 := by
  intro i j hij h0
  have := cfg_area hmin (i := i.val) (j := j.val) (k := 8) (by omega) (by omega) (by norm_num)
    (fun e => hij (Fin.ext e)) (by omega) (by omega)
  rw [cfg_oct a h b c d f E G O i, cfg_oct a h b c d f E G O j,
    show cfg a h b c d f E G O 8 = O from rfl, h0, abs_zero] at this
  norm_num at this

end Word

/-! ### Section 3: the claims -/

section Claims

variable {a h b c d f : ℝ} {E G O : Point}

/-- **Claim** (`SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-15-words`). Word 10
`(4,3,3,2,3,4,5,4)` satisfies (8) and (9) on the octagon, and in `CapSetting` the radial word of
`O` on the octagon `(A, B, C, D, E, G, F, H)` exists and is one of the words of (8)-(9). (The
count `15` is checked by the word cover `Trees.tree`, whose leaves are exactly these words; it is
not restated here.)
`docs/proof/nine/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`, lines 104-151.
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-radial-word -/
theorem claim_15_words :
    word10 ∈ capWords ∧
    ∀ {a h b c d f : ℝ} {E G O : Point}, CapSetting a h b c d f E G O →
      ∃ r ∈ capWords, HasRadialWord (octagonDEGF a h b c d f E G) O fun i => (r i : ℕ) := by
  have h10 : word10 ∈ capWords := by
    simp only [capWords, radialWords, Finset.mem_filter, Finset.mem_univ, true_and]
    decide
  refine ⟨h10, fun {a h b c d f E G O} hS => ?_⟩
  obtain ⟨-, -, -, -, -, hmin, hconv, hpoly, hDEF, hDGF, -, -⟩ := hS
  obtain ⟨r, hr, hrw⟩ := claim_radial_word _ O (by norm_num) hconv hpoly (oct_gen hmin)
  have hrange : ∀ i, r i < 8 := fun i => by have := hrw.1 i; omega
  refine ⟨fun i => ⟨r i, hrange i⟩, ?_, hr⟩
  have hDG : 2 ≤ r 3 := (hr 3 2 (by norm_num) (by norm_num)).1 hDGF.1
  have hDF : ¬ 3 ≤ r 3 := fun h3 => by
    have := (hr 3 3 (by norm_num) (by norm_num)).2 h3
    have e : sarea (ptD d) (ptF f) O = -sarea (ptF f) (ptD d) O := by simp only [sarea]; ring
    change 0 < sarea (ptD d) (ptF f) O at this
    linarith [hDEF.2.2]
  have hEF : 2 ≤ r 4 := (hr 4 2 (by norm_num) (by norm_num)).1 hDEF.2.1
  simp only [capWords, radialWords, Finset.mem_filter, Finset.mem_univ, true_and]
  exact ⟨hrw, by omega, hEF⟩

/-- The atoms of the cover are nonnegative at the configuration. -/
theorem atoms_nonneg (hS : CapSetting a h b c d f E G O) {fs : List SFact}
    (hfs : AllHold (SFact.Holds (cfg a h b c d f E G O)) (Model.base ++ fs)) :
    ∀ e ∈ Model.atoms fs, 0 ≤ e.eval (zeta a h b c d f E.1 E.2 G.1 G.2 O.1 O.2) := by
  obtain ⟨⟨h3a, h3b, h3L, h3M, -, h3h, h3c⟩, ⟨-, hδ⟩, ⟨h5d, h5f⟩, h6, h7a, h7b⟩ :=
    claim_hull_and_bounds hS
  obtain ⟨hN, hfd, hE, hG, hO, hmin, -⟩ := hS
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨⟨e0, e1, e2, e3⟩, -⟩ := hE
  obtain ⟨⟨g0, g1, g2, g3⟩, -⟩ := hG
  obtain ⟨⟨o0, o1, o2, o3⟩, -⟩ := hO
  obtain ⟨hEx, hEy⟩ := h6 E (by simp)
  obtain ⟨hGx, hGy⟩ := h6 G (by simp)
  obtain ⟨hOx, hOy⟩ := h6 O (by simp)
  intro e he
  simp only [Model.atoms, List.mem_append, List.mem_singleton] at he
  rcases he with (he | rfl) | he
  · simp only [Model.factors, List.mem_cons, List.not_mem_nil, or_false] at he
    rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      simp only [eval_minus, eval_v, eval_k, eval_one, zeta] <;> push_cast <;> linarith
  · simp only [Model.delta, eval_minus, eval_times, eval_v, eval_k, eval_one, zeta]
    push_cast; linarith
  · simp only [Model.costs, List.mem_map] at he
    obtain ⟨t, ht, rfl⟩ := he
    rcases hl : lookup (Model.base ++ fs) t with _ | sg
    · simp
    · exact cost_nonneg hmin hfs ht hl

/-- The initial facts hold. -/
theorem base_holds (hS : CapSetting a h b c d f E G O) :
    AllHold (SFact.Holds (cfg a h b c d f E G O)) Model.base := by
  obtain ⟨-, -, -, -, -, -, hconv, -, hDEF, hDGF, -, -⟩ := hS
  intro g hg
  simp only [Model.base, List.mem_append, List.mem_filterMap, List.mem_cons,
    List.not_mem_nil, or_false] at hg
  rcases hg with ⟨t, ht, e⟩ | rfl | rfl | rfl
  · split_ifs at e with h8
    cases e
    obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
    have := hconv ⟨t.1, by omega⟩ ⟨t.2.1, by omega⟩ ⟨t.2.2, h8⟩ (by simp [Fin.lt_def]; omega)
      (by simp [Fin.lt_def]; omega)
    simp only [SFact.Holds, OrientHolds, ite_true]
    rwa [← cfg_oct a h b c d f E G O, ← cfg_oct a h b c d f E G O,
      ← cfg_oct a h b c d f E G O] at this
  · exact hDGF.1
  · show sarea (1, d) (f, 1) O < 0
    have := hDEF.2.2
    have e : sarea (1, d) (f, 1) O = -sarea (f, 1) (1, d) O := by simp only [sarea]; ring
    change 0 < sarea (f, 1) (1, d) O at this
    linarith
  · exact hDEF.2.1

/-- The facts of the sharp word hold when the word of `O` is word 10. -/
theorem sharp_holds (hS : CapSetting a h b c d f E G O)
    (hr : HasRadialWord (octagonDEGF a h b c d f E G) O fun i => (word10 i : ℕ)) :
    AllHold (SFact.Holds (cfg a h b c d f E G O)) Trees.sharpFacts := by
  have hne := oct_gen hS.2.2.2.2.2.1
  have hb : ∀ (i v : ℕ) (hi : i < 8), ((word10 ⟨i, hi⟩ : Fin 8) : ℕ) = v →
      AllHold (SFact.Holds (cfg a h b c d f E G O)) (Model.branchFacts i v) := by
    intro i v hi hv
    have := branch_holds hr hne i hi
    rw [hv] at this
    exact this
  have b4 := hb 4 3 (by norm_num) rfl
  have b5 := hb 5 4 (by norm_num) rfl
  have b0 := hb 0 4 (by norm_num) rfl
  have b1 := hb 1 3 (by norm_num) rfl
  have b2 := hb 2 3 (by norm_num) rfl
  have b3 := hb 3 2 (by norm_num) rfl
  have b6 := hb 6 5 (by norm_num) rfl
  have b7 := hb 7 4 (by norm_num) rfl
  have h0 : AllHold (SFact.Holds (cfg a h b c d f E G O)) ([] : List SFact) := by
    simp [AllHold]
  exact ((((((((h0.append b4).append b5).append b0).append b1).append b2).append b3).append
    b6).append b7)

/-- **Claim** (`SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-16-certificates`). Geometric
conclusion of the certificate package: in `CapSetting`, the radial word of `O` is word 10, and
(14) `e_x > c`, `g_y > h`. (Fourteen `whole` certificates exclude the other words; the `left`
and `low` certificates, with the extra factors `c - e_x` and `h - g_y`, exclude `e_x ≤ c` and
`g_y ≤ h`; 3,133 positive terms, cube bounds at most `-662811495605/673236123648`. The kernel
checks the word cover `Trees.tree` and the two height certificates.)
`docs/proof/nine/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`, lines 153-239.
Uses: SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-hull-and-bounds,
SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-15-words -/
theorem claim_16_certificates (hS : CapSetting a h b c d f E G O) (r : Fin 8 → ℕ)
    (hr : HasRadialWord (octagonDEGF a h b c d f E G) O r) :
    r = (fun i => (word10 i : ℕ)) ∧ c < E.1 ∧ h < G.2 := by
  have hpoly := hS.2.2.2.2.2.2.2.1
  have hmin := hS.2.2.2.2.2.1
  have hne := oct_gen hmin
  have hE := hS.2.2.1
  have hG := hS.2.2.2.1
  have hO := hS.2.2.2.2.1
  set P := cfg a h b c d f E G O with hP
  set z := zeta a h b c d f E.1 E.2 G.1 G.2 O.1 O.2 with hzdef
  have hbase := base_holds hS
  have hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1 := by
    obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, -⟩ := hS
    obtain ⟨⟨e0, e1, e2, e3⟩, -⟩ := hE
    obtain ⟨⟨g0, g1, g2, g3⟩, -⟩ := hG
    obtain ⟨⟨o0, o1, o2, o3⟩, -⟩ := hO
    intro v
    rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;>
      simp only [hzdef, zeta] <;> constructor <;> linarith
  have hword : r = fun i => (word10 i : ℕ) := by
    by_contra hne'
    refine checkTree_sound (σ := Model.spec) (Holds := SFact.Holds P) (z := z) hz ?_ ?_ ?_
      (fs := []) (by simp [AllHold]) Trees.tree_ok
    · intro fs hfs e he
      exact atoms_nonneg hS (hbase.append hfs) e he
    · intro fs s hfs
      cases s with
      | vertex i =>
        simp only [Model.spec, Model.branches]
        split_ifs with hi
        · have hb := branch_holds hr hne i hi
          refine ⟨Model.branchFacts i (r ⟨i, hi⟩), ?_, hb⟩
          rw [List.mem_filterMap]
          obtain ⟨r1, r6⟩ := word_range hpoly hr ⟨i, hi⟩
          refine ⟨r ⟨i, hi⟩, List.mem_map.2 ⟨r ⟨i, hi⟩ - 1, List.mem_range.2 (by omega),
            by omega⟩, ?_⟩
          rw [ite_eq_left (consistent_of_holds (hbase.append hfs) hb)]
        · exact ⟨[], by simp, by simp [AllHold]⟩
    · intro fs tag hfs hc
      simp only [Model.spec, Bool.and_eq_true, beq_iff_eq] at hc
      obtain ⟨-, hs⟩ := hc
      simp only [Model.sharpTest, List.all_eq_true, List.mem_range, beq_iff_eq] at hs
      have htb := hbase.append hfs
      apply hne'
      funext i
      have hall : AllHold (SFact.Holds P) (Model.branchFacts i.val (Model.qStarL.getD i.val 0)) :=
        fun g hg => lookup_sound htb (hs i.val i.isLt g hg)
      have key := word_of_branch hr i.val i.isLt (val := Model.qStarL.getD i.val 0)
        (by fin_cases i <;> decide) (by fin_cases i <;> decide) hall
      rw [show (⟨i.val, i.isLt⟩ : Fin 8) = i from rfl] at key
      rw [key]
      fin_cases i <;> rfl
  subst hword
  have hsh := hbase.append (sharp_holds hS hr)
  have hat := atoms_nonneg hS hsh
  refine ⟨rfl, ?_, ?_⟩
  · by_contra hc
    push Not at hc
    refine check_sound Trees.left_ok z hz fun e he => ?_
    simp only [List.mem_append, List.mem_singleton] at he
    rcases he with he | rfl
    · exact hat e he
    · simp only [eval_minus, eval_v, hzdef, zeta]; linarith
  · by_contra hc
    push Not at hc
    refine check_sound Trees.low_ok z hz fun e he => ?_
    simp only [List.mem_append, List.mem_singleton] at he
    rcases he with he | rfl
    · exact hat e he
    · simp only [eval_minus, eval_v, hzdef, zeta]; linarith

/-- The relabelling of the rotated configuration: the point `i` of the C/D chamber
`(A', …, H', O') = (C, D, E, G, F, H, A, B, O)` is the point `capPerm i` of `nConfig`. -/
def capPerm : Equiv.Perm (Fin 9) :=
  Equiv.ofBijective (![3, 4, 6, 7, 5, 1, 0, 2, 8] : Fin 9 → Fin 9) (by decide)

/-- **Claim** (`SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-sharp-chamber`). In `CapSetting` with
word 10 and (14) `e_x > c`, `g_y > h`: the strict orders `d < e_y < 1`, `f < g_x < 1` hold, the
eleven chamber areas (17) `CDB, CDE, CAB, GFH, ABH, AFH, CGO, GBO, DOF, AEO, OEH` are positive,
and Theorem 1 of `SHARP_CD_MOVING.md`, after the rotation `(x, y) ↦ (y, 1 - x)` with the labels
(15), gives least area at most `A₀`; least area at least `A₀` forces `e_x = g_y = 1` and the
optimal configuration. `docs/proof/nine/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`, lines 241-279.
Uses: SHARP_CD_MOVING:Theorem1, SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-hull-and-bounds -/
theorem claim_sharp_chamber (hS : CapSetting a h b c d f E G O)
    (hr : HasRadialWord (octagonDEGF a h b c d f E G) O fun i => (word10 i : ℕ))
    (hE : c < E.1) (hG : h < G.2) :
    (d < E.2 ∧ E.2 < 1 ∧ f < G.1 ∧ G.1 < 1) ∧
    (0 < sarea (ptC c) (ptD d) (ptB b) ∧ 0 < sarea (ptC c) (ptD d) E ∧
      0 < sarea (ptC c) (ptA a) (ptB b) ∧ 0 < sarea G (ptF f) (ptH h) ∧
      0 < sarea (ptA a) (ptB b) (ptH h) ∧ 0 < sarea (ptA a) (ptF f) (ptH h) ∧
      0 < sarea (ptC c) G O ∧ 0 < sarea G (ptB b) O ∧ 0 < sarea (ptD d) O (ptF f) ∧
      0 < sarea (ptA a) E O ∧ 0 < sarea O E (ptH h)) ∧
    minTriangleArea (nConfig a h b c d f E G O) ≤ A₀ ∧
    (A₀ ≤ minTriangleArea (nConfig a h b c d f E G O) →
      E.1 = 1 ∧ G.2 = 1 ∧ IsOptimal (nConfig a h b c d f E G O)) := by
  obtain ⟨⟨h3a, h3b, -, -, -, -, -⟩, -, -, h6, h7a, h7b⟩ := claim_hull_and_bounds hS
  obtain ⟨hEx, hEy⟩ := h6 E (by simp)
  obtain ⟨hGx, hGy⟩ := h6 G (by simp)
  obtain ⟨hN, -, hEc, hGc, hOc, hmin, hconv, -, -, -, -, -⟩ := hS
  have hgen := oct_gen hmin
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨⟨e0, e1, e2, e3⟩, -⟩ := hEc
  obtain ⟨⟨g0, g1, g2, g3⟩, -⟩ := hGc
  obtain ⟨⟨o0, o1, o2, o3⟩, -⟩ := hOc
  set V := octagonDEGF a h b c d f E G with hV
  have cv : ∀ i j k : Fin 8, i < j → j < k → 0 < sarea (V i) (V j) (V k) := hconv
  -- the word signs of word 10
  have w1 : 0 < sarea (V 2) (V 5) O := (hr 2 3 (by norm_num) (by norm_num)).2 (by decide)
  have w2 : 0 < sarea (V 5) (V 1) O := (hr 5 4 (by norm_num) (by norm_num)).2 (by decide)
  have w3 : sarea (V 3) (V 6) O < 0 := by
    have k := hr 3 3 (by norm_num) (by norm_num)
    have hne := hgen 3 6 (by decide)
    have : ¬ 0 < sarea (V 3) (V 6) O := fun h => absurd (k.1 h) (by decide)
    exact lt_of_le_of_ne (not_lt.1 this) hne
  have w4 : 0 < sarea (V 0) (V 4) O := (hr 0 4 (by norm_num) (by norm_num)).2 (by decide)
  have w5 : 0 < sarea (V 4) (V 7) O := (hr 4 3 (by norm_num) (by norm_num)).2 (by decide)
  have c1 := cv 1 2 3 (by decide) (by decide)
  have c2 := cv 2 3 4 (by decide) (by decide)
  have c3 := cv 0 1 2 (by decide) (by decide)
  have c4 := cv 5 6 7 (by decide) (by decide)
  have c5 := cv 0 1 7 (by decide) (by decide)
  have c6 := cv 0 6 7 (by decide) (by decide)
  simp only [hV, octagonDEGF, Fin.isValue, Matrix.cons_val] at w1 w2 w3 w4 w5 c1 c2 c3 c4 c5 c6
  have signs : 0 < sarea (ptC c) (ptD d) (ptB b) ∧ 0 < sarea (ptC c) (ptD d) E ∧
      0 < sarea (ptC c) (ptA a) (ptB b) ∧ 0 < sarea G (ptF f) (ptH h) ∧
      0 < sarea (ptA a) (ptB b) (ptH h) ∧ 0 < sarea (ptA a) (ptF f) (ptH h) ∧
      0 < sarea (ptC c) G O ∧ 0 < sarea G (ptB b) O ∧ 0 < sarea (ptD d) O (ptF f) ∧
      0 < sarea (ptA a) E O ∧ 0 < sarea O E (ptH h) := by
    refine ⟨?_, c2, ?_, c4, c5, c6, w1, w2, ?_, w4, ?_⟩
    · rw [sarea_cycle]; exact c1
    · rw [← sarea_cycle]; exact c3
    · have := sarea_swap₂₃ (ptD d) (ptF f) O; linarith
    · rw [← sarea_cycle]; exact w5
  -- the rotated C/D chamber
  set Pcd := SharpCDMoving.cdMovingConfig (1 - c) d E.2 (1 - G.1) (1 - f) h a (1 - b)
    (1 - E.1) (1 - G.2) O.2 (1 - O.1) with hPcd
  set T : Fin 11 → Fin 9 × Fin 9 × Fin 9 :=
    ![(3, 4, 2), (3, 4, 6), (3, 0, 2), (7, 5, 1), (0, 2, 1), (0, 5, 1), (3, 7, 8), (7, 2, 8),
      (4, 8, 5), (0, 6, 8), (8, 6, 1)] with hT
  set P := nConfig a h b c d f E G O with hP
  have ceq : ∀ i : Fin 11, SharpBCMoving.chamberSarea Pcd i =
      sarea (P (T i).1) (P (T i).2.1) (P (T i).2.2) := by
    intro i
    fin_cases i <;>
      simp [SharpBCMoving.chamberSarea, SharpBCMoving.chamberTriangles, hPcd,
        SharpCDMoving.cdMovingConfig, SharpBCMoving.sharpConfig, hT, hP, nConfig, sarea] <;> ring
  have hdist : ∀ i : Fin 11, (T i).1 ≠ (T i).2.1 ∧ (T i).2.1 ≠ (T i).2.2 ∧ (T i).1 ≠ (T i).2.2 := by
    intro i; fin_cases i <;> simp [hT]
  have hch : SharpBCMoving.InChamber Pcd := by
    obtain ⟨s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11⟩ := signs
    intro i
    fin_cases i <;> rw [ceq]
    exacts [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11]
  have harea : ∀ i : Fin 11, SharpBCMoving.chamberArea Pcd i =
      triangleArea (P (T i).1) (P (T i).2.1) (P (T i).2.2) := by
    intro i
    rw [show SharpBCMoving.chamberArea Pcd i = |SharpBCMoving.chamberSarea Pcd i| / 2 from rfl,
      ceq i, triangleArea_eq]
  have hEy1 : E.2 < 1 := by linarith
  have hGx1 : G.1 < 1 := by linarith
  have hyp : SharpCDMoving.CDMovingHyp (1 - c) d E.2 (1 - G.1) (1 - f) h a (1 - b) (1 - E.1)
      (1 - G.2) O.2 (1 - O.1) :=
    ⟨⟨by linarith, by linarith, by linarith, by linarith, by linarith, hEy1, by linarith,
      by linarith, by linarith, ha, hah, hh⟩, by linarith, by linarith, by linarith,
      by linarith, ⟨o2, o3, by linarith, by linarith⟩⟩
  have K := SharpCDMoving.theorem1 hyp hch
  refine ⟨⟨by linarith, hEy1, by linarith, hGx1⟩, signs, ?_, fun hA => ?_⟩
  · obtain ⟨i, hi⟩ := K.1
    rw [harea i] at hi
    obtain ⟨d1, d2, d3⟩ := hdist i
    exact (minTriangleArea_le P d1 d2 d3).trans hi
  · have hall : ∀ i, A₀ ≤ SharpBCMoving.chamberArea Pcd i := by
      intro i
      rw [harea i]
      obtain ⟨d1, d2, d3⟩ := hdist i
      exact area_of_le_min hA _ _ _ d1 d2 d3
    obtain ⟨ht, hr', hopt⟩ := K.2 hall
    refine ⟨by linarith, by linarith, ⟨⟨true, true, false⟩, capPerm, fun i => ?_⟩⟩
    rw [← hopt]
    fin_cases i <;>
      simp [capPerm, SquareSymmetry.apply, SharpCDMoving.cdMovingConfig,
        SharpBCMoving.sharpConfig, hP, nConfig]

end Claims

/-! ### Section 4: the theorem -/

/-- The normalized case `f ≤ d` of Theorem 1: least area at most `A₀`, and at least `A₀` makes the
configuration optimal with a free point on the square boundary. -/
theorem theorem1_normalized {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hfd : f ≤ d) (hX : InCapT d f X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    minTriangleArea (nConfig a h b c d f X Y Z) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z) →
        IsOptimal (nConfig a h b c d f X Y Z) ∧ ¬ ExactlySixContacts X Y Z) := by
  obtain ⟨σ, -, hDEF, hDGF, h7a, h7b, hconv, hpoly⟩ := theorem4 hN hX hY hZ hmin
  set W : Fin 3 → Point := ![X, Y, Z] with hW
  have hcap : ∀ i, InCapT d f (W i) := fun i => by
    fin_cases i
    · exact hX
    · exact hY
    · exact hZ
  have hperm := minTriangleArea_nConfig_perm a h b c d f W σ
  have hmin' : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f (W (σ 0)) (W (σ 1)) (W (σ 2))) := by
    rw [hperm]; exact hmin
  have hS : CapSetting a h b c d f (W (σ 0)) (W (σ 1)) (W (σ 2)) :=
    ⟨hN, hfd, hcap _, hcap _, hcap _, hmin', hconv, hpoly, hDEF, hDGF, h7a, h7b⟩
  obtain ⟨r, -, hr⟩ := (claim_15_words).2 hS
  obtain ⟨hr10, hEc, hGh⟩ := claim_16_certificates hS _ hr
  rw [hr10] at hr
  obtain ⟨-, -, hle, heq⟩ := claim_sharp_chamber hS hr hEc hGh
  rw [hperm] at hle heq
  refine ⟨hle, fun hA => ?_⟩
  obtain ⟨hE1, -, hopt⟩ := heq hA
  refine ⟨(isOptimal_nConfig_perm a h b c d f W σ).1 hopt, fun hsix => ?_⟩
  have hopen : ∀ i, InOpenSquare (W i) := fun i => by
    fin_cases i
    · exact hsix.1
    · exact hsix.2.1
    · exact hsix.2.2
  have := (hopen (σ 0)).2.1
  linarith

/-- **Theorem 1** (`SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:Theorem1`). If all three free points lie
in the closed opposite cap `DF(1,1)`, the least area is at most `A₀`; equality holds only at the
optimal (eight-boundary) configuration, up to square symmetry and relabelling; in particular,
with exactly six boundary contacts the bound is strict.
`docs/proof/nine/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`, lines 15-30.
Uses: SIX_BOUNDARY_EXTERIOR:Theorem4, SIX_BOUNDARY_HULL:claim-transposition,
SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-hull-and-bounds,
SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-15-words,
SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-16-certificates,
SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-sharp-chamber -/
theorem theorem1 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapT d f X) (hY : InCapT d f Y) (hZ : InCapT d f Z) :
    minTriangleArea (nConfig a h b c d f X Y Z) ≤ A₀ ∧
      (minTriangleArea (nConfig a h b c d f X Y Z) = A₀ →
        IsOptimal (nConfig a h b c d f X Y Z)) ∧
      (ExactlySixContacts X Y Z → minTriangleArea (nConfig a h b c d f X Y Z) < A₀) := by
  have key : minTriangleArea (nConfig a h b c d f X Y Z) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z) →
        IsOptimal (nConfig a h b c d f X Y Z) ∧ ¬ ExactlySixContacts X Y Z) := by
    by_cases h7 : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)
    swap
    · push Not at h7
      exact ⟨by linarith [A₀_bounds.1], fun h => absurd (h.trans_lt h7) (not_lt.2 A₀_bounds.1.le)⟩
    rcases le_total f d with hfd | hdf
    · exact theorem1_normalized hN hfd hX hY hZ h7
    -- the transposed case
    have T := claim_transposition a h b c d f X Y Z
    have k := theorem1_normalized (T.1.1 hN) hdf (T.2.2.2.2.2.2.2.1.1 hX)
      ((claim_transposition a h b c d f Y X Z).2.2.2.2.2.2.2.1.1 hY)
      ((claim_transposition a h b c d f Z X Y).2.2.2.2.2.2.2.1.1 hZ) (by rw [T.2.2.1]; exact h7)
    rw [T.2.2.1] at k
    refine ⟨k.1, fun hA => ⟨T.2.2.2.1.1 (k.2 hA).1, fun hsix => (k.2 hA).2 (T.2.2.2.2.1.2 hsix)⟩⟩
  refine ⟨key.1, fun h => (key.2 h.ge).1, fun hsix => lt_of_le_of_ne key.1 fun h =>
    (key.2 h.ge).2 hsix⟩

/-- **Case N6-08** (`(n_L, n_T, n_R; n_I) = (0,3,0;0)`, `docs/proof/nine/UNRESTRICTED.md`, Section 4),
assembly form: an N configuration with exactly six contacts and all three free points in the
opposite cap, with least area at least `A₀`, is optimal (in fact impossible, by the strict part
of Theorem 1).
Uses: SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:Theorem1 -/
theorem n6_08 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapT d f X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hsix : ExactlySixContacts X Y Z)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    IsOptimal (nConfig a h b c d f X Y Z) :=
  absurd hmin (not_le.2 ((theorem1 hN hX hY hZ).2.2 hsix))

end Heilbronn.Nine.SixBoundaryOppositeCapCompletion
