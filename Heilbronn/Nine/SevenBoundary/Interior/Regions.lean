module

public import Heilbronn.Nine.SevenBoundary.Interior.Main

/-! # Regions inside the anchor heptagon

A point strictly inside a triangle of three anchors lies strictly inside the anchor heptagon
(`inHeptagon_of_tri`, by barycentric coordinates), and so does a point of the left pentagon
`ABCFH` or of the right quadrilateral `CDEF` (fans from `A` and from `C`); a point of the
heptagon lies in the open square. With `interior_false` this gives the main exclusions of the
hand notes for two free points (`pair_false`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenInterior

open Model SevenBoundary

variable {a h b c d e f : ℝ} {P Q X : Point}

/-- Barycentric coordinates: a point strictly inside `P₁P₂P₃` is strictly on the left of a line
that has the three vertices weakly on its left, one of them strictly. -/
theorem bary_pos {L₁ L₂ P₁ P₂ P₃ : Point} (h123 : 0 < sarea P₁ P₂ P₃)
    (hX : InTriangle X P₁ P₂ P₃) (h1 : 0 ≤ sarea L₁ L₂ P₁) (h2 : 0 ≤ sarea L₁ L₂ P₂)
    (h3 : 0 ≤ sarea L₁ L₂ P₃)
    (hpos : 0 < sarea L₁ L₂ P₁ ∨ 0 < sarea L₁ L₂ P₂ ∨ 0 < sarea L₁ L₂ P₃) :
    0 < sarea L₁ L₂ X := by
  obtain ⟨x1, x2, x3⟩ := hX
  have e : sarea L₁ L₂ X * sarea P₁ P₂ P₃ = sarea L₁ L₂ P₁ * sarea P₂ P₃ X +
      sarea L₁ L₂ P₂ * sarea P₃ P₁ X + sarea L₁ L₂ P₃ * sarea P₁ P₂ X := by
    unfold sarea; ring
  have k1 := mul_nonneg h1 x2.le
  have k2 := mul_nonneg h2 x3.le
  have k3 := mul_nonneg h3 x1.le
  have : 0 < sarea L₁ L₂ X * sarea P₁ P₂ P₃ := by
    rw [e]
    rcases hpos with hp | hp | hp
    · have := mul_pos hp x2; linarith
    · have := mul_pos hp x3; linarith
    · have := mul_pos hp x1; linarith
  exact pos_of_mul_pos_left this h123.le

/-- Every anchor is weakly on the left of every heptagon edge, strictly unless it is an endpoint. -/
theorem edge_nonneg (hN : SevenNormal a h b c d e f) {m t : ℕ} (hm : m < 7) (ht : t < 7) :
    0 ≤ sarea (cfg a h b c d e f P Q m) (cfg a h b c d e f P Q ((m + 1) % 7))
      (cfg a h b c d e f P Q t) ∧
    (t ≠ m → t ≠ (m + 1) % 7 → 0 < sarea (cfg a h b c d e f P Q m)
      (cfg a h b c d e f P Q ((m + 1) % 7)) (cfg a h b c d e f P Q t)) := by
  have hpos : t ≠ m → t ≠ (m + 1) % 7 → 0 < sarea (cfg a h b c d e f P Q m)
      (cfg a h b c d e f P Q ((m + 1) % 7)) (cfg a h b c d e f P Q t) := fun h1 h2 =>
    cyc_pos hN hm (by omega) ht (by unfold Cyc; omega)
  refine ⟨?_, hpos⟩
  by_cases h1 : t = m
  · subst h1; rw [sarea_self₁₃]
  by_cases h2 : t = (m + 1) % 7
  · rw [h2, sarea_self₂₃]
  exact (hpos h1 h2).le

/-- A point strictly inside a triangle of three anchors lies strictly inside the heptagon. -/
theorem inHeptagon_of_tri (hN : SevenNormal a h b c d e f) {i j k : ℕ} (hi : i < 7) (hj : j < 7)
    (hk : k < 7) (hc : Cyc i j k)
    (hX : InTriangle X (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q j)
      (cfg a h b c d e f P Q k)) :
    InHeptagon a h b c d e f X := by
  have key : ∀ m < 7, 0 < sarea (cfg a h b c d e f P Q m)
      (cfg a h b c d e f P Q ((m + 1) % 7)) X := by
    intro m hm
    have ei := edge_nonneg (P := P) (Q := Q) hN hm hi
    have ej := edge_nonneg (P := P) (Q := Q) hN hm hj
    have ek := edge_nonneg (P := P) (Q := Q) hN hm hk
    refine bary_pos (cyc_pos hN hi hj hk hc) hX ei.1 ej.1 ek.1 ?_
    unfold Cyc at hc
    by_cases h1 : i ≠ m ∧ i ≠ (m + 1) % 7
    · exact Or.inl (ei.2 h1.1 h1.2)
    by_cases h2 : j ≠ m ∧ j ≠ (m + 1) % 7
    · exact Or.inr (Or.inl (ej.2 h2.1 h2.2))
    exact Or.inr (Or.inr (ek.2 (by omega) (by omega)))
  exact ⟨key 0 (by norm_num), key 1 (by norm_num), key 2 (by norm_num), key 3 (by norm_num),
    key 4 (by norm_num), key 5 (by norm_num), key 6 (by norm_num)⟩

/-- A point of the heptagon lies in the open square. -/
theorem mem_square_of_inHeptagon (hN : SevenNormal a h b c d e f)
    (hX : InHeptagon a h b c d e f X) : X ∈ unitSquare := by
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨x, y⟩ := X
  obtain ⟨-, e1, -, e3, e4, e5, e6⟩ := hX
  simp only [sarea] at e1 e3 e4 e5 e6
  have hx0 : 0 < x := by nlinarith
  have hy0 : 0 < y := by nlinarith
  have hx1 : x < 1 := by nlinarith
  have hy1 : y < 1 := by
    by_contra hy; push Not at hy
    have k1 : 0 ≤ f * (y - 1) := mul_nonneg (by linarith) (by linarith)
    have hxf : f < x := by nlinarith
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - f by linarith) (show (0 : ℝ) ≤ y - 1 by linarith)]
  exact ⟨hx0.le, hx1.le, hy0.le, hy1.le⟩

