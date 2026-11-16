"""Read and exactly verify the printed tables of N8_SIDE_OUTSIDE.md.

Only Python's standard library is used. No search, solver, coordinate cover,
or external proof data is imported. Triangle signs are checked by the two
explicit geometric inference rules in the manuscript.
"""
from fractions import Fraction as F
from itertools import combinations
from functools import lru_cache
from pathlib import Path
import ast
import re

N=12;ZERO=(0,)*N;s=F(93,1000)
ell=F(31,251);cap=F(31657,55000);kappa=1-2*ell
low=[ell,ell,1-cap,ell,1-cap,1-cap,ell,1-cap]+[ell]*4
high=[cap,cap,1-ell,cap,1-ell,1-ell,cap,1-ell]+[1-ell]*4

def const(v):
 v=F(v);return {ZERO:v} if v else {}
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
def var(i):
 e=[0]*N;e[i]=1;return {tuple(e):F(1)}
vs=[var(i) for i in range(N)]
a,b,c,d,e,f,g,h,x,y,u,v=vs
Z=const(0);ONE=const(1)
P=[(Z,a),(b,Z),(c,Z),(ONE,d),(ONE,e),(f,ONE),(g,ONE),(Z,h),(x,y),(u,v)]

def det(i,j,k):
 A,B,C=P[i],P[j],P[k]
 return add(mul(add(B[0],scale(A[0],-1)),add(C[1],scale(A[1],-1))),
            scale(mul(add(B[1],scale(A[1],-1)),add(C[0],scale(A[0],-1))),-1))
def signed_key(tri,sgn):
 inv=sum(tri[i]>tri[j] for i in range(3) for j in range(i+1,3))
 return tuple(sorted(tri)),sgn*((-1)**inv)
def put(known,tri,sgn):
 key,value=signed_key(tri,sgn)
 if key in known:assert known[key]==value,(tri,value,known[key])
 known[key]=value
def get(known,tri):
 key,sgn=signed_key(tri,1)
 return known.get(key,0)*sgn

ROWS={'D1': ('left', ['BHO+']), 'D2': ('left', ['BHO-', 'AGO-', 'BGO+']), 'D3': ('left', ['BHO-', 'AGO-', 'BGO-', 'CFP-']), 'D4': ('left', ['BHO-', 'AGO-', 'BGO-', 'CFP+', 'AEP+']), 'D5': ('left', ['BHO-', 'AGO-', 'BGO-', 'CFP+', 'AEP-', 'DHP-', 'BFP+']), 'D6': ('left', ['BHO-', 'AGO-', 'BGO-', 'CFP+', 'AEP-', 'DHP-', 'BFP-', 'CGP-', 'BEP+', 'DGP+']), 'D7': ('left', ['BHO-', 'AGO-', 'BGO-', 'CFP+', 'AEP-', 'DHP-', 'BFP-', 'CGP-', 'DGP-', 'BEP+']), 'D8': ('left', ['BHO-', 'AGO-', 'BGO-', 'CFP+', 'AEP-', 'DHP-', 'BFP-', 'CGP-', 'DGP-', 'BEP-']), 'T1': ('adjacent', ['BHO-', 'AGO+']), 'T2': ('adjacent', ['BHO-', 'AGO-', 'DFP+', 'BEP+', 'BGO+', 'CFP+']), 'T3': ('adjacent', ['BHO-', 'AGO-', 'DFP+', 'BEP+', 'BGO+', 'CFP-']), 'T4': ('adjacent', ['BHO-', 'AGO-', 'DFP+', 'BEP+', 'BGO-', 'CFP+', 'AEP+']), 'T5': ('adjacent', ['BHO-', 'AGO-', 'DFP+', 'BEP+', 'BGO-', 'CFP+', 'AEP-', 'DHO+'])}

LABELS='ABCDEFGHOP'
def tri_name(tri,sgn):
 key,value=signed_key(tri,sgn)
 return ''.join(LABELS[i] for i in key)+('+' if value==1 else '-')

