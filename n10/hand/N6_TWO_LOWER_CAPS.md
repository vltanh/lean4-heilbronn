# Six contacts: two lower points and two exterior points

**Theorem.** Use the six actual contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

Suppose two further actual points P,Q lie strictly inside HABC below
HC, and two further actual points lie outside the contact hexagon in
the right, top or left caps. Then an actual triangle has unsigned
doubled area below s=93/1000. This excludes the entire N6 placement
with two lower points and two exterior points. The latter points may
lie on the closed outer square edges; this boundary extension is part
of the theorem. They are strictly on the exterior side of their
actual cap chords, since equality gives a zero actual triangle.

The proof below and N6_TWO_LOWER_CAPS_TABLES.md give all 32 roots,
65 nodes, 1,251 geometric deductions, 54 fixed cubic contradictions,
two geometric contradictions and all 5,434 positive integer terms.
Every case, factor and hypothesis is printed. No numerical search,
optimization, coordinate sample or external certificate is a premise.
The other N6 exterior counts are separate obligations.

Write [XYZ]=det(Y-X,Z-X), with all areas doubled, and suppose for a
contradiction that every actual unsigned triangle area is at least s.
Put K=149/20 and J=4427/500, the strict rational lower bounds for
Gamma2 and Gamma3 used in N6_EXACT_HULL.md.

## 1. Transfer of the lower reduction and exhaustive cap placements

The proofs of Sections 1, 3, 4, 5 and 6 of
N6_EXACT_HULL_REDUCTION.md use only H,C,A,B,P,Q and the contact
orders. They therefore give the same central/mixed support catalogue,
the same eight lower-line rows, and the same stronger floors here.
In particular hc>9s. Their common clearances AHX and BCX apply to
every actual point of the square. Their HC coordinate-sum bounds and
cross signs apply to every upper point above HC, including an exterior
cap point: the proof of their equation (5) uses only its square
membership and its HC side. It gives, for L=P,Q and U=R,S,

    [HLU]>0, [CLU]<0,
    x_U+y_U>=rho+s, x_L+y_L<=(1-s)/rho.                 (1)

The single exception to that transfer is the coordinate upper bound
1-s for the upper points. Its proof requires positive hexagon-edge
signs. We replace all four upper-coordinate maxima by 1 throughout
this proof. Every other box bound and lower-pair inequality remains
valid by the cited derivations. No second use of a physical symmetry
is made after the lower catalogue has been chosen.

Write V_R=(1,0), V_T=(1,1), V_L=(0,1). The three closed exterior
cap triangles are CE V_R, EF V_T, FH V_L. A cap on the right has
area e(1-c)<=h(1-c)<=1-hc<1-9s. The reflected left cap has the
same upper bound. If either contained both upper points, its actual
endpoints together with those two points would force cap area at
least 3s by the four-point endpoint theorem in TYPE_II.md Section 1.
But

    1-9s=163/1000<3s=279/1000.                         (2)

This excludes the RR and LL pairs, including their outer boundary
faces. The remaining four unordered cap pairs have these labels:

| Model | R | S |
|---|---|---|
| TT | top | top |
| RT | right | top |
| LT | left | top |
| RL | right | left |

The physical transposition used by the lower catalogue can interchange
the two side caps; both RT and LT are retained. In the mixed-location
rows, the displayed locations fix the upper labels. In TT alone,
interchange R,S to arrange HRS<0. These choices are independent of
the earlier lower labels and use no further square symmetry.

For a column V, the following signs are those of VPQ. This is the
complete eight-row lower catalogue from the reduction.

| Root | Case | A | B | C | H | E | F |
|---|---|---|---|---|---|---|---|
| CS-- | central | + | + | - | - | - | - |
| CO-- | central | + | + | + | - | - | - |
| CO+- | central | + | + | + | - | + | - |
| CO++ | central | + | + | + | - | + | + |
| MH-- | mixed | - | - | - | + | - | - |
| MH-+ | mixed | - | - | - | + | - | + |
| MH++ | mixed | - | - | - | + | + | + |
| MHC++ | mixed | - | - | + | + | + | + |

## 2. Starting signs and elementary geometric deductions

Every cyclic triple of the six contacts is positive. For P,Q, every
hexagon-edge sign is positive, HCP,HCQ are negative, ACP,ACQ,HBQ
are positive, and HBP is positive in the central case and negative
in the mixed case. The upper points have HCR,HCS positive and the
following cap signs. Each row is a direct affine test on the three
vertices of its virtual cap; a zero at a cap endpoint becomes strict
at the actual point, since an actual collinearity is forbidden.

| Cap of U | ABU | BCU | CEU | EFU | FHU | HAU | HEU | CFU |
|---|---|---|---|---|---|---|---|---|
| right | + | + | - | + | + | + | - | - |
| top | + | + | + | - | + | + | + | - |
| left | + | + | + | + | - | + | + | + |

