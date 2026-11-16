module

public import Heilbronn.C1.OneLower.CoverCommon

/-! # Radial words of a convex polygon (`hand/C1_ONE_LOWER_TOP_CAP.md` §3, shared by the one-lower group)

Moved from `Heilbronn.C1.OneLower.TopCap` (same namespace `Heilbronn.C1OneLowerTopCap`, same
names) so that the certificate modules can be imported by the notes' main files. Radial words of
a point with respect to a convex polygon `V₀, …, V_{n-1}`: `HullWord`, `hullSign` (the checkers'
`sign`), `hullInside` (`inside`), `HasHullWord` (geometric meaning (12)), `HullAntisymm` (13),
`ConvexPolygon`, `interiorWords`; `hullTriples`, `insideCount`; `AtMostInside` (capacity); the
upper-pair rule `sameSector`, `upperPairSign`, `upperPairConflict` (15). General results:
`hasHullWord_inside_iff`, `exists_hullWord` ((12)–(13)), `interiorWords_card_six`, `eq14` (the
ray-order rule (14)).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLowerTopCap

open Heilbronn.C1


/-- A radial word `r = (r₀, …, r_{n-1})` of a point with respect to a polygon `V₀, …, V_{n-1}`. -/
abbrev HullWord (n : ℕ) := Fin n → ℕ

/-- The checkers' `sign(word, i, j)`: `(j - i) mod n ≤ rᵢ`. For a point with word `r` this is the
truth value of `[VᵢVⱼR] > 0` (`HasHullWord`). -/
def hullSign {n : ℕ} (r : HullWord n) (i j : Fin n) : Bool := decide ((j - i : Fin n).val ≤ r i)

/-- The checkers' `inside(word, (a, b, c))`: the three edge tests of the triangle `V_a V_b V_c`
(given in counterclockwise cyclic order) are positive, i.e. the point is strictly inside it. -/
def hullInside {n : ℕ} (r : HullWord n) (a b c : Fin n) : Bool :=
  hullSign r a b && hullSign r b c && hullSign r c a

/-- `R` has the radial word `r` with respect to the polygon `V` ((12) of the note): for all
vertices `i ≠ j`, `[VᵢVⱼR] > 0` exactly when `(j - i) mod n ≤ rᵢ`. -/
def HasHullWord {n : ℕ} (V : Fin n → Point) (R : Point) (r : HullWord n) : Prop :=
  ∀ i j : Fin n, i ≠ j → (0 < sarea (V i) (V j) R ↔ hullSign r i j = true)

/-- The complement relation (13): `(j ≤ rᵢ) ↔ (n - j > r_{i+j})` for `j = 1, …, n - 1`, indices
mod `n` (reversing a directed diagonal). -/
def HullAntisymm {n : ℕ} (r : HullWord n) : Prop :=
  ∀ i j : Fin n, (j : ℕ) ≠ 0 → ((j : ℕ) ≤ r i ↔ r (i + j) < n - (j : ℕ))

instance {n : ℕ} (r : HullWord n) : Decidable (HullAntisymm r) := by
  unfold HullAntisymm; infer_instance

/-- `V₀, …, V_{n-1}` is a convex polygon in counterclockwise order: every increasing triple of
vertices is counterclockwise. -/
def ConvexPolygon {n : ℕ} (V : Fin n → Point) : Prop :=
  ∀ i j k : Fin n, i < j → j < k → 0 < sarea (V i) (V j) (V k)

/-- The words of interior points: entries in `{1, …, n - 2}` (the two neighbouring hull-edge
tests) satisfying (13). For `n = 6` there are 26 (`interiorWords_card_six`). -/
def interiorWords (n : ℕ) : Finset (Fin n → Fin (n - 1)) :=
  Finset.univ.filter fun r => (∀ i, 1 ≤ (r i : ℕ)) ∧ HullAntisymm fun i => (r i : ℕ)

/-- The increasing index triples `a < b < c` of `Fin n`, in lexicographic order (the checkers'
`combinations(range(n), 3)`). -/
def hullTriples (n : ℕ) : List (Fin n × Fin n × Fin n) :=
  (List.finRange n).flatMap fun a => (List.finRange n).flatMap fun b =>
    ((List.finRange n).filter fun c => decide (a < b) && decide (b < c)).map fun c => (a, b, c)

