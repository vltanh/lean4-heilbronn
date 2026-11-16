"""Exact manuscript replay for the complete N6 lower/side-pair/top count."""
from pathlib import Path
from fractions import Fraction as F
from collections import defaultdict
from itertools import combinations
from functools import lru_cache
import re

S=F(93,1000);K=F(149,20);ALPHA=F(1037,10000);BETA=F(1457,250);M=BETA*S
LABELS='ABCEFHPQRS';VARS='a b c e f h p q u v r w j k'.split()
def const(x):return {():F(x)} if x else {}
def var(i):return {(i,):F(1)}
def add(*polys):
 out=defaultdict(F)
 for poly in polys:
  for mon,co in poly.items():out[mon]+=co
 return {mon:co for mon,co in out.items() if co}
def scale(poly,co):return {mon:val*co for mon,val in poly.items() if val*co}
def sub(p,q):return add(p,scale(q,-1))
def mul(p,q):
 out=defaultdict(F)
 for mon,co in p.items():
  for nm,val in q.items():out[tuple(sorted(mon+nm))]+=co*val
 return {mon:co for mon,co in out.items() if co}
def det(A,B,C):return sub(mul(sub(B[0],A[0]),sub(C[1],A[1])),mul(sub(B[1],A[1]),sub(C[0],A[0])))
def canon(word):
 ids=[LABELS.index(ch) for ch in word];assert len(set(ids))==3
 return ''.join(sorted(word,key=LABELS.index)),(-1)**sum(ids[i]>ids[j] for i in range(3) for j in range(i+1,3))
def get(kn,word):
 key,sg=canon(word);return sg*kn.get(key,0)
def put(kn,word,sg):
 key,z=canon(word);sg*=z;assert key not in kn or kn[key]==sg
 kn[key]=sg
def inside(kn,hull,point):
 sg=get(kn,hull);return sg and point not in hull and all(get(kn,a+b+point)==sg for a,b in zip(hull,hull[1:]+hull[:1]))
def initial():
 kn={}
 for tri in combinations('ABCEFH',3):put(kn,''.join(tri),1)
 for T in 'PQRS':
  for aa,bb in zip('ABCEFH','BCEFHA'):
   put(kn,aa+bb+T,-1 if (T in 'QR' and aa+bb=='CE') or (T=='S' and aa+bb=='EF') else 1)
 for token in '-HCP +HCQ +HCR +HCS -HEQ -HER +HES -CFQ -CFR -CFS +ACP +HBP +HPQ +HPR +HPS -CPQ -CPR -CPS +CQR -EQR'.split():put(kn,token[1:],1 if token[0]=='+' else -1)
 return kn
def replay(kn,line):
 typ,word,target,value=line.split();assert typ=='plu';value=int(value)
 a,b,c,d,e=word;assert len(set(word))==5
 pairs=[(a+b+c,a+d+e,1),(a+b+d,a+c+e,-1),(a+b+e,a+c+d,1)]
 signs=[sg*get(kn,u)*get(kn,v) for u,v,sg in pairs]
 assert signs.count(0)==1 and len(set(z for z in signs if z))==1 and not get(kn,target)
 nxt=dict(kn);put(nxt,target,value)
 k=signs.index(0);u,v,sg=pairs[k]
 assert sg*get(nxt,u)*get(nxt,v)==-next(z for z in signs if z)
 put(kn,target,value)

