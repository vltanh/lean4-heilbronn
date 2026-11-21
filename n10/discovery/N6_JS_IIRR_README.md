# Recovering the exact-JavaScript IIRR discovery

These files preserve a **complete finite proof candidate**, pending independent
hand-proof audit. Every branch is covered in the JSON. Discovery completion and
record replay do not themselves replace the independent mathematical audit.

- n6_js_iirr_engine.js: exact BigInt rational discovery engine.
- n6_js_iirr_replay.js: separate replay of recorded geometry and arithmetic.
- n6_js_iirr_frontier.json: immutable-source records plus the unfinished frontier.

The complete snapshot has 127 determinant splits and 128 leaves: 45 geometric
exclusions and 83 scalar-area contradictions. All 13,957 retained arithmetic
updates pass the separate replay. There is no frontier or open leaf. Its 9,300 retained arithmetic
updates pass the separate replay. No fully refined open relaxation leaf has
been reached. This snapshot does not cover its five frontier nodes.

## Load and resume

No package, filesystem, optimizer, or network library is needed after reading
the files as strings. Evaluate the engine, then the replay source:

    eval(engineSource);
    eval(replaySource);
    const state = JSON.parse(frontierJSON);
    IIRR_CHECK.check(state);

The report contains splits, geometry, area, updates, open, and complete.
Only complete:true means the recorded binary tree has no remaining frontier
or open leaf. The replay checks the stated domain and its records; a final
hand manuscript and independent mathematical review are still required.

Continue with:

    IIRR.runBatch(state, 1, {
      rounds: 24, maxSteps: 8000, maxDepth: 24
    });

Save the resulting JSON after every call. The batch method mutates state.
It uses no old scratch catalogue or presumed closed branch. Every determinant
split has both children. Positive minimum actual area excludes its zero face.
Increasing rounds or maxSteps changes discovery effort, never an accepted
inequality. An unresolved fully signed node is recorded as kind:"open".

## Exact mathematical domain

All ten actual points lie in the unit square and every unsigned doubled
triangle area is at least s=93/1000. The six contacts are

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

P=(p,q), Q=(u,v) are in HCEF. The right-cap pair can be named R=(r,w),
S=(j,k) so that S is strictly inside CER and BER. This is precisely
N6_SIDE_PAIR_REDUCTION.md. Independently choose HPQ<0 by swapping P,Q.

Published side-pair facts used here are

    rho=.694, eps=.1037,
    e(1-b)>=rho, e<=.907, c<.616, r>.915,
    a,b>eps, U=-CER>=3s, U<(11/3)s.

The new U bound is the audited no-top strengthening of
N6_SIDE_PAIR_BOUNDS.md. It gives all barycentric weights of S in CER
between 3/11 and 5/11, and each of its three fan areas below 5s/3.

Since e>=rho/(1-eps)>.774, HEF<=1-e<3s is empty. Therefore P,Q are
both in HCE. In particular HEP,HEQ<0. The side-pair use of the two
BE-negative slots in N6_CORNER_CONTAINERS.md gives BEP,BEQ>0.

Put

    b1=1-rho/.907, c1=.616, c0=4s,
    a0=s/(c1-eps), a1=1-s/b1, e0=rho/(1-eps),
    r0=.915, w1=.907-3s/(1-c0), x0=s/(1-a0).

The closed rational box is

    a:[a0,a1], b:[eps,b1], c:[c0,c1],
    e:[e0,.907], f:[eps,c1], h:[e0,1],
    p,u:[x0,.907], q,v:[a0,.907],
    r:[r0,1], w:[a0,w1],
    j:[(5c0+3+3r0)/11,(3c1+8)/11],
    k:[3(e0+a0)/11,(5*.907+3w1)/11].

The lower c bound follows from the bottom/left paired-ear bound hc>=4s.
ABC and ABH give a0,a1; BCR gives w>=a0. The cap U>=3s gives w1.
AHP and AHQ give x0. BC clearances give q,v>=a0. HEP,HEQ give
q,v<=1-s. For p,u<=1-s, use CET>=s when y_T<=e, or EFT>=s when
y_T>=e. The inner box follows from the 3/11 barycentric bounds.
The closed endpoints deliberately include limiting faces.

The initial orientation table is all 20 positive cyclic anchor triples in
ABCEFH, plus for each T=P,Q,R,S:

    ABT+, ACT+, AHT-, BCT+, BHT-, CHT-, EFT+, EHT+, FHT+.

