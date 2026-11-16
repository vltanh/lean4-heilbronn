module

public import Heilbronn.Six.SingleTop.Basic
public import Heilbronn.Six.SingleTop.Words
public import Heilbronn.Six.SingleTop.Trees
public import Heilbronn.Six.Hull
public import Heilbronn.Hulls.QuadrilateralHull
public import Heilbronn.Corners.OneCornerCompletion
public import Heilbronn.TypeII.TypeII.EndpointTriangle

/-! # One opposite-cap point and two anchor-interior points in N (`hand/SIX_BOUNDARY_SINGLE_TOP.md`)

**Role.** Primary route: closes the six-boundary occupancy N6-03 `(n_L,n_T,n_R;n_I) = (0,1,0;2)`
of `hand/UNRESTRICTED.md`, Section 4 (strict bound, no equality case).

**Setting.** The N anchors `A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d), F=(f,1)`
(`NAnchors`, (1)); one free point `X` in the opposite cap `T = DF(1,1)` (`InCapT`, square-side
positions allowed; the corner is virtual) and two free points `P, Q` strictly inside the anchor
hexagon `ABCDFH` (`InHexagon`). The configuration is `nConfig a h b c d f X P Q`. Transposition
preserves the occupancy, so the proof imposes `f ≤ d`; the claims that use it carry the
hypothesis `f ≤ d`. Contradiction hypothesis: every actual doubled area is at least `s = 8/73`,
written `4/73 ≤ minTriangleArea (nConfig a h b c d f X P Q)`; `ρ = 49/60 < (4+2√3)s`.
Notation: `L = h-a`, `M = c-b`, `W = [HCDF] = 1-(h-d)(c-f)`, `δ = (1-d)(1-f)`; the full hull is
the heptagon `(V₀,…,V₆) = (A,B,C,D,X,F,H)` (`heptagon`); "below HC" is `[HCR] < 0`.

**Results.**
* `theorem1`: `minTriangleArea < 4/73 < A₀` throughout the family.
* `claim_anchor_bounds` (4): `aM, bL ≥ s`, `h ≥ s/M + s/b`, `hc ≥ sc²/(bM) ≥ 4s`, `a, b > 1/8`,
  `h, c ≥ 4s`, `L, M ≥ s`.
* `eq5`, `claim_cap_bounds`: the two forms of `[DXF]`; `x_X-f, y_X-d ≥ s`, `δ ≥ s`, `d < 7/8`,
  `f < 67/100`.
* `eq6`, `claim_interior_box`: the projection identities; `s ≤ r_x, r_y ≤ 1-s` for `R ∈ {P,Q}`.
* `claim_ears` (7): the six ears have doubled area `< 13/16`, none contains both `P, Q`.
* `claim_one_below_HC`: at most one of `P, Q` is below `HC`.
* `claim_W` (8): `W ≥ 4s` (mixed class), `W ≥ 8s` (upper class).
* `claim_mixed` (9)–(10): bounds for the lower point of the mixed class.
* `claim_hull`: the heptagon is strictly convex with `P, Q` inside.
* `claim_words`: 57 heptagon words, 52 with `r₃ ≥ 2` (19 lower, 33 upper); `P, Q` have words in
  this list.
* `eq14`: the diagonal separation rule in `HCDF`.
* `claim_pair_cover`: the two upper-pair exclusions behind the 884 base pairs (no common
  diagonal sector; the isolated vertex of a one-diagonal separation).
* `claim_refinement`: every actual sign is nonzero (the basis of the 893 terminal cells).
* `claim_certificate`: the 616 fixed cubic certificates: with `f ≤ d` no pair of words is
  possible.

**Proof organization.** The geometric claims are proved for the structure `Conf`
(`Heilbronn.Six.SingleTop.Basic`), with the points indexed as in the certificate model
(`cfg`: `A, B, C, D, X, F, H, P, Q`). The finite part of the words is
`Heilbronn.Six.SingleTop.Words`. The certificate package is the cover of
`Heilbronn.Six.SingleTop.Model` (a computable mirror of `hand/check_six_boundary_single_top.py`),
whose 884 base pairs and 893 cells are checked by the kernel in `Heilbronn.Six.SingleTop.Trees*`
(97,730 terms; a reused record whose cost has a larger threshold on its target cell is rewritten
there with `q_ref = q_tgt + δ`, so the expansion is unchanged); here `Cell.false` proves the
soundness of the cover (`Cover.checkTree_sound`), and `claim_certificate` assembles it.

Implicit in the manuscript: the claims are stated under the contradiction hypothesis
`4/73 ≤ minTriangleArea` and, where used, the normalization `f ≤ d`; the hypothesis of
`ONE_CORNER_COMPLETION` Theorems 2–3 (minimum at least `(7/64)·area(HCDF)`) is not checked in the
text (lines 147-166) but follows from `4/73 > 7/128 ≥ 7W/128` (used so in `Conf.pair_cover`).
The "six-point quadrilateral theorem" of lines 103-105 is `QUADRILATERAL_HULL` Theorem 1
(`Conf.W_upper`). The hull-triangle signs that the text summarizes as "strictly convex heptagon"
are derived from the coordinates in `Conf.hull` (the anchor triangles directly, the triangles with
`X` through the cap combination `cap_nonneg`). The base-pair count "615 mixed + 269 upper"
(lines 170-171), not asserted by the checker, is checked here (`cases_mixed`, `cases_upper`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundarySingleTop

open Heilbronn.SixBoundary Cover Cert Cert.Expr

/-- The full hull (3): the heptagon `(V₀, …, V₆) = (A, B, C, D, X, F, H)`. -/
def heptagon (a h b c d f : ℝ) (X : Point) : Fin 7 → Point :=
  ![ptA a, ptB b, ptC c, ptD d, X, ptF f, ptH h]

/-- The occupancy N6-03: N anchors, `X` in the opposite cap `DF(1,1)`, `P, Q` strictly inside the
anchor hexagon. -/
def SingleTopFamily (a h b c d f : ℝ) (X P Q : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapT d f X ∧ InHexagon a h b c d f P ∧ InHexagon a h b c d f Q

/-- The 52 radial words of an interior point of the heptagon that lies inside the anchor
hexagon: the heptagon words (`radialWords 7`, 57 of them) with the extra edge test `DF`,
`r₃ ≥ 2`. -/
def hexagonWords : Finset (Fin 7 → Fin 7) :=
  (radialWords 7).filter fun r => 2 ≤ (r 3 : ℕ)

variable {a h b c d f : ℝ} {X P Q : Point}

theorem Conf.ofFam (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) : Conf a h b c d f X P Q :=
  ⟨hfam.1, hfam.2.1, hfam.2.2.1, hfam.2.2.2, hmin⟩

theorem heptagon_eq (i : Fin 7) : heptagon a h b c d f X i = cfg a h b c d f X P Q i := by
  fin_cases i <;> rfl

/-! ### Section 1: affine bounds and area costs -/

/-- (4) and the lines after it. -/
theorem Conf.anchor (H : Conf a h b c d f X P Q) :
    8 / 73 ≤ a * (c - b) ∧ 8 / 73 ≤ b * (h - a) ∧ 8 / 73 / (c - b) + 8 / 73 / b ≤ h ∧
      8 / 73 * c ^ 2 / (b * (c - b)) ≤ h * c ∧ 4 * (8 / 73) ≤ 8 / 73 * c ^ 2 / (b * (c - b)) ∧
      1 / 8 < b ∧ 1 / 8 < a ∧ 4 * (8 / 73) ≤ h ∧ 4 * (8 / 73) ≤ c ∧ 8 / 73 ≤ h - a ∧
      8 / 73 ≤ c - b := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  have e1 : 8 / 73 ≤ a * (c - b) := by
    have := H.ge 0 1 2 (hpos := (hex_ABC H.hN).le)
    simp only [cfg, sarea, ptA, ptB, ptC] at this; linarith
  have e2 : 8 / 73 ≤ b * (h - a) := by
    have := H.ge 0 1 6 (hpos := (hex_ABH H.hN).le)
    simp only [cfg, sarea, ptA, ptB, ptH] at this; linarith
  have hM : 0 < c - b := by linarith
  have e3 : 8 / 73 / (c - b) + 8 / 73 / b ≤ h := by
    have h1 : 8 / 73 / (c - b) ≤ a := by rw [div_le_iff₀ hM]; linarith
    have h2 : 8 / 73 / b ≤ h - a := by rw [div_le_iff₀ hb]; linarith
    linarith
  have e4 : 8 / 73 * c ^ 2 / (b * (c - b)) ≤ h * c := by
    have e : 8 / 73 * c ^ 2 / (b * (c - b)) = c * (8 / 73 / (c - b) + 8 / 73 / b) := by
      field_simp; ring
    rw [e]; nlinarith
  have e5 : 4 * (8 / 73) ≤ 8 / 73 * c ^ 2 / (b * (c - b)) := by
    rw [le_div_iff₀ (by positivity)]; nlinarith [sq_nonneg (b - (c - b))]
  have hb8 : 1 / 8 < b := by
    have h1 : 8 / 73 ≤ a * (1 - b) := by nlinarith
    have key : 8 / 73 < b * (1 - b) := by
      nlinarith [mul_pos (mul_pos hb (show 0 < 1 - b by linarith)) (show 0 < 1 - h by linarith),
        mul_le_mul_of_nonneg_left h1 hb.le,
        mul_le_mul_of_nonneg_left e2 (show 0 ≤ 1 - b by linarith)]
    nlinarith [sq_nonneg (1 / 8 - b)]
  have ha8 : 1 / 8 < a := by
    have h1 : 8 / 73 ≤ b * (1 - a) := by nlinarith
    have key : 8 / 73 < a * (1 - a) := by
      nlinarith [mul_pos (mul_pos ha (show 0 < 1 - a by linarith)) (show 0 < 1 - c by linarith),
        mul_le_mul_of_nonneg_left h1 ha.le,
        mul_le_mul_of_nonneg_left e1 (show 0 ≤ 1 - a by linarith)]
    nlinarith [sq_nonneg (1 / 8 - a)]
  refine ⟨e1, e2, e3, e4, e5, hb8, ha8, ?_, ?_, ?_, ?_⟩
  · nlinarith [mul_nonneg (show 0 ≤ h by linarith) (show 0 ≤ 1 - c by linarith)]
  · nlinarith [mul_nonneg (show 0 ≤ c by linarith) (show 0 ≤ 1 - h by linarith)]
  · nlinarith [mul_nonneg (show 0 ≤ h - a by linarith) (show 0 ≤ 1 - b by linarith)]
  · nlinarith [mul_nonneg (show 0 ≤ c - b by linarith) (show 0 ≤ 1 - a by linarith)]

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-anchor-bounds`). Equation (4) and the lines after
it: with `s = 8/73`, `L = h-a`, `M = c-b`: `aM ≥ s`, `bL ≥ s`, `h ≥ s/M + s/b`,
`hc ≥ sc²/(bM) ≥ 4s`; `b, a > 1/8`; `h, c ≥ 4s`; `L, M ≥ s`.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 48-61. -/
theorem claim_anchor_bounds {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    let s : ℝ := 8 / 73
    s ≤ a * (c - b) ∧ s ≤ b * (h - a) ∧ s / (c - b) + s / b ≤ h ∧
      s * c ^ 2 / (b * (c - b)) ≤ h * c ∧ 4 * s ≤ s * c ^ 2 / (b * (c - b)) ∧
      1 / 8 < b ∧ 1 / 8 < a ∧ 4 * s ≤ h ∧ 4 * s ≤ c ∧ s ≤ h - a ∧ s ≤ c - b :=
  (Conf.ofFam hfam hmin).anchor

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:eq5`). The two forms of the cap determinant:
`[DXF] = (1-d)(x_X-f) - (1-f)(1-y_X) = (1-f)(y_X-d) - (1-d)(1-x_X)`.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 63-66. -/
theorem eq5 (d f : ℝ) (X : Point) :
    sarea (ptD d) X (ptF f) = (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) ∧
      sarea (ptD d) X (ptF f) = (1 - f) * (X.2 - d) - (1 - d) * (1 - X.1) := by
  constructor <;> simp only [sarea] <;> ring

/-- The cap bounds. -/
theorem Conf.cap (H : Conf a h b c d f X P Q) (hfd : f ≤ d) :
    8 / 73 ≤ X.1 - f ∧ 8 / 73 ≤ X.2 - d ∧ 8 / 73 ≤ (1 - d) * (1 - f) ∧ d < 7 / 8 ∧
      f < 67 / 100 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨⟨x0, x1, y0, y1⟩, hT⟩ := H.hX
  have hb8 := H.anchor.2.2.2.2.2.1
  have hDXF : 8 / 73 ≤ sarea (ptD d) X (ptF f) := by
    have := H.ge 3 4 5 (hpos := by
      show 0 ≤ sarea (ptD d) X (ptF f)
      rw [sarea_swap₂₃]; linarith)
    simpa only [cfg] using this
  obtain ⟨e1, e2⟩ := eq5 d f X
  have k1 : 8 / 73 ≤ (1 - d) * (X.1 - f) := by
    nlinarith [mul_nonneg (show 0 ≤ 1 - f by linarith) (show 0 ≤ 1 - X.2 by linarith)]
  have k2 : 8 / 73 ≤ (1 - f) * (X.2 - d) := by
    nlinarith [mul_nonneg (show 0 ≤ 1 - d by linarith) (show 0 ≤ 1 - X.1 by linarith)]
  have hδ : 8 / 73 ≤ (1 - d) * (1 - f) := by
    nlinarith [mul_nonneg (show 0 ≤ 1 - d by linarith) (show 0 ≤ 1 - X.1 by linarith)]
  refine ⟨?_, ?_, hδ, ?_, ?_⟩
  · nlinarith
  · nlinarith
  · nlinarith [mul_le_mul_of_nonneg_left (show 1 - f ≤ 7 / 8 by linarith)
      (show 0 ≤ 1 - d by linarith)]
  · nlinarith [mul_le_mul_of_nonneg_left (show 1 - d ≤ 1 - f by linarith)
      (show 0 ≤ 1 - f by linarith)]

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-cap-bounds`). With `s = 8/73` and the normalization
`f ≤ d`: `x_X - f ≥ s`, `y_X - d ≥ s`, `δ = (1-d)(1-f) ≥ s`, `d < 7/8` and `f < 67/100`.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 63-73. -/
theorem claim_cap_bounds {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    let s : ℝ := 8 / 73
    s ≤ X.1 - f ∧ s ≤ X.2 - d ∧ s ≤ (1 - d) * (1 - f) ∧ d < 7 / 8 ∧ f < 67 / 100 :=
  (Conf.ofFam hfam hmin).cap hfd

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:eq6`). The exact projection identities, for every point
`R`: `(1-f)[CDR] + (1-c)[DFR] = [CDF](1-r_x)` and `(1-h)[DFR] + (1-d)[FHR] = [DFH](1-r_y)`.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 76-81. -/
theorem eq6 (h c d f : ℝ) (R : Point) :
    (1 - f) * sarea (ptC c) (ptD d) R + (1 - c) * sarea (ptD d) (ptF f) R =
        sarea (ptC c) (ptD d) (ptF f) * (1 - R.1) ∧
      (1 - h) * sarea (ptD d) (ptF f) R + (1 - d) * sarea (ptF f) (ptH h) R =
        sarea (ptD d) (ptF f) (ptH h) * (1 - R.2) := by
  constructor <;> simp only [sarea] <;> ring

/-- The interior box of `P`. -/
theorem Conf.boxP (H : Conf a h b c d f X P Q) :
    8 / 73 ≤ P.1 ∧ P.1 ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ P.2 ∧ P.2 ≤ 1 - 8 / 73 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  have hHA : 8 / 73 ≤ sarea (ptH h) (ptA a) P := H.ge 6 0 7 (hpos := p6.le)
  have hBC : 8 / 73 ≤ sarea (ptB b) (ptC c) P := H.ge 1 2 7 (hpos := p2.le)
  have hCD : 8 / 73 ≤ sarea (ptC c) (ptD d) P := H.ge 2 3 7 (hpos := p3.le)
  have hDF : 8 / 73 ≤ sarea (ptD d) (ptF f) P := H.ge 3 5 7 (hpos := p4.le)
  have hFH : 8 / 73 ≤ sarea (ptF f) (ptH h) P := H.ge 5 6 7 (hpos := p5.le)
  obtain ⟨e1, e2⟩ := eq6 h c d f P
  have hCDF := hex_CDF H.hN
  have hDFH := hex_DFH H.hN
  have b1 : sarea (ptC c) (ptD d) (ptF f) ≤ (1 - f) + (1 - c) := by
    simp only [sarea]; nlinarith [mul_nonneg (show 0 ≤ 1 - d by linarith) (show 0 ≤ c - f by linarith)]
  have b2 : sarea (ptD d) (ptF f) (ptH h) ≤ (1 - h) + (1 - d) := by
    simp only [sarea]; nlinarith [mul_nonneg (show 0 ≤ 1 - f by linarith) (show 0 ≤ h - d by linarith)]
  simp only [sarea] at hHA hBC
  refine ⟨?_, ?_, ?_, ?_⟩
  · nlinarith [mul_nonneg (show 0 ≤ 1 - (h - a) by linarith) (show 0 ≤ P.1 by nlinarith)]
  · nlinarith [mul_le_mul_of_nonneg_left hCD (show 0 ≤ 1 - f by linarith),
      mul_le_mul_of_nonneg_left hDF (show 0 ≤ 1 - c by linarith)]
  · nlinarith [mul_nonneg (show 0 ≤ 1 - (c - b) by linarith) (show 0 ≤ P.2 by nlinarith)]
  · nlinarith [mul_le_mul_of_nonneg_left hDF (show 0 ≤ 1 - h by linarith),
      mul_le_mul_of_nonneg_left hFH (show 0 ≤ 1 - d by linarith)]

