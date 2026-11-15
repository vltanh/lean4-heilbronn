# Unrestricted strict local optimality by hand

This closes HP06–HP09. It proves an existential positive neighborhood radius;
it does NOT reprove the particular radius 1/2000 in the computer package.
No stored dual coefficient, LP certificate, or numerical rank calculation is
a premise. All twenty coordinates are allowed to move.

Use g, a, A* and the point labels from ATTAINMENT.md. For an active triangle T,
let F_T be its signed ordinary area, choosing the sign so F_T=A*>0 at the
candidate P*. Its exact expansion is

    F_T(P*+d) = A* + J_T d + q_T(d),

where J_T is its gradient and q_T is homogeneous quadratic. The sixteen active
signed triangles, grouped into the four symmetry orbits, are

    ADO+, BGO-, CFP+, EHP+;
    AEO-, AEP+, BFO+, BFP-;
    AGH+, BCD+, CDE+, FGH+;
    AOP+, BOP-, EOP-, FOP+.

Let N have the eight inward coordinate-normal rows at the boundary points.
Every feasible displacement satisfies Nd>=0. Equality Nd=0 means that its
first-order displacement is tangent to all eight original square sides.

## 1. A general stress–kernel–curvature lemma

Suppose positive numbers lambda_T and mu_i satisfy

    sum_T lambda_T J_T + sum_i mu_i N_i = 0.             (1)

Suppose the common kernel of J and N is the line spanned by a nonzero v,
and the quadratic form Q(d)=sum_T lambda_T q_T(d) satisfies Q(v)<0.
Then P* is a strict local maximum of the minimum unsigned triangle area.

Proof. Otherwise there are distinct feasible P*+d_k tending to P*, all of
whose unsigned areas are at least A*. The chosen signed active areas remain
positive in a neighborhood of P*, by continuity and A*>0. Thus their signed
areas are also at least A* for all sufficiently large k.

Normalize u_k=d_k/||d_k|| and pass to a subsequence with u_k tending to a
unit vector u. The exact expansions and feasibility give Ju>=0 and Nu>=0.
Taking (1) on u, positivity of every weight forces Ju=Nu=0. Thus u=c v
with c nonzero.

For every k, the same stress identity and feasibility imply

    0 <= sum_T lambda_T (F_T(P*+d_k)-A*)
       = -sum_i mu_i (N d_k)_i + Q(d_k)
       <= Q(d_k).

Dividing by ||d_k||^2 and taking the limit yields Q(u)>=0. But
Q(u)=c^2 Q(v)<0, a contradiction. This proves the lemma.

Notice that only the limiting direction was forced to be tangent. The actual
perturbations d_k could move the boundary points into the interior. The lemma
therefore does not assume preserved boundary contacts or symmetry.

## 2. An explicit positive stress, checked at three point representatives

Put

    L=24g^2-30g+8,       M=12g^2-27g+8,
    mu_a=6g^2-7g+2,     mu_b=26g^2-39g+10.

Give the ADO orbit weight L, the AGH orbit weight M, and the other eight
active triangles weight 1. Give the inward normals at A,B,E,F weight mu_a,
and those at C,D,G,H weight mu_b.

All four polynomials are decreasing on [0,8/25], and their values at 8/25
are respectively

    536/625, 368/625, 234/625, 114/625.

Since 0<g<8/25, every stress weight is strictly positive.

Here is a short check of the whole stress identity. Write
W=sum_T lambda_T grad(F_T), and let f=12g^3-27g^2+20g-4. Direct
substitution at representatives A,C,O gives

    W_Ax + mu_a = -f/4,       W_Ay = 3f/4;
    W_Cx = g f,               W_Cy + mu_b = (6g-7)f/2;
    W_Ox = W_Oy = (4g-3)f/2.

Each identity follows from the elementary ordinary-area gradient formula

    grad_X [sign*det(Y-X,Z-X)/2]
      = sign*((Y_y-Z_y)/2, (Z_x-Y_x)/2).

The symmetries S and R in ATTAINMENT.md carry A to A,B,E,F; C to C,D,G,H;
and O to O,P. The weights are invariant under these symmetries. The displayed
three representative identities therefore verify every coordinate of (1),
because f(g)=0.

## 3. Determine the common kernel in four three-variable systems

First impose Nd=0. Write an arbitrary tangent displacement as

    d_A=(0,alpha),       d_B=(beta,0),
    d_C=(gamma,0),       d_D=(0,delta),
    d_E=(0,epsilon),     d_F=(phi,0),
    d_G=(eta,0),         d_H=(0,theta),
    d_O=(u,v),           d_P=(r,w).

