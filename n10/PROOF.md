# The unrestricted ten-point Heilbronn theorem

This document assembles the exact computer-assisted proof. The current execution
status and acceptance receipts are recorded in `STATUS.md`; completion requires
the full primary and independent covers, the exact local inputs, and the finite
root certificates described below.

## Statement

For a configuration P of ten points in the closed unit square, let m(P) be the
least ordinary (unsigned) area of its 120 triangles, and let H10 be the maximum
of m(P) over all such configurations.

Let g be the unique real root of

    12 g^3 - 27 g^2 + 20 g - 4 = 0,

and put

    a = 1 - 3g + 2g^2,
    A = 5g^2/8 - g^3/2.

The theorem established by the completed certificate package is

    H10 = A = 0.04653741958254177... .

Equivalently A is the unique real root of

    3456 A^3 - 1764 A^2 + 268 A - 9 = 0.

Every maximizing configuration is, up to a symmetry of the square and
relabeling, the following ten-point configuration:

| Point | Coordinates |
|---|---|
| A | (0,a) |
| B | (a,0) |
| C | (1-g/2,0) |
| D | (1,g/2) |
| E | (1,1-a) |
| F | (1-a,1) |
| G | (g/2,1) |
| H | (0,1-g/2) |
| O | (g,g) |
| P | (1-g,1-g) |

The letter A denotes both the value and a point label in this table; context
distinguishes them.

## 1. Exact attainment and a strict local theorem

`seed/verify_n10.py` evaluates all 120 triangle areas in Q(g). Exactly sixteen
equal A and the other 104 are strictly greater. It also checks that all ten
points lie in the square. Thus H10 >= A > 0.

The same file verifies the data used in `seed/LOCAL_THEOREM.md`: positive
stress coefficients, 38 nonnegative dual certificates, the one-dimensional
neutral direction, and a strictly negative quadratic coefficient along it.
The resulting theorem applies to all twenty coordinates: a distinct feasible
configuration at coordinate sup-distance at most 1/2000 from this configuration
has a triangle of area strictly below A. Neither symmetry nor any boundary
contact is assumed for the perturbed configuration.

`audit/verify_seed_sympy.py` reconstructs these identities independently using
SymPy rational polynomial reduction. `audit/check_geometry_bounds.py` separately
checks rational root enclosures, the threshold comparisons, local inequalities,
and the integer-arithmetic bounds without importing the seed verifier.

## 2. Exhaustive geometric normalization

The maximum H10 exists because m is continuous on the compact space [0,1]^20.
Since H10 >= A > 0, a maximizing configuration has distinct points and no
collinear triple.

Every enclosing parallelogram of such a maximizer has area at least one:
otherwise its affine map onto the unit square would multiply every triangle
area by a factor greater than one. In particular the unit square is a
minimum-area enclosing parallelogram. Every side is contacted. Tilting a pair
of parallel supports shows that the contact intervals on opposite sides
overlap in projection. The one-sided derivative argument is written out in
`audit/GEOMETRY_AUDIT.md`.

If two opposite sides each have a singleton contact, their projection overlap
makes the contacts aligned. A determinant-one shear fixes those contacts,
preserves the other two side lines and all areas, and can be continued until
another boundary incidence is acquired. Each step preserves the previous
incidences. At most two points can lie on a side. Square symmetries and these
shears therefore place some maximizer in one of the following five domains.
Every unspecified point is allowed anywhere in the closed square.

| Family | Specified points | Restrictions | Free points |
|---|---|---|---:|
| N | (0,a),(0,h),(b,0),(c,0),(1,d),(f,1) | a<h, b<c, a<=d<=h, b<=f<=c | 4 |
| C1 | (0,0),(0,h),(c,0),(1,d),(f,1) | 0<=d<=h<=1, 0<=f<=c<=1 | 5 |
| C2 | (0,0),(1,1),(0,h),(c,0),(1,d),(f,1) | the same restrictions as C1 | 4 |
| II | (1,1),(0,1),(0,l),(b,0) | 0<=l,b<=1 | 6 |
| III | (0,0),(0,1),(1,1) | none | 7 |

The parameters a,b,c in this domain table are independent coordinates, not the
candidate parameters in the statement. Closure faces are included deliberately;
coincidences or collinear triples already give m(P)=0. Domains may overlap.
Their union is exhaustive; disjointness is not needed for an upper bound.

See `global/GLOBAL_COVER.md` and the independent geometry audit for the
individual corner cases and the shear endpoint argument.

## 3. A finite cover of continuous configurations

The initial square grid has 22 by 22 cells. The proof does not restrict points
to grid vertices: each cell represents a closed rectangle of real positions.
Two unspecified points in one cell would make a triangle of area at most 1/22
with any third point. Since both thresholds below exceed 1/22, unspecified
points may be assigned distinct cells and listed in increasing cell order.
This ordering only relabels the unspecified points.

