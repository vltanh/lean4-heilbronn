# Heilbronn nine-point problem: hand-proof conversion

## Status and scope

**This is not yet a complete hand proof of the unrestricted nine-point theorem.**
It contains a sharp, global hand proof on a specified asymmetric boundary family,
an independent hand proof of unrestricted strict local optimality, and an exact
construction check. The original global classification still depends on the
computer-assisted cover in the preceding package.

The statements proved here do not assume that an arbitrary optimizer is
symmetric or has eight boundary points. In particular, those assumptions must
not be silently inserted when applying the family theorem.

Set

\[
p_0=\frac{15-\sqrt{65}}{40},\qquad
s_0=1-6p_0+5p_0^2=\frac{2-9p_0}{4},\qquad
A_0=\frac{s_0}{2}=\frac{9\sqrt{65}-55}{320}.
\]

The useful elementary identities and bounds are

\[
20p_0^2-15p_0+2=0,
\qquad \frac{173}{1000}<p_0<\frac{347}{2000}<\frac7{40}<\frac15.
\]

The narrower rational bounds follow by squaring
\(403/50<\sqrt{65}<202/25\).

# Part I. A sharp hand proof for the asymmetric boundary family

## 1. The exact family being covered

Write the eight boundary points, in counterclockwise cyclic order, as

\[
\begin{array}{llll}
 A=(0,a),&B=(b,0),&C=(c,0),&D=(1,d),\\
 E=(1,e),&F=(f,1),&G=(g,1),&H=(0,h),
\end{array}
\]

where

\[
0<a<h<1,\quad0<b<c<1,\quad0<d<e<1,\quad0<g<f<1.
\]

The ninth point is \(O=(x,y)\) in the square. Assume it lies inside both
\(\triangle ADH\) and \(\triangle CGF\), and on the side of the line \(BE\)
containing \((1,0)\). Equivalently, the following five expressions are positive:

\[
\begin{aligned}
 U_1&=y-a-(d-a)x,\\
 U_2&=h-y-(h-d)x,\\
 U_3&=e(x-b)-(1-b)y,\\
 U_4&=x-c+(c-g)y,\\
 U_5&=c-x+(f-c)y.
\end{aligned}
\]

These are the doubled areas of \(ADO,DHO,BOE,GOC,OCF\), respectively, with
orientations chosen to be positive. If one of these areas is zero, the desired
upper bound is immediate, so allowing the closed geometric chamber adds no issue.

**Theorem 1.** For every configuration in this family, the minimum of the
following eleven triangle areas is at most \(A_0\):

\[
ABH,\ ABC,\ AGH,\ DFE,\ GHF,\ GFE,
\ ADO,\ DHO,\ BOE,\ GOC,\ OCF.
\]

In particular, the minimum of all 84 triangle areas is at most \(A_0\).
No reflection symmetry, equality between boundary coordinates, or prescribed
set of critical triangles is assumed.

If all eleven displayed areas are at least \(A_0\), the configuration is exactly

\[
\begin{array}{lll}
A=(0,4p_0-1/2),&B=(p_0,0),&C=(1-3p_0/2,0),\\
D=(1,3p_0/2),&E=(1,1-p_0),&F=(3/2-4p_0,1),\\
G=(p_0,1),&H=(0,1-p_0),&O=(1-2p_0,2p_0).
\end{array}
\]

### Proof

Let \(s>0\) be twice the minimum of the eleven displayed areas. Define

\[
L=h-a,\qquad M=f-g,\qquad u=\frac{s}{L},\qquad v=\frac{s}{M}.
\]

All six boundary-triangle inequalities are

\[
\begin{array}{lll}
bL\ge s,&a(c-b)\ge s,&gL\ge s,\\
(1-f)(e-d)\ge s,&(1-h)M\ge s,&(1-e)M\ge s.
\end{array}                                                     \tag{1}
\]

The five other inequalities are \(U_i\ge s\).

## 2. Two effective boundary parameters

From (1),

\[
b,g\ge u,\qquad e,h\le1-v.                                    \tag{2}
\]

Adding \(U_1\ge s\) and \(U_2\ge s\) eliminates \(d\), giving
\(L(1-x)\ge2s\). Adding \(U_4\ge s\) and \(U_5\ge s\) eliminates \(c\),
giving \(My\ge2s\). Thus

\[
x\le1-2u,\qquad y\ge2v.                                       \tag{3}
\]

