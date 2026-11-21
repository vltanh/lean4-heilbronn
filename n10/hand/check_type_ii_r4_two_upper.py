"""Exact arithmetic for the fixed printed TYPE_II_R4_TWO_UPPER table.
No optimizer, search, floating point, or external certificate is used.
The geometric signs and box coverage are proved in the manuscript.
"""
from fractions import Fraction as F
from collections import defaultdict
from pathlib import Path
import re

S=F(93,1000)
K=F(149,20)
G=F(177,20)
B0=S/F(89,100)
P0=S+3*S*B0
BOX=[
 (F(11,100),1-K*S/(1-S)),
 (B0,1-G*S),
 (0,1-B0-G*S),
 (0,F(81,1000)),
 (B0+4*S,1-3*S),
 (F(311,1000),F(585,1000)),
 (B0+(G-1)*S,1-S),
 (F(311,1000),F(585,1000)),
 (S/F(185,1000),1-3*S),
 (S/(1-3*S),F(185,1000)),
 (P0,1-K*S),
 (F(9,20),1-3*S),
]
BOX=[(F(a),F(b)) for a,b in BOX]

def c(x):
 return {():F(x)} if x else {}

def var(i):
 return {(i,):F(1)}

def add(*ps):
 d=defaultdict(F)
 for p in ps:
  for e,v in p.items():d[e]+=v
 return {e:v for e,v in d.items() if v}

def scale(p,a):
 return {e:v*a for e,v in p.items() if v*a}

def sub(p,q):
 return add(p,scale(q,-1))

def mul(p,q):
 d=defaultdict(F)
 for e,a in p.items():
  for f,b in q.items():d[tuple(sorted(e+f))]+=a*b
 return {e:v for e,v in d.items() if v}

def det(a,b,d):
 return sub(mul(sub(b[0],a[0]),sub(d[1],a[1])),
            mul(sub(b[1],a[1]),sub(d[0],a[0])))

V=[var(i) for i in range(12)]
lam,b,u,v,zx,zy,xx,xy,yx,yy,px,py=V
O=c(1)
points={'D':(c(0),O),'C':(O,O),'E':(c(0),lam),'B':(b,c(0)),
        'R':(sub(O,u),v),'Z':(zx,zy),'X':(xx,xy),'Y':(yx,yy),'P':(px,py)}

def area(name):
 return det(*(points[k] for k in name))

FACTORS={}
for i,(lo,hi) in enumerate(BOX):
 FACTORS['L'+str(2*i)]=sub(V[i],c(lo))
 FACTORS['L'+str(2*i+1)]=sub(c(hi),V[i])
for i,p in enumerate([
 add(py,scale(px,-1),c(-S)),
 add(O,scale(lam,-1),c(-S)),
 add(O,scale(v,-1),c(-S)),
 add(O,scale(zy,-1),c(-S)),
 add(O,scale(xy,-1),c(-S)),
 add(O,scale(yy,-1),c(-S)),
 add(O,scale(py,-1),c(-S)),
],start=24):FACTORS['L'+str(i)]=p

SIGNS={
 'DEB':1,'DBP':1,'DRP':-1,'CEZ':1,'CEP':-1,'CBZ':1,
 'CRX':-1,'CXY':-1,'EBY':1,'EBP':1,'EZX':-1,'EZP':1,
 'BZX':-1,'BXY':-1,'RZX':-1,'RZY':1,'RZP':1,'RYP':-1,
 'ZXY':-1,'DYZ':1,'DZX':1,'DPY':1,'PYZ':1,'PZX':1,
}
for name,sg in SIGNS.items():
 FACTORS['T'+name]=add(scale(area(name),sg),c(-S))
omega=area('BRC')
FACTORS['J']=add(omega,c(-G*S))
FACTORS['H']=add(omega,scale(area('CBZ'),-1),c(-(G-1)*S))

