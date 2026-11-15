# Heilbronn n=10: hand-proof conversion roadmap

Baseline: computer-assisted proof package reviewed at commit
`6677298653e118e446d5cd089f5ecdce1fc5fc0f`, together with the separate
November 15 audit bundle supplied in the project conversation.
The computer-assisted result is not a premise of the proposed hand proof.
The existing top-level `hand/` directory concerns n=9 and is not this ledger.

## Acceptance rule

A checked item requires a written argument with explicit hypotheses, coverage,
identities and sign justifications that a reader can verify without running
an exhaustive search or trusting a solver or certificate file. Symbolic
computation may discover and regression-check identities, but the displayed
argument must stand on its own. A proof of a subchamber does not close its
parent family. No numerical percentage of completion is assigned.

Target: every ten-point configuration in the closed unit square has an
ordinary unsigned triangle area at most A*, where

    f(g) = 12 g^3 - 27 g^2 + 20 g - 4 = 0,
    a = 1 - 3g + 2g^2,
    A* = 5g^2/8 - g^3/2.

The equality target is the candidate in the seed package, up to square
symmetry and relabeling.

## Itemized checklist

### Gate I — exact attainment and exhaustive analytic reduction

- [ ] HP01. Isolate g rationally and establish the exact candidate value.
- [ ] HP02. Replace the 120-area attainment computation by a complete short
      symmetry-orbit table, with explicit positive polynomial gaps.
- [ ] HP03. Prove existence of a maximizer, minimum enclosing parallelogram,
      and opposite-contact projection overlap.
- [ ] HP04. Prove finite shear normalization and exhaustive coverage by the
      five domains III, C2, II, C1 and N, including all boundary cases.
- [ ] HP05. Refine corner-free normalized maximizers into the three exact
      boundary counts N6, N7 and N8; do not assume eight boundary points.

### Gate II — replace the local computer certificates by a hand argument

- [ ] HP06. Prove a general positive-stress / one-dimensional-kernel /
      negative-curvature criterion for strict local optimality.
- [ ] HP07. Verify the candidate's positive stress by a few symmetry identities.
- [ ] HP08. Determine the common kernel by explicit small linear systems,
      rather than the 38 stored dual certificates.
- [ ] HP09. Prove the negative curvature and deduce unrestricted strict local
      optimality, allowing all twenty coordinates to move.
- [ ] HP10. Prove the sharp upper bound and equality classification in the
      explicitly defined candidate-oriented symmetric chamber.

HP09 initially seeks an existential positive neighborhood radius. That would
NOT reprove the numerical radius 1/2000 used by the old exact checker. A
quantitative radius is a separate optional conversion task unless a later
hand localization theorem needs a specific radius. HP10 does not establish
that arbitrary maximizing configurations are symmetric.

### Gate III — the global hand-proof obligations

- [ ] HP11-III. Exclude normalized maximizers with at least three corners.
- [ ] HP11-C2. Exclude normalized maximizers with two opposite corners.
- [ ] HP11-II. Exclude normalized maximizers with two adjacent corners.
- [ ] HP11-C1. Exclude normalized maximizers with exactly one corner.
- [ ] HP12-N6. Exclude corner-free normalized maximizers with six boundary
      points and four strictly interior points.
- [ ] HP12-N7. Exclude corner-free normalized maximizers with seven boundary
      points and three strictly interior points.
- [ ] HP12-N8. Prove the sharp bound and candidate equality classification
      for the complete asymmetric eight-boundary domain, including every
      orientation of the two interior points.

These are seven exhaustive continuous-domain obligations, not seven small
finite arithmetic checks. Each must either admit a uniform inequality or
be divided into explicitly described subdomains whose union is proved to
cover it. New subdivisions must retain their parent item until all children
are closed. No particular number of smaller subcases is claimed in advance.

Important: N6 and N7 are not closed sets. Configurations of these types can
approach the eight-boundary candidate. Do not demand a uniform rational gap
below A* on those entire domains; excluding their attainment at a global
maximum is sufficient. The complete N8 item may use HP10 only after a proved
symmetry reduction, or may bypass symmetry and prove the asymmetric bound
directly. Ordinary averaging is not such a reduction.

### Gate IV — assembly and final scrutiny

- [ ] HP13. Prove the conditional shear-reversal lemma: strict local isolation
      of a normalized equality case rules out any last nonconstant shear.
- [ ] HP14. Assemble HP01–HP12 into the unrestricted upper bound and use HP13
      to classify equality in the original, unnormalized configurations.
- [ ] HP15. Audit the complete hand manuscript line by line, including zero
      determinants, coincident points, sign changes, closure faces, and every
      equality condition. Remove all dependence on machine enumeration.

## Work order

First write and check Gates I and II, so that the global work has a small
explicit terminal argument rather than a large local certificate dependency.
Then prioritize the first complete global domain that admits a uniform
argument; preserve the seven-item global ledger while doing so. A new local
lemma is worthwhile only when it is named in that dependency graph.

The finite computer cover remains a discovery tool and a regression check.
Its 27 exceptional roots are not the whole hand-proof workload: the ordinary
roots outside those boxes still require a global analytic replacement.

## Checkpoint 0

The roadmap is recorded. Mathematical items are not yet checked off in this
file; each will be marked only after its hand proof is written and reviewed.
No CI, Lean compilation or n=9 file changes are part of this conversion.
