module

public import Heilbronn.Nine.SixBoundary.SixBCommon

/-! # The hull octagon `A, B, C, D, E, G, F, H` of the convex two-top case

Generated: the hull triangles are nonnegative linear combinations of products of the sign data
`Hull` (linarith hints found by linear programming); the least area makes them strictly
positive. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex

open SixRadial SixBoundary

/-- The sign data of the hull. -/
structure Hull (a h b c d f ex ey gx gy : ℝ) : Prop where
  ha : 0 ≤ a
  hha : 0 ≤ -a + h
  hh1 : 0 ≤ 1 - h
  hb : 0 ≤ b
  hcb : 0 ≤ -b + c
  hc1 : 0 ≤ 1 - c
  hda : 0 ≤ -a + d
  hhd : 0 ≤ -d + h
  hfb : 0 ≤ -b + f
  hcf : 0 ≤ c - f
  hef : 0 ≤ ex - f
  he1 : 0 ≤ 1 - ex
  hed : 0 ≤ -d + ey
  hey1 : 0 ≤ 1 - ey
  hDEF : 0 ≤ (1 - d)*(ex - f) - (1 - ey)*(1 - f)
  hgf : 0 ≤ -f + gx
  hg1 : 0 ≤ 1 - gx
  hgd : 0 ≤ -d + gy
  hgy1 : 0 ≤ 1 - gy
  hDGF : 0 ≤ (1 - d)*(-f + gx) - (1 - f)*(1 - gy)
  hu : 0 ≤ ex - gx
  hv : 0 ≤ -ey + gy
  hDEG : 0 ≤ -(1 - ex)*(-ey + gy) + (-d + ey)*(ex - gx)
  hEGF : 0 ≤ -(1 - gy)*(ex - gx) + (-ey + gy)*(-f + gx)

/-- The hull polygon. -/
def octV (a h b c d f ex ey gx gy : ℝ) : Fin 8 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (ex, ey), (gx, gy), (f, 1), (0, h)]

variable {a h b c d f ex ey gx gy : ℝ}

theorem Hull.t012 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (b, 0) (c, 0) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hcb]

theorem Hull.t013 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (b, 0) (1, d) := by
  simp only [sarea]
  linarith [H.ha, mul_nonneg H.hb H.hda]

theorem Hull.t014 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (b, 0) (ex, ey) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hb, mul_nonneg H.ha H.hfb, mul_nonneg H.ha H.hef, mul_nonneg H.hb H.hda, mul_nonneg H.hb H.hed]

theorem Hull.t015 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (b, 0) (gx, gy) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hb, mul_nonneg H.ha H.hfb, mul_nonneg H.ha H.hgf, mul_nonneg H.hb H.hda, mul_nonneg H.hb H.hgd]

theorem Hull.t016 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (b, 0) (f, 1) := by
  simp only [sarea]
  linarith [H.hb, mul_nonneg H.ha H.hfb]

theorem Hull.t017 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (b, 0) (0, h) := by
  simp only [sarea]
  linarith [mul_nonneg H.hha H.hb]

theorem Hull.t023 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (c, 0) (1, d) := by
  simp only [sarea]
  linarith [H.ha, mul_nonneg H.hb H.hda, mul_nonneg H.hcb H.hda]

theorem Hull.t024 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (c, 0) (ex, ey) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hb, mul_nonneg H.ha H.hfb, mul_nonneg H.ha H.hef, mul_nonneg H.hb H.hda, mul_nonneg H.hb H.hed, mul_nonneg H.hcb H.hda, mul_nonneg H.hcb H.hed]

theorem Hull.t025 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (c, 0) (gx, gy) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hb, mul_nonneg H.ha H.hfb, mul_nonneg H.ha H.hgf, mul_nonneg H.hb H.hda, mul_nonneg H.hb H.hgd, mul_nonneg H.hcb H.hda, mul_nonneg H.hcb H.hgd]

theorem Hull.t026 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (c, 0) (f, 1) := by
  simp only [sarea]
  linarith [H.hb, H.hfb, mul_nonneg H.hha H.hcf, mul_nonneg H.hh1 H.hcf]

theorem Hull.t027 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (c, 0) (0, h) := by
  simp only [sarea]
  linarith [mul_nonneg H.hha H.hb, mul_nonneg H.hha H.hcb]

