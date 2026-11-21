# Support inequalities retaining the quadrilateral area

Let \(A,B,C,D\) be four actual points in strictly convex positive
cyclic order. All areas below are doubled. Set

\[
 X=[ABC],\quad Y=[ABD],\quad Z=[ACD],\quad V=[BCD],
 \qquad W=X+Z=Y+V,\qquad \delta=Y-Z=X-V.
\]

Thus \(W\) is the doubled area of the actual quadrilateral, and
\(X,Y,Z,V\) are positive actual triangle areas. Suppose established
actual-point bounds give

\[
 W\ge C>0,\qquad
 X\ge\mu_Xs,\quad Y\ge\mu_Ys,\quad
 Z\ge\mu_Zs,\quad V\ge\mu_Vs,
 \tag{1}
\]

where all four multipliers are positive. Put

\[
 M=\min(\mu_X\mu_Y,\mu_Z\mu_V)s^2.
\]

**Area-support inequality.** For any proved bounds
\(L_X\ge X\) and \(L_Y\ge Y\),

\[
 L_XY-C\delta-M\ge0,\qquad
 L_YX-C\delta-M\ge0.
 \tag{2}
\]

No sign assumption on \(\delta\) is required.

## 1. Proof in both denominator signs

The two diagonal area identities give the exact algebraic identity

\[
 XY-W\delta
 =XY-(X+Z)(Y-Z)
 =Z(X+Z-Y)=ZV.
 \tag{3}
\]

If \(\delta\ge0\), (1) and (3) imply

\[
 XY-C\delta
 =ZV+(W-C)\delta
 \ge\mu_Z\mu_Vs^2\ge M.
\]

If \(\delta\le0\), positivity of \(C\) instead gives

\[
 XY-C\delta\ge XY\ge\mu_X\mu_Ys^2\ge M.
\]

Both arguments include \(\delta=0\). Multiplication of
\(L_X\ge X\) by the positive number \(Y\), or of
\(L_Y\ge Y\) by the positive number \(X\), proves (2).

The floor \(C\) may itself be strengthened to

\[
 \max\{C,(\mu_X+\mu_Z)s,(\mu_Y+\mu_V)s\},
 \tag{4}
\]

because the two diagonal sums are exactly \(W\).

## 2. Actual occupancy supplies every multiplier

At the fixed threshold \(s=93/1000\), an actual triangle with
\(n=0,1,2,3\) named actual interior points has the established
area floor

\[
 (1,3,149/20,4427/500)_n\,s.
 \tag{5}
\]

Every use checks the three inward edge signs of every named occupant.
An actual convex quadrilateral containing one, two, or three named
actual interior points has the respective established area floors

\[
 (24/5)s,\qquad 8s,\qquad 93/91.
 \tag{6}
\]

These are the same triangle and quadrilateral floors used in
N6_TOP_TRIPLE_SETUP.md. Its stronger floors for more occupants may
also be used, with their existing premises unchanged. Equations
(5)--(6), followed by (4), therefore provide all the data in (1).

For example, if two actual points lie on opposite sides of both
diagonals, each of \(ABC,ABD,ACD,BCD\) contains one of them.
All four multipliers in (1) can then be three. With \(C=8s\),
(2) becomes

\[
 L_XY-8s\delta-9s^2\ge0,\qquad
 L_YX-8s\delta-9s^2\ge0.
 \tag{7}
\]

## 3. Polynomial factors and complete witnesses

An affine upper bound \(L_X\) or \(L_Y\) makes (2) a
polynomial of degree at most three in the original point coordinates.
A constant upper bound makes it quadratic. The allowed upper bounds
are the established anchor bounds, the bounds in
N6_TOP_AFFINE_CAPS.md, the universal unit-square bound one, or an
exact determinant maximum on a previously proved coordinate box.
For the last option, multiaffinity expresses every determinant value
as a convex combination of its finitely many endpoint values.

The separate factor name is

```text
QAS_ABCD_I_wX_wY_wZ_wV_Xtag
```

or the corresponding `Ytag` form. Here `I` lists the actual
quadrilateral occupants supplying its existing area floor; `wX`,
`wY`, `wZ`, `wV` separately list the actual occupants of
\(ABC,ABD,ACD,BCD\). A `0` in any of those four positions
means the empty list, whose triangle floor is \(s\).
All lists contain distinct labels and satisfy their actual edge
tests. They specify the four multipliers in (5), so both the minimum
product \(M\) and the strengthened floor (4) are explicit.

The axis selects which triangle has an upper bound. A following
affine-cap tag has the meaning in N6_TOP_AFFINE_CAPS.md; `box`
means its exact endpoint maximum on the printed final box. A bare
`X` or `Y` retains the original anchor bound, with one as the
default for other actual triangles. The factor is exactly the
corresponding expression in (2). Its validity does not depend on
a numerical search, on a conjectured support orientation, or on
another triangle having an unprinted occupant.
