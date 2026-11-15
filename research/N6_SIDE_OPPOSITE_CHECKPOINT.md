# Discovery checkpoint: N6 side cap, opposite cap, and interior point

This directory preserves the recoverable search state after the workspace
rollback. It is **discovery data, not a completed proof or an independently
audited certificate package**. The complete geometric assembly and its
exact verifier are now in
[SIX_BOUNDARY_SIDE_OPPOSITE.md](../hand/SIX_BOUNDARY_SIDE_OPPOSITE.md).
This cache preserves discovery state; it is not the proof entry point.

The anchors are A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d),
F=(f,1), with a≤d≤h and b≤f≤c. There is a right-cap point
X=(x,y), an opposite-cap point Y=(z,w), and Q=(r,t) inside the
original anchor hexagon. The full hull order is A,B,C,X,D,Y,F,H.

The search model reconstructs 97 necessary radial words from the
antisymmetry relations, with r₂≥2, r₄≥2 and 2≤r₁≤5.
At doubled threshold 8/73, 93 whole words have fixed cubic expressions.
The four exceptions are handled as follows:

| Word index | Further branches |
|---|---|
| 23 | Exclude x≤z, w≤h, h−a≤11/20, h−a≥2/3, z−f≤11/20, f≥1/4, c≤2/3; the remaining chamber maps directly to SHARP_DF_MOVING.md. |
| 54 | Exclude x≤z and w≤h; rotate the remaining chamber by (x,y)↦(y,1−x) into SHARP_BD_MOVING.md. |
| 69 | Exclude x≤z and w≤h, then exclude x≥z,w≥h by a cubic. |
| 84 | Exclude x≤z and w≤h, then exclude x≥z,w≥h by a quartic. |

The raw cache contains 108 fixed rational expressions with 22,019
positive terms. All their exact monomial cube upper bounds were checked
negative by the discovery scripts. The quartic uses products of two
nonnegative quadratic area costs in addition to the cubic term types.
The linked manuscript and verifier reconstruct the complete cover and
all premises separately from these discovery scripts.

`n6_side_opposite_rebuild.py` is a self-contained Fraction/SciPy discovery
model. With no arguments it searches every whole word. Arguments such as
`23:l_low` or `69:x_high:y_high` select the explicit affine branches.
`n6_side_opposite_quartic.py` searches the final word84 branch. Both write
their temporary output next to the script. They are not verification tools;
running an optimizer is not a proof premise.

`n6_side_opposite_raw_cache.json` preserves the fixed integer weights and
the exact residual bounds so they do not depend on successful regeneration.
