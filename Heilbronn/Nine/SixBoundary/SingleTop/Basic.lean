module

public import Heilbronn.Nine.SixBoundary.Setting
public import Mathlib.Analysis.Convex.Join

/-! # The single-top configuration: indexing, areas and hull signs

Shared tools for `Heilbronn.Nine.SixBoundary.SingleTop`:

* `cfg a h b c d f X P Q : ℕ → Point`, the nine points in the order of the certificate model
  (`A, B, C, D, X, F, H, P, Q`; the heptagon `V₀, …, V₆` and the two interior points), and
  `toN`, the corresponding index of `nConfig`;
* `Conf`: the single-top placement with every actual doubled area at least `s = 8/73`;
  `Conf.area` (every actual triangle has doubled area at least `s`), `Conf.ge`, `Conf.le`,
  `Conf.ne`, `Conf.swap` (exchange of `P, Q`), `Conf.sub` (sub-configurations);
* the signs `K_*` of the triangles with the corner `K = (1,1)`, and `cap_nonneg`: an affine sign
  that is nonnegative at `D`, `F` and `K` is nonnegative on the cap `T = DF(1,1)` (the
  convex-combination identity `cap_comb`). With the anchor triangles
  (`SixBoundarySingle.hex_*`), these give the hull-triangle signs of the strictly convex
  heptagon.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundarySingleTop

open SixBoundary

/-! ### Indexing -/

/-- The nine points in the order of the certificate model: `A, B, C, D, X, F, H, P, Q`. -/
def cfg (a h b c d f : ℝ) (X P Q : Point) : ℕ → Point
  | 0 => ptA a
  | 1 => ptB b
  | 2 => ptC c
  | 3 => ptD d
  | 4 => X
  | 5 => ptF f
  | 6 => ptH h
  | 7 => P
  | 8 => Q
  | _ => (0, 0)

/-- The index in `nConfig` (`A, H, B, C, D, F, X, P, Q`) of a model index. -/
def toN : ℕ → Fin 9
  | 0 => 0
  | 1 => 2
  | 2 => 3
  | 3 => 4
  | 4 => 6
  | 5 => 5
  | 6 => 1
  | 7 => 7
  | _ => 8

variable {a h b c d f : ℝ} {X P Q : Point}

theorem cfg_eq (a h b c d f : ℝ) (X P Q : Point) {i : ℕ} (hi : i < 9) :
    cfg a h b c d f X P Q i = nConfig a h b c d f X P Q (toN i) := by
  interval_cases i <;> rfl

theorem toN_inj : ∀ i < 9, ∀ j < 9, toN i = toN j → i = j := by decide

/-! ### The configuration -/

/-- The single-top placement (N anchors, `X` in the cap `T`, `P, Q` strictly inside the anchor
hexagon) with least area at least `4/73`, i.e. every actual doubled area at least `s = 8/73`. -/
structure Conf (a h b c d f : ℝ) (X P Q : Point) : Prop where
  hN : NAnchors a h b c d f
  hX : InCapT d f X
  hP : InHexagon a h b c d f P
  hQ : InHexagon a h b c d f Q
  hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)

/-- Every actual triangle has doubled area at least `s = 8/73`. -/
theorem Conf.area (H : Conf a h b c d f X P Q) (i j l : ℕ) (hi : i < 9 := by norm_num)
    (hj : j < 9 := by norm_num) (hl : l < 9 := by norm_num) (hij : i ≠ j := by norm_num)
    (hjl : j ≠ l := by norm_num) (hil : i ≠ l := by norm_num) :
    8 / 73 ≤ |sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l)| := by
  have := area_of_le_min H.hmin (toN i) (toN j) (toN l)
    (fun e => hij (toN_inj i hi j hj e)) (fun e => hjl (toN_inj j hj l hl e))
    (fun e => hil (toN_inj i hi l hl e))
  rw [triangleArea_eq] at this
  rw [cfg_eq _ _ _ _ _ _ _ _ _ hi, cfg_eq _ _ _ _ _ _ _ _ _ hj, cfg_eq _ _ _ _ _ _ _ _ _ hl]
  linarith

