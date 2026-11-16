module

public import Heilbronn.C1.ZeroLowerPairs
public import Heilbronn.C1.ZeroLowerTrees

/-! # Zero-lower C1: finite facts about the word cases (`hand/C1_ZERO_LOWER.md` §5)

Decidable statements about the eleven zero-lower words and the retained cases, each checked by
`decide +kernel`: the word table of `C1_ZERO_LOWER:claim-words` (`wordTableB_true`), the radial
separating anchor of (14) (`radial_words`), the regions of the words (`word_region`), witnesses
for the region counts of the retained cases (`keys_one`, `keys_two`, `keys_three`), the anchor
triples (`lexTriples_valid`, `lexTriples_anchor`), and the filters of §5 with the theorem that a
nondecreasing word tuple passing them is one of the 112 retained cases (`filters_keys`). -/

@[expose] public section

namespace Heilbronn.C1ZeroLower

open Cover Model

/-! ### Finite facts about the cases -/

theorem keys_len : ∀ ks ∈ Trees.caseKeys, ks.length = 4 ∧ ∀ a : Fin 4, kw ks a < 11 := by
  decide +kernel

theorem keys_one : ∀ ks ∈ Trees.caseKeys, ∀ r : Fin 4, 1 ≤ cnt ks r →
    ∃ a : Fin 4, cat (kw ks a) = r := by
  decide +kernel

theorem keys_two : ∀ ks ∈ Trees.caseKeys, ∀ r : Fin 4, 2 ≤ cnt ks r →
    ∃ a b : Fin 4, a ≠ b ∧ cat (kw ks a) = r ∧ cat (kw ks b) = r := by
  decide +kernel

theorem keys_three : ∀ ks ∈ Trees.caseKeys, 3 ≤ cnt ks 2 →
    ∃ a b e : Fin 4, a ≠ b ∧ a ≠ e ∧ b ≠ e ∧ cat (kw ks a) = 2 ∧ cat (kw ks b) = 2 ∧
      cat (kw ks e) = 2 := by
  decide +kernel

/-- The signs that determine the region of each zero-lower word. -/
theorem word_region : ∀ w : Fin 11,
    (cat w = 0 → wsign w 4 1 = true ∧ wsign w 1 2 = true ∧ wsign w 2 3 = true ∧
      wsign w 3 4 = true) ∧
    (cat w = 1 → wsign w 1 2 = false ∧ wsign w 0 2 = false) ∧
    (cat w = 2 → wsign w 2 3 = false) ∧
    (cat w = 3 → wsign w 3 4 = false ∧ wsign w 0 3 = true) ∧ cat w < 4 := by
  decide +kernel

/-- The finite part of `C1_ZERO_LOWER:claim-words`, as a Boolean test: a sign vector at the five
anchors (`bᵤᵥ` the truth of `[VᵤVᵥX] > 0`, `u < v`) with `[OCX] > 0`, `[OHX] < 0`, `[HCX] > 0`
and the prefix implications of the radial order is one of the eleven zero-lower words. -/
def wordTableB (b01 b02 b03 b04 b12 b13 b14 b23 b24 b34 : Bool) : Bool :=
  !(b01 && !b04 && !b14 && (!b03 || b02) && (!b13 || b12) && (!b24 || b23) && (b02 || b24) &&
    (b12 || !b02) && (b03 || b34) && (b13 || !b03) && (b23 || !b13) && (b34 || !b24)) ||
  (List.range 11).any fun w => (wsign w 0 1 == b01 && (wsign w 0 2 == b02 &&
    (wsign w 0 3 == b03 && (wsign w 0 4 == b04 && (wsign w 1 2 == b12 && (wsign w 1 3 == b13 &&
    (wsign w 1 4 == b14 && (wsign w 2 3 == b23 && (wsign w 2 4 == b24 && (wsign w 3 4 == b34 &&
    (wsign w 1 0 == !b01 && (wsign w 2 0 == !b02 && (wsign w 3 0 == !b03 &&
    (wsign w 4 0 == !b04 && (wsign w 2 1 == !b12 && (wsign w 3 1 == !b13 &&
    (wsign w 4 1 == !b14 && (wsign w 3 2 == !b23 && (wsign w 4 2 == !b24 &&
    wsign w 4 3 == !b34)))))))))))))))))))

theorem wordTableB_true : ∀ b01 b02 b03 b04 b12 b13 b14 b23 b24 b34 : Bool,
    wordTableB b01 b02 b03 b04 b12 b13 b14 b23 b24 b34 = true := by
  decide +kernel

