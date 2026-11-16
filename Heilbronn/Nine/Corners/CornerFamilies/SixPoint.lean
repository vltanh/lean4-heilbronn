module

public import Heilbronn.Nine.Corners.CornerFamilies.SupportTriangle

/-! # Corner families: three interior points and the seven-face mesh

Part of `Heilbronn.Nine.Corners.CornerFamilies`. General results on three points inside a
triangle, reused in many places: the bound for a non-distributed triple, and the seven-face mesh
of a distributed triple with its identities; and the Type-III consequence for the triangular
lower hull of the `2+4` class (`fst_sub_snd_ge_of_three_inside`).

Definitions:

* `FanSplit A B C P Q R`: for the interior point `P`, the other two points `Q, R` do not lie in
  a common triangle of the fan `ABP, BCP, CAP`;
* `Distributed A B C X Y Z`: `X, Y, Z` strictly inside `ABC` and the fan split holds at each of
  them;
* `MeshLabelled A B C X Y Z`: the labelled distributed configuration, `Z ∈ int ABY`,
  `X ∈ int BCY` and the four deduced containments;
* `bary A B C α β γ`: the point with barycentric coordinates `(α, β, γ)`.

All containments are orientation-free (`InsideTriangle`), so the mesh can be used in the physical
Type-III frame `A = (0,0)`, `B = (0,1)`, `C = (1,1)`, which is clockwise. In the mesh statements
`x = [ABZ]`, `y = [BCX]`, `z = [CAY]` (ears), `a = [AZY]`, `b = [BXZ]`, `c = [CYX]` (connectors),
`k = [ZXY]` (central) and `u_A = [AZX]`, `u_B = [BXY]`, `u_C = [CYZ]`, `v_A = [AXY]`,
`v_B = [BYZ]`, `v_C = [CZX]` (cross areas); doubled areas are `|sarea …|`.

**Results.** `twoInteriorPointLemma` and `sixPointTriangularHullTheorem` are proved in
`CornerFamilies/Interior.lean`; here: `triangleArea_ge_of_not_distributed`, the vertex symmetries
(`inside_rot`, `inside_swap`, `inside_rev`, `meshLabelled_reverse`, `distributed_*`), `mesh_ccw`
(the thirteen signs), `meshLabelled_of_distributed`, `meshLabelled_signs_and_area_sum`, `mesh_connector_identities`, `mesh_plucker_identities`, `labelling_ccw`, `exists_mesh_labelling`,
`fst_sub_snd_ge_of_three_inside`. `meshLabelled_of_distributed` assumes `0 < sarea A B C` (counterclockwise; the clockwise case is
the reversed labelling `meshLabelled_reverse`).

**Labelling.** In fixed coordinates the outer vertices cannot be relabelled cyclically; instead
one chooses `Y` as the interior point whose empty fan triangle lies on the edge `CA`.
`exists_mesh_labelling` states that such a labelling of the interior points exists.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.CornerFamilies

/-! ### Distributed triples and the mesh -/

/-- For the interior point `P` of `ABC`, the other two points `Q, R` lie in distinct triangles of
its fan `ABP, BCP, CAP`: no fan triangle contains both. -/
def FanSplit (A B C P Q R : Point) : Prop :=
  ¬ (InsideTriangle Q A B P ∧ InsideTriangle R A B P) ∧
    ¬ (InsideTriangle Q B C P ∧ InsideTriangle R B C P) ∧
    ¬ (InsideTriangle Q C A P ∧ InsideTriangle R C A P)

/-- The three points `X, Y, Z` are strictly inside `ABC` and distributed: for each of them the
other two lie in distinct triangles of its fan. -/
def Distributed (A B C X Y Z : Point) : Prop :=
  InsideTriangle X A B C ∧ InsideTriangle Y A B C ∧ InsideTriangle Z A B C ∧
    FanSplit A B C X Y Z ∧ FanSplit A B C Y Z X ∧ FanSplit A B C Z X Y

/-- The labelled seven-face mesh: `Y` inside `ABC`, `Z ∈ int ABY`, `X ∈ int BCY`, and the
deduced containments `Y ∈ int CAZ`, `X ∈ int BCZ`, `Y ∈ int CAX`, `Z ∈ int ABX`. -/
def MeshLabelled (A B C X Y Z : Point) : Prop :=
  InsideTriangle Y A B C ∧ InsideTriangle Z A B Y ∧ InsideTriangle X B C Y ∧
    InsideTriangle Y C A Z ∧ InsideTriangle X B C Z ∧ InsideTriangle Y C A X ∧
    InsideTriangle Z A B X

/-- The point with barycentric coordinates `(α, β, γ)` relative to `A, B, C`. -/
def bary (A B C : Point) (α β γ : ℝ) : Point :=
  (α * A.1 + β * B.1 + γ * C.1, α * A.2 + β * B.2 + γ * C.2)

