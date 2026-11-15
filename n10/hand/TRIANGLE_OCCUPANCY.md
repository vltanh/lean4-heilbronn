# Four interior points force a small triangle

This closes the entire class III-3C-U4 and strengthens the global occupancy
cut in NORMALIZATION.md: at minimum area at least A*, no triangle of actual
configuration points contains four other configuration points.

All areas in this note are ordinary unsigned areas, except where an oriented
bracket is explicitly used. The proof is self-contained. The elementary
two- and three-interior-point arguments also appear in the n=9 manuscript;
they are supplied here in full so that no n=9 theorem or computational
certificate is a premise.

## 1. Two points inside a triangle

Suppose a triangle of area S, together with two strictly interior points,
has every spanned triangle area at least t>0. Then

    S >= Gamma2 t,       Gamma2 = 4+2 sqrt(3).

Let the line through the interior points meet two sides of the outer
triangle at U,V, and let R be the common vertex of those sides. The line
cannot pass through an outer vertex, because that would give three
collinear configuration points. After an affine change of coordinates,
write

    U=(0,0), V=(1,0), R=(a,h), h>0,
    S1=R+lambda(U-R), S2=R+mu(V-R), lambda,mu>1,
    P=(p,0), Q=(q,0), 0<p<q<1.

Here R,S1,S2 are the actual outer vertices, whereas U,V are only auxiliary
line intersections. All areas and t are multiplied by the same positive
factor by the affine change. Set k=h/(2t). The five triangles
RS1P, RS2Q, RPQ, S1PQ, S2PQ give

    p >= 1/(lambda k),
    1-q >= 1/(mu k),
    q-p >= max(1,1/(lambda-1),1/(mu-1))/k.

Their sum, together with S/t=lambda mu k, gives

    S/t >= lambda+mu
             +lambda mu max(1,1/(lambda-1),1/(mu-1)).

Put l=min(lambda,mu)>1. The last expression is at least

    2l+l^2/(l-1) = 4+3(l-1)+1/(l-1) >= 4+2 sqrt(3).

The final inequality is the arithmetic-geometric mean inequality.

## 2. Three points inside a triangle

Suppose now that an outer triangle of area S contains three strictly
interior points and every spanned triangle has area at least t>0. We prove

    S >= Gamma3 t,       Gamma3 = (11+3 sqrt(5))/2.

Join any interior point to the outer vertices. If both remaining points
lie in one of the three fan triangles, Section 1 bounds that triangle by
Gamma2 t; the other two fan triangles each have area at least t. Thus

    S >= (6+2 sqrt(3))t > Gamma3 t,

since 6+2 sqrt(3)>9>Gamma3. No other point can lie on a fan edge because
no three configuration points are collinear.

It remains to consider the distributed alternative: for each interior
point, the other two occupy different fan triangles.

### The seven positive faces

Name the outer vertices A,B,C in counterclockwise order. Name one interior
point Y and, after choosing the cyclic order or reversing it, name the
others so that

    Z is inside ABY,        X is inside BCY.

The distributed condition forces

    Y inside CAZ,   X inside BCZ,
    Y inside CAX,   Z inside ABX.                         (1)

Here is a direct justification. Since Z is inside ABY, Y cannot be inside
ABZ. If Y were inside BCZ, then X inside BCY would also be inside BCZ,
contrary to the distributed condition at Z. Hence Y is inside CAZ. Since
X is not inside ABZ, the same condition forces X inside BCZ. Similarly,
Y cannot be inside BCX; if Y were inside ABX, then Z inside ABY would
also be inside ABX. Consequently Y is inside CAX and Z inside ABX.

Insert X and Z into their respective fan triangles at Y. The quadrilateral
BZYX is convex. The vertex B is an outer hull vertex, and X,Z are on
opposite sides of BY, so none of B,X,Z can be the interior vertex of this
quadrilateral. The only remaining possibility would put Y inside BZX.
But BZX lies in BCZ, whereas (1) places Y inside CAZ. Thus this possibility
is excluded too. Flip its diagonal BY to ZX.

Writing [UVW]=det(V-U,W-U)/2 for an oriented area, the resulting seven
positive face areas are

    x=[ABZ], y=[BCX], z=[CAY],
    a=[AZY], b=[BXZ], c=[CYX], k=[ZXY],
    S=x+y+z+a+b+c+k.                                    (2)

Each of these seven numbers is at least t. Define six additional areas

    uA=[AZX], uB=[BXY], uC=[CYZ],
    vA=[AXY], vB=[BYZ], vC=[CZX].

