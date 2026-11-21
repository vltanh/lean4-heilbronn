# Three occupied caps: uniform contact bounds

This is a local reduction for both C1 and N6. It does not by itself
exclude either entire family. All areas below are doubled, and
\[
 s=\frac{93}{1000},\qquad
 \alpha=\frac{79}{100},\qquad
 \beta=\frac{108}{125},\qquad d_0=4s=\frac{93}{250}.
\]

Use contacts
\[
 H=(0,h),\quad C=(c,0),\quad D=(1,d),\quad F=(f,1),
 \qquad d\le h,\quad f\le c.
\]
All contacts and free points are distinct actual points of the closed
unit square. Suppose the right triangle \(CD(1,0)\), top triangle
\(DF(1,1)\), and left triangle \(HF(0,1)\) contain actual points
\(P=(p,q)\), \(Q=(u,v)\), \(R=(r,t)\), respectively, on the
outer side of their actual contact edge. Every actual triangle has
unsigned determinant at least \(s\). Write \(A_{XYZ}\) for its
unsigned doubled area.

For C1 the actual corner is \(O=(0,0)\). For N6 there are instead
actual contacts \(A=(0,a)\), \(B=(b,0)\), with \(a<h,b<c\);
the contact denoted \(D\) here is denoted \(E\) in the standard N6
notation. In both cases we prove
\[
 d,f<\alpha=.79,\qquad h,c<\beta=.864,\qquad
 d,f,h,c\ge d_0.                                   \tag{1}
\]
The conclusions include square-side cap points. No location of the
remaining free points and no extra coordinate-order normalization is used.

## 1. Three elementary contact inequalities

The right cap and its actual base clearance give
\[
 d(p-c)-(1-c)q\ge s,\qquad cq\ge s.
\]
The second inequality is \(OCP\ge s\) in C1. In N6 it follows
from the actual area \(BCP=(c-b)q\ge s\), since \(cq\ge(c-b)q\).

The exact nonnegative decomposition
\[
\begin{aligned}
 dc(1-c)-s={}&c\{d(p-c)-(1-c)q-s\}\\
 &+(1-c)(cq-s)+cd(1-p)
\end{aligned}                                      \tag{2}
\]
therefore proves \(dc(1-c)\ge s\). The left-cap transpose gives
\[
 fh(1-h)\ge s.                                     \tag{3}
\]
Here \(hr\ge s\) is the actual C1 clearance \(A_{OHR}\), or follows in
N6 from the actual clearance \(A_{AHR}=(h-a)r\ge s\). Thus neither
transfer assumes an arbitrary virtual-corner triangle has the
minimum-area bound.

The top point has actual cap area
\[
 (1-f)(v-d)-(1-d)(1-u)\ge s.
\]
Its difference from the containing-cap area is
\[
 (1-d)(1-f)-A_{DFQ}
 =(1-f)(1-v)+(1-d)(1-u)\ge0.
\]
Consequently
\[
 dc(1-c)\ge s,\qquad fh(1-h)\ge s,\qquad
 (1-d)(1-f)\ge s.                                  \tag{4}
\]
The first two imply \(d,f\ge4s=d_0\), since \(x(1-x)\le1/4\).
The projections then give \(h,c\ge d_0\).

## 2. The sharper upper contact bounds

Suppose \(f\ge\alpha>.5\). Since \(c\ge f\) and \(x(1-x)\)
decreases for \(x>.5\),
\[
 c(1-c)\le f(1-f),\qquad
 d\ge\frac{s}{f(1-f)}.
\]
The top inequality in (4) now forces
\[
 s\le(1-d)(1-f)\le1-f-\frac{s}{f},
\]
and hence
\[
 G(f):=f(1-f)-s(1+f)\ge0.
\]
But
\[
 G(\alpha)=-\frac{57}{100000}<0,\qquad
 G'(f)=1-s-2f\le-\frac{673}{1000}<0
 \quad(f\ge\alpha).
\]
This contradiction proves \(f<\alpha\). Transposition proves
\(d<\alpha\).

