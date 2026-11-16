# Audit of the three-family boundary reduction

This is a self-contained exposition of the geometric reduction used by the
checker, following Sudermann-Merx, arXiv:2603.11107v3, Section 2.2.
It is a hand argument, not a numerical inference about the known candidate.

Let P be a maximizing n-point configuration in the square, n>=5, with positive
minimum triangle area. Such a maximizer exists by continuity on a compact
configuration space. Its points are distinct and no three are collinear.
Let K=conv(P).

## Minimum-area enclosing parallelogram

The square is a minimum-area parallelogram containing K. Otherwise an affine
bijection from a smaller enclosing parallelogram onto the square would have
absolute determinant greater than one and strictly increase every triangle
area. This contradicts maximality.

Every side of the square meets K, because a noncontacted side could be moved
inward. Each contact is a vertex or an edge of K.

## Some side has two contacts

Suppose all four contacts were single vertices, denoted

    bottom (b,0), top (t,1), left (0,l), right (1,r).

Introduce linear coordinates u=x-beta*y and v=y-alpha*x. For sufficiently
small alpha,beta the same vertices remain the unique extremes, since K has
finitely many vertices and all four support gaps are strict. The smallest
parallelogram with these support directions has area

    [(1-beta*(r-l))*(1-alpha*(t-b))]/(1-alpha*beta).

Put c=r-l, d=t-b, alpha=s and beta=-s. The difference between its numerator
and denominator is

    (c-d)*s - (1+c*d)*s^2.

If c!=d, choose a sufficiently small s with (c-d)*s<0. If c=d, the difference
is -(1+c^2)*s^2<0 for any small nonzero s. In either case the area is below one,
a contradiction. Thus some side contains an edge of K, hence two points of P.

## Opposite contact intervals overlap in projection

Let the bottom x-contact interval be [b-,b+] and the top interval [t-,t+].
Keep vertical support directions fixed and tilt horizontal directions to
v=y-alpha*x. If b+<t-, then for small alpha>0 the vertical-coordinate width
is 1+alpha*(b+-t-)<1. If t+<b-, a small alpha<0 gives width
1+alpha*(b--t+)<1. Both contradict minimum parallelogram area.
Thus the two intervals intersect. The analogous y-projections of left and
right contacts also intersect.

## No adjacent occupied corners

There are only three possibilities.

* No occupied corner: the four sides supply four distinct points, and the
  preceding two-contact lemma supplies a fifth. Rotate so the double-contact
  side is left and label its points in increasing y order.
* Exactly one occupied corner: rotate it to A=(0,0). If the bottom side had
  only A as a contact, the opposite projection condition would force D=(0,1)
  to be occupied, a contradiction. Thus there is a second bottom contact.
  The same argument gives a second left contact. Together with the right
  and top contacts this gives five distinct points.
* Two opposite occupied corners: rotate them to A=(0,0), C=(1,1). The same
  projection argument forces a second contact on every side; otherwise B or
  D would also be occupied. Five distinct points of the required pattern can
  be selected from these contacts.

In each case we obtain

    p1=(0,y1), p2=(x2,0), p3=(1,y3), p4=(x4,1), p5=(0,y5),
    y1<y5.

If x2>x4, reflect vertically and reverse the appropriate boundary labels.
This gives x2<=x4. Only square symmetries and relabeling have been used.
Thus every maximizing configuration with no adjacent occupied corners
belongs directly to Type I up to square symmetries and relabeling.

## Adjacent occupied corners

Rotate them to C=(1,1), D=(0,1). There is at least one bottom point (b,0).
If a left point (0,lambda), lambda<1, exists already, keep the configuration.
Otherwise every point below the top has positive x. Put

    s = min_{p: y_p<1} x_p/(1-y_p).

This is a positive finite minimum, and the bottom point gives s<=b<=1.
The shear

    psi(x,y)=(x-s*(1-y),y)

has determinant one. By the defining minimum it maps every point into the
square. It fixes C and D, preserves all triangle areas, preserves a bottom
point, and creates a left contact below D. If the left and bottom contacts
are distinct, this is Type II. If they coincide, the point is A=(0,0), giving
Type III. In either case the resulting configuration is still maximizing.

This exhausts every maximizing configuration. It also explains why proving
strictly suboptimal bounds for II and III rules out adjacent occupied corners
in every maximizer, a fact used in the equality classification.