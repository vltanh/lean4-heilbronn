module

public import Heilbronn.Common.CertNotation
public import Heilbronn.Common.Config

/-!
# Cover trees: case splits closed by kernel-checked certificates

A certificate package excludes a configuration by a finite case split whose every case ends in a
polynomial certificate (`Heilbronn.Common.Certificate`). This module provides the case split as
data, checked by the kernel, with one soundness theorem; the package proves, once and in general,
that its atoms are nonnegative and that its splits are exhaustive.

## The core: facts, atoms, splits

A package fixes a type `F` of *facts* (statements about a configuration that a case may know,
e.g. "the triangle `abc` is positively oriented", or simply "the expression `e` is nonnegative")
and a type `S` of *split labels*. Its `Spec F S` gives

* `atoms fs : List Expr`, the atoms available in a case whose known facts are `fs` (in the order
  the certificates index them; they may depend on the facts, e.g. a strengthened area cost);
* `branches fs s : List (List F)`, the facts added by each child of a split labelled `s`;
* `closedOK fs tag : Bool`, a test closing a leaf without certificate (e.g. a capacity bound;
  default: never).

A `Tree S` is a split tree: `node s children` (one child per branch, in order), `cert terms`
(a leaf closed by `Cert.check (atoms fs) terms`), or `closed tag` (closed by `closedOK fs tag`).
`checkTree σ fs T` walks the tree from the facts `fs`, appending each branch's facts to the
current ones, and checks every leaf; it is evaluated by `decide +kernel`. A large tree can be
checked in pieces: `checkTree_node` proves a node from proofs for its children.

**Soundness** (`checkTree_sound`): if `checkTree σ fs T = true`, then no point `z` of the unit
cube admits an interpretation `Holds : F → Prop` with
* `hatoms`: whenever all facts `fs` hold, every atom of `σ.atoms fs` is nonnegative at `z`;
* `hbranch`: whenever all facts `fs` hold, some branch of every split has all its facts true;
* `hclosed`: whenever all facts `fs` hold, `closedOK fs tag` fails;
* all the initial facts `fs` holding.

The package proves `hatoms`, `hbranch`, `hclosed` once (as lemmas about all fact lists); the
kernel does the per-case work.

## Atom-only packages

When a fact is just an expression known to be nonnegative, use `atomSpec base branches`
(`F = Expr`, atoms `base ++ fs`, `Holds e := 0 ≤ e.eval z`) and `atomSpec_sound`, which needs only
the exhaustiveness of the splits. Ready-made exhaustive splits:
* `cutBranches e q = [[k q - e], [e - k q]]` (`e ≤ q` or `e ≥ q`): `cutBranches_exhaustive`;
* `absBranches e t = [[e - k t], [0 - e - k t]]` (an area split: `|e| ≥ t` gives one of
  `e ≥ t`, `-e ≥ t`): `absBranches_exhaustive`.

## Signed triangles (sign tables and strengthened area costs)

For packages that split on orientations of triangles of points `pt : ℕ → Expr × Expr`:
* a signed triangle `SFact = (ℕ × ℕ × ℕ) × Bool` (`(a, b, c)` with `a < b < c`, `true` for
  positive orientation); `SFact.Holds P f` says the triangle of the real points `P` has that
  orientation;
* `lookup tb t` and `orientedLookup tb a b c` (sorted lookup, flipped by the parity of the
  permutation) in a table `tb : List SFact`; `lookup_sound`, `orientedLookup_sound`;
* `insideList tb free (t, sg)`: the indices `j ∈ free` certified strictly inside the triangle `t`
  of orientation `sg` (all three oriented edge signs `[t₀ t₁ j], [t₁ t₂ j], [t₂ t₀ j]` known and
  equal to `sg`); `insideList_sound` gives the sign conditions;
* `costAtom pt bound (t, sg) = ±esarea(t) - k (bound n)` with `n = (insideList …).length`, the
  strengthened cost; `costAtom_nonneg` reduces its nonnegativity to a bound on the oriented area
  for each certified inside count (`sgArea_ge_of_inside_one`: one point inside gives three times
  the edge bound, by subdivision; two or more points are the package's own lemma, typically the
  two-interior-point lemma);
