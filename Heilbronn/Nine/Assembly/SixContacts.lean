module

public import Heilbronn.Nine.SixBoundary.Exterior
public import Heilbronn.Nine.SixBoundary.SingleSide
public import Heilbronn.Nine.SixBoundary.TwoSideUpper
public import Heilbronn.Nine.SixBoundary.SingleTop
public import Heilbronn.Nine.SixBoundary.SideOpposite
public import Heilbronn.Nine.SixBoundary.ThreeCaps
public import Heilbronn.Nine.SixBoundary.TwoTopCompletion
public import Heilbronn.Nine.SixBoundary.SideTwoTop
public import Heilbronn.Nine.SixBoundary.OppositeCapCompletion

/-!
# Assembly: family N with exactly six boundary contacts

With exactly six contacts every free point lies in the open square. By the exterior partition
(`SixBoundaryExterior.exterior_partition`) it lies strictly inside the anchor hexagon `I` or
in one of the closed caps `(0,0)AB`, `R`, `T`, `L`; the double-contact cap is empty
(`SixBoundaryExterior.not_inCap00`) and each side cap holds at most one free point
(`SixBoundaryExterior.atMostOne_sideCaps`). So each free point has a region among `R, L, T, I`, ranked
`0, 1, 2, 3` (`SixRegion`).

Every statement below is symmetric in the three free points (`SixGood`, with
`SixBoundary.minTriangleArea_nConfig_perm` and `SixBoundary.isOptimal_nConfig_perm`), so it is
enough to treat the twenty occupancies with nondecreasing ranks (`sixGood_sorted`). Each is
closed by one theorem, already in the order of the free points it expects:

| ranks | closing theorem |
|---|---|
| `R R ·`, `· L L` (two points in one side cap) | `SixBoundaryExterior.atMostOne_sideCaps` |
| `R L T` | `SixBoundaryThreeCaps.three_caps` |
| `R L I` | `SixBoundaryTwoSideUpper.twoSide_isOptimal_of_A₀_le` |
| `R T T` / `L T T` | `SixBoundarySideTwoTop.sideTwoTop_lt` / `sideTwoTop_lt_transposed` |
| `R T I` / `L T I` | `SixBoundarySideOpposite.sideOpposite_le_A₀` / `sideOpposite_le_A₀_transposed` |
| `R I I`, `L I I` | `SixBoundarySingleSide.singleSide_false_of_A₀_le` |
| `T T T` | `SixBoundaryOppositeCapCompletion.oppositeCap_isOptimal_of_A₀_le` |
| `T T I` | `SixBoundaryTwoTopCompletion.twoTop_le_A₀` |
| `T I I` | `SixBoundarySingleTop.singleTop_lt` |
| `I I I` | `SixBoundaryHull.false_of_all_inHexagon` |

The transposition `L ↔ R` is not needed separately: `SixBoundarySideTwoTop` and
`SixBoundarySideOpposite` state the transposed forms, and `SixBoundarySingleSide.singleSide_false_of_A₀_le` allows
either side cap.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.Assembly

open SixBoundary

/-! ### Permuting the free points -/

theorem min_nConfig_swap12 (a h b c d f : ℝ) (X Y Z : Point) :
    minTriangleArea (nConfig a h b c d f Y X Z) = minTriangleArea (nConfig a h b c d f X Y Z) := by
  have h0 : Equiv.swap (0 : Fin 3) 1 2 = 2 := by decide
  simpa [h0] using minTriangleArea_nConfig_perm a h b c d f ![X, Y, Z] (Equiv.swap 0 1)

theorem min_nConfig_swap23 (a h b c d f : ℝ) (X Y Z : Point) :
    minTriangleArea (nConfig a h b c d f X Z Y) = minTriangleArea (nConfig a h b c d f X Y Z) := by
  have h0 : Equiv.swap (1 : Fin 3) 2 0 = 0 := by decide
  simpa [h0] using minTriangleArea_nConfig_perm a h b c d f ![X, Y, Z] (Equiv.swap 1 2)

