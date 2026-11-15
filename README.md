# Heilbronn triangle problem — nine points

Research branch for the **unit-square nine-point Heilbronn problem**

\[
H_9=\max_{p_1,\ldots,p_9\in[0,1]^2}
\min_{i<j<k}\operatorname{Area}(p_i,p_j,p_k)
\]

with exact candidate

\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]

## What is available

- **Hand proof (partial):** [hand/HAND_PROOF.md](hand/HAND_PROOF.md) proves a sharp upper bound over an explicit asymmetric eight-boundary-point chamber, derives its equality geometry, and gives unrestricted qualitative local optimality at the candidate. It is **not an unrestricted hand proof**.
- **Exact computational proof draft:** [exact/PROOF.md](exact/PROOF.md) and [exact/STATUS.md](exact/STATUS.md) describe a claimed complete finite global cover over three families, with exact arithmetic checkers and previously recorded PASS runs. The mathematical/code argument is unreviewed and **not Lean-verified**.
- **Open research gates:** [ROADMAP.md](ROADMAP.md) and [HANDOFF.md](HANDOFF.md). The main hand-proof obstacle is the global Type-I structural classification (five boundary contacts, four free points).

## Quick local checks

```sh
python hand/check_identities.py            # SymPy diagnostics; not a global certificate
python exact/verify_local.py                # standard-library exact local theorem
cd exact
g++ -O3 -std=c++17 verify_global.cpp -o verify_global
./verify_global corners                    # complete Type II and III
./verify_global type1                      # full Type I; expensive
```

Check all three markers `TYPE3_COMPLETE_PASS`, `TYPE2_COMPLETE_PASS`, `TYPE1_COMPLETE_PASS`. A partial Type-I replay is **not** a global proof. Full requirements and missing archived journal are described in [exact/REPRODUCE.md](exact/REPRODUCE.md).

## Literature

- N. Sudermann-Merx, [*From Global Optimization to Exact Coordinates: Heilbronn's Triangle Problem on the Unit Square Using Mixed-Integer Nonlinear Optimization*](https://arxiv.org/abs/2603.11107), version 3, October 27, 2026 (three-family reduction, exact candidate).
- Comellas and Yebra (2002), the candidate construction.

No existing main-branch Lean proof was modified; this PR records mathematical and computational research first, with formalization as a later review gate.
