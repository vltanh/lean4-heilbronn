# Two central points on opposite sides of the central rays

Let \(O,H,C,D,F\) be the five one-corner contacts, where
\(O=(0,0), H=(0,h), C=(c,0), D=(1,d), F=(f,1)\),
\(d\le h\), and \(f\le c\). Let two actual points be in the central
quadrilateral \(HCDF\) and two more in the top cap beyond \(DF\).
Suppose all unsigned doubled areas of these nine points are at least
\(s=93/1000\). Then the two central points cannot occupy \(OCD\) and
\(OFH\), one in each. This covers either top-pair hull and any position
of the tenth point. [Contact regions](C1_EXTERIOR_REDUCTION.md)

## Eliminating the two central points

Suppose the opposite placements hold. Transpose if needed so \(h\ge c\).
Let \((z,w)\) denote the central point inside \(OCD\). Three of its
actual edge clearances are
\[
 hz+cw-hc\ge s,\qquad dz-w\ge s,\qquad (1-c)w-d(z-c)\ge s .
\]
Inserting \(w\le dz-s\) into the first and third inequalities gives
\[
 \frac{hc+(1+c)s}{h+cd}\le z\le1-\frac{(2-c)s}{cd}.
\]
Cross multiplication gives
\[
 cd[h(1-c)+cd]\ge s[3cd+(2-c)h].                         \tag{1}
\]
The other point gives (1) with \(c,h\) and \(d,f\) interchanged.
The occupied triangles also give \(cd,hf\ge3s\). Since the top
container costs at least \(3s\), the contact bounds give
\(d,f\le1-3s/(1-s)=628/907\). Thus \(h\ge c>2/5\).
[Top-pair and contact bounds](C1_BIITT.md)

For positive \(x,H,D\) define
\[
 G(x,H,D)=xD(1-x)+\frac{xD(xD-3s)}H+sx-2s .
\]
Equation (1) is \(G(c,h,d)\ge0\), and its transpose is
\(G(h,c,f)\ge0\). On \(xD\ge3s,\ 0<x\le1\), this expression is
nonincreasing in \(H\) and strictly increasing in \(D\).
In particular \(G(c,c,d)\ge0\). In fact \(d>.454\). Otherwise
\[
 0\le G(c,c,.454)=-D c^2+(D+D^2+s)c-s(3D+2),\qquad D=.454.
\]
The leading coefficient is negative and the discriminant is
\(-38609159/62500000000\). We also have \(f>.330\).
Indeed \(f\le.330\) and \(hf\ge3s\) would imply \(h>.84\).
Then using \(c>.4\) gives
\[
 hf(1-h)+hf(hf-3s)/c
 \le .33(.84)(.16)+.33(.33-3s)/.4 <s\le s(2-h),
\]
contradicting the transposed (1).
It follows that \((1-d)(1-f)<.546\cdot.67<4s\), excluding the convex
top pair by the four-point endpoint theorem. [Endpoint theorem, §1](TYPE_II.md)

## The triangular top pair

Write \(P=(p,q)\) for the outer top point and \(R\) for the point inside
\(DPF\). Set \(T=[DPF]\) and \(\Omega=(1-d)(1-f)\). Then
\[
 3s\le T=\Omega-(1-d)(1-p)-(1-f)(1-q).
\]
Put \(U=q-dp>0,\ V=p-fq>0\), since \(q>d, p>f\) and \(p,q\le1\).
The signed area at \(O,P\) is \(-U\) at \(D\), \(V\) at \(F\),
and zero at \(P\). In the barycentric coordinates of \(R\) in \(DPF\)
each weight is at least \(s/T\). After taking those three weights the
remaining mass is \(1-3s/T\). Hence
\[
 [OPR]\le (s/T)(V-U)+(1-3s/T)V,\quad
 -[OPR]\le (s/T)(U-V)+(1-3s/T)U.                           \tag{2}
\]

Here are rational upper bounds for (2) on a contact rectangle. Given
\(d\ge D, f\ge F_0\), put
\[
 E=(1-D)(1-F_0),\quad D_1=\min(h_{\max},1-3s/(1-F_0)),\quad
 F_1=\min(c_{\max},h_{\max},1-3s/(1-D)).
\]
If \(E<3s\) the top area is already too small. Otherwise
\(d\le D_1,\ f\le F_1\), and the identity for \(T\) gives
\(1-p\le X=(E-3s)/(1-D_1)\), \(1-q\le Y=(E-3s)/(1-F_1)\).
Since \(V-U=d-f+(1+f)(1-q)-(1+d)(1-p)\), explicit bounds for
\([OPR]\) and \(-[OPR]\), respectively, are
\[
 B_+=\frac{\max(0,D_1-F_0+(1+F_1)Y)}3
       +(1-3s/E)(1-F_0+F_1Y),
\]
\[
 B_-=\frac{\max(0,F_1-D+(1+D_1)X)}3
       +(1-3s/E)(1-D+D_1X).
\]
Here \(s/T\le1/3\) and \(T\le E\), and each expression multiplying
\(1-3s/E\) is an upper bound for the corresponding positive area.

## Checking the contact rectangles

The first four table entries are the closed \(c,h\) endpoints in units
of \(1/160\). The cover starts with \([64,160]^2\). The first horizontal
strip runs to 112. In the upper strip, the column boundaries are
64, 76, 88, 100, 112, 124, 136, 160. Within each column the remaining
rows partition at the displayed endpoints.

