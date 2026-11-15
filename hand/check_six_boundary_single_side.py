"""Exact fixed cubics for one N side-cap point and two anchor-interior points."""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, combinations_with_replacement, product
from pathlib import Path
import json
from check_six_boundary_two_side_upper import const, add, sub, mul, scale, area, cube_upper

S,RHO=F(7,64),F(13,16)
VARIABLES='a h b c d f x y px py qx qy'.split()
a,h,b,c,d,f,x,y,px,py,qx,qy=[{(i,):F(1)}for i in range(12)]
ZERO,ONE=const(0),const(1)
VERTICES=[(ZERO,a),(b,ZERO),(c,ZERO),(x,y),(ONE,d),(f,ONE),(ZERO,h),(px,py),(qx,qy)]
TRIPLES=list(combinations(range(9),3))
AREAS={tr:area(*(VERTICES[i]for i in tr))for tr in TRIPLES}
AREAS['W']=sub(ONE,mul(sub(h,d),sub(c,f)))
AREAS['HC']=mul(h,c)
FACTORS=[
 sub(a,const(F(1,7))),sub(b,const(F(1,8))),sub(h,const(F(1,2))),
 sub(c,const(4*S)),sub(d,const(F(1,2))),sub(ONE,h),
 sub(const(1-S),c),sub(const(1-S),d),sub(const(1-S),f),
 sub(d,a),sub(h,d),sub(f,b),sub(c,f),sub(sub(h,a),const(S)),
 sub(sub(c,b),const(S)),sub(ONE,x),sub(sub(x,c),const(S)),
 sub(y,const(F(1,7))),sub(sub(d,y),const(F(7,36))),
]
for coordinate in(px,py,qx,qy):
 FACTORS.extend((sub(coordinate,const(S)),sub(const(1-S),coordinate)))
EARS=((0,1,6),(0,1,2),(1,2,4),(2,4,5),(4,5,6),(0,5,6))

def sign(word,i,j):return 1 if(j-i)%7<=word[i]else-1
def inside(word,tr):return all(sign(word,tr[i],tr[(i+1)%3])>0 for i in range(3))
WORDS=tuple(w for w in product(range(1,6),repeat=7)
            if all(sign(w,i,j)==-sign(w,j,i)for i,j in combinations(range(7),2)))
ALLOWED=tuple(w for w in WORDS if w[2]>=2 and 2<=w[1]<=4)
LOWER=tuple(w for w in ALLOWED if w[6]<3)
UPPER=tuple(w for w in ALLOWED if w[6]>=3)

def upper_pair_signs(P,Q):
 pHD,qHD=sign(P,6,4),sign(Q,6,4)
 pCF,qCF=sign(P,2,5),sign(Q,2,5)
 assert(pHD,pCF)!=(qHD,qCF)
 if pHD!=qHD and pCF!=qCF:return{6:-pHD,4:pHD,2:-pCF,5:pCF}
 if pHD==qHD:
  isolated=5 if pHD>0 else 2;side=pCF if isolated==5 else-pCF
 else:
  isolated=6 if pCF>0 else 4;side=-pHD if isolated==6 else pHD
 return{v:side if v==isolated else-side for v in(6,2,4,5)}

def cases():
 out=[]
 for kind,pairs in(('mixed',product(LOWER,UPPER)),('upper',combinations_with_replacement(UPPER,2))):
  for P,Q in pairs:
   if any(inside(P,tr)and inside(Q,tr)for tr in EARS):continue
   if kind=='upper':
    if(sign(P,6,4),sign(P,2,5))==(sign(Q,6,4),sign(Q,2,5)):continue
    forced=upper_pair_signs(P,Q)
    if any(P[v]!=Q[v]and sg!=(1 if P[v]<Q[v]else-1)for v,sg in forced.items()):continue
   out.append((kind,P,Q))
 return tuple(out)
CASES=cases()
SPLITS={
 ('mixed',(3,3,4,3,3,3,2),(4,3,2,1,2,5,4)):(1,),
 ('mixed',(3,4,4,3,3,2,2),(5,4,3,2,2,1,4)):(1,),
 ('mixed',(5,4,4,3,2,1,2),(3,2,3,3,4,3,3)):(3,),
 ('mixed',(5,4,4,3,2,1,2),(4,3,3,2,2,3,4)):(4,),
 ('mixed',(5,4,4,3,2,1,2),(4,3,3,3,2,3,3)):(3,4),
}

def cells():
 return tuple((case,branch)for case in CASES
              for branch in(range(1<<len(SPLITS[case]))if case in SPLITS else(-1,)))

def known_signs(case,branch):
 kind,P,Q=case;out={}
 for tr in TRIPLES:
  i,j,k=tr
  if k<7:out[tr]=1
  elif j<7:out[tr]=sign(P if k==7 else Q,i,j)
 forced=upper_pair_signs(P,Q)if kind=='upper'else{}
 for v in range(7):
  sg=forced.get(v)
  if P[v]!=Q[v]:
   radial=1 if P[v]<Q[v]else-1
   assert sg is None or sg==radial
   sg=radial
  if sg is not None:out[v,7,8]=sg
 if case in SPLITS:
  assert tuple(v for v in range(7)if(v,7,8)not in out)==SPLITS[case]
  assert branch in range(1<<len(SPLITS[case]))
  for bit,v in enumerate(SPLITS[case]):out[v,7,8]=1 if branch&(1<<bit)else-1
 else:assert branch==-1
 return out

