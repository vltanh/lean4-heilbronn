# Exact coordinate factors for ITTT

This note proves auxiliary inequalities used in the completed ITTT
arguments. The [whole-count assembly](N6_BTTT_REMAINING_ITTT_COUNT.md)
combines all six normalized top words: `----`, `---+`, `--+-`,
`-++-`, `++-+`, and `+--+`. Transposition exchanges the first pair
and the single-ear pair, while preserving the two other words after
ray relabeling. Each normalized member has its own accepted exclusion,
so the exact transposition covers the entire count.

Use the actual ITTT contacts and point \(P=(p,q)\) strictly inside
\(HCEF\), as in [N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md).
Write \(s=93/1000\). The actual inward tests give

\[
 [CEP]\ge s,\qquad [EFP]\ge s,\qquad -[HFP]\ge s.
\]

The two published exact upper-central identities are

\[
\begin{aligned}
 (1-f)[CEP]+(1-c)[EFP]&=[CEF](1-p),\\
 (1-e)(-[HFP])+(1-h)[EFP]&=[HEF](1-q).
\end{aligned} \tag{1}
\]

They are coordinate determinant expansions; their use does not
require a choice of any further actual sign. Their coefficients
\(1-c,1-f,1-e,1-h\) are nonnegative on the closed square.

**Lemma.** Let independently proved fixed bounds give
\([CEF]\le N_x\) and \([HEF]\le N_y\). Then

\[
\begin{aligned}
 N_x(1-p)-s(2-c-f)&\ge0,\\
 N_y(1-q)-s(2-e-h)&\ge0.
\end{aligned} \tag{2}
\]

Indeed \(p,q\le1\). Replacing each of the two actual positive
areas on the left of (1) by \(s\), and its positive right-hand
area by its independently proved ceiling, gives (2). The ceiling
parameters are positive because each bounds an actual area at least
\(s\). Thus (2) also gives the exact coordinate ceilings

\[
 p\le1-s(2-c-f)/N_x,\qquad
 q\le1-s(2-e-h)/N_y. \tag{3}
\]

More generally, any proved nonnegative lower bounds
\(L_C\le[CEP]\), \(L_F\le[EFP]\), and
\(L_H\le-[HFP]\) give the two nonnegative affine factors

\[
\begin{aligned}
 N_x(1-p)-(1-f)L_C-(1-c)L_F&\ge0,\\
 N_y(1-q)-(1-e)L_H-(1-h)L_F&\ge0.
\end{aligned} \tag{4}
\]

All constants in (2) or (4) must be fixed before the coordinate
refinement that uses them. They may be earlier immutable scalar
bounds, or exact multiaffine maxima on an already proved initial
box. In the latter version, take

\[
 N_x=\min(1,\max_{\text{initial box vertices}}[CEF]),\quad
 N_y=\min(1,\max_{\text{initial box vertices}}[HEF]). \tag{5}
\]

Each printed initial box contains the actual coordinates, and
both contact determinants are multiaffine. Therefore (5) is valid
before any new endpoint is obtained. A final endpoint of the same
refinement is never used to define its source ceiling.

These inequalities retain the simultaneous two-area content of
(1), whereas separate clearances and the universal bounds
\(p,q\le1-s\) can lose it. They are compatible with the actual
signed-area, occupancy, capacity, four-point, product-envelope,
and affine-barycentric rules already used by the completed BTTT
proof. The completed ITTT case trees use (2) as a physical coordinate
factor and inherit proved boxes and scalar bounds in actual-sign
descendants. Their separate theorem notes and literal tables supply
complete binary coverage and exact contradictions for every leaf.
The present auxiliary inequalities introduce no additional closure.

## Eliminating a coordinate between the opposite upper edges

For an upper point \(X=(x,y)\) the inward tests include
\[
 [HCX]=hx+cy-hc,\qquad
 [EFX]=(1-e)(1-x)-(1-f)(y-e).
\]
Put \(D=h(1-f)-c(1-e)\). Multiplication by the edge
coefficients and addition give
\[
\begin{aligned}
 (1-f)[HCX]+c[EFX]&=Dx+c[EFH],\\
 (1-e)[HCX]+h[EFX]&=-Dy+h[CEF].
\end{aligned}
\]
For example the ordinates cancel in the first row, leaving
\(c((1-e)-(1-f)(h-e))=c[EFH]\) as its constant.
In the second row the abscissas cancel.

If \(M_F,M_C\) are fixed upper bounds for \([EFH],[CEF]\)
and \(L_H,L_E\) are fixed lower bounds for the two actual
tests at \(X\), this gives the multiaffine inequalities
\[
\begin{aligned}
 Dx+cM_F-(1-f)L_H-cL_E &\ge0,\\
 -Dy+hM_C-(1-e)L_H-hL_E &\ge0.
\end{aligned}
\]
All the area multipliers in the identities are nonnegative.
The conclusions apply anywhere in \(HCEF\). They can use
the actual bounds from a completed scalar stage, or the floors
\(L_H=L_E=s\). In a coordinate refinement, keep the chosen
area endpoints fixed throughout the application.
