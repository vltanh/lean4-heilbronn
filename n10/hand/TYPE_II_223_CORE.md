# The eight-point core of the adjacent-corner count (2,2,3)

This note proves a complete placement theorem for the eight actual points
on the two sides of the remaining Type-II count (2,2,3). In particular,
the right central support point is above both DH and DF, with a fixed
vertical clearance above F. The two points in DCB are not used here;
this note alone does not exclude the count.

All areas are doubled. Put

    s=93/1000,     K=149/20<4+2sqrt(3),
    k5=3-2sqrt(2),     Omega0=271/500.

Every unsigned area of three actual points is at least s. Finite decimals
in this note denote exact terminating rational numbers. Write
`[UVW]=det(V-U,W-U)`.

## 1. The exhaustive core supplied by the count reduction

By TYPE_II.md, Sections 4–7, the left hull is the actual triangle DBE,
with its additional point P strictly inside. The right five-point hull
is nontriangular. Its actual supporting contacts are H and F, and its
remaining point X is in central cell II. Use coordinates

    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    H=(a,k), F=(c,d), P=(p,y), X=(u,v),
    q=1-lambda,     w=1-b.

The actual anchors D,E,B,H,F,C form a strictly convex hexagon in that
counterclockwise order. The auxiliary right support triangle has vertices
B,C,R, where R=(r,rho), and doubled area

    Omega=r-b-w*rho.

Its normalized contacts are `(0,h)` and `(f,1)`; put `beta=1-f`.
Thus

    a=b+h(r-b),       k=h*rho,
    c=r+f(1-r),       d=1-beta(1-rho).                  (1)

In particular `Omega<=w`, `rho<=1-Omega/w`, and
`h<=1-s/Omega`, the last inequality following from the actual CHF
clearance. The normalized threshold is `t=s/Omega`.

The point X is inside both BCH and BCF. Also

    bq>=3s,       [BHC],[BFC]>=3s.                      (2)

The empty-ear argument in TYPE_II.md gives P inside DEH and X above EH.
For later arithmetic retain its slightly stronger rational version:

    [EBH] < 1-2s*sqrt(3/k5) < 5563/25000.              (3)

Indeed `sqrt(2)>7071/5000` gives `k5<429/2500`, and
`3/(429/2500)>(209/50)^2`. Thus the rightmost bound in (3) is
`1-(209/25)s`. In particular EBH contains no further actual point.

The endpoint-five theorem gives `Omega>=s/k5`. Since

    (141421/100000)^2<2,
    k5<8579/50000,
    (8579/50000)(271/500)<s,

we have the useful strict bounds

    Omega>0.542,       b<0.458.                        (4)

No auxiliary vertex is treated as an actual configuration point.

## 2. The left point is above CE

The three fan clearances of P in DBE are at least s. Their barycentric
description is a smaller closed triangle: each barycentric coordinate
of P is at least `s/(bq)`. The affine function

    -[ECP]=lambda+q p-y

has values `-q,0,lambda+qb` at D,E,B. Its maximum on that smaller
triangle is therefore at the vertex nearest B, whose coordinates are

    p=b-2s/q,       y=s(2-q)/(bq).

Consequently

    -[ECP] <= N(b,q)
      :=1-q+bq-2s-s(2-q)/(bq).                         (5)

For fixed q, N increases strictly with b. Use the convenient weaker
bound `b<B=23/50`, and put

    C0=1-2s+s/B=5843/5750,
    R0=2s(1-B)/B=2511/11500.

AM–GM gives

    N(b,q) <= C0-(1-B)q-2s/(Bq) <= C0-2sqrt(R0) < s.

The last strict inequality follows by squaring positive quantities:

    4R0-(C0-s)^2=11183711/529000000>0.

Since E,C,P are actual, their unsigned area is at least s. Thus

    [ECP]>=s.                                         (6)

The entire right side triangle is below CE, apart from C. Hence X and
F are below CE. Since `0<p<b<c`, (6) also puts P above EF. Its left
side placement puts it below DF. We have proved that P is inside DEF
as well as inside DBE, DEH and DCE.

In particular P is above CE and X below it, with `p,u>0`. Comparing
their slopes from E gives `[EPX]<0`, hence `[EPX]<=-s`.

## 3. A complete rational box

