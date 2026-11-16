module

public import Heilbronn.Common.Bernstein
public import Heilbronn.Common.CertNotation

/-!
# The polynomial certificate for the F-moving chamber (`docs/proof/nine/GLOBAL_COMPLETION.md` §5)

This replaces the case analysis of §§5.3-5.5 of `GLOBAL_COMPLETION.md` (the halves `u ≥ v` and
`u < v`, the 32 one-variable and 886 three-variable Bernstein coefficients) by one positivity
statement. With `g = u + z`, `B* = 1 - g - s/v`, `X₀ = (u(1-3v) + s + 2v)/(1-v)`,
`C* = g(a_u + B*) - B*X₀`, `N = B*(1-v) - s` and `Φ` the left side of `HAND_PROOF.md` (8), the
hand proof's `Δ = z a_v B*(1-g) - N C*` (33) is corrected by the nonnegative term `-Φ B*(1-g)`:

  `Δ̃ = z a_v B*(1-g) - N C* - Φ B*(1-g) > 0`

on the whole region of the proof, in both halves `u ≥ v` and `u < v`. Cleared of denominators,
`T = u v² (1-v) Δ̃` (`Treal`) is a polynomial of degrees `(4, 4, 3, 3)` in `(u, v, s, z)`, positive
on the region `1/8 ≤ u`, `0.1469 ≤ v`, `u + v ≤ 0.3469`, `s ∈ [0.10974, 0.10976]`, `0 ≤ z ≤ 1/4`
(`T_pos`). The region is covered by six strips in `u`, each a box; on each box the positivity is a
Bernstein certificate (`Cert.bernsteinBoxCheck`), split further along `z` and `v` where needed
(`treeCheck`). The splits were found in floating point and are verified here by the kernel
(`scripts/nine/movingf/find_tree.py` recomputes them and checks every leaf in exact arithmetic).

`BTree`/`treeCheck`/`treeCheck_sound` are generic: a subdivision tree of Bernstein box checks for
any `Cert.Expr`, usable by other certificates.
-/

@[expose] public section

namespace Heilbronn.Nine.MovingFCert

open Cert Cert.Expr

/-! ### Split trees of Bernstein checks -/

/-- A subdivision of a box: a leaf carries the bound `M` of a Bernstein check; `split i m l r`
cuts the box at `var i = m` into a left part `l` and a right part `r`. -/
inductive BTree where
  | leaf (M : ℕ)
  | split (i : ℕ) (m : ℚ) (l r : BTree)

/-- Run the Bernstein checks of a subdivision tree on a box. -/
def treeCheck (e : Expr) (ns : List ℕ) : BTree → List (ℚ × ℚ) → Bool
  | .leaf M, box => bernsteinBoxCheck e box ns M
  | .split i m l r, box =>
      treeCheck e ns l (box.set i ((box.getD i (0, 0)).1, m)) &&
        treeCheck e ns r (box.set i (m, (box.getD i (0, 0)).2))

/-- **Soundness of the tree check.** If `treeCheck e ns t box` succeeds, `e` is positive on the
box. -/
theorem treeCheck_sound {e : Expr} {ns : List ℕ} : ∀ (t : BTree) (box : List (ℚ × ℚ)),
    treeCheck e ns t box = true → ∀ x : ℕ → ℝ,
      (∀ i (hi : i < box.length), ((box[i]).1 : ℝ) ≤ x i ∧ x i ≤ (box[i]).2) →
      0 < e.eval x
  | .leaf _, _, h, x, hx => bernsteinBoxCheck_sound h x hx
  | .split i m l r, box, h, x, hx => by
    simp only [treeCheck, Bool.and_eq_true] at h
    by_cases hm : x i ≤ m
    · refine treeCheck_sound l _ h.1 x fun j hj => ?_
      rw [List.length_set] at hj
      rw [List.getElem_set]
      split_ifs with hij
      · subst hij
        rw [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem hj, Option.getD_some]
        exact ⟨(hx i hj).1, hm⟩
      · exact hx j hj
    · push Not at hm
      refine treeCheck_sound r _ h.2 x fun j hj => ?_
      rw [List.length_set] at hj
      rw [List.getElem_set]
      split_ifs with hij
      · subst hij
        rw [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem hj, Option.getD_some]
        exact ⟨hm.le, (hx i hj).2⟩
      · exact hx j hj

/-! ### The polynomial `T = u v² (1-v) Δ̃` -/

section Poly

/-- The variables `u, v, s, z` are `var 0, …, var 3`. -/
abbrev eu : Expr := v 0
abbrev ev : Expr := v 1
abbrev es : Expr := v 2
abbrev ez : Expr := v 3

