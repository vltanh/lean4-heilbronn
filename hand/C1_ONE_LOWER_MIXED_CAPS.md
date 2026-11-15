# One lower C1 point and two different exterior caps

This note treats the three rows
\((U,R,T,L_{\rm cap})=(1,1,1,0),(1,1,0,1),(1,0,1,1)\)
in the one-lower occupancy ledger. Its present checkpoint establishes
the exact model and the finite geometric cover. A final certificate
theorem will be added only after every surviving cell has been
regenerated and checked with rational arithmetic.

Use the actual anchors
\[
O=(0,0),\ C=(c,0),\ D=(1,d),\ F=(f,1),\ H=(0,h),
\qquad 0<d\le h<1,\quad 0<f\le c<1,\quad f\le d.
\]
Assume the minimum actual triangle area is at least
\(A_0=(9\sqrt{65}-55)/320\), and write
\[
s=8/73<2A_0,\qquad \rho=49/60<(4+2\sqrt3)s.
\]
Brackets are signed doubled areas. All free points avoid actual anchor
chords, because otherwise an actual triangle has zero area. Additional
contacts with a side of the square are allowed.

There is one point \(L=(\ell_x,\ell_y)\) in \(OHC\), one point
\(Q=(q_x,q_y)\) in \(HCDF\), and two cap points \(X,Y\).
The three ordered cap classes are \(RT,RL,TL\), with \(X\) in the
first cap and \(Y\) in the second. The cap notation and the general
support lemmas are those of [C1_ZERO_LOWER.md](C1_ZERO_LOWER.md).

## 1. Common parameter and coordinate bounds

The lower triangle contains \(L\), so
\[
hc\ge3s,\quad h,c\ge3s,\qquad
\ell_x,\ell_y\ge s,\quad
c-\ell_x,h-\ell_y\ge2s,\quad
\ell_x+\ell_y\le1-s.                                      \tag{1}
\]
For example the three positive areas of its subdivision are
\(c\ell_y,h\ell_x,[HLC]=hc-h\ell_x-c\ell_y\).
Adding two of them proves each coordinate gap in (1), and dividing
the last area by \(hc\) gives the last assertion.

The actual anchor triangles give
\[
s\le d,f\le1-s.
\]
In each of the three classes at least one side cap is occupied.
The single-cap support bounds give \(d\ge4s\) for a right cap and
\(f\ge4s\) for a left cap. Since \(f\le d\), in all classes
\[
d\ge4s.                                                   \tag{2}
\]
A right cap also gives \(1/7<c<6/7\); a left cap gives
\(1/7<h<6/7\). A top cap gives
\[
f<67/100,\qquad d\le57/65.                                \tag{3}
\]
These are the occupancy-independent bounds proved in
[C1_ZERO_LOWER.md](C1_ZERO_LOWER.md), Sections 1–2.

The upper-point projection identities from the same note imply
\[
s\le q_x,q_y\le1-s.                                      \tag{4}
\]
The upper anchor quadrilateral contains \(Q\), so its doubled area
\[
W=1-(h-d)(c-f)\ge4s.                                     \tag{5}
\]
This is also obtained by summing its four positive fan triangles
with apex \(Q\).

Several useful actual-triangle upper bounds follow immediately:
\[
[DFH]=1-h+f(h-d)\le1-d\le1-4s.                            \tag{6}
\]
If a left cap is present, then
\[
[CDF]=1-c+d(c-f)\le1-f\le1-4s.                            \tag{7}
\]
For \(RT\) and \(TL\), \([OFH]=hf<67/100\) by (3). For \(RL\),
both \(h,c<6/7\) and \(f\le c\), so
\[
[OFH]<36/49.
\]
Both upper bounds are smaller than \(\rho\). Consequently \(OFH\)
has capacity one: it cannot contain two additional actual points.

The single-cap cubic support inequalities, retained without
relaxation, are
\[
dc(1-c)\ge s\quad(R\text{ present}),\qquad
fh(1-h)\ge s\quad(L_{\rm cap}\text{ present}).              \tag{8}
\]

## 2. Cap gaps and top-point cross-ear bounds

Every free coordinate is at least \(s\), using its actual triangles
with \(OC\) and \(OH\). Let a right-cap point have coordinates
\((x,y)\). Its cap area gives
\[
(1-c)(d-y)\ge s,\qquad d(x-c)\ge s,\qquad cy\ge s.
\]
Thus
\[
x\le1,\quad x-c\ge8/65,\quad y\ge7s/6,\quad
d-y\ge
\begin{cases}
8/49,&RT,\\
8/41,&RL.
\end{cases}                                               \tag{9}
\]
Here \(c\ge3s\) always; in \(RL\), \(c\ge f\ge4s\).
The remaining divisions use \(d\le1-s\) and \(c<6/7\).