@lru_cache(None)
def signs(case):
 known={};witnesses={};order=[]
 def insert(tri,sgn,reason=None,deps=()):
  key,value=signed_key(tri,sgn)
  if key in known:
   assert known[key]==value,(case,tri,sgn,known[key])
   return False
  known[key]=value
  if reason is not None:
   witnesses[key]=(reason,tuple(deps));order.append(key)
  return True
 for tri in combinations(range(8),3):insert(tri,1)
 for block in [range(4),range(4,8)]:
  for i,j in combinations(block,2):
   for k in (8,9):insert((i,j,k),1)
 for i in range(8):
  for k in (8,9):insert((i,(i+1)%8,k),1)
  insert((i,8,9),1 if i>=4 else -1)
 mode,tokens=ROWS[case]
 common=['AFP-','CHP-','BEO+','DGO+','BGP-','CFO+',
         'AGP-','CEO+','BHP-','DFO+','AFO+']
 common+=['CHO+'] if mode=='left' else ['CHO-','DGP-']
 for token in common+tokens:
  insert(tuple(LABELS.index(ch) for ch in token[:3]),1 if token[3]=='+' else -1)
 changed=True
 while changed:
  changed=False
  for k in (8,9):
   inside=[]
   for tri in combinations(range(8),3):
    edges=list(zip(tri,tri[1:]+tri[:1]))
    if all(get(known,(i,j,k))==1 for i,j in edges):inside.append(tri)
   for i,j in combinations(range(8),2):
    if get(known,(i,j,k)):continue
    for tri in inside:
     sides=[0 if m in (i,j) else get(known,(i,j,m)) for m in tri]
     sn=1 if min(sides)>=0 and max(sides)>0 else -1 if max(sides)<=0 and min(sides)<0 else 0
     if not sn:continue
     word=''.join(LABELS[m] for m in tri)
     deps=[tuple(sorted((ii,jj,k))) for ii,jj in zip(tri,tri[1:]+tri[:1])]
     reason=f'{LABELS[k]} in {word}; its vertices are on the '+('positive' if sn==1 else 'negative')+f' side of {LABELS[i]}{LABELS[j]}'
     changed|=insert((i,j,k),sn,reason,deps)
     break
  for i,j in combinations(range(8),2):
   si=1 if i>=4 else -1;sj=1 if j>=4 else -1
   if si==sj:continue
   oi=get(known,(i,j,8));pi=get(known,(i,j,9))
   if si<sj:
    if oi==-1 and not pi:
     changed|=insert((i,j,9),-1,'decreasing chord expression from '+tri_name((i,j,8),-1),[tuple(sorted((i,j,8)))])
    if pi==1 and not oi:
     changed|=insert((i,j,8),1,'decreasing chord expression from '+tri_name((i,j,9),1),[tuple(sorted((i,j,9)))])
   else:
    if oi==1 and not pi:
     changed|=insert((i,j,9),1,'increasing chord expression from '+tri_name((i,j,8),1),[tuple(sorted((i,j,8)))])
    if pi==-1 and not oi:
     changed|=insert((i,j,8),-1,'increasing chord expression from '+tri_name((i,j,9),-1),[tuple(sorted((i,j,9)))])
 return known,witnesses,order

L=[]
for i,z in enumerate(vs):L.extend([add(z,const(-low[i])),add(const(high[i]),scale(z,-1))])
for z in [add(h,scale(a,-1)),add(c,scale(b,-1)),add(e,scale(d,-1)),add(f,scale(g,-1))]:
 L.extend([add(z,const(-s/cap)),add(const(F(753,1000)),scale(z,-1))])
for z in [add(e,scale(a,-1)),add(h,scale(d,-1)),add(f,scale(b,-1)),add(c,scale(g,-1))]:
 L.append(add(z,const(-F(21,250))))