theorem Conf.boxQ (H : Conf a h b c d f X P Q) :
    8 / 73 ≤ Q.1 ∧ Q.1 ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ Q.2 ∧ Q.2 ≤ 1 - 8 / 73 :=
  H.swap.boxP

theorem Conf.sqP (H : Conf a h b c d f X P Q) : P ∈ unitSquare := by
  obtain ⟨a1, a2, a3, a4⟩ := H.boxP
  exact ⟨by linarith, by linarith, by linarith, by linarith⟩

theorem Conf.sqQ (H : Conf a h b c d f X P Q) : Q ∈ unitSquare := H.swap.sqP

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-interior-box`). With `s = 8/73`, both interior points
`R ∈ {P, Q}` satisfy `s ≤ r_x ≤ 1-s` and `s ≤ r_y ≤ 1-s` (bases `AH`, `BC` and (6)).
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 75-86. -/
theorem claim_interior_box {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ R ∈ ({P, Q} : Set Point),
      8 / 73 ≤ R.1 ∧ R.1 ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ R.2 ∧ R.2 ≤ 1 - 8 / 73 := by
  intro R hR
  rcases hR with rfl | hR
  · exact (Conf.ofFam hfam hmin).boxP
  · rw [Set.mem_singleton_iff] at hR; subst hR
    exact (Conf.ofFam hfam hmin).boxQ

/-- The ears (7). -/
theorem Conf.ears (H : Conf a h b c d f X P Q) :
    (sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16) ∧
    ¬ (InTriangle P (ptA a) (ptB b) (ptH h) ∧ InTriangle Q (ptA a) (ptB b) (ptH h)) ∧
    ¬ (InTriangle P (ptA a) (ptB b) (ptC c) ∧ InTriangle Q (ptA a) (ptB b) (ptC c)) ∧
    ¬ (InTriangle P (ptB b) (ptC c) (ptD d) ∧ InTriangle Q (ptB b) (ptC c) (ptD d)) ∧
    ¬ (InTriangle P (ptC c) (ptD d) (ptF f) ∧ InTriangle Q (ptC c) (ptD d) (ptF f)) ∧
    ¬ (InTriangle P (ptD d) (ptF f) (ptH h) ∧ InTriangle Q (ptD d) (ptF f) (ptH h)) ∧
    ¬ (InTriangle P (ptF f) (ptH h) (ptA a) ∧ InTriangle Q (ptF f) (ptH h) (ptA a)) := by
  have k := SixBoundaryHull.theorem1 H.hN H.hX.1 H.sqP H.sqQ (by linarith [H.hmin])
  obtain ⟨e, ⟨-, -, m1⟩, ⟨-, -, m2⟩, ⟨-, -, m3⟩, ⟨-, -, m4⟩, ⟨-, -, m5⟩, ⟨-, -, m6⟩⟩ := k
  exact ⟨e, m1, m2, m3, m4, m5, m6⟩

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-ears`). Equation (7): the six anchor ears
`ABH, ABC, BCD, CDF, DFH, FHA` have doubled area `< 13/16` (`SIX_BOUNDARY_HULL` Theorem 1 at the
weaker threshold `7/64`), and none of them contains both `P` and `Q` (the two-interior-point
triangle theorem). `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 88-95.
Uses: SIX_BOUNDARY_HULL:Theorem1, CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_ears {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    (sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16) ∧
    ¬ (InTriangle P (ptA a) (ptB b) (ptH h) ∧ InTriangle Q (ptA a) (ptB b) (ptH h)) ∧
    ¬ (InTriangle P (ptA a) (ptB b) (ptC c) ∧ InTriangle Q (ptA a) (ptB b) (ptC c)) ∧
    ¬ (InTriangle P (ptB b) (ptC c) (ptD d) ∧ InTriangle Q (ptB b) (ptC c) (ptD d)) ∧
    ¬ (InTriangle P (ptC c) (ptD d) (ptF f) ∧ InTriangle Q (ptC c) (ptD d) (ptF f)) ∧
    ¬ (InTriangle P (ptD d) (ptF f) (ptH h) ∧ InTriangle Q (ptD d) (ptF f) (ptH h)) ∧
    ¬ (InTriangle P (ptF f) (ptH h) (ptA a) ∧ InTriangle Q (ptF f) (ptH h) (ptA a)) :=
  (Conf.ofFam hfam hmin).ears

/-- At most one interior point below `HC`. -/
theorem Conf.one_below (H : Conf a h b c d f X P Q) :
    ¬ (sarea (ptH h) (ptC c) P < 0 ∧ sarea (ptH h) (ptC c) Q < 0) := by
  rintro ⟨hPl, hQl⟩
  have bP := H.boxP
  have bQ := H.boxQ
  have hT : ∀ R : Point, sarea (ptH h) (ptC c) R < 0 → 0 ≤ R.1 → 0 ≤ R.2 →
      QuadrilateralHull.InT0 h c R := fun R hR h1 h2 =>
    ⟨h1, h2, by simp only [sarea] at hR; nlinarith⟩
  have k := QuadrilateralHull.theorem4 H.hN H.hX.1 H.sqP H.sqQ
    (Or.inr (Or.inr ⟨hT P hPl (by linarith) (by linarith), hT Q hQl (by linarith) (by linarith)⟩))
  linarith [k.1, k.2.1, H.hmin]

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-one-below-HC`). At most one of `P, Q` lies below
`HC` (otherwise the six actual points `H, C, A, B, P, Q` of the virtual triangle `(0,0)HC` give
minimum area at most `7hc/128 < 7/128 < 4/73`). `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 97-101.
Uses: QUADRILATERAL_HULL:Theorem4 -/
theorem claim_one_below_HC {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ¬ (sarea (ptH h) (ptC c) P < 0 ∧ sarea (ptH h) (ptC c) Q < 0) :=
  (Conf.ofFam hfam hmin).one_below

/-- The fan subdivision of `HCDF` from an upper point. -/
theorem Conf.fanP (H : Conf a h b c d f X P Q) (hu : 0 < sarea (ptH h) (ptC c) P) :
    4 * (8 / 73) ≤ 1 - (h - d) * (c - f) := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  have s1 : 8 / 73 ≤ sarea (ptH h) (ptC c) P := H.ge 6 2 7 (hpos := hu.le)
  have s2 : 8 / 73 ≤ sarea (ptC c) (ptD d) P := H.ge 2 3 7 (hpos := p3.le)
  have s3 : 8 / 73 ≤ sarea (ptD d) (ptF f) P := H.ge 3 5 7 (hpos := p4.le)
  have s4 : 8 / 73 ≤ sarea (ptF f) (ptH h) P := H.ge 5 6 7 (hpos := p5.le)
  have e : sarea (ptH h) (ptC c) P + sarea (ptC c) (ptD d) P + sarea (ptD d) (ptF f) P +
      sarea (ptF f) (ptH h) P = 1 - (h - d) * (c - f) := by simp only [sarea]; ring
  linarith

/-- The upper class: `W ≥ 8s` by `QUADRILATERAL_HULL` Theorem 1. -/
theorem Conf.W_upper (H : Conf a h b c d f X P Q) (hPu : 0 < sarea (ptH h) (ptC c) P)
    (hQu : 0 < sarea (ptH h) (ptC c) Q) : 8 * (8 / 73) ≤ 1 - (h - d) * (c - f) := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have hq : QuadrilateralHull.ConvexQuad (ptH h) (ptC c) (ptD d) (ptF f) := by
    refine ⟨?_, hex_CDF H.hN, hex_DFH H.hN, ?_⟩
    · rw [← sarea_cycle]; exact hex_CDH H.hN
    · rw [sarea_cycle]; exact hex_CFH H.hN
  have k := (QuadrilateralHull.theorem1 hq ⟨hPu.le, p3.le, p4.le, p5.le⟩
    ⟨hQu.le, q3.le, q4.le, q5.le⟩).1
  have hm := H.sub (by norm_num) ![6, 2, 3, 5, 7, 8] (by intro x; fin_cases x <;> decide)
    (by decide)
  have e : (fun x => cfg a h b c d f X P Q (![6, 2, 3, 5, 7, 8] x)) =
      ![ptH h, ptC c, ptD d, ptF f, P, Q] := by funext x; fin_cases x <;> rfl
  rw [e] at hm
  have hA : QuadrilateralHull.quadArea (ptH h) (ptC c) (ptD d) (ptF f) =
      (1 - (h - d) * (c - f)) / 2 := by
    simp only [QuadrilateralHull.quadArea, sarea]; ring
  rw [hA] at k
  linarith

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-W`). Equation (8), with `s = 8/73` and
`W = 1-(h-d)(c-f)`: in the mixed class (one of `P, Q` below `HC`, the other above) `W ≥ 4s`
(fan subdivision); in the upper class (both above `HC`) `W ≥ 8s` (by the six-point
quadrilateral theorem). `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 101-107.
Uses: QUADRILATERAL_HULL:Theorem1 -/
theorem claim_W {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    (((sarea (ptH h) (ptC c) P < 0 ∧ 0 < sarea (ptH h) (ptC c) Q) ∨
        (0 < sarea (ptH h) (ptC c) P ∧ sarea (ptH h) (ptC c) Q < 0)) →
        4 * (8 / 73) ≤ 1 - (h - d) * (c - f)) ∧
      ((0 < sarea (ptH h) (ptC c) P ∧ 0 < sarea (ptH h) (ptC c) Q) →
        8 * (8 / 73) ≤ 1 - (h - d) * (c - f)) := by
  have H := Conf.ofFam hfam hmin
  refine ⟨?_, fun ⟨h1, h2⟩ => H.W_upper h1 h2⟩
  rintro (⟨-, hu⟩ | ⟨hu, -⟩)
  · exact H.swap.fanP hu
  · exact H.fanP hu

/-- `7/11 < s/(3 - 2√2)`. -/
theorem seven_eleven_lt : (7 / 11 : ℝ) < 8 / 73 / (3 - 2 * Real.sqrt 2) := by
  have h2 : (14139 / 10000 : ℝ) < Real.sqrt 2 := by
    rw [Real.lt_sqrt (by norm_num)]; norm_num
  have h2' : Real.sqrt 2 < 3 / 2 := by
    rw [Real.sqrt_lt' (by norm_num)]; norm_num
  rw [lt_div_iff₀ (by linarith)]
  linarith

/-- The endpoint bound (9) for a lower point `P`. -/
theorem Conf.hc_endpoint (H : Conf a h b c d f X P Q) (hlow : sarea (ptH h) (ptC c) P < 0) :
    8 / 73 / (3 - 2 * Real.sqrt 2) ≤ h * c := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  have bP := H.boxP
  have hO : 0 < sarea ((0 : ℝ), (0 : ℝ)) (ptC c) (ptH h) := by
    simp only [sarea]; nlinarith [mul_pos (show 0 < h by linarith) (show 0 < c by linarith)]
  have hset : ({ptH h, ptC c, ((0 : ℝ), (0 : ℝ))} : Set Point) =
      {((0 : ℝ), (0 : ℝ)), ptC c, ptH h} := by
    ext x; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto
  have mA : ptA a ∈ convexHull ℝ ({ptH h, ptC c, ((0 : ℝ), (0 : ℝ))} : Set Point) := by
    rw [hset]
    refine mem_convexHull_of_sarea' hO ?_ ?_ ?_ <;> simp only [sarea] <;>
      nlinarith [mul_pos (show 0 < c by linarith) (show 0 < h - a by linarith),
        mul_pos (show 0 < c by linarith) ha]
  have mB : ptB b ∈ convexHull ℝ ({ptH h, ptC c, ((0 : ℝ), (0 : ℝ))} : Set Point) := by
    rw [hset]
    refine mem_convexHull_of_sarea' hO ?_ ?_ ?_ <;> simp only [sarea] <;>
      nlinarith [mul_pos (show 0 < h by linarith) (show 0 < c - b by linarith),
        mul_pos (show 0 < h by linarith) hb]
  have mP : P ∈ convexHull ℝ ({ptH h, ptC c, ((0 : ℝ), (0 : ℝ))} : Set Point) := by
    rw [hset]
    simp only [sarea] at hlow
    refine mem_convexHull_of_sarea' hO ?_ ?_ ?_ <;> simp only [sarea] <;>
      nlinarith [mul_pos (show 0 < h by linarith) (show 0 < P.1 by linarith),
        mul_pos (show 0 < c by linarith) (show 0 < P.2 by linarith)]
  have k := TypeII.endpointTriangleTheorem (ptH h) (ptC c) ((0 : ℝ), (0 : ℝ)) (ptA a) (ptB b) P
    mA mB mP
  have hm := H.sub (by norm_num) ![6, 2, 0, 1, 7] (by intro x; fin_cases x <;> decide)
    (by decide)
  have e : (fun x => cfg a h b c d f X P Q (![6, 2, 0, 1, 7] x)) =
      ![ptH h, ptC c, ptA a, ptB b, P] := by funext x; fin_cases x <;> rfl
  rw [e] at hm
  have hT : triangleArea (ptH h) (ptC c) ((0 : ℝ), (0 : ℝ)) = h * c / 2 := by
    rw [triangleArea_eq]
    have : sarea (ptH h) (ptC c) ((0 : ℝ), (0 : ℝ)) = -(h * c) := by simp only [sarea]; ring
    rw [this, abs_neg, abs_of_pos (by nlinarith)]
  rw [hT] at k
  have hk : TypeII.kEnd = 3 - 2 * Real.sqrt 2 := rfl
  have kpos : 0 < 3 - 2 * Real.sqrt 2 := by
    have : Real.sqrt 2 < 3 / 2 := by rw [Real.sqrt_lt' (by norm_num)]; norm_num
    linarith
  rw [hk] at k
  rw [div_le_iff₀ kpos]
  nlinarith

/-- The mixed class: the lower point `P`. -/
theorem Conf.mixedP (H : Conf a h b c d f X P Q) (hlow : sarea (ptH h) (ptC c) P < 0) :
    8 / 73 / (3 - 2 * Real.sqrt 2) ≤ h * c ∧ 7 / 11 < 8 / 73 / (3 - 2 * Real.sqrt 2) ∧
      7 / 11 ≤ h ∧ 7 / 11 ≤ c ∧ 2 * (8 / 73) ≤ c - P.1 ∧ 2 * (8 / 73) ≤ h - P.2 ∧
      P.1 + P.2 ≤ 1 - 8 / 73 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨b1, -, b3, -⟩ := H.boxP
  have hhc := H.hc_endpoint hlow
  have h711 := seven_eleven_lt
  have hhc' : 7 / 11 ≤ h * c := by linarith
  have hCHP : 8 / 73 ≤ sarea (ptC c) (ptH h) P := H.ge 2 6 7 (hpos := by
    show 0 ≤ sarea (ptC c) (ptH h) P
    rw [sarea_swap₁₂]; linarith)
  have hHA : 8 / 73 ≤ sarea (ptH h) (ptA a) P := H.ge 6 0 7 (hpos := p6.le)
  have hBC : 8 / 73 ≤ sarea (ptB b) (ptC c) P := H.ge 1 2 7 (hpos := p2.le)
  have eC : sarea (ptC c) (ptH h) P = h * c - h * P.1 - c * P.2 := by simp only [sarea]; ring
  have eA : sarea (ptH h) (ptA a) P = (h - a) * P.1 := by simp only [sarea]; ring
  have eB : sarea (ptB b) (ptC c) P = (c - b) * P.2 := by simp only [sarea]; ring
  rw [eC] at hCHP; rw [eA] at hHA; rw [eB] at hBC
  have hx : 8 / 73 ≤ h * P.1 := by linarith [mul_nonneg ha.le (show 0 ≤ P.1 by linarith)]
  have hy : 8 / 73 ≤ c * P.2 := by linarith [mul_nonneg hb.le (show 0 ≤ P.2 by linarith)]
  have g1 : 2 * (8 / 73) ≤ h * (c - P.1) := by linarith
  have g2 : 2 * (8 / 73) ≤ c * (h - P.2) := by linarith
  have g1' : 0 ≤ c - P.1 := by
    by_contra hn; push Not at hn; linarith [mul_pos (show 0 < h by linarith) (neg_pos.2 (sub_neg.2 hn))]
  have g2' : 0 ≤ h - P.2 := by
    by_contra hn; push Not at hn; linarith [mul_pos (show 0 < c by linarith) (neg_pos.2 (sub_neg.2 hn))]
  have hc1 : h * c ≤ 1 := by linarith [mul_nonneg (show 0 ≤ 1 - h by linarith) (show 0 ≤ c by linarith)]
  have g3 : 8 / 73 ≤ h * c * (1 - P.1 - P.2) := by
    linarith [mul_nonneg (mul_nonneg (show 0 ≤ h by linarith) (show 0 ≤ P.1 by linarith))
        (show 0 ≤ 1 - c by linarith),
      mul_nonneg (mul_nonneg (show 0 ≤ c by linarith) (show 0 ≤ P.2 by linarith))
        (show 0 ≤ 1 - h by linarith)]
  have hu : 0 < 1 - P.1 - P.2 := by
    by_contra hn; push Not at hn
    linarith [mul_nonneg (mul_pos (show 0 < h by linarith) (show 0 < c by linarith)).le
      (show 0 ≤ -(1 - P.1 - P.2) by linarith)]
  refine ⟨hhc, h711, ?_, ?_, ?_, ?_, ?_⟩
  · linarith [mul_nonneg (show 0 ≤ h by linarith) (show 0 ≤ 1 - c by linarith)]
  · linarith [mul_nonneg (show 0 ≤ c by linarith) (show 0 ≤ 1 - h by linarith)]
  · linarith [mul_nonneg (show 0 ≤ 1 - h by linarith) g1']
  · linarith [mul_nonneg (show 0 ≤ 1 - c by linarith) g2']
  · linarith [mul_nonneg (show 0 ≤ 1 - h * c by linarith) hu.le]

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-mixed`). Equations (9)–(10): in the mixed class,
the lower point `Z = (ℓ_x, ℓ_y) ∈ {P, Q}` (below `HC`) satisfies, with `s = 8/73`,
`hc ≥ s/(3-2√2) > 7/11`, `h, c ≥ 7/11`, `c - ℓ_x ≥ 2s`, `h - ℓ_y ≥ 2s`, `ℓ_x + ℓ_y ≤ 1-s`
(endpoint theorem of `TYPE_II.md` §1 for `H, C, A, B, Z` in `(0,0)HC`).
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 109-125.
Uses: TYPE_II:EndpointTriangleTheorem -/
theorem claim_mixed {a h b c d f : ℝ} {X P Q Z : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q))
    (hZ : Z = P ∨ Z = Q) (hlow : sarea (ptH h) (ptC c) Z < 0) :
    let s : ℝ := 8 / 73
    s / (3 - 2 * Real.sqrt 2) ≤ h * c ∧ 7 / 11 < s / (3 - 2 * Real.sqrt 2) ∧
      7 / 11 ≤ h ∧ 7 / 11 ≤ c ∧ 2 * s ≤ c - Z.1 ∧ 2 * s ≤ h - Z.2 ∧ Z.1 + Z.2 ≤ 1 - s := by
  intro s
  rcases hZ with rfl | rfl
  · exact (Conf.ofFam hfam hmin).mixedP hlow
  · exact (Conf.ofFam hfam hmin).swap.mixedP hlow