/-- The number of the words in `ws` that place their point inside the triangle `t`. -/
def insideCount {n : ℕ} (ws : List (HullWord n)) (t : Fin n × Fin n × Fin n) : ℕ :=
  ws.countP fun r => hullInside r t.1 t.2.1 t.2.2

/-- Capacity: at most `k` of the points `Ps i` lie strictly inside the counterclockwise triangle
`ABC`. "Capacity one" is `AtMostInside 1`. -/
def AtMostInside {m : ℕ} (k : ℕ) (A B C : Point) (Ps : Fin m → Point) : Prop :=
  ∀ S : Finset (Fin m), (∀ i ∈ S, InTriangle (Ps i) A B C) → S.card ≤ k

/-- Two upper points with words `p, q` are in the same sector of both diagonals `HD`, `CF` of the
quadrilateral `HCDF`, whose vertices have indices `iH, iC, iD, iF` in the polygon. -/
def sameSector {n : ℕ} (iH iC iD iF : Fin n) (p q : HullWord n) : Bool :=
  (hullSign p iH iD == hullSign q iH iD) && (hullSign p iC iF == hullSign q iC iF)

/-- The upper-pair rule ((15) and the isolated-vertex table of Section 3; the checkers'
`upper_pair_signs`): for two points of `HCDF` with words `p, q`, not in the same sector, the forced
sign of `[V_v P Q]` at each vertex `v ∈ {H, C, D, F}` (`true` = positive).

* Both diagonals separate the pair: `sgn[PQA] = -sgn[ABP]`, `sgn[PQB] = sgn[ABP]` for `A → B`
  equal to `H → D` and to `C → F`.
* Only `CF` separates (common triangle `HDF` or `HCD`): the line `PQ` isolates `F`, resp. `C`;
  only `HD` separates (common triangle `HCF` or `CDF`): it isolates `H`, resp. `D`. The sign of
  the isolated vertex is the one given by (15) for the separating diagonal, and the other three
  signs are its negatives.

The value is `none` for other vertices and for a pair in the same sector. -/
def upperPairSign {n : ℕ} (iH iC iD iF : Fin n) (p q : HullWord n) (v : Fin n) : Option Bool :=
  let pHD := hullSign p iH iD
  let qHD := hullSign q iH iD
  let pCF := hullSign p iC iF
  let qCF := hullSign q iC iF
  if pHD = qHD ∧ pCF = qCF then none
  else if v ≠ iH ∧ v ≠ iC ∧ v ≠ iD ∧ v ≠ iF then none
  else if pHD ≠ qHD ∧ pCF ≠ qCF then
    some (if v = iH then !pHD else if v = iD then pHD else if v = iC then !pCF else pCF)
  else if pHD = qHD then
    -- only `CF` separates: common triangle `HDF` (`pHD`) or `HCD`, isolated vertex `F` or `C`
    let iso := if pHD then iF else iC
    let side := if pHD then pCF else !pCF
    some (if v = iso then side else !side)
  else
    -- only `HD` separates: common triangle `HCF` (`pCF`) or `CDF`, isolated vertex `H` or `D`
    let iso := if pCF then iH else iD
    let side := if pCF then !pHD else pHD
    some (if v = iso then side else !side)

/-- A sign conflict between the upper-pair rule and the ray-order rule (14): at some vertex where
the words differ, the forced sign of `[V_v P Q]` is not `sgn(q_v - p_v)`. -/
def upperPairConflict {n : ℕ} (iH iC iD iF : Fin n) (p q : HullWord n) : Bool :=
  (List.finRange n).any fun v =>
    (p v != q v) &&
      match upperPairSign iH iC iD iF p q v with
      | some b => b != decide (p v < q v)
      | none => false

/-! ### Index arithmetic and the radial identity -/

section Offsets

open Fin.NatCast

/-- Helper: the value of `i + m` for a natural offset `m`. -/
theorem val_add_natCast {n : ℕ} [NeZero n] (i : Fin n) (m : ℕ) :
    (i + (m : Fin n)).val = (i.val + m) % n := by
  simp [Fin.val_add]

/-- Helper: a natural number below `2n` reduces modulo `n` by at most one subtraction. -/
theorem mod_of_lt_two_mul {a n : ℕ} (h : a < 2 * n) :
    (a < n ∧ a % n = a) ∨ (n ≤ a ∧ a % n = a - n) := by
  rcases Nat.lt_or_ge a n with h1 | h1
  · exact Or.inl ⟨h1, Nat.mod_eq_of_lt h1⟩
  · exact Or.inr ⟨h1, by rw [Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (by omega)]⟩

