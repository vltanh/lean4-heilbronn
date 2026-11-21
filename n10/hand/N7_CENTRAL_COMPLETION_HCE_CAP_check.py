"""Read and verify the fourteen literal HCE-cap rows with exact arithmetic."""
from pathlib import Path
from fractions import Fraction as F
from itertools import product
import re
import sympy as sp
HERE=Path(__file__).resolve().parent
S=F(93,1000);T=F(149,20)*S;J=F(4427,500)*S

def identities():
 a,b,c,d,e,f,g,h,z,x,y,u,v,s,R,cl,hu,a0,b0,e0=sp.symbols('a b c d e f g h z x y u v s R cl hu a0 b0 e0')
 points={'A':(0,a),'B':(b,0),'C':(c,0),'D':(1,d),'E':(1,e),'F':(f,1),'G':(g,z),'H':(0,h),'O':(x,y),'P':(u,v)}
 def det(word):
  A,B,C=[points[q]for q in word]
  return (B[0]-A[0])*(C[1]-A[1])-(B[1]-A[1])*(C[0]-A[0])
 tests=[det('HCE')-(h-c*(h-e)),det('CDE')-(1-c)*(e-d),det('AEF')-(1-a-f*(e-a))]
 phi=h*c*R*(1-R)-s*(1+R)
 tests+=[(c*a*(h-a)-s*(h+a)).subs(a,R*h)-h*phi,(h*b*(c-b)-s*(c+b)).subs(b,R*c)-c*phi]
 TT=sp.symbols('T')
 E=lambda q,r:q-(q-TT)/r
 tests.append(E(h,c)-E(hu,cl)-(h-TT)*(c-cl)/(c*cl)-(hu-h)*(1-cl)/cl)
 tests.append(1-a0-b0*(e0-a0)-det('AEF')-(a-a0)*(1-f)-f*(e-e0)-(f-b0)*(e0-a0))
 assert all(sp.cancel(q)==0 for q in tests)
 return len(tests)

def read_rows():
 text=(HERE/'N7_CENTRAL_COMPLETION_HCE_CAP.md').read_text();rows=[]
 def num(q):return T if q.strip()=='T'else F(q.strip())
 def interval(q):
  assert q[0]=='['and q[-1]==']'
  z=q[1:-1].split(',');assert len(z)==2;return tuple(map(num,z))
 for line in text.splitlines():
  if not re.match(r'^\| (CA|CB)\d+ \|',line):continue
  parts=[q.strip()for q in line.split('|')[1:-1]];assert len(parts)==8
  rows.append({'id':parts[0],'c':interval(parts[1]),'h':interval(parts[2]),**dict(zip(('ratio','a','b','e','upper'),map(num,parts[3:])))})
 assert len(rows)==14 and len({r['id']for r in rows})==14
 return rows

def main():
 rows=read_rows();coverage=0
 for cell,n in(('CA',3),('CB',11)):
  group=[r for r in rows if r['id'].startswith(cell)]
  assert {r['id']for r in group}=={cell+str(i+1)for i in range(n)}
  for r in group:
   cl,cu=r['c'];hl,hu=r['h'];ratio=r['ratio'];a0,b0,e0,U=(r[k]for k in('a','b','e','upper'))
   assert F(541,1000)<=cl<cu<=F(883,1000)and T<=hl<hu<=1
   M=cu*hu;assert 0<ratio<F(1,2)and M*(1-2*ratio)>=S and M*ratio*(1-ratio)<S*(1+ratio)
   if cell=='CA':assert F(139,1000)<=a0<=max(F(139,1000),hl*ratio)and b0==F(108,1000)
   else:assert a0==F(122,1000)and F(123,1000)<=b0<=max(F(123,1000),cl*ratio)
   assert 0<b0<1 and a0<=e0<=max(4*S/(1-b0),F(3,25)+S/(1-cl),hu-(hu-T)/cl,a0)
   assert U>=1-a0-b0*(e0-a0)and U<J
  cx=sorted({q for r in group for q in r['c']});hx=sorted({q for r in group for q in r['h']})
  assert(cx[0],cx[-1],hx[0],hx[-1])==(F(541,1000),F(883,1000),T,F(1))
  for (cl,cu),(hl,hu)in product(zip(cx,cx[1:]),zip(hx,hx[1:])):
   cm,hm=(cl+cu)/2,(hl+hu)/2
   assert sum(r['c'][0]<=cm<=r['c'][1]and r['h'][0]<=hm<=r['h'][1]for r in group)==1
   coverage+=1
  largest=max(r['upper']for r in group);assert largest==(F(814603,1000000)if cell=='CA'else F(164637,200000))
  print(cell,len(group),'rectangles; AEF <=',largest,'; gap',J-largest)
 print('PASS:',identities(),'actual algebra identities;',len(rows),'literal rows;',coverage,'coverage atoms')

if __name__=='__main__':main()
