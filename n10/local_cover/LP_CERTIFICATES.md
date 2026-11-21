# Exact affine-relaxation certificates for the 27 deferred roots

This package proves the complete continuous boxes for the 27 roots listed in
`manifest.json`. These are the roots left by the N-family interval cover at
its declared 2,000-node per-root budget. A budget exhaustion is not accepted
as a proof: each entire original root is proved again here, independently of
the partially traversed interval tree.

| Eligible N pattern | Roots | Certificate nodes | Farkas leaves | Local leaves | Splits |
|---|---:|---:|---:|---:|---:|
| 57,964 | 14 | 26 | 17 | 3 | 6 |
| 269,299 | 13 | 25 | 17 | 2 | 6 |
| Total | 27 | 51 | 34 | 5 | 12 |

The 115 affine-contraction rounds contain 2,500 exact dual bound certificates.
No LP feasibility result, floating-point tolerance, or optimizer status is an
acceptance condition. Numerical LP solves propose integer dual coefficients;
the inequalities below verify every accepted result using exact arithmetic.

## 1. Continuous root boxes and signed determinants

All box endpoints are integers at the same scale as the global checker,
`S = 22 * 2^20 = 23,068,672`. Coordinates remain real throughout. A physical
point in the unit square has scaled coordinates in `[0,S]^2`.

Let `D(x)` be a triangle's signed doubled determinant in scaled coordinates.
The N-family competitive condition is

```
abs(D(x)) > T,
T = num*S^2/den,
num = 4,653,741,958,254,
den = 50,000,000,000,000.
```

Thus the ordinary-area threshold is `num/(2*den)`, the same `tN` used by the
global cover. Its strict inequality below the attaining value is checked in
the seed audit.

For each triangle and current box, enumerate all 64 assignments of the six
coordinate endpoints. Multi-affinity gives its exact signed minimum `m` and
maximum `M`. If both `den*M <= num*S^2` and `-den*m <= num*S^2`, the entire
box has a small triangle and is closed. If only one of the two competitive
signs is possible, use that sign `s` in the following necessary inequality.
If both signs are possible, omit this triangle's affine row. Omitting a row
enlarges the relaxation and cannot exclude a feasible configuration.

## 2. A rigorously valid affine relaxation

For box endpoints `l,h`, write

```
c = l+h,
w = h-l,
x = (c+w*u)/2,       -1 <= u_i <= 1.
```

Products and division are coordinatewise. If `w_i=0`, the corresponding
coordinate is fixed; its auxiliary `u_i` is irrelevant.

The determinant is a homogeneous quadratic polynomial, so its exact expansion
is

```
4*D(x) = D(c) + grad(D)(c) dot (w*u) + D(w*u).
```

Compute `R` as the maximum of `s*D(z)` over `-w <= z <= w`, again by exact
corner enumeration. Therefore

```
4*s*D(x) <= s*D(c) + s*grad(D)(c) dot (w*u) + R.
```

Every competitive configuration consequently satisfies the affine inequality

```
a dot u <= b,
a_i = -den*s*partial_i(D)(c)*w_i,
b = den*(s*D(c)+R) - 4*num*S^2.
```

All coefficients are integers. Replacing the strict necessary inequality by
a weak one only enlarges the admissible set. Rows with `b >= sum(abs(a_i))`
are redundant on `[-1,1]^20` and may be omitted.

## 3. Exact Farkas leaves

Suppose the regenerated rows are `a_j dot u <= b_j`. For any recorded
nonnegative integer weights `W_j`, put

```
v = sum_j W_j*a_j,
B = sum_j W_j*b_j.
```

A feasible point would satisfy `v dot u <= B` and
`v dot u >= -sum_i abs(v_i)`. Hence the exact integer inequality

```
B + sum_i abs(v_i) < 0
```

is a contradiction. This is the full acceptance test for a Farkas leaf.
The weights need not satisfy any floating-point stationarity equation.

## 4. Exact coordinate contractions

For an objective `q = e_k` or `q = -e_k`, let `K` be the recorded positive
integer and use any recorded nonnegative integer weights. Define

```
r = K*q + sum_j W_j*a_j,
L = -sum_j W_j*b_j - sum_i abs(r_i).
```

For every feasible point,

```
K*(q dot u) = r dot u - sum_j W_j*(a_j dot u) >= L.
```

For `q=e_k`, this gives the safe new lower endpoint

```
floor((K*(l_k+h_k) + (h_k-l_k)*L)/(2*K)).
```

For `q=-e_k`, it gives the safe new upper endpoint

```
ceil((K*(l_k+h_k) - (h_k-l_k)*L)/(2*K)).
```

The lower endpoint is rounded down and the upper endpoint up. This direction
is essential because the coordinates are continuous. All changes in one
contraction round are derived from the same pre-update box. The verifier
reconstructs every row, weighted sum, residual, and rounded endpoint before
accepting the updated box. An empty updated box is a contradiction.

## 5. Splits and local leaves

Every split replaces one current interval `[l_k,h_k]` by the two closed
intervals `[l_k,m]` and `[m,h_k]`, with `l_k < m < h_k`. Both child records
must be present and verified. The certificate verifier rejects missing,
duplicate, cyclic, or unreachable records.

