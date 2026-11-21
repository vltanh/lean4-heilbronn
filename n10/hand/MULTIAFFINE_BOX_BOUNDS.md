# Exact conditional coordinate bounds from endpoint lines

This note supplies an elementary bound rule used in printed placement
tables. Its hypotheses are a proved rational box and a polynomial
F>=0 whose nonnegativity has already been justified geometrically.
It does not infer a triangle sign or make a numerical feasibility
assumption.

## 1. The endpoint-line rule

Let z=(z_1,...,z_n) satisfy l_i<=z_i<=u_i. Suppose F is
multiaffine: the exponent of every individual variable in each
monomial is at most one. Fix a target coordinate x=z_j. At every
endpoint assignment v_i in {l_i,u_i} for the other variables
occurring in F, write

    F(x,v)=A_v*x+B_v.                               (1)

Only variables occurring in F need endpoint assignments. Equal
endpoints require one choice, and duplicate lines may be omitted.

For fixed x and an arbitrary point of the remaining box, affine
interpolation in each other coordinate gives

    F(x,z_other)=sum_v lambda_v*(A_v*x+B_v),
    lambda_v>=0, sum_v lambda_v=1.                  (2)

Indeed, for a nonconstant interval the two interpolation weights
are (u_i-z_i)/(u_i-l_i) and (z_i-l_i)/(u_i-l_i); multiply these
weights over the other coordinates. A constant interval needs no
division. Equation (2) follows by repeated one-variable affine
interpolation, and proves the rule in every dimension.

If F(x,z_other)>=0, at least one line in (1) is nonnegative.
For each line form

    I_v=[l_j,u_j] intersect {x:A_v*x+B_v>=0}.       (3)

These are explicitly computed intervals:

* If A_v>0, replace the lower endpoint by max(l_j,-B_v/A_v).
* If A_v<0, replace the upper endpoint by min(u_j,-B_v/A_v).
* If A_v=0 and B_v<0, discard the interval.
* If A_v=0 and B_v>=0, retain the old interval.

Discard any interval whose lower endpoint exceeds its upper endpoint.
If none remains, the hypotheses are inconsistent. Otherwise the
necessary new bound is

    min_v inf I_v <= x <= max_v sup I_v,            (4)

where the minimum and maximum run over the retained intervals.
Taking the hull in (4) may weaken the bound if the union is
disconnected, but it cannot discard a feasible coordinate.

## 2. Sequential use and outward rounding

Each new bound is a consequence of the preceding box and F>=0,
so it may be used as a premise in the next displayed step. This
remains true when subsequent steps use another polynomial, another
target coordinate, or the same coordinate again. All factor
nonnegativity proofs continue to use their stated hypotheses.

A lower endpoint L may be replaced by any rational number at most
L, and an upper endpoint U by any rational number at least U.
The replacements must remain within the old interval. In particular,
for a positive integer scale M, the outward choices are

    max(old lower, floor(M*L)/M),
    min(old upper, ceil(M*U)/M).                    (5)

Every comparison, division, floor, and ceiling here is rational
arithmetic. No tolerance or floating-point approximation is part
of the inference.

## 3. A complete small example

Suppose 0<=x,y<=1 and

    F=xy+x/10-2y/5-1/5>=0.

For target x the two endpoint lines, at y=0 and y=1, are

    x/10-1/5,       11x/10-3/5.

The first is negative throughout [0,1]. The second requires
x>=6/11. Thus x belongs to [6/11,1]. With this improved interval,
the endpoint lines for target y, at x=6/11 and x=1, are

    (8/55)(y-1),       3y/5-1/10.

Their feasible intervals are {1} and [1/6,1]. The hull gives
y>=1/6. This illustrates the union in (3): requiring every endpoint
line to be nonnegative would be an invalid stronger inference.

## 4. Required contents of a printed trace

A use of this rule must identify the initial rational box, every
factor used and its nonnegativity proof, and each successive target
coordinate. For each step it must provide the complete distinct
endpoint-line list, or an equally explicit exact reconstruction of
that list from the displayed polynomial and preceding endpoints,
and state the new rational endpoint or the empty-union contradiction.

The optional exact replay module multiaffine_box.py regenerates the
endpoint lines, intersects their half-lines, and checks that every
printed new interval contains the interval (4). It skips, rather
than silently treating as multiaffine, a polynomial with a repeated
variable in a monomial. Its discovery helper can limit the number
of endpoints or steps; such a limit merely stops tightening and
does not prove a contradiction. The proof of every accepted step
is the finite interpolation identity (2) and the arithmetic in
(3)--(5), independently of that module.
