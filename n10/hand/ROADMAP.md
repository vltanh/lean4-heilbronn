# Heilbronn n=10: itemized hand-proof roadmap

Checkpoint 100.

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
- [x] HP11-II. Complete the entire adjacent-corner family.
      TYPE_II_COMPLETE.md proves m<A* for every configuration with two
      adjacent occupied corners, including arbitrary normalization,
      the three-corner alternatives and all four occupancy rows.
  - [x] II-REDUCTION. Reduce to four occupancy rows; exclude the left
        quadrilateral hull and the right triangular/noncentral hull
        alternatives in (2,2,3), and the two-quadrilateral-side alternative
        in (2,3,2). Proof: TYPE_II.md. No whole row is claimed closed.
  - [x] II-(1,2,4). Complete count exclusion, including both right-hull
        types and all central placements. TYPE_II_R4_COMPLETE.md
        assembles the exhaustive triangular and nontriangular proofs.
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
    - [x] The entire nontriangular right hull, with every central CE cut.
          All three support-cell pairs below are excluded independently
          of the two central DCB points.
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
      - [x] The II+III mixed support-cell pair. A forced DF straddle
            fixes the last D signs; both possible EPQ signs have printed
            cubic contradictions with 28 and 33 integer terms, maximum 21.
            Proof: TYPE_II_R4_MIXED_III.md.
  - [x] II-(1,3,3). Complete exclusion of both actual right-hull types.
        TYPE_II_133_COMPLETE.md assembles 264 initial roots and 46
        refinements: 150 cubics with 6,462 printed terms and 160
        geometric exclusions, including all three support cells.
    - [x] II-133-TRIANGULAR-RIGHT. The complete triangular right
          hull, with all central and right-point placements. A
          barycentric selection bounds one actual right point;
          three CE cases and four DH ray cuts give 24 roots.
          Twenty-eight binary refinements close all 52 leaves:
          44 cubics with 2,194 printed terms and eight geometric
          exclusions. All 933 explicit sign deductions, boxes,
          occupancy and mesh factors have independent geometry
          and Fraction/SymPy audits.
          Proof: TYPE_II_133_TRIANGULAR_RIGHT.md and its appendix.
    - [x] II-133-NONTRIANGULAR-RIGHT. Every nontriangular right hull
          is covered by the complete three-cell catalogue and the
          three independently audited appendices below.
      - [x] II-133-CELL-I. The entire first support cell: sixty
            exhaustive ray roots, 36 geometric exclusions and
            24 cubics with 932 printed terms. Independent geometry
            verifies all ten common rational boxes, all 1,899
            deductions and every conditional factor; separate
            Fraction/SymPy expansions reproduce the strict bounds.
            Proof: TYPE_II_133_NONTRIANGULAR.md and
            TYPE_II_133_CELL_I.md.
      - [x] II-133-CELL-III. The entire third support cell: sixty
            ray roots and five binary refinements give 65 leaves,
            27 geometric exclusions and 38 cubics with 1,117 terms.
            All 2,012 deductions and every conditional factor have
            an independent geometry audit; separate Fraction/SymPy
            manuscript readers reproduce the exact negative bounds.
            Proof: TYPE_II_133_CELL_III.md, using the same common model.
      - [x] II-133-CELL-II. The entire second support cell: 120 roots
            and thirteen refinements give 133 leaves, 44 cubics with
            2,219 printed terms and 89 geometric exclusions. All
            4,185 deductions, boxes and factors have independent
            geometry and Fraction/SymPy audits.
            Proof: TYPE_II_133_CELL_II.md.
  - [x] II-223-CORE. In the entire eight-point side core of (2,2,3),
        the remaining support point lies in DCH, DCF, and CFP, with
        vertical clearance at least 2s above F. The complete rational
        box and six exhaustive placement contradictions have 424 printed
        integer terms; one row uses seven explicit affine squares.
        Proof: TYPE_II_223_CORE.md. The next item incorporates both
        central points and closes the count.
  - [x] II-(2,2,3). The entire count, with every allowed central
        placement. A capacity-one triangle selects an actual central
        point; three containing regions and eighteen exhaustive sign
        rows yield fixed cubic contradictions. All 1,462 integer terms,
        nine rational boxes, and conditional containments are printed
        and independently audited. Proof: TYPE_II_223_COMPLETE.md.
  - [x] II-(2,3,2). The entire count, with both right points unrestricted.
        For a triangular left hull, two distributed meshes reduce to an
        analytic envelope and one 16-term cubic. For a quadrilateral left
        hull, four roots and sixteen exhaustive leaves have five geometric
        contradictions and eleven cubic sums with 410 terms. Every sign,
        occupancy, rational box, derivative and sum has independent audits.
        TYPE_II_232_COMPLETE.md assembles both hull alternatives without
        a reflection that could violate the normalized b<=1/2 condition.
