module

public import Heilbronn.Common.Optimum
public import Heilbronn.Nine.Uniqueness

/-!
# Heilbronn's triangle problem in the unit square

The root module: it imports every case. The Heilbronn number `H_n` of the unit square is the
largest least triangle area of `n` points in the closed unit square (`Heilbronn/Geometry.lean`).
Each case proves one `Optimum n` (`Heilbronn/Common/Optimum.lean`), and from it three theorems,
which its Palomar entry `Palomar/<Case>/Challenge.lean` states:

* **Nine points** (`Heilbronn/Nine/Uniqueness.lean`): `Nine.optimal_value`, the largest least
  triangle area of nine points in the square is attained and equals `(9√65 - 55)/320`;
  `Nine.heilbronn_number`, `H₉ = (9√65 - 55)/320`; `Nine.optimal_configurations`, the
  configurations that attain it are exactly those congruent to `Nine.optimalConfiguration`, the
  configuration of Comellas and Yebra.
-/
