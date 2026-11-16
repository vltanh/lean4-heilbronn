module

public import Heilbronn.Nine.Setup.Families

/-! # The boundary reduction of a maximizer (`docs/proof/nine/BOUNDARY_REDUCTION.md`)

**Role.** Primary route, normalization step of `UNRESTRICTED.md` §2. The consequences of the
minimum-area enclosing parallelogram (every side is contacted, opposite contact intervals overlap
in projection) are the two standing facts of `GLOBAL_STRUCTURE.md` (lines 22-27) and of
`UNRESTRICTED.md` (lines 49-54). The adjacent-corner shear produces Type II or Type III in
`GLOBAL_STRUCTURE.md` Theorem 3 (line 174) and in `THREE_INTERIOR_TRIANGLES.md` Corollary 5
(lines 493-494).

**Setting.** A maximizer `P` of nine points in the square (`IsMaximizer`,
`Setup/Families.lean`) with positive least area. The manuscript allows any `n ≥ 5` points
(line 7); only `n = 9` is used, so everything is stated for nine points.

**Normalization moves** (shared with `GLOBAL_STRUCTURE.md`).
* `shearX t ℓ` is the determinant-one shear `(x, y) ↦ (x + t(y - ℓ), y)` and `shearY t ℓ` its
  transpose `(x, y) ↦ (x, y + t(x - ℓ))`. The contact-increasing shears of `GLOBAL_STRUCTURE.md`
  Lemma 1 are of this form, so is the adjacent-corner shear `ψ(x, y) = (x - s(1 - y), y)`
  (`= shearX s 1`), and so is the Type-II shear `(x, y) ↦ (x + τ(1 - y), y)` of `TYPE_II.md` §2
  (`= shearX (-τ) 1`).
* `NormStep P Q`: `Q` comes from `P` by one feasible shear (`P` and its image both in the square),
  one square symmetry, or one relabelling. `Normalizes` is its reflexive-transitive closure: "finitely
  many square symmetries, relabelings, and feasible shears", the hypothesis of
  `GLOBAL_STRUCTURE.md` Lemma 4 (equality transfer).
* `Occupied P c`: some point of `P` is `c` (used for the corners).

**Results.**
* `claim_min_parallelogram`: an affine map that sends every point of `P` into the square has
  absolute determinant at most one (the square is a minimum-area parallelogram containing
  `conv P`).
* `claim_side_contact`: every side of the square contains a point of `P`.
* `claim_overlap`: the projection-overlap property `ContactOverlap P`.
* `claim_adjacent_shear`: if the corners `(0,1)` and `(1,1)` are occupied, feasible shears,
  square symmetries and relabellings give a maximizer of Type II or Type III.

**Proof notes.** The minimum-area enclosing parallelogram is never formed. Each use is one
explicit affine map of determinant greater than one that keeps the points in the square, which
`claim_min_parallelogram` (from `minTriangleArea_affineMap` and maximality) rules out: the stretch
`x ↦ (x - x_min)/(x_max - x_min)` for the side contacts (`exists_fst_eq_zero_one`), and the tilt
`(x, y) ↦ (x, (y + β(x - b₋))/(1 - β(b₋ - t₊)))` with `β > 0` below every nonzero distance of a
point to the top or bottom side for the overlap (`exists_bottom_le_top`). The other three overlap
conditions and the `y`-contacts follow by square symmetries. The relabellings that put named
points first come from `Equiv.Perm.exists_extending_pair` (`exists_perm₃` … `exists_perm₆`).

**No feasible expansion.** Maximality is used only through `claim_min_parallelogram`. The
lemmas are proved under the weaker hypothesis `NoExpand P` (the points are in the square and no
affine map of absolute determinant above one keeps them there), as `*_of_noExpand`, and the
maximizer statements are their corollaries (`noExpand_of_isMaximizer`). `NoExpand` passes along
normalizations (`noExpand_of_normalizes`), and a normalization is a relabelling of an affine image of
absolute determinant one (`normalizes_affine`). This serves `THREE_INTERIOR_TRIANGLES.md`
Corollary 5, which normalizes the minimum-enclosing-parallelogram image of an arbitrary
configuration.

**Not formalized (superseded, off the primary route).** "Some side has two contacts"
(lines 22-42) is superseded by `GLOBAL_STRUCTURE.md` Corollary 2, which does not use it. "No
adjacent occupied corners" and the five-point Type-I form (lines 54-79) are superseded by
`GLOBAL_STRUCTURE.md` §2 (families N, C1, C2).

**Implicit in the manuscript.**
* "Each side holds at most two points" (`UNRESTRICTED.md` line 53) follows from positive least area
  alone. It is stated in `GlobalStructure.lean` (`claim_two_per_side`).
* Adjacent-corner shear (lines 81-98). The manuscript says "if the left and bottom contacts are
  distinct, this is Type II", but Type II also needs `0 < b < 1` (`TYPE_II.md` (5), line 196).
  When the only bottom contact is the corner `(1,0)` (three occupied corners), or the existing
  left contact is `(0,0)`, the configuration is Type III, but only after a square symmetry and a
  relabelling into the order `(0,0), (0,1), (1,1)` of `typeIIIConfig`. The conclusion therefore
  allows symmetries and relabellings (`Normalizes`), not only the shear `ψ`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.BoundaryReduction

/-! ### Normalization moves -/

/-- The determinant-one shear `(x, y) ↦ (x + t(y - ℓ), y)`. It fixes every point of the line
`y = ℓ`, keeps every `y`-coordinate, and preserves every triangle area. -/
def shearX (t ℓ : ℝ) (p : Point) : Point := (p.1 + t * (p.2 - ℓ), p.2)

/-- The transposed determinant-one shear `(x, y) ↦ (x, y + t(x - ℓ))`. -/
def shearY (t ℓ : ℝ) (p : Point) : Point := (p.1, p.2 + t * (p.1 - ℓ))

