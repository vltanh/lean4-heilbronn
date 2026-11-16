module

public import Heilbronn.Nine.SevenBoundary.Interior.Model
public import Heilbronn.Common.DataReader

/-! # Seven-boundary interior cover, chunk 12

The trees of 26 cases (2483 certificate terms), checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.SevenInterior.Trees

open Cover Model

/-- The tree of the case [31, 42]. -/
noncomputable def tree12_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0332.txt")

/-- The tree of the case [31, 55]. -/
noncomputable def tree12_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0333.txt")

/-- The tree of the case [32, 39]. -/
noncomputable def tree12_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0334.txt")

/-- The tree of the case [32, 41]. -/
noncomputable def tree12_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0335.txt")

/-- The tree of the case [32, 42]. -/
noncomputable def tree12_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0336.txt")

/-- The tree of the case [32, 55]. -/
noncomputable def tree12_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0337.txt")

/-- The tree of the case [33, 39]. -/
noncomputable def tree12_6 : Cover.Tree Split :=
  .node (.tri 1 7 8) [.cert (term_rows% "../../../Data/seven_b/c0338.txt"), .node (.cut 9 (1 / 2)) [.cert (term_rows% "../../../Data/seven_b/c0339.txt"), .cert (term_rows% "../../../Data/seven_b/c0340.txt")]]

/-- The tree of the case [33, 41]. -/
noncomputable def tree12_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0341.txt")

/-- The tree of the case [33, 42]. -/
noncomputable def tree12_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0342.txt")

/-- The tree of the case [33, 55]. -/
noncomputable def tree12_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0343.txt")

/-- The tree of the case [34, 39]. -/
noncomputable def tree12_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0344.txt")

/-- The tree of the case [34, 41]. -/
noncomputable def tree12_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0345.txt")

/-- The tree of the case [34, 42]. -/
noncomputable def tree12_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0346.txt")

/-- The tree of the case [35, 39]. -/
noncomputable def tree12_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0347.txt")

/-- The tree of the case [35, 41]. -/
noncomputable def tree12_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0348.txt")

/-- The tree of the case [35, 42]. -/
noncomputable def tree12_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0349.txt")

/-- The tree of the case [36, 39]. -/
noncomputable def tree12_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0350.txt")

/-- The tree of the case [36, 41]. -/
noncomputable def tree12_17 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0351.txt")

/-- The tree of the case [36, 42]. -/
noncomputable def tree12_18 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0352.txt")

/-- The tree of the case [39, 41]. -/
noncomputable def tree12_19 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0353.txt")

/-- The tree of the case [39, 42]. -/
noncomputable def tree12_20 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0354.txt")

/-- The tree of the case [39, 44]. -/
noncomputable def tree12_21 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0355.txt")

/-- The tree of the case [39, 45]. -/
noncomputable def tree12_22 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0356.txt")

/-- The tree of the case [39, 46]. -/
noncomputable def tree12_23 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0357.txt")

/-- The tree of the case [39, 48]. -/
noncomputable def tree12_24 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0358.txt")

/-- The tree of the case [39, 49]. -/
noncomputable def tree12_25 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0359.txt")

/-- The cases of chunk 12 with their trees. -/
noncomputable def chunk12 : List (List ℕ × Cover.Tree Split) :=
  [([31, 42], tree12_0),
    ([31, 55], tree12_1),
    ([32, 39], tree12_2),
    ([32, 41], tree12_3),
    ([32, 42], tree12_4),
    ([32, 55], tree12_5),
    ([33, 39], tree12_6),
    ([33, 41], tree12_7),
    ([33, 42], tree12_8),
    ([33, 55], tree12_9),
    ([34, 39], tree12_10),
    ([34, 41], tree12_11),
    ([34, 42], tree12_12),
    ([35, 39], tree12_13),
    ([35, 41], tree12_14),
    ([35, 42], tree12_15),
    ([36, 39], tree12_16),
    ([36, 41], tree12_17),
    ([36, 42], tree12_18),
    ([39, 41], tree12_19),
    ([39, 42], tree12_20),
    ([39, 44], tree12_21),
    ([39, 45], tree12_22),
    ([39, 46], tree12_23),
    ([39, 48], tree12_24),
    ([39, 49], tree12_25)]

theorem chunk12_ok : chunk12.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.SevenInterior.Trees
