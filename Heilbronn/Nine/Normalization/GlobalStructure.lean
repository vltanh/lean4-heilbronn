module

public import Heilbronn.Nine.Normalization.BoundaryReduction
public import Heilbronn.Nine.Local.Chamber
public import Heilbronn.Nine.Construction

/-! # The global boundary normalization

A maximizer of nine points with positive least area is brought, by feasible shears, square
symmetries and relabellings, into one of the five families N, C1, C2, Type II, Type III
(`Setup/Families.lean`), and optimality transfers back along the normalization. The normalization
is proved under `BoundaryReduction.NoExpand` (`exists_contact_shear_of_noExpand`, `exists_twoContacts_of_noExpand`,
`exists_family_of_noExpand`), so that it also applies to configurations that are not maximizers
(`Heilbronn/Nine/Hulls/GlobalCapacity.lean`); the maximizer statements are corollaries.

**Setting.** A configuration `P` of nine points with positive least area and no feasible
expansion, for instance a maximizer. It has every side contacted and the projection-overlap
property (`BoundaryReduction.side_contacts_of_noExpand`,
`BoundaryReduction.contactOverlap_of_noExpand`).

**Definitions.**
* `Side`: the four sides of the square. `Side.Contains S p` means `p` lies on side `S`.
* `incidences P`: the boundary incidences, the pairs `(i, S)` with `P i` on side `S`. A corner
  point has two.
* `TwoContacts P S`: side `S` carries two distinct points of `P`.

**Results.**
* `exists_contact_shear`: with exactly one point on each of the left and right sides (respectively bottom and
  top), a feasible determinant-one shear keeps every incidence and creates a new left or right
  (respectively bottom or top) incidence.
* `exists_twoContacts`: after at most two such shears, each pair of opposite sides has a side with two
  contacts.
* `exists_isN_of_no_corner`, `exists_isC1_of_one_corner`, `exists_isC2_of_opposite_corners`: with no, one or two opposite
  occupied corners, a square symmetry and a relabelling put the configuration in family N, C1 or
  C2 (`Setup/Families.lean`).
* `isOptimal_of_normalizes` (equality transfer): if a configuration normalizes to an optimal configuration, it is
  itself optimal.
* `normalize`: every positive-area maximizer normalizes to a maximizer `Q` with the same least area,
  the overlap property, and `Q` in N, C1, C2, Type II or Type III; moreover `Q` optimal implies `P`
  optimal.

**Hypotheses.**
* The selections use only the overlap property and, for N, positive least area (distinct points)
  and the two-contact sides. They are stated under exactly these hypotheses (C1 and C2 do not need
  positive least area).
* `normalize` states the existence of the normalized maximizer `Q`, with the normalization recorded
  (`Normalizes P Q`). It includes the equality transfer (`IsOptimal Q → IsOptimal P`, from
  `isOptimal_of_normalizes`), so that the assembly can use `normalize` directly, and `ContactOverlap Q` for all five
  families (it holds for every positive-area maximizer, `BoundaryReduction.contactOverlap_of_isMaximizer`).
* `isOptimal_of_normalizes` uses only that every shear of the normalization is feasible, which `NormStep` records,
  and that an optimal configuration has least area `A₀`. `P` need not be a maximizer.

**Proof notes.** `normalize` applies `exists_twoContacts` (at most two shears of `exists_contact_shear`), then, by the
occupied corners, either the adjacent-corner shear (after the square symmetry that moves the
adjacent pair to the top) or the selections N, C1, C2 (after the square symmetry that moves the
occupied corners to `(0,0)` and `(1,1)`). `isOptimal_of_normalizes` runs backwards along `Normalizes`: relabellings
and square symmetries keep optimality (`isOptimal_of_perm`, `isOptimal_of_symm`), and a feasible
shear `P ↦ P + v` with optimal image is trivial (`isOptimal_of_segment`): the configurations
`P + s v`, `0 ≤ s ≤ 1`, stay in the square with least area `A₀`, so the strict local optimality
`Chamber.strict_local_max` forces `P + s v = P + v` for `s < 1` close to `1`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.GlobalStructure

open BoundaryReduction

/-! ### Sides and incidences -/

/-- The four sides of the unit square. -/
inductive Side
  | left
  | bottom
  | right
  | top

/-- `S.Contains p`: the point `p` lies on the line of side `S` (`x = 0`, `y = 0`, `x = 1` or
`y = 1`; for points of the square, on the side itself). -/
def Side.Contains : Side → Point → Prop
  | .left, p => p.1 = 0
  | .bottom, p => p.2 = 0
  | .right, p => p.1 = 1
  | .top, p => p.2 = 1

/-- The boundary incidences of `P`: the pairs `(i, S)` with `P i` on side `S`. A corner point
gives two incidences, so there are at most eight for a configuration of positive least area. -/
def incidences (P : Fin 9 → Point) : Set (Fin 9 × Side) := {x | x.2.Contains (P x.1)}

/-- Side `S` carries two distinct points of `P`. -/
def TwoContacts (P : Fin 9 → Point) (S : Side) : Prop :=
  ∃ i j, i ≠ j ∧ S.Contains (P i) ∧ S.Contains (P j)

/-- Two indices with the same point give a degenerate triangle: positive least area makes the
configuration injective. -/
theorem injective_of_min_pos {P : Fin 9 → Point} (hpos : 0 < minTriangleArea P) :
    Function.Injective P := by
  intro i j h
  by_contra hij
  have hk : ∀ i j : Fin 9, ∃ k : Fin 9, k ≠ i ∧ k ≠ j := by decide
  obtain ⟨k, hki, hkj⟩ := hk i j
  apply sarea_ne_zero_of_min_pos hpos i j k hij (Ne.symm hkj) (Ne.symm hki)
  simp only [sarea, h]; ring

/-! ### The contact-increasing shear -/

