# Roadmap: complete the nine-point hand proof

**Target:** For every nine points in the unit square, some triangle has area at most

\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]

The exact construction attains \(A_0\). The existing executable proof **claims** complete global coverage, but the hand proof is not complete and neither source nor checker is externally audited.

## Current mathematics

| Gate | Result | Status |
|---|---|---|
| G0 | Exact construction; 84 triangle areas; candidate equality | Written and algebraically checked |
| G1 | Three-family boundary normalization, following Sudermann-Merx | Written (review needed) |
| G2 | Sharp bound for the eight-boundary-point orientation chamber with arbitrary asymmetric coordinates | Hand proof in [hand/HAND_PROOF.md](hand/HAND_PROOF.md) |
| G3 | Strict local maximum against arbitrary 18-coordinate perturbations | Qualitative hand proof; separate explicit 1/200-radius arithmetic certificate |
| G4 | Type III, three prescribed corners and six free points | Exact computer cover only; no hand exclusion |
| G5 | Type II, adjacent corners and five free points | Exact computer cover only; no hand exclusion |
| G6 | Remaining Type I: five boundary points and four free points | **Main open hand-proof obstruction** |
| G7 | Global sharp hand theorem and uniqueness; independent audit | Conditional on G4–G6 |

A *candidate* theorem, not proved here, is that a maximizer with minimum area at least \(A_0\) admits a representation with eight boundary points in the chamber handled by G2. Do not promote this conjecture to a lemma without proof.

## Priority 1: global Type-I structural argument (G6)

1. Use the published five-contact normalization; **do not assume** eight boundary points or symmetry of an arbitrary optimizer.
2. Fix eight points and study the admissible positions of a ninth point at threshold \(t\). Each condition \(|\det(p_j-p_i,z-p_i)|\ge 2t\) removes an open strip. In each sign chamber the feasible set is a convex polygon.
3. Investigate whether a maximizer can move enough interior points to the boundary without lowering its minimum triangle area. An obstruction is a trapped component bounded by critical strips; classify these *structurally*, not by adding arbitrarily many local subcases.
4. Prove either:
   - a **boundary-saturation theorem** reducing every competitive maximizer to G2 or finitely many other hand-excluded chambers; or
   - a **global stability theorem**: every Type-I point set outside a prescribed small neighborhood of the candidate has minimum area strictly below \(A_0\).
5. Before committing to any route, seek a rigorous counterexample to its proposed strengthened lemma. In particular the statement “every nearly optimal configuration has eight boundary points” is false: small inward perturbations of the known candidate preserve near-optimality.

**Acceptance:** an unconditional theorem that covers **all** four-free-point Type-I configurations at the sharp threshold. A proof about an observed active pattern or a single chamber does not pass.

## Priority 2: all eight-boundary chambers

G2 currently assumes two points on each of the four square sides in the specified cyclic order and that the interior point lies in five oriented half-planes. Complete the other boundary multiplicities and orientation cases. Every omitted case must have a strict hand bound or a symmetry/area-preserving transformation to G2.

**Acceptance:** every possible eight-boundary-point configuration is bounded by \(A_0\), with exact equality classification.

## Priority 3: corner families (G4, G5)

- **Type III:** three fixed corners, six otherwise free points. The exact checker reports \(\min \operatorname{Area}\le27/500<A_0\).
- **Type II:** two adjacent corners, two additional prescribed edge points, five otherwise free points. The checker reports \(\min \operatorname{Area}\le137/2500<A_0\).

A hand proof need only establish any strict upper bound below \(A_0\); matching the computer's rational margins is unnecessary. Look for universal area decompositions, not a large manual reproduction of grid boxes.

**Acceptance:** a finite written derivation for each complete continuous family, including its boundary and degeneration cases.

## Priority 4: assemble and audit

1. Combine exact construction, exhaustive normalization, G2–G6.
2. Check treatment of orientation signs, coincident boundary contacts, collinear degeneracies, square symmetries and equality conditions.
3. Verify the independent exact C++ source and the numerical-free area and local claims; reproduce the full global Type-I coverage without treating previous receipts as proof.
4. Optionally formalize the resulting short lemmas in Lean 4. No Lean file currently claims an unrestricted theorem.

## Explicit non-goals

- Do not report the hand proof as complete until G4–G6 pass.
- Do not replace an exact sharp upper bound by arbitrarily small numerical gaps.
- Do not claim that the local *qualitative* radius in the hand argument supports the original interval cover's explicit \(1/200\) stopping rule.
- Do not count a solved continuous subregion as a solved global case.
- Do not interpret large node counts as a proof of a conceptual reduction.

## Starting points

- [hand/HAND_PROOF.md](hand/HAND_PROOF.md): sharp eleven-triangle chamber inequality, positive stress and local proof, exact area table.
- [hand/BOUNDARY_REDUCTION.md](hand/BOUNDARY_REDUCTION.md): three structural normal forms.
- [exact/GLOBAL_PROOF.md](exact/GLOBAL_PROOF.md): exact continuous-box cover and acceptance conditions.
- [exact/STATUS.md](exact/STATUS.md): purported completed computational runs, limitations and independent implementation counts.
- Sudermann-Merx, [arXiv:2603.11107v3](https://arxiv.org/abs/2603.11107): published structural reduction and construction.

**Primary next deliverable:** one true global structural lemma for G6 (or a concrete counterexample to the proposed lemma), rather than another small interval box.