* `signBranches t = [[(t, false)], [(t, true)]]` (the split on the orientation of `t`) and
  `signBranches_exhaustive` (a nonzero area has a sign).
-/

@[expose] public section

namespace Heilbronn.Cover

open Cert Cert.Expr

/-! ### Trees and their check -/

/-- A cover tree with split labels `S`: a leaf closed by a certificate (weighted index lists into
the current atoms), a leaf closed by the package's own test, or a split with one child per
branch. -/
inductive Tree (S : Type) where
  | cert (terms : List (ℤ × List ℕ))
  | closed (tag : ℕ)
  | node (s : S) (children : List (Tree S))

/-- A certificate package over facts `F` and split labels `S`. -/
structure Spec (F S : Type) where
  /-- The atoms available when the facts `fs` are known. -/
  atoms : List F → List Expr
  /-- The facts added by each child of a split labelled `s`, given the known facts `fs`. -/
  branches : List F → S → List (List F)
  /-- A test closing a leaf without a certificate. -/
  closedOK : List F → ℕ → Bool := fun _ _ => false

variable {F S : Type}

mutual
/-- The kernel check of a cover tree from the known facts `fs`. -/
def checkTree (σ : Spec F S) : List F → Tree S → Bool
  | fs, .cert ts => Cert.check (σ.atoms fs) ts
  | fs, .closed tag => σ.closedOK fs tag
  | fs, .node s cs => checkChildren σ fs (σ.branches fs s) cs

/-- The check of the children of a split against its branches, in order. -/
def checkChildren (σ : Spec F S) (fs : List F) : List (List F) → List (Tree S) → Bool
  | [], [] => true
  | b :: bs, c :: cs => checkTree σ (fs ++ b) c && checkChildren σ fs bs cs
  | _, _ => false
end

theorem checkTree_cert (σ : Spec F S) (fs : List F) (ts : List (ℤ × List ℕ)) :
    checkTree σ fs (.cert ts) = Cert.check (σ.atoms fs) ts := by
  simp [checkTree]

theorem checkTree_node (σ : Spec F S) (fs : List F) (s : S) (cs : List (Tree S)) :
    checkTree σ fs (.node s cs) = checkChildren σ fs (σ.branches fs s) cs := by
  simp [checkTree]

theorem checkChildren_cons (σ : Spec F S) (fs b : List F) (bs : List (List F)) (c : Tree S)
    (cs : List (Tree S)) :
    checkChildren σ fs (b :: bs) (c :: cs) = (checkTree σ (fs ++ b) c && checkChildren σ fs bs cs) := by
  simp [checkChildren]

theorem checkChildren_nil (σ : Spec F S) (fs : List F) : checkChildren σ fs [] [] = true := by
  simp [checkChildren]

/-! ### Soundness -/

section Sound

variable (σ : Spec F S) (Holds : F → Prop) {z : ℕ → ℝ}

/-- All the facts of a list hold. -/
def AllHold (fs : List F) : Prop := ∀ f ∈ fs, Holds f

theorem AllHold.append {Holds : F → Prop} {fs gs : List F} (h1 : AllHold Holds fs)
    (h2 : AllHold Holds gs) : AllHold Holds (fs ++ gs) := by
  intro f hf
  rcases List.mem_append.1 hf with hf | hf
  exacts [h1 f hf, h2 f hf]

/-- The hypotheses of the soundness theorem, at the point `z`. -/
structure Interp (z : ℕ → ℝ) : Prop where
  hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1
  hatoms : ∀ fs, AllHold Holds fs → ∀ e ∈ σ.atoms fs, 0 ≤ e.eval z
  hbranch : ∀ fs s, AllHold Holds fs → ∃ b ∈ σ.branches fs s, AllHold Holds b
  hclosed : ∀ fs tag, AllHold Holds fs → σ.closedOK fs tag = true → False

variable {σ Holds}