theorem Hull.t034 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (1, d) (ex, ey) := by
  simp only [sarea]
  linarith [H.hed, mul_nonneg H.hda H.he1]

theorem Hull.t035 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (1, d) (gx, gy) := by
  simp only [sarea]
  linarith [H.hgd, mul_nonneg H.hda H.hg1]

theorem Hull.t036 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (1, d) (f, 1) := by
  simp only [sarea]
  linarith [H.hed, H.hey1, mul_nonneg H.hc1 H.hda, mul_nonneg H.hda H.hcf]

theorem Hull.t037 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (1, d) (0, h) := by
  simp only [sarea]
  linarith [H.hha]

theorem Hull.t045 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (ex, ey) (gx, gy) := by
  simp only [sarea]
  linarith [H.hv, H.hDEG, mul_nonneg H.hda H.hu]

theorem Hull.t046 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (ex, ey) (f, 1) := by
  simp only [sarea]
  linarith [H.hey1, H.hDEF, mul_nonneg H.hda H.hef]

theorem Hull.t047 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (ex, ey) (0, h) := by
  simp only [sarea]
  linarith [mul_nonneg H.hha H.hb, mul_nonneg H.hha H.hfb, mul_nonneg H.hha H.hef]

theorem Hull.t056 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (gx, gy) (f, 1) := by
  simp only [sarea]
  linarith [H.hgy1, H.hDGF, mul_nonneg H.hda H.hgf]

theorem Hull.t057 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (gx, gy) (0, h) := by
  simp only [sarea]
  linarith [mul_nonneg H.hha H.hb, mul_nonneg H.hha H.hfb, mul_nonneg H.hha H.hgf]

theorem Hull.t067 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (0, a) (f, 1) (0, h) := by
  simp only [sarea]
  linarith [mul_nonneg H.hha H.hb, mul_nonneg H.hha H.hfb]

theorem Hull.t123 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (c, 0) (1, d) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hcb, mul_nonneg H.hcb H.hda]

theorem Hull.t124 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (c, 0) (ex, ey) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hcb, mul_nonneg H.hcb H.hda, mul_nonneg H.hcb H.hed]

theorem Hull.t125 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (c, 0) (gx, gy) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hcb, mul_nonneg H.hcb H.hda, mul_nonneg H.hcb H.hgd]

theorem Hull.t126 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (c, 0) (f, 1) := by
  simp only [sarea]
  linarith [H.hcb]

theorem Hull.t127 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (c, 0) (0, h) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hcb, mul_nonneg H.hha H.hcb]

theorem Hull.t134 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (1, d) (ex, ey) := by
  simp only [sarea]
  linarith [H.he1, H.hDEF, mul_nonneg H.hfb H.hed]

theorem Hull.t135 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (1, d) (gx, gy) := by
  simp only [sarea]
  linarith [H.hg1, H.hDGF, mul_nonneg H.hfb H.hgd]

theorem Hull.t136 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (1, d) (f, 1) := by
  simp only [sarea]
  linarith [H.hc1, H.hcf, mul_nonneg H.hfb H.hed, mul_nonneg H.hfb H.hey1]

theorem Hull.t137 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (1, d) (0, h) := by
  simp only [sarea]
  linarith [H.ha, H.hda, mul_nonneg H.hcb H.hhd, mul_nonneg H.hc1 H.hhd]

theorem Hull.t145 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (ex, ey) (gx, gy) := by
  simp only [sarea]
  linarith [H.hu, H.hEGF, mul_nonneg H.hfb H.hv]

theorem Hull.t146 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (ex, ey) (f, 1) := by
  simp only [sarea]
  linarith [H.hef, mul_nonneg H.hfb H.hey1]

theorem Hull.t147 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (ex, ey) (0, h) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hb, mul_nonneg H.ha H.hfb, mul_nonneg H.ha H.hef, mul_nonneg H.hha H.hfb, mul_nonneg H.hha H.hef, mul_nonneg H.hb H.hda, mul_nonneg H.hb H.hed]

theorem Hull.t156 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (gx, gy) (f, 1) := by
  simp only [sarea]
  linarith [H.hgf, mul_nonneg H.hfb H.hgy1]

theorem Hull.t157 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (gx, gy) (0, h) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hb, mul_nonneg H.ha H.hfb, mul_nonneg H.ha H.hgf, mul_nonneg H.hha H.hfb, mul_nonneg H.hha H.hgf, mul_nonneg H.hb H.hda, mul_nonneg H.hb H.hgd]

