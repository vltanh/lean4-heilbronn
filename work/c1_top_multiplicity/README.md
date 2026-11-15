# Optional certificate discovery and independent audit

The authoritative proof and exact data are in `../../hand/C1_ONE_LOWER_TOP_MULTIPLICITY.md` and its linked checker/data.

Run the standard-library proof verifier from the repository root:

```sh
python hand/check_c1_one_lower_top_multiplicity.py
```

The separate SymPy implementation reconstructs the affine factors, determinants, containment costs, and every certificate coefficient, using no polynomial arithmetic from the supplied checker:

```sh
python work/c1_top_multiplicity/audit_sympy.py
```

Numerical rediscovery is optional and is not a proof premise. It requires NumPy, SciPy/HiGHS, and the local exact model adapter. Starting without previous mode output files:

```sh
python work/c1_top_multiplicity/discover.py
python work/c1_top_multiplicity/split.py convex_two three_top
```

The first pass writes a separate discovery JSON for each of the three modes. The second splits the few unresolved actual pair-line signs exhaustively. Each discovered sum is rounded to rational coefficients and immediately checked by exact fraction expansion; an unsuccessful LP or failed rationalization is never accepted. The fixed final data in `hand/` have already passed the exact verifier and independent symbolic expansion.

Local discovery JSON and log files are intermediate records and are not required to verify the proof.