Use also the four cross signs in (1). The root then adds its six
lower-line signs and, for TT only, HRS<0.

Every `n6x-trace` line uses the determinant, affine-containment and
occupancy rules proved in N6_EXACT_HULL.md Sections 2 and 4. The
following explicit qualifications replace the interior-only versions
of its convex-line and chord rules:

* For any line through two actual free points, signs around the convex
  contact hexagon have zero or two changes. If at least one of the
  named points lies strictly inside that hexagon, there are exactly
  two changes. The line contains no actual hull vertex. A `line`
  deduction uses the sign common to every compatible word; `linebad`
  states that no compatible word exists. For PQ one may also use HABC,
  in which both points are strictly inside.
* When there are two changes, form the convex hull of the endpoints
  of the two crossed edges. The line chord lies in that actual triangle
  or quadrilateral. A `chord` step is used only for a named point
  actually inside the original polygon. Exterior points are never
  inferred to lie in its chord hull.
* A `hullvia` step uses only P or Q and their fixed containing hulls
  HABC and ABCEFH. Exterior points have no fixed actual containing
  hexagon. A `via` step may use any actual triangle once all its
  strict edge tests have been proved.

The other trace rule is the exact Pluecker identity

    [ABC][ADE]-[ABD][ACE]+[ABE][ACD]=0.                 (3)

Its three nonzero summands cannot all have the same sign. A `plu`
step names the five points and the forced determinant. Permuting
three actual labels has its ordinary determinant sign. `given` and
`stepbad` record a literal sign conflict; `plubad` records three
same-sign summands in (3). `four` and `cluster` use the complete
actual-triangle occupancy and clustered-triple theorems, with their
occupants printed. A `smallquad` exclusion is permitted only when
all four vertices belong to H,A,B,C,P,Q, whose convex hull lies in
HABC and has area at most one. No exterior upper hull receives this
area bound. The tables happen to need only two geometric leaves.

## 3. The TT pair-line catalogue

The scalar theorem in C1_THREE_LOWER_TOP_PAIR.md applies with its
D replaced by E. Its proof uses the lower points only through
hc>=823/1000. Here hc>9s=837/1000, and its remaining requirements
are immediate: e<=h, f<=c, CEF,HEF>=s, and

    hf>=f(h-a)=[AFH]>=s,
    ce>=e(c-b)=[BCE]>=s.

It therefore forces E,F to opposite sides of RS. With HRS<0,
the convex-hexagon line rule leaves exactly these five words around
H,A,B,C,E,F:

    -++++-, --+++-, ---++-, ----+-, -----+.             (4)

Indeed the positive vertices form one interval not containing H.
If E is positive and F negative, the interval ends at E and can start
at A,B,C or E. If E is negative and F positive, F is its only vertex.
The zero-change alternatives are impossible because E,F have opposite
signs. A `top` split prints all five children, including a child whose
assumptions immediately conflict with inherited signs.

Every remaining split is `sign XYZ`, whose two children give the
strict negative and positive signs of one actual triangle. All
determinants are nonzero under the competitive hypothesis. Thus the
finite trees are exhaustive. The complete inventory is:

| Root | Initial node | Nodes | Polynomial leaves | Geometric leaves | Terms | Deductions |
|---|---|---:|---:|---:|---:|---:|
| TT/CS-- | X0000 | 14 | 7 | 2 | 1465 | 62 |
| TT/CO-- | X0014 | 6 | 5 | 0 | 735 | 30 |
| TT/CO+- | X0020 | 1 | 1 | 0 | 263 | 28 |
| TT/CO++ | X0021 | 1 | 1 | 0 | 4 | 42 |
| TT/MH-- | X0022 | 1 | 1 | 0 | 4 | 42 |
| TT/MH-+ | X0023 | 6 | 5 | 0 | 933 | 36 |
| TT/MH++ | X0029 | 6 | 5 | 0 | 863 | 35 |
| RT/CS-- | X0035 | 1 | 1 | 0 | 24 | 33 |
| TT/MHC++ | X0036 | 6 | 5 | 0 | 548 | 35 |
| RT/CO-- | X0042 | 1 | 1 | 0 | 23 | 32 |
| RT/CO+- | X0043 | 1 | 1 | 0 | 11 | 40 |
| RT/CO++ | X0044 | 1 | 1 | 0 | 10 | 49 |
| RT/MH-- | X0045 | 1 | 1 | 0 | 42 | 49 |
| RT/MH-+ | X0046 | 1 | 1 | 0 | 69 | 42 |
| RT/MH++ | X0047 | 1 | 1 | 0 | 58 | 36 |
| RT/MHC++ | X0048 | 1 | 1 | 0 | 3 | 37 |
| LT/CS-- | X0049 | 1 | 1 | 0 | 24 | 33 |
| LT/CO-- | X0050 | 1 | 1 | 0 | 15 | 33 |
| LT/CO+- | X0051 | 1 | 1 | 0 | 12 | 36 |
| LT/CO++ | X0052 | 1 | 1 | 0 | 33 | 44 |
| LT/MH-- | X0053 | 1 | 1 | 0 | 39 | 45 |
| LT/MH-+ | X0054 | 1 | 1 | 0 | 131 | 39 |
| LT/MH++ | X0055 | 1 | 1 | 0 | 66 | 37 |
| RL/CS-- | X0056 | 1 | 1 | 0 | 3 | 34 |
| LT/MHC++ | X0057 | 1 | 1 | 0 | 3 | 37 |
| RL/CO-- | X0058 | 1 | 1 | 0 | 3 | 33 |
| RL/CO+- | X0059 | 1 | 1 | 0 | 3 | 42 |
| RL/CO++ | X0060 | 1 | 1 | 0 | 3 | 45 |
| RL/MH-+ | X0061 | 1 | 1 | 0 | 16 | 44 |
| RL/MH-- | X0062 | 1 | 1 | 0 | 17 | 46 |
| RL/MHC++ | X0063 | 1 | 1 | 0 | 3 | 38 |
| RL/MH++ | X0064 | 1 | 1 | 0 | 8 | 37 |

