# N6 top-triple exact discovery checkpoint

This directory preserves work produced after the shared execution environment became unavailable. It is a **discovery checkpoint**, not an independently accepted addition to the hand proof. No Lean or CI result is asserted.

The reconstructed JavaScript model uses the published N6 top-triple hypotheses at doubled threshold 93/1000. It rebuilds actual orientation deductions, continuous rational coordinate boxes, explicit multiaffine endpoint-line refinements, and immutable scalar-area chains. Previously established scalar bounds may enter a later coordinate-refinement stage; each such source points to an earlier completed stage. Rational coordinate splits are inclusive on both sides and cover the complete interval.

## Preserved result

The author-generated tree covers the complete normalized BTTT top word `--+-` (FQR<0, FQS<0, FRS>0, QRS<0). Its sign tree has 16 binary splits and 17 leaves. Three metric leaves have the complete continuations specified in the manifest. Together these add nine rational coordinate splits and give 26 terminal contradictions. Every endpoint line and scalar update is retained. Independent geometric and arithmetic replay is still required before a hand-proof checkbox is changed.

The other residual BTTT words `----`, `---+`, `+--+`, and all six residual ITTT words remain open. This archive does not supersede or reconstruct the inaccessible Python/LP worktrees.

## Archive format and restoration

`n6_js_top_manifest.json` lists 15 ordered archive parts and every named packet root. The parts contain a deduplicated acyclic JSON object graph. The decoder is a function expression: evaluate `n6_js_top_decode.js`, then call it with the manifest and the parsed parts in their listed order. It checks backward references and returns immutable `roots`, together with `clone(name)` for obtaining a mutable independent packet.

Each graph node is a tagged primitive, array of earlier node IDs, or object whose keys and values refer to earlier node IDs. The archive removes only repeated copies of `reason.updates` and `geometric.trace`; the main update and trace fields are retained. This is lossless for every mathematical witness used by the checkpoint. Three representative roots were round-tripped exactly before preservation.

`n6_js_top_scalar_core.js` evaluates to the model API. `run(locations,word,extraSigns,options)` produces one complete geometry/box/scalar stage; options may supply an already proved box and area bounds with immutable origins. `n6_js_top_orchestration.js` evaluates to the feedback, sign-selection, and coupled-stage helpers. These are discovery generators, not independent readers. `n6_js_top_box_core.js` is a separate reusable exact physical-box contractor, tested against the retained 154-step root refinement.

The manifest's assembly describes the complete older closure of the third metric leaf and also identifies a shorter replacement frontier still under construction. The complete closure remains the one to replay until that optional replacement is finished and checked.

## Required review

A hand-proof assembly must independently establish the stated normalization and every initial region, replay all actual sign deductions and capacity witnesses, verify each initial and inherited source box, check every physical factor premise, reproduce all endpoint lines and outward rounding, replay each scalar relation and immutable reference, and confirm both children of every sign and coordinate split. The manifest deliberately distinguishes this outstanding acceptance work from the author-generated closure.
