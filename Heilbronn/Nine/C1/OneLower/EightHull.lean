module

public import Heilbronn.Nine.C1.OneLower.TopCap
public import Heilbronn.Nine.C1.OneLower.EightHullCerts
public import Heilbronn.Nine.C1.OneLower.SideCap
public import Heilbronn.Nine.C1.OneLower.RightPair

/-! # Every eight-vertex C1 hull with one lower point is impossible (`docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`)

**Role.** A component of the one-lower C1 class: `C1_ONE_LOWER_MIXED_CAPS:Theorem2` uses the
Theorem for the occupancy row `(U, R, T, L_cap) = (0, 1, 1, 1)` (mode `one_each`) and for the row
`(0, 1, 2, 0)` with a quadrilateral top hull (mode `two_top`). Its Section 3 ((13)–(14)) is
cited by `C1_ONE_LOWER_CONVEX_TOP.md`.

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1`, minimum triangle area at least
`A₀`, exactly one free point `L` in `OHC`; transposing if necessary, `f ≤ d` (line 21). "The full
hull has eight vertices" is `hullVertexCount (c1Config …) = 8`, with `IsHullVertex` defined by
Mathlib's `convexHull`. The two modes, with `R` in the right cap `𝓡`, `X, Y` in the caps:

| mode | free cap points | cyclic hull order |
|---|---|---|
| `OneEach` | `R ∈ 𝓡, X ∈ 𝓣, Y ∈ 𝓛` | `O, C, R, D, X, F, Y, H` |
| `TwoTop` | `R ∈ 𝓡, X, Y ∈ 𝓣`, `D, X, Y, F` convex | `O, C, R, D, X, Y, F, H` |

and the configuration is `c1Config h c d f R X Y L`. Threshold `s = 8/73` (local notation).

**Results.**
* `mainTheorem` (`C1_ONE_LOWER_EIGHT_HULL:Theorem`), with `transpose`; `claim_patterns` (the
  reduction to the two modes).
* `eq1`, `eq2` (both modes); `eq3`–`eq7` (`one_each`; FLAG at `eq4`); `eq9`–`eq12`, `eq15`
  (`two_top`); `eq13_14` (the order of two top-cap vertices, general); `eq17_18` (the six words);
  `eq19_20` (the twelve certificates).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerEightHull

open Heilbronn.Nine.C1
open Heilbronn.Nine.C1OneLowerTopCap (HullWord HasHullWord ConvexPolygon)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-! ### Hull vertices -/

/-- The point `P i` is a vertex of the convex hull of the configuration `P`: it is not in the
convex hull of the other points. -/
def IsHullVertex {n : ℕ} (P : Fin n → Point) (i : Fin n) : Prop :=
  P i ∉ convexHull ℝ (P '' {j | j ≠ i})

open Classical in
/-- The number of vertices of the full convex hull of the configuration `P`. -/
def hullVertexCount {n : ℕ} (P : Fin n → Point) : ℕ := (Finset.univ.filter (IsHullVertex P)).card

/-! ### The two modes -/

/-- Mode `one_each`: `R` in the right cap, `X` in the top cap, `Y` in the left cap (each possibly
on a side of the square), `L` strictly inside `OHC`; C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`
and minimum triangle area at least `A₀` for `c1Config h c d f R X Y L`. The hull is the octagon
`O, C, R, D, X, F, Y, H`. -/
structure OneEach (h c d f : ℝ) (R X Y L : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f R X Y L)
  lower : InLower h c L
  right : InRightCap c d R
  rightSq : R ∈ unitSquare
  top : InTopCap d f X
  topSq : X ∈ unitSquare
  left : InLeftCap f h Y
  leftSq : Y ∈ unitSquare

/-- Mode `two_top`: `R` in the right cap, `X, Y` in the top cap with `D, X, Y, F` a convex
quadrilateral in this counterclockwise order (`[DXY] > 0`, `[XYF] > 0`), `L` strictly inside
`OHC`; C1 anchors and minimum triangle area at least `A₀` for `c1Config h c d f R X Y L`. The hull
is the octagon `O, C, R, D, X, Y, F, H`. -/
structure TwoTop (h c d f : ℝ) (R X Y L : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f R X Y L)
  lower : InLower h c L
  right : InRightCap c d R
  rightSq : R ∈ unitSquare
  topX : InTopCap d f X
  topXSq : X ∈ unitSquare
  topY : InTopCap d f Y
  topYSq : Y ∈ unitSquare
  convexDXY : 0 < sarea (ptD d) X Y
  convexXYF : 0 < sarea X Y (ptF f)

/-- The octagon `V₀, …, V₇ = O, C, R, D, X, F, Y, H` of mode `one_each`. -/
def octagonOneEach (h c d f : ℝ) (R X Y : Point) : Fin 8 → Point :=
  ![ptO, ptC c, R, ptD d, X, ptF f, Y, ptH h]

/-- The octagon `V₀, …, V₇ = O, C, R, D, X, Y, F, H` of mode `two_top`. -/
def octagonTwoTop (h c d f : ℝ) (R X Y : Point) : Fin 8 → Point :=
  ![ptO, ptC c, R, ptD d, X, Y, ptF f, ptH h]

/-- Helper: the transposition `(x, y) ↦ (y, x)` of the plane is linear. -/
theorem isLinearMap_swap : IsLinearMap ℝ (Prod.swap : Point → Point) :=
  ⟨fun _ _ => rfl, fun _ _ => rfl⟩

/-- Helper: relabelling the points by a permutation `σ` and transposing the plane keeps the hull
vertices: `i` is a hull vertex of `j ↦ (P (σ j)).swap` exactly when `σ i` is one of `P`. -/
theorem isHullVertex_swap_comp {n : ℕ} (P : Fin n → Point) (σ : Equiv.Perm (Fin n))
    (i : Fin n) : IsHullVertex (fun j => (P (σ j)).swap) i ↔ IsHullVertex P (σ i) := by
  unfold IsHullVertex
  have himg : (fun j => (P (σ j)).swap) '' {j | j ≠ i} = Prod.swap '' (P '' {j | j ≠ σ i}) := by
    ext p
    simp only [Set.mem_image, Set.mem_ofPred_eq]
    constructor
    · rintro ⟨j, hj, rfl⟩
      exact ⟨P (σ j), ⟨σ j, fun h => hj (σ.injective h), rfl⟩, rfl⟩
    · rintro ⟨q, ⟨j, hj, rfl⟩, rfl⟩
      exact ⟨σ.symm j, fun h => hj (by rw [← h]; simp), by simp⟩
  rw [himg, ← isLinearMap_swap.image_convexHull]
  constructor
  · intro h hm
    exact h ⟨_, hm, rfl⟩
  · rintro h ⟨q, hq, hqe⟩
    have : q = P (σ i) := by
      have := congrArg Prod.swap hqe
      simpa using this
    exact h (this ▸ hq)

