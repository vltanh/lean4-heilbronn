# A complete hand exclusion of radial class R6

## Statement and scope

Use the eight-boundary labels and strict coordinate orders in
`EIGHT_BOUNDARY.md`. The radial representative

\[
                  (3,3,3,4,4,4,4,3)
\]

is class R6 in `RADIAL_CATALOGUE.md`.

**Theorem.** Every configuration in R6, and every square-symmetry image of
it, has a triangle of area at most

\[
                         \frac7{128}<A_0.
\]

The proof bounds an explicitly larger four-variable continuous domain. It
uses no subdivision or enumeration. The positive margins below are rational;
the target value of the restricted R6 optimization need not be identified.

## 1. Necessary inequalities from the area conditions

Suppose for contradiction that all triangle areas are at least \(7/128\).
Set

\[
 s=\frac7{64},\quad m=\frac7{50},\quad q=\frac{43}{192}
       =\frac13-s,\quad 3q=1-3s.
                                                               \tag{1}
\]

Thus every doubled triangle area is at least s. Write

\[
 L=h-a,\quad T=f-g,\quad u=s/L,\quad v=s/T,\quad
 X=1-x,\quad Y=y.
\]

The four boundary triangles ABH, AGH, GHF, and GFE give

\[
                  b,g\ge u,\qquad e,h\le1-v.                \tag{2}
\]

Put

\[
                       \delta=b-u\ge0,\qquad
                       \varepsilon=1-v-e\ge0.
\]

The orientations ADO, DHO, GOC, and OCF are positive in R6. Adding the
first two doubled-area inequalities and the last two gives

\[
                            X\ge2u,\qquad Y\ge2v.            \tag{3}
\]

The three remaining signs of AE, BF, and BE in R6 give

\[
 \begin{aligned}
 aX+e(1-X)-Y&\ge s,\\
 1-X-b(1-Y)-fY&\ge s,\\
 (1-b)Y-e(1-X-b)&\ge s.
 \end{aligned}                                               \tag{4}
\]

For clarity, the radial word gives \(k_A=3\), \(k_B=3\): the A--E
and B--F determinants are negative, whereas the B--E determinant is positive.
These are exactly the orientations in (4). Similarly, \(k_A=3,k_D=4\)
and \(k_C=3,k_G=4\) give the four signs used in (3).

Using (2),

\[
                  a\le1-v-s/u,\qquad f\ge u+s/v.
\]

Thus the first two expressions in (4) are bounded above by

\[
 \begin{aligned}
 V_1&=1-v-Y-(s/u)X-\varepsilon(1-X),\\
 V_2&=1-u-X-(s/v)Y-\delta(1-Y),
 \end{aligned}
\]

and these upper bounds must satisfy \(V_1,V_2\ge s\).

Two more boundary triangles, ABC and DEF, give

\[
 a(c-b)\ge s,\qquad (1-f)(e-d)\ge s.
\]

Since \(c-b<1\) and \(e-d<1\), one has \(a>s\) and \(1-f>s\).
Consequently

\[
                  1-v-s/u>s,\qquad 1-u-s/v>s.               \tag{5}
\]

As \(L,T<1\), initially \(u,v>s\). Combining this with (5) yields

\[
                     u,v>\frac{s}{1-2s}=m.                 \tag{6}
\]

Drop the nonnegative \(\delta,\varepsilon\) terms in \(V_1,V_2\).
Using (3), the resulting inequalities imply

\[
 \begin{aligned}
 Y&\le1-v-3s=3q-v,\\
 X&\le1-u-3s=3q-u.
 \end{aligned}                                               \tag{7}
\]

In particular \(u,v\le q\). Every putative counterexample therefore
belongs to the following product of two closed triangles:

\[
 \mathcal D=\{(u,X,v,Y):
 m\le u,v\le q,\quad 2u\le X\le3q-u,
 \quad2v\le Y\le3q-v\}.                                   \tag{8}
\]

Enlarging (6) to the closed inequalities in (8) is harmless for an upper
bound. In particular \(X,Y\le3q-m=851/1600<1\).

## 2. Eliminate the two boundary offsets

Set

\[
 \bar a=1-u-X,\quad\bar b=1-v-Y,\quad
 \rho=\bar a-\delta=x-b,\quad
 \tau=\bar b-\varepsilon=e-y.
\]

An exact identity for the third expression in (4) is

\[
                  (1-b)Y-e(1-X-b)=XY-\rho\tau.              \tag{9}
\]

The inequalities \(V_1,V_2\ge s\) give

\[
 \rho\ge\rho_*:=\frac{s+Y(s/v-\bar a)}{1-Y},\qquad
 \tau\ge\tau_*:=\frac{s+X(s/u-\bar b)}{1-X}.               \tag{10}
\]

Both right sides are strictly positive throughout \(\mathcal D\).
Indeed,

\[
 \bar a\le1-3m=29/50,\qquad s/v\ge s/q=21/43>12/25,
 \qquad Y<3/5,
\]

so the numerator of \(\rho_*\) is greater than
\(s-3/50=79/1600>0\). The same argument applies to \(\tau_*\).
This proves \(\rho,\tau>0\) directly; no extra projection-overlap
assumption on the actual configuration is needed.

Define the continuous function

\[
 \Phi(u,X,v,Y)=XY-
 \frac{[s+Y(s/v-1+u+X)]
       [s+X(s/u-1+v+Y)]}{(1-X)(1-Y)}.                       \tag{11}
\]

