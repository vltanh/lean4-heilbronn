module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangular
public import Heilbronn.Nine.SixBoundary.TwoTopConvex

/-! # Complete N occupancy with two opposite-cap points (`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_COMPLETION.md`)

**Role.** Primary route: the parent theorem of the six-boundary occupancy N6-06
`(n_L,n_T,n_R;n_I) = (0,2,0;1)` of `docs/proof/nine/UNRESTRICTED.md`, Section 4 (rows N6-06-L0/L1), assembled
from `SIX_BOUNDARY_TWO_TOP_TRIANGULAR` (triangular cap hull, strict) and
`SIX_BOUNDARY_TWO_TOP_CONVEX` (convex cap hull, sharp).

**Setting.** The N anchors (`NAnchors`); two free points `Y, Z` in the opposite cap
`T = DF(1,1)` (`InCapT`; the corner `(1,1)` is virtual, square-side positions allowed) and the
ninth point `Q` strictly inside the anchor hexagon. The configuration is
`nConfig a h b c d f Y Z Q`.

**Results.**
* `theorem1`: minimum `≤ A₀`; equality only at the sharp configuration up to symmetry and
  relabelling (`IsOptimal`), with two additional square-boundary contacts (one cap point on the
  right side, the other on the top side).
* `claim_hull_dichotomy`: under a positive minimum, `D` and `F` are vertices of the hull of
  `D, F, Y, Z`, which is a triangle `DXF` with the other cap point inside, or a convex
  quadrilateral `DEGF`.