/-- Helper: the value of `i + m` for an offset `m < n`, without the modulus. -/
theorem val_add_offset {n : ℕ} [NeZero n] (i : Fin n) {m : ℕ} (hm : m < n) :
    (i.val + m < n ∧ (i + (m : Fin n)).val = i.val + m) ∨
      (n ≤ i.val + m ∧ (i + (m : Fin n)).val = i.val + m - n) := by
  rw [val_add_natCast]
  have := i.isLt
  rcases mod_of_lt_two_mul (a := i.val + m) (n := n) (by omega) with ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact Or.inl ⟨h1, h2⟩
  · exact Or.inr ⟨h1, h2⟩

/-- Helper: `i - 1` is the offset `n - 1` from `i`. -/
theorem sub_one_eq_add {n : ℕ} [NeZero n] (i : Fin n) : i - 1 = i + ((n - 1 : ℕ) : Fin n) := by
  have h : ((n - 1 : ℕ) : Fin n) + 1 = 0 := by
    apply Fin.ext
    rw [Fin.val_add, Fin.val_natCast, Fin.coe_ofNat_eq_mod, ← Nat.add_mod,
      Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.2 (NeZero.ne n)), Nat.mod_self, Fin.val_zero]
  rw [eq_neg_of_add_eq_zero_left h, sub_eq_add_neg]

/-- Helper: `i + 1` is the offset `1` from `i`. -/
theorem add_one_eq_add {n : ℕ} [NeZero n] (i : Fin n) : i + 1 = i + ((1 : ℕ) : Fin n) := rfl

/-- Helper: every vertex other than `i` is an offset `m ∈ [1, n-1]` from `i`. -/
theorem exists_offset {n : ℕ} [NeZero n] {i j : Fin n} (hij : i ≠ j) :
    ∃ m : ℕ, 1 ≤ m ∧ m < n ∧ j = i + (m : Fin n) := by
  refine ⟨(j - i).val, ?_, (j - i).isLt, ?_⟩
  · rcases Nat.eq_zero_or_pos (j - i).val with h | h
    · exact absurd (sub_eq_zero.1 (Fin.ext h)).symm hij
    · exact h
  · rw [Fin.cast_val_eq_self, add_sub_cancel]

/-- Helper: the offset of `i + m` from `i` is `m`. -/
theorem val_add_sub_self {n : ℕ} [NeZero n] (i : Fin n) {m : ℕ} (hm : m < n) :
    ((i + (m : Fin n)) - i).val = m := by
  rw [add_sub_cancel_left, Fin.val_natCast, Nat.mod_eq_of_lt hm]

/-- Helper: a nonzero offset gives a different vertex. -/
theorem ne_add_offset {n : ℕ} [NeZero n] (i : Fin n) {m : ℕ} (h1 : 1 ≤ m) (hm : m < n) :
    i ≠ i + (m : Fin n) := by
  intro h
  have := val_add_sub_self i hm
  rw [← h, sub_self, Fin.val_zero] at this
  omega

/-- Helper: in a polygon with at least three vertices, `i + 1 ≠ i - 1`. -/
theorem add_one_ne_sub_one {n : ℕ} [NeZero n] (hn : 3 ≤ n) (i : Fin n) : i + 1 ≠ i - 1 := by
  rw [add_one_eq_add, sub_one_eq_add]
  intro h
  have h' := congrArg Fin.val h
  have := i.isLt
  rcases val_add_offset i (m := 1) (by omega) with ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
    rcases val_add_offset i (m := n - 1) (by omega) with ⟨b1, b2⟩ | ⟨b1, b2⟩ <;> omega

/-- Helper: the radial identity at a vertex `P` with the linear form
`ℓ(X) = [PUX] - [PWX]`: `[PAB] ℓ(M) = [PAM] ℓ(B) + [PMB] ℓ(A)`. -/
theorem radial_identity (P A B M U W : Point) :
    sarea P A B * (sarea P U M - sarea P W M) =
      sarea P A M * (sarea P U B - sarea P W B) + sarea P M B * (sarea P U A - sarea P W A) := by
  unfold sarea; ring

