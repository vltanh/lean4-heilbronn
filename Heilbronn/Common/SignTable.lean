module

public import Heilbronn.Common.Cover

/-!
# Sign tables: the shared layer of the sign-table packages

Most certificate packages (`Heilbronn.Common.Cover`) split on the orientations of triangles of `N`
points `P 0, …, P (N-1)`, given as expressions `pt` in the cube variables, and keep the known
orientations in a *sign table* `tb : List SFact`. This module holds what they share.

Computable (for the kernel checks):
* `lexTriples N`: the increasing triples of `0, …, N-1`, in lexicographic order;
* `orient a b c sg`: the signed triangle of the ordered triple `(a, b, c)`, stored on the sorted
  triple (flipped for an odd permutation);
* `branchFacts n p i val`: the signs at the vertex `V_i` of an `n`-gon `0, …, n-1` of the word
  entry `val` of the point `p` (`[V_i V_{i+j} p] > 0` iff `j ≤ val`); `consistent tb b`: the facts
  `b` agree with the table wherever both know a sign;
* `tableCosts pt bnd free tb`: the strengthened cost (`costAtom`) of every signed triangle of the
  table, with the number of points of `free` certified inside it; `lookupCosts N pt bnd free tb`:
  the same for every increasing triple whose sign the table knows (the atom `0` otherwise);
* `tableSpec pt bnd free pre post base branches`: the package whose facts are signed triangles,
  with atoms `pre ++ tableCosts pt bnd free (base ++ fs) ++ post`;
* `SignOrCut`: facts that are signed triangles or expressions known to be nonnegative, with
  `sgnFacts`, `cutFacts`.

Soundness:
* `FHolds N P f`: the signed triangle `f` has increasing indices below `N` and holds for `P`;
  `fholds_orient`, `fholds_signBranches`;
* `orient_ne_zero`, `orient_idx_ne`, `holds_orient`, `consistent_of_holds`, `mem_lexTriples`;
* `CostHyp N free bnd P`: the area premises of the strengthened costs (every triangle has doubled
  area at least `bnd 0`; `bnd 1 ≤ 3 bnd 0`; two points of `free` strictly inside give every
  `bnd (n + 2)`; `CostHyp.of_inside` builds it from the unoriented two-interior-point bound),
  with `CostHyp.costAtom_nonneg`, `CostHyp.tableCosts_nonneg`, `CostHyp.lookupCosts_nonneg`;
* `tableSpec_sound`: a checked tree of `tableSpec` excludes every configuration with the cost
  premises, true initial table and exhaustive splits;
* `FactHolds`, `allHold_sgn`, `allHold_cut`, `allHold_inl`, `allHold_inr` for `SignOrCut` facts.
-/

@[expose] public section

namespace Heilbronn.Cover

open Cert Cert.Expr

/-! ### Triples and signed triangles -/

/-- The increasing triples of `0, …, N-1`, in lexicographic order. -/
def lexTriples (N : ℕ) : List (ℕ × ℕ × ℕ) :=
  (List.range N).flatMap fun a => (List.range N).flatMap fun b => (List.range N).filterMap
    fun c => if a < b ∧ b < c then some (a, b, c) else none

/-- The signed triangle of the ordered triple `(a, b, c)` with orientation `sg`, stored on the
sorted triple (flipped for an odd permutation). -/
def orient (a b c : ℕ) (sg : Bool) : SFact :=
  if a < b ∧ b < c then ((a, b, c), sg)
  else if b < c ∧ c < a then ((b, c, a), sg)
  else if c < a ∧ a < b then ((c, a, b), sg)
  else if b < a ∧ a < c then ((b, a, c), !sg)
  else if a < c ∧ c < b then ((a, c, b), !sg)
  else ((c, b, a), !sg)

/-- The signs at the vertex `V_i` of the `n`-gon `0, …, n-1` of the word entry `val` of the
point `p`: `[V_i V_{i+j} p] > 0` iff `j ≤ val`. -/
def branchFacts (n p i val : ℕ) : List SFact :=
  (List.range (n - 1)).map fun j => orient i ((i + (j + 1)) % n) p (decide (j + 1 ≤ val))

/-- The facts `b` agree with the table `tb` wherever both know a sign. -/
def consistent (tb b : List SFact) : Bool :=
  b.all fun f => match lookup tb f.1 with
    | some sg => sg == f.2
    | none => true

