"""Verify the literal HEF-occupied table and uniform central AEF ceilings."""
from pathlib import Path
from fractions import Fraction as F
from itertools import product
import re
import sympy as sp
import N7_CENTRAL_COMPLETION_HCE_CAP_check as HCE
HERE=Path(__file__).resolve().parent
S=F(93,1000);J=F(4427,500)*S;B0=F(2911,500)*S

def identities():
 a,e,f,h,a0,e0,f0=sp.symbols('a e f h a0 e0 f0')
 HEF=(1)*(1-h)-(e-h)*f
 AEF=1-a-f*(e-a)
 tests=[HEF-(1-h+f*(h-e)),1-a0-f0*(e0-a0)-AEF-(a-a0)*(1-f)-f*(e-e0)-(f-f0)*(e0-a0)]
 assert all(sp.expand(q)==0 for q in tests)
 return HCE.identities()+len(tests)

def read_rows():
 rows=[]
 for line in (HERE/'N7_CENTRAL_COMPLETION_GLOBAL_AEF_CAP.md').read_text().splitlines():
  if not re.match(r'^\| (CA|CB)\d+ \|',line):continue
  p=[q.strip()for q in line.split('|')[1:-1]];assert len(p)==9
  def interval(q):
   assert q[0]=='['and q[-1]==']';z=q[1:-1].split(',');assert len(z)==2;return tuple(map(F,z))
  row={'id':p[0],'c':interval(p[1]),'h':interval(p[2])}
  if p[3]=='--':
   assert p[3:8]==['--']*5 and p[8].startswith('M=')and p[8].endswith('<B0')
   row.update(kind='empty',maximum=F(p[8][2:-3]))
  else:row.update(kind='cap',**dict(zip(('ratio','a','b','e','f','upper'),map(F,p[3:]))))
  rows.append(row)
 assert len(rows)==16 and len({r['id']for r in rows})==16
 return rows

def main():
 rows=read_rows();coverage=0;empty=0
 for cell,n in(('CA',6),('CB',10)):
  group=[r for r in rows if r['id'].startswith(cell)];assert {r['id']for r in group}=={cell+str(i+1)for i in range(n)}
  for r in group:
   cl,cu=r['c'];hl,hu=r['h'];M=cu*hu
   assert F(541,1000)<=cl<cu<=F(883,1000)and F(613,1000)<=hl<hu<=1
   if r['kind']=='empty':assert r['maximum']==M<B0;empty+=1;continue
   ratio=r['ratio'];a0,b0,e0,f0,U=(r[k]for k in('a','b','e','f','upper'))
   assert 0<ratio<F(1,2)and M*(1-2*ratio)>=S and M*ratio*(1-ratio)<S*(1+ratio)
   if cell=='CA':assert F(139,1000)<=a0<=max(F(139,1000),hl*ratio)and b0==F(108,1000)
   else:assert a0==F(122,1000)and F(123,1000)<=b0<=max(F(123,1000),cl*ratio)
   assert 0<b0<1 and a0<=e0<=max(4*S/(1-b0),F(3,25)+S/(1-cl),a0)
   if hl+3*S>1:assert hu>e0 and b0<=f0<=max(b0,(hl+3*S-1)/(hu-e0))
   else:assert f0==b0
   assert U>=1-a0-f0*(e0-a0)and U<J
  cx=sorted({q for r in group for q in r['c']});hx=sorted({q for r in group for q in r['h']})
  assert(cx[0],cx[-1],hx[0],hx[-1])==(F(541,1000),F(883,1000),F(613,1000),F(1))
  for(cl,cu),(hl,hu)in product(zip(cx,cx[1:]),zip(hx,hx[1:])):
   cm,hm=(cl+cu)/2,(hl+hu)/2;assert sum(r['c'][0]<=cm<=r['c'][1]and r['h'][0]<=hm<=r['h'][1]for r in group)==1;coverage+=1
  maximum=max(r.get('upper',F(0))for r in group);globalcap=F(814603,1000000)if cell=='CA'else F(164637,200000)
  assert maximum==(F(203589,250000)if cell=='CA'else F(163679,200000))and maximum<globalcap<J
  print(cell,len(group),'rectangles; HEF-occupied AEF <=',maximum,'; gap',J-maximum,'; uniform AEF <=',globalcap)
 assert empty==1
 print('PASS:',identities(),'identities;',len(rows),'literal rows;',coverage,'coverage atoms;',empty,'empty rectangle')

if __name__=='__main__':main()
