# Discovery checkpoint: the triangular two-top N6 occupancy

This is a recovery checkpoint, not the proof entry point. The complete
geometric manuscript and standard-library verifier are in
[SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md](../../../proof/nine/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md).

The full hull is A,B,C,D,X,F,H; P is inside DXF, and Q is inside the
original anchor hexagon. Of the 57 seven-vertex radial words, five
put P inside DXF and 52 put Q inside the anchor hexagon. Keep all
260 ordered pairs. Split only CPQ in case230 and BPQ in case238,
giving 262 terminal cells.

The fixed raw cache now covers every terminal cell with 220 rational
cubic expressions containing 29,641 positive terms. Every expression
was expanded exactly before saving. The largest recorded upper bound
is −4128115667948309/4197433925959680, below −3/4. The linked proof
verifier checks the full geometric cover and every use of these weights.

The last CPQ-positive case uses four additional affine consequences
of both P,Q lying inside the actual triangle C,X,F. At s=8/73 and
rho=49/60, its doubled area is at least rho, hence

* f≤11/60;
* X_x−f≥49/60;
* X_y≥2234/2745;
* h−a≥480/803, by the actual area AFH≥s.

Its 267-term fixed expression has exact upper bound
−38290716504288171857/38798423692148736000. That expression is saved
both in the complete cache and separately as the stronger candidate.

The model and search script are optional discovery tools. The model
contains no quadrilateral-pair forcing for P and Q: one of them is
outside the old anchor quadrilateral. The search uses SciPy only to
discover positive weights; exact residual expansion checks each saved
candidate. Numerical optimization is not a proof premise.
