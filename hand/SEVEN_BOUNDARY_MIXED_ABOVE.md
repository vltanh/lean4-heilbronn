# Mixed placements above the left diagonal

Use the seven actual anchors
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\
D=(1,d),\ E=(1,e),\ F=(f,1),
\]
with
\[
0<a<h\le1,\quad 0<b<c<1,\quad0<d<e\le1,\qquad b\le f\le c.
\]
Write \([XYZ]=\det(Y-X,Z-X)\) and \(s=7/64\). Assume every
unsigned actual doubled triangle area is at least \(s\).
The first theorem below does not need \(f\le1/2\).

## 1. One complete crossed placement is impossible

**Theorem 1.** There cannot be actual points \(P,Q\) satisfying
\[
P\in HCF,\quad [BEP]<0,\qquad Q\in AHE\cap DEF.             \tag{1}
\]
No sign of the line \(PQ\) is prescribed.

All incidences in (1) are strict: an actual dividing edge containing a
further point gives a zero triangle. Put
\[
L=h-a,\quad R=e-d,\quad M=c-b,\quad w=1-c,\quad
Z=[HCF]=c-h(c-f).
\]
In particular \(Z\ge3s\).

### The right point gives a bound on the available width

If \(Q=(x,y)\), its two areas at \(AE,HE\) give
\[
L(1-x)=[AEQ]+[EHQ]\ge2s.
\]
Its subdivision of \(DEF\) gives
\[
R(1-x)=[DEQ]=[DEF]-[EFQ]-[FDQ]\le(1-f)R-2s.
\]
Thus
\[
\boxed{1-f\ge2s/L+2s/R.}                                \tag{2}
\]

### Three left-point areas give a positive stress

The affine function \(-[BEX]\) takes the values
\[
eM,\quad-[(1-b)h+be],\quad-[1-b-e(f-b)]
\]
at \(C,H,F\), respectively. Barycentric expansion in \(HCF\), and
the three positive costs
\(-[BEP],[HCP],[CFP]\ge s\), therefore imply
\[
Z eM\ge s\{Z+2eM+[HBE]+[BEF]\}.
\]
Equivalently, the following expression is nonnegative:
\[
\mathcal F(b,c,h,e,f)
 :=(eM-s)Z-s\{(1-b)(1+h)+e(2c-f)\}\ge0.                  \tag{3}
\]
In particular \(eM>s\). Also (3), with \(M<1-b\), implies
\[
eZ>s(1+h).                                               \tag{4}
\]

### A simultaneous anchor relaxation

The four anchor costs \(ABC,BCD,ABH,CDE\) give
\[
a,d\ge\alpha:=s/M,\qquad bL\ge s,\qquad wR\ge s.
\]
Consequently
\[
\frac{s}{\alpha}+\frac{s}{h-\alpha}
                    +\frac{s}{e-\alpha}\le M+b+w=1.
\]
As \(t\) decreases to zero, the continuous function
\[
\frac{s}{t}+\frac{s}{h-t}+\frac{s}{e-t}
\]
tends to infinity. There is therefore \(0<\alpha_0\le\alpha\)
such that its value at \(\alpha_0\) is one. Define
\[
b_0=\frac{s}{h-\alpha_0},\qquad
w_0=\frac{s}{e-\alpha_0},\qquad
c_0=1-w_0,\qquad M_0=c_0-b_0=\frac{s}{\alpha_0}.
\]
These scalar replacements satisfy
\[
b_0\le b,\quad c_0\ge c,\quad
h=\frac{s}{M_0}+\frac{s}{b_0},\quad
e=\frac{s}{M_0}+\frac{s}{w_0}.                            \tag{5}
\]
They keep \(h,e,f\) fixed. They are a relaxation of the necessary
inequalities, not a movement of actual configuration points.