Write \(I=[c_{\min},\min(c_{\max},h_{\max})]\) and
\(J=[\max(h_{\min},c_{\min}),h_{\max}]\), retaining \(h\ge c\).
Columns \(D,F_0\) are in thousandths.
To verify a bound \(d\ge D\), maximize \(G(x,\min J,D)\) over
\(x\in I\). If \(d\le D\) were feasible, monotonicity from (1) would
make this maximum nonnegative. The substitution for \(f\ge F_0\)
uses \(G(x,\min I,F_0)\) on \(J\).
For the numeric check columns the following formula suffices. Set
\[
 a=D^2/H-D,\qquad b=D(1-3s/H)+s .
\]
Evaluate \(ax^2+bx-2s\) at the two interval endpoints. Include
\(-b^2/(4a)-2s\) if \(a<0\) and \(-b/(2a)\) lies in the interval.
The check column bounds the largest value from above in millionths.
An asterisk invokes \(d>.454\) above. The letter a means
\(D\max I<3s\), contrary to \(cd\ge3s\).
The final column bounds \(\max(B_+,B_-)\) in ten-thousandths,
with a dash for \(E<3s\).

| min c | max c | min h | max h | \(D\) | check | \(F_0\) | check | upper |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 64 | 160 | 64 | 112 | 454 | * | 447 | -511 | 822 |
| 64 | 76 | 112 | 160 | 587 | a | 377 | -635 | — |
| 76 | 88 | 112 | 160 | 526 | -408 | 391 | -806 | 787 |
| 88 | 100 | 112 | 136 | 492 | -42 | 423 | -359 | 720 |
| 88 | 94 | 136 | 160 | 511 | -32 | 405 | -218 | 769 |
| 94 | 100 | 136 | 160 | 496 | -319 | 411 | -656 | 903 |
| 100 | 112 | 112 | 124 | 467 | -460 | 444 | -661 | 679 |
| 100 | 112 | 124 | 136 | 471 | -421 | 432 | -50 | 876 |
| 100 | 106 | 136 | 148 | 484 | -456 | 423 | -340 | 854 |
| 100 | 106 | 148 | 160 | 487 | -276 | 418 | -36 | 909 |
| 106 | 112 | 136 | 148 | 475 | -222 | 428 | -424 | 897 |
| 106 | 109 | 148 | 160 | 482 | -455 | 424 | -200 | 866 |
| 109 | 112 | 148 | 160 | 478 | -407 | 427 | -235 | 868 |
| 112 | 118 | 112 | 136 | 458 | -385 | 440 | -92 | 913 |
| 118 | 124 | 112 | 136 | 454 | * | 443 | -660 | 911 |
| 112 | 118 | 136 | 148 | 467 | -499 | 433 | -401 | 920 |
| 112 | 118 | 148 | 160 | 472 | -32 | 430 | -242 | 903 |
| 118 | 124 | 136 | 148 | 462 | -65 | 438 | -287 | 892 |
| 118 | 124 | 148 | 160 | 467 | -45 | 436 | -183 | 854 |
| 124 | 136 | 112 | 136 | 454 | * | 447 | -465 | 822 |
| 124 | 130 | 136 | 160 | 457 | -490 | 442 | -16 | 885 |
| 130 | 136 | 136 | 160 | 454 | * | 447 | -269 | 822 |
| 136 | 160 | 112 | 160 | 454 | * | 452 | -165 | 710 |

Every upper entry is at most 920. Thus \(|[OPR]|\le.092<s\) throughout
the remaining triangular alternative. This contradiction finishes the proof.

## A stronger conclusion for a convex top pair

Suppose the top pair is convex, \(OCD\) contains a central point, and
\(OFH\) contains any actual point. This is already impossible. Transposition
gives the converse placement. In particular, the convex BIITT alternative
cannot have both \(OCD\) and \(OFH\) occupied. There is only one lower
point, so at least one of the two occupants would have to be central.
Every top point lies between the rays \(OD,OF\), as its coordinates
satisfy \(x>f,y>d\).

Retain the orientation with a central point in \(OCD\).
We use \(G(c,h,d)\ge0\) from (1) and the single bound \(hf\ge3s\)
from the other wing. There is no order assumption on \(c,h\).
Both exceed \(.4\) as before. For each height interval \([l,r]\) below,
the bound \(d\ge D\) follows by maximizing \(G(x,l,D)\) over the whole
unit interval in \(x\). The check column is an upper bound for this
maximum in millionths, with the same endpoint and vertex formula as
above. We also have \(f\ge3s/r\), giving
\(\Omega\le E=(1-D)(1-3s/r)\).

| \(l\) | \(r\) | \(D\) | check | upper bound |
|---:|---:|---:|---:|---:|
| .40 | .67 | .377 | −635 | \(E\le.363572\) |
| .67 | .77 | .425 | −388 | \(E\le.366656\) |
| .77 | .83 | .441 | −208 | \(E\le.371096\) |
| .83 | 1 | .449 | −493 | \(-[HFR]\le.088546\) |

The first three bounds contradict \(\Omega\ge4s=.372\). In the final
interval set \(A=1-d, B=1-f\), so \(\Omega=AB\). Here
\(E=.551\cdot.721<(9/2)s\). Write \(x=(p-j)/B\) for the normalized
horizontal separation of the top pair. The
[actual top-ear bounds](C1_BIITT.md) give
\[
 x(1-x)\ge s/\Omega>2/9,\qquad
 (1-k)/A\le\tfrac35(1-4s/\Omega).
\]
Indeed the latter is (2) in the cited note after dropping the
nonnegative term for \(1-p\).
Thus \(x>1/3\), and \(j-f\le B(1-x)<2B/3\).
Finally \(f\le1-4s/(1-D)\), whence
\[
 -[HFR]=f(1-k)+(1-h)(j-f)
 \le (1-D-4s)\tfrac35(1-4s/E)+(1-l)(1-3s/r)\tfrac23
 =\frac{5276466457}{59590650000}<s .
\]
This excludes the final interval.
