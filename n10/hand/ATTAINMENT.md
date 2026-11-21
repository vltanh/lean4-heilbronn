# Exact attainment without a 120-entry certificate file

This closes HP01 and HP02. All areas below are ordinary areas, not doubled
areas. The optional symbolic checker is only a transcription check.

## 1. The algebraic parameter

Put f(x)=12x^3-27x^2+20x-4 and let

    l = 63/200 = 315/1000,     h = 79/250 = 316/1000.

Direct substitution gives

    f(l) = -8009/2000000 < 0,
    f(h) = 19859/7812500 > 0,
    f'(x) = 2(3x-2)(6x-5),
    f(2/3) = 8/9,     f(5/6) = 31/36.

Thus f has exactly one real zero g, and l<g<h. In particular
5/16<g<8/25<1/3. Define

    a = (1-g)(1-2g) = 1-3g+2g^2,
    A* = 5g^2/8-g^3/2 = (-3g^2+5g-1)/6 > 0.

The last equality follows from f(g)=0. For x=(-3g^2+5g-1)/6,

    3456x^3-1764x^2+268x-9
      = -f(g)(108g^3-297g^2+270g-89)/3 = 0.

This identifies the exact value; a decimal approximation is not a premise.

## 2. Configuration and its four symmetries

Use the following labels, keeping the point A distinct from the scalar A*.

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

The bounds on g and 0<a<1 put every point in the square. The two commuting
symmetries S(x,y)=(y,x) and R(x,y)=(1-x,1-y) act as

    S = (A B)(C H)(D G)(E F),       fixing O and P,
    R = (A E)(B F)(C G)(D H)(O P).

The group {1,S,R,SR} preserves unsigned area. It is the symmetry group used
in this calculation; we do not assume invariance under all square symmetries.

For an alphabetically written triple T=XYZ, let

    D_T = det(Y-X,Z-X)/2.

A superscript sign in the table means F_T=+D_T or F_T=-D_T. The displayed
identity F_T=A*+p_T(g)/24, and its positivity, justify that sign. No numerical
orientation test is needed.

## 3. Complete gap table

Every nonzero polynomial p in the table is monotone on [l,h]. The column e
is its minimizing endpoint: its linear derivative is positive throughout
[l,h] when e=l and negative throughout when e=h. The last column is the
positive integer 10^6 p(e). Consequently p(g)>0 in every nonzero row.

The multiplicity column counts all triangles in the indicated orbits.

| Signed representatives | Multiplicity | p(g)=24(F_T-A*) | e | 10^6 p(e) |
|---|---:|---|:---:|---:|
| ABC+ | 4 | 32g^2-46g+12 | h | 659392 |
| ABD+ | 4 | 50g^2-74g+20 | h | 1608800 |
| ABE+ | 4 | 70g^2-100g+28 | h | 3389920 |
| ABO+ | 2 | 53g^2-80g+20 | h | 12368 |
| ABP+ | 2 | 29g^2-40g+12 | h | 2255824 |
| ACD+ | 4 | 18g^2-28g+8 | h | 949408 |
| ACE+, ACG+ | 8 | 6g^2-18g+12 | h | 6911136 |
| ACF+ | 4 | 26g^2-44g+20 | h | 8692256 |
| ACH+, ADP+ | 8 | 8-10g | h | 4840000 |
| ACO+, CDO+ | 8 | 9g^2-14g+4 | h | 474704 |
| ACP+ | 4 | 9g^2-24g+12 | h | 5314704 |
| ADE+, ADH+ | 8 | -12g^2+10g+4 | l | 5959300 |
| ADG+ | 4 | -6g^2+2g+8 | h | 8032864 |
| AFG+ | 4 | -32g^2+36g-4 | l | 4164800 |
| AFO- | 4 | 41g^2-60g+16 | h | 1134096 |
| AGO- | 4 | -3g^2+6g | l | 1592325 |
| AGP-, CHP- | 6 | 21g^2-44g+16 | h | 4192976 |
| AHO- | 4 | -12g^2+20g-4 | l | 1109300 |
| AHP- | 4 | 12g^2-30g+12 | h | 3718272 |
| CDG+ | 4 | 6g^2-8g+4 | h | 2071136 |
| CGO+, COP- | 8 | 24g^2-50g+16 | h | 2596544 |
| CHO+ | 2 | 27g^2-56g+16 | h | 1000112 |
| ADO+, AEO-, AGH+, AOP+ | 16 | 0 | — | 0 |

Each determinant identity is obtained by substituting the displayed point
coordinates and replacing 12g^3 by 27g^2-20g+4. For example,

    2D_AGH = (g/2)(1-a-g/2),

which reduces to 2A*. The smallest endpoint margin in the table occurs for
ABO; even there p(h)=12368/10^6>0.

## 4. Why the table is exhaustive

The 32 representatives are partitioned by the number of interior labels.

With no O or P, the representatives are

    ABC ABD ABE ACD ACE ACF ACG ACH ADE ADG ADH AFG AGH CDG.

Their fourteen disjoint orbits have size four and exhaust the 56 triples
from the eight boundary labels. No nonidentity symmetry fixes a boundary
triple: each acts on the eight labels as a union of disjoint transpositions.

With one of O,P, the representatives are

    ABO ABP ACO ACP ADO ADP AEO AFO AGO AGP AHO AHP
    CDO CGO CHO CHP.

The orbits of ABO, ABP, CHO and CHP have size two; the other twelve have
size four. Applying the two displayed permutations verifies that they are
disjoint. Their sizes sum to 56=2*binomial(8,2), so they exhaust this class.

With both O and P, AOP and COP represent the two size-four orbits of the
remaining boundary label, accounting for the last eight triples.

Thus all 120 triangles occur. Exactly the four zero-gap orbits have area
A*, giving sixteen equalities; the other 104 areas are strictly larger.
The candidate therefore has minimum area exactly A*, and H10>=A*.

This is attainment only. No unrestricted upper bound is asserted here.
