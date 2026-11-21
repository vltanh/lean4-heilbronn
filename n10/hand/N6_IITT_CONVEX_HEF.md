# The contact triangle \(HEF\) with a convex top pair

Use the six contacts and the convex top hull \(ERSF\) of the
[IITT setup](N6_IITT.md). Assume every actual unsigned
doubled area is at least \(s=93/1000\). Under the contact
order \(e\le f\), we prove \([HEF]<347/500=.694\).
In particular the actual triangle \(HEF\) contains at most
one central point.

## A bound from the two upper contacts

Write \(U=1-e,\ V=1-f\). The convex top deficit bound gives
\[
 1-r\le \frac35\left(V-\frac{4s}{U}\right).
\]
Also \((k-w)(j-f)\ge s\) and \(j-f\le V\), so \(w-e\le U-s/V\).
The actual triangle \(CER\) has
\[
 s\le [CER]=(1-c)(w-e)+e(1-r).
\]
These three inequalities will bound \(c\) on each contact rectangle.

For a closed rectangle \([e_0,e_1]\times[f_0,f_1]\), first
replace \(f_0\) by \(\max(f_0,e_0)\). If
\((1-e_0)(1-f_0)<4s\), the rectangle is excluded.
Otherwise replace \(e_1\) by
\(\min(e_1,f_1,1-4s/(1-f_0))\) and \(f_1\) by
\(\min(f_1,1-4s/(1-e_0))\). These restrictions follow from
\(e\le f\) and \(UV\ge4s\). Now put
\[
 D=1-e_0-\frac{s}{1-f_0},\qquad
 T=s-\frac{3e_1}{5}\left(1-f_0-\frac{4s}{1-e_0}\right).
\]
We have \(D>0\), since the rectangle can reach \(UV\ge4s\).
The three preceding inequalities give \(c\le C_0\), where
\(C_0=1-\max(T,0)/D\). In particular, for \(T>0\) use
\((1-c)D\ge s-e(1-r)\ge T\).

The actual triangles \(ABC,ABH\) give
\[
 a\ge\frac{s}{c-b},\qquad
 h\ge a+\frac{s}{b}\ge\frac{s}{C_0-b}+\frac{s}{b}.
\]
Since \(a\le e\le e_1\) and \(b\le f\le f_1\), we have
\(b\le\min(f_1,C_0-s/e_1)\). The last displayed expression
is minimized on this restricted interval at
\(\beta=\min(f_1,C_0-s/e_1,C_0/2)\). This follows by differentiating,
or by the increase of \(b(C_0-b)\) up to \(C_0/2\).
Therefore
\[
 h\ge H_0=\max\left(e_0,\frac{sC_0}{\beta(C_0-\beta)}\right).
\]
Using \([HEF]=1-(1-f)h-ef\), \(H_0\ge e_0\) and \(f\le f_1\)
then gives
\[
                  [HEF]\le1-H_0+(H_0-e_0)f_1.             \tag{1}
\]
All table rows using (1) have \(\beta>0\).

## The complete rectangle cover

Start at the closed square \([.1037,.585]^2\), which contains
the entire contact domain. At a split bisect the \(e\) interval
if its width times four is at least the \(f\) interval width,
otherwise bisect the \(f\) interval. Use the unmodified intervals
for deciding the cut. The suffixes `L` and `H` choose the lower
and upper closed halves. Read each row at the indicated path
from the root, including its common cut faces. The 144 paths
below cover both children at every split. For a dash, the
top cost already excludes the rectangle. Otherwise the printed
integer is (1) multiplied by \(10^6\) and rounded upward.

