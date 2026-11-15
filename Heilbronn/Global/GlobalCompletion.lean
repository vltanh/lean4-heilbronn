module

public import Heilbronn.Local.HandProof

/-! # Global hull, exterior caps, and a moving-point chamber (`hand/GLOBAL_COMPLETION.md`)

**Role.** All three theorems are on the primary route.
* **Theorem 1** (convex nonagon). Used by `SIX_BOUNDARY_TWO_SIDE_UPPER.md` Corollary 2 for case
  N6-05 (`UNRESTRICTED.md` lines 170, 190-197), and by `FOUR_INTERIOR_QUADRILATERALS.md` §6 for the
  hull count.
* **Theorem 2** (lower exterior caps, seven boundary points). Used by `SEVEN_BOUNDARY_CAPS.md`
  (lines 974-977) and `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` (line 405, uncited there).
* **Theorem 3** (the sharp chamber with `F` moved inward). Used by
  `SEVEN_BOUNDARY_TOP_CAP_RADIAL.md` (lines 99-104).

**Convex position** (Theorem 1). `IsHullVertex P m` means that some linear functional `(u, v)`
takes a strictly larger value at `P m` than at every other point. This is the same as
`P m ∉ convexHull ℝ (P '' {l | l ≠ m})`, by strict separation of a point from a compact convex set.
`ConvexPosition P` means every point is a hull vertex: the manuscript's "in convex position (nine
hull vertices)". This definition was chosen for three reasons.
1. It is how the only user proves it. `SIX_BOUNDARY_TWO_SIDE_UPPER.md` (lines 48-51): each point
   "is separated from all other points by its own anchor edge, so all three are hull vertices".
2. It implies that no three points are collinear and that the points are distinct.
3. It is equivalent to the ordered form used in the proof: some ordering `V = P ∘ σ` has
   `0 < sarea (V i) (V j) (V k)` for all `i < j < k` (`StrictConvexCCW`, a strictly convex polygon
   in counterclockwise order, line 77). This is `claim_strictly_convex` (lines 77-78, 187-188).
Positivity of only the consecutive turns `sarea (V (i-1)) (V i) (V (i+1))` would be too weak: a
star polygon such as a pentagram turns left at every vertex.

**The external input.** The planar affine isoperimetric inequality `Ω³ ≤ 8π²B` (2) and the
parabolic rounding (3)-(6) of the polygon are not formalized. Their consequence, the polygon
inequality (7), is stated as `claim_7` and proved by `sorry`. The coordinator decides how the
external theorem enters. Everything after (7) is elementary.

**Setting of Theorem 2** (10). `A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1)`
with `0<a<h<1, 0<b<c<1, 0<d<e<1, 0<f<1`, and two further points `P, Q` anywhere in the square
(`sevenConfig`, in this order). No overlap or hull hypothesis is made.

**Setting of Theorem 3** (15). The chamber of `HAND_PROOF.md` Part I with `F = (f, k)`,
`0 ≤ k ≤ 1` (`movingFConfig`, order `A, B, C, D, E, F, G, H, O`). The chamber is positivity of
the eleven oriented doubled areas of `HandProof.chamberTriangles`. `GHF` and `GEF` now depend
on `k` (`eq15`).

**Results.**
* `claim_strictly_convex`, `claim_7`, `eq8`, `eq9`, `claim_area_le_one`, `theorem1`.
* `theorem2`.
* `eq15`, `claim_5_1`, `eq19`, `eq20`, `claim_25`, `claim_26`, `claim_27`, `claim_5_3`,
  `claim_5_4`, `claim_5_5`, `theorem3`. The certificate parts (§5.4 table (32), §5.5 table
  (34)-(38)) are stated through their conclusions: the cases of `claim_5_4` and `claim_5_5` are
  impossible. §5.6 is the assembly, i.e. the proof of `theorem3`.

**Implicit in the manuscript.**
* Theorem 1: the hull area `S` of the general bound (1) is the shoelace area of the counterclockwise
  vertex cycle (`polygonArea`). The step "`S ≤ 1` since the hull lies in the square" (line 178) is
  stated separately (`claim_area_le_one`).