We may decrease \(b\) to \(b_0\) and increase \(c\) to \(c_0\) in
(3). Indeed
\[
\mathcal F_b=-eZ+s(1+h)<0,
\]
by (4), while
\[
\mathcal F_c=e(Z-2s)+(eM-s)(1-h)>0.
\]
The signs persist along the replacements: decreasing \(b\) increases
\(M\), and increasing \(c\) increases both \(M\) and \(Z\).
Thus \(eM>s\), \(Z\ge3s\), and (4) continue to hold.

Replacing \(L,R\) in (2) by the larger numbers
\(h-\alpha_0,e-\alpha_0\) gives
\[
f\le1-2(b_0+w_0)=2M_0-1.                                \tag{6}
\]
Drop the subscripts in (5)--(6).
The bounds \(h,e\le1\) show \(b,w>1/8\). For example
\[
1\ge\frac{s}{M}+\frac{s}{b}
\quad\Longrightarrow\quad
bM\ge s(b+M)=sc,
\]
and \(c<1\) then implies \(b(1-b)>s\); its smaller root is
\(1/8\). The argument with \(b,w\) interchanged is identical.
As \(f\ge b\), (6) also gives \(3b+2w\le1\). We have obtained
the fixed rectangle
\[
\boxed{\frac18<b\le\frac14,\qquad
       \frac18<w\le\frac5{16}.}                         \tag{7}
\]
Furthermore \(\mathcal F\) increases with \(f\), since
\[
\mathcal F_f=h(eM-s)+se>0.
\]
We may therefore increase \(f\) to \(2M-1\) in (3).
This endpoint is at least the original \(f\), is below \(1/2\)
because \(b+w>1/4\), and is below \(c=1-w\).
No upper-contact area inequality is required after this relaxation.

### A single cubic comparison gives the contradiction

Insert
\[
M=1-b-w,\quad h=s/M+s/b,\quad e=s/M+s/w,\quad f=2M-1
\]
in (3). Exact simplification gives
\[
\mathcal F=-\frac{7N(b,w)}{4096bw(1-b-w)},                 \tag{8}
\]
where
\[
\begin{split}
N(b,w)={}&128b^3w-78b^3+192b^2w^2-370b^2w+121b^2\\
 &+64bw^3-228bw^2+214bw-43b\\
 &+7w^3-21w^2+14w.
\end{split}
\]
The denominator in (8) is positive.

On the rectangle (7), \(N\) increases with \(w\).
To verify the sign without a root computation, differentiate and use
\(w\ge1/8\), \(b\le1/4\), and \(w\le5/16\):
\[
\begin{split}
N_w
&=128b^3+384b^2w-370b^2+192bw^2-456bw+214b
       +21w^2-42w+14\\
&\ge-322b^2+(217-456w)b+21w^2-42w+14\\
&\ge(273/2-456w)b+21w^2-42w+14\\
&\ge-\frac32+\frac{749}{256}
=\frac{365}{256}>0.
\end{split}                                               \tag{9}
\]
The penultimate step uses \(273/2-456w\ge-6\), and the
quadratic \(21w^2-42w+14\) decreases on the relevant interval.

It remains to check \(N(b,1/8)>0\). Put \(z=b-5/32\), so
\(-1/32<z\le3/32\). The exact expansion is
\[
N(b,1/8)
=-62z^3+\frac{779}{16}z^2+\frac{35}{512}z+\frac{345}{16384}
\ge\frac{343}{8}z^2+\frac{35}{512}z+\frac{345}{16384}>0.
\]
The first inequality uses \(z^3\le(3/32)z^2\).
The final upward quadratic has discriminant
\(-945455/262144<0\).
Thus (8) is negative, contradicting (3). This proves the entire
placement (1). \(\square\)

## Verification

The optional exact diagnostic
[check_seven_boundary_mixed_above.py](check_seven_boundary_mixed_above.py)
checks the two area sums, the barycentric stress, all derivatives, the
endpoint rational identity, and the final cubic and quadratic signs.
The simultaneous relaxation and its denominator signs are proved in
the text. The theorem excludes the complete cell (1). The companion
[SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md)
uses it to complete the entire mixed branch above \(HC\), and then
assembles the full normalized seven-boundary theorem.
