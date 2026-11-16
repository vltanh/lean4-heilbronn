module

public import Heilbronn.Nine.C1.OneLower.MixedCapsModel
public import Heilbronn.Common.DataReader

/-! # Mixed-caps one-lower cover, chunk 8 (generated)

26 cells, 2572 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerMixedCaps.Model

open Cover

/-- The tree of the cell `(1, 2, 2)`. -/
noncomputable def tree8_0 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m106.txt")

/-- The tree of the cell `(1, 2, 3)`. -/
noncomputable def tree8_1 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m107.txt")

/-- The tree of the cell `(1, 2, 4)`. -/
noncomputable def tree8_2 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m108.txt")

/-- The tree of the cell `(1, 2, 5)`. -/
noncomputable def tree8_3 : Cover.Tree MSplit :=
  .node (.tri 1 6 8) [.node (.tri 2 7 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m109.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m110.txt")], .cert (term_rows% "../../../Data/c1_one_lower_mc/m111.txt")]

/-- The tree of the cell `(2, 0, 0)`. -/
noncomputable def tree8_4 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m112.txt")

/-- The tree of the cell `(2, 0, 1)`. -/
noncomputable def tree8_5 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m113.txt")

/-- The tree of the cell `(2, 0, 2)`. -/
noncomputable def tree8_6 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m114.txt")

/-- The tree of the cell `(2, 0, 3)`. -/
noncomputable def tree8_7 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m115.txt")

/-- The tree of the cell `(2, 0, 4)`. -/
noncomputable def tree8_8 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m116.txt")

/-- The tree of the cell `(2, 0, 5)`. -/
noncomputable def tree8_9 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m117.txt")

/-- The tree of the cell `(2, 0, 6)`. -/
noncomputable def tree8_10 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m118.txt")

/-- The tree of the cell `(2, 0, 7)`. -/
noncomputable def tree8_11 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m119.txt")

/-- The tree of the cell `(2, 1, 0)`. -/
noncomputable def tree8_12 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m120.txt")

/-- The tree of the cell `(2, 1, 1)`. -/
noncomputable def tree8_13 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m121.txt")

/-- The tree of the cell `(2, 1, 2)`. -/
noncomputable def tree8_14 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m122.txt")

/-- The tree of the cell `(2, 1, 3)`. -/
noncomputable def tree8_15 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m123.txt")

/-- The tree of the cell `(2, 1, 4)`. -/
noncomputable def tree8_16 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m124.txt")

/-- The tree of the cell `(2, 1, 5)`. -/
noncomputable def tree8_17 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m125.txt")

/-- The tree of the cell `(2, 1, 6)`. -/
noncomputable def tree8_18 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m126.txt")

/-- The tree of the cell `(2, 1, 7)`. -/
noncomputable def tree8_19 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m127.txt")

/-- The tree of the cell `(2, 2, 0)`. -/
noncomputable def tree8_20 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m128.txt")

/-- The tree of the cell `(2, 2, 1)`. -/
noncomputable def tree8_21 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m129.txt")

/-- The tree of the cell `(2, 2, 2)`. -/
noncomputable def tree8_22 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m130.txt")

/-- The tree of the cell `(2, 2, 3)`. -/
noncomputable def tree8_23 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m131.txt")

/-- The tree of the cell `(2, 2, 4)`. -/
noncomputable def tree8_24 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m132.txt")

/-- The tree of the cell `(2, 2, 5)`. -/
noncomputable def tree8_25 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m133.txt")

/-- The cells of chunk 8 with their trees. -/
noncomputable def chunk8 : List ((ℕ × ℕ × ℕ) × Cover.Tree MSplit) :=
  [((1, 2, 2), tree8_0),
    ((1, 2, 3), tree8_1),
    ((1, 2, 4), tree8_2),
    ((1, 2, 5), tree8_3),
    ((2, 0, 0), tree8_4),
    ((2, 0, 1), tree8_5),
    ((2, 0, 2), tree8_6),
    ((2, 0, 3), tree8_7),
    ((2, 0, 4), tree8_8),
    ((2, 0, 5), tree8_9),
    ((2, 0, 6), tree8_10),
    ((2, 0, 7), tree8_11),
    ((2, 1, 0), tree8_12),
    ((2, 1, 1), tree8_13),
    ((2, 1, 2), tree8_14),
    ((2, 1, 3), tree8_15),
    ((2, 1, 4), tree8_16),
    ((2, 1, 5), tree8_17),
    ((2, 1, 6), tree8_18),
    ((2, 1, 7), tree8_19),
    ((2, 2, 0), tree8_20),
    ((2, 2, 1), tree8_21),
    ((2, 2, 2), tree8_22),
    ((2, 2, 3), tree8_23),
    ((2, 2, 4), tree8_24),
    ((2, 2, 5), tree8_25)]

theorem chunk8_ok : chunk8.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerMixedCaps.Model
