# Recovery of the unpublished computer-assisted n=11 package

A prior research session reported the following local artifacts:

- local branch: proof/n11-computer-assisted
- local commit: ba299fe5ad69327637747c9208de197c91cddfab
- archive: n11/work/n11-proof.tar.gz (2,653,071 bytes in that session)
- archive inventory: 846 entries, including n11/PROOF.md,
  n11/audit/verify_all.py and n11/runs/complete_acceptance.json
- reported final marker: N11_PROOF_PACKAGE_ACCEPTANCE_PASS H11=1/27

These are **provenance and recovery notes**, not independent verification of
artifacts in this branch. The old execution workspace is not available here;
neither the archive nor the referenced commit is present on the remote.

## Restoration checklist

- [ ] Restore the archive or original commit from the prior execution.
- [ ] Commit the full n11/ code, exact arithmetic certificates, and recorded
      run inventories (exclude transient binaries, caches and local work files).
- [ ] Replay python3 n11/audit/verify_all.py from the restored package.
- [ ] Recompute all global family searches using restored n11/REPRODUCE.md.
- [ ] Compare independent implementations, receipt hashes, all root patterns,
      geometric normalization and strict local theorem.
- [ ] Verify zero missing/unresolved cases and the exact threshold comparison.
- [ ] Submit the completed global proof to independent mathematical review.

n11/seed/verify_goldberg.py is independently reconstructed and executable
now. It only proves attainment, not the upper bound or uniqueness.