def factors(bounds,kn,row):
 vv=list(map(var,range(14)));a,b,c,e,f,h,p,q,u,v,r,w,j,k=vv;one=const(1)
 pts=dict(zip(LABELS,[({},a),(b,{}),(c,{}),(one,e),(f,one),({},h),(p,q),(u,v),(r,w),(j,k)]))
 D=lambda word:det(*(pts[ch] for ch in word))
 common={'ha':sub(h,a),'ea':sub(e,a),'he':sub(h,e),'fb':sub(f,b),'cf':sub(c,f),
  'Vlow':add(mul(h,c),const(-M)),'TopCount':add(mul(sub(one,e),sub(one,f)),const(-S)),
  'Right_support':add(mul(e,sub(one,b)),const(-K*S)),
  'Order_ac':sub(mul(a,c),mul(b,h)),'Order_bh':sub(mul(b,h),mul(a,c)),
  'Central_bh':sub(mul(mul(h,b),sub(c,b)),scale(add(c,b),S))}
 for T in 'QRS':common['up_'+T]=add(*pts[T],const(-M-S))
 for T,cost in [('Q',3*S),('R',S)]:
  xx,yy=pts[T]
  common.update({'right_x_'+T:add(xx,scale(c,-1),const(-cost)),
   'right_y_'+T:add(e,scale(yy,-1),const(-cost)),
   'right_px_'+T:add(mul(e,sub(xx,c)),const(-cost)),
   'right_py_'+T:add(mul(sub(one,c),sub(e,yy)),const(-cost))})
 common.update({'top_x_S':add(j,scale(f,-1),const(-S)),
  'top_y_S':add(k,scale(e,-1),const(-S)),
  'top_px_S':add(mul(sub(one,e),sub(j,f)),const(-S)),
  'top_py_S':add(mul(sub(one,f),sub(k,e)),const(-S))})
 @lru_cache(None)
 def atom(name):
  if name.startswith('Order_'):assert name==('Order_ac' if row=='AC' else 'Order_bh')
  if name=='Central_bh':assert row=='BH'
  if name in common:return common[name]
  if re.fullmatch(r'L\d+',name):
   i=int(name[1:]);assert i<28
   return sub(vv[i//2],const(bounds[i//2][0])) if i%2==0 else sub(const(bounds[i//2][1]),vv[i//2])
  if name.startswith('T_'):
   sg=1 if name[-1]=='+' else -1;assert get(kn,name[2:5])==sg
   return add(scale(D(name[2:5]),sg),const(-S))
  if name in ['C_CEQ_1','C_ACH_1']:
   word=name[2:5];point='R' if word=='CEQ' else 'P';assert inside(kn,word,point)
   return add(scale(D(word),get(kn,word)),const(-3*S))
  assert name=='F5_PCQEH_X' and all(get(kn,''.join(tr))==1 for tr in combinations('PCQEH',3))
  return add(D('PEH'),scale(sub(D('PCH'),D('PCE')),-11*S))
 return atom

def upper(poly,bounds):
 shifted={}
 for mon,co in poly.items():
  term=const(co)
  for i in mon:term=mul(term,add(const(bounds[i][0]),var(i)))
  shifted=add(shifted,term)
 result=shifted.get((),F(0))
 for mon,co in shifted.items():
  if mon and co>0:
   for i in mon:co*=bounds[i][1]-bounds[i][0]
   result+=co
 return result

def main():
 text=Path(__file__).with_name('N6_ONE_LOWER_SIDE_PAIR_TOP.md').read_text()
 raw=[line.split() for line in re.search(r'```n6-lpt-box\n(.*?)```',text,re.S)[1].strip().splitlines()]
 assert [row[0] for row in raw]==VARS
 bounds=[(F(lo),F(hi)) for _,lo,hi in raw]
 U=1-S/(1-ALPHA);E0=K*S/(1-ALPHA);C1=1-3*S/U;m0=S/(1-ALPHA)
 expected=[(ALPHA,U),(ALPHA,U),(M,C1),(E0,U),(ALPHA,U),(E0,F(1)),(m0,F(1)),(m0,F(1)),(M+S,F(1)),(m0,F(1)),(M+S,F(1)),(m0,F(1)),(ALPHA+S,F(1)),(E0+S,F(1))]
 assert bounds==expected and ALPHA*(1-ALPHA)<S and F(707,500)**2<2
 assert K*S-(1-3*S/(1-S))==F(8299,18140000)>0
 trace=re.search(r'```n6-lpt-geometry\n(.*?)```',text,re.S)[1].strip().splitlines()
 assert len(trace)==38;kn=initial()
 for line in trace:replay(kn,line)
 counts=[]
 for sec in text.split('### Row ')[1:]:
  row=sec.splitlines()[0];assert row in ['AC','BH'];atom=factors(bounds,kn,row);total={}
  terms=re.search(r'```n6-lpt-sum\n(.*?)```',sec,re.S)[1].strip().splitlines()
  for line in terms:
   coefficient,word=line.split();coefficient=int(coefficient);assert coefficient>0
   poly=const(coefficient)
   for name in word.split('*'):poly=mul(poly,atom(name))
   assert max(map(len,poly),default=0)<=3;total=add(total,poly)
  bound=upper(total,bounds);expected=F(re.search(r'Upper bound: `([^`]+)`',sec)[1])
  assert bound==expected<0,(row,bound,expected)
  counts.append((row,len(terms)));print('PASS',row,len(terms),bound)
 assert counts==[('AC',109),('BH',75)]
 print('PASS: entire N6 lower/side-pair/top count; two cubics, 184 terms, 38 deductions and all factor premises')
if __name__=='__main__':main()
