# Noncentral C2 points: corner cuts and complete corner-pair exclusion

This note proves a uniform pair-line exclusion, an empty-fan bound, and the
complete exclusion of two same-corner noncentral points inside that corner's
anchor triangle. It does not close every mixed C2 family. All constants,
identities, and interval bounds are explicit; no numerical optimization is a
premise.

Use the anchors and contact bounds from OPPOSITE_CORNERS.md:

    A=(0,0), E=(1,1), H=(0,h), B=(b,0), D=(1,d), F=(f,1),
    sigma=93/1000,
    0<h,b<89/100,       0<f,d<1,
    (1-h)(1-f)>=sigma,  (1-b)(1-d)>=sigma.

Let P=(x,y) be an upper cell-I point and S=(u,v) a lower cell-I point,
both toward A. In particular their actual triangle inequalities give

    fy-x>=sigma,       du-v>=sigma,
    hx>=sigma,         bv>=sigma.

Orient their joining line from P to S and write

    d_V=det(S-P,V-P).

**Claim.** The signs d_H>0 and d_B>0 cannot both occur. The claim includes
every allowed location of P,S; it does not assume they lie in AHB or impose
an orientation on the other free points.

## 1. Convert the two corner-side inequalities to one product

The cell-I inequalities imply x<y and v<u. Define positive numbers

    J=sqrt(hb),       r=sqrt(fd),
    X=sqrt(xv),       Y=sqrt(yu),       Y>X.

Suppose both claimed signs occur. The actual triangle lower bounds give

    h(u-x)-(yu-xv)>=sigma,
    b(y-v)-(yu-xv)>=sigma.

Both u-x and y-v are therefore positive. Multiply, and use

    (u-x)(y-v)=yu+xv-uv-xy
       <=Y^2+X^2-2XY=(Y-X)^2.

Taking positive square roots yields

    sigma <= (Y-X)(J-X-Y).                              (1)

In particular J>X+Y>2X.

The anchor-pair constraints hx,bv>=sigma imply

    X>=sigma/J.                                        (2)

For fixed X, the right side of (1) is

    (J/2-X)^2-(Y-J/2)^2 <= (J/2-X)^2.

Using (2), with J/2-X>0, gives

    sqrt(sigma)<=J/2-sigma/J,
    J^2 >= (4+2sqrt(3))sigma.

Since 4+2sqrt(3)>149/20 and

    (149/20)sigma-(83/100)^2=79/20000>0,

the contact bounds place J in the short interval

    83/100 < J < 89/100.                                (3)

## 2. Noncentral membership forces the larger product above J/2

The noncentral inequalities also imply

    yu >= (x+sigma)(v+sigma)/(fd)
       >= (X+sigma)^2/r^2,
    Y >= (X+sigma)/r.                                   (4)

Cauchy--Schwarz gives the two inequalities

    sqrt(fd)+sqrt((1-f)(1-d))<=1,
    sqrt(hb)+sqrt((1-h)(1-b))<=1.

The two opposite anchor areas give

    sqrt((1-f)(1-d))
       >=sigma/sqrt((1-h)(1-b))>=sigma/(1-J).

Consequently

    0<r<=1-sigma/(1-J),
    1-J-sigma>0.

Combining with (2) and (4), put

    x0=sigma/J,
    y0=sigma(1-J^2)/[J(1-J-sigma)],
    X>=x0,       Y>=y0.                                 (5)

One has y0>J/2 throughout (3). After multiplication by the positive
denominator, this is the polynomial inequality

    W(J):=J^3-(1+sigma)J^2+2sigma>0.

Its derivative J[3J-2(1+sigma)] is positive on [83/100,89/100], and

    W(83/100)=48193/10000000>0.

For F_J(X,Y)=(Y-X)(J-X-Y), the derivative in X is 2X-J. By (1) this is
negative from x0 up to the actual X. Hence

    F_J(X,Y)<=F_J(x0,Y).

The derivative in Y is J-2Y, negative for Y>=y0>J/2. Therefore

    sigma <= F_J(X,Y)<=F_J(x0,y0).                      (6)

## 3. An explicit positive polynomial contradicts the last inequality

