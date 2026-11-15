# Independent continuous global checker

`independent_cover.cpp` is a separately implemented checker of the same five
normalized ten-point domains. It includes no primary-checker source or
generated data. The mathematical normalization is proved in
`GEOMETRY_AUDIT.md`; the algebraic local theorem remains a separately verified
input. A completed range is not a completed family unless its range or a
checked union of completed ranges covers every allowed anchor pattern.

## Deliberate implementation differences

| Component | Independent implementation |
| --- | --- |
| Grid compatibility | Enumerates rectangle corners explicitly and evaluates the signed shoelace determinant; stops when a corner reaches 46. |
| Free triples | Builds a symmetric pair-to-third-cell bitset table by visiting each unordered triple once. |
| Free-cell enumeration | Recursive depth-first extension of increasing cell lists; caches fixed-anchor intersections per pattern and reuses distinct recursion-depth buffers. |
| Fine interval scale | `22*2^19`, half the primary checker's original scale. |
| Interval contraction | Enumerates signed endpoint minima and maxima, derives absolute face bounds, and applies all six cuts for one triangle simultaneously before processing the next triangle. |
| Triangle ordering | Partially sorts the first sixteen midpoint determinants, reversing triangle-number ties; all remaining triangles are still checked. |
| Subdivision | Uses the last coordinate among equally wide intervals and visits the lower child first. |
| Candidate isolation | Finds a fresh dyadic bracket for g with denominator `2^40` by exact bisection on `[0,1/2]`. |
| Candidate enclosures | Uses separate interval operations for `1-3g+2g^2`, then rounds outward. |
| Square symmetries | Coordinate swap followed by independent x/y reflections. |
| Local correspondence | Solves the ten-by-ten bipartite matching problem by augmenting paths. |

The canonical anchor order and free-cell order are intentionally the same,
so family totals, per-pattern root counts, and enumeration-node counts can
be compared. Fine-box and local-leaf counts may differ. Neither implementation
restricts the real point coordinates to its endpoint lattice.

## Run commands

```sh
g++ -O3 -std=c++17 -Wall -Wextra -Wpedantic \
  n10/audit/independent_cover.cpp -o n10/bin/independent_cover_final
n10/bin/independent_cover_final III 0 1 n10/runs/independent_final_III.tsv
n10/bin/independent_cover_final C2 0 17903 n10/runs/independent_final_C2.tsv
```

The general command is

```text
independent_cover N|C1|C2|II|III [start stop] [receipt.tsv]
```

The half-open range `[start,stop)` refers to anchor patterns surviving the
coarse necessary tests. Without start and stop, the entire family is checked.
The TSV records family, index, canonical anchors, root count, enumeration
count, fine-box count, local-leaf count, deferred-root count, and certified-root
count for every processed pattern.

## Externally verified root lemmas

For family N only, `N10_ROOT_LEMMAS` can name the exact table
`n10/local_cover/root_lemmas.txt`. Its header binds the schema, grid size,
strict doubled-area threshold, row count, and certificate-manifest digest.
Every row contains the canonical pattern index, six anchor IDs and four
increasing free-cell IDs. Malformed headers, indices, duplicate rows,
nonincreasing free cells, truncated tables and extra data are rejected.

A root is counted as certified only when its pattern and all ten region IDs
match a listed lemma. The local scale is immaterial for this match: both
checkers' original grid boxes denote the same rational real rectangles.
This table is a mathematical dependency, not a proof by itself. The final
reproducibility entry point must independently replay every linked LP/local
certificate and check the table-to-manifest binding before accepting a
global run that uses it. The log declares the manifest digest and number
of lemmas loaded; each pattern and final range report a separate `certified`
count.

For the supplied twenty-seven verified lemmas, a complete final replay is:

```sh
N10_ROOT_LEMMAS=n10/local_cover/root_lemmas.txt \
INDEPENDENT_ROOT_BUDGET=2000 \
n10/bin/independent_cover_final N 0 835027 n10/runs/independent_final_N.tsv
```

The recorded run may instead use the disjoint ranges `[0,400000)` and
`[400000,835027)`, with exactly the same frozen source and lemma table.

## Failure and deferred-root semantics

The default per-root budget is one million fine boxes. It can be changed by
`INDEPENDENT_ROOT_BUDGET`. Exceeding the budget or reaching an undecided
minimum-width box normally aborts with exit code 2 and no range success.

For identifying a finite list of remaining roots, set
`INDEPENDENT_DEFERRED_ROOTS` to a TSV output path. A budget/minimum-width
failure then records the *whole original root*, including its pattern,
anchors and free-cell IDs, and continues enumeration. It does not accept
that root. Any such deferral forces a final `RANGE_INCOMPLETE` marker and
exit code 3, with no `RANGE_PASS` or `COMPLETE_PASS` marker. Arithmetic,
invariant, and output failures still abort immediately rather than being
classified as mathematical deferrals.

Example diagnostic run:

```sh
INDEPENDENT_ROOT_BUDGET=2000 \
INDEPENDENT_DEFERRED_ROOTS=n10/runs/independent_N_deferred.tsv \
n10/bin/independent_cover N 0 835027 n10/runs/independent_N_patterns.tsv
```

A deferred run becomes a proof only after every deferred original root has
an independently checked certificate and the full range inventory is
validated. The current checker deliberately makes no such inference from
the mere existence of certificate files.

## Soundness of the differences

Explicit corner enumeration gives the same necessary compatibility predicate
as the primary analytic corner maximum: a separately affine determinant
reaches its extreme absolute values at corners. The free-pair cache stores
this predicate, not an approximation. The recursive extension invariant is
that all selected triples pass and every remaining cell passes every triple
containing two already selected points.

Every coordinate cut follows from a face interpolation inequality on that
triangle's old box. Taking the intersection of its resulting coordinate
constraints is safe; applying the six cuts simultaneously retains every
point that meets that triangle's strict target. The next triangle works
on this reduced enclosing box. Running eight passes is only a work
heuristic; an unclosed box is subsequently subdivided and never accepted
because the pass limit was reached.

The first implementation used whole-round Jacobi updates and fully sorted
the triangles. Complete III and C2 pilots and a 1,000-pattern N pilot were
compared against the faster implementation. Canonical anchors, root counts
and enumeration counts agreed exactly, including every one of C2's 17,903
patterns. The final source and lemma-table parser were separately audited
after the performance changes. The earlier interrupted whole-round N runs
are diagnostics and must not be included as completed final ranges.

The dyadic root search has exact endpoint signs and uses the strict
monotonicity of the cubic below 1/2. The template coordinates are enclosing
intervals, and the local test requires every input interval to lie within
radius `1/2000` of every possible exact coordinate in its template interval.
A successful matching is a bijection, so the unrestricted local theorem
applies to all ten points simultaneously.

All machine arithmetic is integer. At the independent scale, every shoelace
product and three-term sum fits signed 64-bit integers. Bisection uses a
denominator at most `2^40` and numerators at most half that, so cubic terms
and partial sums fit signed 128-bit integers. Contraction products and
template numerator products are smaller than the corresponding conservative
bounds established for the original finer scale in `check_geometry_bounds.py`.