Equations (9)-(10) imply

\[
                            s\le\Phi(u,X,v,Y).              \tag{12}
\]

We will prove that \(\Phi<s\) everywhere on \(\mathcal D\).

## 3. Increasing u at fixed X

A direct differentiation of (11) gives

\[
 \frac{\partial\Phi}{\partial u}
 =\frac{XY}{u^2(1-X)(1-Y)}B,
\]

where

\[
 B=\frac{s^2}{Y}+\frac{s^2}{v}-s+sX-\frac{u^2s}{X}
                     +u^2(1-v-Y).                         \tag{13}
\]

Every prefactor is positive. On \(\mathcal D\),

\[
 1-v-Y\ge3s,\qquad
 X-\frac{u^2}{X}\ge\frac{3u}{2}.
\]

Also \(Y\le3q-v\) and \(v\le q\) give

\[
 \frac1v+\frac1Y\ge\frac1v+\frac1{3q-v}\ge\frac3{2q}.
\]

For the last inequality, the middle expression decreases on \(0<v\le q\).
Therefore

\[
 \frac Bs\ge\frac{3s}{2q}-1+\frac{3u}{2}+3u^2
 \ge\frac{3s}{2q}-1+\frac{3m}{2}+3m^2
 =\frac{73}{53750}>0.                                     \tag{14}
\]

Thus \(\partial\Phi/\partial u>0\) throughout the domain. Interchanging
\((u,X)\) and \((v,Y)\) proves the analogous assertion for v.

Since \(\mathcal D\) is compact, \(\Phi\) attains a maximum there.
At a maximizing point, the pair (u,X) must satisfy either \(X=2u\) or
\(X=3q-u\): otherwise u could be increased at fixed X. The same statement
holds for (v,Y). We have reduced the maximization to the two edges of each
triangle, without discarding any part of the original domain.

## 4. Increasing u along the upper edge

Suppose \(X=3q-u=1-u-3s\), with (v,Y) fixed. Then
\(\bar a=3s\), and the first expression in (10) is independent of u:

\[
 \rho_*=\frac{s[1+Y(1/v-3)]}{1-Y}\ge3s,
\]

where the inequality is exactly \(Y\ge2v\).
Writing \(\bar b=1-v-Y\), the other expression becomes

\[
 \tau_*=\bar b+
       \frac{s(1-3s)/u-\bar b}{u+3s}.
\]

Consequently

\[
 \frac{d\Phi}{du}
 =-Y+\rho_*\frac{C(u)-\bar b}{(u+3s)^2},\qquad
 C(u)=\frac{s(1-3s)(2u+3s)}{u^2}.                          \tag{15}
\]

C is decreasing for \(u>0\), so

\[
 C(u)\ge C(q)=3129/2752>9/8.
\]

Furthermore,

\[
 \bar b\le29/50,\quad u+3s\le53/96<9/16,
 \quad Y\le851/1600,\quad\rho_*\ge21/64.
\]

All factors in the positive term of (15) have the correct sign. The stated
rational bounds therefore yield

\[
 \frac{d\Phi}{du}>
 \frac{(21/64)(9/8-29/50)}{(9/16)^2}-\frac{851}{1600}
                         =\frac{1439}{43200}>0.             \tag{16}
\]

Thus a maximizing point cannot lie on the upper edge with \(u<q\): moving
along that edge toward q increases \(\Phi\). At \(u=q\), the upper and
lower edges meet. By symmetry the same holds for (v,Y). Every maximum of
\(\Phi\) therefore lies on

\[
                              X=2u,\qquad Y=2v.              \tag{17}
\]

## 5. The remaining two-variable function is increasing

Substitute (17) into (11). The resulting function is

\[
 G(u,v)=
 -\frac{(128uv+21)(640uv-128u-128v+21)}
        {4096(2u-1)(2v-1)}.
\]

Its derivative has the form

\[
 \frac{\partial G}{\partial u}
 =\frac{P(u,v)}{2048(1-2u)^2(1-2v)},                        \tag{18}
\]

where

\[
 P(u,v)=16384u(1-u)v(1-5v)+8192v^2-5376v+903.
\]

The denominator is positive because \(u,v\le q<1/2\).
If \(v\le1/5\), the first term of P is nonnegative. The remaining
quadratic decreases on this interval, so

\[
                         P(u,v)\ge3887/25>0.
\]

If \(v\ge1/5\), use \(u(1-u)\le q(1-q)\) and the negative sign of
\(1-5v\). This gives

\[
 \begin{aligned}
 P(u,v)&\ge903-\frac{22756}{9}v-\frac{54412}{9}v^2\\
       &\ge\frac{2778101}{82944}>0,
 \end{aligned}
\]

where the last value is the preceding decreasing quadratic at \(v=q\).
Thus G increases in u, and by symmetry also in v. Its maximum on
\([m,q]^2\) is at \((q,q)\).

At that point both expressions in (10) equal \(3s\), so

\[
 \max_{\mathcal D}\Phi
 =G(q,q)=4q^2-9s^2
 =\frac{3427}{36864}
 =s-\frac{605}{36864}<s.                                   \tag{19}
\]

This contradicts (12), and proves the theorem. \(\square\)

The optional `check_r6.py` checks the printed derivative identities and
rational evaluations. The domain reduction and all sign and monotonicity
arguments are supplied above; no sampling is used to establish a maximum.
