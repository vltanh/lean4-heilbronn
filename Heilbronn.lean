module

public import Heilbronn.Assembly.Main

/-!
# The Heilbronn triangle problem for nine points in the unit square

`H₉ = (9√65 - 55)/320`: every configuration of nine points in the closed unit square has three
points spanning a triangle of area at most `(9√65 - 55)/320`, some configuration attains it, and
the configurations that attain it are exactly the relabellings of the images of
`optimalConfiguration` under the eight symmetries of the square. The definitions are in
`Heilbronn/Geometry.lean`; `Challenge.lean` restates them with these theorems.
-/

@[expose] public section

noncomputable section
namespace Heilbronn

/-- **`H₉ = (9√65 - 55)/320`, attained.** The largest least triangle area of nine points in the
unit square is `(9√65 - 55)/320`. -/
theorem heilbronn_nine_isGreatest' :
    IsGreatest (minAreaValues 9) ((9 * Real.sqrt 65 - 55) / 320) :=
  heilbronn_nine_isGreatest

/-- **The Heilbronn number of nine points in the unit square.** -/
theorem heilbronn_nine : heilbronnNumber 9 = (9 * Real.sqrt 65 - 55) / 320 :=
  heilbronn_nine_isGreatest.csSup_eq

/-- **The optimal configurations.** Nine points in the unit square have least triangle area
`(9√65 - 55)/320` exactly when they are a relabelling of the image of the construction under a
symmetry of the square. -/
theorem heilbronn_nine_optimal (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare) :
    minTriangleArea P = (9 * Real.sqrt 65 - 55) / 320 ↔
      ∃ (g : SquareSymmetry) (σ : Equiv.Perm (Fin 9)),
        ∀ i, P (σ i) = g.apply (optimalConfiguration i) :=
  heilbronn_nine_equality P hP

end Heilbronn
