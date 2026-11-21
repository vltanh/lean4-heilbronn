# Exact upper-point compatibility factors for ITTT

This auxiliary lemma concerns actual ITTT configurations under the
hypotheses of [N6_TOP_TRIPLE_SETUP.md](N6_TOP_TRIPLE_SETUP.md).
It makes no claim that an ITTT case has been excluded. Let fixed
independently proved positive constants satisfy
\([CEF]\le N_x\), \([HEF]\le N_y\), and put

\[
 X=2-c-f,\qquad Y=2-e-h.
\]

The upper-point identities of
[N6_BTTT_REMAINING_ITTT_ROUTE.md](N6_BTTT_REMAINING_ITTT_ROUTE.md)
give the proved nonnegative affine factors

\[
 F_x=N_x(1-p)-sX\ge0,\qquad
 F_y=N_y(1-q)-sY\ge0.
\]

The actual \(HC\), \(AH\), and \(BC\) clearances give

\[
 F_{HC}=hp+cq-hc-s\ge0,\quad
 F_{AH}=(h-a)p-s\ge0,\quad
 F_{BC}=(c-b)q-s\ge0.
\]

In particular \(F_{HC}=[HCP]-s\), since \(P\) is inside
\(HCEF\), and the other two are the unsigned actual areas of
\(AHP\) and \(BCP\), minus \(s\).

**Lemma.** The following three multiaffine polynomials are nonnegative:

\[
\begin{aligned}
 U={}&N_xN_y(h+c-hc-s)
       -s\{hN_y(2-c-f)+cN_x(2-e-h)\},\\
 U_x={}&N_x(h-a-s)-s(h-a)(2-c-f),\\
 U_y={}&N_y(c-b-s)-s(c-b)(2-e-h).
\end{aligned} \tag{1}
\]

Indeed the exact identities

\[
\begin{aligned}
 U&=hN_yF_x+cN_xF_y+N_xN_yF_{HC},\\
 U_x&=(h-a)F_x+N_xF_{AH},\\
 U_y&=(c-b)F_y+N_yF_{BC}
\end{aligned} \tag{2}
\]

follow by expansion. Every multiplier in (2) is nonnegative:
\(c,h,N_x,N_y>0\), \(h-a>0\), and \(c-b>0\).
Thus each term in each displayed sum is nonnegative. The target
coordinates \(p,q\) cancel exactly. The expanded expressions in
(1) contain no repeated coordinate in a monomial, so the exact
multiaffine endpoint-line rule applies to them.

The constants \(N_x,N_y\) must be fixed before the refinement
using (1). For example they may be the smaller of one and the exact
multiaffine maxima of the corresponding contact determinants on
an already proved initial box. That initial box and both rational
source ceilings must be printed and independently reconstructed.
A refined endpoint cannot define the ceiling of a factor used to
obtain that endpoint. Completed earlier immutable actual-area
ceilings may also be used with the same source-scope requirements.

Equations (1)--(2) retain joint compatibility of several actual
clearances when their separate box updates lose information.
Every later case application still needs its literal polynomials,
fixed source versions, complete endpoint lines, and actual binary
coverage. No discovery infeasibility assertion is a proof premise.

The same elimination retains independently proved stronger fan floors.
For fixed nonnegative constants
\(L_C\le[CEP]\), \(L_F\le[EFP]\), and
\(L_H\le-[HFP]\), put

\[
 D_x=(1-f)L_C+(1-c)L_F,\qquad
 D_y=(1-e)L_H+(1-h)L_F.
\]

Replace \(F_x,F_y\) by \(N_x(1-p)-D_x\) and
\(N_y(1-q)-D_y\). The identical nonnegative sums (2) give

\[
\begin{aligned}
 N_xN_y(h+c-hc-s)-hN_yD_x-cN_xD_y&\ge0,\\
 N_x(h-a-s)-(h-a)D_x&\ge0,\\
 N_y(c-b-s)-(c-b)D_y&\ge0.
\end{aligned}
\]

These remain multiaffine because \(D_x\) involves only \(c,f\)
and \(D_y\) only \(e,h\). Every selected ceiling and lower floor
must carry its own completed earlier source version; none is a
final estimate of the refinement being justified.
