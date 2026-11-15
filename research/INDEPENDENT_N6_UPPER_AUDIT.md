# Independent symbolic audit of N6-04-L0

The upper side-cap plus opposite-cap certificate package passed an
independent SymPy reconstruction on 2026-11-15.

Run:

```sh
python research/audit_n6_side_top_upper_sympy.py
```

The audit imports no production checker or polynomial helper. It transcribes
the 27 common affine factors and nine possible additional branch factors
from the manuscripts, constructs all 84 signed determinants as symbolic
3-by-3 matrix determinants, and independently enumerates the 79 upper
radial words. It then reconstructs all containment costs and all 87 cost
lists, keeping geometric budgets at 7/64 when an actual-triangle threshold
is strengthened.

All **87 certificates**, containing **18,308 positive terms**, passed.
The expansions contain **9,556 nonzero rational coefficients** in total.
Every independently computed cube upper bound equals the stored value
and is at most −3/4. The largest is

\[
-\frac{353712019499}{360072609792}.
\]

The audit also checks the exact 76 whole-word, two split-branch, and nine
sharp-obstruction cover; the exhaustive closed split at y = a; all three
rational thresholds below 2A0; and all eleven oriented triangle signs in
each sharp B/D and D/F coordinate map.

The data file audited is
`hand/six_boundary_side_top_upper_certificates.json`.

| Receipt | SHA-256 |
|---|---|
| Original coefficient data | `2b02814ddd97c127177fda224f31ab12bd436ff4cad5444ce9c90ed3e0b87717` |
| Independently expanded coefficients | `c4aa92d9d58f76e0f64ad60fa733511b723102242983b1ed7d3c609ee603bad4` |

The run used SymPy 1.14.0. This is an independent symbolic implementation
within this repository, supplementing the earlier conceptual geometry and
coverage review; it is not an external audit or a Lean kernel check.