/-! ### Section 2: the complete radial-word and pair cover -/

/-- The 35 hull triples, lexicographic. -/
def hullTriples : List (ℕ × ℕ × ℕ) :=
  [(0, 1, 2), (0, 1, 3), (0, 1, 4), (0, 1, 5), (0, 1, 6), (0, 2, 3), (0, 2, 4), (0, 2, 5),
    (0, 2, 6), (0, 3, 4), (0, 3, 5), (0, 3, 6), (0, 4, 5), (0, 4, 6), (0, 5, 6), (1, 2, 3),
    (1, 2, 4), (1, 2, 5), (1, 2, 6), (1, 3, 4), (1, 3, 5), (1, 3, 6), (1, 4, 5), (1, 4, 6),
    (1, 5, 6), (2, 3, 4), (2, 3, 5), (2, 3, 6), (2, 4, 5), (2, 4, 6), (2, 5, 6), (3, 4, 5),
    (3, 4, 6), (3, 5, 6), (4, 5, 6)]

theorem mem_hullTriples (i j k : ℕ) (hij : i < j) (hjk : j < k) (hk : k < 7) :
    (i, j, k) ∈ hullTriples := by
  have hi : i < 5 := by omega
  have hj : j < 6 := by omega
  interval_cases i <;> interval_cases j <;> interval_cases k <;> simp [hullTriples]

theorem zero_sarea₁₃ (p q : Point) : 0 ≤ sarea p q p := le_of_eq (by unfold sarea; ring)
theorem zero_sarea₂₃ (p q : Point) : 0 ≤ sarea p q q := le_of_eq (by unfold sarea; ring)

/-- **The hull signs**: the 35 triangles of the heptagon are positively oriented (the twenty
anchor triangles directly; the fifteen with `X` from the cap combination). -/
theorem Conf.hull (H : Conf a h b c d f X P Q) :
    ∀ t ∈ hullTriples, 0 < sarea (cfg a h b c d f X P Q t.1) (cfg a h b c d f X P Q t.2.1)
      (cfg a h b c d f X P Q t.2.2) := by
  have hN := H.hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  have hX := H.hX
  have cyc2 : ∀ {p q r : Point}, 0 < sarea p q r → 0 ≤ sarea q r p := fun h => by
    rw [sarea_cycle]; exact h.le
  have cyc1 : ∀ {p q r : Point}, 0 < sarea p q r → 0 ≤ sarea r p q := fun h => by
    rw [← sarea_cycle]; exact h.le
  -- the triangles with `X`, as `[U W X] ≥ 0`
  have n014 := cap_nonneg hd1 hf1 hX (hex_ABD hN).le (hex_ABF hN).le (K_AB hN)
  have n024 := cap_nonneg hd1 hf1 hX (hex_ACD hN).le (hex_ACF hN).le (K_AC hN)
  have n034 := cap_nonneg hd1 hf1 hX (zero_sarea₂₃ _ _) (hex_ADF hN).le (K_AD hN)
  have n124 := cap_nonneg hd1 hf1 hX (hex_BCD hN).le (hex_BCF hN).le (K_BC hN)
  have n134 := cap_nonneg hd1 hf1 hX (zero_sarea₂₃ _ _) (hex_BDF hN).le (K_BD hN)
  have n234 := cap_nonneg hd1 hf1 hX (zero_sarea₂₃ _ _) (hex_CDF hN).le (K_CD hN)
  have n045 := cap_nonneg hd1 hf1 hX (cyc1 (hex_ADF hN)) (zero_sarea₁₃ _ _) (K_FA hN)
  have n046 := cap_nonneg hd1 hf1 hX (cyc1 (hex_ADH hN)) (cyc1 (hex_AFH hN)) (K_HA hN)
  have n145 := cap_nonneg hd1 hf1 hX (cyc1 (hex_BDF hN)) (zero_sarea₁₃ _ _) (K_FB hN)
  have n146 := cap_nonneg hd1 hf1 hX (cyc1 (hex_BDH hN)) (cyc1 (hex_BFH hN)) (K_HB hN)
  have n245 := cap_nonneg hd1 hf1 hX (cyc1 (hex_CDF hN)) (zero_sarea₁₃ _ _) (K_FC hN)
  have n246 := cap_nonneg hd1 hf1 hX (cyc1 (hex_CDH hN)) (cyc1 (hex_CFH hN)) (K_HC hN)
  have n346 := cap_nonneg hd1 hf1 hX (zero_sarea₂₃ _ _) (cyc1 (hex_DFH hN)) (K_HD hN)
  have n456 := cap_nonneg hd1 hf1 hX (cyc2 (hex_DFH hN)) (zero_sarea₁₃ _ _) (K_FH hN)
  have n345 : 0 ≤ sarea (ptD d) X (ptF f) := by rw [sarea_swap₂₃]; linarith [hX.2]
  simp only [hullTriples, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true]
  refine ⟨hex_ABC hN, hex_ABD hN, H.pos 0 1 4 (hpos := n014), hex_ABF hN, hex_ABH hN,
    hex_ACD hN, H.pos 0 2 4 (hpos := n024), hex_ACF hN, hex_ACH hN,
    H.pos 0 3 4 (hpos := n034), hex_ADF hN, hex_ADH hN,
    H.pos 0 4 5 (hpos := by rw [sarea_cycle]; exact n045),
    H.pos 0 4 6 (hpos := by rw [sarea_cycle]; exact n046), hex_AFH hN,
    hex_BCD hN, H.pos 1 2 4 (hpos := n124), hex_BCF hN, hex_BCH hN,
    H.pos 1 3 4 (hpos := n134), hex_BDF hN, hex_BDH hN,
    H.pos 1 4 5 (hpos := by rw [sarea_cycle]; exact n145),
    H.pos 1 4 6 (hpos := by rw [sarea_cycle]; exact n146), hex_BFH hN,
    H.pos 2 3 4 (hpos := n234), hex_CDF hN, hex_CDH hN,
    H.pos 2 4 5 (hpos := by rw [sarea_cycle]; exact n245),
    H.pos 2 4 6 (hpos := by rw [sarea_cycle]; exact n246), hex_CFH hN,
    H.pos 3 4 5 (hpos := n345), H.pos 3 4 6 (hpos := by rw [sarea_cycle]; exact n346),
    hex_DFH hN, H.pos 4 5 6 (hpos := by rw [← sarea_cycle]; exact n456)⟩

theorem Conf.convex (H : Conf a h b c d f X P Q) : IsConvexCCW (heptagon a h b c d f X) := by
  intro i j k hij hjk
  rw [heptagon_eq (P := P) (Q := Q), heptagon_eq (P := P) (Q := Q),
    heptagon_eq (P := P) (Q := Q)]
  exact H.hull _ (mem_hullTriples i j k hij hjk k.isLt)

/-- The two edges `DX`, `XF` of the heptagon keep `P` on their inner side. -/
theorem Conf.edgesP (H : Conf a h b c d f X P Q) :
    0 < sarea (ptD d) X P ∧ 0 < sarea X (ptF f) P := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨⟨x0, x1, y0, y1⟩, hT⟩ := H.hX
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  have bP := H.boxP
  constructor
  · have e : (f - 1) * sarea (ptD d) X P =
        (X.1 - 1) * sarea (ptD d) (ptF f) P - (P.1 - 1) * sarea (ptD d) (ptF f) X := by
      simp only [sarea]; ring
    refine H.pos 3 4 7 (hpos := ?_)
    show 0 ≤ sarea (ptD d) X P
    nlinarith [mul_nonneg (show 0 ≤ 1 - X.1 by linarith) p4.le,
      mul_nonneg (show 0 ≤ 1 - P.1 by linarith) (show 0 ≤ -sarea (ptD d) (ptF f) X by linarith)]
  · have e : (d - 1) * sarea (ptF f) X P =
        (X.2 - 1) * sarea (ptF f) (ptD d) P - (P.2 - 1) * sarea (ptF f) (ptD d) X := by
      simp only [sarea]; ring
    have e1 : sarea (ptF f) (ptD d) P = -sarea (ptD d) (ptF f) P := by
      simp only [sarea]; ring
    have e2 : sarea (ptF f) (ptD d) X = -sarea (ptD d) (ptF f) X := by
      simp only [sarea]; ring
    have e3 : sarea X (ptF f) P = -sarea (ptF f) X P := by simp only [sarea]; ring
    refine H.pos 4 5 7 (hpos := ?_)
    show 0 ≤ sarea X (ptF f) P
    rw [e1, e2] at e
    nlinarith [mul_nonneg (show 0 ≤ 1 - X.2 by linarith) p4.le,
      mul_nonneg (show 0 ≤ 1 - P.2 by linarith) (show 0 ≤ -sarea (ptD d) (ptF f) X by linarith)]

