module

public import Heilbronn.Nine.Setup.Families

/-! # The six-boundary setting of family N

Shared definitions for the six-boundary cases. The configuration is `nConfig a h b c d f X Y Z`,
whose six anchors are

`A = (0,a), H = (0,h), B = (b,0), C = (c,0), D = (1,d), F = (f,1)`,
`0 < a < h < 1, 0 < b < c < 1, a ≤ d ≤ h, b ≤ f ≤ c` (`NAnchors a h b c d f`),

and whose three free points `X, Y, Z` lie anywhere in the square.

## Regions (all written as sign conditions on `sarea`)

* the anchor hexagon `I = ABCDFH`, counterclockwise in the order `A, B, C, D, F, H`; a point is
  *anchor-interior* (`InHexagon`) when it is strictly inside;
* the four exterior corner caps (closed triangles; the square corner is a *virtual* vertex):
  the double-contact cap `(0,0)AB` (`InCap00`), `R = CD(1,0)` (`InCapR`), `T = DF(1,1)`
  (`InCapT`, the opposite or top cap) and `L = FH(0,1)` (`InCapL`). A cap point may lie on a
  square side. Inside the square, a closed cap is exactly the set of points weakly beyond its
  anchor chord;
* the actual chord `HC` splits `I` into the lower quadrilateral `HABC` (`InLowerQuad`) and the
  upper quadrilateral `HCDF` (`InUpperQuad`); the virtual lower triangle
  `T₀ = conv{(0,0), H, C}` (`InT0`, closed);
* `J = HD ∩ CF`; the open diagonal sectors `HCJ = HCD ∩ HCF`, `CDJ = HCD ∩ CDF`,
  `DFJ = HDF ∩ CDF`, `FHJ = HDF ∩ HCF` of `HCDF` (`InSectorHCJ`, ...);
* the six cyclic anchor ears `ABH, ABC, BCD, CDF, DFH, FHA` are written directly with
  `InTriangle` and the named points.

`ExactlySixContacts X Y Z`: none of the free points is on the boundary of the square, so the
six anchors are the only boundary contacts. `AtMostOne S X Y Z`: the region `S` contains at most
one free point (capacity one). `anchorPts`: the six anchors in the order of `nConfig`.

## Transposition

`(x, y) ↦ (y, x)` with the relabelling `(A, H, B, C, D, F) ↦ (B, C, A, H, F, D)` maps the
setting with parameters `(a, h, b, c, d, f)` to the one with `(b, c, a, h, f, d)`, keeps all
areas, and exchanges `L` and `R` (`transpose_invariant`).

## Radial words

For a strictly convex polygon `V₀, …, V_{n-1}` (counterclockwise) and a point `R` strictly
inside it, the radial word `r(R)` is defined by `[V_i V_{i+j} R] > 0 ⇔ j ≤ r_i`
(`HasRadialWord`); it satisfies the complement relation `IsRadialWord` (`exists_radialWord`), and
two interior points with different entries at `V_i` have `sgn [V_i P Q] = sgn (r_i(Q) - r_i(P))`
(`sarea_sign_of_radialWord`). These are used by every six-boundary certificate cover (single side,
two side upper, opposite cap, single top, side opposite, two top).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundary

/-! ### The anchors -/

/-- The left anchor `A = (0, a)`. -/
abbrev ptA (a : ℝ) : Point := (0, a)

/-- The left anchor `H = (0, h)`. -/
abbrev ptH (h : ℝ) : Point := (0, h)

/-- The bottom anchor `B = (b, 0)`. -/
abbrev ptB (b : ℝ) : Point := (b, 0)

/-- The bottom anchor `C = (c, 0)`. -/
abbrev ptC (c : ℝ) : Point := (c, 0)

/-- The right anchor `D = (1, d)`. -/
abbrev ptD (d : ℝ) : Point := (1, d)

/-- The top anchor `F = (f, 1)`. -/
abbrev ptF (f : ℝ) : Point := (f, 1)

/-- The six anchors in the order of `nConfig`: `A, H, B, C, D, F`. -/
def anchorPts (a h b c d f : ℝ) : Fin 6 → Point :=
  ![ptA a, ptH h, ptB b, ptC c, ptD d, ptF f]

