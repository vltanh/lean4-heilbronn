# A six-contact side pair excludes the opposite cap

Use the normalized actual contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

Suppose every unsigned actual doubled triangle area is at least
s=93/1000. If the right exterior cap contains two actual points,
then the left cap is empty. The reflected assertion holds as well.
No condition is imposed on a tenth point.

This closes all three N6 counts

    (k,j,r,t,l)=(0,0,2,1,1), (0,1,2,0,1), (1,0,2,0,1),

and their reflections. The proof uses nine actual points and one
fixed cubic sum with 71 positive integer terms, all printed below.

## 1. The actual points and a common rational box

N6_SIDE_PAIR_REDUCTION.md allows the two right points to be named
Q=(u,v) and R so that R lies strictly inside the actual triangle
CEQ. In particular

    -[CEQ]>=3s,       e(1-b)>=K*s,       K=149/20.

Let S=(j,k) be a hypothetical left-cap point. The four actual points
A,F,S,H have convex quadrilateral hull inside the virtual triangle
A,(0,1),F. The nontriangular four-point endpoint theorem gives

    f(1-a)>=4s.                                      (1)

The scalar constants used are

    alpha=1037/10000,   E0=K*s/(1-alpha)=13857/17926,
    F0=4s/(1-alpha)=3720/8963,
    m0=s/(1-alpha)=930/8963.

The actual anchor clearances a(c-b)>=s and b(h-a)>=s imply
a,b>alpha. Indeed, if z=min(a,b)<=alpha, its corresponding clearance
is at most z(1-z)<=alpha(1-alpha)<s. The actual triangles CEF and
EFH also give f,e<=1-s, since their areas are at most 1-f,1-e.
Normalization then gives a,b<=1-s. The support costs above yield

    e,h>=E0,       f,c>=F0,
    c<=1-3s/(1-s)=628/907,
    h<=1-s/(1-s)=814/907.                             (2)

The last bounds use -[CEQ]>=3s, -[FHS]>=s and their virtual cap
areas e(1-c),f(1-h). Every free point T has x_T,y_T>=m0: its
actual AH and BC clearances have contact spans at most 1-alpha.
The cap clearances further give u>=c+s and k>=h+s. Closing these
bounds gives the following complete box for the ten coordinates
that occur in the polynomial. The point R is used only through its
proved strict containment in CEQ; its coordinates are not needed.

```n6-pair-opposite-box
a 1037/10000 907/1000
b 1037/10000 907/1000
c 3720/8963 628/907
e 13857/17926 907/1000
f 3720/8963 907/1000
h 13857/17926 814/907
u 4553559/8963000 1
v 930/8963 1
j 930/8963 1
k 7762059/8963000 1
```

All lower and upper endpoints in the box follow from (1)--(2) and
the stated actual clearances. The outer square edges for Q,S are
included. No coordinate subdivision is used.

## 2. Nonnegative factors and their geometric premises

For coordinate i in the printed order define

    L_(2i)=coordinate_i-lower_i,
    L_(2i+1)=upper_i-coordinate_i,   0<=i<10.

Use the following further affine and support factors:

| Name | Definition |
|---|---|
| ha, ea, he, fb, cf | h-a, e-a, h-e, f-b, c-f |
| Right_support | e(1-b)-K*s |
| Left_support | f(1-a)-4s |
| up_Q, up_S | u+v-5s, j+k-5s |
| right_x_Q, right_y_Q | u-c-3s, e-v-3s |
| right_px_Q, right_py_Q | e(u-c)-3s, (1-c)(e-v)-3s |
| left_x_S, left_y_S | f-j-s, k-h-s |
| left_px_S, left_py_S | (1-h)(f-j)-s, f(k-h)-s |

The support factors were proved above. For the sum factors, the
opposite anchor ears satisfy
sqrt(a(c-b))+sqrt(b(h-a))<=sqrt(hc), so hc>=4s.
Both cap points lie above HC; their actual HC clearances give
h*x_T+c*y_T>=hc+s>=5s, and h,c<=1 prove up_T>=0.

The right factors follow from

    -[CEQ]=e(u-c)-(1-c)v
           =(1-c)(e-v)-e(1-u)>=3s.

The left factors are the reflected identities for -[FHS]>=s.
The subtracted terms are nonnegative on the closed square, and
all coefficients are at most one. Thus both the product and the
coordinate-difference factors have the stated signs.

A factor T_XYZ+ is [XYZ]-s, and T_XYZ- is -[XYZ]-s.
The only such factors used below are

    T_ABC+, T_ABH+, T_AHS-, T_BCQ+, T_FHS-, T_BCF+.

Their signs are actual contact orientations, the left-cap condition,
or the positive coordinates j,v. Define also

    C_CEQ_1=-[CEQ]-3s,
    Q_BCQE_1=[BCQ]+[BQE]-(24/5)s.                    (3)

