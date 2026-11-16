# IRRT physical/scalar discovery checkpoint

This is an unfinished discovery calculation for N6 count (0,1,2,1,0):
one central point, a right-side pair and a top-cap point. It is not a
hand-proof closure. The containing count and its reflection remain open.

All ten points are actual, distinct and in the closed unit square, with
unsigned doubled triangle areas at least s=93/1000. Contacts are
A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
with a<=e<=h and b<=f<=c. P is central, Q is in the top cap, R is
the outer right-cap point, and S is the inner right-cap point.
No arbitrary ordering of P and Q is assumed. The exact initial box,
81 initial signs, determinant relations and physical factors are
literal in the sources.

The initial box uses C1_SIDE_PAIR_TOP_BOUNDS.md's explicit N6 transfer:
e<.897, c<.609, r>.920, and the actual side-pair cost above .694.
N6_SIDE_PAIR_BOUNDS.md supplies the stronger inner barycentric weights
3/11. Every virtual-looking clearance is dominated by an actual triangle.
The initial-domain geometry was independently reviewed; the unfinished
search and its recorded branches have not been accepted as a manuscript.

## Loading

Read these files as strings and define load(key) to retrieve each string:

| File | Key |
| --- | --- |
| n6_irrt_js_engine.js | irrt_discovery_source |
| n6_irrt_js_physical.js | irrt_physical_builder |
| n6_irrt_js_box.js | physical_box_helper_source |
| n6_irrt_js_run.js | irrt_coupled_runner |

Evaluate the runner, read n6_irrt_js_frontier.json as state, and call
runIRRTPhysicalBatch(state, 1). The runner preserves its original-domain
geometric and physical source trace whenever a retained leaf needs it.
After exact coordinate refinement it builds a fresh scalar model on the
proved box. Numerical convergence is never a closure criterion.

The saved tree has five determinant splits, one physical contradiction,
one fully signed open leaf, and four unprocessed frontier nodes. It is
incomplete. All physical endpoint lines and rational interval updates
are retained. The fully signed open leaf also retains its area bounds
and immutable scalar sources. A missing split sign must not be invented;
such a leaf next needs a new valid metric argument or exact area-LP
certificate.

The code is standard JavaScript with BigInt rational arithmetic. No CI,
GitHub Actions or Lean compilation is invoked. No fresh shell or Python
execution occurred during this runtime outage.
