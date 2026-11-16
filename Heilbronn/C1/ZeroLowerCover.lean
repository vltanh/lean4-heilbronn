module

public import Heilbronn.C1.ZeroLowerKeys
public import Mathlib.Data.Fin.Tuple.Sort

/-! # The C1 configuration with no point in the lower anchor triangle, §§5–6 and Theorem 4
(`hand/C1_ZERO_LOWER.md`)

Role: on the primary route, `hand/UNRESTRICTED.md` row `n₀ = 0` (line 96) is closed by
**Theorem 4** (`theorem4`): no competitive C1 configuration has its lower anchor triangle `OHC`
empty. This file holds §5 (the finite cover by anchor-ray words and sign cells), §6 (the soundness
of the certificate package `hand/c1_zero_lower_certificates.json`, whose kernel check is in
`Heilbronn.C1.ZeroLowerTrees`), and Theorem 4. The geometric facts of §§1–4 are in
`Heilbronn.C1.ZeroLower`; the computable model of the certificates in
`Heilbronn.C1.ZeroLowerModel`.

Structure of the proof:
* `Cell h c d f Q ks`: a competitive configuration (with (1) `f ≤ d`) whose labelled free points
  `Q 0, …, Q 3` have the zero-lower words `ks` (a retained case, `Trees.caseKeys`), satisfy the
  initial signs `baseSigns ks` and, for the three-top-cap cases (16), the seeds of Lemma 3;
* `Cell.atoms_nonneg`: every atom of the case is nonnegative at the point `zeta` of the cube
  (the factors of §6 from the region rows, (7) and Lemma 1; the quadratic costs (19); the
  strengthened triangle costs (18) from subdivision and the two-interior-point lemma; the cubic
  costs (20));
* `Cell.false`: the cover (`Cover.checkTree_sound` with the kernel-checked trees) excludes every
  cell;
* §5: every free point has a word (`word_exists`), the labelling, the retained cases and the
  initial signs;
* `theorem4`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1ZeroLower

open Heilbronn.C1 Cover Model Cert Cert.Expr

variable {h c d f : ℝ} {Q : Fin 4 → Point} {ks : List ℕ}

/-! ### The point of the cube -/

/-- The variables `h, c, d, f, x₀, y₀, …, x₃, y₃` of the certificates (`0` beyond). -/
def zeta (h c d f : ℝ) (Q : Fin 4 → Point) : ℕ → ℝ
  | 0 => h
  | 1 => c
  | 2 => d
  | 3 => f
  | 4 => (Q 0).1
  | 5 => (Q 0).2
  | 6 => (Q 1).1
  | 7 => (Q 1).2
  | 8 => (Q 2).1
  | 9 => (Q 2).2
  | 10 => (Q 3).1
  | 11 => (Q 3).2
  | _ => 0

theorem ptEval_zeta (i : ℕ) : ptEval (zeta h c d f Q) pt i = cfg h c d f Q i := by
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;> simp [ptEval, pt, cfg, zeta]

theorem Comp.zeta_mem (H : Comp h c d f Q) (v : ℕ) :
    0 ≤ zeta h c d f Q v ∧ zeta h c d f Q v ≤ 1 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have q0 := H.sq 0; have q1 := H.sq 1; have q2 := H.sq 2; have q3 := H.sq 3
  rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;> simp only [zeta] <;>
    constructor <;> linarith [q0.1, q0.2.1, q0.2.2.1, q0.2.2.2, q1.1, q1.2.1, q1.2.2.1, q1.2.2.2,
      q2.1, q2.2.1, q2.2.2.1, q2.2.2.2, q3.1, q3.2.1, q3.2.2.1, q3.2.2.2]

/-! ### Cells -/

/-- A cell of the cover: a competitive configuration under (1) whose labelled free points have
the words of the retained case `ks`, with its initial signs and (for (16)) the seeds of
Lemma 3. -/
structure Cell (h c d f : ℝ) (Q : Fin 4 → Point) (ks : List ℕ) : Prop where
  comp : Comp h c d f Q
  hfd : f ≤ d
  key : ks ∈ Trees.caseKeys
  word : ∀ a : Fin 4, WordAt (cfg h c d f Q) (Q a) (kw ks a)
  base : AllHold (FHolds (cfg h c d f Q)) (baseSigns ks)
  three : ks ∈ topThreeCases → ∃ i, i < 3 ∧ AllHold (FHolds (cfg h c d f Q)) (seedRaw ks i)

/-! ### The region of each free point -/

/-- The region of a free point, read from its word. -/
theorem Comp.region (H : Comp h c d f Q) {a : Fin 4} {w : ℕ} (hw : w < 11)
    (W : WordAt (cfg h c d f Q) (Q a) w) :
    (cat w = 0 → InUpperQuad h c d f (Q a)) ∧
    (cat w = 1 → InRightCap c d (Q a) ∧ BelowOD d (Q a)) ∧
    (cat w = 2 → InTopCap d f (Q a)) ∧
    (cat w = 3 → InLeftCap f h (Q a) ∧ AboveOF f (Q a)) := by
  obtain ⟨r0, r1, r2, r3, -⟩ := word_region ⟨w, hw⟩
  simp only at r0 r1 r2 r3
  refine ⟨fun hc => ?_, fun hc => ?_, fun hc => ?_, fun hc => ?_⟩
  · obtain ⟨s1, s2, s3, s4⟩ := r0 hc
    exact ⟨W.pos (by norm_num) (by norm_num) (by norm_num) s1,
      W.pos (by norm_num) (by norm_num) (by norm_num) s2,
      W.pos (by norm_num) (by norm_num) (by norm_num) s3,
      W.pos (by norm_num) (by norm_num) (by norm_num) s4⟩
  · obtain ⟨s1, s2⟩ := r1 hc
    exact ⟨H.word_neg W (by norm_num) (by norm_num) (by norm_num) s1,
      H.word_neg W (by norm_num) (by norm_num) (by norm_num) s2⟩
  · exact H.word_neg W (by norm_num) (by norm_num) (by norm_num) (r2 hc)
  · obtain ⟨s1, s2⟩ := r3 hc
    exact ⟨H.word_neg W (by norm_num) (by norm_num) (by norm_num) s1,
      W.pos (by norm_num) (by norm_num) (by norm_num) s2⟩

theorem Cell.region (C : Cell h c d f Q ks) (a : Fin 4) :
    (cat (kw ks a) = 0 → InUpperQuad h c d f (Q a)) ∧
    (cat (kw ks a) = 1 → InRightCap c d (Q a) ∧ BelowOD d (Q a)) ∧
    (cat (kw ks a) = 2 → InTopCap d f (Q a)) ∧
    (cat (kw ks a) = 3 → InLeftCap f h (Q a) ∧ AboveOF f (Q a)) :=
  C.comp.region ((keys_len ks C.key).2 a) (C.word a)

/-! ### The affine factors of §6 -/

theorem Cell.fac_base (C : Cell h c d f Q ks) :
    ∀ e ∈ [v 0 - k sQ, v 1 - k sQ, 1 - v 0, 1 - v 1, v 2 - k sQ, k (65 / 73) - v 2, v 3 - k sQ,
      k (65 / 73) - v 3, v 0 - v 2, v 1 - v 3, v 2 - v 3],
      0 ≤ e.eval (zeta h c d f Q) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  obtain ⟨p1, p2, p3, p4⟩ := C.comp.params_ge
  obtain ⟨-, -, a3, a4⟩ := C.comp.anchor_bounds
  have t := two_A₀.1
  have := C.hfd
  simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast
  and_intros <;> linarith

/-- The table after (7), from `Ω₀` and (1). -/
theorem table_bounds (hfd : f ≤ d) (hf : 8 / 73 ≤ f) (hd1 : d < 1) {b : ℝ} (hΩ : b ≤ (1 - d) * (1 - f)) :
    (8 / 73 < b → f ≤ 67 / 100 ∧ d ≤ 57 / 65) ∧ (24 / 73 < b → f ≤ 3 / 7 ∧ d ≤ 41 / 65) ∧
      (7 / 11 < b → f ≤ 13 / 64 ∧ d ≤ 204 / 715) := by
  have e1 : (1 - d) * (1 - f) ≤ (1 - f) * (1 - f) := by nlinarith
  have e2 : (1 - d) * (1 - f) ≤ (1 - d) * (65 / 73) := by nlinarith
  refine ⟨fun hb => ⟨?_, ?_⟩, fun hb => ⟨?_, ?_⟩, fun hb => ⟨?_, ?_⟩⟩ <;> nlinarith

