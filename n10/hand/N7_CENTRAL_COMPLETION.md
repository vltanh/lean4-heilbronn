# Central N7: empty triangles below the top contact

This note supplies actual-contact consequences for the remaining central
N7 roots CA and CB. It does not close either central root or the E-only
upper-pair word.

Use the normalization of [N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md):

    A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e),
    F=(f,1), H=(0,h), G=(g,z), O=(x,y), P=(u,v),

with

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    a<=e<=h, b<=f<=c.

All ten actual points lie in the closed unit square. All actual
distinct-point unsigned doubled triangle areas are at least s=93/1000.
The points G,O,P lie strictly inside the actual heptagon ABCDEFH.
The point G lies in HABC and has the central signs ACG,HBG>0;
and O,P lie inside HCEF. The two weak contact orders are CA: ac>=bh
and CB: ac<=bh, with the respective proved boxes of the common setup.
No physical reflection or relabeling is used below.

**Conditional theorem.** If CEF contains O and P, then each actual
triangle AFH, BFH and ABF contains no additional actual point. Moreover,
for every X in {G,O,P},

    AFX<0,       BFX<0.                              (1)

In particular G lies strictly inside both ACF and BCF.

## 1. Three empty actual triangles

The premise and the actual two-interior-point triangle theorem give

    [CEF] >= T := (149/20)s = 13857/20000.

[UPPER_PAIR_CONTACT_CAPS.md](UPPER_PAIR_CONTACT_CAPS.md), Section 5,
applies because G lies in HABC. Its endpoint-five hypothesis
hc>=(2911/500)s is proved in the common N7 setup. It proves

    f<3s=279/1000.                                   (2)

The three positive cyclic actual triangle areas satisfy

    [AFH]=f(h-a)<=f,
    [BFH]=hf+b(1-h)<=hf+f(1-h)=f,
    [ABF]=af+b(1-a)<=af+f(1-a)=f.                    (3)

Every substituted coefficient is nonnegative: h-a<=1, 1-h>=0,
and 1-a>=0. Here b<=f is a stated contact order. Equations (2)-(3)
make all three areas strictly less than 3s. An additional actual
interior point would split one of these positive triangles into three
actual triangles, each of area at least s. Therefore all three
triangles are empty.

## 2. Every free point is below AF and BF

For each X in {G,O,P}, the actual heptagon inward test is

    FHX>0.                                          (4)

Also HAX>0: its coordinate expression is (h-a) times the positive
abscissa of X.

For G, HBG>0 is the central lower-cell premise. For O and P, HBX>0
follows from their HCEF placement. Indeed the affine test HBX is zero
at H and has the following positive values at the other vertices:

    HBC=h(c-b)>0,
    HBE=h(1-b)+be>0,
    HBF=hf+b(1-h)>0.                                (5)

The convex-hull placement gives HBX>=0. Zero would be an actual
collinear triple and is excluded by the positive minimum area. Thus

    HBX>0                                           (6)

for all three X.

If AFX>0, then AFX,FHX,HAX are precisely the three positive inward
edge tests for X in AFH, contradicting its emptiness. If BFX>0,
then BFX,FHX,HBX put X in BFH. The zero cases are again actual
collinear triples. This proves (1).

## 3. The two actual lower fan containments

The chord CF is nonnegative at all vertices of HABC and positive at
H,A,B:

    CFH=c(1-h)+hf>0,
    CFA=c(1-a)+af>0,
    CFB=c-b>0,
    CFC=0.                                          (7)

Therefore CFG>0, using G in HABC and the positive actual clearance.
The three inward tests for G in ACF are ACG,CFG,FAG=-AFG, all
positive. Those for G in BCF are BCG,CFG,FBG=-BFG, again positive;
BCG=(c-b)z>0 follows directly from the lower placement. Hence both
containments are strict actual containments, and their fan areas
satisfy

    [ACF]>=3s,        [BCF]>=3s.                      (8)

In particular both implications can be applied simultaneously with
the occupied CEF cost. None is inferred from a feasible scalar or
coordinate relaxation.