We provide the details of every bound used by the printed polynomials.
First `[CHF]<=1-a` gives `a<=1-s=0.907`. From (1) and (4),

    k <= J(b):=(1-s/Omega0)(1-Omega0/(1-b)).

For fixed b, the preceding product decreases with Omega: its derivative
is `s/Omega^2-1/(1-b)<0`, since
`s(0.721)<(0.542)^2`. Also `bJ(b)` decreases for `b>=0.279`, because
its derivative has the sign of `1-Omega0/(1-b)^2<0`.

The actual clearance `[EBH]=lambda(a-b)+bk>=s` now supplies two short
bootstrap steps. If `b>=b0` and `a<=a0`, then

    lambda >= (s-b0 J(b0))/(a0-b0).

The exact values needed are

    b0=.279, a0=.907: 13919217/245411096 > .056,
    b0=.295, a0=.907: 2789213/46770264   > .059.

The first line and `b(1-lambda)>=3s` give b>.295; the second gives
b>.296. Therefore `t=s/Omega>93/704`.

### Bounds for the normalized contacts

The central endpoint-five calculation in TYPE_II.md, Section 1 gives

    t <= G(m):=m(1-m)/(2-m),       m=min(h,beta).        (7)

The function G decreases on `[3/4,1]`, as its derivative has numerator
`m^2-4m+2`. Both normalized actual anchor clearances
`h(1-beta), beta(1-h)>=t` are available.

Suppose `n=max(h,beta)>=.836`. Then
`m>=t/(1-n)>m0=(93/704)/.164=11625/14432>3/4`. But

    93/704-G(m0)=42687/45235136>0,

contradicting (7). Thus h,beta<.836. In particular d>.164, and (1)
gives the additional affine bound `a<.836+.164b`.

We also need the stronger physical bound a<.885. Suppose instead
a>=.885, and put `epsilon=.115`. From `a<=b+hw` we obtain
`h>=1-epsilon/w`; the CHF clearance then gives
`beta>=s/epsilon`. Both lower bounds exceed 3/4, since w>.542.
If `beta<=h`, (7) contradicts

    93/704-G(s/epsilon)=24831/11091520>0.

If `h<=beta`, monotonicity of G instead gives

    s/w <= G(1-epsilon/w)
         =epsilon(w-epsilon)/(w(w+epsilon)).

Rearranging would require
`w>=epsilon(epsilon+s)/(epsilon-s)=299/275>1`, again impossible.
This proves a<.885.

The same EBH bootstrap, now with `b0=.296,a0=.885`, gives

    lambda>872211/14046472>.062,
    b>3s/.938>.297,
    k<J(.297)=72289/381026<.19.

Equation (1) and (4) give `c>=r>=b+Omega>.839`. From (2),
`d<=1-3s/(1-b)<.604`, and `a>=b+3s>.576`.

### Coordinates of P and X

The left fan and (6) give

    p>=s/q,          p<=b-2s/q,
    y<=1-(p+s)/b,    y>=lambda+q p+s.

Using the bounds just proved yields
`.099<p<.26` and `.247<y<.581`.

For completeness, a stronger upper bound on lambda comes from the
same inequalities. Substitute `p>=s/q` in the compatibility of
`y>=lambda+q p+s` and `y<=1-(p+s)/b` to obtain

    bq^2-s(2b+1)q-s>=0.

Here `q>=3s/b>2s`, so replacing b by .458 increases the left side.
The resulting convex quadratic has value `-s` at zero and value
`-15373/100000000` at `q=.685`. It is negative throughout that interval.
Thus q>.685 and lambda<.315.

For X, the BHX and BCX clearances imply

    v>=s/(a-b)>s/.588>.158,
    u>=b+(1-b)v+s.

More precisely, the latter expression is at least
`b+(1-b)s/(.885-b)+s`, which increases with b. Its value at .297 is
greater than .501. The FCX clearance implies
`(1-d)(1-u)>=s`, so `u<1-s/.836<.889`. Finally
`v<(.889-.297-s)/.703<.71`.

We have proved the following single closed box, valid before any of the
line cases below. Replacing strict bounds by these closed bounds only
enlarges the domain:

| Variable | Lower bound | Upper bound |
|---|---:|---:|
| b | .297 | .458 |
| lambda | .062 | .315 |
| a | .576 | .885 |
| k | 0 | .19 |
| c | .839 | 1 |
| d | .164 | .604 |
| p | .099 | .26 |
| y | .247 | .581 |
| u | .501 | .889 |
| v | .158 | .71 |

