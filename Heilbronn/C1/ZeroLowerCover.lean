module

public import Heilbronn.C1.ZeroLower

/-! # The C1 configuration with no point in the lower anchor triangle, §§5–6 and Theorem 4
(`hand/C1_ZERO_LOWER.md`)

Role: on the primary route, `hand/UNRESTRICTED.md` row `n₀ = 0` (line 96) is closed by
**Theorem 4** (`theorem4`): no competitive C1 configuration has its lower anchor triangle `OHC`
empty. This file holds §5 (the finite cover by anchor-ray words and sign cells), §6 (the fixed
rational cubic certificates `hand/c1_zero_lower_certificates.json`, checked by
`hand/check_c1_zero_lower_certificates.py`), and Theorem 4. §§1–4 are in
`Heilbronn.C1.ZeroLower`.

Setting: as in `Heilbronn.C1.ZeroLower` (`C1Anchors`, free points in the square, least area at
least `A₀`, `s = 8/73`, `ρ = 49/60`), with the normalization (1) `f ≤ d` and `n₀ = 0` from §3 on;
Theorem 4 itself assumes neither (the proof transposes to get (1)).

Definitions (mirroring the checker; the words themselves are in `Heilbronn.C1.Setting`):
* `LabeledWords`: the free points carry nondecreasing zero-lower word indices, ties ordered by
  angle from `O` (§5);