The complete E-only upper-pair word HOP<0,COP<0,EOP>0,FOP<0
puts O,P in CEF, as proved in
[UPPER_EAR_SEPARATION.md](UPPER_EAR_SEPARATION.md), Section 4.
Thus (1)-(8) hold throughout that entire word in both central roots.

The optional exact polynomial reader
[N7_CENTRAL_COMPLETION_check.js](N7_CENTRAL_COMPLETION_check.js)
checks the displayed physical area identities and the three nonnegative
remainders in (3). The written proof supplies the actual placements,
all positive coefficients, and the empty-triangle inference.

## 4. The occupied upper ear forces e>57/100

Retain the same premise CEF contains O,P. Put

    E0=1-s=907/1000, R=1-T=6143/20000,
    L=(2911/500)s=270723/500000,
    f0=108/1000, f1=279/1000, e1=57/100.

Both central boxes give f>=f0. Section 1 gives f<f1. The actual HEF
clearance, the occupied CEF cost, and the endpoint-five cost give

    h(1-f)+ef<=E0,
    c(1-e)+ef<=R,
    hc>=L.                                           (9)

In particular c>=L because h<=1. The second inequality in (9)
therefore implies

    R>=L(1-e)+f0*e.

If e<=1/2, its right side is at least (L+f0)/2, whereas

    (L+f0)/2-R=17573/1000000>0.

Thus e>1/2.

Suppose now e<=e1. All factors 1-e and 1-f are positive. Multiplying
the first two bounds in (9), whose right sides are positive, gives

    hc<=Phi(e,f):=(E0-ef)(R-ef)/((1-e)(1-f)).         (10)

Here both E0-ef and R-ef are positive by (9) and h,c>0.
Two literal difference identities show that Phi(e,f) is at most
Phi(e1,f0) throughout 1/2<=e<=e1 and f0<=f<=f1:

    Phi(e,f0)-Phi(e,f)
      =(f-f0){e(E0+R)-E0*R-e^2(f+f0-f*f0)}
        /((1-e)(1-f0)(1-f)),                         (11)

    Phi(e1,f0)-Phi(e,f0)
      =(e1-e){E0*R-f0(E0+R)+f0^2(e+e1-e*e1)}
        /((1-f0)(1-e1)(1-e)).                        (12)

Every denominator is positive. The braced numerator in (11) is
strictly positive, since f+f0-f*f0<=f1+f0 and

    (E0+R)/2-E0*R-e1^2(f1+f0)
      =4055073/20000000>0.

The braced numerator in (12) is positive because
0<e,e1<1 gives e+e1-e*e1>=0 and

    E0*R-f0(E0+R)=2949137/20000000>0.

Consequently (10)-(12) imply hc<=Phi(e1,f0). But the exact comparison

    L-Phi(e1,f0)=567727/4794500000>0

contradicts hc>=L. Therefore

    e>57/100.                                        (13)

## 5. AEF has capacity two in the entire E-only word

The physical area is

    [AEF]=1-a-f(e-a).

First replace a by its root's lower bound a0: the area decreases in a,
since its coefficient is -(1-f)<0. Next replace e by e1=57/100,
using f>0 and (13). Finally replace f by its root's lower bound f0',
using e1-a0>0. The resulting strict bounds are

| Root | a0 | f0' | Strict upper bound for AEF |
|---|---:|---:|---:|
| CA | 139/1000 | 108/1000 | 203613/250000 |
| CB | 122/1000 | 123/1000 | 51431/62500 |

The rational three-interior-point cost used in the common setup is

    J*s=(4427/500)s=411711/500000.

Its exact gaps above these bounds are respectively
897/100000 and 263/500000, both positive. The actual three-interior-point
triangle theorem requires the strictly larger cost
((11+3sqrt(5))/2)s: indeed 5-(559/250)^2=19/62500>0
proves (11+3sqrt(5))/2>4427/500. Hence AEF contains at most two additional actual
points throughout both central roots under the single premise CEF2.

One useful sign consequence covers the formerly difficult ordered
word AGO>0,AGP>0:

    AGO>0 and AGP>0 imply AEG<0.                      (14)

