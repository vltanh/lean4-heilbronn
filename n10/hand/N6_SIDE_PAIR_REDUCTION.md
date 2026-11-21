# Two points in a six-contact side cap

Use the normalized actual contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

Assume every unsigned actual doubled triangle area is at least
s=93/1000. If the right cap CE(1,0) contains two actual points,
they can be named X,Y so that

    Y is strictly inside CEX and BEX,
    -[CEX]>=3s,
    e(1-b)>=(4+2sqrt(3))s,
    e(c-b)(1-c)>=s(1+2c-3b).                         (1)

Thus C,E,X,Y have triangular hull, with X its outer cap vertex.
The left-cap statements follow by the square transposition. In
particular a side-cap pair forbids two top-cap points. This excludes
the complete N6 count (k,j,r,t,l)=(0,0,2,2,0) and its reflection,
independently of all pair-line orientations.

## 1. The endpoint support triangle and the inner cap point

For a right-cap point T=(x,y), one has 0<y<e and x<=1. The line ET
meets the bottom side at (v_T,0), where

    v_T=(e*x-y)/(e-y),       c<v_T<=1.                (2)

Indeed v_T-c=-[CET]/(e-y)>0, and
1-v_T=e(1-x)/(e-y)>=0. Choose X with the larger intercept v.
The intercepts are distinct, since equality would make E,X,Y
collinear. The triangle with vertices B,E,(v,0) contains C,X,Y,
and its two side contacts are the actual points C and X, in the
relative interiors of its bottom and sloping legs. Its doubled area
is Omega=e(v-b)<=e(1-b)<=1.

The affine support normalization of THREE_CORNERS.md, Sections 1--2,
sends B,E,(v,0) to (0,0),(1,1),(0,1), respectively, and C,X to
(0,eta),(f0,1), with 0<eta,f0<1. Its doubled minimum is at least
s/Omega>=s>1/11. The remaining point Y is outside BCE, because it
is beyond CE whereas B is on its other side. In the complete
five-cell table of that theorem, Y can therefore be only in cell
III, IV or V. Cells IV and V have minimum below 1/11. Hence Y is
in cell III, which puts it strictly inside both CEX and BEX.

This is exactly the local support construction in
C1_EXTERIOR_REDUCTION.md, Section 2, with the actual point B replacing
its actual corner O. No larger configuration is reflected, and B
is not replaced by a virtual point. The normalized proof needs only
the two actual base endpoints and the two actual side contacts.

The three fan areas inside CEX now give -[CEX]>=3s. In normalized
coordinates the opposite actual triangle areas BCX and CEX are
eta*f0*Omega and (1-eta)(1-f0)*Omega. Therefore Cauchy--Schwarz gives

    sqrt(s/Omega)+sqrt(3s/Omega)
      <=sqrt(eta*f0)+sqrt((1-eta)(1-f0))<=1.

It follows that Omega>=(1+sqrt(3))^2*s=(4+2sqrt(3))s.
Since Omega<=e(1-b), this proves the third assertion of (1).

## 2. The stronger physical support inequality

Write X=(x,y). The actual cap and bottom clearances are

    e(x-c)-(1-c)y>=3s,
    (c-b)y>=s.

Multiply the first by c-b and the second by 1-c, then add. This gives

    e(c-b)(x-c)>=s[3(c-b)+(1-c)]=s(1+2c-3b).

Using x<=1 proves the last assertion in (1). Every denominator in
(2) is positive; all actual dividing determinants are nonzero under
the threshold. An outer square-side cap point is allowed, including
v=1, without changing the argument.

## 3. A side pair and a top pair cannot coexist

Two top-cap points, together with the actual endpoints E,F, require

    (1-e)(1-f)>=3s

by the four-point endpoint theorem in TYPE_II.md, Section 1. But
the two relevant container areas satisfy the exact identity

    e(1-b)+(1-e)(1-f)
      =1-b-(1-e)(f-b)<=1-b<=1-s.                     (3)

Here f>=b is part of the normalization, and b>=s follows from the
actual anchor area b(h-a)>=s. Combining (1) and (3) would give

    (4+2sqrt(3)+4)s<=1.

This is impossible already with K=149/20<4+2sqrt(3), since

    (K+4)s-1=1297/20000>0.

Transposition proves the left-pair/top-pair exclusion. The argument
uses no location or orientation of any other actual point. The
optional checker verifies the displayed identities and exact gap;
no numerical discovery or unprinted certificate is a premise.