/-- A point of the left pentagon `ABCFH`, collinear with no two anchors, lies in the heptagon
(fan from `A`). -/
theorem inHeptagon_of_leftPentagon (hN : SevenNormal a h b c d e f)
    (x1 : 0 < sarea (0, a) (b, 0) X) (x2 : 0 < sarea (b, 0) (c, 0) X)
    (x3 : 0 < sarea (c, 0) (f, 1) X) (x4 : 0 < sarea (f, 1) (0, h) X)
    (x5 : 0 < sarea (0, h) (0, a) X) (hAC : sarea (0, a) (c, 0) X ≠ 0)
    (hAF : sarea (0, a) (f, 1) X ≠ 0) : InHeptagon a h b c d e f X := by
  rcases lt_or_gt_of_ne hAC with hac | hac
  · exact inHeptagon_of_tri (P := X) (Q := X) hN (i := 0) (j := 1) (k := 2) (by norm_num)
      (by norm_num) (by norm_num) (by unfold Cyc; omega)
      ⟨x1, x2, by rw [sarea_swap₁₂]; exact neg_pos.2 ‹_›⟩
  rcases lt_or_gt_of_ne hAF with haf | haf
  · exact inHeptagon_of_tri (P := X) (Q := X) hN (i := 0) (j := 2) (k := 5) (by norm_num)
      (by norm_num) (by norm_num) (by unfold Cyc; omega)
      ⟨hac, x3, by rw [sarea_swap₁₂]; exact neg_pos.2 ‹_›⟩
  · exact inHeptagon_of_tri (P := X) (Q := X) hN (i := 0) (j := 5) (k := 6) (by norm_num)
      (by norm_num) (by norm_num) (by unfold Cyc; omega) ⟨haf, x4, x5⟩

/-- A point of the right quadrilateral `CDEF`, not on `CE`, lies in the heptagon (fan from `C`). -/
theorem inHeptagon_of_rightQuad (hN : SevenNormal a h b c d e f)
    (x1 : 0 < sarea (c, 0) (1, d) X) (x2 : 0 < sarea (1, d) (1, e) X)
    (x3 : 0 < sarea (1, e) (f, 1) X) (x4 : 0 < sarea (f, 1) (c, 0) X)
    (hCE : sarea (c, 0) (1, e) X ≠ 0) : InHeptagon a h b c d e f X := by
  rcases lt_or_gt_of_ne hCE with hce | hce
  · exact inHeptagon_of_tri (P := X) (Q := X) hN (i := 2) (j := 3) (k := 4) (by norm_num)
      (by norm_num) (by norm_num) (by unfold Cyc; omega)
      ⟨x1, x2, by rw [sarea_swap₁₂]; exact neg_pos.2 ‹_›⟩
  · exact inHeptagon_of_tri (P := X) (Q := X) hN (i := 2) (j := 4) (k := 5) (by norm_num)
      (by norm_num) (by norm_num) (by unfold Cyc; omega) ⟨hce, x3, x4⟩

/-- **Two free points inside the heptagon** at least area `7/128` are impossible. -/
theorem pair_false (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InHeptagon a h b c d e f P) (hQ : InHeptagon a h b c d e f Q) : False :=
  interior_false ⟨hN, mem_square_of_inHeptagon hN hP, mem_square_of_inHeptagon hN hQ, hmin⟩ hP hQ

/-- Both free points inside one triangle of three anchors are impossible. -/
theorem pair_false_tri (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) {i j k : ℕ} (hi : i < 7)
    (hj : j < 7) (hk : k < 7) (hc : Cyc i j k)
    (hP : InTriangle P (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q j)
      (cfg a h b c d e f P Q k))
    (hQ : InTriangle Q (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q j)
      (cfg a h b c d e f P Q k)) : False :=
  pair_false hN hmin (inHeptagon_of_tri hN hi hj hk hc hP) (inHeptagon_of_tri hN hi hj hk hc hQ)

/-- The doubled area of a triangle of two anchors and a free point is nonzero. -/
theorem sarea_ne_zero_free (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    {i j x : ℕ} (hi : i < 7) (hj : j < 7) (hij : i ≠ j) (hx : x = 7 ∨ x = 8) :
    sarea (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q j) (cfg a h b c d e f P Q x) ≠ 0 := by
  have := area_of_le_min hmin (idx i) (idx j) (idx x)
    (fun e => hij (idx_inj i (by omega) j (by omega) e))
    (fun e => by have := idx_inj j (by omega) x (by omega) e; omega)
    (fun e => by have := idx_inj i (by omega) x (by omega) e; omega)
  rw [triangleArea_eq, ← cfg_eq i (by omega), ← cfg_eq j (by omega), ← cfg_eq x (by omega)]
    at this
  intro h0; rw [h0, abs_zero] at this; linarith

end Heilbronn.Nine.SevenInterior
