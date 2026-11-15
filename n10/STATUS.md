# Ten-point proof status

The unrestricted upper bound is not yet complete. The exact candidate and the
radius-1/2000 unrestricted local theorem have been replayed successfully.
Four of the five exhaustive normalized families now pass the exact global
checker with no unresolved boxes.

| Family | Domain | Status | Anchor patterns | Continuous roots | Unresolved |
|---|---|---|---:|---:|---:|
| III | Three occupied corners | COMPLETE | 1 | 12,172 | 0 |
| C2 | Two opposite occupied corners | COMPLETE | 17,903 | 58,494 | 0 |
| II | Adjacent occupied corners after shear | COMPLETE | 348 | 641,738 | 0 |
| C1 | One occupied corner | COMPLETE | 35,545 | 9,366,572 | 0 |
| N | No occupied corner, normalized support contacts | Running | — | — | Unknown |

The completed families are bounded by 4653/100000, strictly below the candidate
value A. Every one of their continuous roots was excluded at its first interval
node; no local theorem, fixed orientation, or candidate symmetry was assumed.
Their raw logs and source hash are in `runs/initial_completion.json`.
The remaining N family has exactly 835,027 eligible anchor patterns; its
complete cover is still running.

Independent geometric, field-arithmetic, interval-checker and run-accounting
audits are in progress. Passing these four families is not a claim of a complete
unrestricted theorem. A run that reaches its work budget or leaves any box
unresolved cannot close its family.

All computation is local. No CI or Lean compilation is used. The merged n=9
files are unchanged.