Call this box (8). Besides its coordinate bounds, the following affine
inequalities are available:

    y-p>=s,             a<=.836+.164b,
    a-b>=3s,            c-b>=.542,
    u-b>=.178.                                        (9)

For the last use `u-b>=wv+s`, with `w>.542,v>.158`.

## 4. The line catalogue and the nonnegative factors

The signs at D,C,B of the oriented line P to X are respectively `+,+,-`.
For D and C this follows from the opposite sides of the actual dividing
chords DB and BC; at B it also follows directly from `p<b<u` and y,v>0.
The sign at E is negative by Section 2. A line crosses the boundary of
a strictly convex polygon at most twice. In the cyclic hexagon order
D,E,B,H,F,C, the remaining H/F signs therefore have precisely the
three possibilities

    --,       -+,       ++.                           (10)

There are no zero signs because all three-point areas are positive.
The following containments follow by checking their three oriented edges:

| Line sign | Forced containment |
|---|---|
| EPX negative | P inside DEX |
| HPX positive | X inside BHP |
| HPX negative | X inside CHP |
| FPX positive | X inside BFP |
| FPX negative | X inside CFP |
| HPX negative, FPX positive | X inside HFP |

Each containing triangle in this table has unsigned doubled area at
least 3s. If DHX is negative, X and P are both inside DEH, whose area
is therefore at least `Gamma2*s>K*s`. If DFX is negative and EFX
positive, the same argument applies to DEF. If EFX is negative,
X is inside EHF, whose area is at least 3s.

These facts give the following six sufficient contradiction rows. Rows
D–F are used after A–C, so their DHX sign is already known:

| Row | H/F signs on PX | Additional signs | Additional occupied triangle |
|---|---|---|---|
| A | ++ | none | BHP and BFP each have area at least 3s |
| B | -- | DHX negative | DEH has area at least K*s |
| C | -+ | DHX negative | DEH has area at least K*s |
| D | -+ | DHX positive, DFX negative, EFX negative | EHF has area at least 3s |
| E | -+ | DHX positive, DFX negative, EFX positive | DEF has area at least K*s |
| F | -- | DHX positive, DFX negative, EFX positive | DEF has area at least K*s |

Here and in the printed tables, a bare signed triangle denotes its
clearance factor:

    +UVW = [UVW]-s,       -UVW = -[UVW]-s.

The notation `+UVWo3`, for example, means `[UVW]-3s`; more generally
the suffix `oq` changes s to q*s. Thus `+DEHo149/20` is `[DEH]-K*s`.
All such factors used in a row are nonnegative by the preceding catalogue.

The shared positive anchor factors are all triples in the cyclic order
D,E,B,H,F,C. The shared signs for P and X are listed explicitly here;
each entry is a two-anchor prefix followed by the indicated point:

| Point | Positive prefixes | Negative prefixes |
|---|---|---|
| P | DE, EB, EH, EF, EC, BH, BF, BC, HF, HC, FC | DB, DH, DF, DC |
| X | DE, DB, EB, EH, BH, BF, HF, HC, FC | DC, EC, BC |

These signs follow from the convex hexagon and the containments established
above: P is inside DBE, DEH, DEF and DCE, while X is inside BCH and BCF
and above EH. The three shared occupancy factors are `+DEBo3`,
`+BHCo3`, `+BFCo3`. Also `EBHcap=5563/25000-[EBH]` is nonnegative
by (3).

The affine factors `L0,...,L19` are the lower and upper clearances in
(8), in the displayed variable order: `L(2i)=x_i-lo_i` and
`L(2i+1)=hi_i-x_i`. The remaining affine factors are

    L20=1-lambda-s,       L21=1-s,
    L22=1-k-s,            L23=1-d-s,
    L24=1-y-s,            L25=1-v-s,
    L26=y-p-s,            L27=.836+.164b-a,
    L28=a-b-3s,           L29=c-b-.542,
    L30=u-b-.178.                                      (11)

The first six are actual triangle clearances; the last five were proved
in (9). Products of these factors with nonnegative triangle factors
remain nonnegative.

## 5. The seven affine squares used in row F