/-- One move of the normalization: a feasible shear (the configuration and its image both lie
in the square), a square symmetry, or a relabelling. -/
inductive NormStep : (Fin 9 → Point) → (Fin 9 → Point) → Prop
  /-- A feasible shear `shearX t ℓ`. -/
  | xShear {P : Fin 9 → Point} (t ℓ : ℝ) (hP : ∀ i, P i ∈ unitSquare)
      (hQ : ∀ i, shearX t ℓ (P i) ∈ unitSquare) : NormStep P (shearX t ℓ ∘ P)
  /-- A feasible shear `shearY t ℓ`. -/
  | yShear {P : Fin 9 → Point} (t ℓ : ℝ) (hP : ∀ i, P i ∈ unitSquare)
      (hQ : ∀ i, shearY t ℓ (P i) ∈ unitSquare) : NormStep P (shearY t ℓ ∘ P)
  /-- A symmetry of the square. -/
  | symmetry (P : Fin 9 → Point) (g : SquareSymmetry) : NormStep P (g.apply ∘ P)
  /-- A relabelling of the nine points. -/
  | relabel (P : Fin 9 → Point) (σ : Equiv.Perm (Fin 9)) : NormStep P (P ∘ σ)

/-- `Q` is obtained from `P` by finitely many feasible shears, square symmetries and
relabellings. -/
def Normalizes : (Fin 9 → Point) → (Fin 9 → Point) → Prop := Relation.ReflTransGen NormStep

/-- The point `c` (in practice a corner of the square) is a point of the configuration. -/
def Occupied (P : Fin 9 → Point) (c : Point) : Prop := ∃ i, P i = c

/-! ### Auxiliary facts: shears, symmetries, relabellings -/

theorem shearX_apply (t ℓ : ℝ) (p : Point) : shearX t ℓ p = (p.1 + t * (p.2 - ℓ), p.2) := rfl

theorem shearY_apply (t ℓ : ℝ) (p : Point) : shearY t ℓ p = (p.1, p.2 + t * (p.1 - ℓ)) := rfl

theorem shearX_eq_affineMap (t ℓ : ℝ) : shearX t ℓ = affineMap 1 t 0 1 (-(t * ℓ)) 0 := by
  funext p; simp only [shearX, affineMap]; ext <;> ring

theorem shearY_eq_affineMap (t ℓ : ℝ) : shearY t ℓ = affineMap 1 0 t 1 0 (-(t * ℓ)) := by
  funext p; simp only [shearY, affineMap]; ext <;> ring

/-- A shear keeps the least triangle area. -/
theorem minTriangleArea_shearX {n : ℕ} (t ℓ : ℝ) (P : Fin n → Point) :
    minTriangleArea (shearX t ℓ ∘ P) = minTriangleArea P := by
  rw [shearX_eq_affineMap, minTriangleArea_affineMap]; simp

/-- A shear keeps the least triangle area. -/
theorem minTriangleArea_shearY {n : ℕ} (t ℓ : ℝ) (P : Fin n → Point) :
    minTriangleArea (shearY t ℓ ∘ P) = minTriangleArea P := by
  rw [shearY_eq_affineMap, minTriangleArea_affineMap]; simp

theorem isMaximizer_shearX {P : Fin 9 → Point} (hP : IsMaximizer P) {t ℓ : ℝ}
    (h : ∀ i, shearX t ℓ (P i) ∈ unitSquare) : IsMaximizer (shearX t ℓ ∘ P) :=
  ⟨h, fun Q hQ => by rw [minTriangleArea_shearX]; exact hP.2 Q hQ⟩

theorem isMaximizer_shearY {P : Fin 9 → Point} (hP : IsMaximizer P) {t ℓ : ℝ}
    (h : ∀ i, shearY t ℓ (P i) ∈ unitSquare) : IsMaximizer (shearY t ℓ ∘ P) :=
  ⟨h, fun Q hQ => by rw [minTriangleArea_shearY]; exact hP.2 Q hQ⟩

/-- A square symmetry keeps maximizers. -/
theorem isMaximizer_symm {P : Fin 9 → Point} (hP : IsMaximizer P) (g : SquareSymmetry) :
    IsMaximizer (g.apply ∘ P) :=
  ⟨fun i => g.apply_mem (hP.1 i), fun Q hQ => by
    rw [SquareSymmetry.minTriangleArea_comp]; exact hP.2 Q hQ⟩

/-- A relabelling keeps maximizers. -/
theorem isMaximizer_perm {P : Fin 9 → Point} (hP : IsMaximizer P) (σ : Equiv.Perm (Fin 9)) :
    IsMaximizer (P ∘ σ) :=
  ⟨fun i => hP.1 (σ i), fun Q hQ => by rw [minTriangleArea_comp_perm]; exact hP.2 Q hQ⟩

/-- The nine points of a configuration of positive least area are not all on one vertical
line. -/
theorem not_forall_fst_eq {P : Fin 9 → Point} (hpos : 0 < minTriangleArea P) (u : ℝ) :
    ¬ ∀ i, (P i).1 = u := by
  intro h
  apply sarea_ne_zero_of_min_pos hpos 0 1 2
  simp only [sarea, h]; ring

/-- The nine points of a configuration of positive least area are not all on one horizontal
line. -/
theorem not_forall_snd_eq {P : Fin 9 → Point} (hpos : 0 < minTriangleArea P) (u : ℝ) :
    ¬ ∀ i, (P i).2 = u := by
  intro h
  apply sarea_ne_zero_of_min_pos hpos 0 1 2
  simp only [sarea, h]; ring

/-- A positive function on a finite type has a positive lower bound. -/
theorem exists_pos_le {ι : Type*} [Fintype ι] [Nonempty ι] (f : ι → ℝ) (hf : ∀ i, 0 < f i) :
    ∃ β > 0, ∀ i, β ≤ f i := by
  obtain ⟨i, -, hi⟩ := Finset.exists_min_image Finset.univ f Finset.univ_nonempty
  exact ⟨f i, hf i, fun j => hi j (Finset.mem_univ j)⟩

/-- Distinct indices can be moved to the first places by a relabelling. -/
theorem exists_perm_of_injective {k : ℕ} (hk : k ≤ 9) (f : Fin k → Fin 9)
    (hf : Function.Injective f) :
    ∃ σ : Equiv.Perm (Fin 9), ∀ m : Fin k, σ (Fin.castLE hk m) = f m :=
  Equiv.Perm.exists_extending_pair _ _ (Fin.castLE_injective hk) hf

