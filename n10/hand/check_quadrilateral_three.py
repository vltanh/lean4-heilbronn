"""Exact transcription audit of QUADRILATERAL_THREE.md; standard library only.

All coefficients are read from the printed manuscript. The geometric
inference rule is positive barycentric interpolation inside an actual
triangle; no numerical search or external certificate is imported.
"""
from fractions import Fraction as F
from itertools import combinations
from functools import lru_cache
from pathlib import Path
from math import comb
import re

N=8;ZERO=(0,)*N;s=F(93,1000);K=F(149,20);J=F(4427,500)
LABELS='ABCDPQR'
ROWS={
 'S':('same','PQR',()),
 'A1':('adjacent','RPQ',()),
 'A2':('adjacent','PRQ',()),
 'A3':('adjacent','PQR',()),
 'O':('opposite',None,()),
 'T1':('three',None,('APQ-',)),
 'T2':('three',None,('APQ+','BQR-')),
 'T3':('three',None,('APQ+','BQR+','CPQ+')),
 'T4':('three',None,('APQ+','BQR+','CPQ-')),
}
SECTORS={'same':((1,1),(1,1),(1,1)),
 'adjacent':((1,1),(1,1),(-1,1)),
 'opposite':((1,1),(1,1),(-1,-1)),
 'three':((1,1),(-1,1),(-1,-1))}

def const(c):return {ZERO:F(c)} if c else {}
def var(i):
 e=[0]*N;e[i]=1;return {tuple(e):F(1)}
def add(*ps):
 out={}
 for p in ps:
  for e,c in p.items():out[e]=out.get(e,F(0))+c
 return {e:c for e,c in out.items() if c}
def scale(p,c):return {e:v*c for e,v in p.items() if v*c}
def mul(p,q):
 out={}
 for e,c in p.items():
  for f,d in q.items():
   g=tuple(a+b for a,b in zip(e,f));out[g]=out.get(g,F(0))+c*d
 return {e:c for e,c in out.items() if c}
VS=[var(i) for i in range(N)]
a,b,x,y,u,v,r,w=VS

@lru_cache(None)
def points(case):
 out=[(scale(a,-1),{}),({},scale(b,-1)),(add(const(1),scale(a,-1)),{}),({},add(const(1),scale(b,-1)))]
 for (sx,sy),(xx,yy) in zip(SECTORS[case],[(x,y),(u,v),(r,w)]):
  out.append((scale(xx,sx),scale(yy,sy)))
 return out
def det(case,i,j,k):
 A,B,C=[points(case)[t] for t in (i,j,k)]
 return add(mul(add(B[0],scale(A[0],-1)),add(C[1],scale(A[1],-1))),
            scale(mul(add(B[1],scale(A[1],-1)),add(C[0],scale(A[0],-1))),-1))
def canonical(tri,sg):
 inv=sum(tri[i]>tri[j] for i in range(3) for j in range(i+1,3))
 return tuple(sorted(tri)),sg*(-1)**inv
def get(known,tri):
 k,sg=canonical(tri,1);return known.get(k,0)*sg

@lru_cache(None)
def signs(row):
 case,xyz,tokens=ROWS[row];known={};witnesses=[]
 def put(tri,sg,reason=None):
  key,value=canonical(tri,sg)
  if key in known:
   assert known[key]==value,(row,tri,sg,known[key]);return False
  known[key]=value
  if reason:witnesses.append((''.join(LABELS[k] for k in key)+('+' if value==1 else '-'),reason))
  return True
 for tri in combinations(range(4),3):put(tri,1)
 for k,(sx,sy) in enumerate(SECTORS[case],4):
  for i in range(4):put((i,(i+1)%4,k),1)
  put((0,2,k),sy);put((1,3,k),-sx)
 if xyz:
  X,Y,Z=[LABELS.index(t) for t in xyz];A,C,D=0,2,3
  for hull,pt in [((A,C,Y),Z),((C,D,Y),X),((D,A,Z),Y),
                  ((C,D,Z),X),((D,A,X),Y),((A,C,X),Z)]:
   for i,j in zip(hull,hull[1:]+hull[:1]):put((i,j,pt),1)
  put((Z,X,Y),1)
 for token in tokens:put(tuple(LABELS.index(t) for t in token[:3]),1 if token[3]=='+' else -1)
 changed=True
 while changed:
  changed=False
  for tri in combinations(range(7),3):
   if get(known,tri):continue
   for pos in range(3):
    point=tri[pos];ij=tuple(tri[j] for j in range(3) if j!=pos)
    for hull in combinations([k for k in range(7) if k!=point],3):
     orientation=get(known,hull)
     if not orientation:continue
     edges=list(zip(hull,hull[1:]+hull[:1]))
     if not all(get(known,(i,j,point))==orientation for i,j in edges):continue
     if any(k not in ij and not get(known,(*ij,k)) for k in hull):continue
     sides=[0 if k in ij else get(known,(*ij,k)) for k in hull]
     sg=1 if min(sides)>=0 and max(sides)>0 else -1 if max(sides)<=0 and min(sides)<0 else 0
     if not sg:continue
     word=''.join(LABELS[k] for k in hull);chord=''.join(LABELS[k] for k in ij)
     reason=f'{LABELS[point]} inside {word}; all vertices on the '+('nonnegative' if sg==1 else 'nonpositive')+f' side of {chord}'
     changed|=put((*ij,point),sg,reason);break
    if get(known,tri):break
 return known,witnesses