All are positive by (1), hence at least t. Signed-area addition gives

    a=uA+vA-k,   b=uB+vB-k,   c=uC+vC-k.                 (3)

The elementary determinant identity

    det(p,r)det(q,s)
      =det(p,q)det(r,s)+det(p,s)det(q,r)

gives, by applying it to four vectors at the appropriate interior vertex,

    xk=ab-uA vB,
    yk=bc-uB vC,
    zk=ca-uC vA.                                        (4)

These are polynomial identities; no geometric sign has been suppressed.
Every factor in (4) has already been assigned its positive sign.

### The short scalar inequality

Normalize the variables by t:

    k/t=1+K,
    ui/t=1+Ui, vi/t=1+Vi,
    (a,b,c)/t=(1+TA,1+TB,1+TC).

All K,Ui,Vi,Ti are nonnegative. Equation (3) says Ti=Ui+Vi-K.
Set Z0=TA+TB+TC. Summing (4) and using (3) gives the exact expansion

    k(x+y+z)/t^2
      = TA TB+TB TC+TC TA+Z0-3K
          -(UA VB+UB VC+UC VA).

Since x+y+z>=3t, it follows that

    TA TB+TB TC+TC TA+Z0
      >= 3+6K+(UA VB+UB VC+UC VA) >= 3.

Also TA TB+TB TC+TC TA<=Z0^2/3. Consequently

    Z0^2/3+Z0 >= 3,
    Z0 >= 3(sqrt(5)-1)/2.

Equation (2) now gives

    S/t >= 3+(3+Z0)+(1+K)
        >= 7+3(sqrt(5)-1)/2 = Gamma3.

This proves the three-interior-point bound in both exhaustive alternatives.

## 3. Four points inside a triangle

Suppose four points are strictly inside a triangle ABC of area S and every
spanned triangle has area at least t>0. Then

    S >= Gamma4 t,       Gamma4=Gamma3+2=(15+3 sqrt(5))/2. (5)

Choose an interior point P whose barycentric coordinate at A is smallest
among the four interior points. Every point strictly inside BCP has
barycentric A-coordinate strictly smaller than that of P. Hence BCP
contains none of the other three interior points.

The other three points lie in the remaining two fan triangles ABP,CAP.
None can lie on a fan edge, since that would give a zero-area triangle.
Their counts are therefore (3,0) or (2,1), up to exchanging the triangles.

In the (3,0) case, Section 2 gives area at least Gamma3 t in the occupied
fan triangle. The empty fan and BCP each have area at least t, proving
S>=(Gamma3+2)t.

In the (2,1) case, Section 1 gives at least Gamma2 t in the fan containing
two points. The fan containing one point splits into three actual
configuration triangles, so its area is at least 3t. The empty BCP has
area at least t. Therefore

    S >= (Gamma2+4)t=(8+2 sqrt(3))t > (Gamma3+2)t.

For the last comparison, 8+2 sqrt(3)>11 whereas Gamma3+2<11.
This proves (5). Ties in the minimum barycentric coordinate cause no
problem: strict interior membership in BCP would still require a strictly
smaller coordinate.

## 4. Global occupancy and the complete III-3C-U4 exclusion

Every triangle in the unit square has area at most 1/2. One proof is to
maximize its absolute determinant separately in each coordinate; the
maximum occurs at square vertices, where its doubled area is at most one.

If a triangle of actual configuration points contains at least four other
points, select four of them and apply (5). The configuration's least area
m consequently satisfies

    m <= 1/(15+3 sqrt(5)) < 5/108 < A*.                  (6)

Both strict comparisons can be checked rationally. Since sqrt(5)>11/5,
the first denominator is greater than 108/5. For the second, ATTAINMENT.md
isolates g>63/200. The function x^2(5/4-x)/2 is increasing on (0,1/3), so

    A* > (63/200)^2 (5/4-63/200)/2
       = 742203/16000000,
    742203/16000000-5/108 = 39481/432000000 > 0.

Thus at minimum area at least A*, every triangle of configuration points
contains at most three other configuration points. Boundary membership
would instead give a collinear triple and m=0.

In the III-3C-U4 class, the three occupied corners are (0,0),(0,1),(1,1),
and the four upper points lie strictly inside their triangle. Equation (6)
excludes this entire class, with the other three points unrestricted.

The other exact-three-corner occupancy classes require their own arguments.
This note does not close them or the complete HP11-III parent.