All four cap models and all eight lower rows occur. Each root appears
once in N6_TWO_LOWER_CAPS_TABLES.md. Parent identifiers and complete
child lists make every inheritance and every exhaustive split explicit.

## 4. Rational boxes and inherited nonnegative factors

Use the C, M1 and M2 boxes of N6_EXACT_HULL.md, replacing the final
four upper-coordinate maxima by 1 as proved in Section 1 above.
The resulting full boxes, in the order
(a,b,c,e,f,h,p,q,u,v,r,w,j,k), are printed here.

### Box C

Floor rho: `897/1000`.

| Coordinate | Lower | Upper |
|---|---|---|
| a | 1037/10000 | 6143/20000 |
| b | 1037/10000 | 6143/20000 |
| c | 897/1000 | 1 |
| e | 1037/10000 | 907/1000 |
| f | 1037/10000 | 907/1000 |
| h | 897/1000 | 1 |
| p | 1026441/8963000 | 407/500 |
| q | 1026441/8963000 | 407/500 |
| u | 1026441/8963000 | 407/500 |
| v | 1026441/8963000 | 407/500 |
| r | 930/8963 | 1 |
| w | 930/8963 | 1 |
| j | 930/8963 | 1 |
| k | 930/8963 | 1 |

### Box M1

Floor rho: `1510413/1780000`.

| Coordinate | Lower | Upper |
|---|---|---|
| a | 93/721 | 6143/20000 |
| b | 279/1000 | 4283/6143 |
| c | 1510413/1780000 | 1 |
| e | 93/721 | 907/1000 |
| f | 279/1000 | 907/1000 |
| h | 1510413/1780000 | 1 |
| p | 67053/628000 | 1570201/3071500 |
| q | 93/500 | 1570201/2141500 |
| u | 118947/721000 | 407/500 |
| v | 37851/314000 | 407/500 |
| r | 67053/628000 | 1 |
| w | 93/721 | 1 |
| j | 67053/628000 | 1 |
| k | 93/721 | 1 |

### Box M2

Floor rho: `91977/100000`.

| Coordinate | Lower | Upper |
|---|---|---|
| a | 3/23 | 6143/20000 |
| b | 287/1000 | 297/500 |
| c | 91977/100000 | 1 |
| e | 3/23 | 907/1000 |
| f | 287/1000 | 907/1000 |
| h | 91977/100000 | 1 |
| p | 2139/20000 | 51/125 |
| q | 9/23 | 68/99 |
| u | 3861/23000 | 407/500 |
| v | 1209/10000 | 407/500 |
| r | 2139/20000 | 1 |
| w | 3/23 | 1 |
| j | 2139/20000 | 1 |
| k | 3/23 | 1 |


For coordinate i define L_(2i)=coordinate_i-lower_i and
L_(2i+1)=upper_i-coordinate_i. Use the definitions and proofs of
ha,ea,he,fb,cf,Vlow,Qlow,up_R,up_S,low_P,low_Q,Px,Py,Ratio_lo,
Ratio_hi,Product,DX_UV and DY_UV in N6_EXACT_HULL.md Section 5.
All derive from contacts, the lower support pair, HC clearance or
the two actual opposite-contact signs, so their proofs transfer as
specified above. M2 is used only in the MHC++ root, as required by
its stronger mixed-ratio theorem.

