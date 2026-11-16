# Eight boundary points: complete closure of the side-line class

This note excludes the entire side-edge 4/4 line class left outside
N8_SIDE_CONTAINED.md. Together the two notes close N8-4/4-SIDE in full.
The proof uses thirteen exhaustive rows up to explicitly stated square
symmetries. Each row has a fully printed nonnegative cubic with an exact
negative upper bound. All factors, integer weights, and geometric signs
are supplied here. No numerical search, solver result, coordinate cover,
or external certificate file is a premise.

All areas are doubled. Put s=93/1000 and write

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), G=(g,1), H=(0,h),
    O=(x,y), P=(u,v), U=u-x, V=v-y.

Assume every actual unsigned triangle area is at least s. For the
determinants D(I,J,K)=det(J-I,K-I), put d_I=D(I,O,P). The side-line
representative, directed from the left side to the right side, has

    d_A,d_B,d_C,d_D<0;       d_E,d_F,d_G,d_H>0.

Thus U>0. No sign of V is assumed anywhere in this proof.

## 1. The two remaining geometric placements

Both O,P are inside the boundary octagon by N8_OP_LINE_CAPS.md. They
are above AD and below EH, since the two opposite four-vertex caps
ABCD and EFGH lie strictly on opposite sides of their line. The
corner-triangle and side-quadrilateral capacities established there
give the following signs throughout the side-line class:

    AFP-, CHP-, BEO+, DGO+, BGP-, CFO+.

For example, the chord AF decreases along the directed line, because
D(A,F,P)-D(A,F,O)=d_A-d_F<0. If AFP were positive, both points would
belong to the upper-left virtual corner triangle, contrary to its
capacity one. The same argument gives CHP-, and the half-turn gives
BEO+,DGO+. The segment through the left side quadrilateral ABGH
enters at AH and exits at BG, so capacity one gives BGP-. The right
quadrilateral CDEF similarly gives CFO+. The same signs and their
complete geometric derivation also appear in N8_SIDE_CONTAINED.md.

The four edges of ABEF, with the first two universal corner signs,
show that both points belong to ABEF exactly when AFO<0 and BEP>0.
Likewise both belong to CDGH exactly when CHO<0 and DGP>0.
These two possibilities have already been excluded. We therefore have

    (AFO>0 or BEP<0) and (CHO>0 or DGP<0).             (1)

The half-turn followed by interchanging O,P preserves the side-line
domain and sends the signs AFO,CHO to -BEP,-DGP. It therefore reduces
(1) to one of the following two placements:

    Double-left:   AFO>0, CHO>0;
    Top-adjacent:  AFO>0, CHO<0, DGP<0.               (2)

We first exclude the entire double-left placement. Its half-turn image
also excludes BEP<0,DGP<0. In the subsequent top-adjacent placement
we may consequently use BEP>0. We may also use BHO<0: otherwise O
would lie in ABH, all of whose vertices are on the nonnegative side
of CH, forcing CHO>0. This explains both extra premises used in its
case reduction below; there is no circular use of the top-adjacent
exclusion to prove the double-left exclusion.

## 2. The sign rules and the exact symmetry case tree

A signed name IJK+ or IJK- always refers to the sign of D(I,J,K) in
the printed order. Since every actual triangle is nonzero, either
strict sign gives the corresponding signed area at least s.

The basic signs available in every row are:

* Every boundary triple in increasing cyclic order is positive.
* Every directed consecutive octagon edge has positive determinant
  with O and with P.
* Every pair from A,B,C,D, and every pair from E,F,G,H, in their
  cyclic order has positive determinant with O and with P. This is
  the complementary-cap placement from Section 1.
* The eight OP signs and the six universal signs in Section 1 hold.
* AGP-, CEO+, BHP-, DFO+ hold as well.

The last four follow, respectively, from the following determinant
identities for any interior point X=(x_X,y_X):

    AGX=(g/f)AFX-(1-g/f)(1-a)x_X,
    CEX=((1-c)/(1-b))BEX
          +((c-b)/(1-b))*e*(1-x_X),
    BHX=h*BGX-y_X*[hg+b(1-h)],
    DFX=(1-d)*CFX
          +(1-y_X)*[(1-d)(1-c)+(1-f)d].

All displayed coefficients and the explicitly added terms are positive
where used. In addition to these basic signs and a row's stated signs,
we use only the following two elementary inference rules. Every use
needed by an integer table is given an explicit witness below that row.

1. If an interior point X lies in an actual boundary triangle IJK,
   and all three vertices are on the nonnegative (respectively
   nonpositive) side of a chord MN with at least one strict side,
   then D(M,N,X)>0 (respectively <0). Membership in IJK is certified
   by its three positive cyclic edge tests. The side of each boundary
   vertex follows from the cyclic order. Strictness follows because
   X is strictly inside and all its barycentric weights are positive.
2. The identity

       D(I,J,P)-D(I,J,O)=d_I-d_J

   makes a chord expression strictly decreasing when I is in ABCD
   and J in EFGH. Thus IJO- implies IJP-, and IJP+ implies IJO+.
   Reversing the two arcs reverses these implications.

Here are the two reflections used to reduce the sign cases. Both
preserve the side-line domain and U>0.

The horizontal reflection, without interchanging O,P, exchanges
the boundary labels A/H, B/G, C/F, D/E. On the needed triangle signs
its action is

    AFO <-> CHO,       BHO <-> AGO,
    AEP <-> DHP,       BFP <-> CGP,       BEP <-> DGP,
    BGO -> BGO,        CFP -> CFP.                     (3)

These are signed determinant identities, including the reversal of
orientation by the reflection. In particular this reflection preserves
the double-left placement.

The vertical reflection followed by interchanging O,P exchanges
A/D, B/C, E/H, F/G and acts by

    AFO <-> -DGP,      CHO <-> -BEP,
    AGO <-> -DFP,      BGO <-> -CFP,
    AEP <-> -DHO.                                    (4)

It preserves the top-adjacent placement with BEP>0, as well as every
already imposed pair of signs in the reductions that follow.

### Double-left coverage

Assume AFO+,CHO+. If BHO+ or AGO+, use (3) to put BHO+ first and
apply D1. Otherwise both are negative. If BGO+, apply D2. If BGO-
and CFP-, apply D3. We are left with BGO-,CFP+.

If AEP+ or DHP+, reflection (3) puts AEP+ first, giving D4.
Otherwise AEP-,DHP-. If BFP+ or CGP+, the same reflection puts BFP+
first, giving D5. Otherwise BFP-,CGP-.

If BEP+,DGP+, apply D6. In every remaining case at least one of these
two signs is negative. Reflection (3) puts DGP- first. Splitting BEP
now gives D7 or D8. The preceding pairs of signs are preserved in
each reflection. These eight rows therefore cover the entire
double-left placement.

### Top-adjacent coverage

Now assume AFO+,CHO-,DGP-,BEP+,BHO-, as justified in Section 1.
If AGO+ or DFP-, reflection (4) puts AGO+ first, giving T1.
Otherwise AGO-,DFP+.

If BGO+, split CFP to obtain T2 or T3. If BGO-,CFP-, reflection (4)
gives BGO+,CFP+, again T2. We are left with BGO-,CFP+.

If AEP+ or DHO-, reflection (4) puts AEP+ first, giving T4.
The only remaining case is AEP-,DHO+, which is T5. All earlier
paired signs are preserved. These five rows cover the whole remaining
top-adjacent placement, including both signs of every actual triangle
not explicitly restricted by their row.

The following table states the premises of each printed row. Rows D1-D8
also have AFO+,CHO+; rows T1-T5 have AFO+,CHO-,DGP-. A table may use
fewer premises than were available when that row was reached.

| Row | Further signs |
|---|---|
| D1 | BHO+ |
| D2 | BHO- AGO- BGO+ |
| D3 | BHO- AGO- BGO- CFP- |
| D4 | BHO- AGO- BGO- CFP+ AEP+ |
| D5 | BHO- AGO- BGO- CFP+ AEP- DHP- BFP+ |
| D6 | BHO- AGO- BGO- CFP+ AEP- DHP- BFP- CGP- BEP+ DGP+ |
| D7 | BHO- AGO- BGO- CFP+ AEP- DHP- BFP- CGP- DGP- BEP+ |
| D8 | BHO- AGO- BGO- CFP+ AEP- DHP- BFP- CGP- DGP- BEP- |
| T1 | BHO- AGO+ |
| T2 | BHO- AGO- DFP+ BEP+ BGO+ CFP+ |
| T3 | BHO- AGO- DFP+ BEP+ BGO+ CFP- |
| T4 | BHO- AGO- DFP+ BEP+ BGO- CFP+ AEP+ |
| T5 | BHO- AGO- DFP+ BEP+ BGO- CFP+ AEP- DHO+ |

## 3. All polynomial factors and their nonnegativity

The coordinate order is z=(a,b,c,d,e,f,g,h,x,y,u,v). Set

    ell=31/251, c0=31657/55000, kappa=189/251,
    lo=(ell,ell,1-c0,ell,1-c0,1-c0,ell,1-c0,ell,ell,ell,ell),
    hi=(c0,c0,1-ell,c0,1-ell,1-ell,c0,1-ell,
        1-ell,1-ell,1-ell,1-ell).

These are the established coordinate bounds in N8_BOUNDARY_RANGES.md.
Define forty nonnegative affine factors by

    L_(2i)=z_i-lo_i, L_(2i+1)=hi_i-z_i, 0<=i<12.

For Z_j=h-a,c-b,e-d,f-g, in that order, put

    L_(24+2j)=Z_j-5115/31657,
    L_(25+2j)=753/1000-Z_j, 0<=j<4.

The remaining factors are

    L32=e-a-21/250; L33=h-d-21/250;
    L34=f-b-21/250; L35=c-g-21/250;
    L36=U-62/251; L37=kappa-U;
    L38=kappa*U-V-2s; L39=kappa*U+V-2s.

The first thirty-eight follow from the boundary ranges and the two
interior coordinate bounds. For the last two, the OP area sums give
(e-a)U-V>=2s and (h-d)U+V>=2s. The overlaps e-a,h-d are at most
kappa and U>0, proving both factors nonnegative for either sign of V.

A signed triangle factor is

    IJK+ : D(I,J,K)-s;       IJK- : -D(I,J,K)-s.

Its sign is basic, explicitly imposed by the row, or justified by a
printed witness from Section 2. For a cyclic boundary polygon Q, write
A(Q) for its doubled area: for Q=IJK use D(I,J,K), and for Q=IJKL
use D(I,J,K)+D(I,K,L). The occupancy factors are

    C_IJK_1=A(IJK)-3s;         C_IJK_2=A(IJK)-(149/20)s;
    C_IJKL_1=A(IJKL)-(24/5)s;  C_IJKL_2=A(IJKL)-8s.

Each is used only when the indicated one or two points are strictly
inside Q. The three-triangle fan gives 3; TRIANGLE_OCCUPANCY.md gives
Gamma2=4+2sqrt(3)>149/20; the one-point quadrilateral theorem in
U3_FOUR_ONE_SIDE.md gives 2(1+sqrt(2))>24/5; and the two-point
quadrilateral theorem in N8_OP_LINE_CAPS.md gives 8. Every used
occupancy factor has all its positive cyclic edge tests justified by
the basic signs, row signs, and printed witness signs.

For Q in {AEF,CGH,ABE,CDG,BEF,DGH,ABF,CDH}, define

    K_Q=69/100-A(Q)>0.

These are precisely the eight bounds from N8_TRIANGLE_CAPS.md.

Finally, suppose Q=IJKL contains both O,P and both diagonals IK,JL
strictly separate them. For either of its diagonals MN, put

    R_Q_MN=A(Q)-(29/5)s-|d_N-d_M|.

This factor is nonnegative by the threshold-free spread theorem in
QUADRILATERAL_SPREAD.md, whose stronger coefficient is 3+2sqrt(2).
In every use the two endpoints M,N have opposite OP signs. Thus the
absolute value has a fixed polynomial sign: it is d_N-d_M if M is
in ABCD and N in EFGH, and d_M-d_N in the reverse case. The diagonal
vectors have determinant A(Q), so their normalized coordinate spread
is exactly |d_N-d_M|/A(Q). Each used factor's table specifies the
contained points and the opposite signs on both diagonals. No upper
bound on A(Q) or extra normalized-minimum assumption is needed.

## 4. The exact coefficient bound

An entry ('factor',weight) means the positive integer weight times that
factor or product. An asterisk denotes multiplication. All products
have degree at most three, and every factor is nonnegative in its row.
Their sum W is therefore nonnegative.

Expand W=sum_e c_e*z^e. Every coordinate is nonnegative and lies in its
printed interval [lo_i,hi_i]. Consequently

    W <= B(W)
      := sum_(c_e>0) c_e*product_i hi_i^(e_i)
         +sum_(c_e<0) c_e*product_i lo_i^(e_i).

The constant monomial is one in both products. The following tables
print their complete integer sums and exact rational B(W), all negative.
Thus every row gives the contradiction 0<=W<=B(W)<0. Each rational
value requires only polynomial expansion and addition of rational
numbers. The optional checker check_n8_side_outside.py reads these
printed tables, reconstructs every determinant and factor, checks their
geometric signs, and reproduces the bounds using Fraction arithmetic.
It imports no separate certificate file and is not a premise of the
inequalities.