/-- Helper: transitivity of the ray order in the open half-plane `ℓ > 0` at `P`
(`ℓ(X) = [PUX] - [PWX]`): if `PA, PM, PB` lie in it, `[PAM] ≥ 0` and `[PMB] > 0`, then
`[PAB] > 0`. -/
theorem radial_pos {P A B M U W : Point} (hA : 0 < sarea P U A - sarea P W A)
    (hB : 0 ≤ sarea P U B - sarea P W B) (hM : 0 < sarea P U M - sarea P W M)
    (h1 : 0 ≤ sarea P A M) (h2 : 0 < sarea P M B) : 0 < sarea P A B := by
  have e := radial_identity P A B M U W
  have : 0 < sarea P A B * (sarea P U M - sarea P W M) := by
    rw [e]; exact add_pos_of_nonneg_of_pos (mul_nonneg h1 hB) (mul_pos h2 hA)
  exact pos_of_mul_pos_left this hM.le

/-- Helper: the negative form of `radial_pos`: if `[PAM] < 0`, `[PMB] ≤ 0` and `PA, PB, PM` lie in
the half-plane `ℓ > 0`, then `[PAB] < 0`. -/
theorem radial_neg {P A B M U W : Point} (hA : 0 ≤ sarea P U A - sarea P W A)
    (hB : 0 < sarea P U B - sarea P W B) (hM : 0 < sarea P U M - sarea P W M)
    (h1 : sarea P A M < 0) (h2 : sarea P M B ≤ 0) : sarea P A B < 0 := by
  have e := radial_identity P A B M U W
  have : sarea P A B * (sarea P U M - sarea P W M) < 0 := by
    rw [e]
    exact add_neg_of_neg_of_nonpos (mul_neg_of_neg_of_pos h1 hB) (mul_nonpos_of_nonpos_of_nonneg h2 hA)
  by_contra hc
  push Not at hc
  have := mul_nonneg hc hM.le
  linarith

/-- Helper (cyclic positivity): in a convex polygon, the vertices `a, a + p, a + q` with
`0 < p < q < n` are counterclockwise (a rotation of an increasing triple). -/
theorem cyc_pos {n : ℕ} [NeZero n] {V : Fin n → Point} (hV : ConvexPolygon V) (a : Fin n)
    {p q : ℕ} (hp : 0 < p) (hpq : p < q) (hq : q < n) :
    0 < sarea (V a) (V (a + (p : Fin n))) (V (a + (q : Fin n))) := by
  have ha := a.isLt
  rcases val_add_offset a (m := p) (by omega) with ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
    rcases val_add_offset a (m := q) hq with ⟨b1, b2⟩ | ⟨b1, b2⟩
  · exact hV _ _ _ (Fin.lt_def.2 (by rw [a2]; omega)) (Fin.lt_def.2 (by rw [a2, b2]; omega))
  · rw [sarea_cycle]
    exact hV _ _ _ (Fin.lt_def.2 (by rw [b2]; omega)) (Fin.lt_def.2 (by rw [a2]; omega))
  · omega
  · rw [← sarea_cycle]
    exact hV _ _ _ (Fin.lt_def.2 (by rw [a2, b2]; omega)) (Fin.lt_def.2 (by rw [b2]; omega))

/-- Helper: at a vertex `Vᵢ` of a convex polygon, every other vertex lies in the open half-plane
`ℓ > 0`, `ℓ(X) = [VᵢV_{i+1}X] - [VᵢV_{i-1}X]`. -/
theorem ell_vertex_pos {n : ℕ} [NeZero n] (hn : 3 ≤ n) {V : Fin n → Point}
    (hV : ConvexPolygon V) (i : Fin n) {m : ℕ} (h1 : 1 ≤ m) (h2 : m < n) :
    0 < sarea (V i) (V (i + 1)) (V (i + (m : Fin n))) -
      sarea (V i) (V (i - 1)) (V (i + (m : Fin n))) := by
  rw [add_one_eq_add, sub_one_eq_add]
  have z : ∀ A B : Point, sarea A B B = 0 := fun A B => by unfold sarea; ring
  rcases Nat.lt_or_ge 1 m with hm1 | hm1
  · have t1 := cyc_pos hV i (p := 1) (q := m) (by omega) hm1 h2
    rcases Nat.lt_or_ge m (n - 1) with hm2 | hm2
    · have t2 := cyc_pos hV i (p := m) (q := n - 1) (by omega) hm2 (by omega)
      rw [sarea_swap₂₃] at t2
      linarith
    · obtain rfl : m = n - 1 := by omega
      rw [z]; linarith
  · obtain rfl : m = 1 := by omega
    have t2 := cyc_pos hV i (p := 1) (q := n - 1) (by omega) (by omega) (by omega)
    rw [sarea_swap₂₃] at t2
    rw [z]; linarith