The inequality \(U_3\ge s>0\) implies \(x>b\) and \(e>y\). Consequently every
step below has the indicated monotonicity:

\[
\begin{aligned}
s
&\le e(x-b)-(1-b)y\\
&\le e(x-u)-(1-u)y\\
&\le(1-v)(x-u)-(1-u)y\\
&\le(1-v)(1-3u)-2v(1-u)\\
&=1-3u-3v+5uv.                                                 \tag{4}
\end{aligned}
\]

This is the first necessary scalar inequality.

## 3. A second scalar inequality

Put

\[
\alpha=1-v-\frac{s}{u},\qquad
\beta=1-u-\frac{s}{v}.
\]

Since \(a=h-L\) and \(f=g+M\), (2) gives

\[
a\le\alpha,\qquad1-f\le\beta.
\]

In fact \(\alpha>s\) and \(\beta>s\): by (1),
\(a\ge s/(c-b)>s\), and \(1-f\ge s/(e-d)>s\).

From \(U_4\ge s\),

\[
c(1-y)\le x-gy-s\le x-uy-s.
\]

Combining this with \(a(c-b)\ge s\), \(a\le\alpha\), and \(b\ge u\), we get

\[
s(1-y)\le\alpha(x-u-s).                                      \tag{5}
\]

From \(U_2\ge s\),

\[
dx\ge y+s-h(1-x).
\]

It follows that

\[
x(e-d)\le ex+h(1-x)-y-s\le1-v-y-s.
\]

Combining this with \((1-f)(e-d)\ge s\) and \(1-f\le\beta\), we get

\[
sx\le\beta(1-v-y-s).                                         \tag{6}
\]

All divisions are legitimate: \(x>b>0\) and \(y<e<1\).

Set \(X=1-x\) and \(Y=y\). Adding (5) and (6), after rearranging, gives

\[
(\alpha-s)X+(\beta-s)Y
\le\alpha(1-u-s)+\beta(1-v-s)-2s.
\]

The coefficients on the left are strictly positive. We may therefore use
\(X\ge2u\), \(Y\ge2v\) from (3). The result is

\[
\alpha(1-3u-s)+\beta(1-3v-s)+2s(u+v-1)\ge0.                    \tag{7}
\]

Write \(S=u+v\) and \(P=uv\). Substitution into (7), followed by expansion,
gives exactly

\[
6P+(3s-4)S+2s+2-\frac{s(1-s)S}{P}\ge0.                        \tag{8}
\]

## 4. Symmetrization of necessary inequalities, not of configurations

Let \(p=S/2\). From (3) and \(0<x,y<1\), we have \(0<u,v<1/2\).
Moreover \(L,M<1\), so \(p\ge s\).

The arithmetic-geometric mean inequality gives \(P\le p^2\). Hence (4) implies

\[
s\le1-6p+5p^2=:g(p).                                         \tag{9}
\]

Since \(0<p<1/2\) and \(s>0\), (9) forces \(p<1/5\). Therefore
\(0<s\le p<1/5\).

For fixed \(S,s\), the left side of (8) is strictly increasing as a function
of \(P>0\), because its derivative is

\[
6+\frac{s(1-s)S}{P^2}>0.
\]

Replacing \(P\) by its upper bound \(p^2\) is thus a relaxation of a necessary
inequality. We are not assuming that the actual configuration is symmetric.
It follows from (8) that

\[
R(p,s):=3p^3+3p^2s-4p^2+ps+p+s^2-s\ge0,                      \tag{10}
\]

because the relaxed expression is \(2R(p,s)/p\).

Thus every configuration in the stated family produces numbers satisfying

\[
\boxed{0<s\le p<1/5,\qquad s\le g(p),\qquad R(p,s)\ge0.}       \tag{11}
\]

## 5. The exact scalar bound

We claim that (11) implies \(s\le s_0\).

On \(0<p,s<1/5\),

\[
R_s=3p^2+p+2s-1<-7/25<0.                                    \tag{12}
\]

Also \(g\) is strictly decreasing on \((0,1/5)\). If \(s>s_0=g(p_0)\),
then (9) implies \(p<p_0\).

The function \(R(p,s_0)\) is strictly increasing on \([0,p_0]\). Indeed,

\[
R_p=9p^2+(6s_0-8)p+s_0+1,
\]

and \(R_{pp}=18p+6s_0-8<0\) throughout that interval. Its smallest first
derivative is therefore at \(p_0\). Using \(20p_0^2-15p_0+2=0\),