mutual
theorem sound_tree (I : Interp σ Holds z) : ∀ (T : Tree S) (fs : List F), AllHold Holds fs →
    checkTree σ fs T = true → False
  | .cert ts, fs, hfs, hT =>
    Cert.check_sound (by simpa [checkTree] using hT) z I.hz (I.hatoms fs hfs)
  | .closed tag, fs, hfs, hT => I.hclosed fs tag hfs (by simpa [checkTree] using hT)
  | .node s cs, fs, hfs, hT => by
    rw [checkTree_node] at hT
    exact sound_children I cs fs (σ.branches fs s) hfs hT (I.hbranch fs s hfs)

theorem sound_children (I : Interp σ Holds z) : ∀ (cs : List (Tree S)) (fs : List F)
    (bs : List (List F)), AllHold Holds fs → checkChildren σ fs bs cs = true →
    (∃ b ∈ bs, AllHold Holds b) → False
  | [], _, [], _, _, ⟨_, hb, _⟩ => by simp at hb
  | [], _, _ :: _, _, h, _ => by simp [checkChildren] at h
  | _ :: _, _, [], _, h, _ => by simp [checkChildren] at h
  | c :: cs, fs, b :: bs, hfs, h, ⟨b', hb', hb'f⟩ => by
    rw [checkChildren_cons, Bool.and_eq_true] at h
    rcases List.mem_cons.1 hb' with rfl | hb'
    · exact sound_tree I c (fs ++ b') (hfs.append hb'f) h.1
    · exact sound_children I cs fs bs hfs h.2 ⟨b', hb', hb'f⟩
end

/-- **Soundness of the cover check.** If the tree checks from the facts `fs`, no point `z` of the
unit cube satisfies the package's interpretation `Holds` (`Interp`: atoms nonnegative whenever
their facts hold, every split exhaustive, every closed test sound) with the initial facts true. -/
theorem checkTree_sound (hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1)
    (hatoms : ∀ fs, AllHold Holds fs → ∀ e ∈ σ.atoms fs, 0 ≤ e.eval z)
    (hbranch : ∀ fs s, AllHold Holds fs → ∃ b ∈ σ.branches fs s, AllHold Holds b)
    (hclosed : ∀ fs tag, AllHold Holds fs → σ.closedOK fs tag = true → False)
    {fs : List F} (hfs : AllHold Holds fs) {T : Tree S} (hT : checkTree σ fs T = true) : False :=
  sound_tree ⟨hz, hatoms, hbranch, hclosed⟩ T fs hfs hT

end Sound

/-! ### Atom-only packages -/

/-- The package whose facts are expressions known to be nonnegative: the atoms of a case are the
base atoms followed by its facts. -/
def atomSpec (base : List Expr) (branches : List Expr → S → List (List Expr)) : Spec Expr S where
  atoms fs := base ++ fs
  branches := branches

/-- **Soundness of an atom-only cover.** If the tree checks, the base atoms are nonnegative at a
point of the cube and every split has a branch whose atoms are nonnegative there, then `False`. -/
theorem atomSpec_sound {base : List Expr} {branches : List Expr → S → List (List Expr)}
    {T : Tree S} (hT : checkTree (atomSpec base branches) [] T = true) {z : ℕ → ℝ}
    (hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1) (hbase : ∀ e ∈ base, 0 ≤ e.eval z)
    (hbranch : ∀ fs s, (∀ e ∈ fs, 0 ≤ e.eval z) →
      ∃ b ∈ branches fs s, ∀ e ∈ b, 0 ≤ e.eval z) : False := by
  refine checkTree_sound (σ := atomSpec base branches) (Holds := fun e => 0 ≤ e.eval z) hz ?_
    hbranch (fun _ _ _ h => by simp [atomSpec] at h) (fs := []) (by simp [AllHold]) hT
  intro fs hfs e he
  rcases List.mem_append.1 he with he | he
  exacts [hbase e he, hfs e he]

/-- The scalar cut `e ≤ q` or `e ≥ q`. -/
def cutBranches (e : Expr) (q : ℚ) : List (List Expr) := [[k q - e], [e - k q]]

theorem cutBranches_exhaustive (z : ℕ → ℝ) (e : Expr) (q : ℚ) :
    ∃ b ∈ cutBranches e q, ∀ a ∈ b, 0 ≤ a.eval z := by
  rcases le_total (e.eval z) q with h | h
  · exact ⟨_, List.mem_cons_self .., by simp; linarith⟩
  · exact ⟨_, List.mem_cons_of_mem _ (List.mem_cons_self ..), by simp; linarith⟩

