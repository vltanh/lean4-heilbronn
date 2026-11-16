module

public import Heilbronn.Six.Setting
public import Mathlib.Analysis.Convex.Join

/-! # The single-top configuration: indexing, areas and hull signs

Shared tools for `Heilbronn.Six.SingleTop` (`hand/SIX_BOUNDARY_SINGLE_TOP.md`):

* `cfg a h b c d f X P Q : ℕ → Point`, the nine points in the order of the certificate model
  (`A, B, C, D, X, F, H, P, Q`; the heptagon `V₀, …, V₆` of (3) and the two interior points), and
  `toN`, the corresponding index of `nConfig`;
* `Conf`: the occupancy N6-03 with every actual doubled area at least `s = 8/73`; `Conf.area`
  (every actual triangle has doubled area at least `s`), `Conf.ge`, `Conf.le`, `Conf.ne`,
  `Conf.swap` (exchange of `P, Q`), `Conf.sub` (sub-configurations);
* the signs of the anchor triangles (`hex_*`, the twenty triangles of the anchor hexagon, and
  `K_*`, triangles with the corner `K = (1,1)`), and `cap_nonneg`: an affine sign that is
  nonnegative at `D`, `F` and `K` is nonnegative on the cap `T = DF(1,1)` (the convex-combination
  identity `cap_comb`). These give the hull-triangle signs that the manuscript summarizes as
  "strictly convex heptagon" (notes/findings.md, 08);
* `mem_convexHull_of_sarea'`: a point on the nonnegative side of the three edges of a
  counterclockwise triangle lies in its closed hull (a copy of
  `TypeII.TypeII.mem_convexHull_of_sarea`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundarySingleTop

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

/-- The occupancy N6-03 (N anchors, `X` in the cap `T`, `P, Q` strictly inside the anchor hexagon)
with least area at least `4/73`, i.e. every actual doubled area at least `s = 8/73`. -/
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

/-! ### The signs of the anchor triangles -/

section Anchor

variable (hN : NAnchors a h b c d f)
include hN

theorem hex_ABC : 0 < sarea (ptA a) (ptB b) (ptC c) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos ha (sub_pos.2 hbc)]

theorem hex_ABD : 0 < sarea (ptA a) (ptB b) (ptD d) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_nonneg hb.le (sub_nonneg.2 had)]

theorem hex_ABF : 0 < sarea (ptA a) (ptB b) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_pos hb (show 0 < 1 - a by linarith), mul_nonneg ha.le (show 0 ≤ f by linarith)]

theorem hex_ABH : 0 < sarea (ptA a) (ptB b) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos hb (sub_pos.2 hah)]

theorem hex_ACD : 0 < sarea (ptA a) (ptC c) (ptD d) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_nonneg (show 0 ≤ c by linarith) (sub_nonneg.2 had)]

theorem hex_ACF : 0 < sarea (ptA a) (ptC c) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_pos (show 0 < c by linarith) (show 0 < 1 - a by linarith),
    mul_nonneg ha.le (show 0 ≤ f by linarith)]

theorem hex_ACH : 0 < sarea (ptA a) (ptC c) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < c by linarith) (sub_pos.2 hah)]

theorem hex_ADF : 0 < sarea (ptA a) (ptD d) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ 1 - f by linarith) (sub_nonneg.2 had)]

theorem hex_ADH : 0 < sarea (ptA a) (ptD d) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem hex_AFH : 0 < sarea (ptA a) (ptF f) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < f by linarith) (sub_pos.2 hah)]

theorem hex_BCD : 0 < sarea (ptB b) (ptC c) (ptD d) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < d by linarith) (sub_pos.2 hbc)]

theorem hex_BCF : 0 < sarea (ptB b) (ptC c) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem hex_BCH : 0 < sarea (ptB b) (ptC c) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < h by linarith) (sub_pos.2 hbc)]

