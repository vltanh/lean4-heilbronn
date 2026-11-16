"""Exact arithmetic for TYPE_II_223_CORE.md.

All tables and affine squares below are fixed transcriptions of the hand
proof. This checker uses Fraction only: no optimizer, numerical search,
external certificate file, or geometric sampling is a premise.
"""
from fractions import Fraction as F
from collections import defaultdict
from itertools import combinations
import re

S=F(93,1000)
def C(c):return {():F(c)} if c else {}
def V(i):return {(i,):F(1)}
def add(*polys):
 out=defaultdict(F)
 for p in polys:
  for e,c in p.items():out[e]+=c
 return {e:c for e,c in out.items() if c}
def scale(p,c):return {e:c*v for e,v in p.items() if c*v}
def sub(p,q):return add(p,scale(q,-1))
def mul(p,q):
 out=defaultdict(F)
 for e,c in p.items():
  for f,d in q.items():out[tuple(sorted(e+f))]+=c*d
 return {e:c for e,c in out.items() if c}
def det(a,b,c):
 return sub(mul(sub(b[0],a[0]),sub(c[1],a[1])),mul(sub(b[1],a[1]),sub(c[0],a[0])))
def shift(p,box):
 out=defaultdict(F)
 for e,c in p.items():
  term={():c}
  for i in e:
   nxt=defaultdict(F)
   for f,d in term.items():
    nxt[f]+=d*box[i][0]
    nxt[tuple(sorted(f+(i,)))]+=d
   term=nxt
  for f,d in term.items():out[f]+=d
 return {e:c for e,c in out.items() if c}
def box_upper(p,box):
 ans=p.get((),F(0))
 for e,c in p.items():
  if e and c>0:
   for i in e:c*=box[i][1]-box[i][0]
   ans+=c
 return ans

BOX = [
    (F("297/1000"), F("229/500")),
    (F("31/500"), F("63/200")),
    (F("72/125"), F("177/200")),
    (F("0"), F("19/100")),
    (F("839/1000"), F("1")),
    (F("41/250"), F("151/250")),
    (F("99/1000"), F("13/50")),
    (F("247/1000"), F("581/1000")),
    (F("501/1000"), F("889/1000")),
    (F("79/500"), F("71/100")),
]

b,l,a,k,c,d,p,y,u,v=[V(i) for i in range(10)]
one=C(1);zero={}
POINTS={"D":(zero,one),"E":(zero,l),"B":(b,zero),"H":(a,k),"F":(c,d),"C":(one,one),"P":(p,y),"X":(u,v)}
L=[]
for i,(lo,hi) in enumerate(BOX):L += [sub(V(i),C(lo)),sub(C(hi),V(i))]
L += [add(one,scale(l,-1),C(-S)),C(1-S),add(one,scale(k,-1),C(-S)),add(one,scale(d,-1),C(-S)),add(one,scale(y,-1),C(-S)),add(one,scale(v,-1),C(-S)),add(y,scale(p,-1),C(-S)),add(C(F(836,1000)),scale(b,F(164,1000)),scale(a,-1)),add(a,scale(b,-1),C(-3*S)),add(c,scale(b,-1),C(-F(542,1000))),add(u,scale(b,-1),C(-F(178,1000)))]
assert len(L)==31

AFFINE_SQUARES = {
    "S0": (1, 1, 5, 2, -3, 0, -8, 1, 5, -5, -4),
    "S1": (2, -3, -2, 4, 0, 0, -5, 0, 8, -5, -7),
    "S2": (1, -1, 2, 1, 0, 0, -4, 0, 4, 1, -8),
    "S3": (2, -2, 5, 0, -3, 0, -8, 1, 0, -8, 2),
    "S4": (1, 1, 6, 0, 2, 0, -4, 0, 4, 0, -8),
    "S5": (1, -1, 0, 2, -1, 0, 7, 0, -4, 0, -8),
    "S6": (0, 2, 1, 3, -4, 0, -8, 1, 3, 0, -5),
}
SQUARES={}
for n,coeff in AFFINE_SQUARES.items():
 r=C(coeff[0])
 for i,x in enumerate(coeff[1:]):r=add(r,scale(sub(V(i),C(BOX[i][0])),x))
 SQUARES[n]=mul(r,r)

