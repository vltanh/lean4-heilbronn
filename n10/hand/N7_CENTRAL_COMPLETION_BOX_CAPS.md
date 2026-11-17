# N7 central: two further capacities from the common box

Use the actual normalization and hypotheses of
[N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md):

    A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e),
    F=(f,1), H=(0,h), G=(g,z), O=(x,y), P=(u,v).

All ten actual points lie in the closed unit square. The actual
heptagon ABCDEFH is strictly convex, and every distinct actual
triangle has unsigned doubled area at least s=93/1000. The contact
orders include 0<a<h<1 and b<=f<=c. The lower point G is strictly
inside HABC with ACG,HBG>0, and O,P are strictly inside HCEF.
The weak central roots CA: ac>=bh and CB: ac<=bh use the common
setup boxes. In particular both have

    a<=137/200, b<=535/907, f<=883/1000,
    CA: a>=139/1000,   CB: a>=122/1000.             (1)

**Lemma.** Throughout both central roots, actual ABF and AFH each
have capacity two. No upper-pair-word or occupancy premise is needed.

## 1. The ABF ceiling

The actual contact identity is

    ABF=b(1-a)+af.

Put A0=137/200, B0=535/907 and F0=883/1000. The literal identity

    B0(1-A0)+A0 F0-ABF
      =(A0-a)(f-b)+A0(F0-f)+(1-A0)(B0-b)           (2)

has only nonnegative factors by (1) and f>=b. Consequently

    ABF<=143425697/181400000.

For the three-interior-point threshold J*s=(4427/500)s,

    J*s-143425697/181400000=29715269/907000000>0.   (3)

Three additional actual points inside ABF would therefore contradict
the actual three-interior-point theorem used in the common setup.

## 2. The AFH ceilings

Here the actual identity is AFH=f(h-a). For the applicable lower
bound a0 in (1), the exact remainder is

    F0(1-a0)-AFH
      =(F0-f)(1-a0)+f(1-h)+f(a-a0)>=0.            (4)

Every factor is nonnegative because all contacts lie in the unit
square, f>=0 and a>=a0. Thus the following ceilings hold:

| Root | a0 | AFH ceiling | Gap below J*s |
| --- | --- | --- | --- |
| CA | 139/1000 | 760263/1000000 | 63159/1000000 |
| CB | 122/1000 | 387637/500000 | 12037/250000 |

Both gaps are positive. The same actual three-interior-point theorem
gives capacity two for AFH. These local capacities do not exclude
either central parent or an upper-pair word.

## 3. Verification status

The source-complete reader
[N7_CENTRAL_COMPLETION_BOX_CAPS_check.py](N7_CENTRAL_COMPLETION_BOX_CAPS_check.py)
expands both actual determinant formulas and both remainder
identities with independent symbolic arithmetic, then checks all
literal rational ceilings and gaps above. It imports no discovery
engine or optimizer. Independent mathematical review accepts all
actual contact formulas, the common-box source scope, and every
nonnegative remainder factor. The separate
[audit_n7_box_caps.py](audit_n7_box_caps.py) imports no author code;
it expands four fresh actual-coordinate identities, checks the exact
ABF ceiling and gap, and reads and verifies both literal AFH rows.
Both readers pass. This acceptance proves the two capacities; the
remaining C, CE and EF words and both central parents stay open.
