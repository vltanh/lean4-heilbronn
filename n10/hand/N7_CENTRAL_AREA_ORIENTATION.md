# Seven contacts: one scalar central-orientation exclusion

This note excludes a complete conditional sign chamber in **both** central
lower-cell roots of N7_ONE_LOWER_SETUP.md. It does not close either central
root, nor the N7 parent. Its proof is the following fixed geometric argument
and the 72 literal rational updates below. No numerical search is a premise.

## 1. Scope and source bounds

Use the seven actual contacts and three actual free points of
N7_ONE_LOWER_SETUP.md, with every unsigned doubled triangle area at least
s=93/1000. Thus

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), H=(0,h),
    G=(g,z) in HABC, O=(x,y),P=(u,v) in HCEF,

and all three free points are inside the actual heptagon ABCDEFH.
The contact orders are

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    a<=e<=h, b<=f<=c.

Assume G has the central lower signs ACG>0,HBG>0. The two weak contact
orders ac>=bh and ac<=bh are exhaustive, and the common upper bounds
in their published CA and CB boxes are

    a<=685/1000, c<=883/1000,
    d<=705/1000, e<=907/1000.                       (1)

No further physical reflection is used.

**Conditional theorem.** It is impossible that, in addition,

    AGP>0, DGP>0.                                 (2)

There is no extra assumption on the O/P pair line in this theorem.
The usual labeling HOP<0 and EHP>0 may be retained from the setup,
but neither is used below. In particular the proof also applies after
any relabeling which satisfies the displayed placements and signs.

Write [XYZ]=det(Y-X,Z-X). Starting from Section 2, a three-letter
area variable without brackets denotes the positive number |[XYZ]|,
irrespective of the displayed alphabetical orientation.

## 2. Actual containments and all signed identities

The chord AC has nonnegative tests at every vertex of HCEF and positive
tests at H,E,F. Therefore [ACP]>0. This statement uses the stated strict convex heptagon and the interior
placement, so the positive minimum rules out a zero test.

The two HC edge tests give [CHP]<0 and [CGH]<0. Together with
[ACG]>0 and [ACP]>0, three Pluecker identities now give the needed
remaining signs:

| Pivot and other four labels | Identity | Forced sign |
|---|---|---|
| C; A,G,H,P | [CAG][CHP]-[CAH][CGP]+[CAP][CGH]=0 | [CGP]<0 |
| G; A,C,D,P | [GAC][GDP]-[GAD][GCP]+[GAP][GCD]=0 | [ADG]<0 |
| P; A,C,D,G | [PAC][PDG]-[PAD][PCG]+[PAG][PCD]=0 | [ADP]<0 |

For the first identity, the first and third summands are positive;
[CAH]<0 therefore forces [CGP]<0. In the second identity, the first and third
summands are negative, while [GCP]>0, forcing [GAD]=[ADG]<0.
In the third identity the first and third summands are positive;
[PCG]=[CGP]<0 therefore forces [PAD]=[ADP]<0.
The actual boundary-edge tests supply [CDG],[CDP]>0 throughout.
Moreover

    [AEP]=[ADP]-(e-d)u<0,                         (2a)

because e>d and u>0. Thus neither an AEP nor a CFP assumption is needed.

It follows that G,P lie inside ACD, G lies inside ACP, and P lies
inside ACE. For the last containment, its three inward tests are
[ACP]>0, [CEP]>0 from P in HCEF, and [EAP]=-[AEP]>0.
Every statement is a strict actual containment.

The fan identities for those four containments are

    ACD=ACG+CDG+ADG,
    ACD=ACP+CDP+ADP,
    ACE=ACP+CEP+AEP,
    ACP=ACG+CGP+AGP.                               (3)

All areas in (3) are unsigned positive areas. The following five
unsigned product identities have the stated isolated product:

    ACP*ADG=ACD*AGP+ACG*ADP,
    ACE*CDP=ACD*CEP+ACP*CDE,
    ADP*CDG=ACD*DGP+ADG*CDP,
    AEP*CDP=ACP*DEP+ADP*CEP,
    ADP*CGP=ACP*DGP+AGP*CDP.                        (4)

For direct sign verification, their pivots and four other labels are,
respectively, A;C,D,G,P, C;A,D,E,P, D;A,C,G,P,
P;A,C,D,E, and P;A,C,D,G. All actual signed determinants needed
in (3)-(4) are now known: ACG,ACP,CDG,AGP,CDE,CDP,CEP,DEP,DGP
are positive, while ADG,ADP,AEP,CGP are negative.
The hull areas ACD and ACE are positive.