/-! ### Regions -/

/-- `X` lies strictly inside the anchor hexagon `I = ABCDFH` (counterclockwise in this order). -/
def InHexagon (a h b c d f : ℝ) (X : Point) : Prop :=
  0 < sarea (ptA a) (ptB b) X ∧ 0 < sarea (ptB b) (ptC c) X ∧ 0 < sarea (ptC c) (ptD d) X ∧
    0 < sarea (ptD d) (ptF f) X ∧ 0 < sarea (ptF f) (ptH h) X ∧ 0 < sarea (ptH h) (ptA a) X

/-- `X` lies in the closed double-contact cap `conv{(0,0), A, B}`: a point of the square weakly
beyond the chord `AB`. -/
def InCap00 (a b : ℝ) (X : Point) : Prop :=
  X ∈ unitSquare ∧ sarea (ptA a) (ptB b) X ≤ 0

/-- `X` lies in the closed side cap `R = conv{C, D, (1,0)}` (`CD(1,0)`): a point of the square
weakly beyond the chord `CD`. -/
def InCapR (c d : ℝ) (X : Point) : Prop :=
  X ∈ unitSquare ∧ sarea (ptC c) (ptD d) X ≤ 0

/-- `X` lies in the closed opposite (top) cap `T = conv{D, F, (1,1)}` (`DF(1,1)`): a point of
the square weakly beyond the chord `DF`. -/
def InCapT (d f : ℝ) (X : Point) : Prop :=
  X ∈ unitSquare ∧ sarea (ptD d) (ptF f) X ≤ 0

/-- `X` lies in the closed side cap `L = conv{F, H, (0,1)}` (`FH(0,1)`): a point of the square
weakly beyond the chord `FH`. -/
def InCapL (f h : ℝ) (X : Point) : Prop :=
  X ∈ unitSquare ∧ sarea (ptF f) (ptH h) X ≤ 0

/-- `X` lies strictly inside the lower anchor quadrilateral `HABC` (counterclockwise). -/
def InLowerQuad (a h b c : ℝ) (X : Point) : Prop :=
  0 < sarea (ptH h) (ptA a) X ∧ 0 < sarea (ptA a) (ptB b) X ∧ 0 < sarea (ptB b) (ptC c) X ∧
    0 < sarea (ptC c) (ptH h) X

/-- `X` lies strictly inside the upper anchor quadrilateral `HCDF` (counterclockwise). -/
def InUpperQuad (h c d f : ℝ) (X : Point) : Prop :=
  0 < sarea (ptH h) (ptC c) X ∧ 0 < sarea (ptC c) (ptD d) X ∧ 0 < sarea (ptD d) (ptF f) X ∧
    0 < sarea (ptF f) (ptH h) X

/-- `X` lies in the closed virtual lower triangle `T₀ = conv{(0,0), H, C}`, that is
`x, y ≥ 0` and `h x + c y ≤ h c`. -/
def InT0 (h c : ℝ) (X : Point) : Prop :=
  0 ≤ X.1 ∧ 0 ≤ X.2 ∧ 0 ≤ sarea (ptC c) (ptH h) X

/-- The open diagonal sector `HCJ = HCD ∩ HCF` of `HCDF`. -/
def InSectorHCJ (h c d f : ℝ) (X : Point) : Prop :=
  InTriangle X (ptH h) (ptC c) (ptD d) ∧ InTriangle X (ptH h) (ptC c) (ptF f)

/-- The open diagonal sector `CDJ = HCD ∩ CDF` of `HCDF`. -/
def InSectorCDJ (h c d f : ℝ) (X : Point) : Prop :=
  InTriangle X (ptH h) (ptC c) (ptD d) ∧ InTriangle X (ptC c) (ptD d) (ptF f)

/-- The open diagonal sector `DFJ = HDF ∩ CDF` of `HCDF`. -/
def InSectorDFJ (h c d f : ℝ) (X : Point) : Prop :=
  InTriangle X (ptH h) (ptD d) (ptF f) ∧ InTriangle X (ptC c) (ptD d) (ptF f)

