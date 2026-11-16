# Heilbronn n=10: itemized hand-proof roadmap

Checkpoint 24.

The computer-assisted proof package reviewed at commit
`6677298653e118e446d5cd089f5ecdce1fc5fc0f` is a discovery aid, not a premise
of the proposed hand proof. The existing top-level `hand/` directory concerns
n=9; this conversion is isolated under `n10/hand/`.

## Acceptance rule

A checked item has a written argument with explicit hypotheses, coverage,
identities and sign justifications that a reader can verify without running
an exhaustive search or trusting a solver or certificate file. Symbolic
computation may discover and regression-check identities; the displayed
argument must stand on its own. A closed subchamber does not close its parent.
No numerical percentage of completion is assigned.

Target: every ten-point configuration in the closed unit square has an
ordinary unsigned triangle area at most A*, where

    f(g)=12g^3-27g^2+20g-4=0,
    a=1-3g+2g^2,
    A*=5g^2/8-g^3/2.

The equality target is the candidate in ATTAINMENT.md, up to square symmetry
and relabeling. The unrestricted hand upper bound is NOT yet complete.

## Gate I — exact attainment and exhaustive analytic reduction

- [x] HP01. Isolate g rationally and establish the exact candidate value.
      Proof: ATTAINMENT.md, Section 1.
- [x] HP02. Replace the 120-area attainment computation by 32 symmetry
      orbits, with 22 explicit positive gap polynomials and four active
      orbits. Proof: ATTAINMENT.md, Sections 2–4.
- [x] HP03. Prove existence of a maximizer, minimum enclosing parallelogram,
      and opposite-contact projection overlap.
      Proof: NORMALIZATION.md, Sections 1–2.
- [x] HP04. Prove finite shear normalization and exhaustive coverage by
      III, C2, II, C1 and N, including boundary cases.
      Proof: NORMALIZATION.md, Sections 3–5.
- [x] HP05. Refine corner-free normalized maximizers into N6, N7 and N8.
      Proof: NORMALIZATION.md, Section 6. This does not exclude N6 or N7.

## Gate II — replace local computer certificates by a hand argument

- [x] HP06. Prove the positive-stress / one-dimensional-kernel /
      negative-curvature criterion. Proof: LOCAL_RIGIDITY.md, Section 1.
- [x] HP07. Check the candidate's positive stress using the three point
      representatives A,C,O. Proof: LOCAL_RIGIDITY.md, Section 2.
- [x] HP08. Determine the common kernel with four explicit three-variable
      symmetry sectors, eliminating the need for 38 stored dual certificates.
      Proof: LOCAL_RIGIDITY.md, Section 3.
- [x] HP09. Check four quadratic values and prove unrestricted strict local
      optimality, allowing all twenty coordinates to move.
      Proof: LOCAL_RIGIDITY.md, Section 4 and the general lemma.
- [x] HP10. Prove the sharp upper bound and equality classification throughout
      the complete stated symmetric three-parameter family, including both
      ADO orientations. The opposite orientation has m<=1/24<A*.
      Proof: SYMMETRIC_CHAMBER.md.

HP09 proves existence of a positive neighborhood radius. It does NOT reprove
the explicit radius 1/2000 used in the old exact checker. Quantifying a radius
is a separate optional task unless later hand localization requires one.
HP10 does not prove that arbitrary maximizers are symmetric. Its former ADO
orientation restriction is now discharged by a complete two-case inequality.

## Gate III — global cases, with real closures recorded

### HP11-III: at least three occupied corners

