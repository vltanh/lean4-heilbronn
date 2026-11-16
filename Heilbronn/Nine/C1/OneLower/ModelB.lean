module

public import Heilbronn.Nine.C1.ZeroLowerCover

/-! # Hull words for the one-lower hull packages

Shared by the one-lower packages of the top triangle (`C1OneLowerTopTriangle`), the right top
triangle (`C1OneLowerRightTopTriangle`), the convex top (`C1OneLowerConvexTop`) and the mixed caps
(`C1OneLowerMixedCaps`), whose cover packages are sign-table packages (`Cover.tableSpec` with the
bounds `Package.bnd` and the splits `C1ZeroLower.Model.triBranches`). Computable, kernel-friendly
definitions and their soundness:

* radial words as lists: `hsign n w i j` (`(j - i) mod n ≤ wᵢ`), `hullTable n ws` (the signs of
  every triple with at most one interior point, and the ray-order signs of interior pairs);
* `enumW`: a pruned enumeration of radial words, with `enumW_sound`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerB

open Cover

/-! ### Radial words as lists -/

/-- The sign of `[VᵢVⱼR]` for a point `R` with radial word `w` with respect to an `n`-gon:
`(j - i) mod n ≤ wᵢ`. -/
def hsign (n : ℕ) (w : List ℕ) (i j : ℕ) : Bool := ((j + n - i) % n).ble (w.getD i 0)

/-- The three edge tests of the triangle `V_a V_b V_c` for a point with radial word `w`: the
point is strictly inside the (counterclockwise) triangle. -/
def hinside (n : ℕ) (w : List ℕ) (a b c : ℕ) : Bool :=
  hsign n w a b && hsign n w b c && hsign n w c a

/-- The ray-order signs of the interior pair `(a, b)` (point indices `n + a`, `n + b`): at each
vertex `v` where the words differ, `sgn[V_v A B] = sgn(r_v(B) - r_v(A))`. -/
def raySigns (n : ℕ) (ws : List (List ℕ)) (a b : ℕ) : List SFact :=
  (List.range n).filterMap fun v =>
    let x := (ws.getD a []).getD v 0
    let y := (ws.getD b []).getD v 0
    if x = y then none else some ((v, n + a, n + b), decide (x < y))

/-- The sign of an increasing triple with at most one interior point (hull triples positive; two
hull vertices and an interior point from its word). -/
def hullTripleSign (n : ℕ) (ws : List (List ℕ)) (t : ℕ × ℕ × ℕ) : Option Bool :=
  if t.2.2 < n then some true
  else if t.2.1 < n then some (hsign n (ws.getD (t.2.2 - n) []) t.1 t.2.1)
  else none

/-- The interior index pairs `a < b` below `m`, in lexicographic order. -/
def idxPairs (m : ℕ) : List (ℕ × ℕ) :=
  (List.range m).flatMap fun a => ((List.range m).filter fun b => a < b).map fun b => (a, b)

/-- The initially known signs of a hull cell: every lexicographic triple of the nine points with
at most one interior point, then the ray-order signs of the interior pairs. -/
def hullTable (n : ℕ) (ws : List (List ℕ)) : List SFact :=
  (lexTriples 9).filterMap (fun t => (hullTripleSign n ws t).map fun sg => (t, sg)) ++
    (idxPairs ws.length).flatMap fun p => raySigns n ws p.1 p.2

/-! ### A pruned enumeration of radial words -/

/-- The complement relation of radial words (`C1OneLowerTopCap.HullAntisymm`) for the pair of
positions `a < b` of an `n`-word. -/
def pairOK (n : ℕ) (w : List ℕ) (a b : ℕ) : Bool :=
  decide (b - a ≤ w.getD a 0) == decide (w.getD b 0 < n - (b - a))

/-- The complement relation between the last position of `w` and every earlier one. -/
def lastOK (n : ℕ) (w : List ℕ) : Bool :=
  (List.range (w.length - 1)).all fun a => pairOK n w a (w.length - 1)

/-- Every extension of `w` by `k` entries in `{1, …, m}` that satisfies `lastOK` at each step
satisfies `p` (a pruned enumeration). -/
def enumW (n m : ℕ) (p : List ℕ → Bool) : ℕ → List ℕ → Bool
  | 0, w => p w
  | k + 1, w => (List.range m).all fun a => !(lastOK n (w ++ [a + 1])) || enumW n m p k (w ++ [a + 1])

theorem enumW_sound (n m : ℕ) (p : List ℕ → Bool) :
    ∀ (k : ℕ) (w u : List ℕ), enumW n m p k w = true → u.length = k →
      (∀ x ∈ u, 1 ≤ x ∧ x ≤ m) → (∀ i, i < k → lastOK n (w ++ u.take (i + 1)) = true) →
      p (w ++ u) = true := by
  intro k
  induction k with
  | zero =>
    intro w u h hu _ _
    rw [List.length_eq_zero_iff] at hu; subst hu
    simpa [enumW] using h
  | succ k ih =>
    intro w u h hu hx hl
    obtain ⟨x, u', rfl⟩ : ∃ x u', u = x :: u' := by
      rcases u with _ | ⟨x, u'⟩
      · simp at hu
      · exact ⟨x, u', rfl⟩
    simp only [List.length_cons, add_left_inj] at hu
    have hx1 := hx x (List.mem_cons_self ..)
    simp only [enumW, List.all_eq_true, List.mem_range] at h
    have h1 := h (x - 1) (by omega)
    rw [show x - 1 + 1 = x by omega] at h1
    have l0 := hl 0 (by omega)
    simp only [zero_add, List.take_succ_cons, List.take_zero] at l0
    rw [l0, Bool.not_true, Bool.false_or] at h1
    have := ih (w ++ [x]) u' h1 hu (fun y hy => hx y (List.mem_cons_of_mem _ hy)) (by
      intro i hi
      have := hl (i + 1) (by omega)
      simpa [List.take_succ_cons] using this)
    simpa using this

end Heilbronn.Nine.C1OneLowerB