theorem min_nConfig_swap13 (a h b c d f : ℝ) (X Y Z : Point) :
    minTriangleArea (nConfig a h b c d f Z Y X) = minTriangleArea (nConfig a h b c d f X Y Z) := by
  have h0 : Equiv.swap (0 : Fin 3) 2 1 = 1 := by decide
  simpa [h0] using minTriangleArea_nConfig_perm a h b c d f ![X, Y, Z] (Equiv.swap 0 2)

theorem isOptimal_nConfig_swap12 (a h b c d f : ℝ) (X Y Z : Point) :
    IsOptimal (nConfig a h b c d f Y X Z) ↔ IsOptimal (nConfig a h b c d f X Y Z) := by
  have h0 : Equiv.swap (0 : Fin 3) 1 2 = 2 := by decide
  simpa [h0] using isOptimal_nConfig_perm a h b c d f ![X, Y, Z] (Equiv.swap 0 1)

theorem isOptimal_nConfig_swap23 (a h b c d f : ℝ) (X Y Z : Point) :
    IsOptimal (nConfig a h b c d f X Z Y) ↔ IsOptimal (nConfig a h b c d f X Y Z) := by
  have h0 : Equiv.swap (1 : Fin 3) 2 0 = 0 := by decide
  simpa [h0] using isOptimal_nConfig_perm a h b c d f ![X, Y, Z] (Equiv.swap 1 2)

/-! ### The symmetric goal -/

/-- The conclusion of the six-contact case for the free points `X, Y, Z`, with its hypotheses. -/
def SixGood (a h b c d f : ℝ) (X Y Z : Point) : Prop :=
  X ∈ unitSquare → Y ∈ unitSquare → Z ∈ unitSquare → ExactlySixContacts X Y Z →
    A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z) → IsOptimal (nConfig a h b c d f X Y Z)

theorem SixGood.swap12 {a h b c d f : ℝ} {X Y Z : Point} (hg : SixGood a h b c d f X Y Z) :
    SixGood a h b c d f Y X Z := by
  intro hY hX hZ hsix hmin
  rw [min_nConfig_swap12] at hmin
  rw [isOptimal_nConfig_swap12]
  exact hg hX hY hZ ⟨hsix.2.1, hsix.1, hsix.2.2⟩ hmin

theorem SixGood.swap23 {a h b c d f : ℝ} {X Y Z : Point} (hg : SixGood a h b c d f X Y Z) :
    SixGood a h b c d f X Z Y := by
  intro hX hZ hY hsix hmin
  rw [min_nConfig_swap23] at hmin
  rw [isOptimal_nConfig_swap23]
  exact hg hX hY hZ ⟨hsix.1, hsix.2.2, hsix.2.1⟩ hmin

/-- The regions of a free point with exactly six contacts, ranked `R, L, T, I`. -/
def SixRegion (a h b c d f : ℝ) : Fin 4 → Point → Prop :=
  ![InCapR c d, InCapL f h, InCapT d f, InHexagon a h b c d f]

/-- It suffices to prove `SixGood` when the ranks of the regions of `X, Y, Z` are
nondecreasing. -/
theorem sixGood_of_sorted {a h b c d f : ℝ}
    (H : ∀ (X Y Z : Point) (i j k : Fin 4), i ≤ j → j ≤ k → SixRegion a h b c d f i X →
      SixRegion a h b c d f j Y → SixRegion a h b c d f k Z → SixGood a h b c d f X Y Z)
    {X Y Z : Point} {i j k : Fin 4} (hX : SixRegion a h b c d f i X)
    (hY : SixRegion a h b c d f j Y) (hZ : SixRegion a h b c d f k Z) :
    SixGood a h b c d f X Y Z := by
  rcases le_total i j with hij | hji <;> rcases le_total j k with hjk | hkj
  · exact H X Y Z i j k hij hjk hX hY hZ
  · rcases le_total i k with hik | hki
    · exact (H X Z Y i k j hik hkj hX hZ hY).swap23
    · exact (H Z X Y k i j hki hij hZ hX hY).swap12.swap23
  · rcases le_total i k with hik | hki
    · exact (H Y X Z j i k hji hik hY hX hZ).swap12
    · exact (H Y Z X j k i hjk hki hY hZ hX).swap23.swap12
  · exact (H Z Y X k j i hkj hji hZ hY hX).swap12.swap23.swap12

