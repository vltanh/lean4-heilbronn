# Equivalent cached enumeration and per-pattern receipts

`global_cover_fast.cpp` retains the domains, thresholds, continuous interval
contractor, subdivision rule, and local acceptance of `global_cover.cpp`.
The default enumeration also retains the baseline loops. Two optional
environment variables add accounting and an equivalent acceleration.

## Pattern receipts

Set `PATTERN_RECEIPT=path.tsv` to record a row after every completed eligible
anchor pattern. The columns are `pattern`, `anchors`, `possible_cells`,
`roots`, `search`, `bb`, `local`, and `status`. Counts in a row are per-pattern
increments. `anchors` is the ordered comma-separated list of anchor IDs.
The receipt is flushed after each row. An interrupted or failed run never
receives a completed row for its unfinished pattern.

The fourth optional positional argument retains the baseline root-journal
format: the eligible pattern index, its anchor IDs, `|`, and the increasing
free-cell IDs. A root-journal entry is written **before** proving that root,
so a journal on its own is not a proof of completion. Its matching successful
range marker and completed-pattern receipt are required.

## Free-cell triple cache

Set `FREE_TRIPLE_CACHE=1` to precompute the Boolean predicate

```
G[a,b,c] = (mxdet(cells[a], cells[b], cells[c]) >= 46)
```

for all distinct grid-cell triples. There are `binomial(484,3) = 18,779,684`
unordered triples. A bitset indexed by the first two IDs stores allowed third
IDs. All six permutations receive the same predicate value; equal IDs remain
false. The bitset table occupies `484*484*8*8 = 14,992,384` bytes.

When extending an increasing cell prefix by `v`, the baseline tests
`G[path[j],v,w]` separately for every previous cell `path[j]` and every proposed
extension `w`. The cached version intersects those bitsets first, then tests
membership. These are the same Boolean conjunctions, in the same increasing
extension order. Thus it visits the same enumeration nodes and produces the
same root boxes. No geometric inequality or additional pruning assumption is
introduced. The cache can be disabled to replay the original evaluation.

## Reproduction

Compile locally:

```sh
g++ -std=c++17 -O3 -Wno-narrowing n10/global/global_cover_fast.cpp -o /tmp/n10-cover
```

For a cached complete run with per-pattern receipts:

```sh
FREE_TRIPLE_CACHE=1 PATTERN_RECEIPT=/tmp/n10-III.tsv /tmp/n10-cover III 0 1 /tmp/n10-III.roots
```

The run must finish with the ordinary `III_COMPLETE_PASS` marker. Neither a
nonempty receipt nor a large node count substitutes for the completion gate.

During development, the full III root journals with the cache enabled and
disabled agreed byte for byte: 12,172 roots, 19,430,909 enumeration nodes,
12,172 continuous nodes, and no local leaves. The instrumented, uncached C2
run also agreed with the original source: 17,903 eligible patterns, 58,494
roots, 10,382,270 enumeration nodes, and 58,494 continuous nodes. These checks
test the acceleration's equivalence; they are not a separate implementation
of the geometric checker.