/-- The open diagonal sector `FHJ = HDF ∩ HCF` of `HCDF`. -/
def InSectorFHJ (h c d f : ℝ) (X : Point) : Prop :=
  InTriangle X (ptH h) (ptD d) (ptF f) ∧ InTriangle X (ptH h) (ptC c) (ptF f)

/-! ### Boundary contacts -/

/-- The configuration `nConfig a h b c d f X Y Z` has exactly six boundary contacts (its six
anchors): no free point lies on the boundary of the square. -/
def ExactlySixContacts (X Y Z : Point) : Prop :=
  InOpenSquare X ∧ InOpenSquare Y ∧ InOpenSquare Z

/-- The region `S` contains at most one of the three free points `X, Y, Z` ("capacity one"). -/
def AtMostOne (S : Point → Prop) (X Y Z : Point) : Prop :=
  ¬ (S X ∧ S Y) ∧ ¬ (S X ∧ S Z) ∧ ¬ (S Y ∧ S Z)

/-! ### Relabelling the free points -/

/-- The relabelling of `Fin 9` that fixes the six anchors and permutes the free points by `σ`. -/
def freePerm (σ : Equiv.Perm (Fin 3)) : Fin 9 → Fin 9 := fun i =>
  if h : i.val < 6 then i else ⟨(σ ⟨i.val - 6, by omega⟩).val + 6, by omega⟩

theorem freePerm_injective (σ : Equiv.Perm (Fin 3)) : Function.Injective (freePerm σ) := by
  intro i j hij
  simp only [freePerm] at hij
  split_ifs at hij with hi hj hj
  · exact hij
  · exfalso; have := congrArg Fin.val hij; simp at this; omega
  · exfalso; have := congrArg Fin.val hij; simp at this; omega
  · have h1 := congrArg Fin.val hij
    simp only [Nat.add_right_cancel_iff] at h1
    have h2 := σ.injective (Fin.ext h1)
    simp only [Fin.mk.injEq] at h2
    exact Fin.ext (by omega)

/-- `freePerm σ` as a permutation. -/
noncomputable def freePermEquiv (σ : Equiv.Perm (Fin 3)) : Equiv.Perm (Fin 9) :=
  Equiv.ofBijective (freePerm σ)
    ⟨freePerm_injective σ, Finite.surjective_of_injective (freePerm_injective σ)⟩

theorem nConfig_free (a h b c d f : ℝ) (W : Fin 3 → Point) (k : Fin 3) :
    nConfig a h b c d f (W 0) (W 1) (W 2) ⟨k.val + 6, by omega⟩ = W k := by
  obtain ⟨k, hk⟩ := k
  interval_cases k <;> rfl

theorem freePerm_anchor (σ : Equiv.Perm (Fin 3)) (i : Fin 9) (hi : i.val < 6) :
    freePerm σ i = i := by
  simp [freePerm, hi]

theorem freePerm_free (σ : Equiv.Perm (Fin 3)) (k : Fin 3) :
    freePerm σ ⟨k.val + 6, by omega⟩ = ⟨(σ k).val + 6, by omega⟩ := by
  simp [freePerm]

