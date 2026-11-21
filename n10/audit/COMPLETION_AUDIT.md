# Completed independent verification

The stored package passes `verify_complete.py` with all five normalized
families covered, **888,824 anchor patterns**, **49,008,609 continuous root
boxes**, **27 independently verified root lemmas**, and **zero unresolved
regions**. Together with the normalization proof and exact attainment, this
establishes the unrestricted computer-assisted equality

`H10 = A`, where `3456*A^3 - 1764*A^2 + 268*A - 9 = 0`

and A is the unique real root.

This is an exact computer-assisted proof. It is not a Lean-kernel verification
or a completed hand-proof conversion.

## One command for the stored proof package

From the repository root:

```
python n10/audit/verify_complete.py
```

Python and SymPy are required. No C++ compiler, NumPy, SciPy, numerical optimizer,
network access, or CI run is required for this command. The output is written
to `n10/audit/complete_receipt.json` only after every gate passes.

This command checks stored receipts of the completed global runs. Recomputing
the global enumeration itself requires compiling and running the two C++
checkers, as documented in the project reproduction instructions. The distinction
is explicit in the final receipt.

The acceptance command performs these checks:

1. Reconstructs exact attainment and the unrestricted local theorem with the
   original rational field verifier and the independent SymPy verifier.
2. Rechecks the actual global thresholds, grid cutoffs, local constants, and
   integer-overflow bounds.
3. Replays every LP proof tree with the independent, standard-library-only,
   arbitrary-integer verifier; no saved PASS assertion is trusted.
4. Verifies exact equality of the externally inventoried root keys, certificate
   manifest, and C++ root-lemma lookup table, including their hashes and counts.
5. Verifies successful exit records, final range markers, consistent totals,
   disjoint complete range coverage, and dependency hashes for both frozen
   global checker sources.
6. Reads the compressed per-pattern receipts and checks every row's domain,
   counters, zero-deferred status, and exact root-lemma invocation count.
7. Compares the two implementations on every pattern: index, ordered anchor
   IDs, root count, enumeration count, and root-lemma count must agree.
8. Re-runs the adversarial proof-checker tests.

## Complete family inventory

| Family | Anchor patterns | Continuous root boxes | Enumeration nodes | External root lemmas |
|---|---:|---:|---:|---:|
| III | 1 | 12,172 | 19,430,909 | 0 |
| II | 348 | 641,738 | 229,409,076 | 0 |
| C2 | 17,903 | 58,494 | 10,382,270 | 0 |
| C1 | 35,545 | 9,366,572 | 1,107,173,588 | 0 |
| N | 835,027 | 38,929,633 | 1,246,854,794 | 27 |
| **Total** | **888,824** | **49,008,609** | **2,613,250,637** | **27** |

The primary and independent implementations agree on every listed count and
every individual pattern. Their interval-node counts can differ because they
use different endpoint scales, triangle orders, contraction passes, split
orders, and matching algorithms.

## Why the finite root lemmas are exact

The 27 difficult roots are ordinary M=22 coarse boxes already encountered by
both exhaustive enumerators. Their six anchor IDs and four ordered free-cell
IDs are recorded exactly; the lookup also includes the eligible pattern index.
No neighboring root, approximate match, or symmetry assumption is accepted by
the lookup. The lookup table is an external proved-lemma input, analogous to
the separately proved local theorem. Its contents are never sufficient alone:
the final acceptance command replays every associated proof.

For an integer-coordinate box `[l,h]`, put `c=l+h`, `w=h-l`, and
`u=(2*x-c)/w` for nonfixed coordinates. Then `u` lies in `[-1,1]^20`. For a
signed doubled triangle determinant D,

`4 D(x) = D(c) + grad(D)(c) . (w*u) + D(w*u)`.

The last term has an exact upper bound R obtained at the vertices of the
centered rectangle. Exact corner minima and maxima determine whether a
competitive triangle orientation is possible. If both are possible, the
relaxation omits that triangle instead of assuming a sign. If neither is
possible, the entire box is rejected.

For a retained sign, the expansion gives a necessary affine inequality
`A_i . u <= b_i`. Every coefficient is regenerated from the current box during
independent replay. Numerical optimization is used only to propose integer
weights W; all accepted weights must be nonnegative and all following
calculations use unbounded integers.

For rejection, let `B=sum W_i*b_i` and `L=sum W_i*A_i`. Since
`L.u >= -sum |L_j|`, the strict inequality

`B + sum |L_j| < 0`

contradicts every point of the box. This is an exact Farkas certificate.

For coordinate contraction in direction `q=+e_j` or `q=-e_j`, let K be a
positive integer and `r=K*q+L`. Then

`q.u >= (-B-sum |r_j|)/K`.

The residual term makes the certificate exact even when the proposed weights
came from floating-point optimization. Lower endpoints are rounded down and
upper endpoints up, preserving every feasible real point. All coordinate
proposals in one step use the same pre-update box.

Each proof tree covers its root by closed binary splits. Every terminal box
is rejected by an exact area bound, an exact dual contradiction, an empty
interval, or the independently verified unrestricted local theorem. Missing
children, reused nodes, gaps between parent and child boxes, and unresolved
leaves are rejected. The 27 completed trees have 51 nodes, 12 splits, 34 dual
contradiction leaves, and 5 local-theorem leaves, with 2,500 exact coordinate
bounds in 115 contraction rounds.

## Source and artifact identities

The primary and independent run manifests are
`n10/runs/primary/manifest.json` and `n10/runs/independent/manifest.json`.
They bind their source files, run logs, compressed per-pattern receipts, local
theorem and dual data, LP certificates, and checker dependencies to SHA-256
identities. The final audit checks these identities against the actual files.

The two independently reconstructed global implementations share the
mathematical normalization and the proved local/finite-root lemmas. They do
not share executable enumeration or interval-checking code. The LP lemmas are
also independently checked without importing the generator or its numerical
libraries. These are explicit shared mathematical inputs, not unverified
numeric assumptions.

The LP and range-accounting test suites each contain 15 adversarial tests.
Both suites passed normally and under `python -O`; all proof-critical checks
remain enabled in optimized Python mode.