- [ ] HP11-C1. Exclude normalized maximizers with exactly one corner.
  - [x] C1-EXACT-PENTAGON. The actual hull is exactly the five selected
        anchors O,C,D,F,H. The lower distributed triple and upper pair
        reduce to nine anchor-line roots and 33 binary refinements.
        All 34 polynomial leaves and eight geometric leaves are closed;
        3,317 positive integer terms, their strict rational bounds, and
        every geometric derivation are printed. Proof: C1_PENTAGON.md
        and C1_PENTAGON_GEOMETRY.md.
  - [x] C1-EXTERIOR-CATALOGUE. Side-cap triples and simultaneous side
        pairs are impossible; a side pair forbids two lower or two top
        points. The other stated top/lower triple cuts leave exactly
        32 count rows, up to one transposition. All cuts are analytic.
        Proof: C1_EXTERIOR_REDUCTION.md.
  - [x] C1-THREE-LOWER. Every placement with three free points below
        HC, including all four exterior count rows and both side caps.
        The convex top-pair alternative has two positive identities
        with 150 printed coefficients. The four exterior children have
        98 roots, 66 binary splits, 127 cubic and 37 geometric leaves;
        all 7,033 integer entries and geometric deductions are printed.
        Independent geometry and separate Fraction/SymPy audits pass.
        C1_THREE_LOWER_ONE_SIDE.md, Section 4 assembles all five
        placements, including the earlier exact-pentagon theorem.
  - [x] C1-TWO-LOWER-THREE-CAPS. The entire count (2,0,1,1,1):
        both lower points are unrestricted and each exterior cap is
        occupied. An explicit quartic forces a rational contact box;
        two determinant comparisons then give exact gaps 37/1000000
        and 17639/1000000. The proof includes outer square faces and
        uses no sign enumeration. Proof: C1_TWO_LOWER_THREE_CAPS.md.
  - [x] C1-TWO-LOWER-SIDE-TOP-PAIR. The entire count (2,0,1,2,0)
        and its reflection. A monotone endpoint-container bound and
        five positive Bernstein coefficients force a triangular top
        hull; four exhaustive rows then have 60 explicit deductions
        and 764 positive integer products. Independent geometry,
        outward box checks and separate Fraction/SymPy expansions pass.
        Proof: C1_TWO_LOWER_SIDE_TOP_PAIR.md and
        C1_TWO_LOWER_SIDE_TOP_COMPLETE.md.
  - [x] C1-THREE-TOP-NO-SIDE. Three top-cap points exclude both side
        caps, independently of the lower points. This closes the two
        rows (0,1,1,3,0) and (1,0,1,3,0), and their reflections.
        Two endpoint containers and exact determinant comparisons give
        gaps 26/1000000 and 137572/1000000.
        Proof: C1_THREE_TOP_NO_SIDE.md.
  - [x] C1-SIDE-PAIR-OPPOSITE-TOP. A side-cap pair cannot coexist
        with an opposite-side point and a top point. This closes
        (0,1,2,1,1) and (1,0,2,1,1), and their reflections, by
        an explicit cubic contact-box bound and three determinant
        inequalities. The final area is below .04709<s.
        Proof: C1_SIDE_PAIR_OPPOSITE_TOP.md.
  - [x] C1-TWO-LOWER-BOTH-SIDES. The entire count (2,1,1,0,1):
        three angular roots, 19 binary refinements, 20 cubics with
        5,473 terms and two geometric exclusions. All 379 deductions,
        46 conditional box steps and every factor have an independent
        geometry audit; separate Fraction/SymPy expansions pass.
        Proof: C1_TWO_LOWER_BOTH_SIDES.md.
  - [x] C1-SIDE-PAIR-OPPOSITE-CENTRAL. The entire two counts
        (0,2,2,0,1) and (1,1,2,0,1), and their transposes. Three
        exhaustive cubics have 454 printed terms, 58 explicit sign
        deductions and 27 short monotonicity certificates. Independent
        geometry checks every box and support factor; separate
        Fraction/SymPy expansions reproduce all negative bounds.
        Together with the top case, every side pair excludes the
        opposite cap. Proof: C1_SIDE_PAIR_OPPOSITE_CENTRAL.md.
  - [x] C1-TOP-PAIR-BOTH-SIDES. Two top-cap points cannot coexist
        with both side caps, independently of the fifth free point.
        This closes (0,1,1,2,1) and (1,0,1,2,1). The nontriangular
        top hull has an analytic scalar contradiction; the triangular
        hull has one 158-term cubic with upper bound
        -63250709/250000000. Both hulls, the uniform box and all
        factors have independent geometry and Fraction/SymPy audits.
        Proof: C1_TOP_PAIR_BOTH_SIDES.md.
  - [x] C1-TWO-LOWER-THREE-TOP. The entire count (2,0,0,3,0).
        One root and 202 refinements give 203 leaves: 183 cubics
        with 45,644 printed terms and twenty geometric exclusions.
        Independent geometry verifies all 3,644 deductions, 1,636
        conditional box refinements, six monotonicity certificates
        and 115,787 factor occurrences. Separate Fraction/SymPy
        readers reproduce every exact negative bound.
        Proof: C1_TWO_LOWER_THREE_TOP.md, using the complete common
        model in C1_TWO_LOWER_TOP_GEOMETRY.md.
  - [x] C1-TWO-LOWER-CENTRAL-TWO-TOP. The entire (2,1,0,2,0)
        count. Three angular roots and 372 binary refinements give
        375 leaves: 343 cubics with 88,384 printed terms and 32
        geometric exclusions. Independent geometry verifies all
        9,416 deductions, 2,504 interval refinements, nineteen
        monotonicity certificates and 220,099 factor occurrences.
        Separate Fraction/SymPy readers reproduce every exact bound.
        Proof: C1_TWO_LOWER_CENTRAL_TWO_TOP.md, using the same
        complete common two-lower/top geometry.
  - [x] C1-ONE-LOWER-SIDE-PAIR-TOP. The entire (1,1,2,1,0)
        count and its transpose. One forced cap ordering and 34
        binary splits give 31 cubics with 7,430 printed terms and
        four geometric exclusions. Independent geometry verifies
        all 908 deductions, 114 interval updates, thirteen static
        monotonicity certificates and 19,108 factor occurrences.
        Separate Fraction/SymPy readers reproduce every exact bound.
        Proof: C1_ONE_LOWER_SIDE_PAIR_TOP.md.
  - [x] C1-TWO-LOWER-CENTRAL-SIDE-TOP. The entire (2,1,1,1,0)
        count and its transpose. Six angular roots and 205 splits
        give 193 cubics with 51,388 terms and eighteen geometric
        terminals. The top contact ceiling also excludes every
        shared-central endpoint pair. Independent geometry checks
        all 5,961 deductions, 905 interval updates and 131,221
        factor occurrences; separate Fraction/SymPy readers reproduce
        all negative bounds. Proof: C1_TWO_LOWER_CENTRAL_SIDE_TOP.md.
  - [x] C1-ONE-LOWER-THREE-CAPS. The entire (1,1,1,1,1) count.
        One root and 37 binary splits give 37 cubics with 7,280
        printed terms and one shared-central endpoint contradiction.
        Independent geometry checks all 1,053 deductions, 250 interval
        updates, two monotonicity caps and 18,500 factor occurrences;
        separate Fraction/SymPy readers reproduce every negative bound.
        The sole h>=c normalization and complete .876/.852 contact
        box are proved explicitly. Proof: C1_ONE_LOWER_THREE_CAPS.md.
  - [x] C1-TWO-CENTRAL-SIDE-PAIR-TOP. The entire (0,2,2,1,0)
        count and its transpose. The independent central-pair labeling
        and 76 binary splits give 61 cubics with 9,344 printed terms
        and sixteen geometric contradictions. Independent geometry
        checks all 2,528 deductions, 274 interval updates, fourteen
        monotonicity caps and 23,597 factor occurrences. Separate
        Fraction/SymPy readers reproduce every exact negative bound.
        Proof: C1_TWO_CENTRAL_SIDE_PAIR_TOP.md.
  - [x] SIDE-CAP-BASE-TRIANGLES. A right-cap point satisfies cy<21/50;
        a left-cap point satisfies hx<21/50. The corresponding actual
        base triangles have capacity at most one, including the N6
        transfer to BCV and AHV. The analytic argument uses only one
        actual anchor clearance, the cap clearance and an exact AM-GM
        comparison. Independent geometry and exact identities pass.
        Proof: SIDE_CAP_BASE_TRIANGLES.md. This is a local reduction.
  - [x] C1-TWO-CENTRAL-THREE-CAPS. The entire (0,2,1,1,1) count:
        57 actual-sign splits cover 58 explicit contradictions,
        comprising eight scalar, 24 positive area-linear, nineteen
        positive physical-polynomial and seven endpoint-union leaves.
        All 60 literal Markdown tables have independent geometric and
        exact arithmetic acceptance: 965 physical sources, 789
        coordinate updates, 23 common coordinate bounds, 8,483 positive
        products and 5,680 immutable final endpoints. Eight corrupted
        records are rejected, including an omitted leaf with altered
        totals. Proof: C1_TWO_CENTRAL_THREE_CAPS.md and its tables.
        The C1 parent stays open.
  - [ ] C1-EXTERIOR. Exclude the remaining seven exterior count rows
        from the exhaustive C1-EXTERIOR-CATALOGUE. Counts are
        (k,j,r,t,l), up to exchange of the two side caps:
    - [ ] C1-IITTT: (0,2,0,3,0).
    - [ ] C1-IIRTT: (0,2,1,2,0).
    - [ ] C1-BITTT: (1,1,0,3,0).
    - [ ] C1-BIRTT: (1,1,1,2,0).
    - [x] C1-IIRTT and C1-BIRTT top-pair reduction. In both counts
          the outer top point P puts the inner one strictly inside
          DPF. A convex pair would form a seven-point monotone chain
          whose smallest consecutive doubled area is at most
          (5√5−11)/2. The remaining six-point chain gives DPF<.462
          and proves that QDP, CQD and OCQ are empty. The triangular
          alternative remains open in each count.
          [Seven-point proof](SEVEN_POINT_MONOTONE_CHAIN.md) and
          [six-point proof](SIX_POINT_MONOTONE_CHAIN.md).
    - [ ] C1-BIITT: (1,2,0,2,0).
    - [x] C1-BIIRL: (1,2,1,0,1). The entire count and transpose:
          152 actual-sign splits and 153 contradictions, with no
          coordinate-case restriction. Independent actual-source,
          ancestry, exact arithmetic and full-cover review passes
          all 315 literal contexts, 218 affine area bounds, 37 common
          coordinate certificates, 13,645 coordinate updates and
          21,354 positive products. A separate manuscript/dependency
          review passes; 29 corrupted records are rejected.
          Proof: C1_ONE_LOWER_TWO_CENTRAL_SIDES.md and its tables.
    - [ ] C1-BIIRT: (1,2,1,1,0).
    - [x] C1-BIIRR: (1,2,2,0,0). The side-pair theorem fixes the
          outer point. The contact and occupancy inequalities give
          a single coordinate box. All 107 determinant splits and
          108 contradictory leaves cover this count and its transpose.
          Independent review checks 4,973 geometric deductions and
          14,125 arithmetic steps. [Proof and tables](C1_BIIRR.md)
    - [ ] C1-BBIIT: (2,2,0,1,0).
    - [x] C1-BBIIR: (2,2,1,0,0). The entire count and transpose:
          24 exhaustive angular roots, 185 actual-sign splits and
          209 contradictions. Independent actual-source, ancestry,
          exact arithmetic and full-cover review passes all 331
          contexts, 51 common coordinate certificates, 12,494
          coordinate updates and 24,557 positive products, including
          45 affine-area terminals and one unsigned-clearance quartic
          leaf. Twenty-nine corrupted records are rejected.
          Proof: C1_TWO_LOWER_TWO_CENTRAL_RIGHT.md and its tables.
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
  - [x] N6-PROJECTED-COUNT-TERMINALS. Explicit full-domain mappings
        from the one-lower/one-upper/both-side, two-upper/both-side
        and two-upper/two-top sign chambers to the two sharp
        projection theorems. All
        twelve signs, coordinate cuts, strict inward depths and
        positive increments are proved without a neighborhood
        assumption. Proof: N6_PROJECTED_COUNT_TERMINALS.md.
  - [x] N6-EXTERIOR-CUTS. Neither side cap contains three free points;
        the two side caps cannot each contain two; three top-cap points
        forbid any side-cap point. Proof: N6_EXTERIOR_CUTS.md.
  - [x] N6-EXACT-CATALOGUE. The exact-hull 2/2 child reduces to two
        lower support-cell pairs and eleven line patterns. A uniform
        scalar cubic excludes all three nested mixed patterns, leaving
        eight. Both rational boxes, every cross-pair sign, and the stronger
        mixed area and ratio bounds are proved and independently audited.
        Proof: N6_EXACT_HULL_REDUCTION.md. This is a reduction, not a
        closure of the exact-hull child.
  - [x] N6-EXACT-HULL. The entire 2/2 child inside the contact hexagon.
        Eight roots and 686 explicitly printed nodes have 290 cubic
        contradictions and 229 geometric exclusions. All 4,388 sign
        deductions, 44,924 positive integer terms, ten affine squares,
        boxes, and actual occupancy/spread witnesses are printed.
        Independent geometric replay and separate Fraction/SymPy
        expansions pass. Proof: N6_EXACT_HULL.md and its three appendices.
  - [x] N6-TWO-LOWER-TWO-EXTERIOR. The entire k=2,j=0 placement,
        including all cap pairs and closed outer square faces. Same-side
        cap pairs are excluded analytically. The other four cap models
        have 32 roots, 65 nodes, 1,251 explicit deductions, 54 cubic
        leaves and two geometric contradictions. All 5,434 integer terms
        and 376 conditional witnesses have independent geometry and
        Fraction/SymPy audits. Proof: N6_TWO_LOWER_CAPS.md and its
        complete printed table appendix.
  - [x] N6-TWO-LOWER-UPPER-SIDE. The complete k=2,j=1 placement
        with either side cap occupied, including closed outer square
        faces. Both normalized location models have sixteen roots,
        107 nodes, 654 explicit geometric deductions, 56 cubic and
        26 geometric leaves; all 5,741 positive integer terms are printed.
        Independent geometry and separate Fraction/SymPy audits pass.
        Proof: N6_TWO_LOWER_SIDE.md and its complete table appendix.
  - [x] N6-TWO-LOWER-UPPER-TOP. The entire k=2,j=1 placement
        with a top-cap point, including closed outer square faces.
        Eight roots, 267 nodes and 821 explicit deductions give 113
        cubics and 65 geometric exclusions. All 27,514 printed terms,
        572 local affine squares, 875 triangle/quadrilateral witnesses,
        274 cap witnesses and 25 spread witnesses have independent
        geometry and separate Fraction/SymPy audits.
        Proof: N6_TWO_LOWER_TOP.md and its complete table appendix.
  - [x] N6-TWO-LOWER-COMPLETE. Every placement with k=2 is excluded.
        The exhaustive j=2, j=1 side/top and j=0 alternatives are
        assembled in N6_TWO_LOWER_COMPLETE.md, with both side caps
        retained after the single lower transposition.
  - [x] N6-SIDE-PAIR-REDUCTION. Every side-cap pair has triangular
        actual cap hull and the stronger endpoint support cost
        Gamma2*s. A side pair and top pair are incompatible, closing
        the complete count (0,0,2,2,0) and its reflection with exact
        budget gap 1297/20000. Proof: N6_SIDE_PAIR_REDUCTION.md.
  - [x] N6-ONE-LOWER-CATALOGUE. One lower point has two possible
        single-ear cells or a central cell with two weak contact
        orders. The double-ear cell is impossible; the central orders
        have exact cubic contact inequalities. This is a local
        reduction, not a closure of the one-lower family.
        Proof: ONE_LOWER_POINT.md, also applicable in N7.
  - [x] N6-SIDE-PAIR-OPPOSITE. A side pair excludes the opposite cap.
        A nine-point theorem, with a single fixed cubic of 71 terms,
        closes (0,0,2,1,1), (0,1,2,0,1), (1,0,2,0,1) and reflections.
        All boxes, actual convex pentagons and conditional factors
        have independent geometry and Fraction/SymPy audits.
        Proof: N6_SIDE_PAIR_OPPOSITE.md.
  - [x] N6-ONE-LOWER-SIDE-PAIR-TOP. The entire (1,0,2,1,0) count
        and its transpose. Both lower ears contradict the exact
        contact gap 8299/18140000; the two weak central orders have
        109- and 75-term cubic contradictions. All 38 common Pluecker
        deductions, boxes, triangle occupants and the actual convex
        pentagon have independent geometry and Fraction/SymPy audits.
        Proof: N6_ONE_LOWER_SIDE_PAIR_TOP.md.
  - [x] N6-TOP-PAIR-BOTH-SIDES. The entire (0,0,1,2,1) count.
        Four explicit actual-triangle comparisons transfer both
        top-hull arguments and the same 158-term sum from the C1
        theorem. The inner top point is used only through its actual
        three-fan cost; no arbitrary virtual-point clearance is assumed.
        Proof: N6_TWO_TOP_BOTH_SIDES.md.
  - [x] N6-ENDPOINT-CONTAINERS. At most two free points lie in each
        of the BE and AF endpoint containers. Three would require
        area J*s, exceeding the proved maximum by 773/1000000.
        The top-pair hull also has its exhaustive 3s/4s cost
        dichotomy. Six further cross-cap orientations follow from
        explicit sums of nonnegative products. All have independent geometry and
        exact identity audits; neither is a whole-count closure.
        Proof: N6_CORNER_CONTAINERS.md.
  - [x] N6-ONE-LOWER-THREE-CAPS. The entire (1,0,1,1,1) count.
        Explicit square reflection reduces every lower location to
        a bottom ear or the weak central order bh>=ac. The two
        cubic sums contain 324 and 418 positive terms. Independent
        geometry checks both source boxes, all 89 deductions, 158
        interval refinements with 860 endpoint lines, forty scalar
        caps and 1,869 factor occurrences. Separate Fraction/SymPy
        readers reproduce both exact negative bounds.
        Proof: N6_ONE_LOWER_THREE_CAPS.md.
  - [x] N6-LOWER-TOP-QUADRILATERAL-EARS. Both entire single-ear
        top-quadrilateral alternatives of the one-lower/three-top
        count: two roots, twenty exhaustive splits and 22 cubics
        containing 9,860 printed terms and 549 explicit affine squares.
        Independent geometry checks the full sixteen-word top catalogue,
        all 923 deductions, every box and 25,177 factor occurrences;
        separate Fraction/SymPy readers reproduce every exact bound.
        Proof: N6_BTTT_TOP_EARS.md and N6_TOP_TRIPLE_SETUP.md.
        The whole BTTT and ITTT assemblies below include these words.
  - [x] N6-BTTT-TOP-TRIANGLE-WORD. The normalized --+- top word
        is impossible throughout its continuous domain: sixteen sign
        splits and nine weak coordinate cuts cover twenty-six terminal
        contradictions. The complete Markdown tables print all 1,799
        geometric deductions, 6,294 coordinate steps and 13,039 scalar
        updates. Two separate semantic readers verify every premise,
        physical polynomial, source dependency and leaf; the independent
        implementation expands 4,501 determinant identities and checks
        60,725 endpoint lines.
        Proof: N6_BTTT_TOP_TRIANGLE_WORD.md and its indexed tables.
        The whole BTTT assembly below includes this word.
  - [x] N6-BTTT-TOP-LEFT-WORD. The complete normalized ---- word:
        fifteen actual-sign splits cover sixteen contradictions, with
        no coordinate cuts. The literal tables print 1,584 geometric
        deductions, 1,948 interval steps, 846 scalar updates, two
        geometric exclusions and one 79-factor positive linear sum.
        Two semantic readers pass; the independent implementation
        checks 1,188 polynomial identities and 17,821 endpoint lines.
        Proof: N6_BTTT_TOP_WORD_MMMM.md and its indexed tables.
        The whole BTTT assembly below includes this word.
  - [x] N6-BTTT-TOP-RIGHT-WORD. The complete normalized ---+ word:
        thirteen actual-sign splits cover fourteen contradictions,
        with no coordinate cuts. The complete literal tables print
        1,356 geometric deductions, 1,493 coordinate updates, 525
        physical-factor occurrences, 664 scalar updates, 277 scalar
        relations and six capacity-forced signs. A signed barycentric
        lower bound for the repeated-label determinant BPP is strictly
        positive at one leaf; no area floor is assigned to BPP.
        Separate JavaScript and Python/Fraction readers replay every
        table, source scope and leaf. Seven corruptions are rejected.
        Proof: N6_BTTT_REMAINING_TRIANGULAR.md and its indexed tables.
        The normalized +--+ word is excluded by the assembly below.
  - [x] N6-BTTT-CENTRAL-TOP-LOWER-EAR. In the normalized +--+
        top word, the entire HBP<0 alternative is impossible without
        further sign or coordinate cuts. The literal argument has
        39 geometric deductions, 28 physical factors and 152 coordinate
        updates, ending with exact upper bound -18462201153/10^12.
        Both independent manuscript readers pass.
        Proof: N6_BTTT_REMAINING_CENTRAL_EAR.md and its indexed tables.
        The lower central alternative HBP>0 is refined below.
  - [x] N6-BTTT-CENTRAL-TOP-POSITIVE-AFP. In the normalized +--+
        word with HBP>0, the entire AFP>0 alternative is impossible.
        Five actual-sign splits cover six contradictory leaves, with
        no coordinate cuts. Literal tables print 1,178 deductions,
        1,262 coordinate updates, 275 physical factors, 3,154 scalar
        updates and 480 scalar relations. Separate JavaScript and
        Python/Fraction readers check all inherited boxes, immutable
        area sources, the shared central identity and every terminal.
        Twelve argument mutations and eight Markdown corruptions
        are rejected. Proof: N6_BTTT_REMAINING_CENTRAL_POSITIVE.md
        and its indexed tables. The negative-AFP alternative is
        excluded by the following theorem.
  - [x] N6-BTTT-CENTRAL-TOP-NEGATIVE-AFP. In the normalized +--+
        word with HBP>0, AFP<0 is impossible. Sixty-five sign splits
        cover 66 explicit contradictions, with no coordinate cuts.
        Independent readers verify 137 contexts, 6,833 deductions,
        560 stages, 33,808 coordinate updates, 7,610 physical factors,
        137,031 scalar updates, 25,725 relations, 1,596 affine bounds
        and 157,995 positive affine terms. All immutable sources and
        inherited boxes pass independent review. Twelve independent
        corruptions are rejected, including a deleted binary leaf.
        Proof: N6_BTTT_REMAINING_CENTRAL_NEGATIVE.md and its indexed
        literal tables. This completes the central word.
  - [x] N6-BTTT-COMPLETE. The whole (1,0,0,3,0) count is excluded.
        All six residual normalized top words and all three children
        of +--+ have complete independently accepted written proofs.
        The exact transposition preserves the residual set, so e<=f
        covers the entire count. Proof: N6_BTTT_REMAINING_COUNT.md.
  - [x] N6-ITTT-TOP-TRIANGLE-WORD. The normalized --+- top word
        with P strictly inside HCEF is impossible: nineteen sign
        splits cover twenty leaves, including two explicit clustered
        triples. Complete tables print 2,084 geometric deductions,
        5,275 coordinate updates and 2,730 scalar updates. The two
        semantic readers independently check all box dependencies,
        fourteen capacity signs and every terminal; the second expands
        1,885 physical identities and 44,780 endpoint lines.
        Proof: N6_ITTT_TOP_TRIANGLE_WORD.md and its indexed tables.
        The whole ITTT assembly below includes this word.
  - [x] N6-ITTT-SINGLE-EAR-WORDS. Both normalized -++- and ++-+
        words are impossible: nineteen sign splits cover twenty-one
        leaves. Complete literal tables print 158 contexts, 7,433
        geometric deductions, 12,127 coordinate updates, 7,021 scalar
        updates and twenty-two capacity signs. The new upper-point
        factors use independently fixed initial-box contact ceilings;
        no lower-point HP or CP sign is assumed. Separate mathematical
        review and two exact readers accept every source, scope and
        terminal; eighteen independent corruptions are rejected.
        Proof: N6_BTTT_REMAINING_ITTT_EARS.md and its indexed tables.
  - [x] N6-ITTT-REMAINING-TRIANGULAR-WORDS. Both normalized ----
        and ---+ words are impossible: twelve sign splits cover
        fourteen leaves, including the actual FAQ distributed-mesh
        exclusion. Complete literal tables print 117 contexts, 4,459
        deductions, 8,656 coordinate updates, 9,155 scalar updates
        and thirty-one capacity signs. Independent mathematical review
        and two exact readers accept all source and geometry premises;
        eighteen independent corruptions are rejected.
        Proof: N6_BTTT_REMAINING_ITTT_TRIANGULAR.md and indexed tables.
        With the accepted --+- theorem this closes the triangular group.
        The central word is excluded by the next theorem.
  - [x] N6-ITTT-CENTRAL-WORD. The entire normalized +--+ word is
        impossible. Its 145 actual-sign splits cover 146 leaves:
        72 interval, 47 scalar-area, twelve affine, thirteen coordinate
        polynomial, one zero-barycentric and one conflicting-sign
        contradiction. Complete literal tables print 329 contexts,
        17,516 geometric deductions, 1,243 stages, 71,636 coordinate
        updates, 242,434 scalar updates, 174 affine bounds and 53
        capacity signs. Both exact readers and separate mathematical
        review accept every source and branch; twenty independent
        source/arithmetic/coverage corruptions are rejected.
        Proof: N6_BTTT_REMAINING_ITTT_CENTRAL.md, its setup and indexed
        literal tables, and N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md.
  - [x] N6-ITTT-COMPLETE. The whole (0,1,0,3,0) count is excluded.
        All six normalized word trees have complete independently
        accepted proofs: 195 actual-sign splits and 201 leaves.
        The exhaustive catalogue and exact transposition cover the
        entire count. Proof: N6_BTTT_REMAINING_ITTT_COUNT.md.
  - [x] N6-TOP-TRANSPOSE. An explicit square transposition and six
        label maps preserve the residual top-word groups and permit
        e<=f. Exact square gaps give a,e<.168 in the triangular or
        single-ear cases and a,e<.264 in the central quadrilateral.
        Four actual anchor triangles are empty in every normalized
        row, and four more in the stronger rows; their capacity-zero
        deductions give three or six forced signs for the fourth
        free point. Both counts and all six label maps are checked.
        Proof: N6_TOP_TRIPLE_TRANSPOSE.md. This is a normalization,
        not an additional count closure.
  - [x] N6-TOP-AFFINE-CAPS. Actual top-cap triangles have explicit
        contact/apex affine upper bounds, and actual containing-triangle
        caps transfer to their subtriangles. Eight determinant identities
        and all nonnegative deficits are independently checked.
        Proof: N6_TOP_AFFINE_CAPS.md. This is a local reduction.
  - [x] N6-TOP-PAIR-WEIGHTS. Every triangular top pair has inner
        barycentric weights greater than 1/9. An occupied side cap
        strengthens all three weights to 3/17. Both actual-area budgets,
        exact scalar gaps and eight affine remainder identities are
        independently checked. Proof: N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md.
        This is a local reduction, not an additional count closure.
  - [x] N6-WEIGHTED-TOP-FAN. A proved actual outer-triangle cap
        and three separately witnessed fan costs give four weighted
        affine barycentric bounds. The uniform rational caps are
        9s and (80335369/9300000)s; an occupied side cap permits
        (17/3)s. The complete remainder identities and exact constants
        have independent checks. Proof: N6_TOP_WEIGHTED_BARYCENTRICS.md.
        Every fan cost retains its own actual containment witnesses.
        The general affine-test extension applies to every actual
        point-pair line, including zero repeated-label tests. Signed
        interval bounds retain the common barycentric remainder.
        The actual-line identity, all 27 vertex-sign patterns and both
        remainder-extrema identities have independent exact checks.
  - [x] N6-SIDE-PAIR-BOUNDS. Without an occupied top cap, a side pair
        has outer coordinates p>.915, c<.616 and q>930/5123.
        Retaining both actual lower-contact clearances proves its
        outer triangle has area below (11/3)s: three exact Bernstein
        identities have twelve strictly positive rational coefficients.
        All three inner barycentric weights exceed 3/11, and every
        actual fan triangle has area below (5/3)s. Both reflections,
        all outer square faces and eight affine remainder identities
        have independent audits. Proof: N6_SIDE_PAIR_BOUNDS.md.
        These bounds do not by themselves close a placement count.
  - [x] ENDPOINT-SIX-REFINED. A nontriangular six-point endpoint hull
        satisfies m<(125/1142)S. The exhaustive support-cell proof uses
        an exact quadratic gap and the previously proved central-pair
        threshold. Independent geometry and exact arithmetic pass.
        Proof: SIX_POINT_ENDPOINT_REFINED.md. This strengthens the
        reusable bound without changing earlier fixed factor meanings.
  - [x] SIDE-PAIR-TOP-BOUNDS. An occupied top cap gives the uniform
        contact ceiling .897. A side pair then gives a narrow
        bottom-contact interval and three inner-point barycentric
        weights greater than 2/9, hence four affine bounds. The
        virtual-corner transfer to N6 uses two explicit actual-area
        comparisons and gives outer coordinates p>.858, q<.453,
        with the stronger inner barycentric weights greater than 8/35.
        Retaining the actual bottom-contact clearance strengthens this
        to p>.920, c<.609, q>930/5053 and inner weights greater than
        5/19. Two exact square comparisons and a concave quadratic
        prove these bounds, with four explicit affine remainder
        identities and an independent geometry audit.
        Proof: C1_SIDE_PAIR_TOP_BOUNDS.md. This is a shared local
        reduction, not a new C1 or N6 count closure.
  - [x] OCCUPIED-QUADRILATERAL-SUPPORT. Universal polynomial support
        inequalities for one or two actual occupants, including all
        overlapping opposite-ear counts and the central-pair cost.
        Both signs of the support denominator and all sixteen contact
        cubics are proved. This reusable local lemma is a reduction,
        not a closure of a remaining placement family.
        Proof: QUADRILATERAL_SUPPORT.md, also applicable in N7 and C1.
  - [x] QUADRILATERAL-AREA-SUPPORT. The exact diagonal identity
        XY-W(Y-Z)=ZV retains the actual quadrilateral area floor and
        the smaller of its two witnessed triangle-floor products.
        Both signs of Y-Z, both affine upper bounds and all occupancy
        premises are proved explicitly. Independent geometry and exact
        polynomial identities pass. Proof: QUADRILATERAL_AREA_SUPPORT.md.
        This is a reusable local inequality, not a whole-count closure.
  - [x] EXACT-CONDITIONAL-BOXES. A proved multiaffine nonnegative
        factor gives exact coordinate bounds by affine endpoint
        interpolation and the hull of finitely many half-line
        intervals. Sequential reuse, outward rounding and replay
        requirements are proved in MULTIAFFINE_BOX_BOUNDS.md.
        This supplies a rule for later printed tables, not a
        closure of a remaining placement family.
  - [x] SCALAR-AREA-INTERVALS. Finite exact bounds on positive actual
        triangle areas follow from actual fans, fully signed Pluecker
        identities, proved support products and linear area inequalities.
        Every denominator sign, outward rational rounding rule and
        immutable dependency requirement is proved explicitly.
        Independent mathematical audits pass, and the printed conditional
        example has exact contradiction gap 1/10.
        Proof: SCALAR_AREA_INTERVALS.md. The optional arithmetic reader
        requires geometry callbacks unless arithmetic-only mode is
        explicitly selected; actual geometry and complete branch coverage
        remain separate obligations.
  - [x] SIDE-PAIR-AREA-REFINEMENTS. The actual outer side-pair point
        satisfies [BCR]<(3/2)s in N6 and [OCR]<2s in C1. Four
        explicit nonnegative determinant remainders retain the outer
        area U in EFR, EHR, AER and BER; the signed four-area equality
        gives |BER|=[BCE]+U-[BCR]. Independent geometry and exact
        polynomial/square-gap checks pass.
        Proof: SIDE_PAIR_AREA_REFINEMENTS.md. These bounds strengthen
        the open side-pair counts without closing a whole count alone.
  - [x] LINEAR-AREA-CERTIFICATES. Four exact affine product
        envelopes turn witnessed signed product identities into affine
        nonnegative factors. A printed nonnegative rational combination
        with a negative exact interval upper bound gives a contradiction;
        both signs of the analogous area-bound rule are proved.
        Immutable source records and outward rounding are mandatory.
        Independent polynomial expansion verifies all four remainders.
        The same note proves both oriented nested-fan product inequalities,
        with explicit actual containments and immutable lower-bound records;
        five fresh general-coordinate identity expansions also pass.
        Proof: LINEAR_AREA_CERTIFICATES.md. A numerical LP output
        alone does not satisfy this rule or close any placement count.
  - [x] THREE-CAP-CONTACT-BOUNDS. Occupancy of all three exterior
        caps forces d,f<79/100 and h,c<108/125 in both C1 and N6.
        Two exact contact decompositions and the top-cap budget prove
        the bounds, actual corner-triangle capacities and a complete
        closed coordinate box. Independent geometry and determinant
        expansion pass; the exact reader checks thirteen identities
        and twelve rational comparisons.
        Proof: THREE_CAP_CONTACT_BOUNDS.md. The containing C1 and N6
        count rows remain open.
  - [x] SIGNED-AREA-RELATIONS. The unconditional four-point linear
        identity and six-label four-product identity give exact scalar
        bounds with all signs, numerator cases and positive denominators
        explicit. A convex actual quadrilateral with one actual interior
        point has area at least (2+2sqrt(2))s>.449. Independent geometry,
        fourteen polynomial identities, all 256 six-label sign conversions
        and three positive square gaps are checked.
        Proof: AREA_RELATIONS.md and check_area_relations.js.
  - [ ] Complete the remaining nine exterior-cap counts with k=0
        or k=1, outside the stated projection chambers. The ledger also
        retains the completed IIRR, IRRT, BTTT, ITTT and BRTT rows. Counts are (k,j,r,t,l), up to
        exchange of the two side caps:
    - [x] N6-IRTL: (0,1,1,1,1). The six contacts and three cap
          points form a convex nonagon. NINE_CONVEX_POINTS.md proves
          that one of its consecutive doubled areas is at most 64/729,
          strictly below 93/1000. The proof uses finite Hölder twice.
    - [ ] N6-IRTT: (0,1,1,2,0). The convex top-pair alternative
          is excluded. In the triangular alternative the bottom
          coordinate satisfies `1037/10000 < b < 19/100`, and each
          barycentric weight of S in ERF exceeds 2325/8963.
          The line RS exits the octagon through HA, AB, BC or CQ.
          The tenth point P lies in triangle HCE.
          [Width bounds](N6_IRTT_CORE_CAPS.md) and
          [four radial cuts](N6_IRTT_CORE_GAPS.md).
    - [x] N6-IRRT: (0,1,2,1,0), including its left-side reflection.
          N6_IRRT.md and thirteen complete case tables give twelve
          exhaustive sign splits and thirteen contradictions: seven
          physical, two scalar, three exact positive-linear-combination
          leaves and one actual-capacity leaf. Both semantic readers
          verify all 512 geometric deductions, 3,278 coordinate steps,
          30,608 endpoint lines, 144 immutable scalar updates and
          182 affine factors with their positive integer multipliers.
          All initial-domain and refined-box premises are reviewed.
    - [ ] N6-IIRT: (0,2,1,1,0).
    - [ ] N6-IITT: (0,2,0,2,0).
    - [x] N6-IIRR: (0,2,2,0,0), including its left-side reflection.
          N6_IIRR.md and its two complete printed table files give
          127 exhaustive sign splits, 45 geometric contradictions and
          83 exact area contradictions. Independent manuscript readers
          verify all 3,281 geometry steps, 13,957 rational updates,
          65 caps and 1,000 endpoint values; a fresh implementation
          also expands 4,321 physical determinant identities.
    - [ ] N6-IIRL: (0,2,1,0,1).
    - [x] N6-BRTT: (1,0,1,2,0). Both top-hull alternatives and
          both side-cap reflections are excluded. Forty-five binary
          determinant splits cover 46 leaves, with no coordinate cuts:
          thirty interval, three scalar and thirteen coordinate-product
          contradictions. Separate readers and mathematical review check
          all 99 contexts, 4,731 deductions, 293 stages, 2,473 physical
          factors, 8,792 coordinate updates, 37,694 scalar updates,
          4,535 relations and thirteen capacity sources. The positive
          terminal sums have 6,095 products and exact negative ceilings.
          Thirty corruptions are rejected in each alternative.
          Proof: N6_BTTT_REMAINING_BRTT.md, setup and two indexed tables.
    - [ ] N6-BITT: (1,1,0,2,0). Only the lower-central position
          remains in either top-pair alternative. In the convex
          alternative an occupied lower ear would force a distinct
          octagon ear above its ceiling. In the triangular alternative
          all 50 noncentral branches are contradictory, and the last
          leaf gives both required positive signs. [Convex proof](N6_BTTT_REMAINING_BITT_OCTAGON.md)
          and [triangular proof](N6_BTTT_REMAINING_BITT_TRIANGULAR_REDUCTION.md).
    - [ ] N6-BIRL: (1,1,1,0,1).
    - [ ] N6-BIRT: (1,1,1,1,0).
    - [x] N6-BIRR: (1,1,2,0,0), including its transpose. The side
          pair puts the lower point in the central cell and the upper
          point in HCE. N6_BIRR.md gives 60 splits and 61 contradictions.
          Independent review checks all 77 initial signs, 1,771 deductions,
          1,272 box corners, 7,948 updates and 38 final scalar gaps.
    - [ ] N6-BIIT: (1,2,0,1,0).
    - [ ] N6-BIIR: (1,2,1,0,0).
    - [x] N6-BTTT: (1,0,0,3,0). The whole count is excluded by
          N6_BTTT_REMAINING_COUNT.md, assembling all six normalized
          top words and every lower-central child. All actual sign,
          coordinate and scalar premises have independent acceptance.
    - [x] N6-ITTT: (0,1,0,3,0). All six residual normalized words
          have complete independently accepted proofs: three triangular,
          two single-ear and the central +--+ word. The exhaustive
          sixteen-word catalogue and exact transposition cover the
          entire continuous domain, including closed square sides.
          Assembly: N6_BTTT_REMAINING_ITTT_COUNT.md.
