module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.SevenBoundary.TopCapRight
public import Heilbronn.Nine.Global.GlobalCompletion
public import Heilbronn.Nine.Sharp.GMovingProjection

/-! # All sharp radial orientations of the seven-boundary exterior case

The exterior case: `SevenNormal a h b c d e f`, the far-cap point `X = (g,k)`
(`FarCapPoint e f (g, k)`) and the companion point `P` inside the heptagon. At minimum area at
least `7/128`, the results of `SevenBoundaryTopCap` and `SevenBoundaryTopCapRight` give `k > h`,
the convex hull octagon `V₀, …, V₇ = A, B, C, D, E, X, F, H`
(`exteriorOctagon a h b c d e f (g, k)`), and exclude `P` from its four side quadrilaterals
`ABCD, CDEX, EXFH, FHAB`. The radial word of `P` is that of `RadialCatalogue` with respect to this
octagon.

## Main results

* `radialWord_mem_catalogue`: the radial word of `P` is well defined and is one of the 36 words of
  `RadialCatalogue.catalogue`;
* `minTriangleArea_le_A₀_of_inClass_R3`: every exterior configuration whose radial word is in class `R3` has minimum area at
  most `A₀`; equality forces `k = 1` and the known configuration; the word `(3,4,5,4,4,3,3,2)`
  gives `< 7/128`.

## Implementation notes

Four transformations send the `R3` words to the representative `(3,2,3,4,5,4,4,3)`: the identity
(`F' = X`, the moving-`F` chamber of `GlobalCompletion.movingF_chamber_le`); `(x,y) ↦ (1-x,y)` with labels
`V_{3-i}` (`G' = (1-g,k)`, `SharpGMovingProjection.gMoving_chamber_lt`, strict); `(x,y) ↦ (x,1-y)` with
labels `V_{7-i}` (`C' = (g,1-k)`, `SharpBCMoving.cMoving_chamber_le`); the half-turn with labels `V_{i+4}`
(`B' = (1-g,1-k)`, `SharpBCMoving.bMoving_chamber_le`). They are the lemmas `r3_row1`, …, `r3_row4`: each
writes the sharp chamber configuration as `φ ∘ sevenConfig ∘ σ` (`transfer_chamber`: same least
area, and the construction pulls back to `IsOptimal`), checks the eleven chamber signs from the
convexity of the octagon and the radial word, and applies the chamber theorem.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundaryTopCapRadial

open SevenBoundary RadialCatalogue

/-! ### The convex exterior octagon -/

/-- The positivity facts behind the convexity of `A, B, C, D, E, X, F, H`. -/
structure ConvHyp (a h b c d e f g k : ℝ) : Prop where
  pa : 0 < a
  phA : 0 < h - a
  ph1 : 0 < 1 - h
  pb : 0 < b
  pcb : 0 < c - b
  pc1 : 0 < 1 - c
  pd : 0 < d
  ped : 0 < e - d
  pe1 : 0 < 1 - e
  pfb : 0 ≤ f - b
  pcf : 0 ≤ c - f
  pgf : 0 < g - f
  pg1 : 0 < 1 - g
  pke : 0 < k - e
  pkh : 0 < k - h
  pk1 : 0 ≤ 1 - k
  pf2 : 0 ≤ 1 / 2 - f
  pFEX : 0 < (1 - f) * (k - 1) - (e - 1) * (g - f)

theorem convHyp {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) (hkh : h < k) : ConvHyp a h b c d e f g k := by
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX
  simp only [sarea] at hfg hg1 hek hk1 hFEX
  exact ⟨ha, by linarith, by linarith, hb, by linarith, by linarith, hd, by linarith, by linarith,
    by linarith, by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith, hFEX⟩

section Convex
variable {a h b c d e f g k : ℝ}

theorem cvx_ABC (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (b, 0) (c, 0) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pcb]

theorem cvx_ABD (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (b, 0) (1, d) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pcb, mul_pos pa pc1, mul_pos pb pd]

theorem cvx_ABE (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (b, 0) (1, e) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pcb, mul_pos pa pc1, mul_pos pb pd, mul_pos pb ped]

theorem cvx_ABX (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (b, 0) (g, k) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pb, mul_nonneg pa.le pfb, mul_pos pa pgf, mul_pos phA pb, mul_pos pb pkh]

theorem cvx_ABF (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (b, 0) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pb.le, mul_nonneg pa.le pfb]

theorem cvx_ABH (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (b, 0) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos phA pb]

theorem cvx_ACD (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (c, 0) (1, d) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pc1, mul_pos pb pd, mul_pos pcb pd]

theorem cvx_ACE (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (c, 0) (1, e) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pc1, mul_pos pb pd, mul_pos pb ped, mul_pos pcb pd, mul_pos pcb ped]

theorem cvx_ACX (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (c, 0) (g, k) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pb, mul_nonneg pa.le pfb, mul_pos pa pgf, mul_pos phA pb, mul_pos phA pcb, mul_pos pb pkh, mul_pos pcb pkh]

theorem cvx_ACF (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (c, 0) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pb.le, mul_nonneg pa.le pfb, mul_pos phA pcb, mul_pos ph1 pcb]