theorem nConfig_anchor_eq (a h b c d f : ℝ) (X Y Z X' Y' Z' : Point) (i : Fin 9)
    (hi : i.val < 6) : nConfig a h b c d f X Y Z i = nConfig a h b c d f X' Y' Z' i := by
  obtain ⟨i, hi'⟩ := i
  simp only at hi
  interval_cases i <;> simp [nConfig]

theorem nConfig_perm_eq (a h b c d f : ℝ) (W : Fin 3 → Point) (σ : Equiv.Perm (Fin 3)) :
    nConfig a h b c d f (W (σ 0)) (W (σ 1)) (W (σ 2)) =
      nConfig a h b c d f (W 0) (W 1) (W 2) ∘ freePermEquiv σ := by
  funext i
  simp only [Function.comp_apply]
  rw [show (freePermEquiv σ) i = freePerm σ i from rfl]
  by_cases hi : i.val < 6
  · rw [freePerm_anchor σ i hi]
    exact nConfig_anchor_eq a h b c d f _ _ _ _ _ _ i hi
  · have e : i = ⟨(⟨i.val - 6, by omega⟩ : Fin 3).val + 6, by omega⟩ := Fin.ext (by simp only; omega)
    rw [e, freePerm_free, nConfig_free]
    exact nConfig_free a h b c d f (fun j => W (σ j)) _

/-- Optimality is invariant under relabelling (a local copy of
`GlobalStructure.isOptimal_of_perm`). -/
theorem isOptimal_comp_perm_iff (P : Fin 9 → Point) (τ : Equiv.Perm (Fin 9)) :
    IsOptimal (P ∘ τ) ↔ IsOptimal P := by
  constructor
  · rintro ⟨g, ρ, hρ⟩
    exact ⟨g, τ * ρ, fun i => hρ i⟩
  · rintro ⟨g, ρ, hρ⟩
    exact ⟨g, τ⁻¹ * ρ, fun i => by simp [hρ i]⟩

/-- Permuting the three free points does not change the least area. -/
theorem minTriangleArea_nConfig_perm (a h b c d f : ℝ) (W : Fin 3 → Point)
    (σ : Equiv.Perm (Fin 3)) :
    minTriangleArea (nConfig a h b c d f (W (σ 0)) (W (σ 1)) (W (σ 2))) =
      minTriangleArea (nConfig a h b c d f (W 0) (W 1) (W 2)) := by
  rw [nConfig_perm_eq, minTriangleArea_comp_perm]

/-- Permuting the three free points keeps a configuration optimal. -/
theorem isOptimal_nConfig_perm (a h b c d f : ℝ) (W : Fin 3 → Point)
    (σ : Equiv.Perm (Fin 3)) :
    IsOptimal (nConfig a h b c d f (W (σ 0)) (W (σ 1)) (W (σ 2))) ↔
      IsOptimal (nConfig a h b c d f (W 0) (W 1) (W 2)) := by
  rw [nConfig_perm_eq, isOptimal_comp_perm_iff]

/-! ### Transposition -/

/-- The transposition `(x, y) ↦ (y, x)`. -/
def transpose (p : Point) : Point := (p.2, p.1)

theorem transpose_transpose (p : Point) : transpose (transpose p) = p := rfl

theorem sarea_transpose (p q r : Point) :
    sarea (transpose p) (transpose q) (transpose r) = -sarea p q r := by
  simp only [sarea, transpose]; ring

theorem triangleArea_transpose (p q r : Point) :
    triangleArea (transpose p) (transpose q) (transpose r) = triangleArea p q r := by
  simp only [triangleArea_eq, sarea_transpose, abs_neg]

/-- Optimality is kept by the transposition. -/
theorem isOptimal_transpose_of (P : Fin 9 → Point) (h : IsOptimal P) :
    IsOptimal (transpose ∘ P) := by
  obtain ⟨g, ρ, hρ⟩ := h
  refine ⟨⟨!g.swap, g.flipY, g.flipX⟩, ρ, fun i => ?_⟩
  simp only [Function.comp, hρ i]
  rcases g with ⟨_ | _, _ | _, _ | _⟩ <;> simp [SquareSymmetry.apply, transpose]

theorem isOptimal_transpose_iff (P : Fin 9 → Point) :
    IsOptimal (transpose ∘ P) ↔ IsOptimal P := by
  refine ⟨fun h => ?_, isOptimal_transpose_of P⟩
  have := isOptimal_transpose_of _ h
  simpa [Function.comp_def, transpose_transpose] using this

/-- The relabelling `(A, H, B, C, D, F) ↦ (B, C, A, H, F, D)` of the anchors. -/
def anchorSwap : Equiv.Perm (Fin 9) := Equiv.swap 0 2 * Equiv.swap 1 3 * Equiv.swap 4 5

theorem nConfig_transpose (a h b c d f : ℝ) (X Y Z : Point) :
    nConfig b c a h f d (transpose X) (transpose Y) (transpose Z) =
      transpose ∘ (nConfig a h b c d f X Y Z ∘ anchorSwap) := by
  funext i
  fin_cases i <;> rfl

theorem minTriangleArea_transpose (a h b c d f : ℝ) (X Y Z : Point) :
    minTriangleArea (nConfig b c a h f d (transpose X) (transpose Y) (transpose Z)) =
      minTriangleArea (nConfig a h b c d f X Y Z) := by
  rw [nConfig_transpose, minTriangleArea_comp_of_area _ _ triangleArea_transpose,
    minTriangleArea_comp_perm]

/-- The transposition `(x,y) ↦ (y,x)` with the relabelling `(A, H, B, C, D, F) ↦ (B, C, A, H, F, D)`
preserves the N normalization, sending the parameters `(a, h, b, c, d, f)` to
`(b, c, a, h, f, d)`; it keeps the square, the least area and optimality, keeps exactly six
contacts, and maps the regions as follows: `R ↔ L`, `T ↔ T`, `(0,0)AB ↔ (0,0)BA`, the hexagon,
`HABC`, `HCDF` and `T₀` to their transposed copies. -/
theorem transpose_invariant (a h b c d f : ℝ) (X Y Z : Point) :
    (NAnchors a h b c d f ↔ NAnchors b c a h f d) ∧
    (X ∈ unitSquare ↔ transpose X ∈ unitSquare) ∧
    minTriangleArea (nConfig b c a h f d (transpose X) (transpose Y) (transpose Z)) =
      minTriangleArea (nConfig a h b c d f X Y Z) ∧
    (IsOptimal (nConfig b c a h f d (transpose X) (transpose Y) (transpose Z)) ↔
      IsOptimal (nConfig a h b c d f X Y Z)) ∧
    (ExactlySixContacts (transpose X) (transpose Y) (transpose Z) ↔ ExactlySixContacts X Y Z) ∧
    (InCapR c d X ↔ InCapL d c (transpose X)) ∧
    (InCapL f h X ↔ InCapR h f (transpose X)) ∧
    (InCapT d f X ↔ InCapT f d (transpose X)) ∧
    (InCap00 a b X ↔ InCap00 b a (transpose X)) ∧
    (InHexagon a h b c d f X ↔ InHexagon b c a h f d (transpose X)) ∧
    (InLowerQuad a h b c X ↔ InLowerQuad b c a h (transpose X)) ∧
    (InUpperQuad h c d f X ↔ InUpperQuad c h f d (transpose X)) ∧
    (InT0 h c X ↔ InT0 c h (transpose X)) := by
  refine ⟨?_, ?_, minTriangleArea_transpose a h b c d f X Y Z, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_⟩
  · unfold NAnchors; tauto
  · simp only [unitSquare, transpose, Set.mem_ofPred_eq]; tauto
  · rw [nConfig_transpose, isOptimal_transpose_iff, isOptimal_comp_perm_iff]
  · simp only [ExactlySixContacts, InOpenSquare, transpose]; tauto
  all_goals
    simp only [InCapR, InCapL, InCapT, InCap00, InHexagon, InLowerQuad, InUpperQuad, InT0,
      unitSquare, Set.mem_ofPred_eq, transpose, sarea]
    constructor <;> intro hh <;> casesm* _ ∧ _ <;> (repeat' apply And.intro) <;> linarith

/-! ### Radial words -/

/-- The index `i + j` modulo `n`. -/
def cyc {n : ℕ} (i : Fin n) (j : ℕ) : Fin n :=
  ⟨(i.val + j) % n, Nat.mod_lt _ i.pos⟩

/-- `R` lies strictly inside the counterclockwise polygon `V`: strictly on the inner side of
every edge `V_i V_{i+1}`. -/
def InPolygon {n : ℕ} (V : Fin n → Point) (R : Point) : Prop :=
  ∀ i : Fin n, 0 < sarea (V i) (V (cyc i 1)) R

/-- `R` has radial word `r` with respect to the polygon `V`: for every vertex `V_i` and
`1 ≤ j ≤ n-1`, `[V_i V_{i+j} R] > 0` exactly when `j ≤ r_i`. -/
def HasRadialWord {n : ℕ} (V : Fin n → Point) (R : Point) (r : Fin n → ℕ) : Prop :=
  ∀ i : Fin n, ∀ j : ℕ, 1 ≤ j → j < n → (0 < sarea (V i) (V (cyc i j)) R ↔ j ≤ r i)

/-- The complement relation of a word `r` on an `n`-gon: `j ≤ r_i ⇔ n - j > r_{i+j}` for every
`i` and `1 ≤ j ≤ n-1`, together with the range `1 ≤ r_i ≤ n - 2`. -/
def IsRadialWord {n : ℕ} (r : Fin n → ℕ) : Prop :=
  (∀ i : Fin n, 1 ≤ r i ∧ r i + 2 ≤ n) ∧
    ∀ i j : Fin n, 0 < j.val → (j.val ≤ r i ↔ r (cyc i j.val) + j.val < n)

instance {n : ℕ} (r : Fin n → ℕ) : Decidable (IsRadialWord r) := by
  unfold IsRadialWord; infer_instance

/-- The finite set of words `r ∈ {0, …, n-1}ⁿ` satisfying the range and complement relations,
the set enumerated by the certificate covers (for example the 57 heptagon words of the
single-side case). -/
def radialWords (n : ℕ) : Finset (Fin n → Fin n) :=
  Finset.univ.filter fun r => IsRadialWord fun i => (r i : ℕ)

theorem cyc_val {n : ℕ} (i : Fin n) (j : ℕ) : (cyc i j).val = (i.val + j) % n := rfl

/-- Three vertices of a convex counterclockwise polygon in cyclic order from `V i` are
positively oriented. -/
theorem convex_cyc {n : ℕ} {V : Fin n → Point} (hV : IsConvexPolygon V) (i : Fin n) {p q : ℕ}
    (hp : 0 < p) (hpq : p < q) (hq : q < n) :
    0 < sarea (V i) (V (cyc i p)) (V (cyc i q)) := by
  have hi := i.isLt
  rcases lt_or_ge (i.val + q) n with h1 | h1
  · have e1 : (cyc i p).val = i.val + p := by rw [cyc_val, Nat.mod_eq_of_lt (by omega)]
    have e2 : (cyc i q).val = i.val + q := by rw [cyc_val, Nat.mod_eq_of_lt h1]
    exact hV _ _ _ (by rw [Fin.lt_def, e1]; omega) (by rw [Fin.lt_def, e1, e2]; omega)
  have e2 : (cyc i q).val = i.val + q - n := by
    rw [cyc_val, Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (by omega)]
  rcases lt_or_ge (i.val + p) n with h2 | h2
  · have e1 : (cyc i p).val = i.val + p := by rw [cyc_val, Nat.mod_eq_of_lt h2]
    have := hV (cyc i q) i (cyc i p) (by rw [Fin.lt_def, e2]; omega)
      (by rw [Fin.lt_def, e1]; omega)
    rw [sarea_cycle]; exact this
  · have e1 : (cyc i p).val = i.val + p - n := by
      rw [cyc_val, Nat.mod_eq_sub_mod h2, Nat.mod_eq_of_lt (by omega)]
    have := hV (cyc i p) (cyc i q) i (by rw [Fin.lt_def, e1, e2]; omega)
      (by rw [Fin.lt_def, e2]; omega)
    rw [← sarea_cycle]; exact this

theorem cyc_cyc {n : ℕ} (i : Fin n) {j : ℕ} (hj : j < n) : cyc (cyc i j) (n - j) = i := by
  have hi := i.isLt
  apply Fin.ext
  rw [cyc_val, cyc_val]
  rcases lt_or_ge (i.val + j) n with h1 | h1
  · rw [Nat.mod_eq_of_lt h1, show i.val + j + (n - j) = i.val + n by omega, Nat.add_mod_right,
      Nat.mod_eq_of_lt hi]
  · have e1 : (i.val + j) % n = i.val + j - n := by
      rw [Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (by omega)]
    rw [e1, show i.val + j - n + (n - j) = i.val by omega, Nat.mod_eq_of_lt hi]

/-- The vertex before `V i` is `V (cyc i (n-1))`, and the edge from it ends at `V i`. -/
theorem cyc_pred {n : ℕ} (i : Fin n) (hn : 1 ≤ n) : cyc (cyc i (n - 1)) 1 = i := by
  have := cyc_cyc i (j := n - 1) (by omega)
  rwa [show n - (n - 1) = 1 by omega] at this

theorem cyc_ne {n : ℕ} (i : Fin n) {j : ℕ} (hj0 : 0 < j) (hj : j < n) : cyc i j ≠ i := by
  intro h
  have := congrArg Fin.val h
  rw [cyc_val] at this
  have hi := i.isLt
  rcases lt_or_ge (i.val + j) n with h1 | h1
  · rw [Nat.mod_eq_of_lt h1] at this; omega
  · rw [Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (by omega)] at this; omega

/-- The Plücker relation of four points seen from `O`. -/
theorem sarea_pluecker (O U W R Z : Point) :
    sarea O U R * sarea O W Z = sarea O U W * sarea O R Z + sarea O U Z * sarea O W R := by
  simp only [sarea]; ring

/-- Inside a convex polygon, the point `R` is strictly to the right of the ray from `V i` to its
predecessor. -/
theorem neg_pred {n : ℕ} {V : Fin n → Point} {R : Point} (hR : InPolygon V R) (i : Fin n)
    (hn : 1 ≤ n) : 0 < sarea (V i) R (V (cyc i (n - 1))) := by
  have := hR (cyc i (n - 1))
  rw [cyc_pred i hn] at this
  rw [sarea_cycle]; exact this

/-- **Prefix property.** If `[V_i V_{i+j} R] > 0` then `[V_i V_{i+j'} R] > 0` for `1 ≤ j' ≤ j`. -/
theorem radial_prefix {n : ℕ} {V : Fin n → Point} {R : Point} (hV : IsConvexPolygon V)
    (hR : InPolygon V R) (i : Fin n) {j j' : ℕ} (hj' : 1 ≤ j') (hjj : j' ≤ j) (hj : j < n)
    (hpos : 0 < sarea (V i) (V (cyc i j)) R) : 0 < sarea (V i) (V (cyc i j')) R := by
  rcases eq_or_lt_of_le hjj with rfl | hlt
  · exact hpos
  have hpred := neg_pred hR i (by omega)
  rcases lt_or_ge j (n - 1) with hj1 | hj1
  · have h1 := convex_cyc hV i (by omega : 0 < j') hlt hj
    have h2 := convex_cyc hV i (by omega : 0 < j') (by omega : j' < n - 1) (by omega)
    have h3 := convex_cyc hV i (by omega : 0 < j) hj1 (by omega)
    have key := sarea_pluecker (V i) (V (cyc i j')) (V (cyc i j)) R (V (cyc i (n - 1)))
    have : 0 < sarea (V i) (V (cyc i j')) R * sarea (V i) (V (cyc i j)) (V (cyc i (n - 1))) := by
      rw [key]; positivity
    exact pos_of_mul_pos_left this h3.le
  · exfalso
    have e : j = n - 1 := by omega
    subst e
    have := sarea_swap₂₃ (V i) R (V (cyc i (n - 1)))
    linarith

/-- A point strictly inside a strictly convex counterclockwise polygon, collinear with no two of
its vertices, has a radial word: the positive signs `[V_i V_{i+j} R] > 0` form an initial segment
`j ≤ r_i` (convexity makes the positive signs consecutive), with `1 ≤ r_i ≤ n-2`, and the word
satisfies the complement relation `IsRadialWord` (reversing a directed chord).
-/
theorem exists_radialWord {n : ℕ} (V : Fin n → Point) (R : Point) (hn : 3 ≤ n)
    (hV : IsConvexPolygon V) (hR : InPolygon V R)
    (hgen : ∀ i j : Fin n, i ≠ j → sarea (V i) (V j) R ≠ 0) :
    ∃ r : Fin n → ℕ, HasRadialWord V R r ∧ IsRadialWord r := by
  classical
  have hpos1 : ∀ i : Fin n, 0 < sarea (V i) (V (cyc i 1)) R := hR
  let P : Fin n → ℕ → Prop := fun i m => ∀ j', 1 ≤ j' → j' ≤ m → 0 < sarea (V i) (V (cyc i j')) R
  have P0 : ∀ i, P i 0 := fun i j' h1 h2 => by omega
  have H : HasRadialWord V R fun i => Nat.findGreatest (P i) (n - 1) := by
    intro i j hj1 hjn
    constructor
    · intro hp
      exact Nat.le_findGreatest (by omega) fun j' h1 h2 => radial_prefix hV hR i h1 h2 hjn hp
    · intro hle
      exact Nat.findGreatest_spec (P := P i) (Nat.zero_le _) (P0 i) j hj1 hle
  refine ⟨_, H, fun i => ⟨?_, ?_⟩, fun i j hj => ?_⟩
  · exact Nat.le_findGreatest (by omega) fun j' h1 h2 => by
      rw [show j' = 1 by omega]; exact hpos1 i
  · have hle := Nat.findGreatest_le (P := P i) (n - 1)
    by_contra hc
    have hpn := (H i (n - 1) (by omega) (by omega)).2 (by omega)
    have := neg_pred hR i (by omega)
    have := sarea_swap₂₃ (V i) R (V (cyc i (n - 1)))
    linarith
  · have hjn := j.isLt
    have hk := cyc_cyc i hjn
    have e1 := H i j.val hj (by omega)
    have e2 := H (cyc i j.val) (n - j.val) (by omega) (by omega)
    rw [hk] at e2
    have hne := hgen i (cyc i j.val) (cyc_ne i hj hjn).symm
    have hsw := sarea_swap₁₂ (V i) (V (cyc i j.val)) R
    rw [← e1]
    constructor
    · intro hp
      by_contra hc
      have := e2.2 (by omega)
      linarith
    · intro hlt
      by_contra hc
      have : sarea (V i) (V (cyc i j.val)) R < 0 := lt_of_le_of_ne (not_lt.1 hc) hne
      have := e2.1 (by linarith)
      omega

/-- Two interior points `P, Q` of a strictly convex counterclockwise polygon with radial words
`p, q`: if `p_i < q_i` then `[V_i P Q] > 0`, and if `p_i > q_i` then `[V_i P Q] < 0` (the order of
the two rays inside the convex angle at `V_i`). -/
theorem sarea_sign_of_radialWord {n : ℕ} (V : Fin n → Point) (P Q : Point) (hn : 3 ≤ n)
    (hV : IsConvexPolygon V) (hP : InPolygon V P) (hQ : InPolygon V Q) (p q : Fin n → ℕ)
    (hp : HasRadialWord V P p) (hq : HasRadialWord V Q q) (i : Fin n) :
    (p i < q i → 0 < sarea (V i) P Q) ∧ (q i < p i → sarea (V i) P Q < 0) := by
  have key : ∀ (P Q : Point) (p q : Fin n → ℕ), InPolygon V P → InPolygon V Q →
      HasRadialWord V P p → HasRadialWord V Q q → p i < q i → 0 < sarea (V i) P Q := by
    intro P Q p q hP hQ hp hq hlt
    have hPpred := neg_pred hP i (by omega)
    have hQpred := neg_pred hQ i (by omega)
    rcases lt_or_ge (q i) (n - 1) with h1 | h1
    · have hQpos := (hq i (q i) (by omega) (by omega)).2 le_rfl
      have hPneg : ¬ 0 < sarea (V i) (V (cyc i (q i))) P := fun h =>
        absurd ((hp i (q i) (by omega) (by omega)).1 h) (by omega)
      have h3 := convex_cyc hV i (by omega : 0 < q i) h1 (by omega)
      have key := sarea_pluecker (V i) P (V (cyc i (q i))) Q (V (cyc i (n - 1)))
      have hsw := sarea_swap₂₃ (V i) (V (cyc i (q i))) P
      have hm : 0 ≤ sarea (V i) P (V (cyc i (q i))) * sarea (V i) Q (V (cyc i (n - 1))) :=
        mul_nonneg (by linarith) hQpred.le
      have : 0 < sarea (V i) P Q * sarea (V i) (V (cyc i (q i))) (V (cyc i (n - 1))) := by
        rw [key]; nlinarith [mul_pos hPpred hQpos]
      exact pos_of_mul_pos_left this h3.le
    · exfalso
      have := (hq i (n - 1) (by omega) (by omega)).2 h1
      have := sarea_swap₂₃ (V i) Q (V (cyc i (n - 1)))
      linarith
  refine ⟨key P Q p q hP hQ hp hq, fun hlt => ?_⟩
  have := key Q P q p hQ hP hq hp hlt
  have := sarea_swap₂₃ (V i) P Q
  linarith

end Heilbronn.Nine.SixBoundary