theorem Conf.polyP (H : Conf a h b c d f X P Q) : InPolygon (heptagon a h b c d f X) P := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨e1, e2⟩ := H.edgesP
  intro i
  fin_cases i
  exacts [p1, p2, p3, e1, e2, p5, p6]

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-hull`). The full hull is the strictly convex
heptagon `(A, B, C, D, X, F, H)` (3), with `P` and `Q` strictly inside.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 36-44. -/
theorem claim_hull {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    IsConvexCCW (heptagon a h b c d f X) ∧ InPolygon (heptagon a h b c d f X) P ∧
      InPolygon (heptagon a h b c d f X) Q :=
  ⟨(Conf.ofFam hfam hmin).convex, (Conf.ofFam hfam hmin).polyP,
    (Conf.ofFam hfam hmin).swap.polyP⟩

/-- The word of `P`. -/
theorem Conf.wordP (H : Conf a h b c d f X P Q) :
    ∃ r ∈ hexagonWords, HasRadialWord (heptagon a h b c d f X) P (fun i => (r i : ℕ)) ∧
      (0 < sarea (ptH h) (ptC c) P ↔ 3 ≤ (r 6 : ℕ)) := by
  have hgen : ∀ i j : Fin 7, i ≠ j → sarea (heptagon a h b c d f X i)
      (heptagon a h b c d f X j) P ≠ 0 := by
    intro i j hij
    rw [heptagon_eq (P := P) (Q := Q), heptagon_eq (P := P) (Q := Q)]
    exact H.ne i j 7 (by have := i.isLt; omega) (by have := j.isLt; omega) (by norm_num)
      (fun e => hij (Fin.ext e)) (by have := j.isLt; omega) (by have := i.isLt; omega)
  obtain ⟨r, hr, hrw⟩ := claim_radial_word _ P (by norm_num) H.convex H.polyP hgen
  have hlt : ∀ i, r i < 7 := fun i => by have := (hrw.1 i).2; omega
  refine ⟨fun i => ⟨r i, hlt i⟩, ?_, ?_, ?_⟩
  · simp only [hexagonWords, radialWords, Finset.mem_filter, Finset.mem_univ, true_and]
    refine ⟨hrw, ?_⟩
    have := (hr 3 2 (by norm_num) (by norm_num)).1
    exact this H.hP.2.2.2.1
  · exact hr
  · exact hr 6 3 (by norm_num) (by norm_num)

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-words`). There are 57 heptagon words satisfying the
complement relation (12); the hexagon test `r₃ ≥ 2` leaves 52, of which 19 have `r₆ < 3` (below
`HC`) and 33 have `r₆ ≥ 3` (above `HC`). Each of `P, Q` has a radial word (11) in this list, and
`[HCR] > 0` exactly when `r₆ ≥ 3`. `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 127-144. -/
theorem claim_words :
    (radialWords 7).card = 57 ∧ hexagonWords.card = 52 ∧
      (hexagonWords.filter fun r => (r 6 : ℕ) < 3).card = 19 ∧
      (hexagonWords.filter fun r => 3 ≤ (r 6 : ℕ)).card = 33 ∧
    ∀ {a h b c d f : ℝ} {X P Q : Point}, SingleTopFamily a h b c d f X P Q →
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q) →
      ∀ R ∈ ({P, Q} : Set Point), ∃ r ∈ hexagonWords,
        HasRadialWord (heptagon a h b c d f X) R (fun i => (r i : ℕ)) ∧
          (0 < sarea (ptH h) (ptC c) R ↔ 3 ≤ (r 6 : ℕ)) := by
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rw [Words.radialWords_eq]; exact Words.card_radialWords
  · rw [hexagonWords, Words.radialWords_eq]; exact Words.card_hexagon
  · rw [hexagonWords, Words.radialWords_eq]; exact Words.card_lower
  · rw [hexagonWords, Words.radialWords_eq]; exact Words.card_upper
  · intro a h b c d f X P Q hfam hmin R hR
    rcases hR with rfl | hR
    · exact (Conf.ofFam hfam hmin).wordP
    · rw [Set.mem_singleton_iff] at hR; subst hR
      exact (Conf.ofFam hfam hmin).swap.wordP

/-- The separation rule for one diagonal `U → V` of a quadrilateral `U W V Z` (counterclockwise,
`W` the vertex before `V`, `Z` the vertex after it), for two points strictly inside it:
if `[UVP] > 0 > [UVQ]` then `[UPQ] < 0 < [VPQ]`. -/
theorem sep_core {U W V Z P Q : Point} (p1 : 0 < sarea U W P) (p2 : 0 < sarea W V P)
    (p3 : 0 < sarea V Z P) (p4 : 0 < sarea Z U P) (q1 : 0 < sarea U W Q)
    (q2 : 0 < sarea W V Q) (_q3 : 0 < sarea V Z Q) (q4 : 0 < sarea Z U Q)
    (hp : 0 < sarea U V P) (hq : sarea U V Q < 0) :
    sarea U P Q < 0 ∧ 0 < sarea V P Q := by
  have fan : sarea U W V + sarea U V Z = sarea U W P + sarea W V P + sarea V Z P + sarea Z U P := by
    simp only [sarea]; ring
  have k1 : sarea U W V * sarea U P Q =
      sarea U W P * sarea U V Q - sarea U W Q * sarea U V P := by simp only [sarea]; ring
  have k2 : sarea U V Z * sarea U P Q =
      sarea U V Q * sarea Z U P - sarea U V P * sarea Z U Q := by simp only [sarea]; ring
  have k3 : sarea U W V * sarea V P Q =
      sarea W V Q * sarea U V P - sarea W V P * sarea U V Q := by simp only [sarea]; ring
  have hneg : (sarea U W V + sarea U V Z) * sarea U P Q < 0 := by
    rw [add_mul, k1, k2]
    nlinarith [mul_pos p1 (neg_pos.2 hq), mul_pos q1 hp, mul_pos p4 (neg_pos.2 hq), mul_pos q4 hp]
  have hW : 0 < sarea U W V + sarea U V Z := by rw [fan]; linarith
  have hPQ : sarea U P Q < 0 := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg hW.le hn]
  have h1 : sarea U W V * sarea U P Q < 0 := by
    rw [k1]; nlinarith [mul_pos p1 (neg_pos.2 hq), mul_pos q1 hp]
  have hUWV : 0 < sarea U W V := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hn hPQ.le]
  refine ⟨hPQ, pos_of_mul_pos_right ?_ hUWV.le⟩
  rw [k3]; nlinarith [mul_pos q2 hp, mul_pos p2 (neg_pos.2 hq)]

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:eq14`). The diagonal separation rule in the anchor
quadrilateral `HCDF`: for `P, Q` strictly inside `HCDF` on opposite sides of an oriented diagonal
`U → V` (`H → D` or `C → F`), `sgn[UPQ] = -sgn[UVP]` and `sgn[VPQ] = sgn[UVP]` (the segment `PQ`
meets the diagonal inside the quadrilateral). `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 157-163.

(No convexity hypothesis is needed (`sep_core`): the Plücker relations from `U` give
`[UWV][UPQ] < 0` and `[UVZ][UPQ] < 0`, while `[UWV] + [UVZ]` is the positive fan sum of the
quadrilateral from `P`.) -/
theorem eq14 {h c d f : ℝ} {P Q : Point} (hP : InUpperQuad h c d f P)
    (hQ : InUpperQuad h c d f Q) :
    (sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      (0 < sarea (ptH h) (ptD d) P →
          sarea (ptH h) P Q < 0 ∧ 0 < sarea (ptD d) P Q) ∧
        (sarea (ptH h) (ptD d) P < 0 →
          0 < sarea (ptH h) P Q ∧ sarea (ptD d) P Q < 0)) ∧
    (sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      (0 < sarea (ptC c) (ptF f) P →
          sarea (ptC c) P Q < 0 ∧ 0 < sarea (ptF f) P Q) ∧
        (sarea (ptC c) (ptF f) P < 0 →
          0 < sarea (ptC c) P Q ∧ sarea (ptF f) P Q < 0)) := by
  obtain ⟨p1, p2, p3, p4⟩ := hP
  obtain ⟨q1, q2, q3, q4⟩ := hQ
  have swapPQ : ∀ U : Point, sarea U Q P = -sarea U P Q := fun U => by simp only [sarea]; ring
  refine ⟨fun hsep => ⟨fun hp => ?_, fun hp => ?_⟩, fun hsep => ⟨fun hp => ?_, fun hp => ?_⟩⟩
  · have hq : sarea (ptH h) (ptD d) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    exact sep_core p1 p2 p3 p4 q1 q2 q3 q4 hp hq
  · have hq : 0 < sarea (ptH h) (ptD d) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have := sep_core q1 q2 q3 q4 p1 p2 p3 p4 hq hp
    rw [swapPQ, swapPQ] at this
    constructor <;> linarith [this.1, this.2]
  · have hq : sarea (ptC c) (ptF f) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    exact sep_core p2 p3 p4 p1 q2 q3 q4 q1 hp hq
  · have hq : 0 < sarea (ptC c) (ptF f) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have := sep_core q2 q3 q4 q1 p2 p3 p4 p1 hq hp
    rw [swapPQ, swapPQ] at this
    constructor <;> linarith [this.1, this.2]

/-! ### The upper-pair exclusions of `ONE_CORNER_COMPLETION` -/

/-- The six points of a labelling of `HCDF` with `P, Q` have least area at least `4/73`. -/
theorem Conf.quad_min (H : Conf a h b c d f X P Q) (i0 i1 i2 i3 : ℕ)
    (hlt : ∀ x, ![i0, i1, i2, i3, 7, 8] x < 9) (hinj : Function.Injective ![i0, i1, i2, i3, 7, 8]) :
    4 / 73 ≤ minTriangleArea (OneCornerCompletion.quadConfig (cfg a h b c d f X P Q i0)
      (cfg a h b c d f X P Q i1) (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) P Q) := by
  have hm := H.sub (by norm_num) ![i0, i1, i2, i3, 7, 8] hlt hinj
  have e : (fun x => cfg a h b c d f X P Q (![i0, i1, i2, i3, 7, 8] x)) =
      OneCornerCompletion.quadConfig (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1)
        (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) P Q := by
    funext x; fin_cases x <;> rfl
  rwa [e] at hm

/-- The four signs of the convex quadrilateral `HCDF`. -/
theorem Conf.quad_signs (H : Conf a h b c d f X P Q) :
    0 < sarea (ptH h) (ptC c) (ptD d) ∧ 0 < sarea (ptC c) (ptD d) (ptF f) ∧
      0 < sarea (ptD d) (ptF f) (ptH h) ∧ 0 < sarea (ptF f) (ptH h) (ptC c) := by
  refine ⟨?_, hex_CDF H.hN, hex_DFH H.hN, ?_⟩
  · rw [← sarea_cycle]; exact hex_CDH H.hN
  · rw [sarea_cycle]; exact hex_CFH H.hN

theorem Conf.W_le (H : Conf a h b c d f X P Q) : 1 - (h - d) * (c - f) ≤ 1 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  nlinarith [mul_nonneg (sub_nonneg.2 hdh) (sub_nonneg.2 hfc)]

/-- Theorem 2 of `ONE_CORNER_COMPLETION` excludes a central pair of a labelling of `HCDF`. -/
theorem Conf.central_false (H : Conf a h b c d f X P Q) (i0 i1 i2 i3 : ℕ)
    (hlt : ∀ x, ![i0, i1, i2, i3, 7, 8] x < 9) (hinj : Function.Injective ![i0, i1, i2, i3, 7, 8])
    (hq : CornerFamilies.ConvexQuad (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1)
      (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3))
    (hW : sarea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1) (cfg a h b c d f X P Q i2) +
      sarea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) =
        1 - (h - d) * (c - f))
    (hc : OneCornerCompletion.CentralPair (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1)
      (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) P Q) : False := by
  have k := OneCornerCompletion.theorem2 _ _ _ _ P Q (Or.inl hq) hc
  have hm := H.quad_min i0 i1 i2 i3 hlt hinj
  have h1 := hq.1
  have h3 : 0 < sarea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i2)
      (cfg a h b c d f X P Q i3) := by rw [← sarea_cycle]; exact hq.2.2.1
  have hW1 := H.W_le
  unfold OneCornerCompletion.quadArea at k
  rw [hW, abs_of_pos (by linarith)] at k
  linarith

/-- The six-point minimum is at least `7/64` of the area of `HCDF`. -/
theorem Conf.quad_hyp (H : Conf a h b c d f X P Q) (i0 i1 i2 i3 : ℕ)
    (hlt : ∀ x, ![i0, i1, i2, i3, 7, 8] x < 9) (hinj : Function.Injective ![i0, i1, i2, i3, 7, 8])
    (hW : sarea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1) (cfg a h b c d f X P Q i2) +
      sarea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) =
        1 - (h - d) * (c - f)) :
    7 / 64 * OneCornerCompletion.quadArea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1)
      (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) ≤
      minTriangleArea (OneCornerCompletion.quadConfig (cfg a h b c d f X P Q i0)
        (cfg a h b c d f X P Q i1) (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) P Q) := by
  have hm := H.quad_min i0 i1 i2 i3 hlt hinj
  have hW1 := H.W_le
  have hW0 : 0 ≤ 1 - (h - d) * (c - f) := by
    obtain ⟨q1, q2, q3, q4⟩ := H.quad_signs
    have : sarea (ptH h) (ptC c) (ptD d) + sarea (ptH h) (ptD d) (ptF f) =
        1 - (h - d) * (c - f) := by simp only [sarea]; ring
    have e := sarea_cycle (ptH h) (ptD d) (ptF f)
    linarith
  unfold OneCornerCompletion.quadArea
  rw [hW, abs_of_nonneg hW0]
  linarith

theorem iso_conv {P Q V V₁ V₂ V₃ : Point} (h : OneCornerCompletion.Isolates P Q V V₁ V₂ V₃) :
    sarea V P Q * sarea V₁ P Q < 0 ∧ sarea V P Q * sarea V₂ P Q < 0 ∧
      sarea V P Q * sarea V₃ P Q < 0 := by
  obtain ⟨h1, h2, h3⟩ := h
  have e : ∀ U, sarea P Q U = sarea U P Q := fun U => sarea_cycle U P Q
  rw [e, e] at h1; rw [e, e] at h2; rw [e, e] at h3
  exact ⟨h1, h2, h3⟩

theorem iso_conv_swap {P Q V V₁ V₂ V₃ : Point} (h : OneCornerCompletion.Isolates Q P V V₁ V₂ V₃) :
    sarea V P Q * sarea V₁ P Q < 0 ∧ sarea V P Q * sarea V₂ P Q < 0 ∧
      sarea V P Q * sarea V₃ P Q < 0 := by
  obtain ⟨h1, h2, h3⟩ := iso_conv h
  have e : ∀ U, sarea U Q P = -sarea U P Q := fun U => by simp only [sarea]; ring
  rw [e, e] at h1 h2 h3
  refine ⟨?_, ?_, ?_⟩ <;> linarith

theorem lt_6235 : ∀ x, ![(6 : ℕ), 2, 3, 5, 7, 8] x < 9 := by intro x; fin_cases x <;> decide
theorem lt_2356 : ∀ x, ![(2 : ℕ), 3, 5, 6, 7, 8] x < 9 := by intro x; fin_cases x <;> decide
theorem lt_3562 : ∀ x, ![(3 : ℕ), 5, 6, 2, 7, 8] x < 9 := by intro x; fin_cases x <;> decide
theorem lt_5623 : ∀ x, ![(5 : ℕ), 6, 2, 3, 7, 8] x < 9 := by intro x; fin_cases x <;> decide
theorem inj_6235 : Function.Injective ![(6 : ℕ), 2, 3, 5, 7, 8] := by decide
theorem inj_2356 : Function.Injective ![(2 : ℕ), 3, 5, 6, 7, 8] := by decide
theorem inj_3562 : Function.Injective ![(3 : ℕ), 5, 6, 2, 7, 8] := by decide
theorem inj_5623 : Function.Injective ![(5 : ℕ), 6, 2, 3, 7, 8] := by decide

theorem W_HCDF (h c d f : ℝ) : sarea (ptH h) (ptC c) (ptD d) + sarea (ptH h) (ptD d) (ptF f) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring
theorem W_CDFH (h c d f : ℝ) : sarea (ptC c) (ptD d) (ptF f) + sarea (ptC c) (ptF f) (ptH h) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring
theorem W_DFHC (h c d f : ℝ) : sarea (ptD d) (ptF f) (ptH h) + sarea (ptD d) (ptH h) (ptC c) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring
theorem W_FHCD (h c d f : ℝ) : sarea (ptF f) (ptH h) (ptC c) + sarea (ptF f) (ptC c) (ptD d) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring

/-- (i) of `claim_pair_cover`: no common diagonal sector. -/
theorem Conf.sectors (H : Conf a h b c d f X P Q) (_hPup : 0 < sarea (ptH h) (ptC c) P)
    (_hQup : 0 < sarea (ptH h) (ptC c) Q) :
    ¬ (InSectorHCJ h c d f P ∧ InSectorHCJ h c d f Q) ∧
      ¬ (InSectorCDJ h c d f P ∧ InSectorCDJ h c d f Q) ∧
      ¬ (InSectorDFJ h c d f P ∧ InSectorDFJ h c d f Q) ∧
      ¬ (InSectorFHJ h c d f P ∧ InSectorFHJ h c d f Q) := by
  obtain ⟨s1, s2, s3, s4⟩ := H.quad_signs
  have hl := lt_6235; have hl2 := lt_2356; have hl3 := lt_3562; have hl4 := lt_5623
  have hi := inj_6235; have hi2 := inj_2356; have hi3 := inj_3562; have hi4 := inj_5623
  have W1 := W_HCDF h c d f; have W2 := W_CDFH h c d f
  have W3 := W_DFHC h c d f; have W4 := W_FHCD h c d f
  have Q1 : CornerFamilies.ConvexQuad (ptH h) (ptC c) (ptD d) (ptF f) := ⟨s1, s2, s3, s4⟩
  have Q2 : CornerFamilies.ConvexQuad (ptC c) (ptD d) (ptF f) (ptH h) := ⟨s2, s3, s4, s1⟩
  have Q3 : CornerFamilies.ConvexQuad (ptD d) (ptF f) (ptH h) (ptC c) := ⟨s3, s4, s1, s2⟩
  have Q4 : CornerFamilies.ConvexQuad (ptF f) (ptH h) (ptC c) (ptD d) := ⟨s4, s1, s2, s3⟩
  refine ⟨?_, ?_, ?_, ?_⟩
  · rintro ⟨⟨a1, a2⟩, b1, b2⟩
    exact H.central_false 6 2 3 5 hl hi Q1 W1 ⟨Or.inl a1, Or.inl a2, Or.inl b1, Or.inl b2⟩
  · rintro ⟨⟨⟨a1, a2, a3⟩, a4⟩, ⟨b1, b2, b3⟩, b4⟩
    exact H.central_false 2 3 5 6 hl2 hi2 Q2 W2
      ⟨Or.inl a4, Or.inl ⟨a2, a3, a1⟩, Or.inl b4, Or.inl ⟨b2, b3, b1⟩⟩
  · rintro ⟨⟨⟨a1, a2, a3⟩, ⟨a4, a5, a6⟩⟩, ⟨b1, b2, b3⟩, ⟨b4, b5, b6⟩⟩
    exact H.central_false 3 5 6 2 hl3 hi3 Q3 W3
      ⟨Or.inl ⟨a2, a3, a1⟩, Or.inl ⟨a5, a6, a4⟩, Or.inl ⟨b2, b3, b1⟩, Or.inl ⟨b5, b6, b4⟩⟩
  · rintro ⟨⟨⟨a1, a2, a3⟩, ⟨a4, a5, a6⟩⟩, ⟨b1, b2, b3⟩, ⟨b4, b5, b6⟩⟩
    exact H.central_false 5 6 2 3 hl4 hi4 Q4 W4
      ⟨Or.inl ⟨a6, a4, a5⟩, Or.inl ⟨a3, a1, a2⟩, Or.inl ⟨b6, b4, b5⟩, Or.inl ⟨b3, b1, b2⟩⟩

/-- (ii) of `claim_pair_cover` for `HCD`: the line `PQ` isolates `C`. -/
theorem Conf.isoHCD (H : Conf a h b c d f X P Q) (_hPup : 0 < sarea (ptH h) (ptC c) P)
    (_hQup : 0 < sarea (ptH h) (ptC c) Q) :
    InTriangle P (ptH h) (ptC c) (ptD d) → InTriangle Q (ptH h) (ptC c) (ptD d) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptC c) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptC c) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptC c) P Q * sarea (ptF f) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.quad_signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have ne : ∀ {x : ℝ}, x ≠ 0 → x < 0 ∨ 0 < x := fun h => h.lt_or_gt
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have hl := lt_6235; have hi := inj_6235; have W1 := W_HCDF h c d f
  have Q1 : CornerFamilies.ConvexQuad (ptH h) (ptC c) (ptD d) (ptF f) := ⟨s1, s2, s3, s4⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptC c) (ptF f) P ≠ 0 := fun e => by rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases ne hne with hp | hp
  · have hq : 0 < sarea (ptC c) (ptF f) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptH h) (ptC c) (ptD d) (ptF f) P Q (Or.inl Q1)
      (H.quad_hyp 6 2 3 5 hl hi W1) (Or.inl ⟨a1, a2, a3⟩) (Or.inl ⟨b1, b2, b3⟩)
      (Or.inl ⟨a2, p4, by rw [sw]; linarith⟩) (Or.inl ⟨b1, hq, q5⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv k
    exact ⟨k1, k2, k3⟩
  · have hq : sarea (ptC c) (ptF f) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptH h) (ptC c) (ptD d) (ptF f) Q P (Or.inl Q1)
      (HS.quad_hyp 6 2 3 5 hl hi W1) (Or.inl ⟨b1, b2, b3⟩) (Or.inl ⟨a1, a2, a3⟩)
      (Or.inl ⟨b2, q4, by rw [swQ]; linarith⟩) (Or.inl ⟨a1, hp, p5⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv_swap k
    exact ⟨k1, k2, k3⟩

/-- (ii) of `claim_pair_cover` for `HDF`: the line `PQ` isolates `F`. -/
theorem Conf.isoHDF (H : Conf a h b c d f X P Q) (hPup : 0 < sarea (ptH h) (ptC c) P)
    (hQup : 0 < sarea (ptH h) (ptC c) Q) :
    InTriangle P (ptH h) (ptD d) (ptF f) → InTriangle Q (ptH h) (ptD d) (ptF f) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptF f) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptF f) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptF f) P Q * sarea (ptC c) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.quad_signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have ne : ∀ {x : ℝ}, x ≠ 0 → x < 0 ∨ 0 < x := fun h => h.lt_or_gt
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have hl3 := lt_3562; have hi3 := inj_3562; have W3 := W_DFHC h c d f
  have Q3 : CornerFamilies.ConvexQuad (ptD d) (ptF f) (ptH h) (ptC c) := ⟨s3, s4, s1, s2⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptC c) (ptF f) P ≠ 0 := fun e => by rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases ne hne with hp | hp
  · have hq : 0 < sarea (ptC c) (ptF f) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptD d) (ptF f) (ptH h) (ptC c) Q P (Or.inl Q3)
      (HS.quad_hyp 3 5 6 2 hl3 hi3 W3) (Or.inl ⟨b2, b3, b1⟩) (Or.inl ⟨a2, a3, a1⟩)
      (Or.inl ⟨b3, hQup, hq⟩) (Or.inl ⟨a2, by rw [sw]; linarith, p3⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv_swap k
    exact ⟨k2, k1, k3⟩
  · have hq : sarea (ptC c) (ptF f) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptD d) (ptF f) (ptH h) (ptC c) P Q (Or.inl Q3)
      (H.quad_hyp 3 5 6 2 hl3 hi3 W3) (Or.inl ⟨a2, a3, a1⟩) (Or.inl ⟨b2, b3, b1⟩)
      (Or.inl ⟨a3, hPup, hp⟩) (Or.inl ⟨b2, by rw [swQ]; linarith, q3⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv k
    exact ⟨k2, k1, k3⟩

/-- (ii) of `claim_pair_cover` for `HCF`: the line `PQ` isolates `H`. -/
theorem Conf.isoHCF (H : Conf a h b c d f X P Q) (_hPup : 0 < sarea (ptH h) (ptC c) P)
    (_hQup : 0 < sarea (ptH h) (ptC c) Q) :
    InTriangle P (ptH h) (ptC c) (ptF f) → InTriangle Q (ptH h) (ptC c) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptH h) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptH h) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptH h) P Q * sarea (ptD d) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.quad_signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have ne : ∀ {x : ℝ}, x ≠ 0 → x < 0 ∨ 0 < x := fun h => h.lt_or_gt
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have hl4 := lt_5623; have hi4 := inj_5623; have W4 := W_FHCD h c d f
  have Q4 : CornerFamilies.ConvexQuad (ptF f) (ptH h) (ptC c) (ptD d) := ⟨s4, s1, s2, s3⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptH h) (ptD d) P ≠ 0 := fun e => by rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases ne hne with hp | hp
  · have hq : 0 < sarea (ptH h) (ptD d) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptF f) (ptH h) (ptC c) (ptD d) P Q (Or.inl Q4)
      (H.quad_hyp 5 6 2 3 hl4 hi4 W4) (Or.inl ⟨a3, a1, a2⟩) (Or.inl ⟨b3, b1, b2⟩)
      (Or.inl ⟨a1, p3, by rw [sw]; linarith⟩) (Or.inl ⟨b3, hq, q4⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv k
    exact ⟨k2, k1, k3⟩
  · have hq : sarea (ptH h) (ptD d) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptF f) (ptH h) (ptC c) (ptD d) Q P (Or.inl Q4)
      (HS.quad_hyp 5 6 2 3 hl4 hi4 W4) (Or.inl ⟨b3, b1, b2⟩) (Or.inl ⟨a3, a1, a2⟩)
      (Or.inl ⟨b1, q3, by rw [swQ]; linarith⟩) (Or.inl ⟨a3, hp, p4⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv_swap k
    exact ⟨k2, k1, k3⟩

/-- (ii) of `claim_pair_cover` for `CDF`: the line `PQ` isolates `D`. -/
theorem Conf.isoCDF (H : Conf a h b c d f X P Q) (hPup : 0 < sarea (ptH h) (ptC c) P)
    (hQup : 0 < sarea (ptH h) (ptC c) Q) :
    InTriangle P (ptC c) (ptD d) (ptF f) → InTriangle Q (ptC c) (ptD d) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptD d) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptD d) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptD d) P Q * sarea (ptH h) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.quad_signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have ne : ∀ {x : ℝ}, x ≠ 0 → x < 0 ∨ 0 < x := fun h => h.lt_or_gt
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have hl2 := lt_2356; have hi2 := inj_2356; have W2 := W_CDFH h c d f
  have Q2 : CornerFamilies.ConvexQuad (ptC c) (ptD d) (ptF f) (ptH h) := ⟨s2, s3, s4, s1⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptH h) (ptD d) P ≠ 0 := fun e => by rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases ne hne with hp | hp
  · have hq : 0 < sarea (ptH h) (ptD d) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptC c) (ptD d) (ptF f) (ptH h) Q P (Or.inl Q2)
      (HS.quad_hyp 2 3 5 6 hl2 hi2 W2) (Or.inl ⟨b1, b2, b3⟩) (Or.inl ⟨a1, a2, a3⟩)
      (Or.inl ⟨b2, q5, hq⟩) (Or.inl ⟨a1, by rw [sw]; linarith, hPup⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv_swap k
    exact ⟨k1, k2, k3⟩
  · have hq : sarea (ptH h) (ptD d) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptC c) (ptD d) (ptF f) (ptH h) P Q (Or.inl Q2)
      (H.quad_hyp 2 3 5 6 hl2 hi2 W2) (Or.inl ⟨a1, a2, a3⟩) (Or.inl ⟨b1, b2, b3⟩)
      (Or.inl ⟨a2, p5, hp⟩) (Or.inl ⟨b1, by rw [swQ]; linarith, hQup⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv k
    exact ⟨k1, k2, k3⟩

/-- The two upper-pair exclusions (`claim_pair_cover`). -/
theorem Conf.pair_cover (H : Conf a h b c d f X P Q) (hPup : 0 < sarea (ptH h) (ptC c) P)
    (hQup : 0 < sarea (ptH h) (ptC c) Q) :
    (¬ (InSectorHCJ h c d f P ∧ InSectorHCJ h c d f Q) ∧
      ¬ (InSectorCDJ h c d f P ∧ InSectorCDJ h c d f Q) ∧
      ¬ (InSectorDFJ h c d f P ∧ InSectorDFJ h c d f Q) ∧
      ¬ (InSectorFHJ h c d f P ∧ InSectorFHJ h c d f Q)) ∧
    (InTriangle P (ptH h) (ptC c) (ptD d) → InTriangle Q (ptH h) (ptC c) (ptD d) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptC c) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptC c) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptC c) P Q * sarea (ptF f) P Q < 0) ∧
    (InTriangle P (ptH h) (ptD d) (ptF f) → InTriangle Q (ptH h) (ptD d) (ptF f) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptF f) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptF f) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptF f) P Q * sarea (ptC c) P Q < 0) ∧
    (InTriangle P (ptH h) (ptC c) (ptF f) → InTriangle Q (ptH h) (ptC c) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptH h) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptH h) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptH h) P Q * sarea (ptD d) P Q < 0) ∧
    (InTriangle P (ptC c) (ptD d) (ptF f) → InTriangle Q (ptC c) (ptD d) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptD d) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptD d) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptD d) P Q * sarea (ptH h) P Q < 0) :=
  ⟨H.sectors hPup hQup, H.isoHCD hPup hQup, H.isoHDF hPup hQup, H.isoHCF hPup hQup,
    H.isoCDF hPup hQup⟩

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-pair-cover`). The two configuration-specific
exclusions of the upper class behind the 884 base pairs (lines 146-173): if both `P, Q` are above
`HC`, (i) they do not lie in a common diagonal sector of `HCDF` (`ONE_CORNER_COMPLETION`
Theorem 2), and (ii) if only one diagonal separates them, the line `PQ` isolates the vertex of
their common containing triangle — `C` for `HCD`, `F` for `HDF`, `H` for `HCF`, `D` for `CDF` —
from the other three vertices of `HCDF` (`ONE_CORNER_COMPLETION` Theorem 3). (The other
filters of the cover are `claim_one_below_HC`, `claim_ears` and the sign rules
`SixBoundary.claim_pair_line_sign`, `eq14`; the resulting list has 884 base pairs.)
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 146-173.
Uses: ONE_CORNER_COMPLETION:Theorem2, ONE_CORNER_COMPLETION:Theorem3 -/
theorem claim_pair_cover {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q))
    (hPup : 0 < sarea (ptH h) (ptC c) P) (hQup : 0 < sarea (ptH h) (ptC c) Q) :
    (¬ (InSectorHCJ h c d f P ∧ InSectorHCJ h c d f Q) ∧
      ¬ (InSectorCDJ h c d f P ∧ InSectorCDJ h c d f Q) ∧
      ¬ (InSectorDFJ h c d f P ∧ InSectorDFJ h c d f Q) ∧
      ¬ (InSectorFHJ h c d f P ∧ InSectorFHJ h c d f Q)) ∧
    (InTriangle P (ptH h) (ptC c) (ptD d) → InTriangle Q (ptH h) (ptC c) (ptD d) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptC c) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptC c) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptC c) P Q * sarea (ptF f) P Q < 0) ∧
    (InTriangle P (ptH h) (ptD d) (ptF f) → InTriangle Q (ptH h) (ptD d) (ptF f) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptF f) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptF f) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptF f) P Q * sarea (ptC c) P Q < 0) ∧
    (InTriangle P (ptH h) (ptC c) (ptF f) → InTriangle Q (ptH h) (ptC c) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptH h) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptH h) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptH h) P Q * sarea (ptD d) P Q < 0) ∧
    (InTriangle P (ptC c) (ptD d) (ptF f) → InTriangle Q (ptC c) (ptD d) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptD d) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptD d) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptD d) P Q * sarea (ptH h) P Q < 0) :=
  (Conf.ofFam hfam hmin).pair_cover hPup hQup

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-refinement`). No actual sign is zero: every triangle
of three distinct points of the configuration has nonzero signed area (by (2)); hence the four
actual-area splits (base pairs 196, 260, 262, 274) and the three closed scalar cuts
(`d ≤ 1/2 ∨ d ≥ 1/2`, `c ≤ 7/8 ∨ c ≥ 7/8`, `q_x ≤ 1/2 ∨ q_x ≥ 1/2`) cover every configuration,
giving the `884 + 6 + 3 = 893` terminal cells. `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 175-200.
-/
theorem claim_refinement {a h b c d f : ℝ} {X P Q : Point}
    (_hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ i j k : Fin 9, i ≠ j → j ≠ k → i ≠ k →
      sarea (nConfig a h b c d f X P Q i) (nConfig a h b c d f X P Q j)
        (nConfig a h b c d f X P Q k) ≠ 0 := by
  intro i j k hij hjk hik
  exact sarea_ne_zero_of_min_pos (by linarith) i j k hij hjk hik

/-! ### Sections 3–4: the certificate package -/

/-- The variables `a, h, b, c, d, f, x_X, y_X, p_x, p_y, q_x, q_y` of the certificates. -/
def zeta (a h b c d f : ℝ) (X P Q : Point) : ℕ → ℝ
  | 0 => a
  | 1 => h
  | 2 => b
  | 3 => c
  | 4 => d
  | 5 => f
  | 6 => X.1
  | 7 => X.2
  | 8 => P.1
  | 9 => P.2
  | 10 => Q.1
  | 11 => Q.2
  | _ => 0

theorem ptEval_zeta (i : ℕ) :
    ptEval (zeta a h b c d f X P Q) Model.pt i = cfg a h b c d f X P Q i := by
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;> simp [ptEval, Model.pt, cfg, zeta]

theorem Conf.zeta_mem (H : Conf a h b c d f X P Q) (v : ℕ) :
    0 ≤ zeta a h b c d f X P Q v ∧ zeta a h b c d f X P Q v ≤ 1 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := H.hX
  have bP := H.boxP
  have bQ := H.boxQ
  rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;> simp only [zeta] <;>
    constructor <;> linarith [bP.1, bP.2.1, bP.2.2.1, bP.2.2.2, bQ.1, bQ.2.1, bQ.2.2.1, bQ.2.2.2]

/-- A signed triangle of the table holds, with increasing indices below `9`. -/
def FHolds (Pt : ℕ → Point) (g : SFact) : Prop :=
  g.1.1 < g.1.2.1 ∧ g.1.2.1 < g.1.2.2 ∧ g.1.2.2 < 9 ∧ SFact.Holds Pt g

/-- The interpretation of the facts of a cell. -/
def CHolds (z : ℕ → ℝ) (Pt : ℕ → Point) : Model.Fact → Prop
  | .sgn g => FHolds Pt g
  | .cut e => 0 ≤ e.eval z

theorem sgns_hold {z : ℕ → ℝ} {Pt : ℕ → Point} :
    ∀ {fs : List Model.Fact}, AllHold (CHolds z Pt) fs → AllHold (FHolds Pt) (Model.sgns fs)
  | [], _ => fun _ h => absurd h List.not_mem_nil
  | .sgn g :: fs, h => by
    intro x hx
    simp only [Model.sgns, List.mem_cons] at hx
    rcases hx with rfl | hx
    · exact h _ List.mem_cons_self
    · exact sgns_hold (fun y hy => h y (List.mem_cons_of_mem _ hy)) x hx
  | .cut e :: fs, h => by
    intro x hx
    simp only [Model.sgns] at hx
    exact sgns_hold (fun y hy => h y (List.mem_cons_of_mem _ hy)) x hx

theorem cuts_hold {z : ℕ → ℝ} {Pt : ℕ → Point} :
    ∀ {fs : List Model.Fact}, AllHold (CHolds z Pt) fs → ∀ e ∈ Model.cuts fs, 0 ≤ e.eval z
  | [], _ => fun _ h => absurd h List.not_mem_nil
  | .sgn g :: fs, h => by
    intro x hx
    simp only [Model.cuts] at hx
    exact cuts_hold (fun y hy => h y (List.mem_cons_of_mem _ hy)) x hx
  | .cut e :: fs, h => by
    intro x hx
    simp only [Model.cuts, List.mem_cons] at hx
    rcases hx with rfl | hx
    · exact h _ List.mem_cons_self
    · exact cuts_hold (fun y hy => h y (List.mem_cons_of_mem _ hy)) x hx

/-- The point `Pt m` has the word `w` of the model (11): `[VᵢVⱼR] > 0` exactly when
`wsign w i j`. -/
def WordAt (Pt : ℕ → Point) (m w : ℕ) : Prop :=
  ∀ i j : ℕ, i < 7 → j < 7 → i ≠ j → (0 < sarea (Pt i) (Pt j) (Pt m) ↔ Model.wsign w i j = true)

theorem wordAt_of_radial {m w : ℕ} {R : Point} (hm : cfg a h b c d f X P Q m = R)
    (hr : HasRadialWord (heptagon a h b c d f X) R (fun i => Model.wordAt w i)) :
    WordAt (cfg a h b c d f X P Q) m w := by
  intro i j hi hj hij
  have h1 : 1 ≤ (j + 7 - i) % 7 := by omega
  have h2 : (j + 7 - i) % 7 < 7 := Nat.mod_lt _ (by norm_num)
  have e : cyc (⟨i, hi⟩ : Fin 7) ((j + 7 - i) % 7) = ⟨j, hj⟩ :=
    Fin.ext (by show (i + (j + 7 - i) % 7) % 7 = j; omega)
  have := hr ⟨i, hi⟩ ((j + 7 - i) % 7) h1 h2
  rw [e, heptagon_eq (P := P) (Q := Q), heptagon_eq (P := P) (Q := Q)] at this
  rw [hm]
  refine this.trans ?_
  simp only [Model.wsign, Nat.ble_eq]

theorem orient_ne_zero {sg : Bool} {x : ℝ} (h : OrientHolds sg x) : x ≠ 0 := by
  cases sg <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h <;>
    [exact h.ne; exact h.ne']

theorem orient_of_ne {x : ℝ} (hx : x ≠ 0) : OrientHolds (decide (0 < x)) x := by
  rcases hx.lt_or_gt with h | h
  · simp [OrientHolds, not_lt.2 h.le, h]
  · simp [OrientHolds, h]

theorem orient_unique {s t : Bool} {x : ℝ} (hs : OrientHolds s x) (ht : OrientHolds t x) :
    s = t := by
  cases s <;> cases t <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at hs ht
    <;> first | rfl | (exfalso; linarith)

theorem WordAt.orient (H : Conf a h b c d f X P Q) {m w : ℕ} (hm : m = 7 ∨ m = 8)
    (W : WordAt (cfg a h b c d f X P Q) m w) {i j : ℕ} (hi : i < 7) (hj : j < 7) (hij : i ≠ j) :
    OrientHolds (Model.wsign w i j)
      (sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j) (cfg a h b c d f X P Q m)) := by
  have hne := H.ne i j m (by omega) (by omega) (by omega) hij (by omega) (by omega)
  cases hw : Model.wsign w i j
  · have : ¬ 0 < sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
        (cfg a h b c d f X P Q m) := fun h => by rw [W i j hi hj hij, hw] at h; exact absurd h (by simp)
    simp only [OrientHolds, Bool.false_eq_true, ite_false]
    exact lt_of_le_of_ne (not_lt.1 this) hne
  · simp only [OrientHolds, ite_true]
    exact (W i j hi hj hij).2 hw

/-! #### The strengthened triangle costs (18) -/

/-- An oriented actual triangle has oriented doubled area at least `s`. -/
theorem Conf.orient_area (H : Conf a h b c d f X P Q) {sg : Bool} {i j l : ℕ} (hi : i < 9)
    (hj : j < 9) (hl : l < 9)
    (hs : OrientHolds sg (sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l))) :
    8 / 73 ≤ sgArea sg (sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l)) := by
  have hne := orient_ne_zero hs
  rw [sgArea_eq_abs hs]
  refine H.area i j l hi hj hl ?_ ?_ ?_ <;> rintro rfl <;> exact hne (by unfold sarea; ring)

