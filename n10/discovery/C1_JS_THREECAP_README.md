# C1 two central points and three occupied caps: JS discovery checkpoint

This is a partial discovery tree for C1 count (0,2,1,1,1), not a
whole-count hand-proof closure. It reconstructs the lost scratch calculation
from current published geometry. Do not presume any unavailable old branch
closed.

## Domain and labels

All ten points are actual, distinct, in the unit square, with every unsigned
doubled determinant at least s=93/1000. Use

    O=(0,0), H=(0,h), C=(c,0), D=(1,d), F=(f,1),
    Y=(u,v), Z=(z,w), P=(p,q), Q=(r,t), R=(j,k).

Y,Z are in the central quadrilateral HCDF. P,Q,R occupy the right,
top,left cap, respectively. The projections are d<=h,f<=c.
A single transposition gives h>=c; independent relabeling gives OYZ>0.

The actual hull is O,C,P,D,Q,F,R,H, in strict cyclic order. The cap
tests give the turns at P,Q,R; the coordinate axes give those at O,C,H.
At D and F the turns are sums of nonnegative products, as in
C1_ONE_LOWER_THREE_CAPS.md Section2, and are strict by positive actual
minimum. The polygon is simple from the disjoint ordered cap locations.
Thus all56 cyclic hull triples are positive. Y,Z have all eight inward
hull-edge tests and the central-edge tests OH-,OC+,HC+,HF-,CD+,DF+.
Together with OYZ+ these are81 initial signs. No lower-point cross sign
or lower-fan metric inequality is imported.

The stronger published THREE_CAP_CONTACT_BOUNDS.md gives

    h,c in [93/250,108/125], d,f in [93/250,79/100],
    each central coordinate in [31/288,907/1000],
    p,k in [13597/19750,1], q,j in [31/288,5039/7850],
    r,t in [40827/78500,1].

The coordinate order is (h,c,d,f,u,v,z,w,p,q,r,t,j,k).
All endpoints are exact conservative closed bounds.

## Generic metric and physical relations

Triangle costs are s,3s,.694,.823 for zero through three actual occupants.
Four occupants and a clustered triple are excluded globally.
Convex quadrilateral costs are .449,8s,93/91. All hold for actual subsets
in this square. Exact signed box-corner caps, the unit bound1 and the
side-base caps |OCP|,|OHR|<21/50 provide upper bounds.

The engine uses occupied fans, five-label Pluecker identities, the universal
signed four-point identity, quadrilateral costs and the previously proved
distributed mesh when its two actual fan placements are known. Global
cluster exclusion is the mesh premise. The six-label identity is

    [ABC][IJP]=[PBC][IJA]+[APC][IJB]+[ABP][IJC].

Every required actual sign is retained before a positive-area balance is
used. The additional physical linear relations are

    |OHD|>=|OCF|, |OHC|>=|OCD|, |OHC|>=|OHF|,
    HCD+HDF<=1, HCF+CDF<=1.

They follow respectively from h>=c,d<=h,f<=c and the exact identity
area(HCDF)=1-(h-d)(c-f)<=1.

## Current status and files

The current tree has14 determinant splits, three scalar-area leaves,
one exact positive-linear-combination leaf, two fully signed open leaves,
and nine unprocessed frontier nodes. It is incomplete.

Load/eval c1_js_threecap_engine.js, then c1_js_threecap_replay.js,
then c1_js_threecap_linear_replay.js. Read the JSON frontier and call

    C1RTL_CHECK.check(state)

The report explicitly counts open and frontier nodes. Generic discovery is

    C1RTL.runBatch(state,1,{rounds:24,maxSteps:8000,maxDepth:24})

but a fully signed open leaf should next receive exact area-LP recovery or
physical-box contraction, not a meaningless additional determinant split.

The linear leaf retains a complete exact staged proof. Its packet contains

- leaf: branch assignments and geometric deductions;
- stage: initial actual bounds, exact relations and immutable outward-rounded
  updates needed by the certificate;
- relations: actual identities used by the final linear factors;
- certificate: positive integer weights, all factor expansions, every source
  interval endpoint, their sum and its strict rational upper bound.

The first such leaf has27 factors, integer weights at most100, and exact
upper bound -20863541423681717/1413000000000000. Its source stage has
1,266 retained exact updates. The separate reader verifies all factors,
source refs, coefficients and the strict final bound. This is a conditional
leaf closure only.

For a product XY with interval bounds, the affine envelopes are justified by

    XY-(lX Y+lY X-lX lY)=(X-lX)(Y-lY)>=0,
    XY-(uX Y+uY X-uX uY)=(uX-X)(uY-Y)>=0,
    (uX Y+lY X-uX lY)-XY=(uX-X)(Y-lY)>=0,
    (lX Y+uY X-lX uY)-XY=(X-lX)(uY-Y)>=0.

For a signed product identity, replace positive products by upper
envelopes and negative products by lower envelopes. The resulting printed
affine factor is nonnegative. A positive integer sum is bounded above
using the exact source intervals; a negative result is a rigorous
contradiction. Floating-point simplex merely discovers the weights.

## Optional discovery LP dependencies

The LP modules are preserved as Git blobs in this repository:

- float simplex:261bd4a7cde76008ec7b70fda2599e8b3aaee7cb
- rational linear-factor recovery:9b7e62fb9956a0e90eb3bdc4936c4d10e00aa938
- iterative driver:95d95149288e48c816b06c804cb7bcc01868eeba
- rational core:09e5e4a6ab09cc8e17005075a020517b4f5cf46f
- original N7 label helper:3760ec7d570a077970c8264baffce7c53aa6e3a8

For C1, the recovery helper's label list must be OHCDFYZPQR, in that exact
order; use its ordinary combination helper. Existing C1 relations already
include all signed four-point identities. The driver receives
model={signs,relations:rows.map(x=>x.rel)} and bounds whose lo/hi entries
have immutable {value,ref}. A certificate is accepted only after the
separate C1 exact reader passes.