/-! ### Permutations of the vertices -/

theorem inside_rot {X A B C : Point} : InsideTriangle X A B C ↔ InsideTriangle X B C A := by
  unfold InsideTriangle InTriangle
  constructor <;> rintro (⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩)
  · exact Or.inl ⟨h2, h3, h1⟩
  · exact Or.inr ⟨h3, h1, h2⟩
  · exact Or.inl ⟨h3, h1, h2⟩
  · exact Or.inr ⟨h2, h3, h1⟩

theorem inside_swap {X A B C : Point} : InsideTriangle X A B C ↔ InsideTriangle X A C B := Or.comm

theorem inside_rev {X A B C : Point} : InsideTriangle X A B C ↔ InsideTriangle X C B A := by
  rw [inside_swap, inside_rot, inside_rot]

theorem inside_swap12 {X A B C : Point} : InsideTriangle X A B C ↔ InsideTriangle X B A C := by
  rw [inside_rot, inside_swap]

theorem not_fanSplit {A B C P Q R : Point} (h : ¬ FanSplit A B C P Q R) :
    (InsideTriangle Q A B P ∧ InsideTriangle R A B P) ∨
      (InsideTriangle Q B C P ∧ InsideTriangle R B C P) ∨
        (InsideTriangle Q C A P ∧ InsideTriangle R C A P) := by
  by_contra hc
  exact h ⟨fun h' => hc (Or.inl h'), fun h' => hc (Or.inr (Or.inl h')),
    fun h' => hc (Or.inr (Or.inr h'))⟩

theorem inside_ccw {X A B C : Point} (h : InsideTriangle X A B C) (hp : 0 < sarea A B C) :
    InTriangle X A B C := by
  rcases h with h | h
  · exact h
  · exfalso; have := inTri_pos h; linarith [sarea_swap₂₃ A B C]

/-- Reversing the outer triangle and exchanging `X, Z` keeps the labelled mesh (as sets the
seven containments are the same). -/
theorem meshLabelled_reverse {A B C X Y Z : Point} (hm : MeshLabelled A B C X Y Z) :
    MeshLabelled C B A Z Y X := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7⟩ := hm
  exact ⟨inside_rev.1 h1, inside_swap12.1 h3, inside_swap12.1 h2, inside_swap12.1 h6,
    inside_swap12.1 h7, inside_swap12.1 h4, inside_swap12.1 h5⟩

/-- The area of a triangle is the sum of the areas of the three triangles at an inside point. -/
theorem area_split {W A B C : Point} (h : InsideTriangle W A B C) :
    triangleArea A B C = triangleArea A B W + triangleArea B C W + triangleArea C A W := by
  simp only [triangleArea_eq]
  have e := sarea_add_sarea_add_sarea A B C W
  rcases h with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
  · rw [abs_of_pos h1, abs_of_pos h2, abs_of_pos h3, abs_of_pos (by linarith)]; linarith
  · have s1 : sarea A B W = -sarea B A W := sarea_swap₁₂ _ _ _
    have s2 : sarea B C W = -sarea C B W := sarea_swap₁₂ _ _ _
    have s3 : sarea C A W = -sarea A C W := sarea_swap₁₂ _ _ _
    rw [abs_of_neg (by linarith), abs_of_neg (by linarith), abs_of_neg (by linarith),
      abs_of_neg (by linarith)]
    linarith

/-! ### Two interior points -/

/-- Two interior points in the fan triangle `ABP` of an interior point `P`:
`area(ABC) ≥ (4 + 2√3)t + 2t` (orientation-free). -/
theorem nd_helper {A B C P Q R : Point} {t : ℝ} (ht : 0 < t) (hP : InsideTriangle P A B C)
    (hQ : InsideTriangle Q A B P) (hR : InsideTriangle R A B P)
    (hmin : t ≤ minTriangleArea ![A, B, C, P, Q, R]) :
    (6 + 2 * Real.sqrt 3) * t ≤ triangleArea A B C := by
  have h1 := twoInteriorPointLemma A B P Q R hQ hR t ht
    (min_sub hmin ![A, B, P, Q, R] ![0, 1, 3, 4, 5] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> simp))
  have h2 : t ≤ triangleArea B C P := area_of_le_min hmin 1 2 3
  have h3 : t ≤ triangleArea C A P := area_of_le_min hmin 2 0 3
  rw [area_split hP]; linarith

