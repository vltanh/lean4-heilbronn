module

public import Heilbronn.Common.Cover
public import Heilbronn.Nine.SixBoundary.Setting

/-! # Radial-word certificate covers (shared by the six-boundary packages)

A generic form of the certificate covers of `docs/proof/nine/SIX_BOUNDARY_*.md` whose cases are the radial
words of the free points of a strictly convex hull polygon (`Heilbronn.Common.Cover`).

A package `Pkg` fixes `N` points, indexed `0, …, N-1` (the hull polygon `0, …, n-1`
counterclockwise, then the free points `free`), as expressions `pt` in the cube variables, its
affine `factors`, the initial signed triangles `base`, the occupancy bounds `bnd` (`bnd m` for a
triangle with `m` certified inside free points) and the package costs `extra` (computed from the
sign table). Facts are signed triangles (`Sum.inl`) or expressions known to be nonnegative
(`Sum.inr`, cuts and extra factors). The atoms of a case are

* the factors,
* for each increasing triple (lexicographic) with a known sign, its cost strengthened by the
  certified inside count (`tier 2`), then the same at the plain threshold (`tier 0`) and at
  `min 1 count` (`tier 1`), the atom `0` for an unknown sign,
* the package costs and the cut atoms of the facts.

The splits are `vertex p i` (the radial word entry of the free point `p` at the vertex `V_i`, one
branch per value `1, …, n-2` consistent with the known signs), `tri a b c` (an orientation) and
`cut e q`. `Pkg.sound` is the soundness theorem, with the geometric premises collected in `Hyp`.
`enum_sound` reads a radial word off an enumeration tree whose leaves are closed by `wordKnown`.
-/

@[expose] public section

namespace Heilbronn.Nine.SixRadial

open Cert Cert.Expr Cover SixBoundary

/-- A fact: a signed triangle or an expression known to be nonnegative. -/
abbrev Fact := SFact ⊕ Expr

/-- The signed triangles of the facts. -/
def sgnFacts (fs : List Fact) : List SFact := fs.filterMap Sum.getLeft?

/-- The nonnegative expressions of the facts. -/
def cutFacts (fs : List Fact) : List Expr := fs.filterMap Sum.getRight?

/-- The increasing triples of `0, …, N-1`, lexicographically. -/
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

/-- The signs at `V_i` of the word entry `val` of the free point `p` on an `n`-gon:
`[V_i V_{i+j} p] > 0` iff `j ≤ val`. -/
def branchFacts (n p i val : ℕ) : List SFact :=
  (List.range (n - 1)).map fun j => orient i ((i + (j + 1)) % n) p (decide (j + 1 ≤ val))

/-- All the signs of the word `w` of the free point `p`. -/
def wordFacts (n p : ℕ) (w : List ℕ) : List SFact :=
  (List.range n).flatMap fun i => branchFacts n p i (w.getD i 0)

/-- The facts `b` agree with the table `tb` wherever both know a sign. -/
def consistent (tb b : List SFact) : Bool :=
  b.all fun f => match lookup tb f.1 with
    | some sg => sg == f.2
    | none => true

/-- The split labels. -/
inductive Split where
  | vertex (p i : ℕ)
  | tri (a b c : ℕ)
  | cut (e : Expr) (q : ℚ)

/-- A radial certificate package. -/
structure Pkg where
  /-- The hull polygon is `0, …, n-1`. -/
  n : ℕ
  /-- The number of points. -/
  N : ℕ
  /-- The points as expressions. -/
  pt : ℕ → Expr × Expr
  /-- The affine factors. -/
  factors : List Expr
  /-- The initial signed triangles. -/
  base : List SFact
  /-- The occupancy bounds. -/
  bnd : ℕ → ℚ
  /-- The free points. -/
  free : List ℕ
  /-- The package costs, from the sign table. -/
  extra : List SFact → List Expr

namespace Pkg

variable (P : Pkg)

/-- The sign table of a case. -/
def table (fs : List Fact) : List SFact := P.base ++ sgnFacts fs

/-- The cost of every lexicographic triple with the count of certified inside points capped at
`m` (the atom `0` for an unknown sign). -/
def tier (m : ℕ) (tb : List SFact) : List Expr :=
  (lexTriples P.N).map fun t => match lookup tb t with
    | some sg => costAtom P.pt P.bnd (t, sg) (min m (insideList tb P.free (t, sg)).length)
    | none => k 0

