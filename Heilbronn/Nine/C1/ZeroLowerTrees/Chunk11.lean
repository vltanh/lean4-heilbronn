module

public import Heilbronn.Nine.C1.ZeroLowerModel
public import Heilbronn.Common.DataReader

/-! # Zero-lower C1 cover, chunk 11

The sign trees of 1 word cases (55 certificate terms), checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

/-- The sign tree of the case [3, 3, 4, 10]. -/
noncomputable def tree11_0 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/c1_zero_lower/c231.txt")

/-- The cases of chunk 11 with their trees. -/
noncomputable def chunk11 : List (List ℕ × Cover.Tree Split) :=
  [([3, 3, 4, 10], tree11_0)]

theorem chunk11_ok : chunk11.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1ZeroLower.Trees