theorem exists_perm₃ {a b c : Fin 9} (hab : a ≠ b) (hac : a ≠ c) (hbc : b ≠ c) :
    ∃ σ : Equiv.Perm (Fin 9), σ 0 = a ∧ σ 1 = b ∧ σ 2 = c := by
  obtain ⟨σ, hσ⟩ := exists_perm_of_injective (k := 3) (by norm_num) ![a, b, c] (by
    intro i j h; fin_cases i <;> fin_cases j <;> simp_all [eq_comm])
  exact ⟨σ, hσ 0, hσ 1, hσ 2⟩

theorem exists_perm₄ {a b c d : Fin 9} (hab : a ≠ b) (hac : a ≠ c) (had : a ≠ d) (hbc : b ≠ c)
    (hbd : b ≠ d) (hcd : c ≠ d) :
    ∃ σ : Equiv.Perm (Fin 9), σ 0 = a ∧ σ 1 = b ∧ σ 2 = c ∧ σ 3 = d := by
  obtain ⟨σ, hσ⟩ := exists_perm_of_injective (k := 4) (by norm_num) ![a, b, c, d] (by
    intro i j h; fin_cases i <;> fin_cases j <;> simp_all [eq_comm])
  exact ⟨σ, hσ 0, hσ 1, hσ 2, hσ 3⟩

theorem exists_perm₅ {a b c d e : Fin 9} (hab : a ≠ b) (hac : a ≠ c) (had : a ≠ d) (hae : a ≠ e)
    (hbc : b ≠ c) (hbd : b ≠ d) (hbe : b ≠ e) (hcd : c ≠ d) (hce : c ≠ e) (hde : d ≠ e) :
    ∃ σ : Equiv.Perm (Fin 9), σ 0 = a ∧ σ 1 = b ∧ σ 2 = c ∧ σ 3 = d ∧ σ 4 = e := by
  obtain ⟨σ, hσ⟩ := exists_perm_of_injective (k := 5) (by norm_num) ![a, b, c, d, e] (by
    intro i j h; fin_cases i <;> fin_cases j <;> simp_all [eq_comm])
  exact ⟨σ, hσ 0, hσ 1, hσ 2, hσ 3, hσ 4⟩

theorem exists_perm₆ {a b c d e f : Fin 9} (hab : a ≠ b) (hac : a ≠ c) (had : a ≠ d)
    (hae : a ≠ e) (haf : a ≠ f) (hbc : b ≠ c) (hbd : b ≠ d) (hbe : b ≠ e) (hbf : b ≠ f)
    (hcd : c ≠ d) (hce : c ≠ e) (hcf : c ≠ f) (hde : d ≠ e) (hdf : d ≠ f) (hef : e ≠ f) :
    ∃ σ : Equiv.Perm (Fin 9), σ 0 = a ∧ σ 1 = b ∧ σ 2 = c ∧ σ 3 = d ∧ σ 4 = e ∧ σ 5 = f := by
  obtain ⟨σ, hσ⟩ := exists_perm_of_injective (k := 6) (by norm_num) ![a, b, c, d, e, f] (by
    intro i j h; fin_cases i <;> fin_cases j <;> simp_all [eq_comm])
  exact ⟨σ, hσ 0, hσ 1, hσ 2, hσ 3, hσ 4, hσ 5⟩

/-! ### No feasible expansion -/

/-- No feasible affine expansion: `P` lies in the square, and every affine map sending all points
of `P` into the square has absolute determinant at most one (the square is a minimum-area
parallelogram containing `conv P`). This is the only consequence of maximality that the
normalization uses (`claim_min_parallelogram`); it also holds for the minimum-enclosing-
parallelogram image of an arbitrary configuration (`THREE_INTERIOR_TRIANGLES.md` Corollary 5). -/
def NoExpand (P : Fin 9 → Point) : Prop :=
  (∀ i, P i ∈ unitSquare) ∧ ∀ a b c d e f : ℝ,
    (∀ i, affineMap a b c d e f (P i) ∈ unitSquare) → |a * d - b * c| ≤ 1

/-- The composite of two affine maps. -/
theorem affineMap_comp (a b c d e f a' b' c' d' e' f' : ℝ) (p : Point) :
    affineMap a' b' c' d' e' f' (affineMap a b c d e f p) =
      affineMap (a' * a + b' * c) (a' * b + b' * d) (c' * a + d' * c) (c' * b + d' * d)
        (a' * e + b' * f + e') (c' * e + d' * f + f') p := by
  simp only [affineMap]; ext <;> ring

theorem det_comp (a b c d a' b' c' d' : ℝ) :
    (a' * a + b' * c) * (c' * b + d' * d) - (a' * b + b' * d) * (c' * a + d' * c) =
      (a' * d' - b' * c') * (a * d - b * c) := by ring

/-- An affine map of absolute determinant one keeps `NoExpand`. -/
theorem NoExpand.affine {P : Fin 9 → Point} (h : NoExpand P) {a b c d e f : ℝ}
    (hdet : |a * d - b * c| = 1) (hQ : ∀ i, affineMap a b c d e f (P i) ∈ unitSquare) :
    NoExpand (affineMap a b c d e f ∘ P) := by
  refine ⟨hQ, fun a' b' c' d' e' f' hT => ?_⟩
  have := h.2 _ _ _ _ _ _ fun i => by rw [← affineMap_comp]; exact hT i
  rwa [det_comp, abs_mul, hdet, mul_one] at this

