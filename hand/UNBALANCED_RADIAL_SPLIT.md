# The radial split in the unbalanced upper cut

## Scope and result

Continue the notation of [UNBALANCED_RIGHT_HULL.md](UNBALANCED_RIGHT_HULL.md):

\[
D=(0,1),\quad C=(1,1),\quad E=(0,\lambda),\quad B=(b,0),
\qquad 0<b\le\frac12,\quad q=1-\lambda,\quad w=1-b,
\qquad s=\frac7{64}.
\]

Assume the nine-point configuration has minimum triangle area at least
\(A_0=(9\sqrt{65}-55)/320\). In particular every actual doubled area
is greater than \(s\), and the global actual-triangle capacity theorem
in [THREE_INTERIOR_TRIANGLES.md](THREE_INTERIOR_TRIANGLES.md) applies.

The two central points \(P,Q\) are both above \(CE\). The right
five-point hull is the quadrilateral \(B,R,S,C\), in this cyclic
order, with \(T\) inside it. By Theorems 2--4 of the preceding note,
only support cell II remains: \(T\) is in both \(BCR\) and
\(BCS\), and the line \(PQ\) puts \(D,C\) together and \(E,B\)
together on its two sides.

**Theorem 1.** Write \(R=(r,u)\). After interchanging \(P,Q\) if
needed, the remaining configuration satisfies all of the following:

1. \(P\) is on the \(C\)-side of \(DR\), and \(Q\) is on its
   \(B\)-side.
2. \(T\) is on the \(C\)-side of \(DR\).
3. \(R,S,T\) are below \(CE\), the triangle \(EBR\) contains no
   further actual point, and
   \(u<3/16\).

Thus the central points cannot both lie on either side of \(DR\),
and the whole placement with \(T\) on the \(B\)-side is excluded.
This theorem is a complete exclusion of those radial alternatives; the
single placement stated above is not excluded here.

The support-area lemma below applies to every nontriangular right hull,
including the one-point upper cut. Its later use of the two-point upper
cut is stated separately.

## 1. The lower support triangle has doubled area less than one

Let \(W=DE\cap BR\). Since \(r>b\),

\[
W=\left(0,-\frac{bu}{r-b}\right),\qquad
\Lambda:=2\operatorname{area}(DRW)
=r+\frac{rbu}{r-b}.                                      \tag{1}
\]

**Lemma 2.** If all actual doubled areas on the right quadrilateral
\(B,R,S,C\) are at least \(s\), then \(\Lambda<1\).

**Proof.** Put \(x=(r-b)/w\). The generic lower-vertex inequality
(2) of `UNBALANCED_RIGHT_HULL.md`, with \(m=n=1\), says

\[
(x-u)(1-x)\ge\frac{s}{w}.
\]

Consequently \(r<1\) and

\[
u\le\frac{r-b}{w}-\frac{s}{1-r},\qquad
\Lambda\le\frac rw-\frac{rbs}{(r-b)(1-r)}.                \tag{2}
\]

If \(r\le w\), the positive subtracted term proves
\(\Lambda<r/w\le1\). Otherwise put \(z=1-r\). Then
\(0<z<b\le1/2\), and the right side of (2) is less than one
provided

\[
s>
\frac{(b-z)(w-z)z}{(1-z)bw}
=\frac{z}{1-z}-\frac{z^2}{bw}
\le\frac{z}{1-z}-4z^2=:F(z).                            \tag{3}
\]

The equality uses \(b+w=1\), and the inequality uses
\(bw\le1/4\). For \(0\le z\le1/5\),

\[
F(z)\le\frac54z-4z^2
=\frac{25}{256}-4\left(z-\frac5{32}\right)^2
\le\frac{25}{256}.
\]

For \(1/5\le z\le1/2\),

\[
F'(z)=
\frac{(1-2z)(4z^2-6z+1)}{(1-z)^2}\le0.
\]

Indeed \(1-2z\ge0\), while the quadratic in the second factor
decreases on this interval and its value at \(1/5\) is \(-1/25\).
Thus \(F(z)\le F(1/5)=9/100<25/256\) there. Finally
\(s=28/256>25/256\), proving (3) and the lemma. \(\square\)

**Corollary 3.** At most one further actual point can be strictly
inside both \(DBR\) and \(DER\).

To prove it, send \(D,R,W\) affinely to
\(A=(0,0), Z=(1,1), (0,1)\). As in Section 14 of
[TYPE_II_COMPLETION.md](TYPE_II_COMPLETION.md), the other two anchors
become

\[
E\longmapsto H=(0,h),\quad B\longmapsto F=(f,1),
\qquad h=\frac{q(r-b)}{r-b+bu}\in(0,1),\quad
f=\frac br\in(0,1).
\]

The two assumed points would both be in \(AZH\cap AZF\). Every
doubled area is divided by \(\Lambda<1\), so their normalized
doubled minimum is greater than \(s>3/28\). This contradicts the
complete six-point cell-II theorem, Theorem 13 of that note. The strict
comparison is \(7/64-3/28=1/448>0\).