# Each row is one nonnegative summand: integer times listed factors.
ROWS=[
 (15, 'L0*L17'),
 (28, 'L2*L23'),
 (16, 'L3*L18'),
 (19, 'L4*L23'),
 (12, 'L6*L17'),
 (24, 'L13*L20'),
 (28, 'L17*L23'),
 (30, 'L19*L20'),
 (11, 'L0*L4*L11'),
 (12, 'L0*L17*L26'),
 (1, 'L1*L6*L8'),
 (15, 'L4*L10*L25'),
 (3, 'L4*L17*L22'),
 (3, 'L7*L16*L20'),
 (42, 'L9*L14*L20'),
 (4, 'L9*L23*L23'),
 (15, 'L9*L23*L30'),
 (3, 'L12*L18*L23'),
 (32, 'L13*L22*L25'),
 (4, 'L17*L23*L25'),
 (9, 'TDEB*L23'),
 (37, 'TDBP*L1'),
 (3, 'TDBP*L7'),
 (6, 'TDBP*L14'),
 (20, 'TDBP*L25'),
 (5, 'TDRP*L23'),
 (6, 'TCEZ*L6'),
 (29, 'TCEP*L13'),
 (15, 'TCBZ*L1'),
 (28, 'TCBZ*L22'),
 (19, 'TCBZ*L25'),
 (4, 'TCRX*L11'),
 (7, 'TCRX*L27'),
 (11, 'TCXY*L11'),
 (2, 'TCXY*L23'),
 (14, 'TEBY'),
 (3, 'TEBY*L9'),
 (3, 'TEBY*L24'),
 (12, 'TEBY*L26'),
 (12, 'TEBP'),
 (37, 'TEBP*L27'),
 (42, 'TEZX'),
 (4, 'TEZX*L16'),
 (33, 'TEZX*L24'),
 (21, 'TEZP*L6'),
 (8, 'TBZX*L23'),
 (3, 'TBXY*L20'),
 (13, 'TRZX*L23'),
 (12, 'TRZY'),
 (8, 'TRZY*L24'),
 (10, 'TRZY*L27'),
 (33, 'TRZP*L1'),
 (10, 'TRZP*L10'),
 (11, 'TRZP*L15'),
 (11, 'TRZP*L16'),
 (19, 'TRZP*L22'),
 (1, 'TRZP*L28'),
 (7, 'TRZP*L29'),
 (8, 'TRYP*L8'),
 (11, 'TZXY*L10'),
 (22, 'TZXY*L30'),
 (7, 'J*L18'),
 (8, 'H*L18'),
 (5, 'TDYZ*L6'),
 (21, 'TDZX*L18'),
 (9, 'TDZX*L20'),
 (13, 'TDPY'),
 (6, 'TDPY*L6'),
 (14, 'TDPY*L10'),
 (24, 'TDPY*L28'),
 (8, 'TPYZ*L4'),
 (46, 'TPZX'),
 (11, 'TPZX*L10'),
 (3, 'TPZX*L16'),
 (11, 'TPZX*L26'),
 (21, 'TPZX*L29'),
]

def translate(p):
 """Substitute each coordinate lower endpoint plus a nonnegative variable."""
 ans=defaultdict(F)
 for e,a in p.items():
  term={():a}
  for i in e:
   term=mul(term,{():BOX[i][0],(i,):F(1)})
  for f,b in term.items():ans[f]+=b
 return {e:a for e,a in ans.items() if a}

def box_upper(p):
 ans=p.get((),F(0))
 for e,a in p.items():
  if e and a>0:
   for i in e:a*=BOX[i][1]-BOX[i][0]
   ans+=a
 return ans

def check():
 text=Path(__file__).with_name('TYPE_II_R4_TWO_UPPER.md').read_text()
 block=re.search(r'```text\n(.*?)\n```',text,re.S).group(1)
 printed=[(int(weight),names.replace('T_','T')) for weight,names in
          re.findall(r'^\s*(\d+) ([A-Za-z0-9_*]+)\s*$',block,re.M)]
 assert printed==ROWS, "manuscript coefficient mismatch"
 assert len(ROWS)==76 and all(a>0 for a,_ in ROWS)
 total={}
 for a,name in ROWS:
  term=c(a)
  for key in name.split('*'):term=mul(term,FACTORS[key])
  total=add(total,term)
 assert max(map(len,total))<=3
 shifted=translate(total)
 upper=box_upper(shifted)
 expected=-F(786594690429558640681,76662729967600000000000)
 assert upper==expected and upper<0
 print('Type-II triangular-right two-upper fixed cubic: PASS')
 print('76 terms; exact upper bound =',upper)
 print('Shifted monomials:',len(shifted),
       '; positive nonconstant coefficients:',sum(bool(e) and a>0 for e,a in shifted.items()))
 return upper

if __name__=='__main__':check()