theorem cvx_ACH (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (c, 0) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos phA pb, mul_pos phA pcb]

theorem cvx_ADE (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (1, d) (1, e) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [ped.le]

theorem cvx_ADX (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (1, d) (g, k) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pFEX.le, mul_pos phA pg1, mul_pos ph1 pg1, mul_pos pb ped, mul_pos pb pke, mul_nonneg ped.le pfb, mul_pos ped pgf, mul_nonneg pfb pke.le]

theorem cvx_ADF (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (1, d) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [phA.le, ph1.le, mul_nonneg phA.le pf2, mul_nonneg ph1.le pf2, mul_pos pb ped, mul_pos pb pe1, mul_nonneg ped.le pfb, mul_nonneg pe1.le pfb]

theorem cvx_ADH (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (1, d) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [phA.le]

theorem cvx_AEX (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (1, e) (g, k) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pFEX.le, mul_pos phA pg1, mul_pos ph1 pg1, mul_pos pb pke, mul_nonneg pfb pke.le]

theorem cvx_AEF (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (1, e) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [phA.le, ph1.le, mul_nonneg phA.le pf2, mul_nonneg ph1.le pf2, mul_pos pb pe1, mul_nonneg pe1.le pfb]

theorem cvx_AEH (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (1, e) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [phA.le]

theorem cvx_AXF (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (g, k) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos phA pgf, mul_pos ph1 pgf, mul_nonneg pb.le pk1, mul_nonneg pfb pk1]

theorem cvx_AXH (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (g, k) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos phA pb, mul_nonneg phA.le pfb, mul_pos phA pgf]

theorem cvx_AFH (H : ConvHyp a h b c d e f g k) : 0 < sarea (0, a) (f, 1) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos phA pb, mul_nonneg phA.le pfb]

theorem cvx_BCD (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (c, 0) (1, d) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pcb pd]

theorem cvx_BCE (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (c, 0) (1, e) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pcb pd, mul_pos pcb ped]

theorem cvx_BCX (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (c, 0) (g, k) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pcb, mul_pos phA pcb, mul_pos pcb pkh]

theorem cvx_BCF (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (c, 0) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pcb.le]

theorem cvx_BCH (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (c, 0) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pcb, mul_pos phA pcb]

theorem cvx_BDE (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (1, d) (1, e) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pcb ped, mul_pos pc1 ped]

theorem cvx_BDX (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (1, d) (g, k) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pg1.le, pFEX.le, mul_nonneg ped.le pfb, mul_pos ped pgf, mul_nonneg pfb pke.le]

theorem cvx_BDF (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (1, d) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pf2, mul_nonneg ped.le pfb, mul_nonneg pe1.le pfb]

theorem cvx_BDH (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (1, d) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pcb, mul_pos pa pc1, mul_pos phA pcb, mul_pos phA pc1, mul_pos pb pd]

theorem cvx_BEX (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (1, e) (g, k) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pg1.le, pFEX.le, mul_nonneg pfb pke.le]

theorem cvx_BEF (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (1, e) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pf2, mul_nonneg pe1.le pfb]

theorem cvx_BEH (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (1, e) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pcb, mul_pos pa pc1, mul_pos phA pcb, mul_pos phA pc1, mul_pos pb pd, mul_pos pb ped]

theorem cvx_BXF (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (g, k) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pgf.le, mul_nonneg pfb pk1]

theorem cvx_BXH (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (g, k) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pb, mul_nonneg pa.le pfb, mul_pos pa pgf, mul_pos phA pb, mul_nonneg phA.le pfb, mul_pos phA pgf, mul_pos pb pkh]

theorem cvx_BFH (H : ConvHyp a h b c d e f g k) : 0 < sarea (b, 0) (f, 1) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pb.le, mul_nonneg pa.le pfb, mul_nonneg phA.le pfb]

theorem cvx_CDE (H : ConvHyp a h b c d e f g k) : 0 < sarea (c, 0) (1, d) (1, e) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pc1 ped]

theorem cvx_CDX (H : ConvHyp a h b c d e f g k) : 0 < sarea (c, 0) (1, d) (g, k) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pc1 ped, mul_pos pc1 pke, mul_pos pd pg1]

theorem cvx_CDF (H : ConvHyp a h b c d e f g k) : 0 < sarea (c, 0) (1, d) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pc1.le, mul_nonneg pd.le pcf]

theorem cvx_CDH (H : ConvHyp a h b c d e f g k) : 0 < sarea (c, 0) (1, d) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pc1, mul_pos phA pc1, mul_pos pb pd, mul_pos pcb pd]

theorem cvx_CEX (H : ConvHyp a h b c d e f g k) : 0 < sarea (c, 0) (1, e) (g, k) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pc1 pke, mul_pos pd pg1, mul_pos ped pg1]

theorem cvx_CEF (H : ConvHyp a h b c d e f g k) : 0 < sarea (c, 0) (1, e) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pc1.le, mul_nonneg pd.le pcf, mul_nonneg ped.le pcf]

theorem cvx_CEH (H : ConvHyp a h b c d e f g k) : 0 < sarea (c, 0) (1, e) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pc1, mul_pos phA pc1, mul_pos pb pd, mul_pos pb ped, mul_pos pcb pd, mul_pos pcb ped]