## 5. The thirteen fixed integer tables

### Row D1: BHO+

There are 70 positive integer entries. Their exact bound is

    B(W)=-530892537662366763958968213/83287339459152125000000000<0.

```text
('L0*L5', 905), ('L5*L6', 81), ('L5*L16', 80)
('L5*L25', 14), ('L5*L29', 186), ('L6*L11', 29)
('L9*L31', 54), ('L11*L16', 99), ('L11*L29', 109)
('L12*L15', 15), ('L15*L25', 51), ('L15*L31', 447)
('L16*L25', 472), ('L0*L2*L25', 417), ('L0*L3*L16', 406)
('L0*L5*L10', 327), ('L0*L5*L16', 645), ('L0*L11*L30', 97)
('L0*L13*L16', 97), ('L0*L16*L34', 12), ('L0*L25*L27', 123)
('L2*L3*L15', 1475), ('L2*L6*L25', 108), ('L2*L25*L25', 331)
('L3*L3*L19', 1475), ('L3*L11*L18', 327), ('L3*L16*L25', 530)
('L6*L25*L27', 15), ('L9*L11*L26', 46), ('L9*L24*L31', 2)
('L9*L26*L31', 8), ('L11*L16*L32', 297), ('L11*L18*L31', 97)
('L11*L24*L29', 14), ('L12*L15*L25', 80), ('L16*L25*L34', 85)
('L25*L27*L31', 4), ('ABC+', 904), ('ABC+*L10', 323)
('ABC+*L12', 4), ('ABC+*L16', 645), ('ABC+*L25', 123)
('BCD+', 87), ('BCD+*L11', 46), ('BCD+*L25', 15)
('CDE+', 186), ('DEF+', 145), ('DEF+*L24', 14)
('DEF+*L26', 46), ('EFG+', 54), ('EFG+*L24', 2)
('EFG+*L26', 8), ('FGH+', 373), ('FGH+*L17', 85)
('FGH+*L27', 4), ('GHO+', 95), ('GHO+*L2', 85)
('HAO+', 1112), ('HAO+*L3', 2005), ('AFO+', 381)
('AFO+*L3', 327), ('AFO+*L31', 97), ('BHO+', 514)
('BHO+*L3', 1475), ('BHO+*L13', 85), ('AEO+*L11', 297)
('C_ABH_1*L0', 338), ('C_ABH_1*L6', 108), ('C_ABH_1*L25', 331)
('C_ABGH_1*L25', 80)
```

Additional signs used in this row have these explicit witnesses.

| Sign | Witness from the two rules in Section 2 |
|---|---|
| AEO+ | O in AFH; its vertices are on the positive side of AE |
| BGO+ | O in ABH; its vertices are on the positive side of BG |

Every occupancy or spread factor used in this row has the following tests.

| Factor | Contained points | Edge or diagonal tests |
|---|---|---|
| C_ABGH_1 | O | all cyclic polygon edges positive |
| C_ABH_1 | O | all cyclic polygon edges positive |

### Row D2: BHO-, AGO-, BGO+

There are 121 positive integer entries. Their exact bound is

    B(W)=-5160978806449420820682193/3331493578366085000000000<0.

```text
('L0*L0*L13', 12), ('L0*L0*L16', 5), ('L0*L2*L13', 448)
('L0*L2*L19', 87), ('L0*L5*L15', 7), ('L0*L5*L16', 58)
('L0*L5*L18', 139), ('L0*L11*L15', 7), ('L0*L13*L13', 90)
('L0*L13*L19', 231), ('L0*L13*L27', 1416), ('L0*L16*L27', 674)
('L0*L16*L30', 363), ('L1*L11*L11', 83), ('L1*L11*L29', 253)
('L2*L11*L24', 36), ('L3*L3*L15', 90), ('L3*L9*L31', 38)
('L3*L12*L15', 448), ('L3*L15*L15', 12), ('L3*L15*L18', 231)
('L3*L15*L31', 1416), ('L5*L5*L14', 83), ('L5*L5*L19', 14)
('L5*L6*L17', 7), ('L5*L6*L24', 135), ('L5*L11*L25', 369)
('L5*L12*L24', 36), ('L5*L14*L29', 253), ('L5*L16*L33', 355)
('L5*L19*L27', 68), ('L5*L19*L29', 19), ('L5*L24*L29', 352)
('L5*L29*L30', 185), ('L5*L29*L35', 46), ('L6*L13*L27', 38)
('L6*L27*L27', 22), ('L9*L11*L17', 7), ('L9*L11*L24', 135)
('L9*L31*L31', 22), ('L11*L11*L18', 14), ('L11*L15*L16', 58)
('L11*L15*L19', 139), ('L11*L16*L32', 355), ('L11*L18*L29', 19)
('L11*L18*L31', 68), ('L11*L24*L29', 352), ('L11*L26*L29', 185)
('L11*L29*L34', 46), ('L12*L15*L18', 87), ('L15*L15*L16', 5)
('L15*L16*L26', 363), ('L15*L16*L31', 674), ('L16*L25*L25', 50)
('ABC+*L3', 14), ('ABC+*L13', 1471), ('ABC+*L16', 363)
('ABC+*L18', 132), ('ABH+*L6', 135), ('ABH+*L11', 18)
('AGH+*L5', 18), ('AGH+*L9', 135), ('BCD+', 67)
('BCD+*L13', 38), ('BCD+*L24', 135), ('BCD+*L27', 22)
('CDE+', 28), ('CDE+*L14', 253), ('CDE+*L19', 19)
('CDE+*L24', 352), ('CDE+*L30', 185), ('CDE+*L35', 46)
('DEF+', 28), ('DEF+*L1', 253), ('DEF+*L18', 19)
('DEF+*L24', 352), ('DEF+*L26', 185), ('DEF+*L34', 46)
('EFG+', 67), ('EFG+*L3', 38), ('EFG+*L24', 135)
('EFG+*L31', 22), ('FGH+*L3', 1471), ('FGH+*L13', 14)
('FGH+*L16', 363), ('FGH+*L19', 132), ('HAO+*L25', 43)
('AFO+', 653), ('AFO+*L2', 68), ('AFO+*L4', 369)
('AFO+*L12', 190), ('AFO+*L14', 7), ('AFO+*L31', 83)
('CHO+', 653), ('CHO+*L1', 7), ('CHO+*L2', 190)
('CHO+*L10', 369), ('CHO+*L12', 68), ('CHO+*L27', 83)
('BHO-', 1443), ('BHO-*L4', 183), ('BHO-*L12', 380)
('BHO-*L15', 12), ('BHO-*L26', 90), ('AGO-', 1443)
('AGO-*L0', 12), ('AGO-*L2', 380), ('AGO-*L10', 183)
('AGO-*L30', 90), ('BGO+', 1084), ('BGO+*L3', 22)
('BGO+*L13', 22), ('BGO+*L24', 219), ('BGO+*L34', 68)
('BGO+*L35', 68), ('AEO+*L11', 362), ('DHO+*L5', 362)
('C_ABG_1*L2', 14), ('C_BGH_1*L12', 14), ('C_ABGH_1*L5', 14)
('C_ABGH_1*L11', 14)
```

Additional signs used in this row have these explicit witnesses.

| Sign | Witness from the two rules in Section 2 |
|---|---|
| AEO+ | O in AFG; its vertices are on the positive side of AE |
| DHO+ | O in ACH; its vertices are on the positive side of DH |

Every occupancy or spread factor used in this row has the following tests.

| Factor | Contained points | Edge or diagonal tests |
|---|---|---|
| C_ABGH_1 | O | all cyclic polygon edges positive |
| C_ABG_1 | O | all cyclic polygon edges positive |
| C_BGH_1 | O | all cyclic polygon edges positive |

### Row D3: BHO-, AGO-, BGO-, CFP-

There are 100 positive integer entries. Their exact bound is

    B(W)=-108902271930769469527935189/41643669729576062500000000<0.

```text
('L0*L27', 123), ('L2*L25', 55), ('L12*L25', 56)
('L15*L31', 123), ('L0*L2*L16', 9), ('L0*L2*L30', 76)
('L0*L2*L34', 2), ('L0*L16*L35', 25), ('L1*L11*L31', 122)
('L2*L3*L19', 32), ('L2*L6*L17', 2), ('L2*L19*L31', 34)
('L2*L25*L30', 3), ('L2*L25*L35', 5), ('L4*L4*L31', 11)
('L4*L9*L11', 28), ('L5*L5*L30', 11), ('L5*L6*L10', 28)
('L5*L6*L24', 26), ('L5*L6*L30', 35), ('L5*L6*L35', 14)
('L5*L14*L27', 122), ('L5*L19*L27', 103), ('L5*L25*L31', 3)
('L6*L24*L27', 4), ('L6*L27*L30', 8), ('L9*L11*L24', 26)
('L9*L11*L26', 35), ('L9*L11*L34', 14), ('L9*L12*L17', 2)
('L9*L24*L31', 4), ('L9*L26*L31', 8), ('L10*L10*L27', 11)
('L11*L11*L26', 11), ('L11*L18*L31', 103), ('L11*L25*L27', 3)
('L12*L13*L18', 32), ('L12*L15*L16', 9), ('L12*L15*L26', 76)
('L12*L15*L35', 2), ('L12*L18*L27', 34), ('L12*L25*L26', 3)
('L12*L25*L34', 5), ('L15*L16*L34', 25), ('L18*L31*L31', 19)
('L19*L27*L27', 19), ('ABC+', 23), ('ABC+*L10', 123)
('ABC+*L17', 160), ('ABH+*L12', 11), ('ABH+*L19', 296)
('AGH+*L18', 296), ('BCD+', 8), ('BCD+*L5', 49)
('BCD+*L24', 4), ('BCD+*L30', 8), ('CDE+*L6', 2)
('DEF+*L9', 2), ('EFG+', 8), ('EFG+*L11', 49)
('EFG+*L24', 4), ('EFG+*L26', 8), ('FGH+', 23)
('FGH+*L4', 123), ('FGH+*L17', 160), ('ABO+', 121)
('ABO+*L10', 22), ('ABO+*L30', 98), ('ABO+*L34', 2)
('ABO+*L35', 5), ('GHO+', 121), ('GHO+*L4', 22)
('GHO+*L26', 98), ('GHO+*L34', 5), ('GHO+*L35', 2)
('AFO+', 111), ('AFO+*L3', 33), ('AFO+*L26', 130)
('AFO+*L31', 127), ('AFO+*L34', 5), ('CHO+', 111)
('CHO+*L13', 33), ('CHO+*L27', 127), ('CHO+*L30', 130)
('CHO+*L35', 5), ('BGO-', 124), ('BGO-*L24', 296)
('BGO-*L34', 11), ('BGO-*L35', 11), ('AEO+*L12', 2)
('BFO+*L12', 30), ('CGO+*L2', 30), ('DHO+*L2', 2)
('C_CDEF_1*L4', 14), ('C_CDEF_1*L10', 14), ('C_CDEF_1*L24', 24)
('C_CDEF_1*L32', 2), ('C_CDEF_1*L33', 2), ('C_CDEF_1*L34', 49)
('C_CDEF_1*L35', 49)
```

Additional signs used in this row have these explicit witnesses.

| Sign | Witness from the two rules in Section 2 |
|---|---|
| AEO+ | O in AFG; its vertices are on the positive side of AE |
| BFO+ | O in AFG; its vertices are on the positive side of BF |
| CGO+ | O in ACH; its vertices are on the positive side of CG |
| DHO+ | O in ACH; its vertices are on the positive side of DH |

Every occupancy or spread factor used in this row has the following tests.

| Factor | Contained points | Edge or diagonal tests |
|---|---|---|
| C_CDEF_1 | P | all cyclic polygon edges positive |

### Row D4: BHO-, AGO-, BGO-, CFP+, AEP+

There are 185 positive integer entries. Their exact bound is

    B(W)=-329590436338433794076987365597/4181024440849436675000000000<0.

