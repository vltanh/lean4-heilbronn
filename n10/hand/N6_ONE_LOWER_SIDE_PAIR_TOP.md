# A lower point, a side pair, and a top-cap point

Use the normalized six actual contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

Every unsigned actual doubled triangle area is at least s=93/1000.
This note excludes the entire count (k,j,r,t,l)=(1,0,2,1,0), and
its transpose. Write the lower point P=(p,q), the two right-cap
points Q=(u,v), R=(r,w), and the top-cap point S=(j,k).

The side-pair theorem N6_SIDE_PAIR_REDUCTION.md lets us name Q,R
so that R lies strictly inside both CEQ and BEQ. In particular

    -[CEQ]>=3s,        e(1-b)>=K*s,        K=149/20.

All points may lie on the outer square faces where these regions
allow them. Actual chord equalities and coincident points are
already impossible under the positive threshold.

## 1. The two exhaustive lower alternatives

ONE_LOWER_POINT.md gives two single-ear alternatives and a central
alternative for P in HABC. Either ear would force hc>=K*s. But
the side-pair cap clearance and e<=1-s give

    c<=1-3s/(1-s),
    K*s-(1-3s/(1-s))=8299/18140000>0.

Since hc<=c, both ears are impossible. Thus [ACP]>0 and [HBP]>0.
Split the central alternative by the two weak contact orders:

| Row | Contact order | Additional nonnegative factor |
|---|---|---|
| AC | ac>=bh | Order_ac=ac-bh |
| BH | bh>=ac | Order_bh=bh-ac |

The equality ac=bh is included in both rows. In row BH the local
central-point theorem also supplies

    Central_bh=hb(c-b)-s(c+b)>=0.

No physical reflection is used to choose either order. The two
rows retain all other point placements.

## 2. A common rational box

Put

    alpha=1037/10000,    beta=1457/250,
    M=beta*s=135501/250000,
    U=1-s/(1-alpha)=8033/8963,
    E0=K*s/(1-alpha)=13857/17926,
    C1=1-3s/U=5532323/8033000,
    m0=s/(1-alpha)=930/8963.

The actual ABC,ABH inequalities imply a,b>alpha. Indeed if
z=min(a,b)<=alpha, its corresponding clearance is at most
z(1-z)<=alpha(1-alpha)<s. Five actual points H,C,A,B,P lie in
the endpoint triangle (0,0),H,C. The five-point endpoint theorem
in TYPE_II.md Section 1 therefore gives

    hc>=(3+2sqrt(2))s>M,

where (707/500)^2<2 proves beta<3+2sqrt(2). Hence c,h>=M.
The top point gives (1-e)(1-f)>=s; with e>=a>alpha and f>=b>alpha,
this gives e,f<=U. Normalization also gives a,b<=U. The side-pair
support cost gives e,h>=E0, and its actual cap gives c<=C1.

Every free point has x,y>=m0 from its AH and BC clearances, whose
spans are at most 1-alpha. For Q,R the right-cap clearance gives
x>=c+s; for S the top clearance gives x>=f+s, y>=e+s. These
inequalities prove every endpoint of the common box printed below.
The upper bound 1 keeps all outer square faces.

For each coordinate x_i in that order, write

    L_(2i)=x_i-lo_i,       L_(2i+1)=hi_i-x_i,
    0<=i<14.

## 3. All signs and the common geometric trace

All twenty triples of A,B,C,E,F,H in that cyclic order are positive.
The six hexagon-edge signs at P are positive. At Q,R the CE sign
is negative and the other five are positive; at S the EF sign is
negative and the other five are positive. The remaining initial
tests are

    HCP<0; HCQ,HCR,HCS>0;
    HEQ,HER<0; HES>0;
    CFQ,CFR,CFS<0;
    ACP,HBP>0;
    HPQ,HPR,HPS>0; CPQ,CPR,CPS<0;
    CQR>0; EQR<0.

The region tests follow from the five convex regions in
N6_PLACEMENTS.md. The cross-pair tests at H,C put P and Q,R,S on
opposite sides of HC. The last two tests follow from R inside CEQ.
Thus every initial sign follows from the stated geometry.

The common trace below uses only the identity

    [ABC][ADE]-[ABD][ACE]+[ABE][ACD]=0.

A row `plu ABCDE XYZ sign` has two products of the same nonzero
sign and only the named determinant unknown in the third product;
the identity forces its printed sign. All 38 deductions are printed.
In particular the ten cyclic triples of P,C,Q,E,H are positive,
so these five actual points form a strictly convex pentagon.

## 4. Every additional factor

Here all costs use doubled area. The affine factors ha,ea,he,fb,cf
mean h-a,e-a,h-e,f-b,c-f. Define

    Vlow=hc-M,
    TopCount=(1-e)(1-f)-s,
    Right_support=e(1-b)-K*s,
    up_Q=u+v-M-s, up_R=r+w-M-s, up_S=j+k-M-s.