## 3. Thirteen initial scalar bounds

Every actual triangle has positive unsigned area at least s.
Since ACD contains G,P and ACP contains G, TRIANGLE_OCCUPANCY.md
and the fan inequality give

    ACD>=(149/20)s=13857/20000,
    ACP>=3s=279/1000.                              (5)

The other nine lower bounds used in the packet are simply s.
The factor 149/20 is less than 4+2sqrt(3), so (5) is a permitted
weakening of the proved two-interior-point cost.

The only upper bounds are direct consequences of (1):

    ACD=a(1-c)+cd
       <=(685/1000)(1-c)+(705/1000)c
       <=35133/50000,

    ACE=a(1-c)+ce
       <=(685/1000)(1-c)+(907/1000)c
       <=440513/500000.                            (6)

The coefficients 1-c and c are positive. After replacing a,d or e
by their upper bounds, the remaining coefficient of c is positive,
which justifies the final use of c<=883/1000. Thus every initial
record below has an explicit source in (5), (6), or actual clearance.
No coordinate-box subdivision or missing numerical premise occurs.

## 4. Fixed exact scalar contradiction

The packet uses the immutable format documented in
[SCALAR_AREA_INTERVALS.md](SCALAR_AREA_INTERVALS.md). Relations 0-3
are precisely (3), and relations 4-8 are precisely (4), in order.
The source roles of each update are determined by its rule. Every
lower update is rounded down and every upper update up to a rational
multiple of 1/1000000. Some initial bounds use other exact denominators.
Nonconsecutive update names retain their original immutable identifiers;
only their ordering and dependencies matter.

The optional standard-library reader
[scalar_area_intervals.py](scalar_area_intervals.py) reconstructs all
72 rational updates from the printed packet. Its geometry callbacks
must verify Sections 1-3; alternatively an explicitly requested
arithmetic-only replay checks just the literal calculation.

The independent checker [check_n7_central_area_orientation.js](check_n7_central_area_orientation.js)
reads this literal packet, reconstructs all three forced Pluecker signs
and the actual-contact comparison, checks the four containments and
nine physical area identities, and replays every outward rounding over
exact integers and rational numbers. It does not use a discovery log.

The last retained lower and upper bounds give

    ACP>=173519/500000,
    ACP<=345097/1000000,

whose difference is 1941/1000000>0. This contradiction proves the
entire conditional sign chamber (2), simultaneously in CA and CB.
The same proof applies with O in place of P, since no O/P ordering was
used. Consequently each upper point T satisfies AGT<0 or DGT<0.
The remaining two-sign alternatives and the two central parents remain open.