The first has actual occupant R. The quadrilateral B,C,Q,E is
strictly convex: BCQ>0, CQE>0, BCE>0, and

    [BQE]=e(u-b)-(1-b)v>(c-b)(e-v)>0.

It contains the triangle CEQ and hence R. The one-interior
quadrilateral theorem gives its area at least
2(1+sqrt(2))s>(24/5)s, proving the second factor.

Two factors use actual convex pentagons. For positive cyclic
vertices V1,...,V5, set X=[V1 V2 V5], Y=[V1 V4 V5], Z=[V1 V2 V4].
The universal support argument in N7_HEPTAGON_TWO_UPPER_EAR.md
gives XY>=11s(X-Z). If X-Z<=0 this is immediate. Otherwise the
two supporting rays give a triangle with two actual endpoints,
containing the five actual convex vertices, of area XY/(X-Z);
the convex-five endpoint bound gives this area greater than 11s.
Every actual triangle in the unit square has doubled area at most
one. Therefore

    F5_V1V2V3V4V5_X=Y-11s(X-Z)>=0.                   (4)

The two orders used here are C,E,F,S,B and S,B,C,Q,E. Both are
strictly convex for every permitted cap placement. To check this
without a sign search, note that Q is beyond CE with u>c,v<e,
and S is beyond FH with j<f,k>h. The six contact orientations are
positive; the cap tests give CFS,EFS>0 and CQE>0. The left cap
also gives j<fk<=b+(f-b)k, so BFS>0. Finally BQS,CQS,QES>0
follow from u>c>=f>j and k>h>=e>v. Along with BCE,BCF,BCS,BES,
CES and BQE>0, these are all ten triple tests in each pentagon.
Thus (4) applies to both printed F5 factors with no further condition.

## 3. The fixed cubic contradiction

Multiply the factors in each row below and take their indicated
positive integer combination W. All factors are nonnegative, so
W>=0. Set z_i=coordinate_i-lower_i, with 0<=z_i<=upper_i-lower_i.
Expand W in these ten nonnegative variables. Drop every negative
nonconstant monomial, and replace each positive monomial by its
value at the box widths. This gives the exact upper bound

    -15204842926825328247858740588434993/
     5372569601199369131210000000000000 < 0.

Thus W is simultaneously nonnegative and strictly negative. Every
cap placement has been included, proving the theorem. Transposition
exchanges the side caps and proves the reflected statement.

```n6-pair-opposite-sum
2 Right_support
68 T_ABC+
86 T_ABH+
71 T_AHS-
72 T_BCQ+
21 he
249 left_px_S
80 right_py_Q
86 C_CEQ_1*L12
87 C_CEQ_1*fb
2 F5_CEFSB_X*cf
85 F5_SBCQE_X*cf
145 L0*T_ABH+
52 L1*he
304 L10*Left_support
508 L10*left_px_S
660 L11*T_AHS-
4 L12*left_px_S
1 L12*right_py_Q
40 L13*L6
86 L13*Q_BCQE_1
187 L14*L5
1 L15*T_FHS-
1 L15*he
1 L2*left_px_S
1 L16*L19
1 L16*he
2 L16*right_py_Q
1 L17*T_ABH+
2 L19*T_ABC+
46 L3*he
1 L4*T_ABH+
66 L5*L5
67 L5*cf
52 L6*T_ABH+
85 L8*Right_support
87 L9*T_BCQ+
52 Right_support*ha
3 Right_support*left_x_S
2 T_ABC+*up_S
2 T_AHS-*fb
1 T_FHS-*up_Q
69 cf*ea
2 cf*right_y_Q
304 ea*left_px_S
50 he*left_x_S
1 he*up_Q
145 L0*L11*L2
356 L0*L11*L16
1 L0*L16*L5
1 L10*L2*right_x_Q
5 L11*L12*L16
3 L11*L12*cf
1 L12*L14*L5
1 L12*L19*L9
1 L12*T_BCF+*he
2 L12*he*left_x_S
2 L14*L16*L9
2 L2*L19*left_x_S
3 L2*L6*left_x_S
1 L16*L19*L4
1 L16*L3*left_y_S
152 L16*L6*L7
2 L16*cf*ha
152 L16*he*he
2 L16*he*right_x_Q
1 L17*L19*T_BCF+
2 L19*L4*T_BCF+
2 L4*L6*T_BCF+
3 L5*L7*right_x_Q
2 L5*left_y_S*right_x_Q
```

There are 71 terms, every weight is a positive integer at most 660,
and every product has degree at most three. The optional exact
checker reads only this manuscript; no numerical search, external
certificate or auxiliary point is a premise.