U=add(u,scale(x,-1));V=add(v,scale(y,-1))
L.extend([add(U,const(-F(62,251))),add(const(kappa),scale(U,-1)),
          add(scale(U,kappa),scale(V,-1),const(-2*s)),
          add(scale(U,kappa),V,const(-2*s))])
assert len(L)==40


def polygon(word):
 ids=[LABELS.index(ch) for ch in word]
 return ids,add(*(det(ids[0],ids[j],ids[j+1]) for j in range(1,len(ids)-1)))
def members(word,case):
 ids,_=polygon(word);known=signs(case)[0]
 return [k for k in (8,9) if all(get(known,(i,j,k))==1 for i,j in zip(ids,ids[1:]+ids[:1]))]

@lru_cache(None)
def factor(name,case):
 if '*' in name:
  out=const(1)
  for part in name.split('*'):out=mul(out,factor(part,case))
  return out
 if name.startswith('L'):return L[int(name[1:])]
 known=signs(case)[0]
 if name.startswith('K_'):
  word=name[2:];assert word in ['AEF','CGH','ABE','CDG','BEF','DGH','ABF','CDH']
  return add(const(F(69,100)),scale(polygon(word)[1],-1))
 if name.startswith('C_'):
  _,word,count=name.split('_');count=int(count)
  ids,W=polygon(word)
  assert len(members(word,case))>=count,(case,name,members(word,case))
  threshold=(F(3) if count==1 else F(149,20)) if len(ids)==3 else (F(24,5) if count==1 else F(8))
  return add(W,const(-threshold*s))
 if name.startswith('R_'):
  _,word,diag=name.split('_');ids,W=polygon(word)
  assert len(ids)==4 and members(word,case)==[8,9],(case,name)
  for i,j in [(ids[0],ids[2]),(ids[1],ids[3])]:
   assert get(known,(i,j,8))*get(known,(i,j,9))==-1,(case,name,i,j)
  i,j=[LABELS.index(ch) for ch in diag]
  assert (i,j) in [(ids[0],ids[2]),(ids[1],ids[3])]
  si=1 if i>=4 else -1;sj=1 if j>=4 else -1
  assert si!=sj,(case,name)
  gap=scale(add(det(j,8,9),scale(det(i,8,9),-1)),F(sj-si,2))
  return add(W,scale(gap,-1),const(-F(29,5)*s))
 assert len(name)==4 and name[-1] in '+-',name
 tri=tuple(LABELS.index(ch) for ch in name[:3]);sgn=1 if name[-1]=='+' else -1
 assert get(known,tri)==sgn,(case,name)
 return add(scale(det(*tri),sgn),const(-s))

def monomial(ex,bounds):
 out=F(1)
 for z,k in zip(bounds,ex):out*=z**k
 return out
def upper(poly):return sum(c*monomial(e,high if c>0 else low) for e,c in poly.items())

def read_tables():
 doc=Path(__file__).with_name('N8_SIDE_OUTSIDE.md').read_text()
 pieces=re.split(r'(?m)^### Row ([DT][1-8]):',doc)
 result=[]
 for i in range(1,len(pieces),2):
  case,body=pieces[i],pieces[i+1]
  block=re.search(r'```text\n(.*?)\n```',body,re.S).group(1)
  terms=ast.literal_eval('['+','.join(block.splitlines())+']')
  bound=F(re.search(r'B\(W\)=(-?\d+/\d+)',body).group(1))
  result.append((case,terms,bound))
 assert [r[0] for r in result]==list(ROWS)
 return result

def main():
 total=0
 for case,terms,claimed in read_tables():
  assert all(isinstance(weight,int) and weight>0 for _,weight in terms)
  W=add(*(scale(factor(name,case),weight) for name,weight in terms))
  assert all(sum(e)<=3 for e in W)
  actual=upper(W)
  assert actual==claimed and actual<0,(case,actual,claimed)
  total+=len(terms)
  print(case,len(terms),'printed terms; exact bound',actual)
 print('All 13 outside-side rows verified;',total,'printed positive integer terms.')

if __name__=='__main__':main()
