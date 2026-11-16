# Independent audit: the complete N single opposite-cap theorem

This audit covers the continuation package
`hand/SIX_BOUNDARY_SINGLE_TOP_COMPLETION.md`, its polynomial kernel,
its Fraction verifier, and its fixed coefficient data. It is distinct
from the independently developed upstream `SIX_BOUNDARY_SINGLE_TOP.md`.
The audit was completed on November 15, 2026.

## Geometric review

The theorem gives the strict ordinary-area bound `79/1440` throughout
both parent rows **N6-03-L0** and **N6-03-L1**. The review found no
missing orientation or continuous parameter region.

Transposition preserves the single opposite cap and permits `f <= d`.
It does not additionally empty either lower placement: all 19 lower
words remain in the cover. The nine actual points form the heptagon
`A,B,C,D,X,F,H` and its two interior points. Under the positive-area
contradiction hypothesis, collinear actual triples are excluded.

Every affine factor was checked against actual anchor triangles or a
cited container theorem. In particular, `a,b >= 1/8` follow from the
two lower anchor ears; they imply the stronger interior coordinate
and cap-gap bounds. The three additional lower-point factors follow
from `CHP`, `AHP`, and `BCP`, without treating the virtual origin as
an actual point. The mixed-row bounds `hc,h,c >= 7/11` follow from
the endpoint-triangle theorem. The ear upper bounds, lower occupancy
bound, quadrilateral area costs, and two-interior-point containment
costs have their required hypotheses.

The supporting-angle radial words, their orientation convention, and
the forced upper-pair signs were checked directly. The latter use
the central-pair and mixed-pair theorems at a valid threshold. The
four actual-line subdivisions retain both possible signs. Every
coordinate division includes both closed children, so equality at
a rational cut is covered. Certificate reuse demands the same
determinant and sign for every used cost and a target lower bound
at least as strong as the source bound; no unused source sign is
silently imposed on a target cell.

## Independent exact reconstruction

The standalone script
`research/audit_six_boundary_single_top_sympy.py` reads only the
coefficient JSON. It imports neither the supplied checker nor its
polynomial kernel or discovery code. It separately reconstructs the
words, every exclusion, assigned signs, containment costs, affine
factors, cost-reuse assignments, and full coordinate paths. It then
expands all determinants and weighted sums in a SymPy polynomial
ring over exact rational numbers.

| Quantity | Independent result |
|---|---:|
| Consistent heptagon words | 57 |
| Anchor-interior words | 52: 19 lower, 33 upper |
| Base cases | 884: 615 mixed, 269 upper |
| Signed cells | 890: 621 mixed, 269 upper |
| Final cells | 897: 628 mixed, 269 upper |
| Rational certificates | 542 |
| Positive rational terms | 86,610 |
| Affine layouts | 519 base, 10 lower, 13 strong |
| Coefficient denominator | 4,096 throughout |

The enumeration independently reproduced the full pruning census:

| Row | Initial pairs | After ears | After sectors | After signs |
|---|---:|---:|---:|---:|
| Mixed | 627 | 615 | 615 | 615 |
| Upper | 561 | 360 | 307 | 269 |

All 542 exact expansions had degree at most three and cube upper
bound at most `-3/4`. Their largest bound was exactly

\[
-\frac{53009858789}{53888417792}<-\frac34.
\]

The script verified all 887 direct certificate assignments and all
ten leaves of the three stored tree records. It verified that every
signed cell and every certificate is used. The case-457 tree has
one unsplit leaf, so only two signed cells actually require coordinate
division.

## Reproduction and input identity

From the repository root, run:

```bash
python hand/check_six_boundary_single_top_completion.py
python research/audit_six_boundary_single_top_sympy.py
```

The first command uses only standard-library rational arithmetic.
The independent command requires SymPy; this audit used Python
3.12.14 and SymPy 1.14.0. The independent command completed
successfully with the exact census and bound above.

| Audited input | SHA-256 |
|---|---|
| `hand/SIX_BOUNDARY_SINGLE_TOP_COMPLETION.md` | `d132c01b2a7ee58f9618d19cd9cb76f1e0235dc861f2a5786e05e593a7444a51` |
| `hand/single_top_polynomials.py` | `c74bec963c8ddca68b3e48ca8462a68308ec2be417d38bb090b3881ba8bf2db9` |
| `hand/check_six_boundary_single_top_completion.py` | `f28f7c5a30546fcce14009649cdaedf08875eb6900c2b4d273447a1bcc2a28f4` |
| `hand/six_boundary_single_top_completion_certificates.json` | `003c8f9b2f99ffd69ffd55a55230f657217cd9c5fd4b27e0b36f651971c577ef` |

This establishes the independent finite-cover and algebraic checks
reported here. It relies on the previously proved geometric container
theorems cited in the manuscript; it is not Lean verification or an
external peer review. No CI was used.
