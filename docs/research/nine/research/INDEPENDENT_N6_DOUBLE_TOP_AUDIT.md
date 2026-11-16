# Independent audit of the complete N6 double-top package

On November 15, 2026, the complete coefficient package for **N6-06-L0
and N6-06-L1** passed a separate SymPy reconstruction of its algebra and
finite cover. The audit is reproducible with
[audit_n6_double_top_sympy.py](audit_n6_double_top_sympy.py).

The audit script imports neither
`hand/check_six_boundary_double_top_completion.py` nor
`hand/double_top_polynomials.py`. It reconstructs the geometry from the
coordinate lists in
[SIX_BOUNDARY_DOUBLE_TOP_COMPLETION.md](../../../proof/nine/SIX_BOUNDARY_DOUBLE_TOP_COMPLETION.md),
using shoelace determinants in a SymPy polynomial ring over the rationals.
The fixed coefficient file supplies record metadata and positive weights.
No optimizer is used.

## Checked coverage and algebra

The independent implementation generates radial words by backtracking
through reversed-chord consistency, reconstructs all known triangle signs,
and derives containment upgrades only when all three oriented edge tests
are known. It reconstructs every affine-factor prefix, quadratic cost,
threshold, sharp obstruction, and rational coordinate condition. Every
certificate is expanded separately in SymPy, and its exact cube upper
bound is compared with the fixed recorded rational number.

| Checked quantity | Convex cap hull | Triangular cap hull |
|---|---:|---:|
| Necessary radial types | 94 words | 260 ordered word pairs |
| Signed cells | 94 words | 265 |
| Whole-cell certificates | 92 | 210 |
| Additional sign-cell certificates | — | 7 |
| Coordinate-tree certificates | 3 | 10 |
| Sharp-chamber obstruction certificates | 7 | — |
| Total fixed certificates | **102** | **227** |
| Positive rational terms | **24,786** | **31,772** |

The convex cover excludes 92 entire words and all three closed children
of word 66. For word 31 it verifies the seven obstruction inequalities
that force the E/F high chamber. It independently checks all eleven
oriented triangle signs needed in the subsequent sharp theorem.

For the triangular cover, the independent script splits exactly the
three prescribed pairs into both possible actual-line signs, reconstructs
the four prescribed coordinate trees, and checks both children at every
nonterminal cut. The trees have respectively one, four, four, and one
leaves. It verifies every permitted reuse by comparing the used determinant,
sign, and lower bound with the target cell's independently reconstructed
costs. The complete cover has **271 final triangular cells**.

All **329 certificates and 56,558 positive terms** passed. The largest
exact cube upper bounds were

\[
\begin{array}{ll}
\text{convex:}&-\dfrac{1055113337}{1073741824},\\[2mm]
\text{triangular:}&-\dfrac{264270775}{268435456}.
\end{array}
\]

Both are strictly below \(-3/4\), matching the proof package.
The audit additionally checked the cap determinant formulas, anchor and
projection identities, cap-area and upper-quadrilateral expressions,
the rational comparisons behind the affine gaps, and the three rational
thresholds below \(2A_0\).

## Reproduction

From the repository root:

```sh
python research/audit_n6_double_top_sympy.py
```

The audit ran with Python **3.12.14** and SymPy **1.14.0**. Its final output
was:

```text
PASS independent N6-06 audit: all 329 certificates, 56,558 positive terms
PASS independently reconstructed determinants, factors, signs, containment costs,
     complete coordinate trees, reused costs, and eleven sharp-chamber signs
Largest exact cube upper bound: -1055113337/1073741824
```

The original standard-library verifier remains the main proof checker.
This audit provides an independent algebraic implementation and a separate
cover reconstruction. Its geometric premises are the previously proved
triangle, container, and sharp-chamber theorems cited in the manuscript;
no Lean compilation or CI was used.

## Audited inputs

| File | SHA-256 at audit |
|---|---|
| `hand/SIX_BOUNDARY_DOUBLE_TOP_COMPLETION.md` | `eeeb559e94b8854bb112cb676bf3d6888282446768e1f54ebdf98e9cd8c4c4c0` |
| `hand/double_top_polynomials.py` | `4332e80c8736b2785d398536cdc850dcf168f25c3814bc80867423502b06b929` |
| `hand/check_six_boundary_double_top_completion.py` | `4f2248f4249327140e82d4d8ddf7bca39003ef8e317d6349d57cd6c78f460f33` |
| `hand/six_boundary_double_top_certificates.json` | `729ce83fa0b8dbbb54c2b00fd4775ff7171eba63352c03a01c957ebe0c63fef4` |
