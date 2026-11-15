"""Exact fixed expressions for the complete N6 side/opposite/interior row."""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product as tuples
from pathlib import Path
import json
from check_seven_boundary_exterior_certificates import const,add,sub,mul,scale,product,area,cube_upper

S,RHO=F(8,73),F(13,16)
VARIABLES='a h b c d f x y z w r t'.split()
VERTEX_NAMES='A B C X D Y F H Q'.split()
a,h,b,c,d,f,x,y,z,w,r,t=[{(i,):F(1)}for i in range(12)]
Z,U=const(0),const(1)
VERTICES=[(Z,a),(b,Z),(c,Z),(x,y),(U,d),(z,w),(f,U),(Z,h),(r,t)]
TRIPLES=list(combinations(range(9),3))
AREAS={tr:area(*(VERTICES[i]for i in tr))for tr in TRIPLES}
FACTORS=[sub(a,const(F(1,7))),sub(b,const(F(1,8))),sub(h,const(F(1,2))),
 sub(c,const(4*S)),sub(d,const(F(1,2))),sub(U,h),sub(const(1-S),c),
 sub(const(1-S),d),sub(const(1-S),f),sub(d,a),sub(h,d),sub(f,b),sub(c,f),
 sub(sub(h,a),const(S)),sub(sub(c,b),const(S)),sub(U,x),
 sub(sub(x,c),const(S)),sub(y,const(F(1,7))),sub(sub(d,y),const(F(7,36))),
 sub(U,z),sub(U,w),sub(sub(z,f),const(S)),sub(sub(w,d),const(S)),
 sub(r,const(S)),sub(const(1-S),r),sub(t,const(S)),sub(const(1-S),t),
 sub(r,const(F(1,8))),sub(t,const(F(1,7))),sub(sub(z,f),const(2*S)),
 sub(sub(w,d),const(F(1,8))),sub(const(F(29,64)),b)]
BRANCHES={
 'x_low':sub(z,x),'x_high':sub(x,z),'y_low':sub(h,w),'y_high':sub(w,h),
 'l_low':sub(const(F(11,20)),sub(h,a)),
 'l_high':sub(sub(h,a),const(F(2,3))),
 'm_low':sub(const(F(11,20)),sub(z,f)),
 'g_high':sub(f,const(F(1,4))),'c_low':sub(const(F(2,3)),c),
}
EARS=((0,1,7),(0,1,2),(1,2,4),(2,4,6),(4,6,7),(0,6,7))
W=sub(U,mul(sub(h,d),sub(c,f)))

@lru_cache(maxsize=1)
def words():
 return tuple(q for q in tuples(range(1,7),repeat=8)
              if q[2]>=2 and q[4]>=2 and 2<=q[1]<=5
              and all((j<=q[i])==(8-j>q[(i+j)%8])
                      for i in range(8)for j in range(1,8)))

def positive(word,i,j):return(j-i)%8<=word[i]
def inside(word,tr):return all(positive(word,tr[i],tr[(i+1)%3])for i in range(3))

@lru_cache(maxsize=None)
def costs(word):
 out=[]
 for tr in TRIPLES:
  i,j,k=tr
  sg=1 if k<8 or positive(word,i,j)else-1
  threshold=3*S if k<8 and inside(word,tr)else S
  out.append(sub(scale(AREAS[tr],sg),const(threshold)))
 out += [sub(W,const(4*S if word[7]>=3 else 2*S)),
         sub(mul(h,c),const(4*S if word[7]>=3 else F(7,11))),
         sub(const(3*S),AREAS[0,1,7]),sub(const(3*S),AREAS[1,2,3])]
 out += [sub(const(RHO),AREAS[tr])for tr in EARS]
 assert len(out)==94
 return out

def required_branches():
 out={(i,('whole',))for i in range(97)if i not in(23,54,69,84)}
 out |= {(23,(b,))for b in('x_low','y_low','l_low','l_high','m_low','g_high','c_low')}
 out |= {(54,(b,))for b in('x_low','y_low')}
 for i in(69,84):
  out |= {(i,('x_low',)),(i,('y_low',)),(i,('x_high','y_high'))}
 return out

