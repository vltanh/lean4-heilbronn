# Seven boundary points: the two upper exterior caps cannot both be occupied

This note excludes the entire N7 placement with a free point in each
upper exterior cap. It uses only those two points, the two contacts on
each vertical side, and the single top contact. The other free point
and the two bottom contacts play no role in the inequality.

## 1. A seven-point inequality

Use the actual contacts

    A=(0,a), H=(0,h), D=(1,d), E=(1,e), F=(f,1),

where 0<a<h<1, 0<d<e<1, and 0<f<1. Suppose the actual points

    X=(g,1-epsilon),       Y=(r,1-eta)

lie strictly in the upper exterior caps HF(0,1) and EF(1,1),
respectively. Thus

    0<g<f<r<1,       epsilon,eta>0.

Let t be any positive common lower bound for the unsigned doubled
areas of triangles formed from these seven actual points. We prove

    t <= (5sqrt(5)-11)/2 < 1/11.                     (1)

Define

    q=(f-g)/f,       p=(r-f)/(1-f),

so 0<p,q<1. The actual side-pair triangles AXH and DEY give

    g(h-a)>=t,       (1-r)(e-d)>=t.

Since a,d>=0, this implies

    h>=t/[f(1-q)],       e>=t/[(1-f)(1-p)].           (2)

The actual cap triangles FXH and EFY have fixed opposite signs.
Their positive unsigned doubled areas give exactly

    f[q(1-h)-epsilon]>=t,
    (1-f)[p(1-e)-eta]>=t.

Consequently

    epsilon<=q(1-h)-t/f,
    eta<=p(1-e)-t/(1-f).                             (3)

The third actual triangle FXY has positive determinant

    FXY=fq*eta+(1-f)p*epsilon>=t.                    (4)

Substitute (3) into (4), with their positive coefficients fq and
(1-f)p. Then substitute the lower bounds (2) into the terms being
subtracted. This gives

    t<=pq[1-f*e-(1-f)*h]
          -t[fq/(1-f)+(1-f)p/f]
      <=pq-t[fq/((1-f)(1-p))
                +(1-f)p/(f(1-q))].                 (5)

For clarity, the final simplification groups the f/(1-f) terms by
pq/(1-p)+q=q/(1-p), and groups the other terms by
pq/(1-q)+p=p/(1-q). All denominators are positive.

Divide (5) by pq and rearrange:

    1>=t[1/(pq)
          +(1-f)/(f q(1-q))
          +f/((1-f)p(1-p))].                        (6)

## 2. A one-variable upper bound

Put

    u=sqrt(pq),       v=sqrt((1-p)(1-q)).

The Cauchy--Schwarz inequality gives u+v<=1, and 0<u<1. The last
two positive terms in (6) have product 1/(u^2 v^2). Their sum is
therefore at least 2/(uv), and hence at least 2/[u(1-u)]. Thus

    1>=t[1/u^2+2/(u(1-u))],
    t<=u^2(1-u)/(1+u).                               (7)

The derivative of the last function is

    2u(1-u-u^2)/(1+u)^2.

The function increases up to u=(sqrt(5)-1)/2 and decreases thereafter. Using
u^2+u=1 at this unique interior maximum gives

    max_(0<=u<=1) u^2(1-u)/(1+u)
       =(5sqrt(5)-11)/2.

Finally sqrt(5)<123/55, since 5*55^2=15125<15129=123^2, so this
maximum is strictly below 1/11. This proves (1).

## 3. Complete N7 consequence

In a competitive N7 configuration every unsigned doubled triangle
area is at least s=93/1000>1/11. If both upper caps contained a free
point, those points and A,H,D,E,F would satisfy Section 1 with t=s,
contradicting (1). Therefore at most one upper exterior cap is occupied.

This closes every count with positive numbers of free points in both
upper caps, including the entire former row (1,1,1). Together with
N7_UPPER_OCCUPANCY.md and N7_PLACEMENTS.md, the exhaustive remaining
counts, up to vertical reflection, are now

| Free points in the occupied upper cap | Free points in the other upper cap | Free points in the boundary heptagon |
|---:|---:|---:|
| 0 | 0 | 3 |
| 1 | 0 | 2 |
| 2 | 0 | 1 |

The last row's heptagon-interior point lies below AF when the occupied
cap is the left cap, by N7_UPPER_OCCUPANCY.md. The three displayed rows
are not yet excluded by this note. No assumptions on their pair lines
or on the hull type of their same-cap points have been imposed.

The subsequent N7_SAME_UPPER_CAP.md excludes the last row completely.
The remaining global counts are therefore (0,0,3) and (1,0,2).

The optional checker `check_n7_opposite_upper_caps.py` verifies the
cleared polynomial identity in (5), the derivative and maximum-value
identities, and the exact rational threshold comparisons.