* Theorem 3: the claims inside the proof (§§5.2-5.5) are stated under the proof's standing
  assumption (line 447) that all eleven doubled areas are at least `s = s₀ = 2A₀`, which implies
  the chamber. `claim_26` is the scalar statement it is: its proof uses only (18) and
  `0 < u, v < 1/2`.
* Theorem 3's upper-bound part follows through the equality argument with `s = s₀` fixed
  (§5.6). The "extension by continuity to the closure" (lines 882-885) is a remark and is not
  stated.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.GlobalCompletion

open HandProof

/-! ### Convex position and convex polygons -/

/-- `P m` is a vertex of the convex hull of the configuration: some linear functional is strictly
larger at `P m` than at every other point. -/
def IsHullVertex {n : ℕ} (P : Fin n → Point) (m : Fin n) : Prop :=
  ∃ u v : ℝ, ∀ l, l ≠ m → u * (P l).1 + v * (P l).2 < u * (P m).1 + v * (P m).2

/-- The points are in convex position: every point is a vertex of their convex hull. -/
def ConvexPosition {n : ℕ} (P : Fin n → Point) : Prop :=
  ∀ m, IsHullVertex P m

/-- `V 0, …, V (n-1)` are the vertices of a strictly convex polygon in counterclockwise order:
every triple taken in this order is positively oriented. -/
def StrictConvexCCW {n : ℕ} (V : Fin n → Point) : Prop :=
  ∀ i j k : Fin n, i < j → j < k → 0 < sarea (V i) (V j) (V k)

/-- The ear `e_i = Area(V_{i-1} V_i V_{i+1})` of the polygon at its `i`-th vertex (indices
cyclic). -/
def ear {n : ℕ} [NeZero n] (V : Fin n → Point) (i : Fin n) : ℝ :=
  triangleArea (V (i - 1)) (V i) (V (i + 1))

/-- The shoelace area `½ Σ_i (x_i y_{i+1} - y_i x_{i+1})` of the closed polygon
`V 0, …, V (n-1)` (indices cyclic); for a counterclockwise convex polygon it is the area `S` of the
hull. -/
def polygonArea {n : ℕ} [NeZero n] (V : Fin n → Point) : ℝ :=
  (∑ i, ((V i).1 * (V (i + 1)).2 - (V i).2 * (V (i + 1)).1)) / 2

/-! ### §§1-3. The convex nonagon -/

/-- **Claim** (`GLOBAL_COMPLETION:claim-strictly-convex`, made up). Points in convex position are
the cyclic vertices of a strictly convex polygon: some ordering lists them counterclockwise with
every triple positively oriented ("a nine-vertex convex hull is strictly convex").
`hand/GLOBAL_COMPLETION.md`, lines 77-78, 187-188. -/
theorem claim_strictly_convex {n : ℕ} {P : Fin n → Point} (hP : ConvexPosition P) :
    ∃ σ : Equiv.Perm (Fin n), StrictConvexCCW (P ∘ σ) := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:claim-(7)/(8)`, inequality (7)). For every strictly convex
polygon with ears `e_i` and area `S`: `(Σ e_i^{1/3})³ + (π²/3) Σ e_i ≤ 4π² S`. **External
input**: the proof applies the planar affine isoperimetric inequality `Ω³ ≤ 8π²B` (2)
(Chen-Howard-Lutwak-Yang-Zhang 2004, (1.1) and Theorem 4.1) to the parabolically rounded polygon
(3), for which `Ω = 2^{1/3} Σ e_i^{1/3}` and `B = S - Σ e_i/12` (6). Not formalized here.
`hand/GLOBAL_COMPLETION.md`, lines 40-148.
Uses: GLOBAL_COMPLETION:fact-(2), GLOBAL_COMPLETION:claim-(6) -/
theorem claim_7 {n : ℕ} [NeZero n] (hn : 3 ≤ n) {V : Fin n → Point} (hV : StrictConvexCCW V) :
    (∑ i, ear V i ^ (1 / 3 : ℝ)) ^ 3 + Real.pi ^ 2 / 3 * ∑ i, ear V i ≤
      4 * Real.pi ^ 2 * polygonArea V := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:eq8`). If every ear of a strictly