/-- Every symmetry of the square is an affine map of absolute determinant one. -/
theorem symm_exists_affineMap (g : SquareSymmetry) :
    ∃ a b c d e f : ℝ, |a * d - b * c| = 1 ∧ g.apply = affineMap a b c d e f := by
  rcases g with ⟨_ | _, _ | _, _ | _⟩
  · exact ⟨1, 0, 0, 1, 0, 0, by norm_num, by
      funext p; simp only [SquareSymmetry.apply, affineMap, Bool.false_eq_true, ↓reduceIte]
      ext <;> ring⟩
  · exact ⟨1, 0, 0, -1, 0, 1, by norm_num, by
      funext p; simp only [SquareSymmetry.apply, affineMap, Bool.false_eq_true, ↓reduceIte]
      ext <;> ring⟩
  · exact ⟨-1, 0, 0, 1, 1, 0, by norm_num, by
      funext p; simp only [SquareSymmetry.apply, affineMap, Bool.false_eq_true, ↓reduceIte]
      ext <;> ring⟩
  · exact ⟨-1, 0, 0, -1, 1, 1, by norm_num, by
      funext p; simp only [SquareSymmetry.apply, affineMap, Bool.false_eq_true, ↓reduceIte]
      ext <;> ring⟩
  · exact ⟨0, 1, 1, 0, 0, 0, by norm_num, by
      funext p; simp only [SquareSymmetry.apply, affineMap, Bool.false_eq_true, ↓reduceIte]
      ext <;> ring⟩
  · exact ⟨0, 1, -1, 0, 0, 1, by norm_num, by
      funext p; simp only [SquareSymmetry.apply, affineMap, Bool.false_eq_true, ↓reduceIte]
      ext <;> ring⟩
  · exact ⟨0, -1, 1, 0, 1, 0, by norm_num, by
      funext p; simp only [SquareSymmetry.apply, affineMap, Bool.false_eq_true, ↓reduceIte]
      ext <;> ring⟩
  · exact ⟨0, -1, -1, 0, 1, 1, by norm_num, by
      funext p; simp only [SquareSymmetry.apply, affineMap, ↓reduceIte]
      ext <;> ring⟩

theorem NoExpand.symm {P : Fin 9 → Point} (h : NoExpand P) (g : SquareSymmetry) :
    NoExpand (g.apply ∘ P) := by
  obtain ⟨a, b, c, d, e, f, hdet, hg⟩ := symm_exists_affineMap g
  have hQ : ∀ i, affineMap a b c d e f (P i) ∈ unitSquare := fun i => by
    rw [← hg]; exact g.apply_mem (h.1 i)
  rw [hg]; exact h.affine hdet hQ

theorem NoExpand.perm {P : Fin 9 → Point} (h : NoExpand P) (σ : Equiv.Perm (Fin 9)) :
    NoExpand (P ∘ σ) :=
  ⟨fun i => h.1 (σ i), fun a b c d e f hT => h.2 a b c d e f fun i => by
    simpa using hT (σ.symm i)⟩

theorem NoExpand.shearX {P : Fin 9 → Point} (h : NoExpand P) {t ℓ : ℝ}
    (hQ : ∀ i, shearX t ℓ (P i) ∈ unitSquare) : NoExpand (shearX t ℓ ∘ P) := by
  rw [shearX_eq_affineMap] at hQ ⊢; exact h.affine (by norm_num) hQ

theorem NoExpand.shearY {P : Fin 9 → Point} (h : NoExpand P) {t ℓ : ℝ}
    (hQ : ∀ i, shearY t ℓ (P i) ∈ unitSquare) : NoExpand (shearY t ℓ ∘ P) := by
  rw [shearY_eq_affineMap] at hQ ⊢; exact h.affine (by norm_num) hQ

theorem noExpand_of_normalizes {P Q : Fin 9 → Point} (hP : NoExpand P) (h : Normalizes P Q) :
    NoExpand Q := by
  induction h with
  | refl => exact hP
  | tail _ hs ih =>
    cases hs with
    | xShear t ℓ _ hQ => exact ih.shearX hQ
    | yShear t ℓ _ hQ => exact ih.shearY hQ
    | symmetry g => exact ih.symm g
    | relabel σ => exact ih.perm σ

theorem isMaximizer_of_normalizes {P Q : Fin 9 → Point} (hP : IsMaximizer P)
    (h : Normalizes P Q) : IsMaximizer Q := by
  induction h with
  | refl => exact hP
  | tail _ hs ih =>
    cases hs with
    | xShear t ℓ _ hQ => exact isMaximizer_shearX ih hQ
    | yShear t ℓ _ hQ => exact isMaximizer_shearY ih hQ
    | symmetry g => exact isMaximizer_symm ih g
    | relabel σ => exact isMaximizer_perm ih σ

theorem minTriangleArea_of_normalizes {P Q : Fin 9 → Point} (h : Normalizes P Q) :
    minTriangleArea Q = minTriangleArea P := by
  induction h with
  | refl => rfl
  | tail _ hs ih =>
    cases hs with
    | xShear t ℓ _ hQ => rw [minTriangleArea_shearX, ih]
    | yShear t ℓ _ hQ => rw [minTriangleArea_shearY, ih]
    | symmetry g => rw [SquareSymmetry.minTriangleArea_comp, ih]
    | relabel σ => rw [minTriangleArea_comp_perm, ih]

theorem comp_affine_rep {P Q : Fin 9 → Point} {a b c d e f : ℝ} {σ : Equiv.Perm (Fin 9)}
    (hdet : |a * d - b * c| = 1) (hQ : ∀ i, Q i = affineMap a b c d e f (P (σ i)))
    {a' b' c' d' e' f' : ℝ} (hdet' : |a' * d' - b' * c'| = 1) :
    ∃ (A B C D E F : ℝ) (τ : Equiv.Perm (Fin 9)), |A * D - B * C| = 1 ∧
      ∀ i, affineMap a' b' c' d' e' f' (Q i) = affineMap A B C D E F (P (τ i)) :=
  ⟨a' * a + b' * c, a' * b + b' * d, c' * a + d' * c, c' * b + d' * d, a' * e + b' * f + e',
    c' * e + d' * f + f', σ, by rw [det_comp, abs_mul, hdet', hdet, mul_one], fun i => by
    rw [hQ, affineMap_comp]⟩