theorem word_table (b01 b02 b03 b04 b12 b13 b14 b23 b24 b34 : Bool)
    (c1 : b01 = true) (c2 : b04 = false) (c3 : b14 = false) (c4 : b03 = true → b02 = true)
    (c5 : b13 = true → b12 = true) (c6 : b24 = true → b23 = true) (c7 : b02 = false → b24 = true)
    (c8 : b12 = false → b02 = false) (c9 : b03 = false → b34 = true)
    (c10 : b13 = false → b03 = false) (c11 : b23 = false → b13 = false)
    (c12 : b34 = false → b24 = false) :
    ∃ w, w < 11 ∧ wsign w 0 1 = b01 ∧ wsign w 0 2 = b02 ∧ wsign w 0 3 = b03 ∧
      wsign w 0 4 = b04 ∧ wsign w 1 2 = b12 ∧ wsign w 1 3 = b13 ∧ wsign w 1 4 = b14 ∧
      wsign w 2 3 = b23 ∧ wsign w 2 4 = b24 ∧ wsign w 3 4 = b34 ∧
      wsign w 1 0 = !b01 ∧ wsign w 2 0 = !b02 ∧ wsign w 3 0 = !b03 ∧ wsign w 4 0 = !b04 ∧
      wsign w 2 1 = !b12 ∧ wsign w 3 1 = !b13 ∧ wsign w 4 1 = !b14 ∧ wsign w 3 2 = !b23 ∧
      wsign w 4 2 = !b24 ∧ wsign w 4 3 = !b34 := by
  have := wordTableB_true b01 b02 b03 b04 b12 b13 b14 b23 b24 b34
  have i1 : ∀ {p q : Bool}, (p = true → q = true) → (!p || q) = true := by decide
  have i2 : ∀ {p q : Bool}, (p = false → q = true) → (p || q) = true := by decide
  have i3 : ∀ {p q : Bool}, (p = false → q = false) → (p || !q) = true := by decide
  have hc : (b01 && !b04 && !b14 && (!b03 || b02) && (!b13 || b12) && (!b24 || b23) &&
      (b02 || b24) && (b12 || !b02) && (b03 || b34) && (b13 || !b03) && (b23 || !b13) &&
      (b34 || !b24)) = true := by
    simp only [c1, c2, c3, i1 c4, i1 c5, i1 c6, i2 c7, i3 c8, i2 c9, i3 c10, i3 c11, i3 c12,
      Bool.not_false, Bool.and_self]
  rw [wordTableB, hc] at this
  simp only [Bool.not_true, Bool.false_or, List.any_eq_true, List.mem_range, Bool.and_eq_true,
    beq_iff_eq] at this
  obtain ⟨w, hw, e⟩ := this
  exact ⟨w, hw, e⟩

/-- The words: for anchor `v` and words with `r_v(a) < r_v(b)`, the next anchor ray
`m = v + r_v(a) + 1` separates the two points. -/
theorem radial_words : ∀ wa wb : Fin 11, ∀ v : Fin 5, wordAt wa v < wordAt wb v →
    (v + wordAt wa v + 1) % 5 ≠ v ∧ ¬(v.val = 1 ∧ (v + wordAt wa v + 1) % 5 = 0) ∧
      ¬(v.val = 4 ∧ (v + wordAt wa v + 1) % 5 = 0) ∧
      wsign wa v ((v + wordAt wa v + 1) % 5) = false ∧
      wsign wb v ((v + wordAt wa v + 1) % 5) = true := by
  decide +kernel

theorem lexTriples_valid : ∀ t ∈ lexTriples, t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧ t.2.2 < 9 := by
  decide +kernel

theorem lexTriples_anchor : ∀ t ∈ lexTriples, t.2.2 < 5 →
    t ∈ [(0, 1, 2), (0, 1, 3), (0, 1, 4), (0, 2, 3), (0, 2, 4), (0, 3, 4), (1, 2, 3), (1, 2, 4),
      (1, 3, 4), (2, 3, 4)] := by
  decide +kernel

/-- (F1) `HCDF` holds at most two points (QUADRILATERAL_HULL Corollary 3). -/
def F1 (ks : List ℕ) : Prop := ∀ a b e : Fin 4, a ≠ b → a ≠ e → b ≠ e →
  ¬(cat (kw ks a) = 0 ∧ cat (kw ks b) = 0 ∧ cat (kw ks e) = 0)
/-- (F2) the fan below `OD` (4). -/
def F2 (ks : List ℕ) : Prop := ∀ a b e : Fin 4, a ≠ b → a ≠ e → b ≠ e →
  ¬(wordAt (kw ks a) 0 = 1 ∧ wordAt (kw ks b) 0 = 1 ∧ wordAt (kw ks e) 0 = 1)
/-- (F3) the fan above `OF` (4). -/
def F3 (ks : List ℕ) : Prop := ∀ a b e : Fin 4, a ≠ b → a ≠ e → b ≠ e →
  ¬(wordAt (kw ks a) 0 = 3 ∧ wordAt (kw ks b) 0 = 3 ∧ wordAt (kw ks e) 0 = 3)