theorem Cell.fac_top1 (C : Cell h c d f Q ks) :
    ∀ e ∈ (if 1 ≤ cnt ks 2 then [k (67 / 100) - v 3, k (57 / 65) - v 2] else []),
      0 ≤ e.eval (zeta h c d f Q) := by
  split_ifs with hc
  · obtain ⟨a, ha⟩ := keys_one ks C.key 2 hc
    obtain ⟨-, -, hΩ⟩ := C.comp.top_row a ((C.region a).2.2.1 ha)
    obtain ⟨-, -, -, p4⟩ := C.comp.params_ge
    have t := two_A₀.1
    have hT := (table_bounds C.hfd (by linarith) (C.comp.hA.2.2.1.trans_le' C.comp.hA.2.1)
      (b := 2 * A₀) (by unfold topCapArea at hΩ; linarith)).1 t
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast
    and_intros <;> linarith
  · simp

theorem Cell.fac_top2 (C : Cell h c d f Q ks) :
    ∀ e ∈ (if 2 ≤ cnt ks 2 then [k (3 / 7) - v 3, k (41 / 65) - v 2] else []),
      0 ≤ e.eval (zeta h c d f Q) := by
  split_ifs with hc
  · obtain ⟨a, b, hab, ha, hb⟩ := keys_two ks C.key 2 hc
    have hΩ := C.comp.top_two hab ((C.region a).2.2.1 ha) ((C.region b).2.2.1 hb)
    obtain ⟨-, -, -, p4⟩ := C.comp.params_ge
    have t := two_A₀.2
    have hT := (table_bounds C.hfd (by linarith [two_A₀.1])
      (C.comp.hA.2.2.1.trans_le' C.comp.hA.2.1) (b := 6 * A₀)
      (by unfold topCapArea at hΩ; linarith)).2.1 (by linarith)
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast
    and_intros <;> linarith
  · simp

theorem Cell.fac_top3 (C : Cell h c d f Q ks) :
    ∀ e ∈ (if 3 ≤ cnt ks 2 then [k (13 / 64) - v 3, k (204 / 715) - v 2] else []),
      0 ≤ e.eval (zeta h c d f Q) := by
  split_ifs with hc
  · obtain ⟨a, b, e, hab, hae, hbe, ha, hb, he⟩ := keys_three ks C.key hc
    have hΩ := C.comp.top_three hab hae hbe ((C.region a).2.2.1 ha) ((C.region b).2.2.1 hb)
      ((C.region e).2.2.1 he)
    obtain ⟨-, -, -, p4⟩ := C.comp.params_ge
    have hT := (table_bounds C.hfd (by linarith [two_A₀.1])
      (C.comp.hA.2.2.1.trans_le' C.comp.hA.2.1) (b := topCapArea d f)
      (by unfold topCapArea; linarith)).2.2 hΩ
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast
    and_intros <;> linarith
  · simp

/-- (5): a right-cap point gives `d ≥ 4s`, `1/7 < c < 6/7`. -/
theorem right_consequences (hd1 : d ≤ 65 / 73) (hd : 0 < d) (h5 : 8 / 73 < d * c * (1 - c)) :
    32 / 73 ≤ d ∧ 1 / 7 ≤ c ∧ c ≤ 6 / 7 := by
  have hq : c * (1 - c) ≤ 1 / 4 := by nlinarith [sq_nonneg (c - 1 / 2)]
  have h8 : 8 / 65 < c * (1 - c) := by
    by_contra hn; push Not at hn
    have := mul_le_mul_of_nonneg_left hn hd.le
    nlinarith
  have e : d * c * (1 - c) = d * (c * (1 - c)) := by ring
  refine ⟨by nlinarith [mul_le_mul_of_nonneg_left hq hd.le], by nlinarith, by nlinarith⟩

theorem Cell.fac_right1 (C : Cell h c d f Q ks) :
    ∀ e ∈ (if 1 ≤ cnt ks 1 then [v 2 - k (32 / 73), v 1 - k (1 / 7), k (6 / 7) - v 1] else []),
      0 ≤ e.eval (zeta h c d f Q) := by
  split_ifs with hc
  · obtain ⟨a, ha⟩ := keys_one ks C.key 1 hc
    obtain ⟨hR, hOD⟩ := (C.region a).2.1 ha
    obtain ⟨-, -, -, h5⟩ := C.comp.right_row a hR hOD
    obtain ⟨-, -, a3, -⟩ := C.comp.anchor_bounds
    have t := two_A₀.1
    have := right_consequences (c := c) (d := d) (by linarith) C.comp.hA.1 (by linarith)
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast
    and_intros <;> linarith
  · simp

theorem Cell.fac_right2 (C : Cell h c d f Q ks) :
    ∀ e ∈ (if cnt ks 1 = 2 then [v 2 - k (49 / 60), k (49 / 73) - v 1] else []),
      0 ≤ e.eval (zeta h c d f Q) := by
  split_ifs with hc
  · obtain ⟨a, b, hab, ha, hb⟩ := keys_two ks C.key 1 (show 2 ≤ cnt ks 1 by omega)
    obtain ⟨hRa, hODa⟩ := (C.region a).2.1 ha
    obtain ⟨hRb, hODb⟩ := (C.region b).2.1 hb
    obtain ⟨k1, k2⟩ := C.comp.right_pair_bounds hab hRa hRb hODa hODb
    obtain ⟨hd, hdh, hh, -, -, hc1⟩ := C.comp.hA
    have t := two_A₀.2
    have : 6 * A₀ ≤ 1 - c := by
      nlinarith [mul_le_mul_of_nonneg_right (show d ≤ 1 by linarith) (sub_nonneg.2 hc1.le)]
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast
    and_intros <;> linarith
  · simp

theorem Cell.fac_left1 (C : Cell h c d f Q ks) :
    ∀ e ∈ (if 1 ≤ cnt ks 3 then [v 3 - k (32 / 73), v 0 - k (1 / 7), k (6 / 7) - v 0] else []),
      0 ≤ e.eval (zeta h c d f Q) := by
  split_ifs with hc
  · obtain ⟨a, ha⟩ := keys_one ks C.key 3 hc
    obtain ⟨-, -, -, -, l5, l6, l7⟩ := C.comp.left_row C.hfd a ((C.region a).2.2.2 ha).1
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast
    and_intros <;> linarith
  · simp

/-- The region row of each free point. -/
theorem Cell.fac_point (C : Cell h c d f Q ks) (a : Fin 4) :
    ∀ e ∈ pointFactors (kw ks a) a, 0 ≤ e.eval (zeta h c d f Q) := by
  have hx : (v (4 + 2 * a.val)).eval (zeta h c d f Q) = (Q a).1 := by
    fin_cases a <;> rfl
  have hy : (v (5 + 2 * a.val)).eval (zeta h c d f Q) = (Q a).2 := by
    fin_cases a <;> rfl
  obtain ⟨g1, g2⟩ := C.comp.coord_ge a
  obtain ⟨x0, x1, y0, y1⟩ := C.comp.sq a
  have t := two_A₀.1
  obtain ⟨r0, r1, r2, r3⟩ := C.region a
  have hk := (keys_len ks C.key).2 a
  have hcat := (word_region ⟨kw ks a, hk⟩).2.2.2.2
  simp only at hcat
  unfold pointFactors
  simp only
  split_ifs with c1 c2 c3
  · obtain ⟨hR, hOD⟩ := r1 c1
    obtain ⟨k1, k2, -, -⟩ := C.comp.right_row a hR hOD
    simp only [List.forall_mem_cons, List.forall_mem_append, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_one, eval_v, eval_k, hx, hy, zeta, sQ]
    push_cast
    and_intros <;> linarith
  · obtain ⟨k1, k2, -⟩ := C.comp.top_row a (r2 c2)
    simp only [List.forall_mem_cons, List.forall_mem_append, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_one, eval_v, eval_k, hx, hy, zeta, sQ]
    push_cast
    and_intros <;> linarith
  · obtain ⟨-, l2, l3, l4, -, -, -⟩ := C.comp.left_row C.hfd a (r3 c3).1
    simp only [List.forall_mem_cons, List.forall_mem_append, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_one, eval_v, eval_k, hx, hy, zeta, sQ]
    push_cast
    and_intros <;> linarith
  · have c0 : cat (kw ks a) = 0 := by omega
    obtain ⟨u1, u2⟩ := C.comp.upper_row a (r0 c0)
    simp only [List.forall_mem_cons, List.forall_mem_append, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_one, eval_v, eval_k, hx, hy, zeta, sQ]
    push_cast
    and_intros <;> linarith

theorem Cell.factors_nonneg (C : Cell h c d f Q ks) :
    ∀ e ∈ factors ks, 0 ≤ e.eval (zeta h c d f Q) := by
  intro e he
  simp only [factors, List.mem_append] at he
  rcases he with ((((((he | he) | he) | he) | he) | he) | he) | (((he | he) | he) | he)
  · exact C.fac_base e he
  · exact C.fac_top1 e he
  · exact C.fac_top2 e he
  · exact C.fac_top3 e he
  · exact C.fac_right1 e he
  · exact C.fac_right2 e he
  · exact C.fac_left1 e he
  · exact C.fac_point 0 e he
  · exact C.fac_point 1 e he
  · exact C.fac_point 2 e he
  · exact C.fac_point 3 e he

/-! ### The quadratic and cubic costs (19), (20) -/

theorem Cell.qcosts_nonneg (C : Cell h c d f Q ks) :
    ∀ e ∈ qcosts ks, 0 ≤ e.eval (zeta h c d f Q) := by
  intro e he
  simp only [qcosts, List.mem_append] at he
  rcases he with (he | he) | he
  · split_ifs at he with hc
    · obtain ⟨a, b, hab, ha, hb⟩ := keys_two ks C.key 0 (show 2 ≤ cnt ks 0 by omega)
      have := C.comp.quad_two hab ((C.region a).1 ha) ((C.region b).1 hb)
      have t := two_A₀.2
      simp only [List.mem_singleton] at he; subst he
      simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast; unfold upperQuadArea at this; linarith
    · simp at he
  · split_ifs at he with hc
    · obtain ⟨a, b, hab, ha, hb⟩ := keys_two ks C.key 1 (show 2 ≤ cnt ks 1 by omega)
      obtain ⟨hRa, hODa⟩ := (C.region a).2.1 ha
      obtain ⟨hRb, hODb⟩ := (C.region b).2.1 hb
      obtain ⟨-, k2⟩ := C.comp.right_pair_bounds hab hRa hRb hODa hODb
      have t := two_A₀.2
      simp only [List.mem_singleton] at he; subst he
      simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast; linarith
    · simp at he
  · split_ifs at he with hc hc'
    · obtain ⟨a, b, hab, ha, hb⟩ := keys_two ks C.key 2 (show 2 ≤ cnt ks 2 by omega)
      have := C.comp.top_two hab ((C.region a).2.2.1 ha) ((C.region b).2.2.1 hb)
      have t := two_A₀.2
      simp only [List.mem_singleton] at he; subst he
      simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast; unfold topCapArea at this; linarith
    · obtain ⟨a, b, e', hab, hae, hbe, ha, hb, he'⟩ := keys_three ks C.key hc'
      have := C.comp.top_three hab hae hbe ((C.region a).2.2.1 ha) ((C.region b).2.2.1 hb)
        ((C.region e').2.2.1 he')
      simp only [List.mem_singleton] at he; subst he
      simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast; unfold topCapArea at this; linarith
    · simp at he

theorem Cell.cubics_nonneg (C : Cell h c d f Q ks) :
    ∀ e ∈ cubics ks, 0 ≤ e.eval (zeta h c d f Q) := by
  intro e he
  simp only [cubics, List.mem_append] at he
  have t := two_A₀.1
  rcases he with he | he
  · split_ifs at he with hc
    · obtain ⟨a, ha⟩ := keys_one ks C.key 1 hc
      obtain ⟨hR, hOD⟩ := (C.region a).2.1 ha
      obtain ⟨-, -, -, h5⟩ := C.comp.right_row a hR hOD
      simp only [List.mem_singleton] at he; subst he
      simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast; linarith
    · simp at he
  · split_ifs at he with hc
    · obtain ⟨a, ha⟩ := keys_one ks C.key 3 hc
      obtain ⟨l1, -⟩ := C.comp.left_row C.hfd a ((C.region a).2.2.2 ha).1
      simp only [List.mem_singleton] at he; subst he
      simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_plus, eval_times, eval_ofNat, eval_zero, eval_one, eval_v, eval_k,
      zeta, sQ]; push_cast; linarith
    · simp at he

/-! ### The strengthened triangle costs (18) -/

theorem sarea_self₁₂ (p r : Point) : sarea p p r = 0 := by unfold sarea; ring
theorem sarea_self₁₃ (p q : Point) : sarea p q p = 0 := by unfold sarea; ring
theorem sarea_self₂₃ (p q : Point) : sarea p q q = 0 := by unfold sarea; ring

theorem orient_ne_zero {sg : Bool} {x : ℝ} (h : OrientHolds sg x) : x ≠ 0 := by
  cases sg <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h <;>
    [exact h.ne; exact h.ne']

/-- An oriented actual triangle has doubled area at least `2A₀` (its indices are distinct, since
the area is not zero). -/
theorem Comp.orient_area (H : Comp h c d f Q) {sg : Bool} {a b e : ℕ} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hs : OrientHolds sg (sarea (cfg h c d f Q a) (cfg h c d f Q b) (cfg h c d f Q e))) :
    2 * A₀ ≤ sgArea sg (sarea (cfg h c d f Q a) (cfg h c d f Q b) (cfg h c d f Q e)) := by
  have hne := orient_ne_zero hs
  rw [sgArea_eq_abs hs]
  refine H.area a b e ha hb he ?_ ?_ ?_
  · rintro rfl; exact hne (sarea_self₁₂ _ _)
  · rintro rfl; exact hne (sarea_self₂₃ _ _)
  · rintro rfl; exact hne (sarea_self₁₃ _ _)

theorem orient_idx_ne {P : ℕ → Point} {sg : Bool} {a b e : ℕ}
    (hs : OrientHolds sg (sarea (P a) (P b) (P e))) : a ≠ b ∧ b ≠ e ∧ a ≠ e := by
  have hne := orient_ne_zero hs
  refine ⟨?_, ?_, ?_⟩
  · rintro rfl; exact hne (sarea_self₁₂ _ _)
  · rintro rfl; exact hne (sarea_self₂₃ _ _)
  · rintro rfl; exact hne (sarea_self₁₃ _ _)

/-- **(18)**: the strengthened cost of every signed triangle of the table is nonnegative: `s`
for no certified inside point, `3s` for one (subdivision), `ρ` for two (the two-interior-point
lemma). -/
theorem Comp.cost_nonneg (H : Comp h c d f Q) {tb : List SFact}
    (htb : AllHold (FHolds (cfg h c d f Q)) tb) {g : SFact} (hg : g ∈ tb) :
    0 ≤ (costAtom pt bnd g (insideList tb [5, 6, 7, 8] g).length).eval (zeta h c d f Q) := by
  rw [eval_costAtom]
  simp only [ptEval_zeta]
  obtain ⟨g1, g2, g3, gs⟩ := htb g hg
  have htb' : AllHold (SFact.Holds (cfg h c d f Q)) tb := fun x hx => (htb x hx).2.2.2
  have harea := H.orient_area (by omega) (by omega) g3 gs
  have hLnd : (insideList tb [5, 6, 7, 8] g).Nodup := List.Nodup.filter _ (by decide)
  have hmem : ∀ j ∈ insideList tb [5, 6, 7, 8] g, j < 9 := by
    intro j hj
    have := (insideList_sound htb' hj).1
    simp only [List.mem_cons, List.not_mem_nil, or_false] at this; omega
  have t := two_A₀
  rcases hn : (insideList tb [5, 6, 7, 8] g).length with _ | _ | n
  · simp only [bnd, ite_true]; push_cast; linarith
  · obtain ⟨j, hj⟩ := List.exists_mem_of_length_pos (show 0 < (insideList tb [5, 6, 7, 8] g).length
      by omega)
    obtain ⟨-, o1, o2, o3⟩ := insideList_sound htb' hj
    have hj9 := hmem j hj
    have q1 := H.orient_area (by omega) (by omega) hj9 o1
    have q2 := H.orient_area (by omega) g3 hj9 o2
    have q3 := H.orient_area g3 (by omega) hj9 o3
    rw [sgArea_eq_abs o1] at q1; rw [sgArea_eq_abs o2] at q2; rw [sgArea_eq_abs o3] at q3
    have := three_le_sgArea (e := 2 * A₀) o1 o2 o3 q1 q2 q3
    simp only [bnd]; norm_num; linarith
  · obtain ⟨j₁, j₂, rest, hL⟩ : ∃ j₁ j₂ rest, insideList tb [5, 6, 7, 8] g = j₁ :: j₂ :: rest := by
      rcases hL : insideList tb [5, 6, 7, 8] g with _ | ⟨j₁, _ | ⟨j₂, rest⟩⟩
      · rw [hL] at hn; simp at hn
      · rw [hL] at hn; simp at hn
      · exact ⟨j₁, j₂, rest, rfl⟩
    have hj₁ : j₁ ∈ insideList tb [5, 6, 7, 8] g := by rw [hL]; simp
    have hj₂ : j₂ ∈ insideList tb [5, 6, 7, 8] g := by rw [hL]; simp
    have h12 : j₁ ≠ j₂ := by
      rw [hL] at hLnd; simp only [List.nodup_cons, List.mem_cons, not_or] at hLnd
      exact hLnd.1.1
    obtain ⟨-, o1, o2, o3⟩ := insideList_sound htb' hj₁
    obtain ⟨-, p1, p2, p3⟩ := insideList_sound htb' hj₂
    obtain ⟨-, n1, n2⟩ := orient_idx_ne o1
    obtain ⟨-, n3, -⟩ := orient_idx_ne o2
    obtain ⟨-, m1, m2⟩ := orient_idx_ne p1
    obtain ⟨-, m3, -⟩ := orient_idx_ne p2
    have := H.two_inside (by omega) (by omega) g3 (hmem _ hj₁) (hmem _ hj₂)
      (by simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
        List.nodup_nil, and_true, not_false_eq_true]; omega)
      (inTriangle_of_orient o1 o2 o3) (inTriangle_of_orient p1 p2 p3)
    rw [← sgArea_eq_abs gs] at this
    simp only [bnd]; norm_num; linarith

/-! ### The cover -/

theorem Cell.atoms_nonneg (C : Cell h c d f Q ks) (fs : List SFact)
    (hfs : AllHold (FHolds (cfg h c d f Q)) fs) :
    ∀ e ∈ atoms ks fs, 0 ≤ e.eval (zeta h c d f Q) := by
  intro e he
  simp only [atoms, List.mem_append, List.mem_map] at he
  rcases he with ((he | he) | ⟨g, hg, rfl⟩) | he
  · exact C.factors_nonneg e he
  · exact C.qcosts_nonneg e he
  · exact C.comp.cost_nonneg (C.base.append hfs) (List.mem_append.2 hg)
  · exact C.cubics_nonneg e he

theorem Cell.branch (C : Cell h c d f Q ks) (fs : List SFact) (s : Split) :
    ∃ b ∈ (spec ks).branches fs s, AllHold (FHolds (cfg h c d f Q)) b := by
  cases s with
  | tri a b e =>
    simp only [spec, branches]
    split_ifs with hv
    · obtain ⟨hab, hbe, he9⟩ := hv
      have hne : sarea (cfg h c d f Q a) (cfg h c d f Q b) (cfg h c d f Q e) ≠ 0 := by
        intro h0
        have := C.comp.area a b e (by omega) (by omega) he9 (by omega) (by omega) (by omega)
        rw [h0, abs_zero] at this; linarith [A₀_pos]
      obtain ⟨br, hbr, hall⟩ := signBranches_exhaustive (P := cfg h c d f Q) (t := (a, b, e)) hne
      refine ⟨br, hbr, fun x hx => ⟨?_, ?_, ?_, hall x hx⟩⟩ <;>
      · simp only [signBranches, List.mem_cons, List.not_mem_nil, or_false] at hbr
        rcases hbr with rfl | rfl <;> simp at hx <;> subst hx <;> simp <;> omega
    · exact ⟨[], by simp, by simp [AllHold]⟩
  | three =>
    simp only [spec, branches]
    split_ifs with h3
    · obtain ⟨i, hi, hall⟩ := C.three h3
      have hsub : AllHold (FHolds (cfg h c d f Q)) (seed ks i) :=
        fun x hx => hall x (List.mem_of_mem_filter hx)
      interval_cases i
      · exact ⟨_, List.mem_cons_self .., hsub⟩
      · exact ⟨_, List.mem_cons_of_mem _ (List.mem_cons_self ..), hsub⟩
      · exact ⟨_, List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_self ..)), hsub⟩
    · exact ⟨[], by simp, by simp [AllHold]⟩

/-- **The certificate package** (`C1_ZERO_LOWER:claim-certificates`): every cell is impossible.
The kernel has checked the sign tree of every retained case (`Trees.allCases_ok`); the atoms are
nonnegative and the splits exhaustive at every cell, so `Cover.checkTree_sound` applies. -/
theorem Cell.false (C : Cell h c d f Q ks) : False := by
  have hk : ks ∈ Trees.allCases.map Prod.fst := Trees.caseKeys_eq ▸ C.key
  obtain ⟨p, hp, hpk⟩ := List.mem_map.1 hk
  have hT : checkTree (spec ks) [] p.2 = true := hpk ▸ Trees.allCases_ok p hp
  have hcl : ∀ (fs : List SFact) (tag : ℕ), AllHold (FHolds (cfg h c d f Q)) fs →
      (spec ks).closedOK fs tag = true → False := by
    intro fs tag _ h; exact absurd h (by simp [spec])
  exact checkTree_sound (σ := spec ks) (Holds := FHolds (cfg h c d f Q)) C.comp.zeta_mem
    (fun fs hfs => C.atoms_nonneg fs hfs) (fun fs s _ => C.branch fs s) hcl
    (fs := []) (fun _ h => absurd h List.not_mem_nil) hT

/-! ### §5. Words -/

/-- One step of the radial order: `T ℓ₁ = A ℓ₂ + B ℓ₃` with `A, ℓ₂ ≥ 0` and `B, ℓ₁, ℓ₃ > 0`. -/
theorem radial_step {T A B l1 l2 l3 : ℝ} (e : T * l1 = A * l2 + B * l3) (hl1 : 0 < l1)
    (hA : 0 ≤ A) (hl2 : 0 ≤ l2) (hB : 0 < B) (hl3 : 0 < l3) : 0 < T := by
  have : 0 < T * l1 := by rw [e]; nlinarith [mul_nonneg hA hl2, mul_pos hB hl3]
  exact pos_of_mul_pos_left this hl1.le

/-- The radial order at the anchors (`C1_ZERO_LOWER.md` lines 346–358): for a point `X` of the
square, each anchor `V` sees the other anchors and `X` in a closed half-plane `ℓ ≥ 0`, in the
cyclic order; the prefix implications follow from the identity
`[VUX] ℓ(M - V) = [VUM] ℓ(X - V) + [VMX] ℓ(U - V)`. -/
theorem radial (hA : C1Anchors h c d f) {X : Point} (hX : X ∈ unitSquare) (hx : 0 < X.1) :
    (0 < sarea (0, 0) (f, 1) X → 0 < sarea (0, 0) (1, d) X) ∧
    (0 < sarea (c, 0) (f, 1) X → 0 < sarea (c, 0) (1, d) X) ∧
    (0 < sarea (1, d) (0, h) X → 0 < sarea (1, d) (f, 1) X) ∧
    (sarea (0, 0) (1, d) X < 0 → 0 < sarea (1, d) (0, h) X) ∧
    (sarea (c, 0) (1, d) X < 0 → sarea (0, 0) (1, d) X < 0) ∧
    (sarea (0, 0) (f, 1) X < 0 → 0 < sarea (f, 1) (0, h) X) ∧
    (sarea (c, 0) (f, 1) X < 0 → sarea (0, 0) (f, 1) X < 0) ∧
    (sarea (1, d) (f, 1) X < 0 → sarea (c, 0) (f, 1) X < 0) ∧
    (sarea (f, 1) (0, h) X < 0 → sarea (1, d) (0, h) X < 0) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨x0, x1, y0, y1⟩ := hX
  have aODF : 0 ≤ sarea (0, 0) (1, d) (f, 1) := by simp only [sarea]; nlinarith
  have aCDF : 0 ≤ sarea (c, 0) (1, d) (f, 1) := by simp only [sarea]; nlinarith
  have aDFH : 0 ≤ sarea (1, d) (f, 1) (0, h) := by simp only [sarea]; nlinarith
  have aDHO : 0 ≤ sarea (1, d) (0, h) (0, 0) := by simp only [sarea]; nlinarith
  have aDOC : 0 ≤ sarea (1, d) (0, 0) (c, 0) := by simp only [sarea]; nlinarith
  have aFHO : 0 ≤ sarea (f, 1) (0, h) (0, 0) := by simp only [sarea]; nlinarith
  have aFOC : 0 ≤ sarea (f, 1) (0, 0) (c, 0) := by simp only [sarea]; nlinarith
  have aFCD : 0 ≤ sarea (f, 1) (c, 0) (1, d) := by simp only [sarea]; nlinarith
  have aHDF : 0 ≤ sarea (0, h) (1, d) (f, 1) := by simp only [sarea]; nlinarith
  have sw : ∀ p q : Point, sarea q p X = -sarea p q X := fun p q => sarea_swap₁₂ p q X
  refine ⟨fun h1 => ?_, fun h1 => ?_, fun h1 => ?_, fun h1 => ?_, fun h1 => ?_, fun h1 => ?_,
    fun h1 => ?_, fun h1 => ?_, fun h1 => ?_⟩
  · exact radial_step (A := sarea (0, 0) (1, d) (f, 1)) (B := sarea (0, 0) (f, 1) X)
      (l1 := f + 1) (l2 := X.1 + X.2) (l3 := 1 + d) (by simp only [sarea]; ring) (by linarith)
      aODF (by linarith) h1 (by linarith)
  · exact radial_step (A := sarea (c, 0) (1, d) (f, 1)) (B := sarea (c, 0) (f, 1) X)
      (l1 := 1) (l2 := X.2) (l3 := d) (by simp only [sarea]; ring) one_pos aCDF y0 h1 hd
  · exact radial_step (A := sarea (1, d) (f, 1) (0, h)) (B := sarea (1, d) (0, h) X)
      (l1 := 1) (l2 := 1 - X.1) (l3 := 1 - f) (by simp only [sarea]; ring) one_pos aDFH
      (by linarith) h1 (by linarith)
  · exact radial_step (A := sarea (1, d) (0, h) (0, 0)) (B := sarea (1, d) (0, 0) X)
      (l1 := 1) (l2 := 1 - X.1) (l3 := 1) (by simp only [sarea]; ring) one_pos aDHO
      (by linarith) (by rw [sw]; linarith) one_pos
  · have := radial_step (T := sarea (1, d) (0, 0) X) (A := sarea (1, d) (0, 0) (c, 0))
      (B := sarea (1, d) (c, 0) X) (l1 := 1 - c) (l2 := 1 - X.1) (l3 := 1)
      (by simp only [sarea]; ring) (by linarith) aDOC (by linarith) (by rw [sw]; linarith) one_pos
    rw [sw] at this; linarith
  · exact radial_step (A := sarea (f, 1) (0, h) (0, 0)) (B := sarea (f, 1) (0, 0) X)
      (l1 := 1) (l2 := 1 - X.2) (l3 := 1 - h) (by simp only [sarea]; ring) one_pos aFHO
      (by linarith) (by rw [sw]; linarith) (by linarith)
  · have := radial_step (T := sarea (f, 1) (0, 0) X) (A := sarea (f, 1) (0, 0) (c, 0))
      (B := sarea (f, 1) (c, 0) X) (l1 := 1) (l2 := 1 - X.2) (l3 := 1)
      (by simp only [sarea]; ring) one_pos aFOC (by linarith) (by rw [sw]; linarith) one_pos
    rw [sw] at this; linarith
  · have := radial_step (T := sarea (f, 1) (c, 0) X) (A := sarea (f, 1) (c, 0) (1, d))
      (B := sarea (f, 1) (1, d) X) (l1 := 1 - d) (l2 := 1 - X.2) (l3 := 1)
      (by simp only [sarea]; ring) (by linarith) aFCD (by linarith) (by rw [sw]; linarith) one_pos
    rw [sw] at this; linarith
  · have := radial_step (T := sarea (0, h) (1, d) X) (A := sarea (0, h) (1, d) (f, 1))
      (B := sarea (0, h) (f, 1) X) (l1 := f) (l2 := X.1) (l3 := 1)
      (by simp only [sarea]; ring) hf aHDF x0 (by rw [sw]; linarith) one_pos
    rw [sw] at this; linarith

/-- **Words** (`C1_ZERO_LOWER:claim-words`): a free point not in `OHC` has one of the eleven
zero-lower words. -/
theorem Comp.word_exists (H : Comp h c d f Q) (a : Fin 4) (hL : ¬ InLower h c (Q a)) :
    ∃ w, w < 11 ∧ WordAt (cfg h c d f Q) (Q a) w := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨x0, x1, y0, y1⟩ := H.sq a
  obtain ⟨gx, gy⟩ := H.coord_ge a
  have t := two_A₀.1
  have ne : ∀ u v : ℕ, u < 5 → v < 5 → u ≠ v →
      sarea (cfg h c d f Q u) (cfg h c d f Q v) (Q a) ≠ 0 := by
    intro u v hu hv huv h0
    have := H.areaF u v a hu hv huv
    rw [h0, abs_zero] at this; linarith
  have R := radial H.hA (H.hQ a) (by linarith)
  have n01 := ne 0 1 (by norm_num) (by norm_num) (by norm_num)
  have n02 := ne 0 2 (by norm_num) (by norm_num) (by norm_num)
  have n03 := ne 0 3 (by norm_num) (by norm_num) (by norm_num)
  have n04 := ne 0 4 (by norm_num) (by norm_num) (by norm_num)
  have n12 := ne 1 2 (by norm_num) (by norm_num) (by norm_num)
  have n13 := ne 1 3 (by norm_num) (by norm_num) (by norm_num)
  have n14 := ne 1 4 (by norm_num) (by norm_num) (by norm_num)
  have n23 := ne 2 3 (by norm_num) (by norm_num) (by norm_num)
  have n24 := ne 2 4 (by norm_num) (by norm_num) (by norm_num)
  have n34 := ne 3 4 (by norm_num) (by norm_num) (by norm_num)
  simp only [cfg] at n01 n02 n03 n04 n12 n13 n14 n23 n24 n34
  -- the boundary signs
  have s01 : 0 < sarea (0, 0) (c, 0) (Q a) := by simp only [sarea]; nlinarith
  have s04 : sarea (0, 0) (0, h) (Q a) < 0 := by simp only [sarea]; nlinarith
  have s14 : sarea (c, 0) (0, h) (Q a) < 0 := by
    have : ¬ 0 < sarea (c, 0) (0, h) (Q a) := by
      intro hp; apply hL
      refine ⟨s01, hp, ?_⟩
      simp only [ptH, ptO, sarea]; nlinarith
    exact lt_of_le_of_ne (not_lt.1 this) n14
  have dec : ∀ {x : ℝ}, x ≠ 0 → (decide (0 < x) = false ↔ x < 0) := by
    intro x hx; rw [decide_eq_false_iff_not, not_lt]
    exact ⟨fun h => lt_of_le_of_ne h hx, le_of_lt⟩
  obtain ⟨w, hw11, e01, e02, e03, e04, e12, e13, e14, e23, e24, e34, f01, f02, f03, f04, f12, f13,
      f14, f23, f24, f34⟩ := word_table
    (decide (0 < sarea (0, 0) (c, 0) (Q a))) (decide (0 < sarea (0, 0) (1, d) (Q a)))
    (decide (0 < sarea (0, 0) (f, 1) (Q a))) (decide (0 < sarea (0, 0) (0, h) (Q a)))
    (decide (0 < sarea (c, 0) (1, d) (Q a))) (decide (0 < sarea (c, 0) (f, 1) (Q a)))
    (decide (0 < sarea (c, 0) (0, h) (Q a))) (decide (0 < sarea (1, d) (f, 1) (Q a)))
    (decide (0 < sarea (1, d) (0, h) (Q a))) (decide (0 < sarea (f, 1) (0, h) (Q a)))
    (by simpa using s01) (by simpa using s04.le) (by simpa using s14.le)
    (fun hb => by simp only [decide_eq_true_eq] at hb ⊢; exact R.1 hb)
    (fun hb => by simp only [decide_eq_true_eq] at hb ⊢; exact R.2.1 hb)
    (fun hb => by
      simp only [decide_eq_true_eq] at hb ⊢
      exact R.2.2.1 hb)
    (fun hb => by simp only [decide_eq_true_eq]; exact R.2.2.2.1 ((dec n02).1 hb))
    (fun hb => (dec n02).2 (R.2.2.2.2.1 ((dec n12).1 hb)))
    (fun hb => by simp only [decide_eq_true_eq]; exact R.2.2.2.2.2.1 ((dec n03).1 hb))
    (fun hb => (dec n03).2 (R.2.2.2.2.2.2.1 ((dec n13).1 hb)))
    (fun hb => (dec n13).2 (R.2.2.2.2.2.2.2.1 ((dec n23).1 hb)))
    (fun hb => (dec n24).2 (R.2.2.2.2.2.2.2.2 ((dec n34).1 hb)))
  refine ⟨w, hw11, fun u v hu hv huv => ?_⟩
  have key : ∀ {p q : Point} {b : Bool}, sarea p q (Q a) ≠ 0 →
      (wsign w u v = b) → (b = decide (0 < sarea p q (Q a))) →
      (0 < sarea p q (Q a) ↔ wsign w u v = true) := by
    intro p q b _ hw hb; rw [hw, hb, decide_eq_true_iff]
  have keyn : ∀ {p q : Point} {b : Bool}, sarea q p (Q a) ≠ 0 →
      (wsign w u v = !b) → (b = decide (0 < sarea q p (Q a))) →
      (0 < sarea p q (Q a) ↔ wsign w u v = true) := by
    intro p q b hne hw hb
    rw [hw, hb, Bool.not_eq_true', dec hne, sarea_swap₁₂ p q (Q a)]
    constructor <;> intro <;> linarith
  interval_cases u <;> interval_cases v <;> simp only [cfg] <;>
    first
    | exact absurd rfl huv
    | exact key (by assumption) (by assumption) rfl
    | exact keyn (by assumption) (by assumption) rfl

/-! ### §5. The radial rule (14) -/

/-- The functional `ℓ_v` of the closed half-plane seen from the anchor `v` (`x + y` at `O`, `y`
at `C`, `1 - x` at `D`, `1 - y` at `F`, `x` at `H`), as coefficients of `X - V`. -/
def ell : ℕ → ℝ × ℝ
  | 0 => (1, 1)
  | 1 => (0, 1)
  | 2 => (-1, 0)
  | 3 => (0, -1)
  | _ => (1, 0)

theorem radial_id (V A M B : Point) (α β : ℝ) :
    sarea V A B * (α * (M.1 - V.1) + β * (M.2 - V.2)) =
      sarea V A M * (α * (B.1 - V.1) + β * (B.2 - V.2)) +
        sarea V M B * (α * (A.1 - V.1) + β * (A.2 - V.2)) := by
  unfold sarea; ring

theorem ell_free (v : ℕ) (hv : v < 5) {X : Point} (hX : X ∈ unitSquare) :
    0 ≤ (ell v).1 * (X.1 - (cfg h c d f Q v).1) + (ell v).2 * (X.2 - (cfg h c d f Q v).2) := by
  obtain ⟨x0, x1, y0, y1⟩ := hX
  interval_cases v <;> simp [ell, cfg] <;> linarith

theorem ell_anchor (hA : C1Anchors h c d f) {v m : ℕ} (hv : v < 5) (hm : m < 5) (hvm : v ≠ m)
    (h1 : ¬(v = 1 ∧ m = 0)) (h4 : ¬(v = 4 ∧ m = 0)) :
    0 < (ell v).1 * ((cfg h c d f Q m).1 - (cfg h c d f Q v).1) +
      (ell v).2 * ((cfg h c d f Q m).2 - (cfg h c d f Q v).2) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  interval_cases v <;> interval_cases m <;> simp [ell, cfg] at hvm h1 h4 ⊢ <;> linarith

/-- **The radial rule (14)**: if the words of two free points differ at the anchor `v`, the
orientation of `[V_v X_a X_b]` is the sign of `r_v(b) - r_v(a)`. -/
theorem Comp.radial_pair (H : Comp h c d f Q) {i j : Fin 4} (hij : i ≠ j) {wi wj : ℕ}
    (hwi : wi < 11) (hwj : wj < 11) (Wi : WordAt (cfg h c d f Q) (Q i) wi)
    (Wj : WordAt (cfg h c d f Q) (Q j) wj) {v : ℕ} (hv : v < 5)
    (hlt : wordAt wi v < wordAt wj v) : 0 < sarea (cfg h c d f Q v) (Q i) (Q j) := by
  obtain ⟨hm, n1, n4, sa, sb⟩ := radial_words ⟨wi, hwi⟩ ⟨wj, hwj⟩ ⟨v, hv⟩ hlt
  simp only at hm n1 n4 sa sb
  set m := (v + wordAt wi v + 1) % 5
  have hm5 : m < 5 := Nat.mod_lt _ (by norm_num)
  have hA := H.word_neg Wi hv hm5 (Ne.symm hm) sa
  have hB := Wj.pos hv hm5 (Ne.symm hm) sb
  have e := radial_id (cfg h c d f Q v) (Q i) (cfg h c d f Q m) (Q j) (ell v).1 (ell v).2
  have l1 := ell_anchor (Q := Q) H.hA hv hm5 (Ne.symm hm) n1 n4
  have l2 := ell_free (h := h) (c := c) (d := d) (f := f) (Q := Q) v hv (H.hQ j)
  have l3 := ell_free (h := h) (c := c) (d := d) (f := f) (Q := Q) v hv (H.hQ i)
  have hA' : 0 < sarea (cfg h c d f Q v) (Q i) (cfg h c d f Q m) := by
    rw [sarea_swap₂₃, ← sarea_cycle, sarea_cycle]
    have := sarea_swap₂₃ (cfg h c d f Q v) (cfg h c d f Q m) (Q i)
    linarith
  have hT : 0 ≤ sarea (cfg h c d f Q v) (Q i) (Q j) := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg hA'.le l2, mul_nonneg hB.le l3]
  have hne := H.areaFF v i j hv hij
  rcases hT.lt_or_eq with h1 | h1
  · exact h1
  · rw [← h1, abs_zero] at hne; linarith [A₀_pos]

/-! ### §5. Labelled configurations and their initial signs -/

/-- A labelled zero-lower configuration under (1): nondecreasing word indices `ks`, each free
point with its word, equal words ordered by angle from `O`. -/
structure Labeled (h c d f : ℝ) (Q : Fin 4 → Point) (ks : List ℕ) : Prop where
  comp : Comp h c d f Q
  hfd : f ≤ d
  len : ks.length = 4
  lt : ∀ a : Fin 4, kw ks a < 11
  mono : ∀ a b : Fin 4, a ≤ b → kw ks a ≤ kw ks b
  word : ∀ a : Fin 4, WordAt (cfg h c d f Q) (Q a) (kw ks a)
  order : ∀ a b : Fin 4, a < b → kw ks a = kw ks b → 0 < sarea (0, 0) (Q a) (Q b)

theorem anchor_pos (hA : C1Anchors h c d f) {t : ℕ × ℕ × ℕ} (ht : t ∈ [(0, 1, 2), (0, 1, 3),
    (0, 1, 4), (0, 2, 3), (0, 2, 4), (0, 3, 4), (1, 2, 3), (1, 2, 4), (1, 3, 4), (2, 3, 4)]) :
    0 < sarea (cfg h c d f Q t.1) (cfg h c d f Q t.2.1) (cfg h c d f Q t.2.2) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  simp only [List.mem_cons, List.not_mem_nil, or_false] at ht
  rcases ht with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    simp only [cfg, sarea] <;> nlinarith

/-- The pair rule of `baseSigns` is sound. -/
theorem Labeled.pair_sound (L : Labeled h c d f Q ks) {i j : Fin 4} (hij : i < j) {v : ℕ}
    (hv : v < 5) {sg : Bool} (hs : pairSign ks i j v = some sg) :
    OrientHolds sg (sarea (cfg h c d f Q v) (Q i) (Q j)) := by
  have hne : i ≠ j := hij.ne
  have Wi := L.word i
  have Wj := L.word j
  have hwi := L.lt i
  have hwj := L.lt j
  unfold pairSign at hs
  simp only at hs
  split_ifs at hs with h1 h2 h3 h4 h5 h6 <;> (try simp only [Option.some.injEq, reduceCtorEq] at hs) <;>
    (try subst hs)
  · rcases lt_or_gt_of_ne h1 with hl | hl
    · simp only [hl, decide_true, OrientHolds, ite_true]
      exact L.comp.radial_pair hne hwi hwj Wi Wj hv hl
    · simp only [not_lt.2 hl.le, decide_false, OrientHolds, Bool.false_eq_true, ite_false]
      have := L.comp.radial_pair hne.symm hwj hwi Wj Wi hv hl
      rw [sarea_swap₂₃] at this; linarith
  · subst h3; simp only [OrientHolds, ite_true, cfg]; exact L.order i j hij h2
  · obtain ⟨hc1, rfl⟩ := h4
    obtain ⟨hRi, hODi⟩ := (L.comp.region hwi Wi).2.1 hc1
    obtain ⟨hRj, hODj⟩ := (L.comp.region hwj Wj).2.1 (h2 ▸ hc1)
    simp only [OrientHolds, ite_true, cfg]
    exact (L.comp.lemma1 hne hRi hRj hODi hODj (L.order i j hij h2)).1
  · obtain ⟨hc1, rfl⟩ := h5
    obtain ⟨hRi, hODi⟩ := (L.comp.region hwi Wi).2.1 hc1
    obtain ⟨hRj, hODj⟩ := (L.comp.region hwj Wj).2.1 (h2 ▸ hc1)
    simp only [OrientHolds, Bool.false_eq_true, ite_false, cfg]
    exact (L.comp.lemma1 hne hRi hRj hODi hODj (L.order i j hij h2)).2
  · exact (L.comp.upper_pair hne hwi hwj h6.1 h6.2 Wi Wj).2 v hv _ hs

/-- **The initial signs** (`C1_ZERO_LOWER:claim-pair-signs`): every signed triangle of
`baseSigns ks` holds. -/
theorem Labeled.base (L : Labeled h c d f Q ks) : AllHold (FHolds (cfg h c d f Q)) (baseSigns ks) := by
  intro g hg
  simp only [baseSigns, List.mem_append, List.mem_filterMap, List.mem_flatMap, List.mem_range,
    Option.map_eq_some_iff] at hg
  rcases hg with ⟨t, ht, sg, hsg, rfl⟩ | ⟨p, hp, v, hv, sg, hsg, rfl⟩
  · obtain ⟨t1, t2, t3⟩ := lexTriples_valid t ht
    refine ⟨t1, t2, t3, ?_⟩
    unfold anchorSign at hsg
    split_ifs at hsg with a1 a2 <;> simp only [Option.some.injEq] at hsg <;>
      subst hsg
    · exact anchor_pos L.comp.hA (lexTriples_anchor t ht a1)
    · have ha : t.2.2 - 5 < 4 := by omega
      have hcf : cfg h c d f Q t.2.2 = Q ⟨t.2.2 - 5, ha⟩ := by
        have := cfg_free h c d f Q ⟨t.2.2 - 5, ha⟩
        simp only at this; rw [← this]; congr 1; omega
      simp only [SFact.Holds, hcf]
      have W := L.word ⟨t.2.2 - 5, ha⟩
      cases hw : wsign (kw ks (t.2.2 - 5)) t.1 t.2.1
      · exact L.comp.word_neg W (by omega) a2 (by omega) hw
      · exact W.pos (by omega) a2 (by omega) hw
  · simp only [freePairs, List.mem_cons, List.not_mem_nil, or_false] at hp
    have key : ∀ i j : Fin 4, i < j → p = (i.val, j.val) →
        FHolds (cfg h c d f Q) ((v, p.1 + 5, p.2 + 5), sg) := by
      intro i j hij hpe
      subst hpe
      refine ⟨by simp only; omega, by simp only; omega, by simp only; omega, ?_⟩
      simp only [SFact.Holds, cfg_free]
      exact L.pair_sound hij hv hsg
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl
    · exact key 0 1 (by decide) rfl
    · exact key 0 2 (by decide) rfl
    · exact key 0 3 (by decide) rfl
    · exact key 1 2 (by decide) rfl
    · exact key 1 3 (by decide) rfl
    · exact key 2 3 (by decide) rfl

/-! ### §5. The retained cases (`C1_ZERO_LOWER:claim-112`) -/

theorem Labeled.filters (L : Labeled h c d f Q ks) : filtersB ks = true := by
  simp only [filtersB, Bool.and_eq_true, decide_eq_true_eq]
  have H := L.comp
  have R := fun a : Fin 4 => H.region (L.lt a) (L.word a)
  have t := two_A₀
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  refine ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨?_, ?_⟩, ?_⟩, ?_⟩, ?_⟩, ?_⟩, ?_⟩, ?_⟩, ?_⟩, ?_⟩, ?_⟩, ?_⟩
  · rintro a b e hab hae hbe ⟨ca, cb, ce⟩
    exact H.quad_three hab hae hbe ((R a).1 ca) ((R b).1 cb) ((R e).1 ce)
  · rintro a b e hab hae hbe ⟨ca, cb, ce⟩
    have bel : ∀ x : Fin 4, wordAt (kw ks x) 0 = 1 → BelowOD d (Q x) := by
      intro x hx
      have : wsign (kw ks x) 0 2 = false := by
        unfold wsign; rw [hx]; decide
      exact H.word_neg (L.word x) (by norm_num) (by norm_num) (by norm_num) this
    exact H.fan_below hab hae hbe (bel a ca) (bel b cb) (bel e ce)
  · rintro a b e hab hae hbe ⟨ca, cb, ce⟩
    have abv : ∀ x : Fin 4, wordAt (kw ks x) 0 = 3 → AboveOF f (Q x) := by
      intro x hx
      have : wsign (kw ks x) 0 3 = true := by
        unfold wsign; rw [hx]; decide
      exact (L.word x).pos (by norm_num) (by norm_num) (by norm_num) this
    exact H.fan_above hab hae hbe (abv a ca) (abv b cb) (abv e ce)
  · intro hall
    exact H.top_four fun a => (R a).2.2.1 (hall a)
  · rintro a b hab ⟨ca, cb⟩
    exact H.left_pair L.hfd hab ((R a).2.2.2 ca).1 ((R b).2.2.2 cb).1 ((R a).2.2.2 ca).2
      ((R b).2.2.2 cb).2
  · rintro a b e hab hae hbe ⟨ca, cb, ce⟩
    obtain ⟨k1, k2⟩ := H.right_pair_bounds hab ((R a).2.1 ca).1 ((R b).2.1 cb).1
      ((R a).2.1 ca).2 ((R b).2.1 cb).2
    obtain ⟨l1, -, -, -, -, -, -⟩ := H.left_row L.hfd e ((R e).2.2.2 ce).1
    -- `fh(1 - h) ≤ (1 - 6A₀) ρ (1 - ρ) < 2A₀`
    have hc' : c ≤ 1 - 6 * A₀ := by
      nlinarith [mul_le_mul_of_nonneg_right (show d ≤ 1 by linarith) (sub_nonneg.2 hc.le)]
    have hh' : h * (1 - h) ≤ 49 / 60 * (11 / 60) := by nlinarith
    have : f * (h * (1 - h)) ≤ (1 - 6 * A₀) * (49 / 60 * (11 / 60)) :=
      mul_le_mul (by linarith) hh' (by nlinarith) (by linarith)
    nlinarith
  · rintro a b e g hab hae hag hbe hbg heg ⟨ca, cb, ce, cg⟩
    obtain ⟨k1, -⟩ := H.right_pair_bounds hab ((R a).2.1 ca).1 ((R b).2.1 cb).1
      ((R a).2.1 ca).2 ((R b).2.1 cb).2
    have := H.top_two heg ((R e).2.2.1 ce) ((R g).2.2.1 cg)
    unfold topCapArea at this
    nlinarith [mul_le_mul_of_nonneg_left (show 1 - f ≤ 1 by linarith) (show 0 ≤ 1 - d by linarith)]
  · rintro a b e hab hae hbe ⟨ca, cb, ce⟩
    obtain ⟨-, -, -, -, l5, -, -⟩ := H.left_row L.hfd a ((R a).2.2.2 ca).1
    have := H.top_two hbe ((R b).2.2.1 cb) ((R e).2.2.1 ce)
    unfold topCapArea at this
    have := L.hfd
    nlinarith [mul_le_mul (show 1 - d ≤ 41 / 73 by linarith) (show 1 - f ≤ 41 / 73 by linarith)
      (by linarith) (by norm_num)]
  · rintro a b e g hab hae hag hbe hbg heg ⟨ca, cb, ce, cg⟩
    obtain ⟨-, -, -, h5⟩ := H.right_row a ((R a).2.1 ca).1 ((R a).2.1 ca).2
    obtain ⟨-, -, a3, -⟩ := H.anchor_bounds
    have := right_consequences (c := c) (d := d) (by linarith) hd (by linarith)
    have := H.top_three hbe hbg heg ((R b).2.2.1 cb) ((R e).2.2.1 ce) ((R g).2.2.1 cg)
    unfold topCapArea at this
    nlinarith [mul_le_mul_of_nonneg_left (show 1 - f ≤ 1 by linarith) (show 0 ≤ 1 - d by linarith)]
  · rintro a b hab ⟨ia, ib⟩
    have inT : ∀ x : Fin 4, (wsign (kw ks x) 2 3 && wsign (kw ks x) 3 4 && wsign (kw ks x) 4 2) =
        true → InTriangle (Q x) (1, d) (f, 1) (0, h) := by
      intro x hx
      simp only [Bool.and_eq_true] at hx
      exact ⟨(L.word x).pos (by norm_num) (by norm_num) (by norm_num) hx.1.1,
        (L.word x).pos (by norm_num) (by norm_num) (by norm_num) hx.1.2,
        (L.word x).pos (by norm_num) (by norm_num) (by norm_num) hx.2⟩
    have := H.two_inside (a := 2) (b := 3) (e := 4) (j₁ := a.val + 5) (j₂ := b.val + 5)
      (by norm_num) (by norm_num) (by norm_num) (by omega) (by omega)
      (by simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
        List.nodup_nil, and_true, not_false_eq_true]; omega)
      (Or.inl (by rw [cfg_free]; exact inT a ia)) (Or.inl (by rw [cfg_free]; exact inT b ib))
    have hU := H.hdf_lt L.hfd
    simp only [cfg] at this
    rw [abs_of_pos (by simp only [sarea]; nlinarith)] at this
    linarith
  · intro a b hab ca cb
    exact (H.upper_pair hab (L.lt a) (L.lt b) ca cb (L.word a) (L.word b)).1
  · intro a b hab ca cb v sg hs hne
    have hup := (H.upper_pair hab.ne (L.lt a) (L.lt b) ca cb (L.word a) (L.word b)).2 v v.isLt sg hs
    rcases lt_or_gt_of_ne hne with hl | hl
    · have := H.radial_pair hab.ne (L.lt a) (L.lt b) (L.word a) (L.word b) v.isLt hl
      simp only [hl, decide_true]
      cases sg
      · simp only [OrientHolds, Bool.false_eq_true, ite_false] at hup; linarith
      · rfl
    · have := H.radial_pair hab.ne.symm (L.lt b) (L.lt a) (L.word b) (L.word a) v.isLt hl
      rw [sarea_swap₂₃] at this
      simp only [not_lt.2 hl.le, decide_false]
      cases sg
      · rfl
      · simp only [OrientHolds, ite_true] at hup; linarith

theorem Labeled.key (L : Labeled h c d f Q ks) : ks ∈ Trees.caseKeys := by
  have hl := L.len
  obtain ⟨k0, k1, k2, k3, rfl⟩ : ∃ k0 k1 k2 k3, ks = [k0, k1, k2, k3] := by
    rcases ks with _ | ⟨k0, _ | ⟨k1, _ | ⟨k2, _ | ⟨k3, _ | ⟨k4, ks⟩⟩⟩⟩⟩ <;> simp at hl
    exact ⟨k0, k1, k2, k3, rfl⟩
  have h0 := L.lt 0; have h1 := L.lt 1; have h2 := L.lt 2; have h3 := L.lt 3
  have m1 := L.mono 0 1 (by decide); have m2 := L.mono 1 2 (by decide)
  have m3 := L.mono 2 3 (by decide)
  simp only [kw] at h0 h1 h2 h3 m1 m2 m3
  exact filters_keys ⟨k0, h0⟩ ⟨k1, h1⟩ ⟨k2, h2⟩ ⟨k3, h3⟩ m1 m2 m3 L.filters

/-- A labelled configuration is a cell of the cover. -/
theorem Labeled.cell (L : Labeled h c d f Q ks) : Cell h c d f Q ks :=
  ⟨L.comp, L.hfd, L.key, L.word, L.base, fun h3 => L.comp.three_seeds L.hfd h3 L.word L.order⟩

/-! ### §5. The labelling -/

/-- The relabelling of the nine indices induced by a permutation of the free points. -/
def relab (σ : Equiv.Perm (Fin 4)) (k : Fin 9) : ℕ :=
  if hk : k.val < 5 then k.val else (σ ⟨k.val - 5, by omega⟩).val + 5

theorem relab_lt (σ : Equiv.Perm (Fin 4)) (k : Fin 9) : relab σ k < 9 := by
  unfold relab; split_ifs <;> omega

theorem relab_injective (σ : Equiv.Perm (Fin 4)) : Function.Injective (relab σ) := by
  intro a b hab
  unfold relab at hab
  split_ifs at hab with ha hb hb
  · exact Fin.ext hab
  · omega
  · omega
  · have h1 : σ ⟨a.val - 5, by omega⟩ = σ ⟨b.val - 5, by omega⟩ := Fin.ext (by omega)
    have h2 := σ.injective h1
    simp only [Fin.mk.injEq] at h2
    exact Fin.ext (by omega)

/-- Relabelling the free points keeps a competitive configuration. -/
theorem Comp.relabel (H : Comp h c d f Q) (σ : Equiv.Perm (Fin 4)) : Comp h c d f (Q ∘ σ) := by
  refine ⟨H.hA, fun i => H.hQ (σ i), ?_⟩
  have hm := H.min_sub (by norm_num) (relab σ) (relab_lt σ) (relab_injective σ)
  have e : c1Config h c d f ((Q ∘ σ) 0) ((Q ∘ σ) 1) ((Q ∘ σ) 2) ((Q ∘ σ) 3) =
      fun a => cfg h c d f Q (relab σ a) := by
    funext a
    fin_cases a <;> simp only [relab] <;>
      first | rfl | exact (cfg_free h c d f Q _).symm
  rw [e]; exact hm

theorem cfg_anchor_eq (h c d f : ℝ) (Q Q' : Fin 4 → Point) {u : ℕ} (hu : u < 5) :
    cfg h c d f Q u = cfg h c d f Q' u := by
  interval_cases u <;> rfl

theorem WordAt.relabel {Q Q' : Fin 4 → Point} {X : Point} {w : ℕ}
    (W : WordAt (cfg h c d f Q) X w) : WordAt (cfg h c d f Q') X w := by
  intro u v hu hv huv
  rw [cfg_anchor_eq h c d f Q' Q hu, cfg_anchor_eq h c d f Q' Q hv]
  exact W u v hu hv huv

/-- **The labelling** (`C1_ZERO_LOWER:claim-labeling`): sort the free points by word index, and
equal words by the slope `y/x` (the angle from `O`); the result is a labelled configuration. -/
theorem Comp.main (H : Comp h c d f Q) (hfd : f ≤ d) (hL : ∀ a, ¬ InLower h c (Q a)) :
    False := by
  choose w hw11 hW using fun a => H.word_exists a (hL a)
  let key : Fin 4 → ℕ ×ₗ ℝ := fun a => toLex (w a, (Q a).2 / (Q a).1)
  let σ := Tuple.sort key
  have hmono := Tuple.monotone_sort key
  have hle : ∀ a b : Fin 4, a ≤ b → key (σ a) ≤ key (σ b) := fun a b hab => hmono hab
  set ks := [w (σ 0), w (σ 1), w (σ 2), w (σ 3)] with hks
  have hkw : ∀ a : Fin 4, kw ks a = w (σ a) := by intro a; fin_cases a <;> rfl
  have L : Labeled h c d f (Q ∘ σ) ks := by
    refine ⟨H.relabel σ, hfd, rfl, fun a => by rw [hkw]; exact hw11 _, fun a b hab => ?_,
      fun a => ?_, fun a b hab heq => ?_⟩
    · rw [hkw, hkw]
      have := hle a b hab
      simp only [key, Prod.Lex.toLex_le_toLex] at this
      omega
    · rw [hkw]; exact (hW (σ a)).relabel
    · rw [hkw, hkw] at heq
      have := hle a b hab.le
      simp only [key, Prod.Lex.toLex_le_toLex, heq, lt_self_iff_false, true_and, false_or] at this
      have hab' : σ a ≠ σ b := σ.injective.ne hab.ne
      obtain ⟨xa, -⟩ := H.coord_ge (σ a)
      obtain ⟨xb, -⟩ := H.coord_ge (σ b)
      have t := two_A₀.1
      have hne := H.areaFF 0 (σ a) (σ b) (by norm_num) hab'
      simp only [cfg] at hne
      simp only [Function.comp]
      have hpa : 0 < (Q (σ a)).1 := by linarith
      have hpb : 0 < (Q (σ b)).1 := by linarith
      rw [div_le_div_iff₀ hpa hpb] at this
      have e : sarea (0, 0) (Q (σ a)) (Q (σ b)) =
          (Q (σ a)).1 * (Q (σ b)).2 - (Q (σ a)).2 * (Q (σ b)).1 := by
        simp only [sarea]; ring
      rw [e] at hne ⊢
      rcases (show 0 ≤ (Q (σ a)).1 * (Q (σ b)).2 - (Q (σ a)).2 * (Q (σ b)).1 by linarith).lt_or_eq
        with h1 | h1
      · exact h1
      · rw [← h1, abs_zero] at hne; linarith
  exact L.cell.false

/-! ### Theorem 4 -/

theorem inLower_tr {X : Point} : InLower c h (tr X) ↔ InLower h c X := by
  unfold InLower InTriangle ptO ptC ptH
  have e1 := sarea_tr (0, 0) (0, h) X
  have e2 := sarea_tr (0, h) (c, 0) X
  have e3 := sarea_tr (c, 0) (0, 0) X
  simp only [tr] at e1 e2 e3 ⊢
  rw [e1, e2, e3, sarea_swap₁₂ (0, 0) (0, h), sarea_swap₁₂ (0, h) (c, 0),
    sarea_swap₁₂ (c, 0) (0, 0)]
  constructor
  · rintro ⟨a1, a2, a3⟩; exact ⟨a3, a2, a1⟩
  · rintro ⟨a1, a2, a3⟩; exact ⟨a3, a2, a1⟩

/-- **Theorem 4** (`C1_ZERO_LOWER:Theorem4`, complete zero-lower exclusion). No competitive C1
configuration has its lower anchor triangle `OHC` empty: for every position of the four free
points in the closed unit square (every hull, every boundary contact), a C1 configuration with
`n₀ = 0` has least triangle area below `A₀`. `hand/C1_ZERO_LOWER.md`, lines 605-609. -/
theorem theorem4 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h0 : lowerCount h c W X Y Z = 0)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) : False := by
  classical
  set Q : Fin 4 → Point := ![W, X, Y, Z]
  have H : Comp h c d f Q := ⟨hA, fun i => by fin_cases i <;> assumption, hmin⟩
  have hL : ∀ a, ¬ InLower h c (Q a) := by
    intro a ha
    unfold lowerCount countFree at h0
    rw [Finset.card_eq_zero, Finset.filter_eq_empty_iff] at h0
    exact h0 (Finset.mem_univ a) ha
  by_cases hfd : f ≤ d
  · exact H.main hfd hL
  · exact H.transpose.main (by linarith) fun a ha => hL a (inLower_tr.1 ha)

end Heilbronn.C1ZeroLower
