# Two opposite side triangles cannot both hold a central point

Use the six contacts of the [IITT setup](N6_IITT.md), with two
top points in \(EF(1,1)\). Suppose every unsigned actual
doubled area is at least \(s=93/1000\). We prove that one central
point in \(BCE\) and the other in \(AFH\) are impossible.
Both top-pair hulls are included. The proof uses transposition
to impose \(h\ge c\) locally and allows both orders of \(e,f\).

## Eliminating the point in \(BCE\)

Put \(W=c-b\) and \(G=[HCE]=h(1-c)+ce\). The actual triangle
\(BCE\), of doubled area \(eW\), contains the first point \(X\).
Its three barycentric weights are at least \(s/(eW)\).
The signed \(HC\) test at \(B,C,E\) takes the values
\(-hW,0,G\), respectively. Since \(X\) is central and \(G>0\),
\[
 s\le[HCX]\le-\frac{s hW}{eW}
                 +\left(1-\frac{2s}{eW}\right)G .
\]
Thus
\[
       eW\ge3s,\qquad (e-2s/W)G-s(e+h)\ge0.              \tag{1}
\]
The first inequality is the fan area cost. Transpose to obtain
the corresponding inequalities for the second point in \(AFH\).

Here is a direct test for a lower bound on \(e\) in a closed
contact rectangle \([c_0,c_1]\times[h_0,h_1]\).
The actual triangle \(ABH\) gives \(b\ge s/(h-a)\).
Since \(a\ge\alpha=.1037\), this gives
\(W\le W_0=c_1-s/(h_1-\alpha)\).
If \(D W_0<3s\), then (1) implies \(e>D\).
Otherwise put \(G_0=h_1(1-c_0)+c_0\min(D,h_1)\).
If \(e\le D\), then \(G\le G_0\) by \(e\le h\le h_1\).
The second expression in (1) is then at most
\[
              (D-2s/W_0)G_0-s(D+h_0).                  \tag{2}
\]
Indeed first replace \(W\) by \(W_0\), then replace \(e\) by \(D\)
in \(e(G-s)\), which increases the expression since \(G\ge s\).
Next use \(G\le G_0\) with \(D-2s/W_0>0\), and \(h\ge h_0\).
A negative value of (2) therefore also proves \(e>D\).
Interchange the roles of \(c,h\) in this bound to obtain \(f>F_0\)
from the occupied \(AFH\).

## The contact rectangles

Begin with \([.372,1]^2\), since \(h,c\ge4s=.372\). At a
split bisect the wider interval, choosing \(c\) at equality.
In the path column, `L` and `H` choose the lower and upper
closed halves. At each leaf restrict to \(h\ge c\) by replacing
\(h_0\) by \(\max(h_0,c_0)\) and \(c_1\) by \(\min(c_1,h_1)\).
The displayed integers \(D_1,F_1\) stand for \(1000D,1000F_0\).
Each satisfies its corresponding test in (1) or (2).
Every last column is \((1000-D_1)(1000-F_1)<279000\).
Thus \((1-e)(1-f)<.279=3s\) throughout the 49 closed
rectangles, contradicting the top-pair endpoint cost.


| Path | \(D_1\) | \(F_1\) | Product |
| --- | ---: | ---: | ---: |
| `rHHHHHHH` | 476 | 476 | 274576 |
| `rHHHHHHLH` | 475 | 472 | 277200 |
| `rHHHHHHLL` | 472 | 472 | 278784 |
| `rHHHHHL` | 482 | 482 | 268324 |
| `rHHHHLHHHH` | 479 | 471 | 275609 |
| `rHHHHLHHHL` | 480 | 469 | 276120 |
| `rHHHHLHHLH` | 476 | 471 | 277196 |
| `rHHHHLHHLL` | 477 | 469 | 277713 |
| `rHHHHLHLHH` | 481 | 467 | 276627 |
| `rHHHHLHLHL` | 483 | 465 | 276595 |
| `rHHHHLHLLH` | 479 | 468 | 277172 |
| `rHHHHLHLLL` | 481 | 466 | 277146 |
| `rHHHHLLHHH` | 476 | 476 | 274576 |
| `rHHHHLLHHL` | 475 | 472 | 277200 |
| `rHHHHLLHL` | 483 | 483 | 267289 |
| `rHHHHLLLHH` | 476 | 470 | 277720 |
| `rHHHHLLLHL` | 479 | 469 | 276651 |
| `rHHHHLLLLH` | 477 | 477 | 273529 |
| `rHHHHLLLLL` | 477 | 473 | 275621 |
| `rHHHL` | 487 | 487 | 263169 |
| `rHHLHHHHHH` | 485 | 463 | 276555 |
| `rHHLHHHHHL` | 487 | 461 | 276507 |
| `rHHLHHHHLH` | 483 | 464 | 277112 |
| `rHHLHHHHLL` | 486 | 463 | 276018 |
| `rHHLHHHLHH` | 490 | 459 | 275910 |
| `rHHLHHHLHL` | 494 | 457 | 274758 |
| `rHHLHHHLL` | 486 | 458 | 278588 |
| `rHHLHHLHHH` | 481 | 468 | 276108 |
| `rHHLHHLHHL` | 484 | 466 | 275544 |
| `rHHLHHLHL` | 477 | 469 | 277713 |
| `rHHLHHLLH` | 485 | 462 | 277070 |
| `rHHLHHLLL` | 485 | 468 | 273980 |
| `rHHLHLHHH` | 495 | 452 | 276740 |
| `rHHLHLHHL` | 495 | 455 | 275225 |
| `rHHLHLHL` | 500 | 444 | 278000 |
| `rHHLHLLH` | 489 | 456 | 277984 |
| `rHHLHLLL` | 501 | 454 | 272454 |
| `rHHLLHHH` | 476 | 476 | 274576 |
| `rHHLLHHL` | 479 | 471 | 275609 |
| `rHHLLHL` | 506 | 506 | 244036 |
| `rHHLLLH` | 485 | 464 | 276040 |
| `rHHLLLL` | 488 | 488 | 262144 |
| `rHL` | 547 | 547 | 205209 |
| `rLHHHHH` | 509 | 434 | 277906 |
| `rLHHHHL` | 512 | 446 | 270352 |
| `rLHHHL` | 553 | 423 | 257919 |
| `rLHHL` | 498 | 446 | 278108 |
| `rLHL` | 656 | 400 | 206400 |
| `rLL` | 530 | 530 | 220900 |

[Exact rational check](check_n6_iitt_opposite_wings.py)