/-- A positively oriented actual triangle has doubled area at least `s`. -/
theorem Conf.ge (H : Conf a h b c d f X P Q) (i j l : ℕ) (hi : i < 9 := by norm_num)
    (hj : j < 9 := by norm_num) (hl : l < 9 := by norm_num) (hij : i ≠ j := by norm_num)
    (hjl : j ≠ l := by norm_num) (hil : i ≠ l := by norm_num)
    (hpos : 0 ≤ sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l)) :
    8 / 73 ≤ sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l) := by
  have := H.area i j l hi hj hl hij hjl hil
  rwa [abs_of_nonneg hpos] at this

/-- A negatively oriented actual triangle has doubled area at most `-s`. -/
theorem Conf.le (H : Conf a h b c d f X P Q) (i j l : ℕ) (hi : i < 9 := by norm_num)
    (hj : j < 9 := by norm_num) (hl : l < 9 := by norm_num) (hij : i ≠ j := by norm_num)
    (hjl : j ≠ l := by norm_num) (hil : i ≠ l := by norm_num)
    (hneg : sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l) ≤ 0) :
    sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l) ≤ -(8 / 73) := by
  have := H.area i j l hi hj hl hij hjl hil
  rw [abs_of_nonpos hneg] at this
  linarith

/-- No actual triangle is degenerate. -/
theorem Conf.ne (H : Conf a h b c d f X P Q) (i j l : ℕ) (hi : i < 9 := by norm_num)
    (hj : j < 9 := by norm_num) (hl : l < 9 := by norm_num) (hij : i ≠ j := by norm_num)
    (hjl : j ≠ l := by norm_num) (hil : i ≠ l := by norm_num) :
    sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j) (cfg a h b c d f X P Q l) ≠ 0 := by
  intro h0
  have := H.area i j l hi hj hl hij hjl hil
  rw [h0, abs_zero] at this
  norm_num at this

/-- A nonnegative actual sign is positive. -/
theorem Conf.pos (H : Conf a h b c d f X P Q) (i j l : ℕ) (hi : i < 9 := by norm_num)
    (hj : j < 9 := by norm_num) (hl : l < 9 := by norm_num) (hij : i ≠ j := by norm_num)
    (hjl : j ≠ l := by norm_num) (hil : i ≠ l := by norm_num)
    (hpos : 0 ≤ sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l)) :
    0 < sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l) := by
  have := H.ge i j l hi hj hl hij hjl hil hpos
  linarith

/-- Exchanging the two interior points. -/
theorem Conf.swap (H : Conf a h b c d f X P Q) : Conf a h b c d f X Q P := by
  refine ⟨H.hN, H.hX, H.hQ, H.hP, ?_⟩
  have e : nConfig a h b c d f X Q P = nConfig a h b c d f X P Q ∘ Equiv.swap 7 8 := by
    funext i; fin_cases i <;> rfl
  rw [e, minTriangleArea_comp_perm]
  exact H.hmin

/-- A sub-configuration of distinct points has least area at least `4/73`. -/
theorem Conf.sub (H : Conf a h b c d f X P Q) {m : ℕ} (hm : 3 ≤ m) (ι : Fin m → ℕ)
    (hι : ∀ x, ι x < 9) (hinj : Function.Injective ι) :
    4 / 73 ≤ minTriangleArea (fun x => cfg a h b c d f X P Q (ι x)) := by
  have e : (fun x => cfg a h b c d f X P Q (ι x)) = nConfig a h b c d f X P Q ∘ (toN ∘ ι) := by
    funext x; simp only [Function.comp]; exact cfg_eq _ _ _ _ _ _ _ _ _ (hι x)
  rw [e]
  refine H.hmin.trans (le_min_comp hm _ ?_)
  intro x y hxy
  exact hinj (toN_inj _ (hι x) _ (hι y) hxy)

