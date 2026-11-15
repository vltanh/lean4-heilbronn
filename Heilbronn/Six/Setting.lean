module

public import Heilbronn.Common.Families

/-! # The six-boundary setting of family N

Shared definitions for the six-boundary manuscripts `hand/SIX_BOUNDARY_*.md` (Section 4 of
`hand/UNRESTRICTED.md`). The configuration is `nConfig a h b c d f X Y Z`, whose six anchors are

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
areas, and exchanges `L` and `R` (`claim_transposition`, `hand/SIX_BOUNDARY_HULL.md`,
lines 127-135).

## Radial words

For a strictly convex polygon `V₀, …, V_{n-1}` (counterclockwise) and a point `R` strictly
inside it, the radial word `r(R)` is defined by `[V_i V_{i+j} R] > 0 ⇔ j ≤ r_i`
(`hand/SIX_BOUNDARY_SINGLE_SIDE.md` (14)); it satisfies the complement relation (15)
(`claim_radial_word`), and two interior points with different entries at `V_i` have
`sgn [V_i P Q] = sgn (r_i(Q) - r_i(P))` (`claim_pair_line_sign`, (17)). These are used by every
six-boundary certificate cover (single side, two side upper, opposite cap, single top, side
opposite, two top).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundary

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

/-- `X` lies in the open unit square, so it is not a boundary contact. -/
def InOpenSquare (X : Point) : Prop :=
  0 < X.1 ∧ X.1 < 1 ∧ 0 < X.2 ∧ X.2 < 1

/-- The configuration `nConfig a h b c d f X Y Z` has exactly six boundary contacts (its six
anchors): no free point lies on the boundary of the square. -/
def ExactlySixContacts (X Y Z : Point) : Prop :=
  InOpenSquare X ∧ InOpenSquare Y ∧ InOpenSquare Z

/-- The region `S` contains at most one of the three free points `X, Y, Z` ("capacity one"). -/
def AtMostOne (S : Point → Prop) (X Y Z : Point) : Prop :=
  ¬ (S X ∧ S Y) ∧ ¬ (S X ∧ S Z) ∧ ¬ (S Y ∧ S Z)

/-! ### Relabelling the free points -/

/-- Permuting the three free points does not change the least area. -/
theorem minTriangleArea_nConfig_perm (a h b c d f : ℝ) (W : Fin 3 → Point)
    (σ : Equiv.Perm (Fin 3)) :
    minTriangleArea (nConfig a h b c d f (W (σ 0)) (W (σ 1)) (W (σ 2))) =
      minTriangleArea (nConfig a h b c d f (W 0) (W 1) (W 2)) := by
  sorry

/-- Permuting the three free points keeps a configuration optimal. -/
theorem isOptimal_nConfig_perm (a h b c d f : ℝ) (W : Fin 3 → Point)
    (σ : Equiv.Perm (Fin 3)) :
    IsOptimal (nConfig a h b c d f (W (σ 0)) (W (σ 1)) (W (σ 2))) ↔
      IsOptimal (nConfig a h b c d f (W 0) (W 1) (W 2)) := by
  sorry

/-! ### Transposition -/

/-- The transposition `(x, y) ↦ (y, x)`. -/
def transpose (p : Point) : Point := (p.2, p.1)

/-- **Claim** (`SIX_BOUNDARY_HULL:claim-transposition`). The transposition `(x,y) ↦ (y,x)` with
the relabelling `(A, H, B, C, D, F) ↦ (B, C, A, H, F, D)` preserves the N normalization, sending
the parameters `(a, h, b, c, d, f)` to `(b, c, a, h, f, d)`; it keeps the square, the least area
and optimality, keeps exactly six contacts, and maps the regions as follows: `R ↔ L`, `T ↔ T`,
`(0,0)AB ↔ (0,0)BA`, the hexagon, `HABC`, `HCDF` and `T₀` to their transposed copies.
`hand/SIX_BOUNDARY_HULL.md`, lines 127-135. -/
theorem claim_transposition (a h b c d f : ℝ) (X Y Z : Point) :
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
  sorry

/-! ### Radial words -/

/-- The index `i + j` modulo `n`. -/
def cyc {n : ℕ} (i : Fin n) (j : ℕ) : Fin n :=
  ⟨(i.val + j) % n, Nat.mod_lt _ i.pos⟩