For P,Q also CET+,BET+. For R,S also AET-,AFT-,BET-,BFT-,CET-,CFT-.
Finally HPQ-, ERS-, CRS+, BRS+. These are 76 initial signs. Positive
signs refer to the displayed ordered determinant, not its alphabetic word.

## Accepted reusable metric facts

The replay uses actual-triangle lower bounds s,3s,.694,.823 for zero,
one,two,three known occupants. The last two are strict conservative
roundings of Gamma2*s and Gamma3*s. Four occupants and a clustered triple
are impossible by the already checked universal lemmas.

The actual quadrilateral costs for one,two,at least three known occupants
are .449,8s,93/91. The first follows from the standard fan identity:
for P inside convex ABCD, the four fan areas a,b,c,d>=s satisfy
ac-bd=[ACP][BDP], so |ac-bd|>=s². One opposite product is at least 2s²,
the other pair sums to at least 2s, and the perimeter fan sum is at least
(2+2sqrt2)s>.449. The last comparison follows from
2*186²-263²=23>0. The third cost is SQUARE_QUADRILATERAL_THREE.md.

A determinant's upper bound is either 1, the exact maximum of its signed
multiaffine polynomial over the displayed coordinate-box vertices, the
11s/3 outer cap, a5s/3 fan cap, the published 21/50 side-base cap, or the new 3s/2 outer-bottom cap from
SIDE_PAIR_AREA_REFINEMENTS.md.
Each box witness stores every nonnegative difference from its claimed
maximum, so the replay checks the full finite corner calculation.

The endpoint support relation is

    |BCE|*|BER| >= rho*(|BCE|-|BCR|).

Indeed N6_SIDE_PAIR_REDUCTION.md gives
Omega=e(v_R-b)=e|BER|/(e-w)>=Gamma2*s>rho.
Multiplication by(c-b)(e-w)>0 gives the displayed inequality.

The universal signed four-point identity [ABC]+[ACD]=[ABD]+[BCD] is
included in both directions whenever its four signs are known; convexity is
not required. The right-cap area comparisons |AET|>=|CET|, EHT>=|CET|,
EFT>=|CET| for T=R,S follow from SIDE_PAIR_AREA_REFINEMENTS.md.

The distributed-mesh sign table and rational ear/connect/inner costs are
the already checked seven-face mesh of C1_PENTAGON_GEOMETRY.md, used
after an actual affine relabeling. A mesh witness requires three actual
interior points in an actual triangle, together with the two displayed distinct
fan placements. The global exclusion of a clustered triple makes this a full
distributed mesh; absence of a detected cluster in a partial sign table is not
a premise. All outer triangles still lie in the original square.

## Record format and replay

state.nodes maps binary path names r,rm,rp,... to records.
A split records its actual ordered triangle. Its two child assignments are
the negative and positive alternatives. state.queue records every unfinished
child; no earlier unavailable search is presumed closed.

A leaf records its branch assignments and successive geometric deductions.
Capacity witnesses specify the actual hull, established occupants, two
inward tests, and the exact cap. Pluecker witnesses give five actual labels.
Mesh witnesses give six actual labels and their orientation. A geometric
terminal names its forbidden occupancy, clustered fan, cap contradiction,
or inconsistent signed identity.

An area leaf gives a pruned directed acyclic record:

- initial: positive unsigned triangle bounds, each with an occupant/cap witness;
- relations: actual fan identities, signed Pluecker equalities, quadrilateral
  diagonal costs, endpoint support, distributed mesh, or barycentric tests;
- updates: immutable source identifiers, the relation, rule, target, and value;
- end: one actual area (or the zero affine test) with lower bound above upper.

Area updates round lower bounds down and upper bounds up to multiples of 10^-6.
The replay reconstructs every raw rational expression and its exact rounding.
It never calls discovery closure, makeArea, or propagate.

Barycentric relation witnesses refer to **weights**, not fan-area floors.
For any actual line IJ, the signed test D(X)=[IJX] satisfies
11D(S)=sum_i(11lambda_i)D(V_i), V_i=C,E,R. The coefficients are
between 3 and5 and sum 11. Besides the two sign-separated linear bounds,
signed intervals l_i<=D(V_i)<=u_i give

    3 sum(l_i)+2 min(l_i) <=11D(S)<=3 sum(u_i)+2 max(u_i).

When IJ contains S the target is the exact zero test, not a distinct-point
triangle. This is represented by the variable ZERO with both initial bounds 0.

## Persistence and scope

These are repository discovery artifacts. No Python runtime was invoked after
the environment outage. Exact JavaScript discovery and separate record replay
were executed. The files are a recoverable complete proof candidate; they do not replace the
printed hand proof or its independent audit.