* `upperPairSign`, `zeroLowerPairSign`, `zeroLowerBaseSigns`: the initial actual-triangle signs
  of a word cell (the checker's `upper_pair_signs`, `base_signs`): anchor triples, (11), (13)
  with ONE_CORNER_COMPLETION Theorem 3, (14), the equal-word order, (15);
* `zeroLowerSurvivors`: the 112 retained word multisets (the checker's `SURVIVORS`);
* `topThreeCases`, `topThreeOthers`, `TopThreeSeed`: the four multisets (16) and the seeds (17).

Results:
* `claim_words`: (12) has exactly the 16 solutions `allWords`; every free point has a word;
  a non-lower free point has one of the eleven zero-lower words, in the region listed;
* `claim_labeling`: the labeling convention of §5 is available when `n₀ = 0`;
* `claim_112`: the word indices form one of the 112 retained multisets;
* `claim_pair_signs`: the initial signs of the cell hold, and the seeds (17) for (16);
* `claim_certificates`: every retained cell is impossible (the certificate package);
* `theorem4` (**Theorem 4**).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1ZeroLower

open Heilbronn.C1

/-! ### §5. Words, labeling and initial signs -/

/-- The free points `Q 0, …, Q 3` carry the zero-lower words `zeroLowerWords (k i)` (11), with
nondecreasing word indices `k`, and points with equal words are ordered by increasing angle
from `O`: `[O Qᵢ Qⱼ] > 0` for `i < j` with `k i = k j` (`C1_ZERO_LOWER.md`, lines 391-395). -/
def LabeledWords (h c d f : ℝ) (Q : Fin 4 → Point) (k : Fin 4 → Fin 11) : Prop :=
  Monotone k ∧ (∀ i, HasWord h c d f (Q i) (zeroLowerWords (k i))) ∧
    ∀ i j, i < j → k i = k j → 0 < sarea ptO (Q i) (Q j)

/-- The checker's `upper_pair_signs(P, Q)`: for two points of `HCDF` with words `p, q` in
different sectors of the diagonals `HD, CF`, the forced sign of `[V_v P Q]` at the anchor
`v ∈ {C, D, F, H}`. If both diagonals separate them, (13) for the oriented diagonals `H → D`
and `C → F`; if one separates them, the line `PQ` isolates the middle cyclic vertex `C, F, H, D`
of the common triangle `HCD, HDF, HCF, CDF` (ONE_CORNER_COMPLETION Theorem 3), on the side fixed
by (13). -/
def upperPairSign (p q : Word) (v : Fin 5) : Option SignType :=
  let sg : Bool → SignType := fun b => if b then .pos else .neg
  let pHD := sg (wordSign p 4 2)
  let qHD := sg (wordSign q 4 2)
  let pCF := sg (wordSign p 1 3)
  let qCF := sg (wordSign q 1 3)
  if v = 0 then none
  else if pHD ≠ qHD ∧ pCF ≠ qCF then
    some (if v = 4 then -pHD else if v = 2 then pHD else if v = 1 then -pCF else pCF)
  else if pHD = qHD then
    let iso : Fin 5 := if pHD = .pos then 3 else 1
    let side := if iso = 3 then pCF else -pCF
    some (if v = iso then side else -side)
  else
    let iso : Fin 5 := if pCF = .pos then 4 else 2
    let side := if iso = 4 then -pHD else pHD
    some (if v = iso then side else -side)

/-- The initial sign of `[V_v X_a X_b]` (`a < b`) in the word cell `k` (checker `base_signs`):
the radial rule (14) when the word entries at `v` differ; otherwise, for equal words, `[O X_a X_b]
> 0` (labeling) and, for two right-cap points, `[C X_a X_b] > 0 > [D X_a X_b]` (15); otherwise,
for two points of `HCDF`, `upperPairSign`. -/
def zeroLowerPairSign (k : Fin 4 → Fin 11) (a b : Fin 4) (v : Fin 5) : Option SignType :=
  let wa := zeroLowerWords (k a)
  let wb := zeroLowerWords (k b)
  if wa v ≠ wb v then some (if wa v < wb v then .pos else .neg)
  else if k a = k b ∧ v = 0 then some .pos
  else if k a = k b ∧ zeroLowerWordRegion (k a) = .right ∧ v = 1 then some .pos
  else if k a = k b ∧ zeroLowerWordRegion (k a) = .right ∧ v = 2 then some .neg
  else if zeroLowerWordRegion (k a) = .upper ∧ zeroLowerWordRegion (k b) = .upper then
    upperPairSign wa wb v
  else none

/-- The initial sign table of the word cell `k` (checker `base_signs`), on increasing triples of
`O, C, D, F, H, X₀, …, X₃`: anchor triples positive; two anchors and a free point from its word
(11); an anchor and two free points from `zeroLowerPairSign`; nothing for three free points. -/
def zeroLowerBaseSigns (k : Fin 4 → Fin 11) : SignTable := fun t =>
  if t.2.2.val < 5 then some .pos
  else if t.2.1.val < 5 then
    some (if wordSign (zeroLowerWords (k (freeIdx t.2.2))) (anchorIdx t.1) (anchorIdx t.2.1)
      then .pos else .neg)
  else if t.1.val < 5 then zeroLowerPairSign k (freeIdx t.2.1) (freeIdx t.2.2) (anchorIdx t.1)
  else none

/-- The 112 retained word multisets of §5 (the checker's `SURVIVORS`: the 127 multisets passing
(9), capacity two of every anchor triangle, capacity one of `HDF`, distinct sectors for two
`HCDF` points and consistency of (13)/(14), minus the 15 violating the fans (4)), as
nondecreasing index tuples into `zeroLowerWords`. -/
def zeroLowerSurvivors : List (Fin 4 → Fin 11) :=
  [![0, 0, 3, 4], ![0, 0, 3, 5], ![0, 0, 3, 6], ![0, 0, 3, 7], ![0, 0, 3, 9], ![0, 0, 3, 10],
    ![0, 0, 4, 5], ![0, 0, 4, 7], ![0, 0, 4, 10], ![0, 0, 5, 6], ![0, 0, 5, 7], ![0, 0, 5, 9],
    ![0, 0, 5, 10], ![0, 0, 6, 7], ![0, 0, 7, 9], ![0, 0, 9, 10], ![0, 1, 3, 3], ![0, 1, 3, 4],
    ![0, 1, 3, 6], ![0, 1, 3, 7], ![0, 1, 3, 8], ![0, 1, 3, 9], ![0, 1, 3, 10], ![0, 1, 4, 8],
    ![0, 1, 6, 8], ![0, 1, 7, 8], ![0, 1, 8, 9], ![0, 1, 8, 10], ![0, 2, 3, 3], ![0, 2, 3, 4],
    ![0, 2, 3, 6], ![0, 2, 3, 8], ![0, 2, 3, 9], ![0, 2, 4, 8], ![0, 2, 6, 8], ![0, 2, 8, 9],
    ![0, 3, 3, 4], ![0, 3, 3, 5], ![0, 3, 3, 6], ![0, 3, 3, 7], ![0, 3, 3, 9], ![0, 3, 3, 10],
    ![0, 3, 4, 5], ![0, 3, 4, 7], ![0, 3, 4, 8], ![0, 3, 4, 10], ![0, 3, 5, 6], ![0, 3, 5, 7],
    ![0, 3, 5, 8], ![0, 3, 5, 9], ![0, 3, 5, 10], ![0, 3, 6, 7], ![0, 3, 6, 8], ![0, 3, 7, 8],
    ![0, 3, 7, 9], ![0, 3, 8, 9], ![0, 3, 8, 10], ![0, 3, 9, 10], ![0, 4, 5, 8], ![0, 4, 7, 8],
    ![0, 4, 8, 10], ![0, 5, 6, 8], ![0, 5, 7, 8], ![0, 5, 8, 9], ![0, 5, 8, 10], ![0, 6, 7, 8],
    ![0, 7, 8, 9], ![1, 2, 3, 3], ![1, 2, 3, 8], ![1, 3, 3, 3], ![1, 3, 3, 4], ![1, 3, 3, 6],
    ![1, 3, 3, 7], ![1, 3, 3, 9], ![1, 3, 3, 10], ![1, 3, 4, 8], ![1, 3, 6, 8], ![1, 3, 7, 8],
    ![1, 3, 8, 9], ![1, 3, 8, 10], ![2, 3, 3, 3], ![2, 3, 3, 4], ![2, 3, 3, 6], ![2, 3, 3, 9],
    ![2, 3, 4, 8], ![2, 3, 6, 8], ![2, 3, 8, 9], ![3, 3, 3, 4], ![3, 3, 3, 5], ![3, 3, 3, 6],
    ![3, 3, 3, 7], ![3, 3, 3, 9], ![3, 3, 3, 10], ![3, 3, 4, 5], ![3, 3, 4, 7], ![3, 3, 4, 10],
    ![3, 3, 5, 6], ![3, 3, 5, 7], ![3, 3, 5, 9], ![3, 3, 5, 10], ![3, 3, 6, 7], ![3, 3, 7, 9],
    ![3, 3, 9, 10], ![3, 4, 5, 8], ![3, 4, 7, 8], ![3, 4, 8, 10], ![3, 5, 6, 8], ![3, 5, 7, 8],
    ![3, 5, 8, 9], ![3, 5, 8, 10], ![3, 6, 7, 8], ![3, 7, 8, 9]]

/-- The four three-top-cap multisets (16), whose cover first applies Lemma 3. -/
def topThreeCases : List (Fin 4 → Fin 11) :=
  [![3, 3, 3, 4], ![3, 3, 3, 5], ![3, 3, 3, 6], ![3, 3, 3, 7]]

/-- For the inner cap point `T = Q t` (`t ∈ {0, 1, 2}`) of a case (16), the other two cap points
`R, S`, in increasing label (= angle from `O`) order. -/
def topThreeOthers : Fin 3 → Fin 4 × Fin 4 := ![(1, 2), (0, 2), (0, 1)]

/-- The seeds (17) for the inner cap point `T = Q t` of a case (16), with `R, S` the other two
cap points: all five anchors and the other free points are on the positive side of `R → S`,
and `[DRT], [DST] > 0 > [FRT], [FST]` (checker `top_three_seed`). -/
def TopThreeSeed (h c d f : ℝ) (Q : Fin 4 → Point) (t : Fin 3) : Prop :=
  (∀ v, 0 < sarea (anchor h c d f v) (Q (topThreeOthers t).1) (Q (topThreeOthers t).2)) ∧
    (∀ j, j ≠ (topThreeOthers t).1 → j ≠ (topThreeOthers t).2 →
      0 < sarea (Q (topThreeOthers t).1) (Q (topThreeOthers t).2) (Q j)) ∧
    0 < sarea (ptD d) (Q (topThreeOthers t).1) (Q (Fin.castSucc t)) ∧
    0 < sarea (ptD d) (Q (topThreeOthers t).2) (Q (Fin.castSucc t)) ∧
    sarea (ptF f) (Q (topThreeOthers t).1) (Q (Fin.castSucc t)) < 0 ∧
    sarea (ptF f) (Q (topThreeOthers t).2) (Q (Fin.castSucc t)) < 0

/-- **Claim** (`C1_ZERO_LOWER:claim-words`, made-up id). The conditions (12) have exactly the 16
solutions `allWords`. In a competitive C1 configuration every free point has a word (11)
(well defined since every anchor lies on a supporting line of the square, so the rays from it lie
in a closed angle at most `π`, in the cyclic anchor order); a free point not in `OHC` has one of
the eleven zero-lower words, and lies in the region listed for it; a free point in `OHC` has one
of the three lower words. `hand/C1_ZERO_LOWER.md`, lines 338-389. -/
-- Note: the manuscript states the zero-lower part for an empty `OHC`; it is stated here for each
-- free point not in `OHC`, which is what its proof uses.
theorem claim_words {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    (∀ w : Word, WordAntisymm w ↔ w ∈ allWords) ∧
    ∀ i : Fin 4,
      (∃ w ∈ allWords, HasWord h c d f (freePt W X Y Z i) w) ∧
      (¬ InLower h c (freePt W X Y Z i) → ∃ k : Fin 11,
        HasWord h c d f (freePt W X Y Z i) (zeroLowerWords k) ∧
          InRegion h c d f (zeroLowerWordRegion k) (freePt W X Y Z i)) ∧
      (InLower h c (freePt W X Y Z i) → ∃ w ∈ lowerWords, HasWord h c d f (freePt W X Y Z i) w) := by
  sorry

/-- **Claim** (`C1_ZERO_LOWER:claim-labeling`, made-up id; part of `claim-pair-signs` in the
inventory). If `OHC` is empty, the free points can be relabeled so that their zero-lower word
indices are nondecreasing and points with equal words are ordered by increasing angle from `O`
(a collinear tie would be a zero area). `hand/C1_ZERO_LOWER.md`, lines 391-395.
Uses: C1_ZERO_LOWER:claim-words. -/
theorem claim_labeling {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (h0 : lowerCount h c W X Y Z = 0) :
    ∃ (σ : Equiv.Perm (Fin 4)) (k : Fin 4 → Fin 11),
      LabeledWords h c d f (freePt W X Y Z ∘ σ) k := by
  sorry

/-- **Claim** (`C1_ZERO_LOWER:claim-112`, made-up id). Under (1) `f ≤ d`, the word indices of a
labeled competitive zero-lower configuration form one of the 112 retained multisets: exactly 127
multisets pass the row list (9), the global C1 capacity two of every anchor triangle, the
capacity one of `HDF`, the distinct-sector rule for two `HCDF` points and the consistency of
(13) with (14), and 15 of them place three points in one fan (4).
`hand/C1_ZERO_LOWER.md`, lines 396-432.
Uses: C1_ZERO_LOWER:eq9, ONE_CORNER:GlobalC1OccupancyCorollary, C1_ZERO_LOWER:claim-HDF-capacity-one,
ONE_CORNER_COMPLETION:Theorem2, ONE_CORNER_COMPLETION:Theorem3, C1_ZERO_LOWER:eq4,
C1_ZERO_LOWER:claim-words. -/
theorem claim_112 {h c d f : ℝ} {Q : Fin 4 → Point} {k : Fin 4 → Fin 11}
    (hA : C1Anchors h c d f) (hfd : f ≤ d) (hQ : ∀ i, Q i ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3)))
    (hk : LabeledWords h c d f Q k) :
    k ∈ zeroLowerSurvivors := by
  sorry

/-- **Claim** (`C1_ZERO_LOWER:claim-pair-signs`, made-up id). Under (1) `f ≤ d`, in a labeled
competitive configuration with retained word indices `k`, the initial signs of the cell hold:
the anchor triples are positive, (11), (13) and the isolated-vertex rule for two `HCDF` points,
(14), `[O X_i X_j] > 0` for equal words, and (15) for a right-cap pair. For the four multisets
(16), the seeds (17) hold for one of the three choices of the inner cap point (Lemma 3).
`hand/C1_ZERO_LOWER.md`, lines 391-471.
Uses: ONE_CORNER_COMPLETION:Theorem2, ONE_CORNER_COMPLETION:Theorem3, C1_ZERO_LOWER:Lemma1,
C1_ZERO_LOWER:Lemma3, C1_ZERO_LOWER:claim-words. -/
theorem claim_pair_signs {h c d f : ℝ} {Q : Fin 4 → Point} {k : Fin 4 → Fin 11}
    (hA : C1Anchors h c d f) (hfd : f ≤ d) (hQ : ∀ i, Q i ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3)))
    (hk : LabeledWords h c d f Q k) (hsurv : k ∈ zeroLowerSurvivors) :
    (zeroLowerBaseSigns k).Holds (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3)) ∧
      (k ∈ topThreeCases → ∃ t : Fin 3, TopThreeSeed h c d f Q t) := by
  sorry