For a top-cap point \((x,y)\), its area beyond \(DF\) gives
\[
(1-d)(x-f)\ge s,\qquad(1-f)(y-d)\ge s.
\]
Therefore
\[
x,y\le1,\quad x-f\ge8/41,\quad
y-d\ge
\begin{cases}
8/65,&RT,\\
8/41,&TL.
\end{cases}                                               \tag{10}
\]
For a left-cap point the transposed cap calculation gives
\[
f-x\ge8/41,\quad y\le1,\quad
y-h\ge8/65,\quad x\ge7s/6.                                \tag{11}
\]
Indeed \(h\ge d\ge4s\), \(f\le1-s\), and \(h<6/7\).
The three rational gaps used here are exactly
\(s/(1-s)=8/65,\ s/(1-3s)=8/49,\ s/(1-4s)=8/41\).

There is a further bound for any top-cap point \(Z=(g,k)\):
\[
0<[FHZ],[CDZ]<\gamma,\qquad
\gamma=1-\frac73s<\rho.                                 \tag{12}
\]
For the first area write
\[
[FHZ]=(1-h)g+f(h-k).
\]
If \(k\ge h\), this is at most \(1-h\le1-3s<\gamma\).
If \(k<h\), the positive cap area implies
\((1-f)k\ge s\), hence \(f\le1-s/k\). Since \(g\le1\),
\[
[FHZ]\le1+s-k-hs/k
       \le1+s-2\sqrt{hs}
       \le1+s-2\sqrt3\,s<1-\frac73s.
\]
The final strict inequality uses \(\sqrt3>5/3\).
Transposing the square proves the second bound with \(c\ge3s\);
this argument does not need the additional order \(f\le d\).
Positivity follows from the respective cap's position beyond \(DF\).

## 3. A finite cover by anchor-ray words

Number the anchors \(O,C,D,F,H\) by \(0,\ldots,4\).
For a free point, its word \(w\) has the property
\[
[V_iV_{i+j}Z]>0\quad\Longleftrightarrow\quad j\le w_i,
\qquad j=1,\ldots,4,
\]
with cyclic indices. The five anchors remain vertices of the full
convex hull. The directions from each such vertex to the other four
anchors occupy less than a half-turn; therefore every sign list has
this prefix form. Antisymmetry leaves exactly sixteen words.

The right, top, and left cap words, respectively, are
\[
(1,0,4,3,2),\qquad(2,1,0,4,3),\qquad(3,2,1,0,4).
\]
The lower words are
\[
(1,3,3,2,1),\ (2,3,2,2,1),\ (3,3,2,1,1).
\]
The eight upper words are
\[
\begin{gathered}
(1,1,3,3,2),\ (1,2,3,2,2),\
(2,1,1,3,3),\ (2,1,2,3,2),\\
(2,2,1,2,3),\ (2,2,2,2,2),\
(3,2,1,1,3),\ (3,2,2,1,2).
\end{gathered}
\]
Each class initially has \(3\cdot8=24\) word pairs.

Three free points below \(OD\) are forbidden by the two-actual-vertex
triangle capacity applied to \(O,D,(1,0)\), which also contains \(C\).
This removes two pairs in each class with a right cap.
The capacity-one bound for \(OFH\) removes two pairs in each class.
Thus the complete cover consists of
\[
20\ RT,\qquad20\ RL,\qquad22\ TL,                         \tag{13}
\]
or sixty-two pairs altogether.

A pair of distinct words fixes an actual triangle sign at any anchor
where its entries differ: the point with smaller entry precedes the
other in angular order. In addition,
\[
[XYL]>0.                                                 \tag{14}
\]
The three actual areas \([OXY],[CXY],[HXY]\) are positive from the
cap words. The function \(Z\mapsto[XYZ]\) is affine, and \(L\in OHC\);
this proves (14).

The full hull orders are \(O,C,X,D,Y,F,H\) for \(RT\),
\(O,C,X,D,F,Y,H\) for \(RL\), and \(O,C,D,X,F,Y,H\) for \(TL\).
Any partially assigned line signs with more than two cyclic sign
changes around this hull are impossible. Any actual triangle
containing three other actual points is also impossible by the
triangle-capacity theorem. These are exact geometric pruning rules,
not numerical feasibility tests.

## 4. Exact polynomial model and a strengthened whole word

The companion
[check_c1_one_lower_mixed_caps.py](check_c1_one_lower_mixed_caps.py)
reconstructs (1)–(14), the sixty-two words, every signed doubled
determinant, and the containment costs. A known triangle sign has
cost \(s,3s,\rho\) if respectively zero, one, or two additional
actual points are certified to lie inside it. Containment is checked
by the three oriented edge signs. Every coordinate is in \([0,1]\).

One especially constrained word is
\[
RT,\qquad L:(2,3,2,2,1),\quad Q:(2,1,2,3,2).
\]
Both points belong to both \(ODH\) and \(ODF\). Therefore
\[
h\ge\rho,\qquad1-df\ge\rho,\qquad
f\le\frac{1-\rho}{4s}=\frac{803}{1920}.                   \tag{15}
\]
The last step uses (2). The two affine factors in (15) can be
included directly in every cubic product for this whole word;
no assumption on the line \(LQ\) is needed.

The discovery script in
[../research/c1_mixed_caps_search.py](../research/c1_mixed_caps_search.py)
uses floating linear programs to seek certificates. Such programs
and their status codes are not proofs. A successful final package
must give fixed positive rational combinations of the proved
nonnegative factors and costs, then check their polynomial
expansions with exact arithmetic over an exhaustive finite cover.