```text
('L0*L27', 776), ('L2*L8', 11), ('L5*L29', 316)
('L6*L9', 4), ('L6*L19', 12), ('L6*L23', 13)
('L8*L12', 140), ('L11*L15', 33), ('L11*L29', 28)
('L12*L38', 9), ('L15*L31', 59), ('L15*L38', 1)
('L27*L39', 176), ('L29*L36', 324), ('L29*L39', 22)
('L36*L38', 90), ('L0*L2*L28', 20), ('L0*L2*L34', 1)
('L0*L13*L16', 387), ('L0*L13*L27', 1), ('L0*L13*L35', 1)
('L0*L16*L35', 417), ('L0*L20*L21', 21), ('L0*L22*L30', 6)
('L0*L30*L37', 16), ('L1*L11*L12', 502), ('L2*L8*L21', 79)
('L2*L10*L19', 29), ('L2*L14*L19', 1047), ('L2*L17*L25', 308)
('L2*L18*L25', 388), ('L2*L19*L21', 84), ('L2*L19*L23', 123)
('L2*L19*L32', 1283), ('L2*L19*L33', 144), ('L2*L19*L34', 5)
('L2*L21*L32', 70), ('L2*L25*L30', 5), ('L4*L15*L17', 23)
('L4*L15*L21', 52), ('L4*L15*L25', 6), ('L4*L21*L25', 195)
('L5*L9*L16', 8), ('L5*L16*L19', 21), ('L5*L16*L29', 15)
('L5*L16*L37', 6), ('L5*L18*L38', 145), ('L5*L19*L29', 182)
('L5*L29*L37', 346), ('L6*L10*L36', 3), ('L6*L11*L37', 12)
('L6*L16*L38', 9), ('L6*L17*L27', 145), ('L8*L8*L8', 22)
('L9*L9*L9', 22), ('L9*L9*L36', 102), ('L9*L11*L17', 5)
('L9*L16*L25', 13), ('L9*L16*L27', 387), ('L9*L17*L39', 83)
('L9*L18*L36', 74), ('L9*L21*L39', 28), ('L9*L22*L36', 28)
('L9*L29*L36', 18), ('L9*L31*L36', 5), ('L11*L12*L18', 469)
('L11*L13*L25', 307), ('L11*L19*L29', 57), ('L12*L13*L18', 4)
('L12*L15*L19', 164), ('L12*L15*L28', 20), ('L12*L16*L32', 5)
('L12*L17*L18', 53), ('L12*L17*L38', 8), ('L12*L18*L18', 759)
('L12*L18*L21', 164), ('L12*L18*L28', 144), ('L12*L18*L32', 1139)
('L12*L18*L38', 268), ('L12*L19*L25', 694), ('L13*L25*L31', 1)
('L15*L16*L19', 877), ('L15*L17*L17', 64), ('L15*L17*L18', 5)
('L15*L17*L21', 28), ('L15*L17*L25', 24), ('L15*L17*L31', 311)
('L15*L17*L35', 391), ('L15*L19*L31', 6), ('L16*L22*L27', 21)
('L16*L27*L33', 480), ('L17*L17*L25', 178), ('L17*L25*L25', 7)
('L17*L25*L32', 1), ('L17*L29*L39', 9), ('L17*L35*L39', 8)
('L18*L25*L35', 6), ('L18*L27*L39', 145), ('L18*L29*L36', 18)
('L19*L19*L27', 145), ('L19*L25*L34', 6), ('L21*L25*L26', 11)
('L24*L36*L36', 199), ('L25*L27*L36', 204), ('L25*L32*L36', 1)
('L25*L36*L37', 19), ('L26*L29*L36', 258), ('L32*L36*L36', 69)
('ABC+', 457), ('ABC+*L17', 622), ('ABH+*L19', 168)
('BCD+', 256), ('BCD+*L20', 166), ('CDE+', 306)
('CDE+*L19', 182), ('CDE+*L37', 377), ('DEF+', 38)
('DEF+*L19', 57), ('FGH+*L17', 618), ('ABO+', 774)
('ABO+*L13', 1), ('ABO+*L21', 157), ('ABO+*L28', 20)
('ABO+*L30', 5), ('ABO+*L34', 1), ('ABO+*L37', 109)
('FHO+*L2', 5), ('GHO+', 367), ('GHO+*L4', 967)
('GHO+*L10', 302), ('GHO+*L17', 270), ('GHO+*L18', 1027)
('GHO+*L28', 20), ('GHO+*L34', 5), ('GHO+*L35', 1)
('DEP+*L2', 15), ('HAO+*L6', 4), ('AOP-*L12', 26)
('AOP-*L16', 1639), ('AOP-*L36', 1639), ('DOP-', 441)
('DOP-*L26', 394), ('DOP-*L34', 15), ('EOP+', 1859)
('EOP+*L4', 8), ('EOP+*L9', 102), ('EOP+*L12', 11)
('EOP+*L20', 1856), ('EOP+*L26', 630), ('EOP+*L29', 18)
('EOP+*L34', 15), ('HOP+*L21', 218), ('HOP+*L27', 215)
('AFO+*L12', 809), ('CHO+', 636), ('CHO+*L13', 967)
('CHO+*L19', 145), ('CHO+*L25', 6), ('CHO+*L37', 246)
('BGO-', 208), ('BGO-*L10', 26), ('BGO-*L14', 1047)
('BGO-*L20', 53), ('BGO-*L23', 268), ('BGO-*L24', 582)
('BGO-*L30', 4), ('BGO-*L32', 1262), ('BGO-*L33', 124)
('BGO-*L34', 4), ('AEP+*L3', 141), ('AEP+*L17', 1420)
('AEP+*L20', 1420), ('AEP+*L25', 1), ('AEP+*L26', 410)
('AEP+*L31', 5), ('AEP+*L36', 527), ('AEO+*L25', 5)
('CGO+*L15', 145), ('DHO+*L25', 25), ('DHO+*L27', 777)
('C_AEF_1*L36', 17), ('C_AEF_1*L38', 6), ('C_AEH_2*L6', 3)
('C_BFG_1*L0', 123), ('C_AEFG_2*L39', 6)
```

Additional signs used in this row have these explicit witnesses.

| Sign | Witness from the two rules in Section 2 |
|---|---|
| AEO+ | O in AFG; its vertices are on the positive side of AE |
| BFO+ | O in AFG; its vertices are on the positive side of BF |
| CGO+ | O in ACH; its vertices are on the positive side of CG |
| DHO+ | O in ACH; its vertices are on the positive side of DH |

Every occupancy or spread factor used in this row has the following tests.

| Factor | Contained points | Edge or diagonal tests |
|---|---|---|
| C_AEFG_2 | OP | all cyclic polygon edges positive |
| C_AEF_1 | P | all cyclic polygon edges positive |
| C_AEH_2 | OP | all cyclic polygon edges positive |
| C_BFG_1 | O | all cyclic polygon edges positive |

### Row D5: BHO-, AGO-, BGO-, CFP+, AEP-, DHP-, BFP+

There are 138 positive integer entries. Their exact bound is

    B(W)=-1738999122613651733000152229307/20905122204247183375000000000<0.

```text
('L9', 120), ('L29', 8), ('L0*L6', 16)
('L1*L11', 16), ('L2*L15', 34), ('L2*L39', 49)
('L4*L15', 116), ('L5*L14', 19), ('L5*L23', 61)
('L5*L33', 9), ('L5*L34', 2), ('L7*L29', 1)
('L9*L20', 128), ('L11*L20', 18), ('L11*L32', 65)
('L11*L39', 96), ('L12*L25', 148), ('L13*L29', 2)
('L15*L17', 63), ('L18*L31', 534), ('L19*L27', 51)
('L20*L29', 187), ('L25*L29', 11), ('L25*L36', 80)
('L25*L38', 3), ('L27*L39', 122), ('L0*L5*L20', 15)
('L0*L6*L20', 37), ('L0*L20*L29', 88), ('L0*L25*L36', 45)
('L0*L34*L38', 66), ('L1*L2*L22', 57), ('L1*L5*L21', 18)
('L1*L11*L18', 1), ('L1*L11*L20', 64), ('L1*L11*L22', 57)
('L1*L11*L25', 74), ('L1*L11*L26', 88), ('L1*L11*L34', 5)
('L1*L15*L21', 37), ('L1*L20*L31', 14), ('L1*L21*L27', 6)
('L2*L9*L19', 50), ('L2*L15*L18', 50), ('L2*L15*L35', 18)
('L3*L18*L31', 2), ('L4*L15*L20', 31), ('L4*L15*L32', 12)
('L5*L14*L32', 2), ('L5*L17*L24', 45), ('L5*L19*L32', 54)
('L5*L20*L33', 59), ('L5*L21*L32', 31), ('L6*L20*L25', 43)
('L9*L18*L34', 117), ('L9*L20*L34', 154), ('L11*L14*L32', 33)
('L11*L16*L32', 75), ('L11*L18*L32', 50), ('L11*L18*L34', 23)
('L11*L20*L32', 106), ('L11*L22*L24', 53), ('L12*L17*L25', 83)
('L13*L19*L27', 60), ('L15*L17*L24', 28), ('L15*L17*L32', 54)
('L15*L19*L34', 44), ('L15*L20*L31', 31), ('L16*L25*L25', 14)
('L16*L27*L33', 101), ('L16*L31*L32', 1), ('L20*L26*L29', 18)
('L20*L29*L33', 6), ('L20*L29*L35', 14), ('L20*L31*L32', 30)
('L25*L25*L36', 43), ('ABC+*L36', 70), ('ABH+*L19', 32)
('ABH+*L39', 53), ('ACE+*L15', 1), ('AGH+', 135)
('AGH+*L17', 83), ('AGH+*L18', 209), ('BCD+', 15)
('BFH+*L5', 18), ('EFG+', 4), ('EFH+*L16', 22)
('FGH+*L4', 53), ('FGH+*L17', 108), ('FGH+*L39', 30)
('BCO+*L11', 10), ('BCO+*L31', 7), ('EFO+*L2', 64)
('FHO+*L5', 55), ('GHO+*L4', 83), ('GHO+*L26', 18)
('HAP+*L11', 9), ('AFO+', 315), ('AFO+*L3', 37)
('AFO+*L25', 74), ('AFO+*L26', 116), ('AFO+*L34', 91)
('CHO+', 377), ('CHO+*L30', 153), ('CHO+*L32', 54)
('BGO-', 711), ('BGO-*L10', 68), ('BGO-*L24', 209)
('AEP-', 453), ('AEP-*L0', 88), ('AEP-*L10', 47)
('AEP-*L30', 44), ('AEP-*L33', 6), ('AEP-*L34', 298)
('DHP-', 151), ('DHP-*L0', 125), ('DHP-*L4', 59)
('DHP-*L25', 49), ('DHP-*L26', 18), ('DHP-*L33', 6)
('DHP-*L35', 14), ('BFP+', 530), ('BFP+*L14', 16)
('BFP+*L24', 68), ('BFP+*L32', 167), ('AEO+*L3', 61)
('AEO+*L31', 1), ('BFO+*L31', 68), ('DHO+*L27', 101)
('C_ABF_1*L39', 24), ('C_ABEF_1*L39', 167), ('C_ACEF_1*L15', 33)
('C_ACEH_2*L15', 6), ('R_ACEH_AE*L11', 28), ('C_AEFH_1*L5', 28)
('C_BCGH_1*L38', 30), ('K_ABE*L11', 64), ('K_ABF*L11', 86)
```

Additional signs used in this row have these explicit witnesses.

| Sign | Witness from the two rules in Section 2 |
|---|---|
| AEO+ | O in AFG; its vertices are on the positive side of AE |
| BFO+ | O in AFG; its vertices are on the positive side of BF |
| CGO+ | O in ACH; its vertices are on the positive side of CG |
| DHO+ | O in ACH; its vertices are on the positive side of DH |
| BEP+ | P in ABF; its vertices are on the positive side of BE |
| CEP+ | P in ABF; its vertices are on the positive side of CE |

Every occupancy or spread factor used in this row has the following tests.

| Factor | Contained points | Edge or diagonal tests |
|---|---|---|
| C_ABEF_1 | P | all cyclic polygon edges positive |
| C_ABF_1 | P | all cyclic polygon edges positive |
| C_ACEF_1 | P | all cyclic polygon edges positive |
| C_ACEH_2 | OP | all cyclic polygon edges positive |
| C_AEFH_1 | O | all cyclic polygon edges positive |
| C_BCGH_1 | O | all cyclic polygon edges positive |
| R_ACEH_AE | OP | AE:+-, CH:+- |

### Row D6: BHO-, AGO-, BGO-, CFP+, AEP-, DHP-, BFP-, CGP-, BEP+, DGP+

There are 112 positive integer entries. Their exact bound is

    B(W)=-904575363163442024477055696059/10452561102123591687500000000<0.

```text
('L0*L12', 142), ('L2*L9', 368), ('L2*L15', 142)
('L2*L25', 97), ('L2*L39', 147), ('L6*L12', 368)
('L12*L25', 98), ('L12*L38', 147), ('L21*L29', 8)
('L25*L29', 39), ('L27*L39', 43), ('L31*L38', 43)
('L0*L5*L16', 31), ('L0*L16*L27', 9), ('L0*L34*L36', 110)
('L2*L25*L28', 29), ('L5*L6*L17', 18), ('L5*L16*L33', 87)
('L6*L17*L34', 4), ('L6*L21*L31', 25), ('L6*L31*L37', 11)
('L9*L11*L17', 18), ('L9*L17*L35', 4), ('L9*L21*L27', 25)
('L9*L27*L37', 11), ('L11*L15*L16', 31), ('L11*L16*L32', 87)
('L12*L25*L28', 29), ('L15*L16*L31', 9), ('L15*L35*L36', 110)
('L16*L27*L33', 229), ('L16*L31*L32', 229), ('L20*L25*L29', 376)
('L22*L29*L35', 33), ('L23*L29*L34', 33), ('L24*L27*L39', 27)
('L24*L31*L38', 27), ('L25*L34*L39', 27), ('L25*L35*L38', 27)
('ABF+*L9', 75), ('ABH+*L7', 29), ('ABH+*L9', 347)
('ABH+*L19', 169), ('ABH+*L22', 34), ('ABH+*L37', 172)
('ABH+*L39', 229), ('AGH+*L3', 9), ('AGH+*L6', 347)
('AGH+*L8', 29), ('AGH+*L18', 158), ('AGH+*L23', 23)
('AGH+*L37', 180), ('AGH+*L38', 239), ('BCD+*L37', 9)
('CDE+*L16', 16), ('CGH+*L6', 75), ('DEF+*L16', 16)
('EFG+*L37', 9), ('ABO+*L10', 194), ('CDO+*L12', 11)
('CDP+*L12', 160), ('EFO+*L2', 11), ('EFP+*L2', 160)
('GHO+*L4', 194), ('AFP-*L12', 4), ('CHP-*L2', 4)
('AFO+', 420), ('AFO+*L3', 124), ('AFO+*L26', 81)
('CHO+', 420), ('CHO+*L13', 124), ('CHO+*L30', 81)
('BGO-', 634), ('BGO-*L24', 511), ('AEP-', 633)
('AEP-*L3', 4), ('AEP-*L26', 41), ('AEP-*L34', 151)
('DHP-', 633), ('DHP-*L13', 4), ('DHP-*L30', 41)
('DHP-*L35', 151), ('BFP-', 125), ('BFP-*L28', 33)
('CGP-', 125), ('CGP-*L28', 33), ('BEP+', 542)
('BEP+*L10', 156), ('BEP+*L24', 376), ('BEP+*L30', 4)
('BEP+*L35', 4), ('DGP+', 542), ('DGP+*L4', 156)
('DGP+*L24', 376), ('DGP+*L26', 4), ('DGP+*L34', 4)
('AEO+*L11', 125), ('AEO+*L31', 233), ('DHO+*L5', 125)
('DHO+*L27', 233), ('C_ABE_1*L10', 11), ('C_ABE_1*L12', 9)
('C_ACH_1*L11', 41), ('C_ADG_2*L11', 4), ('C_AFH_1*L5', 41)
('C_BEF_1*L1', 75), ('C_BEH_2*L5', 4), ('C_CDG_1*L14', 75)
('C_DGH_1*L2', 9), ('C_DGH_1*L4', 11), ('C_ABFG_1*L39', 60)
('C_BCGH_1*L38', 60)
```