def oriented(signs,tr):
 key=tuple(sorted(tr))
 if key not in signs:return None
 parity=(-1)**sum(tr[i]>tr[j]for i in range(3)for j in range(i+1,3))
 return signs[key]*parity

@lru_cache(maxsize=None)
def cost_specs(case,branch):
 signs=known_signs(case,branch);out=[]
 for tr,sg in sorted(signs.items()):
  count=sum(all(oriented(signs,(tr[i],tr[(i+1)%3],v))==sg for i in range(3))
            for v in(7,8)if v not in tr)
  out.append((tr,sg,(S,3*S,RHO)[count]))
 out.extend((('W',1,8*S if case[0]=='upper'else 4*S),
             ('HC',1,4*S if case[0]=='upper'else F(7,11)),
             ((0,1,6),-1,-3*S),((1,2,3),-1,-3*S)))
 out.extend((tr,-1,-RHO)for tr in EARS)
 return tuple(out)

def costs(case,branch):
 return[sub(scale(AREAS[key],sg),const(bound))for key,sg,bound in cost_specs(case,branch)]

@lru_cache(maxsize=None)
def factor_product(ids):
 p=const(1)
 for i in ids:p=mul(p,FACTORS[i])
 return p

def residual(cert):
 case=(cert['case'][0],tuple(cert['case'][1]),tuple(cert['case'][2]))
 qs=costs(case,cert['branch']);out={}
 assert cert['scale']==4096
 for term in cert['terms']:
  if term[0]=='f':
   _,ids,weight=term
   assert 1<=len(ids)<=3 and ids==sorted(ids)
   assert all(type(i)is int and 0<=i<27 for i in ids)
   p=factor_product(tuple(ids))
  else:
   assert term[0]=='q';_,qi,fi,weight=term
   assert type(qi)is int and 0<=qi<len(qs)
   assert type(fi)is int and -1<=fi<27
   p=qs[qi]if fi==-1 else mul(qs[qi],FACTORS[fi])
  assert type(weight)is int and weight>0
  out=add(out,scale(p,F(weight,4096)))
 assert all(len(m)<=3 for m in out)
 return out

@lru_cache(maxsize=None)
def cost_map(cell):
 out={}
 for key,sg,th in cost_specs(*cell):
  old=out.get((key,sg))
  if old is None or th>old:out[key,sg]=th
 return out

def applicable(cert,target):
 case=(cert['case'][0],tuple(cert['case'][1]),tuple(cert['case'][2]))
 source=cost_specs(case,cert['branch']);other=cost_map(target)
 used={row[1]for row in cert['terms']if row[0]=='q'}
 return all((source[i][0],source[i][1])in other and
            other[source[i][0],source[i][1]]>=source[i][2]for i in used)

def verify():
 assert S/(1-2*S)==F(7,50)
 assert S/(1-F(7,50))>F(1,8)
 assert S/(1-S-F(1,8))==F(1,7)
 assert 4*S/(1-F(1,8))==F(1,2)
 assert S/(1-4*S)==F(7,36)
 assert F(8)>F(31,11)**2
 assert len(WORDS)==57 and len(ALLOWED)==43 and len(LOWER)==12 and len(UPPER)==31
 assert len(CASES)==536 and sum(case[0]=='mixed'for case in CASES)==348
 assert all(case in CASES for case in SPLITS)
 assert tuple(CASES.index(case)for case in SPLITS)==(214,256,329,343,344)
 expected=set(cells());assert len(expected)==543
 # Both positive projection identities hold for either interior point.
 for v,xx,yy in((7,px,py),(8,qx,qy)):
  assert add(mul(sub(ONE,f),AREAS[2,4,v]),mul(sub(ONE,c),AREAS[4,5,v]))==mul(AREAS[2,4,5],sub(ONE,xx))
  assert add(mul(sub(ONE,d),AREAS[5,6,v]),mul(sub(ONE,h),AREAS[4,5,v]))==mul(AREAS[4,5,6],sub(ONE,yy))
 data=json.loads(Path(__file__).with_name('six_boundary_single_side_certificates.json').read_text())
 assert data['version']==1 and data['variables']==VARIABLES
 assert data['vertices']==['A','B','C','X','D','F','H','P','Q']
 seen=set();covered=set();terms=0;worst=None
 for cert in data['certificates']:
  case=(cert['case'][0],tuple(cert['case'][1]),tuple(cert['case'][2]));cell=(case,cert['branch'])
  assert cell in expected and cell not in seen
  seen.add(cell)
  bound=cube_upper(residual(cert))
  assert bound==F(cert['upper_bound'])and bound<=-F(3,4)
  applies={target for target in expected if applicable(cert,target)}
  assert cell in applies;covered|=applies
  terms+=len(cert['terms']);worst=bound if worst is None else max(worst,bound)
 assert covered==expected,expected-covered
 assert len(seen)==data['certificate_count']==300 and terms==data['term_count']==40480
 assert worst==F(data['largest_upper_bound'])==-F(81664995001,82678120448)
 print('PASS: 57 radial words; 43 allowed; 536 base cases; complete 543-cell signed cover')
 print('PASS:',len(seen),'fixed cubic certificates;',terms,'positive terms; all used-cost reuse checks')
 print('Largest exact cube upper bound:',worst)

if __name__=='__main__':verify()
