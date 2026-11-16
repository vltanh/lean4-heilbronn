module

public import Heilbronn.Nine.SevenBoundary.Interior.Model
public import Heilbronn.Nine.SevenBoundary.Setting
public import Heilbronn.Nine.Corners.CornerFamilies.SixPoint

/-! # Soundness of the seven-boundary interior cover

The real configuration behind `Heilbronn.Nine.SevenInterior.Model`: the nine points `cfg` in heptagon
order `A, B, C, D, E, F, H, P, Q`, the point `zeta` of the cube, and the proofs, once for all fact
lists, that the atoms are nonnegative (`Cell.atoms_nonneg`: the box and order factors from the
normal form, the strengthened triangle costs from the cost premises `Comp.costHyp` (least area and
the two-interior-point lemma), the cuts from their facts) and that the splits are exhaustive
(`Cell.branch`). `Cell.false`: a cell whose tree passes the kernel check is impossible.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenInterior

open Cert Cert.Expr Cover Model SevenBoundary

/-- The nine points in heptagon order: `A, B, C, D, E, F, H`, then `P, Q`. -/
def cfg (a h b c d e f : ℝ) (P Q : Point) : ℕ → Point
  | 0 => (0, a)
  | 1 => (b, 0)
  | 2 => (c, 0)
  | 3 => (1, d)
  | 4 => (1, e)
  | 5 => (f, 1)
  | 6 => (0, h)
  | 7 => P
  | 8 => Q
  | _ => (0, 0)

/-- The variables `a, h, b, c, d, e, f, p_x, p_y, q_x, q_y` of the certificates (`0` beyond). -/
def zeta (a h b c d e f : ℝ) (P Q : Point) : ℕ → ℝ
  | 0 => a
  | 1 => h
  | 2 => b
  | 3 => c
  | 4 => d
  | 5 => e
  | 6 => f
  | 7 => P.1
  | 8 => P.2
  | 9 => Q.1
  | 10 => Q.2
  | _ => 0

/-- The index in `sevenConfig` (order `A, H, B, C, D, E, F, P, Q`) of the heptagon index. -/
def idx : ℕ → Fin 9
  | 0 => 0
  | 1 => 2
  | 2 => 3
  | 3 => 4
  | 4 => 5
  | 5 => 6
  | 6 => 1
  | 7 => 7
  | _ => 8

theorem idx_inj : ∀ i < 9, ∀ j < 9, idx i = idx j → i = j := by decide

variable {a h b c d e f : ℝ} {P Q : Point}

theorem ptEval_zeta (i : ℕ) : ptEval (zeta a h b c d e f P Q) pt i = cfg a h b c d e f P Q i := by
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;> simp [ptEval, pt, cfg, zeta]

theorem cfg_eq (i : ℕ) (hi : i < 9) :
    cfg a h b c d e f P Q i = sevenConfig a h b c d e f P Q (idx i) := by
  interval_cases i <;> rfl

/-- A configuration of the open-side normal form with both free points in the square and least
area at least `7/128`. -/
structure Comp (a h b c d e f : ℝ) (P Q : Point) : Prop where
  hN : SevenNormal a h b c d e f
  hP : P ∈ unitSquare
  hQ : Q ∈ unitSquare
  hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)

theorem Comp.zeta_mem (H : Comp a h b c d e f P Q) (v : ℕ) :
    0 ≤ zeta a h b c d e f P Q v ∧ zeta a h b c d e f P Q v ≤ 1 := by
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := H.hN
  obtain ⟨p0, p1, p2, p3⟩ := H.hP
  obtain ⟨q0, q1, q2, q3⟩ := H.hQ
  rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;> simp only [zeta] <;>
    constructor <;> linarith

/-- Every actual triangle has doubled area at least `s = 7/64`. -/
theorem Comp.area (H : Comp a h b c d e f P Q) (i j k : ℕ) (hi : i < 9) (hj : j < 9) (hk : k < 9)
    (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) :
    7 / 64 ≤ |sarea (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q j) (cfg a h b c d e f P Q k)| := by
  have := area_of_le_min H.hmin (idx i) (idx j) (idx k)
    (fun e => hij (idx_inj i hi j hj e)) (fun e => hjk (idx_inj j hj k hk e))
    (fun e => hik (idx_inj i hi k hk e))
  rw [triangleArea_eq] at this
  rw [cfg_eq i hi, cfg_eq j hj, cfg_eq k hk]; linarith

