"""Independent cover reconstruction and SymPy-ring expansion of remote mixed caps."""
from pathlib import Path
from itertools import combinations,product
from functools import lru_cache
from fractions import Fraction
import json,sys
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
ROOT=Path(__file__).resolve().parents[1]
data=json.loads((ROOT/'hand/c1_one_lower_mixed_caps_certificates.json').read_text())
R,*v=ring(data['variables'],QQ)
h,c,d,f,xx,xy,yx,yy,lx,ly,qx,qy=v
z,o=R.zero,R.one;s=QQ(8,73);rho=QQ(49,60)
pts=[(z,z),(c,z),(o,d),(f,o),(z,h),(xx,xy),(yx,yy),(lx,ly),(qx,qy)]
triples=list(combinations(range(9),3))
def det(t):
 a,b,c0=[pts[i] for i in t]
 return (b[0]-a[0])*(c0[1]-a[1])-(b[1]-a[1])*(c0[0]-a[0])
A={t:det(t) for t in triples}
AW=[w for w in product(range(5),repeat=5) if all((j<=w[i])==(5-j>w[(i+j)%5]) for i in range(5) for j in range(1,5))]
def pos(w,i,j):return (j-i)%5<=w[i]
def inside(w,t):return all(pos(w,t[i],t[(i+1)%3]) for i in range(3))
LW=[w for w in AW if inside(w,(0,1,4))]
UW=[w for w in AW if pos(w,4,1) and all(pos(w,i,(i+1)%5) for i in range(5))]
CW={'r':(1,0,4,3,2),'t':(2,1,0,4,3),'l':(3,2,1,0,4)}
def words(case):
 mode,li,ui=case
 return [CW[k] for k in mode]+[LW[li],UW[ui]]
def initial():
 out=[]
 for mode in ('rt','rl','tl'):
  for li in range(3):
   for ui in range(8):
    ca=(mode,li,ui);ww=words(ca)
    if sum(w[0]==1 for w in ww)>2:continue
    if sum(inside(w,(0,3,4)) for w in ww)>1:continue
    out.append(ca)
 return out
EXPECTED=set(initial());assert len(AW)==16 and len(LW)==3 and len(UW)==8 and len(EXPECTED)==62
def signs(case,extra):
 ww=words(case);out={}
 for t in triples:
  if t[2]<5:out[t]=1
  elif t[1]<5:out[t]=1 if pos(ww[t[2]-5],t[0],t[1]) else -1
 for a,b in combinations(range(4),2):
  for i in range(5):
   if ww[a][i]!=ww[b][i]:out[(i,a+5,b+5)]=1 if ww[a][i]<ww[b][i] else -1
 assert all(out[(i,5,6)]==1 for i in (0,1,4))
 out[(5,6,7)]=1
 for t,sg in extra:
  t=tuple(t);assert t in triples and sg in (-1,1) and (t not in out or out[t]==sg)
  out[t]=sg
 return out
def oriented(sg,t):
 p=sg.get(tuple(sorted(t)))
 if p is None:return None
 inv=sum(t[i]>t[j] for i in range(3) for j in range(i+1,3))
 return p*(-1 if inv%2 else 1)
def specs(case,extra):
 sg=signs(case,extra);out=[]
 for t,ss in sg.items():
  n=sum(all(oriented(sg,(t[i],t[(i+1)%3],j))==ss for i in range(3)) for j in range(5,9) if j not in t)
  if n>2:return None
  out.append((t,ss,[s,3*s,rho][n]))
 return out

def factors(case,extra):
 mode=case[0]
 a=[h-3*s,c-3*s,1-h,1-c,d-s,1-s-d,f-s,1-s-f,h-d,c-f,d-f,d-4*s]
 if 't' in mode:a += [QQ(67,100)-f,QQ(57,65)-d]
 if 'r' in mode:a += [c-QQ(1,7),QQ(6,7)-c]
 if 'l' in mode:a += [f-4*s,h-QQ(1,7),QQ(6,7)-h]
 for cap,(x,y) in zip(mode,pts[5:7]):
  a += [x-s,y-s]
  if cap=='r':a += [1-x,d-y-QQ(8,41 if mode=='rl' else 49),x-c-QQ(8,65),y-7*s/6]
  elif cap=='t':a += [1-x,1-y,x-f-QQ(8,41),y-d-QQ(8,41 if mode=='tl' else 65)]
  else:a += [f-x-QQ(8,41),1-y,y-h-QQ(8,65),x-7*s/6]
 a += [lx-s,ly-s,c-lx-2*s,h-ly-2*s,1-lx-ly-s,qx-s,qy-s,1-s-qx,1-s-qy]
 for e in extra:
  if e=='double_od':
   assert all(inside(w,(0,2,4)) and inside(w,(0,2,3)) for w in words(case)[2:])
   a += [h-rho,QQ(803,1920)-f]
  else:
   i,n,de,sg=e;a += [sg*(v[i]-QQ(n,de))]
 return a