/-! ### The twenty sorted occupancies -/

section Cases

variable {a h b c d f : ℝ} {X Y Z : Point}

theorem A₀_not_le_of_lt {m t : ℝ} (hm : m < t) (ht : t ≤ A₀) : ¬ A₀ ≤ m := by
  intro h; linarith

/-- `R L T`: one free point in each of the caps `R`, `L`, `T`. -/
theorem six_RLT (hN : NAnchors a h b c d f) (hX : InCapR c d X) (hY : InCapL f h Y)
    (hZ : InCapT d f Z) (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) : False := by
  have hXc : 0 ≤ sarea (c, 0) X (1, d) := by rw [sarea_swap₂₃]; linarith [hX.2]
  have hYc : 0 ≤ sarea (f, 1) Y (0, h) := by rw [sarea_swap₂₃]; linarith [hY.2]
  have hZc : 0 ≤ sarea (1, d) Z (f, 1) := by rw [sarea_swap₂₃]; linarith [hZ.2]
  exact A₀_not_le_of_lt (SixBoundaryThreeCaps.three_caps hN hX.1 hY.1 hZ.1 hXc hYc hZc)
    A₀_bounds.1.le hmin

/-- `R T T`: one free point in the cap `R`, two in the cap `T`. -/
theorem six_RTT (hN : NAnchors a h b c d f) (hX : InCapR c d X) (hY : InCapT d f Y)
    (hZ : InCapT d f Z) (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) : False :=
  have h := SixBoundarySideTwoTop.sideTwoTop_lt hN hX hY hZ
  A₀_not_le_of_lt h.1 h.2.le hmin

/-- `L T T`: one free point in the cap `L`, two in the cap `T`. -/
theorem six_LTT (hN : NAnchors a h b c d f) (hX : InCapL f h X) (hY : InCapT d f Y)
    (hZ : InCapT d f Z) (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) : False :=
  A₀_not_le_of_lt (SixBoundarySideTwoTop.sideTwoTop_lt_transposed hN hX hY hZ)
    (by linarith [A₀_bounds.2.1]) hmin