/-- (F4) not four top-cap points (7). -/
def F4 (ks : List ℕ) : Prop := ¬(∀ a : Fin 4, cat (kw ks a) = 2)
/-- (F5) Theorem 2 (i). -/
def F5 (ks : List ℕ) : Prop := ∀ a b : Fin 4, a ≠ b → ¬(cat (kw ks a) = 3 ∧ cat (kw ks b) = 3)
/-- (F6) Theorem 2 (ii), left. -/
def F6 (ks : List ℕ) : Prop := ∀ a b e : Fin 4, a ≠ b → a ≠ e → b ≠ e →
  ¬(cat (kw ks a) = 1 ∧ cat (kw ks b) = 1 ∧ cat (kw ks e) = 3)
/-- (F7) Theorem 2 (ii), top. -/
def F7 (ks : List ℕ) : Prop := ∀ a b e g : Fin 4, a ≠ b → a ≠ e → a ≠ g → b ≠ e → b ≠ g → e ≠ g →
  ¬(cat (kw ks a) = 1 ∧ cat (kw ks b) = 1 ∧ cat (kw ks e) = 2 ∧ cat (kw ks g) = 2)
/-- (F8) Theorem 2 (iii). -/
def F8 (ks : List ℕ) : Prop := ∀ a b e : Fin 4, a ≠ b → a ≠ e → b ≠ e →
  ¬(cat (kw ks a) = 3 ∧ cat (kw ks b) = 2 ∧ cat (kw ks e) = 2)
/-- (F9) Theorem 2 (iv). -/
def F9 (ks : List ℕ) : Prop := ∀ a b e g : Fin 4, a ≠ b → a ≠ e → a ≠ g → b ≠ e → b ≠ g → e ≠ g →
  ¬(cat (kw ks a) = 1 ∧ cat (kw ks b) = 2 ∧ cat (kw ks e) = 2 ∧ cat (kw ks g) = 2)
/-- (F11) `HDF` holds at most one point. -/
def F11 (ks : List ℕ) : Prop := ∀ a b : Fin 4, a ≠ b →
  ¬((wsign (kw ks a) 2 3 && wsign (kw ks a) 3 4 && wsign (kw ks a) 4 2) = true ∧
    (wsign (kw ks b) 2 3 && wsign (kw ks b) 3 4 && wsign (kw ks b) 4 2) = true)
/-- (F12) two upper points are in different sectors (ONE_CORNER_COMPLETION Theorem 2). -/
def F12 (ks : List ℕ) : Prop := ∀ a b : Fin 4, a ≠ b → cat (kw ks a) = 0 → cat (kw ks b) = 0 →
  sector (kw ks a) ≠ sector (kw ks b)
/-- (F13) the upper pair rule agrees with the radial rule. -/
def F13 (ks : List ℕ) : Prop := ∀ a b : Fin 4, a < b → cat (kw ks a) = 0 → cat (kw ks b) = 0 →
  ∀ v : Fin 5, ∀ sg : Bool, upperPair (kw ks a) (kw ks b) v = some sg →
    wordAt (kw ks a) v ≠ wordAt (kw ks b) v → sg = decide (wordAt (kw ks a) v < wordAt (kw ks b) v)

instance (ks : List ℕ) : Decidable (F1 ks) := by unfold F1; infer_instance
instance (ks : List ℕ) : Decidable (F2 ks) := by unfold F2; infer_instance
instance (ks : List ℕ) : Decidable (F3 ks) := by unfold F3; infer_instance
instance (ks : List ℕ) : Decidable (F4 ks) := by unfold F4; infer_instance
instance (ks : List ℕ) : Decidable (F5 ks) := by unfold F5; infer_instance
instance (ks : List ℕ) : Decidable (F6 ks) := by unfold F6; infer_instance
instance (ks : List ℕ) : Decidable (F7 ks) := by unfold F7; infer_instance
instance (ks : List ℕ) : Decidable (F8 ks) := by unfold F8; infer_instance
instance (ks : List ℕ) : Decidable (F9 ks) := by unfold F9; infer_instance
instance (ks : List ℕ) : Decidable (F11 ks) := by unfold F11; infer_instance
instance (ks : List ℕ) : Decidable (F12 ks) := by unfold F12; infer_instance
instance (ks : List ℕ) : Decidable (F13 ks) := by unfold F13; infer_instance

/-- The filters of §5 (the checker's `candidate_cases` and `fan_excluded`; its global capacity
filter is implied by the others and is not needed). -/
def filtersB (ks : List ℕ) : Bool :=
  decide (F1 ks) && decide (F2 ks) && decide (F3 ks) && decide (F4 ks) && decide (F5 ks) &&
    decide (F6 ks) && decide (F7 ks) && decide (F8 ks) && decide (F9 ks) && decide (F11 ks) &&
    decide (F12 ks) && decide (F13 ks)


/-- **The 112 retained cases**: a nondecreasing word tuple passing the filters is one of the
cases of the certificate package. -/
theorem filters_keys : ∀ a b e g : Fin 11, a ≤ b → b ≤ e → e ≤ g →
    filtersB [a.val, b.val, e.val, g.val] = true →
      [a.val, b.val, e.val, g.val] ∈ Trees.caseKeys := by
  decide +kernel


end Heilbronn.C1ZeroLower
