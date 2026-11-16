# N7 JavaScript discovery checkpoint

These files preserve the exact exploratory state created while the shell
runtime was unavailable. They are **not** inputs to the hand-proof readers.
The mathematical conclusions proved so far are stated and checked under
n10/hand. Neither central lower cell nor the N7 parent is closed by this
checkpoint.

## Current exhaustive frontier

In the all-interior N7 count (1,2,0), the ABC and ABH lower-ear children
are already proved. The remaining lower point is central. Its two weak
contact orders are called CA (ac>=bh) and CB (bh>=ac).

After permuting the upper points so HOP<0, the accepted hand reductions
give DGO<0 and forbid AGT>0,DGT>0 for either upper point T. Thus six
ordered pair words remain in each central cell:

| (AGO,DGO) | (AGP,DGP) |
|---|---|
| -- | -- |
| -- | -+ |
| -- | +- |
| +- | -- |
| +- | -+ |
| +- | +- |

All twelve records in n7_js_queue.json are explicitly open. In filenames,
m means a negative sign and p means a positive sign. The queue also
retains the results of earlier conditional passes and the tested upper
pair-line cuts of HCEF. An open result means only that the listed exact
contractors did not find a contradiction.

## Modules and loading

Each .js module is a JavaScript expression returning an object, except
n7_js_pack_run.js, which defines the packing function. The modules use a
load(key) function to obtain the literal source of their dependencies.
This matches the pure-JavaScript functions environment in which they
were executed. A different host can provide load through a map of file
contents; no network or optimizer is needed by the modules themselves.

| File | Source key expected by load |
|---|---|
| n7_js_area_core.js | scalarAreaJSCore |
| n7_js_geometry_base.js | n7SignJS |
| n7_js_geometry_rules.js | n7AdvancedSignsJS |
| n7_js_area_model.js | n7AreaBuilderJS |
| n7_js_physical_factors.js | n7PhysicalFactorJS |
| n7_js_box_contractor.js | physicalBoxContractorJS |

After loading the six sources under these keys, evaluating
n7_js_run.js returns an object with a run method. For example:

    runner.run("CA", ["DGO-","AGO-","AGP-","DGP-"])

adds the central signs ACG+,BGH+ and runs the exact sign, area, and
coordinate contractors. The optional initialState and box parameters
permit resuming a saved frontier, with its previous proof records kept
as dependencies. The variable order is always

    a,b,c,d,e,f,g,h,z,x,y,u,v.

The physical contractor was developed independently by the top-triple
agent and reused here. The generic scalar core was independently
reconstructed from the accepted scalar-area lemma. Its recovered
72-step chain agrees exactly with the earlier shell-based calculation.

## Exact source rules

The geometry modules use actual orientation signs, Pluecker identities,
strict containment, convex-polygon line words, named capacity-one
triangles, and the published distributed-triple mesh. They also use the
two newly proved N7 central-orientation reductions.

The area model records the source of every initial bound and relation.
Its arithmetic core uses immutable rational references and outward
rounding to multiples of 1/1000000. The current discovery relations
are fan identities, fully signed Pluecker product identities, occupied
quadrilateral sums, quadrilateral and convex-five support inequalities,
and diagonal-spread inequalities. The durable hand reader for a pruned
scalar packet is n10/hand/scalar_area_intervals.py; its required geometry
checks are separate.

The physical factors reconstruct signed determinant polynomials with
rational coefficients. They include the ordered contact inequality and
the following necessary multiaffine upper relaxations. For fixed
rational t, the CA endpoint inequality implies

    cah-2tca+t^2c-s(h+a)>=0,

because its difference from ca(h-a)-s(h+a) is c(a-t)^2>=0.
The CB counterpart is

    hbc-2thb+t^2h-s(c+b)>=0,

with difference h(b-t)^2>=0. The saved implementation uses t=n/10,
n=0,...,10. It also uses interval-secants to upper-bound h^2 or c^2
in the shared central-strip cubics; each such factor records its proved
source interval. The unrelaxed contact inequalities remain the source
of these necessary factors.

The coordinate contractor is exactly the finite multiaffine
endpoint-line rule of MULTIAFFINE_BOX_BOUNDS.md. Every retained change
prints all distinct endpoint affine lines, the old interval, the exact
feasible hull, and the outward rounded new interval. It stops an
unproductive enumeration early only when both old target endpoints
already belong to the union, whose hull is then the whole old interval.

## Record contents

Each frontier JSON file contains its complete geometric sign state and
one or more acyclic stages. A stage retains:

- its source coordinate box;
- the complete immutable area packet and its initial/relation geometry;
- the final exact area bounds;
- every physical factor used by its coordinate trace;
- the full endpoint-line records and exact rounding values.

Unused physical factors are omitted from packed records, and their
indices are remapped. Each retained factor also records its original
discovery index. Its physical polynomial and source witness are literal.
Relations used by a physical factor are retained separately, so packing
does not require re-running the original enumeration.

The two n7_js_closed_DGO_*.json files preserve the contractor
calculations that led to the short analytic theorem
N7_CENTRAL_PAIR_CUT.md. The hand proof supersedes these longer
exploratory calculations. The n7_js_recovered_area_packet.json file
contains the exact 13-initial-bound, nine-relation, 72-update packet
printed in N7_CENTRAL_AREA_ORIENTATION.md.

The earlier shell-based CA/CB mixed area-plus-cubic candidates and
their original central search trees were not recovered here. No claim
about those unprinted candidates is made by these files.