/-- The atoms of a case. -/
def atoms (fs : List Fact) : List Expr :=
  P.factors ++ P.tier 2 (P.table fs) ++ P.tier 0 (P.table fs) ++ P.tier 1 (P.table fs) ++
    P.extra (P.table fs) ++ cutFacts fs

/-- The children of a split; an invalid split has one child with no new fact. -/
def branches (fs : List Fact) : Split → List (List Fact)
  | .vertex p i =>
    if i < P.n ∧ P.free.contains p = true then
      ((List.range (P.n - 2)).map (· + 1)).filterMap fun val =>
        if consistent (P.table fs) (branchFacts P.n p i val) then
          some ((branchFacts P.n p i val).map Sum.inl) else none
    else [[]]
  | .tri a b c =>
    if a < b ∧ b < c ∧ c < P.N then (signBranches (a, b, c)).map (List.map Sum.inl) else [[]]
  | .cut e q => (cutBranches e q).map (List.map Sum.inr)

/-- The cover package with the closing test `closed`. -/
def spec (closed : List Fact → ℕ → Bool) : Spec Fact Split where
  atoms := P.atoms
  branches := P.branches
  closedOK := closed

/-- All the signs of the word `w` of the free point `p` are in the table. -/
def wordKnown (tb : List SFact) (p : ℕ) (w : List ℕ) : Bool :=
  (List.range P.n).all fun i => (branchFacts P.n p i (w.getD i 0)).all fun f =>
    lookup tb f.1 == some f.2

/-- The closing test of an enumeration tree: the leaf `tag` knows the word `words[tag]`. -/
def enumClosed (p : ℕ) (words : List (List ℕ)) : List Fact → ℕ → Bool :=
  fun fs tag => decide (tag < words.length) && P.wordKnown (P.table fs) p (words.getD tag [])

/-- No closing test. -/
def noClosed : List Fact → ℕ → Bool := fun _ _ => false

/-- The branches of the word entry of the free point `p` at the vertex `V_i`, for an enumeration
(facts: signed triangles only). -/
def enumBranches (p : ℕ) (fs : List SFact) (i : ℕ) : List (List SFact) :=
  if i < P.n then
    ((List.range (P.n - 2)).map (· + 1)).filterMap fun val =>
      if consistent (P.base ++ fs) (branchFacts P.n p i val) then some (branchFacts P.n p i val)
      else none
  else [[]]

/-- The enumeration package of the words of the free point `p`: no atoms, splits on the word
entries at the vertices, the leaf `tag` closed when its facts know the word `words[tag]`. -/
def enumSpec (p : ℕ) (words : List (List ℕ)) : Spec SFact ℕ where
  atoms _ := []
  branches := P.enumBranches p
  closedOK fs tag := decide (tag < words.length) && P.wordKnown (P.base ++ fs) p (words.getD tag [])

end Pkg

/-! ### Soundness -/

/-- The interpretation of the facts at the points `Pt` and the cube point `z`. -/
def Holds (Pt : ℕ → Point) (z : ℕ → ℝ) : Fact → Prop
  | .inl f => SFact.Holds Pt f
  | .inr e => 0 ≤ e.eval z

