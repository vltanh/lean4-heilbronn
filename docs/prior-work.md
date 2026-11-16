# Prior work

[Back to the README](../README.md)

Searched on 15 November 2026.

## The configuration and its value

- **Comellas and Yebra (2002).** F. Comellas and J. L. A. Yebra,
  [*New lower bounds for Heilbronn numbers*](https://doi.org/10.37236/1623),
  Electron. J. Combin. 9 (2002), R6. Simulated annealing followed by an analytic
  refinement to a local maximum gave new lower bounds for `n = 7, …, 10` and
  `n = 12` (the value `1/27` for `n = 11` is Goldberg's, 1972), among them the
  nine points of `Nine.optimalConfiguration`, with least area
  `(9√65 − 55)/320 ≈ 0.054876`. The authors state that they have no proof of
  optimality.
- **Chen, Xu and Zeng (2017).** L. Chen, Y. Xu and Z. Zeng,
  [*Searching approximate global optimal Heilbronn configurations of nine points in the unit square via GPGPU computing*](https://doi.org/10.1007/s10898-016-0453-1),
  J. Global Optim. 68 (2017), 147–167. A branch and bound over grid rectangles,
  on GPUs, bounds the optimum by `(9√65 − 55)/320 ≤ H₉ < 0.054878314`: an
  interval, not the exact value.
- **Monji, Modir and Kocuk (2025).** A. Monji, A. Modir and B. Kocuk,
  [*Solving the Heilbronn triangle problem using global optimization methods*](https://arxiv.org/abs/2512.14505),
  arXiv:2512.14505. Mixed-integer models in Gurobi give `H₉ ≈ 0.0548767`
  within solver tolerances, in about a day; the authors note that no
  analytical proof is known.
- **Sudermann-Merx (2026).** N. Sudermann-Merx,
  [*From Global Optimization to Exact Coordinates: Heilbronn's Triangle Problem on the Unit Square Using Mixed-Integer Nonlinear Optimization*](https://arxiv.org/abs/2603.11107),
  arXiv:2603.11107, version 3 (27 October 2026). Mixed-integer nonlinear
  optimization solves `n = 9` within the solver's floating-point tolerances in
  about eight minutes, and `n = 10` in under seven hours; exact coordinates of
  the configurations for `n ≤ 10`, verified in exact arithmetic, give lower
  bounds. The paper states that proofs of optimality are known for `n ≤ 8` but
  not for `n = 9` and `n = 10`. Its first version (11 March 2026) claimed a
  proof for `n = 9`, and later versions withdrew it; MathWorld's entry (updated
  14 November 2026) still lists `H₉` as proved by it.

None of these gives the exact value, and none claims that the optimal
configuration is unique.

## Other cases

Before `n = 9`, the Heilbronn numbers of the unit square were proved for
`n = 5` and `n = 6` by Yang, Zhang and Zeng (Chinese Ann. Math. Ser. A 13, 1992,
and earlier work of Yang and Zhang; later sources attribute `n = 6` differently,
and we could not check the originals), `n = 7` by
Zeng and Chen ([2011](https://doi.org/10.1007/978-3-642-21046-4_11)), through
226 nonlinear subproblems, and `n = 8` by Dehbi and Zeng
([2022](https://doi.org/10.1007/s11424-022-1220-7)), the last two
computer-assisted. For `n = 10` the best known value is still that of Comellas
and Yebra, `0.04653741958…`, the real root of `3456x³ − 1764x² + 268x − 9`,
optimal only within solver tolerances (Sudermann-Merx, version 3). Erich
Friedman's Packing Center tables are offline; Tej Stead's
[The Heilbronn Problem](https://math.tejstead.com/heilbronn/) now keeps the
records for `n ≤ 36` in the square, the triangle and convex regions, and lists
`n = 9, 10` as numerically optimal, not proved. AlphaEvolve (Google DeepMind,
2025) improved configurations in a triangle and in convex regions but none in
the unit square (Georgiev, Gómez-Serrano, Tao and Wagner,
[arXiv:2511.02864](https://arxiv.org/abs/2511.02864)). Related recent work
treats the unit triangle (Sudermann-Merx,
[arXiv:2607.15021](https://arxiv.org/abs/2607.15021), computational
optimality certificates for `n ≤ 8`) and the variational structure of the
problem (D. Trela,
[*KKT Stresses, Affine Moments, and Separator Flux in the Heilbronn Triangle Problem*](https://arxiv.org/abs/2609.25035),
2026), which makes no claim about `n = 9`.

## The proof here

The Lean proof is an exact argument with fixed rational certificates: an
exhaustive normalization of a maximizer into five families, geometric case
analysis, sharp continuous inequalities, and polynomial certificates checked by
Lean's kernel. It uses no optimizer, no floating-point bound and no theorem
from outside mathlib. For nine points in convex position, Zeng, Lu, Dehbi, Chen
and Wang ([2020](https://doi.org/10.1007/978-3-030-41258-6_23)) give a
computer-assisted inequality for convex nonagons; the proof here does not use
it.

## Formalizations

Tej Stead's [`heilbronn-convex-3-8`](https://palomar-registry.org/entry.html?id=PALOMAR-2026-09-02-000012&version=1)
(Lean 4, registered on Palomar on 2 September 2026) proves the Heilbronn
numbers and optimal configurations for `n = 3, …, 8` of a different problem,
points normalized by the area of their own convex hull, with no fixed
container. OpenAI's Lean proof of a lower bound `n^(−2+η)` in the unit square
([openai/math](https://github.com/openai/math/blob/main/lean/docs/191.md),
October 2026) and the statements of Erdős Problem 507 and Green's Problem 77 in
[formal-conjectures](https://github.com/google-deepmind/formal-conjectures/blob/main/FormalConjectures/ErdosProblems/507.lean)
concern the asymptotics. We found no formalization of a Heilbronn number of
the unit square, and none of any nine-point Heilbronn number, in Lean,
Isabelle, Coq, HOL Light, Mizar or Metamath.
