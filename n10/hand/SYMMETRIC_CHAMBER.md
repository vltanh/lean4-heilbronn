# Sharp hand proof for the complete symmetric three-parameter family

This closes HP10. It is a complete proof for the domain stated below, not a
claim that an arbitrary maximizing configuration is symmetric. No averaging
or unproved symmetrization step is used.

## 1. Domain and statement

Let a,b>=0, a+b<=1 and 0<=t<=1/2. Consider

    A=(0,a),        B=(a,0),
    C=(1-b,0),      D=(1,b),
    E=(1,1-a),      F=(1-a,1),
    G=(b,1),        H=(0,1-b),
    O=(t,t),        P=(1-t,1-t).

The minimum ordinary triangle area is at most A*. Equality occurs precisely
at t=g, b=g/2 and a=1-3g+2g^2, in this fixed parametrization.

There is no orientation hypothesis. Section 2 excludes the sign opposite
to the candidate's by the strict bound 1/24; Sections 3–6 prove the sharp
bound in the candidate's orientation. Square symmetries and relabeling can
of course be applied to the stated theorem.

## 2. Exclude the opposite ADO orientation

Put c=1-a-b>=0 and let s be twice the minimum ordinary triangle area.
Suppose the signed doubled determinant of ADO is nonpositive:

    t(1-b+a)-a <= 0.

The actual triangles AHO, AGH and ADO give

    s<=ct,     s<=bc,     s<=a(1-2t)-ct.                 (1)

If 2t<=a, the first two inequalities yield

    3s <= ac+bc = c(1-c) <= 1/4.

If 2t>=a, triangle ABO has unsigned doubled area a(2t-a). Adding its
inequality to the last one in (1), and using ct>=s, gives instead

    3s <= a(1-a) <= 1/4.

These two cases are exhaustive, including equality. Thus s<=1/12 and the
minimum ordinary area is at most 1/24<A*. The comparison follows already
from A*>1/22. Degenerate cases give s=0 and require no division.

Every competitive configuration in this symmetric family must therefore
have t(1-b+a)-a>0. This proves the missing orientation reduction inside
the entire stated three-parameter family.

## 3. Three actual triangles suffice in the remaining orientation

Let s be twice the minimum ordinary triangle area. Direct determinants give

    s <= a(1-2t)                         from AEO,
    s <= b(1-a-b)                        from AGH,
    s <= t(1-b+a)-a                      from ADO.       (2)

The first two expressions are nonnegative on the domain; the last one is
positive by Section 2. Thus these are bounds on unsigned doubled areas, not
an assumed signed relaxation. If s=0 the upper bound is immediate.
The cases t=0 and t=1/2 cannot be competitive by Section 2 or (2).

For 0<t<1/2 put d=1-2t>0. The first inequality gives a>=s/d. Substituting
this into the other two inequalities yields

    s <= U1(t,b) = t(1-b)(1-2t)/(2-3t),
    s <= U2(t,b) = b(1-b)(1-2t)/(1-2t+b).          (3)

For example, the ADO inequality is
s<=t(1-b)-(1-t)a<=t(1-b)-(1-t)s/d, which gives U1.
All denominators in (3) are positive.

## 4. The main parameter range: 0<t<=2/5

Define

    Phi(t)=t(1-t/2)(1-2t)/(2-3t).

If b>=t/2, U1 decreases strictly with b, so (3) gives

    s<=U1(t,b)<=U1(t,t/2)=Phi(t).

If 0<=b<=t/2, differentiate U2:

    partial U2/partial b
      = d*[d(1-2b)-b^2]/(d+b)^2.

The bracket decreases with b. At b=t/2 it equals

    1-3t+7t^2/4 >= 2/25 > 0     for 0<=t<=2/5.

Consequently U2 is strictly increasing throughout [0,t/2], and

    s<=U2(t,b)<=U2(t,t/2)=Phi(t).

Thus s<=Phi(t) for every b in the stated domain when t<=2/5.
The scalar derivative is

    Phi'(t)=-f(t)/[2(2-3t)^2],
    f(t)=12t^3-27t^2+20t-4.

The polynomial f is strictly increasing on [0,2/5] and has its sole zero
there at g. Hence Phi has a unique maximum at g. Substitution using f(g)=0
shows

    Phi(g)=2A*.

This proves the sharp upper bound in the main range.

## 5. The remaining range: 2/5<=t<1/2

Here d=1-2t<=1/5. Suppose s>=1/11. The first inequality of (2) gives
a>=5/11. For every b,

    b(1-a-b) <= (1-a)^2/4 <= 9/121 < 1/11.

This contradicts the second inequality of (2), so s<1/11.
The exact root bounds in ATTAINMENT.md give

    2A*=g^2(5/4-g) > (5/16)^2(5/4-5/16)
                     =375/4096 > 1/11.

Therefore this whole parameter range has strictly smaller minimum area.

## 6. Equality

If s=2A*, Section 2 fixes the orientation, Section 5 excludes t>=2/5,
and the unique scalar maximum in Section 4 forces t=g. In either b-branch,
strict monotonicity forces b=g/2.

The first and third inequalities in (2) then pin down a:

    a = g(1-g/2)/(2-3g) = 1-3g+2g^2.

The second equality follows from the identity

    g(1-g/2)/(2-3g) - (1-3g+2g^2) = f(g)/[2(2-3g)].

This is exactly the candidate. ATTAINMENT.md checks every triangle at this
configuration, so the bound is attained and its equality classification
within this chamber is complete.

## Remaining global dependency

This theorem covers the complete stated symmetric three-parameter family,
including both ADO orientations. ASYMMETRIC_SIGN_CHAMBER.md now proves the
sharp bound directly throughout the full asymmetric candidate sign chamber;
equality in its inequalities forces the candidate symmetries. Its eight sign
hypotheses still need a global orientation reduction, so the unrestricted
eight-boundary theorem remains open.
