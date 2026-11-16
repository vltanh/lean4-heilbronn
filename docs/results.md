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
the maximizer (`GlobalStructure.theorem3`) into one of five families and calls
one theorem per family or case:

| family or case | theorem | conclusion |
| --- | --- | --- |
| normalization | `GlobalStructure.theorem3` | a configuration with the same least area in N, C1, C2, Type II or Type III, optimal only if the original is |
| C2: two opposite corners | `OppositeCorners.corollary2_lt_A₀` | least area below `A₀` |
| Type III: three corners | `CornerFamilies.typeIII_lt_A₀` | below `A₀` |
| Type II: two adjacent corners | `UnbalancedFinalLowerWedge.typeII_exclusion` | below `A₀` |
| C1, no lower point | `C1ZeroLower.theorem4` | below `A₀` |
| C1, one lower point | `C1OneLowerMixedCaps.theorem2` | below `A₀` |
| C1, two lower points | `C1TwoLowerCompletion.theorem2` | below `A₀` |
| C1, three or more | `OneCorner.claim_C1_at_most_two_lower` | impossible |
| N, eight boundary points | `EightBoundary.theorem13` | at most `A₀`, with equality only at the construction |
| N, seven boundary points | `SevenBoundaryMixedAboveCompletion.theorem2_nConfig` | below `A₀` |
| N, six, the free points in the anchor hexagon | `SixBoundaryHull.theorem7` | impossible |
| N6-01: one point in a side cap | `SixBoundarySingleSide.n6_01` | impossible |
| N6-02: one in each side cap | `SixBoundaryTwoSideUpper.n6_02` | the construction |
| N6-03: one in the opposite cap | `SixBoundarySingleTop.theorem1` | below `4/73 < A₀` |
| N6-04: a side cap and the opposite cap | `SixBoundarySideOpposite.theorem1` | at most `A₀`, equality only at the construction |
| N6-05: three caps | `SixBoundaryThreeCaps.three_caps` | below `7/128 < A₀` |
| N6-06: two in the opposite cap | `SixBoundaryTwoTopCompletion.theorem1` | at most `A₀`, equality only at the construction |
| N6-07: a side cap and two in the opposite cap | `SixBoundarySideTwoTop.theorem1` | below `4/73` |
| N6-08: three in the opposite cap | `SixBoundaryOppositeCapCompletion.n6_08` | the construction |

The equality cases go through the sharp chambers (`Sharp/`), which all end with
the eleven-triangle chamber `HandProof.theorem1`; the transfer of equality back
through the normalizing shears uses strict local optimality,
`HandProof.theorem2`.

