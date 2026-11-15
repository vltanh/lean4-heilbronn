# Nine-point Heilbronn: hand-proof conversion package

Start with **HAND_PROOF.md**.

## What is proved

* A sharp hand upper bound for the whole ten-variable asymmetric family with
  two points on each square side and the explicitly stated five orientation
  conditions on the ninth point. Symmetry is a conclusion at equality, not an
  assumption.
* Strict local optimality against arbitrary eighteen-coordinate perturbations,
  via an explicit positive stress and elementary kernel elimination. The local
  radius in this hand argument is qualitative.
* Exact attainment, with all 84 triangle areas listed in a hand-checkable table.

## What is not proved here

This is **not a complete hand proof for arbitrary nine points**. The original
three-family geometric normalization has not been strengthened to force every
competitive maximizer into the new sharp boundary family. The Type-II and
Type-III corner exclusions and the remaining Type-I classification are still
computer-assisted in the preceding package.

The older explicit local radius 1/200 is not re-established by the qualitative
local proof here. Do not insert an unspecified local radius into the old global
cover and claim that it continues to cover every local leaf.

## Files

* `HAND_PROOF.md`: new written proofs, precise scope, and exact attainment table.
* `BOUNDARY_REDUCTION.md`: existing hand argument for the three global families.
* `check_identities.py`: optional exact symbolic check of the printed algebra;
  requires SymPy. The written proofs do not rely on running it.
* `identity_check.txt`: the completed diagnostic output.

Run the optional algebra diagnostic with:

    python check_identities.py

No exhaustive search, interval subdivision, numerical optimizer, or external
solver is used in these new written proofs. Symbolic calculation was used to
discover and cross-check identities; all identities needed for hand verification
are displayed in the manuscript.