def atom(name):
 if name.startswith("L"):return L[int(name[1:])]
 if name in SQUARES:return SQUARES[name]
 if name=="EBHcap":return sub(C(F(5563,25000)),det(*(POINTS[ch] for ch in "EBH")))
 m=re.fullmatch(r"([+-])([A-Z]{3})(?:o([0-9/]+))?",name)
 assert m,name
 sg,tri,threshold=m.groups();q=F(threshold) if threshold else F(1)
 return add(scale(det(*(POINTS[ch] for ch in tri)),1 if sg=="+" else -1),C(-q*S))
def factor(name):
 p=C(1)
 for n in name.split("*"):p=mul(p,atom(n))
 return p

TABLES = {
    "A": [
        (14, "L0*L7"),
        (3, "L5*L10"),
        (11, "L5*L14"),
        (1, "L7*L9"),
        (10, "L9*L18"),
        (2, "L9*L22"),
        (10, "L10*L30"),
        (10, "L12*L19"),
        (3, "L9*L14*L18"),
        (11, "L15*L15*L17"),
        (4, "+BHF"),
        (4, "+BHF*L13"),
        (4, "+BHF*L16"),
        (8, "-DBP"),
        (1, "-DBP*L10"),
        (15, "-DBP*L14"),
        (1, "-DBP*L18"),
        (4, "+BFP*L5"),
        (11, "+BHX"),
        (12, "+BFX"),
        (4, "+BFX*L4"),
        (2, "+BFX*L13"),
        (1, "+BFX*L26"),
        (8, "-BCX"),
        (2, "-BCX*L14"),
        (1, "+FCX*L15"),
        (14, "+HPX"),
        (4, "+HPX*L29"),
        (4, "+BFPo3*L16"),
    ],
    "B": [
        (16, "L0*L7"),
        (6, "L2*L27"),
        (5, "L6*L29"),
        (2, "L7*L14"),
        (3, "L9*L18"),
        (10, "L10*L27"),
        (12, "L14*L29"),
        (2, "L19*L27"),
        (4, "L0*L19*L22"),
        (11, "L0*L19*L24"),
        (5, "L5*L14*L25"),
        (3, "L7*L12*L18"),
        (2, "L7*L14*L30"),
        (3, "L9*L18*L20"),
        (3, "L10*L14*L27"),
        (5, "L14*L20*L29"),
        (2, "+EBH*L8"),
        (2, "+EBH*L13"),
        (10, "+EBH*L24"),
        (2, "+EBF*L27"),
        (2, "+EHF*L0"),
        (2, "+EHF*L26"),
        (15, "+BHF"),
        (4, "+HFC*L13"),
        (3, "+HFC*L19"),
        (1, "+HFC*L26"),
        (17, "-DBP*L2"),
        (15, "-DBP*L10"),
        (2, "-DBP*L19"),
        (16, "+EBP"),
        (1, "+ECP*L19"),
        (1, "+ECP*L25"),
        (2, "+ECP*L29"),
        (13, "+HFP*L16"),
        (8, "+BHX*L14"),
        (4, "-BCX*L22"),
        (13, "-BCX*L24"),
        (6, "+HFX*L13"),
        (7, "+HCX*L9"),
        (7, "+FCX*L12"),
        (1, "+DEBo3*L15"),
        (2, "+BHCo3*L12"),
        (3, "+CPX*L10"),
        (3, "-EPX*L10"),
        (13, "-HPX*L9"),
        (15, "-FPX"),
        (13, "-FPX*L4"),
        (3, "-FPX*L20"),
        (3, "-FPX*L22"),
        (12, "-DHX"),
        (7, "-DHX*L8"),
        (6, "-DHX*L14"),
        (3, "-DHX*L23"),
        (7, "-DHX*L26"),
    ],
    "C": [
        (4, "L0*L11"),
        (2, "L5*L15"),
        (8, "L6*L30"),
        (12, "L7*L12"),
        (4, "L9*L18"),
        (2, "L15*L27"),
        (9, "L18*L27"),
        (11, "L0*L2*L11"),
        (4, "L0*L11*L18"),
        (7, "L0*L11*L22"),
        (6, "L0*L11*L24"),
        (1, "L2*L23*L27"),
        (1, "L5*L10*L20"),
        (16, "L5*L10*L24"),
        (3, "L5*L15*L20"),
        (8, "L5*L18*L24"),
        (3, "L6*L24*L29"),
        (8, "L6*L24*L30"),
        (13, "L7*L9*L24"),
        (2, "L9*L14*L20"),
        (2, "L9*L22*L22"),
        (3, "L18*L20*L27"),
        (5, "+EBH"),
        (3, "+EBH*L23"),
        (3, "+EBH*L25"),
        (1, "+HFC"),
        (1, "+HFC*L2"),
        (16, "+HFC*L24"),
        (3, "+HFC*L25"),
        (1, "+DEP*L7"),
        (2, "+DEP*L22"),
        (7, "+DEP*L28"),
        (6, "-DBP*L2"),
        (12, "-DBP*L6"),
        (2, "+EBP"),
        (6, "+EBP*L23"),
        (7, "+ECP*L28"),
        (18, "+BFX"),
        (2, "+BFX*L20"),
        (3, "+BFX*L22"),
        (7, "-BCX"),
        (4, "-BCX*L10"),
        (3, "-BCX*L20"),
        (11, "-BCX*L24"),
        (8, "+HCX*L12"),
        (3, "+DEBo3*L18"),
        (4, "+DEBo3*L23"),
        (6, "+DEBo3*L24"),
        (33, "-HPX"),
        (2, "-HPX*L20"),
        (14, "+FPX"),
        (2, "+FPX*L20"),
        (15, "-DHX"),
        (3, "-DHX*L20"),
        (3, "-DHX*L23"),
        (8, "-DHX*L26"),
    ],
    "D": [
        (7, "L1*L3"),
        (1, "L9*L10"),
        (18, "L9*L18"),
        (4, "L0*L2*L11"),
        (2, "L0*L11*L11"),
        (2, "L0*L11*L17"),
        (9, "L0*L11*L18"),
        (6, "L1*L3*L17"),
        (1, "L2*L9*L18"),
        (1, "L3*L9*L25"),
        (5, "L3*L17*L29"),
        (2, "L3*L23*L29"),
        (14, "L9*L10*L18"),
        (1, "L9*L16*L18"),
        (1, "L9*L17*L25"),
        (14, "L10*L10*L30"),
        (1, "L11*L11*L11"),
        (5, "L11*L11*L19"),
        (1, "L16*L25*L28"),
        (11, "+EBX*L9"),
        (33, "+BFX"),
        (12, "+BFX*L10"),
        (8, "+BFX*L16"),
        (12, "+BFX*L20"),
        (10, "-BCX"),
        (21, "-BCX*L10"),
        (14, "+DEBo3*L11"),
        (19, "+DEBo3*L18"),
        (4, "+DEBo3*L23"),
        (1, "+DHX*L16"),
        (14, "-DFX*L3"),
        (16, "-EFX"),
        (5, "-EFX*L1"),
        (2, "-EFX*L23"),
        (6, "-EFX*L30"),
    ],
    "E": [
        (3, "L0*L7"),
        (2, "L2*L5"),
        (9, "L7*L12"),
        (35, "L12*L19"),
        (18, "L15*L29"),
        (1, "L0*L2*L11"),
        (4, "L0*L7*L14"),
        (1, "L0*L7*L22"),
        (30, "L0*L7*L25"),
        (3, "L1*L10*L18"),
        (19, "L1*L15*L25"),
        (29, "L2*L5*L25"),
        (3, "L2*L20*L27"),
        (1, "L2*L22*L27"),
        (3, "L3*L6*L30"),
        (5, "L5*L6*L18"),
        (6, "L5*L15*L25"),
        (6, "L6*L14*L30"),
        (1, "L6*L23*L29"),
        (3, "L7*L9*L25"),
        (10, "L9*L14*L18"),
        (17, "L9*L20*L20"),
        (1, "L11*L11*L28"),
        (10, "L15*L25*L29"),
        (2, "+EBH"),
        (13, "+EBH*L8"),
        (13, "+EBH*L17"),
        (3, "+EBH*L20"),
        (1, "+EBH*L22"),
        (26, "+EBH*L25"),
        (2, "+BHF"),
        (1, "+BHF*L14"),
        (4, "+BHF*L16"),
        (1, "+BHF*L20"),
        (1, "+BHF*L23"),
        (3, "+BHF*L25"),
        (4, "+BHC*L9"),
        (1, "+HFC*L2"),
        (4, "+HFC*L28"),
        (4, "+DEP"),
        (8, "-DBP"),
        (9, "-DBP*L22"),
        (11, "-DBP*L23"),
        (4, "+BHX*L9"),
        (4, "+BFX*L5"),
        (10, "+BFX*L15"),
        (26, "-BCX*L3"),
        (4, "-BCX*L4"),
        (18, "-BCX*L14"),
        (1, "-BCX*L22"),
        (4, "+HFX"),
        (8, "+HFX*L0"),
        (1, "+HFX*L24"),
        (4, "+HFX*L27"),
        (1, "+HCX*L11"),
        (3, "+DEBo3*L2"),
        (4, "+DHX*L5"),
        (5, "+DHX*L6"),
        (2, "+DHX*L10"),
        (5, "+DHX*L14"),
        (3, "+DHX*L20"),
        (3, "-EPX*L9"),
        (3, "-EPX*L16"),
        (38, "+FPX"),
        (3, "+FPX*L16"),
        (11, "-DFX*L15"),
        (35, "+EFX"),
        (3, "+EFX*L4"),
        (3, "+EFX*L13"),
        (9, "+EFX*L28"),
        (3, "+EFX*L30"),
    ],
    "F": [
        (12834, "L9*L17"),
        (4349, "L9*L18"),
        (21397, "L9*L24"),
        (681, "L0*L0*L5"),
        (2600, "L0*L0*L17"),
        (40004, "L0*L0*L19"),
        (1018, "L0*L0*L27"),
        (26088, "L0*L1*L2"),
        (18192, "L0*L2*L5"),
        (29534, "L0*L2*L7"),
        (43001, "L0*L2*L17"),
        (4703, "L0*L2*L29"),
        (27543, "L0*L5*L7"),
        (4366, "L0*L5*L16"),
        (51703, "L0*L7*L27"),
        (5729, "L0*L9*L15"),
        (2076, "L0*L9*L18"),
        (9126, "L0*L9*L24"),
        (4321, "L0*L10*L26"),
        (21995, "L0*L10*L27"),
        (7050, "L0*L16*L17"),
        (853, "L0*L18*L30"),
        (2500, "L0*L27*L27"),
        (157, "L1*L5*L12"),
        (17112, "L1*L6*L30"),
        (66, "L1*L12*L12"),
        (4369, "L2*L2*L27"),
        (27233, "L2*L3*L12"),
        (5404, "L2*L5*L10"),
        (58560, "L2*L5*L27"),
        (1415, "L2*L6*L17"),
        (915, "L2*L6*L28"),
        (3507, "L2*L7*L9"),
        (732, "L3*L5*L9"),
        (3140, "L3*L5*L12"),
        (6026, "L3*L6*L9"),
        (3631, "L3*L12*L18"),
        (4694, "L5*L5*L15"),
        (6071, "L5*L6*L10"),
        (409, "L5*L6*L17"),
        (173, "L5*L7*L12"),
        (1497, "L5*L7*L14"),
        (4503, "L5*L10*L10"),
        (285, "L5*L12*L28"),
        (5099, "L5*L14*L19"),
        (1541, "L5*L14*L26"),
        (3291, "L5*L14*L30"),
        (1834, "L5*L16*L16"),
        (2934, "L5*L16*L27"),
        (2994, "L6*L6*L17"),
        (374, "L6*L6*L28"),
        (3805, "L6*L6*L29"),
        (768, "L6*L7*L9"),
        (1781, "L6*L9*L28"),
        (2861, "L6*L11*L12"),
        (2395, "L6*L17*L19"),
        (7442, "L6*L17*L26"),
        (5134, "L6*L17*L30"),
        (24962, "L6*L19*L29"),
        (3698, "L6*L28*L30"),
        (4166, "L7*L9*L10"),
        (4622, "L7*L9*L14"),
        (2820, "L7*L9*L26"),
        (19648, "L7*L9*L27"),
        (60, "L7*L12*L12"),
        (883, "L7*L12*L14"),
        (8674, "L9*L11*L25"),
        (60568, "L9*L12*L18"),
        (4566, "L9*L14*L15"),
        (3667, "L9*L17*L22"),
        (25817, "L9*L18*L22"),
        (10445, "L9*L18*L24"),
        (3334, "L9*L19*L30"),
        (3461, "L9*L22*L27"),
        (10445, "L9*L23*L24"),
        (60568, "L10*L12*L30"),
        (3334, "L10*L17*L30"),
        (27824, "L10*L27*L27"),
        (119, "L11*L12*L12"),
        (75, "L12*L12*L19"),
        (45, "L12*L12*L28"),
        (1340, "L12*L14*L15"),
        (1285, "L12*L14*L19"),
        (5441, "L12*L18*L19"),
        (4566, "L14*L14*L17"),
        (1656, "L14*L14*L27"),
        (1173, "L27*L27*L27"),
        (15021, "+EBH"),
        (22681, "+EBH*L1"),
        (7444, "+EBH*L2"),
        (57386, "+EBH*L5"),
        (1331, "+EBH*L6"),
        (2790, "+EBH*L13"),
        (1467, "+EBH*L17"),
        (10088, "+EBH*L23"),
        (9621, "+EBH*L25"),
        (6838, "+EBH*L26"),
        (732, "+EBH*L29"),
        (6473, "+BHF*L0"),
        (8118, "+BHF*L2"),
        (1580, "+BHF*L6"),
        (4897, "+BHF*L10"),
        (13460, "+BHF*L16"),
        (2519, "+BHF*L18"),
        (17787, "+BHF*L27"),
        (8365, "+DEP*L11"),
        (54859, "+DEP*L17"),
        (3971, "+DEP*L29"),
        (21563, "-DBP*L0"),
        (50061, "-DBP*L2"),
        (1281, "-DBP*L7"),
        (49312, "-DBP*L9"),
        (18999, "-DBP*L10"),
        (17998, "-DBP*L16"),
        (287, "-DBP*L27"),
        (24096, "+EBP"),
        (27241, "+EBP*L2"),
        (614, "+EBP*L13"),
        (54859, "+EBP*L17"),
        (3557, "+EBP*L18"),
        (8119, "+EBP*L22"),
        (8485, "+EBP*L23"),
        (7263, "+EBP*L24"),
        (6533, "+EBP*L28"),
        (3971, "+EBP*L29"),
        (36109, "+ECP*L1"),
        (1855, "+ECP*L6"),
        (120, "+ECP*L12"),
        (45055, "-BCX*L0"),
        (7162, "-BCX*L7"),
        (21354, "-BCX*L10"),
        (10807, "-BCX*L12"),
        (25278, "-BCX*L15"),
        (6498, "-BCX*L16"),
        (7500, "-BCX*L18"),
        (12894, "-BCX*L20"),
        (9006, "-BCX*L22"),
        (14069, "-BCX*L27"),
        (26579, "+HFX"),
        (1415, "+HFX*L2"),
        (2994, "+HFX*L6"),
        (9105, "+HFX*L13"),
        (882, "+HFX*L16"),
        (730, "+HFX*L23"),
        (2395, "+HFX*L25"),
        (2873, "+HFX*L26"),
        (7103, "+HFX*L27"),
        (4252, "+HFX*L30"),
        (230, "+HCX*L12"),
        (3300, "+FCX*L9"),
        (12329, "+DEBo3*L7"),
        (9158, "+DPX*L9"),
        (2996, "+DHX*L5"),
        (13102, "+DHX*L9"),
        (9158, "-HPX*L9"),
        (54664, "-FPX"),
        (68138, "-FPX*L0"),
        (9158, "-FPX*L4"),
        (4569, "-FPX*L6"),
        (4566, "-FPX*L14"),
        (10445, "-FPX*L23"),
        (12900, "-DFX"),
        (56327, "-DFX*L0"),
        (1415, "-DFX*L2"),
        (8294, "-DFX*L6"),
        (3300, "-DFX*L8"),
        (54662, "-DFX*L13"),
        (8467, "-DFX*L16"),
        (19850, "-DFX*L23"),
        (2395, "-DFX*L25"),
        (17884, "-DFX*L26"),
        (20205, "-DFX*L27"),
        (33, "S0"),
        (73, "S1*L28"),
        (144, "S2*L1"),
        (141, "S3*L0"),
        (94, "S4*L5"),
        (88, "S5*L12"),
        (7, "S6*L13"),
    ],
}

