# Eight boundary points: uniform coordinate ranges

These bounds use only the eight actual boundary-ear triangles. They hold
for every eight-boundary configuration whose doubled minimum triangle
area is at least s=93/1000; they do not require a choice of OP signs.
They are necessary inequalities, not a closure of HP12-N8.

Use the literal coordinates

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), G=(g,1), H=(0,h),

with positive side spans

    L=h-a,       J=c-b,       R=e-d,       T=f-g.

The eight corner offsets are a,b,1-c,d,1-e,1-f,g,1-h. Their eight ear
products, in cyclic order, are

    aJ, dJ, (1-c)R, (1-f)R, (1-e)T, (1-h)T, gL, bL.

Each is at least s.

## 1. A uniform box for every offset, span, and interior coordinate

Let m=max(L,J,R,T). Every corner offset is at least s/m. Each side is
its span plus its two corner offsets, so

    m<=1-2s/m,       m(1-m)>=2s.

Consequently m<753/1000. Indeed, for m>=753/1000 the function m(1-m)
is decreasing, and

    (753/1000)*(247/1000)=185991/1000000
                        <186000/1000000=2s.

It follows that every corner offset is strictly greater than

    ell=s/(753/1000)=31/251.                         (1)

There is also a stronger upper bound than 1-4s. For example, the ears
dJ>=s and (1-c)R>=s, together with 1-e>ell, give

    1-b=J+(1-c)
        >=s/d+s/R
        >=s/d+s/(1-ell-d)
        >=4s/(1-ell).

The denominators are positive because R=e-d>0 and e<1-ell. The final
inequality is the reciprocal arithmetic-geometric mean inequality.
By square symmetry, every corner offset is at most

    c0=1-4s/(1-ell)=31657/55000.                     (2)

Each side span occurs in an ear product with an offset at most c0.
Thus all four spans satisfy

    5115/31657=s/c0 <= L,J,R,T <753/1000.            (3)

For an interior point X=(x,y), the four actual triangles formed with
the two points on one square side give

    Lx>=s,       J y>=s,       R(1-x)>=s,       T(1-y)>=s.

Using (3),

    31/251 < x,y <220/251.                          (4)

Finally, if a directed interior-point line OP has A on its negative
side and H on its positive side, and U=x_P-x_O, then

    U L=det(P-O,H-O)-det(P-O,A-O)>=2s.

Hence

    U>62/251.                                      (5)

This applies to the chosen representatives of both the 3/5 and the
same-side-edge 4/4 line classes.

## 2. Opposite contact intervals overlap by a definite amount

Put

    alpha=(a+1-e)/2,      beta=(b+1-f)/2,
    p=(1-c+g)/2,         q=(d+1-h)/2,
    X=(L+R)/2=1-alpha-q,
    Y=(J+T)/2=1-beta-p.

Pair the opposite ear products. If u1*v1,u2*v2>=s, then

    ((u1+u2)/2)*((v1+v2)/2)>=s,

because u1*v2+u2*v1>=2sqrt(u1*v1*u2*v2)>=2s. Applied to the eight ears,
this yields

    alpha*Y>=s,       q*Y>=s,
    beta*X>=s,        p*X>=s.                         (6)

Thus X<=1-2s/Y, which is positive, and

    p>=s/X>=s*Y/(Y-2s).

In particular Y>2s. Set z=Y-2s>0. Then

    1-beta=Y+p
           >=Y+s*Y/(Y-2s)
            =z+3s+2s^2/z
           >=(3+2sqrt(2))*s.                         (7)

Square symmetries give the same upper bound on alpha,p,q as on beta.
Consequently all four overlaps satisfy

    e-a, h-d, f-b, c-g >=(6+4sqrt(2))*s-1 >21/250.   (8)

For the last strict comparison, sqrt(2)>707/500 follows from
2*500^2=500000>499849=707^2. Substituting that lower bound makes the
right side in (8) greater than 10501/125000, whereas 21/250 is
10500/125000. Thus the overlap bound is a consequence of the actual ear
inequalities, independent of any normalization argument.