theorem cvx_CXF (H : ConvHyp a h b c d e f g k) : 0 < sarea (c, 0) (g, k) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pFEX.le, mul_nonneg pc1.le pk1, mul_pos pd pgf, mul_pos ped pgf]

theorem cvx_CXH (H : ConvHyp a h b c d e f g k) : 0 < sarea (c, 0) (g, k) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos pa pb, mul_nonneg pa.le pfb, mul_pos pa pgf, mul_pos phA pb, mul_nonneg phA.le pfb, mul_pos phA pgf, mul_pos pb pkh, mul_pos pcb pkh]

theorem cvx_CFH (H : ConvHyp a h b c d e f g k) : 0 < sarea (c, 0) (f, 1) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pb.le, pfb, mul_nonneg ph1.le pcf]

theorem cvx_DEX (H : ConvHyp a h b c d e f g k) : 0 < sarea (1, d) (1, e) (g, k) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos ped pg1]

theorem cvx_DEF (H : ConvHyp a h b c d e f g k) : 0 < sarea (1, d) (1, e) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [ped.le, mul_nonneg ped.le pf2]

theorem cvx_DEH (H : ConvHyp a h b c d e f g k) : 0 < sarea (1, d) (1, e) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [ped.le]

theorem cvx_DXF (H : ConvHyp a h b c d e f g k) : 0 < sarea (1, d) (g, k) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pFEX.le, mul_pos ped pgf]

theorem cvx_DXH (H : ConvHyp a h b c d e f g k) : 0 < sarea (1, d) (g, k) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pFEX.le, mul_pos ph1 pg1, mul_pos pb ped, mul_pos pb pke, mul_nonneg ped.le pfb, mul_pos ped pgf, mul_nonneg pfb pke.le]

theorem cvx_DFH (H : ConvHyp a h b c d e f g k) : 0 < sarea (1, d) (f, 1) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [ph1.le, mul_nonneg ph1.le pf2, mul_pos pb ped, mul_pos pb pe1, mul_nonneg ped.le pfb, mul_nonneg pe1.le pfb]

theorem cvx_EXF (H : ConvHyp a h b c d e f g k) : 0 < sarea (1, e) (g, k) (f, 1) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pFEX.le]

theorem cvx_EXH (H : ConvHyp a h b c d e f g k) : 0 < sarea (1, e) (g, k) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [pFEX.le, mul_pos ph1 pg1, mul_pos pb pke, mul_nonneg pfb pke.le]

theorem cvx_EFH (H : ConvHyp a h b c d e f g k) : 0 < sarea (1, e) (f, 1) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [ph1.le, mul_nonneg ph1.le pf2, mul_pos pb pe1, mul_nonneg pe1.le pfb]

theorem cvx_XFH (H : ConvHyp a h b c d e f g k) : 0 < sarea (g, k) (f, 1) (0, h) := by
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  simp only [sarea]; nlinarith [mul_pos ph1 pgf, mul_nonneg pb.le pk1, mul_nonneg pfb pk1]

theorem exterior_convex (H : ConvHyp a h b c d e f g k) :
    IsConvexPolygon (exteriorOctagon a h b c d e f (g, k)) := by
  intro i j l hij hjl
  fin_cases i <;> fin_cases j <;> (try simp at hij) <;> fin_cases l <;> (try simp at hjl)
  exacts [cvx_ABC H, cvx_ABD H, cvx_ABE H, cvx_ABX H, cvx_ABF H, cvx_ABH H, cvx_ACD H, cvx_ACE H, cvx_ACX H, cvx_ACF H, cvx_ACH H, cvx_ADE H, cvx_ADX H, cvx_ADF H, cvx_ADH H, cvx_AEX H, cvx_AEF H, cvx_AEH H, cvx_AXF H, cvx_AXH H, cvx_AFH H, cvx_BCD H, cvx_BCE H, cvx_BCX H, cvx_BCF H, cvx_BCH H, cvx_BDE H, cvx_BDX H, cvx_BDF H, cvx_BDH H, cvx_BEX H, cvx_BEF H, cvx_BEH H, cvx_BXF H, cvx_BXH H, cvx_BFH H, cvx_CDE H, cvx_CDX H, cvx_CDF H, cvx_CDH H, cvx_CEX H, cvx_CEF H, cvx_CEH H, cvx_CXF H, cvx_CXH H, cvx_CFH H, cvx_DEX H, cvx_DEF H, cvx_DEH H, cvx_DXF H, cvx_DXH H, cvx_DFH H, cvx_EXF H, cvx_EXH H, cvx_EFH H, cvx_XFH H]

end Convex

/-- A closed quadrilateral is the same after rotating its labels. -/
theorem inClosedPolygon_rot4 {p₀ p₁ p₂ p₃ X : Point} (h : InClosedPolygon ![p₀, p₁, p₂, p₃] X) :
    InClosedPolygon ![p₃, p₀, p₁, p₂] X := by
  have h0 := h 0; have h1 := h 1; have h2 := h 2; have h3 := h 3
  simp [finRotate_apply] at h0 h1 h2 h3
  intro i
  fin_cases i <;> simpa [finRotate_apply]