- [x] HP12-N7. The complete normalized seven-boundary family has
      m<A*. N7_CENTRAL_COMPLETION_PARENT.md assembles every exterior
      placement, actual hull, all-interior count, lower cell and central
      pair word, including all permitted equality faces. The sharp
      projected subcase retains m>=A* throughout its contradiction.
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
  - [x] N7-SINGLE-EXTERIOR-SMALL-ARCS. In the (1,0,2) placement,
        every 1/7 and 2/6 split of the actual octagon by the two interior
        points' line is excluded. All eight short-arc locations are
        covered; five printed sums have 2,254 integer entries.
        Proof: N7_OP_LINE_CAPS.md.
  - [x] N7-SINGLE-EXTERIOR-3/5-TOP. The entire H,G,F short-arc position,
        allowing every inward depth of G. Eleven exhaustive sign rows
        have 3,183 printed cubic terms, with all occupancy and diagonal
        witnesses supplied. Proof: N7_THREE_FIVE_TOP.md.
  - [x] N7-SINGLE-EXTERIOR-3/5-UPPER-HEIGHT. Every short-arc position
        when h>=e. The eight projected ears give all long-triangle
        capacities; seven exhaustive binary ledgers have 71 printed
        cubic contradictions and two direct sign contradictions.
        All 22,579 integer terms, rational boxes, and geometric witnesses
        are printed and independently audited.
        Proof: N7_THREE_FIVE_UPPER_HEIGHT.md.
  - [x] N7-LONG-TRIANGLE-CAPS. All eight actual long hull triangles
        have area below 69/100 at every height, independently of OP.
        The global g<3/5 bound and eight fixed sums supply the remaining
        six targets; all 3,212 integer terms and exact boxes are printed.
        Proof: N7_LONG_TRIANGLE_CAPS.md.
  - [x] N7-SINGLE-EXTERIOR-4/4-AB/EF. The whole literal AB/EF edge
        pair, with no height condition. Both diagonals separate O,P;
        eighteen cubic rows close every noncandidate oblique sign word,
        and the candidate word uses the sharp projected theorem.
        All 5,641 integer terms and every geometric witness are printed.
        Proof: N7_CORNER_LINE.md.
  - [x] N7-SINGLE-EXTERIOR-3/5-COMPLETE. Every short-arc position,
        at every height. The remaining lower-height chamber has seven
        complete binary ledgers, 93 printed cubic contradictions and
        two direct FH-edge contradictions. All 27,884 integer terms,
        58 five-chain substitutions, and 392 used containment/spread
        witnesses have independent audits.
        Proof: N7_THREE_FIVE_LOWER_HEIGHT.md, together with the two
        previously completed 3/5 notes.
  - [x] N7-SINGLE-EXTERIOR-4/4-CD/GH. The whole literal CD/GH edge
        pair, at every height. Its sixteen oblique words and two
        refinements have eighteen printed cubic contradictions, with
        5,926 positive integer terms and 23 used explicit square factors.
        All 29 five-chain substitutions, 17 one-interior quadrilateral
        witnesses, and 82 other conditional witnesses are independently
        audited, with separate Fraction/SymPy arithmetic checks.
        Proof: N7_CDGH_LINE.md.
  - [x] N7-INTERIOR-TWO-LOWER. In the all-interior heptagon with
        h>=e, exclude counts (k,j,q)=(2,1,0) in HABC,HCEF,CDE.
        The right contact D is the boundary-valid side-cap point in
        N6_TWO_LOWER_SIDE.md, Section 6; both lower-normalized side
        locations are covered. No additional symmetry is assumed.
  - [x] N7-SINGLE-EXTERIOR-4/4-BC/FG. The entire literal BC/FG
        side-line class, at every height. Forty-nine exhaustive binary
        leaves have 15,159 printed positive integer terms and 26
        explicit rational squares. Independent geometry verifies
        every sign, 75 five-chain bounds, 209 one-interior quadrilateral
        witnesses and 154 other conditional witnesses. Separate
        Fraction/SymPy manuscript readers reproduce every strict bound.
        Proof: N7_SIDE_BC_FG.md.
  - [x] N7-INTERIOR-EAR-LOWER. Complete all-interior heptagon count
        catalogue in HABC,HCEF,CDE after h>=e: (1,2,0),(2,1,0),
        (0,2,1),(1,1,1),(2,0,1). The occupied-ear/lower counts
        (2,0,1) and (1,1,1) are excluded by an analytic area budget
        and two fixed cubic rows, respectively. All 52 Pluecker
        deductions and 349 integer terms are printed and independently
        audited. Proof: N7_HEPTAGON_ONE_EAR.md. Together with
        N7-INTERIOR-TWO-LOWER, only (1,2,0) and (0,2,1) remain.
  - [x] N7-SINGLE-EXTERIOR-4/4-AH/DE. The entire literal AH/DE
        side-line class, at every height. Fifty-six exhaustive leaves
        have 19,348 printed integer terms, no squares, and two proved
        rational boxes. Independent geometry verifies all signs,
        107 five-chain substitutions, 187 one-interior quadrilateral
        witnesses and 132 other conditional witnesses. Separate
        Fraction/SymPy readers reproduce every bound.
        Proof: N7_SIDE_AH_DE.md.
  - [x] N7-SINGLE-EXTERIOR. Every placement with exactly one point
        outside the contact heptagon has m<A*. All eight literal
        short-arc positions and all four literal 4/4 edge pairs are
        covered. The AB/EF good word uses the strict sharp projection
        theorem; the other cases have the rational sigma gap.
        Proof: N7_SINGLE_EXTERIOR.md assembles the complete catalogue.
  - [x] N7-INTERIOR-TWO-UPPER-EAR. The entire all-interior count
        (k,j,q)=(0,2,1). Sixty-four exhaustive leaves have 58 cubics
        with 13,979 printed terms and six clustered-triangle exclusions.
        Both boxes, all 2,166 explicit deductions, 248 triangle,
        357 quadrilateral, eleven spread and 250 convex-five factor
        occurrences have independent geometry and Fraction/SymPy audits.
        Proof: N7_HEPTAGON_TWO_UPPER_EAR.md.
  - [x] N7-BOTTOM-SPAN-CAP. The actual triangle BCE has capacity one
        for every permitted seven-contact configuration. Five actual
        clearances reduce to a concave quadratic and an explicitly
        positive quartic, proving [BCE]<(149/20)s.
        Proof: N7_BOTTOM_SPAN_CAP.md.
  - [x] N7-RIGHT-SPAN-CAP. The actual triangle DEF also has capacity
        one. An auxiliary scalar balances BCD and CDE, preserving
        exactly the five inequalities used by the bottom-span theorem,
        and proves [DEF]<(149/20)s without assuming any free-point sign.
        Proof: N7_RIGHT_SPAN_CAP.md.
  - [x] N7-ONE-LOWER-SETUP. Four exhaustive lower cells, all four
        refined rational boxes, the capacity-one ray rule, and the
        complete factor catalogue for the remaining (1,2,0) count.
        Proof: N7_ONE_LOWER_SETUP.md. A completed child is asserted
        only in its separate exhaustive manuscript.
  - [x] N7-ONE-LOWER-ABH. The entire lower-ear ABH child. Fifty-eight
        binary splits give 59 leaves: 55 cubics with 21,373 printed
        terms and four actual ABEF capacity contradictions. Independent
        geometry checks all 1,993 deductions, 53,443 factor occurrences,
        342 cap witnesses and 33 capacity-ray steps. Separate Fraction
        and SymPy readers reproduce every negative bound and all
        41 explicit rational squares. Proof: N7_ONE_LOWER_ABH.md.
  - [x] N7-ONE-LOWER-ABC. The entire lower-ear ABC child. Ninety-three
        binary splits give 94 leaves: 84 cubics with 37,612 printed
        terms and ten geometric contradictions. Independent geometry
        checks all 3,411 deductions, 91,832 factor occurrences, every
        scalar and endpoint cap, all six chord and ten mesh deductions.
        Separate Fraction/SymPy readers reproduce every exact bound
        and all 41 explicit rational squares. Proof: N7_ONE_LOWER_ABC.md.
  - [x] UPPER-PAIR-CONTACT-CAPS. Two occupants of CEF and a
        central lower point give ABE,ABF<=167879/245720<(149/20)s.
        Two actual quadrilateral sums and two signed product identities
        prove both bounds. The lower endpoint floor further forces
        f<3s, so ABF is empty. Both monotone substitution orders and
        all exact gaps have independent review; eight fresh polynomial
        expansions and the sixteen-check standalone reader pass.
        Proof: UPPER_PAIR_CONTACT_CAPS.md. This shared N6/N7 lemma
        supplies a source in the later placement assemblies.
  - [x] N7-CENTRAL-ACD-CAP. In both central lower roots, the
        actual ACD area is below 27/40. Elimination of a and d using
        the shared lower strip and two actual anchor clearances leaves
        one cubic with a positive quadratic lower bound. The exact
        discriminant gap is 199202807/10^12. Thus ACD has capacity
        one; ADG<0 forces ADO,ADP>0. Independent geometry, source-box
        review and all exact polynomial/gap checks pass.
        Proof: N7_CENTRAL_ACD_CAP.md. The complete central assembly below uses this cap.
  - [x] N7-CENTRAL-AREA-ORIENTATION. In either central lower cell,
        neither upper point T can have both AGT>0 and DGT>0.
        Three Pluecker deductions and an actual-contact comparison
        give four strict containments. Four fan and five signed-product
        identities, thirteen proved initial bounds and 72 literal
        rational updates give the exact contradiction gap 1941/1000000.
        Independent physical-polynomial, geometry and immutable exact
        arithmetic checks pass. Proof: N7_CENTRAL_AREA_ORIENTATION.md.
        The complete central assembly below uses this orientation exclusion
        in both CA and CB.
  - [x] N7-CENTRAL-PAIR-CUT. After HOP<0 orders the two upper
        points, DGO<0 in both central lower cells. A contrary sign
        forces two actual points into each of HAO and CDH; four exact
        scalar comparisons end with ABC<s. Independent geometry and
        physical-polynomial checks verify all seven Pluecker instances,
        the containments, all four strict rational gaps and the
        qualified inward-contact scalar variant.
        The same note proves capacity one for actual ADG, BDG and CDG,
        with orientation-independent caps for the first two.
        Proof: N7_CENTRAL_PAIR_CUT.md. The complete central assembly below covers every remaining
        coarse ordered upper-pair sign word.
  - [x] UPPER-EAR-SEPARATION. With any actual lower point, two
        actual occupants of CEF force HEF empty. A split at h=37/50
        gives two short contact contradictions, with all rational gaps
        printed. Therefore the complete E-only OP line cut in HCEF
        forces EHO,EHP>0, excluding its negative-EHO subbranches in
        both central roots. Independent geometry and exact checks of
        nine identities and five positive comparison gaps pass.
        Proof: UPPER_EAR_SEPARATION.md. The actual-contact theorem
        also applies to N6. The N7 E-only exclusion is assembled below.
  - [x] N7-CENTRAL-E-ONLY-CONTACT-LEMMAS. In both central lower
        roots with two actual points in CEF, the three triangles
        AFH, BFH and ABF are empty, e>57/100, and AEF has capacity
        two. In the E-only upper-pair word, AGO,AGP>0 force AEG<0,
        while AEG<0 forces AEO>0. Explicit affine containments,
        Pluecker identities and rational monotonicity comparisons
        prove these statements. An independent SymPy/Fraction pass
        checks 33 identities and exact comparisons; the separate
        author reader checks 39. Proof: N7_CENTRAL_COMPLETION.md,
        Sections 1–6. The E-only assembly below uses these lemmas.
  - [x] N7-CENTRAL-EFG-CAP. If CEF contains the two upper points,
        actual EFG<(149/20)s in both central lower roots, independently
        of the upper-pair line. Six exhaustive G-sign words in each
        root close by six scalar and six polynomial contradictions.
        Literal tables print 701 scalar updates, 229 physical source
        factors and 615 positive products. Separate exact readers
        verify all 250 relations, 910 endpoint values, 1,022 immutable
        bounds and every translated coefficient. Twelve deliberate
        corruptions are rejected. Independent actual geometry and
        all source premises pass review.
        Proof: N7_CENTRAL_COMPLETION_EFG_CAP.md and its literal tables.
        This proves capacity one for EFG in the complete assembly below.
  - [x] N7-CENTRAL-E-ONLY-STRUCTURE. In both central roots the
        E-only word forces GOP<0, EGP>0, BEG>0, BDG>0, AEP<0
        and BEP<0; hence P lies in actual BCE. Only three G-sign
        words and five ordered central words remain. Actual capacity
        arguments, affine containments and exhaustive cyclic line
        signs have independent review; the separate exact reader
        expands every displayed identity and finite catalogue.
        Proof: N7_CENTRAL_COMPLETION_E_ONLY.md. The following complete
        exclusion discharges all five words.
  - [x] N7-CENTRAL-E-ONLY-COMPLETE. The entire E-only upper-pair
        word is excluded in both central roots. Five ordered words,
        with one further AEG sign split, give twelve complete leaves:
        two scalar, two coordinate, six cubic and two scalar-area
        contradictions. Full literal tables print 72 stages, 3,040
        geometric deductions, 12,598 scalar updates, 2,394 coordinate
        updates with 23,233 endpoint lines, 1,344 positive cubic
        products and 35 positive scalar-area terms. Two separate
        source-complete readers and independent mathematical review
        accept all geometry, bounds, source ancestry and coverage;
        22 independent corruptions are rejected.
        Proof: N7_CENTRAL_COMPLETION_E_ONLY_EXCLUSION.md and tables.
        The CEF, C, CE and EF exclusions below complete the central roots.
  - [x] N7-CENTRAL-UPPER-FAN-CAPS. If HCF contains the two upper
        points, then f>617/1000 and actual AEF and BEF both have
        capacity one in both roots. Exact contact identities, positive
        denominator bounds and rational endpoint gaps prove the lemma.
        Independent mathematical review and separate exact readers
        accept every substitution and comparison.
        Proof: N7_CENTRAL_COMPLETION_UPPER_FAN_CAP.md.
        This conditional lemma does not close another upper-pair word.
  - [x] N7-CENTRAL-CEF-COMPLETE. The entire CEF upper-pair word is
        excluded in both central roots. Six coarse words in each root
        and every further binary sign cut give 31 exhaustive leaves:
        twelve polynomial, ten geometric, six scalar and three
        coordinate contradictions. Two source-complete readers check
        all 234 stages, 7,968 deductions, 2,986 relations, 14,313
        immutable scalar updates, 2,808 physical factors and 5,142
        coordinate updates with 52,331 endpoint lines. The terminal
        sums have 2,302 positive products; ten six-order tables exclude
        all sixty mesh orderings. Independent mathematical review
        accepts all geometry, natural contact caps, QAREA floors and
        secant/tangent directions. Twenty-six independent corruptions
        are rejected.
        Proof: N7_CENTRAL_COMPLETION_CEF_EXCLUSION.md and indexed tables.
        The broader AE-transfer implication, with FOP unrestricted,
        is separately proved in N7_CENTRAL_COMPLETION_CEF2_TRANSFER.md.
        The C, CE and EF exclusions below complete the central parents.
  - [x] N7-INTERIOR-REMAINDER. Both central lower cells CA and CB
        are excluded in the all-interior count (k,j,q)=(1,2,0).
        All five admissible upper-pair words have complete proofs;
        the three other words have direct affine/capacity exclusions.
        Both lower-ear children are complete above.
        Assembly: N7_CENTRAL_COMPLETION_PARENT.md, Section 5.
  - [x] N7-CENTRAL-HCE-CAP. If HCE contains O,P, AEF has capacity
        two in both central roots. Fourteen rational rectangles cover
        the full c,h domain. The ordered endpoint ratio, actual CDE
        clearance and top/right endpoint bound give exact AEF ceilings
        .814603 in CA and .823185 in CB, both strictly below the
        three-occupant cost .823422. Two independent exact readers
        check seven actual-coordinate identities and every row; fresh
        interval-union coverage and four corruption checks pass.
        Proof: N7_CENTRAL_COMPLETION_HCE_CAP.md. This conditional cap
        supplies a conditional source for the complete central assembly.
  - [x] N7-CENTRAL-GLOBAL-AEF-CAP. Actual AEF has capacity two
        throughout both central roots, with no pair-word premise.
        Sixteen rational rectangles show that one HEF occupant gives
        AEF<=.814356 in CA and <=.818395 in CB. Combining with the
        occupied-HCE theorem by the actual HE diagonal partition gives
        uniform ceilings .814603 and .823185, both below .823422.
        Separate exact readers and independent mathematical review
        check nine identities, every source and the complete rectangle
        covers; four corruptions are rejected.
        Proof: N7_CENTRAL_COMPLETION_GLOBAL_AEF_CAP.md. This is a
        uniform source used in the complete central assembly.
  - [x] N7-CENTRAL-BOX-CAPS. ABF and AFH each have capacity two
        throughout both central roots. Two actual determinant formulas
        and two nonnegative box remainders give ABF<=143425697/181400000,
        AFH<=.760263 in CA and <=.775274 in CB, all strictly below
        the three-occupant cost .823422. Independent mathematical
        review and two exact readers check every source and gap.
        Proof: N7_CENTRAL_COMPLETION_BOX_CAPS.md. The complete central
        assembly below uses these capacities.
  - [x] N7-CENTRAL-QUAD-CAP. Actual ABEF has capacity two: its
        area is 1-(e-a)(f-b)<=1, whereas three actual interior points
        cost at least 93/91. Two occupants and three inward tests at
        a third point force the fourth test negative by clearance.
        Independent geometry and separate exact identity/gap checks
        pass. Proof: N7_CENTRAL_COMPLETION_QUAD_CAP.md. Both central
        parents are excluded by the complete assembly below.
  - [x] N7-CENTRAL-C-COMPLETE. Both central C words: twelve coarse
        roots, 39 additional sign splits and 51 contradictory leaves.
        Independent actual geometry, source, storage, ancestry, exact
        arithmetic and full-cover review accepts all 300 shared stages,
        including 48 literal mesh-order obstructions. Twenty-eight
        corruptions are rejected. Proof: N7_CENTRAL_COMPLETION_C_EXCLUSION.md.
  - [x] N7-CENTRAL-CE-EF-COMPLETE. Both words in both cells: CA
        has 93 sign splits/95 leaves and CB has 82 splits/84 leaves.
        Independent review accepts all 550 CA and 484 CB shared stages,
        reconstructing every actual source and full ordered ancestor
        chain. All 22 CA and 24 CB corruptions are rejected, including
        the explicitly weakened CB barycentric source and foreign-word
        shared-stage references. Proofs: N7_CENTRAL_COMPLETION_CA_UPPER_EXCLUSION.md
        and N7_CENTRAL_COMPLETION_CB_UPPER_EXCLUSION.md.
  - [x] N7-COMPLETE. N7_CENTRAL_COMPLETION_PARENT.md proves m<A*
        for every normalized N7 configuration. Independent coverage
        review checks the five exterior counts, all octagon arc and
        edge-pair classes, five interior counts, the boundary-valid
        N6 side-point transfer, four lower cells, all eight central
        words and every permitted equality face. This closes N7 only;
        the current counts are listed under C1 and N6 above.
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