/-- `v B* = v(1 - u - z) - s`. -/
def eVB : Expr := ev * (1 - eu - ez) - es
/-- `(1-v) X₀ = u(1-3v) + s + 2v`. -/
def eX0 : Expr := eu * (1 - k 3 * ev) + es + k 2 * ev
/-- `v(1-v) C* = g(a_u v(1-v) + (1-v) v B*) - v B* · (1-v) X₀`. -/
def eVC : Expr :=
  (eu + ez) * ((1 - k 3 * eu - es) * ev * (1 - ev) + (1 - ev) * eVB) - eVB * eX0
/-- `v N = v B* (1-v) - s v`. -/
def eVN : Expr := eVB * (1 - ev) - es * ev
/-- `uv Φ = 6u²v² + (3s-4)(u+v)uv + (2s+2)uv - s(1-s)(u+v)`. -/
def ePhi : Expr :=
  k 6 * eu * eu * ev * ev + (k 3 * es - k 4) * (eu + ev) * eu * ev + (k 2 * es + k 2) * eu * ev -
    es * (1 - es) * (eu + ev)

/-- `T = u v² (1-v) (z a_v B*(1-g) - N C* - Φ B*(1-g))`. -/
def Tcert : Expr :=
  eu * (ez * (1 - k 3 * ev - es) * (1 - (eu + ez)) * ev * (1 - ev) * eVB - eVN * eVC) -
    (1 - ev) * ePhi * eVB * (1 - (eu + ez))

end Poly

/-- The real polynomial of `Tcert`. -/
noncomputable def Treal (u v s z : ℝ) : ℝ :=
  u * (z * (1 - 3 * v - s) * (1 - (u + z)) * v * (1 - v) * (v * (1 - u - z) - s) -
      ((v * (1 - u - z) - s) * (1 - v) - s * v) *
        ((u + z) * ((1 - 3 * u - s) * v * (1 - v) + (1 - v) * (v * (1 - u - z) - s)) -
          (v * (1 - u - z) - s) * (u * (1 - 3 * v) + s + 2 * v))) -
    (1 - v) * (6 * u * u * v * v + (3 * s - 4) * (u + v) * u * v + (2 * s + 2) * u * v -
      s * (1 - s) * (u + v)) * (v * (1 - u - z) - s) * (1 - (u + z))

theorem Tcert_eval (x : ℕ → ℝ) : Tcert.eval x = Treal (x 0) (x 1) (x 2) (x 3) := by
  simp only [Tcert, eVB, eX0, eVC, eVN, ePhi, Treal]
  simp only [eval_plus, eval_minus, eval_times, eval_one, eval_k, eval_v]
  push_cast
  ring

/-- The degrees of `Tcert` in `u, v, s, z`. -/
def degs : List ℕ := [4, 4, 3, 3]

/-! ### The six strips -/

/-- Strip 0: `u ∈ [1/8, 11/80]`, `v ∈ [1469/10000, 2219/10000]`. -/
def box0 : List (ℚ × ℚ) :=
  [(1/8, 11/80),
    (1469/10000, 2219/10000),
    (5487/50000, 343/3125),
    (0, 1/4)]

def tree0 : BTree :=
  .leaf 181627

theorem check0 : treeCheck Tcert degs tree0 box0 = true := by
  decide +kernel

/-- Strip 1: `u ∈ [11/80, 3/20]`, `v ∈ [1469/10000, 1047/5000]`. -/
def box1 : List (ℚ × ℚ) :=
  [(11/80, 3/20),
    (1469/10000, 1047/5000),
    (5487/50000, 343/3125),
    (0, 1/4)]

def tree1 : BTree :=
  .split 3 (1/8) (.leaf 103795) (.leaf 48500)

theorem check1 : treeCheck Tcert degs tree1 box1 = true := by
  decide +kernel

/-- Strip 2: `u ∈ [3/20, 13/80]`, `v ∈ [1469/10000, 1969/10000]`. -/
def box2 : List (ℚ × ℚ) :=
  [(3/20, 13/80),
    (1469/10000, 1969/10000),
    (5487/50000, 343/3125),
    (0, 1/4)]

def tree2 : BTree :=
  .split 3 (1/8) (.leaf 350784) (.leaf 52638)

theorem check2 : treeCheck Tcert degs tree2 box2 = true := by
  decide +kernel

/-- Strip 3: `u ∈ [13/80, 7/40]`, `v ∈ [1469/10000, 461/2500]`. -/
def box3 : List (ℚ × ℚ) :=
  [(13/80, 7/40),
    (1469/10000, 461/2500),
    (5487/50000, 343/3125),
    (0, 1/4)]