- [x] HP11-III. Complete the entire at-least-three-corner family.
      THREE_CORNERS_COMPLETE.md assembles every corner count and fan split.
  - [x] III-4C. Four occupied corners, all six other points unrestricted:
        m(P)<A*, since m(P)<=(sqrt(33)-5)/16<A*.
        Proof: FOUR_CORNERS.md. This is a complete global subfamily.
  - [x] III-3C-U5+. Exactly three corners and at least five free points above
        their diagonal: impossible at m>=A* by the 11-triangle occupancy
        bound. Proof: NORMALIZATION.md, Section 7.
  - [x] III-3C-U0. Exactly three corners: 0 upper and 7 lower free points.
        Proof: THREE_CORNERS.md, eight-point endpoint lemma.
  - [x] III-3C-U1. Exactly three corners: 1 upper and 6 lower free points.
        Proof: THREE_CORNERS.md, the same complete endpoint lemma.
  - [x] III-3C-U2. Exactly three corners: 2 upper and 5 lower free points.
        Proof: THREE_CORNERS.md, Sections 5–9, seven-point endpoint theorem.
  - [x] III-3C-U3. Exactly three corners: 3 upper and 4 lower free points.
    - [x] U3-CLUSTERED. Some upper point has the other two in one fan
          triangle. The universal six-point theorem gives m<93/2000<A*,
          with all four lower points unrestricted. Proof: CLUSTERED_TRIANGLE.md.
    - [x] U3-DISTRIBUTED. At every upper point, the other two occupy
          different fan triangles. Choose Y with least B-barycentric
          coordinate, as specified in U3_FOUR_ONE_SIDE.md, and split the
          four lower points by BY. This is the remaining U3 alternative.
      - [x] U3-DISTRIBUTED-4/0 and 0/4. All four lower points on one fan
            side: the lower hull is reduced to six pentagon orders, each
            excluded by a fully printed cubic inequality. The six tables
            have 269 small-integer entries in total.
            Proof: U3_FOUR_ONE_SIDE.md.
      - [x] U3-DISTRIBUTED-3/1 and 1/3. The lower quadrilateral and
            a discarded-point argument reduce both splits to a nine-point
            model. Twelve geometric rows yield twenty printed cubic
            contradictions with 1,392 positive integer entries, maximum
            382. Proof: U3_THREE_ONE.md.
      - [x] U3-DISTRIBUTED-2/2. The entire balanced mixed fan split.
            A nine-point geometric reduction leaves sixteen actual sign
            choices, one split once more by CPS. The seventeen printed
            cubic contradictions have 1,463 positive integer entries,
            all at most 284. Proof: U3_TWO_TWO.md.
  - [x] III-3C-U4. Exactly three corners: 4 upper and 3 lower free points.
        Proof: TRIANGLE_OCCUPANCY.md. In fact any triangle containing
        four further points forces m<=1/(15+3 sqrt(5))<A*.

For the exactly-three-corner split use corners (0,0),(0,1),(1,1), s=2A*, and

    U_s=conv{(s,2s),(s,1-s),(1-2s,1-s)},
    L_s=conv{(s,0),(1,0),(1,1-s)}.

The quoted counts are in these two explicit triangles. A competitive point
cannot lie on the separating diagonal. The count split is proved exhaustive.
The clustered and all five distributed fan splits are now excluded.
THREE_CORNERS_COMPLETE.md assembles the full III family, including its
four-corner alternative and all zero-area faces.

### Other corner and corner-free families

- [x] GLOBAL-Q3. In the original unit square at doubled minimum sigma,
      every actual quadrilateral containing three further points has
      doubled area greater than 93/91. Ten exhaustive geometric rows
      have 153 printed integer entries. Proof: SQUARE_QUADRILATERAL_THREE.md.
- [x] HP11-C2. Exclude the complete normalized two-opposite-corner family.
      The exhaustive half-cell catalogue has all four subfamilies closed;
      OPPOSITE_CORNERS.md, Section 10 assembles them and covers boundary faces.
  - [x] C2-CENTRAL/CENTRAL. Both free points in each diagonal half are
        in its central cell II. The two corner triangles and the middle
        quadrilateral cannot accommodate all four free points.
        Proof: OPPOSITE_CORNERS.md and C2_SAME_HALF_CORNER.md.
  - [x] C2-MIXED/CENTRAL. One half has a noncentral point. It is the
        unique free point in its corner triangle. The other three lie in
        a quadrilateral whose actual diagonal splits it into two triangles
        that each admit at most one point. Proof: C2_MIXED_CENTRAL.md,
        using the complete cross-pair theorem in C2_MIXED_CROSS.md.
  - [x] C2-MIXED/SAME. Both halves have noncentral points toward the same
        occupied corner. Every mixed-half orientation forces both into
        the same corner triangle, where all pair-line orientations are
        excluded. Proof: C2_MIXED.md and C2_NONCENTRAL_CUT.md.
  - [x] C2-MIXED/OPPOSITE. Both halves have noncentral points toward opposite
        occupied corners. A common horizontal interval fixes two contact
        signs. One remaining orientation contradicts a mate-product bound;
        the other forces two opposed polynomial inequalities that cannot
        both hold. Proof: C2_OPPOSITE_MIXED.md and C2_OPPOSITE_REVERSE.md.
