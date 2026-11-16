# Exact scalar bounds for actual triangle areas

This note gives finite arithmetic rules for strengthening bounds on
actual triangle areas. It supplies no new geometric assumption and
does not assert that any configuration family has been exhausted.
Each application must separately provide its complete branch ledger,
the signs and containments justifying its relations, and the literal
rational bounds used by its finite proof.

## 1. Positive variables and initial witnesses

Let T range over a finite list of positive real variables. In the
applications, T is the unsigned doubled area of a named actual
triangle. A positive common minimum ensures T>0. Suppose that proved
initial bounds are available:

    0 < l_T <= T <= u_T.

Initial lower bounds may come from the actual minimum, from actual
occupants of the triangle, or from an earlier proved area inequality.
For example, at the common threshold s, the zero-, one-, two-, and
three-occupant costs are s,3s,Ks,Js, with the chosen rational K,J
strictly below the corresponding proved triangle constants. Every
occupant must be distinct from the triangle's vertices and the other
named occupants, and must have all three inward edge signs.

Initial upper bounds may come from a proved containing triangle,
from the unit-square bound, or from a proved coordinate box. For a
multiaffine determinant polynomial, its maximum over a box is the
maximum of its endpoint values, by repeated affine interpolation.
A use of that bound must verify the polynomial's multiaffinity and
its exact endpoint calculation. A shifted-polynomial coefficient
bound is another permitted source. The source box must already be
proved; an endpoint cannot be justified by a bound that depends on
that same endpoint's proposed refinement.

The box used to derive an initial area cap and the box used later to
bound a polynomial sum may differ. Both must contain the actual
coordinates and both must be specified exactly. In particular, an
area cap proved on a tighter box remains valid for the actual
configuration when a later polynomial sum is bounded on a larger
box. Its source calculation is still the calculation on the tighter
proved box.

In all formulas below, each l or u can be any already proved bound
with the stated direction. It need not be the newest available bound.
Every lower bound reused in a nonlinear rule is positive. Maintaining
only improvements of the initial positive lower bounds ensures this;
a nonpositive proposed lower bound can simply be discarded.

## 2. An actual fan

If an actual point lies strictly inside an actual triangle, its three
fan areas A,B,C are positive and their sum is the outer area T:

    T=A+B+C.

The following consequences are immediate:

    T >= l_A+l_B+l_C,        T <= u_A+u_B+u_C,
    A >= l_T-u_B-u_C,        A <= u_T-l_B-l_C.             (1)

The last two formulas also apply with A,B,C permuted. A negative
right side for a lower bound is harmless. A nonpositive right side
for an upper bound immediately contradicts positivity if it is
retained as the final bound.

The geometric witness for (1) consists of the outer actual triangle,
the interior actual point, and its three inward edge signs. The three
fan variables must be exactly its three edge fans.

## 3. A fully signed Pluecker identity

Suppose the six actual signs in one five-label Pluecker identity are
known. Its unique isolated-sign term gives an equality of positive
unsigned areas

    X Y = U V + W Z.                                      (2)

Consequently

    X >= (l_U*l_V+l_W*l_Z)/u_Y,
    X <= (u_U*u_V+u_W*u_Z)/l_Y.                           (3)

The same formulas apply to Y after exchanging X,Y. All denominators
are positive. For a term on the other side of (2), one also has

    U >= (l_X*l_Y-u_W*u_Z)/u_V.                           (4)

If the numerator in (4) is positive, subtract WZ from (2), then use
V<=u_V. If it is nonpositive, (4) follows directly from U>0.

Put N=u_X*u_Y-l_W*l_Z. If N>0, subtraction and V>=l_V give

    U <= N/l_V.                                         (5)

If N<=0, (2) would give the immediate contradiction 0<UV<=N.
A proof record may equivalently retain the weaker upper bound U<=0.
Thus a uniform way to encode (5) and this terminal case is

    U <= max(0,(u_X*u_Y-l_W*l_Z)/l_V).                   (6)

Formulas (4)--(6) also apply to V,W,Z with the corresponding exchange
of the two product terms. The maximum with zero is deliberate: it
avoids treating division of a negative upper numerator as a positive-
quantity monotonicity argument.

Every use of (2) must identify one actual pivot and four other
distinct actual labels. The six triangle signs must make the stated
product exactly the isolated-sign term. The scalar rules cannot
choose an unsigned product equality without these sign witnesses.

## 4. A support-product inequality

Some already proved support arguments give positive actual areas
X,Y,Z and a positive rational constant k satisfying

    XY >= k(X-Z).                                       (7)

The useful interval consequences are

    Y >= k*(1-u_Z/l_X),
    Z >= l_X*(1-u_Y/k),                                 (8)

and, when u_Y<k,

    X <= k*u_Z/(k-u_Y).                                 (9)

For the first formula in (8), divide (7) by X>0 and use
Z/X<=u_Z/l_X. If u_Y<=k, the second follows from
Z>=X(1-Y/k) and positivity of both factors. If u_Y>k its right side
is negative and it follows from Z>0. For (9), rearrange (7) as
(k-Y)X<=kZ and use k-Y>=k-u_Y>0. The strict denominator test in (9)
is part of every use.

