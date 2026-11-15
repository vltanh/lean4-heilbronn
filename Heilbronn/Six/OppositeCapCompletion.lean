module

public import Heilbronn.Six.Exterior

/-! # Completion when all three N free points lie in the opposite cap
(`hand/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`)

Role: primary route. Theorem 1 closes the occupancy N6-08 `(0,3,0;0)` of
`hand/UNRESTRICTED.md`, Section 4 (`n6_08`).

Setting: `nConfig a h b c d f X Y Z` with `NAnchors a h b c d f` and all three free points in
the closed opposite cap `T = DF(1,1)` (positions on the top and right sides allowed). Threshold
`s = 7/64` (doubled) for the reduction and the certificates; the sharp chamber is at `2A₀`.
By Theorem 4 of `SIX_BOUNDARY_EXTERIOR.md` the free points are named `E, G, O` so that
`A, B, C, D, E, G, F, H` is the strictly convex hull octagon and (1) `O ∈ DFE ∩ DFG`;
transposition arranges (2) `f ≤ d`. `CapSetting` collects these hypotheses.

Remark on (7): the manuscript derives `e_x ≥ g_x`, `e_y ≤ g_y` from the apex `K` of the support
triangle built inside the proof of `TYPE_II.md` Section 1, which Theorem 4 of
`SIX_BOUNDARY_EXTERIOR.md` does not export. The same bounds (even strict) follow from (1) alone:
along the convex quadrilateral `D, E, G, F` with `E, G` in the cap, the edge directions turn
counterclockwise from `D → E` (pointing weakly left) to `G → F` (pointing weakly up), so the
direction `E → G` points strictly left and strictly up. `claim_hull_and_bounds` is therefore
stated with (1) as its only hull hypothesis.

Certificate package (`hand/six_boundary_opposite_cap_certificates.json`, checker
`hand/check_six_boundary_opposite_cap.py`): the radial word of `O` on the octagon lies among 15
words; 14 cubic certificates exclude the 14 non-sharp words and two more (`left`, `low`) exclude
`e_x ≤ c` and `g_y ≤ h` in the sharp word 10 `(4,3,3,2,3,4,5,4)` (3,133 terms in total).
Geometric conclusion: `claim_16_certificates`.

Results:
* `claim_hull_and_bounds`: the bounds (3)-(7);
* `claim_15_words`: the 15 words, and the word of `O` is one of them;
* `claim_16_certificates`: the word of `O` is word 10, and `e_x > c`, `g_y > h` (14);
* `claim_sharp_chamber`: the eleven chamber signs (17), and `SHARP_CD_MOVING.md` Theorem 1 after
  the rotation `(x, y) ↦ (y, 1 - x)` gives the sharp bound and equality;
* `theorem1`: least area at most `A₀`, equality only at the optimal configuration, strict with
  exactly six contacts;
* `n6_08`: the assembly form for N6-08.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundaryOppositeCapCompletion

open SixBoundary SixBoundaryExterior

/-- The standing hypotheses of Sections 1-5: the free points `E, G, O` lie in the closed opposite
cap, every doubled area is at least `7/64`, the normalization (2) `f ≤ d` holds, and (1): the
hull is the strictly convex octagon `A, B, C, D, E, G, F, H` with `O` interior and
`O ∈ DEF ∩ DGF` (written with counterclockwise triangles). -/
def CapSetting (a h b c d f : ℝ) (E G O : Point) : Prop :=
  NAnchors a h b c d f ∧ f ≤ d ∧ InCapT d f E ∧ InCapT d f G ∧ InCapT d f O ∧
    7 / 128 ≤ minTriangleArea (nConfig a h b c d f E G O) ∧
    IsConvexCCW (octagonDEGF a h b c d f E G) ∧ InPolygon (octagonDEGF a h b c d f E G) O ∧
    InTriangle O (ptD d) E (ptF f) ∧ InTriangle O (ptD d) G (ptF f)