def box(case):
 if case=='same':lo=[s,s];hi=[1-J*s,1-J*s]
 elif case=='adjacent':lo=[3*s,s];hi=[1-K*s,1-J*s]
 elif case=='opposite':lo=[3*s,3*s];hi=[1-K*s,1-K*s]
 else:lo=[K*s,3*s];hi=[1-3*s,1-K*s]
 return lo+[s]*6,hi+[1-2*s]*6
def affine(case):
 lo,hi=box(case);L=[]
 for z,l,h in zip(VS,lo,hi):L.extend([add(z,const(-l)),add(const(h),scale(z,-1))])
 for i,j in combinations(range(3),2):
  if all(SECTORS[case][i][k]!=SECTORS[case][j][k] for k in (0,1)):
   for k in (0,1):L.append(add(const(1-6*s),scale(VS[2+2*i+k],-1),scale(VS[2+2*j+k],-1)))
 return L
def members(word,row):
 ids=tuple(LABELS.index(t) for t in word);known=signs(row)[0]
 orientation=get(known,ids) if len(ids)==3 else 1
 assert orientation
 if len(ids)==4:
  assert all(get(known,tuple(ids[j] for j in tri))==1 for tri in combinations(range(4),3)),(row,word)
 return [p for p in range(7) if p not in ids and all(get(known,(i,j,p))==orientation for i,j in zip(ids,ids[1:]+ids[:1]))]
def polygon(word,row):
 ids=tuple(LABELS.index(t) for t in word);case=ROWS[row][0]
 if len(ids)==3:return scale(det(case,*ids),get(signs(row)[0],ids))
 return add(det(case,ids[0],ids[1],ids[2]),det(case,ids[0],ids[2],ids[3]))

@lru_cache(None)
def factor(name,row):
 case=ROWS[row][0]
 if '*' in name:
  out=const(1)
  for f in name.split('*'):out=mul(out,factor(f,row))
  return out
 if re.fullmatch(r'L\d+',name):return affine(case)[int(name[1:])]
 if name.startswith('C_'):
  _,word,count=name.split('_');count=int(count)
  assert len(members(word,row))>=count,(row,name)
  capacity={(3,1):F(3),(3,2):K,(3,3):J,(4,1):F(24,5),(4,2):F(8)}[len(word),count]
  return add(polygon(word,row),const(-capacity*s))
 assert re.fullmatch(r'[ABCDPQR]{3}[+-]',name),name
 tri=tuple(LABELS.index(t) for t in name[:3]);sg=1 if name[3]=='+' else -1
 assert get(signs(row)[0],tri)==sg,(row,name)
 return add(scale(det(case,*tri),sg),const(-s))

def upper(poly,case):
 lo,hi=box(case);out={}
 for ex,co in poly.items():
  parts={ZERO:co}
  for i,power in enumerate(ex):
   new={}
   for old,vv in parts.items():
    for k in range(power+1):
     e=list(old);e[i]+=k;e=tuple(e)
     new[e]=new.get(e,F(0))+vv*comb(power,k)*lo[i]**(power-k)
   parts=new
  out=add(out,parts)
 bound=out.get(ZERO,F(0))
 for ex,co in out.items():
  if ex==ZERO or co<=0:continue
  for i,power in enumerate(ex):co*=(hi[i]-lo[i])**power
  bound+=co
 return bound
def read_rows():
 doc=Path(__file__).with_name('QUADRILATERAL_THREE.md').read_text()
 parts=re.split(r'(?m)^### Row (S|A1|A2|A3|O|T1|T2|T3|T4)\n',doc)
 result=[]
 for i in range(1,len(parts),2):
  row,body=parts[i:i+2];block=re.search(r'```text\n(.*?)\n```',body,re.S).group(1)
  terms=[]
  for entry in re.split(r'[;\n]',block):
   entry=entry.strip()
   if not entry:continue
   weight,name=entry.split(' ',1);terms.append((name,int(weight)))
  claimed=F(re.search(r'U\(W\)=(-\d+/\d+)<0',body).group(1))
  result.append((row,terms,claimed))
 assert [r[0] for r in result]==list(ROWS)
 return result
def main():
 total=0
 for row,terms,claimed in read_rows():
  assert all(0<n<=1333 for _,n in terms)
  W=add(*(scale(factor(name,row),weight) for name,weight in terms))
  assert all(sum(e)<=3 for e in W)
  actual=upper(W,ROWS[row][0]);assert actual==claimed and actual<0,(row,actual,claimed)
  total+=len(terms);print(row,len(terms),'printed entries; exact U(W)=',actual)
 assert total==139
 print('PASS: all nine rows; 139 printed integer entries; all signs and occupancies verified.')
if __name__=='__main__':main()