/-- The area split: `|e| ≥ t` gives `e - t ≥ 0` or `-e - t ≥ 0`. -/
def absBranches (e : Expr) (t : ℚ) : List (List Expr) := [[e - k t], [0 - e - k t]]

theorem absBranches_exhaustive {z : ℕ → ℝ} (e : Expr) (t : ℚ) (h : (t : ℝ) ≤ |e.eval z|) :
    ∃ b ∈ absBranches e t, ∀ a ∈ b, 0 ≤ a.eval z := by
  rcases le_abs'.1 h with h | h
  · exact ⟨_, List.mem_cons_of_mem _ (List.mem_cons_self ..), by simp; linarith⟩
  · exact ⟨_, List.mem_cons_self .., by simp; linarith⟩

/-! ### Signed triangles -/

section Signed

/-- A signed triangle: indices `(a, b, c)` (normally `a < b < c`) and an orientation, `true` for
positive (counterclockwise). -/
abbrev SFact := (ℕ × ℕ × ℕ) × Bool

/-- The orientation `sg` as a condition on a signed doubled area `x`. -/
def OrientHolds (sg : Bool) (x : ℝ) : Prop := if sg then 0 < x else x < 0

/-- The signed area `x` made positive by the orientation `sg`: `x` or `-x`. -/
def sgArea (sg : Bool) (x : ℝ) : ℝ := if sg then x else -x

theorem orientHolds_iff {sg : Bool} {x : ℝ} : OrientHolds sg x ↔ 0 < sgArea sg x := by
  cases sg <;> simp [OrientHolds, sgArea]

theorem sgArea_eq_abs {sg : Bool} {x : ℝ} (h : OrientHolds sg x) : sgArea sg x = |x| := by
  cases sg <;> simp only [OrientHolds, sgArea, Bool.false_eq_true, ite_false, ite_true] at h ⊢
  exacts [(abs_of_neg h).symm, (abs_of_pos h).symm]

theorem orientHolds_not {sg : Bool} {x : ℝ} : OrientHolds (!sg) (-x) ↔ OrientHolds sg x := by
  cases sg <;> simp [OrientHolds]

/-- The real points of the expression points `pt` at `z`. -/
noncomputable def ptEval (z : ℕ → ℝ) (pt : ℕ → Expr × Expr) (i : ℕ) : Point :=
  ((pt i).1.eval z, (pt i).2.eval z)

/-- The signed triangle holds for the points `P`. -/
def SFact.Holds (P : ℕ → Point) (f : SFact) : Prop :=
  OrientHolds f.2 (sarea (P f.1.1) (P f.1.2.1) (P f.1.2.2))

/-- Equality of index triples, by `Nat.beq` (fast in the kernel). -/
def triEq (s t : ℕ × ℕ × ℕ) : Bool := s.1.beq t.1 && s.2.1.beq t.2.1 && s.2.2.beq t.2.2

theorem triEq_iff {s t : ℕ × ℕ × ℕ} : triEq s t = true ↔ s = t := by
  obtain ⟨a, b, c⟩ := s; obtain ⟨a', b', c'⟩ := t
  simp [triEq, and_assoc]

/-- The orientation recorded for the triple `t` in the table (the first entry with that key). -/
def lookup : List SFact → ℕ × ℕ × ℕ → Option Bool
  | [], _ => none
  | f :: tb, t => if triEq f.1 t then some f.2 else lookup tb t

/-- The recorded orientation of the ordered triple `(a, b, c)`: the entry of the sorted triple,
flipped when the sorting permutation is odd; `none` if unknown or two indices coincide. -/
def orientedLookup (tb : List SFact) (a b c : ℕ) : Option Bool :=
  if a.blt b && b.blt c then lookup tb (a, b, c)
  else if b.blt c && c.blt a then lookup tb (b, c, a)
  else if c.blt a && a.blt b then lookup tb (c, a, b)
  else if b.blt a && a.blt c then (lookup tb (b, a, c)).map (!·)
  else if a.blt c && c.blt b then (lookup tb (a, c, b)).map (!·)
  else if c.blt b && b.blt a then (lookup tb (c, b, a)).map (!·)
  else none