\[
R_p(p_0,s_0)=\frac{39}{20}-\frac{85p_0}{8}
>\frac{29}{320}>0.
\]

Finally, the identity

\[
R(p,g(p))=2p(p-1)(20p^2-15p+2)
\]

gives \(R(p_0,s_0)=0\). If \(s>s_0\), (12) now yields

\[
R(p,s)<R(p,s_0)<R(p_0,s_0)=0,
\]

contradicting (10). This proves \(s/2\le A_0\).

## 6. Equality and the emergence of symmetry

Suppose \(s=s_0\). Equations (9)-(12) first force \(p=p_0\).
Strict monotonicity in \(P\) in (8) then forces \(P=p_0^2\), hence
\(u=v=p_0\).

Equality in (4) forces

\[
b=p_0,\quad e=1-p_0,\quad x=1-2p_0,\quad y=2p_0.
\]

Here the relevant coefficients \(e-y\), \(x-u\), \(1-v\), and \(1-u\)
are strictly positive, so equality in the successive monotone bounds really
does force these conclusions.

Now \(L=M=s_0/p_0\), and the sums \(U_1+U_2\) and \(U_4+U_5\) are exactly
\(2s_0\); each of those four individual quantities is therefore \(s_0\).
Using \(a(c-b)\ge s_0\), the bound on \(c\) in (5), and
\(a\le1-p_0-s_0/p_0\), equality forces \(g=p_0\) and \(h=1-p_0\).
Indeed the upper bound on that product is exactly \(s_0\), with both factors
positive and strictly decreasing when \(g\) increases or \(h\) decreases.

Consequently

\[
a=4p_0-1/2,\quad f=3/2-4p_0,
\quad c=1-3p_0/2,\quad d=3p_0/2.
\]

These are precisely the coordinates stated in the theorem. This completes
both the upper bound and the equality argument on the whole stated family.

# Part II. Unrestricted strict local optimality by hand

The following local result allows all eighteen coordinates to vary, including
moving any boundary point into the square. It does **not** require the family
hypotheses of Part I for the perturbed configuration.

**Theorem 2.** The displayed configuration \(P_*\) is a strict first-order local
maximizer. There exist \(\varepsilon,c>0\) such that every configuration in the
square with \(h=\|P-P_*\|_\infty\le\varepsilon\) satisfies

\[
\min\operatorname{Area}(P)\le A_0-c h.
\]

This proof is qualitative: it does not independently reproduce the old
computer certificate's explicit radius \(1/200\). It removes the need for a
19-by-19 matrix inverse to establish unrestricted local optimality.

## 7. An explicit positive stress

Write \(p=p_0\). Let \(f_T\) be the signed **area**, not doubled area, of each
of the eleven triangles in Part I, with its positive orientation at \(P_*\).
Let \(J_T=\nabla f_T(P_*)\).

For the eight active square-boundary constraints, let \(n_V\) be the unit
inward normal in the corresponding point's coordinate block. Thus
\(n_V\cdot d\ge0\) for every feasible displacement \(d=P-P_*\).

Assign the following weights to triangles:

| Triangles | Weight |
|---|---:|
| \(ABH,GFE\) | \((3664p-631)/7\) |
| \(ABC,DFE\) | \(1\) |
| \(ADO,OCF\) | \(49-278p\) |
| \(AGH,GHF\) | \(2(79p-10)/7\) |
| \(BOE\) | \(1000p-173\) |
| \(DHO,GOC\) | \((109-616p)/2\) |

Assign these boundary-normal weights:

| Boundary points | Weight |
|---|---:|
| \(A,F\) | \(3(1187p-202)/56\) |
| \(B,E\) | \((402-2311p)/4\) |
| \(C,D\) | \(3(267p-46)/4\) |
| \(G,H\) | \((4302-24701p)/56\) |

Every weight is strictly positive using
\(173/1000<p<347/2000\).

They satisfy the exact identity

\[
\sum_T\lambda_T J_T+\sum_V\mu_V n_V=0.                       \tag{13}
\]

Here is a short direct check, avoiding an inverse matrix. Substitute the
coordinate formulas and retain \(p\) as an indeterminate. The two components
of the left side in each point's block are the following pair multiplied by
\(20p^2-15p+2\):

