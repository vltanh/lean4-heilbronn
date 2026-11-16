module

public import Heilbronn.Nine.C1.ZeroLowerCover

/-! # The sign-table packages of the one-lower C1 cases

The one-lower packages (top cap, side cap, right pair, eight-vertex hull, top triangle, right top
triangle, convex top) all exclude a cell of nine labelled points `P 0, …, P 8` by a sign-table
package `Cover.tableSpec pt Package.bnd free pre post base C1ZeroLower.Model.triBranches`: its
atoms are, in order, some expressions known to be nonnegative (`pre`), the strengthened costs of
the cell's initial table `base` followed by the signs of the triangle splits along the path of the
cover tree (with the occupancy bounds `s, 3s, ρ` of `Package.bnd`, the certified inside points
being counted among `free`), and some more nonnegative expressions (`post`).

* `triBranches_ok`: the triangle splits are exhaustive when every actual triangle has doubled area
  at least `2A₀` (`Package.AreaOK`);
* `tableSpec_false`: the soundness of a kernel-checked tree for such a package.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLower

open Heilbronn.Nine.Package Cover Cert Cert.Expr C1ZeroLower.Model

variable {P : ℕ → Point}

theorem triBranches_ok (H : AreaOK P) (fs : List SFact) (s : Split) :
    ∃ b ∈ triBranches fs s, AllHold (FHolds 9 P) b := by
  cases s with
  | tri a b e =>
    simp only [triBranches]
    split_ifs with hv
    · exact H.signBranches_ok hv
    · exact ⟨[], by simp, by simp [AllHold]⟩
  | three => exact ⟨[], by simp [triBranches], by simp [AllHold]⟩

/-- **Soundness of a one-lower table cover.** If the tree checks, no configuration satisfies the
cell: the point `z` of the cube carries the nine points `P` (`hpt`), all actual triangles have
doubled area at least `2A₀`, the expressions `pre` and `post` are nonnegative and the initial
table holds. -/
theorem tableSpec_false {pre post : List Expr} {pt : ℕ → Expr × Expr} {free : List ℕ}
    {base : List SFact} {T : Cover.Tree Split}
    (hT : checkTree (tableSpec pt bnd free pre post base triBranches) [] T = true)
    {z : ℕ → ℝ} (hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1) (hpt : ∀ i, i < 9 → ptEval z pt i = P i)
    (H : AreaOK P) (hfree : ∀ j ∈ free, j < 9) (hnd : free.Nodup)
    (hpre : ∀ e ∈ pre, 0 ≤ e.eval z) (hpost : ∀ e ∈ post, 0 ≤ e.eval z)
    (hbase : AllHold (FHolds 9 P) base) : False :=
  tableSpec_sound hT hz hpt (H.costHyp hfree hnd) hpre hpost hbase
    (fun fs s _ => triBranches_ok H fs s)

end Heilbronn.Nine.C1OneLower