For three coordinate rectangles, the maximum absolute doubled area is attained
at rectangle corners. In grid units it is an integer. A value at most 45 gives
ordinary area at most 45/(2*22^2), below both thresholds. The finite enumeration
therefore retains exactly the necessary compatibility test that each selected
triple has corner maximum at least 46. The fixed-contact and free-cell loops
enumerate every surviving root box. Cardinality pruning only removes prefixes
that have too few compatible extensions.

The ordinary-area thresholds are

    t_corner = 4653/100000,
    t_N = 4653741958254/100000000000000.

Both are strictly below A; the comparisons are checked in exact arithmetic.
The four corner families are excluded at t_corner. For N, every box is either
excluded at t_N or covered by the strict local theorem around a square symmetry
of the candidate, directly or through one of the finite root certificates.

## 4. Exact interval rejection and the 27 exceptional root lemmas

The primary checker uses integer coordinate endpoints at scale 22*2^20.
It bounds all 120 unsigned triangle areas by endpoint evaluation. Affine
interpolation between opposite-face bounds gives necessary coordinate bounds;
floor/ceiling rounding is outward. It bisects unresolved boxes into two closed
children. The children cover their parent, and both must be proved. Exhausting
a budget or reaching an unresolved minimum-width box is a failure.

The plain interval checker has difficulty entering the radius-1/2000 local
neighborhood near a stationary maximum. A full enumeration with explicit,
fail-closed deferral isolated 27 initial boxes, in anchor patterns 57964 and
269299. Each is independently proved by a finite exact affine-relaxation
certificate in `local_cover/certificates/`. All 27 are itemized in
`local_cover/LP_CERTIFICATES.md` and `local_cover/CASES.tsv`.

For a current coordinate box write 2X=c+w*u, with -1<=u_i<=1. For each triangle
determinant D, the homogeneous quadratic identity

    4D(X) = D(c) + gradient(D)(c) dot (w*u) + D(w*u)

is exact. Corner evaluation bounds the signed last term. A triangle whose
opposite sign cannot exceed the target gives a necessary affine inequality;
an ambiguous sign is skipped. Nonnegative integer combinations of these
inequalities provide either a strict contradiction on the cube or rigorous
coordinate bounds using the sum of the absolute residual coefficients.
No floating-point optimizer result is accepted without this exact check.

The 27 certificates contain 51 nodes: 12 splits, 34 exact infeasibility leaves,
and five local-theorem leaves. Their 2,500 coordinate-bound certificates are
checked with arbitrary-precision integer arithmetic. Their trees include both
children of every split and every child interval is reconstructed from its
parent. The standalone `audit/verify_lp_certificate.py` imports no numerical
solver or implementation from the generator.

`local_cover/root_lemmas.txt` is only the index joining these proved lemmas to
the finite enumeration. It is not itself a certificate. Its header binds the
grid, threshold, number of roots, and certificate-manifest hash; each key
contains the exact pattern number, six ordered anchors and four increasing
free-cell IDs. Acceptance of the full proof also requires replaying every
certificate and checking exact equality between this table and the verified
manifest. Arbitrary table entries cannot satisfy the acceptance gate.

## 5. Two complete global implementations

The primary cover is `global/global_cover_certified.cpp`. The independently
written cover under `audit/` uses explicit rectangle-vertex determinant
enumeration, recursive free-cell enumeration, a different fine endpoint scale,
different triangle ordering, independently isolated candidate coordinates and
bipartite matching for its local stopping rule. Their source and input hashes,
completed disjoint ranges, and per-pattern inventories are checked separately.

The two implementations must agree on every anchor pattern, root count and
discrete search count. Interval-tree sizes may differ because their arithmetic
scales and traversal orders differ. Both must leave zero unresolved roots.
The finite LP certificates have a second, unbounded-integer replay in addition
to the generator's own exact checks.

This is a computer-assisted proof, with a written geometric reduction and
replayable exact finite arithmetic. It is not a Lean-kernel formalization or
external peer review. No GitHub Actions computation is used.

## 6. Upper bound and equality

Take a maximizing configuration and normalize it as in Section 2. Each corner
family has minimum area at most t_corner<A, so the normalized maximizer lies in
N. The complete N cover gives minimum area at most A. Consequently H10<=A;
exact attainment gives H10=A.

For equality, the rational exclusion thresholds are strictly below A. Every
equality configuration must therefore reach a local-theorem leaf, including
the leaves inside an exceptional root certificate. Strictness of the local
theorem makes the normalized configuration exactly a symmetry and relabeling
of the candidate.

Finally reverse the normalization shears. If the last nonconstant shear had
ended at the candidate, its feasible segment would give distinct configurations
with the same value A arbitrarily close to the candidate. This contradicts the
strict unrestricted local theorem. Thus no nonconstant shear occurred. The
original maximizing configuration was already the candidate up to square
symmetry and relabeling. This proves the stated equality classification.
