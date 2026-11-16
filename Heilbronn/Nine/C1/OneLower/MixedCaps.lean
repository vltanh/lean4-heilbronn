module

public import Heilbronn.Nine.C1.OneLower.TopTriangle
public import Heilbronn.Nine.C1.OneLower.RightTopTriangle
public import Heilbronn.Nine.C1.OneLower.RightPair
public import Heilbronn.Nine.C1.OneLower.MixedCapsCells

/-! # One lower C1 point and two different exterior caps (`docs/proof/nine/C1_ONE_LOWER_MIXED_CAPS.md`)

**Role.** Primary route: `docs/proof/nine/UNRESTRICTED.md` §3 sends the C1 configurations with exactly one
free point in the lower triangle (`n₀ = 1`) to Theorem 2 here, the assembly of the whole one-lower
class. Theorem 1 excludes the three mixed-cap rows `(U, R, T, L_cap) = (1,1,1,0), (1,1,0,1),
(1,0,1,1)`.

**Setting (Theorem 1).** The C1 anchors `O, C, D, F, H` with `0 < d ≤ h < 1`, `0 < f ≤ c < 1`
and `f ≤ d` (line 12), minimum triangle area at least `A₀`; `L ∈ OHC`, `Q ∈ HCDF` and two cap
points `X, Y` in two different caps, in the ordered classes `RT, RL, TL` (`X` in the first cap);
configuration `c1Config h c d f X Y L Q` (the checker's vertex order `O, C, D, F, H, X, Y, L, Q`).
Five-anchor words are those of `C1_ZERO_LOWER.md` (`Heilbronn.Nine.C1.HasWord`). Thresholds
`s = 8/73`, `ρ = 49/60`, `γ = 1 - 7s/3` (local notations `s`, `ρ`).

**Theorem 2 (the one-lower class).** For `c1Config h c d f W X Y Z` with `C1Anchors`, free points
in the square, `lowerCount = 1` and minimum triangle area at least `A₀`: a contradiction. The proof
transposes the square if necessary to get `f ≤ d` (`C1ZeroLower.Comp.transpose`), sorts the free
points by region (`claim_partition`: lower, upper, right, top, left), and runs the case tree
`rows` over the twenty sorted region patterns: three upper points (`claim_E0`); one exterior
point (`C1_ONE_LOWER_TOP_CAP`, `C1_ONE_LOWER_SIDE_CAP`); two right-cap points
(`C1_ONE_LOWER_RIGHT_PAIR`); the mixed classes (Theorem 1); two top-cap points (`claim_top_hull`
with `C1_ONE_LOWER_TOP_TRIANGLE`, `C1_ONE_LOWER_CONVEX_TOP`, `C1_ONE_LOWER_RIGHT_TOP_TRIANGLE`, and
the eight-vertex hulls `claim_eight_vertices` with `C1_ONE_LOWER_EIGHT_HULL`); three top-cap points
(`C1_ONE_LOWER_CONVEX_TOP`); and the occupancy restrictions of `C1_ZERO_LOWER.md` Theorem 2 (two
left-cap points, a left-cap point with two top-cap points).

**Results.** `theorem1` (with `claim_words`; the package is `Heilbronn.Nine.C1.OneLower.MixedCapsCells`:
the bounds (1)–(12), (15), the pruning (13), (14), the cyclic-sign pruning as two closed leaves,
and the certificates), `theorem2` (with `claim_partition`, `claim_E0` (FLAG: `W ≥ 10s`),
`claim_top_hull`, `claim_eight_vertices`, the rows `row111`–`row334` and `main_fd`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerMixedCaps

open Heilbronn.Nine.C1 Heilbronn.Nine.C1ZeroLower Heilbronn.Nine.C1OneLowerB Cover
open Heilbronn.Nine.C1OneLowerTopCap (ConvexPolygon HasHullWord)
open Heilbronn.Nine.C1OneLowerEightHull (hullVertexCount)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`. -/
local notation "ρ" => (49 / 60 : ℝ)

/-! ### The three ordered cap classes -/

/-- The three ordered cap classes of Theorem 1: `RT` (`X` in the right cap, `Y` in the top cap),
`RL` (right, left) and `TL` (top, left). -/
inductive CapClass
  | RT
  | RL
  | TL
  deriving DecidableEq

/-- The cap of the first cap point `X`. -/
def CapClass.first : CapClass → Region
  | .RT => .right
  | .RL => .right
  | .TL => .top

/-- The cap of the second cap point `Y`. -/
def CapClass.second : CapClass → Region
  | .RT => .top
  | .RL => .left
  | .TL => .left

/-- The right, top and left cap words `(1,0,4,3,2)`, `(2,1,0,4,3)`, `(3,2,1,0,4)` (Section 3). -/
def capWord : Region → Word
  | .right => ![1, 0, 4, 3, 2]
  | .top => ![2, 1, 0, 4, 3]
  | .left => ![3, 2, 1, 0, 4]
  | _ => ![0, 0, 0, 0, 0]

/-- The three lower words `(1,3,3,2,1), (2,3,2,2,1), (3,3,2,1,1)` (Section 3), indexed from zero. -/
def lowerWord : Fin 3 → Word := ![![1, 3, 3, 2, 1], ![2, 3, 2, 2, 1], ![3, 3, 2, 1, 1]]

/-- The eight upper words (Section 3), indexed from zero in the displayed order. -/
def upperWord : Fin 8 → Word :=
  ![![1, 1, 3, 3, 2], ![1, 2, 3, 2, 2], ![2, 1, 1, 3, 3], ![2, 1, 2, 3, 2], ![2, 2, 1, 2, 3],
    ![2, 2, 2, 2, 2], ![3, 2, 1, 1, 3], ![3, 2, 2, 1, 2]]

/-- The full hull orders of Section 3: `O, C, X, D, Y, F, H` (`RT`), `O, C, X, D, F, Y, H` (`RL`),
`O, C, D, X, F, Y, H` (`TL`). -/
def hullOf (k : CapClass) (h c d f : ℝ) (X Y : Point) : Fin 7 → Point :=
  match k with
  | .RT => ![ptO, ptC c, X, ptD d, Y, ptF f, ptH h]
  | .RL => ![ptO, ptC c, X, ptD d, ptF f, Y, ptH h]
  | .TL => ![ptO, ptC c, ptD d, X, ptF f, Y, ptH h]

/-- The placement of Theorem 1 in class `k`: C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`, `f ≤ d`;
minimum triangle area at least `A₀` for `c1Config h c d f X Y L Q`; `L` strictly inside `OHC`;
`Q` strictly inside `HCDF`; `X` in the first and `Y` in the second cap of `k` (in the square;
side contacts allowed). -/
structure Placement (k : CapClass) (h c d f : ℝ) (X Y L Q : Point) : Prop where
  anchors : C1Anchors h c d f
  f_le_d : f ≤ d
  min : A₀ ≤ minTriangleArea (c1Config h c d f X Y L Q)
  lower : InLower h c L
  upper : InUpperQuad h c d f Q
  first : InRegion h c d f k.first X
  firstSq : X ∈ unitSquare
  second : InRegion h c d f k.second Y
  secondSq : Y ∈ unitSquare

/-- The 62 word pairs (13) `(k, i, j)` (class, lower word `i`, upper word `j`): of the
`3 · 8 = 24` pairs per class, remove those with three free points below `OD` (first word entry
`1`; two per class with a right cap) and those with two free points in `OFH` (two per class),
leaving 20 `RT`, 20 `RL`, 22 `TL`. -/
def mixedCases : List (CapClass × Fin 3 × Fin 8) :=
  [CapClass.RT, CapClass.RL, CapClass.TL].flatMap fun k => (List.finRange 3).flatMap fun i =>
    ((List.finRange 8).filter fun j =>
      let ws := [capWord k.first, capWord k.second, lowerWord i, upperWord j]
      decide (ws.countP (fun w => decide (w 0 = 1)) ≤ 2) &&
        decide (ws.countP (fun w => wordInside w 0 3 4) ≤ 1)).map fun j => (k, i, j)

/-! ### Theorem 1 -/

/-- The index of a class in the certificate model (`RT, RL, TL ↦ 0, 1, 2`). -/
def CapClass.idx : CapClass → ℕ
  | .RT => 0
  | .RL => 1
  | .TL => 2

/-- The pentagon enumeration: the three lower words. -/
theorem enum_lower5 :
    enumW 5 3 (fun w => !(hinside 5 w 0 1 4) || decide (w ∈ Model.lowerW)) 5 [] = true := by
  decide +kernel

/-- The pentagon enumeration: the eight upper words. -/
theorem enum_upper5 :
    enumW 5 3 (fun w => !(hsign 5 w 4 1 && hsign 5 w 1 2 && hsign 5 w 2 3 && hsign 5 w 3 4) ||
      decide (w ∈ Model.upperW)) 5 [] = true := by
  decide +kernel

theorem pentagon_table : ∀ i j k : Fin 5, i < j → j < k →
    orientedLookup (capTable []) i j k = some true := by
  decide +kernel

/-- A pentagon word as a five-anchor list word. -/
theorem wordL_of_hull {h c d f : ℝ} {Q : Fin 4 → Point} {R : Point} {w : List ℕ}
    (hw : HasHullWord (fun i : Fin 5 => cfg h c d f Q i.val) R (fun i : Fin 5 => w.getD i.val 0)) :
    WordL (cfg h c d f Q) R w := by
  intro u v hu hv huv
  have := hw ⟨u, hu⟩ ⟨v, hv⟩ (fun e => huv (by simpa using e))
  rw [← hsign_eq] at this
  exact this

section

variable {k : CapClass} {h c d f : ℝ} {X Y L Q : Point}

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-words`). In a placement of Theorem 1, the cap points
have the cap words of their caps, `L` one of the three lower words and `Q` one of the eight upper
words (radial words of the convex anchor pentagon, `C1OneLowerTopCap.exists_hullWord`), so the
configuration is a pre-cell of the package.
FLAG (lines 167-169): the text justifies the prefix form by "the directions from each such vertex
to the other four anchors occupy less than a half-turn"; the prefix property needs it for the rays
to all points. Here it is proved for the interior points by the radial words of the convex
pentagon, and for the cap points by `C1ZeroLower.Comp.word_exists` (every anchor lies on a side of
the square). `docs/proof/nine/C1_ONE_LOWER_MIXED_CAPS.md`, lines 159-189. -/
theorem claim_words (hS : Placement k h c d f X Y L Q) :
    ∃ i j, i < 3 ∧ j < 8 ∧ MPre (k.idx, i, j) h c d f ![X, Y, L, Q] := by
  obtain ⟨a0, a1, a2, a3, a4⟩ := sq_anchor hS.anchors
  have hLs : L ∈ unitSquare := inSquare_of_inTriangle hS.lower a0 a1 a4
  have hne0 : sarea (ptH h) (ptD d) Q ≠ 0 := by
    have h0 : A₀ ≤ triangleArea (ptH h) (ptD d) Q :=
      area_of_le_min hS.min (4 : Fin 9) 2 8 (by decide) (by decide) (by decide)
    rw [triangleArea_eq] at h0
    intro e; rw [e, abs_zero] at h0; linarith [A₀_pos]
  have hQs : Q ∈ unitSquare := by
    rcases upper_inTriangle hS.upper hne0 with h1 | h1
    · exact inSquare_of_inTriangle h1 a1 a2 a4
    · exact inSquare_of_inTriangle h1 a2 a3 a4
  have H : Comp h c d f ![X, Y, L, Q] :=
    ⟨hS.anchors, fun i => by fin_cases i; exacts [hS.firstSq, hS.secondSq, hLs, hQs], hS.min⟩
  have A := comp_areaOK H
  set V : Fin 5 → Point := fun i => cfg h c d f ![X, Y, L, Q] i.val with hVdef
  have hV : ConvexPolygon V :=
    convex_of_table (comp_capTable_holds H (ms := []) (by simp)) (fun i : Fin 5 => i.val)
      pentagon_table
  have hne : ∀ m, 7 ≤ m → m < 9 → ∀ a b : Fin 5, a ≠ b →
      sarea (V a) (V b) (cfg h c d f ![X, Y, L, Q] m) ≠ 0 := by
    intro m hm1 hm2 a b hab
    exact A.ne_zero (by omega) (by omega) hm2 (fun e => hab (Fin.ext e)) (by omega) (by omega)
  -- the lower word
  obtain ⟨w, hp, hw, -, hin⟩ := word_of_inTriangle (n := 5) (by norm_num) hV (a := 0) (b := 1)
    (e := 4) (by decide) (by decide) hS.lower (hne 7 le_rfl (by norm_num)) enum_lower5
  have hin2 : hinside 5 w 0 1 4 = true := hin
  simp only [hin2, Bool.not_true, Bool.false_or, decide_eq_true_eq] at hp
  obtain ⟨i, hi, rfl⟩ := exists_getD_of_mem hp
  -- the upper word
  have hinQ : ∀ v : Fin 5, 0 < sarea (V v) (V (v + 1)) Q := by
    rcases upper_inTriangle hS.upper hne0 with h1 | h1
    · exact inTriangle_edges (a := 1) (b := 2) (c := 4) (by norm_num) hV (by decide) (by decide) h1
    · exact inTriangle_edges (a := 2) (b := 3) (c := 4) (by norm_num) hV (by decide) (by decide) h1
  obtain ⟨w', hp', hw', -⟩ := word_of_edges hV hinQ (hne 8 (by norm_num) (by norm_num)) enum_upper5
  obtain ⟨u1, u2, u3, u4⟩ := hS.upper
  have s1 := hsign_of_pos hw' (i := 4) (j := 1) (by decide) u1
  have s2 := hsign_of_pos hw' (i := 1) (j := 2) (by decide) u2
  have s3 := hsign_of_pos hw' (i := 2) (j := 3) (by decide) u3
  have s4 := hsign_of_pos hw' (i := 3) (j := 4) (by decide) u4
  have e : (hsign 5 w' 4 1 && hsign 5 w' 1 2 && hsign 5 w' 2 3 && hsign 5 w' 3 4) = true := by
    simp only [Bool.and_eq_true]; exact ⟨⟨⟨s1, s2⟩, s3⟩, s4⟩
  simp only [e, Bool.not_true, Bool.false_or, decide_eq_true_eq] at hp'
  obtain ⟨j, hj, rfl⟩ := exists_getD_of_mem hp'
  -- the cap words
  have cw := fun a : Fin 4 => comp_capWordAt H a
  refine ⟨i, j, hi, hj, ⟨H, hS.f_le_d, fun a => ?_, hS.lower, hS.upper⟩⟩
  fin_cases a
  · have hX := hS.first
    cases k
    · exact wordL_of_wordAt ((cw 0).1 hX)
    · exact wordL_of_wordAt ((cw 0).1 hX)
    · exact wordL_of_wordAt ((cw 0).2.1 hX)
  · have hY := hS.second
    cases k
    · exact wordL_of_wordAt ((cw 1).2.1 hY)
    · exact wordL_of_wordAt ((cw 1).2.2 hY)
    · exact wordL_of_wordAt ((cw 1).2.2 hY)
  · exact wordL_of_hull hw
  · exact wordL_of_hull hw'

end

/-- **Theorem 1** (`C1_ONE_LOWER_MIXED_CAPS:Theorem1`). None of the three configurations `RT, RL,
TL` (`L ∈ OHC`, `Q ∈ HCDF`, `X, Y` in the two caps of the class, `f ≤ d`) has minimum triangle area
at least `A₀`; additional contacts with the sides of the square are allowed. Proof: the words
(`claim_words`), the pruning (13) (`MPre.filter`) and the certificate package
(`MCell.false`: 62 cases, 136 leaves, kernel-checked).
`docs/proof/nine/C1_ONE_LOWER_MIXED_CAPS.md`, lines 253-255 and 332-334.
Uses: C1_ONE_LOWER_MIXED_CAPS:claim-words, C1_ONE_LOWER_MIXED_CAPS:(13),
C1_ONE_LOWER_MIXED_CAPS:(17)-(19). -/
theorem theorem1 {k : CapClass} {h c d f : ℝ} {X Y L Q : Point}
    (hS : Placement k h c d f X Y L Q) : False := by
  obtain ⟨i, j, hi, hj, P⟩ := claim_words hS
  exact (P.cell (by cases k <;> simp [CapClass.idx]) hi hj).false

/-! ### Section 6: the complete one-lower assembly -/

section Assembly

variable {h c d f : ℝ} {Q : Fin 4 → Point}

/-- The region of a free point by its code: `0` lower, `1` upper, `2` right cap (below `OD`),
`3` top cap, `4` left cap (above `OF`). -/
def RegFact (h c d f : ℝ) : ℕ → Point → Prop
  | 0, X => InLower h c X
  | 1, X => InUpperQuad h c d f X
  | 2, X => InRightCap c d X ∧ BelowOD d X
  | 3, X => InTopCap d f X
  | _, X => InLeftCap f h X ∧ AboveOF f X

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-partition`). Every free point of a competitive C1
configuration is in one of the five regions `OHC, HCDF, 𝓡, 𝓣, 𝓛` (its zero-lower word when it is
not in `OHC`, `C1ZeroLower.Comp.word_exists`). `docs/proof/nine/C1_ONE_LOWER_MIXED_CAPS.md`, lines 19-21. -/
theorem claim_partition (H : Comp h c d f Q) (a : Fin 4) :
    ∃ n, n < 5 ∧ RegFact h c d f n (Q a) ∧ (n = 0 ↔ InLower h c (Q a)) := by
  by_cases hL : InLower h c (Q a)
  · exact ⟨0, by norm_num, hL, iff_of_true rfl hL⟩
  · obtain ⟨w, hw, W⟩ := H.word_exists a hL
    obtain ⟨r0, r1, r2, r3⟩ := H.region hw W
    have hc := (word_region ⟨w, hw⟩).2.2.2.2
    simp only at hc
    refine ⟨C1ZeroLower.Model.cat w + 1, by omega, ?_, by simp [hL]⟩
    rcases (show C1ZeroLower.Model.cat w = 0 ∨ C1ZeroLower.Model.cat w = 1 ∨
      C1ZeroLower.Model.cat w = 2 ∨ C1ZeroLower.Model.cat w = 3 by omega) with e | e | e | e <;>
      rw [e] <;> simp only [RegFact]
    exacts [r0 e, r1 e, r2 e, r3 e]

theorem not_lower_of_reg {n : ℕ} (hn : 1 ≤ n) (hA : C1Anchors h c d f) {X : Point}
    (hX : RegFact h c d f n X) : ¬ InLower h c X := by
  rcases (show n = 1 ∨ n = 2 ∨ n = 3 ∨ 4 ≤ n by omega) with rfl | rfl | rfl | h4
  · rintro ⟨-, r2, -⟩
    have := hX.1
    unfold sarea ptC ptH at this r2; linarith
  · exact not_lower_of_cap hA (Or.inl hX.1)
  · exact not_lower_of_cap hA (Or.inr (Or.inl hX))
  · obtain ⟨k, rfl⟩ : ∃ k, n = k + 4 := ⟨n - 4, by omega⟩
    exact not_lower_of_cap hA (Or.inr (Or.inr hX.1))

/-- A relabelled competitive configuration. -/
theorem comp_perm (H : Comp h c d f Q) (ι : Fin 4 → Fin 4) (hι : Function.Injective ι) :
    A₀ ≤ minTriangleArea (c1Config h c d f (Q (ι 0)) (Q (ι 1)) (Q (ι 2)) (Q (ι 3))) :=
  (H.relabel (Equiv.ofBijective ι (Finite.injective_iff_bijective.1 hι))).hmin

theorem lowerCount_eq_one {W X Y Z : Point} {k : Fin 4} (hk : InLower h c (freePt W X Y Z k))
    (ho : ∀ i, i ≠ k → ¬ InLower h c (freePt W X Y Z i)) : lowerCount h c W X Y Z = 1 := by
  unfold lowerCount countFree
  rw [Finset.card_eq_one]
  refine ⟨k, Finset.ext fun i => ?_⟩
  simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_singleton]
  constructor
  · intro hi; by_contra hne; exact ho i hne hi
  · rintro rfl; exact hk

