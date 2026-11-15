# Heilbronn n=10: complete exact computer-assisted proof

The unrestricted ten-point upper bound and exact attainment are complete in
this proof package. Both independent global implementations have finished all
five normalized families with zero unresolved cases, and every per-pattern
inventory has been compared.

The result is

    H10 = A = 0.04653741958254177...,
    3456 A^3 - 1764 A^2 + 268 A - 9 = 0.

The equality argument classifies every maximizer up to square symmetries and
relabeling as the displayed attaining configuration. This is an exact
computer-assisted proof draft; it has not received external peer review and is
not a Lean-kernel formalization. All computation was local, with no CI.

## Start here

- [hand/ROADMAP.md](hand/ROADMAP.md): the active hand-proof checklist, including
  the completed U0, U1, U2 and U4 three-corner cases. The unrestricted hand proof
  remains open; the computational completion below does not check those boxes.
- [PROOF.md](PROOF.md): theorem, exhaustive reduction, proof assembly, equality.
- [STATUS.md](STATUS.md): completed gates and exact counts.
- [REPRODUCE.md](REPRODUCE.md): stored-package audit and both full recomputations.
- [audit/complete_receipt.json](audit/complete_receipt.json): successful final
  acceptance record, source/input hashes, and complete comparison totals.
- [local_cover/LP_CERTIFICATES.md](local_cover/LP_CERTIFICATES.md): all 27 difficult
  root cases and the exact inequalities closing them.

Run the stored-package acceptance check from the repository root:

```sh
python n10/audit/verify_complete.py
```

The final line is

```text
UNRESTRICTED_N10_COMPUTER_ASSISTED_PROOF_PASS patterns=888824 roots=49008609 root_lemmas=27 unresolved=0
```

That command replays the mathematical input certificates and validates all
stored execution evidence. REPRODUCE.md also gives the full C++ enumerations.

## Exhaustive closure

| Family | Anchor patterns | Continuous roots | Status |
|---|---:|---:|---|
| III | 1 | 12,172 | COMPLETE |
| II | 348 | 641,738 | COMPLETE |
| C2 | 17,903 | 58,494 | COMPLETE |
| C1 | 35,545 | 9,366,572 | COMPLETE |
| N | 835,027 | 38,929,633 | COMPLETE |
| **Total** | **888,824** | **49,008,609** | **Zero unresolved** |

The difficult part of N consists of 27 exact initial-root lemmas, in two anchor
patterns. Their complete certificates use 51 nodes, 34 exact infeasibility
leaves, five strict-local-theorem leaves, and 2,500 checked integer dual bounds.
The numerical solver proposes coefficients; a separate verifier using only
unbounded integer arithmetic checks the entire proof trees.

Hand-proof conversion is now active under `hand/`, with its own acceptance
rule and explicit open cases. Lean formalization remains a separate task.
This PR follows the requested computer-assisted-first order and adds only files
under `n10/`; the merged n=9 work is unchanged.
