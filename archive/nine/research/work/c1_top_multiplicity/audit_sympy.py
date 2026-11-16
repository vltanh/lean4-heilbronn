"""Independent symbolic reconstruction of top-multiplicity certificate algebra."""
from itertools import combinations,product
from functools import lru_cache
from fractions import Fraction
from pathlib import Path
import json,sys
import sympy as sp
names='h c d f xx xy yx yy lx ly px py'.split()
v=sp.symbols(' '.join(names));env=dict(zip(names,v));h,c,d,f,xx,xy,yx,yy,lx,ly,px,py=v
S=sp.Rational(8,73);rho=sp.Rational(49,60);env.update(s=S)
COMMON='h-3*s;c-3*s;1-h;1-c;d-s;f-s;h-d;c-f;d-f;lx-s;ly-s;c-lx-2*s;h-ly-2*s;1-s-lx-ly'
EXTRA={
'convex_two':'33/65-d;17/50-f;xx-f-8/65;xy-d-8/65;1-xx;1-xy;yx-f-8/65;yy-d-8/65;1-yx;1-yy;xx-yx-8/65;yy-xy-8/65;px-s;py-s;1-s-px;1-s-py',
'side_triangle':'d-4*s;41/65-d;3/7-f;6/7-c;xx-c-65*s/41;xy-7*s/6;d-xy-8/49;1-xx;yx-f-24/41;yy-d-24/65;1-yx;1-yy;px-f-8/41;py-d-8/65;1-s-px;1-s-py',
 'three_top':'204/715-d;13/64-f;xx-f-24/65;xy-d-24/65;1-xx;1-xy;yx-f-24/65;yy-d-24/65;1-yx;1-yy;xx-yx-8/65;yy-xy-8/65;px-f-8/65;py-d-8/65;1-s-px;1-s-py'}
fac={mode:[sp.Poly(sp.sympify(t,locals=env),v,domain=sp.QQ) for t in (COMMON+';'+ex).split(';')] for mode,ex in EXTRA.items()}
points={mode:[(0,0),(c,0),(1,d),(xx,xy),(yx,yy),(f,1),(0,h),(lx,ly),(px,py)] for mode in EXTRA}
points['side_triangle'][2],points['side_triangle'][3]=points['side_triangle'][3],points['side_triangle'][2]
triples=list(combinations(range(9),3))
words=[r for r in product(range(1,6),repeat=7) if all((j<=r[i])==(7-j>r[(i+j)%7]) for i in range(7) for j in range(1,7))]
def edge(r,i,j):return 1 if (j-i)%7<=r[i] else -1
def inset(r,t):return all(edge(r,t[i],t[(i+1)%3])==1 for i in range(3))
@lru_cache(None)
def lists(mode):
 lo=[w for w in words if inset(w,(0,1,6))]
 if mode=='convex_two':hi=[w for w in words if all(edge(w,i,j)==1 for i,j in [(6,1),(1,2),(2,5),(5,6)])]
 elif mode=='side_triangle':hi=[w for w in words if inset(w,(3,4,5))]
 else:hi=[w for w in words if inset(w,(2,3,5)) and inset(w,(2,4,5))]
 return lo,hi
@lru_cache(None)
def specs(mode,case,branch):
 lo,hi=lists(mode);rs=[lo[case[0]],hi[case[1]]];signs={}
 for t in triples:
  if t[-1]<7:signs[t]=1
  elif t[1]<7:signs[t]=edge(rs[t[-1]-7],t[0],t[1])
  elif rs[0][t[0]]!=rs[1][t[0]]:signs[t]=sp.sign(rs[1][t[0]]-rs[0][t[0]])
 if branch>=0:
  missing=[t for t in triples if t not in signs]
  assert branch<2**len(missing)
  signs.update({t:1 if branch&(1<<k) else -1 for k,t in enumerate(missing)})
 def oriented(t):
  key=tuple(sorted(t))
  if key not in signs:return 0
  sign=signs[key]
  for i in range(3):
   for j in range(i+1,3):
    if t[i]>t[j]:sign=-sign
  return sign
 out=[]
 for t in sorted(signs):
  count=0
  for q in (7,8):
   if q in t:continue
   if all(oriented((t[i],t[(i+1)%3],q))==signs[t] for i in range(3)):count+=1
  out.append((t,signs[t],[S,3*S,rho][count]))
 out.append(((),1,{'convex_two':4*S,'side_triangle':3*S,'three_top':sp.Rational(7,11)}[mode]))
 return out
@lru_cache(None)
def polynomial(mode,t,sg,bound,factor):
 if t:
  p,q,r=[points[mode][i] for i in t]
  a=sp.det(sp.Matrix([[1,*p],[1,*q],[1,*r]]))
 else:a=(1-d)*(1-f)
 poly=sp.Poly(sg*a-bound,v,domain=sp.QQ)
 if factor!=-1:poly*=fac[mode][factor]
 return poly
@lru_cache(None)
def factor_poly(mode,indices):
 p=sp.Poly(1,v,domain=sp.QQ)
 for i in indices:p*=fac[mode][i]
 return p
modes=sys.argv[1:] or tuple(EXTRA)
for mode in modes:
 all_data=json.loads((Path(__file__).resolve().parents[4]/'proof'/'nine'/'c1_one_lower_top_multiplicity_certificates.json').read_text())
 data={'certificates':[cert for cert in all_data['certificates'] if cert['mode']==mode]};terms=0;worst=None
 for index,cert in enumerate(data['certificates']):
  ss=specs(mode,tuple(cert['case']),cert['branch']);p=sp.Poly(0,v,domain=sp.QQ)
  for term in cert['terms']:
   if term[0]=='f':q=factor_poly(mode,tuple(term[1]))
   else:
    t,sg,b=ss[term[1]];q=polynomial(mode,t,sg,b,term[2])
   p+=q.mul_ground(sp.Rational(term[-1],cert['scale']))
  bound=0
  for ex,coeff in p.terms():
   if not any(ex) or coeff>0:bound+=coeff
  assert str(bound)==cert['upper_bound'],(mode,index,bound,cert['upper_bound'])
  assert bound<=-sp.Rational(3,4)
  terms+=len(cert['terms']);worst=bound if worst is None else max(worst,bound)
 print('INDEPENDENT PASS',mode,len(data['certificates']),'certificates',terms,'terms','largest upper',worst,flush=True)
