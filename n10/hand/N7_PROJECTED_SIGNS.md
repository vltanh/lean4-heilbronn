# Seven boundary points: the complete normalized projected-sign chamber

This note removes the extra coordinate inequality from the normalized
inward-secondary chamber of N7_PROJECTED_CHAMBER.md. It covers the
entire stated sign chamber, at every inward depth. It does not assert
that every normalized N7 maximizer has these signs.

The only finite arithmetic below consists of two printed cubic sums,
with 642 positive integer terms in total. Each factor has a geometric
proof of nonnegativity, and the fixed sums have exact negative bounds
on proved rational boxes. No numerical search or generated proof data
is a premise. The optional checker `check_n7_projected_signs.py` reads
these printed tables and reconstructs their factors using rational
arithmetic only.

## 1. Statement and exhaustive coordinate split

Use the seven square-boundary contacts

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), H=(0,h),

with 0<a<h<1, 0<b<c<1, 0<d<e<1. The normalized opposite-side
contact overlaps give

    b<=f<=c,       d<=h,       a<=e.

The three strictly interior square points are

    G=(g,z), O=(x,y), P=(u,v),

where 0<g<f, z<1, U=u-x>0, and V=v-y>0. For actual points I,J,K,
write IJK=det(J-I,K-I), a doubled signed area. Suppose

    FGH>0;
    ADO>0, BGO<0, CFP>0, EHP>0;
    AOP>0, BOP<0, EOP<0, FOP>0.                     (1)

Then the minimum ordinary triangle area satisfies

    m<A*.

Indeed, if m<93/2000 this is immediate. Otherwise fix s=93/1000;
every actual unsigned doubled triangle area is at least s. If x>=b,
N7_PROJECTED_CHAMBER.md gives the conclusion directly. The remainder
of this note proves that x<=b is impossible at this fixed threshold.
The two closed alternatives

    HLE: h<=e,       HGE: h>=e                       (2)

cover every remaining configuration, including their common face.
Thus no unexamined coordinate orientation is needed in this chamber.
The candidate symmetries described in N7_PROJECTED_CHAMBER.md give the
corresponding complete normalized sign chambers for inward C,D,H.

## 2. All common actual signs and ranges

The positive FGH determinant says that G lies above HF. Since 0<g<f,
it is in the upper-left exterior cap of the seven-contact heptagon.
Inserting it between F,H gives the strictly convex actual octagon
A,B,C,D,E,F,G,H. In particular every triangle of these eight points,
in their cyclic order, has positive determinant. Also

    FGH=f(z-h)-g(1-h)>=s,       z-h>=s.               (3)

The candidate OP signs force both O,P below AF and above BE. To see
this without presupposing octagon containment, orient OP with U>0.
Its line is below A,F at their abscissae and therefore below the chord
AF between them. For abscissae greater than f, the extended AF line
is above the square. The analogous argument at B,E, and the fact that
BE extends below the square to the left of b, proves the other claim.

The sign EHP>0 puts P below EH and hence below EF. The EF expression
decreases from O to P, since

    EFP-EFO=EOP-FOP<0,

so EFO>0 as well. The lower exterior-cap exclusion in N7_PLACEMENTS.md
puts O,P above AB and CD. Therefore

    O,P lie strictly inside the actual quadrilateral ABEF.   (4)

Consequently the following actual signs are positive: IJO and IJP
for each pair I,J in the cyclic subarc B,C,D,E, and for each pair in
the cyclic subarc F,G,H,A. This follows either by their chord half-planes
or by testing the four vertices of ABEF against each such chord.

For the OP line, its complete hull sign list is

    AOP,FOP,GOP,HOP>0;       BOP,COP,DOP,EOP<0.        (5)

Here H lies above A, C lies to the right of B, and D lies below E;
these three signs follow from U,V>0. The point G lies above AF and
therefore above OP, proving GOP>0. The differences at opposite primary
vertices give the additional affine bounds

    V-(e-a)U=AOP-EOP>=2s,
    U-(f-b)V=FOP-BOP>=2s,
    U>=2s,       V>=2s.                              (6)

We record the few further actual signs used in the tables. The chord
BG expression decreases from O to P by (5), giving BGP<0. For T=O,P,

    BHT=(h/z)BGT-y_T[(h/z)g+b(1-h/z)]<0,             (7)

because z>h. Since x<=b<=f<=c,

    CFO=(f-x)+(c-f)(1-y)>0.

The weak nonnegativity is immediate, and a zero actual determinant is
excluded. For either T=O or T=P, the exact identity

    DFT=(1-d)CFT+[1-c+d(c-f)](1-y_T)

then proves DFO,DFP>0; CFP>0 was assumed. Finally the actual side-pair
triangles give AHT<0, BCT>0, DET>0 for T=G,O,P.

All common coordinate bounds are those of N7_PLACEMENTS.md. Put

    ell=7347/69700,       eta=93/790.

They give the HLE box in Section 4. In particular all free abscissae
belong to [ell,1-ell] and all free ordinates are at least eta. There
is no common upper ordinate bound below one. The side spans satisfy

    s<=h-a,e-d<=697/790,
    117/1000<=c-b<=79/100.                           (8)

Weakening strict bounds to closed endpoints is harmless for the fixed
polynomial inequalities below.

## 3. Triangle caps survive the inward motion

Project G only for the purpose of deriving boundary inequalities,
writing G'=(g,1) and T=f-g. The six projected boundary ears

    ABC, BCD, CDE, FG'H, AG'H, HAB

