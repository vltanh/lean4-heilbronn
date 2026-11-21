# Seven contacts: a capacity-one triangle over the right span

Use the contact normalization and threshold s=93/1000 of
N7_BOTTOM_SPAN_CAP.md. Put T0=(149/20)s=13857/20000.

**Corollary.** The actual triangle DEF has doubled area

    [DEF]=(1-f)(e-d)<T0<(4+2sqrt(3))s.

Consequently it contains at most one further actual point strictly
inside it, independently of all free-point orientations.

The proof of N7_BOTTOM_SPAN_CAP.md establishes its scalar inequality
[BCE]=e(c-b)<T0 using only the coordinate orders

    0<a<h<1, 0<b<c<1, 0<d<e<1, e<=h, b<=f<=c,

and the five inequalities ABC,ABH,BCD,CDE,HEF>=s. We use exactly that
scalar statement; no other actual-triangle inequality is needed to
apply it.

Write X=d(c-b)=[BCD] and Y=(1-c)(e-d)=[CDE]. The exact identity

    e(c-b)-(1-b)(e-d)=X-Y                           (1)

shows that if X>=Y, then

    [DEF]<=[BDE]=(1-b)(e-d)<=[BCE]<T0,

where the first inequality uses f>=b.

If X<Y, introduce the auxiliary scalar

    c'=1-d(1-b)/e.

It satisfies

    c'-c=(Y-X)/e>0,
    b<c<c'<1,
    d(c'-b)=(1-c')(e-d).                            (2)

Replacing c by c' preserves all the coordinate orders and the five
scalar inequalities above. In detail, ABC and BCD increase, ABH and
HEF are unchanged, and CDE decreases to BCD', which is at least its
old value BCD>=s. Thus the already-proved scalar bound applies at c'
and gives

    (1-b)(e-d)=e(c'-b)<T0.

Again [DEF]<=(1-b)(e-d), proving the corollary. The auxiliary c' is
used only in an algebraic inequality with the stated five premises;
no assertion is made that moving an actual point preserves the other
triangles of the ten-point configuration. All determinants in the
conclusion refer to the original points.

Finally the two-interior-point triangle bound in
TRIANGLE_OCCUPANCY.md gives the capacity-one conclusion. The optional
checker verifies (1)--(2) and the coefficient directions exactly.
