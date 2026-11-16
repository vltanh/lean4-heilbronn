module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.SevenBoundary.Setting
public import Heilbronn.Nine.SevenBoundary.Interior.Main
public import Heilbronn.Nine.SevenBoundary.ExteriorCompletion

/-! # The seven-boundary theorem

`minTriangleArea_le_A₀` is the complete normalized seven-boundary theorem; `minTriangleArea_nConfig_lt_A₀` applies it to the
family `N` (`nConfig`) with exactly seven boundary contacts.

**Setting.** The seven anchors `A = (0,a)`, `H = (0,h)`, `B = (b,0)`, `C = (c,0)`, `D = (1,d)`,
`E = (1,e)`, `F = (f,1)` in the open-side normal form `SevenNormal a h b c d e f`
(`0 < a < h < 1`, `0 < b < c < 1`, `0 < d < e < 1`, `b ≤ f ≤ c`, `f ≤ 1/2`); free points `P, Q`
anywhere in the unit square.

**The proof.** If some triangle has area below `7/128 < A₀` there is nothing to prove. Otherwise:
* both free points strictly inside the anchor heptagon is impossible (`minTriangleArea_lt_of_inHeptagon`): a
  certificate cover over the pairs of ray words of the two points
  (`Heilbronn.Nine.SevenInterior.interior_false`), found by linear programming, together with the
  cap exclusions of `SevenBoundaryCaps`;
* otherwise exactly one free point lies beyond `EF` in the far upper cap and the other inside the
  heptagon (`SevenBoundaryCaps.farCapPoint_of_not_both_inHeptagon`, which uses the lower exterior-cap
  exclusions of `GlobalCompletion.minTriangleArea_lt_of_lowerCap`), and `SevenBoundaryExteriorCompletion.minTriangleArea_le_A₀_exterior` gives
  the bound `A₀`, with equality only for the known configuration and only when the cap point is
  on the top side.

**Definitions.** `OnSideNotCorner`, `ExactlySevenContacts` (with `InOpenSquare` of `Heilbronn/Common/Basic.lean`).

## Main results

* `minTriangleArea_lt_of_inHeptagon`: two free points inside the heptagon give an area `< 7/128`;
* `minTriangleArea_le_A₀`: in the open-side normal form the least area is at most `A₀`; equality only for the
  known optimal configuration; strict inequality when both free points are interior to the
  square;
* `minTriangleArea_nConfig_lt_A₀`: a configuration of family `N` with exactly seven boundary contacts and no
  corner has least area `< A₀` (after a rotation, the projection condition and a reflection).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundaryMixedAboveCompletion

open SevenBoundary

/-! ### Definitions -/

/-- `X` lies on a side of the unit square but is not one of its corners. -/
def OnSideNotCorner (X : Point) : Prop :=
  X ∈ unitSquare ∧ (X.1 = 0 ∨ X.1 = 1 ∨ X.2 = 0 ∨ X.2 = 1) ∧
    ¬ ((X.1 = 0 ∨ X.1 = 1) ∧ (X.2 = 0 ∨ X.2 = 1))

/-- The configuration `nConfig a h b c d f X Y Z` of family `N` has exactly seven boundary
contacts and none at a corner: its six anchors and exactly one of the free points lie on the
boundary of the square, that free point not at a corner, and the other two free points lie in the
open square. -/
def ExactlySevenContacts (X Y Z : Point) : Prop :=
  (OnSideNotCorner X ∧ InOpenSquare Y ∧ InOpenSquare Z) ∨
    (InOpenSquare X ∧ OnSideNotCorner Y ∧ InOpenSquare Z) ∨
    (InOpenSquare X ∧ InOpenSquare Y ∧ OnSideNotCorner Z)

variable {a h b c d e f : ℝ} {P Q : Point}

/-! ### The interior case -/