There are now THREE named unresolved global obligations: C1, N6 and N7.
These are continuous-domain obligations, not three small arithmetic checks. Each must
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
| TYPE_II_R4_MIXED_I.md | Complete I+II support pair, all line orientations, and one fixed physical-contact quartic with 86 integer entries |
| TYPE_II_R4_MIXED_III.md | Complete II+III support pair, forced DF straddle, and two printed cubics with 61 integer entries |
| TYPE_II_R4_COMPLETE.md | Complete Type-II count (1,2,4), assembling both hull types and every central placement |
| TYPE_II_223_CORE.md | Entire (2,2,3) eight-point side core: stronger box, three forced containing triangles, and vertical clearance; six rows, 424 terms |
| TYPE_II_223_COMPLETE.md | Entire Type-II count (2,2,3), including both central points; eighteen exhaustive cubic rows, nine proved boxes, 1,462 integer terms |
| TYPE_II_CENTRAL_CHAMBER.md | Complete analytic exclusion of the stated triangular-left/central-triple chamber; explicit monotonic envelope and strict rational gap |
| TYPE_II_232_LEFT_TRIANGLE.md | Entire triangular-left child with three central points; two distributed meshes, the analytic chamber and one 16-term cubic |
| TYPE_II_232_LEFT_QUADRILATERAL.md | Entire quadrilateral-left child with three central points: sixteen exhaustive leaves, five geometric contradictions and eleven cubics, 410 printed terms |
| TYPE_II_232_COMPLETE.md | Entire adjacent-corner count (2,3,2), assembling both left hulls while keeping both right points unrestricted |
| TYPE_II_133_TRIANGULAR_RIGHT.md | Entire triangular-right hull child of (1,3,3): 24 ray roots, 52 exhaustive leaves, 44 cubics / 2,194 printed terms, eight geometric exclusions and 933 explicit deductions |
| C1_PENTAGON_GEOMETRY.md | Exact-pentagon 3/2 reduction, distributed meshes, rational box, endpoint and fan-capacity inequalities |
| C1_PENTAGON.md | Entire exact-pentagon C1 child; nine roots, 34 polynomial and eight geometric leaves, 3,317 printed integer entries |
| C1_EXTERIOR_REDUCTION.md | Complete side-cap and stated top/lower count exclusions; exhaustive 32-row exterior catalogue |
| C1_THREE_LOWER_TOP_PAIR.md | Complete convex two-top-cap exclusion when hc>=823/1000; two fixed positive identities with 150 printed coefficients |
| C1_THREE_LOWER_TWO_TOP.md | Entire three-lower/two-top count: four roots, eight splits, ten cubic and two geometric leaves, 1,068 integer terms |
| C1_THREE_LOWER_SIDE_TOP.md | Entire three-lower/side-top count and its reflection: four location models, nineteen cubic and twenty-one geometric leaves, 246 terms |
| C1_THREE_LOWER_ONE_TOP.md | Entire three-lower/central-top count: both label orders, 47 cubic and four geometric leaves, 3,455 terms |
| C1_THREE_LOWER_ONE_SIDE.md | Entire three-lower/central-side count and reflection: 51 cubic and ten geometric leaves, 2,264 terms; assembles the complete C1 three-lower subfamily |
| C1_TWO_LOWER_THREE_CAPS.md | Entire two-lower/right-top-left count, including outer faces: analytic quartic box and two exact determinant gaps; no sign subdivision |
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
| N6_EXACT_HULL_REDUCTION.md | Complete exact-hull lower catalogue and rational boxes; all nested mixed rows excluded, eight rows remain |
| N6_EXACT_HULL.md | Entire exact-hull 2/2 child: complete 686-node geometric tree, 290 cubic and 229 geometric leaves; all 44,924 terms printed in the CS, CO and MIXED appendices |
| N6_TWO_LOWER_CAPS.md | Entire two-lower/two-exterior placement, including outer faces: all six cap pairs, 32 roots, 54 cubics and two geometric leaves; all 5,434 terms in N6_TWO_LOWER_CAPS_TABLES.md |
| N6_TWO_LOWER_SIDE.md | Entire two-lower/upper-interior/side-cap placement, both normalized side locations and outer faces: 56 cubics, 26 geometric leaves and 5,741 terms; also excludes all-interior N7 count (2,1,0) |
| N7_PLACEMENTS.md | Lower-cap exclusions, upper-cap capacity two, five exhaustive remaining counts and a uniform rational box |
| N7_UPPER_OCCUPANCY.md | Complete (2,1,0) exclusion, at least one free point in the heptagon, and two-exterior chord placements |
| N7_OPPOSITE_UPPER_CAPS.md | Complete exclusion of simultaneous occupancy of the two upper caps, including the entire (1,1,1) row |
| N7_SAME_UPPER_CAP.md | Complete exclusion of two points in one upper cap, including both hull types, both height orders, and five ray cuts |
| N7_PROJECTED_CHAMBER.md | Strict sharp bound in each single inward-secondary chamber; complete normalized N7 candidate neighborhoods |
| N7_PROJECTED_SIGNS.md | Complete normalized inward-secondary good-sign chamber without an extra coordinate condition; two cubic rows, 642 printed integer entries |
| N7_OP_LINE_CAPS.md | Every 1/7 and 2/6 line split in single-exterior N7; exhaustive eight-cap catalogue and five printed sums, 2,254 entries |
| N7_THREE_FIVE_TOP.md | Entire HGF short-arc 3/5 class in single-exterior N7; eleven exhaustive cubic rows, 3,183 printed entries |
| N7_THREE_FIVE_UPPER_HEIGHT.md | Every 3/5 short-arc position for h>=e; 71 printed cubic rows, 22,579 integer terms, and two direct sign contradictions |
| N7_LONG_TRIANGLE_CAPS.md | All eight actual long triangles have capacity one, at every height and independently of OP; eight sums, 3,212 integer terms |
| N7_CORNER_LINE.md | Complete literal AB/EF line class at every height; all oblique orientations, eighteen cubic sums, 5,641 integer terms |
| N7_THREE_FIVE_LOWER_HEIGHT.md | Every remaining h<=e 3/5 position: seven exhaustive trees, 93 cubics, two geometric contradictions, 27,884 printed terms; completes all single-exterior 3/5 cases |
| N7_CDGH_LINE.md | Complete literal CD/GH 4/4 line class: sixteen oblique words, two refinements, eighteen cubics, 5,926 terms and 23 used explicit squares |
| N7_SIDE_BC_FG.md | Entire literal BC/FG side-line class at every height: 49 exhaustive leaves, 15,159 printed integer terms and 26 explicit rational squares |
| N7_HEPTAGON_ONE_EAR.md | Five exhaustive all-interior heptagon counts; complete (2,0,1) and (1,1,1) exclusions by an analytic budget and two cubics, 52 explicit deductions and 349 printed terms |
| N7_SIDE_AH_DE.md | Entire literal AH/DE side-line class at every height: 56 exhaustive leaves, 19,348 printed terms and two explicit rational boxes |
| N7_SINGLE_EXTERIOR.md | Complete single-exterior N7 sharp exclusion m<A*, assembling all literal arc positions and four 4/4 edge pairs, including the projected good-word terminal |
| N7_HEPTAGON_TWO_UPPER_EAR.md | Entire all-interior (0,2,1) count: 64 exhaustive leaves, 58 cubics / 13,979 printed terms, six clustered-triangle exclusions and 2,166 explicit deductions |
| C1_TWO_LOWER_SIDE_TOP_PAIR.md and C1_TWO_LOWER_SIDE_TOP_COMPLETE.md | Entire side/top-pair count (2,0,1,2,0) and reflection: analytic hull reduction and four exhaustive cubics, 60 deductions and 764 printed terms |
| C1_THREE_TOP_NO_SIDE.md | Three top points force both side caps empty; two complete exterior count rows close by endpoint-container and determinant inequalities |
| N6_TWO_LOWER_TOP.md and N6_TWO_LOWER_TOP_TABLES.md | Entire two-lower/upper/top-cap placement: eight roots, 267 nodes, 821 deductions, 113 cubics, 65 geometric exclusions, 27,514 printed terms and 572 explicit shifted affine squares |
| N6_TWO_LOWER_COMPLETE.md | Exhaustive assembly of every k=2 placement from the exact hull, upper/side, upper/top and two-exterior theorems |
| TYPE_II_133_NONTRIANGULAR.md and TYPE_II_133_CELL_I.md | Exhaustive three-cell right-hull reduction and complete cell-I exclusion: sixty roots, 1,899 deductions, 24 cubics / 932 terms and 36 geometric exclusions |
| N6_IRRT.md and indexed case tables | Whole one-central/side-pair/top-point count and reflection: twelve sign splits, thirteen contradictions, 3,278 interval steps, 144 scalar updates, three exact positive combinations and two semantic readers |
| N6_IIRR.md and its GEOMETRY/AREA_CHAINS tables | Entire two-central/side-pair count and reflection: 127 splits, 45 geometric and 83 exact scalar leaves, 3,281 deductions and 13,957 immutable area updates; both manuscript readers pass |
| N6_SIDE_PAIR_REDUCTION.md | Every side pair has a triangular cap hull and Gamma2 endpoint cost; a side pair and top pair are incompatible, closing (0,0,2,2,0) and reflection |
| ONE_LOWER_POINT.md | Four exhaustive local alternatives for one point in HABC, both central contact-order cubics, the impossible double-ear cell, a shared central-strip inequality, and exact coordinate-sum and central-coordinate bounds |
| C1_SIDE_PAIR_OPPOSITE_TOP.md | A side pair, opposite side point and top point are incompatible; two complete count rows close by a cubic box and direct determinant inequalities |
| TYPE_II_133_CELL_III.md | Complete third nontriangular support cell: sixty roots, five refinements, 65 leaves, 2,012 deductions, 38 cubics / 1,117 terms and 27 geometric exclusions |
| TYPE_II_133_CELL_II.md | Complete second nontriangular support cell: 120 roots, thirteen refinements, 133 leaves, 4,185 deductions, 44 cubics / 2,219 terms and 89 geometric exclusions |
| TYPE_II_133_COMPLETE.md | Complete count (1,3,3), assembling both actual right-hull types, 310 leaves and 6,462 printed terms |
| TYPE_II_COMPLETE.md | Complete strict sharp exclusion for every ten-point configuration with two adjacent occupied corners, including normalization, all four counts and boundary alternatives |
| C1_TWO_LOWER_BOTH_SIDES.md | Entire (2,1,1,0,1) count: three roots, 19 refinements, 20 cubics / 5,473 terms, two mesh contradictions and 379 deductions |
| N6_SIDE_PAIR_OPPOSITE.md | A nine-point, 71-term contradiction excludes every side pair with an opposite-side point, closing three complete exterior count rows |
| QUADRILATERAL_SUPPORT.md | Universal actual-quadrilateral support inequalities with one/two occupants, overlapping opposite-ear costs, central-pair cost and sixteen contact cubics |
| N7_BOTTOM_SPAN_CAP.md | Uniform actual BCE capacity one, from five contact clearances and a strict positive quartic discriminant bound |
| C1_SIDE_PAIR_OPPOSITE_CENTRAL.md | Both remaining side-pair/opposite-cap counts: three cubics / 454 terms, 58 deductions and 27 exact monotonicity certificates; completes exclusion of every opposite-cap point with a side pair |
| N7_RIGHT_SPAN_CAP.md | Uniform actual DEF capacity one from a scalar balancing identity preserving the five premises of the bottom-span theorem |
| N6_ONE_LOWER_SIDE_PAIR_TOP.md | Entire (1,0,2,1,0) count and transpose: analytic exclusion of both lower ears, two weak central orders, 38 deductions and 184 printed cubic terms |
| C1_TOP_PAIR_BOTH_SIDES.md | Both side caps exclude two top points: two complete C1 counts, an analytic nontriangular-hull contradiction and one 158-term cubic for the triangular hull |
| N6_TWO_TOP_BOTH_SIDES.md | Entire (0,0,1,2,1) count by four actual-area comparisons transferring both C1 top-hull arguments and the unchanged exact sum |
| C1_TWO_LOWER_TOP_GEOMETRY.md | Complete common model for two lower and at least two top-cap points: barycentric normalization, all factors, exact sign and interval rules, and top-hull support costs |
| C1_TWO_LOWER_THREE_TOP.md | Entire (2,0,0,3,0) count: one root, 202 refinements, 183 cubics / 45,644 terms, twenty geometric terminals, 3,644 deductions and 1,636 box refinements |
| C1_TWO_LOWER_CENTRAL_TWO_TOP.md | Entire (2,1,0,2,0) count: three roots, 372 refinements, 343 cubics / 88,384 terms, 32 geometric terminals, 9,416 deductions and 2,504 box refinements |
| N6_CORNER_CONTAINERS.md | Two uniform endpoint-container capacities with exact gap 773/1000000, and the exhaustive top-pair 3s/4s hull dichotomy |
| N6_PROJECTED_COUNT_TERMINALS.md | Full-domain mappings of both candidate-containing count chambers to the sharp projection theorems, with all twelve determinants and positive increments checked |
| MULTIAFFINE_BOX_BOUNDS.md | Exact endpoint-line interpolation, finite feasible-interval hulls, sequential rational bounds and outward rounding, with an optional exact trace replay module |
| C1_SIDE_PAIR_TOP_BOUNDS.md | Uniform .897 contact ceiling, narrow side-pair box, inner 2/9 barycentric bounds and an explicit actual-area transfer to N6 |
| N7_ONE_LOWER_SETUP.md | Exhaustive four-cell reduction for the remaining all-interior (1,2,0) count, four proved rational boxes, capacity-ray rule and complete factor definitions |
| N7_ONE_LOWER_ABH.md | Entire lower-ear ABH child: 58 splits, 55 cubics / 21,373 terms, four geometric terminals, 1,993 deductions and 41 explicit rational squares |
| UPPER_PAIR_CONTACT_CAPS.md | Two CEF occupants and a central lower point give capacity one for ABE and ABF; the lower endpoint floor strengthens ABF to empty through five exact comparisons |
| UPPER_EAR_SEPARATION.md | One lower point and two CEF occupants force HEF empty; two exact height cases exclude every negative-EH child of the E-only upper-pair cut |
| N7_CENTRAL_ACD_CAP.md | Both central roots satisfy actual ACD<27/40; one positive cubic proves capacity one and ADG<0 forces ADO,ADP>0 |
| N7_CENTRAL_PAIR_CUT.md | After HOP<0, the full DGO>0 child is impossible in both central roots; three actual capacity-one triangles and a short occupied-triangle contradiction leave six pair words |
| N7_CENTRAL_COMPLETION.md | Local lemmas for both central roots: three empty triangles, e>57/100, AEF capacity two and two E-only sign implications; independent geometric and exact arithmetic review |
| N7_CENTRAL_COMPLETION_EFG_CAP.md and its literal tables | Uniform actual EFG<(149/20)s when CEF contains O,P, in both central roots; twelve exhaustive leaves, 701 scalar updates, 615 positive products and two independent exact readers |
| N7_CENTRAL_AREA_ORIENTATION.md | In both central lower cells, every upper point T satisfies AGT<0 or DGT<0; four fans, five signed products and 72 exact rational steps give gap 1941/1000000 |
| N7_ONE_LOWER_ABC.md | Entire lower-ear ABC child: 93 splits, 84 cubics / 37,612 terms, ten geometric terminals, 3,411 deductions and 41 explicit rational squares |
| N6_TOP_AFFINE_CAPS.md | Actual top-cap contact/apex affine upper bounds and inherited actual-container caps, with all determinant identities |
| N6_TOP_WEIGHTED_BARYCENTRICS.md | Weighted actual top-fan bounds, every actual-line affine test, signed remainder-extrema interval bounds and explicit immutable weight witnesses |
| N6_SIDE_PAIR_BOUNDS.md | Side-pair bounds without a top point: outer area below (11/3)s, inner weights above 3/11 and fan caps below (5/3)s; twelve positive Bernstein coefficients |
| SIDE_PAIR_AREA_REFINEMENTS.md | Actual outer-side bottom caps (3/2)s in N6 and 2s in C1, four physical area comparisons and the retained four-area equality |
| THREE_CAP_CONTACT_BOUNDS.md | Three occupied caps force d,f<.79 and h,c<.864 in C1 and N6, with actual capacity-one triangles and a complete closed coordinate box |
| LINEAR_AREA_CERTIFICATES.md | Four affine product envelopes, exact positive weighted-sum contradictions, new area-bound certificates, both nested-fan product inequalities and immutable source requirements |
| AREA_RELATIONS.md | Unconditional four-point linear and six-label four-product identities, exact positive-product interval rules and the stronger one-interior quadrilateral cost |
| SCALAR_AREA_INTERVALS.md | Exact finite fan, signed-Pluecker, support and linear area rules, immutable rational dependency packets and an optional geometry-aware replay interface |
| N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md | Triangular top-pair weights above 1/9, strengthened to 3/17 by any side-cap point, and eight affine inequalities |
| SIX_POINT_ENDPOINT_REFINED.md | Strict nontriangular six-point endpoint bound m<(125/1142)S, from the exhaustive support-cell catalogue |
| C1_ONE_LOWER_SIDE_PAIR_TOP.md | Entire (1,1,2,1,0) count and transpose: 34 splits, 31 cubics / 7,430 terms, four geometric terminals, 908 deductions and 114 interval updates |
| C1_TWO_LOWER_CENTRAL_SIDE_TOP.md | Entire (2,1,1,1,0) count and transpose: six roots, 205 splits, 193 cubics / 51,388 terms, eighteen geometric terminals, 5,961 deductions and 905 interval updates |
| N6_TOP_TRIPLE_SETUP.md | Exhaustive sixteen-word top catalogue, continuous boxes, geometry rules, scalar support bounds and complete factor definitions for the two top-triple counts |
| N6_ITTT_TOP_TRIANGLE_WORD.md and indexed tables | Complete normalized ITTT --+- word: nineteen sign splits, twenty leaves, two clustered-triple terminals and two semantic readers |
| N6_BTTT_TOP_WORD_MMMM.md and indexed tables | Complete normalized BTTT ---- word: fifteen sign splits, sixteen leaves, one 79-factor exact linear contradiction and two semantic readers |
| N6_BTTT_REMAINING_TRIANGULAR.md and indexed tables | Complete normalized BTTT ---+ word: thirteen sign splits, fourteen leaves, 1,356 deductions, 1,493 coordinate updates, 664 scalar updates and two independent manuscript readers |
| N6_BTTT_REMAINING_CENTRAL_EAR.md and indexed tables | Complete HBP<0 alternative of normalized +--+: no splits, 39 deductions, 28 factors, 152 coordinate updates and two independent manuscript readers |
| N6_BTTT_REMAINING_CENTRAL_POSITIVE.md and indexed tables | Complete AFP>0 alternative of normalized +--+ with HBP>0: five splits, six leaves, 1,178 deductions, 1,262 coordinate updates and two independent manuscript readers |
| N6_BTTT_REMAINING_CENTRAL_NEGATIVE.md and indexed tables | Complete AFP<0 alternative: 65 splits, 66 leaves, 33,808 coordinate updates, 137,031 scalar updates, 1,596 affine bounds and two independent literal readers |
| N6_BTTT_REMAINING_COUNT.md | Complete BTTT (1,0,0,3,0) exclusion, assembling all normalized top words and lower-central alternatives |
| N6_BTTT_REMAINING_ITTT_EARS.md and indexed tables | Both normalized single-ear ITTT words: nineteen splits, twenty-one leaves, 12,127 coordinate updates and two independent literal readers |
| N6_BTTT_REMAINING_ITTT_TRIANGULAR.md and indexed tables | Both remaining normalized triangular ITTT words: twelve splits, fourteen leaves, 8,656 coordinate updates and two independent literal readers |
| N6_BTTT_REMAINING_ITTT_CENTRAL.md and indexed tables | Entire central ITTT word: 145 splits, 146 leaves, 1,243 stages, 174 affine bounds, thirteen coordinate polynomial terminals and two independent literal readers |
| N6_BTTT_REMAINING_ITTT_CENTRAL_SETUP.md | Actual EQRF/S geometry, exact contact ceilings, upper-point identities and initial continuous boxes |
| N6_BTTT_REMAINING_ITTT_COUNT.md | Whole ITTT (0,1,0,3,0) exclusion: six normalized words, 195 splits and 201 leaves |
| N6_BTTT_REMAINING_BRTT.md, setup and indexed tables | Whole BRTT (1,0,1,2,0) and reflection: both top hulls, 45 splits, 46 leaves and two independent semantic readers |
| N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md | Positive coordinate-polynomial products, repeated-index translation and exact signed coefficient ceiling |
| N6_BTTT_REMAINING_ITTT_ROUTE.md | Exact upper-point coordinate factors with contact ceilings fixed before refinement |
| N6_BTTT_REMAINING_AFFINE_BOUNDS.md | Exact affine actual-area bound and terminal rule with six independently reviewed source families |
| N7_CENTRAL_COMPLETION_E_ONLY.md | Uniform E-only actual-containment and sign reduction used by the complete exclusion |
| N7_CENTRAL_COMPLETION_E_ONLY_EXCLUSION.md and indexed tables | Whole E-only word in CA and CB: twelve leaves, 72 stages, 1,344 cubic products, 35 scalar-area terms and two independent source-complete readers |
| N7_CENTRAL_COMPLETION_UPPER_FAN_CAP.md | Occupied HCF forces f>.617 and AEF/BEF capacity one in both central roots, with independent exact review |
| N7_CENTRAL_COMPLETION_CEF_EXCLUSION.md and indexed tables | Whole CEF word in CA and CB: 31 leaves, 234 stages, 2,302 positive polynomial products, sixty mesh obstructions and two independent source-complete readers |
| N7_CENTRAL_COMPLETION_CEF2_TRANSFER.md | Two CEF occupants and AEG<0,COP<0,EOP>0 force AEO>0, with FOP unrestricted; independent actual-containment and identity review |
| N7_CENTRAL_COMPLETION_HCE_CAP.md | Two HCE occupants force AEF capacity two in both central roots; fourteen exact rectangles, ordered endpoint ratios and independently checked positive gaps |
| N7_CENTRAL_COMPLETION_GLOBAL_AEF_CAP.md | Uniform actual AEF capacity two in both central roots; sixteen HEF-occupied rectangles and the accepted HCE theorem cover every upper-point placement |
| N7_CENTRAL_COMPLETION_BOX_CAPS.md | Uniform capacity two for ABF and AFH from actual determinant formulas, common boxes and two explicit nonnegative remainders |
| N7_CENTRAL_COMPLETION_QUAD_CAP.md | Actual ABEF capacity two and its four-edge capacity sign implication, with strict actual convexity and the exact cost gap 2/91 |
| N6_BTTT_TOP_TRIANGLE_WORD.md and indexed tables | Complete normalized BTTT --+- word: sixteen sign splits, nine coordinate cuts, twenty-six terminal contradictions and two independent semantic readers |
| N6_BTTT_TOP_EARS.md | Both entire single-ear top-quadrilateral BTTT alternatives: two roots, twenty splits, 22 cubics / 9,860 terms, 923 deductions and 549 explicit affine squares |
| N6_ONE_LOWER_THREE_CAPS.md | Entire (1,0,1,1,1) count: two reflected lower alternatives, 89 deductions, 158 interval steps, forty scalar caps and two cubics / 742 terms |
| QUADRILATERAL_AREA_SUPPORT.md | Support inequalities retain the actual quadrilateral floor and the minimum of two witnessed triangle-floor products; both denominator signs are proved |
| PENTAGON_EAR_SUPPORT.md | The three consecutive ear areas bound the doubled area of an endpoint support triangle, with a sharper bound for each occupied ear |
| N6_TOP_TRIPLE_TRANSPOSE.md | Explicit transposition and six label maps preserve every residual top group; exact .168/.264 contact ceilings and anchor-span lower bounds |
| C1_ONE_LOWER_THREE_CAPS.md | Entire (1,1,1,1,1) count: 37 splits, 37 cubics / 7,280 terms, one shared-central endpoint terminal, 1,053 deductions and 250 interval updates |
| C1_TWO_CENTRAL_SIDE_PAIR_TOP.md | Entire (0,2,2,1,0) count and transpose: 76 splits, 61 cubics / 9,344 terms, sixteen geometric terminals, 2,528 deductions and 274 interval updates |
| C1_TWO_CENTRAL_THREE_CAPS.md and indexed tables | Entire (0,2,1,1,1) count: 57 sign splits, 58 contradictions, 23 common coordinate bounds, 8,483 positive products and independent literal manuscript replay |
| SIDE_CAP_BASE_TRIANGLES.md | Uniform cy<21/50 and hx<21/50 side-cap bounds, actual capacity-one consequences, and the N6 actual-contact transfer |
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

The next targets are the one-corner family C1, together with the N6 and
N7 boundary counts. The adjacent-corner family II is complete.
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