/-- If three points strictly inside `ABC` are not distributed, two of them share a fan triangle
of the third, so `area(ABC) ≥ (4 + 2√3)t + 2t = (6 + 2√3)t`. -/
theorem triangleArea_ge_of_not_distributed (A B C X Y Z : Point) (hX : InsideTriangle X A B C)
    (hY : InsideTriangle Y A B C) (hZ : InsideTriangle Z A B C) (t : ℝ) (ht : 0 < t)
    (hmin : t ≤ minTriangleArea ![A, B, C, X, Y, Z]) (hnd : ¬ Distributed A B C X Y Z) :
    (6 + 2 * Real.sqrt 3) * t ≤ triangleArea A B C := by
  have r1 : triangleArea B C A = triangleArea A B C := triangleArea_cycle A B C
  have r2 : triangleArea C A B = triangleArea A B C := (triangleArea_cycle B C A).trans r1
  have hXr := inside_rot.1 hX
  have hYr := inside_rot.1 hY
  have hZr := inside_rot.1 hZ
  have hXrr := inside_rot.1 hXr
  have hYrr := inside_rot.1 hYr
  have hZrr := inside_rot.1 hZr
  by_cases fX : FanSplit A B C X Y Z
  · by_cases fY : FanSplit A B C Y Z X
    · by_cases fZ : FanSplit A B C Z X Y
      · exact absurd ⟨hX, hY, hZ, fX, fY, fZ⟩ hnd
      · replace fZ := not_fanSplit fZ
        rcases fZ with ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩
        · have := nd_helper (A := A) (B := B) (C := C) ht hZ h1 h2
            (min_sub hmin ![A, B, C, Z, X, Y] ![0, 1, 2, 5, 3, 4] (by norm_num) (by decide)
              (by intro i; fin_cases i <;> simp))
          exact this
        · have := nd_helper (A := B) (B := C) (C := A) ht hZr h1 h2
            (min_sub hmin ![B, C, A, Z, X, Y] ![1, 2, 0, 5, 3, 4] (by norm_num) (by decide)
              (by intro i; fin_cases i <;> simp))
          rw [← r1]; exact this
        · have := nd_helper (A := C) (B := A) (C := B) ht hZrr h1 h2
            (min_sub hmin ![C, A, B, Z, X, Y] ![2, 0, 1, 5, 3, 4] (by norm_num) (by decide)
              (by intro i; fin_cases i <;> simp))
          rw [← r2]; exact this
    · replace fY := not_fanSplit fY
      rcases fY with ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩
      · have := nd_helper (A := A) (B := B) (C := C) ht hY h1 h2
          (min_sub hmin ![A, B, C, Y, Z, X] ![0, 1, 2, 4, 5, 3] (by norm_num) (by decide)
            (by intro i; fin_cases i <;> simp))
        exact this
      · have := nd_helper (A := B) (B := C) (C := A) ht hYr h1 h2
          (min_sub hmin ![B, C, A, Y, Z, X] ![1, 2, 0, 4, 5, 3] (by norm_num) (by decide)
            (by intro i; fin_cases i <;> simp))
        rw [← r1]; exact this
      · have := nd_helper (A := C) (B := A) (C := B) ht hYrr h1 h2
          (min_sub hmin ![C, A, B, Y, Z, X] ![2, 0, 1, 4, 5, 3] (by norm_num) (by decide)
            (by intro i; fin_cases i <;> simp))
        rw [← r2]; exact this
  · replace fX := not_fanSplit fX
    rcases fX with ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩
    · have := nd_helper (A := A) (B := B) (C := C) ht hX h1 h2
        (min_sub hmin ![A, B, C, X, Y, Z] ![0, 1, 2, 3, 4, 5] (by norm_num) (by decide)
          (by intro i; fin_cases i <;> simp))
      exact this
    · have := nd_helper (A := B) (B := C) (C := A) ht hXr h1 h2
        (min_sub hmin ![B, C, A, X, Y, Z] ![1, 2, 0, 3, 4, 5] (by norm_num) (by decide)
          (by intro i; fin_cases i <;> simp))
      rw [← r1]; exact this
    · have := nd_helper (A := C) (B := A) (C := B) ht hXrr h1 h2
        (min_sub hmin ![C, A, B, X, Y, Z] ![2, 0, 1, 3, 4, 5] (by norm_num) (by decide)
          (by intro i; fin_cases i <;> simp))
      rw [← r2]; exact this

/-! ### The mesh -/