/-- The signed triangle `f` has increasing indices below `N` and holds for the points `P`. -/
def FHolds (N : ℕ) (P : ℕ → Point) (f : SFact) : Prop :=
  f.1.1 < f.1.2.1 ∧ f.1.2.1 < f.1.2.2 ∧ f.1.2.2 < N ∧ SFact.Holds P f

theorem mem_lexTriples {N : ℕ} {t : ℕ × ℕ × ℕ} (ht : t ∈ lexTriples N) :
    t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧ t.2.2 < N := by
  simp only [lexTriples, List.mem_flatMap, List.mem_range, List.mem_filterMap,
    Option.ite_none_right_eq_some, Option.some.injEq] at ht
  obtain ⟨a, _, b, _, c, hc, ⟨hab, hbc⟩, rfl⟩ := ht
  exact ⟨hab, hbc, hc⟩

theorem orient_ne_zero {sg : Bool} {x : ℝ} (h : OrientHolds sg x) : x ≠ 0 := by
  cases sg <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h <;>
    [exact h.ne; exact h.ne']

/-- An oriented triangle has three distinct indices. -/
theorem orient_idx_ne {P : ℕ → Point} {sg : Bool} {a b e : ℕ}
    (hs : OrientHolds sg (sarea (P a) (P b) (P e))) : a ≠ b ∧ b ≠ e ∧ a ≠ e := by
  have hne := orient_ne_zero hs
  refine ⟨?_, ?_, ?_⟩
  · rintro rfl; exact hne (sarea_self₁₂ _ _)
  · rintro rfl; exact hne (sarea_self₂₃ _ _)
  · rintro rfl; exact hne (sarea_self₁₃ _ _)

/-- A triangle with a point strictly inside, in the orientation `sg`, has the orientation `sg`. -/
theorem orientHolds_of_inside {sg : Bool} {A B C X : Point} (h1 : OrientHolds sg (sarea A B X))
    (h2 : OrientHolds sg (sarea B C X)) (h3 : OrientHolds sg (sarea C A X)) :
    OrientHolds sg (sarea A B C) := by
  have e := sarea_add_sarea_add_sarea A B C X
  cases sg <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h1 h2 h3 ⊢ <;>
    linarith

theorem holds_orient {P : ℕ → Point} {i j k : ℕ} {sg : Bool} (_hij : i ≠ j) (_hjk : j ≠ k)
    (_hik : i ≠ k) :
    SFact.Holds P (orient i j k sg) ↔ OrientHolds sg (sarea (P i) (P j) (P k)) := by
  unfold orient
  have c1 := sarea_cycle (P i) (P j) (P k)
  have c2 := sarea_cycle (P j) (P k) (P i)
  have s1 := sarea_swap₁₂ (P i) (P j) (P k)
  have s2 := sarea_swap₂₃ (P i) (P j) (P k)
  have s3 := sarea_swap₁₃ (P i) (P j) (P k)
  split_ifs <;> simp only [SFact.Holds] <;>
    first
    | rw [c1]
    | rw [c2, c1]
    | rw [s1, orientHolds_not]
    | rw [s2, orientHolds_not]
    | rw [s3, orientHolds_not]

/-- The signed triangle of an oriented triple of indices below `N` holds. -/
theorem fholds_orient {N : ℕ} {P : ℕ → Point} {a b e : ℕ} {sg : Bool} (ha : a < N) (hb : b < N)
    (he : e < N) (hs : OrientHolds sg (sarea (P a) (P b) (P e))) :
    FHolds N P (orient a b e sg) := by
  have hne : sarea (P a) (P b) (P e) ≠ 0 := orient_ne_zero hs
  have n1 : a ≠ b := by rintro rfl; exact hne (sarea_self₁₂ _ _)
  have n2 : b ≠ e := by rintro rfl; exact hne (by unfold sarea; ring)
  have n3 : a ≠ e := by rintro rfl; exact hne (sarea_self₁₃ _ _)
  have c1 := sarea_cycle (P a) (P b) (P e)
  have c2 := sarea_cycle (P b) (P e) (P a)
  unfold orient
  split_ifs with h1 h2 h3 h4 h5
  · exact ⟨h1.1, h1.2, he, hs⟩
  · exact ⟨h2.1, h2.2, ha, by simp only [SFact.Holds]; rw [c1]; exact hs⟩
  · exact ⟨h3.1, h3.2, hb, by simp only [SFact.Holds]; rw [c2, c1]; exact hs⟩
  · refine ⟨h4.1, h4.2, he, ?_⟩
    simp only [SFact.Holds]; rw [sarea_swap₁₂, orientHolds_not]; exact hs
  · refine ⟨h5.1, h5.2, hb, ?_⟩
    simp only [SFact.Holds]; rw [sarea_swap₂₃, orientHolds_not]; exact hs
  · refine ⟨by simp only; omega, by simp only; omega, ha, ?_⟩
    simp only [SFact.Holds]; rw [sarea_swap₁₃, orientHolds_not]; exact hs

/-- The orientation split of an increasing triple below `N` with nonzero area is exhaustive. -/
theorem fholds_signBranches {N : ℕ} {P : ℕ → Point} {a b c : ℕ} (hab : a < b) (hbc : b < c)
    (hc : c < N) (hne : sarea (P a) (P b) (P c) ≠ 0) :
    ∃ br ∈ signBranches (a, b, c), AllHold (FHolds N P) br := by
  obtain ⟨br, hbr, hall⟩ := signBranches_exhaustive (P := P) (t := (a, b, c)) hne
  refine ⟨br, hbr, fun x hx => ⟨?_, ?_, ?_, hall x hx⟩⟩ <;>
  · simp only [signBranches, List.mem_cons, List.not_mem_nil, or_false] at hbr
    rcases hbr with rfl | rfl <;> simp at hx <;> subst hx <;> simp <;> omega

theorem allHold_holds {N : ℕ} {P : ℕ → Point} {tb : List SFact} (h : AllHold (FHolds N P) tb) :
    AllHold (SFact.Holds P) tb :=
  fun f hf => (h f hf).2.2.2

theorem consistent_of_holds {P : ℕ → Point} {tb b : List SFact}
    (htb : AllHold (SFact.Holds P) tb) (hb : AllHold (SFact.Holds P) b) :
    consistent tb b = true := by
  unfold consistent
  rw [List.all_eq_true]
  intro f hf
  rcases hl : lookup tb f.1 with _ | sg
  · rfl
  · have h1 := lookup_sound htb hl
    have h2 := hb f hf
    simp only [SFact.Holds] at h2
    cases sg <;> cases hsg : f.2 <;> rw [hsg] at h2 <;>
      simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h1 h2 <;>
      first | rfl | (exfalso; linarith)

/-! ### Strengthened costs -/

/-- The strengthened costs of the signed triangles of the table `tb`, each with the number of
points of `free` certified inside it. -/
def tableCosts (pt : ℕ → Expr × Expr) (bnd : ℕ → ℚ) (free : List ℕ) (tb : List SFact) :
    List Expr :=
  tb.map fun f => costAtom pt bnd f (insideList tb free f).length

/-- The strengthened cost of every increasing triple of `0, …, N-1` (lexicographic) whose sign the
table `tb` knows, the atom `0` for an unknown sign. -/
def lookupCosts (N : ℕ) (pt : ℕ → Expr × Expr) (bnd : ℕ → ℚ) (free : List ℕ)
    (tb : List SFact) : List Expr :=
  (lexTriples N).map fun t => match lookup tb t with
    | some sg => costAtom pt bnd (t, sg) (insideList tb free (t, sg)).length
    | none => k 0

/-- The premises of the strengthened costs at the points `P` (indices below `N`, inside points
counted among `free`) for the bounds `bnd`: every triangle of three distinct indices has doubled
area at least `bnd 0`; `bnd 1 ≤ 3 bnd 0` (one point inside, by subdivision); a triangle with two
distinct points of `free` strictly inside, in its orientation `sg`, has oriented doubled area at
least every `bnd (n + 2)` (the two-interior-point lemma). -/
structure CostHyp (N : ℕ) (free : List ℕ) (bnd : ℕ → ℚ) (P : ℕ → Point) : Prop where
  free_lt : ∀ j ∈ free, j < N
  nodup : free.Nodup
  area : ∀ a b e, a < N → b < N → e < N → a ≠ b → b ≠ e → a ≠ e →
    (bnd 0 : ℝ) ≤ |sarea (P a) (P b) (P e)|
  one : (bnd 1 : ℝ) ≤ 3 * bnd 0
  two : ∀ (a b e j₁ j₂ : ℕ) (sg : Bool), a < N → b < N → e < N → j₁ ∈ free → j₂ ∈ free →
    j₁ ≠ j₂ → OrientHolds sg (sarea (P a) (P b) (P j₁)) →
    OrientHolds sg (sarea (P b) (P e) (P j₁)) → OrientHolds sg (sarea (P e) (P a) (P j₁)) →
    OrientHolds sg (sarea (P a) (P b) (P j₂)) → OrientHolds sg (sarea (P b) (P e) (P j₂)) →
    OrientHolds sg (sarea (P e) (P a) (P j₂)) →
    ∀ n, (bnd (n + 2) : ℝ) ≤ sgArea sg (sarea (P a) (P b) (P e))

/-- The cost premises from the unoriented form of the two-interior-point bound: a triangle of
indices below `N` with two further points strictly inside has doubled area at least `ρ`, and every
`bnd (n + 2)` is at most `ρ`. -/
theorem CostHyp.of_inside {N : ℕ} {free : List ℕ} {bnd : ℕ → ℚ} {P : ℕ → Point}
    (hfree : ∀ j ∈ free, j < N) (hnd : free.Nodup)
    (harea : ∀ a b e, a < N → b < N → e < N → a ≠ b → b ≠ e → a ≠ e →
      (bnd 0 : ℝ) ≤ |sarea (P a) (P b) (P e)|)
    (hone : (bnd 1 : ℝ) ≤ 3 * bnd 0) {ρ : ℝ} (hρ : ∀ n, (bnd (n + 2) : ℝ) ≤ ρ)
    (htwo : ∀ a b e j₁ j₂, a < N → b < N → e < N → j₁ < N → j₂ < N → [a, b, e, j₁, j₂].Nodup →
      InsideTriangle (P j₁) (P a) (P b) (P e) → InsideTriangle (P j₂) (P a) (P b) (P e) →
      ρ ≤ |sarea (P a) (P b) (P e)|) :
    CostHyp N free bnd P := by
  refine ⟨hfree, hnd, harea, hone,
    fun a b e j₁ j₂ sg ha hb he hj₁ hj₂ h12 o1 o2 o3 p1 p2 p3 n => ?_⟩
  obtain ⟨n0, n1, n2⟩ := orient_idx_ne o1
  obtain ⟨n3, n4, -⟩ := orient_idx_ne o2
  obtain ⟨n5, -, -⟩ := orient_idx_ne o3
  obtain ⟨-, m1, m2⟩ := orient_idx_ne p1
  obtain ⟨-, m3, -⟩ := orient_idx_ne p2
  have hs := orientHolds_of_inside o1 o2 o3
  have := htwo a b e j₁ j₂ ha hb he (hfree j₁ hj₁) (hfree j₂ hj₂)
    (by simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
      List.nodup_nil, and_true, not_false_eq_true]; omega)
    (inTriangle_of_orient o1 o2 o3) (inTriangle_of_orient p1 p2 p3)
  rw [← sgArea_eq_abs hs] at this
  linarith [hρ n]