## 2. The lower ear is empty in the two-point upper cut

The common central-pair quadratic in Section 3 of
`UNBALANCED_RIGHT_HULL.md` gives

\[
q>\frac{67}{80}.
\]

Put \(c=1-wq=b+\lambda w\). The generic lower-vertex elimination
also gives the following bound for the actual doubled ear area:

\[
\delta:=[EBR]=bu+\lambda(r-b)
\le c-2\sqrt{\frac{cbs}{w}}.
\]

Since \(c\ge b\), \(w\le1\), and \(2\sqrt{s}>5/8\),

\[
\begin{aligned}
\delta
&\le c-2b\sqrt{s}\\
&<\frac{13}{80}+\left(\frac{67}{80}-\frac58\right)b
\le\frac{43}{160}<3s.
\end{aligned}                                           \tag{4}
\]

A point inside \(EBR\) would subdivide it into three actual
triangles, each of doubled area at least \(s\), contradicting (4).
Thus this ear contains no further actual point.

Also all three right points lie below \(CE\). A right point above
\(CE\) would be inside the actual triangle \(DCE\), along with
\(P,Q\), contradicting its global capacity of two. Actual lines
contain no third configuration point, by the positive minimum area.
In particular \(D,E,R,C\) is a strictly convex quadrilateral.

## 3. Both central points cannot be on the C-side of DR

Suppose both are on this side. They are then in the common sector
\(DCE\cap DCR\) at the edge \(DC\) of the quadrilateral
\(D,E,R,C\). Its doubled area is

\[
H=qr+v,\qquad v=1-u.
\]

The line \(PQ\) puts \(D,C\) on the same side. Apply the general
same-side sector inequality (4) in
[FOUR_INTERIOR_QUADRILATERALS.md](FOUR_INTERIOR_QUADRILATERALS.md),
with normalized quantities \(a=q/H\), \(b_*=v/H\), and threshold
\(s/H\). It gives

\[
qv-s(q+v)\ge2\sqrt{sqv(qr+v)}.
\]

Dividing by \(qv>0\), and using \(q,v\le1\), yields

\[
1-2s\ge
1-s\left(\frac1q+\frac1v\right)
\ge2\sqrt{s\left(\frac rv+\frac1q\right)}
\ge2\sqrt{s(r+1)}.
\]

The left side is positive, so squaring proves

\[
r\le\frac{(1-2s)^2}{4s}-1=\frac{177}{448}.               \tag{5}
\]

But \(T\) is strictly inside \(BCR\), so
\([BRC]=r-b-wu\ge3s\). Also \([DBE]=bq\ge s\)
and \(q<1\), so \(b>s\). Hence

\[
r\ge b+3s>4s=\frac7{16}>\frac{177}{448},
\]

contradicting (5).

## 4. The remaining signs are forced

If both central points were on the \(B\)-side of \(DR\), each
would lie inside \(DBR\): it lies inside \(DBC\), and the
diagonal \(DR\) partitions the convex quadrilateral \(DBRC\)
into \(DBR\) and \(DCR\). Each also lies in \(DER\), since it
is above \(CE\), whereas \(R\) is below \(CE\). Equivalently,
the inequalities for the common sector \(DCE\cap DBR\) place it
above \(ER\) and below \(DR\). This contradicts Corollary 3.

Together with Section 3, this puts exactly one central point on each
side of \(DR\); label the one on the \(B\)-side \(Q\).

If \(T\) were also on that side, its membership in \(BCR\)
would put it inside \(DBR\). The diagonal \(ER\) partitions
the convex quadrilateral \(D,E,B,R\) into \(DER\) and \(EBR\).
Since \(DBR\) is inside this quadrilateral and the latter triangle
is empty by (4), \(T\) would be inside \(DER\) as well.
Then \(Q,T\) would contradict Corollary 3. Therefore \(T\)
is on the \(C\)-side of \(DR\).

Finally \(P,T\) are both strictly inside the actual triangle
\(DCR\). The universal two-interior-point triangle inequality gives

\[
1-u=[DRC]\ge(4+2\sqrt3)s>\frac{13}{16},
\]

where \(\sqrt3>12/7\) suffices for the strict comparison. Thus
\(u<3/16\), proving Theorem 1. \(\square\)

## Verification and the open placement

[check_unbalanced_radial_split.py](check_unbalanced_radial_split.py)
checks all determinant identities, the support-area elimination, the
one-variable comparison, and the rational constants exactly.

The surviving upper-cut placement has \(Q\) in the \(DE\)-sector,
\(P\) in the \(DC\)-sector, and \(T\) in the \(RC\)-sector
of \(D,E,R,C\). The upper right hull vertex \(S\) is outside
that quadrilateral. This note does not exclude that placement or the
one-point upper cut.