/-- A normalization is a relabelling of an affine image of absolute determinant one. -/
theorem normalizes_affine {P Q : Fin 9 → Point} (h : Normalizes P Q) :
    ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 9)), |a * d - b * c| = 1 ∧
      ∀ i, Q i = affineMap a b c d e f (P (σ i)) := by
  induction h with
  | refl => exact ⟨1, 0, 0, 1, 0, 0, 1, by norm_num, fun i => by simp [affineMap]⟩
  | tail _ hs ih =>
    obtain ⟨a, b, c, d, e, f, σ, hdet, hQ⟩ := ih
    cases hs with
    | xShear t ℓ _ _ =>
      obtain ⟨A, B, C, D, E, F, τ, h₁, h₂⟩ := comp_affine_rep hdet hQ (a' := 1) (b' := t)
        (c' := 0) (d' := 1) (e' := -(t * ℓ)) (f' := 0) (by norm_num)
      exact ⟨A, B, C, D, E, F, τ, h₁, fun i => by
        rw [Function.comp_apply, shearX_eq_affineMap, h₂]⟩
    | yShear t ℓ _ _ =>
      obtain ⟨A, B, C, D, E, F, τ, h₁, h₂⟩ := comp_affine_rep hdet hQ (a' := 1) (b' := 0)
        (c' := t) (d' := 1) (e' := 0) (f' := -(t * ℓ)) (by norm_num)
      exact ⟨A, B, C, D, E, F, τ, h₁, fun i => by
        rw [Function.comp_apply, shearY_eq_affineMap, h₂]⟩
    | symmetry g =>
      obtain ⟨a', b', c', d', e', f', hg, hga⟩ := symm_exists_affineMap g
      obtain ⟨A, B, C, D, E, F, τ, h₁, h₂⟩ := comp_affine_rep hdet hQ hg
      exact ⟨A, B, C, D, E, F, τ, h₁, fun i => by rw [Function.comp_apply, hga, h₂]⟩
    | relabel τ =>
      exact ⟨a, b, c, d, e, f, σ * τ, hdet, fun i => by
        rw [Function.comp_apply, hQ]; rfl⟩

/-! ### The minimum-area enclosing parallelogram -/

/-- **Claim** (`BOUNDARY_REDUCTION:claim-min-parallelogram`). The square is a minimum-area
parallelogram containing `conv P`. If the affine map `(x, y) ↦ (ax + by + e, cx + dy + f)` sends
every point of a maximizer `P` of positive least area into the square, then `|ad - bc| ≤ 1`.
The preimage of the square is an enclosing parallelogram of area `1/|ad - bc|`, and a larger
determinant would multiply every triangle area by more than one (an affine map multiplies the
least area by `|det|`, `minTriangleArea_affineMap`).
`docs/proof/nine/BOUNDARY_REDUCTION.md`, lines 12-18. -/
theorem claim_min_parallelogram {P : Fin 9 → Point} (hP : IsMaximizer P)
    (hpos : 0 < minTriangleArea P) {a b c d e f : ℝ}
    (hT : ∀ i, affineMap a b c d e f (P i) ∈ unitSquare) : |a * d - b * c| ≤ 1 := by
  by_contra hlt
  push Not at hlt
  have h1 := hP.2 (affineMap a b c d e f ∘ P) hT
  rw [minTriangleArea_affineMap] at h1
  nlinarith [mul_lt_mul_of_pos_right hlt hpos]

/-- A positive-area maximizer has no feasible expansion. -/
theorem noExpand_of_isMaximizer {P : Fin 9 → Point} (hP : IsMaximizer P)
    (hpos : 0 < minTriangleArea P) : NoExpand P :=
  ⟨hP.1, fun _ _ _ _ _ _ hT => claim_min_parallelogram hP hpos hT⟩

/-- Some point has `x = 0` and some point has `x = 1`: otherwise the affine stretch
`x ↦ (x - x_min)/(x_max - x_min)` has determinant greater than one and keeps the points in the
square. -/
theorem exists_fst_eq_zero_one_of_noExpand {P : Fin 9 → Point} (hP : NoExpand P)
    (hpos : 0 < minTriangleArea P) : (∃ i, (P i).1 = 0) ∧ (∃ i, (P i).1 = 1) := by
  obtain ⟨i₀, -, hi₀⟩ :=
    Finset.exists_min_image Finset.univ (fun i => (P i).1) Finset.univ_nonempty
  obtain ⟨i₁, -, hi₁⟩ :=
    Finset.exists_max_image Finset.univ (fun i => (P i).1) Finset.univ_nonempty
  have hm : ∀ j, (P i₀).1 ≤ (P j).1 := fun j => hi₀ j (Finset.mem_univ _)
  have hM : ∀ j, (P j).1 ≤ (P i₁).1 := fun j => hi₁ j (Finset.mem_univ _)
  have h0 : 0 ≤ (P i₀).1 := (hP.1 i₀).1
  have h1 : (P i₁).1 ≤ 1 := (hP.1 i₁).2.1
  have hlt : (P i₀).1 < (P i₁).1 := by
    by_contra hle
    push Not at hle
    exact not_forall_fst_eq hpos (P i₀).1 fun j => le_antisymm ((hM j).trans hle) (hm j)
  have hw : 1 ≤ (P i₁).1 - (P i₀).1 := by
    by_contra hw
    push Not at hw
    set m := (P i₀).1
    set w := (P i₁).1 - (P i₀).1 with hw_def
    have hw0 : 0 < w := by linarith
    have key := hP.2 (1 / w) 0 0 1 (-m / w) 0 fun i => ?_
    · rw [mul_one, mul_zero, sub_zero, abs_of_pos (by positivity), div_le_one hw0] at key
      linarith
    · have hi := hP.1 i
      have e1 : 1 / w * (P i).1 + 0 * (P i).2 + -m / w = ((P i).1 - m) / w := by ring
      refine ⟨?_, ?_, ?_, ?_⟩
      · simp only [affineMap, e1]; exact div_nonneg (by linarith [hm i]) hw0.le
      · simp only [affineMap, e1]; exact (div_le_one hw0).2 (by linarith [hM i])
      · simp only [affineMap]; linarith [hi.2.2.1]
      · simp only [affineMap]; linarith [hi.2.2.2]
  exact ⟨⟨i₀, by linarith⟩, ⟨i₁, by linarith⟩⟩

