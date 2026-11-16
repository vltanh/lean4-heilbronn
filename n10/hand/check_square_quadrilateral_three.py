"""Exact manuscript audit of SQUARE_QUADRILATERAL_THREE.md.

The earlier quadrilateral checker supplies elementary polynomial arithmetic,
coordinates, and the already printed sector/mesh sign rules.  This checker
reads every integer entry from the new manuscript and checks its stronger
mesh factors and rational bounds.  No discovery data or numerical package
is imported.
"""
from fractions import Fraction as F
from functools import lru_cache
from pathlib import Path
import re
import check_quadrilateral_three as q

q.s=F(91,1000)
q.ROWS={
 'S':('same','PQR',()),
 'A1':('adjacent','RPQ',()),
 'A2P':('adjacent','PRQ',('BPQ+',)),
 'A2M':('adjacent','PRQ',('BPQ-',)),
 'A3':('adjacent','PQR',()),
 'O':('opposite',None,()),
 'T1':('three',None,('APQ-',)),
 'T2':('three',None,('APQ+','BQR-')),
 'T3':('three',None,('APQ+','BQR+','CPQ+')),
 'T4':('three',None,('APQ+','BQR+','CPQ-')),
}
q.signs.cache_clear();q.factor.cache_clear()

@lru_cache(None)
def factor(name,row):
 if '*' in name:
  out=q.const(1)
  for part in name.split('*'):out=q.mul(out,factor(part,row))
  return out
 if name.startswith('S_'):
  _,word,chord=name.split('_');inside=q.members(word,row)
  assert len(inside)==2
  hull=[q.LABELS.index(ch) for ch in word];p0,p1=inside
  known=q.signs(row)[0]
  for i,j in [(hull[0],hull[2]),(hull[1],hull[3])]:
   assert q.get(known,(i,j,p0))*q.get(known,(i,j,p1))==-1
  i,j=[q.LABELS.index(ch) for ch in chord[:2]]
  assert (i,j) in [(hull[0],hull[2]),(hull[1],hull[3])]
  case=q.ROWS[row][0]
  gap=q.add(q.det(case,j,p0,p1),q.scale(q.det(case,i,p0,p1),-1))
  return q.add(q.polygon(word,row),q.const(-6*q.s),q.scale(gap,1 if chord[-1]=='+' else -1))
 if not name.startswith('M_'):return q.factor(name,row)
 case,xyz,tokens=q.ROWS[row]
 assert xyz is not None
 X,Y,Z=xyz
 if name=='M_connectors':
  faces=['A'+Y+Z,'C'+Z+X,'D'+X+Y]
  return q.add(*(q.polygon(word,row) for word in faces),q.const(-(q.J-4)*q.s))
 word=name[2:]
 assert word in ['AC'+Z,'CD'+X,'DA'+Y],(row,name)
 assert q.get(q.signs(row)[0],tuple(q.LABELS.index(ch) for ch in word))==1
 return q.add(q.polygon('ACD',row),q.scale(q.polygon(word,row),-1),q.const(-(q.J-1)*q.s))

def read_rows():
 text=Path(__file__).with_name('SQUARE_QUADRILATERAL_THREE.md').read_text()
 pieces=re.split(r'(?m)^### Row (S|A1|A2P|A2M|A3|O|T1|T2|T3|T4)\n',text)
 rows=[]
 for i in range(1,len(pieces),2):
  row,body=pieces[i:i+2]
  block=re.search(r'```text\n(.*?)\n```',body,re.S).group(1)
  terms=[]
  for entry in re.split(r'[;\n]',block):
   if entry.strip():
    weight,name=entry.strip().split(' ',1);terms.append((name,int(weight)))
  bound=F(re.search(r'U\(W\)=(-\d+/\d+)<0',body).group(1))
  rows.append((row,terms,bound))
 assert [r[0] for r in rows]==list(q.ROWS)
 return rows

def verify():
 total=0
 for row,terms,claimed in read_rows():
  assert all(0<weight<=1487 for _,weight in terms)
  W=q.add(*(q.scale(factor(name,row),weight) for name,weight in terms))
  assert all(sum(ex)<=3 for ex in W)
  actual=q.upper(W,q.ROWS[row][0])
  assert actual==claimed and actual<0,(row,actual,claimed)
  total+=len(terms)
  print('PASS',row,len(terms),'printed entries; exact U(W)=',actual)
 assert total==153
 assert q.s-F(1,11)==F(1,11000)>0
 assert F(93,1000)/q.s==F(93,91)
 print('PASS: ten exhaustive square-quadrilateral rows; 153 printed integer entries; area cutoff 93/91')

if __name__=='__main__':verify()