Indeed suppose AEG>0. Section 2 supplies AFG<0. For either T=O,P,
AFT<0 follows directly from T in CEF: the affine AF test is negative
at C,E and zero at F. The Pluecker identity

    [AEF][AGT]-[AEG][AFT]+[AET][AFG]=0

has positive first and second summands, so AET>0. The actual EF edge
test is positive at G,O,P. Thus AEG,EFG,FAG>0 place G inside AEF,
and AET,EFT,FAT>0 place both O and P there as well. This gives three
additional actual points in AEF, contrary to its capacity two. The
zero case AEG=0 is excluded by actual clearance, proving (14).

These new metric and sign consequences do not by themselves close
the E-only word or either central parent.

## 6. An E-only transfer from AE to AO

Assume the complete E-only word

    HOP<0, COP<0, EOP>0, FOP<0.

Then

    AEG<0 implies AEO>0.                             (15)

Here is a capacity-only proof. The inward BC and CE tests are positive
at O,P. The capacity-one BCE ray rule, based at E, and EOP>0 imply
BEO>0. Explicitly, put f_X=[EBX] and a_X=-[ECX]>0. Then

    a_O*f_P-a_P*f_O=[EBC][EOP]>0.

If f_O>0, this equation forces f_P>0; the other two inward tests
would put both O,P inside BCE. Thus f_O<0, equivalently BEO>0.
All zero cases are excluded by actual clearance.

The E-only signs also put P strictly inside CEO: its inward tests
are CEP>0, EOP>0 and OCP=-COP>0. The actual triangle CEO has
positive orientation because CEO>0 is an HCEF edge test at O.

Suppose AEG<0 and AEO<0. The chord CE is positive at H,A,B:

    CEH=h(1-c)+ce>0,
    CEA=a(1-c)+ce>0,
    CEB=e(c-b)>0.

It follows that CEG>0 from G in HABC. Together with ACG>0 and
EAG=-AEG>0, this puts G in ACE. The chord AC is positive at
H,E,F and zero at C, so ACO>0. Thus ACO,CEO,EAO=-AEO>0 put
O in ACE. Consequently its subtriangle CEO is inside ACE, and
P in CEO implies P in ACE as well.

Now ABO,BEO,EAO>0 place O inside ABE. That triangle has capacity
one by [UPPER_PAIR_CONTACT_CAPS.md](UPPER_PAIR_CONTACT_CAPS.md).
For X=G,P, the tests ABX>0 and EAX>0 are already known. Therefore
BEX>0 would put X inside ABE alongside O. We conclude

    BEG<0,       BEP<0.

But BCG,CEG,EBG=-BEG>0 place G inside BCE, while
BCP,CEP,EBP=-BEP>0 place P inside BCE. This contradicts the
proved capacity one of BCE. Hence AEO<0 is impossible, proving (15).
The zero case is excluded by the positive area of AEO.

Combining (14) and (15), the entire E-only subcase with AGO,AGP>0
satisfies the two definite actual signs AEG<0 and AEO>0.
It still requires a contradiction beyond these sign consequences.

## 7. Independent verification

The geometric review checks the stated actual contact orders, the affine
inward tests, each containing triangle, the signs of every coefficient in
the two rational comparisons, and the capacity arguments above. The separate
SymPy/Fraction reader [audit_n7_central_completion.py](audit_n7_central_completion.py)
expands the determinants directly from the actual coordinates, verifies both
Pluecker identities and both rational difference identities, and checks all
displayed strict comparison gaps. It passes 33 grouped checks and imports
neither the author reader nor any discovery module. The author reader
[N7_CENTRAL_COMPLETION_check.js](N7_CENTRAL_COMPLETION_check.js) separately
passes 39 exact checks. These optional regression commands are

~~~text
python3 n10/hand/audit_n7_central_completion.py
node n10/hand/N7_CENTRAL_COMPLETION_check.js
~~~

The acceptance applies only to the local lemmas stated in Sections 1–6.
No E-only word or central parent is claimed closed here.