The first three are proved above. For an upper or exterior point T,
its positive HC clearance says hx_T+cy_T>=hc+s; since h,c<=1,
this gives each up factor.

A factor T_XYZ+ or T_XYZ- is the indicated signed determinant
minus s. Its sign is in the initial list or common trace. The only
strengthened triangle factors used are

    C_CEQ_1=-[CEQ]-3s,       with actual interior point R;
    C_ACH_1=[ACH]-3s,        with actual interior point P.

All three edge signs for these strict containments are in the
proved sign list. The four cap factors for a right point T=(x,y)
of cost t are

    right_x_T=x-c-t,        right_y_T=e-y-t,
    right_px_T=e(x-c)-t,    right_py_T=(1-c)(e-y)-t.

Here t=3s for Q and t=s for R. They follow from
e(x-c)-(1-c)y>=t, x<=1 and y>=0 by dropping nonnegative terms
and, for the affine factors, using coefficients at most one.
For the top point S define

    top_x_S=j-f-s,          top_y_S=k-e-s,
    top_px_S=(1-e)(j-f)-s,  top_py_S=(1-f)(k-e)-s.

These follow in the same way from its actual top-cap determinant.

Finally put X=[PCH], Y=[PEH], Z=[PCE]. The support-ray argument
for five cyclic actual vertices in N7_THREE_FIVE_UPPER_HEIGHT.md
Section 6 gives XY>=11s(X-Z). When X-Z<=0 it is automatic; when
positive, the endpoint support triangle has doubled area
XY/(X-Z)>11s. Since 0<X<=1, in both cases

    F5_PCQEH_X=Y-11s(X-Z)>=0.

The common trace proves all ten convexity tests, so this use has
no unstated ordering assumption. This completes the factor list.

## 5. Two printed cubic contradictions

For each row let W be the printed sum of products with its positive
integer weights. Every factor is nonnegative by Sections 1--4,
so W>=0. Expand W(lo+z), where 0<=z_i<=hi_i-lo_i. Drop negative
nonconstant monomials and bound each positive monomial by the
corresponding product of box widths. The resulting exact rational
upper bound is printed after the sum and is negative.

Thus both contact orders are impossible. The two ear alternatives
were already excluded in Section 1, so every placement in the
stated count is excluded. Transposing the whole square gives the
left-pair version and preserves the original normalization.

The exact companion checker reads only this manuscript. It replays
the common sign trace, verifies every factor premise, and expands
all printed terms using rational arithmetic.


## Common box

```n6-lpt-box
a 1037/10000 8033/8963
b 1037/10000 8033/8963
c 135501/250000 5532323/8033000
e 13857/17926 8033/8963
f 1037/10000 8033/8963
h 13857/17926 1
p 930/8963 1
q 930/8963 1
u 158751/250000 1
v 930/8963 1
r 158751/250000 1
w 930/8963 1
j 1967/10000 1
k 7762059/8963000 1
```

## Common sign trace

```n6-lpt-geometry
plu CABEQ CAQ -1
plu CABER CAR -1
plu CABFS CAS -1
plu CAEQS CQS 1
plu CAERS CRS 1
plu CAFHP CFP 1
plu EACFQ EAQ 1
plu EACFR EAR 1
plu EACFS EAS -1
plu EBCFQ EBQ 1
plu EBCFR EBR 1
plu EBCFS EBS -1
plu ECFPQ EPQ 1
plu ECFPR EPR 1
plu ECFPS EPS -1
plu FACEQ FAQ 1
plu FACER FAR 1
plu FACHS FAS 1
plu FAEQS FQS 1
plu FAERS FRS 1
plu FBCEQ FBQ 1
plu FBCER FBR 1
plu FBCHS FBS 1
plu FCEPQ FPQ 1
plu FCEPR FPR 1
plu FCHPS FPS 1
plu HABCQ HBQ 1
plu HABCR HBR 1
plu HABCS HBS 1
plu HACEP HEP -1
plu HAEQS HQS 1
plu HAERS HRS 1
plu PCEQS PQS 1
plu PCERS PRS 1
plu QACFS QAS -1
plu QBCFS QBS -1
plu RACFS RAS -1
plu RBCFS RBS -1
```

### Row AC

