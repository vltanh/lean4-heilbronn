# Coordinate bounds for the six-contact BIRT chords

Use the [adjacent-cap notation](N6_ADJACENT_CAPS_LINE.md), with
\(P=(p,q)\), \(Q=(u,v)\), \(R=(r,d)\) and \(S=(t,z)\).
Assume every unsigned doubled area is at least \(s=93/1000\).
Direct the chord from the edge of \(HABC\) toward the edge of
\(HCEF\), and write \(X=u-p\), \(Y=v-q\).

## Entry on HA or BC

For entry on \(HA\), the line signs are \([APQ]<0<[HPQ]\).
Subtracting gives
\[
 (h-a)X=[HPQ]-[APQ]\ge 2s.
\]
In any inherited coordinate box, \(X\ge2s/(h_{\mathrm{hi}}-a_{\mathrm{lo}})\).
The table names this factor `directed_ha`.
The segment from the entry on \(HA\) to the intersection with \(HC\)
lies in \(HAC\), since both edges are edges of this triangle. Thus
\(P\) lies in \(HAC\) in both \(ES,HA\) and \(RE,HA\). In the
second pair, the upper part of the chord joins \(HC\) to \(CE\).
Both are edges of \(HCE\), which therefore contains \(Q\). These
actual triangle memberships are strict by the positive clearance.

For entry on \(BC\), the line signs are \([CPQ]<0<[BPQ]\).
The same determinant difference gives
\[
 (c-b)Y=[BPQ]-[CPQ]\ge2s,\qquad
 Y\ge2s/(c_{\mathrm{hi}}-b_{\mathrm{lo}}).
\]
The table names this factor `directed_bc`.

## Entry on AB and exit on ES or SF

Both pairs give \([APQ]>0\), \([EPQ]<0\), and \([BPQ]<0\).
Set \(\alpha=e-a\). For exit on \(ES\), set \(\beta=t-b\) and
\(Z=z\). Here \([SPQ]>0\). For exit on \(SF\), set \(\beta=f-b\)
and \(Z=1\). Here \([FPQ]>0\). The two differences of signed
determinants give
\[
 Y-\alpha X\ge2s,\qquad ZX-\beta Y\ge2s.
\]
The first is \([APQ]-[EPQ]\). The second is \([SPQ]-[BPQ]\) for
exit on \(ES\) and \([FPQ]-[BPQ]\) for exit on \(SF\).
Since \(Z>e\), \(0\le\alpha\le e\), and \(0\le\beta<1\),
we have \(0<Z-\alpha\beta\le1\). Adding \(\beta\) times the first
inequality to the second therefore gives \(X\ge2s(1+\beta)\).
The first inequality now gives \(Y\ge2s(1+\alpha)\).
The tables name these factors `directed_ab_x` and `directed_ab_y`.

## The lower-point compatibility inequality

