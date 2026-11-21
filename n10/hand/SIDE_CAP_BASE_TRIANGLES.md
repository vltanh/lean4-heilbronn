# Small base triangles at occupied side caps

Put \(s=93/1000\). Let

\[
 H=(0,h),\quad C=(c,0),\quad D=(1,d),\quad F=(f,1),
 \qquad 0\le d\le h\le1,\quad0\le f\le c\le1,
\]

be actual points whose unsigned doubled triangles are at least \(s\).
Let \(V=(x,y)\) be an actual right-cap point, so
\(-[CDV]\ge s\). Then

\[
 \boxed{\quad cy<\frac{21}{50}.\quad}
 \tag{1}
\]

The reflected statement for a left-cap point \(V=(x,y)\) is
\(hx<21/50\). No occupied top cap or lower interior point is needed.

## 1. Exact analytic proof

The actual anchor triangle satisfies

\[
 s\le[HDF]=1-h+f(h-d)\le1-d,
\]

so \(d\le a:=1-s\). The right-cap clearance and \(x\le1\) give

\[
 s\le d(x-c)-(1-c)y\le(1-c)(d-y)
                         \le(1-c)(a-y).
 \tag{2}
\]

In particular \(c<1\). Put \(z=1-c>0\). Multiplying the final
inequality in (2) by \(c/z\), or simply rearranging it, gives

\[
 cy\le a+s-az-\frac{s}{z}
       =1-az-\frac{s}{z}
       \le1-2\sqrt{as}.
 \tag{3}
\]

The last step is the arithmetic-geometric mean inequality applied
to \(az,s/z\). The required strict rational comparison is

\[
 4as-\left(\frac{29}{50}\right)^2
 =\frac{251}{250000}>0.
\]

Thus \(2\sqrt{as}>29/50\), proving (1). Transposing coordinates
interchanges the two side caps and proves the left version.

## 2. Actual-triangle consequences and the N6 transfer

If \(O=(0,0)\) is actual, (1) says \([OCV]<21/50\).
This triangle contains at most one further actual point, because
two interior points would require doubled area
\((4+2\sqrt3)s>347/500>21/50\). The reflected conclusion applies
to \(OHV\).

For N6 the origin may be virtual. Its actual bottom contact
\(B=(b,0)\), with \(0\le b<c\), instead gives

\[
 [BCV]=(c-b)y\le cy<21/50.
\]

This actual triangle also has capacity at most one. The reflected
left contact \(A=(0,\alpha)\), with \(0\le\alpha<h\), gives
\(-[AHV]=(h-\alpha)x\le hx<21/50\). These deductions use the
same actual side clearance and actual anchor triangle as (2).

For fixed-table proofs the corresponding nonnegative quadratic
factors may be named `SIDEBASECAP_V` and defined as
\(21/50-cy_V\) for a right point, or \(21/50-hx_V\) for a left
point. They are consequences of (1), without any additional count
or sign case.

The companion
[check_side_cap_base_triangles.py](check_side_cap_base_triangles.py)
checks the exact identities and rational gaps. It is only a
transcription check for the displayed analytic argument.