convex `n`-gon of area `S` is at least `t`, then `t ≤ 4π² S / (n³ + nπ²/3)`.
`hand/GLOBAL_COMPLETION.md`, lines 150-164.
Uses: GLOBAL_COMPLETION:claim-(7)/(8) -/
theorem eq8 {n : ℕ} [NeZero n] (hn : 3 ≤ n) {V : Fin n → Point} (hV : StrictConvexCCW V) {t : ℝ}
    (ht : ∀ i, t ≤ ear V i) :
    t ≤ 4 * Real.pi ^ 2 * polygonArea V / ((n : ℝ) ^ 3 + n * Real.pi ^ 2 / 3) := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:eq9`). The constants of (1) and (9):
`4π²/(729 + 3π²) < 1936/37173 < 1/19 < 7/128 < A₀` (from `π < 22/7`,
`1936·19 = 36784 < 37173`, `128 < 133`, and `A₀ - 7/128 = (18√65 - 145)/640 > 0`).
`hand/GLOBAL_COMPLETION.md`, lines 166-184. -/
theorem eq9 :
    4 * Real.pi ^ 2 / (729 + 3 * Real.pi ^ 2) < 1936 / 37173 ∧ (1936 / 37173 : ℝ) < 1 / 19 ∧
      (1 / 19 : ℝ) < 7 / 128 ∧ 7 / 128 < A₀ := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:claim-area-le-one`, made up). A strictly convex polygon with its
vertices in the unit square has area at most one ("since the convex hull lies inside the unit
square, S is at most one").
`hand/GLOBAL_COMPLETION.md`, line 178. -/
theorem claim_area_le_one {n : ℕ} [NeZero n] {V : Fin n → Point} (hV : StrictConvexCCW V)
    (hsq : ∀ i, V i ∈ unitSquare) : polygonArea V ≤ 1 := by
  sorry

/-- **Theorem 1** (`GLOBAL_COMPLETION:Theorem1`). If nine points in the unit square are in convex
position, their least triangle area is `< 1/19` (`< 7/128 < A₀`, `eq9`). More generally (1): for
the counterclockwise hull cycle, of area `S`, the least area is at most
`4π²/(729 + 3π²) · S` (`< (1936/37173) S < S/19`).
`hand/GLOBAL_COMPLETION.md`, lines 16-38 (proof 40-188).
Uses: GLOBAL_COMPLETION:claim-strictly-convex, GLOBAL_COMPLETION:claim-(7)/(8),
GLOBAL_COMPLETION:eq8, GLOBAL_COMPLETION:eq9, GLOBAL_COMPLETION:claim-area-le-one -/
theorem theorem1 {P : Fin 9 → Point} (hsq : ∀ i, P i ∈ unitSquare) (hP : ConvexPosition P) :
    minTriangleArea P < 1 / 19 ∧
      ∀ σ : Equiv.Perm (Fin 9), StrictConvexCCW (P ∘ σ) →
        minTriangleArea P ≤ 4 * Real.pi ^ 2 / (729 + 3 * Real.pi ^ 2) * polygonArea (P ∘ σ) := by
  sorry

/-! ### §4. The lower exterior caps with seven boundary contacts -/

/-- The seven-boundary configuration (10) with two further points, in the order
`A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1), P, Q`. -/
def sevenConfig (a h b c d e f : ℝ) (P Q : Point) : Fin 9 → Point :=
  ![(0, a), (0, h), (b, 0), (c, 0), (1, d), (1, e), (f, 1), P, Q]

/-- `X` lies in the closed lower-left cap `conv{(0,0), (0,a), (b,0)}`:
`x, y ≥ 0` and `x/b + y/a ≤ 1`. -/
def InLowerLeftCap (a b : ℝ) (X : Point) : Prop :=
  0 ≤ X.1 ∧ 0 ≤ X.2 ∧ a * X.1 + b * X.2 ≤ a * b

/-- `X` lies in the closed lower-right cap `conv{(1,0), (c,0), (1,d)}`:
`x ≤ 1`, `y ≥ 0` and `(1-x)/(1-c) + y/d ≤ 1`. -/
def InLowerRightCap (c d : ℝ) (X : Point) : Prop :=
  X.1 ≤ 1 ∧ 0 ≤ X.2 ∧ d * (1 - X.1) + (1 - c) * X.2 ≤ d * (1 - c)

/-- **Theorem 2** (`GLOBAL_COMPLETION:Theorem2`). In the seven-boundary form (10), with the two
further points anywhere in the square, if either of them lies in either closed lower exterior cap
`conv{(0,0),A,B}` or `conv{(1,0),C,D}`, then some triangle has area strictly less than `7/128`.
For the left cap only `AHP, BCP, BCD, CDE, HFE` are used, and the horizontal reflection gives the
right cap.
`hand/GLOBAL_COMPLETION.md`, lines 205-320. -/
theorem theorem2 {a h b c d e f : ℝ} {P Q : Point} (ha : 0 < a) (hah : a < h) (hh : h < 1)
    (hb : 0 < b) (hbc : b < c) (hc : c < 1) (hd : 0 < d) (hde : d < e) (he : e < 1)
    (hf : 0 < f) (hf1 : f < 1) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hcap : InLowerLeftCap a b P ∨ InLowerRightCap c d P ∨ InLowerLeftCap a b Q ∨
      InLowerRightCap c d Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  sorry

/-! ### §5. The sharp chamber with `F` moving inward -/

/-- The F-moving configuration (15), in the order `A, B, C, D, E, F, G, H, O`:
`A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,k), G=(g,1), H=(0,h), O=(x,y)`. -/
def movingFConfig (a b c d e f g h k x y : ℝ) : Fin 9 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, k), (g, 1), (0, h), (x, y)]