- [ ] HP11-II. Exclude normalized maximizers with two adjacent corners.
  - [x] II-REDUCTION. Reduce to four occupancy rows; exclude the left
        quadrilateral hull and the right triangular/noncentral hull
        alternatives in (2,2,3), and the two-quadrilateral-side alternative
        in (2,3,2). Proof: TYPE_II.md. No whole row is claimed closed.
  - [ ] II-(1,2,4). The endpoint-six theorem gives b<=1-Gamma3*sigma.
    - [x] Both central points below CE: excluded by the two-interior-point
          capacity. If both are above CE, the bottom support fan EBH is
          empty for every right hull. Proof: TYPE_II_R4.md.
    - [x] The entire triangular-right hull alternative, with every central
          CE cut. TYPE_II_R4_TRIANGLE_COMPLETE.md assembles the exhaustive
          three-row proof after the unique middle fan placement.
      - [x] Lower-fan point P below CE, with Q on either side: an empty
            supporting fan forces two points into an actual quadrilateral
            whose doubled area is below 721/1000<8sigma.
            Proof: TYPE_II_R4_LOWER_P.md.
      - [x] P above CE and Q below: two containing triangles give opposing
            monotone scalar bounds, split at b=327/2500.
            Proof: TYPE_II_R4_ONE_UPPER.md.
      - [x] Both above CE: the forced nested chamber has one printed cubic
            contradiction with 76 positive integer entries, maximum 46.
            Proof: TYPE_II_R4_UPPER_P.md and TYPE_II_R4_TWO_UPPER.md.
    - [ ] Nontriangular right hull, with one or both central points above
          CE. TYPE_II_UPPER_PAIR.md fixes E negative in the both-upper cut
          for every right hull, but this child remains open.
      - [x] Actual quadrilateral hull and exhaustive support-cell pairs
            I+II, II+II, II+III. In II+II the actual fans DHF and EHF
            are empty, leaving only D-fan counts (1,0,3) and (2,0,2).
            Proof: TYPE_II_R4_NONTRIANGULAR.md; the next item closes both.
      - [x] The entire II+II support-cell pair is excluded. A sharpened
            height cap and reciprocal bound reduce the six-point problem
            to a printed positive quartic. The proof is independent of
            the two central DCB points. Proof: TYPE_II_R4_CENTRAL.md.
      - [x] The entire I+II mixed support-cell pair. Two line orientations
            have scalar contradictions; the third forces the noncentral
            point into DEH and reduces to six physical variables. The
            printed quartic has 86 positive integer entries, maximum 6437.
            Proof: TYPE_II_R4_MIXED_I.md.
      - [ ] The II+III mixed support-cell pair.
  - [ ] II-(1,3,3). Its central triple must be distributed.
  - [ ] II-(2,2,3). Triangular left hull; nontriangular right hull whose
        support-normalized additional point is in cell II.
  - [ ] II-(2,3,2). At least one triangular side hull; distributed central
        triple.
- [ ] HP11-C1. Exclude normalized maximizers with exactly one corner.
- [ ] HP12-N6. Exclude corner-free normalized maximizers with six boundary
      points and four strictly interior points.
  - [x] N6-PLACEMENTS. The lower-left cap is empty; both anchor regions
        have capacity two; each exterior cap has at most three free points.
        The exact six-anchor hull must split its free points 2/2.
        Proof: N6_PLACEMENTS.md. No surviving count is excluded here.
  - [x] N6-PROJECTED. Strict sharp bounds in both adjacent-secondary
        omission-pair orbits, with all twelve final area gains proved.
        These include every normalized N6 candidate neighborhood.
        Proof: N6_PROJECTED_CHAMBERS.md.
  - [x] N6-EXTERIOR-CUTS. Neither side cap contains three free points;
        the two side caps cannot each contain two; three top-cap points
        forbid any side-cap point. Proof: N6_EXTERIOR_CUTS.md.
  - [ ] Complete the exact-hull 2/2 case and all exterior-cap placements
        outside the two stated projection chambers.
