module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.TopCapRight

/-! # All sharp radial orientations of the seven-boundary exterior case (`hand/SEVEN_BOUNDARY_TOP_CAP_RADIAL.md`)

**Role.** Primary-route component of `SEVEN_BOUNDARY_EXTERIOR_COMPLETION:Theorem1` (lines 30–31,
296–305): the 36-word cover of `RADIAL_CATALOGUE.md` for the exterior octagon, and the sharp
bound with its equality case for the four words of class R3.

**Setting.** `SevenNormal a h b c d e f`, the far-cap point `X = (g,k)` (`FarCapPoint e f (g, k)`),
the companion point `P` inside the heptagon. At minimum area at least `7/128` the preceding notes
give `k > h` (`SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h`), the convex hull octagon
`V₀, …, V₇ = A, B, C, D, E, X, F, H` (`exteriorOctagon a h b c d e f (g, k)`, (1)), and exclude
`P` from its four side quadrilaterals `ABCD, CDEX, EXFH, FHAB` (2). The radial word `r` of `P`
is that of `RadialCatalogue` with respect to this octagon.

**Results.**
* `claim_octagon_cover` (§1): the radial word of `P` is well defined and is one of the 36 words
  of the catalogue (the eight classes and the action (6) are those of `RADIAL_CATALOGUE.md`);
* `theorem1`: every exterior configuration whose radial word is in R3 has minimum area at most
  `A₀`; equality forces `k = 1` and the construction; the word `(3,4,5,4,4,3,3,2)` gives `< 7/128`.

The four transformations of §2 (sending each R3 word to the representative `(3,2,3,4,5,4,4,3)`):
identity (`F' = X`, `GLOBAL_COMPLETION` §5, F-moving chamber); `(x,y) ↦ (1-x,y)` with labels
`V_{3-i}` (`G' = (1-g,k)`, `SHARP_G_MOVING_PROJECTION`, strict); `(x,y) ↦ (x,1-y)` with labels
`V_{7-i}` (`C' = (g,1-k)`, `SHARP_BC_MOVING` Theorem 2); the half-turn with labels `V_{i+4}`
(`B' = (1-g,1-k)`, `SHARP_BC_MOVING` Theorem 3). They are internal to the proof of `theorem1` and
rely on chamber statements of other groups; they are not stated separately here.

Naming note: this note calls `(x,y) ↦ (1-x,y)` the "vertical reflection" and `(x,y) ↦ (x,1-y)`
the "horizontal reflection"; `SEVEN_BOUNDARY_CAPS.md` calls `x ↦ 1-x` "horizontal". Explicit maps
are used above.

Implicit in the manuscript: §1 is stated under "minimum area at least `A₀`" (line 12); its inputs
(`SEVEN_BOUNDARY_TOP_CAP` Theorems 1–3, `SEVEN_BOUNDARY_TOP_CAP_RIGHT:Theorem`) hold at `7/128`,
and `SEVEN_BOUNDARY_EXTERIOR_COMPLETION` uses the cover at that threshold, so
`claim_octagon_cover` is stated at minimum area at least `7/128`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryTopCapRadial

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
  fin_cases i <;> fin_cases j <;> (try simp at hij) <;> fin_cases l <;> (try simp at hjl) <;>
    (try simp at hij)
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

/-- **Claim** (`SEVEN_BOUNDARY_TOP_CAP_RADIAL:claim-octagon-cover`). In the exterior case at
minimum area at least `7/128`: the octagon `A, B, C, D, E, X, F, H` is strictly convex, `P` is
strictly inside it, no rays from `P` are degenerate, `P` is outside the four closed side
quadrilaterals `ABCD, CDEX, EXFH, FHAB`, and the radial word of `P` satisfies (1) and belongs to
the 36-word catalogue.
`hand/SEVEN_BOUNDARY_TOP_CAP_RADIAL.md`, lines 19–34, 45–69.
Uses: SEVEN_BOUNDARY_TOP_CAP:Theorem1, SEVEN_BOUNDARY_TOP_CAP:Theorem2,
SEVEN_BOUNDARY_TOP_CAP:Theorem3, SEVEN_BOUNDARY_TOP_CAP_RIGHT:Theorem,
SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h, RADIAL_CATALOGUE:claim-encoding,
RADIAL_CATALOGUE:claim-ear-bounds, RADIAL_CATALOGUE:claim-side-quad-bounds,
RADIAL_CATALOGUE:claim-six-blocks, RADIAL_CATALOGUE:claim-36-cover. -/
theorem claim_octagon_cover {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
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
  have hkh := SevenBoundaryTopCapRight.claim_k_gt_h hN hX hmin₁
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
    · have := SevenBoundaryTopCap.theorem2 hN hX hP hq; linarith
    · have := (SevenBoundaryTopCapRight.mainTheorem hN hX).2 P hP hq; linarith
    · have := SevenBoundaryTopCap.theorem1 hN hX hP (inClosedPolygon_rot4 hq); linarith
    · have := SevenBoundaryTopCap.theorem3 hN hX hP hq; linarith
  obtain ⟨hk, hc⟩ := claim_encoding _ P hV hO hnd
  refine ⟨hV, hO, hnd, hq, hk, claim_36_cover _ ⟨hc, ?_, ?_⟩⟩
  · exact claim_ear_bounds _ P hV hO hnd hq hk
  · exact claim_side_quad_bounds _ P hV hO hnd hq hk

/-- **Theorem 1** (`SEVEN_BOUNDARY_TOP_CAP_RADIAL:Theorem1`). Every configuration of the exterior
case whose radial word (with respect to `A, B, C, D, E, X, F, H`) belongs to class R3 has minimum
area at most `A₀`; equality forces `k = 1` and the known eight-boundary construction up to square
symmetry and relabelling; and for the R3 word `(3,4,5,4,4,3,3,2)` the minimum area is strictly
below `7/128`.
`hand/SEVEN_BOUNDARY_TOP_CAP_RADIAL.md`, lines 36–147.
Uses: SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h, RADIAL_CATALOGUE:claim-symmetry-action,
RADIAL_CATALOGUE:claim-R3-chamber, GLOBAL_COMPLETION:Theorem3,
SHARP_G_MOVING_PROJECTION:Theorem1, SHARP_BC_MOVING:Theorem2, SHARP_BC_MOVING:Theorem3. -/
theorem theorem1 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P) {w : Word}
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w) (hc : InClass .R3 w) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) ≤ A₀ ∧
      (minTriangleArea (sevenConfig a h b c d e f (g, k) P) = A₀ →
        k = 1 ∧ IsOptimal (sevenConfig a h b c d e f (g, k) P)) ∧
      (w = ![3, 4, 5, 4, 4, 3, 3, 2] →
        minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128) := by
  sorry

end Heilbronn.SevenBoundaryTopCapRadial