Let `z_i=x_i-lo_i` in the order of box (8). For each coefficient row
`(r0,r1,...,r10)` below, define the nonnegative polynomial

    Sj=(r0+r1*z0+...+r10*z9)^2.                         (12)

No sign condition on the affine expression itself is required. The
other five contradiction rows do not use these squares.

| Square | Exact coefficient row |
|---|---|
| S0 | `(1, 1, 5, 2, -3, 0, -8, 1, 5, -5, -4)` |
| S1 | `(2, -3, -2, 4, 0, 0, -5, 0, 8, -5, -7)` |
| S2 | `(1, -1, 2, 1, 0, 0, -4, 0, 4, 1, -8)` |
| S3 | `(2, -2, 5, 0, -3, 0, -8, 1, 0, -8, 2)` |
| S4 | `(1, 1, 6, 0, 2, 0, -4, 0, 4, 0, -8)` |
| S5 | `(1, -1, 0, 2, -1, 0, 7, 0, -4, 0, -8)` |
| S6 | `(0, 2, 1, 3, -4, 0, -8, 1, 3, 0, -5)` |

## 6. The six fixed cubic contradictions

For each row of the preceding catalogue, sum the following nonnegative
factors with the displayed positive integer weights. Every factor is
defined in Sections 4–5. The resulting polynomial is denoted W.

Shift the ten variables by their lower endpoints in (8), writing
`z_i=x_i-lo_i`, with `0<=z_i<=hi_i-lo_i`. If the exact expansion is
`W=sum c_e z^e`, then

    W <= c_0 + sum_{e nonempty, c_e>0} c_e product_i (hi_i-lo_i)^(e_i).

Dropping a nonpositive nonconstant monomial only increases W. The right
side is strictly negative in every row. This is a fixed polynomial
inequality on the complete displayed box, not a finite point check.

| Row | Terms | Monomials | Positive nonconstant coefficients | Exact upper bound |
|---|---:|---:|---:|---|
| A | 29 | 41 | 18 | `-239111337/500000000` |
| B | 54 | 51 | 20 | `-135734826351/125000000000` |
| C | 56 | 53 | 23 | `-1373651083/7812500000` |
| D | 35 | 33 | 13 | `-103311919/1000000000` |
| E | 71 | 63 | 32 | `-50027348757/50000000000` |
| F | 179 | 172 | 65 | `-423045061980968309/7812500000000000` |

### Row A

| Weight | Nonnegative factor |
|---:|---|
| 14 | `L0*L7` |
| 3 | `L5*L10` |
| 11 | `L5*L14` |
| 1 | `L7*L9` |
| 10 | `L9*L18` |
| 2 | `L9*L22` |
| 10 | `L10*L30` |
| 10 | `L12*L19` |
| 3 | `L9*L14*L18` |
| 11 | `L15*L15*L17` |
| 4 | `+BHF` |
| 4 | `+BHF*L13` |
| 4 | `+BHF*L16` |
| 8 | `-DBP` |
| 1 | `-DBP*L10` |
| 15 | `-DBP*L14` |
| 1 | `-DBP*L18` |
| 4 | `+BFP*L5` |
| 11 | `+BHX` |
| 12 | `+BFX` |
| 4 | `+BFX*L4` |
| 2 | `+BFX*L13` |
| 1 | `+BFX*L26` |
| 8 | `-BCX` |
| 2 | `-BCX*L14` |
| 1 | `+FCX*L15` |
| 14 | `+HPX` |
| 4 | `+HPX*L29` |
| 4 | `+BFPo3*L16` |

### Row B

