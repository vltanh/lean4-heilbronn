# A stronger nontriangular six-point endpoint bound

Put

    Gamma2=4+2sqrt(3),       rho=1142/125,       tau=1/rho.

**Theorem.** Let six actual points lie in a triangle of positive ordinary area
S, with two of the triangle's vertices among the six points. If their
actual convex hull is nontriangular, their minimum ordinary triangle
area m satisfies

    m < (125/1142)S = S/rho.                              (1)

This strengthens the nontriangular part of SIX_POINT_ENDPOINT.md.
The triangular-hull alternative retains its previously proved
Gamma3 bound. The only ingredients here are the supporting-triangle
normalization, its five-cell identities, the two-interior-point
triangle bound, and the complete central-pair calculation already
proved in that manuscript.

## 1. Normalization and the cells

If m=0, (1) is immediate. Otherwise no three actual points are
collinear. As in SIX_POINT_ENDPOINT.md Section 1, tighten the two
nonbase sides of the container to their distinct actual contacts.
The resulting supporting triangle has ordinary area S'<=S. Its
two base endpoints remain actual vertices. The two other side contacts
are distinct and neither is the supporting apex: otherwise the hull
would itself be a triangle with actual vertices. These facts use only
m>0 and nontriangularity. An affine map now gives the actual anchors

    A=(0,0), E=(1,1), H=(0,h), F=(f,1),
    0<h,f<1,

and two additional actual points in the upper half-square. The
normalized doubled minimum is t=m/S'. Under the contrary hypothesis
m>=S/rho we therefore have t>=tau=125/1142. In every inequality below
we may use the fixed lower bound tau for each actual doubled area.

For an additional point X=(x,x+w), put alpha=1-h, beta=1-f and

    L=f w-beta x,
    K=h(1-x)-w,
    N=f w+(h-beta)x-fh.

The five possible cells, with their actual containing triangles, are

| Cell | L | K | N | Containing triangles |
|---|---:|---:|---:|---|
| I | + | + | - | AHF, AEH |
| II | - | + | - | AEF, AEH |
| III | - | - | - | EHF, AEF |
| IV | + | - | - | AHF, EHF |
| V | + | - | + | beyond HF |

The algebraic identities giving this complete list are

    N=-fK-alpha beta x,
    N=alpha L-hf(1-x-w).

Section 2 of SIX_POINT_ENDPOINT.md proves that IV is impossible
when the area threshold exceeds 1/12, and that I and III cannot both
occur at such a threshold. Its cell-V calculation bounds the threshold
by (5sqrt(5)-11)/2<1/11. Here tau>7/64>1/11, so all these exclusions
apply without change. The full threshold chain is

    1/12 < 1/11 < 7/64 < tau=125/1142 < 1/9.

In particular, the old 1/9 exclusion of I/III is replaced by the
calculation in the next section; it is not an input here.

## 2. Excluding either noncentral cell

Suppose that one of the two additional points lies in I. The preceding
exclusions force the other into I or II. Thus both lie strictly inside
the actual triangle AEH, whose doubled area is h. The two-interior-point
triangle theorem gives

    h >= Gamma2*t >= Gamma2*tau > 933/1142.              (2)

For the last strict comparison, sqrt(3)>433/250 because

    3*250^2-433^2=11>0.

Consequently Gamma2>933/125, and (933/125)tau=933/1142.

The I point lies inside AHF, so the three actual fan triangles give
hf>=3tau. The actual anchor triangle EHF gives alpha beta>=tau.
Since f+beta=1, these two inequalities imply

    1 >= 3tau/h + tau/(1-h),
    q(h):=h^2-(1+2tau)h+3tau <= 0.                     (3)

But q is strictly increasing for h>=933/1142, since

    2(933/1142)-(1+2tau)=237/571>0.

At that endpoint its value is already positive:

    q(933/1142)=3/1142^2>0.                            (4)

Equations (2)--(4) contradict each other. Reflection in x+y=1
exchanges I and III, so III is impossible as well.

## 3. The remaining central pair

Both additional points must now lie in II. Sections 3--4 of
SIX_POINT_ENDPOINT.md prove that a central pair cannot have every
actual doubled area strictly greater than 7/64. That calculation
covers every orientation of the line through the pair and uses no
hypothesis from the I/III exclusion of that manuscript. Here

    tau-7/64 = 3/36544 > 0.

This is the final contradiction, proving (1).

## 4. Quadrilateral-support consequence

In QUADRILATERAL_SUPPORT.md, take any actual strictly convex
quadrilateral ABCD containing two distinct actual points. In its
positive-denominator support construction, write

    X=[ABC], Y=[ABD], delta=[ABD]-[ACD]>0.

The supporting triangle has doubled area XY/delta, two actual
vertices A,B, and a nontriangular six-point hull. If every actual
doubled triangle area is at least s, (1) therefore gives

    XY > rho*s*delta.

Thus the generic rate 9 in that lemma may be strengthened to
rho=1142/125. If X<=Lx and Y<=Ly, the convenient polynomial
consequences are

    Lx*Y-rho*s*delta >= 0,
    Ly*X-rho*s*delta >= 0.

When delta<=0 they remain automatic, exactly as in the original
support lemma. The stronger conditional rates from overlapping
opposite ears remain available; the admissible rate is their maximum
with rho. No reflection or additional coordinate-order assumption is
used in this consequence.

The short optional checker check_six_point_endpoint_refined.py verifies
the rational identities in (2)--(4) and the threshold comparisons. It
is not a geometric premise of the proof.
