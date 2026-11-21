# N7 central E-only structural reduction

This note concerns the two all-interior lower-central roots CA and CB in
`N7_ONE_LOWER_SETUP.md`. It records consequences valid on the whole E-only
upper-pair word. The complete exclusion is proved separately in
[N7_CENTRAL_COMPLETION_E_ONLY_EXCLUSION.md](N7_CENTRAL_COMPLETION_E_ONLY_EXCLUSION.md).

Use the actual contacts
\(A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e),
F=(f,1), H=(0,h)\), with the contact orders and lower-central hypotheses
of `N7_CENTRAL_COMPLETION.md`, including \(G\in\operatorname{int}(HABC)\),
\([ACG]>0,[HBG]>0\). All ten points lie in the closed unit square, the
heptagon \(ABCDEFH\) is strictly convex, and every triangle on actual
points has unsigned doubled area at least \(s=93/1000\).
The points \(O,P\) lie in \(\operatorname{int}(HCEF)\), are ordered with
\([HOP]<0\), and satisfy the already established central cut
\([DGO]<0\). Here \([XYZ]\) is the signed doubled area in that order.

Assume the E-only line word

\[
[HOP]<0,\qquad [COP]<0,\qquad [EOP]>0,\qquad [FOP]<0. \tag{1}
\]

The upper-pair chord rule gives \(O,P\in\operatorname{int}(CEF)\).
We use the independently checked theorem
`N7_CENTRAL_COMPLETION_EFG_CAP.md`: under this containment,
\([EFG]< (149/20)s\), so the actual triangle \(EFG\) has capacity one.
The fixed triangle \(BCE\) also has capacity one.

## 1. The pair lies above G

A line through two points in a strictly convex polygon has two cyclic
changes in the signs of its vertices. In the cyclic contact order
\(H,A,B,C,D,E,F\), the negative entries at \(H,C,F\) and the positive
entry at \(E\) force the positive block to be either \(E\) or \(D,E\).
Consequently \([AOP],[BOP]<0\). Since \(G\) is interior to the convex
quadrilateral \(HABC\), the affine function \(X\mapsto[XOP]\) is strictly
negative at \(G\):

\[
[GOP]<0. \tag{2}
\]

For each \(T\in\{O,P\}\), containment in \(CEF\) gives \([EFT]>0\).
The lower-central cell gives \([CFG]>0\); the inward hull test gives
\([EFG]>0\). At the vertices \(C,E,F\), the affine function
\(X\mapsto[FGX]\) has respective values \([CFG]>0,[EFG]>0,0\).
Therefore \([FGT]>0\).

Set \(q=[GEF]=[EFG]>0\), \(u_T=[GET]\), and \(v_T=[FGT]>0\).
The literal determinant identity is

\[
v_Ou_P-v_Pu_O=q[GOP]<0. \tag{3}
\]

If \(u_P>0\), (3) forces \(u_O>0\). The three inward tests of
\(GEF\) would then put both \(O,P\) inside \(EFG\), contradicting
its capacity one. Actual-triangle nonvanishing excludes equality.
Hence

\[
\boxed{[EGP]>0}. \tag{4}
\]

## 2. The lower point is outside BCE

For \(T=G,P\), both \([BCT]\) and \([CET]\) are positive. For \(G\),
these are the lower-cell inward test and its standard affine consequence
\([CEG]>0\); for \(P\), they follow from its upper-cell containment.
Set \(r=[EBC]=[BCE]>0\), \(w_T=[EBT]\), and \(t_T=[CET]>0\).
The corresponding determinant identity is

\[
t_Gw_P-t_Pw_G=r[EGP]>0. \tag{5}
\]

If \(w_G>0\), then \(w_P>0\), so both \(G,P\) would lie inside
\(BCE\). Its capacity one excludes this. Thus

\[
\boxed{[BEG]>0}. \tag{6}
\]

The Pluecker identity

\[
[ABE][BDG]=[ABD][BEG]+[ABG][BDE] \tag{7}
\]

then gives \([BDG]>0\). In the four-sign order
\((ADG,AEG,BDG,BEG)\), the complete six-word classification from the EFG
cap theorem reduces to exactly

\[
(--++),\qquad (+-++),\qquad (++++). \tag{8}
\]

## 3. Five ordered central words remain

The determinant identity

\[
[AGH][AOP]-[AGO][AHP]+[AGP][AHO]=0 \tag{9}
\]

excludes \([AGO]<0<[AGP]\): its three summands would all be strictly
negative, since \([AGH]>0\), \([AOP]<0\), and
\([AHO],[AHP]<0\). The central-area orientation rule separately excludes
\([AGP]>0,[DGP]>0\). Together with the fixed \([DGO]<0\), the complete
remaining list of \((AGO,AGP,DGP)\) is

\[
(---),\quad (--+),\quad (+--),\quad (+-+),\quad (++-). \tag{10}
\]

This is an exhaustive sign reduction, not a claim that any listed word is
realizable.

## 4. The last word has fixed AE and BE tests

For the word \((++-)\), `N7_CENTRAL_COMPLETION.md` gives
\([AEG]<0\) from the AEF capacity-two argument, and then \([AEO]>0\).
The two literal identities

\[
[CEG][AEP]=[AEG][CEP]-[ACE][EGP], \tag{11}
\]
\[
[ACE][EGO]=[AEG][CEO]-[AEO][CEG] \tag{12}
\]

give \([AEP]<0\) and \([EGO]<0\), respectively. Now \(G\) is inside
\(ABE\), using \([ABG],[BEG],-[AEG]>0\). The positive tests
\([ABP]>0,-[AEP]>0\), together with the capacity-one bound for \(ABE\),
force \([BEP]<0\). Thus this word has the uniform tests