/-- A point of the heptagon is strictly left of the two exterior edges `E → X` and `X → F`. -/
theorem heptagon_ext_edges {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) (hkh : h < k) {P : Point} (hP : InHeptagon a h b c d e f P) :
    0 < sarea (1, e) (g, k) P ∧ 0 < sarea (g, k) (f, 1) P := by
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX
  simp only at hfg hg1 hek hk1
  obtain ⟨hAB, hBC, hCD, hDE, hEF, hFH, hHA⟩ := hP
  have hDEF : 0 < sarea (1, d) (1, e) (f, 1) := by simp only [sarea]; nlinarith
  have hEFH : 0 < sarea (1, e) (f, 1) (0, h) := by simp only [sarea]; nlinarith
  have hEXD : 0 < sarea (1, e) (g, k) (1, d) := by simp only [sarea]; nlinarith
  have hEXF : 0 < sarea (1, e) (g, k) (f, 1) := by simp only [sarea] at hFEX ⊢; linarith
  have hXFE : 0 < sarea (g, k) (f, 1) (1, e) := by simp only [sarea] at hFEX ⊢; linarith
  have hXFH : 0 < sarea (g, k) (f, 1) (0, h) := by simp only [sarea]; nlinarith
  refine ⟨?_, ?_⟩
  · have b1 := SevenBoundaryTopCap.sarea_bary (1, d) (1, e) (f, 1) P (1, e) (g, k)
    rw [show sarea (1, e) (g, k) (1, e) = 0 by simp only [sarea]; ring] at b1
    by_contra hn; push Not at hn
    nlinarith [mul_pos hEF hEXD, mul_pos hDE hEXF, mul_nonpos_of_nonpos_of_nonneg hn hDEF.le]
  · have b1 := SevenBoundaryTopCap.sarea_bary (1, e) (f, 1) (0, h) P (g, k) (f, 1)
    rw [show sarea (g, k) (f, 1) (f, 1) = 0 by simp only [sarea]; ring] at b1
    by_contra hn; push Not at hn
    nlinarith [mul_pos hFH hXFE, mul_pos hEF hXFH, mul_nonpos_of_nonpos_of_nonneg hn hEFH.le]

/-- The octagon labels inside the nine-point configuration: `V i = sevenConfig (m i)`. -/
def octIdx : Fin 8 → Fin 9 := ![0, 2, 3, 4, 5, 7, 6, 1]

theorem exteriorOctagon_eq {a h b c d e f g k : ℝ} (P : Point) (i : Fin 8) :
    exteriorOctagon a h b c d e f (g, k) i = sevenConfig a h b c d e f (g, k) P (octIdx i) := by
  fin_cases i <;> rfl

/-- The rays from `P` to the octagon vertices are nondegenerate at positive least area. -/
theorem raysNondegenerate_of_min {a h b c d e f g k : ℝ} {P : Point}
    (hmin : 0 < minTriangleArea (sevenConfig a h b c d e f (g, k) P)) :
    RaysNondegenerate (exteriorOctagon a h b c d e f (g, k)) P := by
  intro i j hij
  rw [exteriorOctagon_eq P i, exteriorOctagon_eq P j]
  have hP : P = sevenConfig a h b c d e f (g, k) P 8 := rfl
  rw [hP]
  have hinj : Function.Injective octIdx := by decide
  have h8 : ∀ m : Fin 8, (8 : Fin 9) ≠ octIdx m := by decide
  exact sarea_ne_zero_of_min_pos hmin 8 (octIdx i) (octIdx j) (h8 i) (hinj.ne hij) (h8 j)

/-- In the exterior case at minimum area at least `7/128`: the octagon `A, B, C, D, E, X, F, H` is
strictly convex, `P` is strictly inside it, no rays from `P` are degenerate, `P` is outside the
four closed side quadrilaterals `ABCD, CDEX, EXFH, FHAB`, and the radial word of `P` satisfies
`IsRadialWord` and belongs to the 36-word catalogue. -/
theorem radialWord_mem_catalogue {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) P)) :
    IsConvexPolygon (exteriorOctagon a h b c d e f (g, k)) ∧
      InPolygon (exteriorOctagon a h b c d e f (g, k)) P ∧
      RaysNondegenerate (exteriorOctagon a h b c d e f (g, k)) P ∧
      OutsideSideQuads (exteriorOctagon a h b c d e f (g, k)) P ∧
      IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P
        (radialWord (exteriorOctagon a h b c d e f (g, k)) P) ∧
      radialWord (exteriorOctagon a h b c d e f (g, k)) P ∈ catalogue := by
  have hmin₁ := hmin.trans SevenBoundaryCaps.min₁_left
  have hkh := SevenBoundaryTopCapRight.h_lt_k hN hX hmin₁
  have hV := exterior_convex (convHyp hN hX hkh)
  obtain ⟨hEX, hXF⟩ := heptagon_ext_edges hN hX hkh hP
  have hP' := hP
  obtain ⟨hAB, hBC, hCD, hDE, hEF, hFH, hHA⟩ := hP'
  have hO : InPolygon (exteriorOctagon a h b c d e f (g, k)) P := by
    intro i
    fin_cases i <;> simp [exteriorOctagon, finRotate_apply] <;> assumption
  have hnd := raysNondegenerate_of_min (lt_of_lt_of_le (by norm_num) hmin)
  have hq : OutsideSideQuads (exteriorOctagon a h b c d e f (g, k)) P := by
    refine ⟨fun hq => ?_, fun hq => ?_, fun hq => ?_, fun hq => ?_⟩
    · have := SevenBoundaryTopCap.minTriangleArea_lt_of_mem_ABCD hN hX hP hq; linarith
    · have := (SevenBoundaryTopCapRight.minTriangleArea_lt_of_mem_CDEX hN hX).2 P hP hq; linarith
    · have := SevenBoundaryTopCap.minTriangleArea_lt_of_mem_HEXF hN hX hP (inClosedPolygon_rot4 hq); linarith
    · have := SevenBoundaryTopCap.minTriangleArea_lt_of_mem_FHAB hN hX hP hq; linarith
  obtain ⟨hk, hc⟩ := radialWord_spec _ P hV hO hnd
  refine ⟨hV, hO, hnd, hq, hk, mem_catalogue_of_admissible _ ⟨hc, ?_, ?_⟩⟩
  · exact earBounds_of_outsideSideQuads _ P hV hO hnd hq hk
  · exact sideQuadBounds_of_outsideSideQuads _ P hV hO hnd hq hk