/-- The 15 words of Section 2: radial words on the octagon `(A, B, C, D, E, G, F, H)` (relation
(8)) with the tests (9) `r₃ = 2`, `r₄ ≥ 2` forced by `O ∈ DFE ∩ DFG`. -/
def capWords : Finset (Fin 8 → Fin 8) :=
  (radialWords 8).filter fun r => (r 3 : ℕ) = 2 ∧ 2 ≤ (r 4 : ℕ)

/-- The sharp word 10, `(4, 3, 3, 2, 3, 4, 5, 4)`. -/
def word10 : Fin 8 → Fin 8 := ![4, 3, 3, 2, 3, 4, 5, 4]

/-- **Claim** (`SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-hull-and-bounds`). In `CapSetting`
(`s = 7/64`, `L = h - a`, `M = c - b`, `δ = (1 - d)(1 - f)`):
(3) `a, b, L, M ≥ s`, `hc ≥ 4s`, `h, c ≥ 4s`; (4) `δ ≥ s/(3 - 2√2) > 7/11` (endpoint-triangle
theorem on `D, F, E, G, O` in the virtual cap); (5) `d ≤ 179/627`, `f < 13/64`; (6) for each
`Z ∈ {E, G, O}`, `z_x - f ≥ s` and `z_y - d ≥ s`; (7) `e_x ≥ g_x`, `e_y ≤ g_y`.
`hand/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`, lines 32-102.
Uses: SIX_BOUNDARY_EXTERIOR:Theorem4, SIX_BOUNDARY_HULL:claim-transposition,
TYPE_II:EndpointTriangleTheorem -/
-- NOTE: the manuscript's proof of (7) (lines 94-99) uses the apex `K` of the support triangle
-- from the proof of TYPE_II Section 1, not exported by SIX_BOUNDARY_EXTERIOR Theorem 4; (7)
-- also follows from the convexity of `D, E, G, F` in (1) (see the module docstring).
theorem claim_hull_and_bounds {a h b c d f : ℝ} {E G O : Point}
    (hS : CapSetting a h b c d f E G O) :
    (7 / 64 ≤ a ∧ 7 / 64 ≤ b ∧ 7 / 64 ≤ h - a ∧ 7 / 64 ≤ c - b ∧ 4 * (7 / 64) ≤ h * c ∧
      4 * (7 / 64) ≤ h ∧ 4 * (7 / 64) ≤ c) ∧
    (7 / 64 / (3 - 2 * Real.sqrt 2) ≤ (1 - d) * (1 - f) ∧ 7 / 11 < (1 - d) * (1 - f)) ∧
    (d ≤ 179 / 627 ∧ f < 13 / 64) ∧
    (∀ W ∈ ({E, G, O} : Set Point), 7 / 64 ≤ W.1 - f ∧ 7 / 64 ≤ W.2 - d) ∧
    (G.1 ≤ E.1 ∧ E.2 ≤ G.2) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-15-words`). Exactly 15 words satisfy
(8) and (9) on the octagon, word 10 `(4,3,3,2,3,4,5,4)` among them; in `CapSetting` the radial
word of `O` on the octagon `(A, B, C, D, E, G, F, H)` is one of them.
`hand/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`, lines 104-151.
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-radial-word -/
theorem claim_15_words :
    capWords.card = 15 ∧ word10 ∈ capWords ∧
    ∀ {a h b c d f : ℝ} {E G O : Point}, CapSetting a h b c d f E G O →
      ∃ r ∈ capWords, HasRadialWord (octagonDEGF a h b c d f E G) O fun i => (r i : ℕ) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-16-certificates`). Geometric
