module

public import Heilbronn.Nine.SevenBoundary.Interior.Model

/-! # The finite part of the ray-word lemma

`tableOK_true`: every sign table of a point inside the anchor heptagon (positive edges, opposite
signs for reversed pairs) that satisfies the radial monotonicity at every anchor is the sign table
of one of the 57 words of `Model.words`. Checked by the kernel over the `2^14` diagonal sign
choices.
-/

@[expose] public section

namespace Heilbronn.Nine.SevenInterior.Model

/-- The sign table of a point from its fourteen diagonal signs `b_ij` (`i < j`, the truth of
`[V_i V_j X] > 0`): the heptagon edges are positive, `[V_0 V_6 X] < 0`, and `[V_j V_i X]` has the
opposite sign. -/
def signOf (b02 b03 b04 b05 b13 b14 b15 b16 b24 b25 b26 b35 b36 b46 : Bool) : ℕ → ℕ → Bool
  | 0, 1 => true
  | 0, 2 => b02
  | 0, 3 => b03
  | 0, 4 => b04
  | 0, 5 => b05
  | 0, 6 => false
  | 1, 0 => false
  | 1, 2 => true
  | 1, 3 => b13
  | 1, 4 => b14
  | 1, 5 => b15
  | 1, 6 => b16
  | 2, 0 => !b02
  | 2, 1 => false
  | 2, 3 => true
  | 2, 4 => b24
  | 2, 5 => b25
  | 2, 6 => b26
  | 3, 0 => !b03
  | 3, 1 => !b13
  | 3, 2 => false
  | 3, 4 => true
  | 3, 5 => b35
  | 3, 6 => b36
  | 4, 0 => !b04
  | 4, 1 => !b14
  | 4, 2 => !b24
  | 4, 3 => false
  | 4, 5 => true
  | 4, 6 => b46
  | 5, 0 => !b05
  | 5, 1 => !b15
  | 5, 2 => !b25
  | 5, 3 => !b35
  | 5, 4 => false
  | 5, 6 => true
  | 6, 0 => true
  | 6, 1 => !b16
  | 6, 2 => !b26
  | 6, 3 => !b36
  | 6, 4 => !b46
  | 6, 5 => false
  | _, _ => false

/-- The finite part of the word lemma, as a Boolean test: a sign table satisfying the radial
monotonicity (`[V_i V_{i+m+1} X] > 0 → [V_i V_{i+m} X] > 0`, `1 ≤ m ≤ 4`) is one of the 57
words. -/
def tableOK (b02 b03 b04 b05 b13 b14 b15 b16 b24 b25 b26 b35 b36 b46 : Bool) : Bool :=
  !((List.range 7).all fun i => [1, 2, 3, 4].all fun m =>
      !signOf b02 b03 b04 b05 b13 b14 b15 b16 b24 b25 b26 b35 b36 b46 i ((i + m + 1) % 7) || signOf b02 b03 b04 b05 b13 b14 b15 b16 b24 b25 b26 b35 b36 b46 i ((i + m) % 7)) ||
    (List.range 57).any fun w => (List.range 7).all fun i => (List.range 7).all fun j =>
      i == j || wsign w i j == signOf b02 b03 b04 b05 b13 b14 b15 b16 b24 b25 b26 b35 b36 b46 i j

theorem tableOK_true : ∀ b02 b03 b04 b05 b13 b14 b15 b16 b24 b25 b26 b35 b36 b46 : Bool, tableOK b02 b03 b04 b05 b13 b14 b15 b16 b24 b25 b26 b35 b36 b46 = true := by
  -- sixteen kernel checks, one per value of the first four signs, to bound the memory of each
  intro b02 b03 b04 b05
  cases b02 <;> cases b03 <;> cases b04 <;> cases b05 <;> decide +kernel

end Heilbronn.Nine.SevenInterior.Model
