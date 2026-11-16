# N7 area-LP recovery checkpoint

This is **discovery state**, not an additional completed hand-proof case.
The N7 central lower cells CA and CB remain open. No roadmap item should
be checked merely because these files exist.

## Scope and preserved state

The actual points are
A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1),
G=(g,z), H=(0,h), O=(x,y), P=(u,v).
The doubled threshold is s=93/1000. The last N7 count has G in HABC,
O and P in HCEF, and all three in the actual heptagon. The central
cells have ACG>0 and BGH>0, with CA meaning ac>=bh and CB the reverse.
Previously published files, including N7_CENTRAL_AREA_ORIENTATION,
N7_CENTRAL_PAIR_CUT and UPPER_EAR_SEPARATION, remain the proof sources
for the corresponding sign reductions.

The saved experiment is CA, the E-only upper line cut
HOP<0, COP<0, EOP>0, FOP<0, with EHO>0 and then AGP>0.
It remains open after all recorded steps. The two broad area-LP
relaxations are numerically feasible.

The JSON files preserve the complete source chain:

1. n7_lp_ca_eh_positive_source.json: five geometric/scalar/physical-box
   stages beginning at the published coarse CA box.
2. n7_lp_ca_agp_positive_source.json: two further stages after AGP>0,
   beginning with the preceding final coordinate box.
3. n7_lp_ca_first_relaxation.json: the first area-only LP, with every
   literal linear factor and its origin. Its source is the last stage
   of item 2.
4. n7_lp_ca_area_bounds.json: 21 exact conditional area-bound
   certificates, obtained by optimizing individual areas in item 3.
5. n7_lp_ca_bound_feedback.json: the 21 area bounds are introduced as
   immutable facts, followed by scalar propagation and 27 exact
   coordinate contractions. The state remains open.
6. n7_lp_ca_second_relaxation.json: a second open area LP using item 5.
   This exploratory model also includes the nested-fan consequence
   described below.

The JSON uses compact serialization to avoid repeated indentation.
Every rational is a string; the remaining floating-point arrays are
explicitly numerical discovery output.

## Runnable sources and loading

The source files are JavaScript expressions or function expressions.
They use the same global load(key) convention as the earlier
N7_JS_CHECKPOINT. A host can read the files into a string map and define
load as lookup in that map. No network or external solver is required.

Use these keys:

| File | load key |
| --- | --- |
| n7_js_area_core_v2.js | scalarAreaJSCore |
| n7_js_geometry_base.js (earlier checkpoint) | n7SignJS |
| n7_js_geometry_rules_v2.js | n7AdvancedSignsJS |
| n7_js_area_model_v3.js | n7AreaBuilderJS |
| n7_js_physical_factors_v2.js | n7PhysicalFactorJS |
| n7_js_box_contractor.js (earlier checkpoint) | physicalBoxContractorJS |
| n7_js_run_v2.js | n7JSDriver |
| n7_js_pack_run.js (earlier checkpoint) | n7PackRunJS |
| n7_area_lp_solver.js | n7AreaLPSolverJS |
| n7_area_lp_linear.js | n7AreaLinearToolsJS |
| n7_area_lp_run.js | n7AreaLPDriverJS |

After loading, eval(load("n7AreaLPDriverJS")).run(model, areaResult)
runs a bounded sequence of linear relaxations and separated product
envelopes. The model has canonical determinant signs and a literal
relations array. The area result has
final[T].lo={value,ref}, final[T].hi={value,ref}.
The helper accepts fan, plu, quad, support, linear and balanced-product
relations in the scalar core's formats.

For direct use, eval(load("n7AreaLinearToolsJS")).make(model,areaResult)
returns the exact linear factors, immutable bounds, a separator, and
the exact recovery functions. The numerical solver's solve method
accepts these factors and bounds. With returnSession:true it returns
an optimize method for a new linear area objective, reusing the
feasible tableau.

The V2 area model precedes the V3 model's use of the published .449
one-occupant quadrilateral cost. Earlier saved stages keep their
literal weaker factors. Re-evaluation with newer helpers may give a
different valid exploratory trace; the literal saved records are
the objects to replay.

## Numerical search and exact certification are separate

The Float64 simplex minimizes a nonnegative violation variable delta:
F_i(A)+delta>=0 over the fixed area box. A negative optimal objective
suggests a contradiction. It is **not** a proof.

For an accepted contradiction, recover rounds a numerical nonnegative
dual vector to literal nonnegative integer weights. It then rebuilds
their weighted sum using BigInt rational arithmetic and computes its
exact maximum on the immutable area box. Only a strictly negative
maximum is accepted by the author-side arithmetic routine.

For an area cap, proveBound reconstructs

    N*(+T or -T) + sum_i w_i F_i(A) <= U

with N a positive integer and every w_i a nonnegative integer.
Since F_i>=0, this gives T<=U/N or T>=-U/N, with outward rational
rounding. Each record retains all selected factors, integer weights,
the resulting affine polynomial, its exact box bound, and the
immutable bound references. No floating coefficient is imported into
a certificate.

The factors come from already proved fan and four-point equalities,
occupied-quadrilateral costs, spread and barycentric inequalities,
and fixed-cap consequences of support inequalities. Product
linearization uses only the four exact McCormick remainder formulas.
For lX<=X<=uX and lY<=Y<=uY:

    XY - (lX*Y+lY*X-lX*lY) = (X-lX)(Y-lY)
    XY - (uX*Y+uY*X-uX*uY) = (uX-X)(uY-Y)
    (uX*Y+lY*X-uX*lY) - XY = (uX-X)(Y-lY)
    (lX*Y+uY*X-lX*uY) - XY = (X-lX)(uY-Y).

All four right sides are nonnegative. Every envelope records its
fixed bound values and their origins. The selector's floating-point
choice changes which valid inequality is tried, not its validity.

The current source also contains a proposed nested-fan factor:
if X lies in ABC and Y in ABX, and [CXY]<0, put
T=|ABX|, S=|ABC|, c=|CAX|, b=|BCX|,
d=|CXY|, beta=|XAY|, gamma=|ABY|.
Then Tc=T*d+beta*(b+c)+gamma*c. With immutable lower bounds
d0,beta0,gamma0, it follows that

    Tc >= (d0-beta0)*T + beta0*S + gamma0*c.

Its remainder is
T*(d-d0)+(beta-beta0)*(b+c)+(gamma-gamma0)*c.
The opposite orientation interchanges the two adjacent fan areas.
The physical determinant identity was expanded exactly by the author;
independent review was requested before any hand-proof use.
The first 21 area-bound certificates do not depend on this later factor.

## Verification limits

These discovery records preserve enough source data for independent
geometric and exact arithmetic replay. They are not themselves a
replacement for that review. No fresh Python execution occurred
during this runtime outage. The earlier published hand checkers and
completed N7 subcases are unchanged.

The solver, its numerical stopping criteria, and the discovery
separator are not trusted proof premises. A future hand checkpoint
must print the required fixed source facts and replay the resulting
literal certificates independently, including all geometric
admissibility and source-box dependencies.