/-- The hypotheses of Theorem 3 other than the chamber: the strict orders, `0 ≤ k ≤ 1`, and `O`
in the square. -/
def MovingFHyp (a b c d e f g h k x y : ℝ) : Prop :=
  SharpOrders a b c d e f g h ∧ 0 ≤ k ∧ k ≤ 1 ∧ ((x, y) : Point) ∈ unitSquare

/-- `X₀ = (u(1-3v) + s + 2v)/(1-v)`, the lower bound (21) for `x`. -/
def X0 (s u v : ℝ) : ℝ := (u * (1 - 3 * v) + s + 2 * v) / (1 - v)

/-- `C_* = g(a_u + B_*) - B_* X₀` with `a_u = 1 - 3u - s`, (24). -/
def cStar (s u v g Bs : ℝ) : ℝ := g * ((1 - 3 * u - s) + Bs) - Bs * X0 s u v

/-- `N = B_*(1-v) - s`, (24). -/
def nStar (s v Bs : ℝ) : ℝ := Bs * (1 - v) - s

/-- **Claim** (`GLOBAL_COMPLETION:eq15`). The eleven oriented doubled areas of the F-moving
chamber: `ABH = bL`, `ABC = a(c-b)`, `AGH = gL`, `DEF = (1-f)(e-d)`, `GHF = M(1-h) + gδ`,
`GEF = M(1-e) - (1-g)δ`, `U₁, …, U₄` as in Part I and `OCF = U₅ = k(c-x) + (f-c)y` (with
`L = h-a`, `M = f-g`, `δ = 1-k`).
`hand/GLOBAL_COMPLETION.md`, lines 348-369. -/
theorem eq15 (a b c d e f g h k x y : ℝ) :
    chamberSarea (movingFConfig a b c d e f g h k x y) =
      ![b * (h - a), a * (c - b), g * (h - a), (1 - f) * (e - d),
        (f - g) * (1 - h) + g * (1 - k), (f - g) * (1 - e) - (1 - g) * (1 - k),
        y - a - (d - a) * x, h - y - (h - d) * x, e * (x - b) - (1 - b) * y,
        x - c + (c - g) * y, k * (c - x) + (f - c) * y] := by
  sorry