theorem Hull.t167 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (b, 0) (f, 1) (0, h) := by
  simp only [sarea]
  linarith [H.hb, mul_nonneg H.ha H.hfb, mul_nonneg H.hha H.hfb]

theorem Hull.t234 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (c, 0) (1, d) (ex, ey) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.he1, mul_nonneg H.hc1 H.hed, mul_nonneg H.hda H.he1]

theorem Hull.t235 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (c, 0) (1, d) (gx, gy) := by
  simp only [sarea]
  linarith [mul_nonneg H.ha H.hg1, mul_nonneg H.hc1 H.hgd, mul_nonneg H.hda H.hg1]

theorem Hull.t236 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (c, 0) (1, d) (f, 1) := by
  simp only [sarea]
  linarith [H.hc1, mul_nonneg H.ha H.hcf, mul_nonneg H.hda H.hcf]

theorem Hull.t237 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (c, 0) (1, d) (0, h) := by
  simp only [sarea]
  linarith [H.ha, H.hda, mul_nonneg H.hc1 H.hhd]

theorem Hull.t245 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (c, 0) (ex, ey) (gx, gy) := by
  simp only [sarea]
  linarith [H.hDEG, mul_nonneg H.ha H.hu, mul_nonneg H.hc1 H.hv, mul_nonneg H.hda H.hu]

theorem Hull.t246 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (c, 0) (ex, ey) (f, 1) := by
  simp only [sarea]
  linarith [H.hDEF, mul_nonneg H.ha H.hef, mul_nonneg H.hc1 H.hey1, mul_nonneg H.hda H.hef]

theorem Hull.t247 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (c, 0) (ex, ey) (0, h) := by
  simp only [sarea]
  rcases le_total ey h with hs | hs
  · replace hs : 0 ≤ h - ey := sub_nonneg.2 hs
    linarith [H.hDEF, mul_nonneg H.ha H.hb, mul_nonneg H.ha H.hfb, mul_nonneg H.ha H.hef, mul_nonneg H.hh1 H.he1, mul_nonneg H.hb H.hda, mul_nonneg H.hb H.hed, mul_nonneg H.hc1 hs, mul_nonneg H.hda H.hfb, mul_nonneg H.hda H.hef, mul_nonneg H.hfb H.hed]
  · replace hs : 0 ≤ ey - h := sub_nonneg.2 hs
    linarith [mul_nonneg H.ha H.hb, mul_nonneg H.ha H.hfb, mul_nonneg H.ha H.hef, mul_nonneg H.hha H.hb, mul_nonneg H.hha H.hfb, mul_nonneg H.hha H.hef, mul_nonneg H.hb hs, mul_nonneg H.hcb hs]

theorem Hull.t256 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (c, 0) (gx, gy) (f, 1) := by
  simp only [sarea]
  linarith [H.hDGF, mul_nonneg H.ha H.hgf, mul_nonneg H.hc1 H.hgy1, mul_nonneg H.hda H.hgf]

theorem Hull.t257 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (c, 0) (gx, gy) (0, h) := by
  simp only [sarea]
  rcases le_total gy h with hs | hs
  · replace hs : 0 ≤ h - gy := sub_nonneg.2 hs
    linarith [H.hDGF, mul_nonneg H.ha H.hb, mul_nonneg H.ha H.hfb, mul_nonneg H.ha H.hgf, mul_nonneg H.hh1 H.hg1, mul_nonneg H.hb H.hda, mul_nonneg H.hb H.hgd, mul_nonneg H.hc1 hs, mul_nonneg H.hda H.hfb, mul_nonneg H.hda H.hgf, mul_nonneg H.hfb H.hgd]
  · replace hs : 0 ≤ gy - h := sub_nonneg.2 hs
    linarith [mul_nonneg H.ha H.hb, mul_nonneg H.ha H.hfb, mul_nonneg H.ha H.hgf, mul_nonneg H.hha H.hb, mul_nonneg H.hha H.hfb, mul_nonneg H.hha H.hgf, mul_nonneg H.hb hs, mul_nonneg H.hcb hs]

theorem Hull.t267 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (c, 0) (f, 1) (0, h) := by
  simp only [sarea]
  linarith [H.hb, H.hfb, mul_nonneg H.hh1 H.hcf]

