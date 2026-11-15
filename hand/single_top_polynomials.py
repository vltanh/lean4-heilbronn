"""Exact finite word cover and polynomial definitions for N6-03."""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, combinations_with_replacement, product
from check_seven_boundary_exterior_certificates import const,add,sub,mul,scale,area,cube_upper

S,RHO=F(7,64),F(13,16)
VARIABLES='a h b c d f x y px py qx qy'.split()
a,h,b,c,d,f,x,y,px,py,qx,qy=[{(i,):F(1)}for i in range(12)]
ZERO,ONE=const(0),const(1)
VERTICES=[(ZERO,a),(b,ZERO),(c,ZERO),(ONE,d),(x,y),(f,ONE),(ZERO,h),(px,py),(qx,qy)]
TRIPLES=list(combinations(range(9),3))
AREAS={tr:area(*(VERTICES[i]for i in tr))for tr in TRIPLES}
AREAS['W']=sub(ONE,mul(sub(h,d),sub(c,f)))
AREAS['HC']=mul(h,c)
FACTORS=[sub(a,const(F(1,8))),sub(b,const(F(1,8))),
 sub(h,const(4*S)),sub(c,const(4*S)),sub(ONE,h),sub(ONE,c),
 sub(d,a),sub(h,d),sub(f,b),sub(c,f),sub(d,f),
 sub(sub(h,a),const(S)),sub(sub(c,b),const(S)),
 sub(const(1-S),d),sub(const(1-S),f),sub(ONE,x),sub(ONE,y),
 sub(sub(x,f),const(S)),sub(sub(y,d),const(S))]
for z in(px,py,qx,qy):FACTORS.extend((sub(z,const(S)),sub(const(1-S),z)))
EARS=((0,1,6),(0,1,2),(1,2,3),(2,3,5),(3,5,6),(0,5,6))

def sign(w,i,j):return 1 if (j-i)%7<=w[i]else-1
def inside(w,tr):return all(sign(w,tr[i],tr[(i+1)%3])>0 for i in range(3))
WORDS=tuple(w for w in product(range(1,6),repeat=7)
 if all(sign(w,i,j)==-sign(w,j,i)for i,j in combinations(range(7),2)))
ALLOWED=tuple(w for w in WORDS if w[3]>=2)
LOWER=tuple(w for w in ALLOWED if w[6]<3)
UPPER=tuple(w for w in ALLOWED if w[6]>=3)

def upper_pair_signs(P,Q):
 pHD,qHD=sign(P,6,3),sign(Q,6,3)
 pCF,qCF=sign(P,2,5),sign(Q,2,5)
 assert(pHD,pCF)!=(qHD,qCF)
 if pHD!=qHD and pCF!=qCF:return{6:-pHD,3:pHD,2:-pCF,5:pCF}
 if pHD==qHD:
  isolated=5 if pHD>0 else 2;side=pCF if isolated==5 else-pCF
 else:
  isolated=6 if pCF>0 else 3;side=-pHD if isolated==6 else pHD
 return{v:side if v==isolated else-side for v in(6,2,3,5)}

def cases():
 out=[]
 for kind,pairs in(('mixed',product(LOWER,UPPER)),('upper',combinations_with_replacement(UPPER,2))):
  for P,Q in pairs:
   if any(inside(P,tr)and inside(Q,tr)for tr in EARS):continue
   if kind=='upper':
    if(sign(P,6,3),sign(P,2,5))==(sign(Q,6,3),sign(Q,2,5)):continue
    forced=upper_pair_signs(P,Q)
    if any(P[v]!=Q[v]and sg!=(1 if P[v]<Q[v]else-1)for v,sg in forced.items()):continue
   out.append((kind,P,Q))
 return tuple(out)
CASES=cases()

def known_signs(case,extra=()):
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
 for v,sg in extra:
  assert(v,7,8)not in out;out[v,7,8]=sg
 return out

def oriented(signs,tr):
 key=tuple(sorted(tr))
 if key not in signs:return None
 parity=(-1)**sum(tr[i]>tr[j]for i in range(3)for j in range(i+1,3))
 return signs[key]*parity

