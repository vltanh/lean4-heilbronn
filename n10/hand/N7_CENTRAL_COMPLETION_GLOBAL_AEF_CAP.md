# N7 central: uniform AEF capacity two

Use the actual normalization

    A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e),
    F=(f,1), H=(0,h), G=(g,z), O=(x,y), P=(u,v)

of [N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md). All ten points
lie in the closed unit square, ABCDEFH is the actual strictly convex
heptagon, and every distinct actual triangle has unsigned doubled
area at least s=93/1000. Assume

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    a<=e<=h, b<=f<=c,
    G strictly inside HABC with ACG,HBG>0,
    O,P strictly inside HCEF.

The weak central roots CA: ac>=bh and CB: ac<=bh cover equality
and both strict alternatives.

**Theorem.** Throughout both central roots, actual AEF has capacity
two. More precisely,

    AEF<=814603/1000000 in CA,
    AEF<=164637/200000 in CB.

Both bounds are below J*s=411711/500000, where J=4427/500.
There is no upper-pair-word premise. This is a local capacity
consequence and does not exclude either central root.

## 1. A single HEF occupant

We first prove a stronger bound when actual HEF contains at least
one further actual point:

    AEF<=203589/250000 in CA,
    AEF<=163679/200000 in CB.                       (1)

The actual contact identity and one-interior-point cost give

    HEF=1-h+f(h-e)>=3s,
    f(h-e)>=h+3s-1.                               (2)

Use the common root floors c>=.541,h>=.613,d>=.120, the upper
bound c<=.883, and h<=1. The accepted common endpoint-five bound is

    hc>=B0=(2911/500)s=270723/500000.               (3)

The other scalar premises are e(1-b)>=4s and actual
CDE=(1-c)(e-d)>=s. The ordered endpoint inequalities are

    ca(h-a)>=s(h+a) in CA,
    hb(c-b)>=s(c+b) in CB.

Their exact source and the common floors are
[ONE_LOWER_POINT.md](ONE_LOWER_POINT.md), Section 2, and
N7_ONE_LOWER_SETUP.md. No CEF or HCE occupancy is assumed in (1).

For each printed rectangle c in [cl,cu], h in [hl,hu], put M=cu*hu.
The ratio test and floors a0,b0 are exactly those proved in
[N7_CENTRAL_COMPLETION_HCE_CAP.md](N7_CENTRAL_COMPLETION_HCE_CAP.md),
Section 1: R=a/h in CA or R=b/c in CB satisfies

    hc R(1-R)>=s(1+R).

The printed r obeys

    0<r<1/2, M(1-2r)>=s, Mr(1-r)<s(1+r),

so R>r. The table verifies

    CA: a0<=max(.139,hl*r), b0=.108,
    CB: a0=.122, b0<=max(.123,cl*r).

It follows that a>=a0,b>=b0. Every e0 in a cap row satisfies

    a0<=e0<=max(4s/(1-b0),.120+s/(1-cl),a0).        (4)

The same actual ER and CDE arguments as in the accepted HCE-cap
note prove e>=e0. Neither argument uses HCE occupancy.

When hl+3s-1>0, (2) forces h-e>0. Its printed bound hu-e0 is
positive and at least h-e. Thus

    f>=(hl+3s-1)/(hu-e0).

Otherwise f>=b0 suffices. Each printed f0 is between b0 and the
maximum of these valid lower bounds. Thus actual f>=f0. The exact
ceiling remainder is

    1-a0-f0(e0-a0)-AEF
      =(a-a0)(1-f)+f(e-e0)+(f-f0)(e0-a0)>=0.       (5)

The table ceiling U is at least the first expression plus AEF.
Every cap row gives U<J*s. The single empty row has M<B0,
contradicting (3), and needs no further area estimate.

## 2. Complete sixteen-row table

Finite decimals are exact rationals. Each cap row lists
[c interval], [h interval], r,a0,b0,e0,f0,U. The one empty row
is explicitly marked. Their closed rectangles cover
[.541,.883] times [.613,1] in each root, with shared endpoints
included. The exact reader checks coverage by the consecutive
coordinate strips determined by all printed endpoints.