are at least s: the only changed expressions in this list are
AG'H=AGH and FG'H=FGH+f(1-z). These are exactly the six ears used in
Sections 1-2 of N8_TRIANGLE_CAPS.md to prove area2(AEF)<69/100.
The omitted ears are DEF and EFG'. Reflection in the main diagonal
preserves that omitted pair, so the same argument gives

    area2(AEF)<69/100,       area2(BEF)<69/100.        (9)

This use is legitimate even though G' is not an original point: the
cited area estimates are algebraic consequences of those six ear
inequalities alone. The triangles AEF,BEF themselves are actual.
Since (4+2sqrt(3))*s>69/100, each has capacity one.

The AE expression increases along OP, by (5). If AEO>0, both points
would lie in AEF. Hence

    AEO<0.                                           (10)

Similarly the BF expression decreases along OP. If BFO<0, both would
lie in BEF; thus BFO>0. This latter sign also follows directly from
x<=b and f>=b.

In row HGE, h>=e gives

    (1-e)T >= (1-h)T = FG'H > s.

Thus the remaining projected ear EFG' is also at least s; DEF is
unchanged and already at least s. All eight projected ears hold.
The boundary-only parts of N8_BOUNDARY_RANGES.md therefore apply to
a,b,c,d,e,f,g,h. Put

    E0=31/251,       C0=31657/55000.

Every corner offset is in [E0,C0], every projected side span is below
753/1000, and

    e-a,h-d,f-b,c-g >=21/250.                         (11)

The actual AH and DE side pairs give x,u in [E0,1-E0]; the actual BC
pair gives y,v>=E0. For the upper ordinates, use EHP>0 directly:

    v<h+(e-h)u<=h<=1-E0,       y<v.

Thus the HGE box in Section 4 uses no unproved lower bound for a
triangle involving G'.

The four actual triangles ABE,AEF,ABF,BEF all have doubled area below
69/100 by the eight-ear cap theorem. As both points are in ABEF,
and (10) and BFO>0 hold, their two diagonal separations are

    AEO<0<AEP,       BFO>0>BFP.                      (12)

The actual convex quadrilateral ABEF has doubled area

    Q=1-(e-a)(f-b)<=1.

The strong part of QUADRILATERAL_SPREAD.md applies: the normalized
threshold is s/Q>=s>1/11, both points are inside, and both diagonals
separate them. It supplies the two nonnegative factors

    S1=Q-6s-[U-(f-b)V],
    S2=Q-6s-[V-(e-a)U].                              (13)

## 4. Rational boxes and nonnegative factors

Use the thirteen coordinates in the exact order

    (a,b,c,d,e,f,g,h,z,x,y,u,v).

The two closed boxes are the following. Constants ell,eta,E0,C0 have
been defined above; every coordinate is nonnegative.

| Coordinate | HLE lower | HLE upper | HGE lower | HGE upper |
|---|---|---|---|---|
| a | eta | 1 | E0 | C0 |
| b | ell | 1-ell | E0 | C0 |
| c | ell | 1-ell | 1-C0 | 1-E0 |
| d | eta | 1 | E0 | C0 |
| e | eta | 1 | 1-C0 | 1-E0 |
| f | ell | 1-ell | 1-C0 | 1-E0 |
| g | ell | 1-ell | E0 | C0 |
| h | eta | 1 | 1-C0 | 1-E0 |
| z | eta | 1 | eta | 1 |
| x | ell | 1-ell | E0 | 1-E0 |
| y | eta | 1 | E0 | 1-E0 |
| u | ell | 1-ell | E0 | 1-E0 |
| v | eta | 1 | E0 | 1-E0 |

For coordinate i, define L_(2i)=coordinate_i-lower_i and
L_(2i+1)=upper_i-coordinate_i. The remaining affine factors are:

| Factor | Expression |
|---|---|
| L26 | h-a-s |
| L27 | 697/790-h+a |
| L28 | e-d-s |
| L29 | 697/790-e+d |
| L30 | c-b-117/1000 |
| L31 | 79/100-c+b |
| L32 | f-b |
| L33 | c-f |
| L34 | f-g |
| L35 | h-d |
| L36 | e-a |
| L37 | u-x-2s |
| L38 | v-y-2s |
| L39 | b-x |
| L40 | z-h-s |
| L41 | e-h in HLE; h-e in HGE |
| L42 | e-a-21/250 (HGE only) |
| L43 | h-d-21/250 (HGE only) |
| L44 | f-b-21/250 (HGE only) |
| L45 | c-g-21/250 (HGE only) |
| L46 | 753/1000-h+a (HGE only) |
| L47 | 753/1000-e+d (HGE only) |
| L48 | 753/1000-c+b (HGE only) |
| L49 | 753/1000-f+g (HGE only) |

All are nonnegative by Sections 1-3. A signed-triangle factor such as
ABC+ denotes ABC-s, while BGO- denotes -BGO-s. Every signed-triangle
factor appearing in the tables has its sign among (1), (4)-(7), (10),
(12), or the cyclic-octagon and side-pair signs proved above. S1,S2
have the meaning (13) and occur only in HGE. An asterisk denotes a
product of factors. Every displayed factor or product is nonnegative.

## 5. Two fixed cubic contradictions

For either row let W be the sum of its listed positive coefficient
times its listed factor product. Expanding W gives a polynomial of
degree at most three,

    W=sum_alpha c_alpha product_i coordinate_i^(alpha_i).