/-! ### §6. Fixed rational cubic inequalities -/

/-- **Claim** (`C1_ZERO_LOWER:claim-certificates`, made-up id; the certificate package
`hand/c1_zero_lower_certificates.json`, checked by `hand/check_c1_zero_lower_certificates.py`).
Under (1) `f ≤ d`, no competitive C1 configuration has labeled free points with retained word
indices `k` satisfying the initial signs of the cell (and, for (16), the seeds (17) of some
inner cap point). In the manuscript: the fixed sign trees split further actual-triangle signs
into 264 terminal cells; in each, a positive combination (21) of products of the affine factors
of §6, the quadratic costs (18)–(19) and the cubic costs (20) has cube bound (22) at most
`-71426698043/72500320256 < -3/4`, while every term is nonnegative.
`hand/C1_ZERO_LOWER.md`, lines 473-603.
Uses: QUADRILATERAL_HULL:Theorem1, C1_ZERO_LOWER:Lemma1, C1_ZERO_LOWER:eq5-6, C1_ZERO_LOWER:eq7,
C1_ZERO_LOWER:eq7-table, C1_ZERO_LOWER:eq2, C1_ZERO_LOWER:claim-region-bounds,
CORNER_FAMILIES:TwoInteriorPointLemma, ONE_CORNER:GlobalC1OccupancyCorollary. -/
theorem claim_certificates {h c d f : ℝ} {Q : Fin 4 → Point} {k : Fin 4 → Fin 11}
    (hA : C1Anchors h c d f) (hfd : f ≤ d) (hQ : ∀ i, Q i ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3)))
    (hk : LabeledWords h c d f Q k) (hsurv : k ∈ zeroLowerSurvivors)
    (hbase : (zeroLowerBaseSigns k).Holds (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3)))
    (hseed : k ∈ topThreeCases → ∃ t : Fin 3, TopThreeSeed h c d f Q t) :
    False := by
  sorry

/-- **Theorem 4** (`C1_ZERO_LOWER:Theorem4`, complete zero-lower exclusion). No competitive C1
configuration has its lower anchor triangle `OHC` empty: for every position of the four free
points in the closed unit square (every hull, every boundary contact), a C1 configuration with
`n₀ = 0` has least triangle area below `A₀`. `hand/C1_ZERO_LOWER.md`, lines 605-609.
Uses: C1_ZERO_LOWER:eq9, C1_ZERO_LOWER:claim-words, C1_ZERO_LOWER:claim-labeling,
C1_ZERO_LOWER:claim-pair-signs, C1_ZERO_LOWER:claim-112, C1_ZERO_LOWER:claim-certificates. -/
theorem theorem4 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h0 : lowerCount h c W X Y Z = 0)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) : False := by
  sorry

end Heilbronn.C1ZeroLower