/-! ### The signs of the triangles with the corner `K` -/

section Anchor

variable (hN : NAnchors a h b c d f)
include hN

/-- `K = (1,1)`. -/
abbrev ptK : Point := (1, 1)

theorem K_AB : 0 ≤ sarea (ptA a) (ptB b) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos hb (show 0 < 1 - a by linarith)]

theorem K_AC : 0 ≤ sarea (ptA a) (ptC c) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < c by linarith) (show 0 < 1 - a by linarith)]

theorem K_AD : 0 ≤ sarea (ptA a) (ptD d) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem K_BC : 0 ≤ sarea (ptB b) (ptC c) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem K_BD : 0 ≤ sarea (ptB b) (ptD d) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ 1 - b by linarith) (show 0 ≤ 1 - d by linarith)]

theorem K_CD : 0 ≤ sarea (ptC c) (ptD d) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ 1 - c by linarith) (show 0 ≤ 1 - d by linarith)]

theorem K_FA : 0 ≤ sarea (ptF f) (ptA a) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ 1 - a by linarith) (show 0 ≤ 1 - f by linarith)]

theorem K_HA : 0 ≤ sarea (ptH h) (ptA a) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem K_FB : 0 ≤ sarea (ptF f) (ptB b) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem K_HB : 0 ≤ sarea (ptH h) (ptB b) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos hb (show 0 < 1 - h by linarith)]

theorem K_FC : 0 ≤ sarea (ptF f) (ptC c) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem K_HC : 0 ≤ sarea (ptH h) (ptC c) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < c by linarith) (show 0 < 1 - h by linarith)]

theorem K_HD : 0 ≤ sarea (ptH h) (ptD d) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem K_FH : 0 ≤ sarea (ptF f) (ptH h) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ 1 - h by linarith) (show 0 ≤ 1 - f by linarith)]

end Anchor

/-! ### The cap `T = DF(1,1)` -/

/-- A point of the cap is the convex combination `(1-f)(1-y) D + (1-d)(1-x) F - [DFX] K` of its
vertices, up to the factor `(1-d)(1-f)`; for an affine sign this reads as follows. -/
theorem cap_comb (d f : ℝ) (X U W : Point) :
    (1 - d) * (1 - f) * sarea U W X = (1 - f) * (1 - X.2) * sarea U W (ptD d) +
      (1 - d) * (1 - X.1) * sarea U W (ptF f) + (-sarea (ptD d) (ptF f) X) * sarea U W ptK := by
  simp only [sarea]; ring

/-- An affine sign nonnegative at `D, F, K` is nonnegative on the cap. -/
theorem cap_nonneg {d f : ℝ} {X U W : Point} (hd : d < 1) (hf : f < 1) (hX : InCapT d f X)
    (h1 : 0 ≤ sarea U W (ptD d)) (h2 : 0 ≤ sarea U W (ptF f)) (h3 : 0 ≤ sarea U W ptK) :
    0 ≤ sarea U W X := by
  obtain ⟨⟨x0, x1, y0, y1⟩, hT⟩ := hX
  have e := cap_comb d f X U W
  have hpos : 0 < (1 - d) * (1 - f) := mul_pos (by linarith) (by linarith)
  have : 0 ≤ (1 - d) * (1 - f) * sarea U W X := by
    rw [e]
    have := mul_nonneg (mul_nonneg (show 0 ≤ 1 - f by linarith) (show 0 ≤ 1 - X.2 by linarith)) h1
    have := mul_nonneg (mul_nonneg (show 0 ≤ 1 - d by linarith) (show 0 ≤ 1 - X.1 by linarith)) h2
    have := mul_nonneg (show 0 ≤ -sarea (ptD d) (ptF f) X by linarith) h3
    linarith
  exact (mul_nonneg_iff_of_pos_left hpos).1 this

end Heilbronn.Nine.SixBoundarySingleTop