variable {P : ℕ → Point}

theorem lookup_sound {tb : List SFact} (htb : AllHold (SFact.Holds P) tb) {t : ℕ × ℕ × ℕ}
    {sg : Bool} (h : lookup tb t = some sg) : OrientHolds sg (sarea (P t.1) (P t.2.1) (P t.2.2)) := by
  induction tb with
  | nil => simp [lookup] at h
  | cons f tb ih =>
    simp only [lookup] at h
    split_ifs at h with he
    · cases h
      have := htb f (List.mem_cons_self ..)
      rwa [← triEq_iff.1 he]
    · exact ih (fun g hg => htb g (List.mem_cons_of_mem _ hg)) h

theorem orientedLookup_sound {tb : List SFact} (htb : AllHold (SFact.Holds P) tb) {a b c : ℕ}
    {sg : Bool} (h : orientedLookup tb a b c = some sg) :
    OrientHolds sg (sarea (P a) (P b) (P c)) := by
  unfold orientedLookup at h
  split_ifs at h
  · exact lookup_sound htb h
  · have := lookup_sound htb h; simpa [sarea_cycle] using this
  · have := lookup_sound htb h; simpa [sarea_cycle] using this
  all_goals
    obtain ⟨sg', h', rfl⟩ := Option.map_eq_some_iff.1 h
    have := lookup_sound htb h'
    rw [← orientHolds_not, Bool.not_not]
    first
    | (simp only at this; rw [sarea_swap₁₂] at this; simpa using this)
    | (simp only at this; rw [sarea_swap₂₃] at this; simpa using this)
    | (simp only at this; rw [sarea_swap₁₃] at this; simpa using this)

/-- The indices `j ∈ free` certified strictly inside the signed triangle `f = ((a, b, c), sg)`:
the three oriented edge signs `[a b j], [b c j], [c a j]` are recorded and equal to `sg`. -/
def insideList (tb : List SFact) (free : List ℕ) (f : SFact) : List ℕ :=
  free.filter fun j => orientedLookup tb f.1.1 f.1.2.1 j == some f.2 &&
    orientedLookup tb f.1.2.1 f.1.2.2 j == some f.2 && orientedLookup tb f.1.2.2 f.1.1 j == some f.2

theorem insideList_sound {tb : List SFact} (htb : AllHold (SFact.Holds P) tb) {free : List ℕ}
    {f : SFact} {j : ℕ} (hj : j ∈ insideList tb free f) :
    j ∈ free ∧ OrientHolds f.2 (sarea (P f.1.1) (P f.1.2.1) (P j)) ∧
      OrientHolds f.2 (sarea (P f.1.2.1) (P f.1.2.2) (P j)) ∧
      OrientHolds f.2 (sarea (P f.1.2.2) (P f.1.1) (P j)) := by
  simp only [insideList, List.mem_filter, Bool.and_eq_true, beq_iff_eq] at hj
  exact ⟨hj.1, orientedLookup_sound htb hj.2.1.1, orientedLookup_sound htb hj.2.1.2,
    orientedLookup_sound htb hj.2.2⟩

/-- A point certified inside a signed triangle is strictly inside it, in its orientation. -/
theorem inTriangle_of_orient {sg : Bool} {A B C X : Point} (h1 : OrientHolds sg (sarea A B X))
    (h2 : OrientHolds sg (sarea B C X)) (h3 : OrientHolds sg (sarea C A X)) :
    InTriangle X A B C ∨ InTriangle X A C B := by
  cases sg
  · right
    simp only [OrientHolds, Bool.false_eq_true, ite_false] at h1 h2 h3
    refine ⟨?_, ?_, ?_⟩
    · rw [← sarea_cycle, sarea_swap₁₃, sarea_cycle]; linarith [sarea_cycle C A X]
    · have := sarea_swap₁₂ B C X; linarith
    · have := sarea_swap₁₂ A B X; linarith
  · left; exact ⟨h1, h2, h3⟩