| Weight | Nonnegative factor |
|---:|---|
| 16 | `L0*L7` |
| 6 | `L2*L27` |
| 5 | `L6*L29` |
| 2 | `L7*L14` |
| 3 | `L9*L18` |
| 10 | `L10*L27` |
| 12 | `L14*L29` |
| 2 | `L19*L27` |
| 4 | `L0*L19*L22` |
| 11 | `L0*L19*L24` |
| 5 | `L5*L14*L25` |
| 3 | `L7*L12*L18` |
| 2 | `L7*L14*L30` |
| 3 | `L9*L18*L20` |
| 3 | `L10*L14*L27` |
| 5 | `L14*L20*L29` |
| 2 | `+EBH*L8` |
| 2 | `+EBH*L13` |
| 10 | `+EBH*L24` |
| 2 | `+EBF*L27` |
| 2 | `+EHF*L0` |
| 2 | `+EHF*L26` |
| 15 | `+BHF` |
| 4 | `+HFC*L13` |
| 3 | `+HFC*L19` |
| 1 | `+HFC*L26` |
| 17 | `-DBP*L2` |
| 15 | `-DBP*L10` |
| 2 | `-DBP*L19` |
| 16 | `+EBP` |
| 1 | `+ECP*L19` |
| 1 | `+ECP*L25` |
| 2 | `+ECP*L29` |
| 13 | `+HFP*L16` |
| 8 | `+BHX*L14` |
| 4 | `-BCX*L22` |
| 13 | `-BCX*L24` |
| 6 | `+HFX*L13` |
| 7 | `+HCX*L9` |
| 7 | `+FCX*L12` |
| 1 | `+DEBo3*L15` |
| 2 | `+BHCo3*L12` |
| 3 | `+CPX*L10` |
| 3 | `-EPX*L10` |
| 13 | `-HPX*L9` |
| 15 | `-FPX` |
| 13 | `-FPX*L4` |
| 3 | `-FPX*L20` |
| 3 | `-FPX*L22` |
| 12 | `-DHX` |
| 7 | `-DHX*L8` |
| 6 | `-DHX*L14` |
| 3 | `-DHX*L23` |
| 7 | `-DHX*L26` |

### Row C

| Weight | Nonnegative factor |
|---:|---|
| 4 | `L0*L11` |
| 2 | `L5*L15` |
| 8 | `L6*L30` |
| 12 | `L7*L12` |
| 4 | `L9*L18` |
| 2 | `L15*L27` |
| 9 | `L18*L27` |
| 11 | `L0*L2*L11` |
| 4 | `L0*L11*L18` |
| 7 | `L0*L11*L22` |
| 6 | `L0*L11*L24` |
| 1 | `L2*L23*L27` |
| 1 | `L5*L10*L20` |
| 16 | `L5*L10*L24` |
| 3 | `L5*L15*L20` |
| 8 | `L5*L18*L24` |
| 3 | `L6*L24*L29` |
| 8 | `L6*L24*L30` |
| 13 | `L7*L9*L24` |
| 2 | `L9*L14*L20` |
| 2 | `L9*L22*L22` |
| 3 | `L18*L20*L27` |
| 5 | `+EBH` |
| 3 | `+EBH*L23` |
| 3 | `+EBH*L25` |
| 1 | `+HFC` |
| 1 | `+HFC*L2` |
| 16 | `+HFC*L24` |
| 3 | `+HFC*L25` |
| 1 | `+DEP*L7` |
| 2 | `+DEP*L22` |
| 7 | `+DEP*L28` |
| 6 | `-DBP*L2` |
| 12 | `-DBP*L6` |
| 2 | `+EBP` |
| 6 | `+EBP*L23` |
| 7 | `+ECP*L28` |
| 18 | `+BFX` |
| 2 | `+BFX*L20` |
| 3 | `+BFX*L22` |
| 7 | `-BCX` |
| 4 | `-BCX*L10` |
| 3 | `-BCX*L20` |
| 11 | `-BCX*L24` |
| 8 | `+HCX*L12` |
| 3 | `+DEBo3*L18` |
| 4 | `+DEBo3*L23` |
| 6 | `+DEBo3*L24` |
| 33 | `-HPX` |
| 2 | `-HPX*L20` |
| 14 | `+FPX` |
| 2 | `+FPX*L20` |
| 15 | `-DHX` |
| 3 | `-DHX*L20` |
| 3 | `-DHX*L23` |
| 8 | `-DHX*L26` |

### Row D