/-- A sub-configuration of distinct points of the nine has least area at least `7/128`. -/
theorem Comp.min_sub (H : Comp a h b c d e f P Q) {m : ℕ} (hm : 3 ≤ m) (ι : Fin m → ℕ)
    (hι : ∀ x, ι x < 9) (hinj : Function.Injective ι) :
    7 / 128 ≤ minTriangleArea (fun x => cfg a h b c d e f P Q (ι x)) := by
  refine le_minTriangleArea hm _ fun x y z hxy hyz => ?_
  have h1 := H.area (ι x) (ι y) (ι z) (hι x) (hι y) (hι z) (hinj.ne hxy.ne) (hinj.ne hyz.ne)
    (hinj.ne (hxy.trans hyz).ne)
  rw [triangleArea_eq]; linarith

/-- `ρ = 102/125 ≤ (4 + 2√3)s`. -/
theorem rho_le : (102 / 125 : ℝ) ≤ (4 + 2 * Real.sqrt 3) * (7 / 64) := by
  have h3 : (1.7303 : ℝ) < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  nlinarith

/-- An actual triangle with two further actual points strictly inside has doubled area at least
`(4 + 2√3)s ≥ ρ` (the two-interior-point lemma). -/
theorem Comp.two_inside (H : Comp a h b c d e f P Q) {i j k j₁ j₂ : ℕ} (hi : i < 9) (hj : j < 9)
    (hk : k < 9) (hj₁ : j₁ < 9) (hj₂ : j₂ < 9) (hd : [i, j, k, j₁, j₂].Nodup)
    (h₁ : InTriangle (cfg a h b c d e f P Q j₁) (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q j)
        (cfg a h b c d e f P Q k) ∨
      InTriangle (cfg a h b c d e f P Q j₁) (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q k)
        (cfg a h b c d e f P Q j))
    (h₂ : InTriangle (cfg a h b c d e f P Q j₂) (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q j)
        (cfg a h b c d e f P Q k) ∨
      InTriangle (cfg a h b c d e f P Q j₂) (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q k)
        (cfg a h b c d e f P Q j)) :
    102 / 125 ≤
      |sarea (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q j) (cfg a h b c d e f P Q k)| := by
  have hm := H.min_sub (by norm_num) ![i, j, k, j₁, j₂]
    (by intro x; fin_cases x <;> simpa)
    (by
      intro x y hxy
      simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or] at hd
      fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;> omega)
  have e1 : (fun x => cfg a h b c d e f P Q (![i, j, k, j₁, j₂] x)) = ![cfg a h b c d e f P Q i,
      cfg a h b c d e f P Q j, cfg a h b c d e f P Q k, cfg a h b c d e f P Q j₁,
      cfg a h b c d e f P Q j₂] := by
    funext x; fin_cases x <;> rfl
  rw [e1] at hm
  have := twoInteriorPointLemma _ _ _ _ _ h₁ h₂ (7 / 128) (by norm_num) hm
  rw [triangleArea_eq] at this
  linarith [rho_le]

/-! ### Anchor triangles -/

