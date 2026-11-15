module

public import Heilbronn.TypeII.TypeIICompletion.Capacity
public import Heilbronn.TypeII.TypeIICompletion.Balanced
public import Heilbronn.TypeII.TypeIICompletion.ParameterBound
public import Heilbronn.TypeII.TypeIICompletion.Sectors
public import Heilbronn.TypeII.TypeIICompletion.Assembly
public import Heilbronn.TypeII.TypeIICompletion.Unbalanced

/-! # Type-II completion: capacity and the complete balanced-row exclusion
(`hand/TYPE_II_COMPLETION.md`)

The note strengthens global triangle capacity to containers with an arbitrary third vertex
(Theorem 1, used by the C1 notes), gives the interval formulation of Type II (Corollary 2) and
the enclosing-parallelogram consequence (Corollary 3), excludes the entire balanced count row
`(2,2,2)` (Theorem 11, with `TYPE_II_BALANCED.md`, `BALANCED_RIGHT_MIXED.md` and
`BALANCED_BOTTOM_INNER_SECTOR.md`), and excludes the triangular-right branch of the unbalanced row
`(1,2,3)` (Theorem 14). The remaining nontriangular branch is `UNBALANCED_*.md` (other group).

Primary route: Theorems 11 and 12–14 (cited by `UNBALANCED_FINAL_LOWER_WEDGE.md` Theorem 2),
Theorem 1 (C1 notes), Lemma 7 (`C1_TOP_CAP_OF_SPLIT.md`, at a general threshold), Theorem 13 and
the §14 map (`UNBALANCED_RADIAL_SPLIT.md` Corollary 3). Off-route: Corollary 2, Corollary 3, (5)
and (42).

Modules (namespace `Heilbronn.TypeIICompletion`):

* `Capacity` (§§1–3): `theorem1`, `intervalI`, `eq2`, `corollary2`, `eq3`, `corollary3`,
  `corollary3_parallelogram`;
* `Balanced` (§§4–6): `FinalPlacement`, `eq5`, `lemma4`, `corollary5`, `theorem6`;
* `ParameterBound` (§§6.3–7): `Zroot`, `claim_LP_identities`, `eq15`, `eq19` (the steps of
  §§6.3–6.4 reused by Lemma 7), `lemma7` (general threshold), `eq25`;
* `Sectors` (§§8–10): `secondShear`, `claim_second_shear`, `theorem8`,
  `claim_containing_triangles`, `theorem9`, `claim_one_sided`, `theorem10`;
* `Assembly` (§11): `theorem11`;
* `Unbalanced` (§§12–14): `UnbalancedTriRight`, `theorem12`, `claim_sector_ledger`, `eq42`,
  `theorem13`, `supportMap`, `claim_support_map`, `eq53`, `theorem14`.

Thresholds (the manuscript's threshold mixing): Theorems 1, 6, 11, 12, 14 and Corollaries 2, 3,
5 are at least area `A₀`, as stated; Lemma 4 and Theorems 9, 10 hold at doubled threshold `7/64`
given their placements; Theorem 8 is stated at `A₀` (FLAG: its proof uses
`TYPE_II_BALANCED.md` §6 at `79/720` and the Type-III exclusion); Lemma 7 at a general threshold.
-/
