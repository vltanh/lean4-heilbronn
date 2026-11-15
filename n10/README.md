# Ten-point Heilbronn problem: computer-assisted proof first

Target: H10 = A, where A is the unique real root of
`3456*A^3 - 1764*A^2 + 268*A - 9 = 0` (approximately 0.04653741958254177).

**The unrestricted upper bound is not yet proved.** This work starts from the
previous ten-point package: exact attainment, an unrestricted radius-1/2000
local theorem, and one complete asymmetric eight-boundary orientation chamber.
Those results are not a global proof. The n=9 theorem and files are unchanged.

Current priority is an exhaustive exact cover of all normalized ten-point
families, then independent verification. Hand-proof compression is deferred.
No Lean compilation or GitHub CI is part of this work.

## Acceptance gates

- C0: preserve and replay construction, local certificate, and existing chamber.
- C1: implement and audit exhaustive normalized global domains.
- C2: implement an exact unsigned-area checker; every unresolved box must fail closed.
- C3: complete every global root family, without assuming candidate symmetry or contacts.
- C4: independent replay and unrestricted theorem assembly.

Root families are N, C1, C2, adjacent-corner II, and three-corner III.
At initialization none is closed. A completed subchamber does not close its
parent family. All new receipts must state their own n=10 domains and thresholds.

This branch is based on main at 75eb8bcfd1eb971ab53b69e144064d6e9525971f,
after the n=9 PR merge. It deliberately uses the isolated `n10/` directory.