Two existing sources of (7) are useful here:

* For a strictly convex actual pentagon ABCDE, the five-chain
  support bound of N7_THREE_FIVE_UPPER_HEIGHT.md gives (7) with
  X=[ABE],Y=[ADE],Z=[ABD],k=11s. All ten cyclic triple signs must
  establish that convex pentagon.
* For a strictly convex actual quadrilateral ABCD with named actual
  occupants, QUADRILATERAL_SUPPORT.md gives
  [ABC][ABD]>=q*s*([ABD]-[ACD]). Take X=[ABD],Y=[ABC],Z=[ACD],
  k=q*s in (7). Its actual occupants and any extra conditions for the
  chosen rate q must be witnessed. The generic two-occupant rate may
  use SIX_POINT_ENDPOINT_REFINED.md, and stronger overlapping-ear
  rates require their stated containments.

Both source inequalities include the automatic nonpositive-difference
case. No extra assumption X>Z is needed in (7)--(9).

## 5. Linear inequalities in actual areas

Suppose a previously proved relation is

    sum_i c_i*T_i >= b,                                 (10)

where the coefficients and b are fixed rationals. To isolate a
nonzero coefficient c_j, let

    M_j = sum_(i!=j,c_i>0) c_i*u_i
        + sum_(i!=j,c_i<0) c_i*l_i.

Then the other terms in (10) sum to at most M_j. Hence

    T_j >= (b-M_j)/c_j     if c_j>0,
    T_j <= (b-M_j)/c_j     if c_j<0.                    (11)

The coefficient sign is checked before dividing. A quadrilateral
occupancy cost A+B>=b is a special case, giving A>=b-u_B and
B>=b-u_A.

Another source is a proved quadrilateral spread inequality. If the
actual convex quadrilateral has fan areas A,B and its two diagonals
both separate the named interior points, either diagonal gives

    A+B-C-D >= q*s,

where C,D are the two positive areas from that diagonal to the two
points. The rate q and every containment/separation hypothesis must
be justified by QUADRILATERAL_SPREAD.md. Those geometric facts are
inputs to (10), not consequences of interval arithmetic alone.

## 6. Rational rounding and finite chains

Every expression above is evaluated over the rational numbers. After
deriving T>=v, one may print any rational r<=v as the weaker bound
T>=r. After deriving T<=v, one may print any rational r>=v. In
particular, for a positive integer scale M, the choices

    floor(M*v)/M     for a lower bound,
    ceil(M*v)/M      for an upper bound

are valid. The proof does not depend on a tolerance or an assertion
that a repeated refinement has converged.

Each printed update has a unique identifier and specifies its named
triangle, bound direction, exact rational value, relation witness,
and the identifiers of the preceding bounds used in that formula.
These references are immutable: a later improvement does not change
what an earlier reference means. By induction on the finite printed
list, every retained bound is valid. A final pair l_T>u_T is therefore
a contradiction.

Unused updates can be removed. Start from the final contradiction,
or from the named bounds used in a later polynomial sum, and retain
all preceding bounds on which they depend. Each retained relation
still needs its geometric witness, and each retained initial bound
still needs its source proof. The resulting finite dependency list
is a complete proof of the requested bounds regardless of how the
longer list was discovered.

## 7. Use in a fixed polynomial sum

Once the actual orientation of a triangle IJK is known, its positive
area is epsilon*[IJK], with epsilon equal to that sign. A retained
scalar lower bound r and upper bound R therefore give nonnegative
polynomials

    epsilon*[IJK]-r,       R-epsilon*[IJK].              (12)

They may be used in the same fixed nonnegative sums as other proved
area factors. Every factor from (12) must name the exact retained
bound that justifies its constant. Its dependency list is included
with the proof, and the final polynomial expansion is checked on its
stated coordinate box. This separates the finite arithmetic proof of
the area bound from the later polynomial identity while making both
parts explicitly reviewable.

A scalar replay checks the rational formulas and dependency order.
The enclosing geometric proof also checks the initial bounds, the
actual signs, the fans, the convex hulls, the occupants, and all
support-rate hypotheses. Neither check replaces the other.

## 8. Literal packet format and replay interface

The optional standard-library reader is
[scalar_area_intervals.py](scalar_area_intervals.py). It contains no
discovery iteration. A manuscript prints its whole packet as a literal
JSON object, ordinarily in a code block named scalar-area-packet.
Rational quantities are strings such as "93/1000", or integer
literals. Floating-point literals and duplicate JSON keys are rejected.

The top-level fields are:

| Field | Meaning |
|---|---|
| initial | Map from immutable reference identifiers to initial bound records. |
| relations | Ordered list of geometrically witnessed area relations. |
| updates | Ordered list of finite arithmetic deductions. |
| contradiction | Null, or the final triangle and its conflicting lower/upper reference identifiers. |
| targets | Optional map from selected reference identifiers to their exact bound records, for later polynomial factors. |

