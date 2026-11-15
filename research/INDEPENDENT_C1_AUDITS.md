# Independent polynomial audits of the recovered C1 packages

These optional SymPy diagnostics independently reconstruct the geometry's
radial words, factor lists, signed determinant costs, actual-triangle
containment thresholds, and certificate reuse conditions. They do not
import the published Fraction polynomial engine or either published
verifier. The manuscripts supply the proofs that each premise holds.

Both diagnostics were run successfully on the recovered packages after
the workspace rollback. The certificate values match those checked before
the rollback.

| Package | Reconstructed cover | Exact expressions | Positive terms | Greatest exact cube upper bound |
|---|---|---:|---:|---|
| C1_ONE_LOWER_CONVEX_TOP | 57 words; 5 lower, 33 upper and 10 cap placements; 157+50 initial pairs; 168+52 terminal cells | 155 | 25,184 | −3448691771523/3500729749504 |
| C1_ONE_LOWER_RIGHT_TOP_TRIANGLE | 57 words; 5 lower and 5 cap placements; all 25 pairs | 15 | 1,211 | −707476541255103311/712957274349465600 |

From the repository root, run:

```sh
python research/audit_c1_one_lower_convex_top_sympy.py
python research/audit_c1_one_lower_right_top_triangle_sympy.py
```

The independent geometry review also checked the common coordinate
bounds and the complete region filters. These diagnostics are additional
audits; the standard-library proof verifiers remain the primary exact
verification entry points linked by the manuscripts.