A local leaf supplies a square symmetry and a bijective assignment of the
ten point rectangles to the ten candidate points. Exact rational candidate
enclosures are generated from the cubic-root bracket in the seed package.
Every coordinate of every rectangle must lie wholly within `1/2000` of its
assigned algebraic candidate coordinate. The independently checked
unrestricted local theorem then gives minimum triangle area at most `A10`.
No boundary-preserving perturbation or candidate symmetry is assumed for
the points in these boxes.

Consequently each complete root certificate proves the required alternative:
every configuration in its entire root has a triangle of area at most `tN`,
or is covered by the unrestricted local theorem. In either case its minimum
triangle area is at most `A10`.

## 6. Discovery, replay, and global assembly

`lp_cover.py` implements numerical discovery followed by exact verification.
`prove_deferred.py` runs it on an explicit finite root inventory. The checked-in
JSON certificates are the resulting proof data; replay does not rerun the
optimizer.

`../audit/verify_lp_certificate.py` is a separately written verifier using
only Python's standard library and arbitrary-precision integers. It does not
import the discovery implementation, NumPy, or a numerical solver. It rebuilds
the root rectangles, signed corner bounds, affine inequalities, dual bounds,
local candidate enclosures, and full tree coverage.

From the repository root, independently replay the complete inventory with:

```sh
python n10/audit/verify_lp_certificate.py n10/local_cover/certificates/*.json \
  --roots n10/runs/deferred_N_0_100000.roots \
  --roots n10/runs/deferred_N_200000_300000.roots \
  --require-all --output /tmp/n10-lp-replay.json
```

For the global proof, separately verify the N-family exhaustive enumeration,
its successful ordinary interval leaves, the exact list of deferred original
roots, and equality of that list with the verified certificate root keys.
The two lists are compared using all anchor IDs and all free-cell IDs, not
only an informal family label or a node count. The manifest records each
certificate's SHA-256 digest; a digest binds a file's identity, while the
integer replay supplies its mathematical verification.

The full global conclusion depends on both parts. This package alone proves
exactly its 27 listed roots and does not claim exhaustive N-family enumeration.

## 7. Failure checks

All proof-critical checks in the discovery implementation use always-on
exceptions, and replay was repeated under `python -O`. Deliberately changing
an endpoint, making a dual weight negative, or deleting a child certificate
caused rejection. The receipt is `replay_checks.json`. These negative tests
supplement the mathematical argument and the separate exact verifier.

## 8. Itemized root ledger

The machine-readable ledger is `CASES.tsv`. Free-cell IDs refer to the fixed
22-by-22 indexing `cell = 22*x + y`; anchor IDs and file hashes are also
recorded in the TSV and manifest.

| Pattern | Free-cell IDs | Nodes | Farkas leaves | Local leaves | Splits |
|---|---|---:|---:|---:|---:|
| 57964 | 146, 314, 417, 480 | 1 | 1 | 0 | 0 |
| 57964 | 146, 315, 417, 480 | 1 | 1 | 0 | 0 |
| 57964 | 146, 336, 417, 480 | 1 | 1 | 0 | 0 |
| 57964 | 147, 314, 417, 480 | 1 | 1 | 0 | 0 |
| 57964 | 147, 315, 417, 480 | 1 | 1 | 0 | 0 |
| 57964 | 147, 336, 417, 480 | 11 | 3 | 3 | 5 |
| 57964 | 147, 337, 417, 480 | 1 | 1 | 0 | 0 |
| 57964 | 168, 314, 417, 480 | 1 | 1 | 0 | 0 |
| 57964 | 168, 315, 417, 480 | 3 | 2 | 0 | 1 |
| 57964 | 168, 336, 417, 480 | 1 | 1 | 0 | 0 |
| 57964 | 168, 337, 417, 480 | 1 | 1 | 0 | 0 |
| 57964 | 169, 315, 417, 480 | 1 | 1 | 0 | 0 |
| 57964 | 169, 336, 417, 480 | 1 | 1 | 0 | 0 |
| 57964 | 169, 337, 417, 480 | 1 | 1 | 0 | 0 |
| 269299 | 87, 138, 322, 465 | 1 | 1 | 0 | 0 |
| 269299 | 87, 138, 323, 465 | 1 | 1 | 0 | 0 |
| 269299 | 87, 138, 344, 465 | 1 | 1 | 0 | 0 |
| 269299 | 87, 138, 345, 465 | 11 | 4 | 2 | 5 |
| 269299 | 87, 139, 322, 465 | 1 | 1 | 0 | 0 |
| 269299 | 87, 139, 323, 465 | 1 | 1 | 0 | 0 |
| 269299 | 87, 139, 345, 465 | 1 | 1 | 0 | 0 |
| 269299 | 87, 160, 322, 465 | 1 | 1 | 0 | 0 |
| 269299 | 87, 160, 344, 465 | 1 | 1 | 0 | 0 |
| 269299 | 87, 160, 345, 465 | 1 | 1 | 0 | 0 |
| 269299 | 87, 161, 322, 465 | 3 | 2 | 0 | 1 |
| 269299 | 87, 161, 323, 465 | 1 | 1 | 0 | 0 |
| 269299 | 87, 161, 344, 465 | 1 | 1 | 0 | 0 |
