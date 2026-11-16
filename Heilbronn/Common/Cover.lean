module

public import Heilbronn.Common.CertNotation
public import Heilbronn.Common.Config
public meta import Lean.Elab.Tactic

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
current ones, and checks every leaf. The kernel evaluates it: `tree_decide` proves
`checkTree σ fs T = true` by one kernel check for each subtree of at most 400 certificate terms
(see *Checking a tree* below), so that no single check holds the intermediate values of a whole
large tree.

**Soundness** (`checkTree_sound`): if `checkTree σ fs T = true`, then no point `z` of the unit
cube admits an interpretation `Holds : F → Prop` with
* `hatoms`: whenever all facts `fs` hold, every atom of `σ.atoms fs` is nonnegative at `z`;
* `hbranch`: whenever all facts `fs` hold, some branch of every split has all its facts true;
* `hclosed`: whenever all facts `fs` hold, `closedOK fs tag` fails;
* all the initial facts `fs` holding.

The package proves `hatoms`, `hbranch`, `hclosed` once (as lemmas about all fact lists); the
kernel does the per-case work.

## Checking a tree

The kernel keeps every intermediate value of a check until the check ends, so a single check of a
tree with a few thousand certificate terms needs several gigabytes. `tree_decide n m` proves
`checkTree σ fs T = true` by splitting `T` at every split of size above `n` (its certificate terms,
and one for each leaf closed by `closedOK`; default `400`) or with more than `m` leaves (default: no
limit): each smaller subtree becomes an auxiliary theorem `of_decide_eq_true rfl`, checked by the
kernel on its own and one after another. At a split too large for one piece, the branches
`σ.branches fs s` are computed once, as a list literal `bs`, by an auxiliary theorem
`σ.branches fs s = bs`; the splits are glued by `checkTree_node_of_branches` and
`checkChildren_cons_of`, and each child is checked from the literal facts `fs ++ b`, so that no
piece computes the branches of its ancestors again.

A tree too large for one module is checked in parts: a part below the path of splits
`[(s₀, i₀), …, (sₖ, iₖ)]` is proved in its own module from the facts
`pathFacts σ fs [(s₀, i₀), …, (sₖ, iₖ)]` (each step appends the facts of the `iⱼ`-th branch of the
split `sⱼ`), and `tree_decide using h₁, …, hₖ` in the module of the whole tree takes the parts from
the theorems `hᵢ`. On `L.all f = true`, `tree_decide` proves `f x = true` for each element `x` of
the list `L` separately (`all_cons_of_true`); on any other decidable goal it is a single kernel
check.

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

/-! ### Lemmas for `tree_decide` -/

theorem all_cons_of_true {α : Type*} (f : α → Bool) (x : α) (xs : List α) (h : f x = true)
    (hs : xs.all f = true) : (x :: xs).all f = true := by
  simp_all

theorem all_nil_true {α : Type*} (f : α → Bool) : ([] : List α).all f = true := rfl

theorem checkTree_node_of_branches (σ : Spec F S) (fs : List F) (s : S) (cs : List (Tree S))
    (bs : List (List F)) (hbr : σ.branches fs s = bs) (h : checkChildren σ fs bs cs = true) :
    checkTree σ fs (.node s cs) = true := by
  rw [checkTree_node, hbr]; exact h

theorem checkChildren_cons_of (σ : Spec F S) (fs b : List F) (bs : List (List F)) (c : Tree S)
    (cs : List (Tree S)) (hc : checkTree σ (fs ++ b) c = true)
    (hcs : checkChildren σ fs bs cs = true) : checkChildren σ fs (b :: bs) (c :: cs) = true := by
  rw [checkChildren_cons, hc, hcs]; rfl

/-- The facts known below the splits `p` of a tree, from the facts `fs`: each step `(s, i)` appends
the facts of the `i`-th branch of the split `s`. -/
def pathFacts (σ : Spec F S) : List F → List (S × ℕ) → List F
  | fs, [] => fs
  | fs, (s, i) :: p => pathFacts σ (fs ++ (σ.branches fs s).getD i []) p

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

end

/-! ### The tactic `tree_decide` -/