theorem regionCount_two {W X Y Z : Point} {r : Region} {a b : Fin 4} (hab : a ≠ b)
    (ha : InRegion h c d f r (freePt W X Y Z a)) (hb : InRegion h c d f r (freePt W X Y Z b)) :
    2 ≤ regionCount h c d f r W X Y Z := by
  classical
  unfold regionCount countFree
  have : ({a, b} : Finset (Fin 4)) ⊆ Finset.univ.filter fun i => InRegion h c d f r
      (freePt W X Y Z i) := by
    intro i hi
    simp only [Finset.mem_insert, Finset.mem_singleton] at hi
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    rcases hi with rfl | rfl
    exacts [ha, hb]
  have := Finset.card_le_card this
  rwa [Finset.card_pair hab] at this

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-E0`). The upper quadrilateral `HCDF` of a competitive
C1 configuration cannot contain three free points (`C1ZeroLower.Comp.quad_three`: the seven-point
quadrilateral theorem gives `W > 1`, contrary to `W = 1 - (h-d)(c-f) ≤ 1`).
FLAG (line 357): the text says the seven-point bound "would give `W ≥ 10s > 1`" and cites no
theorem; `QUADRILATERAL_HULL:Theorem2` gives `W ≥ ((13 + 3√5)/2) · 2A₀ ≈ 1.0815`, which is below
`10s ≈ 1.0959` but still above `1`. The claim holds. `docs/proof/nine/C1_ONE_LOWER_MIXED_CAPS.md`, lines
355-358. Uses: QUADRILATERAL_HULL:Theorem2. -/
theorem claim_E0 (H : Comp h c d f Q) {i j l : Fin 4} (hij : i ≠ j) (hil : i ≠ l) (hjl : j ≠ l)
    (hi : InUpperQuad h c d f (Q i)) (hj : InUpperQuad h c d f (Q j))
    (hl : InUpperQuad h c d f (Q l)) : False :=
  H.quad_three hij hil hjl hi hj hl

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-top-hull`). For two top-cap points `X, Y`, the "top
hull" `conv{D, F, X, Y}` has `D, F` as vertices, so (when `[DXY], [XYF] ≠ 0`) it is triangular,
with the inner point strictly inside the triangle of the other three (`Y ∈ DXF` or `X ∈ DYF`), or
a convex quadrilateral `D, X, Y, F` or `D, Y, X, F`. `docs/proof/nine/C1_ONE_LOWER_MIXED_CAPS.md`, lines
388-390. -/
theorem claim_top_hull {X Y : Point}
    (hX : InTopCap d f X) (hY : InTopCap d f Y) (hXY : sarea (ptD d) X Y ≠ 0)
    (hXYF : sarea X Y (ptF f) ≠ 0) :
    InTriangle Y (ptD d) X (ptF f) ∨ InTriangle X (ptD d) Y (ptF f) ∨
      (0 < sarea (ptD d) X Y ∧ 0 < sarea X Y (ptF f)) ∨
      (0 < sarea (ptD d) Y X ∧ 0 < sarea Y X (ptF f)) := by
  unfold InTopCap at hX hY
  have s1 := sarea_swap₂₃ (ptD d) X Y
  have s2 := sarea_swap₁₂ X Y (ptF f)
  have s3 := sarea_swap₂₃ X Y (ptF f)
  have s4 := sarea_swap₂₃ (ptD d) (ptF f) X
  have s5 := sarea_swap₂₃ (ptD d) (ptF f) Y
  have c1 := sarea_cycle (ptF f) (ptD d) X
  have c2 := sarea_cycle (ptF f) (ptD d) Y
  have c3 := sarea_cycle X Y (ptF f)
  have c4 := sarea_cycle Y (ptF f) X
  rcases hXY.lt_or_gt with h1 | h1 <;> rcases hXYF.lt_or_gt with h2 | h2
  · right; right; right
    constructor <;> linarith
  · right; left
    refine ⟨by linarith, by linarith, by linarith⟩
  · left
    refine ⟨h1, by linarith, by linarith⟩
  · right; right; left; exact ⟨h1, h2⟩

