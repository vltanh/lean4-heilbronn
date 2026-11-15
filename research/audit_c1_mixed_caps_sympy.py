"""Independent SymPy expansion of the complete mixed-cap C1 proof."""
from pathlib import Path
from itertools import product,combinations
from functools import lru_cache
import sympy as S,json
root=Path(__file__).resolve().parents[1]/'hand'
data=json.loads((root/'c1_one_lower_mixed_caps_certificates.json').read_text())
zz=S.symbols('h c d f x0 y0 x1 y1 x2 y2 x3 y3');h,c,d,f=zz[:4];xy=list(zip(zz[4::2],zz[5::2]))
s,rho=S.Rational(8,73),S.Rational(49,60)
P=[(0,0),(c,0),(1,d),(f,1),(0,h)]+xy
triples=list(combinations(range(9),3))
def poly(e):return S.Poly(e,*zz,domain=S.QQ)
def det(t):
 a,b,c0=[P[i]for i in t]
 return(b[0]-a[0])*(c0[1]-a[1])-(b[1]-a[1])*(c0[0]-a[0])
areas={t:poly(det(t))for t in triples}
sg=lambda w,i,j:1 if(j-i)%5<=w[i]else-1
inside=lambda w,t:all(sg(w,t[k],t[(k+1)%3])>0 for k in range(3))
allw=[w for w in product(range(5),repeat=5)if all(sg(w,i,(i+j)%5)==-sg(w,(i+j)%5,i)for i in range(5)for j in range(1,5))]
low=[w for w in allw if inside(w,(0,1,4))]
up=[w for w in allw if all(sg(w,i,j)>0 for i,j in[(4,1),(1,2),(2,3),(3,4)])]
caps={'r':(1,0,4,3,2),'t':(2,1,0,4,3),'l':(3,2,1,0,4)}
assert len(allw)==16 and len(low)==3 and len(up)==8
def words(case):
 k,i,j=case
 return[caps[v]for v in k]+[low[i],up[j]]
cases=[]
for kind in('rt','rl','tl'):
 for li in range(3):
  for qi in range(8):
   ws=words((kind,li,qi))
   if any(sum(w[0]==j for w in ws)>2 for j in(1,3)):continue
   if sum(inside(w,(0,3,4))for w in ws)>1:continue
   cases.append((kind,li,qi))
assert len(cases)==62 and [sum(ca[0]==k for ca in cases)for k in('rt','rl','tl')]==[20,20,22]
assert data['variables']==[str(v)for v in zz]and data['vertices']==['O','C','D','F','H','X','Y','L','Q']
def factors(case,extra):
 k=case[0];ff=[h-3*s,c-3*s,1-h,1-c,d-s,1-s-d,f-s,1-s-f,h-d,c-f,d-f,d-4*s]
 if't'in k:ff +=[S.Rational(67,100)-f,S.Rational(57,65)-d]
 if'r'in k:ff +=[c-S.Rational(1,7),S.Rational(6,7)-c]
 if'l'in k:ff +=[f-4*s,h-S.Rational(1,7),S.Rational(6,7)-h]
 for cat,(x,y)in zip(k,xy[:2]):
  ff +=[x-s,y-s]
  if cat=='r':ff +=[1-x,d-y-S.Rational(8,41 if k=='rl'else 49),x-c-S.Rational(8,65),y-7*s/6]
  elif cat=='t':ff +=[1-x,1-y,x-f-S.Rational(8,41),y-d-S.Rational(8,41 if k=='tl'else 65)]
  else:ff +=[f-x-S.Rational(8,41),1-y,y-h-S.Rational(8,65),x-7*s/6]
 lx,ly=xy[2];qx,qy=xy[3]
 ff +=[lx-s,ly-s,c-lx-2*s,h-ly-2*s,1-s-lx-ly,qx-s,qy-s,1-s-qx,1-s-qy]
 for item in extra:
  if item=='double_od':
   assert all(inside(w,(0,2,4))and inside(w,(0,2,3))for w in words(case)[2:])
   ff +=[h-rho,S.Rational(803,1920)-f]
  else:
   vi,n,d0,sign=item;assert type(vi)is int and 0<=vi<12 and d0>0 and sign in(-1,1)
   ff +=[sign*(zz[vi]-S.Rational(n,d0))]
 return[poly(e)for e in ff]
def signs(case,extra=()):
 ws=words(case);ss={}
 for t in triples:
  if t[2]<5:ss[t]=1
  elif t[1]<5:ss[t]=sg(ws[t[2]-5],t[0],t[1])
 for a,b in combinations(range(4),2):
  for v in range(5):
   if ws[a][v]!=ws[b][v]:ss[(v,a+5,b+5)]=1 if ws[a][v]<ws[b][v]else-1
 assert all(ss[(v,5,6)]==1 for v in(0,1,4));ss[(5,6,7)]=1
 for tr,sign in extra:
  assert tr in areas and sign in(-1,1)and(tr not in ss or ss[tr]==sign)
  ss[tr]=sign
 return ss
def orient(ss,tr):
 v=ss.get(tuple(sorted(tr)))
 return None if v is None else v*(-1)**sum(tr[i]>tr[j]for i in range(3)for j in range(i+1,3))
