# Affine area bounds inside the top cap

Use the N6 contacts

\[
 E=(1,e),\qquad F=(f,1),\qquad W=(1,1),
 \qquad 0<e,f<1.
\]

The three actual top points \(Q,R,S\) lie strictly on the
\(W\)-side of \(EF\), in the closed unit square. Consequently
each lies in the triangle \(EFW\), with
\(f<x_T\le1\) and \(e<y_T\le1\).
All actual doubled triangle areas are at least \(s=93/1000\).
This note supplies additional affine upper bounds; it makes no
claim that the remaining top-triple counts are closed.

## 1. Bounds involving one or both contacts

For top points \(U,V\), if \([EUV]>0\), then

\[
 [EUV]=(y_U-e)(1-x_V)-(1-x_U)(y_V-e)
       \le \min(y_U-e,\,1-x_V).
 \tag{1}
\]

Every factor on the right of the product identity is nonnegative,
and each factor in either retained product is at most one. If the
orientation is negative, interchange \(U,V\) before applying (1).

Similarly, if \([FUV]>0\), then

\[
 [FUV]=(1-y_U)(x_V-f)-(x_U-f)(1-y_V)
       \le \min(1-y_U,\,x_V-f).
 \tag{2}
\]

Again interchange the two top points when necessary. For a single
top point \(T\), the cap orientation is \([EFT]<0\), and

\[
\begin{aligned}
 |[EFT]|&=(1-e)(x_T-f)-(1-f)(1-y_T),\\
         &=(1-f)(y_T-e)-(1-e)(1-x_T).
\end{aligned}
\]

Thus

\[
 |[EFT]|\le \min(x_T-f,\,y_T-e).
 \tag{3}
\]

Finally, any triangle with its three vertices among
\(E,F,Q,R,S\) lies in \(EFW\). Its doubled area is at most

\[
 (1-e)(1-f)\le\min(1-e,1-f).
 \tag{4}
\]

These statements allow side contacts: zero summands in the
identities do not affect the weak upper bounds.

## 2. Inheriting an anchor bound

Suppose an actual triangle \(T_1T_2T_3\) is contained in an
actual anchor triangle \(ABC\). If \(L\) is one of the
affine upper bounds for \(|[ABC]|\) in
N6_TOP_TRIPLE_SETUP.md, Section 4, then

\[
 |[T_1T_2T_3]|\le |[ABC]|\le L.
 \tag{5}
\]

Each vertex may equal an anchor vertex; all other vertices must
have the three inward edge signs. Containment of the triangle
then follows by convexity. This inference uses no coordinate box.

## 3. Occupancy and support consequences

For any upper bound \(L\) just proved, if the bounded actual
triangle has \(n=0,1,2,3\) printed actual interior witnesses,
then

\[
 L-t_n\ge0,\qquad
 (t_0,t_1,t_2,t_3)=(1,3,149/20,4427/500)s.
 \tag{6}
\]

For \(n=0\) this is the ordinary minimum-area hypothesis;
the other cases use the established triangle occupancy bounds.
The factor name `VCAP_ABC_n_tag` denotes (6), for the actual
triangle `ABC` and the indicated affine bound. It is independent
of both the initial and final coordinate boxes, so it may be used
in the exact multiaffine interval rule.

The bound tags are `top1e`, `top1f`, `xTf`, `yTe`, `1xT`,
and `1yT`, where `T` is the relevant actual top-point label.
They denote, respectively, \(1-e,1-f,x_T-f,y_T-e,1-x_T,1-y_T\).
The sign requirements in (1)--(3) determine which tags apply.
For (5), the tag is `A` followed by the containing anchor-triangle
word and its tag from the existing anchor table.

The same affine bound may replace the corresponding triangle cap
in either endpoint-support inequality of
N6_TOP_TRIPLE_SETUP.md, Section 5. For a positive convex
quadrilateral \(ABCD\), put

\[
 X=[ABC],\quad Y=[ABD],\quad
 \delta=Y-[ACD].
\]

If the witnessed support rate is \(r\), then
\(XY\ge rs\delta\) when \(\delta>0\). Thus

\[
 L_XY-rs\delta\ge0,\qquad
 L_YX-rs\delta\ge0
 \tag{7}
\]

whenever \(L_X\ge X\) and \(L_Y\ge Y\) are bounds
from this note. When \(\delta\le0\), both inequalities follow
directly from positivity. The names are
`QS_ABCD_I_Xtag` and `QS_ABCD_I_Ytag`; the printed occupants
`I` and rational rate retain their existing meanings.

For a positive convex pentagon \(ABCDE\), use
\(X=[ABE],Y=[ADE],\delta=X-[ABD]\). The five-point
endpoint theorem similarly gives

\[
 L_XY-11s\delta\ge0,\qquad
 L_YX-11s\delta\ge0.
 \tag{8}
\]

The names are `F5_ABCDE_AXtag` and `F5_ABCDE_AYtag`.
All factors in (6)--(8) have degree at most three. Previously
published factor names retain their previous definitions.
