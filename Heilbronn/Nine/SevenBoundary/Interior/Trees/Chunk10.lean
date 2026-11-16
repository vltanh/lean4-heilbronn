module

public import Heilbronn.Nine.SevenBoundary.Interior.Model
public import Heilbronn.Common.DataReader

/-! # Seven-boundary interior cover, chunk 10

The trees of 25 cases (2461 certificate terms), checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.SevenInterior.Trees

open Cover Model

/-- The tree of the case [26, 29]. -/
noncomputable def tree10_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0267.txt")

/-- The tree of the case [26, 30]. -/
noncomputable def tree10_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0268.txt")

/-- The tree of the case [26, 39]. -/
noncomputable def tree10_2 : Cover.Tree Split :=
  .node (.cut 7 (1 / 2)) [.cert (term_rows% "../../../Data/seven_b/c0269.txt"), .node (.cut 8 (1 / 2)) [.node (.cut 8 (1 / 4)) [.cert (term_rows% "../../../Data/seven_b/c0270.txt"), .node (.cut 8 (3 / 8)) [.cert (term_rows% "../../../Data/seven_b/c0271.txt"), .cert (term_rows% "../../../Data/seven_b/c0272.txt")]], .cert (term_rows% "../../../Data/seven_b/c0273.txt")]]

/-- The tree of the case [26, 41]. -/
noncomputable def tree10_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0274.txt")

/-- The tree of the case [26, 42]. -/
noncomputable def tree10_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0275.txt")

/-- The tree of the case [26, 55]. -/
noncomputable def tree10_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0276.txt")

/-- The tree of the case [27, 28]. -/
noncomputable def tree10_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0277.txt")

/-- The tree of the case [27, 29]. -/
noncomputable def tree10_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0278.txt")

/-- The tree of the case [27, 30]. -/
noncomputable def tree10_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0279.txt")

/-- The tree of the case [27, 39]. -/
noncomputable def tree10_9 : Cover.Tree Split :=
  .node (.cut 7 (1 / 2)) [.cert (term_rows% "../../../Data/seven_b/c0280.txt"), .cert (term_rows% "../../../Data/seven_b/c0281.txt")]

/-- The tree of the case [27, 41]. -/
noncomputable def tree10_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0282.txt")

/-- The tree of the case [27, 42]. -/
noncomputable def tree10_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0283.txt")

/-- The tree of the case [27, 55]. -/
noncomputable def tree10_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0284.txt")

/-- The tree of the case [28, 29]. -/
noncomputable def tree10_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0285.txt")

/-- The tree of the case [28, 30]. -/
noncomputable def tree10_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0286.txt")

/-- The tree of the case [28, 31]. -/
noncomputable def tree10_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0287.txt")

/-- The tree of the case [28, 32]. -/
noncomputable def tree10_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0288.txt")

/-- The tree of the case [28, 33]. -/
noncomputable def tree10_17 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0289.txt")

/-- The tree of the case [28, 34]. -/
noncomputable def tree10_18 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0290.txt")

/-- The tree of the case [28, 35]. -/
noncomputable def tree10_19 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0291.txt")

/-- The tree of the case [28, 36]. -/
noncomputable def tree10_20 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0292.txt")

/-- The tree of the case [28, 41]. -/
noncomputable def tree10_21 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0293.txt")

/-- The tree of the case [28, 42]. -/
noncomputable def tree10_22 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0294.txt")

/-- The tree of the case [28, 44]. -/
noncomputable def tree10_23 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0295.txt")

/-- The tree of the case [28, 45]. -/
noncomputable def tree10_24 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/seven_b/c0296.txt")

/-- The cases of chunk 10 with their trees. -/
noncomputable def chunk10 : List (List ℕ × Cover.Tree Split) :=
  [([26, 29], tree10_0),
    ([26, 30], tree10_1),
    ([26, 39], tree10_2),
    ([26, 41], tree10_3),
    ([26, 42], tree10_4),
    ([26, 55], tree10_5),
    ([27, 28], tree10_6),
    ([27, 29], tree10_7),
    ([27, 30], tree10_8),
    ([27, 39], tree10_9),
    ([27, 41], tree10_10),
    ([27, 42], tree10_11),
    ([27, 55], tree10_12),
    ([28, 29], tree10_13),
    ([28, 30], tree10_14),
    ([28, 31], tree10_15),
    ([28, 32], tree10_16),
    ([28, 33], tree10_17),
    ([28, 34], tree10_18),
    ([28, 35], tree10_19),
    ([28, 36], tree10_20),
    ([28, 41], tree10_21),
    ([28, 42], tree10_22),
    ([28, 44], tree10_23),
    ([28, 45], tree10_24)]

theorem chunk10_ok : chunk10.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.SevenInterior.Trees