def specs(case,extra):
 ss=signs(case,extra);out=[]
 for t,sign in ss.items():
  count=sum(all(orient(ss,(t[k],t[(k+1)%3],j))==sign for k in range(3))for j in range(5,9)if j not in t)
  if count>2:return None
  out.append((t,sign,(s,3*s,rho)[count]))
 return out
def costs(case,extra):
 k=case[0]
 qq=[poly(h*c-3*s),poly(1-(h-d)*(c-f)-4*s),poly(1-4*s)-areas[(2,3,4)],poly(S.Rational(36,49)if k=='rl'else S.Rational(67,100))-areas[(0,3,4)]]
 if'l'in k:qq +=[poly(1-4*s)-areas[(1,2,3)]]
 if't'in k:
  v=5+k.index('t');qq +=[poly(1-7*s/3)-areas[(1,2,v)],poly(1-7*s/3)-areas[(3,4,v)]]
 spec=specs(case,extra);assert spec is not None
 qq +=[sign*areas[t]-poly(bound)for t,sign,bound in spec]
 cc=[]
 if'r'in k:cc.append(poly(d*c*(1-c)-s))
 if'l'in k:cc.append(poly(f*h*(1-h)-s))
 return qq,cc
certs=data['certificates'];count=0;bounds=[]
for no,cert in enumerate(certs):
 case=tuple(cert['case']);assert case in cases
 extra=[(tuple(t),sign)for t,sign in cert.get('additional',[])];ff=factors(case,cert.get('extra',[]));qq,cc=costs(case,extra)
 den=cert['scale'];assert type(den)is int and den>0
 result=poly(0);cache={}
 for row in cert['terms']:
  if row[0]=='f':
   _,ii,weight=row;assert 1<=len(ii)<=3 and ii==sorted(ii)and all(type(i)is int and 0<=i<len(ff)for i in ii)
   key=tuple(ii)
   if key not in cache:
    term=poly(1)
    for i in ii:term*=ff[i]
    cache[key]=term
   term=cache[key]
  elif row[0]=='q':
   _,qi,fi,weight=row;assert type(qi)is int and 0<=qi<len(qq)and type(fi)is int and -1<=fi<len(ff)
   term=qq[qi]if fi==-1 else qq[qi]*ff[fi]
  else:
   assert row[0]=='c';_,ci,weight=row;assert type(ci)is int and 0<=ci<len(cc);term=cc[ci]
  assert type(weight)is int and weight>0;result+=S.Rational(weight,den)*term
 assert result.total_degree()<=3
 bound=result.coeff_monomial(1)+sum(co for pw,co in result.terms()if any(pw)and co>0)
 assert bound==S.Rational(cert['upper_bound'])and bound<-S.Rational(3,4)
 count+=len(cert['terms']);bounds.append(bound);print(no,len(cert['terms']),bound,flush=True)
def cyclic(case,extra):
 ss=signs(case,extra);hull={'rt':[0,1,5,2,6,3,4],'rl':[0,1,5,2,3,6,4],'tl':[0,1,2,5,3,6,4]}[case[0]]
 for a,b in combinations(range(9),2):
  seq=[orient(ss,(a,b,v))for v in hull if v not in(a,b)];seq=[v for v in seq if v is not None]
  if seq and sum(seq[i]!=seq[(i+1)%len(seq)]for i in range(len(seq)))>2:return False
 return True
seen=set();used=set();leaves=0;cut_count=0
for cover in data['cover']:
 case=tuple(cover['case']);assert case in cases and case not in seen;seen.add(case)
 nodes=cover['nodes'];visited=set();base=cover.get('extra',[]);assert base in([],['double_od']);factors(case,base)
 def walk(i,extra,interval):
  global leaves,cut_count
  assert type(i)is int and 0<=i<len(nodes)and i not in visited;visited.add(i);node=nodes[i]
  if'split'in node:
   tr=tuple(node['split']);assert tr in areas and tr not in signs(case,extra)and len(node['children'])==2
   for child,sign in zip(node['children'],(-1,1)):walk(child,extra+[(tr,sign)],interval)
  elif'cut'in node:
   cut_count+=1;vi,n,d0=node['cut'];assert(vi,n,d0)==(10,5,8)and len(node['children'])==2
   for child,sign in zip(node['children'],(-1,1)):walk(child,extra,interval+[[vi,n,d0,sign]])
  elif'certificate'in node:
   ci=node['certificate'];assert type(ci)is int and 0<=ci<len(certs);cert=certs[ci]
   assert tuple(cert['case'])==case and cert.get('additional',[])==[[list(t),sg]for t,sg in extra]and cert.get('extra',[])==interval
   used.add(ci);leaves+=1
  elif node.get('capacity'):assert specs(case,extra)is None;leaves+=1
  else:assert node=={'inconsistent':True}and not cyclic(case,extra);leaves+=1
 walk(0,[],base);assert visited==set(range(len(nodes)))
assert seen==set(cases)and used==set(range(134))and len(certs)==134 and count==20543 and leaves==136 and cut_count==1
assert max(bounds)==-S.Rational(14173057434018160863047671,14173058272635861860352000)
print('INDEPENDENT SYMPY PASS:62 word cases,136 leaves,134 certificates,20543 terms,one Qx=5/8 cut; worst',max(bounds),flush=True)