/-- An open half-plane contains the convex hull of a set it contains. -/
theorem hull_lt {S : Set Point} (α β γ : ℝ) (hS : ∀ p ∈ S, 0 < α * p.1 + β * p.2 + γ) :
    ∀ p ∈ convexHull ℝ S, 0 < α * p.1 + β * p.2 + γ := by
  have hc : Convex ℝ {p : Point | 0 < α * p.1 + β * p.2 + γ} := by
    intro p hp q hq a b ha hb hab
    simp only [Set.mem_ofPred_eq, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd,
      smul_eq_mul] at hp hq ⊢
    have e1 : γ = a * γ + b * γ := by rw [← add_mul, hab, one_mul]
    rcases ha.lt_or_eq with ha' | ha'
    · have k1 := mul_pos ha' hp
      have k2 := mul_nonneg hb hq.le
      nlinarith
    · have hb' : b = 1 := by linarith
      subst ha'; subst hb'
      linarith
  exact fun p hp => convexHull_min (fun q hq => hS q hq) hc hp

/-- **Eight hull vertices**: if eight of nine points form a convex octagon `ι` and the ninth is
strictly inside every edge and inside a triangle of octagon vertices, the hull has eight
vertices. -/
theorem count_eight {P : Fin 9 → Point} (ι : Fin 8 → Fin 9) (hι : Function.Injective ι)
    (hl : ∀ m, ι m ≠ 8) (hV : ConvexPolygon (P ∘ ι))
    (hLin : ∀ m : Fin 8, 0 < sarea (P (ι m)) (P (ι (m + 1))) (P 8)) {a b e : Fin 8} (hab : a < b)
    (hbe : b < e) (hL : InTriangle (P 8) (P (ι a)) (P (ι b)) (P (ι e))) :
    hullVertexCount P = 8 := by
  classical
  have hrange : ∀ i : Fin 9, i ≠ 8 → ∃ m, ι m = i := by
    have hcard : (Finset.univ.image ι) = Finset.univ.erase 8 := by
      apply Finset.eq_of_subset_of_card_le
      · intro x hx
        simp only [Finset.mem_image, Finset.mem_univ, true_and] at hx
        obtain ⟨m, rfl⟩ := hx
        exact Finset.mem_erase.2 ⟨hl m, Finset.mem_univ _⟩
      · rw [Finset.card_image_of_injective _ hι]; simp
    intro i hi
    have : i ∈ Finset.univ.image ι := by rw [hcard]; exact Finset.mem_erase.2 ⟨hi, Finset.mem_univ _⟩
    simpa using this
  have key : ∀ i : Fin 9, C1OneLowerEightHull.IsHullVertex P i ↔ i ≠ 8 := by
    intro i
    constructor
    · intro hv hi
      subst hi
      apply hv
      obtain ⟨r1, r2, r3⟩ := hL
      have hm := mem_convexHull_of_sarea (hV a b e hab hbe) r1.le r2.le r3.le
      refine convexHull_mono ?_ hm
      intro p hp
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
      rcases hp with rfl | rfl | rfl <;> exact ⟨_, hl _, rfl⟩
    · intro hi
      obtain ⟨m, rfl⟩ := hrange i hi
      intro hm
      have h3 : (3 : ℕ) ≤ 8 := by norm_num
      have g := hull_lt (S := P '' {j | j ≠ ι m})
        ((-(P (ι m)).2 + (P (ι (m - 1))).2) + (-(P (ι (m + 1))).2 + (P (ι m)).2))
        (((P (ι m)).1 - (P (ι (m - 1))).1) + ((P (ι (m + 1))).1 - (P (ι m)).1))
        (((P (ι m)).2 - (P (ι (m - 1))).2) * (P (ι (m - 1))).1 -
            ((P (ι m)).1 - (P (ι (m - 1))).1) * (P (ι (m - 1))).2 +
          (((P (ι (m + 1))).2 - (P (ι m)).2) * (P (ι m)).1 -
            ((P (ι (m + 1))).1 - (P (ι m)).1) * (P (ι m)).2)) ?_ _ hm
      · have e1 := sarea_affine' (P (ι (m - 1))) (P (ι m)) (P (ι m))
        have e2 := sarea_affine' (P (ι m)) (P (ι (m + 1))) (P (ι m))
        have z1 : sarea (P (ι (m - 1))) (P (ι m)) (P (ι m)) = 0 := by unfold sarea; ring
        have z2 : sarea (P (ι m)) (P (ι (m + 1))) (P (ι m)) = 0 := by unfold sarea; ring
        linarith
      · rintro p ⟨j, hj, rfl⟩
        have e1 := sarea_affine' (P (ι (m - 1))) (P (ι m)) (P j)
        have e2 := sarea_affine' (P (ι m)) (P (ι (m + 1))) (P j)
        suffices 0 < sarea (P (ι (m - 1))) (P (ι m)) (P j) + sarea (P (ι m)) (P (ι (m + 1))) (P j) by
          linarith
        have hs : m - 1 + 1 = m := by abel
        by_cases hj8 : j = 8
        · subst hj8
          have := hLin (m - 1)
          rw [hs] at this
          linarith [hLin m]
        · obtain ⟨k, rfl⟩ := hrange j hj8
          have hkm : k ≠ m := fun e => hj (by rw [e])
          have nn1 : 0 ≤ sarea (P (ι (m - 1))) (P (ι m)) (P (ι k)) := by
            by_cases e : k = m - 1
            · subst e; unfold sarea; nlinarith
            · have := edge_pos (n := 8) (by norm_num) hV (m - 1) k e (by rw [hs]; exact hkm)
              rw [hs] at this; exact this.le
          have nn2 : 0 ≤ sarea (P (ι m)) (P (ι (m + 1))) (P (ι k)) := by
            by_cases e : k = m + 1
            · subst e; unfold sarea; nlinarith
            · exact (edge_pos (n := 8) (by norm_num) hV m k hkm e).le
          by_cases e : k = m - 1
          · have hne : k ≠ m + 1 := by
              intro e'; rw [e'] at e
              have : (m + 1 : Fin 8) - m = (m - 1) - m := by rw [e]
              simp at this
              exact absurd this (by decide)
            have := edge_pos (n := 8) (by norm_num) hV m k hkm hne
            simp only [Function.comp_apply] at this
            linarith
          · have := edge_pos (n := 8) (by norm_num) hV (m - 1) k e (by rw [hs]; exact hkm)
            rw [hs] at this
            simp only [Function.comp_apply] at this
            linarith
  have : Finset.univ.filter (C1OneLowerEightHull.IsHullVertex P) = Finset.univ.erase 8 := by
    ext i; simp [key i]
  unfold hullVertexCount
  rw [this]; simp

