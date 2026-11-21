# Occupied consecutive ears in a pentagon support triangle

Let \(A,B,C,D,E\) be five actual points in strictly convex cyclic order,
and suppose every actual doubled triangle area is at least
\(s=93/1000\). Write the positive unsigned areas

\[
 X=[ABE],\qquad Y=[ADE],\qquad Z=[ABD],\qquad D_0=X-Z.
\]

The three consecutive ears to be tested are \(ABC,BCD,CDE\).
An actual point inside any one of them makes that ear's area at least
\(3s\), by its three actual fan triangles. The same actual point may
give this lower bound in more than one ear.

If \(D_0\le0\), every inequality \(XY\ge cD_0\) with \(c>0\) is
immediate. Assume \(D_0>0\). The lines \(AB,DE\) meet at a support
corner \(O\), with

\[
 O=A+\frac{Y}{D_0}(B-A)
  =E+\frac{X}{D_0}(D-E).
\]

Both ratios exceed one: \(X-D_0=Z>0\), and the actual four-point
identity gives \(Y-D_0=[BDE]>0\). Thus \(B\) is strictly between
\(O,A\), and \(D\) strictly between \(O,E\). An affine support
normalization, with orientation reversed if needed, gives

\[
 O=(0,0),\quad A=(1,0),\quad E=(0,1),\quad
 B=(b,0),\quad D=(0,d),\quad C=(bu,dv),
\]

where \(0<b,d<1\), \(u,v>0\), \(u+v<1\). Denote the actual support
triangle's doubled area by \(\Omega>0\). Area ratios give

\[
 X=(1-b)\Omega,\quad Y=(1-d)\Omega,\quad
 Z=d(1-b)\Omega,\quad
 \Omega=\frac{XY}{X-Z}.
\]

For completeness, the segment positions above give \(0<b,d<1\).
Positivity of \(ABC,CDE\) gives \(v,u>0\), and positivity of
\(BCD\) gives \(u+v<1\), with all displayed ratios using unsigned areas.
Thus no additional placement of the support corner is assumed.

The three ear areas, divided by \(\Omega\), are

\[
 d(1-b)v,\qquad bd(1-u-v),\qquad b(1-d)u.
\]

Cauchy--Schwarz therefore proves

\[
 \left(\sqrt{[ABC]}+\sqrt{[BCD]}+\sqrt{[CDE]}\right)^2
 \le \Omega\bigl(d(1-b)+bd+b(1-d)\bigr)
 =\Omega(b+d-bd)\le\Omega.
\]

In particular, if exactly \(j\) of these three ears have a proved
actual occupant, then

\[
 XY\ge c_j s(X-Z),\qquad
 c_1=\frac{139}{10},\quad c_2=\frac{199}{10},\quad c_3=27.
\]

Indeed the corresponding lower costs are
\((2+\sqrt3)^2=7+4\sqrt3>139/10\),
\((1+2\sqrt3)^2=13+4\sqrt3>199/10\), and \(27\).
Both strict comparisons use
\((69/40)^2=4761/1600<3\).
With no proved occupied ear the existing convex pentagon cost
\(c_0=11\) from N6_TOP_TRIPLE_SETUP.md is retained.

## Literal source and fixed physical envelope

A source states the complete positive convex five-cycle, the three
ear occupant lists, and the selected exact rate. All listed occupants
are verified by their three inward actual signs. The rate depends on
the number of nonempty lists, so repeated occupants are permitted.
The areas \(X,Y,Z\) and their canonical signs are reconstructed from
that same five-cycle.

The scalar relation uses the displayed product inequality. A physical
envelope may use any fixed, previously proved ceiling \(N\ge X\):

\[
 NY-c_j sX+c_j sZ\ge XY-c_j s(X-Z)\ge0.
\]

In the BITT tables \(N\) is the exact vertex ceiling on the initial
coordinate box of the stage, capped by the unit-square bound. It
precedes any coordinate refinement using the envelope. All factors,
references and endpoint arithmetic remain literal proof data.

The argument was proposed by the coordinator and independently
checked in the support coordinates above. Actual applications still
require complete arithmetic, dependency and case-cover review.