/-- Every anchor triangle `V_i V_j V_k` (`i < j < k`) is positively oriented. -/
theorem anchor_pos (hN : SevenNormal a h b c d e f) {i j k : ℕ} (hij : i < j) (hjk : j < k)
    (hk : k < 7) : 0 < sarea (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q j)
      (cfg a h b c d e f P Q k) := by
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  have h1 : 0 < 1 - b := by linarith
  have h2 : 0 < 1 - c := by linarith
  have h3 : 0 < 1 - a := by linarith
  have h4 : 0 < 1 - f := by linarith
  have h5 : 0 < 1 - d := by linarith
  have h6 : 0 < 1 - e := by linarith
  have h7 : 0 < 1 - h := by linarith
  have h8 : 0 < h - a := by linarith
  have h9 : 0 < c - b := by linarith
  have h10 : 0 < e - d := by linarith
  have hf0 : 0 < f := by linarith
  have hc0 : 0 < c := by linarith
  have he0 : 0 < e := by linarith
  have hh0 : 0 < h := by linarith
  interval_cases k <;> interval_cases j <;> interval_cases i <;>
    simp only [cfg, sarea]
  · clear * - ha h9; nlinarith [mul_pos ha h9]
  · clear * - ha h1 hb hd; nlinarith [mul_pos ha h1, mul_pos hb hd]
  · clear * - ha h2 hc0 hd; nlinarith [mul_pos ha h2, mul_pos hc0 hd]
  · clear * - hd h9; nlinarith [mul_pos hd h9]
  · clear * - ha h1 hb he0; nlinarith [mul_pos ha h1, mul_pos hb he0]
  · clear * - ha h2 hc0 he0; nlinarith [mul_pos ha h2, mul_pos hc0 he0]
  · clear * - he0 h9; nlinarith [mul_pos he0 h9]
  · linarith
  · clear * - h1 h10; nlinarith [mul_pos h1 h10]
  · clear * - h2 h10; nlinarith [mul_pos h2 h10]
  · clear * - ha hf0 hb h3; nlinarith [mul_pos ha hf0, mul_pos hb h3]
  · clear * - ha hf0 hc0 h3; nlinarith [mul_pos ha hf0, mul_pos hc0 h3]
  · linarith
  · clear * - h3 h4 hf0 h5; nlinarith [mul_pos h3 h4, mul_pos hf0 h5]
  · clear * - h1 h5 hd h4; nlinarith [mul_pos h1 h5, mul_pos hd h4]
  · clear * - h2 h5 hd h4; nlinarith [mul_pos h2 h5, mul_pos hd h4]
  · clear * - h3 h4 hf0 h6; nlinarith [mul_pos h3 h4, mul_pos hf0 h6]
  · clear * - h1 h6 he0 h4; nlinarith [mul_pos h1 h6, mul_pos he0 h4]
  · clear * - h2 h6 he0 h4; nlinarith [mul_pos h2 h6, mul_pos he0 h4]
  · clear * - h10 h4; nlinarith [mul_pos h10 h4]
  · clear * - hb h8; nlinarith [mul_pos hb h8]
  · clear * - hc0 h8; nlinarith [mul_pos hc0 h8]
  · clear * - hh0 h9; nlinarith [mul_pos hh0 h9]
  · linarith
  · clear * - hh0 h1 hb hd; nlinarith [mul_pos hh0 h1, mul_pos hb hd]
  · clear * - hh0 h2 hc0 hd; nlinarith [mul_pos hh0 h2, mul_pos hc0 hd]
  · linarith
  · clear * - hh0 h1 hb he0; nlinarith [mul_pos hh0 h1, mul_pos hb he0]
  · clear * - hh0 h2 hc0 he0; nlinarith [mul_pos hh0 h2, mul_pos hc0 he0]
  · linarith
  · clear * - hf0 h8; nlinarith [mul_pos hf0 h8]
  · clear * - hb h7 hf0 hh0; nlinarith [mul_pos hb h7, mul_pos hf0 hh0]
  · clear * - hc0 h7 hf0 hh0; nlinarith [mul_pos hc0 h7, mul_pos hf0 hh0]
  · clear * - h7 h4 hf0 h5; nlinarith [mul_pos h7 h4, mul_pos hf0 h5]
  · clear * - h7 h4 hf0 h6; nlinarith [mul_pos h7 h4, mul_pos hf0 h6]

/-! ### The cost premises -/

theorem free_mem {ks : List ℕ} (hl : ks.length ≤ 2) {j : ℕ} (hj : j ∈ free ks) : j < 9 := by
  simp only [free, List.mem_map, List.mem_range] at hj
  obtain ⟨x, hx, rfl⟩ := hj; omega

theorem free_nodup (ks : List ℕ) : (free ks).Nodup :=
  (List.nodup_range).map (fun x y h => by omega)

theorem bnd_zero : bnd 0 = 7 / 64 := by norm_num [bnd]

theorem bnd_one : bnd 1 = 21 / 64 := by norm_num [bnd]

theorem bnd_add_two (n : ℕ) : bnd (n + 2) = 102 / 125 := by
  have h1 : ¬(n + 2 = 1) := by omega
  simp [bnd, h1]

/-- The cost premises of the case `ks` (`Cover.CostHyp`): every actual triangle has doubled area at
least `s = 7/64`, and `ρ = 102/125` with two free points inside (the two-interior-point lemma). -/
theorem Comp.costHyp (H : Comp a h b c d e f P Q) {ks : List ℕ} (hl : ks.length ≤ 2) :
    CostHyp 9 (free ks) bnd (cfg a h b c d e f P Q) := by
  refine CostHyp.of_inside (fun j hj => free_mem hl hj) (free_nodup ks)
    (fun i j k hi hj hk hij hjk hik => ?_) ?_ (ρ := 102 / 125) (fun n => ?_)
    (fun i j k j₁ j₂ hi hj hk hj₁ hj₂ hd h₁ h₂ => H.two_inside hi hj hk hj₁ hj₂ hd h₁ h₂)
  · have := H.area i j k hi hj hk hij hjk hik
    rw [bnd_zero]; push_cast; linarith
  · rw [bnd_one, bnd_zero]; norm_num
  · rw [bnd_add_two]; norm_num