Here the upper quadrilateral has no designated free point inside.
Its two actual triangles still have area at least s each, so use

    Qup=1-(h-e)(c-f)-2s.                               (5)

The old two-interior cost 8s is not used for this quadrilateral.

The conditional actual-triangle factors T_XYZ+/- and C_XYZ_n,
quadrilateral factors Q_ABCD_n, and distributed-mesh factors
M_ABC_XYZ_part retain exactly their definitions in
N6_EXACT_HULL.md Section 6. Each conditional factor has its actual
occupants or all its mesh edge tests printed in the table. The
quadrilateral costs are (24/5)s,8s,93/91,(J+3)s,(J+K)s,2Js for
one through six occupants. They are universal original-square
theorems, so exterior cap vertices cause no change.

For S_ABCD_UV_i+/- use the same two-diagonal definition, with
coefficient 6 only when every vertex is among H,A,B,C,P,Q, and
coefficient 29/5 otherwise. Both actual diagonal separations and
both point containments must be proved. This preserves the exact
hypothesis for the stronger spread bound.

## 5. Exterior cap clearances and endpoint supports

For a cap point U=(x_U,y_U), let its negative actual cap triangle
be CEU, EFU or FHU. If n printed actual points lie strictly inside
that triangle, put

    t_0=s, t_1=3s, t_2=Ks, t_3=Js.

Its unsigned area is at least t_n by the triangle occupancy theorem.
The leaf prints n distinct occupants for every used cap factor;
the notation `-` means n=0. The following four factors for each
cap are nonnegative:

| Prefix | x | y | px | py |
|---|---|---|---|---|
| right | x_U-c-t_n | e-y_U-t_n | e(x_U-c)-t_n | (1-c)(e-y_U)-t_n |
| top | x_U-f-t_n | y_U-e-t_n | (1-e)(x_U-f)-t_n | (1-f)(y_U-e)-t_n |
| left | f-x_U-t_n | y_U-h-t_n | (1-h)(f-x_U)-t_n | f(y_U-h)-t_n |

For example `top_px_R` selects the top row, px column and actual
point R. To prove the table, the unsigned cap areas have the identities

    -[CEU]=e(x_U-c)-(1-c)y_U
           =e(x_U-1)+(1-c)(e-y_U),
    -[EFU]=(1-e)(x_U-f)-(1-f)(1-y_U)
           =(1-f)(y_U-e)-(1-e)(1-x_U),
    -[FHU]=(1-h)(f-x_U)-f(1-y_U)
           =f(y_U-h)-(1-h)x_U.                        (6)

Every subtracted term on the indicated right sides is nonnegative
because U lies in the closed square. This proves the px and py
columns. Each multiplier e,1-c,1-e,1-f,1-h,f lies in (0,1], so
the corresponding positive coordinate difference is at least t_n
as well. This proves x and y without any unproved upper sign.

In TT, the four actual points E,F,R,S in the virtual endpoint
triangle EF V_T give the further factor

    Top_pair=(1-e)(1-f)-3s.                            (7)

If the right cap is occupied, the four actual points B,C,E and its
occupant have convex quadrilateral hull, in that cyclic order after
putting the occupant between C,E. N6_EXTERIOR_CUTS.md Section 3
proves, including the outer edge faces, that their container
B,V_R,E and the nontriangular four-point endpoint theorem give

    Right_support=e(1-b)-4s>=0.

The reflected proof gives Left_support=f(1-a)-4s>=0 whenever the
left cap is occupied. These support factors do not require a top
triple or any additional free point.

## 6. The exact contradiction and boundary scope

Each `n6x-sum` entry is a positive integer weight multiplying the
printed product of nonnegative factors. Thus their sum W is
nonnegative. Expand in t_i=coordinate_i-lower_i and use
0<=t_i<=upper_i-lower_i. Drop negative nonconstant monomials and
replace each positive monomial by its upper endpoint. This gives
the exact coefficient-box upper bound in N6_EXACT_HULL.md (16).
Every leaf prints that rational number, and all 54 numbers are
strictly negative. Their largest is

    -386326994294049/2240750000000000.

The 5,434 weights are positive integers, all at most 4,896. Every
sum has degree at most three. No square factor is needed in this
appendix. The two other leaves have explicit geometric contradictions.
Consequently every node of every root is excluded, proving the theorem.

All inequalities used closed coordinate intervals. The cap tests use
strictness only at actual dividing chords, where equality would give
a zero actual triangle. Outer square faces and any closed contact-order
equalities are included. Thus the stated boundary extension is valid.
The optional standard-library `check_n6_two_lower_caps.py` reads this
method and the printed appendix, replays only the fixed geometric
deductions, and verifies all factors and bounds with exact arithmetic.