Additional signs used in this row have these explicit witnesses.

| Sign | Witness from the two rules in Section 2 |
|---|---|
| AEO+ | O in AFG; its vertices are on the positive side of AE |
| BFO+ | O in AFG; its vertices are on the positive side of BF |
| CGO+ | O in ACH; its vertices are on the positive side of CG |
| DHO+ | O in ACH; its vertices are on the positive side of DH |

Every occupancy or spread factor used in this row has the following tests.

| Factor | Contained points | Edge or diagonal tests |
|---|---|---|
| C_ABE_1 | P | all cyclic polygon edges positive |
| C_ABFG_1 | O | all cyclic polygon edges positive |
| C_ACH_1 | O | all cyclic polygon edges positive |
| C_ADG_2 | OP | all cyclic polygon edges positive |
| C_AFH_1 | O | all cyclic polygon edges positive |
| C_BCGH_1 | O | all cyclic polygon edges positive |
| C_BEF_1 | P | all cyclic polygon edges positive |
| C_BEH_2 | OP | all cyclic polygon edges positive |
| C_CDG_1 | P | all cyclic polygon edges positive |
| C_DGH_1 | P | all cyclic polygon edges positive |

### Row D7: BHO-, AGO-, BGO-, CFP+, AEP-, DHP-, BFP-, CGP-, DGP-, BEP+

There are 194 positive integer entries. Their exact bound is

    B(W)=-38559523740609750336997025973/475116413732890531250000000<0.

```text
('L0*L38', 2), ('L2*L9', 57), ('L2*L39', 131)
('L4*L15', 21), ('L5*L14', 5), ('L5*L19', 62)
('L5*L23', 136), ('L6*L20', 100), ('L9*L11', 92)
('L12*L15', 164), ('L12*L18', 65), ('L15*L31', 118)
('L27*L29', 4), ('L27*L39', 30), ('L0*L6*L13', 3)
('L0*L6*L20', 71), ('L0*L6*L36', 6), ('L0*L7*L12', 68)
('L0*L12*L22', 386), ('L0*L12*L28', 324), ('L0*L13*L29', 56)
('L0*L16*L16', 27), ('L0*L16*L38', 1), ('L0*L20*L29', 613)
('L1*L2*L39', 259), ('L1*L3*L11', 140), ('L1*L3*L31', 89)
('L1*L6*L34', 2), ('L1*L11*L12', 5), ('L1*L11*L26', 120)
('L1*L11*L34', 35), ('L1*L27*L39', 55), ('L1*L31*L31', 35)
('L2*L2*L19', 27), ('L2*L9*L17', 137), ('L2*L9*L21', 499)
('L2*L9*L26', 25), ('L2*L12*L18', 4), ('L2*L12*L22', 5)
('L2*L15*L18', 309), ('L2*L15*L22', 81), ('L2*L19*L19', 2)
('L3*L11*L18', 128), ('L3*L15*L21', 192), ('L5*L14*L20', 87)
('L5*L17*L32', 55), ('L5*L19*L24', 44), ('L5*L19*L32', 5)
('L5*L19*L35', 27), ('L5*L23*L33', 9), ('L6*L20*L30', 22)
('L6*L27*L36', 89), ('L6*L27*L38', 5), ('L8*L12*L18', 49)
('L8*L12*L22', 4), ('L9*L11*L17', 36), ('L9*L11*L39', 4)
('L9*L17*L31', 2), ('L9*L19*L21', 2), ('L9*L19*L31', 2)
('L9*L21*L31', 9), ('L9*L27*L34', 29), ('L9*L27*L37', 57)
('L10*L12*L18', 25), ('L11*L16*L19', 26), ('L11*L19*L29', 2)
('L11*L26*L38', 13), ('L11*L27*L39', 13), ('L12*L15*L20', 23)
('L12*L15*L26', 8), ('L12*L15*L35', 17), ('L12*L17*L18', 188)
('L12*L17*L25', 120), ('L12*L18*L22', 21), ('L12*L18*L27', 85)
('L12*L18*L28', 11), ('L12*L20*L32', 6), ('L12*L21*L33', 161)
('L12*L22*L25', 128), ('L12*L25*L26', 35), ('L12*L25*L28', 134)
('L12*L25*L34', 54), ('L15*L17*L17', 189), ('L15*L17*L22', 25)
('L15*L21*L26', 88), ('L15*L22*L35', 3), ('L15*L34*L37', 28)
('L16*L25*L29', 7), ('L16*L27*L33', 69), ('L16*L31*L32', 363)
('L18*L21*L31', 2), ('L18*L27*L39', 2), ('L19*L19*L27', 2)
('L19*L23*L27', 4), ('L19*L27*L27', 27), ('L19*L27*L29', 5)
('L20*L25*L29', 97), ('L21*L25*L31', 28), ('ABC+*L38', 55)
('ABF+*L9', 139), ('ABG+*L9', 391), ('ABG+*L39', 46)
('ABH+*L9', 327), ('ABH+*L16', 277), ('ABH+*L39', 409)
('AGH+*L8', 97), ('AGH+*L18', 723), ('AGH+*L28', 26)
('AGH+*L35', 35), ('BCD+', 1), ('BCD+*L20', 93)
('CGH+*L12', 13), ('EFG+*L16', 8), ('EFG+*L37', 16)
('FGH+', 13), ('FGH+*L4', 95), ('FGH+*L17', 383)
('ABO+*L9', 53), ('ABO+*L16', 1), ('ABO+*L39', 2)
('ABP+*L9', 57), ('ABP+*L29', 2), ('ACO+*L15', 49)
('EHO+*L5', 112), ('FHO+*L5', 189), ('GHO+', 212)
('GHO+*L4', 353), ('GHO+*L17', 190), ('GHO+*L22', 31)
('GHO+*L26', 43), ('GHO+*L28', 11), ('GHO+*L34', 54)
('DEO+*L15', 4), ('HOP+*L27', 1), ('CHP-*L6', 4)
('AFO+', 503), ('AFO+*L3', 118), ('AFO+*L8', 58)
('AFO+*L17', 26), ('AFO+*L21', 2), ('AFO+*L26', 137)
('AFO+*L28', 2), ('AFO+*L31', 129), ('AFO+*L34', 129)
('CHO+', 415), ('CHO+*L1', 49), ('CHO+*L13', 152)
('CHO+*L16', 1), ('CHO+*L23', 6), ('CHO+*L30', 301)
('BGO-', 630), ('BGO-*L10', 231), ('BGO-*L23', 10)
('BGO-*L24', 718), ('BGO-*L27', 55), ('BGO-*L32', 51)
('BGO-*L37', 2), ('AEP-', 949), ('AEP-*L3', 549)
('AEP-*L14', 230), ('AEP-*L26', 82), ('AEP-*L34', 30)
('DHP-*L0', 230), ('DHP-*L12', 155), ('BFP-*L8', 56)
('BFP-*L13', 5), ('BFP-*L26', 25), ('DGP-', 177)
('DGP-*L0', 465), ('DGP-*L8', 4), ('DGP-*L10', 22)
('DGP-*L25', 94), ('BEP+', 999), ('BEP+*L1', 445)
('BEP+*L19', 2), ('BEP+*L24', 324), ('BEP+*L26', 25)
('BEP+*L33', 4), ('AEO+*L31', 389), ('BFO+*L12', 132)
('CGO+*L15', 5), ('DHO+*L27', 162), ('DFP+*L12', 17)
('C_ABE_1*L39', 54), ('C_AFH_1*L5', 17), ('C_BCF_1*L15', 84)
('C_BEF_1*L1', 199), ('C_BEF_1*L26', 29), ('C_BEF_1*L32', 61)
('C_BEF_1*L38', 52), ('C_BEG_2*L6', 4), ('C_ABEF_1*L9', 61)
('C_DFGH_1*L12', 5), ('K_CDG*L15', 4)
```

Additional signs used in this row have these explicit witnesses.

| Sign | Witness from the two rules in Section 2 |
|---|---|
| AEO+ | O in AFG; its vertices are on the positive side of AE |
| BFO+ | O in AFG; its vertices are on the positive side of BF |
| CGO+ | O in ACH; its vertices are on the positive side of CG |
| DHO+ | O in ACH; its vertices are on the positive side of DH |
| DFP+ | P in ACF; its vertices are on the positive side of DF |

Every occupancy or spread factor used in this row has the following tests.

| Factor | Contained points | Edge or diagonal tests |
|---|---|---|
| C_ABEF_1 | P | all cyclic polygon edges positive |
| C_ABE_1 | P | all cyclic polygon edges positive |
| C_AFH_1 | O | all cyclic polygon edges positive |
| C_BCF_1 | P | all cyclic polygon edges positive |
| C_BEF_1 | P | all cyclic polygon edges positive |
| C_BEG_2 | OP | all cyclic polygon edges positive |
| C_DFGH_1 | P | all cyclic polygon edges positive |

### Row D8: BHO-, AGO-, BGO-, CFP+, AEP-, DHP-, BFP-, CGP-, DGP-, BEP-

There are 225 positive integer entries. Their exact bound is

    B(W)=-175309918854306690390617849143/2090512220424718337500000000<0.