/-! ### The four `R3` words and the sharp chambers -/

/-- The four words of class `R3` (the orbit of the representative). -/
theorem r3_words {w : Word} (hc : InClass .R3 w) :
    w = ![3, 2, 3, 4, 5, 4, 4, 3] ∨ w = ![3, 4, 5, 4, 4, 3, 3, 2] ∨
      w = ![4, 3, 3, 2, 3, 4, 5, 4] ∨ w = ![5, 4, 4, 3, 3, 2, 3, 4] := by
  obtain ⟨refl, r, rfl⟩ := hc
  revert refl r; decide

/-- A point strictly inside the anchor heptagon lies in the square. -/
theorem heptagon_mem_square {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P : Point}
    (hP : InHeptagon a h b c d e f P) : P ∈ unitSquare := by
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨x, y⟩ := P
  obtain ⟨hAB, hBC, hCD, hDE, hEF, hFH, hHA⟩ := hP
  simp only [sarea] at hAB hBC hCD hDE hEF hFH hHA
  have hx0 : 0 < x := by nlinarith
  have hy0 : 0 < y := by nlinarith
  have hx1 : x < 1 := by nlinarith
  refine ⟨hx0.le, hx1.le, hy0.le, ?_⟩
  by_contra hy; push Not at hy
  simp only at hy
  have h1 : x < f := by
    nlinarith [mul_pos (show (0 : ℝ) < 1 - f by linarith) (show (0 : ℝ) < y - 1 by linarith),
      mul_pos (show (0 : ℝ) < 1 - e by linarith) (show (0 : ℝ) < 1 - f by linarith)]
  nlinarith [mul_pos (show (0 : ℝ) < f by linarith) (show (0 : ℝ) < y - 1 by linarith),
    mul_pos (show (0 : ℝ) < 1 - h by linarith) (show (0 : ℝ) < f - x by linarith)]

/-- **Transfer.** If `T` is the image of `S` under a square symmetry `φ` (an involution) and a
relabelling `σ`, then `T` and `S` have the same least area, and `T = optimalConfiguration` makes
`S` optimal. -/
theorem transfer_chamber {S T : Fin 9 → Point} (φ : SquareSymmetry) (σ : Equiv.Perm (Fin 9))
    (hinv : ∀ p, φ.apply (φ.apply p) = p) (hT : T = φ.apply ∘ S ∘ σ) :
    minTriangleArea T = minTriangleArea S ∧ (T = optimalConfiguration → IsOptimal S) := by
  refine ⟨?_, fun hopt => ⟨φ, σ, fun i => ?_⟩⟩
  · rw [hT]
    exact (SquareSymmetry.minTriangleArea_comp φ (S ∘ σ)).trans (minTriangleArea_comp_perm S σ)
  · have := congrFun hT i
    rw [hopt] at this
    simp only [Function.comp_apply] at this
    rw [this, hinv]

/-- The relabellings, as `sevenConfig` indices, of the four transformations `r3_row1`, …,
`r3_row4`. -/
def r3Perm : Fin 4 → Equiv.Perm (Fin 9)
  | 0 => Equiv.ofBijective ![0, 2, 3, 4, 5, 7, 6, 1, 8] (by decide)
  | 1 => Equiv.ofBijective ![4, 3, 2, 0, 1, 6, 7, 5, 8] (by decide)
  | 2 => Equiv.ofBijective ![1, 6, 7, 5, 4, 3, 2, 0, 8] (by decide)
  | 3 => Equiv.ofBijective ![5, 7, 6, 1, 0, 2, 3, 4, 8] (by decide)

section R3
variable {a h b c d e f g k x y : ℝ}