| Path | Upper bound | Path | Upper bound | Path | Upper bound |
| --- | ---: | --- | ---: | --- | ---: |
| `rH` | 606625 | `rLHH` | 651158 | `rLHL` | 692707 |
| `rLLHHHHH` | 686699 | `rLLHHHHLH` | 693250 | `rLLHHHHLLH` | 689770 |
| `rLLHHHHLLL` | 693484 | `rLLHHHL` | 688433 | `rLLHHLHHHHH` | — |
| `rLLHHLHHHHLH` | 693258 | `rLLHHLHHHHLLH` | 693554 | `rLLHHLHHHHLLLH` | 692996 |
| `rLLHHLHHHHLLLL` | 693474 | `rLLHHLHHHLH` | — | `rLLHHLHHHLLHHH` | 693462 |
| `rLLHHLHHHLLHHLH` | — | `rLLHHLHHHLLHHLLH` | 693302 | `rLLHHLHHHLLHHLLL` | 693577 |
| `rLLHHLHHHLLHLH` | 693882 | `rLLHHLHHHLLHLLH` | 693480 | `rLLHHLHHHLLHLLL` | 692202 |
| `rLLHHLHHHLLLHHH` | — | `rLLHHLHHHLLLHHLH` | 693832 | `rLLHHLHHHLLLHHLLH` | 693671 |
| `rLLHHLHHHLLLHHLLL` | 693441 | `rLLHHLHHHLLLHLH` | — | `rLLHHLHHHLLLHLLHH` | 693881 |
| `rLLHHLHHHLLLHLLHL` | 693506 | `rLLHHLHHHLLLHLLLHH` | 693680 | `rLLHHLHHHLLLHLLLHL` | 693765 |
| `rLLHHLHHHLLLHLLLL` | 693547 | `rLLHHLHHHLLLLHH` | 693721 | `rLLHHLHHHLLLLHL` | 692428 |
| `rLLHHLHHHLLLLLH` | 693874 | `rLLHHLHHHLLLLLL` | 692565 | `rLLHHLHHLHHH` | 691859 |
| `rLLHHLHHLHHL` | 692989 | `rLLHHLHHLHL` | 689090 | `rLLHHLHHLLHH` | 693858 |
| `rLLHHLHHLLHLH` | 693060 | `rLLHHLHHLLHLL` | 690419 | `rLLHHLHHLLL` | 690882 |
| `rLLHHLHLHHH` | — | `rLLHHLHLHHLHHHHH` | 693261 | `rLLHHLHLHHLHHHHL` | 693963 |
| `rLLHHLHLHHLHHHLHHH` | 693845 | `rLLHHLHLHHLHHHLHHL` | 693899 | `rLLHHLHLHHLHHHLHL` | 693564 |
| `rLLHHLHLHHLHHHLLHH` | 693893 | `rLLHHLHLHHLHHHLLHL` | 693880 | `rLLHHLHLHHLHHHLLL` | 693555 |
| `rLLHHLHLHHLHHLHHH` | — | `rLLHHLHLHHLHHLHHLH` | 693682 | `rLLHHLHLHHLHHLHHLL` | 693729 |
| `rLLHHLHLHHLHHLHLH` | — | `rLLHHLHLHHLHHLHLLH` | 693769 | `rLLHHLHLHHLHHLHLLL` | 693802 |
| `rLLHHLHLHHLHHLLHHH` | 693861 | `rLLHHLHLHHLHHLLHHL` | 693835 | `rLLHHLHLHHLHHLLHL` | 693519 |
| `rLLHHLHLHHLHHLLLHH` | 693801 | `rLLHHLHLHHLHHLLLHL` | 693761 | `rLLHHLHLHHLHHLLLL` | 693456 |
| `rLLHHLHLHHLHLHH` | 693933 | `rLLHHLHLHHLHLHL` | 692608 | `rLLHHLHLHHLHLLH` | 693890 |
| `rLLHHLHLHHLHLLL` | 692548 | `rLLHHLHLHHLLHHHHH` | — | `rLLHHLHLHHLLHHHHLH` | 693829 |
| `rLLHHLHLHHLLHHHHLL` | 693849 | `rLLHHLHLHHLLHHHLH` | — | `rLLHHLHLHHLLHHHLLH` | 693861 |
| `rLLHHLHLHHLLHHHLLL` | 693867 | `rLLHHLHLHHLLHHLHHH` | 693713 | `rLLHHLHLHHLLHHLHHL` | 693657 |
| `rLLHHLHLHHLLHHLHL` | 693363 | `rLLHHLHLHHLLHHLLH` | 693916 | `rLLHHLHLHHLLHHLLL` | 693241 |
| `rLLHHLHLHHLLHLHHH` | — | `rLLHHLHLHHLLHLHHLH` | 693864 | `rLLHHLHLHHLLHLHHLL` | 693855 |
| `rLLHHLHLHHLLHLHLH` | — | `rLLHHLHLHHLLHLHLLH` | 693837 | `rLLHHLHLHHLLHLHLLL` | 693812 |
| `rLLHHLHLHHLLHLLHH` | 693767 | `rLLHHLHLHHLLHLLHL` | 693088 | `rLLHHLHLHHLLHLLLH` | 693586 |
| `rLLHHLHLHHLLHLLLL` | 692902 | `rLLHHLHLHHLLLHH` | 693737 | `rLLHHLHLHHLLLHL` | 692378 |
| `rLLHHLHLHHLLLLH` | 693464 | `rLLHHLHLHHLLLLL` | 692087 | `rLLHHLHLHLH` | 690991 |
| `rLLHHLHLHLLHHHHHH` | 693555 | `rLLHHLHLHLLHHHHHLH` | 693731 | `rLLHHLHLHLLHHHHHLL` | 693612 |
| `rLLHHLHLHLLHHHHLH` | 693633 | `rLLHHLHLHLLHHHHLL` | 693811 | `rLLHHLHLHLLHHHLH` | 693810 |
| `rLLHHLHLHLLHHHLL` | 693564 | `rLLHHLHLHLLHHLHH` | 693965 | `rLLHHLHLHLLHHLHL` | 693804 |
| `rLLHHLHLHLLHHLL` | 693931 | `rLLHHLHLHLLHLH` | 693899 | `rLLHHLHLHLLHLL` | 693375 |
| `rLLHHLHLHLLLHHHH` | 693605 | `rLLHHLHLHLLLHHHL` | 693366 | `rLLHHLHLHLLLHHL` | 693252 |
| `rLLHHLHLHLLLHLH` | 693855 | `rLLHHLHLHLLLHLL` | 692405 | `rLLHHLHLHLLLL` | 693978 |
| `rLLHHLHLLHHHH` | 693241 | `rLLHHLHLLHHHL` | 690535 | `rLLHHLHLLHHLH` | 693015 |
| `rLLHHLHLLHHLL` | 690239 | `rLLHHLHLLHL` | 691450 | `rLLHHLHLLLHH` | 693846 |
| `rLLHHLHLLLHL` | 692656 | `rLLHHLHLLLL` | 690380 | `rLLHHLLHH` | 690283 |
| `rLLHHLLHL` | 678456 | `rLLHHLLLH` | 692493 | `rLLHHLLLL` | 680982 |
| `rLLHL` | 664858 | `rLLLHHHHHHHH` | 693902 | `rLLLHHHHHHHL` | 691914 |
| `rLLLHHHHHHLHHH` | 693810 | `rLLLHHHHHHLHHL` | 692626 | `rLLLHHHHHHLHL` | 692124 |
| `rLLLHHHHHHLLH` | 692569 | `rLLLHHHHHHLLL` | 689463 | `rLLLHHHHHLH` | 692472 |
| `rLLLHHHHHLL` | 693796 | `rLLLHHHHLHH` | 693293 | `rLLLHHHHLHL` | 687045 |
| `rLLLHHHHLL` | 690614 | `rLLLHHHLHH` | 687895 | `rLLLHHHLHL` | 671811 |
| `rLLLHHHLL` | 685401 | `rLLLHHLH` | 693010 | `rLLLHHLL` | 676859 |
| `rLLLHLH` | 680119 | `rLLLHLL` | 639883 | `rLLLL` | 685253 |

Every numerical entry is below 694000. This bounds the actual
contact triangle on the entire normalized convex top-pair domain.

[Exact rational check](check_n6_iitt_hef.py)