```text
('L0*L0*L10', 5806), ('L0*L2*L2', 544), ('L0*L2*L32', 3486)
('L0*L2*L35', 1772), ('L0*L5*L5', 2067), ('L0*L5*L9', 158)
('L0*L5*L19', 161), ('L0*L5*L23', 981), ('L0*L5*L33', 2320)
('L0*L5*L36', 1347), ('L0*L9*L12', 202), ('L0*L9*L37', 981)
('L0*L10*L25', 2795), ('L0*L11*L16', 12531), ('L0*L12*L19', 161)
('L0*L12*L21', 15574), ('L0*L12*L29', 2), ('L0*L12*L36', 14227)
('L0*L16*L27', 12398), ('L0*L27*L38', 161), ('L0*L29*L34', 1808)
('L1*L11*L12', 8597), ('L1*L11*L31', 3893), ('L2*L2*L6', 1904)
('L2*L5*L8', 9651), ('L2*L5*L14', 8597), ('L2*L5*L19', 2489)
('L2*L5*L23', 3602), ('L2*L6*L15', 202), ('L2*L6*L19', 981)
('L2*L6*L23', 161), ('L2*L6*L32', 2303), ('L2*L6*L36', 1347)
('L2*L8*L27', 4093), ('L2*L9*L21', 13629), ('L2*L12*L29', 6926)
('L2*L15*L18', 161), ('L2*L15*L21', 15574), ('L2*L15*L29', 2)
('L2*L15*L36', 14227), ('L2*L18*L25', 11054), ('L2*L23*L27', 3792)
('L2*L23*L29', 8536), ('L2*L25*L35', 1431), ('L2*L25*L38', 1789)
('L3*L9*L9', 5762), ('L3*L9*L29', 2774), ('L4*L15*L15', 5806)
('L4*L15*L25', 2795), ('L5*L5*L6', 499), ('L5*L6*L33', 3460)
('L5*L6*L34', 1940), ('L5*L9*L16', 15533), ('L5*L9*L22', 161)
('L5*L9*L25', 19), ('L5*L9*L36', 14186), ('L5*L11*L25', 6931)
('L5*L14*L27', 3893), ('L5*L15*L16', 12531), ('L5*L16*L25', 1304)
('L5*L19*L25', 8601), ('L5*L19*L27', 3690), ('L5*L22*L29', 11087)
('L5*L29*L34', 1362), ('L5*L29*L39', 1789), ('L6*L6*L13', 5762)
('L6*L11*L15', 158), ('L6*L11*L16', 15533), ('L6*L11*L23', 161)
('L6*L11*L25', 19), ('L6*L11*L36', 14186), ('L6*L12*L21', 13629)
('L6*L13*L29', 2774), ('L6*L15*L37', 981), ('L6*L21*L27', 12248)
('L6*L25*L35', 1791), ('L6*L27*L39', 161), ('L7*L11*L12', 9651)
('L7*L12*L31', 4093), ('L9*L11*L11', 499), ('L9*L11*L32', 3460)
('L9*L11*L35', 1940), ('L9*L12*L12', 1904), ('L9*L12*L18', 981)
('L9*L12*L22', 161), ('L9*L12*L33', 2303), ('L9*L12*L36', 1347)
('L9*L21*L31', 12248), ('L9*L25*L34', 1791), ('L9*L31*L38', 161)
('L11*L11*L15', 2067), ('L11*L12*L18', 2489), ('L11*L12*L22', 3602)
('L11*L15*L18', 161), ('L11*L15*L22', 981), ('L11*L15*L32', 2320)
('L11*L15*L36', 1347), ('L11*L16*L25', 1304), ('L11*L18*L25', 8601)
('L11*L18*L31', 3690), ('L11*L23*L29', 11087), ('L11*L29*L35', 1362)
('L11*L29*L38', 1789), ('L12*L12*L15', 544), ('L12*L15*L33', 3486)
('L12*L15*L34', 1772), ('L12*L19*L25', 11054), ('L12*L22*L29', 8536)
('L12*L22*L31', 3792), ('L12*L25*L34', 1431), ('L12*L25*L39', 1789)
('L15*L16*L31', 12398), ('L15*L29*L35', 1808), ('L15*L31*L39', 161)
('L16*L29*L29', 5077), ('L18*L31*L31', 203), ('L19*L27*L27', 203)
('L21*L25*L25', 5115), ('L22*L31*L31', 301), ('L23*L27*L27', 301)
('L25*L25*L36', 5115), ('L25*L29*L37', 2703), ('L29*L29*L36', 5077)
('ABC+*L15', 3647), ('ABC+*L21', 6853), ('ABC+*L27', 2067)
('ABC+*L29', 177), ('ABC+*L36', 8200), ('ABC+*L38', 161)
('ABH+*L5', 6287), ('AGH+*L11', 6287), ('BCD+*L9', 3621)
('BCD+*L16', 6880), ('BCD+*L25', 203), ('BCD+*L27', 1904)
('BCD+*L36', 8227), ('BCD+*L39', 161), ('CDE+*L2', 5091)
('DEF+*L12', 5091), ('EFG+*L6', 3621), ('EFG+*L16', 6880)
('EFG+*L25', 203), ('EFG+*L31', 1904), ('EFG+*L36', 8227)
('EFG+*L38', 161), ('FGH+*L0', 3647), ('FGH+*L21', 6853)
('FGH+*L29', 177), ('FGH+*L31', 2067), ('FGH+*L36', 8200)
('FGH+*L39', 161), ('ABO+', 1445), ('ABO+*L4', 8989)
('ABO+*L8', 1142), ('ABO+*L10', 16205), ('ABO+*L28', 845)
('ABO+*L32', 3486), ('ABO+*L33', 3647), ('ABO+*L34', 1523)
('ABO+*L35', 4635), ('CDP+', 2093), ('CDP+*L3', 7537)
('CDP+*L13', 16316), ('CDP+*L14', 1142), ('CDP+*L24', 871)
('CDP+*L32', 3621), ('CDP+*L33', 3460), ('CDP+*L34', 4664)
('CDP+*L35', 1406), ('EFP+', 2093), ('EFP+*L1', 1142)
('EFP+*L3', 16316), ('EFP+*L13', 7537), ('EFP+*L24', 871)
('EFP+*L32', 3460), ('EFP+*L33', 3621), ('EFP+*L34', 1406)
('EFP+*L35', 4664), ('GHO+', 1445), ('GHO+*L4', 16205)
('GHO+*L7', 1142), ('GHO+*L10', 8989), ('GHO+*L28', 845)
('GHO+*L32', 3647), ('GHO+*L33', 3486), ('GHO+*L34', 4635)
('GHO+*L35', 1523), ('AFO+*L3', 10797), ('AFO+*L12', 16316)
('AFO+*L15', 161), ('AFO+*L25', 8601), ('AFO+*L26', 6931)
('AFO+*L29', 1789), ('AFO+*L31', 3893), ('CHO+*L0', 161)
('CHO+*L2', 16316), ('CHO+*L13', 10797), ('CHO+*L25', 8601)
('CHO+*L27', 3893), ('CHO+*L29', 1789), ('CHO+*L30', 6931)
('BGO-', 4590), ('BGO-*L2', 1726), ('BGO-*L12', 1726)
('BGO-*L24', 9358), ('BGO-*L29', 5473), ('CFP+', 4559)
('CFP+*L5', 1707), ('CFP+*L11', 1707), ('CFP+*L25', 5473)
('CFP+*L28', 9417), ('DGP-*L4', 10796), ('DGP-*L9', 161)
('DGP-*L11', 16104), ('DGP-*L25', 1789), ('DGP-*L26', 6926)
('DGP-*L29', 8536), ('DGP-*L31', 4093), ('BEP-*L5', 16104)
('BEP-*L6', 161), ('BEP-*L10', 10796), ('BEP-*L25', 1789)
('BEP-*L27', 4093), ('BEP-*L29', 8536), ('BEP-*L30', 6926)
```


### Row T1: BHO-, AGO+

There are 234 positive integer entries. Their exact bound is

    B(W)=-1641022168528557662310662470759/20905122204247183375000000000<0.

```text
('L0*L21', 49), ('L2*L6', 1), ('L6*L6', 82)
('L6*L27', 462), ('L9*L11', 1121), ('L11*L29', 294)
('L0*L2*L3', 1), ('L0*L2*L18', 284), ('L0*L5*L19', 7)
('L0*L5*L23', 10), ('L0*L5*L30', 27), ('L0*L5*L36', 2)
('L0*L9*L31', 17), ('L0*L12*L19', 286), ('L0*L13*L17', 54)
('L0*L13*L21', 64), ('L0*L13*L24', 200), ('L0*L13*L32', 4)
('L0*L13*L38', 37), ('L0*L16*L21', 32), ('L0*L17*L27', 480)
('L0*L20*L21', 69), ('L0*L21*L22', 2), ('L0*L21*L27', 7)
('L0*L24*L27', 8), ('L0*L27*L38', 7), ('L0*L36*L36', 68)
('L1*L13*L16', 113), ('L2*L12*L39', 2), ('L2*L13*L38', 2)
('L2*L14*L21', 5), ('L2*L32*L39', 10), ('L4*L9*L16', 1237)
('L4*L9*L31', 217), ('L4*L9*L36', 42), ('L4*L9*L39', 15)
('L4*L16*L23', 206), ('L4*L16*L38', 39), ('L5*L5*L18', 1)
('L5*L6*L18', 2), ('L5*L11*L15', 5), ('L5*L15*L16', 1331)
('L5*L15*L29', 2), ('L5*L15*L31', 24), ('L5*L15*L37', 53)
('L5*L16*L39', 39), ('L5*L19*L25', 78), ('L6*L6*L13', 126)
('L6*L6*L17', 1), ('L6*L6*L30', 181), ('L6*L8*L21', 6)
('L6*L10*L21', 268), ('L6*L11*L13', 5), ('L6*L13*L13', 1)
('L6*L13*L18', 180), ('L6*L13*L22', 3), ('L6*L13*L24', 267)
('L6*L13*L27', 1095), ('L6*L13*L29', 100), ('L6*L13*L32', 47)
('L6*L18*L27', 71), ('L6*L20*L29', 57), ('L6*L21*L34', 5)
('L6*L24*L27', 177), ('L6*L27*L27', 7), ('L6*L27*L29', 20)
('L8*L9*L16', 1), ('L9*L11*L14', 7), ('L9*L11*L18', 176)
('L9*L11*L24', 190), ('L9*L11*L32', 181), ('L9*L11*L34', 4)
('L9*L16*L20', 32), ('L9*L16*L22', 11), ('L9*L16*L31', 1114)
('L9*L16*L36', 10), ('L9*L23*L35', 5), ('L9*L26*L31', 2)
('L9*L26*L38', 10), ('L10*L16*L23', 36), ('L11*L12*L39', 5)
('L11*L13*L29', 8), ('L11*L13*L38', 5), ('L11*L14*L15', 127)
('L11*L15*L20', 82), ('L11*L15*L27', 147), ('L11*L15*L32', 131)
('L11*L15*L38', 24), ('L11*L16*L22', 131), ('L11*L18*L21', 240)
('L11*L18*L22', 13), ('L11*L24*L35', 10), ('L11*L29*L29', 181)
('L12*L19*L25', 657), ('L12*L25*L25', 1231), ('L15*L15*L26', 8)
('L15*L16*L27', 151), ('L15*L16*L29', 23), ('L15*L21*L39', 2)
('L15*L25*L26', 70), ('L15*L27*L27', 1), ('L15*L31*L31', 4)
('L15*L31*L36', 143), ('L16*L22*L29', 2), ('L16*L23*L26', 221)
('L16*L29*L29', 1), ('L19*L21*L35', 113), ('L21*L25*L25', 438)
('L21*L25*L39', 52), ('L25*L25*L36', 438), ('L25*L36*L39', 54)
('ABC+', 111), ('ABC+*L1', 8), ('ABC+*L10', 15)
('ABC+*L12', 136), ('ABC+*L17', 417), ('ABC+*L23', 17)
('ABC+*L34', 2), ('ABH+', 84), ('ABH+*L5', 1)
('ABH+*L11', 7), ('ABH+*L13', 140), ('ABH+*L14', 78)
('ABH+*L17', 55), ('ABH+*L27', 1), ('BCD+', 466)
('BCD+*L13', 1095), ('BCD+*L18', 71), ('BCD+*L24', 177)
('BCD+*L27', 7), ('BCD+*L29', 20), ('CEF+*L15', 3)
('DEF+*L9', 647), ('DEF+*L15', 950), ('DEF+*L22', 286)
('EFG+', 37), ('EFG+*L4', 186), ('EFG+*L16', 941)
('EFG+*L20', 272), ('EFG+*L23', 690), ('EFG+*L24', 39)
('EFG+*L26', 2), ('EFG+*L31', 31), ('EFG+*L35', 31)
('EFG+*L38', 5), ('FGH+', 565), ('FGH+*L1', 116)
('FGH+*L5', 47), ('FGH+*L7', 823), ('FGH+*L17', 143)
('FGH+*L23', 11), ('FGH+*L27', 140), ('FGH+*L31', 4)
('FGH+*L32', 16), ('FGH+*L33', 127), ('FGH+*L38', 24)
('ABO+*L21', 10), ('EFP+', 573), ('EFP+*L7', 286)
('EFP+*L13', 38), ('EFP+*L15', 13), ('EFP+*L17', 55)
('EFP+*L18', 13), ('EHO+*L4', 1176), ('EHO+*L21', 932)
('EHP+*L16', 1019), ('EHP+*L35', 60), ('FGO+*L21', 35)
('GHO+', 1131), ('GHO+*L7', 16), ('GHO+*L12', 163)
('GHO+*L15', 360), ('GHO+*L20', 16), ('GHO+*L28', 5)
('GHO+*L39', 54), ('DEP+*L6', 349), ('HAO+*L13', 245)
('HAO+*L35', 70), ('HAO+*L37', 68), ('EOP+*L7', 2)
('EOP+*L10', 83), ('EOP+*L16', 10), ('EOP+*L30', 177)
('EOP+*L34', 15), ('HOP+', 944), ('HOP+*L4', 299)
('HOP+*L8', 11), ('HOP+*L12', 177), ('HOP+*L17', 10)
('HOP+*L26', 206), ('HOP+*L32', 2), ('AFP-*L15', 2)
('AFP-*L16', 54), ('CHO-', 1289), ('CHO-*L5', 1)
('CHO-*L9', 3), ('CHO-*L20', 314), ('CHO-*L24', 78)
('CHO-*L29', 2), ('CHO-*L36', 78), ('DGP-*L2', 5)
('DGP-*L9', 294), ('DGP-*L11', 48), ('DGP-*L18', 2)
('DGP-*L29', 406), ('BHO-*L21', 211), ('AGO+', 1553)
('AGO+*L2', 5), ('AGO+*L12', 153), ('AGO+*L15', 362)
('AGO+*L20', 165), ('AGO+*L22', 2), ('AGO+*L25', 438)
('AGO+*L31', 10), ('AGO+*L39', 54), ('AEO+*L11', 44)
('BGO+*L0', 489), ('DHP-*L11', 224), ('C_AGH_1*L9', 60)
('C_AGH_1*L16', 544), ('C_AGH_1*L23', 19), ('C_AGH_1*L25', 998)
('C_AGH_1*L35', 163), ('C_AGH_1*L37', 169), ('C_ABGH_1*L11', 10)
('C_ABGH_1*L19', 188), ('C_DEFG_1*L8', 647), ('C_DEFG_1*L10', 30)
('C_DEFG_1*L14', 924), ('C_DEFG_1*L18', 157), ('C_DEFG_1*L22', 410)
('C_DEFG_1*L24', 314), ('C_DEFG_1*L30', 1), ('C_DEFG_1*L34', 5)
```

Additional signs used in this row have these explicit witnesses.