/-- The common data of the `R3` rows at minimum area at least `7/128`. -/
structure R3Data (a h b c d e f g k x y : ℝ) : Prop where
  conv : ConvHyp a h b c d e f g k
  sq : ((x, y) : Point) ∈ unitSquare

/-- Row 1 (identity, `F' = X`): `GlobalCompletion.movingF_chamber_le`. -/
theorem r3_row1 (D : R3Data a h b c d e f g k x y)
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) (x, y) ![3, 2, 3, 4, 5, 4, 4, 3]) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y)) ≤ A₀ ∧
      (minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y)) = A₀ →
        k = 1 ∧ IsOptimal (sevenConfig a h b c d e f (g, k) (x, y))) := by
  have H := D.conv
  set S := sevenConfig a h b c d e f (g, k) (x, y) with hS
  set T := GlobalCompletion.movingFConfig a b c d e g f h k x y with hTdef
  have hT : T = (⟨false, false, false⟩ : SquareSymmetry).apply ∘ S ∘ r3Perm 0 := by
    funext i; fin_cases i <;> simp [hTdef, hS, GlobalCompletion.movingFConfig, sevenConfig,
      SquareSymmetry.apply, r3Perm]
  obtain ⟨hmT, hopt⟩ := transfer_chamber _ _ (fun p => by simp [SquareSymmetry.apply]) hT
  have f1 := cvx_ABH H; have f2 := cvx_ABC H; have f3 := cvx_AFH H; have f4 := cvx_DEX H
  have f5 := cvx_XFH H; have f6 := cvx_EXF H
  have w1 := hw.pos_of 0 3 (by decide) (by decide)
  have w2 := hw.pos_of 3 7 (by decide) (by decide)
  have w3 := hw.pos_of 4 1 (by decide) (by decide)
  have w4 := hw.pos_of 6 2 (by decide) (by decide)
  have w5 := hw.pos_of 2 5 (by decide) (by decide)
  simp only [exteriorOctagon, Matrix.cons_val] at w1 w2 w3 w4 w5
  simp only [sarea] at f1 f2 f3 f4 f5 f6 w1 w2 w3 w4 w5
  have hch : Chamber.InChamber T := by
    intro i
    fin_cases i <;>
      simp [hTdef, Chamber.chamberSarea, Chamber.chamberTriangles,
        GlobalCompletion.movingFConfig, sarea] <;>
      linarith
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  have hyp : GlobalCompletion.MovingFHyp a b c d e g f h k x y :=
    ⟨⟨pa, by linarith, by linarith, pb, by linarith, by linarith, pd, by linarith, by linarith,
      by linarith, by linarith, by linarith⟩, by linarith, by linarith, D.sq⟩
  obtain ⟨⟨i, hi⟩, heq⟩ := GlobalCompletion.movingF_chamber_le hyp hch
  have hle : ∀ j, minTriangleArea S ≤ Chamber.chamberArea T j := fun j =>
    hmT ▸ Chamber.minTriangleArea_le_chamberArea T j
  refine ⟨(hle i).trans hi, fun hm => ?_⟩
  obtain ⟨hk1, hTo⟩ := heq fun j => hm ▸ hle j
  exact ⟨hk1, hopt hTo⟩

/-- Row 2 (`(x,y) ↦ (1-x,y)`, labels `V_{3-i}`, `G' = (1-g,k)`):
`SharpGMovingProjection.gMoving_chamber_lt`, strictly below `7/128`. -/
theorem r3_row2 (D : R3Data a h b c d e f g k x y)
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) (x, y) ![3, 4, 5, 4, 4, 3, 3, 2]) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y)) < 7 / 128 := by
  have H := D.conv
  set S := sevenConfig a h b c d e f (g, k) (x, y) with hS
  set T := SharpGMovingProjection.gMovingConfig d (1 - c) (1 - b) a h (1 - f) (1 - g) e (1 - k)
    (1 - x) y with hTdef
  have hT : T = (⟨false, true, false⟩ : SquareSymmetry).apply ∘ S ∘ r3Perm 1 := by
    funext i; fin_cases i <;> simp [hTdef, hS, SharpGMovingProjection.gMovingConfig,
      SharpBCMoving.sharpConfig, sevenConfig, SquareSymmetry.apply, r3Perm]
  obtain ⟨hmT, -⟩ := transfer_chamber _ _ (fun p => by simp [SquareSymmetry.apply]) hT
  have f1 := cvx_CDE H; have f2 := cvx_BCD H; have f3 := cvx_DEX H; have f4 := cvx_AFH H
  have f5 := cvx_EXF H; have f6 := cvx_XFH H
  have w1 := hw.pos_of 0 3 (by decide) (by decide)
  have w2 := hw.pos_of 4 0 (by decide) (by decide)
  have w3 := hw.pos_of 2 7 (by decide) (by decide)
  have w4 := hw.pos_of 1 5 (by decide) (by decide)
  have w5 := hw.pos_of 6 1 (by decide) (by decide)
  simp only [exteriorOctagon, Matrix.cons_val] at w1 w2 w3 w4 w5
  simp only [sarea] at f1 f2 f3 f4 f5 f6 w1 w2 w3 w4 w5
  have hch : Chamber.InChamber T := by
    intro i
    fin_cases i <;>
      simp [hTdef, Chamber.chamberSarea, Chamber.chamberTriangles,
        SharpGMovingProjection.gMovingConfig, SharpBCMoving.sharpConfig, sarea] <;>
      linarith
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  obtain ⟨hx0, hx1, hy0, hy1⟩ := D.sq
  have hyp : SharpGMovingProjection.GMovingHyp d (1 - c) (1 - b) a h (1 - f) (1 - g) e (1 - k)
      (1 - x) y :=
    ⟨⟨pd, by linarith, by linarith, by linarith, by linarith, by linarith, pa, by linarith,
      by linarith, by linarith, by linarith, by linarith⟩, by linarith, by linarith,
      by linarith, by linarith, ⟨by simp only; linarith, by simp only; linarith, hy0, hy1⟩⟩
  obtain ⟨⟨i, hi⟩, -⟩ := SharpGMovingProjection.gMoving_chamber_lt hyp hch
  exact lt_of_le_of_lt (hmT ▸ Chamber.minTriangleArea_le_chamberArea T i) hi

