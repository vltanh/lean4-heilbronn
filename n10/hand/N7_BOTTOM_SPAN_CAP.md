# Seven contacts: a capacity-one triangle over the bottom span

Use the seven actual contacts

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, 0<d<e<1,
    e<=h, b<=f<=c.

Suppose every unsigned actual doubled triangle area is at least
s=93/1000. No placement of any other actual point is assumed.
Write [XYZ]=det(Y-X,Z-X), and put

    T0=(149/20)s=13857/20000.

**Theorem.** The actual triangle BCE satisfies

    [BCE]<T0<(4+2sqrt(3))s.                           (1)

Consequently BCE contains at most one further actual point strictly
inside it. This is a whole contact-geometry statement; it is not
restricted to an orientation of the three free points.

## 1. Five actual triangle clearances

Put L=c-b, r=1-c, so b+L+r=1 and all three quantities are positive.
The actual ABC,BCD,ABH,CDE inequalities give

    a,d>=s/L,
    h>=s/L+s/b,
    e>=s/L+s/r.                                     (2)

Because e<=h and f<=c, the remaining actual triangle has the upper
bound

    [HEF]=1-h+f(h-e)<=1-h+c(h-e)=1-rh-(1-r)e.

Thus its clearance implies

    rh+(1-r)e<=1-s,       e<=1-s.                    (3)

The second assertion follows from h>=e. These five actual triangles
are the only area inequalities needed for the strict bound (1).

## 2. Two scalar variables

Suppose, for contradiction, that T=[BCE]=eL>=T0. Define

    D0=T/(1-s),       q=(1-s)/e>=1,       mu=r/q.

Then L=qD0, r=qmu, b=1-q(D0+mu)>0. From the last inequality in (2),

    r(T-s)>=sL,
    T>s,       mu>=mu0:=sD0/(T-s).                  (4)

Use the lower bound for h in (2) in the first inequality of (3),
and multiply by the positive product bL. The result is

    b[(1-s)L-(1-r)T]-sr(1-r)>=0.

After the displayed substitution this becomes

    F(q,mu):=T[q(1+mu)-1][1-q(D0+mu)]
              -sqmu(1-qmu)>=0.                     (5)

Every denominator used so far is positive. In particular (4) follows
already from r,L>0, independently of the supposition T>=T0.

## 3. The scalar expression decreases with mu

For fixed T and q, direct differentiation gives

    dF/dmu=q[(2T-s)-q(T(1+D0)+2(T-s)mu)].

Since q>=1, mu>=mu0, and T>s, this is at most

    q[T(1-D0)-s-2(T-s)mu0]
      =q[T(1-3s-T)-s(1-s)]/(1-s).                  (6)

The polynomial inside the final brackets decreases for T>=T0:
its derivative is 1-3s-2T, which is negative at T0. Its value there is

    T0(1-3s-T0)-s(1-s)=-25938909/400000000<0.

Therefore F(q,mu)<=F(q,mu0). On substituting mu0, the latter is the
concave quadratic

    F(q,mu0)=-A0*q^2+B0*q-T,
    A0=T^2(T+s^2)/[(T-s)(1-s)^2]>0,
    B0=T(T^2+T-s)/[(T-s)(1-s)].                     (7)

It remains to prove that this quadratic is strictly negative for
every real q, a stronger assertion than needed in (5).

## 4. Its discriminant has the opposite sign

The exact discriminant identity is

    4A0*T-B0^2=T^2*N(T)/[(1-s)^2(T-s)^2],           (8)

where

    N(T)=-T^4+2T^3+(4s^2-2s-1)T^2
                 +(2s-4s^3)T-s^2.

Because T=eL<e<=1-s, write T=T0+z with

    0<=z<1-s-T0=4283/20000<1/4.

At s=93/1000 the following fixed rational identity holds:

    N(T0+z)
      =3862489023999/160000000000000000
       +(274285634607/2000000000000)z
       +(25089853/200000000)z^2
       -(3857/5000)z^3-z^4.                        (9)

Its constant and quadratic coefficients are positive. For 0<=z<=1/4,
combine the linear, cubic and quartic terms as

    z[274285634607/2000000000000-(3857/5000)z^2-z^3]
      >=(146610634607/2000000000000)z>=0.

Thus N(T)>0. Equation (8) gives 4A0*T>B0^2, so completing the square
in (7) proves F(q,mu0)<0. Equations (5)--(6) now contradict each
other, proving [BCE]<T0.

Finally sqrt(3)>69/40 implies 4+2sqrt(3)>149/20. If BCE contained
two further actual points, TRIANGLE_OCCUPANCY.md would give
[BCE]>=(4+2sqrt(3))s, contrary to (1). This proves the capacity-one
conclusion. All constants and identities in this argument are fixed
rational expressions; the optional checker verifies their expansions
without any numerical premise.
