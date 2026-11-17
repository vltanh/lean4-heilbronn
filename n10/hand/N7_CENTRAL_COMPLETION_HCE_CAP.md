# N7 central: two HCE occupants give AEF capacity two

Use the actual contacts and free points

    A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e),
    F=(f,1), H=(0,h), G=(g,z), O=(x,y), P=(u,v)

of [N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md). All ten points lie
in the closed unit square; ABCDEFH is the actual strictly convex
heptagon. Every distinct actual triangle has unsigned doubled area
at least s=93/1000. The contact orders are

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    a<=e<=h, b<=f<=c.

The point G lies strictly inside HABC with ACG,HBG>0; O,P lie
strictly inside HCEF. The two weak contact roots are CA: ac>=bh
and CB: ac<=bh, covering equality and both strict alternatives.

**Lemma.** If actual HCE contains O and P, then

    AEF <= 814603/1000000 in CA,
    AEF <= 164637/200000 in CB.

Both bounds are strictly below (4427/500)s=411711/500000. Thus
actual AEF has capacity two. This is a local implication; it does
not exclude either central root.

## 1. Premises and interval bounds

The actual two-interior-point cost gives HCE>=T=13857/20000.
Since HCE<=h, we have h>=T. The common setup gives

    541/1000<=c<=883/1000, d>=3/25,
    e(1-b)>=4s,
    CA: a>=139/1000, b>=108/1000,
    CB: a>=122/1000, b>=123/1000.

The first three bounds follow from the cited root boxes, actual CDE
clearance and the proved endpoint-five inequalities. More precisely,
CDE clearance is used below as (1-c)(e-d)>=s; the bound d>=3/25
is the common weakening of the two proved d floors. The ordered
endpoint inequality of [ONE_LOWER_POINT.md](ONE_LOWER_POINT.md),
Section 2, is

    ca(h-a)>=s(h+a) in CA,
    hb(c-b)>=s(c+b) in CB.                         (1)

Set B=hc and R=a/h in CA, R=b/c in CB. The divisors h,c are
positive and 0<R<1. In both roots (1) says

    B R(1-R)>=s(1+R).                              (2)

For a printed rectangle c in [cl,cu], h in [hl,hu], put M=cu*hu.
Its printed ratio floor r satisfies the exact rational tests

    0<r<1/2,
    M(1-2r)>=s,
    M r(1-r)<s(1+r).                               (3)

Because B<=M and R(1-R)>0, (2) gives phi(R)>=0 for
phi(t)=M t(1-t)-s(1+t). On [0,r],
phi'(t)=M(1-2t)-s>=0, while phi(r)<0. Therefore R>r.
The printed lower bounds a0,b0 satisfy

    CA: a0<=max(139/1000,hl*r), b0=108/1000,
    CB: a0=122/1000, b0<=max(123/1000,cl*r).

Hence actual a>=a0,b>=b0 and f>=b0.

The three following bounds are actual consequences:

    e>=4s/(1-b0),
    e>=3/25+s/(1-cl),
    e>=hu-(hu-T)/cl.                              (4)

The first follows from e(1-b)>=4s, and the second from actual
CDE=(1-c)(e-d)>=s. Their denominators are positive. For the last,
HCE=h-c(h-e)>=T gives e>=E(h,c):=h-(h-T)/c. The literal identity

    E(h,c)-E(hu,cl)
      =(h-T)(c-cl)/(c*cl)+(hu-h)(1-cl)/cl>=0       (5)

uses h>=T, c>=cl>0, hu>=h and cl<1. Each printed e0 is at most
the maximum of the three bounds in (4) and a0. Thus e>=e0>=a0.

The actual contact identity is

    AEF=1-a-f(e-a).

For U0=1-a0-b0(e0-a0), its exact remainder is

    U0-AEF=(a-a0)(1-f)+f(e-e0)+(f-b0)(e0-a0)>=0.   (6)

Every factor is nonnegative. Each printed U is at least U0 and
strictly below (4427/500)s. This proves the stated capacity.

## 2. Complete rational table