```n6-lpt-sum
36 C_CEQ_1
33 T_ABH+
41 T_ABP+
154 T_BCQ+
12 T_CES+
6 T_CHP+
105 T_EFS-
295 T_FHS+
493 right_py_Q
11 C_CEQ_1*L24
9 C_CEQ_1*L7
14 F5_PCQEH_X*L17
18 L0*Order_ac
122 L0*T_ABH+
80 L0*T_BCQ+
54 L0*T_CHP+
3 L0*he
54 L10*T_ABP+
605 L10*T_BCQ+
11 L10*he
304 L10*top_px_S
298 L11*T_CES+
304 L11*Vlow
118 L11*fb
54 L14*Order_ac
1 L17*L2
7 L17*L27
5 L17*ea
1 L17*top_x_S
9 L17*up_S
4 L18*L27
454 L18*T_ABH+
1 L18*fb
5 L19*T_CES+
17 L19*T_FHS+
4 L2*L5
71 L2*T_CES+
96 L2*T_EHS-
152 L2*T_FHS+
649 L21*T_BCQ+
1 L25*L4
191 L25*L7
162 L26*T_AFH+
19 L27*T_AEH+
4 L27*TopCount
78 L27*cf
186 L4*L7
89 L4*top_y_S
242 L5*he
22 L6*L7
27 L6*fb
7 L7*T_AES+
64 L7*Vlow
111 L8*T_EFH+
54 T_ABH+*right_x_Q
56 T_ABH+*top_x_S
649 T_BCQ+*right_x_R
7 T_CES+*ea
5 T_EFS-*up_Q
11 T_FHS+*up_Q
69 Vlow*ea
591 Vlow*right_y_Q
11 Vlow*top_x_S
8 cf*fb
6 ea*fb
183 fb*top_py_S
21 he*he
18 L0*L0*L5
50 L0*L11*L2
80 L0*L18*L5
54 L0*L2*L5
56 L0*L2*top_x_S
7 L1*L27*right_x_Q
304 L10*cf*he
33 L11*L18*fb
40 L11*L19*L8
54 L11*L2*L5
96 L11*L2*L8
7 L11*L25*right_y_Q
459 L11*L27*L5
162 L11*L27*cf
111 L11*L8*L8
11 L16*L25*L7
11 L16*L8*top_y_S
5 L17*L19*L27
54 L17*L2*ha
7 L17*L27*ea
5 L17*L6*fb
7 L17*L6*up_S
2 L18*L2*L27
649 L18*L2*L5
11 L18*L25*L4
649 L18*L5*L5
5 L18*L7*fb
2 L19*L26*fb
5 L19*L27*right_x_Q
137 L2*L25*L7
304 L2*L6*L7
5 L2*L7*up_Q
71 L2*T_BCF+*top_y_S
35 L27*L3*L9
153 L5*L5*L5
7 L5*L7*he
14 L5*he*up_Q
304 L6*L7*fb
9 L7*L7*right_x_Q
304 L8*he*he
71 fb*fb*top_y_S
11 he*right_x_Q*top_x_S
```

Upper bound: `-4997362919139192797457035443603132471233/2915973148582419103172960937500000000000`.

### Row BH

```n6-lpt-sum
4 C_CEQ_1
101 Central_bh
1 T_ABC+
93 T_BCQ+
13 T_CES+
48 T_EFS-
55 T_FHS+
158 right_py_Q
5 C_ACH_1*L17
67 C_CEQ_1*L4
1 L0*L17
5 L0*T_BCQ+
1 L1*Vlow
6 L10*L17
7 L10*T_BCQ+
9 L10*right_py_Q
8 L10*top_px_S
22 L11*L25
1 L11*Order_bh
18 L11*Vlow
48 L11*fb
4 L17*L17
67 L17*L4
4 L17*L6
32 L18*T_ABH+
2 L18*he
38 L2*T_EFH+
3 L2*right_py_Q
4 L21*T_EFS-
49 L25*L7
67 L25*T_EFH+
91 L27*L5
7 L27*L7
71 L27*cf
85 L3*Vlow
57 L4*fb
42 L5*L7
406 L5*T_BCQ+
76 L5*he
3 L7*L7
12 L7*T_BES+
7 L7*right_py_Q
14 L8*T_BCQ+
48 L8*T_EFH+
67 L8*T_EFS-
12 Right_support*he
4 T_EFS-*right_y_R
4 T_EFS-*up_R
67 T_FHS+*cf
67 Vlow*cf
9 Vlow*right_y_Q
8 fb*right_y_Q
5 L0*L17*up_Q
5 L0*L18*right_x_Q
5 L1*L17*right_x_Q
1 L11*L11*L2
18 L11*L11*L4
12 L11*L11*L8
62 L11*L17*L5
25 L11*L18*L8
17 L11*L2*L4
12 L11*L2*L6
67 L11*L25*L4
25 L11*fb*right_y_Q
409 L18*L2*L5
339 L18*L5*L5
14 L18*L5*L8
7 L18*L5*he
8 L27*L6*L8
12 L27*L7*fb
67 L4*he*right_x_Q
7 L5*L7*L7
8 L6*he*top_x_S
12 L9*he*he
19 fb*fb*he
```

Upper bound: `-88748203423027244037406352289951/100137730090357245437500000000000`.