end Assembly


/-- The octagon `O, C, R, D, X, F, Y, H` of mode `one_each` (indices of `c1Config h c d f R X Y L`). -/
def octOne : Fin 8 → Fin 9 := ![0, 1, 5, 2, 6, 3, 7, 4]

/-- The octagon `O, C, R, D, X, Y, F, H` of mode `two_top`. -/
def octTwo : Fin 8 → Fin 9 := ![0, 1, 5, 2, 6, 7, 3, 4]

theorem octOne_table : ∀ i j k : Fin 8, i < j → j < k →
    orientedLookup (capTable [(5, 0), (6, 3), (7, 8)] ++ [((5, 6, 7), true)]) (octOne i) (octOne j)
      (octOne k) = some true := by decide +kernel

/-- The signs `[V X Y] > 0` (anchors `V`) and `[R X Y] > 0` of mode `two_top`. -/
def xyTable2 : List SFact := ((List.range 5).map fun v => ((v, 6, 7), true)) ++ [((5, 6, 7), true)]

theorem octTwo_table : ∀ i j k : Fin 8, i < j → j < k →
    orientedLookup (capTable [(5, 0), (6, 3), (7, 3)] ++ xyTable2) (octTwo i) (octTwo j)
      (octTwo k) = some true := by decide +kernel

