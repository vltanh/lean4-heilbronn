# Two top points with both side caps in the six-contact family

Use the normalized actual contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

Assume every unsigned actual doubled triangle area is at least
s=93/1000. This excludes the entire count

    (k,j,r,t,l)=(0,0,1,2,1).

There are two top-cap points, a right-cap point P=(p,q), and a
left-cap point R=(r,t). The proof is the precise transfer below of
C1_TOP_PAIR_BOTH_SIDES.md. Its only coordinate change is the name
D=E, so its d equals the present e.

## 1. The four comparisons replacing the corner

Let O=(0,0) be a virtual point used only to write four polynomials.
The actual triangle signs in the following table are positive by
the coordinate orders and the cap positions:

| Polynomial in the C1 proof | Actual lower bound | Difference |
|---|---|---|
| [OCP]=cq | [BCP]=(c-b)q>=s | bq>=0 |
| [ORH]=hr | [ARH]=(h-a)r>=s | ar>=0 |
| [OCF]=c | [BCF]=c-b>=s | b>0 |
| [OEH]=h | [AEH]=h-a>=s | a>0 |

Thus all four corner-based clearance polynomials in that proof
remain at least s, by explicit actual-point inequalities. No
triangle involving an arbitrary virtual point is assigned a
minimum-area bound.

For clarity, the side support inequalities also transfer directly.
The actual right-cap clearance and the first row give

    e(p-c)-(1-c)q>=s,       cq>=s.

Multiplying the first by c, then adding (1-c) times the second,
gives ec(p-c)>=s. Hence

    ec(1-c)>=s,       p>=c+s/(ec),       q>=s/c.

The actual left-cap clearance and hr>=s give analogously

    fh(1-h)>=s,       t>=h+s/(fh),       r>=s/h.

These are exactly the six side-support bounds used in Section 1
of the C1 proof, including e,f>=4s.

## 2. Both top-hull alternatives

If the hull of E,F and the two top points is nontriangular, those
four actual points satisfy the nontriangular endpoint theorem,
so (1-e)(1-f)>=4s. Every remaining inequality in Section 1 of
C1_TOP_PAIR_BOTH_SIDES.md uses only the side-support bounds above,
the actual signed triangles EPT,FTR, and the actual top clearance.
Its scalar contradiction therefore applies without any change:
every top point would have both coordinates below .759 and doubled
top area below .091688<s.

Otherwise the top hull is an actual triangle EFT, with T one top
point and the other strictly inside. Its three actual fan areas
give [ETF]>=3s. Section 2 of the C1 proof now supplies the same
ten-coordinate rational box, with d=e.

The 158-term sum in Sections 3--4 uses only its box factors, the
coordinate orders h>=e,c>=f, the actual top-ear cost, its four
cap-coordinate consequences, and eight named triangle factors.
Four of those triangles are actual here: CPE,PET,TFR,FRH. Their
positive signs follow from the cap conditions and the explicit
nonnegative expressions in that proof. The other four are exactly
the polynomials in Section 1 above, so their clearance factors are
nonnegative as well.

Consequently every factor in the same printed positive sum W is
nonnegative in the present six-contact configuration. Its polynomial
definitions and rational box are identical after d=e. Its exact
printed cubic upper bound is therefore still

    0<=W<=-63250709/250000000<0.

The inner top point is used only through the three actual fan
clearances giving [ETF]>=3s. It is not used in any virtual-corner
triangle. Thus no extra premise is needed for that point.

Both actual top-hull alternatives have been excluded, so the whole
count is impossible. Actual chord equalities would give zero minimum;
the source proof includes all permitted outer square faces. The
optional checker verifies each transfer identity, while the source
manuscript checker verifies the unchanged 158-term sum.
