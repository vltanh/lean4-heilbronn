# Two central points from one half cannot share a C2 corner triangle

This supplies the same-half corner exclusion used in OPPOSITE_CORNERS.md.
It is a continuous argument, with no numerical search or certificate as a
premise. The constants are

    sigma=93/1000,       c=89/100,       r=11/100=1-c.

## 1. Precise statement

Let A=(0,0), H=(0,h), B=(b,0), with 0<h,b<=c. Suppose P=(p,u) and
Q=(q,v) are two points strictly inside AHB, each above the diagonal y=x.
Assume their relevant ordinary triangle areas are at least sigma/2, in
particular

    u-p>=sigma,       v-q>=sigma,
    hp+bu<=hb-sigma,  hq+bv<=hb-sigma,
    |det(P,Q)|>=sigma,
    |det(P-H,Q-H)|>=sigma.                              (1)

Suppose also that, for some f>=r, the two points satisfy the central-cell
inequalities

    p-fu>=sigma,       q-fv>=sigma.                     (2)

These assumptions are inconsistent.

In the C2 application, (1) consists of actual triangle constraints with
A,E,H,B, and (2) comes from triangles AFP and AFQ. The uniform cap in
OPPOSITE_CORNERS.md supplies h,b<c and f>r. Thus this lemma excludes two
upper central points in AHB. Reflection across y=x gives the corresponding
two-lower-point statement, and a half turn gives both statements for EFD.

## 2. The line through the pair has forced signs

Swap P,Q if necessary so that p<=q. Set

    L=h-sigma-sigma/b,       K=1+h/b,
    D_A=pv-uq,              D_H=D_A+h(q-p).

The inequalities v>=q+sigma and hq+bv<=hb-sigma give

    0<q<=L/K,

so L>0. Applying the same upper and lower height bounds to the pair gives

    D_A <= p[h-sigma/b-Kq]-sigma q
        <= q[L-Kq].                                    (3)

The second inequality uses p<=q and the nonnegative coefficient
h-sigma/b-Kq>=sigma. For the opposite determinant,

    -D_H=p(h-v)-q(h-u)
        <=p[h-sigma-Kq]-sigma q/b
        <=q[L-Kq].                                     (4)

Here h-sigma-Kq>=sigma/b>0 justifies the same substitution.
The common quadratic bound is

    q(L-Kq)<=L^2/(4K).

The expression L^2/(4K) increases in h and b wherever L>0. For h this
follows by differentiating L^2/(1+h/b). For b, write it as

    b(h-sigma-sigma/b)^2/[4(h+b)]:

both b/(h+b) and the positive factor h-sigma-sigma/b increase with b.
Consequently, if L_c=c-sigma-sigma/c=61633/89000, then

    L^2/(4K)<=L_c^2/8<sigma,
    sigma-L_c^2/8=2094597311/63368000000>0.               (5)

By (1), (3), and (4), the only possible signs are

    D_A<=-sigma,       D_H>=sigma.

Thus the horizontal separation satisfies

    q-p>=2sigma/h>=D,       D=2sigma/c=93/445.            (6)

## 3. The separation contradicts the central-cell clearance

The corner-triangle clearance in (1) and h,b<=c imply

    p+u<=c-sigma/c,       q+v<=c-sigma/c.

For example, divide hp+bu<=hb-sigma by hb, and use
(p+u)/c<=p/b+u/h and hb<=c^2. Combining the second inequality with
v-q>=sigma gives

    q<=Q0=(c-sigma/c-sigma)/2=61633/178000.               (7)

Equation (2) gives p-sigma>=fu>0 and

    u<=(p-sigma)/r.

Since v>=q+sigma, the negative sign for D_A forces

    sigma<=qu-pv
          <=q(p-sigma)/r-p(q+sigma).                    (8)

The last expression increases with p on the permitted range. Indeed its
coefficient of p is q(1/r-1)-sigma, which is positive because q>=D and

    D(1/r-1)-sigma=sigma(2/r-1)>0.

We may therefore substitute p<=q-D from (6). It follows that

    sigma<=F(q),
    F(q)=q(q-D)(1/r-1)-sigma q/r-sigma(q-D),
    D<=q<=Q0.

This is a convex quadratic in q, so its maximum on the displayed interval
is at an endpoint. Direct fraction arithmetic gives

    F(D)=-8649/48950<0,
    F(Q0)=28137761/356000000,
    sigma-F(Q0)=4970239/356000000>0.

Both endpoint values are below sigma, contradicting (8). This proves the
stated exclusion, including all admissible limiting contact values.