/-- The one-dimensional core of `exists_contact_shear_of_noExpand`. Coordinates `x k ∈ [0,1]` are moved to
`x k + t (y k - ℓ)`; the points with `x k ∈ {0, 1}` have `y k = ℓ` and do not move, and some
`y k ≠ ℓ`. The largest feasible `t > 0` keeps every coordinate in `[0,1]` and sends some
`x k ∉ {0, 1}` to `0` or `1`. -/
theorem shear_core (x y : Fin 9 → ℝ) (ℓ : ℝ) (hx : ∀ k, 0 ≤ x k ∧ x k ≤ 1)
    (hb : ∀ k, (x k = 0 ∨ x k = 1) → y k = ℓ) (hne : ∃ k, y k ≠ ℓ) :
    ∃ t, (∀ k, 0 ≤ x k + t * (y k - ℓ) ∧ x k + t * (y k - ℓ) ≤ 1) ∧
      ∃ k, x k ≠ 0 ∧ x k ≠ 1 ∧ (x k + t * (y k - ℓ) = 0 ∨ x k + t * (y k - ℓ) = 1) := by
  classical
  obtain ⟨k₁, hk₁⟩ := hne
  let bd : Fin 9 → ℝ := fun k => if ℓ < y k then (1 - x k) / (y k - ℓ) else x k / (ℓ - y k)
  obtain ⟨k₀, hk₀m, hk₀⟩ := Finset.exists_min_image (Finset.univ.filter fun k => y k ≠ ℓ) bd
    ⟨k₁, by simp [hk₁]⟩
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hk₀m hk₀
  have hint : ∀ k, y k ≠ ℓ → 0 < x k ∧ x k < 1 := fun k hk =>
    ⟨lt_of_le_of_ne (hx k).1 fun h => hk (hb k (Or.inl h.symm)),
      lt_of_le_of_ne (hx k).2 fun h => hk (hb k (Or.inr h))⟩
  have hbd : ∀ k, y k ≠ ℓ → 0 < bd k := fun k hk => by
    obtain ⟨h1, h2⟩ := hint k hk
    simp only [bd]
    split_ifs with h
    · exact div_pos (by linarith) (by linarith)
    · exact div_pos h1 (by have := lt_of_le_of_ne (not_lt.1 h) hk; linarith)
  have ht : 0 < bd k₀ := hbd k₀ hk₀m
  refine ⟨bd k₀, fun k => ?_, k₀, ne_of_gt (hint k₀ hk₀m).1, ne_of_lt (hint k₀ hk₀m).2, ?_⟩
  · rcases lt_trichotomy (y k) ℓ with h | h | h
    · have hle := hk₀ k h.ne
      simp only [bd, not_lt.2 h.le, ↓reduceIte] at hle
      rw [le_div_iff₀ (by linarith)] at hle
      constructor <;> nlinarith [(hx k).1, (hx k).2]
    · rw [h, sub_self, mul_zero, add_zero]; exact hx k
    · have hle := hk₀ k h.ne'
      simp only [bd, h, ↓reduceIte] at hle
      rw [le_div_iff₀ (by linarith)] at hle
      constructor <;> nlinarith [(hx k).1, (hx k).2]
  · simp only [bd]
    split_ifs with h
    · right
      rw [div_mul_cancel₀ _ (ne_of_gt (sub_pos.2 h))]; ring
    · left
      have h' : y k₀ < ℓ := lt_of_le_of_ne (not_lt.1 h) hk₀m
      have e : y k₀ - ℓ = -(ℓ - y k₀) := by ring
      rw [e, mul_neg, div_mul_cancel₀ _ (ne_of_gt (sub_pos.2 h'))]; ring

/-- **The contact-increasing shear.** Let `P` be a configuration of positive least area with no
feasible expansion.
* If `P` has exactly one point `L = (0, ℓ)` on the left side and exactly one point `R = (1, r)` on
  the right side (so `r = ℓ` by overlap), the shear `F_t(x, y) = (x + t(y - ℓ), y)` at the finite
  positive endpoint `t₊` of its feasible interval keeps every point in the square and every
  boundary incidence, and creates a new left or right incidence.
* The analogous assertion holds for the bottom and top sides, with the transposed shear
  `(x, y) ↦ (x, y + t(x - ℓ))`. -/
theorem exists_contact_shear_of_noExpand {P : Fin 9 → Point} (hP : NoExpand P) (hpos : 0 < minTriangleArea P) :
    ((∃! i, (P i).1 = 0) → (∃! i, (P i).1 = 1) →
      ∃ t ℓ : ℝ, (∀ i, shearX t ℓ (P i) ∈ unitSquare) ∧
        incidences P ⊆ incidences (shearX t ℓ ∘ P) ∧
        ∃ i, (P i).1 ≠ 0 ∧ (P i).1 ≠ 1 ∧
          ((shearX t ℓ (P i)).1 = 0 ∨ (shearX t ℓ (P i)).1 = 1)) ∧
    ((∃! i, (P i).2 = 0) → (∃! i, (P i).2 = 1) →
      ∃ t ℓ : ℝ, (∀ i, shearY t ℓ (P i) ∈ unitSquare) ∧
        incidences P ⊆ incidences (shearY t ℓ ∘ P) ∧
        ∃ i, (P i).2 ≠ 0 ∧ (P i).2 ≠ 1 ∧
          ((shearY t ℓ (P i)).2 = 0 ∨ (shearY t ℓ (P i)).2 = 1)) := by
  obtain ⟨hov1, hov2, hov3, hov4⟩ := contactOverlap_of_noExpand hP hpos
  refine ⟨fun hL hR => ?_, fun hB hT => ?_⟩
  · obtain ⟨iL, hiL, huL⟩ := hL
    obtain ⟨iR, hiR, huR⟩ := hR
    obtain ⟨i3, j3, h3a, h3b, h3c⟩ := hov3
    obtain ⟨i4, j4, h4a, h4b, h4c⟩ := hov4
    rw [huL i3 h3a, huR j3 h3b] at h3c
    rw [huL i4 h4a, huR j4 h4b] at h4c
    have hb : ∀ k, ((P k).1 = 0 ∨ (P k).1 = 1) → (P k).2 = (P iL).2 := by
      rintro k (h | h)
      · rw [huL k h]
      · rw [huR k h]; exact le_antisymm h4c h3c
    obtain ⟨t, hfeas, k, hk0, hk1, hk⟩ := shear_core (fun k => (P k).1) (fun k => (P k).2)
      (P iL).2 (fun k => ⟨(hP.1 k).1, (hP.1 k).2.1⟩) hb
      (by by_contra h; push Not at h; exact not_forall_snd_eq hpos _ h)
    have hfeas' : ∀ i, shearX t (P iL).2 (P i) ∈ unitSquare := fun i =>
      ⟨(hfeas i).1, (hfeas i).2, (hP.1 i).2.2.1, (hP.1 i).2.2.2⟩
    refine ⟨t, (P iL).2, hfeas', ?_, k, hk0, hk1, hk⟩
    rintro ⟨i, S⟩ hi
    change S.Contains (P i) at hi
    change S.Contains (shearX t (P iL).2 (P i))
    cases S <;> simp only [Side.Contains, shearX_apply] at hi ⊢
    · rw [hb i (Or.inl hi), sub_self, mul_zero, add_zero, hi]
    · exact hi
    · rw [hb i (Or.inr hi), sub_self, mul_zero, add_zero, hi]
    · exact hi
  · obtain ⟨iB, hiB, huB⟩ := hB
    obtain ⟨iT, hiT, huT⟩ := hT
    obtain ⟨i1, j1, h1a, h1b, h1c⟩ := hov1
    obtain ⟨i2, j2, h2a, h2b, h2c⟩ := hov2
    rw [huB i1 h1a, huT j1 h1b] at h1c
    rw [huB i2 h2a, huT j2 h2b] at h2c
    have hb : ∀ k, ((P k).2 = 0 ∨ (P k).2 = 1) → (P k).1 = (P iB).1 := by
      rintro k (h | h)
      · rw [huB k h]
      · rw [huT k h]; exact le_antisymm h2c h1c
    obtain ⟨t, hfeas, k, hk0, hk1, hk⟩ := shear_core (fun k => (P k).2) (fun k => (P k).1)
      (P iB).1 (fun k => ⟨(hP.1 k).2.2.1, (hP.1 k).2.2.2⟩) hb
      (by by_contra h; push Not at h; exact not_forall_fst_eq hpos _ h)
    have hfeas' : ∀ i, shearY t (P iB).1 (P i) ∈ unitSquare := fun i =>
      ⟨(hP.1 i).1, (hP.1 i).2.1, (hfeas i).1, (hfeas i).2⟩
    refine ⟨t, (P iB).1, hfeas', ?_, k, hk0, hk1, hk⟩
    rintro ⟨i, S⟩ hi
    change S.Contains (P i) at hi
    change S.Contains (shearY t (P iB).1 (P i))
    cases S <;> simp only [Side.Contains, shearY_apply] at hi ⊢
    · exact hi
    · rw [hb i (Or.inl hi), sub_self, mul_zero, add_zero, hi]
    · exact hi
    · rw [hb i (Or.inr hi), sub_self, mul_zero, add_zero, hi]

/-- The contact-increasing shear (`exists_contact_shear_of_noExpand`) for a maximizer of positive least area;
the sheared configuration is again a maximizer. -/
theorem exists_contact_shear {P : Fin 9 → Point} (hP : IsMaximizer P) (hpos : 0 < minTriangleArea P) :
    ((∃! i, (P i).1 = 0) → (∃! i, (P i).1 = 1) →
      ∃ t ℓ : ℝ, (∀ i, shearX t ℓ (P i) ∈ unitSquare) ∧ IsMaximizer (shearX t ℓ ∘ P) ∧
        incidences P ⊆ incidences (shearX t ℓ ∘ P) ∧
        ∃ i, (P i).1 ≠ 0 ∧ (P i).1 ≠ 1 ∧
          ((shearX t ℓ (P i)).1 = 0 ∨ (shearX t ℓ (P i)).1 = 1)) ∧
    ((∃! i, (P i).2 = 0) → (∃! i, (P i).2 = 1) →
      ∃ t ℓ : ℝ, (∀ i, shearY t ℓ (P i) ∈ unitSquare) ∧ IsMaximizer (shearY t ℓ ∘ P) ∧
        incidences P ⊆ incidences (shearY t ℓ ∘ P) ∧
        ∃ i, (P i).2 ≠ 0 ∧ (P i).2 ≠ 1 ∧
          ((shearY t ℓ (P i)).2 = 0 ∨ (shearY t ℓ (P i)).2 = 1)) := by
  obtain ⟨h1, h2⟩ := exists_contact_shear_of_noExpand (noExpand_of_isMaximizer hP hpos) hpos
  refine ⟨fun hL hR => ?_, fun hB hT => ?_⟩
  · obtain ⟨t, ℓ, hf, hinc, k, hk⟩ := h1 hL hR
    exact ⟨t, ℓ, hf, isMaximizer_shearX hP hf, hinc, k, hk⟩
  · obtain ⟨t, ℓ, hf, hinc, k, hk⟩ := h2 hB hT
    exact ⟨t, ℓ, hf, isMaximizer_shearY hP hf, hinc, k, hk⟩

/-- A contacted side with more than one contact carries two distinct points. -/
theorem twoContacts_of_not_unique {P : Fin 9 → Point} {S : Side} (h : ∃ i, S.Contains (P i))
    (hu : ¬ ∃! i, S.Contains (P i)) : TwoContacts P S := by
  obtain ⟨i, hi⟩ := h
  by_contra hc
  exact hu ⟨i, hi, fun j hj => by_contra fun hji => hc ⟨j, i, hji, hj, hi⟩⟩

/-- **Two contacts in each pair of opposite sides.** From a configuration `P` of positive least
area with no feasible expansion, at most two contact-increasing shears (`exists_contact_shear_of_noExpand`;
first left/right, then bottom/top; the second shear keeps every `x`-coordinate and so the first
pair's incidences) give a normalization `Q` in which each pair of opposite sides has a side with
two contacts. -/
theorem exists_twoContacts_of_noExpand {P : Fin 9 → Point} (hP : NoExpand P)
    (hpos : 0 < minTriangleArea P) :
    ∃ Q : Fin 9 → Point, Normalizes P Q ∧
      (TwoContacts Q .left ∨ TwoContacts Q .right) ∧
      (TwoContacts Q .bottom ∨ TwoContacts Q .top) := by
  obtain ⟨P₁, hPP₁, hLR⟩ : ∃ P₁, Normalizes P P₁ ∧
      (TwoContacts P₁ .left ∨ TwoContacts P₁ .right) := by
    obtain ⟨hl, -, hr, -⟩ := side_contacts_of_noExpand hP hpos
    by_cases hu : (∃! i, (P i).1 = 0) ∧ (∃! i, (P i).1 = 1)
    · obtain ⟨t, ℓ, hfeas, hinc, k, hk0, hk1, hk⟩ := (exists_contact_shear_of_noExpand hP hpos).1 hu.1 hu.2
      refine ⟨shearX t ℓ ∘ P, .single (.xShear t ℓ hP.1 hfeas), ?_⟩
      obtain ⟨iL, hiL, -⟩ := hu.1
      obtain ⟨iR, hiR, -⟩ := hu.2
      rcases hk with hk | hk
      · left
        exact ⟨k, iL, by rintro rfl; exact hk0 hiL, hk,
          hinc (show (iL, Side.left) ∈ incidences P from hiL)⟩
      · right
        exact ⟨k, iR, by rintro rfl; exact hk1 hiR, hk,
          hinc (show (iR, Side.right) ∈ incidences P from hiR)⟩
    · refine ⟨P, .refl, ?_⟩
      rw [not_and_or] at hu
      rcases hu with hu | hu
      · exact Or.inl (twoContacts_of_not_unique hl hu)
      · exact Or.inr (twoContacts_of_not_unique hr hu)
  have hP₁ := noExpand_of_normalizes hP hPP₁
  have hpos₁ : 0 < minTriangleArea P₁ := by rw [minTriangleArea_of_normalizes hPP₁]; exact hpos
  obtain ⟨-, hb, -, ht⟩ := side_contacts_of_noExpand hP₁ hpos₁
  by_cases hu : (∃! i, (P₁ i).2 = 0) ∧ (∃! i, (P₁ i).2 = 1)
  · obtain ⟨t, ℓ, hfeas, hinc, k, hk0, hk1, hk⟩ := (exists_contact_shear_of_noExpand hP₁ hpos₁).2 hu.1 hu.2
    refine ⟨shearY t ℓ ∘ P₁, hPP₁.tail (.yShear t ℓ hP₁.1 hfeas), ?_, ?_⟩
    · rcases hLR with ⟨i, j, hij, hi, hj⟩ | ⟨i, j, hij, hi, hj⟩
      · exact Or.inl ⟨i, j, hij, hi, hj⟩
      · exact Or.inr ⟨i, j, hij, hi, hj⟩
    obtain ⟨iB, hiB, -⟩ := hu.1
    obtain ⟨iT, hiT, -⟩ := hu.2
    rcases hk with hk | hk
    · left
      exact ⟨k, iB, by rintro rfl; exact hk0 hiB, hk,
        hinc (show (iB, Side.bottom) ∈ incidences P₁ from hiB)⟩
    · right
      exact ⟨k, iT, by rintro rfl; exact hk1 hiT, hk,
        hinc (show (iT, Side.top) ∈ incidences P₁ from hiT)⟩
  · refine ⟨P₁, hPP₁, hLR, ?_⟩
    rw [not_and_or] at hu
    rcases hu with hu | hu
    · exact Or.inl (twoContacts_of_not_unique hb hu)
    · exact Or.inr (twoContacts_of_not_unique ht hu)

/-- `exists_twoContacts_of_noExpand` for a maximizer of positive least area: the normalized `Q` is again
a maximizer, with the same least area. -/
theorem exists_twoContacts {P : Fin 9 → Point} (hP : IsMaximizer P) (hpos : 0 < minTriangleArea P) :
    ∃ Q : Fin 9 → Point, Normalizes P Q ∧ IsMaximizer Q ∧
      minTriangleArea Q = minTriangleArea P ∧
      (TwoContacts Q .left ∨ TwoContacts Q .right) ∧
      (TwoContacts Q .bottom ∨ TwoContacts Q .top) := by
  obtain ⟨Q, hPQ, h1, h2⟩ := exists_twoContacts_of_noExpand (noExpand_of_isMaximizer hP hpos) hpos
  exact ⟨Q, hPQ, isMaximizer_of_normalizes hP hPQ, minTriangleArea_of_normalizes hPQ, h1, h2⟩

/-! ### The three forms without adjacent occupied corners -/

/-- Interval selection for a pair of opposite sides. The contacts of the two sides are the
indices with `A i`, respectively `B i`, at positions `u i` along the sides. If the two contact
ranges overlap and one side has two distinct positions, then one side has two contacts `i, j`
with `u i < u j` and the other side a contact `k` with `u i ≤ u k ≤ u j`. -/
theorem interval_select (u : Fin 9 → ℝ) (A B : Fin 9 → Prop)
    (h1 : ∃ i j, A i ∧ B j ∧ u i ≤ u j) (h2 : ∃ i j, A i ∧ B j ∧ u j ≤ u i)
    (h3 : (∃ i j, A i ∧ A j ∧ u i < u j) ∨ (∃ i j, B i ∧ B j ∧ u i < u j)) :
    (∃ i j k, A i ∧ A j ∧ B k ∧ u i < u j ∧ u i ≤ u k ∧ u k ≤ u j) ∨
      (∃ i j k, B i ∧ B j ∧ A k ∧ u i < u j ∧ u i ≤ u k ∧ u k ≤ u j) := by
  classical
  obtain ⟨i1, j1, hA1, hB1, hu1⟩ := h1
  obtain ⟨i2, j2, hA2, hB2, hu2⟩ := h2
  obtain ⟨amin, haminm, hamin⟩ :=
    Finset.exists_min_image (Finset.univ.filter A) u ⟨i1, by simp [hA1]⟩
  obtain ⟨amax, hamaxm, hamax⟩ :=
    Finset.exists_max_image (Finset.univ.filter A) u ⟨i1, by simp [hA1]⟩
  obtain ⟨bmin, hbminm, hbmin⟩ :=
    Finset.exists_min_image (Finset.univ.filter B) u ⟨j1, by simp [hB1]⟩
  obtain ⟨bmax, hbmaxm, hbmax⟩ :=
    Finset.exists_max_image (Finset.univ.filter B) u ⟨j1, by simp [hB1]⟩
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at haminm hamaxm hbminm hbmaxm
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hamin hamax hbmin hbmax
  have k1 : u amin ≤ u bmax := (hamin i1 hA1).trans (hu1.trans (hbmax j1 hB1))
  have k2 : u bmin ≤ u amax := (hbmin j2 hB2).trans (hu2.trans (hamax i2 hA2))
  by_cases c1 : u amin < u amax ∧ u amin ≤ u bmin
  · exact Or.inl ⟨amin, amax, bmin, haminm, hamaxm, hbminm, c1.1, c1.2, k2⟩
  · refine Or.inr ⟨bmin, bmax, amin, hbminm, hbmaxm, haminm, ?_, ?_, k1⟩
    · by_cases c2 : u amin < u amax
      · have : u bmin < u amin := lt_of_not_ge fun h => c1 ⟨c2, h⟩
        linarith
      · rcases h3 with ⟨i, j, hi, hj, hij⟩ | ⟨i, j, hi, hj, hij⟩
        · exact absurd (((hamin i hi).trans_lt hij).trans_le (hamax j hj)) c2
        · exact ((hbmin i hi).trans_lt hij).trans_le (hbmax j hj)
    · by_cases c2 : u amin < u amax
      · exact le_of_lt (lt_of_not_ge fun h => c1 ⟨c2, h⟩)
      · exact k2.trans (not_lt.1 c2)

/-- No corner of the square is a point of the configuration. -/
def NoCorner (P : Fin 9 → Point) : Prop :=
  ∀ i, ¬ (((P i).1 = 0 ∨ (P i).1 = 1) ∧ ((P i).2 = 0 ∨ (P i).2 = 1))

theorem noCorner_of_not_occupied {P : Fin 9 → Point}
    (h : ¬ Occupied P (0, 0) ∧ ¬ Occupied P (1, 0) ∧ ¬ Occupied P (0, 1) ∧
      ¬ Occupied P (1, 1)) : NoCorner P := by
  rintro i ⟨h1 | h1, h2 | h2⟩
  · exact h.1 ⟨i, Prod.ext h1 h2⟩
  · exact h.2.2.1 ⟨i, Prod.ext h1 h2⟩
  · exact h.2.1 ⟨i, Prod.ext h1 h2⟩
  · exact h.2.2.2 ⟨i, Prod.ext h1 h2⟩

/-- A square symmetry permutes the corners. -/
theorem noCorner_symm {P : Fin 9 → Point} (g : SquareSymmetry) (h : NoCorner P) :
    NoCorner (g.apply ∘ P) := by
  rintro i ⟨h1, h2⟩
  apply h i
  rcases g with ⟨_ | _, _ | _, _ | _⟩ <;>
    simp only [Function.comp, SquareSymmetry.apply, Bool.false_eq_true, ↓reduceIte] at h1 h2 <;>
    rcases h1 with h1 | h1 <;> rcases h2 with h2 | h2 <;> refine ⟨?_, ?_⟩ <;>
    first | (left; linarith) | (right; linarith)

/-- Six indices on the sides of a corner-free configuration, in the positions of family N, give
family N after a relabelling. -/
theorem isN_of_indices {Q : Fin 9 → Point} (hQ : ∀ i, Q i ∈ unitSquare) (hnc : NoCorner Q)
    {iA iH iB iC iD iF : Fin 9} (hA : (Q iA).1 = 0) (hH : (Q iH).1 = 0) (hB : (Q iB).2 = 0)
    (hC : (Q iC).2 = 0) (hD : (Q iD).1 = 1) (hF : (Q iF).2 = 1)
    (h1 : (Q iA).2 < (Q iH).2) (h2 : (Q iB).1 < (Q iC).1) (h3 : (Q iA).2 ≤ (Q iD).2)
    (h4 : (Q iD).2 ≤ (Q iH).2) (h5 : (Q iB).1 ≤ (Q iF).1) (h6 : (Q iF).1 ≤ (Q iC).1) :
    ∃ σ : Equiv.Perm (Fin 9), IsN (Q ∘ σ) := by
  have a0 : 0 < (Q iA).2 :=
    lt_of_le_of_ne (hQ iA).2.2.1 fun h => hnc iA ⟨Or.inl hA, Or.inl h.symm⟩
  have h1' : (Q iH).2 < 1 := lt_of_le_of_ne (hQ iH).2.2.2 fun h => hnc iH ⟨Or.inl hH, Or.inr h⟩
  have b0 : 0 < (Q iB).1 :=
    lt_of_le_of_ne (hQ iB).1 fun h => hnc iB ⟨Or.inl h.symm, Or.inl hB⟩
  have c1 : (Q iC).1 < 1 := lt_of_le_of_ne (hQ iC).2.1 fun h => hnc iC ⟨Or.inr h, Or.inl hC⟩
  obtain ⟨σ, s0, s1, s2, s3, s4, s5⟩ := exists_perm₆ (a := iA) (b := iH) (c := iB) (d := iC)
    (e := iD) (f := iF)
    (by rintro rfl; linarith) (by rintro rfl; exact hnc iA ⟨Or.inl hA, Or.inl hB⟩)
    (by rintro rfl; exact hnc iA ⟨Or.inl hA, Or.inl hC⟩) (by rintro rfl; linarith)
    (by rintro rfl; exact hnc iA ⟨Or.inl hA, Or.inr hF⟩)
    (by rintro rfl; exact hnc iH ⟨Or.inl hH, Or.inl hB⟩)
    (by rintro rfl; exact hnc iH ⟨Or.inl hH, Or.inl hC⟩) (by rintro rfl; linarith)
    (by rintro rfl; exact hnc iH ⟨Or.inl hH, Or.inr hF⟩) (by rintro rfl; linarith)
    (by rintro rfl; exact hnc iB ⟨Or.inr hD, Or.inl hB⟩) (by rintro rfl; linarith)
    (by rintro rfl; exact hnc iC ⟨Or.inr hD, Or.inl hC⟩) (by rintro rfl; linarith)
    (by rintro rfl; exact hnc iD ⟨Or.inr hD, Or.inr hF⟩)
  refine ⟨σ, (Q iA).2, (Q iH).2, (Q iB).1, (Q iC).1, (Q iD).2, (Q iF).1, Q (σ 6), Q (σ 7),
    Q (σ 8), ⟨a0, h1, h1', b0, h2, c1, h3, h4, h5, h6⟩, hQ _, hQ _, hQ _, ?_⟩
  funext i
  fin_cases i <;> simp [nConfig, s0, s1, s2, s3, s4, s5] <;> ext <;> simp [hA, hH, hB, hC, hD, hF]

/-- **Selection of family N.** No corner is occupied. If the configuration has
positive least area and the overlap property, and each pair of opposite sides has a side with two
contacts, then after a square symmetry (the reflections putting the double sides on the left and
at the bottom) and a relabelling it is in family N: `A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d),
F=(f,1)` with `0<a<h<1, 0<b<c<1, a≤d≤h, b≤f≤c` and three arbitrary points. -/
theorem exists_isN_of_no_corner {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hpos : 0 < minTriangleArea P) (hov : ContactOverlap P)
    (hcorner : ¬ Occupied P (0, 0) ∧ ¬ Occupied P (1, 0) ∧ ¬ Occupied P (0, 1) ∧
      ¬ Occupied P (1, 1))
    (hLR : TwoContacts P .left ∨ TwoContacts P .right)
    (hBT : TwoContacts P .bottom ∨ TwoContacts P .top) :
    ∃ (g : SquareSymmetry) (σ : Equiv.Perm (Fin 9)), IsN (g.apply ∘ P ∘ σ) := by
  have hinj := injective_of_min_pos hpos
  have hnc := noCorner_of_not_occupied hcorner
  obtain ⟨hov1, hov2, hov3, hov4⟩ := hov
  have LR := interval_select (fun k => (P k).2) (fun k => (P k).1 = 0) (fun k => (P k).1 = 1)
    hov3 hov4 (by
      rcases hLR with ⟨i, j, hij, hi, hj⟩ | ⟨i, j, hij, hi, hj⟩
      · left
        have : (P i).2 ≠ (P j).2 := fun h =>
          hij (hinj (Prod.ext ((show (P i).1 = 0 from hi).trans (show (P j).1 = 0 from hj).symm) h))
        rcases this.lt_or_gt with h | h
        · exact ⟨i, j, hi, hj, h⟩
        · exact ⟨j, i, hj, hi, h⟩
      · right
        have : (P i).2 ≠ (P j).2 := fun h =>
          hij (hinj (Prod.ext ((show (P i).1 = 1 from hi).trans (show (P j).1 = 1 from hj).symm) h))
        rcases this.lt_or_gt with h | h
        · exact ⟨i, j, hi, hj, h⟩
        · exact ⟨j, i, hj, hi, h⟩)
  have BT := interval_select (fun k => (P k).1) (fun k => (P k).2 = 0) (fun k => (P k).2 = 1)
    hov1 hov2 (by
      rcases hBT with ⟨i, j, hij, hi, hj⟩ | ⟨i, j, hij, hi, hj⟩
      · left
        have : (P i).1 ≠ (P j).1 := fun h =>
          hij (hinj (Prod.ext h ((show (P i).2 = 0 from hi).trans (show (P j).2 = 0 from hj).symm)))
        rcases this.lt_or_gt with h | h
        · exact ⟨i, j, hi, hj, h⟩
        · exact ⟨j, i, hj, hi, h⟩
      · right
        have : (P i).1 ≠ (P j).1 := fun h =>
          hij (hinj (Prod.ext h ((show (P i).2 = 1 from hi).trans (show (P j).2 = 1 from hj).symm)))
        rcases this.lt_or_gt with h | h
        · exact ⟨i, j, hi, hj, h⟩
        · exact ⟨j, i, hj, hi, h⟩)
  have hsq : ∀ g : SquareSymmetry, ∀ i, (g.apply ∘ P) i ∈ unitSquare := fun g i =>
    g.apply_mem (hP i)
  rcases LR with ⟨i, j, k, hi, hj, hk, hij, hik, hkj⟩ | ⟨i, j, k, hi, hj, hk, hij, hik, hkj⟩ <;>
    rcases BT with ⟨i', j', k', hi', hj', hk', hij', hik', hkj'⟩ |
      ⟨i', j', k', hi', hj', hk', hij', hik', hkj'⟩
  · refine ⟨⟨false, false, false⟩,
      isN_of_indices (Q := SquareSymmetry.apply ⟨false, false, false⟩ ∘ P)
      (iA := i) (iH := j) (iB := i') (iC := j') (iD := k) (iF := k') (hsq _)
      (noCorner_symm _ hnc) ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_⟩ <;>
      simp only [Function.comp_apply, SquareSymmetry.apply, Bool.false_eq_true, ↓reduceIte] <;>
      linarith
  · refine ⟨⟨false, false, true⟩,
      isN_of_indices (Q := SquareSymmetry.apply ⟨false, false, true⟩ ∘ P)
      (iA := j) (iH := i) (iB := i') (iC := j') (iD := k) (iF := k') (hsq _)
      (noCorner_symm _ hnc) ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_⟩ <;>
      simp only [Function.comp_apply, SquareSymmetry.apply, Bool.false_eq_true, ↓reduceIte] <;>
      linarith
  · refine ⟨⟨false, true, false⟩,
      isN_of_indices (Q := SquareSymmetry.apply ⟨false, true, false⟩ ∘ P)
      (iA := i) (iH := j) (iB := j') (iC := i') (iD := k) (iF := k') (hsq _)
      (noCorner_symm _ hnc) ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_⟩ <;>
      simp only [Function.comp_apply, SquareSymmetry.apply, Bool.false_eq_true, ↓reduceIte] <;>
      linarith
  · refine ⟨⟨false, true, true⟩,
      isN_of_indices (Q := SquareSymmetry.apply ⟨false, true, true⟩ ∘ P)
      (iA := j) (iH := i) (iB := j') (iC := i') (iD := k) (iF := k') (hsq _)
      (noCorner_symm _ hnc) ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_⟩ <;>
      simp only [Function.comp_apply, SquareSymmetry.apply, Bool.false_eq_true, ↓reduceIte] <;>
      linarith

/-- **Selection of family C1.** Exactly one occupied corner, `(0,0)`.
By overlap both incident sides carry a second contact `C = (c,0)`, `H = (0,h)`. With `f` the least
top `x`-coordinate and `d` the least right `y`-coordinate, a relabelling puts the configuration in
family C1: `O=(0,0), C, D=(1,d), F=(f,1), H` with `0<d≤h<1, 0<f≤c<1` and four arbitrary points. -/
theorem exists_isC1_of_one_corner {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hov : ContactOverlap P) (h00 : Occupied P (0, 0))
    (hcorner : ¬ Occupied P (1, 0) ∧ ¬ Occupied P (0, 1) ∧ ¬ Occupied P (1, 1)) :
    ∃ σ : Equiv.Perm (Fin 9), IsC1 (P ∘ σ) := by
  obtain ⟨iO, hiO⟩ := h00
  obtain ⟨h10, h01, h11⟩ := hcorner
  obtain ⟨-, ⟨iC, iF, hC, hF, hcf⟩, -, ⟨iH, iD, hH, hD, hdh⟩⟩ := hov
  have hO1 : (P iO).1 = 0 := by rw [hiO]
  have hO2 : (P iO).2 = 0 := by rw [hiO]
  have f0 : 0 < (P iF).1 := lt_of_le_of_ne (hP iF).1 fun h => h01 ⟨iF, Prod.ext h.symm hF⟩
  have c1 : (P iC).1 < 1 := lt_of_le_of_ne (hP iC).2.1 fun h => h10 ⟨iC, Prod.ext h hC⟩
  have d0 : 0 < (P iD).2 := lt_of_le_of_ne (hP iD).2.2.1 fun h => h10 ⟨iD, Prod.ext hD h.symm⟩
  have h1 : (P iH).2 < 1 := lt_of_le_of_ne (hP iH).2.2.2 fun h => h01 ⟨iH, Prod.ext hH h⟩
  obtain ⟨σ, s0, s1, s2, s3, s4⟩ := exists_perm₅ (a := iO) (b := iC) (c := iD) (d := iF) (e := iH)
    (by rintro rfl; linarith) (by rintro rfl; linarith) (by rintro rfl; linarith)
    (by rintro rfl; linarith) (by rintro rfl; linarith) (by rintro rfl; linarith)
    (by rintro rfl; linarith) (by rintro rfl; linarith) (by rintro rfl; linarith)
    (by rintro rfl; linarith)
  refine ⟨σ, (P iH).2, (P iC).1, (P iD).2, (P iF).1, P (σ 5), P (σ 6), P (σ 7), P (σ 8),
    ⟨d0, hdh, h1, f0, hcf, c1⟩, hP _, hP _, hP _, hP _, ?_⟩
  funext i
  fin_cases i <;> simp [c1Config, s0, s1, s2, s3, s4, hiO] <;> ext <;> simp [hC, hD, hF, hH]

/-- **Selection of family C2.** Exactly the two opposite corners `(0,0)` and
`(1,1)` are occupied. By overlap every side carries a second contact, and intersecting the
intervals `[0,h], [d,1]` and `[0,c], [f,1]` gives `0<d≤h<1, 0<f≤c<1`. A relabelling puts the
configuration in family C2: `A=(0,0), E=(1,1), H=(0,h), C=(c,0), D=(1,d), F=(f,1)` and three
arbitrary points. -/
theorem exists_isC2_of_opposite_corners {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hov : ContactOverlap P) (h00 : Occupied P (0, 0))
    (h11 : Occupied P (1, 1)) (hcorner : ¬ Occupied P (1, 0) ∧ ¬ Occupied P (0, 1)) :
    ∃ σ : Equiv.Perm (Fin 9), IsC2 (P ∘ σ) := by
  obtain ⟨iA, hiA⟩ := h00
  obtain ⟨iE, hiE⟩ := h11
  obtain ⟨h10, h01⟩ := hcorner
  obtain ⟨-, ⟨iC, iF, hC, hF, hcf⟩, -, ⟨iH, iD, hH, hD, hdh⟩⟩ := hov
  have hA1 : (P iA).1 = 0 := by rw [hiA]
  have hA2 : (P iA).2 = 0 := by rw [hiA]
  have hE1 : (P iE).1 = 1 := by rw [hiE]
  have hE2 : (P iE).2 = 1 := by rw [hiE]
  have f0 : 0 < (P iF).1 := lt_of_le_of_ne (hP iF).1 fun h => h01 ⟨iF, Prod.ext h.symm hF⟩
  have c1 : (P iC).1 < 1 := lt_of_le_of_ne (hP iC).2.1 fun h => h10 ⟨iC, Prod.ext h hC⟩
  have d0 : 0 < (P iD).2 := lt_of_le_of_ne (hP iD).2.2.1 fun h => h10 ⟨iD, Prod.ext hD h.symm⟩
  have h1 : (P iH).2 < 1 := lt_of_le_of_ne (hP iH).2.2.2 fun h => h01 ⟨iH, Prod.ext hH h⟩
  obtain ⟨σ, s0, s1, s2, s3, s4, s5⟩ := exists_perm₆ (a := iA) (b := iE) (c := iH) (d := iC)
    (e := iD) (f := iF)
    (by rintro rfl; linarith) (by rintro rfl; linarith) (by rintro rfl; linarith)
    (by rintro rfl; linarith) (by rintro rfl; linarith) (by rintro rfl; linarith)
    (by rintro rfl; linarith) (by rintro rfl; linarith) (by rintro rfl; linarith)
    (by rintro rfl; linarith) (by rintro rfl; linarith) (by rintro rfl; linarith)
    (by rintro rfl; linarith) (by rintro rfl; linarith) (by rintro rfl; linarith)
  refine ⟨σ, (P iH).2, (P iC).1, (P iD).2, (P iF).1, P (σ 6), P (σ 7), P (σ 8),
    ⟨d0, hdh, h1, f0, hcf, c1⟩, hP _, hP _, hP _, ?_⟩
  funext i
  fin_cases i <;> simp [c2Config, s0, s1, s2, s3, s4, s5, hiA, hiE] <;> ext <;>
    simp [hC, hD, hF, hH]

/-! ### Equality transfer -/

/-- The inverse of a square symmetry. -/
def symInv (g : SquareSymmetry) : SquareSymmetry :=
  ⟨g.swap, if g.swap then g.flipY else g.flipX, if g.swap then g.flipX else g.flipY⟩

theorem symInv_apply_apply (g : SquareSymmetry) (p : Point) :
    (symInv g).apply (g.apply p) = p := by
  rcases g with ⟨_ | _, _ | _, _ | _⟩ <;> simp [symInv, SquareSymmetry.apply]

theorem apply_symInv_apply (g : SquareSymmetry) (p : Point) :
    g.apply ((symInv g).apply p) = p := by
  rcases g with ⟨_ | _, _ | _, _ | _⟩ <;> simp [symInv, SquareSymmetry.apply]

/-- The composition of two square symmetries. -/
def symComp (g h : SquareSymmetry) : SquareSymmetry :=
  ⟨xor g.swap h.swap, xor g.flipX (if g.swap then h.flipY else h.flipX),
    xor g.flipY (if g.swap then h.flipX else h.flipY)⟩

theorem symComp_apply (g h : SquareSymmetry) (p : Point) :
    (symComp g h).apply p = g.apply (h.apply p) := by
  rcases g with ⟨_ | _, _ | _, _ | _⟩ <;> rcases h with ⟨_ | _, _ | _, _ | _⟩ <;>
    simp [symComp, SquareSymmetry.apply]

theorem continuous_symm_apply (g : SquareSymmetry) : Continuous g.apply := by
  rcases g with ⟨_ | _, _ | _, _ | _⟩ <;> unfold SquareSymmetry.apply <;>
    simp only [Bool.false_eq_true, ↓reduceIte] <;> fun_prop

/-- Optimality is invariant under relabelling. -/
theorem isOptimal_of_perm {P : Fin 9 → Point} (σ : Equiv.Perm (Fin 9))
    (h : IsOptimal (P ∘ σ)) : IsOptimal P := by
  obtain ⟨g, τ, hτ⟩ := h
  exact ⟨g, σ * τ, fun i => hτ i⟩

/-- Optimality is invariant under the symmetries of the square. -/
theorem isOptimal_of_symm {P : Fin 9 → Point} (g : SquareSymmetry)
    (h : IsOptimal (g.apply ∘ P)) : IsOptimal P := by
  obtain ⟨k, τ, hτ⟩ := h
  refine ⟨symComp (symInv g) k, τ, fun i => ?_⟩
  rw [symComp_apply, ← hτ i]
  exact (symInv_apply_apply g _).symm

/-- An optimal configuration has least area `A₀`. -/
theorem minTriangleArea_of_isOptimal {P : Fin 9 → Point} (h : IsOptimal P) :
    minTriangleArea P = A₀ := by
  obtain ⟨g, σ, hσ⟩ := h
  have e : P ∘ σ = g.apply ∘ optimalConfiguration := funext hσ
  rw [← minTriangleArea_comp_perm P σ, e, SquareSymmetry.minTriangleArea_comp,
    minTriangleArea_optimalConfiguration, A₀]

/-- The core of the equality transfer. Let `P` lie in the square and let the configurations
`P + s v`, `s ∈ ℝ`, all have the least area of `P`. If `P + v` lies in the square and is optimal,
then so is `P`. Indeed `P + s v` lies in the square for `0 ≤ s ≤ 1` and has least area `A₀`, so
the strict local optimality (`Chamber.strict_local_max`) forces `P + s v = P + v` for `s < 1` close to
`1`, hence `v = 0`. -/
theorem isOptimal_of_segment {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (v : Fin 9 → Point) (hv : ∀ i, P i + v i ∈ unitSquare)
    (harea : ∀ s : ℝ, minTriangleArea (fun i => P i + s • v i) = minTriangleArea P)
    (hopt : IsOptimal (fun i => P i + v i)) : IsOptimal P := by
  obtain ⟨g, σ, hσ⟩ := hopt
  obtain ⟨ε, hε, c, hc, hloc⟩ := Chamber.strict_local_max
  have hA : minTriangleArea P = A₀ := by
    rw [← harea 1]
    simpa only [one_smul] using minTriangleArea_of_isOptimal ⟨g, σ, hσ⟩
  obtain ⟨R, hR⟩ : ∃ R : ℝ → Fin 9 → Point,
      R = fun s i => (symInv g).apply (P (σ i) + s • v (σ i)) := ⟨_, rfl⟩
  have hR1 : R 1 = optimalConfiguration := by
    funext i
    have h := hσ i
    simp only at h
    simp only [hR, one_smul]
    rw [h]
    exact symInv_apply_apply g _
  have hcont : Continuous R := by
    rw [hR]
    refine continuous_pi fun i => (continuous_symm_apply _).comp ?_
    exact continuous_const.add (continuous_id.smul continuous_const)
  obtain ⟨δ, hδ, hδR⟩ := Metric.continuousAt_iff.1 hcont.continuousAt ε hε
  have hm0 : 0 < min δ 1 := lt_min hδ one_pos
  have hm1 : min δ 1 ≤ 1 := min_le_right _ _
  have hmδ : min δ 1 ≤ δ := min_le_left _ _
  obtain ⟨s, hs⟩ : ∃ s : ℝ, s = 1 - min δ 1 / 2 := ⟨_, rfl⟩
  have hs0 : 0 ≤ s := by linarith
  have hs1 : s < 1 := by linarith
  have hds : dist s 1 < δ := by
    rw [Real.dist_eq, abs_lt]; constructor <;> linarith
  have hclose : dist (R s) optimalConfiguration ≤ ε := by
    rw [← hR1]; exact (hδR hds).le
  have hRs : ∀ i, R s i ∈ unitSquare := fun i => by
    rw [hR]
    apply SquareSymmetry.apply_mem
    obtain ⟨a1, a2, a3, a4⟩ := hP (σ i)
    obtain ⟨b1, b2, b3, b4⟩ := hv (σ i)
    simp only [Prod.fst_add, Prod.snd_add] at b1 b2 b3 b4
    have hs1' : 0 ≤ 1 - s := by linarith
    refine ⟨?_, ?_, ?_, ?_⟩ <;>
      simp only [Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
    · nlinarith [mul_nonneg hs1' a1, mul_nonneg hs0 b1]
    · nlinarith [mul_le_mul_of_nonneg_left a2 hs1', mul_le_mul_of_nonneg_left b2 hs0]
    · nlinarith [mul_nonneg hs1' a3, mul_nonneg hs0 b3]
    · nlinarith [mul_le_mul_of_nonneg_left a4 hs1', mul_le_mul_of_nonneg_left b4 hs0]
  have hminR : minTriangleArea (R s) = A₀ := by
    have e : R s = (symInv g).apply ∘ (fun i => P i + s • v i) ∘ σ := by rw [hR]; rfl
    rw [e, SquareSymmetry.minTriangleArea_comp, minTriangleArea_comp_perm, harea s, hA]
  have hle := hloc (R s) hRs hclose
  rw [hminR] at hle
  have hd0 : dist (R s) optimalConfiguration = 0 := by
    have := dist_nonneg (x := R s) (y := optimalConfiguration)
    nlinarith
  rw [dist_eq_zero, ← hR1] at hd0
  have hv0 : ∀ j, v j = 0 := by
    intro j
    obtain ⟨i, rfl⟩ := σ.surjective j
    have h := congrFun hd0 i
    simp only [hR, one_smul] at h
    have h' := congrArg g.apply h
    rw [apply_symInv_apply, apply_symInv_apply] at h'
    have h1 : s • v (σ i) = v (σ i) := add_left_cancel h'
    have h2 : (1 - s) • v (σ i) = 0 := by rw [sub_smul, one_smul, h1, sub_self]
    exact (smul_eq_zero.1 h2).resolve_left (by linarith)
  exact ⟨g, σ, fun i => by simpa only [hv0, add_zero] using hσ i⟩

theorem isOptimal_of_shearX {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare) {t ℓ : ℝ}
    (hQ : ∀ i, shearX t ℓ (P i) ∈ unitSquare) (hopt : IsOptimal (shearX t ℓ ∘ P)) :
    IsOptimal P := by
  have e : ∀ s : ℝ, (fun i => P i + s • ((t * ((P i).2 - ℓ), 0) : Point)) =
      shearX (s * t) ℓ ∘ P := fun s => by
    funext i; ext <;> simp [shearX]; ring
  have e1 : ∀ i, P i + ((t * ((P i).2 - ℓ), 0) : Point) = shearX t ℓ (P i) := fun i => by
    ext <;> simp [shearX]
  refine isOptimal_of_segment hP (fun i => (t * ((P i).2 - ℓ), 0)) (fun i => ?_) (fun s => ?_) ?_
  · rw [e1]; exact hQ i
  · rw [e s, minTriangleArea_shearX]
  · rw [show (fun i => P i + ((t * ((P i).2 - ℓ), 0) : Point)) = shearX t ℓ ∘ P from funext e1]
    exact hopt

theorem isOptimal_of_shearY {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare) {t ℓ : ℝ}
    (hQ : ∀ i, shearY t ℓ (P i) ∈ unitSquare) (hopt : IsOptimal (shearY t ℓ ∘ P)) :
    IsOptimal P := by
  have e : ∀ s : ℝ, (fun i => P i + s • ((0, t * ((P i).1 - ℓ)) : Point)) =
      shearY (s * t) ℓ ∘ P := fun s => by
    funext i; ext <;> simp [shearY]; ring
  have e1 : ∀ i, P i + ((0, t * ((P i).1 - ℓ)) : Point) = shearY t ℓ (P i) := fun i => by
    ext <;> simp [shearY]
  refine isOptimal_of_segment hP (fun i => (0, t * ((P i).1 - ℓ))) (fun i => ?_) (fun s => ?_) ?_
  · rw [e1]; exact hQ i
  · rw [e s, minTriangleArea_shearY]
  · rw [show (fun i => P i + ((0, t * ((P i).1 - ℓ)) : Point)) = shearY t ℓ ∘ P from funext e1]
    exact hopt

/-- One normalization step transfers optimality backwards. -/
theorem isOptimal_of_normStep {P P' : Fin 9 → Point} (h : NormStep P P') (hopt : IsOptimal P') :
    IsOptimal P := by
  cases h with
  | xShear t ℓ hP hQ => exact isOptimal_of_shearX hP hQ hopt
  | yShear t ℓ hP hQ => exact isOptimal_of_shearY hP hQ hopt
  | symmetry g => exact isOptimal_of_symm g hopt
  | relabel σ => exact isOptimal_of_perm σ hopt

/-- **Equality transfer.** If a configuration `P` is transformed into an optimal configuration
(a relabelled symmetric image of the construction) by finitely many square symmetries,
relabellings and feasible shears, then `P` is itself optimal. For the last shear `F_T` that moves
a point, the configurations `F_t(P')`, `t` between `0` and `T`, stay in the square (the feasible
parameters form an interval), keep every triangle area, and tend to the optimal configuration;
this contradicts the strict local optimality `Chamber.strict_local_max`. `P` need not be a
maximizer. -/
theorem isOptimal_of_normalizes {P Q : Fin 9 → Point} (hPQ : Normalizes P Q) (hQ : IsOptimal Q) :
    IsOptimal P := by
  induction hPQ using Relation.ReflTransGen.head_induction_on with
  | refl => exact hQ
  | head hstep _ ih => exact isOptimal_of_normStep hstep ih

/-! ### Exhaustiveness -/

/-- The five normalized families. -/
def InFamily (Q : Fin 9 → Point) : Prop :=
  IsN Q ∨ IsC1 Q ∨ IsC2 Q ∨ IsTypeII Q ∨ IsTypeIII Q

/-- `P` normalizes to the maximizer `Q`, of the same least area, in one of the five families. -/
def Reaches (P Q : Fin 9 → Point) : Prop :=
  Normalizes P Q ∧ IsMaximizer Q ∧ minTriangleArea Q = minTriangleArea P ∧ InFamily Q

theorem occupied_symm {M : Fin 9 → Point} (g : SquareSymmetry) {c c' : Point}
    (hc : g.apply c = c') (h : Occupied M c) : Occupied (g.apply ∘ M) c' := by
  obtain ⟨i, hi⟩ := h
  exact ⟨i, by simp only [Function.comp_apply, hi, hc]⟩

theorem not_occupied_symm {M : Fin 9 → Point} (g : SquareSymmetry) {c c' : Point}
    (hc : g.apply c = c') (h : ¬ Occupied M c) : ¬ Occupied (g.apply ∘ M) c' := by
  rintro ⟨i, hi⟩
  refine h ⟨i, ?_⟩
  have := congrArg (symInv g).apply (hi.trans hc.symm)
  simpa only [Function.comp_apply, symInv_apply_apply] using this

/-- `P` normalizes to `Q` in one of the five families (no maximality). -/
def ReachesF (P Q : Fin 9 → Point) : Prop := Normalizes P Q ∧ InFamily Q

theorem reachesF_of_symm {M : Fin 9 → Point} (g : SquareSymmetry)
    (h : ∃ Q, ReachesF (g.apply ∘ M) Q) : ∃ Q, ReachesF M Q := by
  obtain ⟨Q, h1, h4⟩ := h
  exact ⟨Q, Relation.ReflTransGen.head (NormStep.symmetry M g) h1, h4⟩

theorem reachesF_of_perm {M : Fin 9 → Point} (σ : Equiv.Perm (Fin 9))
    (h : InFamily (M ∘ σ)) : ∃ Q, ReachesF M Q :=
  ⟨M ∘ σ, .single (.relabel M σ), h⟩

/-- Every configuration of positive least area with no feasible expansion normalizes to a
configuration in one of the five families: `exists_twoContacts_of_noExpand`, then the adjacent-corner
shear (`BoundaryReduction.exists_typeII_or_typeIII_of_noExpand`) or the selections
`exists_isN_of_no_corner`, `exists_isC1_of_one_corner`, `exists_isC2_of_opposite_corners` after a square symmetry. -/
theorem exists_family_of_noExpand {P : Fin 9 → Point} (hP : NoExpand P)
    (hpos : 0 < minTriangleArea P) : ∃ Q, ReachesF P Q := by
  obtain ⟨M, hPM, hLR, hBT⟩ := exists_twoContacts_of_noExpand hP hpos
  have hM := noExpand_of_normalizes hP hPM
  have hposM : 0 < minTriangleArea M := by rw [minTriangleArea_of_normalizes hPM]; exact hpos
  suffices h : ∃ Q, ReachesF M Q by
    obtain ⟨Q, h1, h4⟩ := h
    exact ⟨Q, hPM.trans h1, h4⟩
  have hov := contactOverlap_of_noExpand hM hposM
  have hMg : ∀ g : SquareSymmetry, NoExpand (g.apply ∘ M) := hM.symm
  have hposg : ∀ g : SquareSymmetry, 0 < minTriangleArea (g.apply ∘ M) := fun g => by
    rw [SquareSymmetry.minTriangleArea_comp]; exact hposM
  have hovg : ∀ g : SquareSymmetry, ContactOverlap (g.apply ∘ M) := fun g =>
    contactOverlap_of_noExpand (hMg g) (hposg g)
  have adj : ∀ (g : SquareSymmetry) (c c' : Point), g.apply c = (0, 1) → g.apply c' = (1, 1) →
      Occupied M c → Occupied M c' → ∃ Q, ReachesF M Q := by
    intro g c c' hc hc' h h'
    apply reachesF_of_symm g
    obtain ⟨Q, hQ1, hQ4⟩ := exists_typeII_or_typeIII_of_noExpand (hMg g) (hposg g)
      (occupied_symm g hc h) (occupied_symm g hc' h')
    exact ⟨Q, hQ1, Or.inr (Or.inr (Or.inr hQ4))⟩
  have c1via : ∀ (g : SquareSymmetry) (c : Point), g.apply c = (0, 0) → Occupied M c →
      ¬ Occupied (g.apply ∘ M) (1, 0) → ¬ Occupied (g.apply ∘ M) (0, 1) →
      ¬ Occupied (g.apply ∘ M) (1, 1) → ∃ Q, ReachesF M Q := by
    intro g c hc h h1 h2 h3
    apply reachesF_of_symm g
    obtain ⟨σ, hσ⟩ := exists_isC1_of_one_corner (hMg g).1 (hovg g) (occupied_symm g hc h) ⟨h1, h2, h3⟩
    exact reachesF_of_perm σ (Or.inr (Or.inl hσ))
  by_cases hT : Occupied M (0, 1) ∧ Occupied M (1, 1)
  · exact adj ⟨false, false, false⟩ (0, 1) (1, 1) (by norm_num [SquareSymmetry.apply])
      (by norm_num [SquareSymmetry.apply]) hT.1 hT.2
  by_cases hBo : Occupied M (0, 0) ∧ Occupied M (1, 0)
  · exact adj ⟨false, false, true⟩ (0, 0) (1, 0) (by norm_num [SquareSymmetry.apply])
      (by norm_num [SquareSymmetry.apply]) hBo.1 hBo.2
  by_cases hLe : Occupied M (0, 0) ∧ Occupied M (0, 1)
  · exact adj ⟨true, false, true⟩ (0, 0) (0, 1) (by norm_num [SquareSymmetry.apply])
      (by norm_num [SquareSymmetry.apply]) hLe.1 hLe.2
  by_cases hRi : Occupied M (1, 0) ∧ Occupied M (1, 1)
  · exact adj ⟨true, false, false⟩ (1, 0) (1, 1) (by norm_num [SquareSymmetry.apply])
      (by norm_num [SquareSymmetry.apply]) hRi.1 hRi.2
  by_cases c00 : Occupied M (0, 0) <;> by_cases c11 : Occupied M (1, 1)
  · -- two opposite corners `(0,0)`, `(1,1)`: family C2
    have c10 : ¬ Occupied M (1, 0) := fun h => hBo ⟨c00, h⟩
    have c01 : ¬ Occupied M (0, 1) := fun h => hLe ⟨c00, h⟩
    obtain ⟨σ, hσ⟩ := exists_isC2_of_opposite_corners hM.1 hov c00 c11 ⟨c10, c01⟩
    exact reachesF_of_perm σ (Or.inr (Or.inr (Or.inl hσ)))
  · -- the single corner `(0,0)`: family C1
    have c10 : ¬ Occupied M (1, 0) := fun h => hBo ⟨c00, h⟩
    have c01 : ¬ Occupied M (0, 1) := fun h => hLe ⟨c00, h⟩
    obtain ⟨σ, hσ⟩ := exists_isC1_of_one_corner hM.1 hov c00 ⟨c10, c01, c11⟩
    exact reachesF_of_perm σ (Or.inr (Or.inl hσ))
  · -- the single corner `(1,1)`: the half-turn and family C1
    have c10 : ¬ Occupied M (1, 0) := fun h => hRi ⟨h, c11⟩
    have c01 : ¬ Occupied M (0, 1) := fun h => hT ⟨h, c11⟩
    exact c1via ⟨false, true, true⟩ (1, 1) (by norm_num [SquareSymmetry.apply]) c11
      (not_occupied_symm _ (by norm_num [SquareSymmetry.apply]) c01)
      (not_occupied_symm _ (by norm_num [SquareSymmetry.apply]) c10)
      (not_occupied_symm _ (by norm_num [SquareSymmetry.apply]) c00)
  · by_cases c10 : Occupied M (1, 0) <;> by_cases c01 : Occupied M (0, 1)
    · -- two opposite corners `(1,0)`, `(0,1)`: the reflection `x ↦ 1 - x` and family C2
      apply reachesF_of_symm ⟨false, true, false⟩
      obtain ⟨σ, hσ⟩ := exists_isC2_of_opposite_corners (hMg ⟨false, true, false⟩).1 (hovg _)
        (occupied_symm _ (by norm_num [SquareSymmetry.apply]) c10)
        (occupied_symm _ (by norm_num [SquareSymmetry.apply]) c01)
        ⟨not_occupied_symm _ (by norm_num [SquareSymmetry.apply]) c00,
          not_occupied_symm _ (by norm_num [SquareSymmetry.apply]) c11⟩
      exact reachesF_of_perm σ (Or.inr (Or.inr (Or.inl hσ)))
    · -- the single corner `(1,0)`: the reflection `x ↦ 1 - x` and family C1
      exact c1via ⟨false, true, false⟩ (1, 0) (by norm_num [SquareSymmetry.apply]) c10
        (not_occupied_symm _ (by norm_num [SquareSymmetry.apply]) c00)
        (not_occupied_symm _ (by norm_num [SquareSymmetry.apply]) c11)
        (not_occupied_symm _ (by norm_num [SquareSymmetry.apply]) c01)
    · -- the single corner `(0,1)`: the reflection `y ↦ 1 - y` and family C1
      exact c1via ⟨false, false, true⟩ (0, 1) (by norm_num [SquareSymmetry.apply]) c01
        (not_occupied_symm _ (by norm_num [SquareSymmetry.apply]) c11)
        (not_occupied_symm _ (by norm_num [SquareSymmetry.apply]) c00)
        (not_occupied_symm _ (by norm_num [SquareSymmetry.apply]) c10)
    · -- no occupied corner: family N
      obtain ⟨g, σ, hσ⟩ := exists_isN_of_no_corner hM.1 hposM hov ⟨c00, c10, c01, c11⟩ hLR hBT
      exact reachesF_of_symm g (reachesF_of_perm σ (Or.inl hσ))

/-- Every positive-area maximizer normalizes to a maximizer of the same least area in one of the
five families (`exists_family_of_noExpand`). -/
theorem exists_reaches {P : Fin 9 → Point} (hP : IsMaximizer P) (hpos : 0 < minTriangleArea P) :
    ∃ Q, Reaches P Q := by
  obtain ⟨Q, hPQ, hfam⟩ := exists_family_of_noExpand (noExpand_of_isMaximizer hP hpos) hpos
  exact ⟨Q, hPQ, isMaximizer_of_normalizes hP hPQ, minTriangleArea_of_normalizes hPQ, hfam⟩

/-- **Normalization of a maximizer.** Every positive-area maximizer `P` normalizes (by
feasible shears, square symmetries and relabellings) to a maximizer `Q` with the same least area
and the overlap property, lying in one of the five families N, C1, C2, Type II, Type III. Moreover
`Q` optimal implies `P` optimal (`isOptimal_of_normalizes`). Hence an upper bound proved on the five families holds
for all configurations. -/
theorem normalize {P : Fin 9 → Point} (hP : IsMaximizer P) (hpos : 0 < minTriangleArea P) :
    ∃ Q : Fin 9 → Point, Normalizes P Q ∧ (∀ i, Q i ∈ unitSquare) ∧ IsMaximizer Q ∧
      minTriangleArea Q = minTriangleArea P ∧ (IsOptimal Q → IsOptimal P) ∧
      ContactOverlap Q ∧
      (IsN Q ∨ IsC1 Q ∨ IsC2 Q ∨ IsTypeII Q ∨ IsTypeIII Q) := by
  obtain ⟨Q, hPQ, hQ, hmin, hfam⟩ := exists_reaches hP hpos
  exact ⟨Q, hPQ, hQ.1, hQ, hmin, isOptimal_of_normalizes hPQ, contactOverlap_of_isMaximizer hQ (by rw [hmin]; exact hpos), hfam⟩

end Heilbronn.Nine.GlobalStructure