theorem Hull.t345 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (1, d) (ex, ey) (gx, gy) := by
  simp only [sarea]
  linarith [H.hDEG]

theorem Hull.t346 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (1, d) (ex, ey) (f, 1) := by
  simp only [sarea]
  linarith [H.hDEF]

theorem Hull.t347 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (1, d) (ex, ey) (0, h) := by
  simp only [sarea]
  linarith [H.hDEF, mul_nonneg H.hh1 H.he1, mul_nonneg H.hb H.hed, mul_nonneg H.hfb H.hed]

theorem Hull.t356 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (1, d) (gx, gy) (f, 1) := by
  simp only [sarea]
  linarith [H.hDGF]

theorem Hull.t357 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (1, d) (gx, gy) (0, h) := by
  simp only [sarea]
  linarith [H.hDGF, mul_nonneg H.hh1 H.hg1, mul_nonneg H.hb H.hgd, mul_nonneg H.hfb H.hgd]

theorem Hull.t367 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (1, d) (f, 1) (0, h) := by
  simp only [sarea]
  linarith [H.hh1, mul_nonneg H.hb H.hhd, mul_nonneg H.hhd H.hfb]

theorem Hull.t456 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (ex, ey) (gx, gy) (f, 1) := by
  simp only [sarea]
  linarith [H.hEGF]

theorem Hull.t457 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (ex, ey) (gx, gy) (0, h) := by
  simp only [sarea]
  linarith [H.hEGF, mul_nonneg H.hh1 H.hu, mul_nonneg H.hb H.hv, mul_nonneg H.hfb H.hv]

theorem Hull.t467 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (ex, ey) (f, 1) (0, h) := by
  simp only [sarea]
  linarith [mul_nonneg H.hh1 H.hef, mul_nonneg H.hb H.hey1, mul_nonneg H.hfb H.hey1]

theorem Hull.t567 (H : Hull a h b c d f ex ey gx gy) :
    0 ≤ sarea (gx, gy) (f, 1) (0, h) := by
  simp only [sarea]
  linarith [mul_nonneg H.hh1 H.hgf, mul_nonneg H.hb H.hgy1, mul_nonneg H.hfb H.hgy1]

/-- The hull is strictly convex when every hull triangle has doubled area at least `8 / 73`. -/
theorem Hull.convex (H : Hull a h b c d f ex ey gx gy)
    (hs : ∀ i j k : Fin 8, i < j → j < k →
      (8 / 73 : ℝ) ≤ |sarea (octV a h b c d f ex ey gx gy i) (octV a h b c d f ex ey gx gy j) (octV a h b c d f ex ey gx gy k)|) :
    IsConvexPolygon (octV a h b c d f ex ey gx gy) := by
  intro i j k hij hjk
  refine pos_of_nonneg_of_le_abs (by norm_num) ?_ (hs i j k hij hjk)
  fin_cases i <;> fin_cases j <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hij ⊢ <;>
    fin_cases k <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hjk ⊢
  · exact H.t012
  · exact H.t013
  · exact H.t014
  · exact H.t015
  · exact H.t016
  · exact H.t017
  · exact H.t023
  · exact H.t024
  · exact H.t025
  · exact H.t026
  · exact H.t027
  · exact H.t034
  · exact H.t035
  · exact H.t036
  · exact H.t037
  · exact H.t045
  · exact H.t046
  · exact H.t047
  · exact H.t056
  · exact H.t057
  · exact H.t067
  · exact H.t123
  · exact H.t124
  · exact H.t125
  · exact H.t126
  · exact H.t127
  · exact H.t134
  · exact H.t135
  · exact H.t136
  · exact H.t137
  · exact H.t145
  · exact H.t146
  · exact H.t147
  · exact H.t156
  · exact H.t157
  · exact H.t167
  · exact H.t234
  · exact H.t235
  · exact H.t236
  · exact H.t237
  · exact H.t245
  · exact H.t246
  · exact H.t247
  · exact H.t256
  · exact H.t257
  · exact H.t267
  · exact H.t345
  · exact H.t346
  · exact H.t347
  · exact H.t356
  · exact H.t357
  · exact H.t367
  · exact H.t456
  · exact H.t457
  · exact H.t467
  · exact H.t567

end Heilbronn.Nine.SixBoundaryTwoTopConvex