```scalar-area-packet
{
  "initial": {
    "L_ACD": {"triangle":"ACD","side":"lo","value":"13857/20000"},
    "U_ACD": {"triangle":"ACD","side":"hi","value":"35133/50000"},
    "U_ACE": {"triangle":"ACE","side":"hi","value":"440513/500000"},
    "L_ACG": {"triangle":"ACG","side":"lo","value":"93/1000"},
    "L_ACP": {"triangle":"ACP","side":"lo","value":"279/1000"},
    "L_ADG": {"triangle":"ADG","side":"lo","value":"93/1000"},
    "L_ADP": {"triangle":"ADP","side":"lo","value":"93/1000"},
    "L_AGP": {"triangle":"AGP","side":"lo","value":"93/1000"},
    "L_CDE": {"triangle":"CDE","side":"lo","value":"93/1000"},
    "L_CDP": {"triangle":"CDP","side":"lo","value":"93/1000"},
    "L_CEP": {"triangle":"CEP","side":"lo","value":"93/1000"},
    "L_DEP": {"triangle":"DEP","side":"lo","value":"93/1000"},
    "L_DGP": {"triangle":"DGP","side":"lo","value":"93/1000"}
  },
  "relations": [
    ["fan","ACD","ACG","CDG","ADG"],
    ["fan","ACD","ACP","CDP","ADP"],
    ["fan","ACE","ACP","CEP","AEP"],
    ["fan","ACP","ACG","CGP","AGP"],
    ["plu","ACP","ADG","ACD","AGP","ACG","ADP"],
    ["plu","ACE","CDP","ACD","CEP","ACP","CDE"],
    ["plu","ADP","CDG","ACD","DGP","ADG","CDP"],
    ["plu","AEP","CDP","ACP","DEP","ADP","CEP"],
    ["plu","ADP","CGP","ACP","DGP","AGP","CDP"]
  ],
  "updates": [
    {"id":"T0002","relation":0,"rule":"sub","triangle":"CDG","side":"hi","value":"25833/50000","sources":["U_ACD","L_ACG","L_ADG"]},
    {"id":"T0004","relation":1,"rule":"sub","triangle":"ACP","side":"hi","value":"25833/50000","sources":["U_ACD","L_CDP","L_ADP"]},
    {"id":"T0006","relation":1,"rule":"sub","triangle":"ADP","side":"hi","value":"16533/50000","sources":["U_ACD","L_ACP","L_CDP"]},
    {"id":"T0013","relation":4,"rule":"sumlo","triangle":"ADG","side":"lo","value":"70727/500000","sources":["L_ACD","L_AGP","L_ACG","L_ADP","T0004"]},
    {"id":"T0014","relation":5,"rule":"sumlo","triangle":"CDP","side":"lo","value":"102587/1000000","sources":["L_ACD","L_CEP","L_ACP","L_CDE","U_ACE"]},
    {"id":"T0017","relation":6,"rule":"sumlo","triangle":"ADP","side":"lo","value":"152801/1000000","sources":["L_ACD","L_DGP","T0013","T0014","T0002"]},
    {"id":"T0022","relation":8,"rule":"sumlo","triangle":"CGP","side":"lo","value":"107323/1000000","sources":["L_ACP","L_DGP","L_AGP","T0014","T0006"]},
    {"id":"T0024","relation":0,"rule":"sub","triangle":"CDG","side":"hi","value":"234103/500000","sources":["U_ACD","L_ACG","T0013"]},
    {"id":"T0026","relation":1,"rule":"sub","triangle":"ACP","side":"hi","value":"55909/125000","sources":["U_ACD","T0014","T0017"]},
    {"id":"T0028","relation":1,"rule":"sub","triangle":"ADP","side":"hi","value":"321073/1000000","sources":["U_ACD","L_ACP","T0014"]},
    {"id":"T0030","relation":3,"rule":"sum","triangle":"ACP","side":"lo","value":"293323/1000000","sources":["L_ACG","T0022","L_AGP"]},
    {"id":"T0034","relation":4,"rule":"sumlo","triangle":"ADG","side":"lo","value":"175833/1000000","sources":["L_ACD","L_AGP","L_ACG","T0017","T0026"]},
    {"id":"T0036","relation":5,"rule":"sumlo","triangle":"CDP","side":"lo","value":"104099/1000000","sources":["L_ACD","L_CEP","T0030","L_CDE","U_ACE"]},
    {"id":"T0039","relation":6,"rule":"sumlo","triangle":"ADP","side":"lo","value":"35343/200000","sources":["L_ACD","L_DGP","T0034","T0036","T0024"]},
    {"id":"T0044","relation":8,"rule":"sumlo","triangle":"CGP","side":"lo","value":"57557/500000","sources":["T0030","L_DGP","L_AGP","T0036","T0028"]},
    {"id":"T0045","relation":0,"rule":"sub","triangle":"CDG","side":"hi","value":"433827/1000000","sources":["U_ACD","L_ACG","T0034"]},
    {"id":"T0047","relation":1,"rule":"sub","triangle":"ACP","side":"hi","value":"210923/500000","sources":["U_ACD","T0036","T0039"]},
    {"id":"T0049","relation":1,"rule":"sub","triangle":"ADP","side":"hi","value":"152619/500000","sources":["U_ACD","T0030","T0036"]},
    {"id":"T0052","relation":3,"rule":"sum","triangle":"ACP","side":"lo","value":"150557/500000","sources":["L_ACG","T0044","L_AGP"]},
    {"id":"T0056","relation":4,"rule":"sumlo","triangle":"ADG","side":"lo","value":"191703/1000000","sources":["L_ACD","L_AGP","L_ACG","T0039","T0047"]},
    {"id":"T0058","relation":5,"rule":"sumlo","triangle":"CDP","side":"lo","value":"104921/1000000","sources":["L_ACD","L_CEP","T0052","L_CDE","U_ACE"]},
    {"id":"T0061","relation":6,"rule":"sumlo","triangle":"ADP","side":"lo","value":"19489/100000","sources":["L_ACD","L_DGP","T0056","T0058","T0045"]},
    {"id":"T0066","relation":8,"rule":"sumlo","triangle":"CGP","side":"lo","value":"12371/100000","sources":["T0052","L_DGP","L_AGP","T0058","T0049"]},
    {"id":"T0067","relation":0,"rule":"sub","triangle":"CDG","side":"hi","value":"417957/1000000","sources":["U_ACD","L_ACG","T0056"]},
    {"id":"T0069","relation":1,"rule":"sub","triangle":"ACP","side":"hi","value":"402849/1000000","sources":["U_ACD","T0058","T0061"]},
    {"id":"T0071","relation":1,"rule":"sub","triangle":"ADP","side":"hi","value":"2373/8000","sources":["U_ACD","T0052","T0058"]},
    {"id":"T0074","relation":3,"rule":"sum","triangle":"ACP","side":"lo","value":"30971/100000","sources":["L_ACG","T0066","L_AGP"]},
    {"id":"T0078","relation":4,"rule":"sumlo","triangle":"ADG","side":"lo","value":"204939/1000000","sources":["L_ACD","L_AGP","L_ACG","T0061","T0069"]},
    {"id":"T0080","relation":5,"rule":"sumlo","triangle":"CDP","side":"lo","value":"26457/250000","sources":["L_ACD","L_CEP","T0074","L_CDE","U_ACE"]},
    {"id":"T0083","relation":6,"rule":"sumlo","triangle":"ADP","side":"lo","value":"206057/1000000","sources":["L_ACD","L_DGP","T0078","T0080","T0067"]},
    {"id":"T0088","relation":8,"rule":"sumlo","triangle":"CGP","side":"lo","value":"65141/500000","sources":["T0074","L_DGP","L_AGP","T0080","T0071"]},
    {"id":"T0089","relation":0,"rule":"sub","triangle":"CDG","side":"hi","value":"404721/1000000","sources":["U_ACD","L_ACG","T0078"]},
    {"id":"T0091","relation":1,"rule":"sub","triangle":"ACP","side":"hi","value":"15631/40000","sources":["U_ACD","T0080","T0083"]},
    {"id":"T0093","relation":1,"rule":"sub","triangle":"ADP","side":"hi","value":"143561/500000","sources":["U_ACD","T0074","T0080"]},
    {"id":"T0096","relation":3,"rule":"sum","triangle":"ACP","side":"lo","value":"158141/500000","sources":["L_ACG","T0088","L_AGP"]},
    {"id":"T0099","relation":4,"rule":"sumlo","triangle":"ADG","side":"lo","value":"213929/1000000","sources":["L_ACD","L_AGP","L_ACG","T0083","T0091"]},
    {"id":"T0101","relation":5,"rule":"sumlo","triangle":"CDP","side":"lo","value":"53261/500000","sources":["L_ACD","L_CEP","T0096","L_CDE","U_ACE"]},
    {"id":"T0104","relation":6,"rule":"sumlo","triangle":"ADP","side":"lo","value":"107757/500000","sources":["L_ACD","L_DGP","T0099","T0101","T0089"]},
    {"id":"T0109","relation":8,"rule":"sumlo","triangle":"CGP","side":"lo","value":"136947/1000000","sources":["T0096","L_DGP","L_AGP","T0101","T0093"]},
    {"id":"T0110","relation":0,"rule":"sub","triangle":"CDG","side":"hi","value":"395731/1000000","sources":["U_ACD","L_ACG","T0099"]},
    {"id":"T0112","relation":1,"rule":"sub","triangle":"ACP","side":"hi","value":"23789/62500","sources":["U_ACD","T0101","T0104"]},
    {"id":"T0114","relation":1,"rule":"sub","triangle":"ADP","side":"hi","value":"17491/62500","sources":["U_ACD","T0096","T0101"]},
    {"id":"T0116","relation":2,"rule":"sub","triangle":"AEP","side":"hi","value":"7371/15625","sources":["U_ACE","T0096","L_CEP"]},
    {"id":"T0117","relation":3,"rule":"sum","triangle":"ACP","side":"lo","value":"322947/1000000","sources":["L_ACG","T0109","L_AGP"]},
    {"id":"T0121","relation":4,"rule":"sumlo","triangle":"ADG","side":"lo","value":"44389/200000","sources":["L_ACD","L_AGP","L_ACG","T0104","T0112"]},
    {"id":"T0123","relation":5,"rule":"sumlo","triangle":"CDP","side":"lo","value":"53613/500000","sources":["L_ACD","L_CEP","T0117","L_CDE","U_ACE"]},
    {"id":"T0126","relation":6,"rule":"sumlo","triangle":"ADP","side":"lo","value":"111481/500000","sources":["L_ACD","L_DGP","T0121","T0123","T0110"]},
    {"id":"T0130","relation":7,"rule":"sumlo","triangle":"CDP","side":"lo","value":"5381/50000","sources":["T0117","L_DEP","T0126","L_CEP","T0116"]},
    {"id":"T0132","relation":8,"rule":"sumlo","triangle":"CGP","side":"lo","value":"143083/1000000","sources":["T0117","L_DGP","L_AGP","T0130","T0114"]},
    {"id":"T0133","relation":0,"rule":"sub","triangle":"CDG","side":"hi","value":"77543/200000","sources":["U_ACD","L_ACG","T0121"]},
    {"id":"T0135","relation":1,"rule":"sub","triangle":"ACP","side":"hi","value":"186039/500000","sources":["U_ACD","T0130","T0126"]},
    {"id":"T0137","relation":1,"rule":"sub","triangle":"ADP","side":"hi","value":"272093/1000000","sources":["U_ACD","T0117","T0130"]},
    {"id":"T0139","relation":2,"rule":"sub","triangle":"AEP","side":"hi","value":"465079/1000000","sources":["U_ACE","T0117","L_CEP"]},
    {"id":"T0140","relation":3,"rule":"sum","triangle":"ACP","side":"lo","value":"329083/1000000","sources":["L_ACG","T0132","L_AGP"]},
    {"id":"T0144","relation":4,"rule":"sumlo","triangle":"ADG","side":"lo","value":"45781/200000","sources":["L_ACD","L_AGP","L_ACG","T0126","T0135"]},
    {"id":"T0146","relation":5,"rule":"sumlo","triangle":"CDP","side":"lo","value":"107873/1000000","sources":["L_ACD","L_CEP","T0140","L_CDE","U_ACE"]},
    {"id":"T0149","relation":6,"rule":"sumlo","triangle":"ADP","side":"lo","value":"229879/1000000","sources":["L_ACD","L_DGP","T0144","T0146","T0133"]},
    {"id":"T0153","relation":7,"rule":"sumlo","triangle":"CDP","side":"lo","value":"111773/1000000","sources":["T0140","L_DEP","T0149","L_CEP","T0139"]},
    {"id":"T0155","relation":8,"rule":"sumlo","triangle":"CGP","side":"lo","value":"75341/500000","sources":["T0140","L_DGP","L_AGP","T0153","T0137"]},
    {"id":"T0156","relation":0,"rule":"sub","triangle":"CDG","side":"hi","value":"76151/200000","sources":["U_ACD","L_ACG","T0144"]},
    {"id":"T0158","relation":1,"rule":"sub","triangle":"ACP","side":"hi","value":"22563/62500","sources":["U_ACD","T0153","T0149"]},
    {"id":"T0160","relation":1,"rule":"sub","triangle":"ADP","side":"hi","value":"65451/250000","sources":["U_ACD","T0140","T0153"]},
    {"id":"T0162","relation":2,"rule":"sub","triangle":"AEP","side":"hi","value":"458943/1000000","sources":["U_ACE","T0140","L_CEP"]},
    {"id":"T0163","relation":3,"rule":"sum","triangle":"ACP","side":"lo","value":"168341/500000","sources":["L_ACG","T0155","L_AGP"]},
    {"id":"T0165","relation":3,"rule":"sub","triangle":"CGP","side":"hi","value":"5469/31250","sources":["T0158","L_ACG","L_AGP"]},
    {"id":"T0167","relation":4,"rule":"sumlo","triangle":"ADG","side":"lo","value":"118853/500000","sources":["L_ACD","L_AGP","L_ACG","T0149","T0158"]},
    {"id":"T0171","relation":6,"rule":"sumlo","triangle":"ADP","side":"lo","value":"239009/1000000","sources":["L_ACD","L_DGP","T0167","T0153","T0156"]},
    {"id":"T0175","relation":7,"rule":"sumlo","triangle":"CDP","side":"lo","value":"116657/1000000","sources":["T0163","L_DEP","T0171","L_CEP","T0162"]},
    {"id":"T0177","relation":8,"rule":"sumlo","triangle":"ADP","side":"lo","value":"120453/500000","sources":["T0163","L_DGP","L_AGP","T0175","T0165"]},
    {"id":"T0178","relation":8,"rule":"sumlo","triangle":"CGP","side":"lo","value":"80519/500000","sources":["T0163","L_DGP","L_AGP","T0175","T0160"]},
    {"id":"T0183","relation":1,"rule":"sub","triangle":"ACP","side":"hi","value":"345097/1000000","sources":["U_ACD","T0175","T0177"]},
    {"id":"T0188","relation":3,"rule":"sum","triangle":"ACP","side":"lo","value":"173519/500000","sources":["L_ACG","T0178","L_AGP"]}
  ],
  "contradiction": {"triangle":"ACP","lower":"T0188","upper":"T0183"}
}
```
