module

public import Heilbronn.Common.CertNotation
public import Heilbronn.Common.DataReader
public import Heilbronn.Nine.EightBoundary.Setting

/-! # The certificate model of the eight-boundary classes

Shared by the modules `Heilbronn.Nine.EightBoundary.CertSingleCap`, `Heilbronn.Nine.EightBoundary.CertNoCap`
and `Heilbronn.Nine.EightBoundary.CertR6`, which exclude the radial classes `R2`, `R5` and `R6` at
doubled area `s = 7/64` by polynomial certificates (`Heilbronn/Common/Certificate.lean`).

The variables are `a b c d e f g h x y = v 0, …, v 9`, the points
`A = (0,a), B = (b,0), C = (c,0), D = (1,d), E = (1,e), F = (f,1), G = (g,1), H = (0,h)`,
`O = (x,y)`. The common atoms are the order and square facts (`orders`), the eight boundary
budgets `[XYZ] - s` (`budgets`) and the four gap bounds `11/16 - gap` (`gaps`, from
`EightBoundary.two_mul_minTriangleArea_le_maxGap`). The certificate terms are read from data files.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.EightBoundary.CertModel

open Heilbronn.Cert Heilbronn.Cert.Expr

/-- The doubled area threshold `s = 7/64`. -/
abbrev s : Expr := k (7 / 64)

abbrev pA : Expr × Expr := (0, v 0)
abbrev pB : Expr × Expr := (v 1, 0)
abbrev pC : Expr × Expr := (v 2, 0)
abbrev pD : Expr × Expr := (1, v 3)
abbrev pE : Expr × Expr := (1, v 4)
abbrev pF : Expr × Expr := (v 5, 1)
abbrev pG : Expr × Expr := (v 6, 1)
abbrev pH : Expr × Expr := (0, v 7)
abbrev pO : Expr × Expr := (v 8, v 9)

/-- The order and square facts. -/
def orders : List Expr :=
  [v 0, v 7 - v 0, 1 - v 7, v 1, v 2 - v 1, 1 - v 2, v 3, v 4 - v 3, 1 - v 4, v 6, v 5 - v 6,
   1 - v 5, v 8, 1 - v 8, v 9, 1 - v 9]

/-- The eight boundary budgets `ABH, ABC, BCD, CDE, DEF, EFG, FGH, GHA`. -/
def budgets : List Expr :=
  [esarea pA pB pH - s, esarea pA pB pC - s, esarea pB pC pD - s, esarea pC pD pE - s,
   esarea pD pE pF - s, esarea pE pF pG - s, esarea pF pG pH - s, esarea pG pH pA - s]

/-- The gap bounds `L, B, R, T ≤ 11/16` (`EightBoundary.two_mul_minTriangleArea_le_maxGap` at area `7/128`). -/
def gaps : List Expr :=
  [k (11 / 16) - (v 7 - v 0), k (11 / 16) - (v 2 - v 1), k (11 / 16) - (v 4 - v 3),
   k (11 / 16) - (v 5 - v 6)]

/-- The coordinates as a point of the cube (variables beyond the tenth are `0`). -/
def zeta (a b c d e f g h x y : ℝ) : ℕ → ℝ
  | 0 => a | 1 => b | 2 => c | 3 => d | 4 => e | 5 => f | 6 => g | 7 => h | 8 => x | 9 => y
  | _ => 0

/-- The common hypotheses: the normal form, the eight boundary budgets at `7/64` and the gap
bounds. -/
structure Base (a b c d e f g h x y : ℝ) : Prop where
  hA : EightAnchors a b c d e f g h
  hx0 : 0 < x
  hx1 : x < 1
  hy0 : 0 < y
  hy1 : y < 1
  t1 : 7 / 64 ≤ b * (h - a)
  t2 : 7 / 64 ≤ a * (c - b)
  t3 : 7 / 64 ≤ d * (c - b)
  t4 : 7 / 64 ≤ (1 - c) * (e - d)
  t5 : 7 / 64 ≤ (1 - f) * (e - d)
  t6 : 7 / 64 ≤ (1 - e) * (f - g)
  t7 : 7 / 64 ≤ (1 - h) * (f - g)
  t8 : 7 / 64 ≤ g * (h - a)
  gL : h - a ≤ 11 / 16
  gB : c - b ≤ 11 / 16
  gR : e - d ≤ 11 / 16
  gT : f - g ≤ 11 / 16

theorem Base.zeta_mem {a b c d e f g h x y : ℝ} (H : Base a b c d e f g h x y) (i : ℕ) :
    0 ≤ zeta a b c d e f g h x y i ∧ zeta a b c d e f g h x y i ≤ 1 := by
  obtain ⟨⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12⟩, hx0, hx1, hy0, hy1, -⟩ := H
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;>
    simp only [zeta] <;> constructor <;> linarith

theorem Base.atoms {a b c d e f g h x y : ℝ} (H : Base a b c d e f g h x y) :
    ∀ t ∈ orders ++ budgets ++ gaps, 0 ≤ t.eval (zeta a b c d e f g h x y) := by
  obtain ⟨⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12⟩, hx0, hx1, hy0, hy1, t1, t2, t3, t4,
    t5, t6, t7, t8, gL, gB, gR, gT⟩ := H
  simp only [orders, budgets, gaps, List.cons_append, List.nil_append, List.forall_mem_cons,
    List.not_mem_nil, IsEmpty.forall_iff, implies_true, and_true, eval_v, eval_minus, eval_zero,
    eval_one, eval_k, eval_esarea, Heilbronn.sarea, zeta]
  push_cast
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

end Heilbronn.Nine.EightBoundary.CertModel