/-- Two distinct members of a list without duplicates of length at least two. -/
theorem two_of_length {l : List ℕ} (hl : l.Nodup) (h2 : 2 ≤ l.length) :
    ∃ j₁ ∈ l, ∃ j₂ ∈ l, j₁ ≠ j₂ := by
  match l, hl, h2 with
  | j₁ :: j₂ :: _, hl, _ =>
    refine ⟨j₁, List.mem_cons_self .., j₂, List.mem_cons_of_mem _ (List.mem_cons_self ..), ?_⟩
    intro e
    subst e
    exact (List.nodup_cons.1 hl).1 (List.mem_cons_self ..)

section Costs

variable {N : ℕ} {free : List ℕ} {bnd : ℕ → ℚ} {P : ℕ → Point}

/-- **The strengthened costs.** The cost of a true signed triangle of indices below `N`, at any
count up to the number of points of `free` certified inside it by a true table, is nonnegative:
`bnd 0` with no point inside, `bnd 1 ≤ 3 bnd 0` with one (subdivision), `bnd (n + 2)` with two
(the two-interior-point lemma). -/
theorem CostHyp.costAtom_nonneg (H : CostHyp N free bnd P) {pt : ℕ → Expr × Expr} {z : ℕ → ℝ}
    (hpt : ∀ i, i < N → ptEval z pt i = P i) {tb : List SFact}
    (htb : AllHold (SFact.Holds P) tb) {g : SFact} (hg : g.1.1 < N ∧ g.1.2.1 < N ∧ g.1.2.2 < N)
    (hgs : SFact.Holds P g) {n : ℕ} (hn : n ≤ (insideList tb free g).length) :
    0 ≤ (costAtom pt bnd g n).eval z := by
  obtain ⟨g1, g2, g3⟩ := hg
  rw [eval_costAtom, hpt _ g1, hpt _ g2, hpt _ g3]
  have hs : OrientHolds g.2 (sarea (P g.1.1) (P g.1.2.1) (P g.1.2.2)) := hgs
  obtain ⟨n12, n23, n13⟩ := orient_idx_ne hs
  have harea := H.area _ _ _ g1 g2 g3 n12 n23 n13
  rw [← sgArea_eq_abs hs] at harea
  have hnd : (insideList tb free g).Nodup := List.Nodup.filter _ H.nodup
  rcases Nat.lt_or_ge n 1 with h0 | h1
  · obtain rfl : n = 0 := by omega
    linarith
  rcases Nat.lt_or_ge n 2 with h1' | h2
  · obtain rfl : n = 1 := by omega
    obtain ⟨j, hj⟩ := List.exists_mem_of_length_pos (show 0 < (insideList tb free g).length by
      omega)
    obtain ⟨hjf, o1, o2, o3⟩ := insideList_sound htb hj
    have hjN := H.free_lt j hjf
    obtain ⟨-, m1, m2⟩ := orient_idx_ne o1
    obtain ⟨-, m3, -⟩ := orient_idx_ne o2
    have q1 := H.area _ _ _ g1 g2 hjN n12 m1 m2
    have q2 := H.area _ _ _ g2 g3 hjN n23 m3 m1
    have q3 := H.area _ _ _ g3 g1 hjN (Ne.symm n13) m2 m3
    have := three_le_sgArea (e := (bnd 0 : ℝ)) o1 o2 o3 q1 q2 q3
    have := H.one
    linarith
  · obtain ⟨m, rfl⟩ : ∃ m, n = m + 2 := ⟨n - 2, by omega⟩
    obtain ⟨j₁, hj₁, j₂, hj₂, hne⟩ := two_of_length hnd (by omega)
    obtain ⟨f1, a1, a2, a3⟩ := insideList_sound htb hj₁
    obtain ⟨f2, b1, b2, b3⟩ := insideList_sound htb hj₂
    have := H.two _ _ _ j₁ j₂ g.2 g1 g2 g3 f1 f2 hne a1 a2 a3 b1 b2 b3 m
    linarith