/-- `V₀, …, V_{n-1}` are the vertices of a strictly convex polygon in counterclockwise order:
every triple in increasing index order is positively oriented. -/
def IsConvexCCW {n : ℕ} (V : Fin n → Point) : Prop :=
  ∀ i j k : Fin n, i < j → j < k → 0 < sarea (V i) (V j) (V k)

/-- `R` lies strictly inside the counterclockwise polygon `V`: strictly on the inner side of
every edge `V_i V_{i+1}`. -/
def InPolygon {n : ℕ} (V : Fin n → Point) (R : Point) : Prop :=
  ∀ i : Fin n, 0 < sarea (V i) (V (cyc i 1)) R

/-- `R` has radial word `r` with respect to the polygon `V`
(`hand/SIX_BOUNDARY_SINGLE_SIDE.md` (14)): for every vertex `V_i` and `1 ≤ j ≤ n-1`,
`[V_i V_{i+j} R] > 0` exactly when `j ≤ r_i`. -/
def HasRadialWord {n : ℕ} (V : Fin n → Point) (R : Point) (r : Fin n → ℕ) : Prop :=
  ∀ i : Fin n, ∀ j : ℕ, 1 ≤ j → j < n → (0 < sarea (V i) (V (cyc i j)) R ↔ j ≤ r i)

/-- The complement relation (`hand/SIX_BOUNDARY_SINGLE_SIDE.md` (15)) of a word `r` on an
`n`-gon: `j ≤ r_i ⇔ n - j > r_{i+j}` for every `i` and `1 ≤ j ≤ n-1`, together with the range
`1 ≤ r_i ≤ n - 2`. -/
def IsRadialWord {n : ℕ} (r : Fin n → ℕ) : Prop :=
  (∀ i : Fin n, 1 ≤ r i ∧ r i + 2 ≤ n) ∧
    ∀ i j : Fin n, 0 < j.val → (j.val ≤ r i ↔ r (cyc i j.val) + j.val < n)

instance {n : ℕ} (r : Fin n → ℕ) : Decidable (IsRadialWord r) := by
  unfold IsRadialWord; infer_instance

/-- The finite set of words `r ∈ {0, …, n-1}ⁿ` satisfying the range and complement relations,
the set enumerated by the certificate covers (for example the 57 heptagon words of
`hand/SIX_BOUNDARY_SINGLE_SIDE.md`, Section 3). -/
def radialWords (n : ℕ) : Finset (Fin n → Fin n) :=
  Finset.univ.filter fun r => IsRadialWord fun i => (r i : ℕ)

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-radial-word`). A point strictly inside a strictly
convex counterclockwise polygon, collinear with no two of its vertices, has a radial word: the
positive signs `[V_i V_{i+j} R] > 0` form an initial segment `j ≤ r_i` ("convexity makes the
positive signs consecutive"), with `1 ≤ r_i ≤ n-2`, and the word satisfies the complement
relation (15) ("reversing a directed chord"). `hand/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 206-222.
-/
theorem claim_radial_word {n : ℕ} (V : Fin n → Point) (R : Point) (hn : 3 ≤ n)
    (hV : IsConvexCCW V) (hR : InPolygon V R)
    (hgen : ∀ i j : Fin n, i ≠ j → sarea (V i) (V j) R ≠ 0) :
    ∃ r : Fin n → ℕ, HasRadialWord V R r ∧ IsRadialWord r := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-pair-line-sign`). Two interior points `P, Q` of a
strictly convex counterclockwise polygon with radial words `p, q`: if `p_i < q_i` then
`[V_i P Q] > 0`, and if `p_i > q_i` then `[V_i P Q] < 0` (`hand/SIX_BOUNDARY_SINGLE_SIDE.md`
(17): the order of the two rays inside the convex angle at `V_i`). Lines 236-244. -/
theorem claim_pair_line_sign {n : ℕ} (V : Fin n → Point) (P Q : Point) (hn : 3 ≤ n)
    (hV : IsConvexCCW V) (hP : InPolygon V P) (hQ : InPolygon V Q) (p q : Fin n → ℕ)
    (hp : HasRadialWord V P p) (hq : HasRadialWord V Q q) (i : Fin n) :
    (p i < q i → 0 < sarea (V i) P Q) ∧ (q i < p i → sarea (V i) P Q < 0) := by
  sorry

end Heilbronn.SixBoundary
