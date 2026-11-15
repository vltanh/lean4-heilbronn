# Research handoff — November 14, 2026

## Scope and trust boundary

This repository records an **unreviewed computer-assisted proof draft** for Heilbronn's nine-point value and a **partial hand-proof conversion**. The hand proof is not unrestricted. The original full global computation was run earlier in the conversation, not independently rerun in this PR session. Neither work has been Lean-verified or externally peer-reviewed.

Target: \(H_9=(9\sqrt{65}-55)/320\). The construction is exact; the global proof draft combines the known three-family normalization, an exact local theorem and a finite real-box exclusion.

## Read in this order

1. [README.md](README.md) — scope and commands.
2. [hand/HAND_PROOF.md](hand/HAND_PROOF.md) — strongest handwritten mathematical advance.
3. [ROADMAP.md](ROADMAP.md) — completion gates, especially global Type I.
4. [exact/PROOF.md](exact/PROOF.md) — conditional assembly of computer-assisted proof.
5. [exact/STATUS.md](exact/STATUS.md) — full recorded ledger with trust limitations.

## What has been independently checked here

- Local exact arithmetic script: PASS.
- Printed hand-proof algebra diagnostic: PASS.
- C++ checker compiled; Type II and III corner cover replayed with PASS markers.
- Full 330,988-pattern Type-I computation **not rerun in this PR session**; recorded transcript and source are retained.

## Missing artifact

The original compressed *secondary per-pattern journal* (approximately 3.2 MB) was included in the earlier conversation's ZIP archive. The GitHub source tree includes the checker and compact completed receipts but **not** the binary compressed journal; it can be recreated using the scripts. See [exact/REPRODUCE.md](exact/REPRODUCE.md). Historical SHA256SUMS belongs to the original archive, not this differently arranged repository tree.

## Research direction

The main hand obstacle is converting all Type-I maximizers to a hand-controlled geometric family. The hand chamber argument handles eight boundary points and five orientation inequalities; nothing establishes that every Type-I optimizer has that form. Corner forms remain hand-open.

Do **not** merge under the description “complete hand proof” until the ledger and independent checks support that claim.
