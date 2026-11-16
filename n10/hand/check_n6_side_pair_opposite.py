"""Exact standard-library replay of the nine-point side-pair contradiction."""
from pathlib import Path
from fractions import Fraction as F
from collections import defaultdict
from functools import lru_cache
import re
S=F(93,1000);K=F(149,20);ALPHA=F(1037,10000)
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
def determinant(A,B,C):return sub(mul(sub(B[0],A[0]),sub(C[1],A[1])),mul(sub(B[1],A[1]),sub(C[0],A[0])))
def read():
 text=Path(__file__).with_name('N6_SIDE_PAIR_OPPOSITE.md').read_text()
 box=[line.split() for line in re.search(r'```n6-pair-opposite-box\n(.*?)```',text,re.S)[1].strip().splitlines()]
 assert [row[0] for row in box]=='a b c e f h u v j k'.split()
 bounds=[(F(row[1]),F(row[2])) for row in box]
 e0=K*S/(1-ALPHA);f0=4*S/(1-ALPHA);m0=S/(1-ALPHA)
 expected=[(ALPHA,1-S),(ALPHA,1-S),(f0,1-3*S/(1-S)),(e0,1-S),(f0,1-S),(e0,1-S/(1-S)),(f0+S,1),(m0,1),(m0,1),(e0+S,1)]
 assert bounds==expected and ALPHA*(1-ALPHA)<S
 entries=[line.split() for line in re.search(r'```n6-pair-opposite-sum\n(.*?)```',text,re.S)[1].strip().splitlines()]
 terms=[(int(weight),word) for weight,word in entries]
 assert len(terms)==71 and 0<min(w for w,_ in terms)<=max(w for w,_ in terms)==660
 return bounds,terms

def factors(bounds):
 vv=list(map(var,range(10)));a,b,c,e,f,h,u,v,j,k=vv;one=const(1)
 P={'A':({},a),'B':(b,{}),'C':(c,{}),'E':(one,e),'F':(f,one),'H':({},h),'Q':(u,v),'S':(j,k)}
 D=lambda word:determinant(*(P[ch] for ch in word))
 common={'ha':sub(h,a),'ea':sub(e,a),'he':sub(h,e),'fb':sub(f,b),'cf':sub(c,f),
 'Right_support':add(mul(e,sub(one,b)),const(-K*S)),
 'Left_support':add(mul(f,sub(one,a)),const(-4*S)),
 'up_Q':add(u,v,const(-5*S)),'up_S':add(j,k,const(-5*S)),
 'right_x_Q':add(u,scale(c,-1),const(-3*S)),
 'right_y_Q':add(e,scale(v,-1),const(-3*S)),
 'right_px_Q':add(mul(e,sub(u,c)),const(-3*S)),
 'right_py_Q':add(mul(sub(one,c),sub(e,v)),const(-3*S)),
 'left_x_S':add(f,scale(j,-1),const(-S)),
 'left_y_S':add(k,scale(h,-1),const(-S)),
 'left_px_S':add(mul(sub(one,h),sub(f,j)),const(-S)),
 'left_py_S':add(mul(f,sub(k,h)),const(-S)),
 'C_CEQ_1':add(scale(D('CEQ'),-1),const(-3*S)),
 'Q_BCQE_1':add(D('BCQ'),D('BQE'),const(-F(24,5)*S))}
 @lru_cache(None)
 def atom(name):
  if name in common:return common[name]
  if re.fullmatch(r'L\d+',name):
   i=int(name[1:]);assert i<20
   return sub(vv[i//2],const(bounds[i//2][0])) if i%2==0 else sub(const(bounds[i//2][1]),vv[i//2])
  if name.startswith('T_'):
   assert name in ['T_ABC+','T_ABH+','T_AHS-','T_BCQ+','T_FHS-','T_BCF+']
   return add(scale(D(name[2:5]),1 if name[-1]=='+' else -1),const(-S))
  assert name in ['F5_CEFSB_X','F5_SBCQE_X']
  A,B,C,Dd,E=name.split('_')[1]
  return add(D(A+Dd+E),scale(sub(D(A+B+E),D(A+B+Dd)),-11*S))
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
 bounds,terms=read();atom=factors(bounds);W={}
 for weight,word in terms:
  poly=const(weight)
  for name in word.split('*'):poly=mul(poly,atom(name))
  assert max(map(len,poly),default=0)<=3
  W=add(W,poly)
 result=upper(W,bounds)
 assert result==F(-15204842926825328247858740588434993,5372569601199369131210000000000000)<0
 print('PASS: nine-point side-pair/opposite-cap theorem, all 71 fixed cubic terms; exact upper bound',result)
if __name__=='__main__':main()
