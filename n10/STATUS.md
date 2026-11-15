# Ten-point proof status

The complete primary exact cover now passes. Independent global replay and
final cross-checking are in progress. The exact candidate and the
radius-1/2000 unrestricted local theorem have been replayed successfully.
All five exhaustive normalized families pass the primary checker with no
unresolved boxes. The independent arithmetic replay of all difficult-root
certificates also passes.

| Family | Domain | Status | Anchor patterns | Continuous roots | Unresolved |
|---|---|---|---:|---:|---:|
| III | Three occupied corners | COMPLETE | 1 | 12,172 | 0 |
| C2 | Two opposite occupied corners | COMPLETE | 17,903 | 58,494 | 0 |
| II | Adjacent occupied corners after shear | COMPLETE | 348 | 641,738 | 0 |
| C1 | One occupied corner | COMPLETE | 35,545 | 9,366,572 | 0 |
| N | No occupied corner, normalized support contacts | PRIMARY COMPLETE | 835,027 | 38,929,633 | 0 |

The completed families are bounded by 4653/100000, strictly below the candidate
value A. Every one of their continuous roots was excluded at its first interval
node; no local theorem, fixed orientation, or candidate symmetry was assumed.
Their raw logs and source hash are in `runs/initial_completion.json`.
The N cover uses 27 exact root lemmas in two anchor patterns. Their 51-node
proof trees contain 34 exact infeasibility leaves and five strict-local-theorem
leaves, with 2,500 exact dual bounds. All 27 have passed a second verifier using
unbounded integers and no numerical solver.

Independent geometric and exact-field audits have passed. A separately written
global checker is completing the same full enumeration, after which every
per-pattern inventory and all receipt hashes will be compared. The completion
claim remains gated on that replay and the final assembly check. A run that
reaches its work budget or leaves any box unresolved cannot close its family.

All computation is local. No CI or Lean compilation is used. The merged n=9
files are unchanged.
