# Heilbronn n=11 — recovery staging branch

**Status: partial. This branch does NOT contain the computer-assisted global proof and does NOT establish the upper bound H11 <= 1/27.**

The previous research session reported a complete exact-arithmetic package for H11 = 1/27 on local branch proof/n11-computer-assisted, commit ba299fe5ad69327637747c9208de197c91cddfab. The unpublished commit and its source archive were not present in the new execution environment, so it would be incorrect to present the global certificate as published in this PR.

## What is actually checked here

Run:

    python3 n11/seed/verify_goldberg.py

The script verifies in exact rational arithmetic that Goldberg's 11 rational points are in the closed unit square, that all 165 triangles have area at least 1/27, and that exactly 28 triangles attain that minimum. This proves the **lower bound** H11 >= 1/27 only. The coordinates are published at https://math.tejstead.com/heilbronn/square/11/points.txt.

## What is needed before this can become a proof PR

Recover the prior n11-proof.tar.gz archive or the unpublished local Git commit; incorporate the complete n11/ sources, exact certificates, execution manifests and independent acceptance checks; run the restored n11/audit/verify_all.py and full recomputation instructions; then replace this status with the actual verified global result.

See [RECOVERY.md](RECOVERY.md). **Do not merge until all global evidence is in Git and has been independently replayed.**
