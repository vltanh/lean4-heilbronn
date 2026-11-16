# Independent audit of the contributed N6 lower side/top branch

`audit_n6_side_top_lower_sympy.py` independently reconstructs the
coefficient package in `hand/SIX_BOUNDARY_SIDE_TOP_LOWER.md`.
It imports neither that package's polynomial module nor the published
Fraction polynomial engine.

The audit passed with all 18 necessary lower-point radial words,
27 affine factors, 87 signed and containment area costs, and 3,830
positive weighted terms. Each certificate uses exactly the doubled
threshold 7/64. The greatest exact monomial cube upper bound is

\[
-\frac{23130263717261}{23439247147008}<-\frac34.
\]

The independent mathematical review also checked the occupied-cap
coordinate bounds, the two projection identities for the lower point,
the five-point endpoint cost, both empty ears, and the exhaustive
18-word region filter. The proof package is a stronger lower-branch
result compatible with the complete N6-04 theorem in
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`.

The optional SymPy audit can be rerun from the repository root:

```sh
python research/audit_n6_side_top_lower_sympy.py
```
