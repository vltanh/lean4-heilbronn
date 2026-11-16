# Sharp bound in the full asymmetric candidate sign chamber

This theorem removes the symmetry assumption from one entire eight-boundary
sign chamber. The separate exhaustive orientation analysis in N8_COMPLETE.md
now proves that every competitive eight-boundary configuration can be put
in this chamber. No averaging of point positions
is used, and no numerical optimization is a premise.

Use the exact numbers g,a,A* from ATTAINMENT.md. Throughout this note a
determinant is a DOUBLED signed triangle area, and s is twice the minimum
ordinary unsigned triangle area.

## 1. Domain and the eight sign hypotheses

Write the eight boundary points in cyclic order as

    A=(0,a1),       B=(a2,0),       C=(1-b1,0),     D=(1,b2),
    E=(1,1-a3),     F=(1-a4,1),     G=(b3,1),       H=(0,1-b4).

All a_i,b_i are nonnegative. The four same-side spans

    1-a1-b4,   1-a2-b1,   1-a3-b2,   1-a4-b3

are positive; if a span vanishes, two points coincide and s=0. The remaining
points are strictly interior:

    O=(x,y),       P=(x+U,y+V),
    0<x<x+U<1,    0<y<y+V<1.

The cases U=0 or V=0 are included by continuity at the end of Section 6.
Assume that these eight actual triangles have the indicated signs:

    ADO+, BGO-, CFP+, EHP+;
    AOP+, BOP-, EOP-, FOP+.

Then s<=2A*. Equality is possible only at the exact candidate in
ATTAINMENT.md, in these labels. The four further active triangles AEO,AEP,
BFO,BFP need no sign assumption and are not used in this proof.

If s=0 the result is immediate. Otherwise all eight directed areas above
are at least s in their specified signs.

## 2. Necessary inequalities from opposite triangle pairs

Put

    alpha=(a1+a3)/2,  beta=(a2+a4)/2,
    p=(b1+b3)/2,      q=(b2+b4)/2,
    r=x*V-y*U,       K=(U+V-2s)/2.

The four signed OP inequalities are exactly

    r+a1*U >= s,                  a2*V-r >= s,
    V-U+a3*U-r >= s,              U-V+a4*V+r >= s.

Adding the first and third, and the second and fourth, gives

    alpha >= (2s+U-V)/(2U),
    beta  >= (2s+V-U)/(2V).                         (1)

These are valid lower bounds even when their right sides are negative.

The four actual corner triangles AGH,BCD,CDE,FGH give

    b3*(1-a1-b4) >= s,    b2*(1-a2-b1) >= s,
    b1*(1-a3-b2) >= s,    b4*(1-a4-b3) >= s.

For positive X_i,Y_i, the inequalities X_i Y_i>=s, i=1,2, imply

    ((X1+X2)/2)*((Y1+Y2)/2) >= s,

because the left side is at least
((sqrt(X1Y1)+sqrt(X2Y2))/2)^2. Apply this to AGH,CDE, and to BCD,FGH:

    s <= p*(1-alpha-q),       s <= q*(1-beta-p).

Substituting (1) proves the necessary cap inequalities

    s <= p*K/U-p*q,          s <= q*K/V-p*q.        (2)

In particular p,q,K are positive. No putative symmetrized configuration
has been introduced: (1) and (2) are consequences of the original points.

## 3. A reciprocal inequality controls the other two contacts

The ADO inequality is

    y-b2*x-a1*(1-x) >= s.

Use a1>=(s-r)/U from AOP. Since 1-x>0, multiplication and the identity
r=xV-yU give

    b2 <= (V-r)/U + s/U - s*(1+U)/(U*x).             (3)

For clarity, the clearing step is

    U*s <= U*y-U*b2*x-(s-r)*(1-x)
          = x*(V-r-U*b2)-s*(1-x).

Apply the same calculation to EHP and EOP after the half-turn about the
square center. For that pair the lower point has

    x'=1-x-U,    y'=1-y-V,    r'=V-U-r,