/-- Row 3 (`(x,y) ↦ (x,1-y)`, labels `V_{7-i}`, `C' = (g,1-k)`): `SharpBCMoving.cMoving_chamber_le`. -/
theorem r3_row3 (D : R3Data a h b c d e f g k x y)
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) (x, y) ![4, 3, 3, 2, 3, 4, 5, 4]) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y)) ≤ A₀ ∧
      (minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y)) = A₀ →
        k = 1 ∧ IsOptimal (sevenConfig a h b c d e f (g, k) (x, y))) := by
  have H := D.conv
  set S := sevenConfig a h b c d e f (g, k) (x, y) with hS
  set T := SharpBCMoving.cMovingConfig (1 - h) f g (1 - e) (1 - d) c b (1 - a) (1 - k) x (1 - y)
    with hTdef
  have hT : T = (⟨false, false, true⟩ : SquareSymmetry).apply ∘ S ∘ r3Perm 2 := by
    funext i; fin_cases i <;> simp [hTdef, hS, SharpBCMoving.cMovingConfig,
      SharpBCMoving.sharpConfig, sevenConfig, SquareSymmetry.apply, r3Perm]
  obtain ⟨hmT, hopt⟩ := transfer_chamber _ _ (fun p => by simp [SquareSymmetry.apply]) hT
  have f1 := cvx_AFH H; have f2 := cvx_XFH H; have f3 := cvx_ABH H; have f4 := cvx_CDE H
  have f5 := cvx_ABC H; have f6 := cvx_BCD H
  have w1 := hw.pos_of 4 7 (by decide) (by decide)
  have w2 := hw.pos_of 0 4 (by decide) (by decide)
  have w3 := hw.pos_of 6 3 (by decide) (by decide)
  have w4 := hw.pos_of 5 1 (by decide) (by decide)
  have w5 := hw.pos_of 2 5 (by decide) (by decide)
  simp only [exteriorOctagon, Matrix.cons_val] at w1 w2 w3 w4 w5
  simp only [sarea] at f1 f2 f3 f4 f5 f6 w1 w2 w3 w4 w5
  have hch : Chamber.InChamber T := by
    intro i
    fin_cases i <;>
      simp [hTdef, Chamber.chamberSarea, Chamber.chamberTriangles,
        SharpBCMoving.cMovingConfig, SharpBCMoving.sharpConfig, sarea] <;>
      linarith
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  obtain ⟨hx0, hx1, hy0, hy1⟩ := D.sq
  have hyp : SharpBCMoving.CMovingHyp (1 - h) f g (1 - e) (1 - d) c b (1 - a) (1 - k) x (1 - y) :=
    ⟨⟨by linarith, by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
      by linarith, by linarith, pb, by linarith, by linarith⟩, by linarith, by linarith,
      ⟨hx0, hx1, by simp only; linarith, by simp only; linarith⟩⟩
  obtain ⟨⟨i, hi⟩, heq⟩ := SharpBCMoving.cMoving_chamber_le hyp hch
  have hle : ∀ j, minTriangleArea S ≤ Chamber.chamberArea T j := fun j =>
    hmT ▸ Chamber.minTriangleArea_le_chamberArea T j
  refine ⟨(hle i).trans hi, fun hm => ?_⟩
  obtain ⟨ht, hTo⟩ := heq fun j => hm ▸ hle j
  exact ⟨by linarith, hopt hTo⟩

