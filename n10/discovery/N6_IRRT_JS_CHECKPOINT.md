# Complete IRRT discovery tree and fixed derivation

The author discovery tree for N6 count (0,1,2,1,0) is now exhausted.
It has 12 actual-sign splits and 13 leaves: seven exact physical
interval contradictions, three exact linear-area certificates, two
scalar contradictions, and one actual-capacity contradiction.
This is a completed discovery checkpoint. The whole-count hand entry
remains open until the complete manuscript and independent geometric
review are accepted.

The actual configuration has P central, Q in the top cap, R outer-right,
and S inner-right, with the six contacts ABCEFH. Every actual unsigned
doubled triangle area is at least93/1000. The literal initial box and
81 initial signs are retained. The geometric domain is the same as the
earlier IRRT checkpoint; its additional initial signs have independent
mathematical review.

## Saved objects

- n6_irrt_js_frontier.json retains the full exhausted discovery tree.
- n6_irrt_fixed_packet.json prunes every unused physical factor and
  linear-certificate dependency. It retains the complete25-node tree,
  both contexts around each needed physical refinement, every literal
  endpoint line and source-cap endpoint list, and every terminal.
- n6_irrt_fixed_audit.js is a fresh semantic audit using the earlier
  independent IIRR rational/polynomial implementation, extended for
  physical refinement and exact positive linear combinations. It imports
  no discovery generator. Evaluating auditN6IRRT(packet) on the fixed
  packet passes512 geometric deductions,3278 coordinate updates,
  30608 endpoint lines,144 scalar updates,182 linear factors,791 physical
  polynomial identities,226 box-cap witnesses and4732 endpoint values.
  Separate independent geometric review is still in progress.

## Runnable source dependencies

Read the following files as strings in a map implementing load(key).

| File | Key |
| --- | --- |
| n6_irrt_js_engine.js | irrt_discovery_source |
| n6_irrt_js_physical.js | irrt_physical_builder |
| n6_irrt_js_box.js | physical_box_helper_source |
| n6_irrt_js_run.js | irrt_coupled_lp_runner |
| n6_irrt_exact_core.js | exact_source |
| n7_js_area_core_v2.js | scalarAreaJSCore |
| n6_irrt_lp_labels.js | n7SignJS |
| n7_area_lp_linear_v1.js | n7AreaLinearToolsJS |
| n7_area_lp_solver.js | n7AreaLPSolverJS |
| n7_area_lp_run.js | n7AreaLPDriverJS |

The exact_source row is required by the physical-factor builder.
This checkpoint explicitly preserves that dependency, which the earlier
IRRT loading table omitted. Evaluate the runner to define
runIRRTPhysicalBatch. No work remains in this saved tree's queue.

The numerical simplex only discovers integer weights. Each retained
linear certificate contains its exact rational factors, immutable initial
bounds, expanded weighted sum and negative exact upper bound. The three
certificates use53,55 and74 factors respectively. All mathematical proof
obligations are in the literal data and their geometric witnesses.
No numerical feasibility or stopping decision is a proof premise.

No CI, GitHub Actions, Lean compilation or fresh Python execution was used.