Since all coordinates and box endpoints are nonnegative, its exact
upper bound is obtained by replacing each coordinate in a monomial
by its upper endpoint when c_alpha>0 and by its lower endpoint when
c_alpha<0. Denote this rational sum by B(W). It is an elementary
termwise bound, so W<=B(W). The printed tables have B(W)<0, whereas
all their summands are nonnegative. This is the contradiction in
each exhaustive row (2).

### Row HLE

This row has 346 terms and exact bound

    B(W)=-10972935931831798747/378991746125000000<0.

| i | coefficient | factors |
|---:|---:|---|
| 1 | 13731 | L5*L39 |
| 2 | 80524 | L0*L0*L12 |
| 3 | 10744 | L0*L0*L31 |
| 4 | 8435 | L0*L2*L17 |
| 5 | 24248 | L0*L2*L40 |
| 6 | 1238 | L0*L5*L6 |
| 7 | 1448 | L0*L5*L12 |
| 8 | 14806 | L0*L5*L20 |
| 9 | 3787 | L0*L5*L33 |
| 10 | 10690 | L0*L5*L40 |
| 11 | 258 | L0*L5*L41 |
| 12 | 474 | L0*L6*L18 |
| 13 | 12320 | L0*L9*L12 |
| 14 | 8532 | L0*L9*L33 |
| 15 | 1417 | L0*L11*L17 |
| 16 | 9949 | L0*L11*L20 |
| 17 | 1417 | L0*L11*L40 |
| 18 | 222078 | L0*L12*L17 |
| 19 | 136936 | L0*L12*L20 |
| 20 | 11525 | L0*L12*L25 |
| 21 | 2785 | L0*L12*L29 |
| 22 | 193574 | L0*L12*L40 |
| 23 | 40809 | L0*L13*L39 |
| 24 | 3359 | L0*L17*L18 |
| 25 | 10690 | L0*L17*L31 |
| 26 | 8855 | L0*L20*L23 |
| 27 | 48319 | L0*L22*L39 |
| 28 | 384 | L0*L23*L23 |
| 29 | 3560 | L0*L23*L40 |
| 30 | 2756 | L0*L33*L39 |
| 31 | 1417 | L0*L34*L41 |
| 32 | 38584 | L0*L37*L41 |
| 33 | 1031 | L1*L5*L39 |
| 34 | 4025 | L2*L5*L25 |
| 35 | 24282 | L2*L9*L40 |
| 36 | 6249 | L2*L12*L17 |
| 37 | 6249 | L2*L12*L40 |
| 38 | 60689 | L2*L23*L41 |
| 39 | 11803 | L2*L25*L40 |
| 40 | 1761 | L2*L29*L40 |
| 41 | 8705 | L2*L33*L40 |
| 42 | 5494 | L5*L5*L20 |
| 43 | 5494 | L5*L5*L38 |
| 44 | 1127 | L5*L6*L6 |
| 45 | 46002 | L5*L6*L20 |
| 46 | 6642 | L5*L6*L23 |
| 47 | 60940 | L5*L6*L25 |
| 48 | 3345 | L5*L6*L32 |
| 49 | 3077 | L5*L6*L34 |
| 50 | 10487 | L5*L6*L41 |
| 51 | 10444 | L5*L9*L11 |
| 52 | 44680 | L5*L9*L12 |
| 53 | 8560 | L5*L9*L17 |
| 54 | 4271 | L5*L9*L33 |
| 55 | 6242 | L5*L10*L17 |
| 56 | 34067 | L5*L11*L40 |
| 57 | 7087 | L5*L17*L17 |
| 58 | 37736 | L5*L17*L20 |
| 59 | 2712 | L5*L17*L25 |
| 60 | 4312 | L5*L17*L29 |
| 61 | 6173 | L5*L17*L32 |
| 62 | 2109 | L5*L17*L37 |
| 63 | 37736 | L5*L20*L40 |
| 64 | 384 | L5*L25*L37 |
| 65 | 4287 | L5*L25*L38 |
| 66 | 38913 | L5*L25*L39 |
| 67 | 20971 | L5*L29*L40 |
| 68 | 34067 | L5*L32*L41 |
| 69 | 2109 | L5*L37*L40 |
| 70 | 738 | L5*L37*L41 |
| 71 | 14633 | L5*L38*L38 |
| 72 | 35112 | L5*L39*L41 |
| 73 | 150 | L6*L6*L31 |
| 74 | 6122 | L6*L9*L12 |
| 75 | 6979 | L6*L12*L20 |
| 76 | 1990 | L6*L15*L39 |
| 77 | 18482 | L6*L31*L39 |
| 78 | 1274 | L6*L34*L39 |
| 79 | 52670 | L6*L37*L41 |
| 80 | 809 | L8*L9*L39 |
| 81 | 2846 | L8*L39*L39 |
| 82 | 8767 | L9*L9*L33 |
| 83 | 559 | L9*L11*L11 |
| 84 | 1518 | L9*L11*L12 |
| 85 | 2436 | L9*L11*L17 |
| 86 | 7800 | L9*L11*L39 |
| 87 | 11296 | L9*L11*L40 |
| 88 | 10128 | L9*L12*L17 |
| 89 | 3428 | L9*L12*L40 |
| 90 | 19096 | L9*L14*L39 |
| 91 | 30352 | L9*L17*L18 |
| 92 | 15324 | L9*L17*L37 |
| 93 | 60179 | L9*L18*L39 |
| 94 | 13916 | L9*L18*L40 |
| 95 | 3170 | L9*L23*L33 |
| 96 | 83813 | L9*L25*L39 |
| 97 | 10028 | L9*L26*L39 |
| 98 | 8968 | L9*L28*L39 |
| 99 | 4106 | L9*L29*L33 |
| 100 | 8560 | L9*L31*L40 |
| 101 | 3655 | L9*L32*L41 |
| 102 | 1757 | L9*L33*L39 |
| 103 | 6032 | L9*L37*L39 |
| 104 | 96903 | L9*L38*L39 |
| 105 | 5616 | L11*L12*L20 |
| 106 | 1269 | L11*L17*L18 |
| 107 | 23431 | L11*L17*L20 |
| 108 | 26027 | L11*L17*L40 |
| 109 | 93689 | L11*L20*L20 |
| 110 | 61848 | L11*L20*L39 |
| 111 | 10876 | L11*L20*L40 |
| 112 | 8302 | L11*L25*L39 |
| 113 | 7888 | L11*L29*L40 |
| 114 | 89342 | L11*L39*L40 |
| 115 | 5724 | L11*L40*L40 |
| 116 | 59691 | L12*L15*L39 |
| 117 | 152125 | L12*L17*L17 |
| 118 | 113504 | L12*L17*L20 |
| 119 | 7369 | L12*L17*L29 |
| 120 | 1448 | L12*L17*L31 |
| 121 | 269482 | L12*L17*L40 |
| 122 | 2283 | L12*L18*L41 |
| 123 | 2532 | L12*L20*L33 |
| 124 | 41974 | L12*L20*L39 |
| 125 | 147641 | L12*L20*L40 |
| 126 | 6502 | L12*L20*L41 |
| 127 | 25196 | L12*L25*L39 |
| 128 | 7369 | L12*L29*L40 |
| 129 | 1448 | L12*L31*L40 |
| 130 | 11769 | L12*L38*L40 |
| 131 | 117357 | L12*L40*L40 |
| 132 | 1072 | L14*L20*L39 |
| 133 | 13301 | L15*L26*L39 |
| 134 | 9526 | L16*L20*L39 |
| 135 | 5311 | L16*L37*L39 |
| 136 | 20583 | L16*L39*L40 |
| 137 | 7087 | L17*L17*L30 |
| 138 | 24519 | L17*L17*L32 |
| 139 | 22865 | L17*L17*L37 |
| 140 | 457 | L17*L18*L18 |
| 141 | 9577 | L17*L18*L25 |
| 142 | 4580 | L17*L18*L29 |
| 143 | 2532 | L17*L18*L33 |
| 144 | 9526 | L17*L18*L38 |
| 145 | 254 | L17*L18*L40 |
| 146 | 22572 | L17*L26*L37 |
| 147 | 9683 | L17*L26*L39 |
| 148 | 2818 | L17*L29*L37 |
| 149 | 11803 | L17*L32*L38 |
| 150 | 14040 | L17*L32*L41 |
| 151 | 20091 | L17*L34*L38 |
| 152 | 10346 | L17*L37*L38 |
| 153 | 100666 | L17*L37*L40 |
| 154 | 457 | L18*L18*L40 |
| 155 | 19912 | L18*L23*L41 |
| 156 | 51 | L18*L25*L40 |
| 157 | 12213 | L18*L29*L39 |
| 158 | 12872 | L18*L41*L41 |
| 159 | 16779 | L19*L39*L40 |
| 160 | 14633 | L20*L20*L33 |
| 161 | 6261 | L20*L23*L33 |
| 162 | 6985 | L20*L33*L39 |
| 163 | 10770 | L23*L34*L41 |
| 164 | 21669 | L23*L37*L41 |
| 165 | 3320 | L23*L38*L41 |
| 166 | 17753 | L23*L40*L41 |
| 167 | 5935 | L25*L37*L41 |
| 168 | 920 | L26*L29*L39 |
| 169 | 6751 | L26*L32*L38 |
| 170 | 32291 | L26*L34*L37 |
| 171 | 5294 | L26*L34*L38 |
| 172 | 1031 | L26*L34*L39 |
| 173 | 140134 | L26*L37*L37 |
| 174 | 11418 | L26*L37*L38 |
| 175 | 33068 | L26*L37*L41 |
| 176 | 61912 | L28*L37*L41 |
| 177 | 2846 | L29*L31*L39 |
| 178 | 6122 | L29*L32*L41 |
| 179 | 5217 | L29*L39*L40 |
| 180 | 6985 | L30*L37*L38 |
| 181 | 45620 | L30*L37*L41 |
| 182 | 19032 | L30*L38*L41 |
| 183 | 3003 | L32*L34*L38 |
| 184 | 13078 | L32*L37*L38 |
| 185 | 23586 | L32*L37*L41 |
| 186 | 7661 | L33*L35*L39 |
| 187 | 1264 | L33*L38*L41 |
| 188 | 8405 | L35*L37*L39 |
| 189 | 14508 | L37*L37*L41 |
| 190 | 10346 | L37*L38*L40 |
| 191 | 19885 | L37*L39*L40 |
| 192 | 45940 | L37*L40*L40 |
| 193 | 13301 | L39*L40*L40 |
| 194 | 10744 | ABC+*L0 |
| 195 | 14806 | ABC+*L20 |
| 196 | 3787 | ABC+*L33 |
| 197 | 10948 | ABC+*L41 |
| 198 | 24733 | ABH+*L37 |
| 199 | 16447 | AGH+ |
| 200 | 39778 | AGH+*L3 |
| 201 | 1448 | AGH+*L5 |
| 202 | 13737 | AGH+*L9 |
| 203 | 31110 | AGH+*L15 |
| 204 | 28504 | AGH+*L17 |
| 205 | 17466 | AGH+*L18 |
| 206 | 116835 | AGH+*L20 |
| 207 | 23586 | AGH+*L22 |
| 208 | 6230 | AGH+*L25 |
| 209 | 80524 | AGH+*L27 |
| 210 | 2785 | AGH+*L29 |
| 211 | 1015 | BCD+*L5 |
| 212 | 150 | BCD+*L6 |
| 213 | 2512 | BCD+*L10 |
| 214 | 8266 | BCD+*L20 |
| 215 | 3256 | BCD+*L23 |
| 216 | 1287 | BCD+*L25 |
| 217 | 920 | BCD+*L26 |
| 218 | 3256 | BCD+*L31 |
| 219 | 1274 | BCD+*L34 |
| 220 | 18072 | BCD+*L39 |
| 221 | 2847 | BCD+*L41 |
| 222 | 2158 | CDE+*L0 |
| 223 | 1127 | CDE+*L6 |
| 224 | 37736 | CDE+*L20 |
| 225 | 5367 | CDE+*L23 |
| 226 | 63759 | CDE+*L25 |
| 227 | 4271 | CDE+*L30 |
| 228 | 833 | CDE+*L32 |
| 229 | 1803 | CDE+*L34 |
| 230 | 1982 | CDE+*L37 |
| 231 | 5149 | CDE+*L39 |
| 232 | 16659 | CDE+*L40 |
| 233 | 12872 | CDE+*L41 |
| 234 | 46483 | EFG+*L5 |
| 235 | 6122 | EFG+*L6 |
| 236 | 6699 | EFG+*L17 |
| 237 | 4905 | EFG+*L18 |
| 238 | 32283 | EFG+*L25 |
| 239 | 32283 | EFG+*L38 |
| 240 | 4585 | FGH+*L6 |
| 241 | 6263 | FGH+*L17 |
| 242 | 27369 | FGH+*L25 |
| 243 | 50663 | FGH+*L38 |
| 244 | 91418 | FGH+*L39 |
| 245 | 5724 | FGH+*L41 |
| 246 | 1274 | ADO+*L12 |
| 247 | 3787 | ADO+*L33 |
| 248 | 3256 | ADO+*L37 |
| 249 | 17361 | ADO+*L39 |
| 250 | 2955 | ADO+*L41 |
| 251 | 161344 | BGO- |
| 252 | 18802 | BGO-*L9 |
| 253 | 4098 | BGO-*L11 |
| 254 | 53824 | BGO-*L15 |
| 255 | 14806 | BGO-*L27 |
| 256 | 6979 | BGO-*L29 |
| 257 | 2532 | BGO-*L33 |
| 258 | 304780 | BGO-*L37 |
| 259 | 2277 | BGO-*L40 |
| 260 | 24636 | CFP+ |
| 261 | 5494 | CFP+*L4 |
| 262 | 59653 | CFP+*L8 |
| 263 | 559 | CFP+*L10 |
| 264 | 2712 | CFP+*L17 |
| 265 | 24978 | CFP+*L20 |
| 266 | 296 | CFP+*L22 |
| 267 | 10346 | CFP+*L25 |
| 268 | 4106 | CFP+*L28 |
| 269 | 7073 | CFP+*L37 |
| 270 | 52456 | CFP+*L39 |
| 271 | 20296 | CFP+*L41 |
| 272 | 37372 | EHP+*L2 |
| 273 | 6424 | EHP+*L6 |
| 274 | 2870 | EHP+*L17 |
| 275 | 1021 | EHP+*L25 |
| 276 | 1956 | EHP+*L26 |
| 277 | 42773 | EHP+*L31 |
| 278 | 19476 | EHP+*L34 |
| 279 | 147295 | EHP+*L37 |
| 280 | 11348 | EHP+*L38 |
| 281 | 46225 | EHP+*L39 |
| 282 | 6837 | EHP+*L40 |
| 283 | 19011 | AOP+*L17 |
| 284 | 75526 | AOP+*L18 |
| 285 | 23586 | AOP+*L32 |
| 286 | 8705 | AOP+*L34 |
| 287 | 139750 | AOP+*L37 |
| 288 | 11418 | AOP+*L38 |
| 289 | 301777 | BOP-*L12 |
| 290 | 302162 | BOP-*L23 |
| 291 | 6751 | BOP-*L26 |
| 292 | 1287 | BOP-*L28 |
| 293 | 2618 | BOP-*L30 |
| 294 | 6899 | BOP-*L33 |
| 295 | 322225 | BOP-*L37 |
| 296 | 2618 | BOP-*L39 |
| 297 | 30835 | BOP-*L41 |
| 298 | 49090 | EOP- |
| 299 | 3729 | EOP-*L4 |
| 300 | 1287 | EOP-*L6 |
| 301 | 21669 | EOP-*L8 |
| 302 | 42461 | EOP-*L10 |
| 303 | 19486 | EOP-*L16 |
| 304 | 96903 | EOP-*L20 |
| 305 | 34952 | EOP-*L22 |
| 306 | 1072 | EOP-*L24 |
| 307 | 13509 | EOP-*L27 |
| 308 | 7188 | EOP-*L34 |
| 309 | 84098 | EOP-*L37 |
| 310 | 17593 | EOP-*L41 |
| 311 | 75319 | FOP+ |
| 312 | 9815 | FOP+*L8 |
| 313 | 1518 | FOP+*L10 |
| 314 | 38498 | FOP+*L16 |
| 315 | 16350 | FOP+*L19 |
| 316 | 108321 | FOP+*L20 |
| 317 | 638 | FOP+*L23 |
| 318 | 10346 | FOP+*L25 |
| 319 | 1485 | FOP+*L34 |
| 320 | 2096 | FOP+*L36 |
| 321 | 65561 | FOP+*L39 |
| 322 | 48231 | FOP+*L41 |
| 323 | 58032 | BCO+*L41 |
| 324 | 31860 | FGP+*L17 |
| 325 | 16779 | GHP+*L39 |
| 326 | 31231 | AHO-*L37 |
| 327 | 65681 | AHO-*L39 |
| 328 | 262806 | GOP+*L39 |
| 329 | 5149 | DFP+*L39 |
| 330 | 2818 | DFP+*L40 |
| 331 | 9949 | EFP+*L0 |
| 332 | 4622 | EFP+*L2 |
| 333 | 18544 | EFP+*L9 |
| 334 | 559 | EFP+*L11 |
| 335 | 1518 | EFP+*L12 |
| 336 | 11601 | EFP+*L18 |
| 337 | 93689 | EFP+*L20 |
| 338 | 21085 | EFP+*L23 |
| 339 | 4106 | EFP+*L29 |
| 340 | 4935 | EFP+*L31 |
| 341 | 15131 | EFP+*L40 |
| 342 | 1394 | AEO-*L6 |
| 343 | 12536 | AEO-*L17 |
| 344 | 384 | AEO-*L18 |
| 345 | 8855 | AEO-*L25 |
| 346 | 10739 | AEO-*L40 |

