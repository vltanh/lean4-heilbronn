# Results

[Back to the README](../README.md)

## The main theorems

Every case proves three theorems, which its Palomar entry (`Palomar/<Case>/`)
states. For nine points, `Heilbronn/Nine/Uniqueness.lean`, namespace
`Heilbronn.Nine`:

```lean
theorem optimal_value : IsGreatest (minAreaValues 9) ((9 * Real.sqrt 65 - 55) / 320)

theorem heilbronn_number : heilbronnNumber 9 = (9 * Real.sqrt 65 - 55) / 320

theorem optimal_configurations (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare) :
    minTriangleArea P = (9 * Real.sqrt 65 - 55) / 320 ↔ Congruent P optimalConfiguration
```

- `optimal_value`: some configuration of nine points in the square has least
  triangle area `(9√65 − 55)/320`, and none has more.
- `heilbronn_number`: the Heilbronn number `H₉`, the supremum, is that value.
- `optimal_configurations`: a configuration in the square attains the value
  exactly when it is congruent to the configuration of Comellas and Yebra:
  after relabelling, its image under one of the eight symmetries of the square.

## The optimum of a case

`Heilbronn/Common/Optimum.lean`:

```lean
structure Optimum (n : ℕ) where
  value : ℝ
  models : Set (Fin n → Point)
  model_mem : ∀ M ∈ models, ∀ i, M i ∈ unitSquare
  model_value : ∀ M ∈ models, minTriangleArea M = value
  nonempty : models.Nonempty
  uniqueness : ∀ P : Fin n → Point, (∀ i, P i ∈ unitSquare) →
    (∀ Q : Fin n → Point, (∀ i, Q i ∈ unitSquare) → minTriangleArea Q ≤ minTriangleArea P) →
    value ≤ minTriangleArea P → ∃ M ∈ models, Congruent P M
```

A case proves its `Optimum`: models that lie in the square and attain the value
(`Construction.lean`), and the uniqueness of the maximizers whose least area is
at least the value (`Uniqueness.lean`). Since a maximizer exists by compactness
(`exists_maximizer`), `Optimum.isGreatest`, `Optimum.heilbronnNumber_eq` and
`Optimum.iff` give the three theorems of every case.

## Nine points

`Heilbronn/Nine/Uniqueness.lean`:

```lean
theorem maximizer_congruent (P : Fin 9 → Point) (hP : IsMaximizer P)
    (hA : (9 * Real.sqrt 65 - 55) / 320 ≤ minTriangleArea P) : IsOptimal P

def optimum : Optimum 9
```

`IsOptimal P` is `Congruent P optimalConfiguration`.

`maximizer_congruent` is the whole proof. It normalizes
the maximizer (`GlobalStructure.normalize`) into one of five families and calls
one theorem per family or case:

| family or case | theorem | conclusion |
| --- | --- | --- |
| normalization | `GlobalStructure.normalize` | a configuration with the same least area in N, C1, C2, Type II or Type III, optimal only if the original is |
| C2: two opposite corners | `OppositeCorners.minTriangleArea_c2Config_lt_A₀` | least area below `A₀` |
| Type III: three corners | `CornerFamilies.typeIII_lt_A₀` | below `A₀` |
| Type II: two adjacent corners | `UnbalancedFinalLowerWedge.typeII_exclusion` | below `A₀` |
| C1, no lower point | `C1ZeroLower.lowerCount_eq_zero_false` | below `A₀` |
| C1, one lower point | `C1OneLowerMixedCaps.lowerCount_eq_one_false` | below `A₀` |
| C1, two lower points | `C1TwoLowerCompletion.lowerCount_eq_two_false` | below `A₀` |
| C1, three or more | `OneCorner.c1_ncard_inside_OHC_le_two` | impossible |
| N, eight boundary points | `EightBoundary.minTriangleArea_le_A₀_of_eight_boundary` | at most `A₀`, with equality only at the construction |
| N, seven boundary points | `SevenBoundaryMixedAboveCompletion.minTriangleArea_nConfig_lt_A₀` | below `A₀` |
| N, six, the free points in the anchor hexagon | `SixBoundaryHull.false_of_all_inHexagon` | impossible |
| one point in a side cap | `SixBoundarySingleSide.singleSide_false_of_A₀_le` | impossible |
| one in each side cap | `SixBoundaryTwoSideUpper.twoSide_isOptimal_of_A₀_le` | the construction |
| one in the opposite cap | `SixBoundarySingleTop.singleTop_lt` | below `4/73 < A₀` |
| a side cap and the opposite cap | `SixBoundarySideOpposite.sideOpposite_le_A₀` | at most `A₀`, equality only at the construction |
| three caps | `SixBoundaryThreeCaps.three_caps` | below `7/128 < A₀` |
| two in the opposite cap | `SixBoundaryTwoTopCompletion.twoTop_le_A₀` | at most `A₀`, equality only at the construction |
| a side cap and two in the opposite cap | `SixBoundarySideTwoTop.sideTwoTop_lt` | below `4/73` |
| three in the opposite cap | `SixBoundaryOppositeCapCompletion.oppositeCap_isOptimal_of_A₀_le` | the construction |

The equality cases go through the sharp chambers (`Sharp/`), which all end with
the eleven-triangle chamber `Chamber.chamber_le`; the transfer of equality back
through the normalizing shears uses strict local optimality,
`Chamber.strict_local_max`.

