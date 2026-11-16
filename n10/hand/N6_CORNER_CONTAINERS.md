# Two endpoint containers in the six-contact family

Use the normalized six actual contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

Every unsigned actual doubled triangle area is at least s=93/1000.
Write J=4427/500<(11+3sqrt(5))/2. The following two statements
hold for all four other actual points, without fixing their regions:

* At most two of them have [BET]<0.
* At most two of them have [AFT]>0.

## 1. The right container

The actual ABC and ABH clearances imply a,b>=s. The positive actual
triangles CEF and EFH have areas at most 1-f and 1-e, respectively,
by c>=f and h>=e. Thus e,f<=1-s.

The virtual triangle B,E,(1,0) has doubled area

    e(1-b)<=(1-s)^2.

Its two prescribed endpoints B,E and its additional bottom contact
C are actual. Every square point T with [BET]<0 is strictly inside
the half-plane of this triangle facing (1,0). The square bounds show
that it lies in the closed triangle itself: writing T=(x,y), the
inequality is (1-b)y<e(x-b), so x>b, y<e, and the segment bound
is precisely its sloping side BE. A point on a square side is allowed.

If three further actual points had this sign, these points together
with B,E,C would give six actual points in the container, including
its actual endpoints. The six-point endpoint theorem would require
its doubled area to be at least J*s. But

    J*s-(1-s)^2=773/1000000>0.

This contradiction proves the first assertion.

## 2. The left container

The virtual triangle A,F,(0,1) has doubled area

    f(1-a)<=(1-s)^2.

It contains the actual contact H and every square point T with
[AFT]>0. Its actual endpoints are A,F. The same six-point endpoint
theorem and the same exact gap exclude three further actual points
in it. This also follows by transposing the preceding proof.

## 3. Explicit deductions in finite placement tables

All determinants in these statements use actual points and hence
are nonzero. If two of the four free points already have the forbidden
container sign, each other free point must have the opposite sign.
A finite proof trace may record the container edge BE or AF, the two
actual occupants, and the target point. Three displayed occupants
give an immediate geometric contradiction.

In particular, two right-cap points already have [BET]<0, so every
other free point must have [BET]>0. Two left-cap points force every
other free point to have [AFT]<0. These conclusions strengthen the
side-pair reduction without a new coordinate split or symmetry.

## 4. The two-point top-cap hull

This additional local dichotomy is useful with the same six contacts.
Let X,Y be the two actual top-cap points, ordered so [EXY]>0.
Both [EXF] and [EYF] are positive by the cap tests. If [FXY]<0,
the three edge tests put Y strictly inside the actual triangle EXF,
so its area is at least 3s. If [FXY]>0, all four cyclic triples of
E,X,Y,F are positive and these points form a convex quadrilateral.
The nontriangular four-point endpoint theorem then gives

    (1-e)(1-f)>=4s.

The two signs are exhaustive; zero is an actual collinear triple.
The general top-pair cost 3s can therefore be strengthened to 4s
in precisely this second alternative. In either case a fixed
contact lower bound e,f>=alpha gives

    e,f<=1-top_cost/(1-alpha).

These are local reductions. None of them alone closes an entire
remaining N6 exterior count.