theorem hex_BDF : 0 < sarea (ptB b) (ptD d) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ 1 - d by linarith) (sub_nonneg.2 hbf)]

theorem hex_BDH : 0 < sarea (ptB b) (ptD d) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_pos (show 0 < h by linarith) (show 0 < 1 - b by linarith),
    mul_nonneg hb.le (show 0 ≤ d by linarith)]

theorem hex_BFH : 0 < sarea (ptB b) (ptF f) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ h by linarith) (sub_nonneg.2 hbf)]

theorem hex_CDF : 0 < sarea (ptC c) (ptD d) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ d by linarith) (sub_nonneg.2 hfc)]

theorem hex_CDH : 0 < sarea (ptC c) (ptD d) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_pos (show 0 < h by linarith) (show 0 < 1 - c by linarith),
    mul_nonneg (show 0 ≤ c by linarith) (show 0 ≤ d by linarith)]

theorem hex_CFH : 0 < sarea (ptC c) (ptF f) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_pos (show 0 < c by linarith) (show 0 < 1 - h by linarith),
    mul_nonneg (show 0 ≤ h by linarith) (show 0 ≤ f by linarith)]

theorem hex_DFH : 0 < sarea (ptD d) (ptF f) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ f by linarith) (sub_nonneg.2 hdh)]

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

/-! ### Closed triangles -/

/-- A convex combination of `A, B, C` lies in the closed triangle (a copy of
`TypeII.TypeII.mem_convexHull_of_bary`). -/
theorem mem_convexHull_of_bary' {A B C : Point} {a b c : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b)
    (hc : 0 ≤ c) (habc : a + b + c = 1) :
    ((a * A.1 + b * B.1 + c * C.1, a * A.2 + b * B.2 + c * C.2) : Point) ∈
      convexHull ℝ ({A, B, C} : Set Point) := by
  rw [← convexJoin_singleton_segment, mem_convexJoin]
  rcases eq_or_lt_of_le (add_nonneg hb hc) with hbc | hbc
  · have hb0 : b = 0 := by linarith
    have hc0 : c = 0 := by linarith
    have ha1 : a = 1 := by linarith
    subst hb0 hc0 ha1
    refine ⟨A, Set.mem_singleton _, B, left_mem_segment ℝ B C, ?_⟩
    convert left_mem_segment ℝ A B using 1
    ext <;> simp
  · have hne : b + c ≠ 0 := hbc.ne'
    refine ⟨A, Set.mem_singleton _,
      ((b / (b + c)) * B.1 + (c / (b + c)) * C.1, (b / (b + c)) * B.2 + (c / (b + c)) * C.2),
      ⟨b / (b + c), c / (b + c), by positivity, by positivity, by field_simp,
        by ext <;> simp⟩, ⟨a, b + c, ha, hbc.le, by linarith, ?_⟩⟩
    ext <;> simp <;> field_simp <;> ring

/-- A point on the nonnegative side of the three edges of a counterclockwise triangle lies in
the closed triangle (a copy of `TypeII.TypeII.mem_convexHull_of_sarea`). -/
theorem mem_convexHull_of_sarea' {A B C p : Point} (hΔ : 0 < sarea A B C)
    (h1 : 0 ≤ sarea B C p) (h2 : 0 ≤ sarea C A p) (h3 : 0 ≤ sarea A B p) :
    p ∈ convexHull ℝ ({A, B, C} : Set Point) := by
  have hne : sarea A B C ≠ 0 := hΔ.ne'
  have key := mem_convexHull_of_bary' (A := A) (B := B) (C := C)
    (div_nonneg h1 hΔ.le) (div_nonneg h2 hΔ.le) (div_nonneg h3 hΔ.le)
    (by rw [← add_div, ← add_div, div_eq_one_iff_eq hne]; unfold sarea; ring)
  convert key using 1
  ext
  · simp only; field_simp; unfold sarea; ring
  · simp only; field_simp; unfold sarea; ring

end Heilbronn.SixBoundarySingleTop