/-- In the open-side normal form, if both free points are strictly inside the anchor heptagon,
some triangle has area strictly below `7/128`, by the certificate cover
`Heilbronn.Nine.SevenInterior.interior_false`. -/
theorem minTriangleArea_lt_of_inHeptagon (hN : SevenNormal a h b c d e f) (hPs : P ∈ unitSquare)
    (hQs : Q ∈ unitSquare) (hP : InHeptagon a h b c d e f P) (hQ : InHeptagon a h b c d e f Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  by_contra hcon
  exact SevenInterior.interior_false ⟨hN, hPs, hQs, not_lt.1 hcon⟩ hP hQ

/-! ### The seven-boundary theorem -/

theorem sevenConfig_swap (a h b c d e f : ℝ) (P Q : Point) :
    sevenConfig a h b c d e f Q P = sevenConfig a h b c d e f P Q ∘ Equiv.swap 7 8 := by
  funext i; fin_cases i <;> rfl

theorem isOptimal_swap (hopt : IsOptimal (sevenConfig a h b c d e f Q P)) :
    IsOptimal (sevenConfig a h b c d e f P Q) := by
  obtain ⟨g, σ, hσ⟩ := hopt
  refine ⟨g, σ.trans (Equiv.swap 7 8), fun i => ?_⟩
  have := hσ i
  rw [sevenConfig_swap] at this
  simpa using this

/-- The exterior case with the cap point first. -/
theorem exterior_bound (hN : SevenNormal a h b c d e f) (hX : FarCapPoint e f P)
    (hQ : InHeptagon a h b c d e f Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) ≤ A₀ ∧
      (minTriangleArea (sevenConfig a h b c d e f P Q) = A₀ →
        IsOptimal (sevenConfig a h b c d e f P Q)) ∧
      (InOpenSquare P → minTriangleArea (sevenConfig a h b c d e f P Q) < A₀) := by
  obtain ⟨g, k⟩ := P
  obtain ⟨h1, h2, -⟩ := SevenBoundaryExteriorCompletion.minTriangleArea_le_A₀_exterior hN hX hQ
  refine ⟨h1, fun he => (h2 he).2, fun ho => lt_of_le_of_ne h1 fun he => ?_⟩
  have := (h2 he).1
  exact absurd ho.2.2.2 (by simp [this])

/-- In the open-side seven-boundary form (`0 < a < h < 1`, `0 < b < c < 1`, `0 < d < e < 1`,
`b ≤ f ≤ c`, `f ≤ 1/2`), with the other two points anywhere in the unit square, the nine-point
minimum triangle area is at most `A₀ = (9√65 - 55)/320`. If equality holds, the configuration is
the known optimal (eight-boundary) configuration, up to square symmetry and relabeling. In
particular a configuration with exactly seven square-boundary points (both free points in the
open square) cannot attain equality. -/
theorem minTriangleArea_le_A₀ (hN : SevenNormal a h b c d e f) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare) :
    minTriangleArea (sevenConfig a h b c d e f P Q) ≤ A₀ ∧
      (minTriangleArea (sevenConfig a h b c d e f P Q) = A₀ →
        IsOptimal (sevenConfig a h b c d e f P Q)) ∧
      (InOpenSquare P → InOpenSquare Q → minTriangleArea (sevenConfig a h b c d e f P Q) < A₀) := by
  have hA := A₀_bounds.1
  by_cases hm : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)
  swap
  · push Not at hm
    exact ⟨by linarith, fun he => by linarith, fun _ _ => by linarith⟩
  by_cases hin : InHeptagon a h b c d e f P ∧ InHeptagon a h b c d e f Q
  · exact absurd hm (not_le.2 (minTriangleArea_lt_of_inHeptagon hN hP hQ hin.1 hin.2))
  rcases SevenBoundaryCaps.farCapPoint_of_not_both_inHeptagon hN hP hQ hm hin with ⟨hX, hQi⟩ | ⟨hX, hPi⟩
  · obtain ⟨h1, h2, h3⟩ := exterior_bound hN hX hQi
    exact ⟨h1, h2, fun ho _ => h3 ho⟩
  · have e : minTriangleArea (sevenConfig a h b c d e f P Q) =
        minTriangleArea (sevenConfig a h b c d e f Q P) := by
      rw [sevenConfig_swap, minTriangleArea_comp_perm]
    obtain ⟨h1, h2, h3⟩ := exterior_bound hN hX hPi
    rw [e]
    exact ⟨h1, fun he => isOptimal_swap (h2 he), fun _ ho => h3 ho⟩