- [ ] HP12-N7. Exclude corner-free normalized maximizers with seven boundary
      points and three strictly interior points.
  - [x] N7-PLACEMENTS. Both lower caps are empty, each upper cap has
        capacity two, and five remaining count rows are exhaustive.
        Proof: N7_PLACEMENTS.md.
  - [x] N7-THREE-EXTERIOR. The entire (2,1,0) count is impossible by
        the shared endpoint-triangle area budget. The larger endpoint
        triangles also force chord placements in the two-exterior rows.
        Proof: N7_UPPER_OCCUPANCY.md.
  - [x] N7-OPPOSITE-CAPS. The two upper exterior caps cannot both be
        occupied. A seven-point scalar inequality gives a doubled
        triangle area below 1/11; this closes the whole (1,1,1) row.
        Proof: N7_OPPOSITE_UPPER_CAPS.md.
  - [x] N7-SAME-CAP. One upper exterior cap cannot contain two free
        points. The convex hull and one height order have short analytic
        exclusions; five exhaustive ray cuts have printed cubic sums
        with 523 positive integer entries. Proof: N7_SAME_UPPER_CAP.md.
  - [x] N7-PROJECTED. Strict sharp bounds for each single inward-secondary
        chamber; every normalized N7 candidate neighborhood is included.
        Proof: N7_PROJECTED_CHAMBER.md.
  - [x] N7-PROJECTED-SIGNS. Remove the extra projection-coordinate
        inequality from the entire normalized good-sign chamber, at
        every inward depth. Two exhaustive geometric rows have printed
        cubic contradictions with 642 positive integer entries.
        Proof: N7_PROJECTED_SIGNS.md.
  - [ ] Complete the two surviving placement rows outside the proved
        sign chambers: (0,0,3) and (1,0,2).
- [x] HP12-N8. Sharp bound and candidate equality classification for the
      complete asymmetric eight-boundary domain, including every orientation
      of the two interior points. N8_COMPLETE.md assembles the exhaustive
      catalogue and all its closures; no symmetry is assumed.
  - [x] N8-OCTAGON. Both interior points lie strictly inside the boundary
        octagon. A point in any empty corner triangle forces a smaller area.
        Proof: N8_OP_LINE_CAPS.md, Section 1.
  - [x] N8-SMALL-ARCS. The line OP cannot leave just one or two boundary
        vertices on one side, including both geometric kinds of adjacent
        pair. Proof: N8_OP_LINE_CAPS.md, using SIX_POINT_ENDPOINT.md.
  - [x] N8-CANDIDATE-SIGNS. Full asymmetric sharp bound and unique equality
        under the eight signs ADO+,BGO-,CFP+,EHP+,AOP+,BOP-,EOP-,FOP+,
        with O,P coordinatewise ordered. Twelve actual triangle inequalities
        give a scalar envelope; equality forces all candidate symmetries.
        Proof: ASYMMETRIC_SIGN_CHAMBER.md. No symmetry hypothesis is used.
  - [x] N8-OP-CATALOGUE. The remaining line patterns are one 3/5 class
        and two 4/4 classes, up to square symmetry. In the corner-edge
        4/4 class, projection overlap supplies the coordinatewise ordering
        needed by N8-CANDIDATE-SIGNS. Proof: N8_OP_LINE_CAPS.md.
  - [x] N8-3/5. The complete three-versus-five boundary arc class.
        The triangle capacities force its placement, then ten exhaustive
        actual-sign rows have printed cubic contradictions. All 1,807
        positive integer entries, exact bounds, and occupancy/separation
        premises are supplied. Proof: N8_THREE_FIVE.md.
  - [x] N8-4/4-SIDE. The line crosses opposite same-side boundary edges.
    - [x] Both interior points in ABEF or both in CDGH: the complete
          contained subclass is excluded by four printed cubic rows,
          including their symmetry reductions. Proof: N8_SIDE_CONTAINED.md.
    - [x] Outside both common quadrilaterals: eight double-left rows and
          five top-adjacent rows exhaust the placement, with all 2,457
          positive integer entries printed. Proof: N8_SIDE_OUTSIDE.md.
  - [x] N8-4/4-CORNER-OBLIQUE. All failures of ADO+,BGO-,CFP+,EHP+
        are reduced by explicit symmetries to seven exhaustive rows, with
        all 1,442 integer entries printed. Proof: N8_CORNER_OBLIQUE.md.

There are now FOUR named unresolved global obligations: II, C1, N6 and N7.
These are continuous-domain obligations, not four small arithmetic checks. Each must
admit a uniform argument or an explicitly exhaustive further subdivision.
New subdivisions must retain their parent until all children close. No bound
on the eventual number of smaller subcases is claimed.

N6 and N7 are not closed sets and can approach the eight-boundary candidate.
Do not demand a uniform rational gap below A* on those entire domains;
excluding their attainment by a maximizer is sufficient. The candidate sign
chamber is now bounded directly without symmetry by ASYMMETRIC_SIGN_CHAMBER.md.
For N8, the complete orientation analysis now forces those eight signs
after all other cases are excluded. Extending that conclusion to the
strictly interior points in N6 and N7 requires a separate argument.