public meta section

namespace Heilbronn.Cover.TreeDecide

open Lean Meta Elab Tactic

/-- The elements of a list, unfolding definitions until it is a literal. -/
partial def elems (e : Expr) : MetaM (Option (List Expr)) := do
  let e ← whnfD e
  if e.isAppOfArity ``List.nil 1 then
    return some []
  else if e.isAppOfArity ``List.cons 3 then
    return (← elems e.appArg!).map (e.appFn!.appArg! :: ·)
  else
    return none

/-- The tails of a list literal: the list itself, then each tail after it, ending with `[]`. -/
partial def tails (e : Expr) : MetaM (List Expr) := do
  let e ← whnfD e
  if e.isAppOfArity ``List.cons 3 then
    return e :: (← tails e.appArg!)
  else
    return [e]

/-- The size of a tree, unfolding definitions: its certificate terms, and one for each leaf closed
by the package's own test. -/
partial def size (t : Expr) : MetaM Nat := do
  let t ← whnfD t
  if t.isAppOfArity ``Tree.cert 2 then
    return ((← elems t.appArg!).map List.length).getD 0
  else if t.isAppOfArity ``Tree.closed 2 then
    return 1
  else if t.isAppOfArity ``Tree.node 3 then
    let some cs ← elems t.appArg! | return 0
    cs.foldlM (fun n c => return n + (← size c)) 0
  else
    return 0

/-- `e` with the projections of explicit pairs, `(a, b).1` and `(a, b).2`, reduced: the element
`(k, T)` of a list of cases gives the goal `checkTree (σ k) [] T`, as its pieces state it. -/
def reducePairProj (e : Expr) : Expr := e.replace fun s =>
  let pick (i : Nat) (p : Expr) : Option Expr :=
    if p.isAppOfArity ``Prod.mk 4 then
      some (if i == 0 then p.appFn!.appArg! else p.appArg!)
    else none
  if s.isAppOfArity ``Prod.fst 3 then pick 0 s.appArg!
  else if s.isAppOfArity ``Prod.snd 3 then pick 1 s.appArg!
  else match s with
    | .proj ``Prod i p => pick i p
    | _ => none

/-- The number of leaves of a tree, unfolding definitions. -/
partial def leaves (t : Expr) : MetaM Nat := do
  let t ← whnfD t
  if t.isAppOfArity ``Tree.node 3 then
    let some cs ← elems t.appArg! | return 0
    cs.foldlM (fun n c => return n + (← leaves c)) 0
  else
    return 1

/-- Close `g`, a closed decidable proposition, by an auxiliary theorem `of_decide_eq_true rfl`,
which only the kernel checks, as `decide +kernel` does. Unlike `decide +kernel`, the theorem is
added like any other: the kernel checks it in a task of its own, after the declarations before it,
so the checks of the pieces run one at a time and do not count against the heartbeats of the
command. A failing check is reported as a kernel error on the auxiliary theorem. -/
def decideKernel (g : MVarId) : TacticM Unit := g.withContext do
  let ty ← instantiateMVars (← g.getType)
  if ty.hasFVar || ty.hasMVar then
    throwError "tree_decide: the goal must be closed{indentExpr ty}"
  let pf ← mkDecideProof ty
  let name ← withOptions (Elab.async.set · true) <| mkAuxLemma [] ty pf
  g.assign (mkConst name)

/-- Theorems given by `using`, with their statements, and whether each has been used. -/
structure Known where
  proofs : Array (Expr × Expr)
  used : IO.Ref (Array Bool)

/-- Close `g` by a theorem given by `using` whose statement is `g`'s, up to reducible unfolding.
The statements are first compared on their last argument (the tree), which must be equal. -/
def closeByKnown (k : Known) (g : MVarId) (ty : Expr) : MetaM Bool := do
  for h : i in [:k.proofs.size] do
    let (pf, kty) := k.proofs[i]
    let same := match kty.eq?, ty.eq? with
      | some (_, a, _), some (_, b, _) =>
        a.getAppNumArgs == b.getAppNumArgs && a.appArg! == b.appArg!
      | _, _ => false
    if same && (← withReducible <| isDefEq kty ty) then
      g.assign pf
      k.used.modify (·.set! i true)
      return true
  return false