/-- The thirteen signs of a labelled mesh in a counterclockwise triangle: the seven faces and the
six cross areas are positive. The central sign uses the identity
`[CZY][ZBX] = [XZY][ZBC] + [ZBY][CZX]` (the convexity of `BZYX`). -/
theorem mesh_ccw {A B C X Y Z : Point} (hp : 0 < sarea A B C) (hm : MeshLabelled A B C X Y Z) :
    0 < sarea A B Z ∧ 0 < sarea B C X ∧ 0 < sarea C A Y ∧ 0 < sarea A Z Y ∧
      0 < sarea B X Z ∧ 0 < sarea C Y X ∧ 0 < sarea Z X Y ∧
      0 < sarea A Z X ∧ 0 < sarea B X Y ∧ 0 < sarea C Y Z ∧ 0 < sarea A X Y ∧
      0 < sarea B Y Z ∧ 0 < sarea C Z X := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7⟩ := hm
  have hY := inside_ccw h1 hp
  have hZ := inside_ccw h2 hY.1
  have hX := inside_ccw h3 hY.2.1
  have hZ' := inTri_trans hZ hY
  have hX' := inTri_rot (inTri_rot (inTri_trans hX (inTri_rot hY)))
  have hYCAZ := inside_ccw h4 hZ'.2.2
  have hXBCZ := inside_ccw h5 hZ'.2.1
  have hYCAX := inside_ccw h6 hX'.2.2
  have hZABX := inside_ccw h7 hX'.1
  have hk : 0 < sarea Z X Y := by
    by_contra hk
    push Not at hk
    have e : sarea C Z Y * sarea Z B X = sarea X Z Y * sarea Z B C + sarea Z B Y * sarea C Z X := by
      unfold sarea; ring
    have g1 : 0 < sarea Z B X := by linarith [hZABX.2.1, sarea_cycle Z B X]
    have g2 : 0 ≤ sarea X Z Y := by linarith [sarea_swap₁₂ Z X Y]
    have g3 : 0 < sarea Z B C := by linarith [hZ'.2.1, sarea_cycle Z B C]
    have g4 : 0 < sarea Z B Y := by linarith [hZ.2.1, sarea_cycle Z B Y]
    have g5 : 0 < sarea C Z X := hXBCZ.2.1
    have g6 : 0 < sarea C Z Y * sarea Z B X := by rw [e]; nlinarith [mul_pos g4 g5]
    have g7 : 0 < sarea C Z Y := pos_of_mul_pos_right' g6 g1
    linarith [hYCAZ.2.2, sarea_swap₁₂ Z C Y]
  refine ⟨hZ.1, hX.1, hY.2.2, by linarith [hZ.2.2, sarea_cycle Y A Z], hZABX.2.1, hX.2.1, hk,
    by linarith [hZABX.2.2, sarea_cycle X A Z], by linarith [hX.2.2, sarea_cycle Y B X],
    by linarith [hYCAZ.2.2, sarea_cycle Z C Y], hYCAX.2.1, hZ.2.1, hXBCZ.2.1⟩

/-- A distributed triple in general position with `Z ∈ int ABY` and `X ∈ int BCY` is a labelled
mesh: also `Y ∈ int CAZ`, `X ∈ int BCZ`, `Y ∈ int CAX`, `Z ∈ int ABX`. Stated for a
counterclockwise `ABC` (the clockwise case is the reversed labelling, `meshLabelled_reverse`). -/
theorem meshLabelled_of_distributed (A B C X Y Z : Point) (hp : 0 < sarea A B C) (hd : Distributed A B C X Y Z)
    (hgp : 0 < minTriangleArea ![A, B, C, X, Y, Z]) (hZ : InsideTriangle Z A B Y)
    (hX : InsideTriangle X B C Y) : MeshLabelled A B C X Y Z := by
  obtain ⟨hXi, hYi, hZi, fX, fY, fZ⟩ := hd
  have hY := inside_ccw hYi hp
  have hZc := inside_ccw hZ hY.1
  have hXc := inside_ccw hX hY.2.1
  have hZ' := inTri_trans hZc hY
  have hX' := inTri_rot (inTri_rot (inTri_trans hXc (inTri_rot hY)))
  have n := fun i j k (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) =>
    sarea_ne_zero_of_min_pos hgp i j k hij hjk hik
  refine ⟨hYi, hZ, hX, ?_, ?_, ?_, ?_⟩
  · rcases fan_cases hZ' hY (n 5 0 4 (by decide) (by decide) (by decide))
        (n 5 1 4 (by decide) (by decide) (by decide)) (n 5 2 4 (by decide) (by decide) (by decide))
      with h | h | h
    · exfalso; linarith [h.2.1, hZc.2.1, sarea_swap₂₃ B Y Z]
    · exfalso; exact fZ.2.1 ⟨Or.inl (inTri_trans hXc h), Or.inl h⟩
    · exact Or.inl h
  · rcases fan_cases hZ' hX' (n 5 0 3 (by decide) (by decide) (by decide))
        (n 5 1 3 (by decide) (by decide) (by decide)) (n 5 2 3 (by decide) (by decide) (by decide))
      with h | h | h
    · exfalso; have h' := inTri_trans h hZc; linarith [h'.2.1, hXc.2.2, sarea_swap₁₂ B Y X]
    · exact Or.inl h
    · exfalso
      rcases fan_cases hZ' hY (n 5 0 4 (by decide) (by decide) (by decide))
          (n 5 1 4 (by decide) (by decide) (by decide)) (n 5 2 4 (by decide) (by decide) (by decide))
        with g | g | g
      · linarith [g.2.1, hZc.2.1, sarea_swap₂₃ B Y Z]
      · exact fZ.2.1 ⟨Or.inl (inTri_trans hXc g), Or.inl g⟩
      · exact fZ.2.2 ⟨Or.inl h, Or.inl g⟩
  · rcases fan_cases hX' hY (n 3 0 4 (by decide) (by decide) (by decide))
        (n 3 1 4 (by decide) (by decide) (by decide)) (n 3 2 4 (by decide) (by decide) (by decide))
      with h | h | h
    · exfalso; exact fX.1 ⟨Or.inl h, Or.inl (inTri_trans hZc h)⟩
    · exfalso; linarith [h.2.1, hXc.2.1, sarea_swap₂₃ C Y X]
    · exact Or.inl h
  · rcases fan_cases hX' hZ' (n 3 0 5 (by decide) (by decide) (by decide))
        (n 3 1 5 (by decide) (by decide) (by decide)) (n 3 2 5 (by decide) (by decide) (by decide))
      with h | h | h
    · exact Or.inl h
    · exfalso; have h' := inTri_trans h hXc; linarith [h'.2.2, hZc.2.1, sarea_swap₁₂ B Y Z]
    · exfalso
      rcases fan_cases hX' hY (n 3 0 4 (by decide) (by decide) (by decide))
          (n 3 1 4 (by decide) (by decide) (by decide)) (n 3 2 4 (by decide) (by decide) (by decide))
        with g | g | g
      · exact fX.1 ⟨Or.inl g, Or.inl (inTri_trans hZc g)⟩
      · linarith [g.2.1, hXc.2.1, sarea_swap₂₃ C Y X]
      · exact fX.2.2 ⟨Or.inl g, Or.inl h⟩

