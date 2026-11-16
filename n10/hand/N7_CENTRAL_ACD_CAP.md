# Central seven-boundary configurations: ACD has capacity one

In either remaining central lower root CA or CB of
[N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md), the actual triangle ACD
has doubled area strictly less than 27/40. It consequently cannot
contain two additional actual points at doubled minimum area
s=93/1000.

This is a uniform metric lemma for the two central roots. It makes no
assumption about the line OP or about the signs of AGT,DGT for an
upper point T. The complete N7 family is not asserted closed here.

## 1. Scope and previously proved inequalities

Use the normalization

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), H=(0,h), G=(g,z).

Here G is the central lower point in HABC; the other two actual points
O,P are in HCEF and in the actual heptagon ABCDEFH. In particular,

    0<a<h<=1, 0<c<1, 0<d<e<=h, 0<f<1.

All actual triangle areas in this note are doubled areas and are at
least s=93/1000.

The shared central-coordinate inequality in
[ONE_LOWER_POINT.md](ONE_LOWER_POINT.md), Section 3, is

    c(h-a)z >= s(h+a).                                      (1)

The CA and CB columns of the "Four refined rational boxes" table in
[N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md) give respectively

    z <= 773/1000,       z <= 775/1000.

Thus both roots satisfy z<=t, where t=31/40. These are published
root bounds, not outcomes of the subsequent numerical exploration.

Two actual anchor triangles give

    (1-c)(e-d) = [CDE] >= s,                                (2)
    [HEF] = 1-h+f(h-e) <= 1-e.

The second identity uses h>=e and f<=1. Consequently

    e <= E := 1-s = 907/1000.                               (3)

Only (1)--(3), h<=1, z<=t, and the displayed positive side ranges
are needed for the scalar argument below.

## 2. Eliminate a and d

Rearranging (1) gives

    h(cz-s) >= a(cz+s).

Its right side is positive, so cz-s>0. As cz+s>0 and h<=1,

    a <= h(cz-s)/(cz+s) <= (cz-s)/(cz+s)
      <= (tc-s)/(tc+s).                                    (4)

For the last inequality, the ratio (q-s)/(q+s) increases with q>0,
and cz<=ct. Both denominators are positive.

Because 1-c>0, (2) and (3) give

    d <= E-s/(1-c).                                        (5)

The actual area is

    [ACD] = a(1-c)+cd.

Both coefficients 1-c and c are positive. Substitution of (4) and
(5) therefore yields

    [ACD] <= U(c)
          := (1-c)(tc-s)/(tc+s)+Ec-sc/(1-c).                (6)

This implication only concerns feasible normalized contacts. In
particular, it does not assume that every c in (0,1) gives feasible
right sides in (4) or (5).

## 3. A positive cubic proves U(c)<27/40

Put B=27/40. Since (tc+s)(1-c)>0, the sign of B-U(c) equals the
sign of

    P(c) := (B-U(c))(tc+s)(1-c)
          = 6231/40000
            -(18011/31250)c
            +(8959/15625)c^2
            -(2883/40000)c^3.                              (7)

This identity follows by multiplying (6); no estimate has yet been
made in (7).

Set w=c-3/5. Then w<2/5, and direct expansion gives

    P = 10137/12500000
        +(169291/5000000)w
        +(443641/1000000)w^2
        -(2883/40000)w^3.

Since w^2>=0 and w<=2/5, including when w is negative,

    P >= Q(w)
      := 10137/12500000
         +(169291/5000000)w
         +(414811/1000000)w^2.                              (8)

Indeed P-Q=(2883/40000)w^2(2/5-w)>=0.

Write Q(w)=Aw^2+Bw+C just within this paragraph. Then A>0 and

    4AC-B^2 = 199202807/1000000000000 > 0.

Completion of the square gives

    Q(w)=A(w+B/(2A))^2+(4AC-B^2)/(4A)>0.

Thus P(c)>0 throughout 0<c<1. The positive denominator in (7)
proves U(c)<27/40, and (6) proves

    [ACD] < 27/40.                                        (9)

The accompanying optional standard-library JavaScript checker
[check_n7_central_acd_cap.js](check_n7_central_acd_cap.js) reconstructs
the literal polynomial identities and rational gaps exactly. It uses
no search result or floating-point coefficient.

## 4. Capacity and a useful sign consequence

The actual triangle two-occupant theorem requires doubled area at
least Gamma2*s, with Gamma2=4+2sqrt(3)>149/20. The rational comparison is

    (149/20)s-27/40 = 357/20000 > 0.

Therefore (9) makes ACD a capacity-one triangle.

In particular, in either central root,

    ADG<0  implies  ADO>0 and ADP>0.                       (10)

For completeness, ACG>0 holds in the central lower cell and CDG>0
is an inward actual heptagon edge test. Together with ADG<0 these
put G strictly inside ACD. For either T=O or P, ACT>0 follows because
T lies in HCEF: the vertices H,E,F are strictly on the positive side
of AC and C is on AC. Also CDT>0 is an inward heptagon edge test.
If ADT<0, these signs would put T inside ACD alongside G, contrary
to capacity one. The zero case is excluded by the positive minimum
area, proving (10).

More generally, the ordinary capacity-one chord and ray rules may
now use ACD in both central roots, with its actual orientation and
all required containment tests checked.