/-! ### The application to family `N` -/

/-- A configuration whose image under a symmetry of the square contains, as a sub-configuration,
an open-side seven-boundary configuration with both free points in the open square has least
area below `A₀`. -/
theorem lt_of_seven {R : Fin 9 → Point} (g : SquareSymmetry) (σ : Fin 9 → Fin 9)
    (hσ : Function.Injective σ) {a' h' b' c' d' e' f' : ℝ} {U V : Point}
    (hN : SevenNormal a' h' b' c' d' e' f') (hU : InOpenSquare U) (hV : InOpenSquare V)
    (hR : sevenConfig a' h' b' c' d' e' f' U V = g.apply ∘ R ∘ σ) :
    minTriangleArea R < A₀ := by
  have := (minTriangleArea_le_A₀ hN hU.mem hV.mem).2.2 hU hV
  rw [hR] at this
  rw [← g.minTriangleArea_comp R]
  exact (le_min_comp (by norm_num) (g.apply ∘ R) hσ).trans_lt this

/-- Three collinear points give a zero area triangle. -/
theorem lt_of_zero {R : Fin 9 → Point} {i j k : Fin 9} (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k)
    (h0 : sarea (R i) (R j) (R k) = 0) : minTriangleArea R < A₀ := by
  have := minTriangleArea_le R hij hjk hik
  rw [triangleArea_eq, h0, abs_zero, zero_div] at this
  linarith [A₀_pos]

/-- The core of `minTriangleArea_nConfig_lt_A₀`: the boundary free point `W` first. -/
theorem nConfig_core {h b c d f : ℝ} {W U V : Point} (hN : NAnchors a h b c d f)
    (hW : OnSideNotCorner W) (hU : InOpenSquare U) (hV : InOpenSquare V) :
    minTriangleArea (nConfig a h b c d f W U V) < A₀ := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨w, z⟩ := W
  obtain ⟨⟨w0, w1, z0, z1⟩, hside, hcorner⟩ := hW
  simp only at w0 w1 z0 z1 hside hcorner
  rcases hside with hw | hw | hz | hz
  · -- left side: `A, H, W` collinear
    subst hw
    exact lt_of_zero (i := 0) (j := 1) (k := 6) (by decide) (by decide) (by decide)
      (by simp [nConfig, sarea])
  · -- right side: two right contacts `D, W`, the top singleton `F`
    subst hw
    have hz0 : 0 < z := lt_of_le_of_ne z0 fun h0 => hcorner ⟨Or.inr rfl, Or.inl h0.symm⟩
    have hz1 : z < 1 := lt_of_le_of_ne z1 fun h1 => hcorner ⟨Or.inr rfl, Or.inr h1⟩
    rcases lt_trichotomy d z with hdz | rfl | hzd
    · rcases le_or_gt f (1 / 2) with hf | hf
      · exact lt_of_seven ⟨false, false, false⟩ ![0, 1, 2, 3, 4, 6, 5, 7, 8] (by decide)
          (a' := a) (h' := h) (b' := b) (c' := c) (d' := d) (e' := z) (f' := f) (U := U) (V := V)
          ⟨⟨ha, hah, hh, hb, hbc, hc, by linarith, hdz, hz1, hbf, hfc⟩, hf⟩ hU hV
          (by funext i; fin_cases i <;> simp [nConfig, sevenConfig, SquareSymmetry.apply])
      · exact lt_of_seven ⟨false, true, false⟩ ![4, 6, 3, 2, 0, 1, 5, 7, 8] (by decide)
          (a' := d) (h' := z) (b' := 1 - c) (c' := 1 - b) (d' := a) (e' := h) (f' := 1 - f)
          (U := (⟨false, true, false⟩ : SquareSymmetry).apply U)
          (V := (⟨false, true, false⟩ : SquareSymmetry).apply V)
          ⟨⟨by linarith, hdz, hz1, by linarith, by linarith, by linarith, ha, hah, hh,
            by linarith, by linarith⟩, by linarith⟩ (hU.apply _) (hV.apply _)
          (by funext i; fin_cases i <;> simp [nConfig, sevenConfig, SquareSymmetry.apply])
    · exact lt_of_zero (i := 4) (j := 6) (k := 0) (by decide) (by decide) (by decide)
        (by simp [nConfig, sarea])
    · rcases le_or_gt f (1 / 2) with hf | hf
      · exact lt_of_seven ⟨false, false, false⟩ ![0, 1, 2, 3, 6, 4, 5, 7, 8] (by decide)
          (a' := a) (h' := h) (b' := b) (c' := c) (d' := z) (e' := d) (f' := f) (U := U) (V := V)
          ⟨⟨ha, hah, hh, hb, hbc, hc, hz0, hzd, by linarith, hbf, hfc⟩, hf⟩ hU hV
          (by funext i; fin_cases i <;> simp [nConfig, sevenConfig, SquareSymmetry.apply])
      · exact lt_of_seven ⟨false, true, false⟩ ![6, 4, 3, 2, 0, 1, 5, 7, 8] (by decide)
          (a' := z) (h' := d) (b' := 1 - c) (c' := 1 - b) (d' := a) (e' := h) (f' := 1 - f)
          (U := (⟨false, true, false⟩ : SquareSymmetry).apply U)
          (V := (⟨false, true, false⟩ : SquareSymmetry).apply V)
          ⟨⟨hz0, hzd, by linarith, by linarith, by linarith, by linarith, ha, hah, hh,
            by linarith, by linarith⟩, by linarith⟩ (hU.apply _) (hV.apply _)
          (by funext i; fin_cases i <;> simp [nConfig, sevenConfig, SquareSymmetry.apply])
  · -- bottom side: `B, C, W` collinear
    subst hz
    exact lt_of_zero (i := 2) (j := 3) (k := 6) (by decide) (by decide) (by decide)
      (by simp [nConfig, sarea])
  · -- top side: two top contacts `F, W`, the right singleton `D`
    subst hz
    have hw0 : 0 < w := lt_of_le_of_ne w0 fun h0 => hcorner ⟨Or.inl h0.symm, Or.inr rfl⟩
    have hw1 : w < 1 := lt_of_le_of_ne w1 fun h1 => hcorner ⟨Or.inr h1, Or.inr rfl⟩
    rcases lt_trichotomy f w with hfw | rfl | hwf
    · rcases le_or_gt (1 / 2) d with hd | hd
      · -- the rotation `(x, y) ↦ (1 - y, x)`
        exact lt_of_seven ⟨true, true, false⟩ ![5, 6, 1, 0, 2, 3, 4, 7, 8] (by decide)
          (a' := f) (h' := w) (b' := 1 - h) (c' := 1 - a) (d' := b) (e' := c) (f' := 1 - d)
          (U := (⟨true, true, false⟩ : SquareSymmetry).apply U)
          (V := (⟨true, true, false⟩ : SquareSymmetry).apply V)
          ⟨⟨by linarith, hfw, hw1, by linarith, by linarith, by linarith, hb, hbc, hc,
            by linarith, by linarith⟩, by linarith⟩ (hU.apply _) (hV.apply _)
          (by funext i; fin_cases i <;> simp [nConfig, sevenConfig, SquareSymmetry.apply])
      · -- the transposition `(x, y) ↦ (y, x)`
        exact lt_of_seven ⟨true, false, false⟩ ![2, 3, 0, 1, 5, 6, 4, 7, 8] (by decide)
          (a' := b) (h' := c) (b' := a) (c' := h) (d' := f) (e' := w) (f' := d)
          (U := (⟨true, false, false⟩ : SquareSymmetry).apply U)
          (V := (⟨true, false, false⟩ : SquareSymmetry).apply V)
          ⟨⟨hb, hbc, hc, ha, hah, hh, by linarith, hfw, hw1, had, hdh⟩, hd.le⟩
          (hU.apply _) (hV.apply _)
          (by funext i; fin_cases i <;> simp [nConfig, sevenConfig, SquareSymmetry.apply])
    · exact lt_of_zero (i := 5) (j := 6) (k := 0) (by decide) (by decide) (by decide)
        (by simp [nConfig, sarea])
    · rcases le_or_gt (1 / 2) d with hd | hd
      · exact lt_of_seven ⟨true, true, false⟩ ![6, 5, 1, 0, 2, 3, 4, 7, 8] (by decide)
          (a' := w) (h' := f) (b' := 1 - h) (c' := 1 - a) (d' := b) (e' := c) (f' := 1 - d)
          (U := (⟨true, true, false⟩ : SquareSymmetry).apply U)
          (V := (⟨true, true, false⟩ : SquareSymmetry).apply V)
          ⟨⟨hw0, hwf, by linarith, by linarith, by linarith, by linarith, hb, hbc, hc,
            by linarith, by linarith⟩, by linarith⟩ (hU.apply _) (hV.apply _)
          (by funext i; fin_cases i <;> simp [nConfig, sevenConfig, SquareSymmetry.apply])
      · exact lt_of_seven ⟨true, false, false⟩ ![2, 3, 0, 1, 6, 5, 4, 7, 8] (by decide)
          (a' := b) (h' := c) (b' := a) (c' := h) (d' := w) (e' := f) (f' := d)
          (U := (⟨true, false, false⟩ : SquareSymmetry).apply U)
          (V := (⟨true, false, false⟩ : SquareSymmetry).apply V)
          ⟨⟨hb, hbc, hc, ha, hah, hh, hw0, hwf, by linarith, had, hdh⟩, hd.le⟩
          (hU.apply _) (hV.apply _)
          (by funext i; fin_cases i <;> simp [nConfig, sevenConfig, SquareSymmetry.apply])

/-- A configuration of family `N` with exactly seven boundary contacts and no corner has least
area strictly below `A₀`: a seventh contact on the left or bottom side gives a zero triangle;
after rotating the singleton side to the top (a seventh contact on the top side), the projection
condition puts its contact between the two bottom contacts, a horizontal reflection gives
`f ≤ 1/2`, and `minTriangleArea_le_A₀` applies with both remaining free points interior. -/
theorem minTriangleArea_nConfig_lt_A₀ {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (h7 : ExactlySevenContacts X Y Z) :
    minTriangleArea (nConfig a h b c d f X Y Z) < A₀ := by
  rcases h7 with ⟨hX, hY, hZ⟩ | ⟨hX, hY, hZ⟩ | ⟨hX, hY, hZ⟩
  · exact nConfig_core hN hX hY hZ
  · have e : nConfig a h b c d f Y X Z = nConfig a h b c d f X Y Z ∘ Equiv.swap 6 7 := by
      funext i; fin_cases i <;> rfl
    have := nConfig_core hN hY hX hZ
    rwa [e, minTriangleArea_comp_perm] at this
  · have e : nConfig a h b c d f Z X Y =
        nConfig a h b c d f X Y Z ∘
          ((Equiv.swap (6 : Fin 9) 8 * Equiv.swap 7 8 : Equiv.Perm (Fin 9))) := by
      funext i; fin_cases i <;> rfl
    have := nConfig_core hN hZ hX hY
    rwa [e, minTriangleArea_comp_perm] at this

end Heilbronn.Nine.SevenBoundaryMixedAboveCompletion
