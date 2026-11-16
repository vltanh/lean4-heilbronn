# Verification

[Back to the README](../README.md)

```sh
lake exe cache get
lake build
lake env lean AxiomAudit.lean
lake env lean SanityChecks.lean
scripts/verify-comparator.sh
```

Needs Elan and network access for mathlib. Lean and mathlib are at
`v4.36.0-rc2`, a release candidate whose toolchain ships `lake comparator`,
which the Palomar registry uses. Every proof is complete and rests on
`propext`, `Classical.choice` and `Quot.sound` alone.

- `lake build` must succeed without warnings; an unfinished proof would show as
  `declaration uses 'sorry'`. Most of the library's 411 modules are kernel checks
  of certificate chunks. A full build of the library, with mathlib from the
  cache, takes about 35 minutes with twelve threads (about 5 hours of
  single-core time; the slowest modules take two to three minutes each).
  Lake builds as many modules at once as there are cores, and Palomar's build
  does not limit it, so every module must fit its share of the memory. The
  kernel keeps every intermediate value of a check until the check ends, so
  `tree_decide` (`Heilbronn/Common/Cover.lean`) checks a certificate tree one
  subtree of at most 400 terms at a time: the tree modules need at most
  2.6 GB, most under 1 GB, and the largest module, the single 676-term
  certificate of `Nine/EightBoundary/CertR6.lean`, 3.6 GB. A full build
  running twelve modules at a time peaked at 10 GB in all.
- Every `#print axioms` line in the audit must read
  `[propext, Classical.choice, Quot.sound]`: an unproved lemma would add
  `sorryAx`, and `native_decide`, which trusts the compiler,
  `Lean.ofReduceBool`. The audit covers the main theorems, the generic
  `Optimum`, the three certificate checkers and, for nine points, the
  construction, the normalization and every family theorem that
  `maximizer_congruent` calls.
- `SanityChecks.lean` must elaborate without errors. It checks the tables of
  optimal values and configurations, with their placeholders for other `n`; that
  `p₀` is a root of `20x² − 15x + 2`; that the nine points lie in the square and
  attain the value, with a decimal bracket; that the construction is congruent
  to itself under the reflection in the anti-diagonal; that the symmetries of the
  square keep it and every triangle area; two triangle areas; that a repeated
  point gives least area `0`; and the headline value of `H₉`.
- `scripts/verify-comparator.sh` (Linux, bubblewrap) checks the library against
  the Challenge of every case, `Palomar/<Case>/Challenge.lean`, as Palomar does,
  and must end each case with `Your solution is okay!`; `scripts/verify-comparator.sh Nine`
  checks one. It first checks that every Challenge restates the definitions of
  `Heilbronn/Geometry.lean` word for word, all of them and in order, since Lean
  names the auxiliary proofs inside a definition after the first definition in
  the file that needs them (with `--write` it copies them, so only
  `Geometry.lean` is edited). Then `lake comparator` builds both modules in a
  sandbox, checks that the case's three theorems (for nine points
  `Nine.optimal_value`, `Nine.heilbronn_number` and `Nine.optimal_configurations`)
  have the same statements over identical definitions and use only the three
  standard axioms, and replays the proofs through Lean's kernel and the
  toolchain's NanoDa kernel, which must both accept. Then, as Palomar does, the
  con-ron kernel replays the same export with two workers for at most 30
  minutes. That replay is advisory: Palomar records a capacity limit (memory or
  time) as a warning and only a rejection as a failure, and so does the script.
  The certificates make the replays long. For nine points the export holds
  45,152 declarations (1.2 GB); Lean's kernel replays it in about 2 h 10 min on
  one core and 1.6 GB, NanoDa in about 30 minutes and 2 GB, and con-ron with
  two workers accepts it in 1 h 50 min and 23 GB, so its 30-minute replay
  declines with a warning, in Palomar and here.

[`.github/workflows/lean.yml`](../.github/workflows/lean.yml) runs the build,
the axiom audit (of every declaration under `Heilbronn`) and the sanity checks
on every push to `main` and on pull requests, checks that every Challenge
restates `Geometry.lean` (`scripts/verify-comparator.sh --definitions-only`)
and elaborates, and leaves the kernel replays to the preflight.
[`.github/workflows/palomar.yml`](../.github/workflows/palomar.yml), run by
hand for one case, runs Palomar's own mechanical verification of a commit
without submitting it; its report must say `status: pass`. Every case is a
separate Palomar entry, with its `comparator.json` and `formalization.yaml` in
`Palomar/<Case>/`.

## Certificates

Most exclusions end with a certificate: affine factors and area costs that are
nonnegative in the case at hand, and positive integer weights on products of
them whose sum is negative on the unit cube, so the case is impossible. The
weighted products are rows `w i₁ … iₘ` in `Heilbronn/Nine/Data/`, a weight and the factors
it multiplies, read by the `term_rows%` elaborators of `Heilbronn/Common/DataReader.lean` as raw literals.
`Cert.check` (`Heilbronn/Common/Certificate.lean`) expands the sum with integer
arithmetic and bounds it on the cube by its constant coefficient plus its
positive nonconstant coefficients; `decide +kernel` evaluates the check in the
kernel, and `check_sound` turns it into the real inequality.
`bernsteinBoxCheck` bounds a polynomial on a box by its Bernstein coefficients,
and `Cover.checkTree` glues the certificates of a case split. `tree_decide`
proves `checkTree σ fs T = true` by one auxiliary theorem `of_decide_eq_true rfl`
for each subtree of at most 400 certificate terms, which only the kernel checks,
one after another, and glues them with the branch counts of the splits. No
proof uses `native_decide`. The data files hold 434,402 rows in all. They were
computed outside Lean and are not trusted: the kernel rechecks every row.

## Building

The library and the Challenges use Lean's module system, which Palomar
requires: every file begins with `module`, imports with `public import` and
puts its declarations in an `@[expose] public section`, so that they and the
bodies of its definitions stay visible to the files that import it.
`AxiomAudit.lean` and `SanityChecks.lean` are modules too, which import the
library.

Build from the committed `lake-manifest.json`, which pins every dependency by
hash, and keep mathlib on its release tag `v4.36.0-rc2`, the one that matches
the toolchain: after verifying a submission, Palomar renders the Challenge
with Verso's release for the same toolchain and merges Verso's Lake manifest
into this one, which fails if a package that both pin has two different
revisions.

**Trusted base:** Lean, Lake, mathlib. `√65` enters through mathlib's
`Real.sqrt` and the exact identity `√65² = 65`, with rational brackets proved by
`norm_num`.