theorem CostHyp.tableCosts_nonneg (H : CostHyp N free bnd P) {pt : ℕ → Expr × Expr}
    {z : ℕ → ℝ} (hpt : ∀ i, i < N → ptEval z pt i = P i) {tb : List SFact}
    (htb : AllHold (FHolds N P) tb) : ∀ e ∈ tableCosts pt bnd free tb, 0 ≤ e.eval z := by
  intro e he
  simp only [tableCosts, List.mem_map] at he
  obtain ⟨g, hg, rfl⟩ := he
  obtain ⟨g1, g2, g3, gs⟩ := htb g hg
  exact H.costAtom_nonneg (g := g) hpt (allHold_holds htb)
    ⟨(g1.trans g2).trans g3, g2.trans g3, g3⟩ gs le_rfl

theorem CostHyp.lookupCosts_nonneg (H : CostHyp N free bnd P) {pt : ℕ → Expr × Expr}
    {z : ℕ → ℝ} (hpt : ∀ i, i < N → ptEval z pt i = P i) {tb : List SFact}
    (htb : AllHold (SFact.Holds P) tb) : ∀ e ∈ lookupCosts N pt bnd free tb, 0 ≤ e.eval z := by
  intro e he
  simp only [lookupCosts, List.mem_map] at he
  obtain ⟨t, ht, rfl⟩ := he
  obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
  rcases hl : lookup tb t with _ | sg
  · simp
  · exact H.costAtom_nonneg (g := (t, sg)) hpt htb ⟨(h1.trans h2).trans h3, h2.trans h3, h3⟩
      (lookup_sound htb hl) le_rfl