@lru_cache(maxsize=None)
def cost_specs(case,extra=(),threshold=S):
 signs=known_signs(case,extra);out=[]
 for tr,sg in sorted(signs.items()):
  count=sum(all(oriented(signs,(tr[i],tr[(i+1)%3],v))==sg for i in range(3))
   for v in(7,8)if v not in tr)
  out.append((tr,sg,(threshold,3*threshold,RHO)[count]))
 out.extend((('W',1,8*threshold if case[0]=='upper'else 4*threshold),
             ('HC',1,4*threshold if case[0]=='upper'else F(7,11))))
 out.extend((tr,-1,-RHO)for tr in EARS)
 return tuple(out)


def tuple_case(c):
 return(c[0],tuple(c[1]),tuple(c[2]))

LOWER_FACTORS=[sub(sub(c,px),const(2*S)),sub(sub(h,py),const(2*S)),
               sub(sub(sub(ONE,px),py),const(S))]
GLOBAL_EXTRA=[sub(v,const(F(1,8))) for v in(px,py,qx,qy)]+[
 sub(sub(x,f),const(F(1,8))),sub(sub(y,d),const(F(1,8)))]
STRONG_FACTORS=FACTORS+LOWER_FACTORS+GLOBAL_EXTRA+[
 sub(h,const(F(7,11))),sub(c,const(F(7,11)))]
SPLITS={171:(4,),173:(4,5),185:(5,),226:(0,)}
TARGET=F(79,720)


def cells():
 out=[]
 for i,case in enumerate(CASES):
  if i in SPLITS:
   vv=SPLITS[i]
   for ss in product((-1,1),repeat=len(vv)):
    out.append((case,tuple(zip(vv,ss))))
  else:out.append((case,()))
 return tuple(out)


def factors(cert):
 case=tuple_case(cert['case']);layout=cert['layout']
 assert layout in ('base','lower','strong')
 if layout=='base':out=list(FACTORS)
 else:
  assert case[0]=='mixed'
  out=list(FACTORS+LOWER_FACTORS if layout=='lower' else STRONG_FACTORS)
 for cut in cert.get('cuts',[]):
  i,sg,value=cut
  assert type(i) is int and 0<=i<12 and sg in (-1,1)
  out.append(scale(sub({(i,):F(1)},const(F(value))),sg))
 return out


def specs(cert):
 return cost_specs(tuple_case(cert['case']),tuple(map(tuple,cert.get('extra',[]))),F(cert['threshold']))


def costs(cert):
 return [sub(scale(AREAS[key],sg),const(bound))for key,sg,bound in specs(cert)]


def residual(cert):
 fs=factors(cert);qs=costs(cert);out={}
 assert type(cert['scale']) is int and cert['scale']>0
 for term in cert['terms']:
  if term[0]=='f':
   _,ii,weight=term
   assert ii==sorted(ii) and 1<=len(ii)<=3
   assert all(type(i) is int and 0<=i<len(fs)for i in ii)
   poly=const(1)
   for i in ii:poly=mul(poly,fs[i])
  else:
   assert term[0]=='q'
   _,qi,fi,weight=term
   assert type(qi) is int and 0<=qi<len(qs)
   assert type(fi) is int and -1<=fi<len(fs)
   poly=qs[qi] if fi==-1 else mul(qs[qi],fs[fi])
  assert type(weight) is int and weight>0
  out=add(out,scale(poly,F(weight,cert['scale'])))
 assert all(len(mon)<=3 for mon in out)
 return out


def applicable(cert,target):
 if cert.get('cuts'):return False
 if cert['layout']!='base' and target[0][0]!='mixed':return False
 source=specs(cert)
 other={(k,sg):th for k,sg,th in cost_specs(target[0],target[1],TARGET)}
 used={term[1]for term in cert['terms']if term[0]=='q'}
 return all((source[i][0],source[i][1])in other and
            other[source[i][0],source[i][1]]>=source[i][2] for i in used)