/-- Some point has `y = 0` and some point has `y = 1` (the transpose of
`exists_fst_eq_zero_one`). -/
theorem exists_snd_eq_zero_one_of_noExpand {P : Fin 9 → Point} (hP : NoExpand P)
    (hpos : 0 < minTriangleArea P) : (∃ i, (P i).2 = 0) ∧ (∃ i, (P i).2 = 1) := by
  have h := exists_fst_eq_zero_one_of_noExpand (hP.symm ⟨true, false, false⟩)
    (by rwa [SquareSymmetry.minTriangleArea_comp])
  simpa [SquareSymmetry.apply] using h

/-- `claim_side_contact` under `NoExpand`. -/
theorem claim_side_contact_of_noExpand {P : Fin 9 → Point} (hP : NoExpand P)
    (hpos : 0 < minTriangleArea P) :
    (∃ i, (P i).1 = 0) ∧ (∃ i, (P i).2 = 0) ∧ (∃ i, (P i).1 = 1) ∧ (∃ i, (P i).2 = 1) := by
  obtain ⟨h1, h3⟩ := exists_fst_eq_zero_one_of_noExpand hP hpos
  obtain ⟨h2, h4⟩ := exists_snd_eq_zero_one_of_noExpand hP hpos
  exact ⟨h1, h2, h3, h4⟩

/-- One half of the overlap property: some bottom point is weakly left of some top point.
Otherwise every bottom point is strictly right of every top point, `b₋ > t₊`, and the affine map
`(x, y) ↦ (x, (y + β(x - b₋))/(1 - β(b₋ - t₊)))`, for small `β > 0`, keeps the points in the
square and has determinant `1/(1 - β(b₋ - t₊)) > 1`. -/
theorem exists_bottom_le_top_of_noExpand {P : Fin 9 → Point} (hP : NoExpand P)
    (hpos : 0 < minTriangleArea P) : ∃ i j, (P i).2 = 0 ∧ (P j).2 = 1 ∧ (P i).1 ≤ (P j).1 := by
  classical
  by_contra hcon
  push Not at hcon
  obtain ⟨-, ⟨ib, hib⟩, -, ⟨it, hit⟩⟩ := claim_side_contact_of_noExpand hP hpos
  obtain ⟨i₀, hi₀m, hi₀⟩ := Finset.exists_min_image (Finset.univ.filter fun i => (P i).2 = 0)
    (fun i => (P i).1) ⟨ib, by simp [hib]⟩
  obtain ⟨j₀, hj₀m, hj₀⟩ := Finset.exists_max_image (Finset.univ.filter fun i => (P i).2 = 1)
    (fun i => (P i).1) ⟨it, by simp [hit]⟩
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi₀m hj₀m hi₀ hj₀
  set b := (P i₀).1 with hb
  set t := (P j₀).1 with ht
  have htb : t < b := hcon i₀ j₀ hi₀m hj₀m
  obtain ⟨β₀, hβ₀, hβ₀le⟩ := exists_pos_le (fun k => min (if 0 < (P k).2 then (P k).2 else 1)
    (if (P k).2 < 1 then 1 - (P k).2 else 1)) (fun k => by
      apply lt_min <;> split_ifs <;> linarith)
  set β := min β₀ (1 / 2) with hβ_def
  have hβ0 : 0 < β := lt_min hβ₀ (by norm_num)
  have hβ1 : β ≤ 1 / 2 := min_le_right _ _
  have hββ₀ : β ≤ β₀ := min_le_left _ _
  have hβy : ∀ k, 0 < (P k).2 → β ≤ (P k).2 := fun k hk => by
    have := hβ₀le k
    simp only [hk, ↓reduceIte] at this
    linarith [min_le_left (P k).2 (if (P k).2 < 1 then 1 - (P k).2 else 1)]
  have hβy' : ∀ k, (P k).2 < 1 → β ≤ 1 - (P k).2 := fun k hk => by
    have := hβ₀le k
    simp only [hk, ↓reduceIte] at this
    linarith [min_le_right (if 0 < (P k).2 then (P k).2 else 1) (1 - (P k).2)]
  have hb1 : b ≤ 1 := (hP.1 i₀).2.1
  have ht0 : 0 ≤ t := (hP.1 j₀).1
  set δ := b - t with hδ_def
  have hδ : 0 < δ := by linarith
  have hδ1 : δ ≤ 1 := by linarith
  have hD : 0 < 1 - β * δ := by nlinarith
  have hD1 : 1 - β * δ < 1 := by nlinarith [mul_pos hβ0 hδ]
  have key := hP.2 1 0 (β / (1 - β * δ)) (1 / (1 - β * δ)) 0 (-(β * b) / (1 - β * δ)) fun k => ?_
  · rw [one_mul, zero_mul, sub_zero, abs_of_pos (by positivity), div_le_one hD] at key
    linarith
  · have hk := hP.1 k
    have e1 : β / (1 - β * δ) * (P k).1 + 1 / (1 - β * δ) * (P k).2 + -(β * b) / (1 - β * δ)
        = (β * (P k).1 + (P k).2 - β * b) / (1 - β * δ) := by ring
    refine ⟨?_, ?_, ?_, ?_⟩
    · simp only [affineMap]; linarith [hk.1]
    · simp only [affineMap]; linarith [hk.2.1]
    · simp only [affineMap, e1]
      apply div_nonneg _ hD.le
      rcases hk.2.2.1.eq_or_lt with h | h
      · have := hi₀ k h.symm
        nlinarith [mul_nonneg hβ0.le (sub_nonneg.2 this)]
      · have := hβy k h
        nlinarith [mul_le_mul_of_nonneg_left (show b - (P k).1 ≤ 1 by linarith [hk.1]) hβ0.le]
    · simp only [affineMap, e1]
      rw [div_le_one hD]
      rcases hk.2.2.2.lt_or_eq with h | h
      · have := hβy' k h
        nlinarith [mul_le_mul_of_nonneg_left (show (P k).1 - t ≤ 1 by linarith [hk.2.1])
          hβ0.le]
      · have := hj₀ k h
        nlinarith [mul_nonneg hβ0.le (sub_nonneg.2 this)]

