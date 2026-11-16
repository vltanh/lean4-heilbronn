module

public import Heilbronn.C1.ZeroLowerModel

/-! # Splitting a zero-lower sign tree at a sign split

`checkTree_tri_node`: the check of a split on the sign of `[abc]` follows from the checks of its
two children, with the fact `[abc] < 0` resp. `[abc] > 0` added. `scripts/c1_zero_lower/split_chunk.py`
uses it to cut a large tree into several small kernel checks. -/

@[expose] public section

namespace Heilbronn.C1ZeroLower.Trees

open Cover Model

theorem checkTree_tri_node {ks : List ℕ} {fs : List SFact} {a b c : ℕ} {l r : Cover.Tree Split}
    (habc : a < b ∧ b < c ∧ c < 9)
    (hl : checkTree (spec ks) (fs ++ [((a, b, c), false)]) l = true)
    (hr : checkTree (spec ks) (fs ++ [((a, b, c), true)]) r = true) :
    checkTree (spec ks) fs (.node (.tri a b c) [l, r]) = true := by
  have hbr : (spec ks).branches fs (.tri a b c) = [[((a, b, c), false)], [((a, b, c), true)]] := by
    simp [spec, branches, habc, signBranches]
  rw [checkTree_node, hbr, checkChildren_cons, checkChildren_cons, checkChildren_nil, hl, hr]
  rfl

end Heilbronn.C1ZeroLower.Trees