| Weight | Nonnegative factor |
|---:|---|
| 7 | `L1*L3` |
| 1 | `L9*L10` |
| 18 | `L9*L18` |
| 4 | `L0*L2*L11` |
| 2 | `L0*L11*L11` |
| 2 | `L0*L11*L17` |
| 9 | `L0*L11*L18` |
| 6 | `L1*L3*L17` |
| 1 | `L2*L9*L18` |
| 1 | `L3*L9*L25` |
| 5 | `L3*L17*L29` |
| 2 | `L3*L23*L29` |
| 14 | `L9*L10*L18` |
| 1 | `L9*L16*L18` |
| 1 | `L9*L17*L25` |
| 14 | `L10*L10*L30` |
| 1 | `L11*L11*L11` |
| 5 | `L11*L11*L19` |
| 1 | `L16*L25*L28` |
| 11 | `+EBX*L9` |
| 33 | `+BFX` |
| 12 | `+BFX*L10` |
| 8 | `+BFX*L16` |
| 12 | `+BFX*L20` |
| 10 | `-BCX` |
| 21 | `-BCX*L10` |
| 14 | `+DEBo3*L11` |
| 19 | `+DEBo3*L18` |
| 4 | `+DEBo3*L23` |
| 1 | `+DHX*L16` |
| 14 | `-DFX*L3` |
| 16 | `-EFX` |
| 5 | `-EFX*L1` |
| 2 | `-EFX*L23` |
| 6 | `-EFX*L30` |

### Row E

| Weight | Nonnegative factor |
|---:|---|
| 3 | `L0*L7` |
| 2 | `L2*L5` |
| 9 | `L7*L12` |
| 35 | `L12*L19` |
| 18 | `L15*L29` |
| 1 | `L0*L2*L11` |
| 4 | `L0*L7*L14` |
| 1 | `L0*L7*L22` |
| 30 | `L0*L7*L25` |
| 3 | `L1*L10*L18` |
| 19 | `L1*L15*L25` |
| 29 | `L2*L5*L25` |
| 3 | `L2*L20*L27` |
| 1 | `L2*L22*L27` |
| 3 | `L3*L6*L30` |
| 5 | `L5*L6*L18` |
| 6 | `L5*L15*L25` |
| 6 | `L6*L14*L30` |
| 1 | `L6*L23*L29` |
| 3 | `L7*L9*L25` |
| 10 | `L9*L14*L18` |
| 17 | `L9*L20*L20` |
| 1 | `L11*L11*L28` |
| 10 | `L15*L25*L29` |
| 2 | `+EBH` |
| 13 | `+EBH*L8` |
| 13 | `+EBH*L17` |
| 3 | `+EBH*L20` |
| 1 | `+EBH*L22` |
| 26 | `+EBH*L25` |
| 2 | `+BHF` |
| 1 | `+BHF*L14` |
| 4 | `+BHF*L16` |
| 1 | `+BHF*L20` |
| 1 | `+BHF*L23` |
| 3 | `+BHF*L25` |
| 4 | `+BHC*L9` |
| 1 | `+HFC*L2` |
| 4 | `+HFC*L28` |
| 4 | `+DEP` |
| 8 | `-DBP` |
| 9 | `-DBP*L22` |
| 11 | `-DBP*L23` |
| 4 | `+BHX*L9` |
| 4 | `+BFX*L5` |
| 10 | `+BFX*L15` |
| 26 | `-BCX*L3` |
| 4 | `-BCX*L4` |
| 18 | `-BCX*L14` |
| 1 | `-BCX*L22` |
| 4 | `+HFX` |
| 8 | `+HFX*L0` |
| 1 | `+HFX*L24` |
| 4 | `+HFX*L27` |
| 1 | `+HCX*L11` |
| 3 | `+DEBo3*L2` |
| 4 | `+DHX*L5` |
| 5 | `+DHX*L6` |
| 2 | `+DHX*L10` |
| 5 | `+DHX*L14` |
| 3 | `+DHX*L20` |
| 3 | `-EPX*L9` |
| 3 | `-EPX*L16` |
| 38 | `+FPX` |
| 3 | `+FPX*L16` |
| 11 | `-DFX*L15` |
| 35 | `+EFX` |
| 3 | `+EFX*L4` |
| 3 | `+EFX*L13` |
| 9 | `+EFX*L28` |
| 3 | `+EFX*L30` |

### Row F