\[
AEG-,\quad AEO+,\quad AEP-,\quad BEG+,\quad BEP-,\quad EGO-,\quad EGP+.
\tag{13}
\]

In particular, \(O\) lies inside \(EFG\) and \(P\) is outside it across
\(EG\). The signed-order consequences in this note require no coordinate
subdivision and no scalar interval search.

## 5. The AE test at P is negative on the whole word

In fact \([AEP]<0\) holds without assuming the last ordered word. If
\([AEG]<0\), identity (11), \([EGP]>0\), and
\([ACE],[CEP],[CEG]>0\) give this directly.

Suppose instead \([AEG]>0\) and, for contradiction, \([AEP]>0\).
The E-only chord rule puts \(P\) inside the actual triangle \(CEO\).
The affine function \(X\mapsto[AEX]\) has the three vertex tests
\([AEC]=-[ACE]<0\), \([AEE]=0\), and \([AEO]\). Its positive value
at the interior point \(P\) therefore forces \([AEO]>0\).
For each \(T=G,O,P\), we now have all three inward tests

\[
[AET]>0,\qquad [EFT]>0,\qquad [FAT]=-[AFT]>0.
\]

Here the first tests follow from the case assumption and the preceding
affine argument. The tests \([EFG]>0\) are inward hull tests, the tests
\([EFO],[EFP]>0\) come from upper-cell containment, and all three
\([AFT]<0\) were proved from the empty triangle AFH in
`N7_CENTRAL_COMPLETION.md`. Thus the actual triangle \(AEF\) contains
all three points, contradicting its proved capacity two. Actual-triangle
nonvanishing excludes the remaining zero case. Hence, uniformly,

\[
\boxed{[AEP]<0}. \tag{14}
\]

## 6. The BE test at P is also negative on the whole word

The fixed BCE ray argument at E, using \([EOP]>0\), gives
\([BEO]>0\); its common positive tests are
\([BCO],[BCP],[CEO],[CEP]>0\). For \(G\), the four inward tests of
\(ABEF\) are

\[
[ABG]>0,\quad [BEG]>0,\quad [EFG]>0,\quad [FAG]>0.
\]

For \(O\), they are \([ABO]>0,[BEO]>0,[EFO]>0,[FAO]>0\).
The AB tests come from the hull, and the FA tests are the negatives of
the established AF tests. Hence both \(G,O\) lie in the actual strictly
convex quadrilateral \(ABEF\).

If \([BEP]>0\), the tests \([ABP]>0,[EFP]>0,[FAP]>0\) would put
\(P\) there as well. However, its doubled area \([ABEF]\) satisfies the
literal contact identity

\[
1-[ABEF]=(f-b)(e-a)\ge0, \tag{15}
\]

using the contact orders \(b\le f\) and \(a\le e\). The established
three-interior-point quadrilateral bound requires doubled area at least
\(93/91>1\), a contradiction. Nonvanishing therefore gives

\[
\boxed{[BEP]<0}. \tag{16}
\]

Together with \([BCP],[CEP]>0\), (16) puts \(P\) inside \(BCE\).
The derivation uses actual triangles and the actual quadrilateral ABEF;
no intersection point is treated as an actual vertex.

## 7. Positive AGO fixes the location of O

Assume additionally \([AGO]>0\). The literal A-pivot identity is

\[
[ABE][AGO]-[ABG][AEO]+[ABO][AEG]=0. \tag{17}
\]

If \([AEO]<0\), its first two terms are positive, so \([AEG]<0\).
The positive tests \([ABG],[BEG],-[AEG]\) put \(G\) inside \(ABE\),
and \([ABO],[BEO],-[AEO]>0\) put \(O\) there too. This contradicts
its capacity one. Thus \([AEO]>0\).

If \([AEG]<0\), identity (12) now gives \([EGO]<0\). Suppose instead
\([AEG]>0\). The already proved AEF capacity-two implication excludes
\([AGP]>0\), since \([AGO]>0\); hence \([AGP]<0\). The literal
G-pivot identity is

\[
[GAE][GOP]-[GAO][GEP]+[GAP][GEO]=0. \tag{18}
\]

Under the contrary assumption \([EGO]>0\), its first term is negative
because \([GAE]=[AEG]>0\) and \([GOP]<0\). Its second term is negative
because \([GAO]=-[AGO]<0\) and \([GEP]=-[EGP]<0\). Its third term is
negative because \([GAP]=-[AGP]>0\) and \([GEO]=-[EGO]<0\).
This is impossible. Nonvanishing gives the uniform implications

\[
\boxed{[AGO]>0\ \Longrightarrow\ [AEO]>0,\ [EGO]<0}. \tag{19}
\]

The tests \([EFO]>0,[FGO]>0,-[EGO]>0\) consequently put \(O\) inside
\(EFG\) on each of the three remaining positive-AGO words in (10).

## 8. Independent verification and remaining scope

Independent geometric review checks the cyclic line-cut argument, both
capacity-one ray implications, the affine AE test on the actual triangle
CEO, and every inward test used for AEF and ABEF. The two uniform signs
AEP<0 and BEP<0 hold throughout the E-only word; the latter places P
in the actual triangle BCE.

The separate exact reader [audit_n7_e_only.py](audit_n7_e_only.py) directly
expands all nine displayed determinant and contact-area identities and
enumerates the three finite sign catalogues. It uses its own actual
coordinates and the independent eight-point sign reconstruction of the
accepted EFG-cap audit. The optional command is

~~~text
python3 n10/hand/audit_n7_e_only.py
~~~

These structural consequences are accepted as stated. The five ordered
words in (10) are excluded in the complete E-only proof linked above.
Other upper-pair words, both central roots and the global N7 exclusion
remain open.