def costs(case,extra):
 mode=case[0]
 q=[h*c-3*s,1-(h-d)*(c-f)-4*s,1-4*s-A[(2,3,4)],QQ(36,49)-A[(0,3,4)] if mode=='rl' else QQ(67,100)-A[(0,3,4)]]
 if 'l' in mode:q += [1-4*s-A[(1,2,3)]]
 if 't' in mode:
  i=5+mode.index('t');q += [1-7*s/3-A[(1,2,i)],1-7*s/3-A[(3,4,i)]]
 sp=specs(case,extra);assert sp is not None
 return q+[sg*A[t]-b for t,sg,b in sp]

covered=set();used=set();leaves=0;cuts=[]
for co in data['cover']:
 case=tuple(co['case']);assert case in EXPECTED and case not in covered;covered.add(case)
 nodes=co['nodes'];seen=set();base=co.get('extra',[]);assert base in ([],['double_od'])
 if base:factors(case,base)
 def visit(i,ad,ex):
  global leaves
  assert type(i) is int and 0<=i<len(nodes) and i not in seen;seen.add(i);nd=nodes[i]
  if 'split' in nd:
   t=tuple(nd['split']);assert t in A and t not in signs(case,ad) and len(nd['children'])==2
   for ch,sg in zip(nd['children'],[-1,1]):visit(ch,ad+[(t,sg)],ex)
  elif 'cut' in nd:
   ci,n,de=nd['cut'];assert type(ci) is int and 0<=ci<12 and type(n) is int and type(de) is int and 0<n<de and len(nd['children'])==2
   cuts.append((case,ci,n,de))
   for ch,sg in zip(nd['children'],[-1,1]):visit(ch,ad,ex+[[ci,n,de,sg]])
  elif 'certificate' in nd:
   j=nd['certificate'];assert type(j) is int and 0<=j<len(data['certificates']);ce=data['certificates'][j]
   assert tuple(ce['case'])==case and ce.get('additional',[])==[[list(t),sg] for t,sg in ad] and ce.get('extra',[])==ex
   used.add(j);leaves+=1
  elif nd.get('capacity'):
   assert specs(case,ad) is None;leaves+=1
  else:
   assert nd=={'inconsistent':True};ss=signs(case,ad);hull={'rt':[0,1,5,2,6,3,4],'rl':[0,1,5,2,3,6,4],'tl':[0,1,2,5,3,6,4]}[case[0]]
   bad=False
   for a,b in combinations(range(9),2):
    seq=[oriented(ss,(a,b,i)) for i in hull if i not in (a,b)];seq=[x for x in seq if x is not None]
    if seq and sum(seq[j]!=seq[(j+1)%len(seq)] for j in range(len(seq)))>2:bad=True
   assert bad;leaves+=1
 visit(0,[],base);assert seen==set(range(len(nodes)))
assert covered==EXPECTED and used==set(range(len(data['certificates'])))
nt=0;worst=None
for cert in data['certificates']:
 case=tuple(cert['case']);fac=factors(case,cert.get('extra',[]));qs=costs(case,cert.get('additional',[]));cs=[]
 if 'r' in case[0]:cs.append(d*c*(1-c)-s)
 if 'l' in case[0]:cs.append(f*h*(1-h)-s)
 p=z
 for term in cert['terms']:
  if term[0]=='f':
   _,ii,w=term;assert ii==sorted(ii) and 1<=len(ii)<=3;pp=o
   for i in ii:assert type(i) is int and 0<=i<len(fac);pp*=fac[i]
  elif term[0]=='q':
   _,qi,fi,w=term;assert type(qi) is int and 0<=qi<len(qs) and type(fi) is int and -1<=fi<len(fac);pp=qs[qi]
   if fi>=0:pp*=fac[fi]
  else:
   assert term[0]=='c';_,ci,w=term;assert type(ci) is int and 0<=ci<len(cs);pp=cs[ci]
  assert type(w) is int and w>0 and type(cert['scale']) is int and cert['scale']>0
  p+=QQ(w,cert['scale'])*pp;nt+=1
 assert all(sum(e)<=3 for e in p)
 bound=p.get((0,)*12,QQ(0))+sum(max(co,QQ(0)) for e,co in p.items() if any(e))
 assert str(bound)==cert['upper_bound'] and bound<-QQ(3,4)
 worst=bound if worst is None else max(worst,bound)
assert len(data['certificates'])==134 and nt==20543 and leaves==136 and len(cuts)==1
assert cuts[0]==(('rt',1,3),10,5,8)
print('PASS independent complete reconstruction:',len(covered),'word pairs,',leaves,'leaves,',len(data['certificates']),'certificates,',nt,'positive terms; largest bound',worst)
print('Only scalar branch:',cuts[0])