conclusion of the certificate package: in `CapSetting`, the radial word of `O` is word 10, and
(14) `e_x > c`, `g_y > h`. (Fourteen `whole` certificates exclude the other words; the `left`
and `low` certificates, with the extra factors `c - e_x` and `h - g_y`, exclude `e_x ≤ c` and
`g_y ≤ h`; 3,133 positive terms, cube bounds at most `-662811495605/673236123648`.)
`hand/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`, lines 153-239.
Uses: SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-hull-and-bounds,
SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-15-words -/
theorem claim_16_certificates {a h b c d f : ℝ} {E G O : Point}
    (hS : CapSetting a h b c d f E G O) (r : Fin 8 → ℕ)
    (hr : HasRadialWord (octagonDEGF a h b c d f E G) O r) :
    r = (fun i => (word10 i : ℕ)) ∧ c < E.1 ∧ h < G.2 := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-sharp-chamber`). In `CapSetting` with
word 10 and (14) `e_x > c`, `g_y > h`: the strict orders `d < e_y < 1`, `f < g_x < 1` hold, the
eleven chamber areas (17) `CDB, CDE, CAB, GFH, ABH, AFH, CGO, GBO, DOF, AEO, OEH` are positive,
and Theorem 1 of `SHARP_CD_MOVING.md`, after the rotation `(x, y) ↦ (y, 1 - x)` with the labels
(15), gives least area at most `A₀`, with equality only for `e_x = g_y = 1` and the optimal
configuration. `hand/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`, lines 241-279.
Uses: SHARP_CD_MOVING:Theorem1, SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-hull-and-bounds -/
theorem claim_sharp_chamber {a h b c d f : ℝ} {E G O : Point}
    (hS : CapSetting a h b c d f E G O)
    (hr : HasRadialWord (octagonDEGF a h b c d f E G) O fun i => (word10 i : ℕ))
    (hE : c < E.1) (hG : h < G.2) :
    (d < E.2 ∧ E.2 < 1 ∧ f < G.1 ∧ G.1 < 1) ∧
    (0 < sarea (ptC c) (ptD d) (ptB b) ∧ 0 < sarea (ptC c) (ptD d) E ∧
      0 < sarea (ptC c) (ptA a) (ptB b) ∧ 0 < sarea G (ptF f) (ptH h) ∧
      0 < sarea (ptA a) (ptB b) (ptH h) ∧ 0 < sarea (ptA a) (ptF f) (ptH h) ∧
      0 < sarea (ptC c) G O ∧ 0 < sarea G (ptB b) O ∧ 0 < sarea (ptD d) O (ptF f) ∧
      0 < sarea (ptA a) E O ∧ 0 < sarea O E (ptH h)) ∧
    minTriangleArea (nConfig a h b c d f E G O) ≤ A₀ ∧
    (minTriangleArea (nConfig a h b c d f E G O) = A₀ →
      E.1 = 1 ∧ G.2 = 1 ∧ IsOptimal (nConfig a h b c d f E G O)) := by
  sorry

/-- **Theorem 1** (`SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:Theorem1`). If all three free points lie
in the closed opposite cap `DF(1,1)`, the least area is at most `A₀`; equality holds only at the
optimal (eight-boundary) configuration, up to square symmetry and relabelling; in particular,
with exactly six boundary contacts the bound is strict.
`hand/SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`, lines 15-30.
Uses: SIX_BOUNDARY_EXTERIOR:Theorem4, SIX_BOUNDARY_HULL:claim-transposition,
SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-hull-and-bounds,
SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-15-words,
SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-16-certificates,
SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:claim-sharp-chamber -/
theorem theorem1 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapT d f X) (hY : InCapT d f Y) (hZ : InCapT d f Z) :
    minTriangleArea (nConfig a h b c d f X Y Z) ≤ A₀ ∧
      (minTriangleArea (nConfig a h b c d f X Y Z) = A₀ →
        IsOptimal (nConfig a h b c d f X Y Z)) ∧
      (ExactlySixContacts X Y Z → minTriangleArea (nConfig a h b c d f X Y Z) < A₀) := by
  sorry

/-- **Case N6-08** (`(n_L, n_T, n_R; n_I) = (0,3,0;0)`, `hand/UNRESTRICTED.md`, Section 4),
assembly form: an N configuration with exactly six contacts and all three free points in the
opposite cap, with least area at least `A₀`, is optimal (in fact impossible, by the strict part
of Theorem 1).
Uses: SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION:Theorem1 -/
theorem n6_08 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapT d f X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hsix : ExactlySixContacts X Y Z)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    IsOptimal (nConfig a h b c d f X Y Z) := by
  sorry

end Heilbronn.SixBoundaryOppositeCapCompletion