/-- `e`, a closed term of an inductive data type, reduced by the kernel to constructors and
literals all the way down (proofs and types are left as they are). -/
partial def kernelNorm (e : Expr) : MetaM Expr := do
  let e ← match Kernel.whnf (← getEnv) (← getLCtx) e with
    | .ok e => pure e
    | .error ex => throwKernelException ex
  let f := e.getAppFn
  let .const n _ := f | return e
  let some (.ctorInfo info) := (← getEnv).find? n | return e
  let args ← e.getAppArgs.mapIdxM fun i a => do
    if i < info.numParams then return a
    let ty ← inferType a
    if (← isProp ty) || ty.isSort then return a
    kernelNorm a
  return mkAppN f args

/-- The proof of `g : checkTree σ fs t = true`, where `fs` is a list literal: the facts below the
path `path` of splits from the facts `fs₀`. At a split `s` too large for one piece, the branches
`σ.branches fs s` are computed once, as a literal `bs`, by an auxiliary theorem
`σ.branches fs s = bs` (checked by the kernel), and the `i`-th child is checked from the literal
facts `fs ++ bs[i]`, so that no piece computes the branches of its ancestors again. A piece given
by `using` states its facts as `pathFacts σ fs₀ path`, which the kernel reduces to the same
list. -/
partial def goTree (budget : Nat × Nat) (k : Known) (g : MVarId) (F S σ fs₀ : Expr)
    (path : List Expr) (fs t : Expr) : TacticM Unit := g.withContext do
  -- a piece given by `using`
  let pairTy := mkApp2 (mkConst ``Prod [0, 0]) S (mkConst ``Nat)
  let pfs := mkAppN (mkConst ``pathFacts) #[F, S, σ, fs₀, ← mkListLit pairTy path]
  let stated ← mkEq (mkAppN (mkConst ``checkTree) #[F, S, σ, pfs, t]) (mkConst ``Bool.true)
  if (← closeByKnown k g stated) then return
  let t' ← whnfD t
  unless t'.isAppOfArity ``Tree.node 3 do return ← decideKernel g
  if (← size t') ≤ budget.1 && (← leaves t') ≤ budget.2 then return ← decideKernel g
  let s := t'.getArg! 1
  let cs := t'.getArg! 2
  let some children ← elems cs | decideKernel g
  let ts ← tails cs
  -- the branches of the split, as a literal, and their theorem
  let bsExpr := mkApp5 (mkConst ``Spec.branches) F S σ fs s
  let bs ← kernelNorm bsExpr
  let some (_, branches) := bs.listLit? | decideKernel g
  unless branches.length == children.length do return ← decideKernel g
  let bsTy ← mkEq bsExpr bs
  let hbr ← mkAuxLemma [] bsTy (← mkEqRefl bs)
  let some (_, fsElems) := fs.listLit? | decideKernel g
  let listF := mkApp (mkConst ``List [0]) F
  let mut proof := mkApp3 (mkConst ``checkChildren_nil) F S σ |>.app fs
  for i in (List.range children.length).reverse do
    let b := branches[i]!
    let some (_, bElems) := b.listLit? | return ← decideKernel g
    let childFs ← mkListLit F (fsElems ++ bElems)
    let restBs ← mkListLit listF (branches.drop (i + 1))
    let goal ← mkEq (mkAppN (mkConst ``checkTree) #[F, S, σ, childFs, children[i]!])
      (mkConst ``Bool.true)
    let step := mkApp4 (mkConst ``Prod.mk [0, 0]) S (mkConst ``Nat) s (mkNatLit i)
    let h ← withCurrHeartbeats do
      let h ← mkFreshExprSyntheticOpaqueMVar goal
      goTree budget k h.mvarId! F S σ fs₀ (path ++ [step]) childFs children[i]!
      pure h
    proof := mkAppN (mkConst ``checkChildren_cons_of) #[F, S, σ, fs, b, restBs, children[i]!,
      ts[i + 1]!, h, proof]
  g.assign (mkAppN (mkConst ``checkTree_node_of_branches)
    #[F, S, σ, fs, s, cs, bs, mkConst hbr, proof])

/-- The proof of `g`, split as described in the module documentation. The kernel checks of the
pieces count against the heartbeats of the command, so each piece starts a fresh count, as it would
in a theorem of its own. -/
partial def go (budget : Nat × Nat) (k : Known) (g : MVarId) : TacticM Unit := g.withContext do
  let ty ← instantiateMVars (← g.getType)
  if (← closeByKnown k g ty) then return
  let some (_, lhs, _) := ty.eq? | decideKernel g
  if lhs.isAppOfArity ``List.all 3 then
    let #[α, l, f] := lhs.getAppArgs | decideKernel g
    let some xs ← elems l | decideKernel g
    let u ← getDecLevel α
    let ts ← tails l
    let mut proof := mkApp2 (mkConst ``all_nil_true [u]) α f
    for i in (List.range xs.length).reverse do
      let x := xs[i]!
      let h ← mkFreshExprSyntheticOpaqueMVar
        (← mkEq (reducePairProj (mkApp f x).headBeta) (mkConst ``Bool.true))
      withCurrHeartbeats <| go budget k h.mvarId!
      proof := mkApp6 (mkConst ``all_cons_of_true [u]) α f x ts[i + 1]! h proof
    g.assign proof
  else if lhs.isAppOfArity ``checkTree 5 then
    let #[F, S, σ, fs, t] := lhs.getAppArgs | decideKernel g
    -- the facts below the root: `fs₀`, and the path of splits from it, if `fs` is `pathFacts`
    let (fs₀, path) :=
      if fs.isAppOfArity ``pathFacts 5 then
        match fs.appArg!.listLit? with
        | some (_, p) => (fs.appFn!.appArg!, p)
        | none => (fs, [])
      else (fs, [])
    -- the initial facts as a literal, once; the piece states them as the goal does
    let fsLit ← kernelNorm fs
    let g' ← mkFreshExprSyntheticOpaqueMVar
      (← mkEq (mkAppN (mkConst ``checkTree) #[F, S, σ, fsLit, t]) (mkConst ``Bool.true))
    goTree budget k g'.mvarId! F S σ fs₀ path fsLit t
    g.assign g'
  else
    decideKernel g

/-- `tree_decide n m` proves `checkTree σ fs T = true`, or `L.all f = true`, by kernel checks of
subtrees of size at most `n` (certificate terms, and one per closed leaf; default `400`) and of at
most `m` leaves (default: no limit). On any other goal it is `decide +kernel`.
`tree_decide using h₁, …, hₖ` closes every piece whose statement is that of one of the `hᵢ`,
proved elsewhere (for a tree split across modules), and fails if one of them is not used. It
starts a fresh heartbeat count, so that after a case split, `<;> tree_decide` gives each case the
count of a theorem of its own. -/
syntax (name := treeDecide) "tree_decide" (ppSpace num)? (ppSpace num)? (" using " term,+)? :
  tactic

@[tactic treeDecide] def evalTreeDecide : Tactic := fun stx => withCurrHeartbeats do
  let num (i : Nat) (d : Nat) : Nat := match stx[i].getOptional? with
    | some n => n.isNatLit?.getD d
    | none => d
  let budget := (num 1 400, num 2 1000000000)
  let g ← getMainGoal
  -- the optional group `using h₁, …` is the node `[using, h₁, …]` itself
  let terms := if stx[3].getNumArgs == 2 then stx[3][1].getSepArgs else #[]
  let proofs ← g.withContext <| terms.mapM fun t => do
    let pf ← instantiateMVars (← Term.elabTerm t none)
    return (pf, ← instantiateMVars (← inferType pf))
  let k : Known := { proofs, used := ← IO.mkRef (Array.replicate proofs.size false) }
  go budget k g
  let used ← k.used.get
  for i in [:terms.size] do
    unless used[i]! do
      throwErrorAt terms[i]! "tree_decide: this theorem matches no piece of the tree"
  replaceMainGoal []

end Heilbronn.Cover.TreeDecide