/-- **Claim** (`BOUNDARY_REDUCTION:claim-overlap`). Opposite contact intervals overlap in
projection. The `x`-ranges of the bottom and top contacts meet, and so do the `y`-ranges of the
left and right contacts (`ContactOverlap`). If, say, the bottom interval lay strictly left of
the top one, the tilt `v = y - αx` with small `α > 0` would give an enclosing parallelogram of
area `1 + α(b₊ - t₋) < 1`.
`docs/proof/nine/BOUNDARY_REDUCTION.md`, lines 44-52.
Uses: BOUNDARY_REDUCTION:claim-min-parallelogram, BOUNDARY_REDUCTION:claim-side-contact -/
theorem claim_overlap_of_noExpand {P : Fin 9 → Point} (hP : NoExpand P)
    (hpos : 0 < minTriangleArea P) : ContactOverlap P := by
  have hpos' : ∀ g : SquareSymmetry, 0 < minTriangleArea (g.apply ∘ P) := fun g => by
    rwa [SquareSymmetry.minTriangleArea_comp]
  refine ⟨exists_bottom_le_top_of_noExpand hP hpos, ?_, ?_, ?_⟩
  · obtain ⟨i, j, h1, h2, h3⟩ :=
      exists_bottom_le_top_of_noExpand (hP.symm ⟨false, true, false⟩) (hpos' _)
    simp only [Function.comp, SquareSymmetry.apply, Bool.false_eq_true, ↓reduceIte] at h1 h2 h3
    exact ⟨i, j, h1, h2, by linarith⟩
  · obtain ⟨i, j, h1, h2, h3⟩ :=
      exists_bottom_le_top_of_noExpand (hP.symm ⟨true, false, false⟩) (hpos' _)
    simp only [Function.comp, SquareSymmetry.apply, Bool.false_eq_true, ↓reduceIte] at h1 h2 h3
    exact ⟨i, j, h1, h2, by linarith⟩
  · obtain ⟨i, j, h1, h2, h3⟩ :=
      exists_bottom_le_top_of_noExpand (hP.symm ⟨true, true, false⟩) (hpos' _)
    simp only [Function.comp, SquareSymmetry.apply, Bool.false_eq_true, ↓reduceIte] at h1 h2 h3
    exact ⟨i, j, h1, h2, by linarith⟩

/-- **Claim** (`BOUNDARY_REDUCTION:claim-overlap`), for a maximizer (see `claim_overlap_of_noExpand`).
`docs/proof/nine/BOUNDARY_REDUCTION.md`, lines 44-52.
Uses: BOUNDARY_REDUCTION:claim-min-parallelogram, BOUNDARY_REDUCTION:claim-side-contact -/
theorem claim_overlap {P : Fin 9 → Point} (hP : IsMaximizer P)
    (hpos : 0 < minTriangleArea P) : ContactOverlap P :=
  claim_overlap_of_noExpand (noExpand_of_isMaximizer hP hpos) hpos

/-! ### Adjacent occupied corners -/

/-- Adjacent occupied corners `(0,1)` and `(1,1)` with a left contact `(0, λ)`, `λ < 1`, already
present: the configuration is of Type III if `(0,0)` is occupied; of Type II if some bottom
contact `(b, 0)` has `0 < b < 1`; and otherwise `(1,0)` is occupied and the reflection
`x ↦ 1 - x` gives Type III. -/
theorem adjacent_of_left_of_noExpand {P : Fin 9 → Point} (hP : NoExpand P)
    (hpos : 0 < minTriangleArea P) (hD : Occupied P (0, 1)) (hC : Occupied P (1, 1))
    (hL : ∃ k, (P k).1 = 0 ∧ (P k).2 < 1) :
    ∃ Q : Fin 9 → Point, Normalizes P Q ∧ (IsTypeII Q ∨ IsTypeIII Q) := by
  obtain ⟨iD, hiD⟩ := hD
  obtain ⟨iC, hiC⟩ := hC
  obtain ⟨k, hk1, hk2⟩ := hL
  have hDC : iD ≠ iC := ne_of_apply_ne P (by rw [hiD, hiC]; norm_num)
  by_cases h00 : Occupied P (0, 0)
  · -- Type III directly
    obtain ⟨iA, hiA⟩ := h00
    obtain ⟨σ, h0, h1, h2⟩ := exists_perm₃ (ne_of_apply_ne P (by rw [hiA, hiD]; norm_num))
      (ne_of_apply_ne P (by rw [hiA, hiC]; norm_num)) hDC
    refine ⟨P ∘ σ, Relation.ReflTransGen.single (NormStep.relabel P σ), Or.inr ?_⟩
    refine ⟨P (σ 3), P (σ 4), P (σ 5), P (σ 6), P (σ 7), P (σ 8), hP.1 _, hP.1 _, hP.1 _,
      hP.1 _, hP.1 _, hP.1 _, ?_⟩
    funext i
    fin_cases i <;> simp [typeIIIConfig, h0, h1, h2, hiA, hiD, hiC]
  have hlam : 0 < (P k).2 := lt_of_le_of_ne (hP.1 k).2.2.1 fun h =>
    h00 ⟨k, Prod.ext hk1 h.symm⟩
  by_cases hB : ∃ j, (P j).2 = 0 ∧ 0 < (P j).1 ∧ (P j).1 < 1
  · -- Type II directly
    obtain ⟨j, hj0, hj1, hj2⟩ := hB
    have hDk : iD ≠ k := ne_of_apply_ne P fun h => by
      rw [hiD] at h; rw [← h] at hk2; norm_num at hk2
    have hDj : iD ≠ j := ne_of_apply_ne P fun h => by
      rw [hiD] at h; rw [← h] at hj0; norm_num at hj0
    have hCk : iC ≠ k := ne_of_apply_ne P fun h => by
      rw [hiC] at h; rw [← h] at hk1; norm_num at hk1
    have hCj : iC ≠ j := ne_of_apply_ne P fun h => by
      rw [hiC] at h; rw [← h] at hj0; norm_num at hj0
    have hkj : k ≠ j := ne_of_apply_ne P fun h => by rw [h] at hk1; linarith
    obtain ⟨σ, h0, h1, h2, h3⟩ := exists_perm₄ hDC hDk hDj hCk hCj hkj
    refine ⟨P ∘ σ, Relation.ReflTransGen.single (NormStep.relabel P σ), Or.inl ?_⟩
    refine ⟨(P k).2, (P j).1, P (σ 4), P (σ 5), P (σ 6), P (σ 7), P (σ 8), hj1, hj2, hlam, hk2,
      hP.1 _, hP.1 _, hP.1 _, hP.1 _, hP.1 _, ?_⟩
    funext i
    fin_cases i <;> simp [typeIIConfig, h0, h1, h2, h3, hiD, hiC] <;> ext <;> simp [hk1, hj0]
  · -- the only bottom contacts are corners; `(1,0)` is occupied: reflect `x ↦ 1 - x`
    push Not at hB
    obtain ⟨-, ⟨j, hj⟩, -, -⟩ := claim_side_contact_of_noExpand hP hpos
    have hj1 : (P j).1 = 1 := by
      rcases (hP.1 j).1.eq_or_lt with h | h
      · exact absurd ⟨j, Prod.ext h.symm hj⟩ h00
      · exact le_antisymm (hP.1 j).2.1 (hB j hj h)
    set g : SquareSymmetry := ⟨false, true, false⟩
    have hg : ∀ p : Point, g.apply p = (1 - p.1, p.2) := fun p => by
      simp [g, SquareSymmetry.apply]
    have hjD : j ≠ iC := ne_of_apply_ne P (by rw [hiC]; intro h; rw [h] at hj; norm_num at hj)
    have hjC : j ≠ iD := ne_of_apply_ne P (by rw [hiD]; intro h; rw [h] at hj; norm_num at hj)
    obtain ⟨σ, h0, h1, h2⟩ := exists_perm₃ hjD hjC hDC.symm
    refine ⟨(g.apply ∘ P) ∘ σ, (Relation.ReflTransGen.single (NormStep.symmetry P g)).tail
      (NormStep.relabel _ σ), Or.inr ?_⟩
    refine ⟨g.apply (P (σ 3)), g.apply (P (σ 4)), g.apply (P (σ 5)), g.apply (P (σ 6)),
      g.apply (P (σ 7)), g.apply (P (σ 8)), g.apply_mem (hP.1 _), g.apply_mem (hP.1 _),
      g.apply_mem (hP.1 _), g.apply_mem (hP.1 _), g.apply_mem (hP.1 _), g.apply_mem (hP.1 _), ?_⟩
    funext i
    fin_cases i <;> simp [typeIIIConfig, h0, h1, h2, hiD, hiC, hg, hj, hj1]

/-- **Claim** (`BOUNDARY_REDUCTION:claim-adjacent-shear`). Let `P` be a maximizer of positive
least area whose adjacent corners `D = (0,1)` and `C = (1,1)` are occupied. If no left contact
`(0, λ)` with `λ < 1` exists, put `s = min_{y_p < 1} x_p/(1 - y_p)` (so `0 < s ≤ b ≤ 1` for a
bottom contact `(b, 0)`). The shear `ψ(x, y) = (x - s(1 - y), y)` (`shearX s 1`) keeps every
point in the square, fixes `C` and `D`, keeps a bottom contact and creates a left contact below
`D`. The result, after a square symmetry and a relabelling if needed, is a maximizer of Type II
or of Type III with the same least area.
`docs/proof/nine/BOUNDARY_REDUCTION.md`, lines 81-98.
Uses: BOUNDARY_REDUCTION:claim-side-contact -/
theorem claim_adjacent_shear_of_noExpand {P : Fin 9 → Point} (hP : NoExpand P)
    (hpos : 0 < minTriangleArea P) (hD : Occupied P (0, 1)) (hC : Occupied P (1, 1)) :
    ∃ Q : Fin 9 → Point, Normalizes P Q ∧ (IsTypeII Q ∨ IsTypeIII Q) := by
  by_cases hL : ∃ k, (P k).1 = 0 ∧ (P k).2 < 1
  · exact adjacent_of_left_of_noExpand hP hpos hD hC hL
  push Not at hL
  obtain ⟨iD, hiD⟩ := hD
  obtain ⟨iC, hiC⟩ := hC
  obtain ⟨-, ⟨jb, hjb⟩, -, -⟩ := claim_side_contact_of_noExpand hP hpos
  classical
  -- every point below the top line has positive `x`
  have hxpos : ∀ k, (P k).2 < 1 → 0 < (P k).1 := fun k hk =>
    lt_of_le_of_ne (hP.1 k).1 fun h => absurd (hL k h.symm) (not_le.2 hk)
  obtain ⟨k₀, hk₀m, hk₀⟩ := Finset.exists_min_image (Finset.univ.filter fun k => (P k).2 < 1)
    (fun k => (P k).1 / (1 - (P k).2)) ⟨jb, by simp [hjb]⟩
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hk₀m hk₀
  set s := (P k₀).1 / (1 - (P k₀).2) with hs
  have hs0 : 0 < s := div_pos (hxpos k₀ hk₀m) (by linarith)
  have hfeas : ∀ k, shearX s 1 (P k) ∈ unitSquare := fun k => by
    have hk := hP.1 k
    rw [shearX_apply]
    refine ⟨?_, ?_, hk.2.2.1, hk.2.2.2⟩
    · rcases hk.2.2.2.lt_or_eq with h | h
      · have := hk₀ k h
        rw [le_div_iff₀ (by linarith)] at this
        nlinarith
      · rw [h]; linarith [hk.1]
    · nlinarith [hk.2.1, hk.2.2.2]
  have hQ := hP.shearX hfeas
  have hmin := minTriangleArea_shearX s 1 P
  obtain ⟨Q, hPQ, hfam⟩ := adjacent_of_left_of_noExpand hQ (by rwa [hmin])
    ⟨iD, by simp [hiD, shearX_apply]⟩ ⟨iC, by simp [hiC, shearX_apply]⟩
    ⟨k₀, by
      simp only [Function.comp, shearX_apply, hs]
      field_simp
      ring, hk₀m⟩
  exact ⟨Q, Relation.ReflTransGen.head (NormStep.xShear s 1 hP.1 hfeas) hPQ, hfam⟩

end Heilbronn.Nine.BoundaryReduction