/-- **Theorem 3** (`GLOBAL_COMPLETION:Theorem3`). Throughout the F-moving chamber (15) (strict
orders, `0 ≤ k ≤ 1`, `O` in the square, all eleven oriented doubled areas positive), the least of
the eleven chamber areas is at most `A₀`. If all eleven are at least `A₀`, then `k = 1` and the
configuration is exactly the construction (16). No assumption `g < c`, `x < c` or `h ≤ e` is made.
`hand/GLOBAL_COMPLETION.md`, lines 329-390 (proof 391-885).
Uses: GLOBAL_COMPLETION:claim-5.1, GLOBAL_COMPLETION:claim-(25), GLOBAL_COMPLETION:claim-(26),
GLOBAL_COMPLETION:claim-(27), GLOBAL_COMPLETION:claim-5.3, GLOBAL_COMPLETION:claim-5.4,
GLOBAL_COMPLETION:claim-5.5, HAND_PROOF:Theorem1 -/
theorem theorem3 {a b c d e f g h k x y : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hch : InChamber (movingFConfig a b c d e f g h k x y)) :
    (∃ i, chamberArea (movingFConfig a b c d e f g h k x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (movingFConfig a b c d e f g h k x y) i) →
        k = 1 ∧ movingFConfig a b c d e f g h k x y = optimalConfiguration) := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:claim-5.1`). If all eleven doubled areas of the F-moving chamber
are at least `s ≥ 7/64`, then `x < c`, and then `U₄ > 0` forces `g < c` and `x > g`.
`hand/GLOBAL_COMPLETION.md`, lines 391-443. -/
theorem claim_5_1 {s a b c d e f g h k x y : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : 7 / 64 ≤ s) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i) :
    x < c ∧ g < c ∧ g < x := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:eq19`). If all eleven doubled areas are at least `s = s₀`, then
with `u = s/L`, `v = s/M`: `s < p ≤ p₀` for `p = (u+v)/2`, and `u + v < 347/1000` (19).
`hand/GLOBAL_COMPLETION.md`, lines 476-492.
Uses: GLOBAL_COMPLETION:claim-5.1 -/
theorem eq19 {s a b c d e f g h k x y u v : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) :
    s < (u + v) / 2 ∧ (u + v) / 2 ≤ p₀ ∧ u + v < 347 / 1000 := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:eq20`). Under the same hypotheses: `u ≥ 1/8`, `v < 111/500` and
`a_v = 1 - 3v - s > 28/125` (20).
`hand/GLOBAL_COMPLETION.md`, lines 493-506.
Uses: GLOBAL_COMPLETION:eq19 -/
theorem eq20 {s a b c d e f g h k x y u v : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) :
    1 / 8 ≤ u ∧ v < 111 / 500 ∧ 28 / 125 < 1 - 3 * v - s := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:claim-(25)`). The central necessary inequality. If all eleven
doubled areas are at least `s = s₀`, then with `u = s/L`, `v = s/M`, `w = δ/M`, `z = g - u`,
`B_* = 1 - f`, `a_v = 1 - 3v - s`: `0 ≤ Φ(u, v) - z a_v + w C_*`, where `Φ` is the left side of
`HAND_PROOF.md` (8) and `C_* = g(a_u + B_*) - B_* X₀`. It follows by adding (22) and (23) and
using (17) and (21).
`hand/GLOBAL_COMPLETION.md`, lines 445-558.
Uses: GLOBAL_COMPLETION:claim-5.1, GLOBAL_COMPLETION:eq19, HAND_PROOF:claim-(8) -/
theorem claim_25 {s a b c d e f g h k x y u v w z : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) (hw : w = (1 - k) / (f - g))
    (hz : z = g - u) :
    0 ≤ phi s u v - z * (1 - 3 * v - s) + w * cStar s u v g (1 - f) := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:claim-(26)`). At `s = s₀`: `Φ(u, v) ≤ 0`, with equality only if
`u = v = p₀`. Stated for the scalar data its proof uses (`HAND_PROOF.md` §§4-5): `0 < u, v < 1/2`
and (18), `s₀ ≤ 1 - 3u - 3v + 5uv`.
`hand/GLOBAL_COMPLETION.md`, lines 560-573.
Uses: HAND_PROOF:claim-(11), HAND_PROOF:claim-scalar -/
theorem claim_26 {u v : ℝ} (hu : 0 < u) (hv : 0 < v) (hu1 : u < 1 / 2) (hv1 : v < 1 / 2)
    (h18 : 2 * A₀ ≤ 1 - 3 * u - 3 * v + 5 * u * v) :
    phi (2 * A₀) u v ≤ 0 ∧ (phi (2 * A₀) u v = 0 → u = p₀ ∧ v = p₀) := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:claim-(27)`). If all eleven doubled areas are at least