theorem orient_idx_ne {Pt : ℕ → Point} {sg : Bool} {i j l : ℕ}
    (hs : OrientHolds sg (sarea (Pt i) (Pt j) (Pt l))) : i ≠ j ∧ j ≠ l ∧ i ≠ l := by
  have hne := orient_ne_zero hs
  refine ⟨?_, ?_, ?_⟩ <;> rintro rfl <;> exact hne (by unfold sarea; ring)

/-- `ρ = 49/60 < 2(4 + 2√3)(4/73)`: an actual triangle with two further points inside. -/
theorem Conf.two_inside (H : Conf a h b c d f X P Q) {i j l j₁ j₂ : ℕ} (hi : i < 9) (hj : j < 9)
    (hl : l < 9) (hj₁ : j₁ < 9) (hj₂ : j₂ < 9) (hd : [i, j, l, j₁, j₂].Nodup)
    (h₁ : CornerFamilies.InsideTriangle (cfg a h b c d f X P Q j₁) (cfg a h b c d f X P Q i)
      (cfg a h b c d f X P Q j) (cfg a h b c d f X P Q l))
    (h₂ : CornerFamilies.InsideTriangle (cfg a h b c d f X P Q j₂) (cfg a h b c d f X P Q i)
      (cfg a h b c d f X P Q j) (cfg a h b c d f X P Q l)) :
    49 / 60 ≤ |sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l)| := by
  have hm := H.sub (by norm_num) ![i, j, l, j₁, j₂] (by intro x; fin_cases x <;> simpa)
    (by
      intro x y hxy
      simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or] at hd
      fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;> omega)
  have e1 : (fun x => cfg a h b c d f X P Q (![i, j, l, j₁, j₂] x)) =
      ![cfg a h b c d f X P Q i, cfg a h b c d f X P Q j, cfg a h b c d f X P Q l,
        cfg a h b c d f X P Q j₁, cfg a h b c d f X P Q j₂] := by
    funext x; fin_cases x <;> rfl
  rw [e1] at hm
  have := CornerFamilies.twoInteriorPointLemma _ _ _ _ _ h₁ h₂ (4 / 73) (by norm_num) hm
  rw [triangleArea_eq] at this
  have h3 : (1.732 : ℝ) < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  nlinarith

