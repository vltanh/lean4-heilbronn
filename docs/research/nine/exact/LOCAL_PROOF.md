# Exact local sharpness at the nine-point configuration

## Statement

Let r = sqrt(65), a = (9r-55)/320, and let P* be the labeled configuration

| i | x | y |
|---|---|---|
|1|0|1-r/10|
|2|3/8-r/40|0|
|3|1|9/16-3r/80|
|4|3/8-r/40|1|
|5|0|5/8+r/40|
|6|1/4+r/20|3/4-r/20|
|7|7/16+3r/80|0|
|8|r/10|1|
|9|1|5/8+r/40|

For any labeled P in the unit square, put h = max_i ||p_i-p_i*||_infinity.
The exact certificate proves

    h <= 1/200  =>  min_triangle_area(P) <= a - 3h/1700.

In particular P* is the unique configuration in this entire 18-coordinate
neighborhood with minimum triangle area at least a. No reflection symmetry,
boundary incidence, critical-triangle pattern, or stationarity is assumed of P.
The theorem also holds after any square symmetry and relabeling.

The construction itself is established in the literature: Sudermann-Merx,
arXiv:2603.11107v3, Appendix A, Table 12, following Comellas–Yebra (2002).
Here all 84 areas are rechecked independently in Q(sqrt(65)).

## 1. Active constraints

The eleven triangles of area a are

    125, 127, 136, 145, 269, 356, 389, 458, 467, 489, 678.

For each such triple, choose the sign of its oriented area at P*, and denote
that signed quadratic area polynomial by f_i. Thus f_i(P*)=a.
Let J be the 11 x 18 matrix of gradients of these polynomials at P*.

There are eight active square-boundary coordinates. Let N have one row +e_k
for a coordinate equal to 0 at P*, and one row -e_k for a coordinate equal to 1.
For every feasible displacement d=P-P*, therefore, N d >= 0.

Form the 19 x 19 matrix

    C = [ J  -1 ]
        [ N   0 ].

The standalone program verify_local.py constructs this matrix from the
coordinates, performs exact Gaussian elimination, and independently checks
C*C^{-1}=I. No approximate matrix inverse is used.

## 2. The exact finite certificate

Write R=C^{-1} and w_j=-R_{19,j}. The checker proves all of the following:

* Every one of the nineteen w_j is strictly positive.
* Sum_{j=1}^{11} w_j = 1.
* |R_{ij}| < 85 w_j for all 1<=i<=18 and 1<=j<=19.

These are comparisons in Q(sqrt(65)). To compare A+B sqrt(65) with zero,
the checker uses signs and rational comparisons of A^2 with 65 B^2.
It does not approximate sqrt(65) for a mathematical decision.

## 3. First-order sharpness

Given a feasible d, put t=min_i (Jd)_i and

    s = (Jd-t*1, Nd).

Every component of s is nonnegative, and C(d,t)=s. Consequently

    t = -sum_j w_j s_j <= 0,
    |d_i| <= sum_j |R_ij| s_j <= -85t.

Hence t <= -||d||_infinity/85 = -h/85.
This handles every feasible direction, including movements of boundary
points into the square and arbitrary asymmetric movements of the other points.

## 4. Exact quadratic remainder

The exact expansion of an active signed area is

    f_i(P*+d) = a + (Jd)_i + q_i(d),

where q_i(d) is the same signed triangle-area expression applied to the
three displacement vectors. They lie in [-h,h]^2, so |q_i(d)|<=2h^2.
The latter bound follows by multi-affinity and checking the corners of this
square; the checker also verifies that the largest absolute doubled area
among these corner triples is 4 when h=1.

Each gradient row has absolute row sum at most 3. Since a>1/20 and
3/200+2/200^2 < 1/20, every selected signed area remains positive when
h<=1/200. It is therefore the actual unsigned area of its triangle.
Choosing a row attaining the minimum linear term gives

    min_triangle_area(P) <= a - h/85 + 2h^2
                         <= a - (1/85-1/100)h
                         =  a - 3h/1700.

This proves the stated local theorem and its equality assertion.

## Replay and trust boundary

    python verify_local.py
    python -O verify_local.py

Both commands retain all mathematical checks; they are not Python assertions
that disappear under optimization. This is an exact arithmetic certificate
with a written mathematical interpretation, not a Lean kernel theorem or an
external independent review. Numerical discovery is not an input to the proof.