| Weight | Nonnegative factor |
|---:|---|
| 12834 | `L9*L17` |
| 4349 | `L9*L18` |
| 21397 | `L9*L24` |
| 681 | `L0*L0*L5` |
| 2600 | `L0*L0*L17` |
| 40004 | `L0*L0*L19` |
| 1018 | `L0*L0*L27` |
| 26088 | `L0*L1*L2` |
| 18192 | `L0*L2*L5` |
| 29534 | `L0*L2*L7` |
| 43001 | `L0*L2*L17` |
| 4703 | `L0*L2*L29` |
| 27543 | `L0*L5*L7` |
| 4366 | `L0*L5*L16` |
| 51703 | `L0*L7*L27` |
| 5729 | `L0*L9*L15` |
| 2076 | `L0*L9*L18` |
| 9126 | `L0*L9*L24` |
| 4321 | `L0*L10*L26` |
| 21995 | `L0*L10*L27` |
| 7050 | `L0*L16*L17` |
| 853 | `L0*L18*L30` |
| 2500 | `L0*L27*L27` |
| 157 | `L1*L5*L12` |
| 17112 | `L1*L6*L30` |
| 66 | `L1*L12*L12` |
| 4369 | `L2*L2*L27` |
| 27233 | `L2*L3*L12` |
| 5404 | `L2*L5*L10` |
| 58560 | `L2*L5*L27` |
| 1415 | `L2*L6*L17` |
| 915 | `L2*L6*L28` |
| 3507 | `L2*L7*L9` |
| 732 | `L3*L5*L9` |
| 3140 | `L3*L5*L12` |
| 6026 | `L3*L6*L9` |
| 3631 | `L3*L12*L18` |
| 4694 | `L5*L5*L15` |
| 6071 | `L5*L6*L10` |
| 409 | `L5*L6*L17` |
| 173 | `L5*L7*L12` |
| 1497 | `L5*L7*L14` |
| 4503 | `L5*L10*L10` |
| 285 | `L5*L12*L28` |
| 5099 | `L5*L14*L19` |
| 1541 | `L5*L14*L26` |
| 3291 | `L5*L14*L30` |
| 1834 | `L5*L16*L16` |
| 2934 | `L5*L16*L27` |
| 2994 | `L6*L6*L17` |
| 374 | `L6*L6*L28` |
| 3805 | `L6*L6*L29` |
| 768 | `L6*L7*L9` |
| 1781 | `L6*L9*L28` |
| 2861 | `L6*L11*L12` |
| 2395 | `L6*L17*L19` |
| 7442 | `L6*L17*L26` |
| 5134 | `L6*L17*L30` |
| 24962 | `L6*L19*L29` |
| 3698 | `L6*L28*L30` |
| 4166 | `L7*L9*L10` |
| 4622 | `L7*L9*L14` |
| 2820 | `L7*L9*L26` |
| 19648 | `L7*L9*L27` |
| 60 | `L7*L12*L12` |
| 883 | `L7*L12*L14` |
| 8674 | `L9*L11*L25` |
| 60568 | `L9*L12*L18` |
| 4566 | `L9*L14*L15` |
| 3667 | `L9*L17*L22` |
| 25817 | `L9*L18*L22` |
| 10445 | `L9*L18*L24` |
| 3334 | `L9*L19*L30` |
| 3461 | `L9*L22*L27` |
| 10445 | `L9*L23*L24` |
| 60568 | `L10*L12*L30` |
| 3334 | `L10*L17*L30` |
| 27824 | `L10*L27*L27` |
| 119 | `L11*L12*L12` |
| 75 | `L12*L12*L19` |
| 45 | `L12*L12*L28` |
| 1340 | `L12*L14*L15` |
| 1285 | `L12*L14*L19` |
| 5441 | `L12*L18*L19` |
| 4566 | `L14*L14*L17` |
| 1656 | `L14*L14*L27` |
| 1173 | `L27*L27*L27` |
| 15021 | `+EBH` |
| 22681 | `+EBH*L1` |
| 7444 | `+EBH*L2` |
| 57386 | `+EBH*L5` |
| 1331 | `+EBH*L6` |
| 2790 | `+EBH*L13` |
| 1467 | `+EBH*L17` |
| 10088 | `+EBH*L23` |
| 9621 | `+EBH*L25` |
| 6838 | `+EBH*L26` |
| 732 | `+EBH*L29` |
| 6473 | `+BHF*L0` |
| 8118 | `+BHF*L2` |
| 1580 | `+BHF*L6` |
| 4897 | `+BHF*L10` |
| 13460 | `+BHF*L16` |
| 2519 | `+BHF*L18` |
| 17787 | `+BHF*L27` |
| 8365 | `+DEP*L11` |
| 54859 | `+DEP*L17` |
| 3971 | `+DEP*L29` |
| 21563 | `-DBP*L0` |
| 50061 | `-DBP*L2` |
| 1281 | `-DBP*L7` |
| 49312 | `-DBP*L9` |
| 18999 | `-DBP*L10` |
| 17998 | `-DBP*L16` |
| 287 | `-DBP*L27` |
| 24096 | `+EBP` |
| 27241 | `+EBP*L2` |
| 614 | `+EBP*L13` |
| 54859 | `+EBP*L17` |
| 3557 | `+EBP*L18` |
| 8119 | `+EBP*L22` |
| 8485 | `+EBP*L23` |
| 7263 | `+EBP*L24` |
| 6533 | `+EBP*L28` |
| 3971 | `+EBP*L29` |
| 36109 | `+ECP*L1` |
| 1855 | `+ECP*L6` |
| 120 | `+ECP*L12` |
| 45055 | `-BCX*L0` |
| 7162 | `-BCX*L7` |
| 21354 | `-BCX*L10` |
| 10807 | `-BCX*L12` |
| 25278 | `-BCX*L15` |
| 6498 | `-BCX*L16` |
| 7500 | `-BCX*L18` |
| 12894 | `-BCX*L20` |
| 9006 | `-BCX*L22` |
| 14069 | `-BCX*L27` |
| 26579 | `+HFX` |
| 1415 | `+HFX*L2` |
| 2994 | `+HFX*L6` |
| 9105 | `+HFX*L13` |
| 882 | `+HFX*L16` |
| 730 | `+HFX*L23` |
| 2395 | `+HFX*L25` |
| 2873 | `+HFX*L26` |
| 7103 | `+HFX*L27` |
| 4252 | `+HFX*L30` |
| 230 | `+HCX*L12` |
| 3300 | `+FCX*L9` |
| 12329 | `+DEBo3*L7` |
| 9158 | `+DPX*L9` |
| 2996 | `+DHX*L5` |
| 13102 | `+DHX*L9` |
| 9158 | `-HPX*L9` |
| 54664 | `-FPX` |
| 68138 | `-FPX*L0` |
| 9158 | `-FPX*L4` |
| 4569 | `-FPX*L6` |
| 4566 | `-FPX*L14` |
| 10445 | `-FPX*L23` |
| 12900 | `-DFX` |
| 56327 | `-DFX*L0` |
| 1415 | `-DFX*L2` |
| 8294 | `-DFX*L6` |
| 3300 | `-DFX*L8` |
| 54662 | `-DFX*L13` |
| 8467 | `-DFX*L16` |
| 19850 | `-DFX*L23` |
| 2395 | `-DFX*L25` |
| 17884 | `-DFX*L26` |
| 20205 | `-DFX*L27` |
| 33 | `S0` |
| 73 | `S1*L28` |
| 144 | `S2*L1` |
| 141 | `S3*L0` |
| 94 | `S4*L5` |
| 88 | `S5*L12` |
| 7 | `S6*L13` |