/-- In a labelled mesh the seven faces `ABZ, BCX, CAY, AZY, BXZ, CYX, ZXY` and the six cross
triangles all have the orientation of `ABC`, and the seven faces tile `ABC`. -/
theorem meshLabelled_signs_and_area_sum (A B C X Y Z : Point) (hm : MeshLabelled A B C X Y Z) :
    0 < sarea A B C * sarea A B Z ∧ 0 < sarea A B C * sarea B C X ∧
      0 < sarea A B C * sarea C A Y ∧ 0 < sarea A B C * sarea A Z Y ∧
      0 < sarea A B C * sarea B X Z ∧ 0 < sarea A B C * sarea C Y X ∧
      0 < sarea A B C * sarea Z X Y ∧
      0 < sarea A B C * sarea A Z X ∧ 0 < sarea A B C * sarea B X Y ∧
      0 < sarea A B C * sarea C Y Z ∧ 0 < sarea A B C * sarea A X Y ∧
      0 < sarea A B C * sarea B Y Z ∧ 0 < sarea A B C * sarea C Z X ∧
      triangleArea A B C = triangleArea A B Z + triangleArea B C X + triangleArea C A Y +
        triangleArea A Z Y + triangleArea B X Z + triangleArea C Y X + triangleArea Z X Y := by
  have tiling : sarea A B C = sarea A B Z + sarea B C X + sarea C A Y + sarea A Z Y +
      sarea B X Z + sarea C Y X + sarea Z X Y := by unfold sarea; ring
  rcases (inside_rev.1 hm.1 : InsideTriangle Y C B A) with h | h
  · -- `CBA` counterclockwise: use the reversed mesh
    have hp : 0 < sarea C B A := inTri_pos h
    obtain ⟨g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13⟩ :=
      mesh_ccw hp (meshLabelled_reverse hm)
    have hn : sarea A B C < 0 := by linarith [sarea_swap₁₃ A B C]
    have n1 : sarea A B Z < 0 := by linarith [g2, sarea_swap₁₂ A B Z]
    have n2 : sarea B C X < 0 := by linarith [g1, sarea_swap₁₂ B C X]
    have n3 : sarea C A Y < 0 := by linarith [g3, sarea_swap₁₂ C A Y]
    have n4 : sarea A Z Y < 0 := by linarith [g6, sarea_swap₂₃ A Z Y]
    have n5 : sarea B X Z < 0 := by linarith [g5, sarea_swap₂₃ B X Z]
    have n6 : sarea C Y X < 0 := by linarith [g4, sarea_swap₂₃ C Y X]
    have n7 : sarea Z X Y < 0 := by linarith [g7, sarea_swap₁₂ Z X Y]
    have n8 : sarea A Z X < 0 := by linarith [g13, sarea_swap₂₃ A Z X]
    have n9 : sarea B X Y < 0 := by linarith [g12, sarea_swap₂₃ B X Y]
    have n10 : sarea C Y Z < 0 := by linarith [g11, sarea_swap₂₃ C Y Z]
    have n11 : sarea A X Y < 0 := by linarith [g10, sarea_swap₂₃ A X Y]
    have n12 : sarea B Y Z < 0 := by linarith [g9, sarea_swap₂₃ B Y Z]
    have n13 : sarea C Z X < 0 := by linarith [g8, sarea_swap₂₃ C Z X]
    refine ⟨mul_pos_of_neg_of_neg hn n1, mul_pos_of_neg_of_neg hn n2, mul_pos_of_neg_of_neg hn n3,
      mul_pos_of_neg_of_neg hn n4, mul_pos_of_neg_of_neg hn n5, mul_pos_of_neg_of_neg hn n6,
      mul_pos_of_neg_of_neg hn n7, mul_pos_of_neg_of_neg hn n8, mul_pos_of_neg_of_neg hn n9,
      mul_pos_of_neg_of_neg hn n10, mul_pos_of_neg_of_neg hn n11, mul_pos_of_neg_of_neg hn n12,
      mul_pos_of_neg_of_neg hn n13, ?_⟩
    simp only [triangleArea_eq]
    rw [abs_of_neg hn, abs_of_neg n1, abs_of_neg n2, abs_of_neg n3, abs_of_neg n4, abs_of_neg n5,
      abs_of_neg n6, abs_of_neg n7]
    linarith
  · have hp : 0 < sarea A B C := by
      have := inTri_pos h; linarith [sarea_cycle B C A, sarea_cycle A B C]
    obtain ⟨g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13⟩ := mesh_ccw hp hm
    refine ⟨mul_pos hp g1, mul_pos hp g2, mul_pos hp g3, mul_pos hp g4, mul_pos hp g5,
      mul_pos hp g6, mul_pos hp g7, mul_pos hp g8, mul_pos hp g9, mul_pos hp g10, mul_pos hp g11,
      mul_pos hp g12, mul_pos hp g13, ?_⟩
    simp only [triangleArea_eq]
    rw [abs_of_pos hp, abs_of_pos g1, abs_of_pos g2, abs_of_pos g3, abs_of_pos g4, abs_of_pos g5,
      abs_of_pos g6, abs_of_pos g7]
    linarith