### Row HGE

This row has 296 terms and exact bound

    B(W)=-7035149591836980332916187/103921720587437500000000<0.

| i | coefficient | factors |
|---:|---:|---|
| 1 | 168 | L5*L17 |
| 2 | 132 | L12*L17 |
| 3 | 548 | L16*L39 |
| 4 | 1727 | L17*L18 |
| 5 | 826 | L17*L25 |
| 6 | 680 | L17*L44 |
| 7 | 75 | L17*L46 |
| 8 | 12 | L17*L47 |
| 9 | 4973 | L25*L39 |
| 10 | 1392 | L39*L40 |
| 11 | 690 | L39*L41 |
| 12 | 576 | L0*L0*L8 |
| 13 | 272 | L0*L0*L15 |
| 14 | 355 | L0*L0*L23 |
| 15 | 303 | L0*L0*L46 |
| 16 | 1784 | L0*L3*L3 |
| 17 | 170 | L0*L3*L39 |
| 18 | 177 | L0*L5*L12 |
| 19 | 88 | L0*L5*L33 |
| 20 | 116 | L0*L5*L46 |
| 21 | 201 | L0*L9*L39 |
| 22 | 150 | L0*L20*L49 |
| 23 | 10 | L0*L29*L39 |
| 24 | 417 | L0*L30*L39 |
| 25 | 97 | L0*L39*L41 |
| 26 | 303 | L1*L1*L1 |
| 27 | 44 | L1*L1*L5 |
| 28 | 278 | L1*L1*L10 |
| 29 | 576 | L1*L1*L41 |
| 30 | 2487 | L1*L5*L25 |
| 31 | 10 | L1*L5*L41 |
| 32 | 746 | L1*L10*L41 |
| 33 | 323 | L1*L37*L41 |
| 34 | 20 | L1*L39*L42 |
| 35 | 302 | L1*L39*L48 |
| 36 | 13 | L2*L2*L9 |
| 37 | 366 | L2*L2*L41 |
| 38 | 1081 | L2*L5*L6 |
| 39 | 540 | L2*L5*L25 |
| 40 | 281 | L2*L6*L12 |
| 41 | 572 | L2*L12*L15 |
| 42 | 108 | L2*L12*L17 |
| 43 | 167 | L2*L15*L33 |
| 44 | 631 | L2*L15*L49 |
| 45 | 338 | L2*L18*L41 |
| 46 | 2419 | L2*L25*L41 |
| 47 | 223 | L3*L3*L17 |
| 48 | 195 | L3*L11*L17 |
| 49 | 68 | L3*L12*L20 |
| 50 | 206 | L3*L13*L17 |
| 51 | 704 | L3*L15*L37 |
| 52 | 110 | L5*L6*L9 |
| 53 | 86 | L5*L6*L10 |
| 54 | 75 | L5*L6*L18 |
| 55 | 384 | L5*L6*L20 |
| 56 | 541 | L5*L6*L25 |
| 57 | 86 | L5*L6*L41 |
| 58 | 202 | L5*L6*L48 |
| 59 | 540 | L5*L12*L20 |
| 60 | 10 | L5*L12*L25 |
| 61 | 164 | L5*L15*L23 |
| 62 | 195 | L5*L16*L39 |
| 63 | 3931 | L5*L20*L25 |
| 64 | 2673 | L5*L20*L47 |
| 65 | 57 | L5*L25*L48 |
| 66 | 1 | L5*L30*L41 |
| 67 | 328 | L5*L37*L41 |
| 68 | 19 | L5*L46*L46 |
| 69 | 5652 | L5*L47*L47 |
| 70 | 407 | L6*L9*L48 |
| 71 | 384 | L6*L12*L20 |
| 72 | 10 | L6*L15*L23 |
| 73 | 444 | L6*L47*L48 |
| 74 | 499 | L8*L8*L8 |
| 75 | 344 | L8*L8*L37 |
| 76 | 143 | L8*L9*L39 |
| 77 | 10 | L8*L28*L37 |
| 78 | 223 | L8*L30*L37 |
| 79 | 533 | L8*L33*L37 |
| 80 | 52 | L8*L39*L41 |
| 81 | 188 | L8*L39*L44 |
| 82 | 499 | L9*L9*L9 |
| 83 | 373 | L9*L9*L33 |
| 84 | 59 | L9*L11*L12 |
| 85 | 42 | L9*L18*L41 |
| 86 | 34 | L9*L33*L33 |
| 87 | 1946 | L10*L17*L25 |
| 88 | 22 | L10*L17*L46 |
| 89 | 89 | L10*L18*L41 |
| 90 | 473 | L10*L38*L41 |
| 91 | 429 | L10*L39*L42 |
| 92 | 51 | L10*L42*L44 |
| 93 | 34 | L11*L12*L15 |
| 94 | 27 | L11*L12*L46 |
| 95 | 470 | L11*L15*L49 |
| 96 | 192 | L11*L17*L30 |
| 97 | 504 | L11*L17*L44 |
| 98 | 16 | L11*L33*L41 |
| 99 | 10 | L12*L15*L23 |
| 100 | 1946 | L12*L15*L25 |
| 101 | 556 | L12*L15*L46 |
| 102 | 195 | L12*L15*L48 |
| 103 | 3931 | L12*L20*L25 |
| 104 | 5374 | L12*L20*L46 |
| 105 | 51 | L12*L33*L38 |
| 106 | 4090 | L12*L46*L46 |
| 107 | 124 | L12*L46*L47 |
| 108 | 250 | L14*L32*L39 |
| 109 | 19 | L15*L15*L30 |
| 110 | 95 | L15*L15*L44 |
| 111 | 150 | L15*L17*L32 |
| 112 | 162 | L15*L18*L33 |
| 113 | 1861 | L15*L25*L33 |
| 114 | 132 | L15*L37*L46 |
| 115 | 94 | L15*L47*L49 |
| 116 | 174 | L15*L48*L49 |
| 117 | 314 | L15*L49*L49 |
| 118 | 534 | L16*L16*L39 |
| 119 | 3931 | L16*L25*L39 |
| 120 | 290 | L16*L29*L39 |
| 121 | 207 | L17*L18*L19 |
| 122 | 534 | L17*L18*L27 |
| 123 | 94 | L17*L18*L29 |
| 124 | 17 | L17*L18*L32 |
| 125 | 384 | L17*L27*L32 |
| 126 | 94 | L17*L29*L32 |
| 127 | 314 | L17*L32*L49 |
| 128 | 534 | L17*L39*L40 |
| 129 | 247 | L18*L41*L41 |
| 130 | 5538 | L20*L20*L33 |
| 131 | 5538 | L20*L33*L38 |
| 132 | 207 | L20*L39*L49 |
| 133 | 324 | L20*L46*L49 |
| 134 | 1190 | L22*L39*L41 |
| 135 | 212 | L23*L33*L41 |
| 136 | 51 | L25*L30*L39 |
| 137 | 72 | L25*L33*L33 |
| 138 | 2960 | L25*L36*L39 |
| 139 | 115 | L26*L26*L39 |
| 140 | 417 | L26*L39*L42 |
| 141 | 56 | L28*L37*L42 |
| 142 | 575 | L30*L37*L38 |
| 143 | 1936 | L30*L37*L42 |
| 144 | 116 | L31*L39*L40 |
| 145 | 1 | L33*L33*L41 |
| 146 | 17 | L33*L38*L44 |
| 147 | 1 | L33*L39*L47 |
| 148 | 384 | L36*L39*L40 |
| 149 | 68 | L37*L37*L42 |
| 150 | 6 | L37*L38*L44 |
| 151 | 367 | L37*L42*L42 |
| 152 | 1623 | L37*L42*L44 |
| 153 | 717 | L37*L42*L45 |
| 154 | 207 | L38*L39*L48 |
| 155 | 1651 | L38*L42*L44 |
| 156 | 50 | L39*L41*L45 |
| 157 | 86 | L41*L47*L48 |
| 158 | 373 | L42*L42*L44 |
| 159 | 651 | L46*L46*L49 |
| 160 | 51 | L46*L49*L49 |
| 161 | 483 | L47*L47*L48 |
| 162 | 14 | ABC+*L0 |
| 163 | 631 | ABC+*L3 |
| 164 | 88 | ABC+*L33 |
| 165 | 166 | ABC+*L46 |
| 166 | 886 | ABD+*L39 |
| 167 | 4 | ABG+*L39 |
| 168 | 277 | AFG+*L39 |
| 169 | 2419 | AGH+ |
| 170 | 93 | AGH+*L2 |
| 171 | 5847 | AGH+*L20 |
| 172 | 10 | AGH+*L23 |
| 173 | 4741 | AGH+*L27 |
| 174 | 124 | AGH+*L29 |
| 175 | 256 | AGH+*L31 |
| 176 | 79 | AGH+*L33 |
| 177 | 51 | AGH+*L49 |
| 178 | 10 | BCD+*L0 |
| 179 | 719 | BCD+*L2 |
| 180 | 890 | BCD+*L9 |
| 181 | 1 | BCD+*L11 |
| 182 | 1516 | BCD+*L18 |
| 183 | 384 | BCD+*L20 |
| 184 | 1251 | BCD+*L24 |
| 185 | 86 | BCD+*L41 |
| 186 | 927 | BCD+*L47 |
| 187 | 167 | BCD+*L48 |
| 188 | 1528 | CDE+ |
| 189 | 120 | CDE+*L9 |
| 190 | 1160 | CDE+*L19 |
| 191 | 2673 | CDE+*L20 |
| 192 | 541 | CDE+*L25 |
| 193 | 10 | CDE+*L26 |
| 194 | 5652 | CDE+*L29 |
| 195 | 34 | CDE+*L31 |
| 196 | 87 | CDE+*L32 |
| 197 | 75 | CDE+*L41 |
| 198 | 281 | CDG+*L39 |
| 199 | 50 | EGH+*L39 |
| 200 | 452 | FGH+ |
| 201 | 526 | FGH+*L2 |
| 202 | 150 | FGH+*L21 |
| 203 | 1946 | FGH+*L25 |
| 204 | 556 | FGH+*L27 |
| 205 | 94 | FGH+*L29 |
| 206 | 696 | FGH+*L31 |
| 207 | 504 | FGH+*L33 |
| 208 | 314 | FGH+*L49 |
| 209 | 2402 | ADO+*L3 |
| 210 | 281 | ADO+*L12 |
| 211 | 26 | ADO+*L42 |
| 212 | 1 | ADO+*L44 |
| 213 | 12213 | BGO-*L3 |
| 214 | 592 | BGO-*L5 |
| 215 | 384 | BGO-*L6 |
| 216 | 12265 | BGO-*L22 |
| 217 | 3931 | BGO-*L25 |
| 218 | 533 | BGO-*L32 |
| 219 | 546 | BGO-*L37 |
| 220 | 3657 | CFP+ |
| 221 | 1167 | CFP+*L6 |
| 222 | 209 | CFP+*L10 |
| 223 | 61 | CFP+*L12 |
| 224 | 318 | CFP+*L19 |
| 225 | 9470 | CFP+*L20 |
| 226 | 1861 | CFP+*L26 |
| 227 | 84 | CFP+*L29 |
| 228 | 130 | CFP+*L31 |
| 229 | 21 | CFP+*L32 |
| 230 | 626 | CFP+*L36 |
| 231 | 575 | CFP+*L37 |
| 232 | 181 | EHP+*L1 |
| 233 | 212 | EHP+*L10 |
| 234 | 1190 | EHP+*L39 |
| 235 | 132 | EHP+*L41 |
| 236 | 10 | EHP+*L47 |
| 237 | 704 | EHP+*L48 |
| 238 | 12 | AOP+*L26 |
| 239 | 12 | AOP+*L28 |
| 240 | 1148 | AOP+*L30 |
| 241 | 68 | AOP+*L37 |
| 242 | 29 | AOP+*L43 |
| 243 | 1623 | AOP+*L44 |
| 244 | 727 | AOP+*L45 |
| 245 | 13351 | BOP-*L3 |
| 246 | 13224 | BOP-*L12 |
| 247 | 452 | BOP-*L37 |
| 248 | 167 | BOP-*L39 |
| 249 | 1651 | BOP-*L42 |
| 250 | 70 | BOP-*L44 |
| 251 | 1741 | EOP- |
| 252 | 541 | EOP-*L4 |
| 253 | 68 | EOP-*L22 |
| 254 | 1268 | EOP-*L30 |
| 255 | 1089 | EOP-*L32 |
| 256 | 41 | EOP-*L35 |
| 257 | 658 | EOP-*L45 |
| 258 | 482 | FOP+*L12 |
| 259 | 17 | FOP+*L33 |
| 260 | 452 | FOP+*L37 |
| 261 | 1178 | FOP+*L42 |
| 262 | 368 | BCO+*L39 |
| 263 | 240 | FGO+*L39 |
| 264 | 150 | AFO-*L17 |
| 265 | 68 | AGP-*L39 |
| 266 | 99 | GOP+*L39 |
| 267 | 68 | ABO+*L39 |
| 268 | 12643 | BGP-*L39 |
| 269 | 59 | EFP+*L12 |
| 270 | 59 | AEO-*L1 |
| 271 | 1541 | AEO-*L22 |
| 272 | 2499 | AEO-*L25 |
| 273 | 580 | AEO-*L26 |
| 274 | 25 | AEO-*L32 |
| 275 | 294 | AEO-*L36 |
| 276 | 635 | AEO-*L37 |
| 277 | 115 | AEO-*L44 |
| 278 | 59 | AEO-*L45 |
| 279 | 625 | AEP+*L4 |
| 280 | 620 | AEP+*L8 |
| 281 | 233 | AEP+*L14 |
| 282 | 1541 | AEP+*L18 |
| 283 | 461 | AEP+*L20 |
| 284 | 15 | AEP+*L28 |
| 285 | 153 | AEP+*L30 |
| 286 | 4320 | BFP- |
| 287 | 1251 | BFP-*L6 |
| 288 | 118 | BFP-*L13 |
| 289 | 3931 | BFP-*L20 |
| 290 | 129 | BFP-*L22 |
| 291 | 2419 | BFP-*L26 |
| 292 | 353 | BFP-*L31 |
| 293 | 158 | BFP-*L34 |
| 294 | 541 | BFP-*L36 |
| 295 | 138 | BFP-*L45 |
| 296 | 567 | S2*L39 |

### Consequence

The two rows exclude every x<=b configuration satisfying (1) at
minimum doubled area at least 93/1000. The complementary x>=b chamber
has the strict projected sharp bound, including its equality face.
Thus the entire normalized sign chamber (1) has m<A*, with no extra
projection-coordinate hypothesis. The still-open global N7 work is
an exhaustive placement and sign reduction to these chambers or an
exclusion of their complementary orientations.
