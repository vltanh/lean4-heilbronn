# N6 single-opposite regeneration checkpoint

The final proof model and complete 893-cell cover are in
`../hand/check_six_boundary_single_top.py`; its geometric manuscript is
`../hand/SIX_BOUNDARY_SINGLE_TOP.md`. The coefficient file is atomically
saved after each exact rational expression. The authoritative status is
its `complete` field and exact verifier, not a discovery log.

The commit 145a301 subject rounded its checkpoint count prematurely:
that snapshot contains 573 covered cells and 359 exact expressions.
The later full table supersedes this partial snapshot.

Run `python research/search_six_boundary_single_top.py` to resume from
the last fixed coefficient file. Numerical discovery is not a proof premise.

The completed table now has 616 cubics, 89,897 positive terms and all
893 cells covered. Its standard-library exact verifier passes. A separate
SymPy reconstruction independently passed all 616 expansions and 893
reuse applications; its script is `audit_n6_single_top_sympy.py`. The
complete N6-03 row is now closed in the case ledger.