In every BIRT arc, \([HAP]\ge s\) and \([BCP]\ge s\) imply
\(p\ge p_0=s/(h_{\mathrm{hi}}-a_{\mathrm{lo}})\) and
\(q\ge q_0=s/(c_{\mathrm{hi}}-b_{\mathrm{lo}})\).
The \(AB\) and \(HC\) clearances give
\[
 ap+bq\ge ab+s,\qquad hp+cq\le hc-s.
\]
For \(K=\max(a_{\mathrm{hi}}/h_{\mathrm{lo}},
b_{\mathrm{hi}}/c_{\mathrm{lo}})\), both \(Kh-a\) and \(Kc-b\)
are nonnegative throughout the box. It follows that
\[
 ab+s\le ap+bq
 = K(hp+cq)-(Kh-a)p-(Kc-b)q
 \le K(hc-s)-(Kh-a)p_0-(Kc-b)q_0.
\]
This is the factor named `lower_compatibility` in the tables.
The names `top_horizontal_gap` and `adjacent_ear_budget` refer to
the two inequalities with fixed endpoints in
[Section 2 of the adjacent-cap lemma](N6_ADJACENT_CAPS_LINE.md#2-two-bounds-for-the-right-and-top-turns).

## Coordinate product endings

Every coordinate cut retains the cut value in both children.
At a leaf marked `unit_cube`, write each physical coordinate as
\(x_i=L_i+(U_i-L_i)y_i\), where \([L_i,U_i]\) is the leaf's proved
interval and \(0\le y_i\le1\). Set \(y_i=0\) if the interval has one
point. Each endpoint factor is \(y_i\) on side zero and \(1-y_i\) on
side one. A `cube` row specifies three such factors by their indices
and sides. A named source row gives its proved nonnegative factor,
after the coordinate substitution. If an index and side follow the
name, multiply by that endpoint factor as well.

Add the resulting products with their printed positive integer
weights. The expanded polynomial has the printed constant \(c_0\)
and coefficients \(c_\alpha\). Because every nonconstant monomial
lies in \([0,1]\), the sum is at most
\(c_0+\sum_{\alpha\ne0}\max(0,c_\alpha)\). The printed negative
rational value of this bound contradicts the nonnegativity of the
weighted sum.

## The BC, ES crossing

The chord enters on \(BC\) and exits on \(ES\). Its negative vertices
are \(C,R,E\). The two points lie in the crossed-edge quadrilateral
\(BCES\), and their respective placement quadrilaterals are \(HABC\)
and \(HCEF\). Apply the four-vertex cap exclusions and the BIRT
lower-point box from the [adjacent-cap lemma](N6_ADJACENT_CAPS_LINE.md).
These conditions give the [initial table](N6_ADJACENT_CAPS_TABLES/BIRT_BC_ES/domain.md).

The [complete case tree](N6_ADJACENT_CAPS_TABLES/BIRT_BC_ES/tree.md)
gives 51 determinant splits and 52 contradictions. The leaves are
38 incompatible area intervals, 11 incompatible coordinate intervals
and three exact weighted contradictions. The arithmetic follows the
[adjacent-cap table guide](N6_ADJACENT_CAPS_TABLES/INDEX.md) and the
coordinate bounds above.

```sh
python3 n10/hand/audit_n6_birt_crossings.py BC ES
```

## The AB, SF crossing

The chord enters on \(AB\) and exits on \(SF\). Its negative vertices
are \(B,C,R,E,S\). Both points lie in \(ABSF\), and their separate
placements are in \(HABC\) and \(HCEF\). The inward tests, the
four-vertex cap exclusions and the BIRT box give the
[initial table](N6_ADJACENT_CAPS_TABLES/BIRT_AB_SF/domain.md).

The [complete case tree](N6_ADJACENT_CAPS_TABLES/BIRT_AB_SF/tree.md)
gives 59 determinant splits and 60 contradictions. It has
30 incompatible area intervals, 10 incompatible coordinate intervals,
two geometric contradictions and 18 exact weighted contradictions.

```sh
python3 n10/hand/audit_n6_birt_crossings.py AB SF
```

## The ES, HA crossing

The chord enters on \(HA\) and exits on \(ES\). Its negative vertices
are \(A,B,C,R,E\). The crossed-edge quadrilateral is \(ESHA\), and
\(P\) also lies in \(HAC\) by the argument above. Together with the
four-vertex cap exclusions, the individual placements and the common
BIRT box, these give the [initial table](N6_ADJACENT_CAPS_TABLES/BIRT_ES_HA/domain.md).

The [complete case tree](N6_ADJACENT_CAPS_TABLES/BIRT_ES_HA/tree.md)
gives 40 determinant splits and 41 contradictions. There are
22 incompatible area intervals, seven incompatible coordinate intervals
and 12 exact weighted contradictions.

```sh
python3 n10/hand/audit_n6_birt_crossings.py ES HA
```

## The AB, ES crossing

The chord enters on \(AB\) and exits on \(ES\), with negative vertices
\(B,C,R,E\). Both points lie in \(ABES\). Their placement tests,
the four-vertex cap exclusions and the common BIRT box give the
[initial table](N6_ADJACENT_CAPS_TABLES/BIRT_AB_ES/domain.md).

The [complete case tree](N6_ADJACENT_CAPS_TABLES/BIRT_AB_ES/tree.md)
has 67 determinant splits and one closed coordinate cut at
\(t=734859/1000000\). Its 69 contradictions consist of 35 incompatible
area intervals, 15 incompatible coordinate intervals and 19 exact
weighted contradictions.

```sh
python3 n10/hand/audit_n6_birt_crossings.py AB ES
```

## The BC, SF crossing

The chord enters on \(BC\) and exits on \(SF\). Its negative vertices
are \(C,R,E,S\). Both points lie in \(BCSF\). Their placement tests,
the four-vertex cap exclusions and the common BIRT box give the
[initial table](N6_ADJACENT_CAPS_TABLES/BIRT_BC_SF/domain.md).

The [complete case tree](N6_ADJACENT_CAPS_TABLES/BIRT_BC_SF/tree.md)
gives 84 determinant splits and 85 contradictions. The leaves are
40 incompatible area intervals, 12 incompatible coordinate intervals,
one geometric contradiction and 32 exact weighted contradictions.

```sh
python3 n10/hand/audit_n6_birt_crossings.py BC SF
```

## The RE, HA crossing

The chord enters on \(HA\) and exits on \(RE\), with negative vertices
\(A,B,C,R\). Both points lie in \(REHA\). The lower point lies in
\(HAC\), and the upper point lies in \(HCE\). The resulting inward
tests, the four-vertex cap exclusions and the common BIRT box give
the [initial table](N6_ADJACENT_CAPS_TABLES/BIRT_RE_HA/domain.md).

The [complete case tree](N6_ADJACENT_CAPS_TABLES/BIRT_RE_HA/tree.md)
gives 78 determinant splits and 79 contradictions. There are
30 incompatible area intervals, four incompatible coordinate intervals
and 45 exact weighted contradictions.

```sh
python3 n10/hand/audit_n6_birt_crossings.py RE HA
```