/-- **(18)**: the strengthened cost of every signed triangle of the table is nonnegative: `s`
for no certified inside point, `3s` for one (subdivision), `ρ` for two (the two-interior-point
lemma). -/
theorem Conf.cost_nonneg (H : Conf a h b c d f X P Q) {tb : List SFact}
    (htb : AllHold (FHolds (cfg a h b c d f X P Q)) tb) {g : SFact} (hg : g ∈ tb) :
    0 ≤ (costAtom Model.pt Model.bnd g (insideList tb [7, 8] g).length).eval
      (zeta a h b c d f X P Q) := by
  rw [eval_costAtom]
  simp only [ptEval_zeta]
  obtain ⟨g1, g2, g3, gs⟩ := htb g hg
  have htb' : AllHold (SFact.Holds (cfg a h b c d f X P Q)) tb := fun x hx => (htb x hx).2.2.2
  have harea := H.orient_area (by omega) (by omega) g3 gs
  have hLnd : (insideList tb [7, 8] g).Nodup := List.Nodup.filter _ (by decide)
  have hmem : ∀ j ∈ insideList tb [7, 8] g, j < 9 := by
    intro j hj
    have := (insideList_sound htb' hj).1
    simp only [List.mem_cons, List.not_mem_nil, or_false] at this; omega
  rcases hn : (insideList tb [7, 8] g).length with _ | _ | n
  · simp only [Model.bnd, ite_true]; push_cast; linarith
  · obtain ⟨j, hj⟩ := List.exists_mem_of_length_pos (show 0 < (insideList tb [7, 8] g).length
      by omega)
    obtain ⟨-, o1, o2, o3⟩ := insideList_sound htb' hj
    have hj9 := hmem j hj
    have q1 := H.orient_area (by omega) (by omega) hj9 o1
    have q2 := H.orient_area (by omega) g3 hj9 o2
    have q3 := H.orient_area g3 (by omega) hj9 o3
    rw [sgArea_eq_abs o1] at q1; rw [sgArea_eq_abs o2] at q2; rw [sgArea_eq_abs o3] at q3
    have := three_le_sgArea (e := 8 / 73) o1 o2 o3 q1 q2 q3
    simp only [Model.bnd]; norm_num; linarith
  · obtain ⟨j₁, j₂, rest, hL⟩ : ∃ j₁ j₂ rest, insideList tb [7, 8] g = j₁ :: j₂ :: rest := by
      rcases hL : insideList tb [7, 8] g with _ | ⟨j₁, _ | ⟨j₂, rest⟩⟩
      · rw [hL] at hn; simp at hn
      · rw [hL] at hn; simp at hn
      · exact ⟨j₁, j₂, rest, rfl⟩
    have hj₁ : j₁ ∈ insideList tb [7, 8] g := by rw [hL]; simp
    have hj₂ : j₂ ∈ insideList tb [7, 8] g := by rw [hL]; simp
    have h12 : j₁ ≠ j₂ := by
      rw [hL] at hLnd; simp only [List.nodup_cons, List.mem_cons, not_or] at hLnd
      exact hLnd.1.1
    obtain ⟨-, o1, o2, o3⟩ := insideList_sound htb' hj₁
    obtain ⟨-, p1, p2, p3⟩ := insideList_sound htb' hj₂
    obtain ⟨-, n1, n2⟩ := orient_idx_ne o1
    obtain ⟨-, n3, -⟩ := orient_idx_ne o2
    obtain ⟨-, m1, m2⟩ := orient_idx_ne p1
    obtain ⟨-, m3, -⟩ := orient_idx_ne p2
    have := H.two_inside (by omega) (by omega) g3 (hmem _ hj₁) (hmem _ hj₂)
      (by simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
        List.nodup_nil, and_true, not_false_eq_true]; omega)
      (inTriangle_of_orient o1 o2 o3) (inTriangle_of_orient p1 p2 p3)
    rw [← sgArea_eq_abs gs] at this
    simp only [Model.bnd]; norm_num; linarith

/-! #### Cells -/

/-- A cell of the cover: a configuration of N6-03 under `f ≤ d` whose interior points have the
words `p ≤ q` of a base pair, with its initial signs. -/
structure Cell (a h b c d f : ℝ) (X P Q : Point) (p q : ℕ) : Prop where
  conf : Conf a h b c d f X P Q
  hfd : f ≤ d
  key : (p, q) ∈ Model.cases
  wp : WordAt (cfg a h b c d f X P Q) 7 p
  wq : WordAt (cfg a h b c d f X P Q) 8 q
  base : AllHold (FHolds (cfg a h b c d f X P Q)) (Model.baseSigns p q)

variable {p q : ℕ}

theorem mem_cases_iff :
    (p, q) ∈ Model.cases ↔ p < 52 ∧ q < 52 ∧ p ≤ q ∧ Model.filterOK p q = true := by
  simp only [Model.cases, List.mem_flatMap, List.mem_map, List.mem_filter, List.mem_range,
    Bool.and_eq_true, decide_eq_true_eq, Prod.mk.injEq]
  constructor
  · rintro ⟨i, hi, j, ⟨hj, hij, hf⟩, rfl, rfl⟩; exact ⟨hi, hj, hij, hf⟩
  · rintro ⟨hi, hj, hij, hf⟩; exact ⟨p, hi, q, ⟨hj, hij, hf⟩, rfl, rfl⟩

/-- The upper test of a word (`[HCR] > 0` exactly when `upper w`). -/
theorem WordAt.upper {Pt : ℕ → Point} {m w : ℕ} (W : WordAt Pt m w) :
    0 < sarea (Pt 6) (Pt 2) (Pt m) ↔ Model.upper w = true :=
  W 6 2 (by norm_num) (by norm_num) (by norm_num)

theorem Cell.upperP (C : Cell a h b c d f X P Q p q) :
    0 < sarea (ptH h) (ptC c) P ↔ Model.upper p = true := C.wp.upper

theorem Cell.upperQ (C : Cell a h b c d f X P Q p q) :
    0 < sarea (ptH h) (ptC c) Q ↔ Model.upper q = true := C.wq.upper

theorem Cell.lowP (C : Cell a h b c d f X P Q p q) (hu : Model.upper p = false) :
    sarea (ptH h) (ptC c) P < 0 := by
  have hne := C.conf.ne 6 2 7
  have : ¬ 0 < sarea (ptH h) (ptC c) P := fun h => by rw [C.upperP, hu] at h; exact absurd h (by simp)
  exact lt_of_le_of_ne (not_lt.1 this) hne

theorem Cell.lowQ (C : Cell a h b c d f X P Q p q) (hu : Model.upper q = false) :
    sarea (ptH h) (ptC c) Q < 0 := by
  have hne := C.conf.ne 6 2 8
  have : ¬ 0 < sarea (ptH h) (ptC c) Q := fun h => by rw [C.upperQ, hu] at h; exact absurd h (by simp)
  exact lt_of_le_of_ne (not_lt.1 this) hne

/-- Some word of a base pair is upper (the first filter). -/
theorem Cell.some_upper (C : Cell a h b c d f X P Q p q) :
    Model.upper p = true ∨ Model.upper q = true := by
  have := (mem_cases_iff.1 C.key).2.2.2
  simp only [Model.filterOK, Bool.and_eq_true, Bool.or_eq_true] at this
  exact this.1.1.1

/-! #### The atoms are nonnegative -/

theorem mixed_upper (hm : Model.mixed p q = true) (hu : Model.upper p = true) :
    Model.upper q = false := by
  revert hm; unfold Model.mixed; rw [hu]; cases Model.upper q <;> decide

theorem mixed_upper' (hm : Model.mixed p q = true) (hu : Model.upper q = true) :
    Model.upper p = false := by
  revert hm; unfold Model.mixed; rw [hu]; cases Model.upper p <;> decide

theorem not_mixed (hm : Model.mixed p q = false) :
    Model.upper p = true ∧ Model.upper q = true := by
  revert hm; unfold Model.mixed; cases Model.upper p <;> cases Model.upper q <;> decide

theorem Cell.common_nonneg (C : Cell a h b c d f X P Q p q) :
    ∀ e ∈ Model.commonFactors, 0 ≤ e.eval (zeta a h b c d f X P Q) := by
  have H := C.conf
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := H.hX
  obtain ⟨-, -, -, -, a5, b8, a8, h4, c4, hL, hM⟩ := H.anchor
  obtain ⟨k1, k2, -, k4, k5⟩ := H.cap C.hfd
  obtain ⟨p1, p2, p3, p4⟩ := H.boxP
  obtain ⟨q1, q2, q3, q4⟩ := H.boxQ
  have := C.hfd
  simp only [Model.commonFactors, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true, eval_minus, eval_v, eval_k, eval_one, zeta, Model.sQ]
  push_cast
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

theorem Cell.mixed_nonneg (C : Cell a h b c d f X P Q p q) :
    ∀ e ∈ (if Model.mixed p q then (if Model.upper p then Model.mixedFactors 10 11
      else Model.mixedFactors 8 9) else []), 0 ≤ e.eval (zeta a h b c d f X P Q) := by
  have H := C.conf
  cases hm : Model.mixed p q
  · simp
  · cases hu : Model.upper p
    · obtain ⟨-, -, m1, m2, m3, m4, m5⟩ := H.mixedP (C.lowP hu)
      simp only [ite_true, Bool.false_eq_true, ite_false, Model.mixedFactors,
        List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true, and_true,
        eval_minus, eval_v, eval_k, zeta]
      push_cast
      refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> linarith
    · have hq : Model.upper q = false := mixed_upper hm hu
      obtain ⟨-, -, m1, m2, m3, m4, m5⟩ := H.swap.mixedP (C.lowQ hq)
      simp only [ite_true, Model.mixedFactors,
        List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true, and_true,
        eval_minus, eval_v, eval_k, zeta]
      push_cast
      refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> linarith

theorem Cell.extra_nonneg (C : Cell a h b c d f X P Q p q) :
    ∀ e ∈ Model.extra p q, 0 ≤ e.eval (zeta a h b c d f X P Q) := by
  have H := C.conf
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨-, -, -, a4, a5, -⟩ := H.anchor
  obtain ⟨-, -, hδ, -⟩ := H.cap C.hfd
  obtain ⟨⟨e1, e2, e3, e4, e5, e6⟩, -⟩ := H.ears
  simp only [sarea] at e1 e2 e3 e4 e5 e6
  have hW : (Model.mixed p q = true → 4 * (8 / 73) ≤ 1 - (h - d) * (c - f) ∧ 7 / 11 ≤ h * c) ∧
      (Model.mixed p q = false → 8 * (8 / 73) ≤ 1 - (h - d) * (c - f)) := by
    constructor
    · intro hm
      rcases C.some_upper with hu | hu
      · have hq : Model.upper q = false := mixed_upper hm hu
        exact ⟨H.fanP (C.upperP.2 hu), by
          obtain ⟨k1, k2, -⟩ := H.swap.mixedP (C.lowQ hq); linarith⟩
      · have hp : Model.upper p = false := mixed_upper' hm hu
        exact ⟨H.swap.fanP (C.upperQ.2 hu), by
          obtain ⟨k1, k2, -⟩ := H.mixedP (C.lowP hp); linarith⟩
    · intro hm
      have hm := not_mixed hm
      exact H.W_upper (C.upperP.2 hm.1) (C.upperQ.2 hm.2)
  simp only [Model.extra, Model.ears, List.map_cons, List.map_nil, List.cons_append,
    List.nil_append, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
    and_true, eval_minus, eval_times, eval_v, eval_k, eval_one, eval_esarea, Model.pt, eval_zero,
    zeta, Model.sQ]
  simp only [sarea]
  cases hm : Model.mixed p q
  · have := hW.2 hm
    simp only [Bool.false_eq_true, ite_false]
    push_cast
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> nlinarith
  · obtain ⟨w1, w2⟩ := hW.1 hm
    simp only [ite_true]
    push_cast
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> nlinarith

theorem Cell.atoms_nonneg (C : Cell a h b c d f X P Q p q) (fs : List Model.Fact)
    (hfs : AllHold (CHolds (zeta a h b c d f X P Q) (cfg a h b c d f X P Q)) fs) :
    ∀ e ∈ Model.atoms p q fs, 0 ≤ e.eval (zeta a h b c d f X P Q) := by
  intro e he
  simp only [Model.atoms, Model.factors, List.mem_append, List.mem_map] at he
  rcases he with (((he | he) | he) | ⟨g, hg, rfl⟩) | he
  · exact C.common_nonneg e he
  · exact C.mixed_nonneg e he
  · exact cuts_hold hfs e he
  · exact C.conf.cost_nonneg (C.base.append (sgns_hold hfs)) (List.mem_append.2 hg)
  · exact C.extra_nonneg e he

theorem Cell.branch (C : Cell a h b c d f X P Q p q) (fs : List Model.Fact) (s : Model.Split) :
    ∃ br ∈ (Model.spec p q).branches fs s,
      AllHold (CHolds (zeta a h b c d f X P Q) (cfg a h b c d f X P Q)) br := by
  cases s with
  | tri i j l =>
    simp only [Model.spec, Model.branches]
    split_ifs with hv
    · obtain ⟨hij, hjl, hl9⟩ := hv
      have hne := C.conf.ne i j l (by omega) (by omega) hl9 (by omega) (by omega) (by omega)
      obtain ⟨br, hbr, hall⟩ := signBranches_exhaustive (P := cfg a h b c d f X P Q)
        (t := (i, j, l)) hne
      refine ⟨br.map Model.Fact.sgn, List.mem_map.2 ⟨br, hbr, rfl⟩, ?_⟩
      intro x hx
      obtain ⟨g, hg, rfl⟩ := List.mem_map.1 hx
      show FHolds (cfg a h b c d f X P Q) g
      refine ⟨?_, ?_, ?_, hall g hg⟩ <;>
      · simp only [signBranches, List.mem_cons, List.not_mem_nil, or_false] at hbr
        rcases hbr with rfl | rfl <;> simp at hg <;> subst hg <;> simp <;> omega
    · exact ⟨[], by simp, by simp [AllHold]⟩
  | cut i r =>
    simp only [Model.spec, Model.branches]
    obtain ⟨br, hbr, hall⟩ := cutBranches_exhaustive (zeta a h b c d f X P Q) (v i) r
    refine ⟨br.map Model.Fact.cut, List.mem_map.2 ⟨br, hbr, rfl⟩, ?_⟩
    intro x hx
    obtain ⟨e, he, rfl⟩ := List.mem_map.1 hx
    exact hall e he