`s = s₀`, then `DEF` and `GEF` give `0 ≤ w ≤ N/(B_*(1-g))` with `N = B_*(1-v) - s > 0`, and
`g ≤ g_max = 1 - s/(v(1-v))`.
`hand/GLOBAL_COMPLETION.md`, lines 575-583. -/
theorem claim_27 {s a b c d e f g h k x y v w : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hv : v = s / (f - g)) (hw : w = (1 - k) / (f - g)) :
    0 ≤ w ∧ 0 < nStar s v (1 - f) ∧ w ≤ nStar s v (1 - f) / ((1 - f) * (1 - g)) ∧
      g ≤ 1 - s / (v * (1 - v)) := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:claim-5.3`). The half `u ≥ v`. If all eleven doubled areas are
at least `s = s₀` and `u ≥ v`, then `Ψ ≥ 0` (28) and the one-variable polynomial `H(v, s₀) ≥ 0`
force `u = v = p₀`; equality in (18) then forces `w = 0`, i.e. `k = 1`.
`hand/GLOBAL_COMPLETION.md`, lines 585-629.
Uses: GLOBAL_COMPLETION:claim-5.1, GLOBAL_COMPLETION:eq19, GLOBAL_COMPLETION:eq20 -/
theorem claim_5_3 {s a b c d e f g h k x y u v : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) (huv : v ≤ u) :
    u = p₀ ∧ v = p₀ ∧ k = 1 := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:claim-5.4`). The half `u < v` away from the equality parameters
is impossible. If all eleven doubled areas are at least `s = s₀`, `u < v` and `u + v ≤ 8/25`,
then `Φ < -1/45` (29) contradicts (25), using the correction bound (30), which is certified by the
32 cubic Bernstein coefficients of table (32).
`hand/GLOBAL_COMPLETION.md`, lines 631-746.
Uses: GLOBAL_COMPLETION:claim-(25), GLOBAL_COMPLETION:claim-(27), GLOBAL_COMPLETION:eq19,
GLOBAL_COMPLETION:eq20 -/
theorem claim_5_4 {s a b c d e f g h k x y u v : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) (huv : u < v) (hsum : u + v ≤ 8 / 25) :
    False := by
  sorry

/-- **Claim** (`GLOBAL_COMPLETION:claim-5.5`). The half `u < v` near the equality parameters is
impossible. If all eleven doubled areas are at least `s = s₀`, `u < v` and `u + v ≥ 8/25`, then
`Δ = z a_v B_*(1-g) - N C_* > 0` (33) contradicts (25)-(27). This is certified by the 886
product-Bernstein coefficients of the six polynomials (36) on the cube (37).
`hand/GLOBAL_COMPLETION.md`, lines 748-874.
Uses: GLOBAL_COMPLETION:claim-(25), GLOBAL_COMPLETION:claim-(26), GLOBAL_COMPLETION:claim-(27),
GLOBAL_COMPLETION:eq19, GLOBAL_COMPLETION:eq20 -/
theorem claim_5_5 {s a b c d e f g h k x y u v : ℝ} (hyp : MovingFHyp a b c d e f g h k x y)
    (hs : s = 2 * A₀) (hall : ∀ i, s ≤ chamberSarea (movingFConfig a b c d e f g h k x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) (huv : u < v) (hsum : 8 / 25 ≤ u + v) :
    False := by
  sorry

end Heilbronn.GlobalCompletion