def residual(cert):
 word=tuple(cert['word']);br=tuple(cert['branches'])
 ff=FACTORS+([]if br==('whole',)else[BRANCHES[b]for b in br])
 qq=costs(word);out={}
 for term in cert['terms']:
  if term[0]=='f':
   _,ids,weight=term
   assert ids==sorted(ids)and 1<=len(ids)<=3
   assert all(type(i)is int and 0<=i<len(ff)for i in ids)
   p=product(ff[i]for i in ids)
  elif term[0]=='q':
   _,qi,fi,weight=term
   assert type(qi)is int and 0<=qi<94 and type(fi)is int and -1<=fi<len(ff)
   p=qq[qi]if fi==-1 else mul(qq[qi],ff[fi])
  else:
   assert term[0]=='qq'and cert['index']==84 and br==('x_high','y_high')
   _,i,j,weight=term
   assert type(i)is int and type(j)is int and 0<=i<=j<94
   p=mul(qq[i],qq[j])
  assert type(weight)is int and weight>0
  out=add(out,scale(p,F(weight,cert['scale'])))
 max_degree=4 if cert['index']==84 and br==('x_high','y_high')else 3
 assert all(len(mon)<=max_degree for mon in out)
 return out

def orientation(word,tr):
 a,b,c=sorted(tr)
 sg=1 if c<8 or positive(word,a,b)else-1
 inversions=sum(tr[i]>tr[j]for i in range(3)for j in range(i+1,3))
 return sg if inversions%2==0 else-sg

def verify_sharp_maps():
 critical=('ABH','ABC','AGH','DEF','GHF','GEF','ADO','DHO','BOE','GCO','OCF')
 for index,order in((23,(0,1,2,3,4,5,6,7,8)),(54,(2,3,4,5,6,7,0,1,8))):
  lookup=dict(zip('ABCDEFGHO',order))
  assert all(orientation(words()[index],tuple(lookup[a]for a in name))==1
             for name in critical)
 rotated=[(VERTICES[i][1],sub(U,VERTICES[i][0]))for i in(2,3,4,5,6,7,0,1,8)]
 assert rotated==[(Z,sub(U,c)),(y,sub(U,x)),(d,Z),(w,sub(U,z)),
                  (U,sub(U,f)),(h,U),(a,U),(Z,sub(U,b)),(t,sub(U,r))]

def verify_projection_identities():
 CDQ,DFQ,FHQ=AREAS[2,4,8],AREAS[4,6,8],AREAS[6,7,8]
 left=add(mul(sub(U,f),CDQ),mul(sub(U,c),DFQ))
 right=mul(add(mul(d,sub(U,f)),mul(sub(U,d),sub(U,c))),sub(U,r))
 assert left==right
 left=add(mul(sub(U,h),DFQ),mul(sub(U,d),FHQ))
 right=mul(add(mul(sub(U,h),sub(U,f)),mul(sub(U,d),f)),sub(U,t))
 assert left==right

def verify():
 assert len(words())==97 and sum(q[7]<3 for q in words())==18
 assert len(FACTORS)==32 and len(required_branches())==108
 assert [words()[i]for i in(23,54,69,84)]==[
  (3,2,3,4,5,4,4,3),(4,3,3,2,3,4,5,4),
  (4,4,4,4,3,3,3,3),(5,4,4,3,3,2,3,4)]
 verify_projection_identities();verify_sharp_maps()
 assert 65*219**2-1765**2==2240  # 8/73 < 2A0.
 data=json.loads(Path(__file__).with_name('six_boundary_side_opposite_certificates.json').read_text())
 assert data['version']==1 and data['variables']==VARIABLES and data['vertices']==VERTEX_NAMES
 assert data['threshold']==str(S)
 seen=set();total=0;worst=None;quartics=0
 for cert in data['certificates']:
  index=cert['index'];br=tuple(cert['branches']);key=(index,br)
  assert type(index)is int and key in required_branches()and key not in seen
  seen.add(key)
  assert tuple(cert['word'])==words()[index]and cert['threshold']==str(S)and cert['scale']==4096
  p=residual(cert);bound=cube_upper(p)
  assert bound==F(cert['upper_bound'])and bound<-F(3,4)
  if any(len(m)==4 for m in p):quartics+=1
  total+=len(cert['terms']);worst=bound if worst is None else max(worst,bound)
  print('PASS:',index,','.join(br),len(cert['terms']),'positive terms; exact upper',bound)
 assert seen==required_branches()and len(seen)==108 and total==22019 and quartics==1
 print('PASS: all97 radial words; complete fixed branch cover; 107 cubics and one quartic')
 print('PASS: both sharp-chamber orientation maps and both projection identities')
 print('Positive terms:',total,'; greatest exact cube upper bound:',worst)

if __name__=='__main__':verify()