/-- The connector identities of the mesh: `a = u_A + v_A - k`, `b = u_B + v_B - k`,
`c = u_C + v_C - k` (signed areas, for all points). -/
theorem mesh_connector_identities (A B C X Y Z : Point) :
    sarea A Z Y = sarea A Z X + sarea A X Y - sarea Z X Y ∧
      sarea B X Z = sarea B X Y + sarea B Y Z - sarea Z X Y ∧
      sarea C Y X = sarea C Y Z + sarea C Z X - sarea Z X Y := by
  unfold sarea; refine ⟨by ring, by ring, by ring⟩

/-- The Plücker identities of the mesh: `xk = ab - u_A v_B`, `yk = bc - u_B v_C`,
`zk = ca - u_C v_A` (signed areas, for all points). -/
theorem mesh_plucker_identities (A B C X Y Z : Point) :
    sarea A B Z * sarea Z X Y = sarea A Z Y * sarea B X Z - sarea A Z X * sarea B Y Z ∧
      sarea B C X * sarea Z X Y = sarea B X Z * sarea C Y X - sarea B X Y * sarea C Z X ∧
      sarea C A Y * sarea Z X Y = sarea C Y X * sarea A Z Y - sarea C Y Z * sarea A X Y := by
  unfold sarea; refine ⟨by ring, by ring, by ring⟩

/-! ### Symmetries of distributed triples -/

theorem fanSplit_rot {A B C P Q R : Point} (h : FanSplit A B C P Q R) : FanSplit B C A P Q R :=
  ⟨h.2.1, h.2.2, h.1⟩

theorem fanSplit_swap {A B C P Q R : Point} (h : FanSplit A B C P Q R) : FanSplit A B C P R Q :=
  ⟨fun h' => h.1 ⟨h'.2, h'.1⟩, fun h' => h.2.1 ⟨h'.2, h'.1⟩, fun h' => h.2.2 ⟨h'.2, h'.1⟩⟩

theorem fanSplit_rev {A B C P Q R : Point} (h : FanSplit A B C P Q R) : FanSplit C B A P Q R :=
  ⟨fun h' => h.2.1 ⟨inside_swap12.1 h'.1, inside_swap12.1 h'.2⟩,
    fun h' => h.1 ⟨inside_swap12.1 h'.1, inside_swap12.1 h'.2⟩,
    fun h' => h.2.2 ⟨inside_swap12.1 h'.1, inside_swap12.1 h'.2⟩⟩