/-- Row 4 (half-turn, labels `V_{i+4}`, `B' = (1-g,1-k)`): `SharpBCMoving.bMoving_chamber_le`. -/
theorem r3_row4 (D : R3Data a h b c d e f g k x y)
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) (x, y) ![5, 4, 4, 3, 3, 2, 3, 4]) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y)) ≤ A₀ ∧
      (minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y)) = A₀ →
        k = 1 ∧ IsOptimal (sevenConfig a h b c d e f (g, k) (x, y))) := by
  have H := D.conv
  set S := sevenConfig a h b c d e f (g, k) (x, y) with hS
  set T := SharpBCMoving.bMovingConfig (1 - e) (1 - g) (1 - f) (1 - h) (1 - a) (1 - b) (1 - c)
    (1 - d) (1 - k) (1 - x) (1 - y) with hTdef
  have hT : T = (⟨false, true, true⟩ : SquareSymmetry).apply ∘ S ∘ r3Perm 3 := by
    funext i; fin_cases i <;> simp [hTdef, hS, SharpBCMoving.bMovingConfig,
      SharpBCMoving.sharpConfig, sevenConfig, SquareSymmetry.apply, r3Perm]
  obtain ⟨hmT, hopt⟩ := transfer_chamber _ _ (fun p => by simp [SquareSymmetry.apply]) hT
  have f1 := cvx_DEX H; have f2 := cvx_EXF H; have f3 := cvx_CDE H; have f4 := cvx_ABH H
  have f5 := cvx_BCD H; have f6 := cvx_ABC H
  have w1 := hw.pos_of 4 7 (by decide) (by decide)
  have w2 := hw.pos_of 7 3 (by decide) (by decide)
  have w3 := hw.pos_of 0 5 (by decide) (by decide)
  have w4 := hw.pos_of 2 6 (by decide) (by decide)
  have w5 := hw.pos_of 6 1 (by decide) (by decide)
  simp only [exteriorOctagon, Matrix.cons_val] at w1 w2 w3 w4 w5
  simp only [sarea] at f1 f2 f3 f4 f5 f6 w1 w2 w3 w4 w5
  have hch : Chamber.InChamber T := by
    intro i
    fin_cases i <;>
      simp [hTdef, Chamber.chamberSarea, Chamber.chamberTriangles,
        SharpBCMoving.bMovingConfig, SharpBCMoving.sharpConfig, sarea] <;>
      linarith
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  obtain ⟨hx0, hx1, hy0, hy1⟩ := D.sq
  have hyp : SharpBCMoving.BMovingHyp (1 - e) (1 - g) (1 - f) (1 - h) (1 - a) (1 - b) (1 - c)
      (1 - d) (1 - k) (1 - x) (1 - y) :=
    ⟨⟨by linarith, by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
      by linarith, by linarith, by linarith, by linarith, by linarith⟩, by linarith, by linarith,
      ⟨by simp only; linarith, by simp only; linarith, by simp only; linarith,
        by simp only; linarith⟩⟩
  obtain ⟨⟨i, hi⟩, heq⟩ := SharpBCMoving.bMoving_chamber_le hyp hch
  have hle : ∀ j, minTriangleArea S ≤ Chamber.chamberArea T j := fun j =>
    hmT ▸ Chamber.minTriangleArea_le_chamberArea T j
  refine ⟨(hle i).trans hi, fun hm => ?_⟩
  obtain ⟨ht, hTo⟩ := heq fun j => hm ▸ hle j
  exact ⟨by linarith, hopt hTo⟩

end R3

/-- Every configuration of the exterior case whose radial word (with respect to
`A, B, C, D, E, X, F, H`) belongs to class `R3` has minimum area at most `A₀`; equality forces
`k = 1` and the known eight-boundary construction up to square symmetry and relabelling; and for
the `R3` word `(3,4,5,4,4,3,3,2)` the minimum area is strictly below `7/128`. -/
theorem minTriangleArea_le_A₀_of_inClass_R3 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P) {w : Word}
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w) (hc : InClass .R3 w) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) ≤ A₀ ∧
      (minTriangleArea (sevenConfig a h b c d e f (g, k) P) = A₀ →
        k = 1 ∧ IsOptimal (sevenConfig a h b c d e f (g, k) P)) ∧
      (w = ![3, 4, 5, 4, 4, 3, 3, 2] →
        minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128) := by
  obtain ⟨x, y⟩ := P
  -- at minimum area at least `7/128`: the data of the four rows
  have key : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y)) →
      (minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y)) ≤ A₀ ∧
        (minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y)) = A₀ →
          k = 1 ∧ IsOptimal (sevenConfig a h b c d e f (g, k) (x, y)))) ∧
      w ≠ ![3, 4, 5, 4, 4, 3, 3, 2] := by
    intro hmin
    have hkh := SevenBoundaryTopCapRight.h_lt_k hN hX (hmin.trans SevenBoundaryCaps.min₁_left)
    have D : R3Data a h b c d e f g k x y := ⟨convHyp hN hX hkh, heptagon_mem_square hN hP⟩
    rcases r3_words hc with rfl | rfl | rfl | rfl
    · exact ⟨r3_row1 D hw, by decide⟩
    · exact absurd hmin (not_le.2 (r3_row2 D hw))
    · exact ⟨r3_row3 D hw, by decide⟩
    · exact ⟨r3_row4 D hw, by decide⟩
  have hA := A₀_bounds.1
  refine ⟨?_, fun hm => (key (by rw [hm]; exact hA.le)).1.2 hm, fun hw2 => ?_⟩
  · by_contra hc'; push Not at hc'
    exact absurd (key (hA.le.trans hc'.le)).1.1 (not_le.2 hc')
  · by_contra hc'; push Not at hc'
    exact (key hc').2 hw2

end Heilbronn.Nine.SevenBoundaryTopCapRadial