## Gate IV — assembly and final scrutiny

- [x] HP13. Prove the conditional shear-reversal lemma: strict local isolation
      of a normalized equality case rules out a last nonconstant shear.
      Proof: NORMALIZATION.md, Section 8. Its global premise remains open.
- [ ] HP14. Assemble the global exclusions and N8 theorem into the
      unrestricted upper bound, then classify equality using HP13.
- [ ] HP15. Audit the complete hand manuscript line by line, including zero
      determinants, coincidences, sign changes, closure faces and equality.
      Remove every dependence on machine enumeration.

## Completed proof files

| File | What is actually proved |
|---|---|
| ATTAINMENT.md | Exact lower bound, 16 active areas, 104 strict gaps |
| NORMALIZATION.md | Exhaustive reduction, boundary-count catalogue, occupancy cut, conditional equality transfer |
| LOCAL_RIGIDITY.md | Strict local optimality without stored dual certificates; existential radius |
| SYMMETRIC_CHAMBER.md | Sharp bound and equality throughout the stated symmetric family; both orientations |
| ASYMMETRIC_SIGN_CHAMBER.md | Sharp bound and equality in the full asymmetric candidate sign chamber; no averaging assumption |
| FOUR_CORNERS.md | Full four-corner exclusion with bound (sqrt(33)-5)/16 |
| TRIANGLE_OCCUPANCY.md | Universal bound for a triangle containing four points; full U4 exclusion |
| THREE_CORNERS.md | Seven-point endpoint theorem; full U0, U1 and U2 exclusions |
| SIX_POINT_ENDPOINT.md | Uniform six-point endpoint bound S/Gamma3; nontriangular hull bound strictly below S/9 |
| CLUSTERED_TRIANGLE.md | Universal exclusion of three clustered interior points; full U3-CLUSTERED exclusion |
| U3_FOUR_ONE_SIDE.md | Both 4/0 and 0/4 distributed fan splits; exhaustive hull reduction and six printed cubic contradictions |
| U3_TWO_TWO.md | Complete balanced 2/2 split; exhaustive seventeen-row cubic proof with all 1,463 integer entries printed |
| U3_THREE_ONE.md | Complete 3/1 and 1/3 splits; twelve geometric cases and twenty printed cubic rows, 1,392 integer entries |
| THREE_CORNERS_COMPLETE.md | Complete at-least-three-corner exclusion, assembling all counts and fan splits |
| TYPE_II.md | Four-row adjacent-corner reduction and complete stated side-hull exclusions; full II remains open |
| TYPE_II_R4.md | Complete both-below-CE exclusion in (1,2,4), and uniform empty bottom fan in its both-above cut |
| TYPE_II_R4_TRIANGLE.md | Unique middle fan placement for every triangular-right hull in (1,2,4), with fixed central-pair D/B signs |
| TYPE_II_R4_UPPER_P.md | Upper-P containments and signs; the unique nested chamber when both central points are above CE |
| TYPE_II_R4_TWO_UPPER.md | Complete both-upper triangular-right exclusion; one printed cubic with 76 integer entries |
| TYPE_II_R4_ONE_UPPER.md | Complete upper-P/lower-Q triangular-right exclusion by two opposing scalar bounds |
| TYPE_II_R4_LOWER_P.md | Complete lower-P triangular-right exclusion, allowing either CE side of Q |
| TYPE_II_R4_TRIANGLE_COMPLETE.md | Full triangular-right child of Type-II (1,2,4), including all central CE cuts |
| TYPE_II_R4_NONTRIANGULAR.md | Exact quadrilateral right-hull catalogue, stronger bottom-contact bound, and two empty middle fans in the II+II pair |
| TYPE_II_R4_CENTRAL.md | Complete II+II right-support exclusion; reusable central six-point threshold strictly below 31/299 |
| TYPE_II_UPPER_PAIR.md | Complete opposite-B/E sign exclusion for the two upper central points, with every right hull allowed |
| N8_OP_LINE_CAPS.md | Octagon containment, all 1/7 and 2/6 line exclusions, and the exhaustive remaining OP catalogue |
| N8_TRIANGLE_CAPS.md | Uniform actual-triangle capacity and complete forced placement in the 3/5 line class; no class closure claimed |
| N8_THREE_FIVE.md | Entire 3/5 line class excluded by ten exhaustive cubic rows with all 1,807 integer entries printed |
| N8_SIDE_CONTAINED.md | Complete ABEF/CDGH-contained side-line subclass, with all four rows and 867 integer entries printed |
| N8_SIDE_OUTSIDE.md | Every remaining same-side 4/4 placement, with thirteen exhaustive rows and all 2,457 integer entries printed |
| N8_CORNER_OBLIQUE.md | Every oblique sign failure in the corner-edge 4/4 class, with seven rows and all 1,442 integer entries printed |
| N8_COMPLETE.md | Complete asymmetric eight-boundary bound and exact candidate equality classification |
| N8_BOUNDARY_RANGES.md | Stronger uniform coordinate ranges and four definite contact-overlap bounds from the eight ears alone |
| QUADRILATERAL_SPREAD.md | Two-diagonal spread bound 1-6t for t>=1/11, threshold-free bound 1-(3+2sqrt(2))t, and explicit N8 applications |
| QUADRILATERAL_THREE.md | Any actual quadrilateral of doubled area at most one has capacity two at sigma; nine exhaustive rows, 139 printed integer entries |
| SQUARE_QUADRILATERAL_THREE.md | Stronger unit-square capacity two up to doubled area 93/91; ten geometric rows, 153 printed integer entries |
| N6_PLACEMENTS.md | Exhaustive first placement reduction; exact six-anchor hull has a 2/2 free-point split |
| N6_PROJECTED_CHAMBERS.md | Strict sharp bounds for both two-secondary omission-pair orbits; complete normalized N6 candidate neighborhoods |
| N6_EXTERIOR_CUTS.md | Complete exclusions of side-cap triples, two points in each side cap, and a top triple plus a side-cap point |
| N7_PLACEMENTS.md | Lower-cap exclusions, upper-cap capacity two, five exhaustive remaining counts and a uniform rational box |
| N7_UPPER_OCCUPANCY.md | Complete (2,1,0) exclusion, at least one free point in the heptagon, and two-exterior chord placements |
| N7_OPPOSITE_UPPER_CAPS.md | Complete exclusion of simultaneous occupancy of the two upper caps, including the entire (1,1,1) row |
| N7_SAME_UPPER_CAP.md | Complete exclusion of two points in one upper cap, including both hull types, both height orders, and five ray cuts |
| N7_PROJECTED_CHAMBER.md | Strict sharp bound in each single inward-secondary chamber; complete normalized N7 candidate neighborhoods |
| N7_PROJECTED_SIGNS.md | Complete normalized inward-secondary good-sign chamber without an extra coordinate condition; two cubic rows, 642 printed integer entries |
| OPPOSITE_CORNERS.md | Uniform C2 contact bounds, central/central exclusion, and complete C2 assembly |
| C2_SAME_HALF_CORNER.md | All orientations of two central points from one half in a C2 corner triangle |
| C2_MIXED.md | Complete same-corner mixed/mixed C2 exclusion; exhaustive half-line catalogue |
| C2_NONCENTRAL_CUT.md | Noncentral corner-cut inequality, empty-fan bound, and complete corner-pair exclusion |
| C2_MIXED_CORNER.md | Universal noncentral corner containment, including opposite-corner mixed halves |
| C2_MIXED_CROSS.md | Complete exclusion of a noncentral/central cross pair in the noncentral corner |
| C2_MIXED_CENTRAL.md | Full mixed/central C2 exclusion by a two-triangle capacity contradiction |
| C2_OPPOSITE_MIXED.md | Complete opposite-corner mixed exclusion, with the exhaustive two-orientation reduction |
| C2_OPPOSITE_REVERSE.md | Final opposite-mixed orientation excluded by an explicit positive cubic |

## Next attack and stopping rules

The next targets are the adjacent-corner and one-corner families II and C1,
together with the N6 and N7 boundary counts.
The stronger occupancy,
clustered-triangle and complete opposite-corner theorems also apply
in the other families. The exact diagnostic in
`../discovery/ENDPOINT_COVER_LIMIT.md` rules out a threshold-free shortcut;
it does not rule out a container argument using the competitive area bound.
A successful next checkpoint should close one or more whole entries,
not merely produce another local lemma disconnected from that ledger.
The local qualitative argument and symmetric terminal optimization no longer
need a certificate-compression detour.

The finite computer cover remains available for discovery and regression.
Its 27 exceptional roots are not the entire hand workload: ordinary roots
outside those boxes still require a global analytic replacement. No CI, Lean
compilation or n=9 file changes are part of this conversion.