## 7. Complete consequence for the eight-point core

Row A removes the `++` H/F pattern. Rows B and C then force
`[DHX]>0` in both remaining patterns. If `[DFX]<0`, the `--`
pattern has `[EFX]>0` because X lies inside CFP, whereas P and C
are both above EF. Its contradiction is row F. The `-+` pattern
is covered by rows D and E according to the two possible EFX signs.
Thus `[DFX]>0` universally.

The point P is inside DEF, and X is now inside DFC. Their connecting
segment crosses the actual side DF internally. Since `[DPX]>0`,
this forces `[FPX]<0`; the convex hexagon catalogue then also gives
`[HPX]<0`. All signs have the actual clearance at least s.

In particular

    X is inside DCH, DCF and CFP,
    [DHX], [DFX], [EFX] >= s,
    [HPX], [FPX], [EPX] <= -s.                         (14)

The exact identity `[DFX]+[FCX]=v-d` gives

    v-d>=2s,     v>7/20,     u>159/250.                 (15)

For the last inequality use `[BCX]<=-s`, b>297/1000 and v>7/20:
`u>b+(1-b)v+s>(297/1000)+(703/1000)(7/20)+s=12721/20000`.

This proves the stated eight-point placement theorem. It does not alone
exclude the row (2,2,3): its two central points still have to be used.
The exact Fraction checker [check_type_ii_223_core.py](check_type_ii_223_core.py)
expands every printed cubic and checks all six rational upper bounds.