| Point | Residual coefficient pair |
|---|---|
| \(A\) | \((137/8,1/4)\) |
| \(B\) | \((67/7,50)\) |
| \(C\) | \((-3/2,-37)\) |
| \(D\) | \((37,3/2)\) |
| \(E\) | \((-50,-67/7)\) |
| \(F\) | \((-1/4,-137/8)\) |
| \(G\) | \((-15/14,-203/4)\) |
| \(H\) | \((203/4,15/14)\) |
| \(O\) | \((-493/8,493/8)\) |

The gradient formula used for this check is

\[
\nabla_{P_i}\,\frac12\det(P_j-P_i,P_k-P_i)
=\frac12(y_j-y_k,\ x_k-x_j).
\]

Since \(20p_0^2-15p_0+2=0\), all eighteen components vanish.

## 8. The only zero first-order motion is the zero motion

Suppose \(d\) is feasible and all eleven derivatives \(J_Td\) are nonnegative.
Taking the scalar product of (13) with \(d\), all terms are nonnegative and
all weights strictly positive. Thus every \(J_Td\) and every \(n_Vd\) is zero.
In particular all eight normal boundary displacements vanish.

The remaining variables are the differentials of
\(a,b,c,d,e,f,g,h,x,y\) in Part I. For clarity call the differentials of \(b,h\)
respectively \(B_1,H_1\), and write

\[
L=\frac32-5p,\qquad a=4p-\frac12,\qquad K=1-\frac52p.
\]

Zero derivatives of the boundary triangles and the paired interior sums give

\[
\begin{aligned}
\delta g&=B_1,&\delta e&=H_1,\\
\delta a&=H_1+(L/p)B_1,&\delta f&=B_1+(L/p)H_1,\\
\delta x&=-2B_1,&\delta y&=-2H_1.
\end{aligned}                                                 \tag{14}
\]

The doubled-area derivative of \(BOE\) becomes
\((3-5p)(H_1-B_1)=0\). Hence \(B_1=H_1=:z\).

Let \(k=1+L/p\). The zero derivatives of \(ABC\) and \(DFE\) give

\[
\delta c=\delta d=(1-Kk/a)z.
\]

Finally the doubled-area derivative of \(ADO\), after these substitutions,
is

\[
\frac{12(1/5-p)}{p(8p-1)}\,z.
\]

Its coefficient is strictly positive, so \(z=0\). Equations (14) now show
that every remaining displacement is zero.

## 9. First-order separation implies strict local optimality

Let \(\mathcal C\) be the closed cone of inward feasible first-order motions.
On its intersection with the unit infinity-norm sphere, the continuous
function

\[
d\longmapsto\min_T J_Td
\]

is everywhere strictly negative by Section 8. Compactness therefore gives
\(\kappa>0\) such that

\[
\min_T J_Td\le-\kappa\|d\|_\infty\qquad(d\in\mathcal C).
\]

Every signed triangle area has an exact quadratic expansion

\[
f_T(P_*+d)=A_0+J_Td+q_T(d),\qquad |q_T(d)|\le2\|d\|_\infty^2.
\]

The remainder bound follows because the three displacement vectors lie in
a square of side \(2\|d\|_\infty\), whose largest inscribed triangle has half
its area. For sufficiently small \(d\), the eleven signed areas remain
positive by continuity. Choosing the derivative-minimizing triangle gives

\[
\min\operatorname{Area}(P_*+d)
\le A_0-\kappa h+2h^2
\le A_0-(\kappa/2)h
\]

when \(h\le\kappa/4\) and the orientation neighborhood is respected.
This proves Theorem 2 entirely by finite algebra and compactness.

# Part III. What remains for a complete hand proof

The preceding computer-assisted draft has a hand reduction to three exhaustive
normal forms. It obtains the remaining global exclusions by enumerating real
coordinate boxes. The new proofs here do not replace that global enumeration.

| Obligation | Hand-proof status |
|---|---|
| Attaining construction | Complete; exact area check in the appendix below |
| Three-family normalization | Already a hand argument; see the copied boundary-reduction note |
| Sharp bound and equality in the boundary chamber of Part I | Complete here, with arbitrary asymmetric boundary parameters |
| Strict local optimality against all 18 coordinate perturbations | Complete here, qualitative radius |
| Type III: three prescribed corners and six free points | No complete hand exclusion in this note |
| Type II: adjacent-corner form and five free points | No complete hand exclusion in this note |
| General Type I: five boundary points and four free points | No complete hand reduction to Part I or other hand-excluded families in this note |