| Sign | Witness from the two rules in Section 2 |
|---|---|
| AEO+ | O in AFH; its vertices are on the positive side of AE |
| BGO+ | O in AGH; its vertices are on the positive side of BG |
| DHP- | P in DEG; its vertices are on the negative side of DH |

Every occupancy or spread factor used in this row has the following tests.

| Factor | Contained points | Edge or diagonal tests |
|---|---|---|
| C_ABGH_1 | O | all cyclic polygon edges positive |
| C_AGH_1 | O | all cyclic polygon edges positive |
| C_DEFG_1 | P | all cyclic polygon edges positive |

### Row T2: BHO-, AGO-, DFP+, BEP+, BGO+, CFP+

There are 294 positive integer entries. Their exact bound is

    B(W)=-77150912249173217815045236963301/1311796418316510756781250000000<0.

```text
('L0*L2*L11', 79), ('L0*L2*L38', 38), ('L0*L5*L13', 79)
('L0*L5*L19', 892), ('L0*L5*L37', 248), ('L0*L5*L39', 368)
('L0*L6*L13', 503), ('L0*L6*L36', 1438), ('L0*L10*L11', 1616)
('L0*L11*L12', 79), ('L0*L11*L21', 6627), ('L0*L11*L37', 1267)
('L0*L13*L23', 1654), ('L0*L13*L38', 17), ('L0*L21*L36', 42)
('L0*L21*L38', 2129), ('L0*L36*L36', 7105), ('L0*L36*L39', 798)
('L1*L3*L3', 13), ('L1*L11*L11', 4932), ('L2*L5*L39', 78)
('L2*L6*L9', 251), ('L2*L6*L27', 516), ('L3*L3*L23', 304)
('L3*L3*L37', 229), ('L3*L5*L15', 877), ('L3*L5*L38', 382)
('L3*L7*L7', 2684), ('L3*L7*L9', 3090), ('L3*L7*L15', 1021)
('L3*L9*L15', 511), ('L3*L9*L28', 113), ('L3*L12*L15', 877)
('L3*L15*L19', 2693), ('L3*L15*L31', 948), ('L3*L15*L36', 5955)
('L3*L15*L39', 511), ('L3*L19*L21', 2466), ('L3*L19*L22', 457)
('L3*L21*L39', 4497), ('L3*L23*L39', 4477), ('L3*L26*L39', 304)
('L3*L36*L39', 2864), ('L3*L38*L39', 737), ('L4*L9*L12', 145)
('L5*L5*L15', 80), ('L5*L5*L25', 13), ('L5*L5*L37', 70)
('L5*L5*L38', 93), ('L5*L6*L11', 977), ('L5*L6*L13', 145)
('L5*L6*L16', 221), ('L5*L6*L19', 3552), ('L5*L6*L37', 81)
('L5*L9*L39', 4272), ('L5*L11*L15', 940), ('L5*L11*L37', 651)
('L5*L11*L38', 441), ('L5*L14*L15', 175), ('L5*L15*L16', 3074)
('L5*L15*L29', 7873), ('L5*L15*L31', 114), ('L5*L15*L38', 2141)
('L5*L16*L19', 447), ('L5*L16*L37', 330), ('L5*L16*L39', 6679)
('L5*L21*L23', 593), ('L5*L21*L38', 1744), ('L5*L38*L38', 3747)
('L6*L6*L13', 6356), ('L6*L6*L16', 6031), ('L6*L6*L36', 2769)
('L6*L9*L11', 6025), ('L6*L11*L16', 2391), ('L6*L11*L19', 1730)
('L6*L11*L36', 2269), ('L6*L11*L39', 5236), ('L6*L13*L25', 699)
('L6*L13*L36', 2919), ('L6*L13*L38', 6356), ('L6*L15*L16', 832)
('L6*L16*L21', 2263), ('L6*L16*L25', 952), ('L6*L19*L21', 424)
('L6*L21*L24', 250), ('L6*L21*L33', 325), ('L6*L21*L37', 6423)
('L6*L27*L27', 181), ('L6*L29*L36', 3142), ('L6*L36*L36', 1282)
('L7*L12*L15', 749), ('L7*L16*L16', 1282), ('L9*L9*L26', 113)
('L9*L11*L12', 4964), ('L9*L11*L14', 403), ('L9*L11*L26', 1292)
('L9*L11*L34', 103), ('L9*L11*L37', 11379), ('L9*L12*L15', 2038)
('L9*L12*L31', 4627), ('L9*L12*L39', 1348), ('L9*L15*L36', 2046)
('L9*L16*L18', 161), ('L9*L16*L26', 925), ('L9*L16*L31', 3444)
('L9*L16*L36', 16964), ('L9*L16*L38', 2416), ('L9*L19*L26', 3756)
('L9*L23*L26', 4753), ('L9*L34*L39', 971), ('L11*L11*L18', 2675)
('L11*L11*L37', 2277), ('L11*L11*L38', 3449), ('L11*L12*L39', 597)
('L11*L13*L38', 597), ('L11*L14*L21', 464), ('L11*L15*L23', 566)
('L11*L15*L36', 752), ('L11*L15*L38', 1772), ('L11*L16*L29', 5520)
('L11*L16*L39', 4409), ('L11*L21*L23', 1622), ('L11*L21*L33', 589)
('L11*L21*L38', 4409), ('L11*L23*L25', 406), ('L11*L23*L29', 3815)
('L11*L25*L38', 846), ('L11*L26*L39', 94), ('L11*L27*L38', 518)
('L11*L29*L38', 6966), ('L11*L32*L39', 614), ('L11*L34*L39', 424)
('L11*L36*L38', 3310), ('L11*L38*L39', 1460), ('L12*L12*L15', 652)
('L12*L15*L16', 947), ('L12*L39*L39', 2714), ('L13*L38*L38', 2714)
('L15*L15*L21', 175), ('L15*L16*L16', 689), ('L15*L16*L23', 194)
('L15*L18*L36', 228), ('L15*L29*L36', 572), ('L15*L31*L36', 523)
('L15*L31*L39', 1036), ('L16*L19*L25', 2605), ('L16*L23*L25', 645)
('L16*L26*L38', 4497), ('L16*L29*L31', 3545), ('L19*L21*L29', 4123)
('L21*L25*L36', 3858), ('L21*L25*L39', 2926), ('L26*L39*L39', 1432)
('L29*L29*L36', 120), ('ABC+*L3', 13), ('ABC+*L5', 13)
('ABC+*L7', 313), ('ABC+*L13', 79), ('ABC+*L19', 1260)
('ABC+*L23', 38), ('ABC+*L36', 29), ('BCD+', 2137)
('BCD+*L2', 516), ('BCD+*L7', 113), ('BCD+*L11', 1122)
('BCD+*L15', 708), ('BCD+*L19', 2016), ('BCD+*L23', 6025)
('BCD+*L25', 313), ('BCD+*L27', 181), ('BCD+*L28', 2571)
('CDE+*L6', 2684), ('CDE+*L8', 113), ('CDE+*L15', 8332)
('CDE+*L16', 221), ('CDE+*L19', 57), ('CDE+*L23', 4121)
('CDE+*L30', 145), ('CDE+*L37', 81), ('DEF+*L3', 1122)
('DEF+*L12', 12046), ('DEF+*L14', 2389), ('DEF+*L22', 5047)
('EFG+*L6', 6472), ('EFG+*L12', 857), ('EFG+*L16', 17370)
('EFG+*L31', 3770), ('EFG+*L36', 9917), ('EFG+*L38', 5123)
('FGH+*L0', 1500), ('FGH+*L3', 948), ('FGH+*L6', 2389)
('FGH+*L38', 82), ('EFP+', 6384), ('EFP+*L7', 447)
('EFP+*L13', 6757), ('EFP+*L15', 1986), ('EFP+*L18', 3428)
('EFP+*L21', 336), ('EFP+*L22', 856), ('EFP+*L30', 2948)
('EFP+*L34', 925), ('EFP+*L35', 1146), ('EFP+*L37', 2407)
('EGP+*L21', 471), ('EHP+*L16', 807), ('GHO+*L1', 1986)
('GHO+*L9', 1345), ('GHO+*L12', 652), ('GHO+*L16', 608)
('GHO+*L23', 840), ('GHO+*L26', 877), ('GHO+*L29', 692)
('GHO+*L38', 2572), ('EOP+', 829), ('EOP+*L6', 3262)
('EOP+*L10', 4358), ('EOP+*L15', 752), ('EOP+*L16', 20724)
('EOP+*L20', 4120), ('EOP+*L22', 349), ('EOP+*L27', 4444)
('EOP+*L29', 120), ('EOP+*L30', 2379), ('EOP+*L34', 7098)
('EOP+*L39', 2577), ('HOP+', 2977), ('HOP+*L4', 7861)
('HOP+*L7', 2578), ('HOP+*L17', 16843), ('HOP+*L21', 8001)
('HOP+*L23', 349), ('HOP+*L26', 6340), ('HOP+*L28', 630)
('HOP+*L31', 5018), ('HOP+*L33', 175), ('HOP+*L35', 5713)
('HOP+*L38', 2577), ('AFO+*L3', 79), ('AFO+*L11', 6548)
('AFO+*L15', 1500), ('AFO+*L36', 6619), ('AFO+*L39', 1460)
('CHO-', 10476), ('CHO-*L3', 877), ('CHO-*L5', 93)
('CHO-*L7', 846), ('CHO-*L11', 62), ('CHO-*L20', 2104)
('CHO-*L23', 4283), ('CHO-*L28', 459), ('CHO-*L31', 991)
('CHO-*L33', 175), ('CHO-*L36', 17679), ('CHO-*L38', 2316)
('DGP-*L9', 116), ('DGP-*L11', 12046), ('DGP-*L15', 2841)
('DGP-*L18', 4546), ('DGP-*L21', 3545), ('DGP-*L25', 1688)
('DGP-*L29', 6356), ('DGP-*L36', 11250), ('AGO-*L19', 3250)
('AGO-*L33', 486), ('AGO-*L34', 79), ('AGO-*L39', 17)
('BEP+*L6', 6025), ('BEP+*L11', 652), ('BEP+*L14', 511)
('BEP+*L39', 3782), ('BGO+*L3', 304), ('BGO+*L5', 114)
('BGO+*L9', 6494), ('BGO+*L11', 464), ('BGO+*L15', 1906)
('BGO+*L17', 4589), ('BGO+*L20', 2123), ('BGO+*L22', 457)
('BGO+*L25', 1298), ('BGO+*L29', 2016), ('BGO+*L31', 652)
('BGO+*L36', 4404), ('BGO+*L39', 695), ('CFP+*L3', 764)
('CFP+*L5', 93), ('CFP+*L8', 3000), ('CFP+*L14', 4052)
('CFP+*L16', 1957), ('CFP+*L19', 1968), ('CFP+*L23', 2316)
('CFP+*L24', 406), ('CFP+*L28', 10146), ('CFP+*L36', 5463)
```


### Row T3: BHO-, AGO-, DFP+, BEP+, BGO+, CFP-

There are 300 positive integer entries. Their exact bound is

    B(W)=-6150079646815916137159136153423/104943713465320860542500000000<0.

