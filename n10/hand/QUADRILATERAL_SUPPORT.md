# Support inequalities for an occupied actual quadrilateral

All areas in this note are doubled. Write [ABC]=det(B-A,C-A),
and assume every unsigned triangle of the actual points under
consideration has doubled area at least s>0. The quadrilateral
A,B,C,D is strictly convex in that positive cyclic order. It contains
at least one further actual point strictly inside it.

Put

    X=[ABC],  Y=[ABD],  Z=[ACD],
    delta=Y-Z=X-[BCD].                              (1)

In particular X,Y,Z,[BCD] are all positive. No square normalization,
physical reflection or maximizing hypothesis is required in Sections
1--3. The bounds Lx,Ly used there are any positive scalar or
configuration-dependent quantities with X<=Lx and Y<=Ly.

## 1. The support triangle and the endpoint cost

If delta>0, the two supporting rays AD and BC meet at

    R=A+(X/delta)(D-A)=B+(Y/delta)(C-B).              (2)

Both ray parameters exceed one, since

    X-delta=[BCD]>0,       Y-delta=Z>0.

Consequently D and C lie in the relative interiors of AR and BR,
respectively. The triangle ABR contains the entire quadrilateral
ABCD, together with every named occupant, and has doubled area

    Omega=XY/delta.                                 (3)

For example, an affine coordinate change placing A=(0,0), B=(1,0)
gives X=C_y, Y=D_y and

    delta=D_x*C_y-D_y*(C_x-1).

Solving the two ray equations gives (2), and the area of ABR is
(X/delta)Y. Affine covariance proves the same identities in the
original coordinates. The identity in (1) is the usual four-point
determinant identity.

With one occupant, apply the endpoint-five theorem in TYPE_II.md,
Section 1, to A,B,C,D and that occupant in ABR. It gives

    Omega>=(3+2sqrt(2))s>(29/5)s.

With two occupants, their six-point hull is the actual quadrilateral
ABCD, so the nontriangular case of SIX_POINT_ENDPOINT.md gives

    Omega>9s.

Extra occupants may be ignored when applying either theorem.
Thus the following weak polynomial inequalities hold:

    XY>=q*s*delta,
    q=29/5 for at least one occupant,
    q=9    for at least two occupants.               (4)

If delta<=0, the same inequalities hold automatically because
X,Y,s,q are positive. This proves (4) on the entire quadrilateral
domain, including the parallel-support case delta=0. There is no
division by delta in any final inequality.

## 2. Stronger costs from the two opposite actual triangles

Choose either one or two named occupants. For i=1,2, let n_i be
the number of them strictly inside ACD and BCD, respectively. These
counts may overlap. Put

    T_0=1, T_1=3, T_2=4+2sqrt(3).

The actual triangle and fan/occupancy bounds give

    [ACD]>=T_(n_1)*s,       [BCD]>=T_(n_2)*s.          (5)

When delta>0, normalize the support triangle ABR to the upper
half-square, with A,B,R sent to (0,0),(1,1),(0,1). The two actual
side contacts D,C become (0,eta),(f,1), with 0<eta,f<1. The two
unsigned opposite triangle areas divided by Omega are eta*f and
(1-eta)(1-f). Cauchy--Schwarz therefore gives

    (sqrt([ACD])+sqrt([BCD]))^2<=Omega.

Equations (3) and (5) imply

    XY >= (sqrt(T_(n_1))+sqrt(T_(n_2)))^2*s*delta.     (6)

Again this polynomial inequality is automatic when delta<=0.
Combining (6) with the two-occupant cost in (4) gives these useful
rational choices of q:

| Unordered counts (n_1,n_2) | Valid q in XY>=q*s*delta |
|---|---:|
| (0,0), (0,1) | 9 |
| (0,2) | 139/10 |
| (1,1) | 12 |
| (1,2) | 199/10 |
| (2,2) | 149/5 |

Indeed the three nonintegral exact costs in (6) are respectively
7+4sqrt(3), 13+4sqrt(3), and 16+8sqrt(3), and sqrt(3)>69/40 because
3*40^2=4800>4761=69^2.

With one named occupant, the respective rational costs for counts
(0,0), (0,1), (1,1) are 29/5, 149/20, 12. The first is the
endpoint-five cost; the second is smaller than 4+2sqrt(3); the third
follows directly from (6).

There is one further useful two-occupant alternative. If both P and Q lie inside
both ABC and ABD, the same support normalization puts them both in
central cell II. The six-point central theorem proved at its own
threshold 31/299 in TYPE_II_R4_CENTRAL.md then gives

    Omega>(299/31)s.

Thus q=299/31 is valid in (4) in this complete central alternative.
This invocation uses only the two prescribed endpoints, the two
actual side contacts and the two central points; it does not import
the Type-II container-area hypothesis used to motivate that theorem.
As before, the final polynomial is automatic for delta<=0.

## 3. Polynomial consequences of triangle upper bounds

For any one of the justified costs q above, positivity of X,Y gives

    Lx*Y-q*s*delta>=0,
    Ly*X-q*s*delta>=0,                               (7)

whenever X<=Lx and Y<=Ly. When Lx,Ly are affine coordinate expressions,
(7) consists of cubics; when they are fixed constants, it consists of
quadratics. The bound functions need only be positive on the stated
configuration domain. No independence of them from the coordinates
is assumed. The proof is simply XY<=Lx*Y and XY<=Ly*X followed by
(4) or (6).

The argument can be applied separately with each of the four cyclic
base edges AB,BC,CD,DA. Each application uses its own delta and its
own witnessed occupant counts. The same actual quadrilateral and
occupants are retained throughout.

## 4. Two contact-quadrilateral applications

Use normalized contact coordinates

    H=(0,h), A=(0,a), B=(b,0), C=(c,0),
    E=(1,e), F=(f,1),
    0<a<h<=1, 0<b<c<=1, 0<e,f<=1,
    e<=h, f<=c.

The actual upper quadrilateral is HCEF. Its four triangle upper
bounds, valid by direct expansion, are

    [HCE]=h-c(h-e)<=h,
    [HCF]=c-h(c-f)<=c,
    [CEF]=1-c+e(c-f)<=1-f,
    [HEF]=1-h+f(h-e)<=1-e.                           (8)

Their positivity also ensures that all displayed upper bounds are
positive. If HCEF contains two actual points, take q=9, or a stronger
cost whose containment hypotheses have been verified. The four
cyclic rows below specify the two cubic expressions (7):

| Base order A,B,C,D in (1) | Lx | Ly |
|---|---|---|
| H,C,E,F | h | c |
| C,E,F,H | 1-f | h |
| E,F,H,C | 1-e | 1-f |
| F,H,C,E | c | 1-e |

The lower quadrilateral HABC has the analogous upper bounds

    [ABC]=a(c-b)<=a,       [ABH]=b(h-a)<=b,
    [ACH]=c(h-a)<=h-a,     [BCH]=h(c-b)<=c-b.         (9)

With at least one occupant use q=29/5, yielding:

| Base order in (1) | Lx | Ly |
|---|---|---|
| H,A,B,C | b | h-a |
| A,B,C,H | a | b |
| B,C,H,A | c-b | a |
| C,H,A,B | h-a | c-b |

These are local support consequences. Neither table asserts a new
physical reflection or changes any other configuration point. All
support denominators and both signs of delta were handled explicitly
in Section 1, so the displayed polynomial factors apply throughout
the stated domains.