theorem count_eight' {h c d f : ℝ} {R X Y L : Point} (_H : Comp h c d f ![R, X, Y, L])
    (ι : Fin 8 → Fin 9) (hι : Function.Injective ι) (hl : ∀ m, ι m ≠ 8) {tb : List SFact}
    (htb : AllHold (SFact.Holds (cfg h c d f ![R, X, Y, L])) tb)
    (ht : ∀ i j k : Fin 8, i < j → j < k →
      orientedLookup tb (ι i) (ι j) (ι k) = some true)
    (h0 : ι 0 = 0) (h1 : ι 1 = 1) (h7 : ι 7 = 4) (hL : InLower h c L) :
    hullVertexCount (c1Config h c d f R X Y L) = 8 := by
  have hV0 := convex_of_table htb (n := 8) (fun i => (ι i).val) ht
  have e : ∀ i : Fin 9, cfg h c d f ![R, X, Y, L] i.val = c1Config h c d f R X Y L i := by
    intro i; fin_cases i <;> rfl
  have hV : ConvexPolygon (c1Config h c d f R X Y L ∘ ι) := by
    intro i j k hij hjk
    have := hV0 i j k hij hjk
    simp only [Function.comp_apply, ← e]
    exact this
  have hL' : InTriangle (c1Config h c d f R X Y L 8) ((c1Config h c d f R X Y L ∘ ι) 0)
      ((c1Config h c d f R X Y L ∘ ι) 1) ((c1Config h c d f R X Y L ∘ ι) 7) := by
    simp only [Function.comp_apply, h0, h1, h7]; exact hL
  refine count_eight ι hι hl hV (fun m => ?_) (a := 0) (b := 1) (e := 7) (by decide) (by decide)
    hL'
  exact inTriangle_edges (n := 8) (by norm_num) hV (a := 0) (b := 1) (c := 7) (by decide)
    (by decide) hL' m

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-eight-vertices`), mode `one_each`: the five anchors
and the three cap points (one in each cap) are the vertices of a convex octagon and the lower
point is interior, so the full hull has eight vertices. `docs/proof/nine/C1_ONE_LOWER_MIXED_CAPS.md`, lines
384-392. -/
theorem eight_oneEach {h c d f : ℝ} {R X Y L : Point}
    (hE : C1OneLowerEightHull.OneEach h c d f R X Y L) :
    hullVertexCount (c1Config h c d f R X Y L) = 8 := by
  obtain ⟨a0, a1, a2, a3, a4⟩ := sq_anchor hE.anchors
  have hLs := inSquare_of_inTriangle hE.lower a0 a1 a4
  have H : Comp h c d f ![R, X, Y, L] :=
    ⟨hE.anchors, fun i => by fin_cases i; exacts [hE.rightSq, hE.topSq, hE.leftSq, hLs], hE.min⟩
  have tb := comp_capTable_holds H (ms := [(5, 0), (6, 3), (7, 8)]) (by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact ⟨by norm_num, by norm_num, by norm_num, (comp_capWordAt H 0).1 hE.right⟩
    · exact ⟨by norm_num, by norm_num, by norm_num, (comp_capWordAt H 1).2.1 hE.top⟩
    · exact ⟨by norm_num, by norm_num, by norm_num, (comp_capWordAt H 2).2.2 hE.left⟩)
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hE.anchors
  -- `[RXY] > 0`: `R` is in the triangle `C, (1,0), D`, all on the positive side of `XY`
  have hC : 0 < sarea (ptC c) X Y := by
    have := orientedLookup_sound tb (a := 1) (b := 6) (c := 7) (sg := true) (by decide +kernel)
    simp only [OrientHolds, ite_true] at this
    exact this
  have hD : 0 < sarea (ptD d) X Y := by
    have := orientedLookup_sound tb (a := 2) (b := 6) (c := 7) (sg := true) (by decide +kernel)
    simp only [OrientHolds, ite_true] at this
    exact this
  have hu : 0 < X.1 - Y.1 := by
    have t1 := (H.top_row 1 hE.top).1
    have hY := hE.left
    obtain ⟨y0, y1, y2, y3⟩ := hE.leftSq
    unfold InLeftCap ptF ptH sarea at hY
    have : Y.1 < f := by nlinarith
    change 2 * A₀ ≤ X.1 - f at t1
    linarith [A₀_pos]
  have gR : 0 < sarea R X Y := by
    obtain ⟨r0, r1, r2, r3⟩ := hE.rightSq
    have hR := hE.right
    unfold InRightCap at hR
    have e := bary_identity (ptC c) ((1 : ℝ), (0 : ℝ)) (ptD d) X Y R
    have k0 : 0 < sarea (ptC c) ((1 : ℝ), (0 : ℝ)) (ptD d) := by
      unfold sarea ptC ptD; nlinarith
    have k1 : 0 ≤ sarea ((1 : ℝ), (0 : ℝ)) (ptD d) R := by
      unfold sarea ptD; nlinarith
    have k2 : 0 < sarea (ptD d) (ptC c) R := by
      have := sarea_swap₁₂ (ptC c) (ptD d) R; linarith
    have k3 : 0 ≤ sarea (ptC c) ((1 : ℝ), (0 : ℝ)) R := by
      unfold sarea ptC; nlinarith
    have k4 : 0 < sarea X Y ((1 : ℝ), (0 : ℝ)) := by
      have e2 : sarea X Y ((1 : ℝ), (0 : ℝ)) = sarea (ptD d) X Y + (X.1 - Y.1) * d := by
        unfold sarea ptD; ring
      rw [e2]; nlinarith [mul_pos hu hd]
    have c1 : sarea X Y (ptC c) = sarea (ptC c) X Y := sarea_cycle _ _ _
    have c2 : sarea X Y (ptD d) = sarea (ptD d) X Y := sarea_cycle _ _ _
    rw [c1, c2] at e
    have : 0 < sarea (ptC c) ((1 : ℝ), (0 : ℝ)) (ptD d) * sarea X Y R := by
      rw [e]; nlinarith [mul_nonneg k1 hC.le, mul_pos k2 k4, mul_nonneg k3 hD.le]
    have := pos_of_mul_pos_right this k0.le
    rw [← sarea_cycle]; exact this
  have tb2 : AllHold (SFact.Holds (cfg h c d f ![R, X, Y, L])) [((5, 6, 7), true)] := by
    intro g hg
    simp only [List.mem_singleton] at hg
    subst hg
    exact gR
  exact count_eight' H octOne (by decide +kernel) (by decide +kernel) (tb.append tb2) octOne_table
    rfl rfl rfl hE.lower

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-eight-vertices`), mode `two_top`: a right-cap point
and two top-cap points with quadrilateral top hull. -/
theorem eight_twoTop {h c d f : ℝ} {R X Y L : Point}
    (hE : C1OneLowerEightHull.TwoTop h c d f R X Y L) :
    hullVertexCount (c1Config h c d f R X Y L) = 8 := by
  obtain ⟨a0, a1, a2, a3, a4⟩ := sq_anchor hE.anchors
  have hLs := inSquare_of_inTriangle hE.lower a0 a1 a4
  have H : Comp h c d f ![R, X, Y, L] :=
    ⟨hE.anchors, fun i => by fin_cases i; exacts [hE.rightSq, hE.topXSq, hE.topYSq, hLs],
      hE.min⟩
  have tb := comp_capTable_holds H (ms := [(5, 0), (6, 3), (7, 3)]) (by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact ⟨by norm_num, by norm_num, by norm_num, (comp_capWordAt H 0).1 hE.right⟩
    · exact ⟨by norm_num, by norm_num, by norm_num, (comp_capWordAt H 1).2.1 hE.topX⟩
    · exact ⟨by norm_num, by norm_num, by norm_num, (comp_capWordAt H 2).2.1 hE.topY⟩)
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hE.anchors
  obtain ⟨hu, hv⟩ := uv_pos (by linarith) (by linarith) hE.topX hE.topY hE.topXSq hE.topYSq
    hE.convexDXY hE.convexXYF
  obtain ⟨g0, g1, g2, g3, g4⟩ := xy_pos hE.anchors hu hv hE.convexDXY hE.convexXYF
  have gR : 0 < sarea R X Y := by
    have hR := hE.right
    obtain ⟨r0, r1, r2, r3⟩ := hE.rightSq
    unfold InRightCap ptC ptD sarea at hR
    have hRy : R.2 < d := by nlinarith
    have e1 : sarea R X Y = sarea (ptD d) X Y + (X.1 - Y.1) * (d - R.2) +
        (Y.2 - X.2) * (1 - R.1) := by unfold sarea ptD; ring
    rw [e1]; nlinarith [mul_pos hu (sub_pos.2 hRy), mul_nonneg hv.le (sub_nonneg.2 r1)]
  have tb2 : AllHold (SFact.Holds (cfg h c d f ![R, X, Y, L])) xyTable2 := by
    intro g hg
    simp only [xyTable2, List.mem_append, List.mem_map, List.mem_range, List.mem_singleton]
      at hg
    rcases hg with ⟨v, hv5, rfl⟩ | rfl
    · simp only [SFact.Holds, OrientHolds, ite_true]
      interval_cases v
      exacts [g0, g1, g2, g3, g4]
    · exact gR
  exact count_eight' H octTwo (by decide +kernel) (by decide +kernel) (tb.append tb2) octTwo_table
    rfl rfl rfl hE.lower

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-eight-vertices`). With one point in each cap (row
`(0,1,1,1)`), or a right-cap point and two top-cap points with quadrilateral top hull (row
`(0,1,2,0)`), the full hull has eight vertices. `docs/proof/nine/C1_ONE_LOWER_MIXED_CAPS.md`, lines
384-392. -/
theorem claim_eight_vertices {h c d f : ℝ} {R X Y L : Point} :
    (C1OneLowerEightHull.OneEach h c d f R X Y L →
        hullVertexCount (c1Config h c d f R X Y L) = 8) ∧
      (C1OneLowerEightHull.TwoTop h c d f R X Y L →
        hullVertexCount (c1Config h c d f R X Y L) = 8) :=
  ⟨eight_oneEach, eight_twoTop⟩

/-! ### The rows of the case tree -/

section Rows

variable {h c d f : ℝ} {Q : Fin 4 → Point}

theorem inj4 (a b e g : Fin 4) (h : [a, b, e, g].Nodup) : Function.Injective ![a, b, e, g] := by
  intro x y hxy
  simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
    List.nodup_nil, and_true] at h
  fin_cases x <;> fin_cases y <;> simp_all

/-- The sorted configuration has exactly one lower point. -/
theorem lc_one {n1 n2 n3 : ℕ} (hA : C1Anchors h c d f) (R0 : InLower h c (Q 0))
    (R1 : RegFact h c d f n1 (Q 1)) (R2 : RegFact h c d f n2 (Q 2))
    (R3 : RegFact h c d f n3 (Q 3)) (c1 : 1 ≤ n1) (c2 : 1 ≤ n2) (c3 : 1 ≤ n3) :
    lowerCount h c (Q 0) (Q 1) (Q 2) (Q 3) = 1 := by
  refine lowerCount_eq_one (k := 0) R0 fun i hi => ?_
  fin_cases i
  · exact absurd rfl hi
  · exact not_lower_of_reg c1 hA R1
  · exact not_lower_of_reg c2 hA R2
  · exact not_lower_of_reg c3 hA R3

/-- Rows with two right-cap points (`C1_ONE_LOWER_RIGHT_PAIR:Theorem1`). -/
theorem row_right2 (H : Comp h c d f Q) (hfd : f ≤ d) {n1 n2 n3 : ℕ}
    (R0 : InLower h c (Q 0)) (R1 : RegFact h c d f n1 (Q 1)) (R2 : RegFact h c d f n2 (Q 2))
    (R3 : RegFact h c d f n3 (Q 3)) (c1 : 1 ≤ n1) (c2 : 1 ≤ n2) (c3 : 1 ≤ n3) {a b : Fin 4}
    (hab : a ≠ b) (ha : InRightCap c d (Q a)) (hb : InRightCap c d (Q b)) : False := by
  have := C1OneLowerRightPair.theorem1 H.hA hfd (H.hQ 0) (H.hQ 1) (H.hQ 2) (H.hQ 3)
    (lc_one H.hA R0 R1 R2 R3 c1 c2 c3) H.hmin
  have h2 := regionCount_two (h := h) (f := f) (W := Q 0) (X := Q 1) (Y := Q 2) (Z := Q 3)
    (r := .right) hab
    (by fin_cases a <;> exact ha) (by fin_cases b <;> exact hb)
  omega

/-- Row `(3,0,0,0)`: three upper points. -/
theorem row111 (H : Comp h c d f Q) (R1 : RegFact h c d f 1 (Q 1))
    (R2 : RegFact h c d f 1 (Q 2)) (R3 : RegFact h c d f 1 (Q 3)) : False :=
  claim_E0 H (i := 1) (j := 2) (l := 3) (by decide) (by decide) (by decide) R1 R2 R3

/-- Rows `(2,1,0,0)`, `(2,0,0,1)`: one side-cap point (`C1_ONE_LOWER_SIDE_CAP:Theorem1`). -/
theorem row11s (H : Comp h c d f Q) (R0 : InLower h c (Q 0)) (R1 : RegFact h c d f 1 (Q 1))
    (R2 : RegFact h c d f 1 (Q 2)) (hX : InLeftCap f h (Q 3) ∨ InRightCap c d (Q 3)) : False :=
  C1OneLowerSideCap.theorem1 H.hA H.hmin R0 R1 R2 (H.hQ 3) hX

/-- Row `(2,0,1,0)`: one top-cap point (`C1_ONE_LOWER_TOP_CAP:Theorem`). -/
theorem row113 (H : Comp h c d f Q) (R0 : InLower h c (Q 0)) (R1 : RegFact h c d f 1 (Q 1))
    (R2 : RegFact h c d f 1 (Q 2)) (R3 : RegFact h c d f 3 (Q 3)) : False :=
  C1OneLowerTopCap.mainTheorem ⟨H.hA, H.hmin, R0, R1, R2, R3, H.hQ 3⟩

/-- Rows `(1,1,1,0)`, `(1,1,0,1)`, `(1,0,1,1)`: Theorem 1. -/
theorem row_mixed (H : Comp h c d f Q) (hfd : f ≤ d) (k : CapClass) (R0 : InLower h c (Q 0))
    (R1 : RegFact h c d f 1 (Q 1)) (R2 : InRegion h c d f k.first (Q 2))
    (R3 : InRegion h c d f k.second (Q 3)) : False :=
  theorem1 (k := k) ⟨H.hA, hfd, comp_perm H ![2, 3, 0, 1] (inj4 _ _ _ _ (by decide)), R0, R1, R2,
    H.hQ 2, R3, H.hQ 3⟩

/-- The top-hull areas are actual. -/
theorem top_ne (H : Comp h c d f Q) {a b : Fin 4} (hab : a ≠ b) :
    sarea (ptD d) (Q a) (Q b) ≠ 0 ∧ sarea (Q a) (Q b) (ptF f) ≠ 0 := by
  have A := comp_areaOK H
  have e1 := A.ne_zero (a := 2) (b := a.val + 5) (e := b.val + 5) (by norm_num) (by omega)
    (by omega) (by omega) (by intro e; exact hab (Fin.ext (by omega))) (by omega)
  have e2 := A.ne_zero (a := a.val + 5) (b := b.val + 5) (e := 3) (by omega) (by omega)
    (by norm_num) (by intro e; exact hab (Fin.ext (by omega))) (by omega) (by omega)
  rw [cfg_free, cfg_free] at e1 e2
  exact ⟨e1, e2⟩

/-- Row `(1,0,2,0)`: the top hull is triangular (`C1_ONE_LOWER_TOP_TRIANGLE:Theorem`) or convex
(`C1_ONE_LOWER_CONVEX_TOP:Theorem`, placement 1). -/
theorem row133 (H : Comp h c d f Q) (hfd : f ≤ d) (R0 : InLower h c (Q 0))
    (R1 : RegFact h c d f 1 (Q 1)) (R2 : RegFact h c d f 3 (Q 2))
    (R3 : RegFact h c d f 3 (Q 3)) : False := by
  obtain ⟨n1, n2⟩ := top_ne H (a := 2) (b := 3) (by decide)
  rcases claim_top_hull R2 R3 n1 n2 with t | t | ⟨t1, t2⟩ | ⟨t1, t2⟩
  · exact C1OneLowerTopTriangle.mainTheorem ⟨H.hA, comp_perm H ![0, 3, 1, 2]
      (inj4 _ _ _ _ (by decide)), R0, R1, R2, H.hQ 2, t⟩ hfd
  · exact C1OneLowerTopTriangle.mainTheorem ⟨H.hA, comp_perm H ![0, 2, 1, 3]
      (inj4 _ _ _ _ (by decide)), R0, R1, R3, H.hQ 3, t⟩ hfd
  · exact C1OneLowerConvexTop.mainTheorem hfd (Or.inl ⟨H.hA, comp_perm H ![2, 3, 0, 1]
      (inj4 _ _ _ _ (by decide)), R0, R1, R2, H.hQ 2, R3, H.hQ 3, t1, t2⟩)
  · exact C1OneLowerConvexTop.mainTheorem hfd (Or.inl ⟨H.hA, comp_perm H ![3, 2, 0, 1]
      (inj4 _ _ _ _ (by decide)), R0, R1, R3, H.hQ 3, R2, H.hQ 2, t1, t2⟩)

/-- Row `(0,1,2,0)`: the top hull is triangular (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:Theorem`) or
convex (eight hull vertices, `C1_ONE_LOWER_EIGHT_HULL:Theorem`). -/
theorem row233 (H : Comp h c d f Q) (hfd : f ≤ d) (R0 : InLower h c (Q 0))
    (R1 : RegFact h c d f 2 (Q 1)) (R2 : RegFact h c d f 3 (Q 2))
    (R3 : RegFact h c d f 3 (Q 3)) : False := by
  obtain ⟨n1, n2⟩ := top_ne H (a := 2) (b := 3) (by decide)
  have lc : ∀ a b : Fin 4, RegFact h c d f 3 (Q a) → RegFact h c d f 3 (Q b) →
      lowerCount h c (Q 1) (Q a) (Q b) (Q 0) = 1 := fun a b ha hb =>
    lowerCount_eq_one (k := 3) R0 fun i hi => by
      fin_cases i
      · exact not_lower_of_reg (n := 2) (by norm_num) H.hA R1
      · exact not_lower_of_reg (n := 3) (by norm_num) H.hA ha
      · exact not_lower_of_reg (n := 3) (by norm_num) H.hA hb
      · exact absurd rfl hi
  rcases claim_top_hull R2 R3 n1 n2 with t | t | ⟨t1, t2⟩ | ⟨t1, t2⟩
  · exact C1OneLowerRightTopTriangle.mainTheorem ⟨H.hA, hfd, comp_perm H ![1, 2, 0, 3]
      (inj4 _ _ _ _ (by decide)), R0, R1.1, H.hQ 1, R2, H.hQ 2, t⟩
  · exact C1OneLowerRightTopTriangle.mainTheorem ⟨H.hA, hfd, comp_perm H ![1, 3, 0, 2]
      (inj4 _ _ _ _ (by decide)), R0, R1.1, H.hQ 1, R3, H.hQ 3, t⟩
  · have hm := comp_perm H ![1, 2, 3, 0] (inj4 _ _ _ _ (by decide))
    exact C1OneLowerEightHull.mainTheorem H.hA (H.hQ 1) (H.hQ 2) (H.hQ 3) (H.hQ 0)
      (lc 2 3 R2 R3) hm (eight_twoTop ⟨H.hA, hm, R0, R1.1, H.hQ 1, R2, H.hQ 2, R3, H.hQ 3, t1, t2⟩)
  · have hm := comp_perm H ![1, 3, 2, 0] (inj4 _ _ _ _ (by decide))
    exact C1OneLowerEightHull.mainTheorem H.hA (H.hQ 1) (H.hQ 3) (H.hQ 2) (H.hQ 0)
      (lc 3 2 R3 R2) hm (eight_twoTop ⟨H.hA, hm, R0, R1.1, H.hQ 1, R3, H.hQ 3, R2, H.hQ 2, t1, t2⟩)