```text
('L0*L0*L13', 104), ('L0*L0*L16', 104), ('L0*L2*L2', 18)
('L0*L2*L27', 139), ('L0*L2*L29', 162), ('L0*L2*L30', 594)
('L0*L5*L15', 7), ('L0*L6*L27', 321), ('L0*L6*L30', 2088)
('L0*L9*L16', 3), ('L0*L9*L35', 230), ('L0*L10*L35', 110)
('L0*L11*L21', 41), ('L0*L12*L15', 7), ('L0*L15*L34', 61)
('L0*L16*L29', 11), ('L0*L16*L30', 599), ('L0*L16*L37', 120)
('L0*L23*L35', 121), ('L0*L35*L38', 10), ('L1*L1*L26', 290)
('L1*L7*L26', 483), ('L1*L26*L26', 781), ('L2*L2*L9', 776)
('L2*L2*L14', 5), ('L2*L3*L15', 23), ('L2*L6*L9', 7)
('L2*L12*L29', 21), ('L2*L15*L34', 75), ('L2*L21*L38', 109)
('L2*L26*L38', 440), ('L3*L9*L35', 528), ('L3*L12*L15', 730)
('L3*L15*L31', 212), ('L3*L19*L26', 880), ('L3*L21*L39', 104)
('L3*L26*L39', 440), ('L3*L32*L39', 22), ('L4*L5*L9', 23)
('L4*L9*L11', 730), ('L4*L9*L31', 212), ('L4*L15*L34', 528)
('L4*L16*L38', 104), ('L4*L23*L26', 880), ('L4*L26*L38', 440)
('L4*L33*L38', 22), ('L5*L5*L6', 18), ('L5*L5*L8', 5)
('L5*L5*L15', 776), ('L5*L6*L25', 162), ('L5*L6*L27', 139)
('L5*L6*L30', 594), ('L5*L9*L35', 75), ('L5*L11*L25', 21)
('L5*L16*L39', 109), ('L5*L26*L39', 440), ('L6*L6*L10', 104)
('L6*L6*L21', 104), ('L6*L9*L11', 7), ('L6*L9*L35', 61)
('L6*L12*L16', 41), ('L6*L13*L34', 110), ('L6*L15*L21', 3)
('L6*L15*L34', 230), ('L6*L19*L34', 121), ('L6*L21*L25', 11)
('L6*L21*L30', 599), ('L6*L21*L37', 120), ('L6*L34*L39', 10)
('L7*L7*L26', 290), ('L7*L26*L26', 781), ('L9*L11*L21', 41)
('L9*L11*L23', 54), ('L9*L11*L31', 80), ('L9*L11*L37', 110)
('L9*L11*L38', 49), ('L9*L15*L26', 68), ('L9*L15*L31', 197)
('L9*L16*L25', 21), ('L9*L16*L35', 31), ('L9*L16*L36', 191)
('L9*L16*L38', 21), ('L9*L19*L21', 31), ('L9*L21*L23', 21)
('L9*L21*L31', 566), ('L9*L26*L26', 103), ('L9*L31*L35', 547)
('L9*L35*L38', 68), ('L11*L12*L25', 18), ('L11*L12*L29', 18)
('L11*L21*L38', 5), ('L11*L38*L38', 39), ('L12*L15*L16', 41)
('L12*L15*L19', 54), ('L12*L15*L31', 80), ('L12*L15*L37', 110)
('L12*L15*L39', 49), ('L12*L16*L39', 5), ('L12*L39*L39', 39)
('L15*L16*L19', 21), ('L15*L16*L23', 31), ('L15*L16*L31', 566)
('L15*L21*L29', 21), ('L15*L21*L34', 31), ('L15*L21*L36', 191)
('L15*L21*L39', 21), ('L15*L26*L26', 103), ('L15*L31*L34', 547)
('L15*L34*L39', 68), ('L16*L23*L25', 101), ('L16*L23*L26', 81)
('L16*L26*L38', 38), ('L16*L30*L38', 1), ('L16*L31*L39', 1)
('L16*L35*L37', 7), ('L16*L35*L38', 15), ('L18*L23*L26', 162)
('L19*L21*L26', 81), ('L19*L21*L29', 101), ('L19*L22*L26', 162)
('L19*L24*L26', 72), ('L21*L26*L39', 38), ('L21*L30*L39', 1)
('L21*L31*L38', 1), ('L21*L34*L37', 7), ('L21*L34*L39', 15)
('L23*L26*L28', 72), ('L26*L38*L38', 5), ('L26*L39*L39', 5)
('L34*L39*L39', 39), ('L35*L38*L38', 39), ('ABC+*L2', 40)
('ABC+*L13', 1097), ('ABC+*L16', 2801), ('ABC+*L19', 149)
('ABC+*L23', 104), ('ABC+*L24', 61), ('ABC+*L30', 418)
('ABC+*L32', 230), ('ABC+*L35', 781), ('ABC+*L37', 7)
('BCD+*L5', 40), ('BCD+*L10', 1097), ('BCD+*L19', 104)
('BCD+*L21', 2801), ('BCD+*L23', 149), ('BCD+*L28', 61)
('BCD+*L30', 418), ('BCD+*L33', 230), ('BCD+*L34', 781)
('BCD+*L37', 7), ('EFG+*L0', 548), ('EFG+*L4', 278)
('EFG+*L6', 7), ('EFG+*L11', 138), ('EFG+*L35', 547)
('FGH+*L0', 7), ('FGH+*L3', 278), ('FGH+*L6', 548)
('FGH+*L12', 138), ('FGH+*L34', 547), ('EFP+*L0', 151)
('EFP+*L7', 126), ('EFP+*L19', 581), ('EFP+*L23', 50)
('EFP+*L30', 40), ('EHO+*L21', 739), ('EHO+*L23', 67)
('EHP+*L16', 739), ('EHP+*L19', 67), ('EHP+*L26', 174)
('GHO+*L1', 126), ('GHO+*L6', 151), ('GHO+*L19', 50)
('GHO+*L23', 581), ('GHO+*L30', 40), ('DEP+*L3', 176)
('DEP+*L24', 44), ('DEP+*L26', 877), ('HAO+*L4', 176)
('HAO+*L26', 877), ('HAO+*L28', 44), ('EOP+', 1454)
('EOP+*L3', 180), ('EOP+*L14', 67), ('EOP+*L16', 223)
('EOP+*L20', 191), ('EOP+*L34', 10), ('EOP+*L35', 20)
('EOP+*L39', 21), ('HOP+', 1454), ('HOP+*L4', 180)
('HOP+*L8', 67), ('HOP+*L17', 191), ('HOP+*L21', 223)
('HOP+*L26', 174), ('HOP+*L34', 20), ('HOP+*L35', 10)
('HOP+*L38', 21), ('AFO+*L2', 176), ('AFO+*L4', 549)
('AFO+*L6', 318), ('AFO+*L12', 592), ('AFO+*L15', 68)
('AFO+*L20', 7), ('AFO+*L22', 987), ('AFO+*L29', 699)
('AFO+*L36', 120), ('CHO-', 677), ('CHO-*L0', 67)
('CHO-*L5', 146), ('CHO-*L6', 194), ('CHO-*L8', 68)
('CHO-*L12', 134), ('CHO-*L17', 207), ('CHO-*L19', 50)
('CHO-*L20', 207), ('CHO-*L23', 868), ('CHO-*L27', 734)
('CHO-*L31', 549), ('DGP-*L0', 318), ('DGP-*L3', 549)
('DGP-*L5', 176), ('DGP-*L9', 68), ('DGP-*L11', 592)
('DGP-*L17', 7), ('DGP-*L18', 987), ('DGP-*L25', 699)
('DGP-*L36', 120), ('BHO-*L11', 9), ('AGO-', 761)
('AGO-*L0', 104), ('AGO-*L4', 1296), ('AGO-*L6', 293)
('AGO-*L14', 126), ('AGO-*L20', 7), ('AGO-*L22', 886)
('AGO-*L26', 1001), ('AGO-*L29', 778), ('AGO-*L34', 719)
('DFP+', 761), ('DFP+*L0', 293), ('DFP+*L3', 1296)
('DFP+*L6', 104), ('DFP+*L8', 126), ('DFP+*L17', 7)
('DFP+*L18', 886), ('DFP+*L25', 778), ('DFP+*L26', 1001)
('DFP+*L35', 719), ('BEP+', 677), ('BEP+*L0', 194)
('BEP+*L2', 146), ('BEP+*L6', 67), ('BEP+*L11', 134)
('BEP+*L14', 68), ('BEP+*L17', 207), ('BEP+*L19', 868)
('BEP+*L20', 207), ('BEP+*L23', 50), ('BEP+*L27', 734)
('BEP+*L31', 549), ('BGO+', 762), ('BGO+*L1', 9)
('BGO+*L3', 18), ('BGO+*L9', 611), ('BGO+*L17', 59)
('BGO+*L20', 59), ('BGO+*L22', 1242), ('BGO+*L24', 4)
('BGO+*L26', 1574), ('BGO+*L29', 235), ('BGO+*L34', 167)
('BGO+*L35', 40), ('BGO+*L39', 50), ('CFP-', 821)
('CFP-*L4', 18), ('CFP-*L7', 9), ('CFP-*L15', 611)
('CFP-*L18', 1242), ('CFP-*L25', 235), ('CFP-*L26', 1574)
('CFP-*L28', 4), ('CFP-*L34', 40), ('CFP-*L35', 167)
('CFP-*L36', 59), ('CFP-*L38', 50), ('CEP+*L12', 9)
('C_ABGH_1*L9', 197), ('C_ABGH_1*L21', 28), ('C_ABGH_1*L26', 664)
('C_ABGH_1*L35', 18), ('C_ABGH_1*L38', 68), ('C_AFGH_1*L21', 87)
('C_CDEF_1*L15', 197), ('C_CDEF_1*L16', 28), ('C_CDEF_1*L26', 664)
('C_CDEF_1*L34', 18), ('C_CDEF_1*L39', 68), ('C_DEFG_1*L16', 87)
```

Additional signs used in this row have these explicit witnesses.

| Sign | Witness from the two rules in Section 2 |
|---|---|
| CEP+ | P in BEG; its vertices are on the positive side of CE |

Every occupancy or spread factor used in this row has the following tests.

| Factor | Contained points | Edge or diagonal tests |
|---|---|---|
| C_ABGH_1 | O | all cyclic polygon edges positive |
| C_AFGH_1 | O | all cyclic polygon edges positive |
| C_CDEF_1 | P | all cyclic polygon edges positive |
| C_DEFG_1 | P | all cyclic polygon edges positive |

### Row T4: BHO-, AGO-, DFP+, BEP+, BGO-, CFP+, AEP+

There are 216 positive integer entries. Their exact bound is

    B(W)=-200181355978489378209726068145237/2623592836633021513562500000000<0.

```text
('L0*L2', 98), ('L0*L21', 84), ('L0*L27', 463)
('L2*L6', 1), ('L2*L21', 59), ('L2*L23', 4)
('L2*L29', 1), ('L2*L37', 27), ('L9*L11', 37)
('L9*L15', 1), ('L9*L38', 50), ('L12*L15', 75)
('L15*L31', 205), ('L25*L27', 56), ('L38*L39', 23)
('L0*L0*L37', 1), ('L0*L7*L21', 1), ('L0*L11*L13', 1)
('L0*L12*L21', 306), ('L0*L16*L35', 40), ('L0*L19*L21', 11)
('L0*L21*L27', 486), ('L0*L21*L33', 3), ('L0*L25*L37', 2)
('L0*L27*L32', 2), ('L0*L37*L37', 213), ('L1*L11*L12', 5)
('L2*L6*L19', 22), ('L2*L14*L19', 251), ('L2*L14*L37', 19)
('L2*L19*L23', 63), ('L2*L19*L37', 522), ('L2*L23*L37', 4)
('L4*L6*L37', 2), ('L4*L9*L18', 2), ('L4*L16*L38', 401)
('L5*L14*L15', 4), ('L5*L15*L16', 82), ('L5*L15*L33', 3)
('L5*L16*L39', 350), ('L5*L21*L37', 38), ('L5*L29*L39', 2)
('L5*L39*L39', 6), ('L6*L9*L13', 1), ('L6*L9*L16', 6)
('L6*L12*L16', 184), ('L6*L12*L37', 311), ('L6*L13*L36', 198)
('L6*L16*L31', 232), ('L6*L20*L36', 420), ('L6*L20*L38', 59)
('L6*L21*L37', 35), ('L6*L30*L36', 2), ('L6*L31*L37', 77)
('L6*L36*L36', 411), ('L7*L12*L36', 135), ('L7*L12*L38', 356)
('L8*L12*L16', 457), ('L8*L12*L25', 4), ('L9*L13*L29', 4)
('L9*L15*L35', 83), ('L9*L16*L35', 40), ('L9*L18*L35', 28)
('L9*L21*L25', 2), ('L9*L24*L36', 4), ('L9*L29*L36', 6)
('L9*L31*L36', 48), ('L9*L35*L38', 50), ('L9*L36*L37', 46)
('L9*L37*L38', 10), ('L11*L12*L18', 7), ('L11*L12*L32', 28)
('L11*L15*L17', 357), ('L11*L17*L19', 4), ('L11*L19*L21', 46)
('L11*L19*L22', 11), ('L11*L23*L29', 73), ('L11*L25*L29', 3)
('L11*L37*L37', 3), ('L12*L15*L23', 195), ('L12*L15*L37', 308)
('L12*L16*L39', 42), ('L12*L18*L21', 16), ('L12*L19*L25', 104)
('L12*L20*L39', 303), ('L12*L21*L25', 191), ('L12*L21*L38', 345)
('L12*L22*L38', 620), ('L12*L33*L38', 130), ('L12*L39*L39', 194)
('L13*L29*L36', 53), ('L13*L29*L38', 1), ('L13*L38*L38', 61)
('L15*L16*L19', 63), ('L15*L17*L17', 66), ('L15*L17*L38', 70)
('L15*L18*L27', 16), ('L15*L18*L36', 5), ('L15*L21*L38', 423)
('L15*L29*L35', 4), ('L15*L35*L36', 11), ('L16*L26*L38', 2)
('L16*L29*L36', 411), ('L17*L21*L25', 11), ('L17*L25*L25', 3)
('L17*L25*L31', 229), ('L19*L19*L27', 23), ('L20*L29*L36', 326)
('L20*L29*L38', 433), ('L20*L36*L36', 1), ('L21*L25*L25', 4)
('L21*L25*L36', 1879), ('L21*L25*L39', 423), ('L21*L27*L37', 2)
('L21*L37*L37', 1), ('L25*L27*L37', 61), ('L27*L37*L37', 1)
('L29*L35*L38', 5), ('L34*L36*L39', 4), ('L35*L36*L38', 55)
('L35*L38*L38', 6), ('ABC+', 514), ('ABC+*L21', 486)
('ABC+*L32', 2), ('ABC+*L37', 21), ('ABH+', 112)
('ABH+*L8', 2), ('ABH+*L19', 85), ('ABH+*L23', 2)
('ABH+*L37', 40), ('AGH+*L11', 234), ('DEF+*L9', 1)
('DEF+*L16', 232), ('DEF+*L37', 78), ('EFG+*L6', 61)
('EFG+*L38', 11), ('FGH+*L17', 820), ('FGH+*L29', 3)
('EFP+', 3), ('EFP+*L7', 61), ('EFP+*L17', 99)
('EFP+*L19', 11), ('EFP+*L20', 68), ('EFP+*L28', 1)
('EGO+*L11', 28), ('EHO+*L0', 4), ('EHO+*L21', 225)
('EHP+*L16', 246), ('GHO+', 676), ('GHO+*L8', 53)
('GHO+*L10', 234), ('GHO+*L17', 74), ('GHO+*L18', 86)
('GHO+*L20', 58), ('GHO+*L28', 41), ('GHO+*L38', 65)
('DEP+*L0', 1), ('AOP-*L36', 213), ('EOP+', 1101)
('EOP+*L9', 5), ('EOP+*L12', 390), ('EOP+*L16', 464)
('EOP+*L19', 10), ('EOP+*L20', 2728), ('EOP+*L29', 1)
('EOP+*L31', 50), ('EOP+*L33', 1), ('HOP+', 188)
('HOP+*L3', 2), ('HOP+*L13', 297), ('HOP+*L17', 677)
('HOP+*L18', 10), ('HOP+*L21', 2516), ('HOP+*L29', 4)
('HOP+*L33', 4), ('HOP+*L35', 834), ('AFP-*L29', 3)
('DGO+*L15', 15), ('DGO+*L25', 19), ('AFO+*L12', 269)
('CHO-', 227), ('CHO-*L8', 87), ('CHO-*L18', 23)
('CHO-*L20', 82), ('CHO-*L33', 7), ('CHO-*L36', 681)
('DGP-*L9', 67), ('DGP-*L36', 1192), ('DGP-*L38', 492)
('AGO-*L6', 19), ('BEP+*L25', 2), ('BGO-*L6', 22)
('BGO-*L14', 267), ('BGO-*L19', 23), ('BGO-*L23', 63)
('BGO-*L24', 85), ('BGO-*L37', 528), ('CFP+*L8', 50)
('CFP+*L16', 82), ('CFP+*L28', 7), ('CFP+*L37', 72)
('AEP+*L5', 40), ('AEP+*L12', 267), ('AEP+*L17', 1081)
('AEP+*L19', 11), ('AEP+*L20', 1070), ('AEP+*L25', 7)
('AEP+*L28', 1), ('AEP+*L31', 229), ('AEP+*L36', 809)
('AEP+*L39', 423), ('DHP-*L12', 417), ('C_AEF_1*L36', 229)
('C_AEG_2*L9', 4), ('C_AEH_2*L16', 536), ('C_AEH_2*L38', 43)
```