Direct expansion of the last expression gives

    sigma-F_J(x0,y0)
      =sigma N(J)/[J^2(1-J-sigma)^2],

where

    N(J)=-J^5+3J^4+(4sigma-3)J^3
         +(2sigma^2-6sigma+1)J^2
         +(2sigma-2sigma^2)J+2sigma^2-sigma^3.

The denominator is positive. To prove N(J)>0 without root approximations,
write z=J-21/25. Equation (3) gives -1/100<=z<=1/20, and exact expansion
at sigma=93/1000 gives

    N(J)=300087/5000000000+(5793/12500000)z
         +z^2[305249/500000+(99/250)z-(6/5)z^2-z^3].

The first two terms have the positive lower bound

    300087/5000000000-(5793/12500000)/100
       =55383/1000000000>0.

The bracket also has a positive lower bound on the entire interval:

    305249/500000-(99/250)/100-(6/5)/400-1/8000
       =603413/1000000>0.

Thus N(J)>0, so F_J(x0,y0)<sigma, contradicting (6). This proves the claim.

By a half turn, the corresponding two noncentral points toward E cannot
cut off E.

## 4. The remaining corner fan of a noncentral point holds no other point

For a lower cell-I point S=(u,v), we prove the oriented bound

    hb-hu-bv<3sigma.                                    (7)

When S lies inside AHB, the left side is the positive doubled area of HBS.
Consequently (7) implies that HBS contains no other configuration point
strictly inside: such a point would divide it into three actual triangles
of doubled area at least sigma each.

Suppose instead that the left side of (7) is at least 3sigma. The actual
triangle ABS gives bv>=sigma, so

    0<u<=b-4sigma/h<=b-4sigma/c,       c=89/100.

Noncentral membership du-v>=sigma now implies

    du>=sigma(1+1/b).

The opposite anchor triangle gives (1-b)(1-d)>=sigma and hence
d<=1-sigma/(1-b). Both this upper bound and b-4sigma/c are positive.
Multiplying their bounds on d and u yields

    F(b):=[1-sigma/(1-b)](b-4sigma/c)
          -sigma(1+1/b)>=0.                            (8)

This is impossible for any b in (0,1). Indeed, direct expansion gives

    N_b:=b(1-b)F(b)
       =-[445000b^3-631000b^2+168702b+41385]/445000.

Put z=b-39/50. Then z>-39/50 and

    N_b=-z^3-(4103/4450)z^2+(861/111250)z-1239/2225000
       <=-(316/2225)z^2+(861/111250)z-1239/2225000
       <=-3173919/7031000000<0.

The first inequality uses z+4103/4450>=316/2225. The second is the
maximum of the displayed concave quadratic, obtained by completing its
square. Since b(1-b)>0, this contradicts (8), proving (7).

Transposition gives the same empty-fan statement for an upper cell-I point
P inside AHB: its triangle HBP contains no other actual point. A half turn
gives both statements for noncentral points toward E inside EFD.

## 5. Two same-corner noncentral points cannot both lie in its corner triangle

Suppose the upper and lower cell-I points P,S both lie strictly inside AHB.
Continue to orient their line P to S, with d_A<0. There are no zero values
d_H,d_B, since the corresponding actual triangle areas are positive.

If both signs are positive, Sections 1--3 give a contradiction. If both
are negative, the affine function V -> d_V would be negative on all three
vertices A,H,B and hence throughout their convex hull. This contradicts
d_P=0 for P strictly inside it.

The only remaining orientations have opposite signs at H,B. If
d_H<0<d_B, the three oriented edge signs place P strictly inside HBS:

    det(B-H,P-H)<0,       -d_B<0,       d_H<0.

The first sign is its assumed membership in AHB. This contradicts Section
4. Transposition, followed by exchanging the labels P,S, handles
d_B<0<d_H; equivalently S would lie inside HBP.

All four sign alternatives are excluded. Thus two same-A noncentral
points cannot both lie in AHB. A half turn proves the corresponding
same-E statement in EFD. Cases in which one of the noncentral points is
outside its corner triangle still require their own arguments; this note
does not check the HP11-C2 parent.