theorem distributed_rot {A B C X Y Z : Point} (h : Distributed A B C X Y Z) :
    Distributed B C A X Y Z :=
  ⟨inside_rot.1 h.1, inside_rot.1 h.2.1, inside_rot.1 h.2.2.1, fanSplit_rot h.2.2.2.1,
    fanSplit_rot h.2.2.2.2.1, fanSplit_rot h.2.2.2.2.2⟩

theorem distributed_cyc {A B C X Y Z : Point} (h : Distributed A B C X Y Z) :
    Distributed A B C Z X Y :=
  ⟨h.2.2.1, h.1, h.2.1, h.2.2.2.2.2, h.2.2.2.1, h.2.2.2.2.1⟩

theorem distributed_swap {A B C X Y Z : Point} (h : Distributed A B C X Y Z) :
    Distributed A B C Y X Z :=
  ⟨h.2.1, h.1, h.2.2.1, fanSplit_swap h.2.2.2.2.1, fanSplit_swap h.2.2.2.1,
    fanSplit_swap h.2.2.2.2.2⟩

theorem distributed_rev {A B C X Y Z : Point} (h : Distributed A B C X Y Z) :
    Distributed C B A X Y Z :=
  ⟨inside_rev.1 h.1, inside_rev.1 h.2.1, inside_rev.1 h.2.2.1, fanSplit_rev h.2.2.2.1,
    fanSplit_rev h.2.2.2.2.1, fanSplit_rev h.2.2.2.2.2⟩

/-- The labelling of a distributed triple in a counterclockwise triangle. -/
theorem labelling_ccw {A B C P Q R : Point} (hp : 0 < sarea A B C)
    (hd : Distributed A B C P Q R) (hgp : 0 < minTriangleArea ![A, B, C, P, Q, R]) :
    ∃ σ : Equiv.Perm (Fin 3),
      InsideTriangle (![P, Q, R] (σ 2)) A B (![P, Q, R] (σ 1)) ∧
        InsideTriangle (![P, Q, R] (σ 0)) B C (![P, Q, R] (σ 1)) := by
  have hP := inside_ccw hd.1 hp
  have hQ := inside_ccw hd.2.1 hp
  have hR := inside_ccw hd.2.2.1 hp
  have fP := hd.2.2.2.1
  have n := fun i j k (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) =>
    sarea_ne_zero_of_min_pos hgp i j k hij hjk hik
  have cyc1 : sarea B C A = sarea A B C := sarea_cycle A B C
  have cyc2 : sarea C A B = sarea A B C := (sarea_cycle B C A).trans cyc1
  rcases fan_cases hP hQ (n 3 0 4 (by decide) (by decide) (by decide))
      (n 3 1 4 (by decide) (by decide) (by decide)) (n 3 2 4 (by decide) (by decide) (by decide))
    with h1 | h1 | h1 <;>
  rcases fan_cases hP hR (n 3 0 5 (by decide) (by decide) (by decide))
      (n 3 1 5 (by decide) (by decide) (by decide)) (n 3 2 5 (by decide) (by decide) (by decide))
    with h2 | h2 | h2
  · exact absurd ⟨Or.inl h1, Or.inl h2⟩ fP.1
  · exact ⟨⟨![2, 0, 1], ![1, 2, 0], by decide, by decide⟩, Or.inl h1, Or.inl h2⟩
  · -- `Q ∈ ABP`, `R ∈ CAP`: `Y = R`, `Z = Q`, `X = P`
    have hm := meshLabelled_of_distributed C A B Q P R (by linarith) (distributed_swap (distributed_rot
      (distributed_rot hd))) (lt_of_lt_of_le hgp (min_sub (le_refl _) _ ![2, 0, 1, 4, 3, 5]
        (by norm_num) (by decide) (by intro i; fin_cases i <;> simp))) (Or.inl h2) (Or.inl h1)
    exact ⟨⟨![0, 2, 1], ![0, 2, 1], by decide, by decide⟩, hm.2.2.2.2.1, hm.2.2.2.1⟩
  · exact ⟨⟨![1, 0, 2], ![1, 0, 2], by decide, by decide⟩, Or.inl h2, Or.inl h1⟩
  · exact absurd ⟨Or.inl h1, Or.inl h2⟩ fP.2.1
  · -- `Q ∈ BCP`, `R ∈ CAP`: `Y = R`, `Z = P`, `X = Q`
    have hm := meshLabelled_of_distributed B C A R P Q (by linarith) (distributed_cyc (distributed_rot hd))
      (lt_of_lt_of_le hgp (min_sub (le_refl _) _ ![1, 2, 0, 5, 3, 4] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))) (Or.inl h1) (Or.inl h2)
    exact ⟨⟨![1, 2, 0], ![2, 0, 1], by decide, by decide⟩, hm.2.2.2.2.2.1, hm.2.2.2.2.2.2⟩
  · -- `Q ∈ CAP`, `R ∈ ABP`: `Y = Q`, `Z = R`, `X = P`
    have hm := meshLabelled_of_distributed C A B R P Q (by linarith) (distributed_cyc (distributed_rot (distributed_rot hd)))
      (lt_of_lt_of_le hgp (min_sub (le_refl _) _ ![2, 0, 1, 5, 3, 4] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))) (Or.inl h1) (Or.inl h2)
    exact ⟨⟨![0, 1, 2], ![0, 1, 2], by decide, by decide⟩, hm.2.2.2.2.1, hm.2.2.2.1⟩
  · -- `Q ∈ CAP`, `R ∈ BCP`: `Y = Q`, `Z = P`, `X = R`
    have hm := meshLabelled_of_distributed B C A Q P R (by linarith) (distributed_swap (distributed_rot hd))
      (lt_of_lt_of_le hgp (min_sub (le_refl _) _ ![1, 2, 0, 4, 3, 5] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))) (Or.inl h2) (Or.inl h1)
    exact ⟨⟨![2, 1, 0], ![2, 1, 0], by decide, by decide⟩, hm.2.2.2.2.2.1, hm.2.2.2.2.2.2⟩
  · exact absurd ⟨Or.inl h1, Or.inl h2⟩ fP.2.2

