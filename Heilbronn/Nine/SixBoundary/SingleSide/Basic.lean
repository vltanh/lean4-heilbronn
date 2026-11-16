module

public import Heilbronn.Nine.SixBoundary.Setting
public import Mathlib.Analysis.Convex.Join

/-! # The single-side configuration: indexing, areas and hull signs

Shared tools for `Heilbronn.Nine.SixBoundary.SingleSide`:

* `cfg a h b c d f X P Q : ℕ → Point`, the nine points in the order of the certificate model
  (`A, B, C, X, D, F, H, P, Q`; the heptagon `V₀, …, V₆` and the two interior points), and
  `toN`, the corresponding index of `nConfig`;
* `Conf`: the single-side placement with every actual doubled area at least `s = 7/64`;
  `Conf.area` (every actual triangle has doubled area at least `s`), `Conf.ge`, `Conf.le`,
  `Conf.ne`, `Conf.pos`, `Conf.swap` (exchange of `P, Q`), `Conf.sub` (sub-configurations);
* the signs `K_*` of the triangles with the corner `K = (1,0)`, and `capR_nonneg`: an affine
  sign that is nonnegative at `C`, `D` and `K` is nonnegative on the cap `R = CD(1,0)` (the
  convex-combination identity `capR_comb`). With the anchor triangles
  (`SixBoundarySingle.hex_*`), these give the hull-triangle signs of the strictly convex
  heptagon.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundarySingleSide

open SixBoundary

/-! ### Indexing -/

/-- The nine points in the order of the certificate model: `A, B, C, X, D, F, H, P, Q`. -/
def cfg (a h b c d f : ℝ) (X P Q : Point) : ℕ → Point
  | 0 => ptA a
  | 1 => ptB b
  | 2 => ptC c
  | 3 => X
  | 4 => ptD d
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
  | 3 => 6
  | 4 => 4
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

/-- The single-side placement (N anchors, `X` in the side cap `R = CD(1,0)`, `P, Q` in the square
and strictly inside the anchor hexagon) with least area at least `7/128`, i.e. every actual
doubled area at least `s = 7/64`. -/
structure Conf (a h b c d f : ℝ) (X P Q : Point) : Prop where
  hN : NAnchors a h b c d f
  hX : InCapR c d X
  sqP : P ∈ unitSquare
  sqQ : Q ∈ unitSquare
  hP : InHexagon a h b c d f P
  hQ : InHexagon a h b c d f Q
  hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)

/-- Every actual triangle has doubled area at least `s = 7/64`. -/
theorem Conf.area (H : Conf a h b c d f X P Q) (i j l : ℕ) (hi : i < 9 := by norm_num)
    (hj : j < 9 := by norm_num) (hl : l < 9 := by norm_num) (hij : i ≠ j := by norm_num)
    (hjl : j ≠ l := by norm_num) (hil : i ≠ l := by norm_num) :
    7 / 64 ≤ |sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
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
    7 / 64 ≤ sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
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
      (cfg a h b c d f X P Q l) ≤ -(7 / 64) := by
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
  refine ⟨H.hN, H.hX, H.sqQ, H.sqP, H.hQ, H.hP, ?_⟩
  have e : nConfig a h b c d f X Q P = nConfig a h b c d f X P Q ∘ Equiv.swap 7 8 := by
    funext i; fin_cases i <;> rfl
  rw [e, minTriangleArea_comp_perm]
  exact H.hmin

/-- A sub-configuration of distinct points has least area at least `7/128`. -/
theorem Conf.sub (H : Conf a h b c d f X P Q) {m : ℕ} (hm : 3 ≤ m) (ι : Fin m → ℕ)
    (hι : ∀ x, ι x < 9) (hinj : Function.Injective ι) :
    7 / 128 ≤ minTriangleArea (fun x => cfg a h b c d f X P Q (ι x)) := by
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

/-- `K = (1,0)`, the virtual corner of the cap `R`. -/
abbrev ptK : Point := (1, 0)

theorem K_AB : 0 ≤ sarea (ptA a) (ptB b) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos ha (show 0 < 1 - b by linarith)]

theorem K_AC : 0 ≤ sarea (ptA a) (ptC c) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos ha (show 0 < 1 - c by linarith)]

theorem K_BC : 0 ≤ sarea (ptB b) (ptC c) ptK := by
  obtain ⟨-, -, -, -, hbc, -⟩ := hN
  simp only [sarea]; nlinarith

theorem K_DA : 0 ≤ sarea (ptD d) (ptA a) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem K_FA : 0 ≤ sarea (ptF f) (ptA a) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ 1 - a by linarith) (show 0 ≤ 1 - f by linarith)]

theorem K_HA : 0 ≤ sarea (ptH h) (ptA a) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem K_DB : 0 ≤ sarea (ptD d) (ptB b) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ 1 - b by linarith) (show 0 ≤ d by linarith)]

theorem K_FB : 0 ≤ sarea (ptF f) (ptB b) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem K_HB : 0 ≤ sarea (ptH h) (ptB b) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < h by linarith) (show 0 < 1 - b by linarith)]

theorem K_FC : 0 ≤ sarea (ptF f) (ptC c) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem K_HC : 0 ≤ sarea (ptH h) (ptC c) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < h by linarith) (show 0 < 1 - c by linarith)]

theorem K_DF : 0 ≤ sarea (ptD d) (ptF f) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ d by linarith) (show 0 ≤ 1 - f by linarith)]

theorem K_DH : 0 ≤ sarea (ptD d) (ptH h) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem K_FH : 0 ≤ sarea (ptF f) (ptH h) ptK := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ 1 - h by linarith) (show 0 ≤ 1 - f by linarith)]

end Anchor

/-! ### The cap `R = CD(1,0)` -/

/-- A point of the cap is the convex combination `d(1-x) C + (1-c)y D - [CDX] K` of its
vertices, up to the factor `(1-c)d`; for an affine sign this reads as follows. -/
theorem capR_comb (c d : ℝ) (X U W : Point) :
    (1 - c) * d * sarea U W X = d * (1 - X.1) * sarea U W (ptC c) +
      (1 - c) * X.2 * sarea U W (ptD d) + (-sarea (ptC c) (ptD d) X) * sarea U W ptK := by
  simp only [sarea]; ring

/-- An affine sign nonnegative at `C, D, K` is nonnegative on the cap. -/
theorem capR_nonneg {c d : ℝ} {X U W : Point} (hc : c < 1) (hd : 0 < d) (hX : InCapR c d X)
    (h1 : 0 ≤ sarea U W (ptC c)) (h2 : 0 ≤ sarea U W (ptD d)) (h3 : 0 ≤ sarea U W ptK) :
    0 ≤ sarea U W X := by
  obtain ⟨⟨x0, x1, y0, y1⟩, hT⟩ := hX
  have e := capR_comb c d X U W
  have hpos : 0 < (1 - c) * d := mul_pos (by linarith) hd
  have : 0 ≤ (1 - c) * d * sarea U W X := by
    rw [e]
    have := mul_nonneg (mul_nonneg hd.le (show 0 ≤ 1 - X.1 by linarith)) h1
    have := mul_nonneg (mul_nonneg (show 0 ≤ 1 - c by linarith) (show 0 ≤ X.2 by linarith)) h2
    have := mul_nonneg (show 0 ≤ -sarea (ptC c) (ptD d) X by linarith) h3
    linarith
  exact (mul_nonneg_iff_of_pos_left hpos).1 this

end Heilbronn.Nine.SixBoundarySingleSide