/-- The geometric premises of a package at the points `Pt` and the cube point `z`. -/
structure Hyp (P : Pkg) (Pt : ℕ → Point) (z : ℕ → ℝ) : Prop where
  hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1
  hpt : ∀ i < P.N, ptEval z P.pt i = Pt i
  hb0 : (0 : ℝ) < P.bnd 0
  harea : ∀ i j k, i < P.N → j < P.N → k < P.N → i ≠ j → j ≠ k → i ≠ k →
    (P.bnd 0 : ℝ) ≤ |sarea (Pt i) (Pt j) (Pt k)|
  hb1 : (P.bnd 1 : ℝ) ≤ 3 * P.bnd 0
  hbig : ∀ m, 2 ≤ m → P.bnd m = P.bnd 2
  hfree : P.free.Nodup
  hfreeN : ∀ j ∈ P.free, j < P.N
  htwo : ∀ (a b c j₁ j₂ : ℕ) (sg : Bool), a < P.N → b < P.N → c < P.N → j₁ ∈ P.free →
    j₂ ∈ P.free → j₁ ≠ j₂ → a ≠ b → b ≠ c → a ≠ c →
    OrientHolds sg (sarea (Pt a) (Pt b) (Pt j₁)) → OrientHolds sg (sarea (Pt b) (Pt c) (Pt j₁)) →
    OrientHolds sg (sarea (Pt c) (Pt a) (Pt j₁)) →
    OrientHolds sg (sarea (Pt a) (Pt b) (Pt j₂)) → OrientHolds sg (sarea (Pt b) (Pt c) (Pt j₂)) →
    OrientHolds sg (sarea (Pt c) (Pt a) (Pt j₂)) →
    (P.bnd 2 : ℝ) ≤ sgArea sg (sarea (Pt a) (Pt b) (Pt c))
  hbase : AllHold (SFact.Holds Pt) P.base
  hfac : ∀ e ∈ P.factors, 0 ≤ e.eval z
  hextra : ∀ tb, AllHold (SFact.Holds Pt) tb → ∀ e ∈ P.extra tb, 0 ≤ e.eval z
  hvert : ∀ p ∈ P.free, ∀ i < P.n, ∃ val, 1 ≤ val ∧ val ≤ P.n - 2 ∧
    AllHold (SFact.Holds Pt) (branchFacts P.n p i val)

theorem mem_lexTriples {N : ℕ} {t : ℕ × ℕ × ℕ} (ht : t ∈ lexTriples N) :
    t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧ t.2.2 < N := by
  simp only [lexTriples, List.mem_flatMap, List.mem_range, List.mem_filterMap,
    Option.ite_none_right_eq_some, Option.some.injEq] at ht
  obtain ⟨a, _, b, _, c, hc, ⟨hab, hbc⟩, rfl⟩ := ht
  exact ⟨hab, hbc, hc⟩