end Costs

/-! ### The package of a sign table -/

/-- The cover package of a sign table: the facts are signed triangles, the atoms of a case with the
facts `fs` are `pre`, the strengthened costs of the table `base ++ fs` and `post`, and the splits
are `branches`. -/
def tableSpec {S : Type} (pt : ℕ → Expr × Expr) (bnd : ℕ → ℚ) (free : List ℕ)
    (pre post : List Expr) (base : List SFact) (branches : List SFact → S → List (List SFact)) :
    Spec SFact S where
  atoms fs := pre ++ tableCosts pt bnd free (base ++ fs) ++ post
  branches := branches

/-- **Soundness of a sign-table cover.** If the tree checks, no configuration satisfies the case:
the point `z` of the cube carries the points `P` (`hpt`) with the cost premises `H`, the
expressions `pre` and `post` are nonnegative, the initial table holds and the splits are
exhaustive. -/
theorem tableSpec_sound {S : Type} {pt : ℕ → Expr × Expr} {bnd : ℕ → ℚ} {free : List ℕ}
    {pre post : List Expr} {base : List SFact} {branches : List SFact → S → List (List SFact)}
    {T : Tree S} (hT : checkTree (tableSpec pt bnd free pre post base branches) [] T = true)
    {N : ℕ} {P : ℕ → Point} {z : ℕ → ℝ} (hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1)
    (hpt : ∀ i, i < N → ptEval z pt i = P i) (H : CostHyp N free bnd P)
    (hpre : ∀ e ∈ pre, 0 ≤ e.eval z) (hpost : ∀ e ∈ post, 0 ≤ e.eval z)
    (hbase : AllHold (FHolds N P) base)
    (hbranch : ∀ fs s, AllHold (FHolds N P) fs → ∃ b ∈ branches fs s, AllHold (FHolds N P) b) :
    False := by
  refine checkTree_sound (σ := tableSpec pt bnd free pre post base branches)
    (Holds := FHolds N P) hz ?_ hbranch (fun _ _ _ h => absurd h (by simp [tableSpec]))
    (fs := []) (fun _ h => absurd h List.not_mem_nil) hT
  intro fs hfs e he
  simp only [tableSpec, List.mem_append] at he
  rcases he with (he | he) | he
  · exact hpre e he
  · exact H.tableCosts_nonneg hpt (hbase.append hfs) e he
  · exact hpost e he