* `claim_normalization`: transposition preserves the occupancy (so each component may impose
  `f ≤ d`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundaryTwoTopCompletion

open Heilbronn.Nine.SixBoundary

/-- The occupancy N6-06: N anchors, `Y, Z` in the opposite cap `DF(1,1)`, `Q` strictly inside the
anchor hexagon. -/
def TwoTopFamily (a h b c d f : ℝ) (Y Z Q : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapT d f Y ∧ InCapT d f Z ∧ InHexagon a h b c d f Q

variable {a h b c d f : ℝ} {Y Z Q : Point}

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_COMPLETION:claim-hull-dichotomy`). If the minimum area is
positive, every cap point has `y`-coordinate greater than `d` and `x`-coordinate greater than `f`
(so `D` is the unique lowest and `F` the unique leftmost of `D, F, Y, Z`, and both are hull
vertices), and the hull of `D, F, Y, Z` is either a triangle `DXF` with the remaining cap point
`P` strictly inside, or a strictly convex quadrilateral `D, E, G, F` (counterclockwise), where
`{X, P}` resp. `{E, G}` is `{Y, Z}`; a transition between the two would be an actual
collinearity. `docs/proof/nine/SIX_BOUNDARY_TWO_TOP_COMPLETION.md`, lines 25-54. -/
theorem claim_hull_dichotomy
    (hfam : TwoTopFamily a h b c d f Y Z Q)
    (hpos : 0 < minTriangleArea (nConfig a h b c d f Y Z Q)) :
    (d < Y.2 ∧ d < Z.2 ∧ f < Y.1 ∧ f < Z.1) ∧
      ((∃ X P : Point, ((X = Y ∧ P = Z) ∨ (X = Z ∧ P = Y)) ∧ InTriangle P (ptD d) X (ptF f)) ∨
        (∃ E G : Point, ((E = Y ∧ G = Z) ∨ (E = Z ∧ G = Y)) ∧
          IsConvexCCW ![ptD d, E, G, ptF f])) := by
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, hY, hZ, -⟩ := hfam
  have nY := sarea_ne_zero_of_min_pos hpos (4 : Fin 9) 5 6
  have nZ := sarea_ne_zero_of_min_pos hpos (4 : Fin 9) 5 7
  have n1 := sarea_ne_zero_of_min_pos hpos (4 : Fin 9) 6 7
  have n2 := sarea_ne_zero_of_min_pos hpos (5 : Fin 9) 6 7
  change sarea (ptD d) (ptF f) Y ≠ 0 at nY
  change sarea (ptD d) (ptF f) Z ≠ 0 at nZ
  change sarea (ptD d) Y Z ≠ 0 at n1
  change sarea (ptF f) Y Z ≠ 0 at n2
  have sY : sarea (ptD d) (ptF f) Y < 0 := lt_of_le_of_ne hY.2 nY
  have sZ : sarea (ptD d) (ptF f) Z < 0 := lt_of_le_of_ne hZ.2 nZ
  obtain ⟨⟨y0, y1, y2, y3⟩, -⟩ := hY
  obtain ⟨⟨z0, z1, z2, z3⟩, -⟩ := hZ
  have ord : ∀ W : Point, W.1 ≤ 1 → W.2 ≤ 1 → sarea (ptD d) (ptF f) W < 0 → d < W.2 ∧ f < W.1 := by
    intro W w1 w2 hW
    simp only [sarea] at hW
    constructor
    · by_contra hcon; push Not at hcon
      nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ d - W.2),
        mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - W.1)]
    · by_contra hcon; push Not at hcon
      nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ f - W.1),
        mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ 1 - W.2)]
  obtain ⟨oY1, oY2⟩ := ord Y y1 y3 sY
  obtain ⟨oZ1, oZ2⟩ := ord Z z1 z3 sZ
  refine ⟨⟨oY1, oZ1, oY2, oZ2⟩, ?_⟩
  have cvx : ∀ E G : Point, 0 < sarea (ptD d) E G → 0 < sarea (ptD d) E (ptF f) →
      0 < sarea (ptD d) G (ptF f) → 0 < sarea E G (ptF f) →
      IsConvexCCW ![ptD d, E, G, ptF f] := by
    intro E G k1 k2 k3 k4 i j k hij hjk
    fin_cases i <;> fin_cases j <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hij ⊢ <;>
      fin_cases k <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hjk ⊢
    · exact k1
    · exact k2
    · exact k3
    · exact k4
  rcases lt_or_gt_of_ne n1 with s1 | s1 <;> rcases lt_or_gt_of_ne n2 with s2 | s2
  · -- convex `D Z Y F`
    right
    exact ⟨Z, Y, Or.inr ⟨rfl, rfl⟩, cvx Z Y (by simp only [sarea] at s1 ⊢; linarith)
      (by simp only [sarea] at sZ ⊢; linarith) (by simp only [sarea] at sY ⊢; linarith)
      (by simp only [sarea] at s2 ⊢; linarith)⟩
  · -- `Y` inside `D Z F`
    left
    exact ⟨Z, Y, Or.inr ⟨rfl, rfl⟩, by simp only [sarea] at s1 ⊢; linarith,
      by simp only [sarea] at s2 ⊢; linarith, by simp only [sarea] at sY ⊢; linarith⟩
  · -- `Z` inside `D Y F`
    left
    exact ⟨Y, Z, Or.inl ⟨rfl, rfl⟩, s1, by simp only [sarea] at s2 ⊢; linarith,
      by simp only [sarea] at sZ ⊢; linarith⟩
  · -- convex `D Y Z F`
    right
    exact ⟨Y, Z, Or.inl ⟨rfl, rfl⟩, cvx Y Z s1 (by simp only [sarea] at sY ⊢; linarith)
      (by simp only [sarea] at sZ ⊢; linarith) (by simp only [sarea] at s2 ⊢; linarith)⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_COMPLETION:claim-normalization`). Transposition
`(x,y) ↦ (y,x)`, with the anchor parameters `(a,h,b,c,d,f) ↦ (b,c,a,h,f,d)`, preserves the entire
occupancy; hence each component theorem may impose its own normalization `f ≤ d` without
restricting Theorem 1. `docs/proof/nine/SIX_BOUNDARY_TWO_TOP_COMPLETION.md`, lines 56-58.
Uses: SIX_BOUNDARY_HULL:claim-transposition -/
theorem claim_normalization (a h b c d f : ℝ) (Y Z Q : Point) :
    TwoTopFamily a h b c d f Y Z Q ↔
      TwoTopFamily b c a h f d (transpose Y) (transpose Z) (transpose Q) := by
  have T := claim_transposition a h b c d f Y Z Q
  unfold TwoTopFamily
  rw [T.1, (claim_transposition a h b c d f Y Z Q).2.2.2.2.2.2.2.1,
    (claim_transposition a h b c d f Z Y Q).2.2.2.2.2.2.2.1,
    (claim_transposition a h b c d f Q Y Z).2.2.2.2.2.2.2.2.2.1]

/-- **Theorem 1** (`SIX_BOUNDARY_TWO_TOP_COMPLETION:Theorem1`). Every configuration of N6-06 (two
free points in the opposite cap `DF(1,1)`, one strictly inside the anchor hexagon) has minimum
ordinary triangle area at most `A₀`. Equality holds only at the configuration of `HAND_PROOF.md`
up to square symmetry and relabelling; in particular equality forces two additional
square-boundary contacts (one cap point on the right side `x = 1`, the other on the top side
`y = 1`). `docs/proof/nine/SIX_BOUNDARY_TWO_TOP_COMPLETION.md`, lines 15-54.
Uses: SIX_BOUNDARY_TWO_TOP_COMPLETION:claim-hull-dichotomy,
SIX_BOUNDARY_TWO_TOP_COMPLETION:claim-normalization, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:Theorem1,
SIX_BOUNDARY_TWO_TOP_CONVEX:Theorem -/
theorem theorem1 (hfam : TwoTopFamily a h b c d f Y Z Q) :
    minTriangleArea (nConfig a h b c d f Y Z Q) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f Y Z Q) →
        IsOptimal (nConfig a h b c d f Y Z Q) ∧
          ((Y.1 = 1 ∧ Z.2 = 1) ∨ (Z.1 = 1 ∧ Y.2 = 1))) := by
  by_cases h4 : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f Y Z Q)
  swap
  · push Not at h4
    have := A₀_bounds.2.1
    exact ⟨by linarith, fun h => absurd (h.trans_lt h4) (by linarith)⟩
  have hpos : 0 < minTriangleArea (nConfig a h b c d f Y Z Q) := by linarith
  have hswap : nConfig a h b c d f Z Y Q = nConfig a h b c d f Y Z Q ∘ Equiv.swap 6 7 := by
    funext i; fin_cases i <;> rfl
  have hm : minTriangleArea (nConfig a h b c d f Z Y Q) =
      minTriangleArea (nConfig a h b c d f Y Z Q) := by
    rw [hswap, minTriangleArea_comp_perm]
  have ho : IsOptimal (nConfig a h b c d f Z Y Q) ↔ IsOptimal (nConfig a h b c d f Y Z Q) := by
    rw [hswap]; exact SixBoundaryTwoTopConvex.isOptimal_comp_perm_iff' _ _
  obtain ⟨hN, hY, hZ, hQ⟩ := hfam
  rcases (claim_hull_dichotomy ⟨hN, hY, hZ, hQ⟩ hpos).2 with ⟨X, P, hXP, hin⟩ | ⟨E, G, hEG, hcv⟩
  · exfalso
    rcases hXP with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · have := (SixBoundaryTwoTopTriangular.theorem1 ⟨hN, hY, hZ, hin, hQ⟩).1
      linarith
    · have := (SixBoundaryTwoTopTriangular.theorem1 ⟨hN, hZ, hY, hin, hQ⟩).1
      rw [hm] at this
      linarith
  · rcases hEG with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · have k := SixBoundaryTwoTopConvex.mainTheorem ⟨hN, hY, hZ, hcv, hQ⟩
      exact ⟨k.1, fun hA => ⟨(k.2 hA).1, Or.inl ⟨(k.2 hA).2.1, (k.2 hA).2.2⟩⟩⟩
    · have k := SixBoundaryTwoTopConvex.mainTheorem ⟨hN, hZ, hY, hcv, hQ⟩
      rw [hm] at k
      exact ⟨k.1, fun hA => ⟨ho.1 (k.2 hA).1, Or.inr ⟨(k.2 hA).2.1, (k.2 hA).2.2⟩⟩⟩

end Heilbronn.Nine.SixBoundaryTwoTopCompletion