If \(c\ge\beta>.5\), then (4) would give
\[
 s\le dc(1-c)<\alpha c(1-c)
 \le\alpha\beta(1-\beta)<s,
\]
where the final exact gap is
\[
 s-\alpha\beta(1-\beta)=\frac{537}{3125000}>0.
\]
Therefore \(c<\beta\); the same argument gives \(h<\beta\).
This proves (1).

## 3. Actual triangle capacities in both normalizations

The contact products satisfy
\[
 cd,\ hf<\alpha\beta=\frac{2133}{3125}=.68256,
 \qquad
 \frac{347}{500}-\alpha\beta=\frac{143}{12500}>0.
 \tag{5}
\]
An actual triangle containing two actual interior points requires
area at least \((4+2\sqrt3)s>347/500\). Thus the following actual
triangles each contain at most one further actual point:

| Normalization | Actual triangles | Their doubled areas |
|---|---|---|
| C1 | \(OCD,\ OHF\) | \(cd,\ hf\) |
| N6, standard right contact \(E=(1,e)\) | \(BCE,\ AHF\) | \((c-b)e,\ (h-a)f\) |

For N6, \((c-b)e\le ce\) and \((h-a)f\le hf\), so (5) applies
with \(d=e\). The capacity statement is about these actual triangles;
it does not substitute a virtual triangle for an actual one.

## 4. A useful complete coordinate box

Put
\[
 \ell=\frac{s}{\beta}=\frac{31}{288},\qquad
 \chi=\alpha-\frac{s}{1-d_0}=\frac{5039}{7850},\qquad
 \theta=d_0+\frac{s}{1-d_0}=\frac{40827}{78500},\qquad
 p_0=\frac{13597}{19750}.
\]
For every further actual point in either normalization, the \(OH,OC\)
clearances in C1, or the \(AH,BC\) clearances in N6, imply
\(x,y\ge\ell\). These claims are only for further points, not for
contacts lying on the coordinate axes.

Before replacing \(p\) by one in (2), the same calculation gives
\(cd(p-c)\ge s\), so
\[
 p\ge c+\frac{s}{dc}\ge c+\frac{s}{\alpha c}.
\]
The premise \(c\ge d_0\) was proved in Section 1. The last expression
is increasing there because
\[
 \alpha d_0^2-s=\frac{102021}{6250000}>0.
\]
It follows that
\[
 p\ge d_0+\frac{s}{\alpha d_0}
 =p_0>\frac{86}{125},\qquad
 p_0-\frac{86}{125}=\frac9{19750}>0.
\]
The cap clearance and \(p\le1\) also give
\[
 q\le d-\frac{s}{1-c}
 \le\alpha-\frac{s}{1-d_0}=\chi.
\]
Transpose for the left point. The top clearance is at most
\((1-d)(u-f)\) and at most \((1-f)(v-d)\); hence \(u,v\ge\theta\).

If a further point lies in the central quadrilateral \(HCDF\), its
coordinates are at most \(1-s=907/1000\). Indeed, for a central
point \((x,y)\), use \(CDT\le d(1-x)\) when \(y\le d\), and
\(DFT\le(1-d)(1-x)\) when \(y\ge d\). For the other coordinate,
use \(-HFT\le f(1-y)\) when \(x\le f\), and
\(DFT\le(1-f)(1-y)\) when \(x\ge f\). Each chosen actual area is
at least \(s\).

Thus the following closed box contains every stated configuration:

| Coordinates | Lower endpoint | Upper endpoint |
|---|---:|---:|
| \(h,c\) | \(d_0\) | \(\beta\) |
| \(d,f\) | \(d_0\) | \(\alpha\) |
| Each central coordinate | \(\ell\) | \(1-s\) |
| Right \(p\) | \(p_0\) | \(1\) |
| Right \(q\) | \(\ell\) | \(\chi\) |
| Top \(u,v\) | \(\theta\) | \(1\) |
| Left \(r\) | \(\ell\) | \(\chi\) |
| Left \(t\) | \(p_0\) | \(1\) |

All bounds were weakened to closed endpoints, so every limiting outer
square face is included. The optional standard-JavaScript checker
reconstructs the determinant identities and all displayed rational gaps.