/-- Helper: the word-entry form of `HasHullWord`: for an offset `1 ≤ m < n`,
`[VᵢV_{i+m}R] > 0 ↔ m ≤ rᵢ`. -/
theorem HasHullWord.pos_iff {n : ℕ} [NeZero n] {V : Fin n → Point} {R : Point} {r : HullWord n}
    (hr : HasHullWord V R r) (i : Fin n) {m : ℕ} (h1 : 1 ≤ m) (h2 : m < n) :
    0 < sarea (V i) (V (i + (m : Fin n))) R ↔ m ≤ r i := by
  rw [hr i _ (ne_add_offset i h1 h2), hullSign, decide_eq_true_eq, val_add_sub_self i h2]

/-- Helper: for a point whose word entry `rᵢ` is in `{1, …, n - 2}`, the ray `VᵢR` is in the
half-plane `ℓ > 0` at `Vᵢ`. -/
theorem HasHullWord.ell_pos {n : ℕ} [NeZero n] {V : Fin n → Point} {R : Point} {r : HullWord n}
    (hr : HasHullWord V R r) (i : Fin n) (hb : 1 ≤ r i ∧ r i ≤ n - 2) :
    0 < sarea (V i) (V (i + 1)) R - sarea (V i) (V (i - 1)) R := by
  have e1 := hr.pos_iff i (m := 1) le_rfl (by omega)
  have e2 := hr.pos_iff i (m := n - 1) (by omega) (by omega)
  rw [← add_one_eq_add] at e1
  rw [← sub_one_eq_add] at e2
  have a := e1.2 hb.1
  have b : ¬ 0 < sarea (V i) (V (i - 1)) R := fun h => by have := e2.1 h; omega
  push Not at b
  linarith

end Offsets