Each finite decimal in the following table is an exact rational.
All quantities satisfy (3)--(6), with no numerical optimum used.
The CA cover first splits c at .712, then splits the lower-c part
at h=.846425. The CB c intervals are consecutive from .541 to .883;
every CB h interval is [T,1]. Shared endpoints may be included twice.
These closed rectangles cover the entire stated root box.

| Row | c interval | h interval | r | a0 | b0 | e0 | U |
| --- | --- | --- | --- | --- | --- | --- | --- |
| CA1 | [0.541,0.712] | [T,0.846425] | 0.266388 | 0.184566 | 0.108 | 0.562552 | 0.774612 |
| CA2 | [0.541,0.712] | [0.846425,1] | 0.193157 | 0.163492 | 0.108 | 0.432255 | 0.807482 |
| CA3 | [0.712,0.883] | [T,1] | 0.13946 | 0.139 | 0.108 | 0.568609 | 0.814603 |
| CB1 | [0.541,0.562375] | [T,1] | 0.323604 | 0.122 | 0.175069 | 0.450946 | 0.820412 |
| CB2 | [0.562375,0.573062] | [T,1] | 0.304161 | 0.122 | 0.171052 | 0.453834 | 0.82124 |
| CB3 | [0.573062,0.58375] | [T,1] | 0.288535 | 0.122 | 0.165348 | 0.464019 | 0.821448 |
| CB4 | [0.58375,0.594437] | [T,1] | 0.275339 | 0.122 | 0.160729 | 0.473832 | 0.821451 |
| CB5 | [0.594437,0.605125] | [T,1] | 0.263863 | 0.122 | 0.156849 | 0.483292 | 0.821332 |
| CB6 | [0.605125,0.6265] | [T,1] | 0.24455 | 0.122 | 0.147983 | 0.492418 | 0.823185 |
| CB7 | [0.6265,0.647875] | [T,1] | 0.228647 | 0.122 | 0.143247 | 0.509736 | 0.822458 |
| CB8 | [0.647875,0.66925] | [T,1] | 0.215146 | 0.122 | 0.139387 | 0.525911 | 0.821701 |
| CB9 | [0.66925,0.690625] | [T,1] | 0.203448 | 0.122 | 0.136157 | 0.541053 | 0.820944 |
| CB10 | [0.690625,0.712] | [T,1] | 0.193157 | 0.122 | 0.133399 | 0.555257 | 0.820204 |
| CB11 | [0.712,0.883] | [T,1] | 0.13946 | 0.122 | 0.123 | 0.568609 | 0.823068 |

The greatest CA ceiling is .814603, whose gap below (4427/500)s
is .008819. The greatest CB ceiling is .823185, whose gap is
.000237. Three named actual AEF occupants would force its area
at least (4427/500)s, so both strict gaps give capacity two.

## 3. Verification status

The source-complete exact reader
[N7_CENTRAL_COMPLETION_HCE_CAP_check.py](N7_CENTRAL_COMPLETION_HCE_CAP_check.py)
reads the fourteen rows above, checks their complete rectangle cover,
and verifies every rational inequality and every stated contact,
ratio-normalization and remainder identity. It does not import a
discovery engine or optimization code. The author reader passes all seven algebra identities, fourteen literal
rows and fifteen coverage atoms. Independent mathematical and arithmetic
review passes. The separate
[audit_n7_hce_cap.py](audit_n7_hce_cap.py) imports no author or
discovery module. It expands seven actual-coordinate identities with
fresh SymPy arithmetic, checks every row with Fraction arithmetic,
and independently covers the complete closed rectangle by interval
unions on thirteen c strips. It rejects four corruptions: an omitted
rectangle, a changed ratio floor, a changed e floor, and a ceiling
equal to the forbidden three-occupant threshold.

Independent mathematical review verifies the actual source premises,
the ratio substitution and monotonicity on [0,r], all positive
denominators, the HCE comparison direction, and every nonnegative
factor in (6). This acceptance proves capacity two for AEF under the
stated HCE occupancy; it does not close a word or central parent.