def tree3 : BTree :=
  .split 3 (1/8) (.split 1 (3313/20000) (.leaf 260322) (.leaf 804708)) (.leaf 47469)

theorem check3 : treeCheck Tcert degs tree3 box3 = true := by
  decide +kernel

/-- Strip 4: `u ∈ [7/40, 3/16]`, `v ∈ [1469/10000, 1719/10000]`. -/
def box4 : List (ℚ × ℚ) :=
  [(7/40, 3/16),
    (1469/10000, 1719/10000),
    (5487/50000, 343/3125),
    (0, 1/4)]

def tree4 : BTree :=
  .leaf 18545696

theorem check4 : treeCheck Tcert degs tree4 box4 = true := by
  decide +kernel

/-- Strip 5: `u ∈ [3/16, 1/5]`, `v ∈ [1469/10000, 797/5000]`. -/
def box5 : List (ℚ × ℚ) :=
  [(3/16, 1/5),
    (1469/10000, 797/5000),
    (5487/50000, 343/3125),
    (0, 1/4)]

def tree5 : BTree :=
  .leaf 279887

theorem check5 : treeCheck Tcert degs tree5 box5 = true := by
  decide +kernel

/-! ### Positivity of `T` on the region -/

theorem pos_of_box {u v s z : ℝ} {t : BTree} {a₀ b₀ a₁ b₁ a₂ b₂ a₃ b₃ : ℚ}
    (h : treeCheck Tcert degs t [(a₀, b₀), (a₁, b₁), (a₂, b₂), (a₃, b₃)] = true)
    (h0 : (a₀ : ℝ) ≤ u ∧ u ≤ b₀) (h1 : (a₁ : ℝ) ≤ v ∧ v ≤ b₁)
    (h2 : (a₂ : ℝ) ≤ s ∧ s ≤ b₂) (h3 : (a₃ : ℝ) ≤ z ∧ z ≤ b₃) : 0 < Treal u v s z := by
  let x : ℕ → ℝ := fun i => match i with | 0 => u | 1 => v | 2 => s | _ => z
  have := treeCheck_sound t _ h x fun i hi => by
    match i, hi with
    | 0, _ => exact h0
    | 1, _ => exact h1
    | 2, _ => exact h2
    | 3, _ => exact h3
  rwa [Tcert_eval] at this

/-- **The certificate.** `T = u v² (1-v) Δ̃` is positive on the region `1/8 ≤ u ≤ 1/5`,
`0.1469 ≤ v`, `u + v ≤ 0.3469`, `0.10974 ≤ s ≤ 0.10976`, `0 ≤ z ≤ 1/4`. -/
theorem T_pos {u v s z : ℝ} (hu : 1 / 8 ≤ u) (hu1 : u ≤ 1 / 5) (hv : 1469 / 10000 ≤ v)
    (huv : u + v ≤ 3469 / 10000) (hs0 : 5487 / 50000 ≤ s) (hs1 : s ≤ 343 / 3125)
    (hz0 : 0 ≤ z) (hz1 : z ≤ 1 / 4) : 0 < Treal u v s z := by
  have hs : ((5487 / 50000 : ℚ) : ℝ) ≤ s ∧ s ≤ ((343 / 3125 : ℚ) : ℝ) := by
    push_cast; exact ⟨hs0, hs1⟩
  have hz : ((0 : ℚ) : ℝ) ≤ z ∧ z ≤ ((1 / 4 : ℚ) : ℝ) := by push_cast; exact ⟨hz0, hz1⟩
  rcases le_or_gt u (11 / 80) with h0 | h0
  · exact pos_of_box check0 (by push_cast; constructor <;> linarith)
      (by push_cast; constructor <;> linarith) hs hz
  rcases le_or_gt u (3 / 20) with h1 | h1
  · exact pos_of_box check1 (by push_cast; constructor <;> linarith)
      (by push_cast; constructor <;> linarith) hs hz
  rcases le_or_gt u (13 / 80) with h2 | h2
  · exact pos_of_box check2 (by push_cast; constructor <;> linarith)
      (by push_cast; constructor <;> linarith) hs hz
  rcases le_or_gt u (7 / 40) with h3 | h3
  · exact pos_of_box check3 (by push_cast; constructor <;> linarith)
      (by push_cast; constructor <;> linarith) hs hz
  rcases le_or_gt u (3 / 16) with h4 | h4
  · exact pos_of_box check4 (by push_cast; constructor <;> linarith)
      (by push_cast; constructor <;> linarith) hs hz
  · exact pos_of_box check5 (by push_cast; constructor <;> linarith)
      (by push_cast; constructor <;> linarith) hs hz

end Heilbronn.Nine.MovingFCert