EXPECTED = {
    "A": F("-239111337/500000000"),
    "B": F("-135734826351/125000000000"),
    "C": F("-1373651083/7812500000"),
    "D": F("-103311919/1000000000"),
    "E": F("-50027348757/50000000000"),
    "F": F("-423045061980968309/7812500000000000"),
}

def check_constants():
 s=S;B=F(23,50);q=F(685,1000)
 cc=1-2*s+s/B;rr=2*s*(1-B)/B
 assert 4*rr-(cc-s)**2==F(11183711,529000000)>0
 assert F(141421,100000)**2<2
 assert F(8579,50000)*F(542,1000)<s
 assert F(3)/(F(429,2500))>F(209,50)**2
 omega=F(542,1000)
 def height(bb):return (1-s/omega)*(1-omega/(1-bb))
 def floor(bb,aa):return (s-bb*height(bb))/(aa-bb)
 assert floor(F(279,1000),1-s)==F(13919217,245411096)>F(56,1000)
 assert floor(F(295,1000),1-s)==F(2789213,46770264)>F(59,1000)
 t=F(93,704);m=t/F(164,1000)
 fun=lambda z:z*(1-z)/(2-z)
 assert t-fun(m)==F(42687,45235136)>0
 eps=F(115,1000)
 assert t-fun(s/eps)==F(24831,11091520)>0
 assert eps*(eps+s)/(eps-s)==F(299,275)>1
 assert floor(F(296,1000),F(885,1000))==F(872211,14046472)>F(62,1000)
 assert height(F(297,1000))==F(72289,381026)<F(19,100)
 assert F(229,500)*q*q-s*(2*F(229,500)+1)*q-s==F(-15373,100000000)<0
 assert ((F(149,20)-4)/2)**2<3

def verify():
 check_constants()
 for key,rows in TABLES.items():
  total={}
  for weight,n in rows:
   assert isinstance(weight,int) and weight>0
   total=add(total,scale(factor(n),weight))
  shifted=shift(total,BOX)
  upper=box_upper(shifted,BOX)
  assert upper==EXPECTED[key]<0,(key,upper,EXPECTED[key])
  assert max(map(len,total),default=0)<=3
  positives=sum(bool(e) and c>0 for e,c in shifted.items())
  print(f"{key}: {len(rows)} fixed terms; {len(shifted)} monomials; {positives} positive nonconstant coefficients; upper={upper}")
if __name__=="__main__":verify()