/-- **The certificate package**: every cell is impossible. The kernel has checked the cell tree
of every base pair (`Trees.allCases_ok`); the atoms are nonnegative and the splits exhaustive at
every cell, so `Cover.checkTree_sound` applies. -/
theorem Cell.false (C : Cell a h b c d f X P Q p q) : False := by
  have hk : (p, q) ∈ Trees.allCases.map Prod.fst := Trees.allCases_keys ▸ C.key
  obtain ⟨x, hx, hxk⟩ := List.mem_map.1 hk
  have hT : checkTree (Model.spec p q) [] x.2 = true := by
    have := Trees.allCases_ok x hx
    rw [hxk] at this; exact this
  have hcl : ∀ (fs : List Model.Fact) (tag : ℕ),
      AllHold (CHolds (zeta a h b c d f X P Q) (cfg a h b c d f X P Q)) fs →
      (Model.spec p q).closedOK fs tag = true → False := by
    intro fs tag _ h; exact absurd h (by simp [Model.spec])
  exact checkTree_sound (σ := Model.spec p q)
    (Holds := CHolds (zeta a h b c d f X P Q) (cfg a h b c d f X P Q)) C.conf.zeta_mem
    (fun fs hfs => C.atoms_nonneg fs hfs) (fun fs s _ => C.branch fs s) hcl
    (fs := []) (fun _ h => absurd h List.not_mem_nil) hT

/-! #### The initial signs of a base pair -/

theorem lexTriples_valid : ∀ t ∈ Model.lexTriples, t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧ t.2.2 < 9 := by
  decide +kernel

/-- `Model.forced` as a function of the four diagonal signs. -/
def forcedB (pHD qHD pCF qCF : Bool) (v : ℕ) : Option Bool :=
  if pHD == qHD && pCF == qCF then none
  else if pHD != qHD && pCF != qCF then
    if v = 6 then some (!pHD) else if v = 3 then some pHD else if v = 2 then some (!pCF)
    else if v = 5 then some pCF else none
  else if pHD == qHD then
    let iso := if pHD then 5 else 2
    let side := if iso = 5 then pCF else !pCF
    if v = iso then some side else if v = 6 ∨ v = 2 ∨ v = 3 ∨ v = 5 then some (!side) else none
  else
    let iso := if pCF then 6 else 3
    let side := if iso = 6 then !pHD else pHD
    if v = iso then some side else if v = 6 ∨ v = 2 ∨ v = 3 ∨ v = 5 then some (!side) else none

theorem forced_eq (p q v : ℕ) : Model.forced p q v = forcedB (Model.wsign p 6 3)
    (Model.wsign q 6 3) (Model.wsign p 2 5) (Model.wsign q 2 5) v := rfl

theorem forcedB_none {b1 b2 b3 b4 : Bool} {v : ℕ} (h6 : v ≠ 6) (h2 : v ≠ 2) (h3 : v ≠ 3)
    (h5 : v ≠ 5) : forcedB b1 b2 b3 b4 v = none := by
  unfold forcedB
  cases b1 <;> cases b2 <;> cases b3 <;> cases b4 <;> simp [h6, h2, h3, h5]

/-- The Boolean content of (14) and of Theorem 3 of `ONE_CORNER_COMPLETION`, for the diagonal
signs `bP6 = [HDP] > 0`, …, `bQ2 = [CFQ] > 0` and the pair-line signs `s_v = [V_v P Q] > 0`. -/
def ForcedRel (bP6 bQ6 bP2 bQ2 s6 s2 s3 s5 : Bool) : Prop :=
  (bP6 ≠ bQ6 → s6 = !bP6 ∧ s3 = bP6) ∧ (bP2 ≠ bQ2 → s2 = !bP2 ∧ s5 = bP2) ∧
  (bP6 = true → bQ6 = true → bP2 ≠ bQ2 → s5 ≠ s6 ∧ s5 ≠ s3 ∧ s5 ≠ s2) ∧
  (bP6 = false → bQ6 = false → bP2 ≠ bQ2 → s2 ≠ s6 ∧ s2 ≠ s3 ∧ s2 ≠ s5) ∧
  (bP2 = true → bQ2 = true → bP6 ≠ bQ6 → s6 ≠ s2 ∧ s6 ≠ s5 ∧ s6 ≠ s3) ∧
  (bP2 = false → bQ2 = false → bP6 ≠ bQ6 → s3 ≠ s2 ∧ s3 ≠ s5 ∧ s3 ≠ s6)

set_option synthInstance.maxSize 2048 in
/-- The forced signs are the true pair-line signs (a finite check; the decidability instance of
this proposition needs more than the default 128 instance nodes). -/
theorem forced_bool : ∀ bP6 bQ6 bP2 bQ2 s6 s2 s3 s5 : Bool,
    ForcedRel bP6 bQ6 bP2 bQ2 s6 s2 s3 s5 →
    (forcedB bP6 bQ6 bP2 bQ2 6 = none ∨ forcedB bP6 bQ6 bP2 bQ2 6 = some s6) ∧
    (forcedB bP6 bQ6 bP2 bQ2 2 = none ∨ forcedB bP6 bQ6 bP2 bQ2 2 = some s2) ∧
    (forcedB bP6 bQ6 bP2 bQ2 3 = none ∨ forcedB bP6 bQ6 bP2 bQ2 3 = some s3) ∧
    (forcedB bP6 bQ6 bP2 bQ2 5 = none ∨ forcedB bP6 bQ6 bP2 bQ2 5 = some s5) := by
  unfold ForcedRel; decide

theorem sgn_cases {x : ℝ} (hx : x ≠ 0) :
    (decide (0 < x) = true ∧ 0 < x) ∨ (decide (0 < x) = false ∧ x < 0) := by
  rcases hx.lt_or_gt with h | h
  · right; exact ⟨by simp [not_lt.2 h.le], h⟩
  · left; exact ⟨by simp [h], h⟩

theorem dec_ne_of_mul_neg {x y : ℝ} (h : x * y < 0) : decide (0 < x) ≠ decide (0 < y) := by
  intro e
  by_cases hx : 0 < x
  · have hy : 0 < y := by simpa [hx] using e.symm
    nlinarith [mul_pos hx hy]
  · have hy : ¬ 0 < y := by simpa [hx] using e.symm
    push Not at hx hy
    nlinarith [mul_nonneg_of_nonpos_of_nonpos hx hy]

theorem mul_neg_of_dec_ne {x y : ℝ} (hx : x ≠ 0) (hy : y ≠ 0)
    (h : decide (0 < x) ≠ decide (0 < y)) : x * y < 0 := by
  rcases sgn_cases hx with ⟨e1, h1⟩ | ⟨e1, h1⟩ <;> rcases sgn_cases hy with ⟨e2, h2⟩ | ⟨e2, h2⟩
  · exact absurd (e1.trans e2.symm) h
  · nlinarith [mul_pos h1 (neg_pos.2 h2)]
  · nlinarith [mul_pos (neg_pos.2 h1) h2]
  · exact absurd (e1.trans e2.symm) h

/-- Two upper points in the same diagonal sector are impossible. -/
theorem Conf.sector_excl (H : Conf a h b c d f X P Q) (hPu : 0 < sarea (ptH h) (ptC c) P)
    (hQu : 0 < sarea (ptH h) (ptC c) Q)
    (e6 : decide (0 < sarea (ptH h) (ptD d) P) = decide (0 < sarea (ptH h) (ptD d) Q))
    (e2 : decide (0 < sarea (ptC c) (ptF f) P) = decide (0 < sarea (ptC c) (ptF f) Q)) :
    False := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have Cv := (H.pair_cover hPu hQu).1
  have sw : ∀ (U V R : Point), sarea V U R = -sarea U V R := fun U V R => by
    simp only [sarea]; ring
  rcases sgn_cases (H.ne 6 3 7) with ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
    rcases sgn_cases (H.ne 6 3 8) with ⟨b1, b2⟩ | ⟨b1, b2⟩ <;>
    rcases sgn_cases (H.ne 2 5 7) with ⟨c1, c2⟩ | ⟨c1, c2⟩ <;>
    rcases sgn_cases (H.ne 2 5 8) with ⟨d1, d2⟩ | ⟨d1, d2⟩ <;>
    simp only [cfg] at a1 a2 b1 b2 c1 c2 d1 d2 <;>
    (try (rw [a1, b1] at e6; exact absurd e6 (by decide))) <;>
    (try (rw [c1, d1] at e2; exact absurd e2 (by decide)))
  · exact Cv.2.2.2 ⟨⟨⟨a2, p4, p5⟩, ⟨hPu, c2, p5⟩⟩, ⟨⟨b2, q4, q5⟩, ⟨hQu, d2, q5⟩⟩⟩
  · exact Cv.2.2.1 ⟨⟨⟨a2, p4, p5⟩, ⟨p3, p4, by rw [sw]; linarith⟩⟩,
      ⟨⟨b2, q4, q5⟩, ⟨q3, q4, by rw [sw]; linarith⟩⟩⟩
  · exact Cv.1 ⟨⟨⟨hPu, p3, by rw [sw]; linarith⟩, ⟨hPu, c2, p5⟩⟩,
      ⟨⟨hQu, q3, by rw [sw]; linarith⟩, ⟨hQu, d2, q5⟩⟩⟩
  · exact Cv.2.1 ⟨⟨⟨hPu, p3, by rw [sw]; linarith⟩, ⟨p3, p4, by rw [sw]; linarith⟩⟩,
      ⟨⟨hQu, q3, by rw [sw]; linarith⟩, ⟨q3, q4, by rw [sw]; linarith⟩⟩⟩

/-- (14) and Theorem 3 in Boolean form. -/
theorem Conf.forced_rel (H : Conf a h b c d f X P Q) (hPu : 0 < sarea (ptH h) (ptC c) P)
    (hQu : 0 < sarea (ptH h) (ptC c) Q) :
    ForcedRel (decide (0 < sarea (ptH h) (ptD d) P)) (decide (0 < sarea (ptH h) (ptD d) Q))
      (decide (0 < sarea (ptC c) (ptF f) P)) (decide (0 < sarea (ptC c) (ptF f) Q))
      (decide (0 < sarea (ptH h) P Q)) (decide (0 < sarea (ptC c) P Q))
      (decide (0 < sarea (ptD d) P Q)) (decide (0 < sarea (ptF f) P Q)) := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have E := eq14 ⟨hPu, p3, p4, p5⟩ ⟨hQu, q3, q4, q5⟩
  have Cv := (H.pair_cover hPu hQu).2
  have sw : ∀ (U V R : Point), sarea V U R = -sarea U V R := fun U V R => by
    simp only [sarea]; ring
  have nHDP : sarea (ptH h) (ptD d) P ≠ 0 := H.ne 6 3 7
  have nHDQ : sarea (ptH h) (ptD d) Q ≠ 0 := H.ne 6 3 8
  have nCFP : sarea (ptC c) (ptF f) P ≠ 0 := H.ne 2 5 7
  have nCFQ : sarea (ptC c) (ptF f) Q ≠ 0 := H.ne 2 5 8
  have dt : ∀ {x : ℝ}, 0 < x → decide (0 < x) = true := fun h => by simp [h]
  have df : ∀ {x : ℝ}, x < 0 → decide (0 < x) = false := fun h => by simp [not_lt.2 h.le]
  have tpos : ∀ {x : ℝ}, decide (0 < x) = true → 0 < x := fun h => of_decide_eq_true h
  have tneg : ∀ {x : ℝ}, x ≠ 0 → decide (0 < x) = false → x < 0 := fun hx h =>
    lt_of_le_of_ne (not_lt.1 (of_decide_eq_false h)) hx
  refine ⟨fun hne => ?_, fun hne => ?_, fun h1 h2 hne => ?_, fun h1 h2 hne => ?_,
    fun h1 h2 hne => ?_, fun h1 h2 hne => ?_⟩
  · have hsep := mul_neg_of_dec_ne nHDP nHDQ hne
    rcases sgn_cases nHDP with ⟨e, hp⟩ | ⟨e, hp⟩
    · obtain ⟨k1, k2⟩ := E.1 hsep |>.1 hp
      rw [e, df k1, dt k2]; decide
    · obtain ⟨k1, k2⟩ := E.1 hsep |>.2 hp
      rw [e, dt k1, df k2]; decide
  · have hsep := mul_neg_of_dec_ne nCFP nCFQ hne
    rcases sgn_cases nCFP with ⟨e, hp⟩ | ⟨e, hp⟩
    · obtain ⟨k1, k2⟩ := E.2 hsep |>.1 hp
      rw [e, df k1, dt k2]; decide
    · obtain ⟨k1, k2⟩ := E.2 hsep |>.2 hp
      rw [e, dt k1, df k2]; decide
  · have hsep := mul_neg_of_dec_ne nCFP nCFQ hne
    obtain ⟨k1, k2, k3⟩ := Cv.2.1 ⟨tpos h1, p4, p5⟩ ⟨tpos h2, q4, q5⟩ hsep
    exact ⟨dec_ne_of_mul_neg k1, dec_ne_of_mul_neg k2, dec_ne_of_mul_neg k3⟩
  · have hsep := mul_neg_of_dec_ne nCFP nCFQ hne
    obtain ⟨k1, k2, k3⟩ := Cv.1 ⟨hPu, p3, by rw [sw]; linarith [tneg nHDP h1]⟩
      ⟨hQu, q3, by rw [sw]; linarith [tneg nHDQ h2]⟩ hsep
    exact ⟨dec_ne_of_mul_neg k1, dec_ne_of_mul_neg k2, dec_ne_of_mul_neg k3⟩
  · have hsep := mul_neg_of_dec_ne nHDP nHDQ hne
    obtain ⟨k1, k2, k3⟩ := Cv.2.2.1 ⟨hPu, tpos h1, p5⟩ ⟨hQu, tpos h2, q5⟩ hsep
    exact ⟨dec_ne_of_mul_neg k1, dec_ne_of_mul_neg k2, dec_ne_of_mul_neg k3⟩
  · have hsep := mul_neg_of_dec_ne nHDP nHDQ hne
    obtain ⟨k1, k2, k3⟩ := Cv.2.2.2 ⟨p3, p4, by rw [sw]; linarith [tneg nCFP h1]⟩
      ⟨q3, q4, by rw [sw]; linarith [tneg nCFQ h2]⟩ hsep
    exact ⟨dec_ne_of_mul_neg k1, dec_ne_of_mul_neg k2, dec_ne_of_mul_neg k3⟩

theorem wsign_eq {Pt : ℕ → Point} {m w : ℕ} (W : WordAt Pt m w) {i j : ℕ} (hi : i < 7)
    (hj : j < 7) (hij : i ≠ j) : Model.wsign w i j = decide (0 < sarea (Pt i) (Pt j) (Pt m)) :=
  Bool.eq_iff_iff.2 (by rw [decide_eq_true_iff]; exact (W i j hi hj hij).symm)

/-- The forced signs are true. -/
theorem Conf.forced_sound (H : Conf a h b c d f X P Q) (hPu : 0 < sarea (ptH h) (ptC c) P)
    (hQu : 0 < sarea (ptH h) (ptC c) Q) (WP : WordAt (cfg a h b c d f X P Q) 7 p)
    (WQ : WordAt (cfg a h b c d f X P Q) 8 q) {v : ℕ} {sg : Bool}
    (hf : Model.forced p q v = some sg) :
    sg = decide (0 < sarea (cfg a h b c d f X P Q v) P Q) := by
  rw [forced_eq, wsign_eq WP (i := 6) (j := 3) (by norm_num) (by norm_num) (by norm_num),
    wsign_eq WQ (i := 6) (j := 3) (by norm_num) (by norm_num) (by norm_num),
    wsign_eq WP (i := 2) (j := 5) (by norm_num) (by norm_num) (by norm_num),
    wsign_eq WQ (i := 2) (j := 5) (by norm_num) (by norm_num) (by norm_num)] at hf
  have k := forced_bool _ _ _ _ _ _ _ _ (H.forced_rel hPu hQu)
  have fin : ∀ {o : Option Bool} {s : Bool}, (o = none ∨ o = some s) → o = some sg → sg = s := by
    rintro o s (rfl | rfl) hf
    · cases hf
    · cases hf; rfl
  by_cases h6 : v = 6
  · subst h6; exact fin k.1 hf
  by_cases h2 : v = 2
  · subst h2; exact fin k.2.1 hf
  by_cases h3 : v = 3
  · subst h3; exact fin k.2.2.1 hf
  by_cases h5 : v = 5
  · subst h5; exact fin k.2.2.2 hf
  rw [forcedB_none h6 h2 h3 h5] at hf
  exact absurd hf (by simp)