/-- Row `(0,1,1,1)`: eight hull vertices (`C1_ONE_LOWER_EIGHT_HULL:Theorem`). -/
theorem row234 (H : Comp h c d f Q) (R0 : InLower h c (Q 0))
    (R1 : RegFact h c d f 2 (Q 1)) (R2 : RegFact h c d f 3 (Q 2))
    (R3 : RegFact h c d f 4 (Q 3)) : False := by
  have hm := comp_perm H ![1, 2, 3, 0] (inj4 _ _ _ _ (by decide))
  have lc : lowerCount h c (Q 1) (Q 2) (Q 3) (Q 0) = 1 :=
    lowerCount_eq_one (k := 3) R0 fun i hi => by
      fin_cases i
      · exact not_lower_of_reg (n := 2) (by norm_num) H.hA R1
      · exact not_lower_of_reg (n := 3) (by norm_num) H.hA R2
      · exact not_lower_of_reg (n := 4) (by norm_num) H.hA R3
      · exact absurd rfl hi
  exact C1OneLowerEightHull.mainTheorem H.hA (H.hQ 1) (H.hQ 2) (H.hQ 3) (H.hQ 0) lc hm
    (eight_oneEach ⟨H.hA, hm, R0, R1.1, H.hQ 1, R2, H.hQ 2, R3.1, H.hQ 3⟩)