| Row | c interval | h interval | r | a0 | b0 | e0 | f0 | U or obstruction |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| CA1 | [0.541,0.712] | [0.613,0.8065] | 0.302305 | 0.185312 | 0.108 | 0.41704 | 0.108 | 0.789662 |
| CA2 | [0.541,0.712] | [0.8065,1] | 0.193157 | 0.155781 | 0.108 | 0.41704 | 0.146665 | 0.805902 |
| CA3 | [0.712,0.7975] | [0.613,0.70975] | 0.31639 | 0.193947 | 0.108 | 0.442916 | 0.108 | 0.779165 |
| CA4 | [0.712,0.7975] | [0.70975,0.8065] | 0.231905 | 0.164594 | 0.108 | 0.442916 | 0.108 | 0.805348 |
| CA5 | [0.712,0.7975] | [0.8065,1] | 0.161553 | 0.139 | 0.108 | 0.442916 | 0.153477 | 0.814356 |
| CA6 | [0.7975,0.883] | [0.613,1] | 0.13946 | 0.139 | 0.108 | 0.579259 | 0.108 | 0.813453 |
| CB1 | [0.541,0.6265] | [0.613,0.8065] | -- | -- | -- | -- | -- | M=0.50527225<B0 |
| CB2 | [0.6265,0.712] | [0.613,0.8065] | 0.302305 | 0.122 | 0.189394 | 0.458915 | 0.189394 | 0.814191 |
| CB3 | [0.541,0.712] | [0.8065,0.854875] | 0.26036 | 0.122 | 0.140854 | 0.432988 | 0.20266 | 0.814976 |
| CB4 | [0.541,0.712] | [0.854875,0.90325] | 0.231954 | 0.122 | 0.125487 | 0.425379 | 0.280148 | 0.793009 |
| CB5 | [0.541,0.712] | [0.90325,1] | 0.193157 | 0.122 | 0.123 | 0.424173 | 0.316501 | 0.782362 |
| CB6 | [0.712,0.75475] | [0.613,0.8065] | 0.260326 | 0.122 | 0.185352 | 0.456638 | 0.185352 | 0.815975 |
| CB7 | [0.75475,0.7975] | [0.613,0.8065] | 0.231905 | 0.122 | 0.17503 | 0.499204 | 0.17503 | 0.811978 |
| CB8 | [0.7975,0.883] | [0.613,0.8065] | 0.193094 | 0.122 | 0.153992 | 0.579259 | 0.153992 | 0.807586 |
| CB9 | [0.712,0.883] | [0.8065,0.90325] | 0.161532 | 0.122 | 0.123 | 0.442916 | 0.185734 | 0.818395 |
| CB10 | [0.712,0.883] | [0.90325,1] | 0.13946 | 0.122 | 0.123 | 0.442916 | 0.327149 | 0.773013 |

The largest HEF-occupied ceilings are .814356 in CA and .818395
in CB. Their respective gaps below J*s are .009066 and .005027.
This proves (1).

## 3. Uniform conclusion

The actual diagonal HE partitions the strictly convex actual upper
quadrilateral HCEF into HCE and HEF. An actual upper interior point
lies strictly in one of these triangles: it cannot lie on HE because
its distinct actual triangle with H,E has area at least s.

If either O or P lies in HEF, (1) applies. If neither lies in HEF,
both lie in HCE. The accepted HCE-cap theorem then gives the stated
bounds .814603 in CA and .823185 in CB. Each of these is larger
than its corresponding ceiling in (1). Hence the same ceiling holds
in both alternatives, throughout both central roots. Three named
actual AEF occupants would cost at least J*s, contradicting the
strict ceiling. Thus AEF has capacity two.

## 4. Verification status

The source-complete exact reader
[N7_CENTRAL_COMPLETION_GLOBAL_AEF_CAP_check.py](N7_CENTRAL_COMPLETION_GLOBAL_AEF_CAP_check.py)
reads these sixteen rows, checks every rational premise and the
complete rectangle covers, and expands the actual HEF and ceiling
identities. It imports only the accepted HCE-cap hand arithmetic.
The author reader passes nine algebra identities, sixteen literal rows,
twenty-nine coverage atoms and the one empty rectangle. Independent
mathematical and arithmetic review passes. The separate
[audit_n7_global_aef_cap.py](audit_n7_global_aef_cap.py) imports no
author or discovery module. It reconstructs all sixteen rows with
fresh Fraction arithmetic, independently covers each complete closed
rectangle by interval unions on eight c strips, checks the empty
rectangle and every strict gap, and expands nine actual-coordinate
identities, including those of the independent HCE reader. Four
deliberate corruptions are rejected: an omitted rectangle, a changed
f floor, a changed empty-cell maximum, and a ceiling equal to the
three-occupant threshold.

Independent mathematical review accepts the actual occupancy cost,
every ratio-floor and positive-denominator argument, the nonnegative
ceiling remainder, and the exhaustive HE diagonal partition. The
theorem establishes the uniform capacity; C, CE and EF and both
central parent roots remain open.