/-! ### Facts with cuts -/

/-- A fact of a package with cuts: a signed triangle (`Sum.inl`), or an expression known to be
nonnegative (`Sum.inr`, for example a scalar cut). -/
abbrev SignOrCut := SFact ⊕ Expr

/-- The signed triangles of the facts. -/
def sgnFacts (fs : List SignOrCut) : List SFact := fs.filterMap Sum.getLeft?

/-- The nonnegative expressions of the facts. -/
def cutFacts (fs : List SignOrCut) : List Expr := fs.filterMap Sum.getRight?

/-- The interpretation of the facts at the cube point `z`: a signed triangle satisfies `Holds`, an
expression is nonnegative. -/
def FactHolds (Holds : SFact → Prop) (z : ℕ → ℝ) : SignOrCut → Prop
  | .inl f => Holds f
  | .inr e => 0 ≤ e.eval z

theorem allHold_sgn {Holds : SFact → Prop} {z : ℕ → ℝ} {fs : List SignOrCut}
    (h : AllHold (FactHolds Holds z) fs) : AllHold Holds (sgnFacts fs) := by
  intro f hf
  simp only [sgnFacts, List.mem_filterMap] at hf
  obtain ⟨g, hg, e⟩ := hf
  cases g with
  | inl g => simp only [Sum.getLeft?_inl, Option.some.injEq] at e; subst e; exact h _ hg
  | inr g => simp at e

theorem allHold_cut {Holds : SFact → Prop} {z : ℕ → ℝ} {fs : List SignOrCut}
    (h : AllHold (FactHolds Holds z) fs) : ∀ e ∈ cutFacts fs, 0 ≤ e.eval z := by
  intro e he
  simp only [cutFacts, List.mem_filterMap] at he
  obtain ⟨g, hg, e'⟩ := he
  cases g with
  | inl g => simp at e'
  | inr g => simp only [Sum.getRight?_inr, Option.some.injEq] at e'; subst e'; exact h _ hg

theorem allHold_inl {Holds : SFact → Prop} {z : ℕ → ℝ} {fs : List SFact}
    (h : AllHold Holds fs) : AllHold (FactHolds Holds z) (fs.map Sum.inl) := by
  intro f hf
  simp only [List.mem_map] at hf
  obtain ⟨g, hg, rfl⟩ := hf
  exact h g hg

theorem allHold_inr {Holds : SFact → Prop} {z : ℕ → ℝ} {fs : List Expr}
    (h : ∀ e ∈ fs, 0 ≤ e.eval z) : AllHold (FactHolds Holds z) (fs.map Sum.inr) := by
  intro f hf
  simp only [List.mem_map] at hf
  obtain ⟨g, hg, rfl⟩ := hf
  exact h g hg

end Heilbronn.Cover