/-- Helper (the transposition of line 21): transposing the square, `(x, y) ↦ (y, x)`, maps
`c1Config h c d f W X Y Z` to `c1Config c h f d W' X' Y' Z'` (primes: swapped coordinates) and
keeps the number of hull vertices and the lower count; so `f ≤ d` may be assumed.
`docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, line 21. -/
theorem transpose (h c d f : ℝ) (W X Y Z : Point) :
    hullVertexCount (c1Config c h f d W.swap X.swap Y.swap Z.swap) =
        hullVertexCount (c1Config h c d f W X Y Z) ∧
      lowerCount c h W.swap X.swap Y.swap Z.swap = lowerCount h c W X Y Z := by
  classical
  let σ : Equiv.Perm (Fin 9) :=
    ⟨![0, 4, 3, 2, 1, 5, 6, 7, 8], ![0, 4, 3, 2, 1, 5, 6, 7, 8], by decide, by decide⟩
  have hQ : c1Config c h f d W.swap X.swap Y.swap Z.swap =
      fun j => (c1Config h c d f W X Y Z (σ j)).swap := by
    funext j; fin_cases j <;> rfl
  constructor
  · rw [hQ]
    unfold hullVertexCount
    apply Finset.card_bij (fun i _ => σ i)
    · intro i hi
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
      exact (isHullVertex_swap_comp _ σ i).1 hi
    · intro a _ b _ hab
      exact σ.injective hab
    · intro b hb
      refine ⟨σ.symm b, ?_, by simp⟩
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hb ⊢
      rw [isHullVertex_swap_comp]
      simpa using hb
  · unfold lowerCount countFree
    congr 1
    apply Finset.filter_congr
    intro i _
    have hfree : freePt W.swap X.swap Y.swap Z.swap i = (freePt W X Y Z i).swap := by
      fin_cases i <;> rfl
    rw [hfree]
    generalize freePt W X Y Z i = P
    simp only [InLower, InTriangle, sarea, ptO, ptC, ptH, Prod.fst_swap, Prod.snd_swap]
    constructor
    · rintro ⟨a, b, e⟩
      exact ⟨by linarith, by linarith, by linarith⟩
    · rintro ⟨a, b, e⟩
      exact ⟨by linarith, by linarith, by linarith⟩

/-! ### Hull vertices of the configuration -/

/-- Helper: a point in the convex hull of three other points of the configuration is not a hull
vertex. -/
theorem not_hullVertex {Pc : Fin 9 → Point} {k a b e : Fin 9} (ha : a ≠ k) (hb : b ≠ k)
    (he : e ≠ k) (hmem : Pc k ∈ convexHull ℝ ({Pc a, Pc b, Pc e} : Set Point)) :
    ¬ IsHullVertex Pc k := by
  intro hv
  apply hv
  refine convexHull_mono ?_ hmem
  intro p hp
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
  rcases hp with rfl | rfl | rfl
  exacts [⟨a, ha, rfl⟩, ⟨b, hb, rfl⟩, ⟨e, he, rfl⟩]

/-- Helper: a point strictly inside a triangle lies in its convex hull. -/
theorem mem_hull_of_inTriangle {X A B C : Point} (h : InTriangle X A B C) :
    X ∈ convexHull ℝ ({A, B, C} : Set Point) := by
  obtain ⟨h1, h2, h3⟩ := h
  have := sarea_add_sarea_add_sarea A B C X
  exact C1ZeroLower.mem_convexHull_of_sarea (by linarith) h1.le h2.le h3.le

/-- Helper: with eight hull vertices among the nine points, all points but one non-vertex are
vertices. -/
theorem all_vertices {Pc : Fin 9 → Point} (h8 : hullVertexCount Pc = 8) {k₀ : Fin 9}
    (hk₀ : ¬ IsHullVertex Pc k₀) : ∀ k, k ≠ k₀ → IsHullVertex Pc k := by
  classical
  intro k hk
  by_contra hn
  have hsub : (Finset.univ.filter (IsHullVertex Pc)) ⊆ (Finset.univ.erase k₀).erase k := by
    intro x hx
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hx
    simp only [Finset.mem_erase, Finset.mem_univ, and_true]
    exact ⟨fun e => hn (e ▸ hx), fun e => hk₀ (e ▸ hx)⟩
  have := Finset.card_le_card hsub
  rw [Finset.card_erase_of_mem (by simp [hk]), Finset.card_erase_of_mem (Finset.mem_univ _)]
    at this
  unfold hullVertexCount at h8
  simp only [Finset.card_univ, Fintype.card_fin] at this
  omega

/-- Helper (Lemma 3 of `C1_ZERO_LOWER.md`, its first part, as in `C1ZeroLower.Comp.three_seeds`):
of three top-cap points one lies strictly inside the triangle of `F, D` and another one. -/
theorem three_top_inner {h c d f : ℝ} {Q : Fin 4 → Point} (H : C1ZeroLower.Comp h c d f Q)
    (topc : ∀ k : Fin 3, InTopCap d f (Q k.castSucc)) :
    ∃ σ : Equiv.Perm (Fin 3), InTriangle (Q (σ 2).castSucc) (f, 1) (1, d) (Q (σ 1).castSucc) ∨
      InTriangle (Q (σ 2).castSucc) (f, 1) (1, d) (Q (σ 0).castSucc) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have t0 := C1ZeroLower.two_A₀
  obtain ⟨-, -, a3, a4⟩ := H.anchor_bounds
  obtain ⟨-, -, p3, p4⟩ := H.params_ge
  have hull : ∀ k : Fin 3, Q k.castSucc ∈ convexHull ℝ ({(f, 1), (1, d), C1ZeroLower.ptE} : Set Point) := by
    intro k
    have := C1ZeroLower.top_mem_hull H.hA (H.hQ _) (topc k)
    rwa [Set.insert_comm] at this
  have hFDE : 0 < sarea (f, 1) (1, d) C1ZeroLower.ptE := by
    simp only [sarea]; nlinarith
  have hΩ : sarea (f, 1) (1, d) C1ZeroLower.ptE ≤ 65 / 73 * (65 / 73) := by
    simp only [sarea]
    nlinarith [mul_le_mul (show 1 - d ≤ 65 / 73 by linarith) (show 1 - f ≤ 65 / 73 by linarith)
      (by linarith) (by norm_num)]
  have hnt : ¬ TypeII.TriangularHull ![(f, 1), (1, d), Q 0, Q 1, Q 2] := by
    rintro ⟨a, b, e, hall⟩
    set P5 : Fin 5 → Point := ![(f, 1), (1, d), Q 0, Q 1, Q 2] with hP5
    have r0 := (H.top_row 0 (topc 0)); have r1 := (H.top_row 1 (topc 1))
    have r2 := (H.top_row 2 (topc 2))
    have xb : ∀ m : Fin 5, m ≠ 0 → f + 2 * A₀ ≤ (P5 m).1 := by
      intro m hm
      fin_cases m
      · exact absurd rfl hm
      all_goals simp [hP5]; linarith [r0.1, r1.1, r2.1]
    have yb : ∀ m : Fin 5, m ≠ 1 → d + 2 * A₀ ≤ (P5 m).2 := by
      intro m hm
      fin_cases m
      · simp [hP5]; linarith
      · exact absurd rfl hm
      all_goals simp [hP5]; linarith [r0.2.1, r1.2.1, r2.2.1]
    have vF : a = 0 ∨ b = 0 ∨ e = 0 := by
      by_contra hn; push Not at hn
      have := C1ZeroLower.hull_le 1 0 0 (f + 2 * A₀) (by
        intro p hp; simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
        rcases hp with rfl | rfl | rfl
        · have := xb a hn.1; linarith
        · have := xb b hn.2.1; linarith
        · have := xb e hn.2.2; linarith) _ (hall 0)
      simp [hP5] at this; linarith
    have vD : a = 1 ∨ b = 1 ∨ e = 1 := by
      by_contra hn; push Not at hn
      have := C1ZeroLower.hull_le 0 1 0 (d + 2 * A₀) (by
        intro p hp; simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
        rcases hp with rfl | rfl | rfl
        · have := yb a hn.1; linarith
        · have := yb b hn.2.1; linarith
        · have := yb e hn.2.2; linarith) _ (hall 1)
      simp [hP5] at this; linarith
    have closeK : ∀ k : Fin 5,
        ({P5 a, P5 b, P5 e} : Set Point) ⊆ {(f, 1), (1, d), P5 k} → False := by
      intro k hk
      fin_cases k
      · exact C1ZeroLower.seg_false (fun p hp => by have := hk hp; simp [hP5] at this ⊢; tauto)
          (hall 2) (topc 0)
      · exact C1ZeroLower.seg_false (fun p hp => by have := hk hp; simp [hP5] at this ⊢; tauto)
          (hall 2) (topc 0)
      · exact H.tri_false (by decide) (by decide) (by decide) (topc 0)
          (topc 1) (topc 2) hk (hall 3) (hall 4)
      · exact H.tri_false (by decide) (by decide) (by decide) (topc 1)
          (topc 0) (topc 2) hk (hall 2) (hall 4)
      · exact H.tri_false (by decide) (by decide) (by decide) (topc 2)
          (topc 0) (topc 1) hk (hall 2) (hall 3)
    have sub : ∀ x y z : Fin 5, ∀ p : Point, p ∈ ({P5 x, P5 y, P5 z} : Set Point) →
        p = P5 x ∨ p = P5 y ∨ p = P5 z := by
      intro x y z p hp; simpa only [Set.mem_insert_iff, Set.mem_singleton_iff] using hp
    rcases vF with rfl | rfl | rfl <;> rcases vD with h1 | h1 | h1 <;> (try subst h1) <;>
      first
      | exact absurd h1 (by decide)
      | exact closeK e (fun p hp => by rcases sub _ _ _ p hp with rfl | rfl | rfl <;> simp [hP5])
      | exact closeK b (fun p hp => by rcases sub _ _ _ p hp with rfl | rfl | rfl <;> simp [hP5])
      | exact closeK a (fun p hp => by rcases sub _ _ _ p hp with rfl | rfl | rfl <;> simp [hP5])
  have hm5 := H.min_sub (by norm_num) ![3, 2, 5, 6, 7] (by intro x; fin_cases x <;> simp)
    (by decide)
  have e5 : (fun x => C1ZeroLower.cfg h c d f Q (![3, 2, 5, 6, 7] x)) =
      ![(f, 1), (1, d), Q 0, Q 1, Q 2] := by
    funext x; fin_cases x <;> rfl
  rw [e5] at hm5
  obtain ⟨W', σ, hS, harea⟩ := TypeII.claim_support_normalization hFDE (hull 0) (hull 1) (hull 2)
    (lt_of_lt_of_le A₀_pos hm5) hnt
  have hQσ : ∀ k : Fin 3, ![Q (0 : Fin 3).castSucc, Q (1 : Fin 3).castSucc,
      Q (2 : Fin 3).castSucc] k = Q k.castSucc := by intro k; fin_cases k <;> rfl
  simp only [hQσ] at hS
  have hm := H.min_sub (by norm_num) ![3, 2, (σ 0).val + 5, (σ 1).val + 5, (σ 2).val + 5]
    (by intro x; fin_cases x <;> simp <;> omega)
    (C1ZeroLower.inj5 (by omega) (by omega) (by omega)
      (fun e => (by decide : (0 : Fin 3) ≠ 1) (σ.injective (Fin.ext (by omega))))
      (fun e => (by decide : (0 : Fin 3) ≠ 2) (σ.injective (Fin.ext (by omega))))
      (fun e => (by decide : (1 : Fin 3) ≠ 2) (σ.injective (Fin.ext (by omega)))))
  have e6 : (fun x => C1ZeroLower.cfg h c d f Q
      (![3, 2, (σ 0).val + 5, (σ 1).val + 5, (σ 2).val + 5] x)) =
      ![(f, 1), (1, d), Q (σ 0).castSucc, Q (σ 1).castSucc, Q (σ 2).castSucc] := by
    funext x; fin_cases x
    · rfl
    · rfl
    · exact C1ZeroLower.cfg_free h c d f Q (σ 0).castSucc
    · exact C1ZeroLower.cfg_free h c d f Q (σ 1).castSucc
    · exact C1ZeroLower.cfg_free h c d f Q (σ 2).castSucc
  rw [e6] at hm
  have h1 : sarea (f, 1) (1, d) W' ≤ 1 := by nlinarith
  have rl := C1ZeroLower.rho_lt
  rcases C1ZeroLower.support_cells hS h1 hm with ⟨-, -, hK⟩ | ⟨hTR, hTS⟩ | ⟨-, -, hK⟩
  · exfalso; nlinarith
  · exact ⟨σ, Or.inl hTR⟩
  · exfalso; nlinarith

/-- Helper: four distinct labels are the values of a permutation. -/
theorem perm_of {x y z l : Fin 4} (hxy : x ≠ y) (hxz : x ≠ z) (hyz : y ≠ z) (hxl : x ≠ l)
    (hyl : y ≠ l) (hzl : z ≠ l) : ∃ σ : Equiv.Perm (Fin 4), σ 0 = x ∧ σ 1 = y ∧ σ 2 = z ∧ σ 3 = l := by
  have hinj : Function.Injective (![x, y, z, l] : Fin 4 → Fin 4) := by
    intro u w huw
    fin_cases u <;> fin_cases w <;> simp at huw ⊢ <;> simp_all [eq_comm]
  exact ⟨Equiv.ofBijective _ ⟨hinj, Finite.surjective_of_injective hinj⟩, rfl, rfl, rfl, rfl⟩

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:claim-patterns`). Under `f ≤ d`, an eight-vertex hull with
exactly one lower point is, after naming the free points, in mode `one_each` or `two_top`: every
other free point is a hull vertex outside the anchor pentagon, the cap restrictions leave the
patterns `(n_R, n_T, n_L) = (1,1,1), (1,2,0), (2,1,0), (0,3,0)`, and the last two always have an
interior cap point (two right-cap points have triangular hull with `C, D`; three top-cap points
include an interior one), as does `(1, 2, 0)` with a triangular top hull.
`docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 33-63.
Uses: C1_ZERO_LOWER:Theorem2, C1_ZERO_LOWER:Lemma1, C1_ZERO_LOWER:Lemma3,
C1_ZERO_LOWER:claim-side-cap-capacity. -/
theorem claim_patterns {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f) (hfd : f ≤ d)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hn : lowerCount h c W X Y Z = 1)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (h8 : hullVertexCount (c1Config h c d f W X Y Z) = 8) :
    ∃ σ : Equiv.Perm (Fin 4),
      OneEach h c d f (freePt W X Y Z (σ 0)) (freePt W X Y Z (σ 1)) (freePt W X Y Z (σ 2))
          (freePt W X Y Z (σ 3)) ∨
        TwoTop h c d f (freePt W X Y Z (σ 0)) (freePt W X Y Z (σ 1)) (freePt W X Y Z (σ 2))
          (freePt W X Y Z (σ 3)) := by
  classical
  set P : Fin 4 → Point := freePt W X Y Z with hPdef
  have H : C1ZeroLower.Comp h c d f P := ⟨hA, fun i => by fin_cases i <;> assumption, hmin⟩
  have ePc : c1Config h c d f W X Y Z = c1Config h c d f (P 0) (P 1) (P 2) (P 3) := rfl
  rw [ePc] at h8
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  -- the lower point
  have hlow : (Finset.univ.filter fun i : Fin 4 => InLower h c (P i)).card = 1 := by
    have : lowerCount h c W X Y Z =
        (Finset.univ.filter fun i : Fin 4 => InLower h c (P i)).card := by
      unfold lowerCount countFree; congr
    omega
  obtain ⟨l, hl⟩ := Finset.card_eq_one.1 hlow
  have hlL : InLower h c (P l) := by
    have : l ∈ Finset.univ.filter fun i : Fin 4 => InLower h c (P i) := by rw [hl]; simp
    simpa using this
  have huniq : ∀ i, InLower h c (P i) → i = l := by
    intro i hi
    have : i ∈ Finset.univ.filter fun i : Fin 4 => InLower h c (P i) := by simp [hi]
    rw [hl] at this; simpa using this
  -- every point but `L` is a hull vertex
  set Pc := c1Config h c d f (P 0) (P 1) (P 2) (P 3) with hPc
  have kfree : ∀ i : Fin 4, Pc ⟨i.val + 5, by omega⟩ = P i := C1ZeroLower.c1Config_free h c d f P
  have fne : ∀ i j : Fin 4, i ≠ j →
      (⟨j.val + 5, by omega⟩ : Fin 9) ≠ ⟨i.val + 5, by omega⟩ := fun i j hij e =>
    hij (Fin.ext (by have h1 : j.val + 5 = i.val + 5 := congrArg Fin.val e; omega))
  have ane : ∀ (i : Fin 4) (a : Fin 9), a.val < 5 → a ≠ ⟨i.val + 5, by omega⟩ := fun i a ha e => by
    have h1 : a.val = i.val + 5 := congrArg Fin.val e
    omega
  have hLnv : ¬ IsHullVertex Pc ⟨l.val + 5, by omega⟩ := by
    apply not_hullVertex (a := 0) (b := 1) (e := 4) (ane l 0 (by decide)) (ane l 1 (by decide))
      (ane l 4 (by decide))
    rw [kfree]; exact mem_hull_of_inTriangle hlL
  have vtx := all_vertices h8 hLnv
  have notIn : ∀ i : Fin 4, i ≠ l → ∀ a b e : Fin 9, a ≠ ⟨i.val + 5, by omega⟩ →
      b ≠ ⟨i.val + 5, by omega⟩ → e ≠ ⟨i.val + 5, by omega⟩ →
      P i ∈ convexHull ℝ ({Pc a, Pc b, Pc e} : Set Point) → False := by
    intro i hi a b e ha hb he hmem
    exact not_hullVertex ha hb he (by rw [kfree]; exact hmem)
      (vtx _ (fne l i (Ne.symm hi)))
  -- the regions of the other points
  have reg : ∀ i, i ≠ l → InRightCap c d (P i) ∨ InTopCap d f (P i) ∨ InLeftCap f h (P i) := by
    intro i hi
    rcases C1OneLowerSideCap.partition H i (fun h' => hi (huniq i h')) with hU | hR
    · exfalso
      have hne := C1OneLowerRightPair.area_ne H (u := 4) (v := 2) (w := i.val + 5) (by norm_num)
        (by norm_num) (by omega) (by norm_num) (by omega) (by omega)
      rw [C1ZeroLower.cfg_free] at hne
      obtain ⟨u1, u2, u3, u4⟩ := hU
      rcases hne.lt_or_gt with hneg | hpos
      · refine notIn i hi 4 1 2 (ane i 4 (by norm_num)) (ane i 1 (by norm_num))
          (ane i 2 (by norm_num)) (mem_hull_of_inTriangle ⟨u1, u2, ?_⟩)
        have hneg' : sarea (0, h) (1, d) (P i) < 0 := hneg
        have := sarea_swap₁₂ (0, h) (1, d) (P i)
        show 0 < sarea (1, d) (0, h) (P i); linarith
      · exact notIn i hi 4 2 3 (ane i 4 (by norm_num)) (ane i 2 (by norm_num))
          (ane i 3 (by norm_num)) (mem_hull_of_inTriangle ⟨hpos, u3, u4⟩)
    · exact hR
  obtain ⟨a, b, e, hab, hae, hbe, hal, hbl, hel⟩ := (by decide : ∀ l : Fin 4, ∃ a b e : Fin 4,
    a ≠ b ∧ a ≠ e ∧ b ≠ e ∧ a ≠ l ∧ b ≠ l ∧ e ≠ l) l
  -- two right-cap points: the inner one is inside `C X D` (Lemma 1)
  have twoR : ∀ x y : Fin 4, x ≠ y → x ≠ l → y ≠ l → InRightCap c d (P x) →
      InRightCap c d (P y) → False := by
    intro x y hxy hxl hyl hx hy
    have bx := C1OneLowerRightPair.below_of_right ⟨hd, hdh, hh, hf, hfc, hc⟩ (H.hQ x) hx
    have byy := C1OneLowerRightPair.below_of_right ⟨hd, hdh, hh, hf, hfc, hc⟩ (H.hQ y) hy
    have hne : sarea (1, d) (P x) (P y) ≠ 0 := by
      have := H.areaFF 2 x y (by norm_num) hxy
      intro h0; simp only [C1ZeroLower.cfg] at this; rw [h0] at this; simp at this
      linarith [A₀_pos]
    rcases hne.lt_or_gt with hD | hD
    · obtain ⟨a1, a2, a3, -, -⟩ := H.right_pair_core hxy hx hy bx byy hD
      have hm := mem_hull_of_inTriangle (show InTriangle (P y) (c, 0) (P x) (1, d) from ⟨a2, a3, a1⟩)
      rw [← kfree x] at hm
      exact notIn y hyl 1 ⟨x.val + 5, by omega⟩ 2 (ane y 1 (by norm_num)) (fne y x (Ne.symm hxy))
        (ane y 2 (by norm_num)) hm
    · have hD' : sarea (1, d) (P y) (P x) < 0 := by rw [sarea_swap₂₃]; linarith
      obtain ⟨a1, a2, a3, -, -⟩ := H.right_pair_core (Ne.symm hxy) hy hx byy bx hD'
      have hm := mem_hull_of_inTriangle (show InTriangle (P x) (c, 0) (P y) (1, d) from ⟨a2, a3, a1⟩)
      rw [← kfree y] at hm
      exact notIn x hxl 1 ⟨y.val + 5, by omega⟩ 2 (ane x 1 (by norm_num)) (fne x y hxy)
        (ane x 2 (by norm_num)) hm
  -- two left-cap points (Theorem 2 (i) of `C1_ZERO_LOWER.md`)
  have above : ∀ x : Fin 4, InLeftCap f h (P x) → AboveOF f (P x) := by
    intro x hx
    obtain ⟨x0, x1, y0, y1⟩ := H.hQ x
    unfold InLeftCap ptF ptH at hx
    unfold AboveOF ptO ptF
    simp only [sarea] at hx ⊢
    nlinarith [mul_nonneg (mul_nonneg hf.le (show (0 : ℝ) ≤ h by linarith)) (sub_nonneg.2 y1),
      sub_pos.2 hh]
  have twoL : ∀ x y : Fin 4, x ≠ y → InLeftCap f h (P x) → InLeftCap f h (P y) → False :=
    fun x y hxy hx hy => H.left_pair hfd hxy hx hy (above x hx) (above y hy)
  -- two top-cap points and a left-cap point (Theorem 2 (iii))
  have ttl : ∀ x y z : Fin 4, x ≠ y → InTopCap d f (P x) → InTopCap d f (P y) →
      InLeftCap f h (P z) → False := by
    intro x y z hxy hx hy hz
    obtain ⟨-, -, -, -, l5, -, -⟩ := H.left_row hfd z hz
    have := H.top_two hxy hx hy
    unfold topCapArea at this
    have t := C1ZeroLower.two_A₀
    nlinarith [mul_le_mul (show 1 - d ≤ 41 / 73 by linarith) (show 1 - f ≤ 41 / 73 by linarith)
      (by linarith) (by norm_num)]
  -- relabellings
  have relab : ∀ x y z : Fin 4, x ≠ y → x ≠ z → y ≠ z → x ≠ l → y ≠ l → z ≠ l →
      ∃ σ : Equiv.Perm (Fin 4), σ 0 = x ∧ σ 1 = y ∧ σ 2 = z ∧ σ 3 = l :=
    fun x y z => perm_of
  -- three top-cap points (Lemma 3)
  have ttt : ∀ x y z : Fin 4, x ≠ y → x ≠ z → y ≠ z → x ≠ l → y ≠ l → z ≠ l →
      InTopCap d f (P x) → InTopCap d f (P y) → InTopCap d f (P z) → False := by
    intro x y z hxy hxz hyz hxl hyl hzl hx hy hz
    obtain ⟨σ, s0, s1, s2, s3⟩ := relab x y z hxy hxz hyz hxl hyl hzl
    have H' := H.relabel σ
    have topc : ∀ k : Fin 3, InTopCap d f ((P ∘ σ) k.castSucc) := by
      intro k; fin_cases k
      · show InTopCap d f (P (σ 0)); rw [s0]; exact hx
      · show InTopCap d f (P (σ 1)); rw [s1]; exact hy
      · show InTopCap d f (P (σ 2)); rw [s2]; exact hz
    have nl : ∀ k : Fin 3, σ k.castSucc ≠ l := by
      intro k; fin_cases k
      · show σ 0 ≠ l; rw [s0]; exact hxl
      · show σ 1 ≠ l; rw [s1]; exact hyl
      · show σ 2 ≠ l; rw [s2]; exact hzl
    obtain ⟨τ, hin | hin⟩ := three_top_inner H' topc
    · have hne : σ (τ 2).castSucc ≠ σ (τ 1).castSucc := fun e' =>
        (by decide : (2 : Fin 3) ≠ 1) (τ.injective (Fin.castSucc_injective _ (σ.injective e')))
      have hm := mem_hull_of_inTriangle hin
      simp only [Function.comp] at hm
      rw [← kfree (σ (τ 1).castSucc)] at hm
      exact notIn _ (nl (τ 2)) 3 2 ⟨(σ (τ 1).castSucc).val + 5, by omega⟩ (ane _ 3 (by norm_num))
        (ane _ 2 (by norm_num)) (fne _ _ hne) hm
    · have hne : σ (τ 2).castSucc ≠ σ (τ 0).castSucc := fun e' =>
        (by decide : (2 : Fin 3) ≠ 0) (τ.injective (Fin.castSucc_injective _ (σ.injective e')))
      have hm := mem_hull_of_inTriangle hin
      simp only [Function.comp] at hm
      rw [← kfree (σ (τ 0).castSucc)] at hm
      exact notIn _ (nl (τ 2)) 3 2 ⟨(σ (τ 0).castSucc).val + 5, by omega⟩ (ane _ 3 (by norm_num))
        (ane _ 2 (by norm_num)) (fne _ _ hne) hm
  -- one point in each cap
  have rtl : ∀ x y z : Fin 4, x ≠ y → x ≠ z → y ≠ z → x ≠ l → y ≠ l → z ≠ l →
      InRightCap c d (P x) → InTopCap d f (P y) → InLeftCap f h (P z) →
      ∃ σ : Equiv.Perm (Fin 4), OneEach h c d f (P (σ 0)) (P (σ 1)) (P (σ 2)) (P (σ 3)) ∨
        TwoTop h c d f (P (σ 0)) (P (σ 1)) (P (σ 2)) (P (σ 3)) := by
    intro x y z hxy hxz hyz hxl hyl hzl hx hy hz
    obtain ⟨σ, s0, s1, s2, s3⟩ := relab x y z hxy hxz hyz hxl hyl hzl
    refine ⟨σ, Or.inl ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, (H.relabel σ).hmin, ?_, ?_, H.hQ _, ?_,
      H.hQ _, ?_, H.hQ _⟩⟩
    · rw [s3]; exact hlL
    · rw [s0]; exact hx
    · rw [s1]; exact hy
    · rw [s2]; exact hz
  -- a right-cap point and two top-cap points: the top hull is a convex quadrilateral
  have rtt : ∀ x y z : Fin 4, x ≠ y → x ≠ z → y ≠ z → x ≠ l → y ≠ l → z ≠ l →
      InRightCap c d (P x) → InTopCap d f (P y) → InTopCap d f (P z) →
      ∃ σ : Equiv.Perm (Fin 4), OneEach h c d f (P (σ 0)) (P (σ 1)) (P (σ 2)) (P (σ 3)) ∨
        TwoTop h c d f (P (σ 0)) (P (σ 1)) (P (σ 2)) (P (σ 3)) := by
    intro x y z hxy hxz hyz hxl hyl hzl hx hy hz
    have n1 : sarea (1, d) (P y) (P z) ≠ 0 := by
      have := H.areaFF 2 y z (by norm_num) hyz
      intro h0; simp only [C1ZeroLower.cfg] at this; rw [h0] at this; simp at this
      linarith [A₀_pos]
    have n2 : sarea (P y) (P z) (f, 1) ≠ 0 := by
      have := H.areaFF 3 y z (by norm_num) hyz
      intro h0; simp only [C1ZeroLower.cfg] at this
      rw [← sarea_cycle, h0] at this; simp at this
      linarith [A₀_pos]
    have fy : 0 < sarea (f, 1) (1, d) (P y) := by
      unfold InTopCap ptD ptF at hy; rw [sarea_swap₁₂]; linarith
    have fz : 0 < sarea (f, 1) (1, d) (P z) := by
      unfold InTopCap ptD ptF at hz; rw [sarea_swap₁₂]; linarith
    rcases n1.lt_or_gt with a1 | a1 <;> rcases n2.lt_or_gt with a2 | a2
    · -- `D, Z, Y, F` convex
      obtain ⟨σ, s0, s1, s2, s3⟩ := relab x z y hxz hxy (Ne.symm hyz) hxl hzl hyl
      refine ⟨σ, Or.inr ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, (H.relabel σ).hmin, ?_, ?_, H.hQ _, ?_,
        H.hQ _, ?_, H.hQ _, ?_, ?_⟩⟩
      · rw [s3]; exact hlL
      · rw [s0]; exact hx
      · rw [s1]; exact hz
      · rw [s2]; exact hy
      · rw [s1, s2]; show 0 < sarea (1, d) (P z) (P y)
        have := sarea_swap₂₃ (1, d) (P y) (P z); linarith
      · rw [s1, s2]; show 0 < sarea (P z) (P y) (f, 1)
        have := sarea_swap₁₂ (P y) (P z) (f, 1); linarith
    · -- `Y` inside `D Z F`
      exfalso
      have hin : InTriangle (P y) (1, d) (P z) (f, 1) :=
        ⟨by have := sarea_swap₂₃ (1, d) (P y) (P z); linarith,
          by have := sarea_cycle (P y) (P z) (f, 1); linarith, fy⟩
      have hm := mem_hull_of_inTriangle hin
      rw [← kfree z] at hm
      exact notIn y hyl 2 ⟨z.val + 5, by omega⟩ 3 (ane y 2 (by norm_num)) (fne y z hyz)
        (ane y 3 (by norm_num)) hm
    · -- `Z` inside `D Y F`
      exfalso
      have hin : InTriangle (P z) (1, d) (P y) (f, 1) :=
        ⟨a1, by have := sarea_swap₂₃ (P y) (P z) (f, 1); linarith, fz⟩
      have hm := mem_hull_of_inTriangle hin
      rw [← kfree y] at hm
      exact notIn z hzl 2 ⟨y.val + 5, by omega⟩ 3 (ane z 2 (by norm_num)) (fne z y (Ne.symm hyz))
        (ane z 3 (by norm_num)) hm
    · -- `D, Y, Z, F` convex
      obtain ⟨σ, s0, s1, s2, s3⟩ := relab x y z hxy hxz hyz hxl hyl hzl
      refine ⟨σ, Or.inr ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, (H.relabel σ).hmin, ?_, ?_, H.hQ _, ?_,
        H.hQ _, ?_, H.hQ _, ?_, ?_⟩⟩
      · rw [s3]; exact hlL
      · rw [s0]; exact hx
      · rw [s1]; exact hy
      · rw [s2]; exact hz
      · rw [s1, s2]; exact a1
      · rw [s1, s2]; exact a2
  rcases reg a hal with ha | ha | ha <;> rcases reg b hbl with hb | hb | hb <;>
    rcases reg e hel with he | he | he
  · exact (twoR a b hab hal hbl ha hb).elim
  · exact (twoR a b hab hal hbl ha hb).elim
  · exact (twoR a b hab hal hbl ha hb).elim
  · exact (twoR a e hae hal hel ha he).elim
  · exact rtt a b e hab hae hbe hal hbl hel ha hb he
  · exact rtl a b e hab hae hbe hal hbl hel ha hb he
  · exact (twoR a e hae hal hel ha he).elim
  · exact rtl a e b hae hab (Ne.symm hbe) hal hel hbl ha he hb
  · exact (twoL b e hbe hb he).elim
  · exact (twoR b e hbe hbl hel hb he).elim
  · exact rtt b a e (Ne.symm hab) hbe hae hbl hal hel hb ha he
  · exact rtl b a e (Ne.symm hab) hbe hae hbl hal hel hb ha he
  · exact rtt e a b (Ne.symm hae) (Ne.symm hbe) hab hel hal hbl he ha hb
  · exact (ttt a b e hab hae hbe hal hbl hel ha hb he).elim
  · exact (ttl a b e hab ha hb he).elim
  · exact rtl e a b (Ne.symm hae) (Ne.symm hbe) hab hel hal hbl he ha hb
  · exact (ttl a e b hae ha he hb).elim
  · exact (twoL b e hbe hb he).elim
  · exact (twoR b e hbe hbl hel hb he).elim
  · exact rtl b e a hbe (Ne.symm hab) (Ne.symm hae) hbl hel hal hb he ha
  · exact (twoL a e hae ha he).elim
  · exact rtl e b a (Ne.symm hbe) (Ne.symm hae) (Ne.symm hab) hel hbl hal he hb ha
  · exact (ttl b e a hbe hb he ha).elim
  · exact (twoL a e hae ha he).elim
  · exact (twoL a b hab ha hb).elim
  · exact (twoL a b hab ha hb).elim
  · exact (twoL a b hab ha hb).elim

section

variable {h c d f : ℝ} {R X Y L : Point}

/-! ### Raw area bounds -/

/-- Helper: every actual triangle of `c1Config h c d f R X Y L` has doubled area more than `s`. -/
theorem area_gt (hmin : A₀ ≤ minTriangleArea (c1Config h c d f R X Y L)) (i j k : Fin 9)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    s < |sarea (c1Config h c d f R X Y L i) (c1Config h c d f R X Y L j)
      (c1Config h c d f R X Y L k)| := by
  have := area_of_le_min hmin i j k hij hjk hik
  rw [triangleArea_eq] at this
  linarith [C1ZeroLower.two_A₀.1]

/-- Helper: a nonnegative number of absolute value more than `s` is more than `s`. -/
theorem gt_of_abs_nonneg {x : ℝ} (hx : s < |x|) (h0 : 0 ≤ x) : s < x := by
  rwa [abs_of_nonneg h0] at hx

/-- Helper: a nonpositive number of absolute value more than `s` is below `-s`. -/
theorem gt_neg_of_abs_nonpos {x : ℝ} (hx : s < |x|) (h0 : x ≤ 0) : s < -x := by
  rwa [abs_of_nonpos h0] at hx

/-- Helper: the raw bounds of (1)–(2) from the anchor triangles `OFH, OCD, DFH, CDF` and the
subdivision of `OHC` at `L`: `hf, cd > s`, `[DFH] = (1-d) - (1-f)(h-d) > s`,
`[CDF] = 1 - c + d(c-f) > s`, `hℓx, cℓy > s` and `[CHL] = hc - hℓx - cℓy > s`. -/
theorem base_raw (hA : C1Anchors h c d f)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f R X Y L)) (hL : InLower h c L) :
    s < h * f ∧ s < c * d ∧ s < (1 - d) - (1 - f) * (h - d) ∧ s < 1 - c + d * (c - f) ∧
      s < h * L.1 ∧ s < c * L.2 ∧ s < h * c - h * L.1 - c * L.2 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨l1, l2, l3⟩ := hL
  have e1 : s < |sarea ptO (ptF f) (ptH h)| := area_gt hmin 0 3 4
  have e2 : s < |sarea ptO (ptC c) (ptD d)| := area_gt hmin 0 1 2
  have e3 : s < |sarea (ptD d) (ptF f) (ptH h)| := area_gt hmin 2 3 4
  have e4 : s < |sarea (ptC c) (ptD d) (ptF f)| := area_gt hmin 1 2 3
  have e5 : s < |sarea (ptH h) ptO L| := area_gt hmin 4 0 8
  have e6 : s < |sarea ptO (ptC c) L| := area_gt hmin 0 1 8
  have e7 : s < |sarea (ptC c) (ptH h) L| := area_gt hmin 1 4 8
  have a1 := gt_of_abs_nonneg e1 (by simp only [sarea, ptO, ptF, ptH]; nlinarith)
  have a2 := gt_of_abs_nonneg e2 (by simp only [sarea, ptO, ptC, ptD]; nlinarith)
  have a3 := gt_of_abs_nonneg e3 (by
    simp only [sarea, ptD, ptF, ptH]; nlinarith [mul_nonneg (sub_nonneg.2 (hfc.trans hc.le))
      (sub_nonneg.2 hdh)])
  have a4 := gt_of_abs_nonneg e4 (by
    simp only [sarea, ptC, ptD, ptF]; nlinarith [mul_nonneg hd.le (sub_nonneg.2 hfc)])
  have a5 := gt_of_abs_nonneg e5 l3.le
  have a6 := gt_of_abs_nonneg e6 l1.le
  have a7 := gt_of_abs_nonneg e7 l2.le
  simp only [sarea, ptO, ptC, ptD, ptF, ptH] at a1 a2 a3 a4 a5 a6 a7
  refine ⟨by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith⟩

/-- Helper: a right-cap point `R` with `[CDR]` and `[OCR]` of absolute value more than `s` has
`-[CDR] = d(r_x - c) - (1-c)r_y > s` and `c r_y > s`. -/
theorem right_raw {R : Point} (hc0 : 0 < c) (hR : InRightCap c d R) (hRsq : R ∈ unitSquare)
    (e1 : s < |sarea (ptC c) (ptD d) R|) (e2 : s < |sarea ptO (ptC c) R|) :
    s < d * (R.1 - c) - (1 - c) * R.2 ∧ s < c * R.2 := by
  have a1 := gt_neg_of_abs_nonpos e1 hR.le
  have a2 := gt_of_abs_nonneg e2 (by
    simp only [sarea, ptO, ptC]; nlinarith [mul_nonneg hc0.le hRsq.2.2.1])
  simp only [sarea, ptO, ptC, ptD] at a1 a2
  exact ⟨by linarith, by linarith⟩

/-- Helper: a top-cap point `P` with `[DFP]` of absolute value more than `s` has
`-[DFP] = (1-d)(p_x - f) - (1-f)(1 - p_y) > s`. -/
theorem top_raw {P : Point} (hP : InTopCap d f P) (e : s < |sarea (ptD d) (ptF f) P|) :
    s < (1 - d) * (P.1 - f) - (1 - f) * (1 - P.2) := by
  have a := gt_neg_of_abs_nonpos e hP.le
  simp only [sarea, ptD, ptF] at a
  linarith

/-- Helper: a left-cap point `P` with `[FHP]` and `[HOP]` of absolute value more than `s` has
`[HFP] = f(p_y - h) - (1-h)p_x > s` and `h p_x > s`. -/
theorem left_raw {P : Point} (hh0 : 0 < h) (hP : InLeftCap f h P) (hPsq : P ∈ unitSquare)
    (e1 : s < |sarea (ptF f) (ptH h) P|) (e2 : s < |sarea (ptH h) ptO P|) :
    s < f * (P.2 - h) - (1 - h) * P.1 ∧ s < h * P.1 := by
  have a1 := gt_neg_of_abs_nonpos e1 hP.le
  have a2 := gt_of_abs_nonneg e2 (by
    simp only [sarea, ptO, ptH]; nlinarith [mul_nonneg hh0.le hPsq.1])
  simp only [sarea, ptO, ptF, ptH] at a1 a2
  exact ⟨by linarith, by linarith⟩

/-- Helper: the raw cap bounds in mode `one_each`. -/
theorem OneEach.raw (hM : OneEach h c d f R X Y L) :
    (s < d * (R.1 - c) - (1 - c) * R.2 ∧ s < c * R.2) ∧
      s < (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) ∧
      (s < f * (Y.2 - h) - (1 - h) * Y.1 ∧ s < h * Y.1) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  exact ⟨right_raw (by linarith) hM.right hM.rightSq (area_gt hM.min 1 2 5)
      (area_gt hM.min 0 1 5),
    top_raw hM.top (area_gt hM.min 2 3 6),
    left_raw (by linarith) hM.left hM.leftSq (area_gt hM.min 3 4 7) (area_gt hM.min 4 0 7)⟩

/-- Helper: the raw cap bounds in mode `two_top`. -/
theorem TwoTop.raw (hM : TwoTop h c d f R X Y L) :
    (s < d * (R.1 - c) - (1 - c) * R.2 ∧ s < c * R.2) ∧
      s < (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) ∧
      s < (1 - d) * (Y.1 - f) - (1 - f) * (1 - Y.2) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  exact ⟨right_raw (by linarith) hM.right hM.rightSq (area_gt hM.min 1 2 5)
      (area_gt hM.min 0 1 5),
    top_raw hM.topX (area_gt hM.min 2 3 6), top_raw hM.topY (area_gt hM.min 2 3 7)⟩

/-- Helper: the common data of the two modes. -/
theorem mode_base (hM : OneEach h c d f R X Y L ∨ TwoTop h c d f R X Y L) :
    C1Anchors h c d f ∧ A₀ ≤ minTriangleArea (c1Config h c d f R X Y L) ∧ InLower h c L := by
  rcases hM with hM | hM
  · exact ⟨hM.anchors, hM.min, hM.lower⟩
  · exact ⟨hM.anchors, hM.min, hM.lower⟩

/-! ### Bounds in both modes -/

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(1)`). The lower triangle and the anchor areas give
`hc ≥ 3s`, `hf, cd ≥ s`, `d, f ≤ 1 - s`. `docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 71-75. -/
theorem eq1 (hM : OneEach h c d f R X Y L ∨ TwoTop h c d f R X Y L) :
    3 * s ≤ h * c ∧ s ≤ h * f ∧ s ≤ c * d ∧ d ≤ 1 - s ∧ f ≤ 1 - s := by
  obtain ⟨hA, hmin, hL⟩ := mode_base hM
  obtain ⟨a1, a2, a3, a4, a5, a6, a7⟩ := base_raw hA hmin hL
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  refine ⟨by linarith, a1.le, a2.le, ?_, ?_⟩
  · nlinarith [mul_nonneg (sub_nonneg.2 (hfc.trans hc.le)) (sub_nonneg.2 hdh)]
  · nlinarith [mul_nonneg (sub_nonneg.2 (hdh.trans hh.le)) (sub_nonneg.2 hfc)]

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(2)`). Subdivision of `OHC` at `L`: `ℓ_x ≥ s/h`,
`ℓ_y ≥ s/c`, `c - ℓ_x ≥ 2s/h`, `h - ℓ_y ≥ 2s/c`, `ℓ_x + ℓ_y ≤ 1 - s`.
`docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 77-89. -/
theorem eq2 (hM : OneEach h c d f R X Y L ∨ TwoTop h c d f R X Y L) :
    s / h ≤ L.1 ∧ s / c ≤ L.2 ∧ 2 * s / h ≤ c - L.1 ∧ 2 * s / c ≤ h - L.2 ∧
      L.1 + L.2 ≤ 1 - s := by
  obtain ⟨hA, hmin, hL⟩ := mode_base hM
  obtain ⟨-, -, -, -, a5, a6, a7⟩ := base_raw hA hmin hL
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have h0 : 0 < h := by linarith
  have c0 : 0 < c := by linarith
  have lx : 0 < L.1 := by nlinarith
  have ly : 0 < L.2 := by nlinarith
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rw [div_le_iff₀ h0]; linarith
  · rw [div_le_iff₀ c0]; linarith
  · rw [div_le_iff₀ h0]; linarith
  · rw [div_le_iff₀ c0]; linarith
  · have key : 0 ≤ h * c * (1 - s - L.1 - L.2) := by
      nlinarith [mul_nonneg (mul_nonneg h0.le lx.le) (sub_nonneg.2 hc.le),
        mul_nonneg (mul_nonneg c0.le ly.le) (sub_nonneg.2 hh.le),
        mul_le_mul hh.le hc.le c0.le zero_le_one]
    by_contra hn
    push Not at hn
    have := mul_neg_of_pos_of_neg (mul_pos h0 c0) (show 1 - s - L.1 - L.2 < 0 by linarith)
    linarith

/-! ### Section 2: bounds for one point in each cap -/

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(3)`). Mode `one_each`: from `dc(1-c) ≥ s` and
`fh(1-h) ≥ s`, `d, f ≥ 4s`, `1/7 < c, h < 6/7`, `h, c ≥ 4s`.
`docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 93-103. Uses: C1_ZERO_LOWER:eq5-6,
C1_ONE_LOWER_EIGHT_HULL:(1). -/
theorem eq3 (hM : OneEach h c d f R X Y L) :
    4 * s ≤ d ∧ 4 * s ≤ f ∧ 1 / 7 < c ∧ c < 6 / 7 ∧ 1 / 7 < h ∧ h < 6 / 7 ∧ 4 * s ≤ h ∧
      4 * s ≤ c := by
  obtain ⟨⟨r1, r2⟩, -, ⟨y1, y2⟩⟩ := hM.raw
  obtain ⟨-, -, -, hd1, hf1⟩ := eq1 (Or.inl hM)
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  obtain ⟨-, rx1, ry0, -⟩ := hM.rightSq
  obtain ⟨yx0, -, -, yy1⟩ := hM.leftSq
  have c0 : 0 < c := by linarith
  have h0 : 0 < h := by linarith
  have k1 : s < d * c * (1 - c) := by
    have := mul_lt_mul_of_pos_left r1 c0
    have := mul_lt_mul_of_pos_left r2 (show 0 < 1 - c by linarith)
    nlinarith [mul_nonneg (mul_nonneg c0.le hd.le) (sub_nonneg.2 rx1)]
  have k2 : s < f * h * (1 - h) := by
    have := mul_lt_mul_of_pos_left y1 h0
    have := mul_lt_mul_of_pos_left y2 (show 0 < 1 - h by linarith)
    nlinarith [mul_nonneg (mul_nonneg hf.le h0.le) (sub_nonneg.2 yy1)]
  have d4 : 4 * s ≤ d := by nlinarith [mul_nonneg hd.le (sq_nonneg (c - 1 / 2))]
  have f4 : 4 * s ≤ f := by nlinarith [mul_nonneg hf.le (sq_nonneg (h - 1 / 2))]
  have cc : 0 ≤ c * (1 - c) := mul_nonneg c0.le (by linarith)
  have hh' : 0 ≤ h * (1 - h) := mul_nonneg h0.le (by linarith)
  have q1 : 6 / 49 < c * (1 - c) := by nlinarith [mul_le_mul_of_nonneg_right hd1 cc]
  have q2 : 6 / 49 < h * (1 - h) := by nlinarith [mul_le_mul_of_nonneg_right hf1 hh']
  refine ⟨d4, f4, ?_, ?_, ?_, ?_, by linarith, by linarith⟩
  · by_contra hn; push Not at hn
    nlinarith [mul_nonneg (sub_nonneg.2 hn) (show (0 : ℝ) ≤ 6 / 7 - c by linarith)]
  · by_contra hn; push Not at hn
    nlinarith [mul_nonneg (sub_nonneg.2 hn) (show (0 : ℝ) ≤ c - 1 / 7 by linarith)]
  · by_contra hn; push Not at hn
    nlinarith [mul_nonneg (sub_nonneg.2 hn) (show (0 : ℝ) ≤ 6 / 7 - h by linarith)]
  · by_contra hn; push Not at hn
    nlinarith [mul_nonneg (sub_nonneg.2 hn) (show (0 : ℝ) ≤ h - 1 / 7 by linarith)]

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(4)`). Mode `one_each`: with
`-[CDR] = d(r_x-c) - (1-c)r_y = (1-c)(d-r_y) - d(1-r_x) ≥ s` and `c r_y ≥ s`:
`r_x - c ≥ 7s/6`, `r_y ≥ 7s/6`, `d - r_y ≥ s/(1-4s) = 8/41`.
FLAG (line 112-116, implicit step): `r_x - c ≥ s/d > 7s/6` needs `d < 6/7`, which follows from
`d ≤ h < 6/7`; "(3) proves" leaves this implicit (`d ≤ 1 - s` alone gives only `8/65 < 7s/6`).
The statement holds. `docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 105-117.
Uses: C1_ONE_LOWER_EIGHT_HULL:(3). -/
theorem eq4 (hM : OneEach h c d f R X Y L) :
    7 * s / 6 ≤ R.1 - c ∧ 7 * s / 6 ≤ R.2 ∧ 8 / 41 ≤ d - R.2 := by
  obtain ⟨⟨r1, r2⟩, -, -⟩ := hM.raw
  obtain ⟨-, -, -, hc7, -, hh7, -, c4⟩ := eq3 hM
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  obtain ⟨-, rx1, ry0, -⟩ := hM.rightSq
  have p1 : 0 ≤ (1 - c) * R.2 := mul_nonneg (by linarith) ry0
  have p2 : 0 ≤ d * (1 - R.1) := mul_nonneg hd.le (by linarith)
  have hrc : 0 < R.1 - c := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg hd.le (sub_nonneg.2 hn)]
  have hdr : 0 < d - R.2 := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - c by linarith) (sub_nonneg.2 hn)]
  refine ⟨?_, ?_, ?_⟩
  · nlinarith [mul_le_mul_of_nonneg_right (show d ≤ 6 / 7 by linarith) hrc.le]
  · nlinarith [mul_le_mul_of_nonneg_right hc7.le ry0]
  · nlinarith [mul_le_mul_of_nonneg_right (show 1 - c ≤ 41 / 73 by linarith) hdr.le]

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(5)`). Mode `one_each`, top-cap point: `x_x - f ≥ 8/41`,
`x_y - d ≥ 8/41`. `docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 119-132.
Uses: C1_ONE_LOWER_TOP_CAP:(3), C1_ONE_LOWER_EIGHT_HULL:(3). -/
theorem eq5 (hM : OneEach h c d f R X Y L) : 8 / 41 ≤ X.1 - f ∧ 8 / 41 ≤ X.2 - d := by
  obtain ⟨-, t1, -⟩ := hM.raw
  obtain ⟨d4, f4, -⟩ := eq3 hM
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  obtain ⟨-, xx1, -, xy1⟩ := hM.topSq
  have p1 : 0 ≤ (1 - f) * (1 - X.2) := mul_nonneg (by linarith) (by linarith)
  have p2 : 0 ≤ (1 - d) * (1 - X.1) := mul_nonneg (by linarith) (by linarith)
  have hxf : 0 < X.1 - f := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - d by linarith) (sub_nonneg.2 hn)]
  have hxd : 0 < X.2 - d := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - f by linarith) (sub_nonneg.2 hn)]
  constructor
  · nlinarith [mul_le_mul_of_nonneg_right (show 1 - d ≤ 41 / 73 by linarith) hxf.le]
  · nlinarith [mul_le_mul_of_nonneg_right (show 1 - f ≤ 41 / 73 by linarith) hxd.le]

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(6)`). Mode `one_each`, left-cap point, from
`[HFY] = f(y_y-h) - (1-h)y_x ≥ s`: `y_x ≥ 7s/6`, `f - y_x ≥ 8/41`, `y_y - h ≥ 7s/6`.
`docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 134-142. Uses: C1_ONE_LOWER_EIGHT_HULL:(3). -/
theorem eq6 (hM : OneEach h c d f R X Y L) :
    7 * s / 6 ≤ Y.1 ∧ 8 / 41 ≤ f - Y.1 ∧ 7 * s / 6 ≤ Y.2 - h := by
  obtain ⟨-, -, ⟨y1, y2⟩⟩ := hM.raw
  obtain ⟨-, -, -, hc7, -, hh7, h4, -⟩ := eq3 hM
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  obtain ⟨yx0, -, -, yy1⟩ := hM.leftSq
  have p1 : 0 ≤ (1 - h) * Y.1 := mul_nonneg (by linarith) yx0
  have p2 : 0 ≤ f * (1 - Y.2) := mul_nonneg hf.le (by linarith)
  have hfy : 0 < f - Y.1 := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - h by linarith) (sub_nonneg.2 hn)]
  have hyh : 0 < Y.2 - h := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg hf.le (sub_nonneg.2 hn)]
  refine ⟨?_, ?_, ?_⟩
  · nlinarith [mul_le_mul_of_nonneg_right hh7.le yx0]
  · nlinarith [mul_le_mul_of_nonneg_right (show 1 - h ≤ 41 / 73 by linarith) hfy.le]
  · nlinarith [mul_le_mul_of_nonneg_right (show f ≤ 6 / 7 by linarith) hyh.le]

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(7)`). Mode `one_each`: `ℓ_x, ℓ_y ≥ 7s/6`,
`c - ℓ_x, h - ℓ_y ≥ 7s/3`. `docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 143-148.
Uses: C1_ONE_LOWER_EIGHT_HULL:(2), C1_ONE_LOWER_EIGHT_HULL:(3). -/
theorem eq7 (hM : OneEach h c d f R X Y L) :
    7 * s / 6 ≤ L.1 ∧ 7 * s / 6 ≤ L.2 ∧ 7 * s / 3 ≤ c - L.1 ∧ 7 * s / 3 ≤ h - L.2 := by
  obtain ⟨-, -, -, -, a5, a6, a7⟩ := base_raw hM.anchors hM.min hM.lower
  obtain ⟨-, -, -, hc7, -, hh7, -, -⟩ := eq3 hM
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  have lx : 0 < L.1 := by nlinarith
  have ly : 0 < L.2 := by nlinarith
  have lcx : 0 < c - L.1 := by nlinarith
  have lhy : 0 < h - L.2 := by nlinarith
  refine ⟨?_, ?_, ?_, ?_⟩
  · nlinarith [mul_le_mul_of_nonneg_right hh7.le lx.le]
  · nlinarith [mul_le_mul_of_nonneg_right hc7.le ly.le]
  · nlinarith [mul_le_mul_of_nonneg_right hh7.le lcx.le]
  · nlinarith [mul_le_mul_of_nonneg_right hc7.le lhy.le]

/-! ### Section 3: bounds for the convex two-top pattern -/

/-- Helper: the closed half-plane on the nonpositive side of the line `UV` is convex. -/
theorem convex_halfPlane (U V : Point) : Convex ℝ {P : Point | sarea U V P ≤ 0} := by
  intro x hx y hy a b ha hb hab
  simp only [Set.mem_ofPred_eq] at hx hy ⊢
  have key : sarea U V (a • x + b • y) = a * sarea U V x + b * sarea U V y := by
    obtain rfl : b = 1 - a := by linarith
    simp only [sarea, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
    ring
  rw [key]
  nlinarith [mul_nonpos_of_nonneg_of_nonpos ha hx, mul_nonpos_of_nonneg_of_nonpos hb hy]

/-- Helper: a point of the closed triangle `ABC` is on the nonpositive side of any line `UV` that
has `A, B, C` on its nonpositive side. -/
theorem sarea_nonpos_of_mem_hull {U V A B C P : Point}
    (hP : P ∈ convexHull ℝ ({A, B, C} : Set Point)) (hA : sarea U V A ≤ 0)
    (hB : sarea U V B ≤ 0) (hC : sarea U V C ≤ 0) : sarea U V P ≤ 0 := by
  have hsub : ({A, B, C} : Set Point) ⊆ {P : Point | sarea U V P ≤ 0} := by
    intro p hp
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
    rcases hp with rfl | rfl | rfl <;> assumption
  exact convexHull_min hsub (convex_halfPlane U V) hP

/-- Helper: the convex quadrilateral `D, X, Y, F` (all four cyclic triangles positive) does not
have a triangular hull: each vertex is strictly beyond the diagonal through its two
neighbours. -/
theorem not_triangularHull_quad {D F X Y : Point} (hDXY : 0 < sarea D X Y)
    (hXYF : 0 < sarea X Y F) (hDFX : sarea D F X < 0) (hDFY : sarea D F Y < 0) :
    ¬ TypeII.TriangularHull ![D, F, X, Y] := by
  have c1 : sarea X F D = -sarea D F X := by unfold sarea; ring
  have c2 : sarea X F Y = -sarea X Y F := by unfold sarea; ring
  have c3 : sarea D Y F = -sarea D F Y := by unfold sarea; ring
  have c4 : sarea D Y X = -sarea D X Y := by unfold sarea; ring
  have c5 : sarea Y D X = sarea D X Y := by unfold sarea; ring
  have c6 : sarea Y D F = sarea D F Y := by unfold sarea; ring
  have c7 : sarea F X Y = sarea X Y F := by unfold sarea; ring
  have c8 : sarea F X D = sarea D F X := by unfold sarea; ring
  have z : ∀ A B : Point, sarea A B B = 0 := fun A B => by unfold sarea; ring
  have z' : ∀ A B : Point, sarea A B A = 0 := fun A B => by unfold sarea; ring
  have sep : ∀ m : Fin 4, ∃ U V : Point, 0 < sarea U V (![D, F, X, Y] m) ∧
      ∀ i : Fin 4, i ≠ m → sarea U V (![D, F, X, Y] i) ≤ 0 := by
    intro m
    fin_cases m
    · refine ⟨X, F, by simp; linarith, fun i hi => ?_⟩
      fin_cases i <;> simp at hi ⊢ <;> first | rw [z] | rw [z'] | linarith
    · refine ⟨D, Y, by simp; linarith, fun i hi => ?_⟩
      fin_cases i <;> simp at hi ⊢ <;> first | rw [z] | rw [z'] | linarith
    · refine ⟨Y, D, by simp; linarith, fun i hi => ?_⟩
      fin_cases i <;> simp at hi ⊢ <;> first | rw [z] | rw [z'] | linarith
    · refine ⟨F, X, by simp; linarith, fun i hi => ?_⟩
      fin_cases i <;> simp at hi ⊢ <;> first | rw [z] | rw [z'] | linarith
  have hex : ∀ i j k : Fin 4, ∃ m : Fin 4, m ≠ i ∧ m ≠ j ∧ m ≠ k := by decide
  rintro ⟨i, j, k, hall⟩
  obtain ⟨m, hmi, hmj, hmk⟩ := hex i j k
  obtain ⟨U, V, hpos, hle⟩ := sep m
  have := sarea_nonpos_of_mem_hull (hall m) (hle i (Ne.symm hmi)) (hle j (Ne.symm hmj))
    (hle k (Ne.symm hmk))
  linarith

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(9)`). Mode `two_top`: the convex case of the four-point,
two-prescribed-vertex triangle theorem (`D, X, Y, F` in the virtual triangle `DF(1,1)`) gives
`(1-d)(1-f) ≥ 4s`. `docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 166-173.
Uses: TYPE_II:FourPointEndpointLemma. -/
theorem eq9 (hM : TwoTop h c d f R X Y L) : 4 * s ≤ (1 - d) * (1 - f) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  have hX := C1ZeroLower.top_mem_hull hM.anchors hM.topXSq hM.topX
  have hY := C1ZeroLower.top_mem_hull hM.anchors hM.topYSq hM.topY
  have hnt : ¬ TypeII.TriangularHull ![(1, d), (f, 1), X, Y] :=
    not_triangularHull_quad hM.convexDXY hM.convexXYF hM.topX hM.topY
  have key := (TypeII.fourPointEndpointLemma (1, d) (f, 1) C1ZeroLower.ptE X Y hX hY).2 hnt
  have hm : A₀ ≤ minTriangleArea ![(1, d), (f, 1), X, Y] := by
    have := le_min_comp (by norm_num) (c1Config h c d f R X Y L)
      (f := ![2, 3, 6, 7]) (by decide)
    have e : (c1Config h c d f R X Y L ∘ ![2, 3, 6, 7]) = ![(1, d), (f, 1), X, Y] := by
      funext i; fin_cases i <;> rfl
    rw [e] at this
    exact hM.min.trans this
  have hneg : sarea (1, d) (f, 1) C1ZeroLower.ptE < 0 := by
    simp only [sarea]
    nlinarith [mul_pos (show (0:ℝ) < 1 - f by linarith) (show (0:ℝ) < 1 - d by linarith)]
  rw [triangleArea_eq, abs_of_neg hneg] at key
  simp only [sarea] at key
  linarith [C1ZeroLower.two_A₀.1]

/-- Helper: from `t < a x` with `0 ≤ a ≤ k` and `t > 0`, `t < k x`. -/
theorem lt_mul_of_lt_mul_le {a x t k : ℝ} (ha : 0 ≤ a) (hak : a ≤ k) (ht : 0 < t)
    (h : t < a * x) : t < k * x := by
  have hx : 0 < x := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonpos_of_nonneg_of_nonpos ha hn]
  nlinarith [mul_le_mul_of_nonneg_right hak hx.le]

/-- Helper: the right-cap bound `dc(1-c) > s` (from `-[CDR] > s`, `c r_y > s`, `r_x ≤ 1`). -/
theorem right_dc {R : Point} (hd : 0 < d) (hc0 : 0 < c) (hc : c < 1) (hrx : R.1 ≤ 1)
    (r1 : s < d * (R.1 - c) - (1 - c) * R.2) (r2 : s < c * R.2) : s < d * (c * (1 - c)) := by
  have := mul_lt_mul_of_pos_left r1 hc0
  have := mul_lt_mul_of_pos_left r2 (show 0 < 1 - c by linarith)
  nlinarith [mul_nonneg (mul_nonneg hc0.le hd.le) (sub_nonneg.2 hrx)]

/-- Helper: the order of two top-cap vertices ((13)–(14)), in abstract form: with `P, Q > 0`,
`A, B ≥ 0`, `uP - Av > 0`, `vQ - Bu > 0` and the strict cap inequalities `aA < bP`, `bB < aQ`
(`a, b > 0`), `u > 0`. -/
theorem order_aux {u v P Q A B a b : ℝ} (hP : 0 < P) (hQ : 0 < Q) (hA : 0 ≤ A) (hB : 0 ≤ B)
    (h1 : 0 < u * P - A * v) (h2 : 0 < v * Q - B * u)
    (c1 : a * A < b * P) (c2 : b * B < a * Q) (ha : 0 < a) (hb : 0 < b) : 0 < u := by
  by_contra hu
  push Not at hu
  have hv : v < 0 := by
    by_contra hv; push Not at hv
    nlinarith [mul_nonpos_of_nonpos_of_nonneg hu hP.le, mul_nonneg hA hv]
  have g1 : (-u) * P < A * (-v) := by linarith
  have g2 : (-v) * Q < B * (-u) := by linarith
  have hU : 0 < -u := by
    by_contra hn; push Not at hn
    nlinarith [mul_pos (neg_pos.2 hv) hQ, mul_nonpos_of_nonneg_of_nonpos hB hn]
  have g3 := mul_lt_mul'' g1 g2 (mul_nonneg hU.le hP.le) (mul_nonneg (neg_pos.2 hv).le hQ.le)
  have hUW := mul_pos hU (neg_pos.2 hv)
  have g4 : P * Q < A * B := by
    have : ((-u) * (-v)) * (P * Q) < ((-u) * (-v)) * (A * B) := by linarith
    exact lt_of_mul_lt_mul_left this hUW.le
  have g5 := mul_lt_mul'' c1 c2 (mul_nonneg ha.le hA) (mul_nonneg hb.le hB)
  have g6 : A * B < P * Q := by
    have : (a * b) * (A * B) < (a * b) * (P * Q) := by linarith
    exact lt_of_mul_lt_mul_left this (mul_pos ha hb).le
  linarith

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(10)`). Mode `two_top`, under `f ≤ d`: `f < 17/50` and
`d ≤ 33/65`. `docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 175-182.
Uses: C1_ONE_LOWER_EIGHT_HULL:(9). -/
theorem eq10 (hM : TwoTop h c d f R X Y L) (hfd : f ≤ d) : f < 17 / 50 ∧ d ≤ 33 / 65 := by
  have k := eq9 hM
  obtain ⟨-, a2, -, -, -⟩ := eq1 (Or.inr hM)
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  have f1 : s ≤ f := by nlinarith [mul_le_mul_of_nonneg_right hh.le hf.le]
  constructor
  · have : 4 * s ≤ (1 - f) * (1 - f) := by
      nlinarith [mul_le_mul_of_nonneg_right (show 1 - d ≤ 1 - f by linarith)
        (show (0:ℝ) ≤ 1 - f by linarith)]
    nlinarith
  · nlinarith [mul_le_mul_of_nonneg_left (show 1 - f ≤ 65 / 73 by linarith)
      (show (0:ℝ) ≤ 1 - d by linarith)]

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(11)`). Mode `two_top`, under `f ≤ d`: `d ≥ 4s`,
`c(1-c) ≥ 65s/33 > 55/256`, hence `3s ≤ c < 11/16` and `h ≥ 48s/11`.
`docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 183-195.
Uses: C1_ZERO_LOWER:eq5-6, C1_ONE_LOWER_EIGHT_HULL:(1), C1_ONE_LOWER_EIGHT_HULL:(10). -/
theorem eq11 (hM : TwoTop h c d f R X Y L) (hfd : f ≤ d) :
    4 * s ≤ d ∧ 65 * s / 33 ≤ c * (1 - c) ∧ 3 * s ≤ c ∧ c < 11 / 16 ∧ 48 * s / 11 ≤ h := by
  obtain ⟨⟨r1, r2⟩, -, -⟩ := hM.raw
  obtain ⟨a1, -, -, -, -⟩ := eq1 (Or.inr hM)
  obtain ⟨-, d33⟩ := eq10 hM hfd
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  have c0 : 0 < c := by linarith
  have h0 : 0 < h := by linarith
  have k1 := right_dc hd c0 hc hM.rightSq.2.1 r1 r2
  have cc : 0 ≤ c * (1 - c) := mul_nonneg c0.le (by linarith)
  have q1 := lt_mul_of_lt_mul_le hd.le d33 (by norm_num) k1
  have c3 : 3 * s ≤ c := by nlinarith [mul_le_of_le_one_left c0.le hh.le]
  have c11 : c < 11 / 16 := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg (sub_nonneg.2 hn) (show (0 : ℝ) ≤ c - 5 / 16 by linarith)]
  refine ⟨by nlinarith [mul_nonneg hd.le (sq_nonneg (c - 1 / 2))], by linarith, c3, c11, ?_⟩
  nlinarith [mul_le_mul_of_nonneg_left c11.le h0.le]

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(12)`). Mode `two_top`, under `f ≤ d`: `r_x - c ≥ 65s/33`,
`r_y ≥ 16s/11`, `d - r_y ≥ 8/49`; `x_x - f, y_x - f ≥ 8/41`; `x_y - d, y_y - d ≥ 8/65`.
`docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 197-209.
Uses: C1_ONE_LOWER_EIGHT_HULL:(10), C1_ONE_LOWER_EIGHT_HULL:(11). -/
theorem eq12 (hM : TwoTop h c d f R X Y L) (hfd : f ≤ d) :
    65 * s / 33 ≤ R.1 - c ∧ 16 * s / 11 ≤ R.2 ∧ 8 / 49 ≤ d - R.2 ∧ 8 / 41 ≤ X.1 - f ∧
      8 / 41 ≤ Y.1 - f ∧ 8 / 65 ≤ X.2 - d ∧ 8 / 65 ≤ Y.2 - d := by
  obtain ⟨⟨r1, r2⟩, t1, t2⟩ := hM.raw
  obtain ⟨-, a2, -, -, -⟩ := eq1 (Or.inr hM)
  obtain ⟨-, d33⟩ := eq10 hM hfd
  obtain ⟨d4, -, c3, c11, -⟩ := eq11 hM hfd
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  obtain ⟨-, rx1, ry0, -⟩ := hM.rightSq
  obtain ⟨-, xx1, -, xy1⟩ := hM.topXSq
  obtain ⟨-, yx1, -, yy1⟩ := hM.topYSq
  have f1 : s ≤ f := by nlinarith [mul_le_of_le_one_left hf.le hh.le]
  have s0 : (0 : ℝ) < s := by norm_num
  have p1 : 0 ≤ (1 - c) * R.2 := mul_nonneg (by linarith) ry0
  have p2 : 0 ≤ d * (1 - R.1) := mul_nonneg hd.le (by linarith)
  have px1 : 0 ≤ (1 - f) * (1 - X.2) := mul_nonneg (by linarith) (by linarith)
  have px2 : 0 ≤ (1 - d) * (1 - X.1) := mul_nonneg (by linarith) (by linarith)
  have py1 : 0 ≤ (1 - f) * (1 - Y.2) := mul_nonneg (by linarith) (by linarith)
  have py2 : 0 ≤ (1 - d) * (1 - Y.1) := mul_nonneg (by linarith) (by linarith)
  have e1 := lt_mul_of_lt_mul_le hd.le d33 s0 (show s < d * (R.1 - c) by linarith)
  have e2 := lt_mul_of_lt_mul_le (show (0:ℝ) ≤ c by linarith) c11.le s0 r2
  have e3 := lt_mul_of_lt_mul_le (show 0 ≤ 1 - c by linarith) (show 1 - c ≤ 49 / 73 by linarith)
    s0 (show s < (1 - c) * (d - R.2) by linarith)
  have e4 := lt_mul_of_lt_mul_le (show 0 ≤ 1 - d by linarith) (show 1 - d ≤ 41 / 73 by linarith)
    s0 (show s < (1 - d) * (X.1 - f) by linarith)
  have e5 := lt_mul_of_lt_mul_le (show 0 ≤ 1 - d by linarith) (show 1 - d ≤ 41 / 73 by linarith)
    s0 (show s < (1 - d) * (Y.1 - f) by linarith)
  have e6 := lt_mul_of_lt_mul_le (show 0 ≤ 1 - f by linarith) (show 1 - f ≤ 65 / 73 by linarith)
    s0 (show s < (1 - f) * (X.2 - d) by linarith)
  have e7 := lt_mul_of_lt_mul_le (show 0 ≤ 1 - f by linarith) (show 1 - f ≤ 65 / 73 by linarith)
    s0 (show s < (1 - f) * (Y.2 - d) by linarith)
  refine ⟨by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith⟩

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(15)`). Mode `two_top`, under `f ≤ d`: `ℓ_x ≥ s`,
`ℓ_y ≥ 16s/11`, `c - ℓ_x ≥ 2s`, `h - ℓ_y ≥ 32s/11`. `docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines
247-252. Uses: C1_ONE_LOWER_EIGHT_HULL:(2), C1_ONE_LOWER_EIGHT_HULL:(11). -/
theorem eq15 (hM : TwoTop h c d f R X Y L) (hfd : f ≤ d) :
    s ≤ L.1 ∧ 16 * s / 11 ≤ L.2 ∧ 2 * s ≤ c - L.1 ∧ 32 * s / 11 ≤ h - L.2 := by
  obtain ⟨-, -, -, -, a5, a6, a7⟩ := base_raw hM.anchors hM.min hM.lower
  obtain ⟨-, -, -, c11, -⟩ := eq11 hM hfd
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  have s0 : (0 : ℝ) < s := by norm_num
  have e1 := lt_mul_of_lt_mul_le (show (0:ℝ) ≤ h by linarith) hh.le s0 a5
  have e2 := lt_mul_of_lt_mul_le (show (0:ℝ) ≤ c by linarith) c11.le s0 a6
  have e3 := lt_mul_of_lt_mul_le (show (0:ℝ) ≤ h by linarith) hh.le (show (0:ℝ) < 2 * s by norm_num)
    (show 2 * s < h * (c - L.1) by linarith)
  have e4 := lt_mul_of_lt_mul_le (show (0:ℝ) ≤ c by linarith) c11.le (show (0:ℝ) < 2 * s by norm_num)
    (show 2 * s < c * (h - L.2) by linarith)
  refine ⟨by linarith, by linarith, by linarith, by linarith⟩

end

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(13)-(14)`). The order of two top-cap hull vertices: for
`X, Y` in the top cap (in the square) with `[DXY] ≥ s` and `[FXY] ≥ s`, put `u = x_x - y_x`,
`v = y_y - x_y`; then `[DXY] = u(x_y-d) - (1-x_x)v` and `[FXY] = v(y_x-f) - (1-y_y)u` (13); `u, v`
cannot have opposite signs or vanish, both negative contradicts the product of the two strict cap
inequalities, so `u, v > 0`, and then `u, v ≥ s` (14). Used in mode `two_top` and by
`C1_ONE_LOWER_CONVEX_TOP.md` (5). `docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 211-245. -/
theorem eq13_14 {h c d f : ℝ} (hA : C1Anchors h c d f) {X Y : Point} (hX : InTopCap d f X)
    (hXsq : X ∈ unitSquare) (hY : InTopCap d f Y) (hYsq : Y ∈ unitSquare)
    (hDXY : s ≤ sarea (ptD d) X Y) (hFXY : s ≤ sarea (ptF f) X Y) :
    sarea (ptD d) X Y = (X.1 - Y.1) * (X.2 - d) - (1 - X.1) * (Y.2 - X.2) ∧
      sarea (ptF f) X Y = (Y.2 - X.2) * (Y.1 - f) - (1 - Y.2) * (X.1 - Y.1) ∧
      s ≤ X.1 - Y.1 ∧ s ≤ Y.2 - X.2 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨xx0, xx1, xy0, xy1⟩ := hXsq
  obtain ⟨yx0, yx1, yy0, yy1⟩ := hYsq
  have e1 : sarea (ptD d) X Y = (X.1 - Y.1) * (X.2 - d) - (1 - X.1) * (Y.2 - X.2) := by
    simp only [sarea, ptD]; ring
  have e2 : sarea (ptF f) X Y = (Y.2 - X.2) * (Y.1 - f) - (1 - Y.2) * (X.1 - Y.1) := by
    simp only [sarea, ptF]; ring
  refine ⟨e1, e2, ?_⟩
  rw [e1] at hDXY
  rw [e2] at hFXY
  simp only [InTopCap, sarea, ptD, ptF] at hX hY
  have h1f : 0 < 1 - f := by linarith
  have h1d : 0 < 1 - d := by linarith
  have cX : (1 - d) * (1 - X.1) < (1 - f) * (X.2 - d) := by linarith
  have cY : (1 - f) * (1 - Y.2) < (1 - d) * (Y.1 - f) := by linarith
  have hP : 0 < X.2 - d := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg h1d.le (sub_nonneg.2 xx1), mul_nonneg h1f.le (sub_nonneg.2 hn)]
  have hQ : 0 < Y.1 - f := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg h1f.le (sub_nonneg.2 yy1), mul_nonneg h1d.le (sub_nonneg.2 hn)]
  have hu : 0 < X.1 - Y.1 :=
    order_aux (v := Y.2 - X.2) hP hQ (sub_nonneg.2 xx1) (sub_nonneg.2 yy1) (by linarith)
      (by linarith) cX cY h1d h1f
  have hv : 0 < Y.2 - X.2 := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonpos_of_nonpos_of_nonneg hn hQ.le, mul_nonneg (sub_nonneg.2 yy1) hu.le]
  constructor
  · nlinarith [mul_nonneg (sub_nonneg.2 xx1) hv.le, mul_le_mul_of_nonneg_left
      (show X.2 - d ≤ 1 by linarith) hu.le]
  · nlinarith [mul_nonneg (sub_nonneg.2 yy1) hu.le, mul_le_mul_of_nonneg_left
      (show Y.1 - f ≤ 1 by linarith) hv.le]

/-! ### Section 4: six radial orders -/

/-- Helper: the edge test of `C → R` (`R = (r_x, r_y)` in the right cap) for a point
`P = (p_x, p_y)` with `p_y > 0` and `[CDP] ≥ 0`, by `d[CRP] = [CRD]p_y + [CDP]r_y`. -/
theorem edgeCR_aux {c d rx ry px py : ℝ} (hd : 0 < d) (hR : 0 < (rx - c) * d - ry * (1 - c))
    (hpy : 0 < py) (hP : 0 ≤ (1 - c) * py - d * (px - c)) (hry : 0 ≤ ry) :
    ry * (px - c) < (rx - c) * py := by
  have key : d * ((rx - c) * py - ry * (px - c)) =
      ((rx - c) * d - ry * (1 - c)) * py + ((1 - c) * py - d * (px - c)) * ry := by ring
  have h0 : 0 < d * ((rx - c) * py - ry * (px - c)) := by
    rw [key]; exact add_pos_of_pos_of_nonneg (mul_pos hR hpy) (mul_nonneg hP hry)
  have := pos_of_mul_pos_right h0 hd.le
  linarith

/-- Helper: the edge tests of the `one_each` octagon for the edges `V₀V₁, …, V₃V₄`, from coordinate bounds of the three cap points and the two nondegeneracies `[RDX], [XFY] > 0`. -/
theorem octOne_edges_lo {h c d f : ℝ} (hA : C1Anchors h c d f) {R X Y : Point}
    (hR : InRightCap c d R) (hrx : R.1 ≤ 1) (hry : 0 < R.2)
    (hX : InTopCap d f X) (hxx : X.1 ≤ 1) (hxy : X.2 ≤ 1)
    (hY : InLeftCap f h Y) (hyx : 0 < Y.1) (hyy : Y.2 ≤ 1)
    (n1 : 0 < sarea R (ptD d) X) (n2 : 0 < sarea X (ptF f) Y)
    (hrc : 0 < R.1 - c) (hdr : 0 < d - R.2) (hxf : 0 < X.1 - f) (hxd : 0 < X.2 - d)
    (hfy : 0 < f - Y.1) (hyh : 0 < Y.2 - h) :
    ∀ i k : Fin 8, i.val < 4 → k ≠ i → k ≠ i + 1 →
      0 < sarea (octagonOneEach h c d f R X Y i) (octagonOneEach h c d f R X Y (i + 1))
        (octagonOneEach h c d f R X Y k) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨rx, ry⟩ := R
  obtain ⟨xx, xy⟩ := X
  obtain ⟨yx, yy⟩ := Y
  simp only [InRightCap, InTopCap, InLeftCap, sarea, ptC, ptD, ptF, ptH] at hR hX hY n1 n2
  simp only at hrx hry hxx hxy hyx hyy hrc hdr hxf hxd hfy hyh
  have h1c : 0 < 1 - c := by linarith
  have h1d : 0 < 1 - d := by linarith
  have h1f : 0 < 1 - f := by linarith
  have h1h : 0 < 1 - h := by linarith
  have h0c : 0 < c := by linarith
  have h0h : 0 < h := by linarith
  have hcf : 0 ≤ c - f := by linarith
  have h1rx : 0 ≤ 1 - rx := by linarith
  have h1xx : 0 ≤ 1 - xx := by linarith
  have h1xy : 0 ≤ 1 - xy := by linarith
  have h1yy : 0 ≤ 1 - yy := by linarith
  have hxy0 : 0 < xy := by linarith
  have hyy0 : 0 < yy := by linarith
  have hxx0 : 0 < xx := by linarith
  have hrx0 : 0 < rx := by linarith
  intro i k hi h1 h2
  fin_cases i <;> simp at hi <;> fin_cases k <;>
    simp [octagonOneEach, sarea, ptO, ptC, ptD, ptF, ptH] at h1 h2 ⊢
  · exact mul_pos h0c hry
  · exact mul_pos h0c hd
  · exact mul_pos h0c hxy0
  · exact h0c
  · exact mul_pos h0c hyy0
  · exact mul_pos h0c h0h
  · exact mul_pos hry h0c
  · linarith
  · exact edgeCR_aux hd (by linarith) hxy0 (by linarith [mul_nonneg hd.le h1xx, mul_pos h1c hxd])
      hry.le
  · have := edgeCR_aux (c := c) (rx := rx) (px := f) (py := 1) hd (by linarith) one_pos
      (by linarith [mul_nonneg hd.le hcf]) hry.le
    linarith
  · exact edgeCR_aux hd (by linarith) hyy0
      (by linarith [mul_pos h1c hyy0, mul_nonneg hd.le (show 0 ≤ c - yx by linarith)]) hry.le
  · linarith [mul_pos hrc h0h, mul_pos hry h0c]
  · linarith [mul_pos h0c hdr]
  · linarith
  · linarith
  · linarith [mul_pos hdr (show 0 < rx - f by linarith), mul_nonneg h1rx (show 0 ≤ 1 - ry by linarith)]
  · linarith [mul_pos hdr (show 0 < rx - yx by linarith), mul_nonneg h1rx (show 0 ≤ yy - ry by linarith)]
  · linarith [mul_nonneg h1rx (show 0 ≤ h - ry by linarith), mul_pos hdr hrx0]
  · linarith [mul_nonneg h1xx hd.le]
  · linarith [mul_pos hxd h1c, mul_nonneg h1xx hd.le]
  · linarith
  · linarith
  · linarith [mul_nonneg hxd.le hfy.le, mul_nonneg h1yy h1xx]
  · linarith [mul_nonneg hf.le hxd.le, mul_nonneg h1h.le h1xx]

/-- Helper: the edge tests of the `one_each` octagon for the edges `V₄V₅, …, V₇V₀` (as `octOne_edges_lo`). -/
theorem octOne_edges_hi {h c d f : ℝ} (hA : C1Anchors h c d f) {R X Y : Point}
    (hR : InRightCap c d R) (hrx : R.1 ≤ 1) (hry : 0 < R.2)
    (hX : InTopCap d f X) (hxx : X.1 ≤ 1) (hxy : X.2 ≤ 1)
    (hY : InLeftCap f h Y) (hyx : 0 < Y.1) (hyy : Y.2 ≤ 1)
    (n1 : 0 < sarea R (ptD d) X) (n2 : 0 < sarea X (ptF f) Y)
    (hrc : 0 < R.1 - c) (hdr : 0 < d - R.2) (hxf : 0 < X.1 - f) (hxd : 0 < X.2 - d)
    (hfy : 0 < f - Y.1) (hyh : 0 < Y.2 - h) :
    ∀ i k : Fin 8, 4 ≤ i.val → k ≠ i → k ≠ i + 1 →
      0 < sarea (octagonOneEach h c d f R X Y i) (octagonOneEach h c d f R X Y (i + 1))
        (octagonOneEach h c d f R X Y k) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨rx, ry⟩ := R
  obtain ⟨xx, xy⟩ := X
  obtain ⟨yx, yy⟩ := Y
  simp only [InRightCap, InTopCap, InLeftCap, sarea, ptC, ptD, ptF, ptH] at hR hX hY n1 n2
  simp only at hrx hry hxx hxy hyx hyy hrc hdr hxf hxd hfy hyh
  have h1c : 0 < 1 - c := by linarith
  have h1d : 0 < 1 - d := by linarith
  have h1f : 0 < 1 - f := by linarith
  have h1h : 0 < 1 - h := by linarith
  have h0c : 0 < c := by linarith
  have h0h : 0 < h := by linarith
  have hcf : 0 ≤ c - f := by linarith
  have h1rx : 0 ≤ 1 - rx := by linarith
  have h1xx : 0 ≤ 1 - xx := by linarith
  have h1xy : 0 ≤ 1 - xy := by linarith
  have h1yy : 0 ≤ 1 - yy := by linarith
  have hxy0 : 0 < xy := by linarith
  have hyy0 : 0 < yy := by linarith
  have hxx0 : 0 < xx := by linarith
  have hrx0 : 0 < rx := by linarith
  intro i k hi h1 h2
  fin_cases i <;> simp at hi <;> fin_cases k <;>
    simp [octagonOneEach, sarea, ptO, ptC, ptD, ptF, ptH] at h1 h2 ⊢
  · linarith [mul_pos hxf hxy0, mul_nonneg h1xy hxx0.le]
  · linarith [mul_pos hxf hd, mul_nonneg h1xy h1c.le]
  · linarith [mul_pos hxf hdr, mul_nonneg h1xy h1rx]
  · linarith
  · linarith
  · linarith [mul_pos hxf h1h, mul_nonneg hf.le h1xy]
  · linarith [mul_pos h0h hfy]
  · linarith [mul_nonneg h1yy hcf]
  · linarith [mul_nonneg h1yy (show 0 ≤ rx - f by linarith), mul_pos hfy (show 0 < 1 - ry by linarith)]
  · linarith [mul_nonneg h1yy h1f.le, mul_pos hfy h1d]
  · linarith
  · linarith
  · linarith [mul_pos hyx h0h]
  · linarith [mul_pos hyh (show 0 < c - yx by linarith), mul_pos hyx hyy0]
  · linarith [mul_pos hyh (show 0 < rx - yx by linarith), mul_pos hyx (show 0 < yy - ry by linarith)]
  · linarith [mul_pos hyh (show 0 < 1 - yx by linarith), mul_nonneg hyx.le (show 0 ≤ yy - d by linarith)]
  · linarith [mul_nonneg hyx.le h1xy, mul_pos hyh hxf]
  · linarith
  · exact mul_pos h0h h0c
  · exact mul_pos h0h hrx0
  · exact h0h
  · exact mul_pos h0h hxx0
  · exact mul_pos h0h hf
  · exact mul_pos h0h hyx

/-- Helper: the edge tests of the `two_top` octagon for the edges `V₀V₁, …, V₃V₄`, from coordinate bounds of the three cap points, the convexity of `D, X, Y, F`, the order (14) and the nondegeneracy `[RDX] > 0`. -/
theorem octTwo_edges_lo {h c d f : ℝ} (hA : C1Anchors h c d f) {R X Y : Point}
    (hR : InRightCap c d R) (hrx : R.1 ≤ 1) (hry : 0 < R.2)
    (hX : InTopCap d f X) (hxx : X.1 ≤ 1) (hxy : X.2 ≤ 1)
    (hY : InTopCap d f Y) (hyx : Y.1 ≤ 1) (hyy : Y.2 ≤ 1)
    (hDXY : 0 < sarea (ptD d) X Y) (hXYF : 0 < sarea X Y (ptF f)) (n1 : 0 < sarea R (ptD d) X)
    (hrc : 0 < R.1 - c) (hdr : 0 < d - R.2) (hxf : 0 < X.1 - f) (hxd : 0 < X.2 - d)
    (hyf : 0 < Y.1 - f) (hyd : 0 < Y.2 - d) (hu : 0 < X.1 - Y.1) (hv : 0 < Y.2 - X.2) :
    ∀ i k : Fin 8, i.val < 4 → k ≠ i → k ≠ i + 1 →
      0 < sarea (octagonTwoTop h c d f R X Y i) (octagonTwoTop h c d f R X Y (i + 1))
        (octagonTwoTop h c d f R X Y k) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨rx, ry⟩ := R
  obtain ⟨xx, xy⟩ := X
  obtain ⟨yx, yy⟩ := Y
  simp only [InRightCap, InTopCap, sarea, ptC, ptD, ptF] at hR hX hY n1 hDXY hXYF
  simp only at hrx hry hxx hxy hyx hyy hrc hdr hxf hxd hyf hyd hu hv
  have h1c : 0 < 1 - c := by linarith
  have h1d : 0 < 1 - d := by linarith
  have h1f : 0 < 1 - f := by linarith
  have h1h : 0 < 1 - h := by linarith
  have h0c : 0 < c := by linarith
  have h0h : 0 < h := by linarith
  have hcf : 0 ≤ c - f := by linarith
  have h1rx : 0 ≤ 1 - rx := by linarith
  have h1xx : 0 ≤ 1 - xx := by linarith
  have h1xy : 0 ≤ 1 - xy := by linarith
  have h1yx : 0 ≤ 1 - yx := by linarith
  have h1yy : 0 ≤ 1 - yy := by linarith
  have hxy0 : 0 < xy := by linarith
  have hyy0 : 0 < yy := by linarith
  have hxx0 : 0 < xx := by linarith
  have hyx0 : 0 < yx := by linarith
  have hrx0 : 0 < rx := by linarith
  intro i k hi h1 h2
  fin_cases i <;> simp at hi <;> fin_cases k <;>
    simp [octagonTwoTop, sarea, ptO, ptC, ptD, ptF, ptH] at h1 h2 ⊢
  · exact mul_pos h0c hry
  · exact mul_pos h0c hd
  · exact mul_pos h0c hxy0
  · exact mul_pos h0c hyy0
  · exact h0c
  · exact mul_pos h0c h0h
  · exact mul_pos hry h0c
  · linarith
  · exact edgeCR_aux hd (by linarith) hxy0 (by linarith [mul_nonneg hd.le h1xx, mul_pos h1c hxd])
      hry.le
  · exact edgeCR_aux hd (by linarith) hyy0 (by linarith [mul_nonneg hd.le h1yx, mul_pos h1c hyd])
      hry.le
  · have := edgeCR_aux (c := c) (rx := rx) (px := f) (py := 1) hd (by linarith) one_pos
      (by linarith [mul_nonneg hd.le hcf]) hry.le
    linarith
  · linarith [mul_pos hrc h0h, mul_pos hry h0c]
  · linarith [mul_pos h0c hdr]
  · linarith
  · linarith
  · linarith [mul_nonneg h1rx hyd.le, mul_pos hdr (show 0 < 1 - yx by linarith)]
  · linarith [mul_pos hdr (show 0 < rx - f by linarith), mul_nonneg h1rx (show 0 ≤ 1 - ry by linarith)]
  · linarith [mul_nonneg h1rx (show 0 ≤ h - ry by linarith), mul_pos hdr hrx0]
  · linarith [mul_nonneg h1xx hd.le]
  · linarith [mul_pos hxd h1c, mul_nonneg h1xx hd.le]
  · linarith
  · linarith
  · linarith
  · linarith [mul_nonneg hf.le hxd.le, mul_nonneg h1h.le h1xx]

/-- Helper: the edge tests of the `two_top` octagon for the edges `V₄V₅, …, V₇V₀` (as `octTwo_edges_lo`). -/
theorem octTwo_edges_hi {h c d f : ℝ} (hA : C1Anchors h c d f) {R X Y : Point}
    (hR : InRightCap c d R) (hrx : R.1 ≤ 1) (hry : 0 < R.2)
    (hX : InTopCap d f X) (hxx : X.1 ≤ 1) (hxy : X.2 ≤ 1)
    (hY : InTopCap d f Y) (hyx : Y.1 ≤ 1) (hyy : Y.2 ≤ 1)
    (hDXY : 0 < sarea (ptD d) X Y) (hXYF : 0 < sarea X Y (ptF f)) (n1 : 0 < sarea R (ptD d) X)
    (hrc : 0 < R.1 - c) (hdr : 0 < d - R.2) (hxf : 0 < X.1 - f) (hxd : 0 < X.2 - d)
    (hyf : 0 < Y.1 - f) (hyd : 0 < Y.2 - d) (hu : 0 < X.1 - Y.1) (hv : 0 < Y.2 - X.2) :
    ∀ i k : Fin 8, 4 ≤ i.val → k ≠ i → k ≠ i + 1 →
      0 < sarea (octagonTwoTop h c d f R X Y i) (octagonTwoTop h c d f R X Y (i + 1))
        (octagonTwoTop h c d f R X Y k) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨rx, ry⟩ := R
  obtain ⟨xx, xy⟩ := X
  obtain ⟨yx, yy⟩ := Y
  simp only [InRightCap, InTopCap, sarea, ptC, ptD, ptF] at hR hX hY n1 hDXY hXYF
  simp only at hrx hry hxx hxy hyx hyy hrc hdr hxf hxd hyf hyd hu hv
  have h1c : 0 < 1 - c := by linarith
  have h1d : 0 < 1 - d := by linarith
  have h1f : 0 < 1 - f := by linarith
  have h1h : 0 < 1 - h := by linarith
  have h0c : 0 < c := by linarith
  have h0h : 0 < h := by linarith
  have hcf : 0 ≤ c - f := by linarith
  have h1rx : 0 ≤ 1 - rx := by linarith
  have h1xx : 0 ≤ 1 - xx := by linarith
  have h1xy : 0 ≤ 1 - xy := by linarith
  have h1yx : 0 ≤ 1 - yx := by linarith
  have h1yy : 0 ≤ 1 - yy := by linarith
  have hxy0 : 0 < xy := by linarith
  have hyy0 : 0 < yy := by linarith
  have hxx0 : 0 < xx := by linarith
  have hyx0 : 0 < yx := by linarith
  have hrx0 : 0 < rx := by linarith
  intro i k hi h1 h2
  fin_cases i <;> simp at hi <;> fin_cases k <;>
    simp [octagonTwoTop, sarea, ptO, ptC, ptD, ptF, ptH] at h1 h2 ⊢
  · linarith [mul_pos hu hxy0, mul_pos hv hxx0]
  · linarith [mul_pos h1c (show 0 < (xx - yx) * xy + (yy - xy) * xx by
      linarith [mul_pos hu hxy0, mul_pos hv hxx0]), mul_pos h0c hDXY, mul_pos (mul_pos h0c hu) hd]
  · linarith [mul_pos hu hdr, mul_nonneg hv.le h1rx]
  · linarith
  · linarith
  · linarith [mul_pos hu h1h, mul_pos hv hf]
  · linarith [mul_pos hyf hyy0, mul_nonneg h1yy hyx0.le]
  · linarith [mul_pos hyf hd, mul_nonneg h1yy h1c.le]
  · linarith [mul_pos hyf hdr, mul_nonneg h1yy h1rx]
  · linarith
  · linarith
  · linarith [mul_pos hyf h1h, mul_nonneg hf.le h1yy]
  · linarith [mul_pos hf h0h]
  · linarith [mul_nonneg h1h.le hcf]
  · linarith [mul_pos h1h (show 0 < rx - f by linarith), mul_pos hf (show 0 < 1 - ry by linarith)]
  · linarith [mul_pos h1h h1f, mul_pos hf h1d]
  · linarith [mul_pos h1h hxf, mul_nonneg hf.le h1xy]
  · linarith [mul_pos h1h hyf, mul_nonneg hf.le h1yy]
  · exact mul_pos h0h h0c
  · exact mul_pos h0h hrx0
  · exact h0h
  · exact mul_pos h0h hxx0
  · exact mul_pos h0h hyx0
  · exact mul_pos h0h hf

/-- Helper: a right-cap point with the raw bounds `-[CDR] > s`, `c r_y > s` has `r_y > 0`,
`r_x > c` and `r_y < d`. -/
theorem right_coords {h c d f : ℝ} {R : Point} (hA : C1Anchors h c d f) (hRsq : R ∈ unitSquare)
    (r1 : s < d * (R.1 - c) - (1 - c) * R.2) (r2 : s < c * R.2) :
    0 < R.2 ∧ 0 < R.1 - c ∧ 0 < d - R.2 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨-, rx1, ry0, -⟩ := hRsq
  have hry : 0 < R.2 := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonpos_of_nonneg_of_nonpos (show (0:ℝ) ≤ c by linarith) hn]
  refine ⟨hry, ?_, ?_⟩
  · by_contra hn; push Not at hn
    nlinarith [mul_nonpos_of_nonneg_of_nonpos hd.le hn,
      mul_nonneg (show (0:ℝ) ≤ 1 - c by linarith) ry0]
  · by_contra hn; push Not at hn
    nlinarith [mul_nonpos_of_nonneg_of_nonpos (show (0:ℝ) ≤ 1 - c by linarith) hn,
      mul_nonneg hd.le (show (0:ℝ) ≤ 1 - R.1 by linarith)]

/-- Helper: a top-cap point with the raw bound `-[DFP] > s` has `p_x > f` and `p_y > d`. -/
theorem top_coords {h c d f : ℝ} {P : Point} (hA : C1Anchors h c d f) (hPsq : P ∈ unitSquare)
    (t : s < (1 - d) * (P.1 - f) - (1 - f) * (1 - P.2)) : 0 < P.1 - f ∧ 0 < P.2 - d := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨-, px1, -, py1⟩ := hPsq
  constructor
  · by_contra hn; push Not at hn
    nlinarith [mul_nonpos_of_nonneg_of_nonpos (show (0:ℝ) ≤ 1 - d by linarith) hn,
      mul_nonneg (show (0:ℝ) ≤ 1 - f by linarith) (show (0:ℝ) ≤ 1 - P.2 by linarith)]
  · by_contra hn; push Not at hn
    nlinarith [mul_nonpos_of_nonneg_of_nonpos (show (0:ℝ) ≤ 1 - f by linarith) hn,
      mul_nonneg (show (0:ℝ) ≤ 1 - d by linarith) (show (0:ℝ) ≤ 1 - P.1 by linarith)]

/-- Helper: `[RDX] ≥ 0` for `R` below `D` and `X` above it, both in the square
(`[RDX] = (1-r_x)(x_y-d) + (d-r_y)(1-x_x)`). -/
theorem rdx_nonneg {d : ℝ} {R X : Point} (hrx : R.1 ≤ 1) (hdr : 0 ≤ d - R.2) (hxd : 0 ≤ X.2 - d)
    (hxx : X.1 ≤ 1) : 0 ≤ sarea R (ptD d) X := by
  have e : sarea R (ptD d) X = (1 - R.1) * (X.2 - d) + (d - R.2) * (1 - X.1) := by
    simp only [sarea, ptD]; ring
  rw [e]
  exact add_nonneg (mul_nonneg (by linarith) hxd) (mul_nonneg hdr (by linarith))

/-- Helper (implicit in the manuscript, Section 1: "All cyclic hull triples have positive area",
lines 55-63): in either mode the hull octagon is convex (counterclockwise). -/
theorem convex_octagon {h c d f : ℝ} {R X Y L : Point} :
    (OneEach h c d f R X Y L → ConvexPolygon (octagonOneEach h c d f R X Y)) ∧
      (TwoTop h c d f R X Y L → ConvexPolygon (octagonTwoTop h c d f R X Y)) := by
  constructor
  · intro hM
    obtain ⟨r1, r2, r3⟩ := eq4 hM
    obtain ⟨x1, x2⟩ := eq5 hM
    obtain ⟨y1, y2, y3⟩ := eq6 hM
    obtain ⟨-, rx1, -, -⟩ := hM.rightSq
    obtain ⟨-, xx1, -, xy1⟩ := hM.topSq
    obtain ⟨-, -, -, yy1⟩ := hM.leftSq
    have n1 : 0 < sarea R (ptD d) X := by
      have e : s < |sarea R (ptD d) X| := area_gt hM.min 5 2 6
      linarith [gt_of_abs_nonneg e (rdx_nonneg rx1 (by linarith) (by linarith) xx1)]
    have n2 : 0 < sarea X (ptF f) Y := by
      have e : s < |sarea X (ptF f) Y| := area_gt hM.min 6 3 7
      have w : 0 ≤ sarea X (ptF f) Y := by
        have : sarea X (ptF f) Y = (X.1 - f) * (1 - Y.2) + (1 - X.2) * (f - Y.1) := by
          simp only [sarea, ptF]; ring
        rw [this]
        exact add_nonneg (mul_nonneg (by linarith) (by linarith))
          (mul_nonneg (by linarith) (by linarith))
      linarith [gt_of_abs_nonneg e w]
    refine C1OneLowerTopCap.convex_of_edges (by norm_num) fun i k h1 h2 => ?_
    rcases Nat.lt_or_ge i.val 4 with hi | hi
    · exact octOne_edges_lo hM.anchors hM.right rx1 (by linarith) hM.top xx1 xy1 hM.left
        (by linarith) yy1 n1 n2 (by linarith) (by linarith) (by linarith) (by linarith)
        (by linarith) (by linarith) i k hi h1 h2
    · exact octOne_edges_hi hM.anchors hM.right rx1 (by linarith) hM.top xx1 xy1 hM.left
        (by linarith) yy1 n1 n2 (by linarith) (by linarith) (by linarith) (by linarith)
        (by linarith) (by linarith) i k hi h1 h2
  · intro hM
    obtain ⟨⟨r1, r2⟩, t1, t2⟩ := hM.raw
    obtain ⟨hry, hrc, hdr⟩ := right_coords hM.anchors hM.rightSq r1 r2
    obtain ⟨hxf, hxd⟩ := top_coords hM.anchors hM.topXSq t1
    obtain ⟨hyf, hyd⟩ := top_coords hM.anchors hM.topYSq t2
    obtain ⟨-, rx1, -, -⟩ := hM.rightSq
    obtain ⟨-, xx1, -, xy1⟩ := hM.topXSq
    obtain ⟨-, yx1, -, yy1⟩ := hM.topYSq
    have hDXY : s ≤ sarea (ptD d) X Y := by
      have e : s < |sarea (ptD d) X Y| := area_gt hM.min 2 6 7
      linarith [gt_of_abs_nonneg e hM.convexDXY.le]
    have hFXY : s ≤ sarea (ptF f) X Y := by
      have e : s < |sarea (ptF f) X Y| := area_gt hM.min 3 6 7
      have hcyc : sarea (ptF f) X Y = sarea X Y (ptF f) := (sarea_cycle _ _ _).symm
      rw [hcyc] at e ⊢
      linarith [gt_of_abs_nonneg e hM.convexXYF.le]
    obtain ⟨-, -, hu, hv⟩ := eq13_14 hM.anchors hM.topX hM.topXSq hM.topY hM.topYSq hDXY hFXY
    have n1 : 0 < sarea R (ptD d) X := by
      have e : s < |sarea R (ptD d) X| := area_gt hM.min 5 2 6
      linarith [gt_of_abs_nonneg e (rdx_nonneg rx1 hdr.le hxd.le xx1)]
    refine C1OneLowerTopCap.convex_of_edges (by norm_num) fun i k h1 h2 => ?_
    rcases Nat.lt_or_ge i.val 4 with hi | hi
    · exact octTwo_edges_lo hM.anchors hM.right rx1 hry hM.topX xx1 xy1 hM.topY yx1 yy1
        hM.convexDXY hM.convexXYF n1 hrc hdr hxf hxd hyf hyd (by linarith) (by linarith)
        i k hi h1 h2
    · exact octTwo_edges_hi hM.anchors hM.right rx1 hry hM.topX xx1 xy1 hM.topY yx1 yy1
        hM.convexDXY hM.convexXYF n1 hrc hdr hxf hxd hyf hyd (by linarith) (by linarith)
        i k hi h1 h2

/-- The six octagon words (18): the solutions of (17) with entries in `{1, …, 6}` and `r₁ = 6`,
indexed from zero in the displayed order. -/
def octWord : Fin 6 → HullWord 8 :=
  ![![1, 6, 6, 5, 4, 3, 2, 1], ![2, 6, 5, 5, 4, 3, 2, 1], ![3, 6, 5, 4, 4, 3, 2, 1],
    ![4, 6, 5, 4, 3, 3, 2, 1], ![5, 6, 5, 4, 3, 2, 2, 1], ![6, 6, 5, 4, 3, 2, 1, 1]]

/-- Helper: the sign pattern of a point of `V₀V₁V₇` in a convex octagon, as a kernel check: for
`k = r₀ ∈ {1, …, 6}`, the signs "`[V₀V_bL] > 0` iff `b ≤ k`", "`[V_aV₀L] > 0` iff `a > k`" and
"`[V_aV_bL] > 0` iff `a < b`" (for `a, b ≠ 0`) are those of the word `octWord (k - 1)`. -/
theorem octWord_signs : ∀ k : Fin 6, ∀ a b : Fin 8, a ≠ b →
    (if a = 0 then decide (b.val ≤ k.val + 1) else if b = 0 then !decide (a.val ≤ k.val + 1)
      else decide (a < b)) = C1OneLowerTopCap.hullSign (octWord k) a b := by
  decide +kernel

/-- Helper: a point strictly inside the triangle `V₀V₁V₇` of a convex octagon, with no zero area
against two vertices, has one of the six words (18). -/
theorem octagon_word {V : Fin 8 → Point} {L : Point} (hV : ConvexPolygon V)
    (hin : InTriangle L (V 0) (V 1) (V 7))
    (hne : ∀ i j : Fin 8, i ≠ j → sarea (V i) (V j) L ≠ 0) :
    ∃ i, HasHullWord V L (octWord i) := by
  obtain ⟨l1, l2, l3⟩ := hin
  have z : ∀ A B : Point, sarea A B A = 0 := fun A B => by unfold sarea; ring
  have z' : ∀ A B : Point, sarea A B B = 0 := fun A B => by unfold sarea; ring
  have hT : 0 < sarea (V 0) (V 1) (V 7) := by
    have := sarea_add_sarea_add_sarea (V 0) (V 1) (V 7) L; linarith
  -- `[V_aV_bL] > 0` for `1 ≤ a < b`, by the barycentric identity over `V₀V₁V₇`
  have hpos : ∀ a b : Fin 8, 0 < a → a < b → 0 < sarea (V a) (V b) L := by
    intro a b ha hab
    have key : sarea (V 0) (V 1) (V 7) * sarea (V a) (V b) L =
        sarea (V 1) (V 7) L * sarea (V a) (V b) (V 0) +
          sarea (V 7) (V 0) L * sarea (V a) (V b) (V 1) +
          sarea (V 0) (V 1) L * sarea (V a) (V b) (V 7) := by unfold sarea; ring
    have t0 : 0 < sarea (V a) (V b) (V 0) := by rw [sarea_cycle]; exact hV 0 a b ha hab
    have ha' : 1 ≤ a.val := by have h0 := Fin.lt_def.1 ha; rw [Fin.val_zero] at h0; omega
    have t1 : 0 ≤ sarea (V a) (V b) (V 1) := by
      rcases Nat.eq_or_lt_of_le ha' with h1 | h1
      · have : a = 1 := Fin.ext (by simpa using h1.symm)
        rw [this, z]
      · rw [sarea_cycle]
        exact (hV 1 a b (Fin.lt_def.2 (by simpa using h1)) hab).le
    have t7 : 0 ≤ sarea (V a) (V b) (V 7) := by
      have hb7 := b.isLt
      rcases Nat.lt_or_ge b.val 7 with h7 | h7
      · exact (hV a b 7 hab (Fin.lt_def.2 (by simpa using h7))).le
      · have : b = 7 := Fin.ext (by simp; omega)
        rw [this, z']
    have : 0 < sarea (V 0) (V 1) (V 7) * sarea (V a) (V b) L := by
      rw [key]
      have q1 := mul_pos l2 t0
      have q2 := mul_nonneg l3.le t1
      have q3 := mul_nonneg l1.le t7
      linarith
    exact pos_of_mul_pos_right this hT.le
  have hedge : ∀ i : Fin 8, 0 < sarea (V i) (V (i + 1)) L := by
    intro i
    fin_cases i
    · exact l1
    · exact hpos 1 2 (by decide) (by decide)
    · exact hpos 2 3 (by decide) (by decide)
    · exact hpos 3 4 (by decide) (by decide)
    · exact hpos 4 5 (by decide) (by decide)
    · exact hpos 5 6 (by decide) (by decide)
    · exact hpos 6 7 (by decide) (by decide)
    · exact l3
  obtain ⟨r, hr, hb, -⟩ := C1OneLowerTopCap.exists_hullWord hV hedge hne
  have hk := hb 0
  have hsign : ∀ a b : Fin 8, a ≠ b → (0 < sarea (V a) (V b) L ↔
      (if a = 0 then decide (b.val ≤ r 0) else if b = 0 then !decide (a.val ≤ r 0)
        else decide (a < b)) = true) := by
    intro a b hab
    by_cases ha : a = 0
    · subst ha
      rw [ite_eq_left rfl, decide_eq_true_eq, hr 0 b hab, C1OneLowerTopCap.hullSign,
        decide_eq_true_eq, sub_zero]
    · by_cases hb0 : b = 0
      · subst hb0
        rw [ite_eq_right ha, ite_eq_left rfl, Bool.not_eq_true', decide_eq_false_iff_not]
        have e := hr 0 a (Ne.symm ha)
        rw [C1OneLowerTopCap.hullSign, decide_eq_true_eq, sub_zero] at e
        have sw := sarea_swap₁₂ (V 0) (V a) L
        have hn := hne 0 a (Ne.symm ha)
        constructor
        · intro h hle
          have := e.2 hle
          linarith
        · intro h
          have h' : ¬ 0 < sarea (V 0) (V a) L := fun h' => h (e.1 h')
          push Not at h'
          rcases h'.lt_or_eq with h1 | h1
          · linarith
          · exact absurd h1 hn
      · rw [ite_eq_right ha, ite_eq_right hb0, decide_eq_true_eq]
        have ha0 : 0 < a := by
          rw [Fin.lt_def]; have := Fin.val_ne_of_ne ha; simp at this; simp; omega
        have hb0' : 0 < b := by
          rw [Fin.lt_def]; have := Fin.val_ne_of_ne hb0; simp at this; simp; omega
        constructor
        · intro h
          by_contra hc
          push Not at hc
          have := hpos b a hb0' (lt_of_le_of_ne hc (Ne.symm hab))
          have sw := sarea_swap₁₂ (V a) (V b) L
          linarith
        · exact hpos a b ha0
  refine ⟨⟨r 0 - 1, by omega⟩, fun a b hab => ?_⟩
  rw [hsign a b hab]
  have := octWord_signs ⟨r 0 - 1, by omega⟩ a b hab
  simp only [show r 0 - 1 + 1 = r 0 by omega] at this
  rw [this]

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(17)-(18)`). In either mode the lower point `L` has, for the
hull octagon, a radial word (`[VᵢV_{i+j}L] > 0 ↔ j ≤ rᵢ`, `1 ≤ rᵢ ≤ 6`, the complement relation
(17), and `r₁ = 6` since `L ∈ OHC`), and it is one of the six words (18).
`docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 268-301. Uses: C1_ONE_LOWER_TOP_CAP:(12)-(13). -/
theorem eq17_18 {h c d f : ℝ} {R X Y L : Point} :
    (OneEach h c d f R X Y L → ∃ i, HasHullWord (octagonOneEach h c d f R X Y) L (octWord i)) ∧
      (TwoTop h c d f R X Y L → ∃ i, HasHullWord (octagonTwoTop h c d f R X Y) L (octWord i)) := by
  have hL : c1Config h c d f R X Y L 8 = L := rfl
  have hinj1 : ∀ i j : Fin 8, i ≠ j →
      (![0, 1, 5, 2, 6, 3, 7, 4] : Fin 8 → Fin 9) i ≠ ![0, 1, 5, 2, 6, 3, 7, 4] j := by decide
  have hinj2 : ∀ i j : Fin 8, i ≠ j →
      (![0, 1, 5, 2, 6, 7, 3, 4] : Fin 8 → Fin 9) i ≠ ![0, 1, 5, 2, 6, 7, 3, 4] j := by decide
  have hne1 : ∀ i : Fin 8, (![0, 1, 5, 2, 6, 3, 7, 4] : Fin 8 → Fin 9) i ≠ 8 := by decide
  have hne2 : ∀ i : Fin 8, (![0, 1, 5, 2, 6, 7, 3, 4] : Fin 8 → Fin 9) i ≠ 8 := by decide
  constructor
  · intro hM
    have hσ : ∀ i : Fin 8, octagonOneEach h c d f R X Y i =
        c1Config h c d f R X Y L ((![0, 1, 5, 2, 6, 3, 7, 4] : Fin 8 → Fin 9) i) := by
      intro i; fin_cases i <;> rfl
    refine octagon_word (convex_octagon.1 hM) hM.lower fun i j hij h0 => ?_
    have e := area_gt hM.min _ _ 8 (hinj1 i j hij) (hne1 j) (hne1 i)
    rw [← hσ i, ← hσ j, hL, h0, abs_zero] at e
    norm_num at e
  · intro hM
    have hσ : ∀ i : Fin 8, octagonTwoTop h c d f R X Y i =
        c1Config h c d f R X Y L ((![0, 1, 5, 2, 6, 7, 3, 4] : Fin 8 → Fin 9) i) := by
      intro i; fin_cases i <;> rfl
    refine octagon_word (convex_octagon.2 hM) hM.lower fun i j hij h0 => ?_
    have e := area_gt hM.min _ _ 8 (hinj2 i j hij) (hne2 j) (hne2 i)
    rw [← hσ i, ← hσ j, hL, h0, abs_zero] at e
    norm_num at e

/-! ### Section 5: the twelve exact contradictions -/

section

variable {h c d f : ℝ} {R X Y L : Point}

/-- The point of the cube of the certificates: the variables `h, c, d, f, r_x, r_y, x_x, x_y,
y_x, y_y, ℓ_x, ℓ_y` (`0` beyond). -/
def zeta (h c d f : ℝ) (R X Y L : Point) : ℕ → ℝ
  | 0 => h
  | 1 => c
  | 2 => d
  | 3 => f
  | 4 => R.1
  | 5 => R.2
  | 6 => X.1
  | 7 => X.2
  | 8 => Y.1
  | 9 => Y.2
  | 10 => L.1
  | 11 => L.2
  | _ => 0

/-- The nine points of a mode: the octagon `V₀, …, V₇` and `V₈ = L`. -/
def cfg9 (V : Fin 8 → Point) (L : Point) (i : ℕ) : Point := if h : i < 8 then V ⟨i, h⟩ else L

theorem ptEval_one (h c d f : ℝ) (R X Y L : Point) (i : ℕ) (hi : i < 9) :
    Cover.ptEval (zeta h c d f R X Y L) Model.ptOne i = cfg9 (octagonOneEach h c d f R X Y) L i := by
  interval_cases i <;> simp [Cover.ptEval, Model.ptOne, zeta, cfg9, octagonOneEach, ptO, ptC, ptD,
    ptF, ptH]

theorem ptEval_two (h c d f : ℝ) (R X Y L : Point) (i : ℕ) (hi : i < 9) :
    Cover.ptEval (zeta h c d f R X Y L) Model.ptTwo i = cfg9 (octagonTwoTop h c d f R X Y) L i := by
  interval_cases i <;> simp [Cover.ptEval, Model.ptTwo, zeta, cfg9, octagonTwoTop, ptO, ptC, ptD,
    ptF, ptH]

/-- `AreaOK` for the nine points of a mode, from the least area of a relabelling `τ`. -/
theorem areaOK_cfg9 {Pc : Fin 9 → Point} (hmin : A₀ ≤ minTriangleArea Pc) (V : Fin 8 → Point)
    (L : Point) (τ : Fin 9 → Fin 9) (hτ : Function.Injective τ)
    (hP : ∀ a : Fin 9, cfg9 V L a = Pc (τ a)) : C1OneLower.AreaOK (cfg9 V L) := by
  refine C1OneLower.areaOK_of_min hmin _ (fun i => if h : i < 9 then τ ⟨i, h⟩ else 0) ?_ ?_
  · intro a b ha hb hab
    simp only [ha, hb, dite_true] at hab
    exact congrArg Fin.val (hτ hab)
  · intro a ha
    simp only [ha, dite_true]
    exact hP ⟨a, ha⟩

theorem areaOK_one (hM : OneEach h c d f R X Y L) :
    C1OneLower.AreaOK (cfg9 (octagonOneEach h c d f R X Y) L) :=
  areaOK_cfg9 hM.min _ _ ![0, 1, 5, 2, 6, 3, 7, 4, 8] (by decide) (by
    intro a; fin_cases a <;> rfl)

theorem areaOK_two (hM : TwoTop h c d f R X Y L) :
    C1OneLower.AreaOK (cfg9 (octagonTwoTop h c d f R X Y) L) :=
  areaOK_cfg9 hM.min _ _ ![0, 1, 5, 2, 6, 7, 3, 4, 8] (by decide) (by
    intro a; fin_cases a <;> rfl)

/-- The model's words are the octagon words. -/
theorem octWords_eq : ∀ i : Fin 6, ∀ a b : Fin 8,
    Model.positive (Model.octWords.getD i []) a b = C1OneLowerTopCap.hullSign (octWord i) a b := by
  decide +kernel

/-- The table of a word holds: hull triples are counterclockwise (convexity), and the triangles
`(a, b, L)` have the signs of the word. -/
theorem table_holds {V : Fin 8 → Point} {L : Point} (hV : ConvexPolygon V)
    (H : C1OneLower.AreaOK (cfg9 V L)) {i : Fin 6} (hw : HasHullWord V L (octWord i)) :
    Cover.AllHold (C1ZeroLower.FHolds (cfg9 V L)) (Model.table (Model.octWords.getD i [])) := by
  intro g hg
  obtain ⟨t, ht, rfl⟩ := List.mem_map.1 hg
  obtain ⟨t1, t2, t3⟩ := C1ZeroLower.lexTriples_valid t ht
  refine ⟨t1, t2, t3, ?_⟩
  by_cases h8 : t.2.2 < 8
  · simp only [h8, ite_true, Cover.SFact.Holds, Cover.OrientHolds]
    have := hV ⟨t.1, by omega⟩ ⟨t.2.1, by omega⟩ ⟨t.2.2, h8⟩ (Fin.mk_lt_mk.2 t1) (Fin.mk_lt_mk.2 t2)
    simpa [cfg9, show t.1 < 8 by omega, show t.2.1 < 8 by omega, h8] using this
  · have e8 : t.2.2 = 8 := by omega
    simp only [h8, ite_false, Cover.SFact.Holds]
    have ha : t.1 < 8 := by omega
    have hb : t.2.1 < 8 := by omega
    have hne : sarea (cfg9 V L t.1) (cfg9 V L t.2.1) (cfg9 V L t.2.2) ≠ 0 := by
      intro h0
      have := H t.1 t.2.1 t.2.2 (by omega) (by omega) t3 (by omega) (by omega) (by omega)
      rw [h0, abs_zero] at this; linarith [A₀_pos]
    have e := octWords_eq i ⟨t.1, ha⟩ ⟨t.2.1, hb⟩
    simp only at e
    rw [e]
    simp only [cfg9, ha, hb, dite_true, e8, show ¬ (8 < 8) from by omega, dite_false] at hne ⊢
    exact hw.orient (fun h => by simp [Fin.ext_iff] at h; omega) hne

theorem trees_ok (m : Bool) (i : Fin 6) :
    ∃ T, Cover.checkTree (Model.spec m (Model.octWords.getD i [])) [] T = true := by
  cases m <;> fin_cases i
  exacts [⟨_, Model.tree_one_0_ok⟩, ⟨_, Model.tree_one_1_ok⟩, ⟨_, Model.tree_one_2_ok⟩,
    ⟨_, Model.tree_one_3_ok⟩, ⟨_, Model.tree_one_4_ok⟩, ⟨_, Model.tree_one_5_ok⟩,
    ⟨_, Model.tree_two_0_ok⟩, ⟨_, Model.tree_two_1_ok⟩, ⟨_, Model.tree_two_2_ok⟩,
    ⟨_, Model.tree_two_3_ok⟩, ⟨_, Model.tree_two_4_ok⟩, ⟨_, Model.tree_two_5_ok⟩]

/-- A cell of either mode is impossible once its factors are nonnegative. -/
theorem mode_false {m : Bool} {V : Fin 8 → Point} {L : Point} {z : ℕ → ℝ}
    (hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1) (hpt : ∀ j, j < 9 → Cover.ptEval z (Model.pt m) j = cfg9 V L j)
    (hV : ConvexPolygon V) (H : C1OneLower.AreaOK (cfg9 V L))
    (hfac : ∀ e ∈ Model.factors m, 0 ≤ e.eval z) {i : Fin 6} (hw : HasHullWord V L (octWord i)) :
    False := by
  obtain ⟨T, hT⟩ := trees_ok m i
  exact C1OneLower.tableSpec_false hT hz hpt H (by simp) (by simp) hfac (by simp)
    (table_holds hV H hw)

theorem zeta_mem (hA : C1Anchors h c d f) (hR : R ∈ unitSquare) (hX : X ∈ unitSquare)
    (hY : Y ∈ unitSquare) (l1 : 0 ≤ L.1) (l2 : 0 ≤ L.2) (l3 : L.1 + L.2 ≤ 1) (v : ℕ) :
    0 ≤ zeta h c d f R X Y L v ∧ zeta h c d f R X Y L v ≤ 1 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨r0, r1, r2, r3⟩ := hR
  obtain ⟨x0, x1, x2, x3⟩ := hX
  obtain ⟨y0, y1, y2, y3⟩ := hY
  rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;> simp only [zeta] <;>
    constructor <;> linarith

end

theorem eq19_20_one {h c d f : ℝ} {R X Y L : Point} (hfd : f ≤ d) (hM : OneEach h c d f R X Y L)
    (i : Fin 6) (hw : HasHullWord (octagonOneEach h c d f R X Y) L (octWord i)) : False := by
  have pos : ∀ {a b : ℝ}, 0 < a → 0 < b → 0 < a / b := fun ha hb => div_pos ha hb
  obtain ⟨b1, b2, b3, b4, b5⟩ := eq1 (Or.inl hM)
  obtain ⟨l1, l2, -, -, l5⟩ := eq2 (Or.inl hM)
  obtain ⟨e1, e2, e3, e4, e5, e6, e7, e8⟩ := eq3 hM
  obtain ⟨r1, r2, r3⟩ := eq4 hM
  obtain ⟨x1, x2⟩ := eq5 hM
  obtain ⟨y1, y2, y3⟩ := eq6 hM
  obtain ⟨m1, m2, m3, m4⟩ := eq7 hM
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  obtain ⟨-, rx1, -, -⟩ := hM.rightSq
  obtain ⟨-, xx1, -, xy1⟩ := hM.topSq
  obtain ⟨-, -, -, yy1⟩ := hM.leftSq
  have ls1 := pos (show (0 : ℝ) < 8 / 73 by norm_num) (show 0 < h by linarith)
  have ls2 := pos (show (0 : ℝ) < 8 / 73 by norm_num) (show 0 < c by linarith)
  refine mode_false (m := false) (zeta_mem hM.anchors hM.rightSq hM.topSq hM.leftSq
    (by linarith) (by linarith) (by linarith)) (ptEval_one h c d f R X Y L)
    ((convex_octagon (L := L)).1 hM) (areaOK_one hM) ?_ hw
  simp only [Model.factors, Bool.false_eq_true, ite_false, Model.factorsOne,
    List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true, and_true,
    Cert.Expr.eval_minus, Cert.Expr.eval_one, Cert.Expr.eval_v, Cert.Expr.eval_k, zeta]
  push_cast
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

theorem eq19_20_two {h c d f : ℝ} {R X Y L : Point} (hfd : f ≤ d) (hM : TwoTop h c d f R X Y L)
    (i : Fin 6) (hw : HasHullWord (octagonTwoTop h c d f R X Y) L (octWord i)) : False := by
  obtain ⟨b1, b2, b3, b4, b5⟩ := eq1 (Or.inr hM)
  obtain ⟨l1, l2, -, -, l5⟩ := eq2 (Or.inr hM)
  obtain ⟨f1, f2⟩ := eq10 hM hfd
  obtain ⟨e1, -, e3, e4, e5⟩ := eq11 hM hfd
  obtain ⟨r1, r2, r3, x1, y1, x2, y2⟩ := eq12 hM hfd
  obtain ⟨m1, m2, m3, m4⟩ := eq15 hM hfd
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hM.anchors
  obtain ⟨-, rx1, -, -⟩ := hM.rightSq
  obtain ⟨-, xx1, -, xy1⟩ := hM.topXSq
  obtain ⟨-, yx1, -, yy1⟩ := hM.topYSq
  have H := areaOK_two hM
  have hDXY : s ≤ sarea (ptD d) X Y := by
    have := H 3 4 5 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num)
    simp only [cfg9, octagonTwoTop] at this
    norm_num at this
    rw [abs_of_pos hM.convexDXY] at this; linarith [C1ZeroLower.two_A₀.1]
  have hFXY : s ≤ sarea (ptF f) X Y := by
    have := H 4 5 6 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num)
    simp only [cfg9, octagonTwoTop] at this
    norm_num at this
    rw [abs_of_pos hM.convexXYF] at this
    rw [← sarea_cycle]; linarith [C1ZeroLower.two_A₀.1]
  obtain ⟨-, -, u1, v1⟩ := eq13_14 hM.anchors hM.topX hM.topXSq hM.topY hM.topYSq hDXY hFXY
  have hf1 : s ≤ f := by nlinarith
  refine mode_false (m := true) (zeta_mem hM.anchors hM.rightSq hM.topXSq hM.topYSq
    (by linarith) (by linarith) (by linarith)) (ptEval_two h c d f R X Y L)
    ((convex_octagon (L := L)).2 hM) H ?_ hw
  simp only [Model.factors, ite_true, Model.factorsTwo,
    List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true, and_true,
    Cert.Expr.eval_minus, Cert.Expr.eval_one, Cert.Expr.eval_v, Cert.Expr.eval_k, zeta]
  push_cast
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

/-- **Theorem** (`C1_ONE_LOWER_EIGHT_HULL:Theorem`). The full convex hull of a competitive C1
configuration with exactly one free point in `OHC` cannot have eight vertices. (No order `f ≤ d`
is assumed: the note transposes first, line 21.)
`docs/proof/nine/C1_ONE_LOWER_EIGHT_HULL.md`, lines 19-24 and 349-351.
Uses: C1_ONE_LOWER_EIGHT_HULL:claim-patterns, C1_ONE_LOWER_EIGHT_HULL:(17)-(18),
C1_ONE_LOWER_EIGHT_HULL:(19)-(20). -/
theorem mainTheorem {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hn : lowerCount h c W X Y Z = 1)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (h8 : hullVertexCount (c1Config h c d f W X Y Z) = 8) : False := by
  have key : ∀ {h c d f : ℝ} {W X Y Z : Point}, C1Anchors h c d f → W ∈ unitSquare →
      X ∈ unitSquare → Y ∈ unitSquare → Z ∈ unitSquare → lowerCount h c W X Y Z = 1 →
      A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z) →
      hullVertexCount (c1Config h c d f W X Y Z) = 8 → f ≤ d → False := by
    intro h c d f W X Y Z hA hW hX hY hZ hn hmin h8 hfd
    obtain ⟨σ, hM | hM⟩ := claim_patterns hA hfd hW hX hY hZ hn hmin h8
    · obtain ⟨i, hw⟩ := (eq17_18 (h := h) (c := c) (d := d) (f := f)).1 hM
      exact eq19_20_one hfd hM i hw
    · obtain ⟨i, hw⟩ := (eq17_18 (h := h) (c := c) (d := d) (f := f)).2 hM
      exact eq19_20_two hfd hM i hw
  rcases le_total f d with hfd | hdf
  · exact key hA hW hX hY hZ hn hmin h8 hfd
  · obtain ⟨e1, e2⟩ := transpose h c d f W X Y Z
    exact key (C1OneLowerTopCap.anchors_swap hA) (C1OneLowerTopCap.sq_swap hW)
      (C1OneLowerTopCap.sq_swap hX) (C1OneLowerTopCap.sq_swap hY) (C1OneLowerTopCap.sq_swap hZ)
      (by rw [e2]; exact hn) (C1OneLowerTopCap.min_swap hmin) (by rw [e1]; exact h8) hdf

end Heilbronn.Nine.C1OneLowerEightHull
