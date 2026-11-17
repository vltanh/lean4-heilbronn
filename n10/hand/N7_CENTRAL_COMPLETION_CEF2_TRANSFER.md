# Central N7: AE transfer with two CEF occupants

Use the actual ten-point setup, contact orders, central lower signs and
either weak contact root CA or CB of
[N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md). In particular G is in
HABC, O and P are in HCEF, and every distinct actual triangle has
unsigned doubled area at least s=93/1000. All ten points lie in the
closed unit square and ABCDEFH is the actual strictly convex heptagon.

Suppose CEF contains O and P and

    AEG<0, COP<0, EOP>0.

Then AEO>0. This implication has no premise on FOP. It is the same
capacity proof as Section 6 of
[N7_CENTRAL_COMPLETION.md](N7_CENTRAL_COMPLETION.md), with its used
premises stated individually. It does not exclude either central root.

The two CEF occupants give capacity one for actual ABE by
[UPPER_PAIR_CONTACT_CAPS.md](UPPER_PAIR_CONTACT_CAPS.md). Actual BCE
has capacity one by [N7_BOTTOM_SPAN_CAP.md](N7_BOTTOM_SPAN_CAP.md).

First BCO,BCP,CEO,CEP are positive. The BC tests equal (c-b) times
the positive ordinate; the CE tests are inward HCEF tests. Put
a_X=-ECX=CEX>0 and f_X=EBX. The exact identity

    a_O f_P-a_P f_O=BCE EOP>0

shows that f_O>0 would imply f_P>0, putting O and P inside BCE.
Thus f_O<0, and BEO>0. Zero is excluded by actual clearance.

The positive tests CEP,EOP,OCP=-COP put P strictly inside actual
CEO; CEO>0 is an inward upper-cell test.

For G the affine CE test is nonnegative on HABC, with vertex values

    CEH=h(1-c)+ce>0, CEA=a(1-c)+ce>0,
    CEB=e(c-b)>0, CEC=0.

Thus CEG>0, with equality excluded by clearance. Together with ACG>0
and EAG=-AEG>0, this places G in actual ACE.

Suppose AEO<0. The affine AC test on HCEF has vertex values

    ACH=c(h-a)>0, ACC=0,
    ACE=a(1-c)+ce>0, ACF=c(1-a)+af>0.

Hence ACO>0. Together with CEO>0 and EAO=-AEO>0 this places O
inside ACE. The three vertices C,E,O lie in closed ACE, so P in
CEO also lies in ACE. More explicitly, EAC=ACE>0, EAE=0 and
EAO>0 give EAP>0 by strict affine interpolation at P; ACP,CEP>0
are its other inward ACE tests.

Now ABO,BEO,EAO>0 place O inside actual ABE. For X=G and X=P,
ABX>0 is an inward heptagon test, and EAX>0 was just proved.
If BEX>0, X would be a second occupant of ABE. Its capacity one
therefore gives BEG,BEP<0. But then

    BCG,CEG,EBG=-BEG>0,
    BCP,CEP,EBP=-BEP>0

put G and P inside BCE, contradicting its capacity one. Thus AEO<0
is impossible. Clearance excludes zero and proves AEO>0.

The optional exact reader
[N7_CENTRAL_COMPLETION_CEF2_TRANSFER_check.py](N7_CENTRAL_COMPLETION_CEF2_TRANSFER_check.py)
expands the six affine contact tests and the displayed product identity.

Independent geometric review checks the stated premise scope, every
actual containment, and both capacity-one contradictions. The separate
[audit_n7_cef2_transfer.py](audit_n7_cef2_transfer.py) expands seven
actual determinant identities with fresh SymPy arithmetic. All checks
pass. The acceptance is for this implication; the containing N7 roots
remain open.