Additional signs used in this row have these explicit witnesses.

| Sign | Witness from the two rules in Section 2 |
|---|---|
| AEO+ | O in AFG; its vertices are on the positive side of AE |
| DHP- | P in DEG; its vertices are on the negative side of DH |

Every occupancy or spread factor used in this row has the following tests.

| Factor | Contained points | Edge or diagonal tests |
|---|---|---|
| C_AEF_1 | P | all cyclic polygon edges positive |
| C_AEG_2 | OP | all cyclic polygon edges positive |
| C_AEH_2 | OP | all cyclic polygon edges positive |

### Row T5: BHO-, AGO-, DFP+, BEP+, BGO-, CFP+, AEP-, DHO+

There are 268 positive integer entries. Their exact bound is

    B(W)=-167772901385801894318164872033/2613140275530897921875000000<0.

```text
('L2*L9', 9), ('L5*L15', 27), ('L9*L11', 43)
('L12*L15', 46), ('L0*L0*L20', 26), ('L0*L0*L36', 205)
('L0*L2*L31', 69), ('L0*L3*L16', 40), ('L0*L4*L31', 188)
('L0*L5*L22', 108), ('L0*L5*L36', 202), ('L0*L5*L39', 464)
('L0*L6*L27', 325), ('L0*L6*L30', 269), ('L0*L9*L20', 227)
('L0*L10*L25', 6), ('L0*L12*L17', 179), ('L0*L12*L39', 330)
('L0*L21*L31', 1046), ('L0*L21*L38', 117), ('L0*L36*L36', 79)
('L0*L36*L39', 64), ('L1*L2*L16', 1), ('L1*L3*L11', 262)
('L1*L11*L16', 277), ('L1*L11*L25', 199), ('L1*L11*L29', 450)
('L1*L11*L31', 80), ('L1*L31*L31', 89), ('L2*L6*L18', 108)
('L2*L6*L36', 202), ('L2*L6*L38', 463), ('L2*L9*L17', 176)
('L2*L9*L19', 241), ('L2*L9*L21', 129), ('L2*L9*L23', 206)
('L2*L11*L39', 28), ('L2*L12*L18', 23), ('L2*L12*L22', 148)
('L2*L12*L33', 92), ('L2*L15*L18', 91), ('L2*L15*L38', 48)
('L2*L22*L39', 281), ('L3*L6*L31', 172), ('L3*L11*L18', 18)
('L3*L11*L38', 23), ('L3*L15*L19', 431), ('L3*L31*L38', 5)
('L4*L6*L21', 42), ('L4*L7*L12', 245), ('L4*L9*L23', 439)
('L4*L12*L22', 11), ('L4*L12*L39', 49), ('L5*L6*L31', 84)
('L5*L7*L21', 2), ('L5*L9*L22', 89), ('L5*L9*L39', 49)
('L5*L11*L18', 174), ('L5*L11*L22', 10), ('L5*L11*L32', 75)
('L5*L12*L38', 45), ('L5*L15*L16', 110), ('L5*L15*L19', 205)
('L5*L15*L20', 176), ('L5*L15*L23', 247), ('L5*L18*L38', 281)
('L6*L6*L17', 26), ('L6*L6*L36', 205), ('L6*L11*L20', 191)
('L6*L11*L38', 331), ('L6*L13*L29', 5), ('L6*L15*L17', 228)
('L6*L16*L31', 1039), ('L6*L16*L39', 117), ('L6*L36*L36', 79)
('L6*L36*L38', 64), ('L7*L12*L21', 291), ('L7*L12*L25', 449)
('L7*L12*L29', 200), ('L7*L12*L31', 89), ('L7*L31*L31', 95)
('L9*L10*L11', 50), ('L9*L11*L19', 43), ('L9*L11*L21', 150)
('L9*L11*L23', 375), ('L9*L16*L38', 52), ('L9*L21*L31', 215)
('L9*L23*L35', 87), ('L9*L31*L33', 37), ('L9*L34*L39', 2)
('L11*L22*L39', 60), ('L11*L23*L38', 52), ('L11*L24*L29', 191)
('L11*L24*L39', 138), ('L11*L25*L38', 11), ('L11*L29*L30', 77)
('L11*L29*L34', 7), ('L11*L29*L35', 84), ('L11*L30*L39', 85)
('L11*L31*L38', 85), ('L11*L32*L39', 57), ('L12*L13*L15', 73)
('L12*L15*L16', 171), ('L12*L15*L19', 380), ('L12*L15*L23', 37)
('L12*L18*L38', 60), ('L12*L19*L39', 52), ('L12*L25*L28', 177)
('L12*L25*L30', 99), ('L12*L25*L34', 69), ('L12*L25*L35', 3)
('L12*L27*L38', 5), ('L12*L28*L38', 142), ('L12*L29*L39', 13)
('L12*L30*L38', 92), ('L12*L31*L39', 92), ('L12*L33*L38', 50)
('L15*L16*L31', 218), ('L15*L19*L34', 94), ('L15*L21*L39', 52)
('L15*L31*L32', 37), ('L15*L35*L38', 2), ('L16*L29*L39', 3)
('L16*L31*L39', 42), ('L17*L31*L38', 42), ('L20*L31*L39', 42)
('L21*L25*L38', 3), ('L21*L31*L38', 42), ('L25*L29*L36', 45)
('L25*L36*L36', 5), ('L25*L36*L39', 49), ('L29*L36*L36', 5)
('L29*L36*L38', 49), ('ABC+*L6', 161), ('ABC+*L16', 104)
('ABC+*L36', 43), ('ABC+*L39', 464), ('ABG+*L9', 9)
('ABH+*L9', 48), ('AGH+*L7', 397), ('AGH+*L18', 284)
('AGH+*L28', 167), ('AGH+*L35', 192), ('BCD+*L0', 164)
('BCD+*L21', 102), ('BCD+*L36', 41), ('BCD+*L38', 463)
('CDE+*L15', 49), ('CDF+*L15', 9), ('DEF+*L1', 397)
('DEF+*L22', 282), ('DEF+*L24', 182), ('DEF+*L34', 179)
('EFG+*L2', 116), ('EFG+*L11', 45), ('EFG+*L16', 104)
('EFG+*L20', 569), ('FGH+*L5', 90), ('FGH+*L12', 16)
('FGH+*L17', 571), ('FGH+*L21', 95), ('ABO+*L9', 30)
('ABO+*L39', 112), ('ABP+*L9', 152), ('CDO+*L15', 151)
('CDP+*L15', 30), ('CDP+*L38', 112), ('EFP+', 784)
('EFP+*L2', 125), ('EFP+*L20', 175), ('EFP+*L24', 46)
('EFP+*L27', 47), ('EFP+*L32', 51), ('EFP+*L33', 37)
('EFP+*L35', 206), ('GHO+', 799), ('GHO+*L5', 165)
('GHO+*L17', 175), ('GHO+*L27', 24), ('GHO+*L28', 46)
('GHO+*L32', 37), ('GHO+*L33', 51), ('GHO+*L34', 185)
('EOP+*L3', 37), ('EOP+*L5', 37), ('EOP+*L31', 6)
('HOP+*L2', 37), ('HOP+*L4', 37), ('AFO+', 572)
('AFO+*L3', 73), ('AFO+*L5', 264), ('AFO+*L6', 315)
('AFO+*L15', 37), ('AFO+*L17', 84), ('AFO+*L21', 90)
('AFO+*L25', 206), ('AFO+*L29', 16), ('AFO+*L31', 427)
('AFO+*L34', 258), ('CHO-', 636), ('CHO-*L7', 190)
('CHO-*L28', 49), ('CHO-*L30', 90), ('CHO-*L33', 336)
('CHO-*L38', 281), ('DGP-', 572), ('DGP-*L0', 315)
('DGP-*L2', 264), ('DGP-*L4', 73), ('DGP-*L9', 37)
('DGP-*L16', 90), ('DGP-*L20', 84), ('DGP-*L25', 15)
('DGP-*L29', 205), ('DGP-*L31', 440), ('DGP-*L35', 256)
('BEP+', 625), ('BEP+*L1', 192), ('BEP+*L24', 48)
('BEP+*L30', 116), ('BEP+*L32', 336), ('BEP+*L39', 281)
('BGO-', 67), ('BGO-*L10', 73), ('BGO-*L14', 52)
('BGO-*L18', 112), ('BGO-*L23', 112), ('BGO-*L24', 505)
('BGO-*L30', 184), ('BGO-*L32', 72), ('BGO-*L33', 108)
('BGO-*L37', 85), ('CFP+', 86), ('CFP+*L8', 46)
('CFP+*L13', 50), ('CFP+*L19', 112), ('CFP+*L22', 112)
('CFP+*L28', 509), ('CFP+*L30', 169), ('CFP+*L32', 108)
('CFP+*L33', 66), ('CFP+*L37', 85), ('AEP-', 481)
('AEP-*L0', 231), ('AEP-*L5', 159), ('AEP-*L17', 78)
('AEP-*L21', 97), ('AEP-*L28', 285), ('AEP-*L30', 797)
('AEP-*L34', 477), ('AEP-*L39', 232), ('DHO+', 485)
('DHO+*L2', 161), ('DHO+*L6', 232), ('DHO+*L16', 97)
('DHO+*L20', 78), ('DHO+*L24', 285), ('DHO+*L30', 790)
('DHO+*L35', 475), ('DHO+*L38', 232), ('AEO+*L11', 54)
('AEO+*L15', 80), ('DHP-*L9', 80), ('DHP-*L12', 56)
('C_ABE_1*L9', 285), ('C_CDH_1*L15', 285), ('C_ABEF_1*L9', 51)
('C_CDGH_1*L15', 51)
```

Additional signs used in this row have these explicit witnesses.

| Sign | Witness from the two rules in Section 2 |
|---|---|
| AEO+ | O in AFG; its vertices are on the positive side of AE |
| DHP- | P in DEG; its vertices are on the negative side of DH |

Every occupancy or spread factor used in this row has the following tests.

| Factor | Contained points | Edge or diagonal tests |
|---|---|---|
| C_ABEF_1 | P | all cyclic polygon edges positive |
| C_ABE_1 | P | all cyclic polygon edges positive |
| C_CDGH_1 | O | all cyclic polygon edges positive |
| C_CDH_1 | O | all cyclic polygon edges positive |

## 6. Complete side-line conclusion

The thirteen tables contain 2457 positive integer entries, all at most
20724. The double-left case is covered by D1-D8, including all its
remaining signs up to the explicit horizontal reflection. After that
exclusion, T1-T5 cover the top-adjacent case, using the explicit vertical
reflection and interchange of O,P. Section 1 covers every placement
outside the two quadrilaterals already excluded in N8_SIDE_CONTAINED.md.

Every side-edge 4/4 configuration is therefore impossible at minimum
doubled area s=93/1000. Since 2A*>s, this closes N8-4/4-SIDE in full,
with a strict gap from candidate equality. Together with the other
orientation notes, no side-line or exterior-octagon case remains as an
unexamined N8 orientation.