The two commuting symmetries act linearly on displacement arrays, including
their relabeling. They preserve the common kernel. Every vector splits into
their four simultaneous eigenspaces, with eigenvalues (sigma,tau) in
{+1,-1}^2. Explicitly the projection is
(1+sigma S)(1+tau R)/4.

In one such sector the coordinate relations are

    beta=sigma alpha,    epsilon=-tau alpha,
    phi=-tau sigma alpha,
    theta=sigma gamma,   eta=-tau gamma,
    delta=-tau sigma gamma,
    v=sigma u,           r=-tau u,      w=-tau sigma u.

Thus only alpha,gamma,u remain. By symmetry it suffices to impose the four
representative triangle equations ADO,AEO,AGH,AOP. The rows below are their
DOUBLED gradients applied to (alpha,gamma,u); using doubled gradients does
not change the kernel.

### Sector (+,+)

    ADO: (g-1)alpha + g gamma + (2g^2-7g/2+2)u = 0
    AEO: (1-2g)alpha + (-4g^2+6g-2)u = 0
    AGH: -(g/2)alpha + (2g^2-2g)gamma = 0
    AOP: same equation as AEO.

Since 0<g<1/2, AEO gives alpha=2(1-g)u, and AGH gives gamma=-u/2.
Substitution verifies ADO. This sector is exactly one-dimensional.

### Sector (+,-)

    ADO: (g-1)alpha - g gamma + (2g^2-7g/2+2)u = 0
    AEO: alpha + (-4g^2+6g-2)u = 0
    AGH: -(g/2)alpha + (-2g^2+3g)gamma = 0
    AOP: (1-2g)alpha = 0.

AOP gives alpha=0. Since -4g^2+6g-2=-2(1-g)(1-2g) is nonzero,
AEO gives u=0. AGH then gives gamma=0.

### Sector (-,+)

    ADO: (g-1)alpha - g gamma + (2g^2-7g/2)u = 0
    AEO: (1-2g)alpha + (-4g^2+6g)u = 0
    AGH: -(g/2)alpha + (2g^2-3g)gamma = 0
    AOP: same equation as AEO.

AGH gives alpha=-2(3-2g)gamma. AEO then gives
u=(1-2g)gamma/g. Substitution into ADO leaves

    (5/2-2g)gamma=0.

Its coefficient is positive, so this sector is zero.

### Sector (-,-)

    ADO: (g-1)alpha + g gamma + (2g^2-7g/2)u = 0
    AEO: alpha + (-4g^2+6g)u = 0
    AGH: -(g/2)alpha + (-2g^2+2g)gamma = 0
    AOP: (1-2g)alpha + (2-4g)u = 0.

AOP gives alpha=-2u. AEO becomes -2(1-g)(1-2g)u=0, so u=alpha=0.
AGH then gives gamma=0.

It follows that the full common kernel is spanned by

    v_A=(0,2(1-g)),      v_B=(2(1-g),0),
    v_C=(-1/2,0),        v_D=(0,1/2),
    v_E=(0,-2(1-g)),     v_F=(-2(1-g),0),
    v_G=(1/2,0),         v_H=(0,-1/2),
    v_O=(1,1),           v_P=(-1,-1).

The positive sector equations verify that this vector lies in the kernel;
the three zero sectors prove that no other independent direction exists.

## 4. Four quadratic evaluations give the negative curvature

For a triangle XYZ, its signed ordinary quadratic remainder is

    q_T(d)=sign*det(d_Y-d_X,d_Z-d_X)/2.

The four representative values on v are

    q_ADO(v) = 3/4-g,
    q_AEO(v) = -2(1-g),
    q_AGH(v) = g/2-5/8,
    q_AOP(v) = -2(1-g).

The vector v is in the (+,+) sector, so these values are constant within
the corresponding symmetry orbits. Each orbit has four triangles. Hence

    Q(v)=4L(3/4-g)+4M(g/2-5/8)-16(1-g)
        =-54g^2+(195/2)g-36,

where the last equality uses f(g)=0. Since 0<g<1/3,

    Q(v)<(195/2)(1/3)-36=-7/2<0.

The lemma of Section 1 now proves unrestricted strict local optimality.

## The completed local theorem and its exact scope

There exists epsilon>0 such that every feasible labeled configuration P
with 0<||P-P*||<epsilon has m(P)<A*. The conclusion also holds around
each relabeling and square-symmetry image of P*.

This proof replaces the qualitative local role of the 38 exact dual
certificates by four three-variable eliminations and four quadratic values.
It supplies neither a global upper bound nor a numerical epsilon. In
particular, one cannot silently use this existential epsilon to accept the
old radius-1/2000 leaves of the computer cover. Converting that specific
radius would require a separate quantitative estimate.