theorem orient_ne_zero {sg : Bool} {x : ℝ} (h : OrientHolds sg x) : x ≠ 0 := by
  cases sg <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h <;>
    [exact h.ne; exact h.ne']

theorem orient_idx_ne {Pt : ℕ → Point} {sg : Bool} {i j k : ℕ}
    (hs : OrientHolds sg (sarea (Pt i) (Pt j) (Pt k))) : i ≠ j ∧ j ≠ k ∧ i ≠ k := by
  have hne := orient_ne_zero hs
  refine ⟨?_, ?_, ?_⟩ <;> rintro rfl <;> apply hne <;> simp only [sarea] <;> ring

theorem holds_orient {Pt : ℕ → Point} {i j k : ℕ} {sg : Bool} (_hij : i ≠ j) (_hjk : j ≠ k)
    (_hik : i ≠ k) :
    SFact.Holds Pt (orient i j k sg) ↔ OrientHolds sg (sarea (Pt i) (Pt j) (Pt k)) := by
  unfold orient
  have c1 := sarea_cycle (Pt i) (Pt j) (Pt k)
  have c2 := sarea_cycle (Pt j) (Pt k) (Pt i)
  have s1 := sarea_swap₁₂ (Pt i) (Pt j) (Pt k)
  have s2 := sarea_swap₂₃ (Pt i) (Pt j) (Pt k)
  have s3 := sarea_swap₁₃ (Pt i) (Pt j) (Pt k)
  split_ifs <;> simp only [SFact.Holds] <;>
    first
    | rw [c1]
    | rw [c2, c1]
    | rw [s1, orientHolds_not]
    | rw [s2, orientHolds_not]
    | rw [s3, orientHolds_not]

theorem consistent_of_holds {Pt : ℕ → Point} {tb b : List SFact}
    (htb : AllHold (SFact.Holds Pt) tb) (hb : AllHold (SFact.Holds Pt) b) :
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

theorem allHold_sgn {Pt : ℕ → Point} {z : ℕ → ℝ} {fs : List Fact}
    (h : AllHold (Holds Pt z) fs) : AllHold (SFact.Holds Pt) (sgnFacts fs) := by
  intro f hf
  simp only [sgnFacts, List.mem_filterMap] at hf
  obtain ⟨g, hg, e⟩ := hf
  cases g with
  | inl g => simp only [Sum.getLeft?_inl, Option.some.injEq] at e; subst e; exact h _ hg
  | inr g => simp at e

theorem allHold_cut {Pt : ℕ → Point} {z : ℕ → ℝ} {fs : List Fact}
    (h : AllHold (Holds Pt z) fs) : ∀ e ∈ cutFacts fs, 0 ≤ e.eval z := by
  intro e he
  simp only [cutFacts, List.mem_filterMap] at he
  obtain ⟨g, hg, e'⟩ := he
  cases g with
  | inl g => simp at e'
  | inr g => simp only [Sum.getRight?_inr, Option.some.injEq] at e'; subst e'; exact h _ hg

theorem allHold_inl {Pt : ℕ → Point} {z : ℕ → ℝ} {fs : List SFact}
    (h : AllHold (SFact.Holds Pt) fs) : AllHold (Holds Pt z) (fs.map Sum.inl) := by
  intro f hf
  simp only [List.mem_map] at hf
  obtain ⟨g, hg, rfl⟩ := hf
  exact h g hg

theorem allHold_inr {Pt : ℕ → Point} {z : ℕ → ℝ} {fs : List Expr}
    (h : ∀ e ∈ fs, 0 ≤ e.eval z) : AllHold (Holds Pt z) (fs.map Sum.inr) := by
  intro f hf
  simp only [List.mem_map] at hf
  obtain ⟨g, hg, rfl⟩ := hf
  exact h g hg

section Sound

variable {P : Pkg} {Pt : ℕ → Point} {z : ℕ → ℝ}

theorem Hyp.ptEval (H : Hyp P Pt z) {i : ℕ} (hi : i < P.N) : ptEval z P.pt i = Pt i := H.hpt i hi

/-- Two distinct members of a sublist of a list without duplicates. -/
theorem two_of_length {l : List ℕ} (hl : l.Nodup) (h2 : 2 ≤ l.length) :
    ∃ j₁ ∈ l, ∃ j₂ ∈ l, j₁ ≠ j₂ := by
  match l, hl, h2 with
  | j₁ :: j₂ :: _, hl, _ =>
    refine ⟨j₁, List.mem_cons_self .., j₂, List.mem_cons_of_mem _ (List.mem_cons_self ..), ?_⟩
    intro e
    subst e
    exact (List.nodup_cons.1 hl).1 (List.mem_cons_self ..)

/-- A cost of a known triangle, at any count up to the certified one, is nonnegative. -/
theorem cost_nonneg (H : Hyp P Pt z) {tb : List SFact} (htb : AllHold (SFact.Holds Pt) tb)
    {t : ℕ × ℕ × ℕ} (ht : t ∈ lexTriples P.N) {sg : Bool} (hl : lookup tb t = some sg) (m : ℕ) :
    0 ≤ (costAtom P.pt P.bnd (t, sg) (min m (insideList tb P.free (t, sg)).length)).eval z := by
  obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
  rw [eval_costAtom]
  simp only [H.ptEval (show t.1 < P.N by omega), H.ptEval (show t.2.1 < P.N by omega),
    H.ptEval h3]
  have hs := lookup_sound htb hl
  have harea := H.harea t.1 t.2.1 t.2.2 (by omega) (by omega) h3 (by omega) (by omega) (by omega)
  rw [← sgArea_eq_abs hs] at harea
  set L := insideList tb P.free (t, sg) with hL
  have hmem : ∀ j ∈ L, j ∈ P.free ∧ OrientHolds sg (sarea (Pt t.1) (Pt t.2.1) (Pt j)) ∧
      OrientHolds sg (sarea (Pt t.2.1) (Pt t.2.2) (Pt j)) ∧
      OrientHolds sg (sarea (Pt t.2.2) (Pt t.1) (Pt j)) := fun j hj => insideList_sound htb hj
  have hnd : L.Nodup := List.Nodup.filter _ H.hfree
  rcases Nat.lt_or_ge (min m L.length) 1 with h0 | h1'
  · have : min m L.length = 0 := by omega
    rw [this]; linarith
  rcases Nat.lt_or_ge (min m L.length) 2 with hlt | h2'
  · have e1 : min m L.length = 1 := by omega
    rw [e1]
    obtain ⟨j, hj⟩ := List.exists_mem_of_length_pos (show 0 < L.length by omega)
    obtain ⟨hjf, o1, o2, o3⟩ := hmem j hj
    have hjN := H.hfreeN j hjf
    obtain ⟨-, n1, n2⟩ := orient_idx_ne o1
    obtain ⟨-, n3, -⟩ := orient_idx_ne o2
    have q1 := H.harea t.1 t.2.1 j (by omega) (by omega) hjN (by omega) n1 n2
    have q2 := H.harea t.2.1 t.2.2 j (by omega) h3 hjN (by omega) n3 (by omega)
    have q3 := H.harea t.2.2 t.1 j h3 (by omega) hjN (by omega) (by omega) (by omega)
    have := three_le_sgArea (e := (P.bnd 1 : ℝ) / 3) o1 o2 o3 (by linarith [H.hb1])
      (by linarith [H.hb1]) (by linarith [H.hb1])
    linarith
  · obtain ⟨j₁, hj₁, j₂, hj₂, hne⟩ := two_of_length hnd (by omega)
    obtain ⟨f1, a1, a2, a3⟩ := hmem j₁ hj₁
    obtain ⟨f2, b1, b2, b3⟩ := hmem j₂ hj₂
    have := H.htwo t.1 t.2.1 t.2.2 j₁ j₂ sg (by omega) (by omega) h3 f1 f2 hne (by omega)
      (by omega) (by omega) a1 a2 a3 b1 b2 b3
    rw [H.hbig _ h2']
    linarith

theorem tier_nonneg (H : Hyp P Pt z) {tb : List SFact} (htb : AllHold (SFact.Holds Pt) tb)
    (m : ℕ) : ∀ e ∈ P.tier m tb, 0 ≤ e.eval z := by
  intro e he
  simp only [Pkg.tier, List.mem_map] at he
  obtain ⟨t, ht, rfl⟩ := he
  rcases hl : lookup tb t with _ | sg
  · simp
  · exact cost_nonneg H htb ht hl m

theorem atoms_nonneg (H : Hyp P Pt z) {fs : List Fact} (hfs : AllHold (Holds Pt z) fs) :
    ∀ e ∈ P.atoms fs, 0 ≤ e.eval z := by
  have htb : AllHold (SFact.Holds Pt) (P.table fs) := H.hbase.append (allHold_sgn hfs)
  intro e he
  simp only [Pkg.atoms, List.mem_append] at he
  rcases he with ((((he | he) | he) | he) | he) | he
  · exact H.hfac e he
  · exact tier_nonneg H htb 2 e he
  · exact tier_nonneg H htb 0 e he
  · exact tier_nonneg H htb 1 e he
  · exact H.hextra _ htb e he
  · exact allHold_cut hfs e he

theorem branch_ok (H : Hyp P Pt z) (fs : List Fact) (s : Split) (hfs : AllHold (Holds Pt z) fs) :
    ∃ b ∈ P.branches fs s, AllHold (Holds Pt z) b := by
  cases s with
  | vertex p i =>
    simp only [Pkg.branches]
    split_ifs with hc
    · obtain ⟨hi, hp⟩ := hc
      obtain ⟨val, v1, v2, hb⟩ := H.hvert p (by simpa using hp) i hi
      refine ⟨(branchFacts P.n p i val).map Sum.inl, ?_, allHold_inl hb⟩
      rw [List.mem_filterMap]
      refine ⟨val, List.mem_map.2 ⟨val - 1, List.mem_range.2 (by omega), by omega⟩, ?_⟩
      have hcons : consistent (P.table fs) (branchFacts P.n p i val) = true :=
        consistent_of_holds (H.hbase.append (allHold_sgn hfs)) hb
      simp only [hcons, ite_true]
    · exact ⟨[], by simp, by simp [AllHold]⟩
  | tri a b c =>
    simp only [Pkg.branches]
    split_ifs with hc
    · obtain ⟨hab, hbc, hcN⟩ := hc
      have hne : sarea (Pt a) (Pt b) (Pt c) ≠ 0 := by
        intro h0
        have := H.harea a b c (by omega) (by omega) hcN (by omega) (by omega) (by omega)
        rw [h0, abs_zero] at this
        linarith [H.hb0]
      obtain ⟨b', hb', hb'h⟩ := signBranches_exhaustive (P := Pt) (t := (a, b, c)) hne
      exact ⟨b'.map Sum.inl, List.mem_map.2 ⟨b', hb', rfl⟩, allHold_inl hb'h⟩
    · exact ⟨[], by simp, by simp [AllHold]⟩
  | cut e q =>
    obtain ⟨b', hb', hb'h⟩ := cutBranches_exhaustive z e q
    exact ⟨b'.map Sum.inr, List.mem_map.2 ⟨b', hb', rfl⟩, allHold_inr hb'h⟩

/-- **Soundness of a radial cover.** -/
theorem Pkg.sound (H : Hyp P Pt z) {closed : List Fact → ℕ → Bool}
    (hclosed : ∀ fs tag, AllHold (Holds Pt z) fs → closed fs tag = true → False)
    {fs0 : List Fact} (hfs0 : AllHold (Holds Pt z) fs0) {T : Cover.Tree Split}
    (hT : checkTree (P.spec closed) fs0 T = true) : False :=
  checkTree_sound (σ := P.spec closed) (Holds := Holds Pt z) H.hz
    (fun _ hfs e he => atoms_nonneg H hfs e he) (fun fs s hfs => branch_ok H fs s hfs)
    hclosed hfs0 hT

/-- A tree without closed leaves. -/
theorem Pkg.sound_cert (H : Hyp P Pt z) {fs0 : List Fact} (hfs0 : AllHold (Holds Pt z) fs0)
    {T : Cover.Tree Split} (hT : checkTree (P.spec Pkg.noClosed) fs0 T = true) : False :=
  P.sound H (fun _ _ _ h => by simp [Pkg.noClosed] at h) hfs0 hT

end Sound

/-! ### Radial words -/

section Word

variable {n : ℕ} {V : Fin n → Point} {R : Point} {q : Fin n → ℕ} {Pt : ℕ → Point} {p : ℕ}

/-- The facts of the word entry `q_i` of `R` hold. -/
theorem branch_holds (hq : HasRadialWord V R q)
    (hgen : ∀ i j : Fin n, i ≠ j → sarea (V i) (V j) R ≠ 0)
    (hV : ∀ i (hi : i < n), Pt i = V ⟨i, hi⟩) (hp : Pt p = R) (hpn : n ≤ p)
    (i : ℕ) (hi : i < n) : AllHold (SFact.Holds Pt) (branchFacts n p i (q ⟨i, hi⟩)) := by
  intro f hf
  simp only [branchFacts, List.mem_map, List.mem_range] at hf
  obtain ⟨j, hj, rfl⟩ := hf
  have hm : (i + (j + 1)) % n < n := Nat.mod_lt _ (by omega)
  have him : i ≠ (i + (j + 1)) % n := by
    intro e
    have := Nat.mod_eq_of_lt hi
    rcases lt_or_ge (i + (j + 1)) n with h1 | h1
    · rw [Nat.mod_eq_of_lt h1] at e; omega
    · rw [Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (by omega)] at e; omega
  rw [holds_orient him (by omega) (by omega)]
  have e2 : Pt ((i + (j + 1)) % n) = V (cyc ⟨i, hi⟩ (j + 1)) := hV _ hm
  rw [hV i hi, e2, hp]
  have k := hq ⟨i, hi⟩ (j + 1) (by omega) (by omega)
  have hne' := hgen ⟨i, hi⟩ (cyc ⟨i, hi⟩ (j + 1)) (fun e => by
    have := congrArg Fin.val e; simp only [cyc] at this; omega)
  by_cases hjq : j + 1 ≤ q ⟨i, hi⟩
  · simp only [hjq, decide_true, OrientHolds, ite_true]
    exact k.2 hjq
  · simp only [hjq, decide_false, OrientHolds, Bool.false_eq_true, ite_false]
    exact lt_of_le_of_ne (not_lt.1 fun h => hjq (k.1 h)) hne'

/-- The facts of a word entry `val` determine the entry. -/
theorem word_of_branch (hq : HasRadialWord V R q) (hV : ∀ i (hi : i < n), Pt i = V ⟨i, hi⟩)
    (hp : Pt p = R) (hpn : n ≤ p) (i : ℕ) (hi : i < n) (hqn : q ⟨i, hi⟩ < n) {val : ℕ}
    (hvn : val < n) (hb : AllHold (SFact.Holds Pt) (branchFacts n p i val)) :
    q ⟨i, hi⟩ = val := by
  have get : ∀ j : ℕ, j < n - 1 → (OrientHolds (decide (j + 1 ≤ val))
      (sarea (V ⟨i, hi⟩) (V (cyc ⟨i, hi⟩ (j + 1))) R)) := by
    intro j hj
    have hm : (i + (j + 1)) % n < n := Nat.mod_lt _ (by omega)
    have him : i ≠ (i + (j + 1)) % n := by
      intro e
      rcases lt_or_ge (i + (j + 1)) n with h1 | h1
      · rw [Nat.mod_eq_of_lt h1] at e; omega
      · rw [Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (by omega)] at e; omega
    have := hb _ (List.mem_map.2 ⟨j, List.mem_range.2 hj, rfl⟩)
    rw [holds_orient him (by omega) (by omega)] at this
    have e2 : Pt ((i + (j + 1)) % n) = V (cyc ⟨i, hi⟩ (j + 1)) := hV _ hm
    rwa [hV i hi, e2, hp] at this
  have key : ∀ j, 1 ≤ j → j < n → (j ≤ val ↔ j ≤ q ⟨i, hi⟩) := by
    intro j hj1 hjn
    have g := get (j - 1) (by omega)
    rw [show j - 1 + 1 = j by omega] at g
    have k := hq ⟨i, hi⟩ j hj1 hjn
    by_cases hjv : j ≤ val
    · simp only [hjv, decide_true, OrientHolds, ite_true] at g
      exact ⟨fun _ => k.1 g, fun _ => hjv⟩
    · simp only [hjv, decide_false, OrientHolds, Bool.false_eq_true, ite_false] at g
      exact ⟨fun h => absurd h hjv, fun h => absurd (k.2 h) (by linarith)⟩
  rcases Nat.eq_zero_or_pos val with hv0 | hv0
  · rcases Nat.eq_zero_or_pos (q ⟨i, hi⟩) with hq0 | hq0
    · omega
    · have := (key (q ⟨i, hi⟩) hq0 hqn).2 le_rfl; omega
  · have a1 := (key val hv0 hvn).1 le_rfl
    rcases Nat.eq_zero_or_pos (q ⟨i, hi⟩) with hq0 | hq0
    · omega
    · have a2 := (key (q ⟨i, hi⟩) hq0 hqn).2 le_rfl; omega

/-- All the signs of a word hold. -/
theorem wordFacts_holds (hq : HasRadialWord V R q)
    (hgen : ∀ i j : Fin n, i ≠ j → sarea (V i) (V j) R ≠ 0)
    (hV : ∀ i (hi : i < n), Pt i = V ⟨i, hi⟩) (hp : Pt p = R) (hpn : n ≤ p) {w : List ℕ}
    (hw : ∀ i (hi : i < n), q ⟨i, hi⟩ = w.getD i 0) :
    AllHold (SFact.Holds Pt) (wordFacts n p w) := by
  intro f hf
  simp only [wordFacts, List.mem_flatMap, List.mem_range] at hf
  obtain ⟨i, hi, hf⟩ := hf
  rw [← hw i hi] at hf
  exact branch_holds hq hgen hV hp hpn i hi f hf

end Word

/-- **Enumeration.** If an enumeration tree checks, the word of the free point `p` is one of the
listed words. -/
theorem enum_sound {P : Pkg} {Pt : ℕ → Point} {z : ℕ → ℝ} (H : Hyp P Pt z) {p : ℕ}
    {words : List (List ℕ)} {T : Cover.Tree Split}
    (hT : checkTree (P.spec (P.enumClosed p words)) [] T = true)
    (hwn : ∀ w ∈ words, ∀ i < P.n, w.getD i 0 < P.n)
    {V : Fin P.n → Point} {q : Fin P.n → ℕ} (hq : HasRadialWord V (Pt p) q)
    (hqn : ∀ i, q i < P.n) (hV : ∀ i (hi : i < P.n), Pt i = V ⟨i, hi⟩) (hpn : P.n ≤ p) :
    ∃ w ∈ words, ∀ i (hi : i < P.n), q ⟨i, hi⟩ = w.getD i 0 := by
  by_contra hne
  push Not at hne
  refine P.sound H (fun fs tag hfs hc => ?_) (fs0 := []) (by simp [AllHold]) hT
  have htb : AllHold (SFact.Holds Pt) (P.table fs) := H.hbase.append (allHold_sgn hfs)
  simp only [Pkg.enumClosed, Pkg.wordKnown, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true,
    List.mem_range, beq_iff_eq] at hc
  obtain ⟨htag, hc⟩ := hc
  have hw : words.getD tag [] ∈ words := by
    rw [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem htag]
    exact List.getElem_mem htag
  obtain ⟨i, hi, hqi⟩ := hne _ hw
  apply hqi
  exact word_of_branch hq hV rfl hpn i hi (hqn _) (hwn _ hw i hi)
    (fun f hf => lookup_sound htb (hc i hi f hf))

/-- **Enumeration** (facts: signed triangles). If an enumeration tree checks, the radial word of
the free point `p` is one of the listed words. -/
theorem enum_sound' {P : Pkg} {Pt : ℕ → Point} (hbase : AllHold (SFact.Holds Pt) P.base) {p : ℕ}
    {words : List (List ℕ)} {T : Cover.Tree ℕ}
    (hT : checkTree (P.enumSpec p words) [] T = true)
    (hwn : ∀ w ∈ words, ∀ i < P.n, w.getD i 0 < P.n)
    {V : Fin P.n → Point} {q : Fin P.n → ℕ} (hq : HasRadialWord V (Pt p) q)
    (hqr : ∀ i, 1 ≤ q i ∧ q i + 2 ≤ P.n)
    (hgen : ∀ i j : Fin P.n, i ≠ j → sarea (V i) (V j) (Pt p) ≠ 0)
    (hV : ∀ i (hi : i < P.n), Pt i = V ⟨i, hi⟩) (hpn : P.n ≤ p) :
    ∃ w ∈ words, ∀ i (hi : i < P.n), q ⟨i, hi⟩ = w.getD i 0 := by
  by_contra hne
  push Not at hne
  refine checkTree_sound (σ := P.enumSpec p words) (Holds := SFact.Holds Pt) (z := fun _ => 0)
    (fun _ => ⟨le_rfl, zero_le_one⟩) (fun _ _ e he => by simp [Pkg.enumSpec] at he) ?_ ?_
    (fs := []) (by simp [AllHold]) hT
  · intro fs i hfs
    simp only [Pkg.enumSpec, Pkg.enumBranches]
    split_ifs with hi
    · have hb := branch_holds hq hgen hV rfl hpn i hi
      refine ⟨branchFacts P.n p i (q ⟨i, hi⟩), ?_, hb⟩
      rw [List.mem_filterMap]
      obtain ⟨r1, r2⟩ := hqr ⟨i, hi⟩
      refine ⟨q ⟨i, hi⟩, List.mem_map.2 ⟨q ⟨i, hi⟩ - 1, List.mem_range.2 (by omega), by omega⟩, ?_⟩
      have hcons : consistent (P.base ++ fs) (branchFacts P.n p i (q ⟨i, hi⟩)) = true :=
        consistent_of_holds (hbase.append hfs) hb
      simp only [hcons, ite_true]
    · exact ⟨[], by simp, by simp [AllHold]⟩
  · intro fs tag hfs hc
    have htb : AllHold (SFact.Holds Pt) (P.base ++ fs) := hbase.append hfs
    simp only [Pkg.enumSpec, Pkg.wordKnown, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true,
      List.mem_range, beq_iff_eq] at hc
    obtain ⟨htag, hc⟩ := hc
    have hw : words.getD tag [] ∈ words := by
      rw [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem htag]
      exact List.getElem_mem htag
    obtain ⟨i, hi, hqi⟩ := hne _ hw
    apply hqi
    exact word_of_branch hq hV rfl hpn i hi (by have := hqr ⟨i, hi⟩; omega) (hwn _ hw i hi)
      (fun f hf => lookup_sound htb (hc i hi f hf))

end Heilbronn.Nine.SixRadial