/-- `T I I`: one free point in the cap `T`, two in the hexagon `I`. -/
theorem six_TII (hN : NAnchors a h b c d f) (hX : InCapT d f X) (hY : InHexagon a h b c d f Y)
    (hZ : InHexagon a h b c d f Z) (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    False :=
  have h := SixBoundarySingleTop.singleTop_lt ⟨hN, hX, hY, hZ⟩
  A₀_not_le_of_lt h.1 h.2.le hmin

/-- The twenty occupancies with nondecreasing ranks. -/
theorem sixGood_sorted (hN : NAnchors a h b c d f) (X Y Z : Point) (i j k : Fin 4)
    (hij : i ≤ j) (hjk : j ≤ k) (hXr : SixRegion a h b c d f i X)
    (hYr : SixRegion a h b c d f j Y) (hZr : SixRegion a h b c d f k Z) :
    SixGood a h b c d f X Y Z := by
  intro hX hY hZ hsix hmin
  have hcap := SixBoundaryExterior.atMostOne_sideCaps hN hX hY hZ (A₀_bounds.1.le.trans hmin)
  fin_cases i <;> fin_cases j <;> fin_cases k <;>
    simp only [Fin.reduceFinMk, Fin.reduceLE] at hij hjk <;>
    simp only [SixRegion, Fin.reduceFinMk, Matrix.cons_val] at hXr hYr hZr
  -- the surviving goals, in lexicographic order of the ranks `(i, j, k)`
  · exact (hcap.1.1 ⟨hXr, hYr⟩).elim -- R R R
  · exact (hcap.1.1 ⟨hXr, hYr⟩).elim -- R R L
  · exact (hcap.1.1 ⟨hXr, hYr⟩).elim -- R R T
  · exact (hcap.1.1 ⟨hXr, hYr⟩).elim -- R R I
  · exact (hcap.2.2.2 ⟨hYr, hZr⟩).elim -- R L L
  · exact (six_RLT hN hXr hYr hZr hmin).elim -- R L T
  · exact SixBoundaryTwoSideUpper.twoSide_isOptimal_of_A₀_le hN hXr hYr hZ hZr hsix hmin -- R L I
  · exact (six_RTT hN hXr hYr hZr hmin).elim -- R T T
  · exact ((SixBoundarySideOpposite.sideOpposite_le_A₀ ⟨hN, hXr, hYr, hZr⟩).2 hmin).1 -- R T I
  · exact (SixBoundarySingleSide.singleSide_false_of_A₀_le hN (Or.inl hXr) hY hZ hYr hZr hsix hmin).elim -- R I I
  · exact (hcap.2.1 ⟨hXr, hYr⟩).elim -- L L L
  · exact (hcap.2.1 ⟨hXr, hYr⟩).elim -- L L T
  · exact (hcap.2.1 ⟨hXr, hYr⟩).elim -- L L I
  · exact (six_LTT hN hXr hYr hZr hmin).elim -- L T T
  · exact ((SixBoundarySideOpposite.sideOpposite_le_A₀_transposed hN hXr hYr hZr).2 hmin).1 -- L T I
  · exact (SixBoundarySingleSide.singleSide_false_of_A₀_le hN (Or.inr hXr) hY hZ hYr hZr hsix hmin).elim -- L I I
  · exact SixBoundaryOppositeCapCompletion.oppositeCap_isOptimal_of_A₀_le hN hXr hYr hZr hsix hmin -- T T T
  · exact ((SixBoundaryTwoTopCompletion.twoTop_le_A₀ ⟨hN, hXr, hYr, hZr⟩).2 hmin).1 -- T T I
  · exact (six_TII hN hXr hYr hZr hmin).elim -- T I I
  · exact (SixBoundaryHull.false_of_all_inHexagon hN hX hY hZ hmin hXr hYr hZr).elim -- I I I

end Cases

/-! ### The six-contact case -/

/-- **Family N with exactly six contacts**: a configuration of least area at least `A₀` is
optimal. -/
theorem six_contacts {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hsix : ExactlySixContacts X Y Z)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    IsOptimal (nConfig a h b c d f X Y Z) := by
  obtain ⟨hpart, -⟩ := SixBoundaryExterior.exterior_partition hN hX hY hZ
  obtain ⟨h0X, h0Y, h0Z⟩ := SixBoundaryExterior.not_inCap00 hN hX hY hZ hmin
  have reg : ∀ W : Point, InOpenSquare W → ¬ InCap00 a b W →
      ∃ i : Fin 4, SixRegion a h b c d f i W := by
    intro W hW h0
    rcases hpart W hW with hI | h00 | hR | hT | hL
    · exact ⟨3, hI⟩
    · exact (h0 h00).elim
    · exact ⟨0, hR⟩
    · exact ⟨2, hT⟩
    · exact ⟨1, hL⟩
  obtain ⟨i, hi⟩ := reg X hsix.1 h0X
  obtain ⟨j, hj⟩ := reg Y hsix.2.1 h0Y
  obtain ⟨k, hk⟩ := reg Z hsix.2.2 h0Z
  exact sixGood_of_sorted (sixGood_sorted hN) hi hj hk hX hY hZ hsix hmin

end Heilbronn.Nine.Assembly