/-- **Subdivision.** A point strictly inside a triangle whose three sub-triangles have doubled
area at least `e` makes the triangle's oriented doubled area at least `3e`. -/
theorem three_le_sgArea {sg : Bool} {A B C X : Point} {e : ℝ}
    (h1 : OrientHolds sg (sarea A B X)) (h2 : OrientHolds sg (sarea B C X))
    (h3 : OrientHolds sg (sarea C A X)) (e1 : e ≤ |sarea A B X|) (e2 : e ≤ |sarea B C X|)
    (e3 : e ≤ |sarea C A X|) : 3 * e ≤ sgArea sg (sarea A B C) := by
  rw [← sgArea_eq_abs h1] at e1; rw [← sgArea_eq_abs h2] at e2; rw [← sgArea_eq_abs h3] at e3
  rw [← sarea_add_sarea_add_sarea A B C X]
  cases sg <;> simp only [sgArea, Bool.false_eq_true, ite_false, ite_true] at e1 e2 e3 ⊢ <;> linarith

/-- The strengthened cost of the signed triangle `f` with `n` certified inside points:
`±[abc] - bound n`. -/
def costAtom (pt : ℕ → Expr × Expr) (bound : ℕ → ℚ) (f : SFact) (n : ℕ) : Expr :=
  (if f.2 then esarea (pt f.1.1) (pt f.1.2.1) (pt f.1.2.2)
    else k (-1) * esarea (pt f.1.1) (pt f.1.2.1) (pt f.1.2.2)) - k (bound n)

theorem eval_costAtom (z : ℕ → ℝ) (pt : ℕ → Expr × Expr) (bound : ℕ → ℚ) (f : SFact) (n : ℕ) :
    (costAtom pt bound f n).eval z = sgArea f.2 (sarea (ptEval z pt f.1.1) (ptEval z pt f.1.2.1)
      (ptEval z pt f.1.2.2)) - bound n := by
  unfold costAtom sgArea
  cases f.2 <;> simp [eval_esarea, ptEval]

/-- The orientation split of the triple `t`: negative first, then positive. -/
def signBranches (t : ℕ × ℕ × ℕ) : List (List SFact) := [[(t, false)], [(t, true)]]

theorem signBranches_exhaustive {t : ℕ × ℕ × ℕ} (h : sarea (P t.1) (P t.2.1) (P t.2.2) ≠ 0) :
    ∃ b ∈ signBranches t, AllHold (SFact.Holds P) b := by
  rcases h.lt_or_gt with h | h
  · exact ⟨_, List.mem_cons_self .., by simp [AllHold, SFact.Holds, OrientHolds, h]⟩
  · exact ⟨_, List.mem_cons_of_mem _ (List.mem_cons_self ..),
      by simp [AllHold, SFact.Holds, OrientHolds, h]⟩

end Signed

/-! ### A small test: an area split closed by two certificates

On `[0, 1]`, `|x - 1/2| ≥ 1/4` and `(x - 1/2)² ≤ 1/32` are incompatible: each side of the split
`x - 1/2 ≥ 1/4`, `-(x - 1/2) ≥ 1/4` gives `g + a² + a/2 = -1/32` for the base atom
`g = 1/32 - (x - 1/2)²` and the branch atom `a`. -/

section Test

private def testBase : List Expr := [k (1 / 32) - (v 0 - k (1 / 2)) * (v 0 - k (1 / 2))]

private def testSpec : Spec Expr Unit :=
  atomSpec testBase fun _ _ => absBranches (v 0 - k (1 / 2)) (1 / 4)

private def testTree : Tree Unit := .node () [.cert [(1, [0]), (2, [1, 1]), (8, [1])],
  .cert [(1, [0]), (2, [1, 1]), (8, [1])]]

private theorem testTree_ok : checkTree testSpec [] testTree = true := by decide +kernel

example (x : ℝ) (hx : 0 ≤ x ∧ x ≤ 1) (h1 : 1 / 4 ≤ |x - 1 / 2|)
    (h2 : (x - 1 / 2) * (x - 1 / 2) ≤ 1 / 32) : False := by
  refine atomSpec_sound testTree_ok (z := fun _ => x) (fun _ => hx) ?_ ?_
  · simp [testBase]; linarith
  · intro _ _ _
    exact absBranches_exhaustive _ _ (by simpa using h1)

end Test

end Heilbronn.Cover