so

    b4 <= (U+r)/U + s/U - s*(1+U)/(U*x').            (4)

Both x,x' are positive and x+x'=1-U. Thus

    1/x+1/x' >= 4/(1-U).

Add (3),(4) and divide by two:

    q <= (U+V)/(2U) - s*(1+3U)/(U*(1-U)).          (5)

Reflection in the diagonal interchanges U,V; a1,a2; a3,a4; and p,q.
It interchanges ADO with the negative of BGO and EHP with CFP, and
preserves the stated OP inequalities after relabeling. Consequently

    p <= (U+V)/(2V) - s*(1+3V)/(V*(1-V)).          (6)

This derivation uses the actual oblique and OP triangle inequalities,
including their specified orientations; neither (5) nor (6) is a geometric
symmetry assumption.

## 4. Two parameters collapse to a scalar envelope

Define

    M=max(U,V),   m=min(U,V),   D=(M+m)/2,
    k=min(p/U,q/V)>0,          H(z)=(1+3z)/(1-z).

The bounds (2), together with p*q>=k^2*U*V, give

    s <= k*(D-s)-k^2*M*m,
    s <= k*(D-k*M*m)/(1+k).                         (7)

If M=U, then k<=q/V and (5) gives

    k*M*m <= q*U <= D-s*H(M).

If M=V, the same assertion follows from k<=p/U and (6). In either case

    s <= (D-k*M*m)/H(M).                            (8)

In particular D-k*M*m>0. Combining (7),(8),

    s <= (D-k*M*m)*min(k/(1+k),1/H(M)).              (9)

If 0<M<=1/10, (8) already implies

    s < D/H(M) <= M/H(M) <= 9/130 < 1/11 < 2A*.

Here z(1-z)/(1+3z) increases on [0,1/10], since its derivative has
positive numerator 1-2z-3z^2. The comparison 1/11<2A* was proved in
ATTAINMENT.md (and is also displayed in SYMMETRIC_CHAMBER.md).

It remains to consider M>=1/10. The two factors inside the minimum in
(9) are equal at

    k0=(1-M)/(4M).

For k>=k0, the right side of (9) is
(D-k*M*m)/H(M), which decreases strictly with k. For 0<k<=k0, it is
k(D-k*M*m)/(1+k), whose derivative has numerator

    D-M*m*k*(k+2).

This is decreasing in k. At k0 it is positive, because D>=m and

    D-M*m*k0*(k0+2)
      >= m*[1-(1-M)*(1+7M)/(16M)]
       = m*(7M^2+10M-1)/(16M) > 0.

The last polynomial is increasing for M>0 and equals 7/100 at M=1/10.
Thus the maximum of the right side of (9) occurs uniquely at k=k0.
Substitution gives

    s <= Psi(M,m)
       = (1-M)*[2M+m*(1+M)]/[4*(1+3M)]
       <= M*(1-M)*(3+M)/[4*(1+3M)].                (10)

The last inequality is strict unless m=M. This is the step that removes
the asymmetry of the interior displacement; it is a monotone inequality,
not averaging.

## 5. The exact one-variable maximum

Set t=(1-M)/2. The final expression in (10) is exactly

    Phi(t)=t*(1-t/2)*(1-2t)/(2-3t).

On 0<=t<=1/2,

    Phi'(t)=-f(t)/[2*(2-3t)^2],
    f(t)=12t^3-27t^2+20t-4.

Moreover f'(t)=36(t-2/3)(t-5/6)>0 on that interval. Its unique zero
is g, so Phi has the unique maximum Phi(g)=2A*, by the exact identity
in ATTAINMENT.md or SYMMETRIC_CHAMBER.md. This proves s<=2A*.

## 6. Equality and closed faces

Suppose s=2A*. Section 4 excludes M<=1/10. Every inequality in (10)
and Section 5 must be equality, so

    U=V=M=1-2g,    k=k0=g/[2*(1-2g)].

Equality in p*q>=k^2*U*V, with p/U,q/V>=k, forces

    p=q=g/2.

Each right side in (2) is now exactly s. The preceding cap inequalities
therefore force equality in (1):

    alpha=beta=s/(1-2g)=a.

Equality in the geometric-mean step for two positive products X_iY_i>=s
forces X1=X2 and Y1=Y2: both products must be s, and equality in the
cross-term arithmetic-geometric mean gives X1Y2=X2Y1. Applying this to
both cap pairs gives

    b1=b3=p,    b2=b4=q,
    a1=a3=alpha,    a2=a4=beta.

Also equality in (8) holds. Since U=V, p=q and both (5),(6) have the
same now-sharp right side, both reciprocal inequalities are equalities.
Thus

    x=1-x-U,    y=1-y-V,
    x=y=g.

All ten points are the exact candidate. Conversely ATTAINMENT.md checks
all 120 actual triangle areas there, so equality is attained.

If U=0 or V=0 but s>0, perturb O and P slightly inside the square so
that both displacements become positive. The eight strict determinant
signs persist, and the minimum unsigned area tends to its original value.
The established bound therefore extends to these faces. Equality there
is impossible. For a limiting M<=1/10, Section 4 supplies the strict
bound 9/130. For a limiting M>1/10, retain the stronger continuous
envelope (10): if one displacement tends to zero while the other tends
to M, its bound tends to Psi(M,0)<Psi(M,M)<=2A*. If both tend to zero,
every OP area tends to zero. Coincident boundary contacts or nonpositive
s are already covered.

## Role in the complete N8 proof

This proves the exact upper bound and equality classification over the
whole asymmetric domain with the eight stated determinant signs and
coordinatewise ordering of O,P. It closes no other sign pattern by
implication. N8_COMPLETE.md supplies the exhaustive orientation catalogue
and the proofs closing its other alternatives. Those separate arguments,
rather than boundary normalization alone, establish the required signs.