/-- (13): the pair-line sign from the word entries. -/
theorem Conf.radial_pair (H : Conf a h b c d f X P Q) {p q : ℕ}
    (RP : HasRadialWord (heptagon a h b c d f X) P fun i => Model.wordAt p i)
    (RQ : HasRadialWord (heptagon a h b c d f X) Q fun i => Model.wordAt q i) {v : ℕ}
    (hv : v < 7) :
    (Model.wordAt p v < Model.wordAt q v → 0 < sarea (cfg a h b c d f X P Q v) P Q) ∧
      (Model.wordAt q v < Model.wordAt p v → sarea (cfg a h b c d f X P Q v) P Q < 0) := by
  have k := claim_pair_line_sign _ P Q (by norm_num) H.convex H.polyP H.swap.polyP _ _ RP RQ
    ⟨v, hv⟩
  rw [heptagon_eq (P := P) (Q := Q)] at k
  exact k

theorem Conf.pair_sound (H : Conf a h b c d f X P Q) (WP : WordAt (cfg a h b c d f X P Q) 7 p)
    (WQ : WordAt (cfg a h b c d f X P Q) 8 q)
    (RP : HasRadialWord (heptagon a h b c d f X) P fun i => Model.wordAt p i)
    (RQ : HasRadialWord (heptagon a h b c d f X) Q fun i => Model.wordAt q i) {v : ℕ}
    (hv : v < 7) {sg : Bool} (hs : Model.pairSign p q v = some sg) :
    OrientHolds sg (sarea (cfg a h b c d f X P Q v) P Q) := by
  unfold Model.pairSign at hs
  split_ifs at hs with h1 h2 h3
  · cases hs
    exact (H.radial_pair RP RQ hv).1 h1
  · cases hs
    exact (H.radial_pair RP RQ hv).2 h2
  · simp only [Bool.and_eq_true] at h3
    rw [H.forced_sound (WP.upper.2 h3.1) (WQ.upper.2 h3.2) WP WQ hs]
    exact orient_of_ne (H.ne v 7 8 (by omega) (by norm_num) (by norm_num) (by omega) (by norm_num)
      (by omega))

/-- **The initial signs**: every signed triangle of `baseSigns p q` holds. -/
theorem Conf.base_sound (H : Conf a h b c d f X P Q) (WP : WordAt (cfg a h b c d f X P Q) 7 p)
    (WQ : WordAt (cfg a h b c d f X P Q) 8 q)
    (RP : HasRadialWord (heptagon a h b c d f X) P fun i => Model.wordAt p i)
    (RQ : HasRadialWord (heptagon a h b c d f X) Q fun i => Model.wordAt q i) :
    AllHold (FHolds (cfg a h b c d f X P Q)) (Model.baseSigns p q) := by
  intro g hg
  simp only [Model.baseSigns, List.mem_filterMap, Option.map_eq_some_iff] at hg
  obtain ⟨t, ht, sg, hsg, rfl⟩ := hg
  obtain ⟨t1, t2, t3⟩ := lexTriples_valid t ht
  refine ⟨t1, t2, t3, ?_⟩
  show OrientHolds sg (sarea (cfg a h b c d f X P Q t.1) (cfg a h b c d f X P Q t.2.1)
    (cfg a h b c d f X P Q t.2.2))
  unfold Model.baseSign at hsg
  split_ifs at hsg with a1 a2 a3
  · cases hsg
    show 0 < _
    exact H.hull t (mem_hullTriples _ _ _ t1 t2 a1)
  · cases hsg
    have h7 : t.2.2 = 7 := a3
    have := WP.orient H (Or.inl rfl) (i := t.1) (j := t.2.1) (by omega) a2 (by omega)
    rw [h7]; exact this
  · cases hsg
    have h8 : t.2.2 = 8 := by omega
    have := WQ.orient H (Or.inr rfl) (i := t.1) (j := t.2.1) (by omega) a2 (by omega)
    rw [h8]; exact this
  · have e1 : t.2.1 = 7 := by omega
    have e2 : t.2.2 = 8 := by omega
    rw [e1, e2]
    exact H.pair_sound WP WQ RP RQ (by omega) hsg

/-! #### The filters of §2 -/

theorem WordAt.inTri {Pt : ℕ → Point} {m w : ℕ} (W : WordAt Pt m w) {i j l : ℕ} (hi : i < 7)
    (hj : j < 7) (hl : l < 7) (hij : i ≠ j) (hjl : j ≠ l) (hil : i ≠ l)
    (h : Model.inside w (i, j, l) = true) : InTriangle (Pt m) (Pt i) (Pt j) (Pt l) := by
  simp only [Model.inside, Bool.and_eq_true] at h
  exact ⟨(W i j hi hj hij).2 h.1.1, (W j l hj hl hjl).2 h.1.2, (W l i hl hi (Ne.symm hil)).2 h.2⟩

/-- The words of `P, Q` pass the filters of §2. -/
theorem Conf.filterOK (H : Conf a h b c d f X P Q) (WP : WordAt (cfg a h b c d f X P Q) 7 p)
    (WQ : WordAt (cfg a h b c d f X P Q) 8 q)
    (RP : HasRadialWord (heptagon a h b c d f X) P fun i => Model.wordAt p i)
    (RQ : HasRadialWord (heptagon a h b c d f X) Q fun i => Model.wordAt q i) :
    Model.filterOK p q = true := by
  have low : ∀ {m w : ℕ}, m = 7 ∨ m = 8 → WordAt (cfg a h b c d f X P Q) m w →
      Model.upper w = false → sarea (ptH h) (ptC c) (cfg a h b c d f X P Q m) < 0 := by
    intro m w hm W hu
    have hne := H.ne 6 2 m (by norm_num) (by norm_num) (by omega) (by norm_num) (by omega)
      (by omega)
    have : ¬ 0 < sarea (ptH h) (ptC c) (cfg a h b c d f X P Q m) := fun hpos => by
      have := W.upper.1 hpos; rw [hu] at this; exact absurd this (by simp)
    exact lt_of_le_of_ne (not_lt.1 this) hne
  have h1 : (Model.upper p || Model.upper q) = true := by
    cases hu : Model.upper p <;> cases hv : Model.upper q <;> simp only [Bool.or_self,
      Bool.or_true, Bool.true_or]
    exact absurd ⟨low (Or.inl rfl) WP hu, low (Or.inr rfl) WQ hv⟩ H.one_below
  have h2 : (Model.ears.any fun t => Model.inside p t && Model.inside q t) = false := by
    rw [List.any_eq_false]
    intro t ht hin
    simp only [Bool.and_eq_true] at hin
    obtain ⟨hpt, hqt⟩ := hin
    obtain ⟨-, m1, m2, m3, m4, m5, m6⟩ := H.ears
    simp only [Model.ears, List.mem_cons, List.not_mem_nil, or_false] at ht
    rcases ht with rfl | rfl | rfl | rfl | rfl | rfl
    · exact m1 ⟨WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) hpt, WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt⟩
    · exact m2 ⟨WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) hpt, WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt⟩
    · exact m3 ⟨WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) hpt, WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt⟩
    · exact m4 ⟨WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) hpt, WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt⟩
    · exact m5 ⟨WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) hpt, WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt⟩
    · obtain ⟨x1, x2, x3⟩ := WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hpt
      obtain ⟨y1, y2, y3⟩ := WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt
      exact m6 ⟨⟨x2, x3, x1⟩, ⟨y2, y3, y1⟩⟩
  have h3 : (Model.upper p && Model.upper q && Model.sameSector p q) = false := by
    cases hu : Model.upper p <;> cases hv : Model.upper q <;>
      simp only [Bool.false_and, Bool.and_false, Bool.true_and]
    cases hs : Model.sameSector p q
    · rfl
    · exfalso
      simp only [Model.sameSector, Bool.and_eq_true, beq_iff_eq] at hs
      rw [wsign_eq WP (i := 6) (j := 3) (by norm_num) (by norm_num) (by norm_num),
        wsign_eq WQ (i := 6) (j := 3) (by norm_num) (by norm_num) (by norm_num),
        wsign_eq WP (i := 2) (j := 5) (by norm_num) (by norm_num) (by norm_num),
        wsign_eq WQ (i := 2) (j := 5) (by norm_num) (by norm_num) (by norm_num)] at hs
      exact H.sector_excl (WP.upper.2 hu) (WQ.upper.2 hv) hs.1 hs.2
  have h4 : (Model.upper p && Model.upper q && Model.conflict p q) = false := by
    cases hu : Model.upper p <;> cases hv : Model.upper q <;>
      simp only [Bool.false_and, Bool.and_false, Bool.true_and]
    unfold Model.conflict
    rw [List.any_eq_false]
    intro v hv7 hc
    simp only [List.mem_range] at hv7
    simp only [Bool.and_eq_true, bne_iff_ne, ne_eq] at hc
    obtain ⟨hne, hm⟩ := hc
    rcases hf : Model.forced p q v with _ | sg
    · rw [hf] at hm; exact absurd hm (by simp)
    · rw [hf] at hm
      have e1 := H.forced_sound (WP.upper.2 hu) (WQ.upper.2 hv) WP WQ hf
      simp only [bne_iff_ne, ne_eq] at hm
      rcases lt_or_gt_of_ne hne with hl | hl
      · have := (H.radial_pair RP RQ hv7).1 hl
        rw [decide_eq_true hl, e1, decide_eq_true this] at hm
        exact hm rfl
      · have := (H.radial_pair RP RQ hv7).2 hl
        rw [decide_eq_false (not_lt.2 hl.le), e1, decide_eq_false (not_lt.2 this.le)] at hm
        exact hm rfl
  simp only [Model.filterOK, h1, h2, h3, h4, Bool.not_false, Bool.and_self]

/-- A configuration with words `p ≤ q` of `P, Q` is a cell of the cover, hence impossible. -/
theorem Conf.main (H : Conf a h b c d f X P Q) (hfd : f ≤ d) (hp : p < 52) (hq : q < 52)
    (hpq : p ≤ q) (RP : HasRadialWord (heptagon a h b c d f X) P fun i => Model.wordAt p i)
    (RQ : HasRadialWord (heptagon a h b c d f X) Q fun i => Model.wordAt q i) : False := by
  have WP : WordAt (cfg a h b c d f X P Q) 7 p := wordAt_of_radial rfl RP
  have WQ : WordAt (cfg a h b c d f X P Q) 8 q := wordAt_of_radial rfl RQ
  exact (Cell.mk H hfd (mem_cases_iff.2 ⟨hp, hq, hpq, H.filterOK WP WQ RP RQ⟩) WP WQ
    (H.base_sound WP WQ RP RQ)).false

/-- The base-pair count of lines 170-171: 615 mixed and 269 upper (884 in all). -/
theorem cases_length : Model.cases.length = 884 := by decide +kernel

theorem cases_mixed : (Model.cases.filter fun x => Model.mixed x.1 x.2).length = 615 := by
  decide +kernel

theorem cases_upper : (Model.cases.filter fun x => !Model.mixed x.1 x.2).length = 269 := by
  decide +kernel

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-certificate`). The certificate package
(`hand/six_boundary_single_top_certificates.json`, verified by
`hand/check_six_boundary_single_top.py`): with the normalization `f ≤ d` and every actual doubled
area at least `s = 8/73`, no pair of radial words of `P, Q` from the 52-word list is possible.
In the manuscript: the 893 terminal cells (884 base pairs, refined by `claim_refinement`) are
each covered by one of 616 fixed rational cubics (89,897 positive terms, scale 4096) in the
affine factors (16)–(17), the signed-area costs `ε[V_iV_jV_k] - T` (`T = s, 3s, ρ` by
containment count) and the costs (18) `hc - 7/11 | 4s`, `W - 4s | 8s`, `δ - s`, `13/16 - [ear]`;
each is nonnegative on its cell and has cube bound (20) below `-3/4` (greatest
`-5526045633638821/5608815984640000`), with reuse across cells checked.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 202-301.
Uses: SIX_BOUNDARY_SINGLE_TOP:claim-anchor-bounds, SIX_BOUNDARY_SINGLE_TOP:claim-cap-bounds,
SIX_BOUNDARY_SINGLE_TOP:claim-interior-box, SIX_BOUNDARY_SINGLE_TOP:claim-ears,
SIX_BOUNDARY_SINGLE_TOP:claim-one-below-HC, SIX_BOUNDARY_SINGLE_TOP:claim-W,
SIX_BOUNDARY_SINGLE_TOP:claim-mixed, SIX_BOUNDARY_SINGLE_TOP:claim-pair-cover,
SIX_BOUNDARY_SINGLE_TOP:claim-refinement, SIX_BOUNDARY_SINGLE_TOP:eq14,
CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_certificate {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ p ∈ hexagonWords, ∀ q ∈ hexagonWords,
      HasRadialWord (heptagon a h b c d f X) P (fun i => (p i : ℕ)) →
      HasRadialWord (heptagon a h b c d f X) Q (fun i => (q i : ℕ)) → False := by
  intro p hp q hq hP hQ
  have H := Conf.ofFam hfam hmin
  obtain ⟨wp, hwp, ep⟩ := Words.exists_index (Finset.mem_filter.1 hp).1 (Finset.mem_filter.1 hp).2
  obtain ⟨wq, hwq, eqq⟩ := Words.exists_index (Finset.mem_filter.1 hq).1 (Finset.mem_filter.1 hq).2
  have RP : HasRadialWord (heptagon a h b c d f X) P fun i => Model.wordAt wp i := by
    have : (fun i : Fin 7 => Model.wordAt wp i) = fun i => (p i : ℕ) := funext ep
    rw [this]; exact hP
  have RQ : HasRadialWord (heptagon a h b c d f X) Q fun i => Model.wordAt wq i := by
    have : (fun i : Fin 7 => Model.wordAt wq i) = fun i => (q i : ℕ) := funext eqq
    rw [this]; exact hQ
  rcases le_total wp wq with hle | hle
  · exact H.main hfd hwp hwq hle RP RQ
  · exact H.swap.main hfd hwq hwp hle RQ RP

theorem theorem1_aux {a h b c d f : ℝ} {X P Q : Point} (hfam : SingleTopFamily a h b c d f X P Q)
    (hfd : f ≤ d) (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) : False := by
  have H := Conf.ofFam hfam hmin
  obtain ⟨rP, hrP, RP, -⟩ := H.wordP
  obtain ⟨rQ, hrQ, RQ, -⟩ := H.swap.wordP
  exact claim_certificate hfam hfd hmin rP hrP rQ hrQ RP RQ

/-- **Theorem 1** (`SIX_BOUNDARY_SINGLE_TOP:Theorem1`). Every configuration of N6-03 (N anchors,
one free point in the opposite cap `DF(1,1)`, two free points strictly inside the anchor
hexagon; both lower/upper placements, all pair-line signs, square-side contacts of `X` allowed)
has minimum ordinary triangle area strictly below `4/73 < A₀`.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 22-25, 298-301.
Uses: SIX_BOUNDARY_HULL:claim-transposition, SIX_BOUNDARY_SINGLE_TOP:claim-anchor-bounds,
SIX_BOUNDARY_SINGLE_TOP:claim-cap-bounds, SIX_BOUNDARY_SINGLE_TOP:claim-interior-box,
SIX_BOUNDARY_SINGLE_TOP:claim-ears, SIX_BOUNDARY_SINGLE_TOP:claim-one-below-HC,
SIX_BOUNDARY_SINGLE_TOP:claim-W, SIX_BOUNDARY_SINGLE_TOP:claim-mixed,
SIX_BOUNDARY_SINGLE_TOP:claim-hull, SIX_BOUNDARY_SINGLE_TOP:claim-words,
SIX_BOUNDARY_SINGLE_TOP:claim-pair-cover, SIX_BOUNDARY_SINGLE_TOP:claim-refinement,
SIX_BOUNDARY_SINGLE_TOP:claim-certificate -/
theorem theorem1 {a h b c d f : ℝ} {X P Q : Point} (hfam : SingleTopFamily a h b c d f X P Q) :
    minTriangleArea (nConfig a h b c d f X P Q) < 4 / 73 ∧ (4 / 73 : ℝ) < A₀ := by
  refine ⟨?_, by have := A₀_bounds.2.1; linarith⟩
  by_contra hcon
  push Not at hcon
  rcases le_total f d with hfd | hdf
  · exact theorem1_aux hfam hfd hcon
  · obtain ⟨t1, -, t3, -, -, -, -, t8, -, -, -, -, -⟩ := claim_transposition a h b c d f X P Q
    have tP := (claim_transposition a h b c d f P P P).2.2.2.2.2.2.2.2.2.1
    have tQ := (claim_transposition a h b c d f Q Q Q).2.2.2.2.2.2.2.2.2.1
    exact theorem1_aux (a := b) (h := c) (b := a) (c := h) (d := f) (f := d)
      ⟨t1.1 hfam.1, t8.1 hfam.2.1, tP.1 hfam.2.2.1, tQ.1 hfam.2.2.2⟩ hdf (by rw [t3]; exact hcon)

end Heilbronn.SixBoundarySingleTop
