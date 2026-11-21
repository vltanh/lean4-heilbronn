# C1 three-cap physical discovery and fixed hand proof

The complete hand argument for count `(0,2,1,1,1)` is
[C1_TWO_CENTRAL_THREE_CAPS.md](../hand/C1_TWO_CENTRAL_THREE_CAPS.md).
Its 60 linked Markdown files contain the entire fixed derivation.
The independent acceptance command reads only those literal tables:

```sh
python3 n10/hand/audit_c1_two_central_three_caps.py
```

It checks all 57 sign splits and 58 terminal arguments, with no solver,
saved discovery JSON, network, CI or Lean compilation. The historical
seven-node state remains reproducible by `c1_js_threecap_assemble.js`;
it has been superseded by the completed manuscript.

The following optional programs preserve the discovery method. They are
not proof premises. Run from the repository root with Node.js and Python;
the search additionally requires NumPy and SciPy. Discovery here used
SciPy 1.17.1. Different numerical search outcomes do not change the fixed
manuscript or its acceptance result.

```sh
export C1_PHYSICAL_WORKSPACE=/tmp/c1-n10-work
node n10/discovery/c1_threecap_physical_dump.js
python3 n10/discovery/c1_threecap_coordinate_bounds.py root
python3 n10/discovery/c1_threecap_physical_tree.py 200
```

The dump restores the immutable earlier C1 state and independently named
continuation nodes. The coordinate program seeks positive combinations
that prove bounds throughout the whole count. The tree program resumes
from its saved queue, retaining both children of every actual sign cut.
It accepts polynomial combinations only after exact integer reconstruction;
a numerical solver status is never a terminal argument. A fully signed
unresolved leaf remains explicitly open. The exact coordinate contractor
retains every endpoint line and all outward rounding.

`c1_threecap_physical_search.py NODE` probes one dumped node. It uses
the published actual-area and support inequalities, and nonnegative
products of degree at most three in the physical coordinates. The
source-family proofs, including both support-denominator signs and
the distinction between threshold-dependent and unconditional spread
bounds, are in the hand manuscript.

Once every branch is closed, the optional exporter is

```sh
python3 n10/discovery/c1_threecap_hand_export.py
```

It writes literal mathematical records under
`n10/hand/C1_TWO_CENTRAL_THREE_CAPS_TABLES/`, including expanded physical
polynomials, exact scalar ancestry, every positive multiplier and all
shifted coefficients. It refuses an unfinished queue. A regenerated
manuscript must be independently reviewed before its status is accepted;
running the exporter alone does not close a roadmap item.

The default discovery workspace is `n10/discovery/c1_physical_work/`.
Set `C1_PHYSICAL_WORKSPACE` to another scratch directory to keep separate
runs. The fixed proof and independent reader do not use that workspace.