A sufficient new structural theorem would say that any global maximizer with
minimum area at least \(A_0\), after a square symmetry and relabeling, has the
eight boundary incidences and the orientation chamber of Part I. **That theorem
is not proved here.** The existing five-boundary-point normalization does not
imply it. Nor can it be inferred just from the coordinates of the candidate,
from stationarity at that candidate, or from the equality argument in Part I.

The original quantitative local radius \(1/200\) remains justified by its
previous exact arithmetic certificate. The qualitative proof in Part II is
not a claim that a smaller or unspecified radius can be substituted into the
old completed global cover without rechecking that cover.

## Provenance and verification

The candidate coordinates and eleven active triangles were taken from the
preceding exact-proof package, which traces the construction to Comellas--Yebra
and Sudermann-Merx. The proof in Part I and the explicit stress/elimination proof
in Part II were derived during this hand-conversion attempt.

The optional `check_identities.py` rechecks the displayed polynomial identities,
stress table, and kernel coefficient using symbolic algebra. It is a diagnostic
for transcription mistakes, not an exhaustive certificate or a necessary premise
of the written proof. Every identity required by the proof is explicitly stated
and is checkable by multiplication and the single relation
\(20p_0^2-15p_0+2=0\).

The full earlier global computation was not rerun in this hand-conversion session.
The original local exact checker was rerun successfully. No external independent
review or Lean verification of these new arguments is claimed.

# Appendix. Exact attainment, with a finite hand-checkable area table

Use the nine coordinates in Theorem 1 at \(p=p_0\). They are in the unit square
and distinct by the rational bounds on \(p_0\). The following table lists every
triple exactly once, grouped by its exact value of
\(\operatorname{Area}(T)-A_0\). All nonzero gaps are strictly positive from
\(173/1000<p_0<347/2000\). Thus the minimum of the 84 areas is exactly \(A_0\).

The entries follow by applying the determinant formula and reducing \(p^2\)
using \(20p^2-15p+2=0\); no search over configurations occurs in this check.

| Triangles | Area minus \(A_0\) |
|---|---:|
| ABH, ABC, ADO, AGH, BEO, DHO, DEF, FGH, CGO, EFG, CFO | \(0\) |
| CDO | \(\frac{81 p - 14}{32}\) |
| BCD, CDE | \(\frac{15 p - 2}{32}\) |
| ABO, EFO | \(\frac{p}{8}\) |
| BDO, CEO | \(\frac{37 p - 6}{16}\) |
| ABG, BGH, EGH, EFH | \(\frac{13 p - 2}{8}\) |
| DGO, CHO | \(\frac{15 p - 2}{16}\) |
| BCO, DEO, GHO | \(\frac{p}{4}\) |
| ABD, CEF | \(\frac{3 \left(13 p - 2\right)}{16}\) |
| ACO, DFO | \(\frac{3 p}{8}\) |
| ACD, CDF | \(\frac{93 p - 14}{32}\) |
| AEO, BFO | \(\frac{15 p - 2}{8}\) |
| DGH, CGH | \(\frac{19 p - 2}{16}\) |
| ABF, AEF | \(- \frac{13 p - 3}{8}\) |
| ABE, BEF | \(\frac{8 p - 1}{4}\) |
| AFO | \(\frac{p + 1}{8}\) |
| CDG, CDH | \(\frac{39 p - 2}{32}\) |
| AHO, FGO | \(\frac{7 p}{8}\) |
| BHO, EGO | \(p\) |
| ACH, BDE, BCH, BCE, DFG, DEG | \(\frac{5 p + 2}{16}\) |
| BGO, EHO | \(- \frac{3 p - 2}{8}\) |
| AGO, FHO | \(\frac{9 p}{8}\) |
| AFG, AFH | \(\frac{15 p - 1}{8}\) |
| ADE, BCG, BCF, DEH | \(- \frac{p - 2}{8}\) |
| ACG, DFH | \(\frac{3 p}{2}\) |
| ADH, AEH, BFG, CFG | \(- \frac{11 p - 4}{8}\) |
| ACE, BDF | \(\frac{37 p - 2}{16}\) |
| AEG, BFH | \(\frac{p + 1}{4}\) |
| BDH, CEG | \(\frac{17 p + 2}{16}\) |
| ADF, ACF | \(- \frac{14 p - 5}{8}\) |
| ADG, CFH | \(- \frac{3 \left(p - 2\right)}{16}\) |
| BDG, BEG, BEH, CEH | \(\frac{5 p + 2}{8}\) |

There are 84 triples in this table, including eleven with zero gap.