/-- Row `(0,0,3,0)`: three top-cap points (`C1_ONE_LOWER_CONVEX_TOP:Theorem`, placement 2). -/
theorem row333 (H : Comp h c d f Q) (hfd : f ≤ d) (R0 : InLower h c (Q 0))
    (R1 : RegFact h c d f 3 (Q 1)) (R2 : RegFact h c d f 3 (Q 2))
    (R3 : RegFact h c d f 3 (Q 3)) : False :=
  C1OneLowerConvexTop.mainTheorem hfd (Or.inr ⟨H.hA, comp_perm H ![1, 2, 0, 3]
    (inj4 _ _ _ _ (by decide)), R0, R1, H.hQ 1, R2, H.hQ 2, R3, H.hQ 3⟩)

/-- Row `(0,0,2,1)`: a left-cap point forbids two top-cap points (`C1_ZERO_LOWER:Theorem2`
(iii): `f ≥ 4s` forces `Ω₀ ≤ (1-4s)² < 6A₀`). -/
theorem row334 (H : Comp h c d f Q) (hfd : f ≤ d) (R1 : RegFact h c d f 3 (Q 1))
    (R2 : RegFact h c d f 3 (Q 2)) (R3 : RegFact h c d f 4 (Q 3)) : False := by
  obtain ⟨-, -, -, -, l5, -, -⟩ := H.left_row hfd 3 R3.1
  have := H.top_two (i := 1) (j := 2) (by decide) R1 R2
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have t := two_A₀
  unfold topCapArea at this
  nlinarith [mul_le_mul (show 1 - d ≤ 41 / 73 by linarith) (show 1 - f ≤ 41 / 73 by linarith)
    (by linarith) (by norm_num)]

/-- Rows with two left-cap points (`C1_ZERO_LOWER:Theorem2` (i)). -/
theorem row_left2 (H : Comp h c d f Q) (hfd : f ≤ d) (R2 : RegFact h c d f 4 (Q 2))
    (R3 : RegFact h c d f 4 (Q 3)) : False :=
  H.left_pair hfd (i := 2) (j := 3) (by decide) R2.1 R3.1 R2.2 R3.2

/-- **The case tree** of Theorem 2 for a sorted configuration (codes `0 < n₁ ≤ n₂ ≤ n₃ ≤ 4`):
the twenty possible rows. -/
theorem rows (H : Comp h c d f Q) (hfd : f ≤ d) {n1 n2 n3 : ℕ} (R0 : InLower h c (Q 0))
    (R1 : RegFact h c d f n1 (Q 1)) (R2 : RegFact h c d f n2 (Q 2))
    (R3 : RegFact h c d f n3 (Q 3)) (c1 : 1 ≤ n1) (m12 : n1 ≤ n2) (m23 : n2 ≤ n3)
    (b3 : n3 < 5) : False := by
  have r2 := fun (a b : Fin 4) (hab : a ≠ b) (ha : InRightCap c d (Q a))
    (hb : InRightCap c d (Q b)) => row_right2 H hfd R0 R1 R2 R3 c1 (by omega) (by omega) hab ha hb
  obtain rfl | rfl | rfl | rfl : n1 = 1 ∨ n1 = 2 ∨ n1 = 3 ∨ n1 = 4 := by omega
  · obtain rfl | rfl | rfl | rfl : n2 = 1 ∨ n2 = 2 ∨ n2 = 3 ∨ n2 = 4 := by omega
    · obtain rfl | rfl | rfl | rfl : n3 = 1 ∨ n3 = 2 ∨ n3 = 3 ∨ n3 = 4 := by omega
      · exact row111 H R1 R2 R3
      · exact row11s H R0 R1 R2 (Or.inr R3.1)
      · exact row113 H R0 R1 R2 R3
      · exact row11s H R0 R1 R2 (Or.inl R3.1)
    · obtain rfl | rfl | rfl : n3 = 2 ∨ n3 = 3 ∨ n3 = 4 := by omega
      · exact r2 2 3 (by decide) R2.1 R3.1
      · exact row_mixed H hfd .RT R0 R1 R2.1 R3
      · exact row_mixed H hfd .RL R0 R1 R2.1 R3.1
    · obtain rfl | rfl : n3 = 3 ∨ n3 = 4 := by omega
      · exact row133 H hfd R0 R1 R2 R3
      · exact row_mixed H hfd .TL R0 R1 R2 R3.1
    · obtain rfl : n3 = 4 := by omega
      exact row_left2 H hfd R2 R3
  · obtain rfl | rfl | rfl : n2 = 2 ∨ n2 = 3 ∨ n2 = 4 := by omega
    · exact r2 1 2 (by decide) R1.1 R2.1
    · obtain rfl | rfl : n3 = 3 ∨ n3 = 4 := by omega
      · exact row233 H hfd R0 R1 R2 R3
      · exact row234 H R0 R1 R2 R3
    · obtain rfl : n3 = 4 := by omega
      exact row_left2 H hfd R2 R3
  · obtain rfl | rfl : n2 = 3 ∨ n2 = 4 := by omega
    · obtain rfl | rfl : n3 = 3 ∨ n3 = 4 := by omega
      · exact row333 H hfd R0 R1 R2 R3
      · exact row334 H hfd R1 R2 R3
    · obtain rfl : n3 = 4 := by omega
      exact row_left2 H hfd R2 R3
  · obtain rfl : n2 = 4 := by omega
    obtain rfl : n3 = 4 := by omega
    exact row_left2 H hfd R2 R3