/-! ### Cells -/

/-- A cell of the cover: a configuration whose base signs for the case `ks` hold. -/
structure Cell (a h b c d e f : ℝ) (P Q : Point) (ks : List ℕ) : Prop where
  comp : Comp a h b c d e f P Q
  len : ks.length ≤ 2
  base : AllHold (FHolds 9 (cfg a h b c d e f P Q)) (baseSigns ks)

theorem Comp.factors_nonneg (H : Comp a h b c d e f P Q) :
    ∀ x ∈ factors, 0 ≤ x.eval (zeta a h b c d e f P Q) := by
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := H.hN
  obtain ⟨p0, p1, p2, p3⟩ := H.hP
  obtain ⟨q0, q1, q2, q3⟩ := H.hQ
  intro x hx
  simp only [factors, List.mem_cons, List.not_mem_nil, or_false] at hx
  rcases hx with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    simp only [eval_minus, eval_v, eval_k, eval_one, zeta] <;> push_cast <;> linarith

theorem Cell.atoms_nonneg {ks : List ℕ} (C : Cell a h b c d e f P Q ks) (fs : List SignOrCut)
    (hfs : AllHold (FactHolds (FHolds 9 (cfg a h b c d e f P Q)) (zeta a h b c d e f P Q)) fs) :
    ∀ x ∈ atoms ks fs, 0 ≤ x.eval (zeta a h b c d e f P Q) := by
  intro x hx
  simp only [atoms, List.mem_append] at hx
  rcases hx with (hx | hx) | hx
  · exact C.comp.factors_nonneg x hx
  · exact (C.comp.costHyp C.len).tableCosts_nonneg (fun i _ => ptEval_zeta i)
      (C.base.append (allHold_sgn hfs)) x hx
  · exact allHold_cut hfs x hx

theorem Cell.branch {ks : List ℕ} (C : Cell a h b c d e f P Q ks) (fs : List SignOrCut)
    (s : Split) :
    ∃ br ∈ (spec ks).branches fs s,
      AllHold (FactHolds (FHolds 9 (cfg a h b c d e f P Q)) (zeta a h b c d e f P Q)) br := by
  cases s with
  | tri i j k =>
    simp only [spec, branches]
    split_ifs with hv
    · obtain ⟨hij, hjk, hk⟩ := hv
      have hl := C.len
      have hne : sarea (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q j)
          (cfg a h b c d e f P Q k) ≠ 0 := by
        intro h0
        have := C.comp.area i j k (by omega) (by omega) (by omega) (by omega) (by omega) (by omega)
        rw [h0, abs_zero] at this; linarith
      obtain ⟨br, hbr, hall⟩ := fholds_signBranches (N := 9) (P := cfg a h b c d e f P Q) hij hjk
        (by omega) hne
      exact ⟨br.map Sum.inl, List.mem_map.2 ⟨br, hbr, rfl⟩, allHold_inl hall⟩
    · exact ⟨[], by simp, by simp [AllHold]⟩
  | cut i q =>
    simp only [spec, branches]
    obtain ⟨br, hbr, hall⟩ := cutBranches_exhaustive (zeta a h b c d e f P Q) (v i) q
    exact ⟨br.map Sum.inr, List.mem_map.2 ⟨br, hbr, rfl⟩, allHold_inr hall⟩

/-- **The cover check is sound**: a cell whose tree passes the kernel check is impossible. -/
theorem Cell.false {ks : List ℕ} (C : Cell a h b c d e f P Q ks) {T : Cover.Tree Split}
    (hT : checkTree (spec ks) [] T = true) : False :=
  checkTree_sound (σ := spec ks)
    (Holds := FactHolds (FHolds 9 (cfg a h b c d e f P Q)) (zeta a h b c d e f P Q))
    C.comp.zeta_mem (fun fs hfs => C.atoms_nonneg fs hfs) (fun fs s _ => C.branch fs s)
    (fun _ _ _ h => absurd h (by simp [spec])) (fs := []) (fun _ h => absurd h List.not_mem_nil) hT

end Heilbronn.Nine.SevenInterior