/-- Helper: for a point with word `r`, `hullInside r a b c` (with `a < b < c`) says exactly that it
is strictly inside the triangle `V_a V_b V_c` ("containment is determined by its three edge
signs"). -/
theorem hasHullWord_inside_iff {n : ℕ} {V : Fin n → Point} {R : Point} {r : HullWord n}
    (hr : HasHullWord V R r) {a b e : Fin n} (hab : a < b) (hbe : b < e) :
    hullInside r a b e = true ↔ InTriangle R (V a) (V b) (V e) := by
  simp only [hullInside, Bool.and_eq_true, InTriangle, ← hr a b hab.ne, ← hr b e hbe.ne,
    ← hr e a (hab.trans hbe).ne', and_assoc]

/-- Helper (the general form of (12)–(13)): a point strictly inside a convex polygon, with no zero
area against two vertices, has a radial word with entries in `{1, …, n - 2}` satisfying (13).
"Convexity makes the positive signs consecutive, and the two neighboring hull-edge tests give
`1 ≤ rᵢ ≤ n - 2`." `hand/C1_ONE_LOWER_TOP_CAP.md`, lines 211-227. -/
theorem exists_hullWord {n : ℕ} [NeZero n] {V : Fin n → Point} (hV : ConvexPolygon V)
    {R : Point} (hin : ∀ i : Fin n, 0 < sarea (V i) (V (i + 1)) R)
    (hne : ∀ i j : Fin n, i ≠ j → sarea (V i) (V j) R ≠ 0) :
    ∃ r : HullWord n, HasHullWord V R r ∧ (∀ i, 1 ≤ r i ∧ r i ≤ n - 2) ∧ HullAntisymm r := by
  classical
  open Fin.NatCast in
  have hn : 3 ≤ n := by
    by_contra hlt
    have h0 : 1 ≤ n := Nat.one_le_iff_ne_zero.2 (NeZero.ne n)
    interval_cases n
    · have := hin 0
      simp only [Fin.isValue, zero_add] at this
      unfold sarea at this
      simp at this
    · have h0 := hin 0
      have h1 := hin 1
      simp only [Fin.isValue, zero_add] at h0 h1
      rw [show (1 : Fin 2) + 1 = 0 from rfl, sarea_swap₁₂] at h1
      linarith
  -- `Pos i m`: `[VᵢV_{i+m}R] > 0`
  have hfirst : ∀ i : Fin n, 0 < sarea (V i) (V (i + ((1 : ℕ) : Fin n))) R := fun i => by
    rw [← add_one_eq_add]; exact hin i
  have hlast : ∀ i : Fin n, ¬ 0 < sarea (V i) (V (i + ((n - 1 : ℕ) : Fin n))) R := fun i => by
    rw [← sub_one_eq_add]
    have := hin (i - 1)
    rw [sub_add_cancel, sarea_swap₁₂] at this
    intro h
    linarith
  have hellR : ∀ i : Fin n, 0 < sarea (V i) (V (i + 1)) R - sarea (V i) (V (i - 1)) R := fun i => by
    have a := hin i
    have b := hin (i - 1)
    rw [sub_add_cancel, sarea_swap₁₂] at b
    linarith
  have hstep : ∀ i : Fin n, ∀ m : ℕ, 1 ≤ m → m + 1 < n →
      ¬ 0 < sarea (V i) (V (i + (m : Fin n))) R →
      ¬ 0 < sarea (V i) (V (i + ((m + 1 : ℕ) : Fin n))) R := by
    intro i m h1 h2 hm
    push Not at hm ⊢
    have hA := ell_vertex_pos hn hV i (m := m + 1) (by omega) h2
    have hM := ell_vertex_pos hn hV i (m := m) h1 (by omega)
    have hAM := cyc_pos hV i (p := m) (q := m + 1) (by omega) (by omega) h2
    rw [sarea_swap₂₃] at hAM
    exact (radial_neg (U := V (i + 1)) (W := V (i - 1)) hA.le (hellR i) hM (by linarith) hm).le
  have hex : ∀ i : Fin n, ∃ m : ℕ, ¬ 0 < sarea (V i) (V (i + ((m + 1 : ℕ) : Fin n))) R :=
    fun i => ⟨n - 2, by rw [show n - 2 + 1 = n - 1 by omega]; exact hlast i⟩
  let r : HullWord n := fun i => Nat.find (hex i)
  have hkey : ∀ i : Fin n, ∀ m : ℕ, 1 ≤ m → m < n →
      (0 < sarea (V i) (V (i + (m : Fin n))) R ↔ m ≤ r i) := by
    intro i m h1 h2
    constructor
    · intro hpos
      by_contra hc
      push Not at hc
      have hneg : ∀ t : ℕ, r i + 1 + t < n →
          ¬ 0 < sarea (V i) (V (i + ((r i + 1 + t : ℕ) : Fin n))) R := by
        intro t
        induction t with
        | zero => intro _; exact Nat.find_spec (hex i)
        | succ t ih =>
          intro ht
          exact hstep i (r i + 1 + t) (by omega) (by omega) (ih (by omega))
      have := hneg (m - (r i + 1)) (by omega)
      rw [show r i + 1 + (m - (r i + 1)) = m by omega] at this
      exact this hpos
    · intro hle
      have := Nat.find_min (hex i) (m := m - 1) (by simp only [r] at hle; omega)
      push Not at this
      rwa [show m - 1 + 1 = m by omega] at this
  have hbd : ∀ i : Fin n, 1 ≤ r i ∧ r i ≤ n - 2 := by
    intro i
    refine ⟨?_, Nat.find_min' (hex i) (by rw [show n - 2 + 1 = n - 1 by omega]; exact hlast i)⟩
    have := (hkey i 1 le_rfl (by omega)).1 (hfirst i)
    exact this
  have hword : HasHullWord V R r := by
    intro i j hij
    obtain ⟨m, h1, h2, rfl⟩ := exists_offset hij
    rw [hullSign, decide_eq_true_eq, val_add_sub_self i h2]
    exact hkey i m h1 h2
  refine ⟨r, hword, hbd, ?_⟩
  intro i j hj
  have hj1 : 1 ≤ (j : ℕ) := Nat.one_le_iff_ne_zero.2 hj
  have hjn := j.isLt
  have ej : ((j : ℕ) : Fin n) = j := Fin.cast_val_eq_self j
  have e2 : i + j + ((n - (j : ℕ) : ℕ) : Fin n) = i := by
    have : ((j : ℕ) : Fin n) + ((n - (j : ℕ) : ℕ) : Fin n) = 0 := by
      apply Fin.ext
      rw [Fin.val_add, Fin.val_natCast, Fin.val_natCast, ← Nat.add_mod,
        Nat.add_sub_cancel' hjn.le, Nat.mod_self, Fin.val_zero]
    rw [ej] at this
    rw [add_assoc, this, add_zero]
  have k1 := hkey i j hj1 hjn
  have k2 := hkey (i + j) (n - j) (by omega) (by omega)
  rw [ej] at k1
  rw [e2] at k2
  have hne' := hne i (i + j) (by
    intro h
    have := ne_add_offset i hj1 hjn
    rw [ej] at this
    exact this h)
  have sw := sarea_swap₁₂ (V i) (V (i + j)) R
  constructor
  · intro hle
    have a := k1.2 hle
    by_contra hc
    push Not at hc
    have := k2.2 hc
    linarith
  · intro hlt
    by_contra hc
    have a : ¬ 0 < sarea (V (i + j)) (V i) R := fun h => by have := k2.1 h; omega
    have b : ¬ 0 < sarea (V i) (V (i + j)) R := fun h => hc (k1.1 h)
    push Not at a b
    exact hne' (by linarith)

/-- Helper: the 26 words of (13) for a hexagon ("The finite list of all words satisfying (13) has
26 members"). `hand/C1_ONE_LOWER_TOP_CAP.md`, line 229. -/
theorem interiorWords_card_six : (interiorWords 6).card = 26 := by
  decide +kernel

/-- **Claim** (`C1_ONE_LOWER_TOP_CAP:(14)`). The ray-order rule, for any convex polygon: at a
vertex `Vᵢ` all rays towards the other vertices and the interior points lie in the convex angle
at `Vᵢ`, of size less than `π`, and `rᵢ(R)` locates the ray `VᵢR` between the rays to
`V_{i+rᵢ}` and `V_{i+rᵢ+1}`. Hence if two interior words differ at `i`,
`sgn[VᵢRS] = sgn(rᵢ(S) - rᵢ(R))`. The same rule is (8) of `C1_ONE_LOWER_SIDE_CAP.md`, (11) of
`C1_ONE_LOWER_TOP_TRIANGLE.md`, (10) of `C1_ONE_LOWER_CONVEX_TOP.md` and (11) of
`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`. `hand/C1_ONE_LOWER_TOP_CAP.md`, lines 270-281. -/
theorem eq14 {n : ℕ} {V : Fin n → Point} (hV : ConvexPolygon V) {R S : Point}
    {r r' : HullWord n} (hR : HasHullWord V R r) (hS : HasHullWord V S r')
    (hr : ∀ i, 1 ≤ r i ∧ r i ≤ n - 2) (hr' : ∀ i, 1 ≤ r' i ∧ r' i ≤ n - 2) {i : Fin n}
    (hlt : r i < r' i) : 0 < sarea (V i) R S := by
  have : NeZero n := ⟨(Fin.pos i).ne'⟩
  open Fin.NatCast in
  have hb := hr i
  have hb' := hr' i
  have hn : 3 ≤ n := by omega
  have hRm := hR.pos_iff i (m := r i + 1) (by omega) (by omega)
  have hSm := hS.pos_iff i (m := r i + 1) (by omega) (by omega)
  have a : ¬ 0 < sarea (V i) (V (i + ((r i + 1 : ℕ) : Fin n))) R := fun h => by
    have := hRm.1 h; omega
  push Not at a
  have b := hSm.2 (by omega)
  have hM := ell_vertex_pos hn hV i (m := r i + 1) (by omega) (by omega)
  have sw := sarea_swap₂₃ (V i) (V (i + ((r i + 1 : ℕ) : Fin n))) R
  exact radial_pos (U := V (i + 1)) (W := V (i - 1)) (hR.ell_pos i hb) (hS.ell_pos i hb').le hM
    (by linarith) b

/-- Helper: a polygon each of whose edges `VᵢV_{i+1}` has every other vertex strictly on its left
is convex (counterclockwise): every increasing triple is counterclockwise. (At `Vᵢ` all other
vertices lie in the open half-plane `ℓ > 0`, `ℓ(X) = [VᵢV_{i+1}X] + [V_{i-1}VᵢX]`, and consecutive
rays turn left, so the rays are ordered.) -/
theorem convex_of_edges {n : ℕ} [NeZero n] (hn : 3 ≤ n) {V : Fin n → Point}
    (hV : ∀ i k : Fin n, k ≠ i → k ≠ i + 1 → 0 < sarea (V i) (V (i + 1)) (V k)) :
    ConvexPolygon V := by
  have z : ∀ A B : Point, sarea A B B = 0 := fun A B => by unfold sarea; ring
  have hne1 : ∀ i : Fin n, i + 1 ≠ i := fun i h => by
    have h' := congrArg (fun x => x - i) h
    simp only [add_sub_cancel_left, sub_self] at h'
    have := congrArg Fin.val h'
    rw [Fin.coe_ofNat_eq_mod, Nat.mod_eq_of_lt (by omega), Fin.val_zero] at this
    omega
  -- every other vertex lies in the half-plane `ℓ > 0` at `Vᵢ`
  have hell : ∀ i k : Fin n, k ≠ i →
      0 < sarea (V i) (V (i + 1)) (V k) - sarea (V i) (V (i - 1)) (V k) := by
    intro i k hk
    have e1 : i - 1 + 1 = i := sub_add_cancel i 1
    have hsw : sarea (V i) (V (i - 1)) (V k) = -sarea (V (i - 1)) (V (i - 1 + 1)) (V k) := by
      rw [e1, sarea_swap₁₂]
    have hpm := add_one_ne_sub_one hn i
    rw [hsw]
    by_cases h1 : k = i + 1
    · subst h1
      have b := hV (i - 1) (i + 1) hpm (by rw [e1]; exact hne1 i)
      have := z (V i) (V (i + 1))
      linarith
    · have a := hV i k hk h1
      by_cases h2 : k = i - 1
      · subst h2
        have : sarea (V (i - 1)) (V (i - 1 + 1)) (V (i - 1)) = 0 := by unfold sarea; ring
        linarith
      · have b := hV (i - 1) k h2 (by rw [e1]; exact hk)
        linarith
  intro i j k hij hjk
  have key : ∀ t : ℕ, ∀ k : Fin n, k.val = j.val + 1 + t → 0 < sarea (V i) (V j) (V k) := by
    intro t
    induction t with
    | zero =>
      intro k hk
      have ek : k = j + 1 := by
        apply Fin.ext
        rw [Fin.val_add, Fin.coe_ofNat_eq_mod, Nat.mod_eq_of_lt (by omega : 1 < n),
          Nat.mod_eq_of_lt (by omega)]
        omega
      subst ek
      have := hV j i (Fin.ne_of_lt hij) (fun h => by rw [Fin.ext_iff] at h; omega)
      rwa [← sarea_cycle]
    | succ t ih =>
      intro k hk
      let k' : Fin n := ⟨j.val + 1 + t, by omega⟩
      have ek : k = k' + 1 := by
        apply Fin.ext
        rw [Fin.val_add, Fin.coe_ofNat_eq_mod, Nat.mod_eq_of_lt (by omega : 1 < n),
          Nat.mod_eq_of_lt (by simp only [k']; omega)]
        simp only [k']; omega
      have h1 := ih k' rfl
      have hk'i : i ≠ k' := fun h => by rw [Fin.ext_iff] at h; simp only [k'] at h; omega
      have h2 := hV k' i hk'i (fun h => by rw [← ek, Fin.ext_iff] at h; omega)
      rw [← ek, sarea_cycle] at h2
      exact radial_pos (U := V (i + 1)) (W := V (i - 1)) (hell i j (Fin.ne_of_gt hij))
        (hell i k (fun h => by rw [Fin.ext_iff] at h; omega)).le (hell i k' (Ne.symm hk'i))
        h1.le h2
  exact key (k.val - j.val - 1) k (by rw [Fin.lt_def] at hjk; omega)

/-- Helper: the sign of a word entry as an orientation, when the area does not vanish. -/
theorem HasHullWord.orient {n : ℕ} {V : Fin n → Point} {R : Point} {r : HullWord n}
    (hr : HasHullWord V R r) {i j : Fin n} (hij : i ≠ j) (hne : sarea (V i) (V j) R ≠ 0) :
    Cover.OrientHolds (hullSign r i j) (sarea (V i) (V j) R) := by
  have e := hr i j hij
  unfold Cover.OrientHolds
  cases hs : hullSign r i j
  · simp only [Bool.false_eq_true, ite_false]
    rw [hs] at e
    have : ¬ 0 < sarea (V i) (V j) R := fun h => by simpa using e.1 h
    push Not at this
    exact lt_of_le_of_ne this hne
  · simp only [ite_true]
    exact e.2 hs

end Heilbronn.C1OneLowerTopCap