Every bound record has fields triangle, side, value. The triangle
field names the positive area variable, usually by its three actual
labels. The side is "lo" or "hi". Every retained lower bound is
strictly positive. An upper bound may be nonpositive when it supplies
a terminal contradiction.

An update contains id, relation, rule, triangle, side, value, sources.
The id is new and cannot overwrite an initial or earlier reference.
The relation is a zero-based integer index into the relation list.
The sources are an ordered list of earlier reference identifiers.
They must have exactly the variables and directions required by the
rule. A reference can be used after later bounds improve the same
variable: its own original value remains immutable.

The relation records are:

    ["fan",T,A,B,C]
    ["plu",X,Y,U,V,W,Z]
    ["quad",A,B,cost,...]
    ["support",X,Y,Z,k,...]
    ["linear",{variable:coefficient,...},rhs,...]

The fan and Pluecker records have exactly the listed fields.
The other kinds may carry trailing geometric witness metadata.
The arithmetic reader ignores that metadata; the relation geometry
callback must check it. Fan, Pluecker, and support variables in one
relation must be distinct, as they are in their stated geometric
applications. Zero linear coefficients are discarded.

The supported rules and ordered sources are:

| Relation | Rule and target | Ordered source bounds |
|---|---|---|
| fan T=A+B+C | sum: lower T | lower A,B,C |
| fan | upper_sum: upper T | upper A,B,C |
| fan | sub: upper A | upper T, then lower bounds of the other fans in relation order |
| fan | lower_sub: lower A | lower T, then upper bounds of the other fans in relation order |
| Pluecker XY=UV+WZ | sumlo: lower X | lower U,V,W,Z, then upper Y |
| Pluecker | sumhi: upper X | upper U,V,W,Z, then lower Y |
| Pluecker | diff: lower U | lower X,Y, upper W,Z, upper V |
| Pluecker | diffhi: upper U | upper X,Y, lower W,Z, lower V |
| quad A+B>=cost | quad: lower A | upper B |
| support XY>=k(X-Z) | support_y: lower Y | lower X, upper Z |
| support | support_z: lower Z | lower X, upper Y |
| support | support_x: upper X | upper Z, upper Y |
| linear | linear: bound for a nonzero-coefficient target | all other variables in sorted-name order; upper for a positive coefficient, lower for a negative coefficient |

The symmetric fan and Pluecker choices use the corresponding
permutations specified in Sections 2 and 3. In particular, exchange
X,Y for the other isolated-product target, and exchange the two
right-hand product groups when updating W or Z. The reader checks
these source roles explicitly. A support_x update also checks the
strict condition upper(Y)<k.

This small conditional arithmetic example illustrates the format.
Its initial witnesses and actual fan must still be justified by the
enclosing geometric argument:

```scalar-area-packet
{
  "initial": {
    "hi_ABC": {"triangle": "ABC", "side": "hi", "value": "1/2"},
    "lo_ABP": {"triangle": "ABP", "side": "lo", "value": "1/10"},
    "lo_BCP": {"triangle": "BCP", "side": "lo", "value": "1/5"},
    "lo_CAP": {"triangle": "CAP", "side": "lo", "value": "3/10"}
  },
  "relations": [["fan", "ABC", "ABP", "BCP", "CAP"]],
  "updates": [
    {
      "id": "T01",
      "relation": 0,
      "rule": "sum",
      "triangle": "ABC",
      "side": "lo",
      "value": "3/5",
      "sources": ["lo_ABP", "lo_BCP", "lo_CAP"]
    }
  ],
  "contradiction": {
    "triangle": "ABC",
    "lower": "T01",
    "upper": "hi_ABC"
  }
}
```

For a selected-bound packet, set contradiction to null and include
a nonempty targets map. Each target repeats the triangle, side, and
value of the named retained bound. The reader checks exact equality.
A packet must state either a contradiction or at least one selected
target.

The functions are:

    parse_area_packet(text)

    replay_area_packet(
        packet,
        initial_check=check_initial_geometry,
        relation_check=check_relation_geometry
    )

The first parses the literal JSON with the exactness restrictions
above. The callbacks in the second receive respectively
(reference, raw_initial_record) and (index, raw_relation_record).
They must raise on an unjustified premise; returning False also
rejects it. They must validate actual signs, containments, source
boxes, and support rates in the enclosing configuration.

The default replay call requires both geometry callbacks. If an
enclosing checker has already validated those facts separately, it
may explicitly pass arithmetic_only=True. That mode checks only
the scalar arithmetic and labels its result accordingly. No default
call silently treats geometric premises as established.

The result contains the exact Fraction-valued bound map, selected
targets, the positive contradiction gap when present, counts of the
initial bounds, relations and updates, and an explicit geometry-mode
label. No optimizer, floating-point tolerance, external proof data,
or convergence claim is used in the replay. Completeness of the
configuration catalogue remains the responsibility of the enclosing
manuscript's branch ledger.