/-- The labelling of the mesh: a distributed triple in general position can be named `X, Y, Z`
(a permutation of the three points, the outer vertices fixed) so that `Z ∈ int ABY` and
`X ∈ int BCY`: take `Y` the point whose empty fan triangle is `CAY`. Fixing the outer vertices
lets the mesh be used in the Type-III frame, where they cannot be relabelled cyclically. -/
theorem exists_mesh_labelling (A B C P Q R : Point) (hd : Distributed A B C P Q R)
    (hgp : 0 < minTriangleArea ![A, B, C, P, Q, R]) :
    ∃ σ : Equiv.Perm (Fin 3),
      InsideTriangle (![P, Q, R] (σ 2)) A B (![P, Q, R] (σ 1)) ∧
        InsideTriangle (![P, Q, R] (σ 0)) B C (![P, Q, R] (σ 1)) := by
  rcases hd.1 with h | h
  · exact labelling_ccw (inTri_pos h) hd hgp
  · have hp : 0 < sarea C B A := by have := inTri_pos h; linarith [sarea_cycle A C B, sarea_cycle C B A]
    obtain ⟨σ, h1, h2⟩ := labelling_ccw hp (distributed_rev hd)
      (lt_of_lt_of_le hgp (min_sub (le_refl _) _ ![2, 1, 0, 3, 4, 5] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp)))
    refine ⟨(Equiv.swap 0 2).trans σ, ?_, ?_⟩
    · simp only [Equiv.trans_apply, Equiv.swap_apply_right]
      rw [inside_swap, inside_rot, inside_rot] at h2
      rw [show (Equiv.swap (0 : Fin 3) 2) 1 = 1 from rfl]
      exact h2
    · simp only [Equiv.trans_apply, Equiv.swap_apply_left]
      rw [inside_swap, inside_rot, inside_rot] at h1
      rw [show (Equiv.swap (0 : Fin 3) 2) 1 = 1 from rfl]
      exact h1

/-- If `R` is below the diagonal and three points lie strictly inside `ACR` (`A = (0,0)`,
`C = (1,1)`), with all triangles of the six points of area at least `t`, then
`r_x - r_y = 2 area(ACR) ≥ (11 + 3√5)t` (at `t ≥ A₀`, `≥ (11 + 3√5)A₀ ≈ 0.97176`). -/
theorem fst_sub_snd_ge_of_three_inside (R P₁ P₂ P₃ : Point) (hR : R.2 < R.1)
    (h₁ : InsideTriangle P₁ (0, 0) R (1, 1)) (h₂ : InsideTriangle P₂ (0, 0) R (1, 1))
    (h₃ : InsideTriangle P₃ (0, 0) R (1, 1)) (t : ℝ)
    (hmin : t ≤ minTriangleArea ![(0, 0), R, (1, 1), P₁, P₂, P₃]) :
    (11 + 3 * Real.sqrt 5) * t ≤ R.1 - R.2 := by
  have := sixPointTriangularHullTheorem (0, 0) R (1, 1) P₁ P₂ P₃ h₁ h₂ h₃ t hmin
  have e : triangleArea (0, 0) R (1, 1) = (R.1 - R.2) / 2 := by
    rw [triangleArea_eq]; unfold sarea; simp
    linarith
  rw [e] at this; linarith

end Heilbronn.Nine.CornerFamilies