/-- Theorem 2 under `f ≤ d`: sort the free points by region (`claim_partition`) and run the case
tree. -/
theorem main_fd (H : Comp h c d f Q) (hfd : f ≤ d) (hex : ∃ a, InLower h c (Q a))
    (huniq : ∀ a b, InLower h c (Q a) → InLower h c (Q b) → a = b) : False := by
  choose code hcode using fun a => claim_partition H a
  have hmono := Tuple.monotone_sort code
  set σ := Tuple.sort code with hσ
  have H' := H.relabel σ
  have R : ∀ i, RegFact h c d f (code (σ i)) ((Q ∘ σ) i) := fun i => (hcode (σ i)).2.1
  have c0 : code (σ 0) = 0 := by
    obtain ⟨a, ha⟩ := hex
    have h0 := ((hcode a).2.2).2 ha
    obtain ⟨i, rfl⟩ := σ.surjective a
    have := hmono (Fin.zero_le i)
    simp only [Function.comp_apply] at this
    omega
  have c1 : 1 ≤ code (σ 1) := by
    by_contra h0; push Not at h0
    have e1 : code (σ 1) = 0 := by omega
    have l0 := ((hcode (σ 0)).2.2).1 c0
    have l1 := ((hcode (σ 1)).2.2).1 e1
    have := σ.injective (huniq _ _ l0 l1)
    exact absurd this (by decide)
  have m12 : code (σ 1) ≤ code (σ 2) := hmono (show (1 : Fin 4) ≤ 2 by decide)
  have m23 : code (σ 2) ≤ code (σ 3) := hmono (show (2 : Fin 4) ≤ 3 by decide)
  have b3 : code (σ 3) < 5 := (hcode (σ 3)).1
  have R0 := R 0
  rw [c0] at R0
  have R1 := R 1
  have R2 := R 2
  have R3 := R 3
  generalize code (σ 1) = n1 at R1 c1 m12
  generalize code (σ 2) = n2 at R2 m12 m23
  generalize code (σ 3) = n3 at R3 m23 b3
  exact rows H' hfd R0 R1 R2 R3 c1 m12 m23 b3

end Rows

/-- **Theorem 2** (`C1_ONE_LOWER_MIXED_CAPS:Theorem2`). A competitive C1 configuration cannot have
exactly one of its four free points in `OHC`: for `c1Config h c d f W X Y Z` with C1 anchors
`0 < d ≤ h < 1`, `0 < f ≤ c < 1`, free points in the closed square, `lowerCount = 1` and minimum
triangle area at least `A₀`, a contradiction. (No order between `f` and `d` is assumed.)

Proof outline. Transpose if necessary to arrange `f ≤ d`. Sort the free points by region
(`claim_partition`) and run the case tree `rows`. If all three non-lower points lie in `HCDF`,
`claim_E0`. If exactly one is exterior: `C1_ONE_LOWER_TOP_CAP:Theorem` (top cap) or
`C1_ONE_LOWER_SIDE_CAP:Theorem1` (left or right cap). Two right-cap points are excluded by
`C1_ONE_LOWER_RIGHT_PAIR:Theorem1`, two left-cap points by `C1ZeroLower.Comp.left_pair`, a
left-cap point with two top-cap points by `row334` (`C1_ZERO_LOWER:Theorem2`); the remaining
rows:

* `(1,2,0,0)`, `(0,2,1,0)`: `C1_ONE_LOWER_RIGHT_PAIR:Theorem1`;
* `(1,1,1,0)`, `(1,1,0,1)`, `(1,0,1,1)`: Theorem 1 (classes `RT`, `RL`, `TL`);
* `(1,0,2,0)`: `C1_ONE_LOWER_TOP_TRIANGLE:Theorem` for a triangular top hull,
  `C1_ONE_LOWER_CONVEX_TOP:Theorem` (placement 1) for a quadrilateral one;
* `(0,1,2,0)`: `C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:Theorem` for a triangular top hull,
  `C1_ONE_LOWER_EIGHT_HULL:Theorem` (eight hull vertices) for a quadrilateral one;
* `(0,1,1,1)`: `C1_ONE_LOWER_EIGHT_HULL:Theorem` (eight hull vertices);
* `(0,0,3,0)`: `C1_ONE_LOWER_CONVEX_TOP:Theorem` (placement 2, every three-top hull).

The top-hull alternatives are `claim_top_hull`; the eight-vertex cases are `claim_eight_vertices`.
FLAG (line 357): "`W ≥ 10s > 1`" for three upper points is not what the seven-point theorem gives;
see `claim_E0` (only `W > 1` is needed and holds).
`docs/proof/nine/C1_ONE_LOWER_MIXED_CAPS.md`, lines 349-398.
Uses: C1_ONE_LOWER_MIXED_CAPS:claim-transpose, C1_ONE_LOWER_MIXED_CAPS:claim-partition,
C1_ONE_LOWER_MIXED_CAPS:claim-E0, QUADRILATERAL_HULL:Theorem2, C1_ONE_LOWER_TOP_CAP:Theorem,
C1_ONE_LOWER_SIDE_CAP:Theorem1, C1_ONE_LOWER_MIXED_CAPS:claim-occupancy,
C1_ZERO_LOWER:claim-side-cap-capacity, C1_ZERO_LOWER:Theorem2,
C1_ONE_LOWER_MIXED_CAPS:claim-nine-rows, C1_ONE_LOWER_RIGHT_PAIR:Theorem1,
C1_ONE_LOWER_MIXED_CAPS:Theorem1, C1_ONE_LOWER_MIXED_CAPS:claim-top-hull,
C1_ONE_LOWER_TOP_TRIANGLE:Theorem, C1_ONE_LOWER_CONVEX_TOP:Theorem,
C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:Theorem, C1_ONE_LOWER_MIXED_CAPS:claim-eight-vertices,
C1_ONE_LOWER_EIGHT_HULL:Theorem, C1_ZERO_LOWER:Lemma3. -/
theorem theorem2 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hn : lowerCount h c W X Y Z = 1)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) : False := by
  classical
  have hlc : (∃ a, InLower h c (freePt W X Y Z a)) ∧
      ∀ a b, InLower h c (freePt W X Y Z a) → InLower h c (freePt W X Y Z b) → a = b := by
    unfold lowerCount countFree at hn
    obtain ⟨a, ha⟩ := Finset.card_eq_one.1 hn
    have mem : ∀ x, InLower h c (freePt W X Y Z x) ↔ x = a := by
      intro x
      have := congrArg (x ∈ ·) ha
      simpa using this
    exact ⟨⟨a, (mem a).2 rfl⟩, fun x y hx hy => ((mem x).1 hx).trans ((mem y).1 hy).symm⟩
  obtain ⟨hex, huniq⟩ := hlc
  have H : Comp h c d f ![W, X, Y, Z] := ⟨hA, fun i => by fin_cases i <;> assumption, hmin⟩
  by_cases hfd : f ≤ d
  · exact main_fd H hfd hex huniq
  · -- transpose the square (`C1_ONE_LOWER_MIXED_CAPS:claim-transpose`)
    refine main_fd H.transpose (by linarith) ?_ ?_
    · obtain ⟨a, ha⟩ := hex
      exact ⟨a, inLower_tr.2 ha⟩
    · intro a b ha hb
      exact huniq a b (inLower_tr.1 ha) (inLower_tr.1 hb)

end Heilbronn.Nine.C1OneLowerMixedCaps
