# Actual geometry for the normalized central ITTT word

This note proves the initial signs and rational box used for the central
ITTT word `+--+`. It supplies setup lemmas, not a whole-word exclusion.
The complete binary case argument is separate.

Use the contact coordinates and hypotheses of
[N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md):

\[
 A=(0,a),\ B=(b,0),\ C=(c,0),\ E=(1,e),\ F=(f,1),\ H=(0,h),
\]

with \(0<a<h\le1\), \(0<b<c\le1\), \(a\le e\le h\),
\(b\le f\le c\), and \(e\le f\). Every unsigned doubled
actual triangle area is at least \(s=93/1000\). The actual point
\(P=(p,q)\) is strictly inside \(HCEF\); the actual points
\(Q,R,S\) are on the corner side of \(EF\), in the closed top
triangle \(EF(1,1)\). The top signs are

\[
 EQR,EQS,ERS>0,\quad FQR>0,\quad FQS<0,\quad FRS<0,\quad QRS>0.
 \tag{1}
\]

Write
\(\alpha=1037/10000\), \(K=149/20\), \(J=4427/500\),
\(G=1457/250\), and \(\delta=s/(1-\alpha)\). The actual
triangle costs for zero through three interior actual points are
\(s,3s,Ks,Js\). The occupied quadrilateral and endpoint-support
costs are the published actual-area bounds recorded in the setup
and [N6_BTTT_REMAINING_AFFINE_BOUNDS.md](N6_BTTT_REMAINING_AFFINE_BOUNDS.md).

## The top hull and contact ceilings

The signs in (1) make \(EQRF\) positively convex and put \(S\)
strictly inside it. For example, its four cyclic triple signs are
\(EQR,EQF,ERF,QRF>0\); the four edge tests at \(S\) are
\(EQS,QRS,RFS,FES>0\). Thus the one-occupant quadrilateral bound,
weakened to \(G<3+2\sqrt2\), gives

\[
 (1-e)(1-f)\ge Gs. \tag{2}
\]

The actual clearances \(a(c-b)\ge s\) and \(b(h-a)\ge s\)
imply \(a(1-b)\ge s\) and \(b(1-a)\ge s\). If
\(m=\min(a,b)\le\alpha\) and \(M=\max(a,b)\), the corresponding
one of these two left sides is at most
\(m(1-M)\le m(1-m)\le\alpha(1-\alpha)<s\), a contradiction.
Here \(s-\alpha(1-\alpha)=5369/10^8>0\). Hence
\(a,b,e,f>\alpha\), and (2) gives

\[
 a,b,e,f\le t:=1-\frac{Gs}{1-\alpha}
                  =\frac{88574}{224075}. \tag{3}
\]

Because \(e\le f\), (2) also gives \((1-e)^2\ge Gs\).
The exact difference

\[
 Gs-(1-33/125)^2=77/250000>0
\]

therefore proves \(a,e\le33/125\). The actual areas of
\(ABC,ABE,ACE,BCE\) are at most \(a,e,e,e\), respectively.
Since \(33/125<3s\), each of these four actual triangles is
empty of any other actual point. These four triangles are the empty
anchors used in the central-word argument.

Two scalar anchor-cap families used in later stages have the explicit
actual-coordinate identities

\[
 [ABE]=e-(e-a)(1-b)\le e,\qquad
 [BEF]=(1-b)-e(f-b)\le1-b. \tag{3a}
\]

Both remainders are nonnegative by the contact order and the square
bounds. An occurrence of either ceiling uses the exact maximum of
its displayed affine cap on the already completed stage box. This
is an area ceiling; it does not assert that \(BEF\) is empty.

## Lower contacts and the upper point

Put \(x=a/h\), \(y=b/c\). The same two actual clearances are

\[
 hc\,x(1-y)\ge s,\qquad hc\,y(1-x)\ge s.
\]

If \(x\le y\), then \(x(1-y)\le y(1-y)\le1/4\); the other
order uses the other expression. Consequently

\[
 hc\ge4s. \tag{4}
\]

If \(a\le a_{\max}\) and \(b\le b_{\max}\) have already been
proved, the actual anchor clearances further give

\[
 c\ge\alpha+s/a_{\max},\qquad h\ge\alpha+s/b_{\max}. \tag{5}
\]

Every free actual point \(X=(x_X,y_X)\) has the inward actual
anchor-edge signs. In particular
\([HAX]=(h-a)x_X\ge s\) and
\([BCX]=(c-b)y_X\ge s\), so \(x_X,y_X\ge\delta\).
The upper placement of \(P\) supplies \(HCP>0\),
\(CEP>0\), \(EFP>0\), and \(HFP<0\). Its coordinate ceilings
follow from the exact identities

\[
\begin{aligned}
 (1-f)[CEP]+(1-c)[EFP]&=[CEF](1-p),\\
 (1-e)(-[HFP])+(1-h)[EFP]&=[HEF](1-q).
\end{aligned} \tag{6}
\]

Here \([CEF]\le1-f\), \([HEF]\le1-e\), and the displayed actual
fan areas are at least \(s\). Since \(1-e,1-f>0\), (6) proves
\(p,q\le1-s\). The proof and the fixed-box strengthening of (6)
are also stated in
[N6_BTTT_REMAINING_ITTT_ROUTE.md](N6_BTTT_REMAINING_ITTT_ROUTE.md).
For any independently proved ceilings \(N_x\ge[CEF]\) and
\(N_y\ge[HEF]\), the factors

\[
 N_x(1-p)-s(2-c-f)\ge0,\qquad
 N_y(1-q)-s(2-e-h)\ge0 \tag{7}
\]

are nonnegative at the actual configuration. In the literal stages,
these ceilings are the smaller of one and the exact determinant
maximum on that stage's already proved **initial** box. They are
fixed before any coordinate update in the stage.

For each top point \(T\), affinity across the two actual triangles
separated by \(EF\) gives

\[
\begin{aligned}
 (1-f)[EPT]&=(1-p)[EFT]-(1-x_T)[EFP],\\
 (1-e)[FPT]&=(1-y_T)[EFP]-(1-q)[EFT].
\end{aligned}
\]

The square-side inequalities, \(p,q<1\), \([EFP]>0\), and
\([EFT]<0\) prove \(EPT<0\), \(FPT>0\), including when a top
point lies on a closed square side. Any further \(HP\) or \(CP\)
cross sign is established in its own actual-sign context or split.

## Top-point coordinate bounds

If \(n\in\{0,1,2\}\) other top points are proved inside the actual
triangle \(EFT\), put \(c_n=1,3,K\), respectively. Its unsigned
area \(D_T\ge c_ns\) satisfies

\[
 D_T\le(1-e)(x_T-f),\qquad
 D_T\le(1-f)(y_T-e).
\]

Therefore

\[
 x_T,y_T\ge\alpha+\frac{c_ns}{1-\alpha}. \tag{8}
\]

If an actual point \(U\) is inside \(EFT\), its barycentric
weights at \(F,E\) are at least \(s/D_T\). As
\(D_T\le(1-e)(1-f)\), its two coordinates are at most
\(1-\delta\). These bounds and the stronger witnessed fan-weight
inequalities are used only when that particular containment has
already been proved.

Equations (3)–(5) and (8), \(\delta\le p,q\le1-s\), and the
square bounds give the initial rational boxes. Later stages intersect
their own coarse boxes with a named, completed ancestor box. Every
area source carries an immutable stage-and-row reference. The
terminal polynomial rule in
[N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md](N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md)
uses completed boxes and proved sources; it does not refine the box
that supplies its coordinate factors.
